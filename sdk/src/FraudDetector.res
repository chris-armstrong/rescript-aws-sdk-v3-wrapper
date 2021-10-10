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
@ocaml.doc("<p>A variable in the list of variables for the batch create variable request.</p>")
type variableEntry = {
  @ocaml.doc("<p>The type of the variable. For more information see <a href=\"https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types\">Variable types</a>.</p>
         <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT </code>
         </p>")
  variableType: option<string_>,
  @ocaml.doc("<p>The description of the variable.</p>") description: option<string_>,
  @ocaml.doc("<p>The default value of the variable.</p>") defaultValue: option<string_>,
  @ocaml.doc("<p>The data source of the variable.</p>") dataSource: option<string_>,
  @ocaml.doc("<p>The data type of the variable.</p>") dataType: option<string_>,
  @ocaml.doc("<p>The name of the variable.</p>") name: option<string_>,
}
@ocaml.doc("<p>The variable.</p>")
type variable = {
  @ocaml.doc("<p>The ARN of the variable.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>The time when the variable was created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>The time when variable was last updated.</p>") lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The variable type of the variable.</p>
         <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT </code>
         </p>")
  variableType: option<string_>,
  @ocaml.doc("<p>The description of the variable. </p>") description: option<string_>,
  @ocaml.doc("<p>The default value of the variable.</p>") defaultValue: option<string_>,
  @ocaml.doc("<p>The data source of the variable.</p>") dataSource: option<dataSource>,
  @ocaml.doc(
    "<p>The data type of the variable. For more information see <a href=\"https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types\">Variable types</a>.</p>"
  )
  dataType: option<dataType>,
  @ocaml.doc("<p>The name of the variable.</p>") name: option<string_>,
}
@ocaml.doc("<p>A key and value pair. </p>")
type tag = {
  @ocaml.doc("<p>A value assigned to a tag key.</p>") value: tagValue,
  @ocaml.doc("<p>A tag key.</p>") key: tagKey,
}
@ocaml.doc("<p>A rule.</p>")
type rule = {
  @ocaml.doc("<p>The rule version.</p>") ruleVersion: wholeNumberVersionString,
  @ocaml.doc("<p>The rule ID.</p>") ruleId: identifier,
  @ocaml.doc("<p>The detector for which the rule is associated.</p>") detectorId: identifier,
}
@ocaml.doc("<p>The outcome.</p>")
type outcome = {
  @ocaml.doc("<p>The outcome ARN.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>The timestamp when the outcome was created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>The timestamp when the outcome was last updated.</p>")
  lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The outcome description.</p>") description: option<description>,
  @ocaml.doc("<p>The outcome name.</p>") name: option<identifier>,
}
type nonEmptyListOfStrings = array<string_>
type nameList = array<string_>
@ocaml.doc("<p>The model version.</p>")
type modelVersion = {
  @ocaml.doc("<p>The model version ARN.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>The model version number.</p>") modelVersionNumber: nonEmptyString,
  @ocaml.doc("<p>The model type.</p>") modelType: modelTypeEnum,
  @ocaml.doc("<p>The model ID.</p>") modelId: modelIdentifier,
}
type modelPredictionMap = Js.Dict.t<float_>
@ocaml.doc("<p>The Amazon SageMaker model input configuration.</p>")
type modelInputConfiguration = {
  @ocaml.doc("<p> Template for constructing the CSV input-data sent to SageMaker. At event-evaluation,
            the placeholders for variable-names in the template will be replaced with the variable
            values before being sent to SageMaker. </p>")
  csvInputTemplate: option<string_>,
  @ocaml.doc("<p> Template for constructing the JSON input-data sent to SageMaker. At event-evaluation,
            the placeholders for variable names in the template will be replaced with the variable
            values before being sent to SageMaker. </p>")
  jsonInputTemplate: option<string_>,
  @ocaml.doc("<p>The event variables.</p>") useEventVariables: useEventVariables,
  @ocaml.doc("<p> The format of the model input configuration. The format differs depending on if it is
            passed through to SageMaker or constructed by Amazon Fraud Detector.</p>")
  format: option<modelInputDataFormat>,
  @ocaml.doc("<p>The event type name.</p>") eventTypeName: option<identifier>,
}
@ocaml.doc(
  "<p>A pre-formed Amazon SageMaker model input you can include if your detector version includes an imported Amazon SageMaker model endpoint with pass-through input configuration.</p>"
)
type modelEndpointDataBlob = {
  @ocaml.doc("<p>The content type of the Amazon SageMaker model endpoint input data blob. </p>")
  contentType: option<contentType>,
  @ocaml.doc("<p>The byte buffer of the Amazon SageMaker model endpoint input data blob.</p>")
  byteBuffer: option<blob>,
}
@ocaml.doc("<p>The model.</p>")
type model = {
  @ocaml.doc("<p>The ARN of the model.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>Timestamp of last time the model was updated.</p>") lastUpdatedTime: option<time>,
  @ocaml.doc("<p>Timestamp of when the model was created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>The name of the event type.</p>") eventTypeName: option<string_>,
  @ocaml.doc("<p>The model description.</p>") description: option<description>,
  @ocaml.doc("<p>The model type.</p>") modelType: option<modelTypeEnum>,
  @ocaml.doc("<p>The model ID.</p>") modelId: option<modelIdentifier>,
}
@ocaml.doc("<p>Model performance metrics data points.</p>")
type metricDataPoint = {
  @ocaml.doc(
    "<p>The model threshold that specifies an acceptable fraud capture rate. For example, a threshold of 500 means any model score 500 or above is labeled as fraud.</p>"
  )
  threshold: option<float_>,
  @ocaml.doc(
    "<p>The true positive rate. This is the percentage of total fraud the model detects. Also known as capture rate.</p>"
  )
  tpr: option<float_>,
  @ocaml.doc(
    "<p>The percentage of fraud events correctly predicted as fraudulent as compared to all events predicted as fraudulent.</p>"
  )
  precision: option<float_>,
  @ocaml.doc(
    "<p>The false positive rate. This is the percentage of total legitimate events that are incorrectly predicted as fraud.</p>"
  )
  fpr: option<float_>,
}
type listOfStrings = array<string_>
@ocaml.doc("<p>The label details.</p>")
type label = {
  @ocaml.doc("<p>The label ARN.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>Timestamp of when the event type was created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>Timestamp of when the label was last updated.</p>") lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The label description.</p>") description: option<description>,
  @ocaml.doc("<p>The label name.</p>") name: option<string_>,
}
@ocaml.doc("<p>The KMS key details.</p>")
type kmskey = {
  @ocaml.doc("<p>The encryption key ARN.</p>") kmsEncryptionKeyArn: option<kmsEncryptionKeyArn>,
}
type jsonKeyToVariableMap = Js.Dict.t<string_>
@ocaml.doc("<p>The message details.</p>")
type fileValidationMessage = {
  @ocaml.doc("<p>The message type.</p>") @as("type") type_: option<string_>,
  @ocaml.doc("<p>The message content.</p>") content: option<string_>,
  @ocaml.doc("<p>The message title.</p>") title: option<string_>,
}
@ocaml.doc("<p>The message details.</p>")
type fieldValidationMessage = {
  @ocaml.doc("<p>The message type.</p>") @as("type") type_: option<string_>,
  @ocaml.doc("<p>The message content.</p>") content: option<string_>,
  @ocaml.doc("<p>The message title.</p>") title: option<string_>,
  @ocaml.doc("<p>The message ID.</p>") identifier: option<string_>,
  @ocaml.doc("<p>The field name.</p>") fieldName: option<string_>,
}
@ocaml.doc("<p>Details for the external events data used for model version training.</p>")
type externalEventsDetail = {
  @ocaml.doc(
    "<p>The ARN of the role that provides Amazon Fraud Detector access to the data location.</p>"
  )
  dataAccessRoleArn: iamRoleArn,
  @ocaml.doc("<p>The Amazon S3 bucket location for the data.</p>") dataLocation: s3BucketLocation,
}
type eventVariableMap = Js.Dict.t<variableValue>
@ocaml.doc("<p>The entity type details.</p>")
type entityType = {
  @ocaml.doc("<p>The entity type ARN.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>Timestamp of when the entity type was created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>Timestamp of when the entity type was last updated.</p>")
  lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The entity type description.</p>") description: option<description>,
  @ocaml.doc("<p>The entity type name.</p>") name: option<string_>,
}
@ocaml.doc("<p>The entity details. </p>")
type entity = {
  @ocaml.doc(
    "<p>The entity ID. If you do not know the <code>entityId</code>, you can pass <code>unknown</code>, which is areserved string literal.</p>"
  )
  entityId: identifier,
  @ocaml.doc("<p>The entity type.</p>") entityType: string_,
}
@ocaml.doc("<p>The summary of the detector version.</p>")
type detectorVersionSummary = {
  @ocaml.doc("<p>Timestamp of when the detector version was last updated.</p>")
  lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The detector version description. </p>") description: option<description>,
  @ocaml.doc("<p>The detector version status. </p>") status: option<detectorVersionStatus>,
  @ocaml.doc("<p>The detector version ID. </p>") detectorVersionId: option<nonEmptyString>,
}
@ocaml.doc("<p>The detector.</p>")
type detector = {
  @ocaml.doc("<p>The detector ARN.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>Timestamp of when the detector was created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>Timestamp of when the detector was last updated.</p>")
  lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The name of the event type.</p>") eventTypeName: option<identifier>,
  @ocaml.doc("<p>The detector description.</p>") description: option<description>,
  @ocaml.doc("<p>The detector ID.</p>") detectorId: option<identifier>,
}
type csvIndexToVariableMap = Js.Dict.t<string_>
@ocaml.doc("<p>The batch prediction details.</p>")
type batchPrediction = {
  @ocaml.doc("<p>The total number of records in the batch prediction job.</p>")
  totalRecordsCount: option<integer_>,
  @ocaml.doc("<p>The number of records processed by the batch prediction job.</p>")
  processedRecordsCount: option<integer_>,
  @ocaml.doc("<p>The ARN of batch prediction job.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>The ARN of the IAM role to use for this job request.</p>")
  iamRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The detector version. </p>") detectorVersion: option<floatVersionString>,
  @ocaml.doc("<p>The name of the detector.</p>") detectorName: option<identifier>,
  @ocaml.doc("<p>The name of the event type.</p>") eventTypeName: option<identifier>,
  @ocaml.doc("<p>The Amazon S3 location of your output file.</p>")
  outputPath: option<s3BucketLocation>,
  @ocaml.doc("<p>The Amazon S3 location of your training file.</p>")
  inputPath: option<s3BucketLocation>,
  @ocaml.doc(
    "<p>Timestamp of most recent heartbeat indicating the batch prediction job was making progress.</p>"
  )
  lastHeartbeatTime: option<time>,
  @ocaml.doc("<p>Timestamp of when the batch prediction job comleted.</p>")
  completionTime: option<time>,
  @ocaml.doc("<p>Timestamp of when the batch prediction job started.</p>") startTime: option<time>,
  @ocaml.doc("<p>The reason a batch prediction job failed.</p>") failureReason: option<string_>,
  @ocaml.doc("<p>The batch prediction status.</p>") status: option<asyncJobStatus>,
  @ocaml.doc("<p>The job ID for the batch prediction.</p>") jobId: option<identifier>,
}
@ocaml.doc("<p>Provides the error of the batch get variable API.</p>")
type batchGetVariableError = {
  @ocaml.doc("<p>The error message.</p>") message: option<string_>,
  @ocaml.doc("<p>The error code. </p>") code: option<integer2>,
  @ocaml.doc("<p>The error name. </p>") name: option<string_>,
}
@ocaml.doc("<p>Provides the error of the batch create variable API.</p>")
type batchCreateVariableError = {
  @ocaml.doc("<p>The error message.</p>") message: option<string_>,
  @ocaml.doc("<p>The error code. </p>") code: option<integer2>,
  @ocaml.doc("<p>The name.</p>") name: option<string_>,
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
@ocaml.doc("<p>The rule results.</p>")
type ruleResult = {
  @ocaml.doc("<p>The outcomes of the matched rule, based on the rule execution mode.</p>")
  outcomes: option<listOfStrings>,
  @ocaml.doc("<p>The rule ID that was matched, based on the rule execution mode.</p>")
  ruleId: option<string_>,
}
type ruleList = array<rule>
@ocaml.doc("<p>The details of the rule.</p>")
type ruleDetail = {
  @ocaml.doc("<p>The rule ARN.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>The timestamp of when the rule was created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>Timestamp of the last time the rule was updated.</p>")
  lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The rule outcomes.</p>") outcomes: option<nonEmptyListOfStrings>,
  @ocaml.doc("<p>The rule language.</p>") language: option<language>,
  @ocaml.doc("<p>The rule expression.</p>") expression: option<ruleExpression>,
  @ocaml.doc("<p>The rule version.</p>") ruleVersion: option<wholeNumberVersionString>,
  @ocaml.doc("<p>The detector for which the rule is associated.</p>")
  detectorId: option<identifier>,
  @ocaml.doc("<p>The rule description.</p>") description: option<description>,
  @ocaml.doc("<p>The rule ID.</p>") ruleId: option<identifier>,
}
type outcomeList = array<outcome>
@ocaml.doc("<p>The fraud prediction scores.</p>")
type modelScores = {
  @ocaml.doc("<p>The model's fraud prediction scores.</p>") scores: option<modelPredictionMap>,
  @ocaml.doc("<p>The model version.</p>") modelVersion: option<modelVersion>,
}
@ocaml.doc("<p>Provides the Amazon Sagemaker model output configuration.</p>")
type modelOutputConfiguration = {
  @ocaml.doc(
    "<p>A map of CSV index values in the SageMaker response to the Amazon Fraud Detector variables. </p>"
  )
  csvIndexToVariableMap: option<csvIndexToVariableMap>,
  @ocaml.doc(
    "<p>A map of JSON keys in response from SageMaker to the Amazon Fraud Detector variables. </p>"
  )
  jsonKeyToVariableMap: option<jsonKeyToVariableMap>,
  @ocaml.doc("<p>The format of the model output configuration.</p>") format: modelOutputDataFormat,
}
type listOfModelVersions = array<modelVersion>
type externalModelEndpointDataBlobMap = Js.Dict.t<modelEndpointDataBlob>
@ocaml.doc("<p>The event type details.</p>")
type eventType = {
  @ocaml.doc("<p>The entity type ARN.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>Timestamp of when the event type was created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>Timestamp of when the event type was last updated.</p>")
  lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The event type entity types.</p>") entityTypes: option<nonEmptyListOfStrings>,
  @ocaml.doc("<p>The event type labels.</p>") labels: option<listOfStrings>,
  @ocaml.doc("<p>The event type event variables.</p>") eventVariables: option<listOfStrings>,
  @ocaml.doc("<p>The event type description.</p>") description: option<description>,
  @ocaml.doc("<p>The event type name.</p>") name: option<string_>,
}
type detectorVersionSummaryList = array<detectorVersionSummary>
type detectorList = array<detector>
type batchPredictionList = array<batchPrediction>
type batchGetVariableErrorList = array<batchGetVariableError>
type batchCreateVariableErrorList = array<batchCreateVariableError>
type eventTypeList = array<eventType>
@ocaml.doc("<p>The training metric details.</p>")
type trainingMetrics = {
  @ocaml.doc("<p>The data points details.</p>") metricDataPoints: option<metricDataPointsList>,
  @ocaml.doc(
    "<p>The area under the curve. This summarizes true positive rate (TPR) and false positive rate (FPR) across all possible model score thresholds. A model with no predictive power has an AUC of 0.5, whereas a perfect model has a score of 1.0.</p>"
  )
  auc: option<float_>,
}
type ruleDetailList = array<ruleDetail>
type listOfRuleResults = array<ruleResult>
type listOfModelScores = array<modelScores>
@ocaml.doc("<p>The label schema.</p>")
type labelSchema = {
  @ocaml.doc("<p>The label mapper maps the Amazon Fraud Detector supported model classification labels (<code>FRAUD</code>, <code>LEGIT</code>) to the appropriate event type labels. For example, if \"<code>FRAUD</code>\" and \"<code>LEGIT</code>\" are Amazon Fraud Detector supported labels, this mapper could be: <code>{\"FRAUD\" => [\"0\"]</code>, <code>\"LEGIT\" => [\"1\"]}</code> or <code>{\"FRAUD\" => [\"false\"]</code>, <code>\"LEGIT\" => [\"true\"]}</code> or <code>{\"FRAUD\" => [\"fraud\", \"abuse\"]</code>, <code>\"LEGIT\" => [\"legit\", \"safe\"]}</code>. The value part of the mapper is a list, because you may have multiple label variants from your event type for a single Amazon Fraud Detector label.
        </p>")
  labelMapper: labelMapper,
}
@ocaml.doc("<p>The Amazon SageMaker model.</p>")
type externalModel = {
  @ocaml.doc("<p>The model ARN.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>Timestamp of when the model was last created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>Timestamp of when the model was last updated.</p>") lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The Amazon Fraud Detector status for the external model endpoint</p>")
  modelEndpointStatus: option<modelEndpointStatus>,
  @ocaml.doc("<p>The output configuration.</p>")
  outputConfiguration: option<modelOutputConfiguration>,
  @ocaml.doc("<p>The input configuration.</p>") inputConfiguration: option<modelInputConfiguration>,
  @ocaml.doc("<p>The role used to invoke the model. </p>")
  invokeModelEndpointRoleArn: option<string_>,
  @ocaml.doc("<p>The source of the model.</p>") modelSource: option<modelSource>,
  @ocaml.doc("<p>The Amazon SageMaker model endpoints.</p>") modelEndpoint: option<string_>,
}
@ocaml.doc("<p>The model training validation messages.</p>")
type dataValidationMetrics = {
  @ocaml.doc("<p>The field-specific model training validation messages.</p>")
  fieldLevelMessages: option<fieldValidationMessageList>,
  @ocaml.doc("<p>The file-specific model training validation messages.</p>")
  fileLevelMessages: option<fileValidationMessageList>,
}
@ocaml.doc("<p>The training result details.</p>")
type trainingResult = {
  @ocaml.doc("<p>The training metric details.</p>") trainingMetrics: option<trainingMetrics>,
  @ocaml.doc("<p>The validation metrics.</p>") dataValidationMetrics: option<dataValidationMetrics>,
}
@ocaml.doc("<p>The training data schema.</p>")
type trainingDataSchema = {
  labelSchema: labelSchema,
  @ocaml.doc("<p>The training data schema variables.</p>") modelVariables: listOfStrings,
}
type externalModelList = array<externalModel>
@ocaml.doc("<p>The details of the model version.</p>")
type modelVersionDetail = {
  @ocaml.doc("<p>The model version ARN.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>The timestamp when the model was created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>The timestamp when the model was last updated.</p>") lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The training results.</p>") trainingResult: option<trainingResult>,
  @ocaml.doc("<p>The event details.</p>") externalEventsDetail: option<externalEventsDetail>,
  @ocaml.doc("<p>The training data schema.</p>") trainingDataSchema: option<trainingDataSchema>,
  @ocaml.doc("<p>The model version training data source.</p>")
  trainingDataSource: option<trainingDataSourceEnum>,
  @ocaml.doc("<p>The status of the model version.</p>") status: option<string_>,
  @ocaml.doc("<p>The model version number.</p>") modelVersionNumber: option<floatVersionString>,
  @ocaml.doc("<p>The model type.</p>") modelType: option<modelTypeEnum>,
  @ocaml.doc("<p>The model ID.</p>") modelId: option<modelIdentifier>,
}
type modelVersionDetailList = array<modelVersionDetail>
@ocaml.doc("<p>This is the Amazon Fraud Detector API Reference. This guide is for developers who need
            detailed information about Amazon Fraud Detector API actions, data types, and errors. For
            more information about Amazon Fraud Detector features, see the <a href=\"https://docs.aws.amazon.com/frauddetector/latest/ug/\">Amazon Fraud Detector User Guide</a>.</p>")
module UpdateVariable = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The variable type. For more information see <a href=\"https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types\">Variable types</a>.</p>"
    )
    variableType: option<string_>,
    @ocaml.doc("<p>The new description.</p>") description: option<string_>,
    @ocaml.doc("<p>The new default value of the variable.</p>") defaultValue: option<string_>,
    @ocaml.doc("<p>The name of the variable.</p>") name: string_,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "UpdateVariableCommand"
  let make = (~name, ~variableType=?, ~description=?, ~defaultValue=?, ()) =>
    new({
      variableType: variableType,
      description: description,
      defaultValue: defaultValue,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateModelVersionStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The model version status.</p>") status: modelVersionStatus,
    @ocaml.doc("<p>The model version number.</p>") modelVersionNumber: floatVersionString,
    @ocaml.doc("<p>The model type.</p>") modelType: modelTypeEnum,
    @ocaml.doc("<p>The model ID of the model version to update.</p>") modelId: modelIdentifier,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateModelVersionStatusCommand"
  let make = (~status, ~modelVersionNumber, ~modelType, ~modelId, ()) =>
    new({
      status: status,
      modelVersionNumber: modelVersionNumber,
      modelType: modelType,
      modelId: modelId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateModel = {
  type t
  type request = {
    @ocaml.doc("<p>The new model description.</p>") description: option<description>,
    @ocaml.doc("<p>The model type.</p>") modelType: modelTypeEnum,
    @ocaml.doc("<p>The model ID.</p>") modelId: modelIdentifier,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "UpdateModelCommand"
  let make = (~modelType, ~modelId, ~description=?, ()) =>
    new({description: description, modelType: modelType, modelId: modelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDetectorVersionStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The new status.</p>") status: detectorVersionStatus,
    @ocaml.doc("<p>The detector version ID. </p>") detectorVersionId: wholeNumberVersionString,
    @ocaml.doc("<p>The detector ID. </p>") detectorId: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateDetectorVersionStatusCommand"
  let make = (~status, ~detectorVersionId, ~detectorId, ()) =>
    new({status: status, detectorVersionId: detectorVersionId, detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDetectorVersionMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The description.</p>") description: description,
    @ocaml.doc("<p>The detector version ID. </p>") detectorVersionId: wholeNumberVersionString,
    @ocaml.doc("<p>The detector ID.</p>") detectorId: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateDetectorVersionMetadataCommand"
  let make = (~description, ~detectorVersionId, ~detectorId, ()) =>
    new({description: description, detectorVersionId: detectorVersionId, detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutKMSEncryptionKey = {
  type t
  type request = {
    @ocaml.doc("<p>The KMS encryption key ARN.</p>") kmsEncryptionKeyArn: kmsEncryptionKeyArn,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "PutKMSEncryptionKeyCommand"
  let make = (~kmsEncryptionKeyArn, ()) => new({kmsEncryptionKeyArn: kmsEncryptionKeyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVariable = {
  type t
  type request = {@ocaml.doc("<p>The name of the variable to delete.</p>") name: string_}

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteVariableCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOutcome = {
  type t
  type request = {@ocaml.doc("<p>The name of the outcome to delete.</p>") name: identifier}

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteOutcomeCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteModelVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The model version number of the model version to delete.</p>")
    modelVersionNumber: floatVersionString,
    @ocaml.doc("<p>The model type of the model version to delete.</p>") modelType: modelTypeEnum,
    @ocaml.doc("<p>The model ID of the model version to delete.</p>") modelId: modelIdentifier,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteModelVersionCommand"
  let make = (~modelVersionNumber, ~modelType, ~modelId, ()) =>
    new({modelVersionNumber: modelVersionNumber, modelType: modelType, modelId: modelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteModel = {
  type t
  type request = {
    @ocaml.doc("<p>The model type of the model to delete.</p>") modelType: modelTypeEnum,
    @ocaml.doc("<p>The model ID of the model to delete.</p>") modelId: modelIdentifier,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteModelCommand"
  let make = (~modelType, ~modelId, ()) => new({modelType: modelType, modelId: modelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLabel = {
  type t
  type request = {@ocaml.doc("<p>The name of the label to delete.</p>") name: identifier}

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteLabelCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteExternalModel = {
  type t
  type request = {
    @ocaml.doc("<p>The endpoint of the Amazon Sagemaker model to delete.</p>")
    modelEndpoint: sageMakerEndpointIdentifier,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteExternalModelCommand"
  let make = (~modelEndpoint, ()) => new({modelEndpoint: modelEndpoint})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEventType = {
  type t
  type request = {@ocaml.doc("<p>The name of the event type to delete.</p>") name: identifier}

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteEventTypeCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEvent = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the event type.</p>") eventTypeName: identifier,
    @ocaml.doc("<p>The ID of the event to delete.</p>") eventId: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteEventCommand"
  let make = (~eventTypeName, ~eventId, ()) => new({eventTypeName: eventTypeName, eventId: eventId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEntityType = {
  type t
  type request = {@ocaml.doc("<p>The name of the entity type to delete.</p>") name: identifier}

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteEntityTypeCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDetectorVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the detector version to delete.</p>")
    detectorVersionId: wholeNumberVersionString,
    @ocaml.doc("<p>The ID of the parent detector for the detector version to delete.</p>")
    detectorId: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteDetectorVersionCommand"
  let make = (~detectorVersionId, ~detectorId, ()) =>
    new({detectorVersionId: detectorVersionId, detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDetector = {
  type t
  type request = {@ocaml.doc("<p>The ID of the detector to delete.</p>") detectorId: identifier}

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteDetectorCommand"
  let make = (~detectorId, ()) => new({detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBatchPredictionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the batch prediction job to delete.</p>") jobId: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteBatchPredictionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelBatchPredictionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the batch prediction job to cancel.</p>") jobId: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "CancelBatchPredictionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRuleMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The rule description.</p>") description: description,
    @ocaml.doc("<p>The rule to update.</p>") rule: rule,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateRuleMetadataCommand"
  let make = (~description, ~rule, ()) => new({description: description, rule: rule})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource ARN.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource from which to remove the tag.</p>")
    resourceARN: fraudDetectorArn,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetKMSEncryptionKey = {
  type t

  type response = {@ocaml.doc("<p>The KMS encryption key.</p>") kmsKey: option<kmskey>}
  @module("@aws-sdk/client-frauddetector") @new
  external new: unit => t = "GetKMSEncryptionKeyCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRule = {
  type t
  type request = {rule: rule}

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteRuleCommand"
  let make = (~rule, ()) => new({rule: rule})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRuleVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the rule version.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The outcomes.</p>") outcomes: nonEmptyListOfStrings,
    @ocaml.doc("<p>The language.</p>") language: language,
    @ocaml.doc("<p>The rule expression.</p>") expression: ruleExpression,
    @ocaml.doc("<p>The description.</p>") description: option<description>,
    @ocaml.doc("<p>The rule to update.</p>") rule: rule,
  }
  type response = {@ocaml.doc("<p>The new rule version that was created.</p>") rule: option<rule>}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateRuleVersionCommand"
  let make = (~outcomes, ~language, ~expression, ~rule, ~tags=?, ~description=?, ()) =>
    new({
      tags: tags,
      outcomes: outcomes,
      language: language,
      expression: expression,
      description: description,
      rule: rule,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateModelVersion = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The event details.</p>") externalEventsDetail: option<externalEventsDetail>,
    @ocaml.doc("<p>The major version number.</p>") majorVersionNumber: wholeNumberVersionString,
    @ocaml.doc("<p>The model type.</p>") modelType: modelTypeEnum,
    @ocaml.doc("<p>The model ID.</p>") modelId: modelIdentifier,
  }
  type response = {
    @ocaml.doc("<p>The status of the updated model version.</p>") status: option<string_>,
    @ocaml.doc("<p>The model version number of the model version updated.</p>")
    modelVersionNumber: option<floatVersionString>,
    @ocaml.doc("<p>The model type.</p>") modelType: option<modelTypeEnum>,
    @ocaml.doc("<p>The model ID.</p>") modelId: option<modelIdentifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateModelVersionCommand"
  let make = (~majorVersionNumber, ~modelType, ~modelId, ~tags=?, ~externalEventsDetail=?, ()) =>
    new({
      tags: tags,
      externalEventsDetail: externalEventsDetail,
      majorVersionNumber: majorVersionNumber,
      modelType: modelType,
      modelId: modelId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDetectorVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The rule execution mode to add to the detector.</p>
	        <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
	        <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
         <p>The default behavior is <code>FIRST_MATCHED</code>.</p>")
    ruleExecutionMode: option<ruleExecutionMode>,
    @ocaml.doc("<p>The model versions to include in the detector version.</p>")
    modelVersions: option<listOfModelVersions>,
    @ocaml.doc("<p>The detector version description. </p>") description: option<description>,
    @ocaml.doc("<p>The rules to include in the detector version.</p>") rules: ruleList,
    @ocaml.doc("<p>The Amazon SageMaker model endpoints to include in the detector version.</p>")
    externalModelEndpoints: listOfStrings,
    @ocaml.doc("<p>The detector version ID. </p>") detectorVersionId: wholeNumberVersionString,
    @ocaml.doc("<p>The parent detector ID for the detector version you want to update.</p>")
    detectorId: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateDetectorVersionCommand"
  let make = (
    ~rules,
    ~externalModelEndpoints,
    ~detectorVersionId,
    ~detectorId,
    ~ruleExecutionMode=?,
    ~modelVersions=?,
    ~description=?,
    (),
  ) =>
    new({
      ruleExecutionMode: ruleExecutionMode,
      modelVersions: modelVersions,
      description: description,
      rules: rules,
      externalModelEndpoints: externalModelEndpoints,
      detectorVersionId: detectorVersionId,
      detectorId: detectorId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the resource.</p>") tags: tagList_,
    @ocaml.doc("<p>The resource ARN.</p>") resourceARN: fraudDetectorArn,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutOutcome = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The outcome description.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the outcome.</p>") name: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutOutcomeCommand"
  let make = (~name, ~tags=?, ~description=?, ()) =>
    new({tags: tags, description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutLabel = {
  type t
  type request = {
    @ocaml.doc("<p></p>") tags: option<tagList_>,
    @ocaml.doc("<p>The label description.</p>") description: option<description>,
    @ocaml.doc("<p>The label name.</p>") name: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutLabelCommand"
  let make = (~name, ~tags=?, ~description=?, ()) =>
    new({tags: tags, description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutExternalModel = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The model endpoint’s status in Amazon Fraud Detector.</p>")
    modelEndpointStatus: modelEndpointStatus,
    @ocaml.doc("<p>The model endpoint output configuration.</p>")
    outputConfiguration: modelOutputConfiguration,
    @ocaml.doc("<p>The model endpoint input configuration.</p>")
    inputConfiguration: modelInputConfiguration,
    @ocaml.doc("<p>The IAM role used to invoke the model endpoint.</p>")
    invokeModelEndpointRoleArn: string_,
    @ocaml.doc("<p>The source of the model.</p>") modelSource: modelSource,
    @ocaml.doc("<p>The model endpoints name.</p>") modelEndpoint: sageMakerEndpointIdentifier,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "PutExternalModelCommand"
  let make = (
    ~modelEndpointStatus,
    ~outputConfiguration,
    ~inputConfiguration,
    ~invokeModelEndpointRoleArn,
    ~modelSource,
    ~modelEndpoint,
    ~tags=?,
    (),
  ) =>
    new({
      tags: tags,
      modelEndpointStatus: modelEndpointStatus,
      outputConfiguration: outputConfiguration,
      inputConfiguration: inputConfiguration,
      invokeModelEndpointRoleArn: invokeModelEndpointRoleArn,
      modelSource: modelSource,
      modelEndpoint: modelEndpoint,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutEventType = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc(
      "<p>The entity type for the event type. Example entity types: customer, merchant, account.</p>"
    )
    entityTypes: nonEmptyListOfStrings,
    @ocaml.doc("<p>The event type labels.</p>") labels: option<listOfStrings>,
    @ocaml.doc("<p>The event type variables.</p>") eventVariables: nonEmptyListOfStrings,
    @ocaml.doc("<p>The description of the event type.</p>") description: option<description>,
    @ocaml.doc("<p>The name.</p>") name: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutEventTypeCommand"
  let make = (~entityTypes, ~eventVariables, ~name, ~tags=?, ~labels=?, ~description=?, ()) =>
    new({
      tags: tags,
      entityTypes: entityTypes,
      labels: labels,
      eventVariables: eventVariables,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutEntityType = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The description.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the entity type.</p>") name: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutEntityTypeCommand"
  let make = (~name, ~tags=?, ~description=?, ()) =>
    new({tags: tags, description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutDetector = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The name of the event type.</p>") eventTypeName: identifier,
    @ocaml.doc("<p>The description of the detector.</p>") description: option<description>,
    @ocaml.doc("<p>The detector ID. </p>") detectorId: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutDetectorCommand"
  let make = (~eventTypeName, ~detectorId, ~tags=?, ~description=?, ()) =>
    new({
      tags: tags,
      eventTypeName: eventTypeName,
      description: description,
      detectorId: detectorId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects to return for the request. </p>")
    maxResults: option<tagsMaxResults>,
    @ocaml.doc("<p>The next token from the previous results.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The ARN that specifies the resource whose tags you want to list.</p>")
    resourceARN: fraudDetectorArn,
  }
  type response = {
    @ocaml.doc("<p>The next token for subsequent requests. </p>") nextToken: option<string_>,
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVariables = {
  type t
  type request = {
    @ocaml.doc("<p>The max size per page determined for the get variable request. </p>")
    maxResults: option<variablesMaxResults>,
    @ocaml.doc("<p>The next page token of the get variable request. </p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the variable. </p>") name: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The next page token to be used in subsequent requests. </p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The names of the variables returned. </p>") variables: option<variableList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetVariablesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~name=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOutcomes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects to return for the request. </p>")
    maxResults: option<outcomesMaxResults>,
    @ocaml.doc("<p>The next page token for the request. </p>") nextToken: option<string_>,
    @ocaml.doc("<p>The name of the outcome or outcomes to get.</p>") name: option<identifier>,
  }
  type response = {
    @ocaml.doc("<p>The next page token for subsequent requests.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The outcomes. </p>") outcomes: option<outcomeList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetOutcomesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~name=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetModels = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects to return for the request. </p>")
    maxResults: option<modelsMaxPageSize>,
    @ocaml.doc("<p>The next token for the subsequent request.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The model type.</p>") modelType: option<modelTypeEnum>,
    @ocaml.doc("<p>The model ID.</p>") modelId: option<modelIdentifier>,
  }
  type response = {
    @ocaml.doc("<p>The array of models.</p>") models: option<modelList>,
    @ocaml.doc("<p>The next page token to be used in subsequent requests.</p>")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetModelsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~modelType=?, ~modelId=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, modelType: modelType, modelId: modelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLabels = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects to return for the request.</p>")
    maxResults: option<labelsMaxResults>,
    @ocaml.doc("<p>The next token for the subsequent request.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The name of the label or labels to get.</p>") name: option<identifier>,
  }
  type response = {
    @ocaml.doc("<p>The next page token.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>An array of labels.</p>") labels: option<labelList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetLabelsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~name=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEntityTypes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects to return for the request.</p>")
    maxResults: option<entityTypesMaxResults>,
    @ocaml.doc("<p>The next token for the subsequent request.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The name.</p>") name: option<identifier>,
  }
  type response = {
    @ocaml.doc("<p>The next page token.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>An array of entity types.</p>") entityTypes: option<entityTypeList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetEntityTypesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~name=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDetectors = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects to return for the request.</p>")
    maxResults: option<detectorsMaxResults>,
    @ocaml.doc("<p>The next token for the subsequent request.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The detector ID.</p>") detectorId: option<identifier>,
  }
  type response = {
    @ocaml.doc("<p>The next page token.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The detectors.</p>") detectors: option<detectorList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetDetectorsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~detectorId=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDetectorVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The detector version ID.</p>") detectorVersionId: wholeNumberVersionString,
    @ocaml.doc("<p>The detector ID.</p>") detectorId: identifier,
  }
  type response = {
    @ocaml.doc("<p>The detector version ARN.</p>") arn: option<fraudDetectorArn>,
    @ocaml.doc("<p>The execution mode of the rule in the dectector</p>
	        <p>
            <code>FIRST_MATCHED</code> indicates that Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
	        <p>
            <code>ALL_MATCHED</code> indicates that Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status.</p>")
    ruleExecutionMode: option<ruleExecutionMode>,
    @ocaml.doc("<p>The timestamp when the detector version was created. </p>")
    createdTime: option<time>,
    @ocaml.doc("<p>The timestamp when the detector version was last updated.
        </p>")
    lastUpdatedTime: option<time>,
    @ocaml.doc("<p>The status of the detector version.</p>") status: option<detectorVersionStatus>,
    @ocaml.doc("<p>The rules included in the detector version.</p>") rules: option<ruleList>,
    @ocaml.doc("<p>The model versions included in the detector version. </p>")
    modelVersions: option<listOfModelVersions>,
    @ocaml.doc("<p>The Amazon SageMaker model endpoints included in the detector version.</p>")
    externalModelEndpoints: option<listOfStrings>,
    @ocaml.doc("<p>The detector version description.</p>") description: option<description>,
    @ocaml.doc("<p>The detector version ID.</p>")
    detectorVersionId: option<wholeNumberVersionString>,
    @ocaml.doc("<p>The detector ID.</p>") detectorId: option<identifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetDetectorVersionCommand"
  let make = (~detectorVersionId, ~detectorId, ()) =>
    new({detectorVersionId: detectorVersionId, detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBatchPredictionJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The next token from the previous request.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of objects to return for the request.</p>")
    maxResults: option<batchPredictionsMaxPageSize>,
    @ocaml.doc("<p>The batch prediction job for which to get the details.</p>")
    jobId: option<identifier>,
  }
  type response = {
    @ocaml.doc("<p>The next token for the subsequent request.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>An array containing the details of each batch prediction job.</p>")
    batchPredictions: option<batchPredictionList>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetBatchPredictionJobsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~jobId=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDetector = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return for the request.</p>")
    maxResults: option<detectorVersionMaxResults>,
    @ocaml.doc("<p>The next token from the previous response.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The detector ID.</p>") detectorId: identifier,
  }
  type response = {
    @ocaml.doc("<p>The detector ARN.</p>") arn: option<fraudDetectorArn>,
    @ocaml.doc("<p>The next token to be used for subsequent requests.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The status and description for each detector version.</p>")
    detectorVersionSummaries: option<detectorVersionSummaryList>,
    @ocaml.doc("<p>The detector ID.</p>") detectorId: option<identifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DescribeDetectorCommand"
  let make = (~detectorId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVariable = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The variable type. For more information see <a href=\"https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types\">Variable types</a>.
				</p>
         <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT</code>
         </p>")
    variableType: option<string_>,
    @ocaml.doc("<p>The description.</p>") description: option<string_>,
    @ocaml.doc("<p>The default value for the variable when no value is received.</p>")
    defaultValue: string_,
    @ocaml.doc("<p>The source of the data.</p>") dataSource: dataSource,
    @ocaml.doc("<p>The data type.</p>") dataType: dataType,
    @ocaml.doc("<p>The name of the variable.</p>") name: string_,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "CreateVariableCommand"
  let make = (
    ~defaultValue,
    ~dataSource,
    ~dataType,
    ~name,
    ~tags=?,
    ~variableType=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      variableType: variableType,
      description: description,
      defaultValue: defaultValue,
      dataSource: dataSource,
      dataType: dataType,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateRule = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The outcome or outcomes returned when the rule expression matches.</p>")
    outcomes: nonEmptyListOfStrings,
    @ocaml.doc("<p>The language of the rule.</p>") language: language,
    @ocaml.doc("<p>The rule expression.</p>") expression: ruleExpression,
    @ocaml.doc("<p>The rule description.</p>") description: option<description>,
    @ocaml.doc("<p>The detector ID for the rule's parent detector.</p>") detectorId: identifier,
    @ocaml.doc("<p>The rule ID.</p>") ruleId: identifier,
  }
  type response = {@ocaml.doc("<p>The created rule.</p>") rule: option<rule>}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "CreateRuleCommand"
  let make = (
    ~outcomes,
    ~language,
    ~expression,
    ~detectorId,
    ~ruleId,
    ~tags=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      outcomes: outcomes,
      language: language,
      expression: expression,
      description: description,
      detectorId: detectorId,
      ruleId: ruleId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModel = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The name of the event type.</p>") eventTypeName: string_,
    @ocaml.doc("<p>The model description. </p>") description: option<description>,
    @ocaml.doc("<p>The model type. </p>") modelType: modelTypeEnum,
    @ocaml.doc("<p>The model ID.</p>") modelId: modelIdentifier,
  }

  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "CreateModelCommand"
  let make = (~eventTypeName, ~modelType, ~modelId, ~tags=?, ~description=?, ()) =>
    new({
      tags: tags,
      eventTypeName: eventTypeName,
      description: description,
      modelType: modelType,
      modelId: modelId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateDetectorVersion = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The rule execution mode for the rules included in the detector version.</p>
	        <p>You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
	        <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
	        <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. </p>
         <p>The default behavior is <code>FIRST_MATCHED</code>.</p>")
    ruleExecutionMode: option<ruleExecutionMode>,
    @ocaml.doc("<p>The model versions to include in the detector version.</p>")
    modelVersions: option<listOfModelVersions>,
    @ocaml.doc("<p>The rules to include in the detector version.</p>") rules: ruleList,
    @ocaml.doc("<p>The Amazon Sagemaker model endpoints to include in the detector version.</p>")
    externalModelEndpoints: option<listOfStrings>,
    @ocaml.doc("<p>The description of the detector version.</p>") description: option<description>,
    @ocaml.doc("<p>The ID of the detector under which you want to create a new version.</p>")
    detectorId: identifier,
  }
  type response = {
    @ocaml.doc("<p>The status of the detector version.</p>") status: option<detectorVersionStatus>,
    @ocaml.doc("<p>The ID for the created detector. </p>")
    detectorVersionId: option<nonEmptyString>,
    @ocaml.doc("<p>The ID for the created version's parent detector.</p>")
    detectorId: option<identifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "CreateDetectorVersionCommand"
  let make = (
    ~rules,
    ~detectorId,
    ~tags=?,
    ~ruleExecutionMode=?,
    ~modelVersions=?,
    ~externalModelEndpoints=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      ruleExecutionMode: ruleExecutionMode,
      modelVersions: modelVersions,
      rules: rules,
      externalModelEndpoints: externalModelEndpoints,
      description: description,
      detectorId: detectorId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBatchPredictionJob = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The ARN of the IAM role to use for this job request.</p>")
    iamRoleArn: iamRoleArn,
    @ocaml.doc("<p>The detector version.</p>") detectorVersion: option<wholeNumberVersionString>,
    @ocaml.doc("<p>The name of the detector.</p>") detectorName: identifier,
    @ocaml.doc("<p>The name of the event type.</p>") eventTypeName: identifier,
    @ocaml.doc("<p>The Amazon S3 location of your output file.</p>") outputPath: s3BucketLocation,
    @ocaml.doc("<p>The Amazon S3 location of your training file.</p>") inputPath: s3BucketLocation,
    @ocaml.doc("<p>The ID of the batch prediction job.</p>") jobId: identifier,
  }

  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "CreateBatchPredictionJobCommand"
  let make = (
    ~iamRoleArn,
    ~detectorName,
    ~eventTypeName,
    ~outputPath,
    ~inputPath,
    ~jobId,
    ~tags=?,
    ~detectorVersion=?,
    (),
  ) =>
    new({
      tags: tags,
      iamRoleArn: iamRoleArn,
      detectorVersion: detectorVersion,
      detectorName: detectorName,
      eventTypeName: eventTypeName,
      outputPath: outputPath,
      inputPath: inputPath,
      jobId: jobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module BatchGetVariable = {
  type t
  type request = {@ocaml.doc("<p>The list of variable names to get.</p>") names: nameList}
  type response = {
    @ocaml.doc("<p>The errors from the request.</p>") errors: option<batchGetVariableErrorList>,
    @ocaml.doc("<p>The returned variables.</p>") variables: option<variableList>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "BatchGetVariableCommand"
  let make = (~names, ()) => new({names: names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchCreateVariable = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The list of variables for the batch create variable request.</p>")
    variableEntries: variableEntryList,
  }
  type response = {
    @ocaml.doc("<p>Provides the errors for the <code>BatchCreateVariable</code> request.</p>")
    errors: option<batchCreateVariableErrorList>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "BatchCreateVariableCommand"
  let make = (~variableEntries, ~tags=?, ()) => new({tags: tags, variableEntries: variableEntries})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRules = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of rules to return for the request.</p>")
    maxResults: option<rulesMaxResults>,
    @ocaml.doc("<p>The next page token.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The rule version.</p>") ruleVersion: option<wholeNumberVersionString>,
    @ocaml.doc("<p>The detector ID.</p>") detectorId: identifier,
    @ocaml.doc("<p>The rule ID.</p>") ruleId: option<identifier>,
  }
  type response = {
    @ocaml.doc("<p>The next page token to be used in subsequent requests.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The details of the requested rule.</p>") ruleDetails: option<ruleDetailList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetRulesCommand"
  let make = (~detectorId, ~maxResults=?, ~nextToken=?, ~ruleVersion=?, ~ruleId=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      ruleVersion: ruleVersion,
      detectorId: detectorId,
      ruleId: ruleId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventTypes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects to return for the request.</p>")
    maxResults: option<eventTypesMaxResults>,
    @ocaml.doc("<p>The next token for the subsequent request.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The name.</p>") name: option<identifier>,
  }
  type response = {
    @ocaml.doc("<p>The next page token.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>An array of event types.</p>") eventTypes: option<eventTypeList>,
  }
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetEventTypesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~name=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventPrediction = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon SageMaker model endpoint input data blobs.</p>")
    externalModelEndpointDataBlobs: option<externalModelEndpointDataBlobMap>,
    @ocaml.doc(
      "<p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and their corresponding values for the event you are sending for evaluation.</p>"
    )
    eventVariables: eventVariableMap,
    @ocaml.doc("<p>Timestamp that defines when the event under evaluation occurred.</p>")
    eventTimestamp: string_,
    @ocaml.doc(
      "<p>The entity type (associated with the detector's event type) and specific entity ID representing who performed the event. If an entity id is not available, use \"UNKNOWN.\"</p>"
    )
    entities: listOfEntities,
    @ocaml.doc("<p>The event type associated with the detector specified for the prediction.</p>")
    eventTypeName: string_,
    @ocaml.doc("<p>The unique ID used to identify the event.</p>") eventId: string_,
    @ocaml.doc("<p>The detector version ID.</p>")
    detectorVersionId: option<wholeNumberVersionString>,
    @ocaml.doc("<p>The detector ID.</p>") detectorId: string_,
  }
  type response = {
    @ocaml.doc("<p>The results.</p>") ruleResults: option<listOfRuleResults>,
    @ocaml.doc(
      "<p>The model scores. Amazon Fraud Detector generates model scores between 0 and 1000, where 0 is low fraud risk and 1000 is high fraud risk. Model scores are directly related to the false positive rate (FPR). For example, a score of 600 corresponds to an estimated 10% false positive rate whereas a score of 900 corresponds to an estimated 2% false positive rate.</p>"
    )
    modelScores: option<listOfModelScores>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetEventPredictionCommand"
  let make = (
    ~eventVariables,
    ~eventTimestamp,
    ~entities,
    ~eventTypeName,
    ~eventId,
    ~detectorId,
    ~externalModelEndpointDataBlobs=?,
    ~detectorVersionId=?,
    (),
  ) =>
    new({
      externalModelEndpointDataBlobs: externalModelEndpointDataBlobs,
      eventVariables: eventVariables,
      eventTimestamp: eventTimestamp,
      entities: entities,
      eventTypeName: eventTypeName,
      eventId: eventId,
      detectorVersionId: detectorVersionId,
      detectorId: detectorId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetModelVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The model version number.</p>") modelVersionNumber: floatVersionString,
    @ocaml.doc("<p>The model type.</p>") modelType: modelTypeEnum,
    @ocaml.doc("<p>The model ID.</p>") modelId: modelIdentifier,
  }
  type response = {
    @ocaml.doc("<p>The model version ARN.</p>") arn: option<fraudDetectorArn>,
    @ocaml.doc("<p>The model version status.</p>
	        <p>Possible values are:</p>
	        <ul>
            <li>
               <p>
                  <code>TRAINING_IN_PROGRESS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TRAINING_COMPLETE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ACTIVATE_REQUESTED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ACTIVATE_IN_PROGRESS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INACTIVATE_REQUESTED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INACTIVATE_IN_PROGRESS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INACTIVE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ERROR</code>
               </p>
            </li>
         </ul>")
    status: option<string_>,
    @ocaml.doc("<p>The event details.</p>") externalEventsDetail: option<externalEventsDetail>,
    @ocaml.doc("<p>The training data schema.</p>") trainingDataSchema: option<trainingDataSchema>,
    @ocaml.doc("<p>The training data source.</p>")
    trainingDataSource: option<trainingDataSourceEnum>,
    @ocaml.doc("<p>The model version number.</p>") modelVersionNumber: option<floatVersionString>,
    @ocaml.doc("<p>The model type.</p>") modelType: option<modelTypeEnum>,
    @ocaml.doc("<p>The model ID.</p>") modelId: option<modelIdentifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetModelVersionCommand"
  let make = (~modelVersionNumber, ~modelType, ~modelId, ()) =>
    new({modelVersionNumber: modelVersionNumber, modelType: modelType, modelId: modelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExternalModels = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects to return for the request.</p>")
    maxResults: option<externalModelsMaxResults>,
    @ocaml.doc("<p>The next page token for the request.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon SageMaker model endpoint.</p>") modelEndpoint: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The next page token to be used in subsequent requests.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Gets the Amazon SageMaker models.</p>")
    externalModels: option<externalModelList>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetExternalModelsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~modelEndpoint=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, modelEndpoint: modelEndpoint})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModelVersion = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc(
      "<p>Details for the external events data used for model version training. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>"
    )
    externalEventsDetail: option<externalEventsDetail>,
    @ocaml.doc("<p>The training data schema.</p>") trainingDataSchema: trainingDataSchema,
    @ocaml.doc("<p>The training data source location in Amazon S3. </p>")
    trainingDataSource: trainingDataSourceEnum,
    @ocaml.doc("<p>The model type.</p>") modelType: modelTypeEnum,
    @ocaml.doc("<p>The model ID. </p>") modelId: modelIdentifier,
  }
  type response = {
    @ocaml.doc("<p>The model version status. </p>") status: option<string_>,
    @ocaml.doc("<p>The model version number of the model version created.</p>")
    modelVersionNumber: option<nonEmptyString>,
    @ocaml.doc("<p>The model type.</p>") modelType: option<modelTypeEnum>,
    @ocaml.doc("<p>The model ID.</p>") modelId: option<modelIdentifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "CreateModelVersionCommand"
  let make = (
    ~trainingDataSchema,
    ~trainingDataSource,
    ~modelType,
    ~modelId,
    ~tags=?,
    ~externalEventsDetail=?,
    (),
  ) =>
    new({
      tags: tags,
      externalEventsDetail: externalEventsDetail,
      trainingDataSchema: trainingDataSchema,
      trainingDataSource: trainingDataSource,
      modelType: modelType,
      modelId: modelId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeModelVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>")
    maxResults: option<modelsMaxPageSize>,
    @ocaml.doc("<p>The next token from the previous results.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The model type.</p>") modelType: option<modelTypeEnum>,
    @ocaml.doc("<p>The model version number.</p>") modelVersionNumber: option<floatVersionString>,
    @ocaml.doc("<p>The model ID.</p>") modelId: option<modelIdentifier>,
  }
  type response = {
    @ocaml.doc("<p>The next token.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The model version details.</p>")
    modelVersionDetails: option<modelVersionDetailList>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DescribeModelVersionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~modelType=?, ~modelVersionNumber=?, ~modelId=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      modelType: modelType,
      modelVersionNumber: modelVersionNumber,
      modelId: modelId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
