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
type utcTimestampISO8601 = string
type time = string
type tagValue = string
type tagKey = string
type string_ = string
type sensitiveString = string
type sageMakerEndpointIdentifier = string
type s3BucketLocation = string
type ruleExpression = string
type modelsMaxPageSize = int
type modelInputTemplate = string
type modelIdentifier = string
type labelsMaxResults = int
type identifier = string
type iamRoleArn = string
type fraudDetectorArn = string
type floatVersionString = string
type float_ = float
type filterString = string
type eventTypesMaxResults = int
type entityTypesMaxResults = int
type entityRestrictedString = string
type description = string
type contentType = string
type blob = NodeJs.Buffer.t
type batchPredictionsMaxPageSize = int
type batchImportsMaxPageSize = int
type attributeValue = string
type attributeKey = string
type variablesMaxResults = int
type useEventVariables = bool
type unlabeledEventsTreatment = [@as("LEGIT") #LEGIT | @as("FRAUD") #FRAUD | @as("IGNORE") #IGNORE]
type trainingDataSourceEnum = [
  | @as("INGESTED_EVENTS") #INGESTED_EVENTS
  | @as("EXTERNAL_EVENTS") #EXTERNAL_EVENTS
]
type tagsMaxResults = int
type rulesMaxResults = int
type ruleExecutionMode = [@as("FIRST_MATCHED") #FIRST_MATCHED | @as("ALL_MATCHED") #ALL_MATCHED]
type outcomesMaxResults = int
type modelVersionStatus = [
  | @as("TRAINING_CANCELLED") #TRAINING_CANCELLED
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
]
type modelTypeEnum = [
  | @as("TRANSACTION_FRAUD_INSIGHTS") #TRANSACTION_FRAUD_INSIGHTS
  | @as("ONLINE_FRAUD_INSIGHTS") #ONLINE_FRAUD_INSIGHTS
]
type modelSource = [@as("SAGEMAKER") #SAGEMAKER]
type modelOutputDataFormat = [
  | @as("APPLICATION_JSONLINES") #APPLICATION_JSONLINES
  | @as("TEXT_CSV") #TEXT_CSV
]
type modelInputDataFormat = [@as("APPLICATION_JSON") #APPLICATION_JSON | @as("TEXT_CSV") #TEXT_CSV]
type modelEndpointStatus = [@as("DISSOCIATED") #DISSOCIATED | @as("ASSOCIATED") #ASSOCIATED]
type long = float
type language = [@as("DETECTORPL") #DETECTORPL]
type kmsEncryptionKeyArn = string
type integer2 = int
type integer_ = int
type externalModelsMaxResults = int
type eventPredictionsMaxResults = int
type eventIngestion = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type detectorsMaxResults = int
type detectorVersionStatus = [
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
  | @as("DRAFT") #DRAFT
]
type detectorVersionMaxResults = int
type deleteAuditHistory = bool
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
type boolean_ = bool
type asyncJobStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETE") #COMPLETE
  | @as("CANCELED") #CANCELED
  | @as("CANCEL_IN_PROGRESS") #CANCEL_IN_PROGRESS
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("IN_PROGRESS_INITIALIZING") #IN_PROGRESS_INITIALIZING
]
type tagKeyList = array<tagKey>
@ocaml.doc("<p>
The details of the event variable's impact on the prediction score.
</p>")
type variableImpactExplanation = {
  @ocaml.doc("<p>
    The raw, uninterpreted value represented as log-odds of the fraud. These values are usually between -10 to +10, but range from - infinity to + infinity.</p>
         <ul>
            <li>
               <p>A positive value indicates that the variable drove the risk score up.</p>
            </li>
            <li>
               <p>A negative value indicates that the variable drove the risk score down.</p>
            </li>
         </ul>")
  logOddsImpact: option<float_>,
  @ocaml.doc("<p>
    The event variable's relative impact in terms of magnitude on the prediction scores. 
    The relative impact values consist of a numerical rating (0-5, 5 being the highest) and direction (increased/decreased) impact of the fraud risk.
</p>")
  relativeImpact: option<string_>,
  @ocaml.doc("<p>
The event variable name.
</p>")
  eventVariableName: option<string_>,
}
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
@ocaml.doc("<p>
The time period for when the predictions were generated.
</p>")
type predictionTimeRange = {
  @ocaml.doc("<p>
The end time of the time period for when the predictions were generated.
</p>")
  endTime: time,
  @ocaml.doc("<p>
The start time of the time period for when the predictions were generated.
</p>")
  startTime: time,
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
  @ocaml.doc("<p>The model version number.</p>") modelVersionNumber: floatVersionString,
  @ocaml.doc("<p>The model type.</p>") modelType: modelTypeEnum,
  @ocaml.doc("<p>The model ID.</p>") modelId: modelIdentifier,
}
type modelPredictionMap = Js.Dict.t<float_>
@ocaml.doc("<p>The Amazon SageMaker model input configuration.</p>")
type modelInputConfiguration = {
  @ocaml.doc("<p> Template for constructing the CSV input-data sent to SageMaker. At event-evaluation,
            the placeholders for variable-names in the template will be replaced with the variable
            values before being sent to SageMaker. </p>")
  csvInputTemplate: option<modelInputTemplate>,
  @ocaml.doc("<p> Template for constructing the JSON input-data sent to SageMaker. At event-evaluation,
            the placeholders for variable names in the template will be replaced with the variable
            values before being sent to SageMaker. </p>")
  jsonInputTemplate: option<modelInputTemplate>,
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
type mapOfStrings = Js.Dict.t<string_>
@ocaml.doc("<p>The log odds metric details.</p>")
type logOddsMetric = {
  @ocaml.doc(
    "<p>The relative importance of the variable. For more information, see <a href=\"https://docs.aws.amazon.com/frauddetector/latest/ug/model-variable-importance.html\">Model variable importance</a>.</p>"
  )
  variableImportance: float_,
  @ocaml.doc("<p>The type of variable.</p>") variableType: string_,
  @ocaml.doc("<p>The name of the variable.</p>") variableName: string_,
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
@ocaml.doc("<p>The start and stop time of the ingested events.</p>")
type ingestedEventsTimeWindow = {
  @ocaml.doc("<p>Timestamp of the final ingested event.</p>") endTime: time,
  @ocaml.doc("<p>Timestamp of the first ingensted event.</p>") startTime: time,
}
@ocaml.doc("<p>Data about the stored events.</p>")
type ingestedEventStatistics = {
  @ocaml.doc("<p>Timestamp of when the stored event was last updated.    
      </p>")
  lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The newest stored event.</p>") mostRecentEvent: option<time>,
  @ocaml.doc("<p>The oldest stored event.</p>") leastRecentEvent: option<time>,
  @ocaml.doc("<p>The total size of the stored events.</p>") eventDataSizeInBytes: option<long>,
  @ocaml.doc("<p>The number of stored events.</p>") numberOfEvents: option<long>,
}
@ocaml.doc("<p>
A conditional statement for filtering a list of past predictions.  
</p>")
type filterCondition = {
  @ocaml.doc("<p>
A statement containing a resource property and a value to specify filter condition. 
</p>")
  value: option<filterString>,
}
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
@ocaml.doc("<p>The Amazon SageMaker model.</p>")
type externalModelSummary = {
  @ocaml.doc("<p>The source of the model.</p>") modelSource: option<modelSource>,
  @ocaml.doc("<p>The endpoint of the Amazon SageMaker model.</p>") modelEndpoint: option<string_>,
}
type externalModelPredictionMap = Js.Dict.t<string_>
@ocaml.doc("<p>Details for the external events data used for model version training.</p>")
type externalEventsDetail = {
  @ocaml.doc(
    "<p>The ARN of the role that provides Amazon Fraud Detector access to the data location.</p>"
  )
  dataAccessRoleArn: iamRoleArn,
  @ocaml.doc("<p>The Amazon S3 bucket location for the data.</p>") dataLocation: s3BucketLocation,
}
@ocaml.doc("<p>
Information about the summary of an event variable that was evaluated for generating prediction.
</p>")
type eventVariableSummary = {
  @ocaml.doc("<p>
The event variable source. 
</p>")
  source: option<sensitiveString>,
  @ocaml.doc("<p>
The value of the event variable.
</p>")
  value: option<sensitiveString>,
  @ocaml.doc("<p>
The event variable name.
</p>")
  name: option<sensitiveString>,
}
type eventVariableMap = Js.Dict.t<variableValue>
@ocaml.doc("<p>
Information about the summary of an event prediction.
</p>")
type eventPredictionSummary = {
  @ocaml.doc("<p>
The detector version ID.
</p>")
  detectorVersionId: option<wholeNumberVersionString>,
  @ocaml.doc("<p>
The detector ID.
</p>")
  detectorId: option<identifier>,
  @ocaml.doc("<p>
The timestamp when the prediction was generated.
</p>")
  predictionTimestamp: option<time>,
  @ocaml.doc("<p>
The timestamp of the event.
</p>")
  eventTimestamp: option<time>,
  @ocaml.doc("<p>
The event type.
</p>")
  eventTypeName: option<identifier>,
  @ocaml.doc("<p>
The event ID.
</p>")
  eventId: option<identifier>,
}
type eventAttributeMap = Js.Dict.t<attributeValue>
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
  entityId: entityRestrictedString,
  @ocaml.doc("<p>The entity type.</p>") entityType: string_,
}
@ocaml.doc("<p>The summary of the detector version.</p>")
type detectorVersionSummary = {
  @ocaml.doc("<p>Timestamp of when the detector version was last updated.</p>")
  lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The detector version description. </p>") description: option<description>,
  @ocaml.doc("<p>The detector version status. </p>") status: option<detectorVersionStatus>,
  @ocaml.doc("<p>The detector version ID. </p>")
  detectorVersionId: option<wholeNumberVersionString>,
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
  @ocaml.doc("<p>Timestamp of when the batch prediction job completed.</p>")
  completionTime: option<time>,
  @ocaml.doc("<p>Timestamp of when the batch prediction job started.</p>") startTime: option<time>,
  @ocaml.doc("<p>The reason a batch prediction job failed.</p>") failureReason: option<string_>,
  @ocaml.doc("<p>The batch prediction status.</p>") status: option<asyncJobStatus>,
  @ocaml.doc("<p>The job ID for the batch prediction.</p>") jobId: option<identifier>,
}
@ocaml.doc("<p>The batch import job details.</p>")
type batchImport = {
  @ocaml.doc("<p>The total number of records in the batch import job.</p>")
  totalRecordsCount: option<integer_>,
  @ocaml.doc("<p>The number of records that failed to import. </p>")
  failedRecordsCount: option<integer_>,
  @ocaml.doc("<p>The number of records processed by batch import job.</p>")
  processedRecordsCount: option<integer_>,
  @ocaml.doc("<p>The ARN of the batch import job.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>The ARN of the IAM role to use for this job request.</p>")
  iamRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The name of the event type.</p>") eventTypeName: option<identifier>,
  @ocaml.doc("<p>The Amazon S3 location of your output file.</p>")
  outputPath: option<s3BucketLocation>,
  @ocaml.doc("<p>The Amazon S3 location of your data file for batch import.</p>")
  inputPath: option<s3BucketLocation>,
  @ocaml.doc("<p>Timestamp of when batch import job completed.</p>") completionTime: option<time>,
  @ocaml.doc("<p>Timestamp of when the batch import job started.</p>") startTime: option<time>,
  @ocaml.doc("<p>The reason batch import job failed.</p>") failureReason: option<string_>,
  @ocaml.doc("<p>The status of the batch import job.</p>") status: option<asyncJobStatus>,
  @ocaml.doc("<p>The ID of the batch import job. </p>") jobId: option<identifier>,
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
type listOfVariableImpactExplanations = array<variableImpactExplanation>
type listOfEntities = array<entity>
type labelMapper = Js.Dict.t<nonEmptyListOfStrings>
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
type listOfLogOddsMetrics = array<logOddsMetric>
type listOfEventVariableSummaries = array<eventVariableSummary>
type listOfEventPredictionSummaries = array<eventPredictionSummary>
@ocaml.doc("<p>The details of the ingested event.</p>")
type ingestedEventsDetail = {
  @ocaml.doc("<p>The start and stop time of the ingested events.</p>")
  ingestedEventsTimeWindow: ingestedEventsTimeWindow,
}
@ocaml.doc("<p>The fraud prediction scores from Amazon SageMaker model.</p>")
type externalModelOutputs = {
  @ocaml.doc("<p>The fraud prediction scores from Amazon SageMaker model.</p>")
  outputs: option<externalModelPredictionMap>,
  @ocaml.doc("<p>The Amazon SageMaker model.</p>") externalModel: option<externalModelSummary>,
}
type externalModelEndpointDataBlobMap = Js.Dict.t<modelEndpointDataBlob>
@ocaml.doc("<p>The event type details.</p>")
type eventType = {
  @ocaml.doc("<p>The entity type ARN.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>Timestamp of when the event type was created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>Timestamp of when the event type was last updated.</p>")
  lastUpdatedTime: option<time>,
  @ocaml.doc("<p>Data about the stored events.</p>")
  ingestedEventStatistics: option<ingestedEventStatistics>,
  @ocaml.doc(
    "<p>If <code>Enabled</code>, Amazon Fraud Detector stores event data when you generate a prediction and uses that data to update calculated variables in near real-time. Amazon Fraud Detector uses this data, known as <code>INGESTED_EVENTS</code>, to train your model and  improve fraud predictions.</p>"
  )
  eventIngestion: option<eventIngestion>,
  @ocaml.doc("<p>The event type entity types.</p>") entityTypes: option<nonEmptyListOfStrings>,
  @ocaml.doc("<p>The event type labels.</p>") labels: option<listOfStrings>,
  @ocaml.doc("<p>The event type event variables.</p>") eventVariables: option<listOfStrings>,
  @ocaml.doc("<p>The event type description.</p>") description: option<description>,
  @ocaml.doc("<p>The event type name.</p>") name: option<string_>,
}
@ocaml.doc("<p>
The details of the rule used for evaluating variable values.
</p>")
type evaluatedRule = {
  @ocaml.doc("<p>
Indicates whether the rule matched.
</p>")
  matched: option<boolean_>,
  @ocaml.doc("<p>
Indicates whether the rule was evaluated.
</p>")
  evaluated: option<boolean_>,
  @ocaml.doc("<p>
The rule outcome.
</p>")
  outcomes: option<listOfStrings>,
  @ocaml.doc("<p>
The rule expression value.
</p>")
  expressionWithValues: option<sensitiveString>,
  @ocaml.doc("<p>
The rule expression.
</p>")
  expression: option<sensitiveString>,
  @ocaml.doc("<p>
The rule version.
</p>")
  ruleVersion: option<wholeNumberVersionString>,
  @ocaml.doc("<p>
The rule ID.
</p>")
  ruleId: option<identifier>,
}
@ocaml.doc("<p>
The details of the external (Amazon Sagemaker) model evaluated for generating predictions.
</p>")
type evaluatedExternalModel = {
  @ocaml.doc("<p>
Output variables.
</p>")
  outputVariables: option<mapOfStrings>,
  @ocaml.doc("<p>
Input variables use for generating predictions.
</p>")
  inputVariables: option<mapOfStrings>,
  @ocaml.doc("<p>
Indicates whether event variables were used to generate predictions.
</p>")
  useEventVariables: option<boolean_>,
  @ocaml.doc("<p>
The endpoint of the external (Amazon Sagemaker) model.
</p>")
  modelEndpoint: option<string_>,
}
type detectorVersionSummaryList = array<detectorVersionSummary>
type detectorList = array<detector>
type batchPredictionList = array<batchPrediction>
type batchImportList = array<batchImport>
type batchGetVariableErrorList = array<batchGetVariableError>
type batchCreateVariableErrorList = array<batchCreateVariableError>
type eventTypeList = array<eventType>
@ocaml.doc("<p>The variable importance metrics details.</p>")
type variableImportanceMetrics = {
  @ocaml.doc("<p>List of variable metrics.</p>") logOddsMetrics: option<listOfLogOddsMetrics>,
}
@ocaml.doc("<p>The training metric details.</p>")
type trainingMetrics = {
  @ocaml.doc("<p>The data points details.</p>") metricDataPoints: option<metricDataPointsList>,
  @ocaml.doc(
    "<p>The area under the curve. This summarizes true positive rate (TPR) and false positive rate (FPR) across all possible model score thresholds. A model with no predictive power has an AUC of 0.5, whereas a perfect model has a score of 1.0.</p>"
  )
  auc: option<float_>,
}
type ruleDetailList = array<ruleDetail>
@ocaml.doc("<p>
The prediction explanations that provide insight into how each event variable impacted the model version's fraud prediction score. 
</p>")
type predictionExplanations = {
  @ocaml.doc("<p>
The details of the event variable's impact on the prediction score.
</p>")
  variableImpactExplanations: option<listOfVariableImpactExplanations>,
}
type listOfRuleResults = array<ruleResult>
type listOfModelScores = array<modelScores>
type listOfExternalModelOutputs = array<externalModelOutputs>
type listOfEvaluatedExternalModels = array<evaluatedExternalModel>
@ocaml.doc("<p>The label schema.</p>")
type labelSchema = {
  @ocaml.doc("<p>The action to take for unlabeled events.</p>")
  unlabeledEventsTreatment: option<unlabeledEventsTreatment>,
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
@ocaml.doc("<p>The event details.</p>")
type event = {
  @ocaml.doc("<p>The event entities.</p>") entities: option<listOfEntities>,
  @ocaml.doc(
    "<p>The timestamp associated with the label to update. The timestamp must be specified using ISO 8601 standard in UTC.</p>"
  )
  labelTimestamp: option<string_>,
  @ocaml.doc("<p>The label associated with the event.</p>") currentLabel: option<string_>,
  @ocaml.doc(
    "<p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and their corresponding values for the event you are sending for evaluation.</p>"
  )
  eventVariables: option<eventAttributeMap>,
  @ocaml.doc(
    "<p>The timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>"
  )
  eventTimestamp: option<string_>,
  @ocaml.doc("<p>The event type.</p>") eventTypeName: option<string_>,
  @ocaml.doc("<p>The event ID.</p>") eventId: option<string_>,
}
type evaluatedRuleList = array<evaluatedRule>
@ocaml.doc("<p>The model training validation messages.</p>")
type dataValidationMetrics = {
  @ocaml.doc("<p>The field-specific model training validation messages.</p>")
  fieldLevelMessages: option<fieldValidationMessageList>,
  @ocaml.doc("<p>The file-specific model training validation messages.</p>")
  fileLevelMessages: option<fileValidationMessageList>,
}
@ocaml.doc("<p>The training result details.</p>")
type trainingResult = {
  @ocaml.doc("<p>The variable importance metrics.</p>")
  variableImportanceMetrics: option<variableImportanceMetrics>,
  @ocaml.doc("<p>The training metric details.</p>") trainingMetrics: option<trainingMetrics>,
  @ocaml.doc("<p>The validation metrics.</p>") dataValidationMetrics: option<dataValidationMetrics>,
}
@ocaml.doc("<p>The training data schema.</p>")
type trainingDataSchema = {
  labelSchema: labelSchema,
  @ocaml.doc("<p>The training data schema variables.</p>") modelVariables: listOfStrings,
}
@ocaml.doc("<p>
The model version evalutions.
</p>")
type modelVersionEvaluation = {
  @ocaml.doc("<p>
The prediction explanations generated for the model version.
</p>")
  predictionExplanations: option<predictionExplanations>,
  @ocaml.doc("<p>
The evaluation score generated for the model version.
</p>")
  evaluationScore: option<string_>,
  @ocaml.doc("<p>
The output variable name.
</p>")
  outputVariableName: option<string_>,
}
type externalModelList = array<externalModel>
@ocaml.doc("<p>The details of the model version.</p>")
type modelVersionDetail = {
  @ocaml.doc("<p>The model version ARN.</p>") arn: option<fraudDetectorArn>,
  @ocaml.doc("<p>The timestamp when the model was created.</p>") createdTime: option<time>,
  @ocaml.doc("<p>The timestamp when the model was last updated.</p>") lastUpdatedTime: option<time>,
  @ocaml.doc("<p>The training results.</p>") trainingResult: option<trainingResult>,
  @ocaml.doc(
    "<p>The ingested events data details. This will be populated if the <code>trainingDataSource</code> for the model version is specified as  <code>INGESTED_EVENTS</code>.</p>"
  )
  ingestedEventsDetail: option<ingestedEventsDetail>,
  @ocaml.doc(
    "<p>The external events data details. This will be populated if the <code>trainingDataSource</code> for the model version is specified as  <code>EXTERNAL_EVENTS</code>.</p>"
  )
  externalEventsDetail: option<externalEventsDetail>,
  @ocaml.doc("<p>The training data schema.</p>") trainingDataSchema: option<trainingDataSchema>,
  @ocaml.doc("<p>The model version training data source.</p>")
  trainingDataSource: option<trainingDataSourceEnum>,
  @ocaml.doc("<p>The status of the model version.</p>") status: option<string_>,
  @ocaml.doc("<p>The model version number.</p>") modelVersionNumber: option<floatVersionString>,
  @ocaml.doc("<p>The model type.</p>") modelType: option<modelTypeEnum>,
  @ocaml.doc("<p>The model ID.</p>") modelId: option<modelIdentifier>,
}
type listOfModelVersionEvaluations = array<modelVersionEvaluation>
type modelVersionDetailList = array<modelVersionDetail>
@ocaml.doc("<p>
The model version evaluated for generating prediction.
</p>")
type evaluatedModelVersion = {
  @ocaml.doc("<p>
Evaluations generated for the model version.
</p>")
  evaluations: option<listOfModelVersionEvaluations>,
  @ocaml.doc("<p>The model type. </p>
         <p>Valid values: <code>ONLINE_FRAUD_INSIGHTS</code> | <code>TRANSACTION_FRAUD_INSIGHTS</code>
         </p>")
  modelType: option<string_>,
  @ocaml.doc("<p>
The model version.
</p>")
  modelVersion: option<string_>,
  @ocaml.doc("<p>
The model ID.
</p>")
  modelId: option<string_>,
}
type listOfEvaluatedModelVersions = array<evaluatedModelVersion>
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
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "UpdateVariableCommand"
  let make = (~name, ~variableType=?, ~description=?, ~defaultValue=?, ()) =>
    new({variableType, description, defaultValue, name})
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
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateModelVersionStatusCommand"
  let make = (~status, ~modelVersionNumber, ~modelType, ~modelId, ()) =>
    new({status, modelVersionNumber, modelType, modelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateModel = {
  type t
  type request = {
    @ocaml.doc("<p>The new model description.</p>") description: option<description>,
    @ocaml.doc("<p>The model type.</p>") modelType: modelTypeEnum,
    @ocaml.doc("<p>The model ID.</p>") modelId: modelIdentifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "UpdateModelCommand"
  let make = (~modelType, ~modelId, ~description=?, ()) => new({description, modelType, modelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateEventLabel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The timestamp associated with the label. The timestamp must be specified using ISO 8601 standard in UTC. </p>"
    )
    labelTimestamp: utcTimestampISO8601,
    @ocaml.doc("<p>The new label to assign to the event.</p>") assignedLabel: identifier,
    @ocaml.doc("<p>The event type of the event associated with the label to update.</p>")
    eventTypeName: identifier,
    @ocaml.doc("<p>The ID of the event associated with the label to update.</p>")
    eventId: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateEventLabelCommand"
  let make = (~labelTimestamp, ~assignedLabel, ~eventTypeName, ~eventId, ()) =>
    new({labelTimestamp, assignedLabel, eventTypeName, eventId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateDetectorVersionStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The new status.</p>") status: detectorVersionStatus,
    @ocaml.doc("<p>The detector version ID. </p>") detectorVersionId: wholeNumberVersionString,
    @ocaml.doc("<p>The detector ID. </p>") detectorId: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateDetectorVersionStatusCommand"
  let make = (~status, ~detectorVersionId, ~detectorId, ()) =>
    new({status, detectorVersionId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateDetectorVersionMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The description.</p>") description: description,
    @ocaml.doc("<p>The detector version ID. </p>") detectorVersionId: wholeNumberVersionString,
    @ocaml.doc("<p>The detector ID.</p>") detectorId: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateDetectorVersionMetadataCommand"
  let make = (~description, ~detectorVersionId, ~detectorId, ()) =>
    new({description, detectorVersionId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutKMSEncryptionKey = {
  type t
  type request = {
    @ocaml.doc("<p>The KMS encryption key ARN.</p>") kmsEncryptionKeyArn: kmsEncryptionKeyArn,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "PutKMSEncryptionKeyCommand"
  let make = (~kmsEncryptionKeyArn, ()) => new({kmsEncryptionKeyArn: kmsEncryptionKeyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetDeleteEventsByEventTypeStatus = {
  type t
  type request = {
    @ocaml.doc("<p>Name of event type for which to get the deletion status.</p>")
    eventTypeName: identifier,
  }
  type response = {
    @ocaml.doc("<p>The deletion status.</p>") eventsDeletionStatus: option<asyncJobStatus>,
    @ocaml.doc("<p>The event type name.</p>") eventTypeName: option<identifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetDeleteEventsByEventTypeStatusCommand"
  let make = (~eventTypeName, ()) => new({eventTypeName: eventTypeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteVariable = {
  type t
  type request = {@ocaml.doc("<p>The name of the variable to delete.</p>") name: string_}
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteVariableCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteOutcome = {
  type t
  type request = {@ocaml.doc("<p>The name of the outcome to delete.</p>") name: identifier}
  type response = {.}
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
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteModelVersionCommand"
  let make = (~modelVersionNumber, ~modelType, ~modelId, ()) =>
    new({modelVersionNumber, modelType, modelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteModel = {
  type t
  type request = {
    @ocaml.doc("<p>The model type of the model to delete.</p>") modelType: modelTypeEnum,
    @ocaml.doc("<p>The model ID of the model to delete.</p>") modelId: modelIdentifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteModelCommand"
  let make = (~modelType, ~modelId, ()) => new({modelType, modelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteLabel = {
  type t
  type request = {@ocaml.doc("<p>The name of the label to delete.</p>") name: identifier}
  type response = {.}
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
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteExternalModelCommand"
  let make = (~modelEndpoint, ()) => new({modelEndpoint: modelEndpoint})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteEventsByEventType = {
  type t
  type request = {@ocaml.doc("<p>The name of the event type.</p>") eventTypeName: identifier}
  type response = {
    @ocaml.doc("<p>The status of the delete request.</p>") eventsDeletionStatus: option<string_>,
    @ocaml.doc("<p>Name of event type for which to delete the events.</p>")
    eventTypeName: option<identifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteEventsByEventTypeCommand"
  let make = (~eventTypeName, ()) => new({eventTypeName: eventTypeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteEventType = {
  type t
  type request = {@ocaml.doc("<p>The name of the event type to delete.</p>") name: identifier}
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteEventTypeCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteEvent = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether or not to delete any predictions associated with the event.</p>"
    )
    deleteAuditHistory: option<deleteAuditHistory>,
    @ocaml.doc("<p>The name of the event type.</p>") eventTypeName: identifier,
    @ocaml.doc("<p>The ID of the event to delete.</p>") eventId: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteEventCommand"
  let make = (~eventTypeName, ~eventId, ~deleteAuditHistory=?, ()) =>
    new({deleteAuditHistory, eventTypeName, eventId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteEntityType = {
  type t
  type request = {@ocaml.doc("<p>The name of the entity type to delete.</p>") name: identifier}
  type response = {.}
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
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteDetectorVersionCommand"
  let make = (~detectorVersionId, ~detectorId, ()) => new({detectorVersionId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteDetector = {
  type t
  type request = {@ocaml.doc("<p>The ID of the detector to delete.</p>") detectorId: identifier}
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "DeleteDetectorCommand"
  let make = (~detectorId, ()) => new({detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteBatchPredictionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the batch prediction job to delete.</p>") jobId: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteBatchPredictionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteBatchImportJob = {
  type t
  type request = {@ocaml.doc("<p>The ID of the batch import job to delete. </p>") jobId: identifier}
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "DeleteBatchImportJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CancelBatchPredictionJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the batch prediction job to cancel.</p>") jobId: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "CancelBatchPredictionJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CancelBatchImportJob = {
  type t
  type request = {
    @ocaml.doc("<p> The ID of an in-progress batch import job to cancel. </p>
         <p>Amazon Fraud Detector will throw an error if the batch import job is in <code>FAILED</code>, <code>CANCELED</code>, or  <code>COMPLETED</code> state.</p>")
    jobId: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "CancelBatchImportJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateRuleMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The rule description.</p>") description: description,
    @ocaml.doc("<p>The rule to update.</p>") rule: rule,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "UpdateRuleMetadataCommand"
  let make = (~description, ~rule, ()) => new({description, rule})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource ARN.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource from which to remove the tag.</p>")
    resourceARN: fraudDetectorArn,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetKMSEncryptionKey = {
  type t
  type request = {.}
  type response = {@ocaml.doc("<p>The KMS encryption key.</p>") kmsKey: option<kmskey>}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetKMSEncryptionKeyCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRule = {
  type t
  type request = {rule: rule}
  type response = {.}
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
    new({tags, outcomes, language, expression, description, rule})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateModelVersion = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc(
      "<p>The details of the ingested event used for training the model version. Required if your <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>"
    )
    ingestedEventsDetail: option<ingestedEventsDetail>,
    @ocaml.doc(
      "<p>The details of the external events data used for training the model version. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>"
    )
    externalEventsDetail: option<externalEventsDetail>,
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
  let make = (
    ~majorVersionNumber,
    ~modelType,
    ~modelId,
    ~tags=?,
    ~ingestedEventsDetail=?,
    ~externalEventsDetail=?,
    (),
  ) =>
    new({tags, ingestedEventsDetail, externalEventsDetail, majorVersionNumber, modelType, modelId})
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
  type response = {.}
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
      ruleExecutionMode,
      modelVersions,
      description,
      rules,
      externalModelEndpoints,
      detectorVersionId,
      detectorId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the resource.</p>") tags: tagList_,
    @ocaml.doc("<p>The resource ARN.</p>") resourceARN: fraudDetectorArn,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SendEvent = {
  type t
  type request = {
    @ocaml.doc("<p>An array of entities.</p>") entities: listOfEntities,
    @ocaml.doc(
      "<p>The timestamp associated with the label. Required if specifying <code>assignedLabel</code>.</p>"
    )
    labelTimestamp: option<utcTimestampISO8601>,
    @ocaml.doc(
      "<p>The label to associate with the event. Required if specifying <code>labelTimestamp</code>.</p>"
    )
    assignedLabel: option<identifier>,
    @ocaml.doc(
      "<p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and their corresponding values for the event you are sending for evaluation.</p>"
    )
    eventVariables: eventVariableMap,
    @ocaml.doc(
      "<p>The timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>"
    )
    eventTimestamp: utcTimestampISO8601,
    @ocaml.doc("<p>The event type name of the event.</p>") eventTypeName: identifier,
    @ocaml.doc("<p>The event ID to upload.</p>") eventId: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "SendEventCommand"
  let make = (
    ~entities,
    ~eventVariables,
    ~eventTimestamp,
    ~eventTypeName,
    ~eventId,
    ~labelTimestamp=?,
    ~assignedLabel=?,
    (),
  ) =>
    new({
      entities,
      labelTimestamp,
      assignedLabel,
      eventVariables,
      eventTimestamp,
      eventTypeName,
      eventId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutOutcome = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The outcome description.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the outcome.</p>") name: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutOutcomeCommand"
  let make = (~name, ~tags=?, ~description=?, ()) => new({tags, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutLabel = {
  type t
  type request = {
    @ocaml.doc("<p></p>") tags: option<tagList_>,
    @ocaml.doc("<p>The label description.</p>") description: option<description>,
    @ocaml.doc("<p>The label name.</p>") name: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutLabelCommand"
  let make = (~name, ~tags=?, ~description=?, ()) => new({tags, description, name})
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
  type response = {.}
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
      tags,
      modelEndpointStatus,
      outputConfiguration,
      inputConfiguration,
      invokeModelEndpointRoleArn,
      modelSource,
      modelEndpoint,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutEventType = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>Specifies if ingenstion is enabled or disabled.</p>")
    eventIngestion: option<eventIngestion>,
    @ocaml.doc(
      "<p>The entity type for the event type. Example entity types: customer, merchant, account.</p>"
    )
    entityTypes: nonEmptyListOfStrings,
    @ocaml.doc("<p>The event type labels.</p>") labels: option<listOfStrings>,
    @ocaml.doc("<p>The event type variables.</p>") eventVariables: nonEmptyListOfStrings,
    @ocaml.doc("<p>The description of the event type.</p>") description: option<description>,
    @ocaml.doc("<p>The name.</p>") name: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutEventTypeCommand"
  let make = (
    ~entityTypes,
    ~eventVariables,
    ~name,
    ~tags=?,
    ~eventIngestion=?,
    ~labels=?,
    ~description=?,
    (),
  ) => new({tags, eventIngestion, entityTypes, labels, eventVariables, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutEntityType = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The description.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the entity type.</p>") name: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutEntityTypeCommand"
  let make = (~name, ~tags=?, ~description=?, ()) => new({tags, description, name})
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
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "PutDetectorCommand"
  let make = (~eventTypeName, ~detectorId, ~tags=?, ~description=?, ()) =>
    new({tags, eventTypeName, description, detectorId})
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
    new({maxResults, nextToken, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEventPredictions = {
  type t
  type request = {
    @ocaml.doc("<p>
The maximum number of predictions to return for the request.
</p>")
    maxResults: option<eventPredictionsMaxResults>,
    @ocaml.doc("<p>
Identifies the next page of results to return. Use the token to make the call again to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>
The time period for when the predictions were generated.
</p>")
    predictionTimeRange: option<predictionTimeRange>,
    @ocaml.doc("<p>
The detector version ID.
</p>")
    detectorVersionId: option<filterCondition>,
    @ocaml.doc("<p>
The detector ID.
</p>")
    detectorId: option<filterCondition>,
    @ocaml.doc("<p>
The event type associated with the detector.
</p>")
    eventType: option<filterCondition>,
    @ocaml.doc("<p>
The event ID.
</p>")
    eventId: option<filterCondition>,
  }
  type response = {
    @ocaml.doc("<p>
Identifies the next page of results to return. Use the token to make the call again to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>
The summary of the past predictions.
</p>")
    eventPredictionSummaries: option<listOfEventPredictionSummaries>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "ListEventPredictionsCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~predictionTimeRange=?,
    ~detectorVersionId=?,
    ~detectorId=?,
    ~eventType=?,
    ~eventId=?,
    (),
  ) =>
    new({
      maxResults,
      nextToken,
      predictionTimeRange,
      detectorVersionId,
      detectorId,
      eventType,
      eventId,
    })
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
  let make = (~maxResults=?, ~nextToken=?, ~name=?, ()) => new({maxResults, nextToken, name})
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
  let make = (~maxResults=?, ~nextToken=?, ~name=?, ()) => new({maxResults, nextToken, name})
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
    new({maxResults, nextToken, modelType, modelId})
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
  let make = (~maxResults=?, ~nextToken=?, ~name=?, ()) => new({maxResults, nextToken, name})
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
  let make = (~maxResults=?, ~nextToken=?, ~name=?, ()) => new({maxResults, nextToken, name})
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
    new({maxResults, nextToken, detectorId})
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
  let make = (~detectorVersionId, ~detectorId, ()) => new({detectorVersionId, detectorId})
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
  let make = (~nextToken=?, ~maxResults=?, ~jobId=?, ()) => new({nextToken, maxResults, jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBatchImportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The next token from the previous request.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of objects to return for request.</p>")
    maxResults: option<batchImportsMaxPageSize>,
    @ocaml.doc("<p>The ID of the batch import job to get.</p>") jobId: option<identifier>,
  }
  type response = {
    @ocaml.doc("<p>The next token for the subsequent resquest.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>An array containing the details of each batch import job.</p>")
    batchImports: option<batchImportList>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetBatchImportJobsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~jobId=?, ()) => new({nextToken, maxResults, jobId})
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
    new({maxResults, nextToken, detectorId})
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
  type response = {.}
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
  ) => new({tags, variableType, description, defaultValue, dataSource, dataType, name})
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
  ) => new({tags, outcomes, language, expression, description, detectorId, ruleId})
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
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "CreateModelCommand"
  let make = (~eventTypeName, ~modelType, ~modelId, ~tags=?, ~description=?, ()) =>
    new({tags, eventTypeName, description, modelType, modelId})
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
    detectorVersionId: option<wholeNumberVersionString>,
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
      tags,
      ruleExecutionMode,
      modelVersions,
      rules,
      externalModelEndpoints,
      description,
      detectorId,
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
  type response = {.}
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
      tags,
      iamRoleArn,
      detectorVersion,
      detectorName,
      eventTypeName,
      outputPath,
      inputPath,
      jobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateBatchImportJob = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key-value pairs associated with this request.  </p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ARN of the IAM role created for Amazon S3 bucket that holds your data file. 
         The IAM role must have read and write permissions to both input and output S3 buckets.</p>")
    iamRoleArn: iamRoleArn,
    @ocaml.doc("<p>The name of the event type.</p>") eventTypeName: identifier,
    @ocaml.doc("<p>The URI that points to the Amazon S3 location for storing your results. </p>")
    outputPath: s3BucketLocation,
    @ocaml.doc("<p>The URI that points to the Amazon S3 location of your data file.</p>")
    inputPath: s3BucketLocation,
    @ocaml.doc(
      "<p>The ID of the batch import job. The ID cannot be of a past job, unless the job exists in <code>CREATE_FAILED</code> state.</p>"
    )
    jobId: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "CreateBatchImportJobCommand"
  let make = (~iamRoleArn, ~eventTypeName, ~outputPath, ~inputPath, ~jobId, ~tags=?, ()) =>
    new({tags, iamRoleArn, eventTypeName, outputPath, inputPath, jobId})
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
  let make = (~variableEntries, ~tags=?, ()) => new({tags, variableEntries})
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
    new({maxResults, nextToken, ruleVersion, detectorId, ruleId})
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
  let make = (~maxResults=?, ~nextToken=?, ~name=?, ()) => new({maxResults, nextToken, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEventPrediction = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon SageMaker model endpoint input data blobs.</p>")
    externalModelEndpointDataBlobs: option<externalModelEndpointDataBlobMap>,
    @ocaml.doc("<p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and 
         their corresponding values for the event you are sending for evaluation.</p>
         <important>         
            <p>You must provide at least one eventVariable</p>        
         </important>
      
         <p>To ensure most accurate fraud prediction and to simplify your data preparation, Amazon Fraud Detector will replace all missing variables or values as follows:</p>
      
         <p>
            <b>For Amazon Fraud Detector trained models:</b>
         </p>
         <p>If a null value is provided explicitly for a variable or if a variable is missing, model will replace the null value or the missing variable (no variable name in the eventVariables map) 
         with calculated default mean/medians for numeric variables and with special values for categorical variables.</p>
      
         <p>
            <b>For imported SageMaker models:</b>
         </p>
         <p>If a null value is provided explicitly for a variable, the model and rules will use “null” as the value. If a variable is not provided (no variable name in the eventVariables map), model and rules 
         will use the default value that is provided for the variable. </p>")
    eventVariables: eventVariableMap,
    @ocaml.doc(
      "<p>Timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>"
    )
    eventTimestamp: utcTimestampISO8601,
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
    @ocaml.doc("<p>The model scores for Amazon SageMaker models.</p>")
    externalModelOutputs: option<listOfExternalModelOutputs>,
    @ocaml.doc("<p>The results from the rules.</p>") ruleResults: option<listOfRuleResults>,
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
      externalModelEndpointDataBlobs,
      eventVariables,
      eventTimestamp,
      entities,
      eventTypeName,
      eventId,
      detectorVersionId,
      detectorId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEvent = {
  type t
  type request = {
    @ocaml.doc("<p>The event type of the event to retrieve.</p>") eventTypeName: string_,
    @ocaml.doc("<p>The ID of the event to retrieve.</p>") eventId: string_,
  }
  type response = {@ocaml.doc("<p>The details of the event.</p>") event: option<event>}
  @module("@aws-sdk/client-frauddetector") @new external new: request => t = "GetEventCommand"
  let make = (~eventTypeName, ~eventId, ()) => new({eventTypeName, eventId})
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
    @ocaml.doc("<p>The details of the ingested events data used for training the model version. 
         This will be populated if the <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>")
    ingestedEventsDetail: option<ingestedEventsDetail>,
    @ocaml.doc("<p>The details of the external events data used for training the model version. 
         This will be populated if the <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>
         </p>")
    externalEventsDetail: option<externalEventsDetail>,
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
    new({modelVersionNumber, modelType, modelId})
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
    new({maxResults, nextToken, modelEndpoint})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateModelVersion = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key and value pairs.</p>") tags: option<tagList_>,
    @ocaml.doc(
      "<p>Details of the ingested events data used for model version training. Required if <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>"
    )
    ingestedEventsDetail: option<ingestedEventsDetail>,
    @ocaml.doc(
      "<p>Details of the external events data used for model version training. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>"
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
    modelVersionNumber: option<floatVersionString>,
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
    ~ingestedEventsDetail=?,
    ~externalEventsDetail=?,
    (),
  ) =>
    new({
      tags,
      ingestedEventsDetail,
      externalEventsDetail,
      trainingDataSchema,
      trainingDataSource,
      modelType,
      modelId,
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
    new({maxResults, nextToken, modelType, modelVersionNumber, modelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEventPredictionMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>
The timestamp that defines when the prediction was generated. 
</p>")
    predictionTimestamp: time,
    @ocaml.doc("<p>
The detector version ID.
</p>")
    detectorVersionId: wholeNumberVersionString,
    @ocaml.doc("<p>
The detector ID.
</p>")
    detectorId: identifier,
    @ocaml.doc("<p>
The event type associated with the detector specified for the prediction.
</p>")
    eventTypeName: identifier,
    @ocaml.doc("<p>
The event ID.
</p>")
    eventId: identifier,
  }
  type response = {
    @ocaml.doc("<p>The timestamp that defines when the prediction was generated.
</p>")
    predictionTimestamp: option<time>,
    @ocaml.doc("<p>
External (Amazon SageMaker) models that were evaluated for generating predictions.
</p>")
    evaluatedExternalModels: option<listOfEvaluatedExternalModels>,
    @ocaml.doc("<p>
Model versions that were evaluated for generating predictions.
</p>")
    evaluatedModelVersions: option<listOfEvaluatedModelVersions>,
    @ocaml.doc("<p>
The outcomes of the matched rule, based on the rule execution mode.
</p>")
    outcomes: option<listOfStrings>,
    @ocaml.doc("<p>
The execution mode of the rule used for evaluating variable values.
</p>")
    ruleExecutionMode: option<ruleExecutionMode>,
    @ocaml.doc("<p>
List of rules associated with the detector version that were used for evaluating variable values.
</p>")
    rules: option<evaluatedRuleList>,
    @ocaml.doc("<p>
A list of event variables that influenced the prediction scores.
</p>")
    eventVariables: option<listOfEventVariableSummaries>,
    @ocaml.doc("<p>
The status of the detector version.
</p>")
    detectorVersionStatus: option<string_>,
    @ocaml.doc("<p>
The detector version ID.
</p>")
    detectorVersionId: option<wholeNumberVersionString>,
    @ocaml.doc("<p>
The detector ID.
</p>")
    detectorId: option<identifier>,
    @ocaml.doc("<p>
The timestamp for when the prediction was generated for the associated event ID.
</p>")
    eventTimestamp: option<time>,
    @ocaml.doc("<p>
The entity type.
</p>")
    entityType: option<string_>,
    @ocaml.doc("<p>
The entity ID.
</p>")
    entityId: option<string_>,
    @ocaml.doc("<p>
The event type associated with the detector specified for this prediction.
</p>")
    eventTypeName: option<identifier>,
    @ocaml.doc("<p>
The event ID.
</p>")
    eventId: option<identifier>,
  }
  @module("@aws-sdk/client-frauddetector") @new
  external new: request => t = "GetEventPredictionMetadataCommand"
  let make = (
    ~predictionTimestamp,
    ~detectorVersionId,
    ~detectorId,
    ~eventTypeName,
    ~eventId,
    (),
  ) => new({predictionTimestamp, detectorVersionId, detectorId, eventTypeName, eventId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
