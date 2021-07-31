type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type wholeNumberVersionString = string
type variableValue = string
type variableName = string
type time = string
type tagValue = string
type tagKey = string
type amazonawsString = string
type sageMakerEndpointIdentifier = string
type s3BucketLocation = string
type ruleExpression = string
type nonEmptyString = string
type modelsMaxPageSize = int;
type modelIdentifier = string
type labelsMaxResults = int;
type identifier = string
type iamRoleArn = string
type fraudDetectorArn = string
type floatVersionString = string
type float = float;
type eventTypesMaxResults = int;
type entityTypesMaxResults = int;
type description = string
type contentType = string
type blob = NodeJs.Buffer.t;
type batchPredictionsMaxPageSize = int;
type variablesMaxResults = int;
type useEventVariables = bool;
type trainingDataSourceEnum = [@as("EXTERNAL_EVENTS") #EXTERNAL_EVENTS]
type tagsMaxResults = int;
type rulesMaxResults = int;
type ruleExecutionMode = [@as("FIRST_MATCHED") #FIRST_MATCHED | @as("ALL_MATCHED") #ALL_MATCHED]
type outcomesMaxResults = int;
type modelVersionStatus = [@as("TRAINING_CANCELLED") #TRAINING_CANCELLED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type modelTypeEnum = [@as("ONLINE_FRAUD_INSIGHTS") #ONLINE_FRAUD_INSIGHTS]
type modelSource = [@as("SAGEMAKER") #SAGEMAKER]
type modelOutputDataFormat = [@as("APPLICATION_JSONLINES") #APPLICATION_JSONLINES | @as("TEXT_CSV") #TEXT_CSV]
type modelInputDataFormat = [@as("APPLICATION_JSON") #APPLICATION_JSON | @as("TEXT_CSV") #TEXT_CSV]
type modelEndpointStatus = [@as("DISSOCIATED") #DISSOCIATED | @as("ASSOCIATED") #ASSOCIATED]
type language = [@as("DETECTORPL") #DETECTORPL]
type kmsEncryptionKeyArn = string
type integer2 = int;
type amazonawsInteger = int;
type externalModelsMaxResults = int;
type detectorsMaxResults = int;
type detectorVersionStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE | @as("DRAFT") #DRAFT]
type detectorVersionMaxResults = int;
type dataType = [@as("BOOLEAN") #BOOLEAN | @as("FLOAT") #FLOAT | @as("INTEGER") #INTEGER | @as("STRING") #STRING]
type dataSource = [@as("EXTERNAL_MODEL_SCORE") #EXTERNAL_MODEL_SCORE | @as("MODEL_SCORE") #MODEL_SCORE | @as("EVENT") #EVENT]
type asyncJobStatus = [@as("FAILED") #FAILED | @as("COMPLETE") #COMPLETE | @as("CANCELED") #CANCELED | @as("CANCEL_IN_PROGRESS") #CANCEL_IN_PROGRESS | @as("IN_PROGRESS") #IN_PROGRESS | @as("IN_PROGRESS_INITIALIZING") #IN_PROGRESS_INITIALIZING]
type tagKeyList = array<tagKey>
type variableEntry = {
@as("variableType") variableType: amazonawsString,
@as("description") description: amazonawsString,
@as("defaultValue") defaultValue: amazonawsString,
@as("dataSource") dataSource: amazonawsString,
@as("dataType") dataType: amazonawsString,
@as("name") name: amazonawsString
}
type variable = {
@as("arn") arn: fraudDetectorArn,
@as("createdTime") createdTime: time,
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("variableType") variableType: amazonawsString,
@as("description") description: amazonawsString,
@as("defaultValue") defaultValue: amazonawsString,
@as("dataSource") dataSource: dataSource,
@as("dataType") dataType: dataType,
@as("name") name: amazonawsString
}
type tag = {
@as("value") value: option<tagValue>,
@as("key") key: option<tagKey>
}
type rule = {
@as("ruleVersion") ruleVersion: option<wholeNumberVersionString>,
@as("ruleId") ruleId: option<identifier>,
@as("detectorId") detectorId: option<identifier>
}
type outcome = {
@as("arn") arn: fraudDetectorArn,
@as("createdTime") createdTime: time,
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("description") description: description,
@as("name") name: identifier
}
type nonEmptyListOfStrings = array<amazonawsString>
type nameList = array<amazonawsString>
type modelVersion = {
@as("arn") arn: fraudDetectorArn,
@as("modelVersionNumber") modelVersionNumber: option<nonEmptyString>,
@as("modelType") modelType: option<modelTypeEnum>,
@as("modelId") modelId: option<modelIdentifier>
}
type modelPredictionMap = Js.Dict.t< float>
type modelInputConfiguration = {
@as("csvInputTemplate") csvInputTemplate: amazonawsString,
@as("jsonInputTemplate") jsonInputTemplate: amazonawsString,
@as("useEventVariables") useEventVariables: option<useEventVariables>,
@as("format") format: modelInputDataFormat,
@as("eventTypeName") eventTypeName: identifier
}
type modelEndpointDataBlob = {
@as("contentType") contentType: contentType,
@as("byteBuffer") byteBuffer: blob
}
type model = {
@as("arn") arn: fraudDetectorArn,
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("createdTime") createdTime: time,
@as("eventTypeName") eventTypeName: amazonawsString,
@as("description") description: description,
@as("modelType") modelType: modelTypeEnum,
@as("modelId") modelId: modelIdentifier
}
type metricDataPoint = {
@as("threshold") threshold: float,
@as("tpr") tpr: float,
@as("precision") precision: float,
@as("fpr") fpr: float
}
type listOfStrings = array<amazonawsString>
type label = {
@as("arn") arn: fraudDetectorArn,
@as("createdTime") createdTime: time,
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("description") description: description,
@as("name") name: amazonawsString
}
type kMSKey = {
@as("kmsEncryptionKeyArn") kmsEncryptionKeyArn: kmsEncryptionKeyArn
}
type jsonKeyToVariableMap = Js.Dict.t< amazonawsString>
type fileValidationMessage = {
@as("type") type_: amazonawsString,
@as("content") content: amazonawsString,
@as("title") title: amazonawsString
}
type fieldValidationMessage = {
@as("type") type_: amazonawsString,
@as("content") content: amazonawsString,
@as("title") title: amazonawsString,
@as("identifier") identifier: amazonawsString,
@as("fieldName") fieldName: amazonawsString
}
type externalEventsDetail = {
@as("dataAccessRoleArn") dataAccessRoleArn: option<iamRoleArn>,
@as("dataLocation") dataLocation: option<s3BucketLocation>
}
type eventVariableMap = Js.Dict.t< variableValue>
type entityType = {
@as("arn") arn: fraudDetectorArn,
@as("createdTime") createdTime: time,
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("description") description: description,
@as("name") name: amazonawsString
}
type entity = {
@as("entityId") entityId: option<identifier>,
@as("entityType") entityType: option<amazonawsString>
}
type detectorVersionSummary = {
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("description") description: description,
@as("status") status: detectorVersionStatus,
@as("detectorVersionId") detectorVersionId: nonEmptyString
}
type detector = {
@as("arn") arn: fraudDetectorArn,
@as("createdTime") createdTime: time,
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("eventTypeName") eventTypeName: identifier,
@as("description") description: description,
@as("detectorId") detectorId: identifier
}
type csvIndexToVariableMap = Js.Dict.t< amazonawsString>
type batchPrediction = {
@as("totalRecordsCount") totalRecordsCount: amazonawsInteger,
@as("processedRecordsCount") processedRecordsCount: amazonawsInteger,
@as("arn") arn: fraudDetectorArn,
@as("iamRoleArn") iamRoleArn: iamRoleArn,
@as("detectorVersion") detectorVersion: floatVersionString,
@as("detectorName") detectorName: identifier,
@as("eventTypeName") eventTypeName: identifier,
@as("outputPath") outputPath: s3BucketLocation,
@as("inputPath") inputPath: s3BucketLocation,
@as("lastHeartbeatTime") lastHeartbeatTime: time,
@as("completionTime") completionTime: time,
@as("startTime") startTime: time,
@as("failureReason") failureReason: amazonawsString,
@as("status") status: asyncJobStatus,
@as("jobId") jobId: identifier
}
type batchGetVariableError = {
@as("message") message: amazonawsString,
@as("code") code: integer2,
@as("name") name: amazonawsString
}
type batchCreateVariableError = {
@as("message") message: amazonawsString,
@as("code") code: integer2,
@as("name") name: amazonawsString
}
type tagList = array<tag>
type modelList = array<model>
type metricDataPointsList = array<metricDataPoint>
type listOfEntities = array<entity>
type labelMapper = Js.Dict.t< listOfStrings>
type labelList = array<label>
type fileValidationMessageList = array<fileValidationMessage>
type fieldValidationMessageList = array<fieldValidationMessage>
type entityTypeList = array<entityType>
type variableList = array<variable>
type variableEntryList = array<variableEntry>
type ruleResult = {
@as("outcomes") outcomes: listOfStrings,
@as("ruleId") ruleId: amazonawsString
}
type ruleList = array<rule>
type ruleDetail = {
@as("arn") arn: fraudDetectorArn,
@as("createdTime") createdTime: time,
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("outcomes") outcomes: nonEmptyListOfStrings,
@as("language") language: language,
@as("expression") expression: ruleExpression,
@as("ruleVersion") ruleVersion: wholeNumberVersionString,
@as("detectorId") detectorId: identifier,
@as("description") description: description,
@as("ruleId") ruleId: identifier
}
type outcomeList = array<outcome>
type modelScores = {
@as("scores") scores: modelPredictionMap,
@as("modelVersion") modelVersion: modelVersion
}
type modelOutputConfiguration = {
@as("csvIndexToVariableMap") csvIndexToVariableMap: csvIndexToVariableMap,
@as("jsonKeyToVariableMap") jsonKeyToVariableMap: jsonKeyToVariableMap,
@as("format") format: option<modelOutputDataFormat>
}
type listOfModelVersions = array<modelVersion>
type externalModelEndpointDataBlobMap = Js.Dict.t< modelEndpointDataBlob>
type eventType = {
@as("arn") arn: fraudDetectorArn,
@as("createdTime") createdTime: time,
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("entityTypes") entityTypes: nonEmptyListOfStrings,
@as("labels") labels: listOfStrings,
@as("eventVariables") eventVariables: listOfStrings,
@as("description") description: description,
@as("name") name: amazonawsString
}
type detectorVersionSummaryList = array<detectorVersionSummary>
type detectorList = array<detector>
type batchPredictionList = array<batchPrediction>
type batchGetVariableErrorList = array<batchGetVariableError>
type batchCreateVariableErrorList = array<batchCreateVariableError>
type eventTypeList = array<eventType>
type trainingMetrics = {
@as("metricDataPoints") metricDataPoints: metricDataPointsList,
@as("auc") auc: float
}
type ruleDetailList = array<ruleDetail>
type listOfRuleResults = array<ruleResult>
type listOfModelScores = array<modelScores>
type labelSchema = {
@as("labelMapper") labelMapper: option<labelMapper>
}
type externalModel = {
@as("arn") arn: fraudDetectorArn,
@as("createdTime") createdTime: time,
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("modelEndpointStatus") modelEndpointStatus: modelEndpointStatus,
@as("outputConfiguration") outputConfiguration: modelOutputConfiguration,
@as("inputConfiguration") inputConfiguration: modelInputConfiguration,
@as("invokeModelEndpointRoleArn") invokeModelEndpointRoleArn: amazonawsString,
@as("modelSource") modelSource: modelSource,
@as("modelEndpoint") modelEndpoint: amazonawsString
}
type dataValidationMetrics = {
@as("fieldLevelMessages") fieldLevelMessages: fieldValidationMessageList,
@as("fileLevelMessages") fileLevelMessages: fileValidationMessageList
}
type trainingResult = {
@as("trainingMetrics") trainingMetrics: trainingMetrics,
@as("dataValidationMetrics") dataValidationMetrics: dataValidationMetrics
}
type trainingDataSchema = {
@as("labelSchema") labelSchema: option<labelSchema>,
@as("modelVariables") modelVariables: option<listOfStrings>
}
type externalModelList = array<externalModel>
type modelVersionDetail = {
@as("arn") arn: fraudDetectorArn,
@as("createdTime") createdTime: time,
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("trainingResult") trainingResult: trainingResult,
@as("externalEventsDetail") externalEventsDetail: externalEventsDetail,
@as("trainingDataSchema") trainingDataSchema: trainingDataSchema,
@as("trainingDataSource") trainingDataSource: trainingDataSourceEnum,
@as("status") status: amazonawsString,
@as("modelVersionNumber") modelVersionNumber: floatVersionString,
@as("modelType") modelType: modelTypeEnum,
@as("modelId") modelId: modelIdentifier
}
type modelVersionDetailList = array<modelVersionDetail>
type clientType;
@module("@aws-sdk/client-frauddetector") @new external createClient: unit => clientType = "FraudDetectorClient";
module UpdateVariable = {
  type t;
  type request = {
@as("variableType") variableType: amazonawsString,
@as("description") description: amazonawsString,
@as("defaultValue") defaultValue: amazonawsString,
@as("name") name: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "UpdateVariableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateModelVersionStatus = {
  type t;
  type request = {
@as("status") status: option<modelVersionStatus>,
@as("modelVersionNumber") modelVersionNumber: option<floatVersionString>,
@as("modelType") modelType: option<modelTypeEnum>,
@as("modelId") modelId: option<modelIdentifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "UpdateModelVersionStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateModel = {
  type t;
  type request = {
@as("description") description: description,
@as("modelType") modelType: option<modelTypeEnum>,
@as("modelId") modelId: option<modelIdentifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "UpdateModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDetectorVersionStatus = {
  type t;
  type request = {
@as("status") status: option<detectorVersionStatus>,
@as("detectorVersionId") detectorVersionId: option<wholeNumberVersionString>,
@as("detectorId") detectorId: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "UpdateDetectorVersionStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDetectorVersionMetadata = {
  type t;
  type request = {
@as("description") description: option<description>,
@as("detectorVersionId") detectorVersionId: option<wholeNumberVersionString>,
@as("detectorId") detectorId: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "UpdateDetectorVersionMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutKMSEncryptionKey = {
  type t;
  type request = {
@as("kmsEncryptionKeyArn") kmsEncryptionKeyArn: option<kmsEncryptionKeyArn>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "PutKMSEncryptionKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVariable = {
  type t;
  type request = {
@as("name") name: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteVariableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteOutcome = {
  type t;
  type request = {
@as("name") name: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteOutcomeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteModelVersion = {
  type t;
  type request = {
@as("modelVersionNumber") modelVersionNumber: option<floatVersionString>,
@as("modelType") modelType: option<modelTypeEnum>,
@as("modelId") modelId: option<modelIdentifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteModelVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteModel = {
  type t;
  type request = {
@as("modelType") modelType: option<modelTypeEnum>,
@as("modelId") modelId: option<modelIdentifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLabel = {
  type t;
  type request = {
@as("name") name: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteLabelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteExternalModel = {
  type t;
  type request = {
@as("modelEndpoint") modelEndpoint: option<sageMakerEndpointIdentifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteExternalModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEventType = {
  type t;
  type request = {
@as("name") name: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteEventTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEvent = {
  type t;
  type request = {
@as("eventTypeName") eventTypeName: option<identifier>,
@as("eventId") eventId: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteEventCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEntityType = {
  type t;
  type request = {
@as("name") name: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteEntityTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDetectorVersion = {
  type t;
  type request = {
@as("detectorVersionId") detectorVersionId: option<wholeNumberVersionString>,
@as("detectorId") detectorId: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteDetectorVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDetector = {
  type t;
  type request = {
@as("detectorId") detectorId: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBatchPredictionJob = {
  type t;
  type request = {
@as("jobId") jobId: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteBatchPredictionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelBatchPredictionJob = {
  type t;
  type request = {
@as("jobId") jobId: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "CancelBatchPredictionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRuleMetadata = {
  type t;
  type request = {
@as("description") description: option<description>,
@as("rule") rule: option<rule>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "UpdateRuleMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceARN") resourceARN: option<fraudDetectorArn>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetKMSEncryptionKey = {
  type t;
  
  type response = {
@as("kmsKey") kmsKey: kMSKey
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (unit) => t = "GetKMSEncryptionKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRule = {
  type t;
  type request = {
@as("rule") rule: option<rule>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DeleteRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRuleVersion = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("outcomes") outcomes: option<nonEmptyListOfStrings>,
@as("language") language: option<language>,
@as("expression") expression: option<ruleExpression>,
@as("description") description: description,
@as("rule") rule: option<rule>
}
  type response = {
@as("rule") rule: rule
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "UpdateRuleVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateModelVersion = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("externalEventsDetail") externalEventsDetail: externalEventsDetail,
@as("majorVersionNumber") majorVersionNumber: option<wholeNumberVersionString>,
@as("modelType") modelType: option<modelTypeEnum>,
@as("modelId") modelId: option<modelIdentifier>
}
  type response = {
@as("status") status: amazonawsString,
@as("modelVersionNumber") modelVersionNumber: floatVersionString,
@as("modelType") modelType: modelTypeEnum,
@as("modelId") modelId: modelIdentifier
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "UpdateModelVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDetectorVersion = {
  type t;
  type request = {
@as("ruleExecutionMode") ruleExecutionMode: ruleExecutionMode,
@as("modelVersions") modelVersions: listOfModelVersions,
@as("description") description: description,
@as("rules") rules: option<ruleList>,
@as("externalModelEndpoints") externalModelEndpoints: option<listOfStrings>,
@as("detectorVersionId") detectorVersionId: option<wholeNumberVersionString>,
@as("detectorId") detectorId: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "UpdateDetectorVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceARN") resourceARN: option<fraudDetectorArn>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutOutcome = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("description") description: description,
@as("name") name: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "PutOutcomeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutLabel = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("description") description: description,
@as("name") name: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "PutLabelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutExternalModel = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("modelEndpointStatus") modelEndpointStatus: option<modelEndpointStatus>,
@as("outputConfiguration") outputConfiguration: option<modelOutputConfiguration>,
@as("inputConfiguration") inputConfiguration: option<modelInputConfiguration>,
@as("invokeModelEndpointRoleArn") invokeModelEndpointRoleArn: option<amazonawsString>,
@as("modelSource") modelSource: option<modelSource>,
@as("modelEndpoint") modelEndpoint: option<sageMakerEndpointIdentifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "PutExternalModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutEventType = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("entityTypes") entityTypes: option<nonEmptyListOfStrings>,
@as("labels") labels: listOfStrings,
@as("eventVariables") eventVariables: option<nonEmptyListOfStrings>,
@as("description") description: description,
@as("name") name: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "PutEventTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutEntityType = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("description") description: description,
@as("name") name: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "PutEntityTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutDetector = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("eventTypeName") eventTypeName: option<identifier>,
@as("description") description: description,
@as("detectorId") detectorId: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "PutDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("maxResults") maxResults: tagsMaxResults,
@as("nextToken") nextToken: amazonawsString,
@as("resourceARN") resourceARN: option<fraudDetectorArn>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("tags") tags: tagList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVariables = {
  type t;
  type request = {
@as("maxResults") maxResults: variablesMaxResults,
@as("nextToken") nextToken: amazonawsString,
@as("name") name: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("variables") variables: variableList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetVariablesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOutcomes = {
  type t;
  type request = {
@as("maxResults") maxResults: outcomesMaxResults,
@as("nextToken") nextToken: amazonawsString,
@as("name") name: identifier
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("outcomes") outcomes: outcomeList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetOutcomesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetModels = {
  type t;
  type request = {
@as("maxResults") maxResults: modelsMaxPageSize,
@as("nextToken") nextToken: amazonawsString,
@as("modelType") modelType: modelTypeEnum,
@as("modelId") modelId: modelIdentifier
}
  type response = {
@as("models") models: modelList,
@as("nextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLabels = {
  type t;
  type request = {
@as("maxResults") maxResults: labelsMaxResults,
@as("nextToken") nextToken: amazonawsString,
@as("name") name: identifier
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("labels") labels: labelList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetLabelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEntityTypes = {
  type t;
  type request = {
@as("maxResults") maxResults: entityTypesMaxResults,
@as("nextToken") nextToken: amazonawsString,
@as("name") name: identifier
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("entityTypes") entityTypes: entityTypeList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetEntityTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDetectors = {
  type t;
  type request = {
@as("maxResults") maxResults: detectorsMaxResults,
@as("nextToken") nextToken: amazonawsString,
@as("detectorId") detectorId: identifier
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("detectors") detectors: detectorList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetDetectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDetectorVersion = {
  type t;
  type request = {
@as("detectorVersionId") detectorVersionId: option<wholeNumberVersionString>,
@as("detectorId") detectorId: option<identifier>
}
  type response = {
@as("arn") arn: fraudDetectorArn,
@as("ruleExecutionMode") ruleExecutionMode: ruleExecutionMode,
@as("createdTime") createdTime: time,
@as("lastUpdatedTime") lastUpdatedTime: time,
@as("status") status: detectorVersionStatus,
@as("rules") rules: ruleList,
@as("modelVersions") modelVersions: listOfModelVersions,
@as("externalModelEndpoints") externalModelEndpoints: listOfStrings,
@as("description") description: description,
@as("detectorVersionId") detectorVersionId: wholeNumberVersionString,
@as("detectorId") detectorId: identifier
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetDetectorVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBatchPredictionJobs = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: batchPredictionsMaxPageSize,
@as("jobId") jobId: identifier
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("batchPredictions") batchPredictions: batchPredictionList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetBatchPredictionJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDetector = {
  type t;
  type request = {
@as("maxResults") maxResults: detectorVersionMaxResults,
@as("nextToken") nextToken: amazonawsString,
@as("detectorId") detectorId: option<identifier>
}
  type response = {
@as("arn") arn: fraudDetectorArn,
@as("nextToken") nextToken: amazonawsString,
@as("detectorVersionSummaries") detectorVersionSummaries: detectorVersionSummaryList,
@as("detectorId") detectorId: identifier
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DescribeDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVariable = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("variableType") variableType: amazonawsString,
@as("description") description: amazonawsString,
@as("defaultValue") defaultValue: option<amazonawsString>,
@as("dataSource") dataSource: option<dataSource>,
@as("dataType") dataType: option<dataType>,
@as("name") name: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "CreateVariableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRule = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("outcomes") outcomes: option<nonEmptyListOfStrings>,
@as("language") language: option<language>,
@as("expression") expression: option<ruleExpression>,
@as("description") description: description,
@as("detectorId") detectorId: option<identifier>,
@as("ruleId") ruleId: option<identifier>
}
  type response = {
@as("rule") rule: rule
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "CreateRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateModel = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("eventTypeName") eventTypeName: option<amazonawsString>,
@as("description") description: description,
@as("modelType") modelType: option<modelTypeEnum>,
@as("modelId") modelId: option<modelIdentifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "CreateModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDetectorVersion = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("ruleExecutionMode") ruleExecutionMode: ruleExecutionMode,
@as("modelVersions") modelVersions: listOfModelVersions,
@as("rules") rules: option<ruleList>,
@as("externalModelEndpoints") externalModelEndpoints: listOfStrings,
@as("description") description: description,
@as("detectorId") detectorId: option<identifier>
}
  type response = {
@as("status") status: detectorVersionStatus,
@as("detectorVersionId") detectorVersionId: nonEmptyString,
@as("detectorId") detectorId: identifier
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "CreateDetectorVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBatchPredictionJob = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("iamRoleArn") iamRoleArn: option<iamRoleArn>,
@as("detectorVersion") detectorVersion: wholeNumberVersionString,
@as("detectorName") detectorName: option<identifier>,
@as("eventTypeName") eventTypeName: option<identifier>,
@as("outputPath") outputPath: option<s3BucketLocation>,
@as("inputPath") inputPath: option<s3BucketLocation>,
@as("jobId") jobId: option<identifier>
}
  type response = unit
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "CreateBatchPredictionJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetVariable = {
  type t;
  type request = {
@as("names") names: option<nameList>
}
  type response = {
@as("errors") errors: batchGetVariableErrorList,
@as("variables") variables: variableList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "BatchGetVariableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchCreateVariable = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("variableEntries") variableEntries: option<variableEntryList>
}
  type response = {
@as("errors") errors: batchCreateVariableErrorList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "BatchCreateVariableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRules = {
  type t;
  type request = {
@as("maxResults") maxResults: rulesMaxResults,
@as("nextToken") nextToken: amazonawsString,
@as("ruleVersion") ruleVersion: wholeNumberVersionString,
@as("detectorId") detectorId: option<identifier>,
@as("ruleId") ruleId: identifier
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("ruleDetails") ruleDetails: ruleDetailList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEventTypes = {
  type t;
  type request = {
@as("maxResults") maxResults: eventTypesMaxResults,
@as("nextToken") nextToken: amazonawsString,
@as("name") name: identifier
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("eventTypes") eventTypes: eventTypeList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetEventTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEventPrediction = {
  type t;
  type request = {
@as("externalModelEndpointDataBlobs") externalModelEndpointDataBlobs: externalModelEndpointDataBlobMap,
@as("eventVariables") eventVariables: option<eventVariableMap>,
@as("eventTimestamp") eventTimestamp: option<amazonawsString>,
@as("entities") entities: option<listOfEntities>,
@as("eventTypeName") eventTypeName: option<amazonawsString>,
@as("eventId") eventId: option<amazonawsString>,
@as("detectorVersionId") detectorVersionId: wholeNumberVersionString,
@as("detectorId") detectorId: option<amazonawsString>
}
  type response = {
@as("ruleResults") ruleResults: listOfRuleResults,
@as("modelScores") modelScores: listOfModelScores
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetEventPredictionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetModelVersion = {
  type t;
  type request = {
@as("modelVersionNumber") modelVersionNumber: option<floatVersionString>,
@as("modelType") modelType: option<modelTypeEnum>,
@as("modelId") modelId: option<modelIdentifier>
}
  type response = {
@as("arn") arn: fraudDetectorArn,
@as("status") status: amazonawsString,
@as("externalEventsDetail") externalEventsDetail: externalEventsDetail,
@as("trainingDataSchema") trainingDataSchema: trainingDataSchema,
@as("trainingDataSource") trainingDataSource: trainingDataSourceEnum,
@as("modelVersionNumber") modelVersionNumber: floatVersionString,
@as("modelType") modelType: modelTypeEnum,
@as("modelId") modelId: modelIdentifier
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetModelVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetExternalModels = {
  type t;
  type request = {
@as("maxResults") maxResults: externalModelsMaxResults,
@as("nextToken") nextToken: amazonawsString,
@as("modelEndpoint") modelEndpoint: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("externalModels") externalModels: externalModelList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "GetExternalModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateModelVersion = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("externalEventsDetail") externalEventsDetail: externalEventsDetail,
@as("trainingDataSchema") trainingDataSchema: option<trainingDataSchema>,
@as("trainingDataSource") trainingDataSource: option<trainingDataSourceEnum>,
@as("modelType") modelType: option<modelTypeEnum>,
@as("modelId") modelId: option<modelIdentifier>
}
  type response = {
@as("status") status: amazonawsString,
@as("modelVersionNumber") modelVersionNumber: nonEmptyString,
@as("modelType") modelType: modelTypeEnum,
@as("modelId") modelId: modelIdentifier
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "CreateModelVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeModelVersions = {
  type t;
  type request = {
@as("maxResults") maxResults: modelsMaxPageSize,
@as("nextToken") nextToken: amazonawsString,
@as("modelType") modelType: modelTypeEnum,
@as("modelVersionNumber") modelVersionNumber: floatVersionString,
@as("modelId") modelId: modelIdentifier
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("modelVersionDetails") modelVersionDetails: modelVersionDetailList
}
  @module("@aws-sdk/client-frauddetector") @new external new_: (request) => t = "DescribeModelVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
