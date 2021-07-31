type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-frauddetector") @new
external createClient: unit => awsServiceClient = "FraudDetectorClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type wholeNumberVersionString = string
type variableValue = string
type variableName = string
type time = string
type tagValue = string
type tagKey = string
type string_ = string
type sageMakerEndpointIdentifier = string
type s3BucketLocation = string
type ruleExpression = string
type nonEmptyString = string
type modelsMaxPageSize = int
type modelIdentifier = string
type labelsMaxResults = int
type identifier = string
type iamRoleArn = string
type fraudDetectorArn = string
type floatVersionString = string
type float_ = float
type eventTypesMaxResults = int
type entityTypesMaxResults = int
type description = string
type contentType = string
type blob = NodeJs.Buffer.t
type batchPredictionsMaxPageSize = int
type variablesMaxResults = int
type useEventVariables = bool
type trainingDataSourceEnum = [@as("EXTERNAL_EVENTS") #EXTERNAL_EVENTS]
type tagsMaxResults = int
type rulesMaxResults = int
type ruleExecutionMode = [@as("FIRST_MATCHED") #FIRST_MATCHED | @as("ALL_MATCHED") #ALL_MATCHED]
type outcomesMaxResults = int
type modelVersionStatus = [
  | @as("TRAINING_CANCELLED") #TRAINING_CANCELLED
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
]
type modelTypeEnum = [@as("ONLINE_FRAUD_INSIGHTS") #ONLINE_FRAUD_INSIGHTS]
type modelSource = [@as("SAGEMAKER") #SAGEMAKER]
type modelOutputDataFormat = [
  | @as("APPLICATION_JSONLINES") #APPLICATION_JSONLINES
  | @as("TEXT_CSV") #TEXT_CSV
]
type modelInputDataFormat = [@as("APPLICATION_JSON") #APPLICATION_JSON | @as("TEXT_CSV") #TEXT_CSV]
type modelEndpointStatus = [@as("DISSOCIATED") #DISSOCIATED | @as("ASSOCIATED") #ASSOCIATED]
type language = [@as("DETECTORPL") #DETECTORPL]
type kmsEncryptionKeyArn = string
type integer2 = int
type integer_ = int
type externalModelsMaxResults = int
type detectorsMaxResults = int
type detectorVersionStatus = [
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
  | @as("DRAFT") #DRAFT
]
type detectorVersionMaxResults = int
type dataType = [
  | @as("BOOLEAN") #BOOLEAN
  | @as("FLOAT") #FLOAT
  | @as("INTEGER") #INTEGER
  | @as("STRING") #STRING
]
type dataSource = [
  | @as("EXTERNAL_MODEL_SCORE") #EXTERNAL_MODEL_SCORE
  | @as("MODEL_SCORE") #MODEL_SCORE
  | @as("EVENT") #EVENT
]
type asyncJobStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETE") #COMPLETE
  | @as("CANCELED") #CANCELED
  | @as("CANCEL_IN_PROGRESS") #CANCEL_IN_PROGRESS
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("IN_PROGRESS_INITIALIZING") #IN_PROGRESS_INITIALIZING
]
type tagKeyList = array<tagKey>
type variableEntry = {
  variableType: option<string_>,
  description: option<string_>,
  defaultValue: option<string_>,
  dataSource: option<string_>,
  dataType: option<string_>,
  name: option<string_>,
}
type variable = {
  arn: option<fraudDetectorArn>,
  createdTime: option<time>,
  lastUpdatedTime: option<time>,
  variableType: option<string_>,
  description: option<string_>,
  defaultValue: option<string_>,
  dataSource: option<dataSource>,
  dataType: option<dataType>,
  name: option<string_>,
}
type tag = {
  value: tagValue,
  key: tagKey,
}
type rule = {
  ruleVersion: wholeNumberVersionString,
  ruleId: identifier,
  detectorId: identifier,
}
type outcome = {
  arn: option<fraudDetectorArn>,
  createdTime: option<time>,
  lastUpdatedTime: option<time>,
  description: option<description>,
  name: option<identifier>,
}
type nonEmptyListOfStrings = array<string_>
type nameList = array<string_>
type modelVersion = {
  arn: option<fraudDetectorArn>,
  modelVersionNumber: nonEmptyString,
  modelType: modelTypeEnum,
  modelId: modelIdentifier,
}
type modelPredictionMap = Js.Dict.t<float_>
type modelInputConfiguration = {
  csvInputTemplate: option<string_>,
  jsonInputTemplate: option<string_>,
  useEventVariables: useEventVariables,
  format: option<modelInputDataFormat>,
  eventTypeName: option<identifier>,
}
type modelEndpointDataBlob = {
  contentType: option<contentType>,
  byteBuffer: option<blob>,
}
type model = {
  arn: option<fraudDetectorArn>,
  lastUpdatedTime: option<time>,
  createdTime: option<time>,
  eventTypeName: option<string_>,
  description: option<description>,
  modelType: option<modelTypeEnum>,
  modelId: option<modelIdentifier>,
}
type metricDataPoint = {
  threshold: option<float_>,
  tpr: option<float_>,
  precision: option<float_>,
  fpr: option<float_>,
}
type listOfStrings = array<string_>
type label = {
  arn: option<fraudDetectorArn>,
  createdTime: option<time>,
  lastUpdatedTime: option<time>,
  description: option<description>,
  name: option<string_>,
}
type kmskey = {kmsEncryptionKeyArn: option<kmsEncryptionKeyArn>}
type jsonKeyToVariableMap = Js.Dict.t<string_>
type fileValidationMessage = {
  @as("type") type_: option<string_>,
  content: option<string_>,
  title: option<string_>,
}
type fieldValidationMessage = {
  @as("type") type_: option<string_>,
  content: option<string_>,
  title: option<string_>,
  identifier: option<string_>,
  fieldName: option<string_>,
}
type externalEventsDetail = {
  dataAccessRoleArn: iamRoleArn,
  dataLocation: s3BucketLocation,
}
type eventVariableMap = Js.Dict.t<variableValue>
type entityType = {
  arn: option<fraudDetectorArn>,
  createdTime: option<time>,
  lastUpdatedTime: option<time>,
  description: option<description>,
  name: option<string_>,
}
type entity = {
  entityId: identifier,
  entityType: string_,
}
type detectorVersionSummary = {
  lastUpdatedTime: option<time>,
  description: option<description>,
  status: option<detectorVersionStatus>,
  detectorVersionId: option<nonEmptyString>,
}
type detector = {
  arn: option<fraudDetectorArn>,
  createdTime: option<time>,
  lastUpdatedTime: option<time>,
  eventTypeName: option<identifier>,
  description: option<description>,
  detectorId: option<identifier>,
}
type csvIndexToVariableMap = Js.Dict.t<string_>
type batchPrediction = {
  totalRecordsCount: option<integer_>,
  processedRecordsCount: option<integer_>,
  arn: option<fraudDetectorArn>,
  iamRoleArn: option<iamRoleArn>,
  detectorVersion: option<floatVersionString>,
  detectorName: option<identifier>,
  eventTypeName: option<identifier>,
  outputPath: option<s3BucketLocation>,
  inputPath: option<s3BucketLocation>,
  lastHeartbeatTime: option<time>,
  completionTime: option<time>,
  startTime: option<time>,
  failureReason: option<string_>,
  status: option<asyncJobStatus>,
  jobId: option<identifier>,
}
type batchGetVariableError = {
  message: option<string_>,
  code: option<integer2>,
  name: option<string_>,
}
type batchCreateVariableError = {
  message: option<string_>,
  code: option<integer2>,
  name: option<string_>,
}
type tagList_ = array<tag>
type modelList = array<model>
type metricDataPointsList = array<metricDataPoint>
type listOfEntities = array<entity>
type labelMapper = Js.Dict.t<listOfStrings>
type labelList = array<label>
type fileValidationMessageList = array<fileValidationMessage>
type fieldValidationMessageList = array<fieldValidationMessage>
type entityTypeList = array<entityType>
type variableList = array<variable>
type variableEntryList = array<variableEntry>
type ruleResult = {
  outcomes: option<listOfStrings>,
  ruleId: option<string_>,
}
type ruleList = array<rule>
type ruleDetail = {
  arn: option<fraudDetectorArn>,
  createdTime: option<time>,
  lastUpdatedTime: option<time>,
  outcomes: option<nonEmptyListOfStrings>,
  language: option<language>,
  expression: option<ruleExpression>,
  ruleVersion: option<wholeNumberVersionString>,
  detectorId: option<identifier>,
  description: option<description>,
  ruleId: option<identifier>,
}
type outcomeList = array<outcome>
type modelScores = {
  scores: option<modelPredictionMap>,
  modelVersion: option<modelVersion>,
}
type modelOutputConfiguration = {
  csvIndexToVariableMap: option<csvIndexToVariableMap>,
  jsonKeyToVariableMap: option<jsonKeyToVariableMap>,
  format: modelOutputDataFormat,
}
type listOfModelVersions = array<modelVersion>
type externalModelEndpointDataBlobMap = Js.Dict.t<modelEndpointDataBlob>
type eventType = {
  arn: option<fraudDetectorArn>,
  createdTime: option<time>,
  lastUpdatedTime: option<time>,
  entityTypes: option<nonEmptyListOfStrings>,
  labels: option<listOfStrings>,
  eventVariables: option<listOfStrings>,
  description: option<description>,
  name: option<string_>,
}
type detectorVersionSummaryList = array<detectorVersionSummary>
type detectorList = array<detector>
type batchPredictionList = array<batchPrediction>
type batchGetVariableErrorList = array<batchGetVariableError>
type batchCreateVariableErrorList = array<batchCreateVariableError>
type eventTypeList = array<eventType>
type trainingMetrics = {
  metricDataPoints: option<metricDataPointsList>,
  auc: option<float_>,
}
type ruleDetailList = array<ruleDetail>
type listOfRuleResults = array<ruleResult>
type listOfModelScores = array<modelScores>
type labelSchema = {labelMapper: labelMapper}
type externalModel = {
  arn: option<fraudDetectorArn>,
  createdTime: option<time>,
  lastUpdatedTime: option<time>,
  modelEndpointStatus: option<modelEndpointStatus>,
  outputConfiguration: option<modelOutputConfiguration>,
  inputConfiguration: option<modelInputConfiguration>,
  invokeModelEndpointRoleArn: option<string_>,
  modelSource: option<modelSource>,
  modelEndpoint: option<string_>,
}
type dataValidationMetrics = {
  fieldLevelMessages: option<fieldValidationMessageList>,
  fileLevelMessages: option<fileValidationMessageList>,
}
type trainingResult = {
  trainingMetrics: option<trainingMetrics>,
  dataValidationMetrics: option<dataValidationMetrics>,
}
type trainingDataSchema = {
  labelSchema: labelSchema,
  modelVariables: listOfStrings,
}
type externalModelList = array<externalModel>
type modelVersionDetail = {
  arn: option<fraudDetectorArn>,
  createdTime: option<time>,
  lastUpdatedTime: option<time>,
  trainingResult: option<trainingResult>,
  externalEventsDetail: option<externalEventsDetail>,
  trainingDataSchema: option<trainingDataSchema>,
  trainingDataSource: option<trainingDataSourceEnum>,
  status: option<string_>,
  modelVersionNumber: option<floatVersionString>,
  modelType: option<modelTypeEnum>,
  modelId: option<modelIdentifier>,
}
type modelVersionDetailList = array<modelVersionDetail>

module UpdateVariable = {
  type t
  type request = {
    variableType: option<string_>,
    description: option<string_>,
    defaultValue: option<string_>,
    name: string_,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "UpdateVariableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateModelVersionStatus = {
  type t
  type request = {
    status: modelVersionStatus,
    modelVersionNumber: floatVersionString,
    modelType: modelTypeEnum,
    modelId: modelIdentifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateModelVersionStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateModel = {
  type t
  type request = {
    description: option<description>,
    modelType: modelTypeEnum,
    modelId: modelIdentifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "UpdateModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDetectorVersionStatus = {
  type t
  type request = {
    status: detectorVersionStatus,
    detectorVersionId: wholeNumberVersionString,
    detectorId: identifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateDetectorVersionStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDetectorVersionMetadata = {
  type t
  type request = {
    description: description,
    detectorVersionId: wholeNumberVersionString,
    detectorId: identifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateDetectorVersionMetadataCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutKMSEncryptionKey = {
  type t
  type request = {kmsEncryptionKeyArn: kmsEncryptionKeyArn}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "PutKMSEncryptionKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVariable = {
  type t
  type request = {name: string_}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteVariableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteOutcome = {
  type t
  type request = {name: identifier}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteOutcomeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteModelVersion = {
  type t
  type request = {
    modelVersionNumber: floatVersionString,
    modelType: modelTypeEnum,
    modelId: modelIdentifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteModelVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteModel = {
  type t
  type request = {
    modelType: modelTypeEnum,
    modelId: modelIdentifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLabel = {
  type t
  type request = {name: identifier}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteLabelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteExternalModel = {
  type t
  type request = {modelEndpoint: sageMakerEndpointIdentifier}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteExternalModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEventType = {
  type t
  type request = {name: identifier}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteEventTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEvent = {
  type t
  type request = {
    eventTypeName: identifier,
    eventId: identifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteEventCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEntityType = {
  type t
  type request = {name: identifier}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteEntityTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDetectorVersion = {
  type t
  type request = {
    detectorVersionId: wholeNumberVersionString,
    detectorId: identifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteDetectorVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDetector = {
  type t
  type request = {detectorId: identifier}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteDetectorCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBatchPredictionJob = {
  type t
  type request = {jobId: identifier}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteBatchPredictionJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelBatchPredictionJob = {
  type t
  type request = {jobId: identifier}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "CancelBatchPredictionJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRuleMetadata = {
  type t
  type request = {
    description: description,
    rule: rule,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateRuleMetadataCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceARN: fraudDetectorArn,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKMSEncryptionKey = {
  type t

  type response = {kmsKey: option<kmskey>}
  @module("@aws-sdk/client-frauddetector") @new
  external new: unit => t = "GetKMSEncryptionKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRule = {
  type t
  type request = {rule: rule}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRuleVersion = {
  type t
  type request = {
    tags: option<tagList_>,
    outcomes: nonEmptyListOfStrings,
    language: language,
    expression: ruleExpression,
    description: option<description>,
    rule: rule,
  }
  type response = {rule: option<rule>}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateRuleVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateModelVersion = {
  type t
  type request = {
    tags: option<tagList_>,
    externalEventsDetail: option<externalEventsDetail>,
    majorVersionNumber: wholeNumberVersionString,
    modelType: modelTypeEnum,
    modelId: modelIdentifier,
  }
  type response = {
    status: option<string_>,
    modelVersionNumber: option<floatVersionString>,
    modelType: option<modelTypeEnum>,
    modelId: option<modelIdentifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateModelVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDetectorVersion = {
  type t
  type request = {
    ruleExecutionMode: option<ruleExecutionMode>,
    modelVersions: option<listOfModelVersions>,
    description: option<description>,
    rules: ruleList,
    externalModelEndpoints: listOfStrings,
    detectorVersionId: wholeNumberVersionString,
    detectorId: identifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateDetectorVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagList_,
    resourceARN: fraudDetectorArn,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutOutcome = {
  type t
  type request = {
    tags: option<tagList_>,
    description: option<description>,
    name: identifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutOutcomeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutLabel = {
  type t
  type request = {
    tags: option<tagList_>,
    description: option<description>,
    name: identifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutLabelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutExternalModel = {
  type t
  type request = {
    tags: option<tagList_>,
    modelEndpointStatus: modelEndpointStatus,
    outputConfiguration: modelOutputConfiguration,
    inputConfiguration: modelInputConfiguration,
    invokeModelEndpointRoleArn: string_,
    modelSource: modelSource,
    modelEndpoint: sageMakerEndpointIdentifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "PutExternalModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutEventType = {
  type t
  type request = {
    tags: option<tagList_>,
    entityTypes: nonEmptyListOfStrings,
    labels: option<listOfStrings>,
    eventVariables: nonEmptyListOfStrings,
    description: option<description>,
    name: identifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutEventTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutEntityType = {
  type t
  type request = {
    tags: option<tagList_>,
    description: option<description>,
    name: identifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutEntityTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDetector = {
  type t
  type request = {
    tags: option<tagList_>,
    eventTypeName: identifier,
    description: option<description>,
    detectorId: identifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutDetectorCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    maxResults: option<tagsMaxResults>,
    nextToken: option<string_>,
    resourceARN: fraudDetectorArn,
  }
  type response = {
    nextToken: option<string_>,
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVariables = {
  type t
  type request = {
    maxResults: option<variablesMaxResults>,
    nextToken: option<string_>,
    name: option<string_>,
  }
  type response = {
    nextToken: option<string_>,
    variables: option<variableList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetVariablesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOutcomes = {
  type t
  type request = {
    maxResults: option<outcomesMaxResults>,
    nextToken: option<string_>,
    name: option<identifier>,
  }
  type response = {
    nextToken: option<string_>,
    outcomes: option<outcomeList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetOutcomesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetModels = {
  type t
  type request = {
    maxResults: option<modelsMaxPageSize>,
    nextToken: option<string_>,
    modelType: option<modelTypeEnum>,
    modelId: option<modelIdentifier>,
  }
  type response = {
    models: option<modelList>,
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetModelsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLabels = {
  type t
  type request = {
    maxResults: option<labelsMaxResults>,
    nextToken: option<string_>,
    name: option<identifier>,
  }
  type response = {
    nextToken: option<string_>,
    labels: option<labelList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetLabelsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEntityTypes = {
  type t
  type request = {
    maxResults: option<entityTypesMaxResults>,
    nextToken: option<string_>,
    name: option<identifier>,
  }
  type response = {
    nextToken: option<string_>,
    entityTypes: option<entityTypeList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetEntityTypesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDetectors = {
  type t
  type request = {
    maxResults: option<detectorsMaxResults>,
    nextToken: option<string_>,
    detectorId: option<identifier>,
  }
  type response = {
    nextToken: option<string_>,
    detectors: option<detectorList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetDetectorsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDetectorVersion = {
  type t
  type request = {
    detectorVersionId: wholeNumberVersionString,
    detectorId: identifier,
  }
  type response = {
    arn: option<fraudDetectorArn>,
    ruleExecutionMode: option<ruleExecutionMode>,
    createdTime: option<time>,
    lastUpdatedTime: option<time>,
    status: option<detectorVersionStatus>,
    rules: option<ruleList>,
    modelVersions: option<listOfModelVersions>,
    externalModelEndpoints: option<listOfStrings>,
    description: option<description>,
    detectorVersionId: option<wholeNumberVersionString>,
    detectorId: option<identifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetDetectorVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBatchPredictionJobs = {
  type t
  type request = {
    nextToken: option<string_>,
    maxResults: option<batchPredictionsMaxPageSize>,
    jobId: option<identifier>,
  }
  type response = {
    nextToken: option<string_>,
    batchPredictions: option<batchPredictionList>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetBatchPredictionJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDetector = {
  type t
  type request = {
    maxResults: option<detectorVersionMaxResults>,
    nextToken: option<string_>,
    detectorId: identifier,
  }
  type response = {
    arn: option<fraudDetectorArn>,
    nextToken: option<string_>,
    detectorVersionSummaries: option<detectorVersionSummaryList>,
    detectorId: option<identifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DescribeDetectorCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVariable = {
  type t
  type request = {
    tags: option<tagList_>,
    variableType: option<string_>,
    description: option<string_>,
    defaultValue: string_,
    dataSource: dataSource,
    dataType: dataType,
    name: string_,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "CreateVariableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRule = {
  type t
  type request = {
    tags: option<tagList_>,
    outcomes: nonEmptyListOfStrings,
    language: language,
    expression: ruleExpression,
    description: option<description>,
    detectorId: identifier,
    ruleId: identifier,
  }
  type response = {rule: option<rule>}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "CreateRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModel = {
  type t
  type request = {
    tags: option<tagList_>,
    eventTypeName: string_,
    description: option<description>,
    modelType: modelTypeEnum,
    modelId: modelIdentifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "CreateModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDetectorVersion = {
  type t
  type request = {
    tags: option<tagList_>,
    ruleExecutionMode: option<ruleExecutionMode>,
    modelVersions: option<listOfModelVersions>,
    rules: ruleList,
    externalModelEndpoints: option<listOfStrings>,
    description: option<description>,
    detectorId: identifier,
  }
  type response = {
    status: option<detectorVersionStatus>,
    detectorVersionId: option<nonEmptyString>,
    detectorId: option<identifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "CreateDetectorVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBatchPredictionJob = {
  type t
  type request = {
    tags: option<tagList_>,
    iamRoleArn: iamRoleArn,
    detectorVersion: option<wholeNumberVersionString>,
    detectorName: identifier,
    eventTypeName: identifier,
    outputPath: s3BucketLocation,
    inputPath: s3BucketLocation,
    jobId: identifier,
  }
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "CreateBatchPredictionJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetVariable = {
  type t
  type request = {names: nameList}
  type response = {
    errors: option<batchGetVariableErrorList>,
    variables: option<variableList>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "BatchGetVariableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchCreateVariable = {
  type t
  type request = {
    tags: option<tagList_>,
    variableEntries: variableEntryList,
  }
  type response = {errors: option<batchCreateVariableErrorList>}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "BatchCreateVariableCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRules = {
  type t
  type request = {
    maxResults: option<rulesMaxResults>,
    nextToken: option<string_>,
    ruleVersion: option<wholeNumberVersionString>,
    detectorId: identifier,
    ruleId: option<identifier>,
  }
  type response = {
    nextToken: option<string_>,
    ruleDetails: option<ruleDetailList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetRulesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventTypes = {
  type t
  type request = {
    maxResults: option<eventTypesMaxResults>,
    nextToken: option<string_>,
    name: option<identifier>,
  }
  type response = {
    nextToken: option<string_>,
    eventTypes: option<eventTypeList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetEventTypesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventPrediction = {
  type t
  type request = {
    externalModelEndpointDataBlobs: option<externalModelEndpointDataBlobMap>,
    eventVariables: eventVariableMap,
    eventTimestamp: string_,
    entities: listOfEntities,
    eventTypeName: string_,
    eventId: string_,
    detectorVersionId: option<wholeNumberVersionString>,
    detectorId: string_,
  }
  type response = {
    ruleResults: option<listOfRuleResults>,
    modelScores: option<listOfModelScores>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetEventPredictionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetModelVersion = {
  type t
  type request = {
    modelVersionNumber: floatVersionString,
    modelType: modelTypeEnum,
    modelId: modelIdentifier,
  }
  type response = {
    arn: option<fraudDetectorArn>,
    status: option<string_>,
    externalEventsDetail: option<externalEventsDetail>,
    trainingDataSchema: option<trainingDataSchema>,
    trainingDataSource: option<trainingDataSourceEnum>,
    modelVersionNumber: option<floatVersionString>,
    modelType: option<modelTypeEnum>,
    modelId: option<modelIdentifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetModelVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExternalModels = {
  type t
  type request = {
    maxResults: option<externalModelsMaxResults>,
    nextToken: option<string_>,
    modelEndpoint: option<string_>,
  }
  type response = {
    nextToken: option<string_>,
    externalModels: option<externalModelList>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetExternalModelsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModelVersion = {
  type t
  type request = {
    tags: option<tagList_>,
    externalEventsDetail: option<externalEventsDetail>,
    trainingDataSchema: trainingDataSchema,
    trainingDataSource: trainingDataSourceEnum,
    modelType: modelTypeEnum,
    modelId: modelIdentifier,
  }
  type response = {
    status: option<string_>,
    modelVersionNumber: option<nonEmptyString>,
    modelType: option<modelTypeEnum>,
    modelId: option<modelIdentifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "CreateModelVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeModelVersions = {
  type t
  type request = {
    maxResults: option<modelsMaxPageSize>,
    nextToken: option<string_>,
    modelType: option<modelTypeEnum>,
    modelVersionNumber: option<floatVersionString>,
    modelId: option<modelIdentifier>,
  }
  type response = {
    nextToken: option<string_>,
    modelVersionDetails: option<modelVersionDetailList>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DescribeModelVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
