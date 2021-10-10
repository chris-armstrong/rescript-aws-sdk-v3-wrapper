type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iotanalytics") @new
external createClient: unit => awsServiceClient = "IoTAnalyticsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type resourceId = string
type volumeSizeInGB = int
type variableName = string
type unlimitedVersioning = bool
type unlimitedRetentionPeriod = bool
type timestamp_ = Js.Date.t
type timeExpression = string
type tagValue = string
type tagKey = string
type stringValue = string
type startTime = Js.Date.t
type sqlQuery = string
type sizeInBytes = float
type sessionTimeoutInMinutes = int
@ocaml.doc("<p>Used to store data store data in an S3 bucket managed by AWS IoT Analytics.</p>")
type serviceManagedDatastoreS3StorageSummary = unit
@ocaml.doc("<p>Use this to store data store data in an S3 bucket managed by AWS IoT Analytics. You cannot
      change the choice of service-managed or customer-managed S3 storage after the data store is
      created.</p>")
type serviceManagedDatastoreS3Storage = unit
@ocaml.doc("<p>Used to store channel data in an S3 bucket managed by AWS IoT Analytics.</p>")
type serviceManagedChannelS3StorageSummary = unit
@ocaml.doc("<p>Use this to store channel data in an S3 bucket managed by AWS IoT Analytics. You cannot
      change the choice of service-managed or customer-managed S3 storage after the channel is
      created.</p>")
type serviceManagedChannelS3Storage = unit
type scheduleExpression = string
type s3PathChannelMessage = string
type s3KeyPrefix = string
type roleArn = string
type retentionPeriodInDays = int
type resourceArn2 = string
type resourceArn = string
type reprocessingStatus = [
  | @as("FAILED") #FAILED
  | @as("CANCELLED") #CANCELLED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("RUNNING") #RUNNING
]
type reprocessingId = string
type reason = string
type presignedURI = string
type pipelineName = string
type pipelineArn = string
type outputFileName = string
type offsetSeconds = int
type nextToken = string
type messagePayload = NodeJs.Buffer.t
type messageId = string
type maxVersions = int
type maxResults = int
type maxMessages = int
type mathExpression = string
type loggingLevel = [@as("ERROR") #ERROR]
type loggingEnabled = bool
type logResult = string
type lateDataRuleName = string
type lambdaName = string
@ocaml.doc("<p>Contains the configuration information of the JSON format.</p>")
type jsonConfiguration = unit
type iotEventsInputName = string
type includeStatisticsFlag = bool
type image = string
type glueTableName = string
type glueDatabaseName = string
type filterExpression = string
type fileFormatType = [@as("PARQUET") #PARQUET | @as("JSON") #JSON]
type errorMessage = string
type errorCode = string
type entryName = string
type endTime = Js.Date.t
type doubleValue = float
type datastoreStatus = [
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type datastoreName = string
type datastoreArn = string
type datasetStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type datasetName = string
type datasetContentVersion = string
type datasetContentState = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("CREATING") #CREATING
]
type datasetArn = string
type datasetActionType = [@as("CONTAINER") #CONTAINER | @as("QUERY") #QUERY]
type datasetActionName = string
type computeType = [@as("ACU_2") #ACU_2 | @as("ACU_1") #ACU_1]
type columnName = string
type columnDataType = string
type channelStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type channelName = string
type channelArn = string
type bucketName = string
type bucketKeyExpression = string
type attributeName = string
type activityName = string
type activityBatchSize = int
@ocaml.doc("<p>Information about the versioning of dataset contents.</p>")
type versioningConfiguration = {
  @ocaml.doc("<p>How many versions of dataset contents are kept. The <code>unlimited</code> parameter must
      be <code>false</code>.</p>")
  maxVersions: option<maxVersions>,
  @ocaml.doc("<p>If true, unlimited versions of dataset contents are kept.</p>")
  unlimited: option<unlimitedVersioning>,
}
@ocaml.doc("<p>Information about the dataset whose content generation triggers the new dataset content
      generation.</p>")
type triggeringDataset = {
  @ocaml.doc("<p>The name of the dataset whose content generation triggers the new dataset content
      generation.</p>")
  name: datasetName,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A set of key-value pairs that are used to manage the resource.</p>")
type tag = {
  @ocaml.doc("<p>The tag's value.</p>") value: tagValue,
  @ocaml.doc("<p>The tag's key.</p>") key: tagKey,
}
@ocaml.doc("<p>The schedule for when to trigger an update.</p>")
type schedule = {
  @ocaml.doc("<p>The expression that defines when to trigger an update. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html\">Schedule
        Expressions for Rules</a> in the <i>Amazon CloudWatch Events User
        Guide</i>.</p>")
  expression: option<scheduleExpression>,
}
type s3PathChannelMessages = array<s3PathChannelMessage>
@ocaml.doc("<p>How long, in days, message data is kept.</p>")
type retentionPeriod = {
  @ocaml.doc("<p>The number of days that message data is kept. The <code>unlimited</code> parameter must be
      false.</p>")
  numberOfDays: option<retentionPeriodInDays>,
  @ocaml.doc("<p>If true, message data is kept indefinitely.</p>")
  unlimited: option<unlimitedRetentionPeriod>,
}
@ocaml.doc(
  "<p>The configuration of the resource used to execute the <code>containerAction</code>.</p>"
)
type resourceConfiguration = {
  @ocaml.doc("<p>The size, in GB, of the persistent storage available to the resource instance used to
      execute the <code>containerAction</code> (min: 1, max: 50).</p>")
  volumeSizeInGB: volumeSizeInGB,
  @ocaml.doc("<p>The type of the compute resource used to execute the <code>containerAction</code>.
      Possible values are: <code>ACU_1</code> (vCPU=4, memory=16 GiB) or <code>ACU_2</code> (vCPU=8,
      memory=32 GiB).</p>")
  computeType: computeType,
}
@ocaml.doc("<p>Information about pipeline reprocessing.</p>")
type reprocessingSummary = {
  @ocaml.doc("<p>The time the pipeline reprocessing was created.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the pipeline reprocessing.</p>") status: option<reprocessingStatus>,
  @ocaml.doc(
    "<p>The <code>reprocessingId</code> returned by <code>StartPipelineReprocessing</code>.</p>"
  )
  id: option<reprocessingId>,
}
@ocaml.doc("<p>The value of the variable as a structure that specifies an output file URI.</p>")
type outputFileUriValue = {
  @ocaml.doc("<p>The URI of the location where dataset contents are stored, usually the URI of a file in an
      S3 bucket.</p>")
  fileName: outputFileName,
}
type messagePayloads = array<messagePayload>
@ocaml.doc("<p>Information about a message.</p>")
type message = {
  @ocaml.doc("<p>The payload of the message. This can be a JSON string or a base64-encoded string
         representing binary data, in which case you must decode it by means of a pipeline
         activity.</p>")
  payload: messagePayload,
  @ocaml.doc("<p>The ID you want to assign to the message. Each <code>messageId</code> must be unique
         within each batch sent.</p>")
  messageId: messageId,
}
@ocaml.doc(
  "<p>An activity that computes an arithmetic expression using the message's attributes.</p>"
)
type mathActivity = {
  @ocaml.doc("<p>The next activity in the pipeline.</p>") next: option<activityName>,
  @ocaml.doc("<p>An expression that uses one or more existing attributes and must return an integer
      value.</p>")
  math: mathExpression,
  @ocaml.doc("<p>The name of the attribute that contains the result of the math operation.</p>")
  attribute: attributeName,
  @ocaml.doc("<p>The name of the math activity.</p>") name: activityName,
}
@ocaml.doc("<p>Information about logging options.</p>")
type loggingOptions = {
  @ocaml.doc("<p>If true, logging is enabled for AWS IoT Analytics.</p>") enabled: loggingEnabled,
  @ocaml.doc("<p>The logging level. Currently, only ERROR is supported.</p>") level: loggingLevel,
  @ocaml.doc(
    "<p>The ARN of the role that grants permission to AWS IoT Analytics to perform logging.</p>"
  )
  roleArn: roleArn,
}
@ocaml.doc("<p>An activity that runs a Lambda function to modify the message.</p>")
type lambdaActivity = {
  @ocaml.doc("<p>The next activity in the pipeline.</p>") next: option<activityName>,
  @ocaml.doc("<p>The number of messages passed to the Lambda function for processing.</p>
         <p>The Lambda function must be able to process all of these messages within five minutes,
      which is the maximum timeout duration for Lambda functions.</p>")
  batchSize: activityBatchSize,
  @ocaml.doc("<p>The name of the Lambda function that is run on the message.</p>")
  lambdaName: lambdaName,
  @ocaml.doc("<p>The name of the lambda activity.</p>") name: activityName,
}
@ocaml.doc("<p>Configuration information for delivery of dataset contents to AWS IoT Events.</p>")
type iotEventsDestinationConfiguration = {
  @ocaml.doc("<p>The ARN of the role that grants AWS IoT Analytics permission to deliver dataset contents
      to an AWS IoT Events input.</p>")
  roleArn: roleArn,
  @ocaml.doc("<p>The name of the AWS IoT Events input to which dataset contents are delivered.</p>")
  inputName: iotEventsInputName,
}
@ocaml.doc("<p>Configuration information for coordination with AWS Glue, a fully managed extract,
      transform and load (ETL) service.</p>")
type glueConfiguration = {
  @ocaml.doc("<p>The name of the database in your AWS Glue Data Catalog in which the table is located. An
      AWS Glue Data Catalog database contains metadata tables.</p>")
  databaseName: glueDatabaseName,
  @ocaml.doc("<p>The name of the table in your AWS Glue Data Catalog that is used to perform the ETL
      operations. An AWS Glue Data Catalog table contains partitioned data and descriptions of data
      sources and targets.</p>")
  tableName: glueTableName,
}
@ocaml.doc("<p>An activity that filters a message based on its attributes.</p>")
type filterActivity = {
  @ocaml.doc("<p>The next activity in the pipeline.</p>") next: option<activityName>,
  @ocaml.doc("<p>An expression that looks like a SQL WHERE clause that must return a Boolean value.
      Messages that satisfy the condition are passed to the next activity. </p>")
  filter: filterExpression,
  @ocaml.doc("<p>The name of the filter activity.</p>") name: activityName,
}
@ocaml.doc("<p>The estimated size of the resource.</p>")
type estimatedResourceSize = {
  @ocaml.doc("<p>The time when the estimate of the size of the resource was made.</p>")
  estimatedOn: option<timestamp_>,
  @ocaml.doc("<p>The estimated size of the resource, in bytes.</p>")
  estimatedSizeInBytes: option<sizeInBytes>,
}
@ocaml.doc("<p>An activity that adds information from the AWS IoT Device Shadow service to a
      message.</p>")
type deviceShadowEnrichActivity = {
  @ocaml.doc("<p>The next activity in the pipeline.</p>") next: option<activityName>,
  @ocaml.doc("<p>The ARN of the role that allows access to the device's shadow.</p>")
  roleArn: roleArn,
  @ocaml.doc("<p>The name of the IoT device whose shadow information is added to the message.</p>")
  thingName: attributeName,
  @ocaml.doc("<p>The name of the attribute that is added to the message.</p>")
  attribute: attributeName,
  @ocaml.doc("<p>The name of the <code>deviceShadowEnrich</code> activity.</p>") name: activityName,
}
@ocaml.doc("<p>An activity that adds data from the AWS IoT device registry to your message.</p>")
type deviceRegistryEnrichActivity = {
  @ocaml.doc("<p>The next activity in the pipeline.</p>") next: option<activityName>,
  @ocaml.doc("<p>The ARN of the role that allows access to the device's registry information.</p>")
  roleArn: roleArn,
  @ocaml.doc(
    "<p>The name of the IoT device whose registry information is added to the message.</p>"
  )
  thingName: attributeName,
  @ocaml.doc("<p>The name of the attribute that is added to the message.</p>")
  attribute: attributeName,
  @ocaml.doc("<p>The name of the <code>deviceRegistryEnrich</code> activity.</p>")
  name: activityName,
}
@ocaml.doc("<p>A structure that contains the configuration information of a delta time session
      window.</p>
         <p>
            <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html\">
               <code>DeltaTime</code>
            </a> specifies a time interval. You can use
        <code>DeltaTime</code> to create dataset contents with data that has arrived in the data
      store since the last execution. For an example of <code>DeltaTime</code>, see <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/userguide/automate-create-dataset.html#automate-example6\"> Creating
        a SQL dataset with a delta window (CLI)</a> in the
        <i>AWS IoT Analytics User Guide</i>.</p>")
type deltaTimeSessionWindowConfiguration = {
  @ocaml.doc("<p>A time interval. You can use <code>timeoutInMinutes</code> so that AWS IoT Analytics can batch up late
      data notifications that have been generated since the last execution. AWS IoT Analytics sends one batch of
      notifications to Amazon CloudWatch Events at one time.</p>
         <p>For more information about how to write a timestamp expression, see <a href=\"https://prestodb.io/docs/0.172/functions/datetime.html\">Date and Time Functions and
        Operators</a>, in the <i>Presto 0.172 Documentation</i>.</p>")
  timeoutInMinutes: sessionTimeoutInMinutes,
}
@ocaml.doc("<p>Used to limit data to that which has arrived since the last execution of the
      action.</p>")
type deltaTime = {
  @ocaml.doc("<p>An expression by which the time of the message data might be determined. This can be the
      name of a timestamp field or a SQL expression that is used to derive the time the message data
      was generated.</p>")
  timeExpression: timeExpression,
  @ocaml.doc("<p>The number of seconds of estimated in-flight lag time of message data. When you create
      dataset contents using message data from a specified timeframe, some message data might still
      be in flight when processing begins, and so do not arrive in time to be processed. Use this
      field to make allowances for the in flight time of your message data, so that data not
      processed from a previous timeframe is included with the next timeframe. Otherwise, missed
      message data would be excluded from processing during the next timeframe too, because its
      timestamp places it within the previous timeframe.</p>")
  offsetSeconds: offsetSeconds,
}
@ocaml.doc("<p>The datastore activity that specifies where to store the processed data.</p>")
type datastoreActivity = {
  @ocaml.doc("<p>The name of the data store where processed messages are stored.</p>")
  datastoreName: datastoreName,
  @ocaml.doc("<p>The name of the datastore activity.</p>") name: activityName,
}
@ocaml.doc("<p>The reference to a data set entry.</p>")
type datasetEntry = {
  @ocaml.doc("<p>The presigned URI of the data set item.</p>") dataURI: option<presignedURI>,
  @ocaml.doc("<p>The name of the data set item.</p>") entryName: option<entryName>,
}
@ocaml.doc(
  "<p>The dataset whose latest contents are used as input to the notebook or application.</p>"
)
type datasetContentVersionValue = {
  @ocaml.doc("<p>The name of the dataset whose latest contents are used as input to the notebook or
      application.</p>")
  datasetName: datasetName,
}
@ocaml.doc("<p>The state of the data set contents and the reason they are in this state.</p>")
type datasetContentStatus = {
  @ocaml.doc("<p>The reason the data set contents are in this state.</p>") reason: option<reason>,
  @ocaml.doc("<p>The state of the data set contents. Can be one of READY, CREATING, SUCCEEDED, or
      FAILED.</p>")
  state: option<datasetContentState>,
}
@ocaml.doc("<p>Information about the action that automatically creates the dataset's contents.</p>")
type datasetActionSummary = {
  @ocaml.doc("<p>The type of action by which the dataset's contents are automatically created.</p>")
  actionType: option<datasetActionType>,
  @ocaml.doc("<p>The name of the action that automatically creates the dataset's contents.</p>")
  actionName: option<datasetActionName>,
}
@ocaml.doc("<p>Used to store data store data in an S3 bucket that you manage.</p>")
type customerManagedDatastoreS3StorageSummary = {
  @ocaml.doc("<p>The ARN of the role that grants AWS IoT Analytics permission to interact with your Amazon
      S3 resources.</p>")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>Optional. The prefix used to create the keys of the data store data objects. Each object
      in an S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket
      has exactly one key. The prefix must end with a forward slash (/).</p>")
  keyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The name of the S3 bucket in which data store data is stored.</p>")
  bucket: option<bucketName>,
}
@ocaml.doc("<p>Use this to store data store data in an S3 bucket that you manage. When customer-managed
      storage is selected, the <code>retentionPeriod</code> parameter is ignored. You cannot change
      the choice of service-managed or customer-managed S3 storage after the data store is
      created.</p>")
type customerManagedDatastoreS3Storage = {
  @ocaml.doc("<p>The ARN of the role that grants AWS IoT Analytics permission to interact with your Amazon
      S3 resources.</p>")
  roleArn: roleArn,
  @ocaml.doc("<p>Optional. The prefix used to create the keys of the data store data objects. Each object
      in an S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket
      has exactly one key. The prefix must end with a forward slash (/).</p>")
  keyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The name of the S3 bucket in which data store data is stored.</p>")
  bucket: bucketName,
}
@ocaml.doc("<p>Used to store channel data in an S3 bucket that you manage.</p>")
type customerManagedChannelS3StorageSummary = {
  @ocaml.doc("<p>The ARN of the role that grants AWS IoT Analytics permission to interact with your Amazon
      S3 resources.</p>")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>Optional. The prefix used to create the keys of the channel data objects. Each object in
      an S3 bucket has a key that is its unique identifier within the bucket (each object in a
      bucket has exactly one key). The prefix must end with a forward slash (/).</p>")
  keyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The name of the S3 bucket in which channel data is stored.</p>")
  bucket: option<bucketName>,
}
@ocaml.doc("<p>Use this to store channel data in an S3 bucket that you manage. If customer managed
      storage is selected, the <code>retentionPeriod</code> parameter is ignored. You cannot change
      the choice of service-managed or customer-managed S3 storage after the channel is
      created.</p>")
type customerManagedChannelS3Storage = {
  @ocaml.doc("<p>The ARN of the role that grants AWS IoT Analytics permission to interact with your Amazon
      S3 resources.</p>")
  roleArn: roleArn,
  @ocaml.doc("<p>Optional. The prefix used to create the keys of the channel data objects. Each object in
      an S3 bucket has a key that is its unique identifier in the bucket. Each object in a bucket
      has exactly one key. The prefix must end with a forward slash (/).</p>")
  keyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The name of the S3 bucket in which channel data is stored.</p>")
  bucket: bucketName,
}
@ocaml.doc("<p>Contains information about a column that stores your data.</p>")
type column = {
  @ocaml.doc("<p>The type of data. For more information about the supported data types, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html\">Common data types</a>
      in the <i>AWS Glue Developer Guide</i>.</p>")
  @as("type")
  type_: columnDataType,
  @ocaml.doc("<p>The name of the column.</p>") name: columnName,
}
@ocaml.doc("<p>The activity that determines the source of the messages to be processed.</p>")
type channelActivity = {
  @ocaml.doc("<p>The next activity in the pipeline.</p>") next: option<activityName>,
  @ocaml.doc("<p>The name of the channel from which the messages are processed.</p>")
  channelName: channelName,
  @ocaml.doc("<p>The name of the channel activity.</p>") name: activityName,
}
@ocaml.doc("<p>Contains informations about errors.</p>")
type batchPutMessageErrorEntry = {
  @ocaml.doc("<p>The message associated with the error.</p>") errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The code associated with the error.</p>") errorCode: option<errorCode>,
  @ocaml.doc("<p>The ID of the message that caused the error. See the value corresponding to the
            <code>messageId</code> key in the message object.</p>")
  messageId: option<messageId>,
}
type attributeNames = array<attributeName>
type attributeNameMapping = Js.Dict.t<attributeName>
@ocaml.doc("<p>An instance of a variable to be passed to the <code>containerAction</code> execution. Each
      variable must have a name and a value given by one of <code>stringValue</code>,
        <code>datasetContentVersionValue</code>, or <code>outputFileUriValue</code>.</p>")
type variable = {
  @ocaml.doc("<p>The value of the variable as a structure that specifies an output file URI.</p>")
  outputFileUriValue: option<outputFileUriValue>,
  @ocaml.doc(
    "<p>The value of the variable as a structure that specifies a dataset content version.</p>"
  )
  datasetContentVersionValue: option<datasetContentVersionValue>,
  @ocaml.doc("<p>The value of the variable as a double (numeric).</p>")
  doubleValue: option<doubleValue>,
  @ocaml.doc("<p>The value of the variable as a string.</p>") stringValue: option<stringValue>,
  @ocaml.doc("<p>The name of the variable.</p>") name: variableName,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Creates a new message using only the specified attributes from the original
      message.</p>")
type selectAttributesActivity = {
  @ocaml.doc("<p>The next activity in the pipeline.</p>") next: option<activityName>,
  @ocaml.doc("<p>A list of the attributes to select from the message.</p>")
  attributes: attributeNames,
  @ocaml.doc("<p>The name of the <code>selectAttributes</code> activity.</p>") name: activityName,
}
@ocaml.doc("<p>Configuration information for delivery of dataset contents to Amazon Simple Storage
      Service (Amazon S3).</p>")
type s3DestinationConfiguration = {
  @ocaml.doc("<p>The ARN of the role that grants AWS IoT Analytics permission to interact with your Amazon
      S3 and AWS Glue resources.</p>")
  roleArn: roleArn,
  @ocaml.doc("<p>Configuration information for coordination with AWS Glue, a fully managed extract,
      transform and load (ETL) service.</p>")
  glueConfiguration: option<glueConfiguration>,
  @ocaml.doc("<p>The key of the dataset contents object in an S3 bucket. Each object has a key that is a
      unique identifier. Each object has exactly one key.</p>
         <p>You can create a unique key with the following options:</p>
         <ul>
            <li>
               <p>Use <code>!{iotanalytics:scheduleTime}</code> to insert the time of a scheduled SQL
          query run.</p>
            </li>
            <li>
               <p>Use <code>!{iotanalytics:versionId}</code> to insert a unique hash that identifies a
          dataset content.</p>
            </li>
            <li>
               <p>Use <code>!{iotanalytics:creationTime}</code> to insert the creation time of a dataset
          content.</p>
            </li>
         </ul>
         <p>The following example creates a unique key for a CSV file:
        <code>dataset/mydataset/!{iotanalytics:scheduleTime}/!{iotanalytics:versionId}.csv</code>
         </p>
         <note>
            <p>If you don't use <code>!{iotanalytics:versionId}</code> to specify the key, you might
        get duplicate keys. For example, you might have two dataset contents with the same
          <code>scheduleTime</code> but different <code>versionId</code>s. This means that one
        dataset content overwrites the other. </p>
         </note>")
  key: bucketKeyExpression,
  @ocaml.doc("<p>The name of the S3 bucket to which dataset contents are delivered.</p>")
  bucket: bucketName,
}
type reprocessingSummaries = array<reprocessingSummary>
@ocaml.doc("<p>An activity that removes attributes from a message.</p>")
type removeAttributesActivity = {
  @ocaml.doc("<p>The next activity in the pipeline.</p>") next: option<activityName>,
  @ocaml.doc("<p>A list of 1-50 attributes to remove from the message.</p>")
  attributes: attributeNames,
  @ocaml.doc("<p>The name of the <code>removeAttributes</code> activity.</p>") name: activityName,
}
@ocaml.doc("<p>Information that is used to filter message data, to segregate it according to the
      timeframe in which it arrives.</p>")
type queryFilter = {
  @ocaml.doc("<p>Used to limit data to that which has arrived since the last execution of the
      action.</p>")
  deltaTime: option<deltaTime>,
}
type messages = array<message>
@ocaml.doc("<p>The information needed to configure a delta time session window.</p>")
type lateDataRuleConfiguration = {
  @ocaml.doc("<p>The information needed to configure a delta time session window.</p>")
  deltaTimeSessionWindowConfiguration: option<deltaTimeSessionWindowConfiguration>,
}
@ocaml.doc("<p>Where data store data is stored.</p>")
type datastoreStorageSummary = {
  @ocaml.doc("<p>Used to store data store data in an S3 bucket that you manage.</p>")
  customerManagedS3: option<customerManagedDatastoreS3StorageSummary>,
  @ocaml.doc("<p>Used to store data store data in an S3 bucket managed by AWS IoT Analytics.</p>")
  serviceManagedS3: option<serviceManagedDatastoreS3StorageSummary>,
}
@ocaml.doc("<p>Where data store data is stored. You can choose one of <code>serviceManagedS3</code> or
        <code>customerManagedS3</code> storage. If not specified, the default is
        <code>serviceManagedS3</code>. You cannot change this storage option after the data store is
      created.</p>")
type datastoreStorage = {
  @ocaml.doc("<p>Use this to store data store data in an S3 bucket that you manage. When customer managed
      storage is selected, the <code>retentionPeriod</code> parameter is ignored. The choice of
      service-managed or customer-managed S3 storage cannot be changed after creation of the data
      store.</p>")
  customerManagedS3: option<customerManagedDatastoreS3Storage>,
  @ocaml.doc("<p>Use this to store data store data in an S3 bucket managed by AWS IoT Analytics. You cannot
      change the choice of service-managed or customer-managed S3 storage after the data store is
      created.</p>")
  serviceManagedS3: option<serviceManagedDatastoreS3Storage>,
}
module DatastoreStorage = {
  type t =
    | CustomerManagedS3(customerManagedDatastoreS3Storage)
    | ServiceManagedS3(serviceManagedDatastoreS3Storage)
  exception DatastoreStorageUnspecified
  let classify = value =>
    switch value {
    | {customerManagedS3: Some(x)} => CustomerManagedS3(x)
    | {serviceManagedS3: Some(x)} => ServiceManagedS3(x)
    | _ => raise(DatastoreStorageUnspecified)
    }

  let make = value =>
    switch value {
    | CustomerManagedS3(x) => {customerManagedS3: Some(x), serviceManagedS3: None}
    | ServiceManagedS3(x) => {serviceManagedS3: Some(x), customerManagedS3: None}
    }
}
@ocaml.doc("<p>Statistical information about the data store.</p>")
type datastoreStatistics = {
  @ocaml.doc("<p>The estimated size of the data store.</p>") size: option<estimatedResourceSize>,
}
@ocaml.doc("<p>The <code>DatasetTrigger</code> that specifies when the data set is automatically
      updated.</p>")
type datasetTrigger = {
  @ocaml.doc("<p>The data set whose content creation triggers the creation of this data set's
      contents.</p>")
  dataset: option<triggeringDataset>,
  @ocaml.doc("<p>The Schedule when the trigger is initiated.</p>") schedule: option<schedule>,
}
type datasetEntries = array<datasetEntry>
@ocaml.doc("<p>Summary information about dataset contents.</p>")
type datasetContentSummary = {
  @ocaml.doc("<p>The time the dataset content status was updated to SUCCEEDED or FAILED.</p>")
  completionTime: option<timestamp_>,
  @ocaml.doc("<p>The time the creation of the dataset contents was scheduled to start.</p>")
  scheduleTime: option<timestamp_>,
  @ocaml.doc("<p>The actual time the creation of the dataset contents was started.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the data set contents.</p>") status: option<datasetContentStatus>,
  @ocaml.doc("<p>The version of the dataset contents.</p>") version: option<datasetContentVersion>,
}
type datasetActionSummaries = array<datasetActionSummary>
type columns = array<column>
@ocaml.doc("<p>Where channel data is stored.</p>")
type channelStorageSummary = {
  @ocaml.doc("<p>Used to store channel data in an S3 bucket that you manage.</p>")
  customerManagedS3: option<customerManagedChannelS3StorageSummary>,
  @ocaml.doc("<p>Used to store channel data in an S3 bucket managed by AWS IoT Analytics.</p>")
  serviceManagedS3: option<serviceManagedChannelS3StorageSummary>,
}
@ocaml.doc("<p>Where channel data is stored. You may choose one of <code>serviceManagedS3</code> or
        <code>customerManagedS3</code> storage. If not specified, the default is
        <code>serviceManagedS3</code>. This cannot be changed after creation of the channel.</p>")
type channelStorage = {
  @ocaml.doc("<p>Use this to store channel data in an S3 bucket that you manage. If customer managed
      storage is selected, the <code>retentionPeriod</code> parameter is ignored. You cannot change
      the choice of service-managed or customer-managed S3 storage after the channel is
      created.</p>")
  customerManagedS3: option<customerManagedChannelS3Storage>,
  @ocaml.doc("<p>Use this to store channel data in an S3 bucket managed by AWS IoT Analytics. You cannot
      change the choice of service-managed or customer-managed S3 storage after the channel is
      created.</p>")
  serviceManagedS3: option<serviceManagedChannelS3Storage>,
}
@ocaml.doc("<p>Statistics information about the channel.</p>")
type channelStatistics = {
  @ocaml.doc("<p>The estimated size of the channel.</p>") size: option<estimatedResourceSize>,
}
@ocaml.doc("<p>Specifies one or more sets of channel messages.</p>")
type channelMessages = {
  @ocaml.doc("<p>Specifies one or more keys that identify the Amazon Simple Storage Service (Amazon S3) objects that save your
      channel messages.</p>")
  s3Paths: option<s3PathChannelMessages>,
}
type batchPutMessageErrorEntries = array<batchPutMessageErrorEntry>
@ocaml.doc(
  "<p>An activity that adds other attributes based on existing attributes in the message.</p>"
)
type addAttributesActivity = {
  @ocaml.doc("<p>The next activity in the pipeline.</p>") next: option<activityName>,
  @ocaml.doc("<p>A list of 1-50 <code>AttributeNameMapping</code> objects that map an existing attribute to
      a new attribute.</p>
         <note>
            <p>The existing attributes remain in the message, so if you want to remove the originals,
        use <code>RemoveAttributeActivity</code>.</p>
         </note>")
  attributes: attributeNameMapping,
  @ocaml.doc("<p>The name of the addAttributes activity.</p>") name: activityName,
}
type variables = array<variable>
@ocaml.doc("<p>Information needed to define a schema.</p>")
type schemaDefinition = {
  @ocaml.doc("<p>Specifies one or more columns that store your data.</p>
         <p>Each schema can have up to 100 columns. Each column can have up to 100 nested types</p>")
  columns: option<columns>,
}
type queryFilters = array<queryFilter>
@ocaml.doc("<p>A summary of information about a pipeline.</p>")
type pipelineSummary = {
  @ocaml.doc("<p>When the pipeline was last updated.</p>") lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>When the pipeline was created.</p>") creationTime: option<timestamp_>,
  @ocaml.doc("<p>A summary of information about the pipeline reprocessing.</p>")
  reprocessingSummaries: option<reprocessingSummaries>,
  @ocaml.doc("<p>The name of the pipeline.</p>") pipelineName: option<pipelineName>,
}
@ocaml.doc("<p>An activity that performs a transformation on a message.</p>")
type pipelineActivity = {
  @ocaml.doc("<p>Adds information from the AWS IoT Device Shadow service to a message.</p>")
  deviceShadowEnrich: option<deviceShadowEnrichActivity>,
  @ocaml.doc("<p>Adds data from the AWS IoT device registry to your message.</p>")
  deviceRegistryEnrich: option<deviceRegistryEnrichActivity>,
  @ocaml.doc("<p>Computes an arithmetic expression using the message's attributes and adds it to the
      message.</p>")
  math: option<mathActivity>,
  @ocaml.doc("<p>Filters a message based on its attributes.</p>") filter: option<filterActivity>,
  @ocaml.doc("<p>Creates a new message using only the specified attributes from the original message.
    </p>")
  selectAttributes: option<selectAttributesActivity>,
  @ocaml.doc("<p>Removes attributes from a message.</p>")
  removeAttributes: option<removeAttributesActivity>,
  @ocaml.doc("<p>Adds other attributes based on existing attributes in the message.</p>")
  addAttributes: option<addAttributesActivity>,
  @ocaml.doc("<p>Specifies where to store the processed message data.</p>")
  datastore: option<datastoreActivity>,
  @ocaml.doc("<p>Runs a Lambda function to modify the message.</p>") lambda: option<lambdaActivity>,
  @ocaml.doc("<p>Determines the source of the messages to be processed.</p>")
  channel: option<channelActivity>,
}
@ocaml.doc("<p>A structure that contains the name and configuration information of a late data
      rule.</p>")
type lateDataRule = {
  @ocaml.doc("<p>The information needed to configure the late data rule.</p>")
  ruleConfiguration: lateDataRuleConfiguration,
  @ocaml.doc("<p>The name of the late data rule.</p>") ruleName: option<lateDataRuleName>,
}
@ocaml.doc("<p>A summary of information about a data store.</p>")
type datastoreSummary = {
  @ocaml.doc("<p>The file format of the data in the data store.</p>")
  fileFormatType: option<fileFormatType>,
  @ocaml.doc("<p>The last time when a new message arrived in the data store.</p>
         <p>AWS IoT Analytics updates this value at most once per minute for one data store. 
  Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p> 
         <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>")
  lastMessageArrivalTime: option<timestamp_>,
  @ocaml.doc("<p>The last time the data store was updated.</p>") lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>When the data store was created.</p>") creationTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the data store.</p>") status: option<datastoreStatus>,
  @ocaml.doc("<p>Where data store data is stored.</p>")
  datastoreStorage: option<datastoreStorageSummary>,
  @ocaml.doc("<p>The name of the data store.</p>") datastoreName: option<datastoreName>,
}
type datasetTriggers = array<datasetTrigger>
type datasetContentSummaries = array<datasetContentSummary>
@ocaml.doc("<p>The destination to which dataset contents are delivered.</p>")
type datasetContentDeliveryDestination = {
  @ocaml.doc("<p>Configuration information for delivery of dataset contents to Amazon S3.</p>")
  s3DestinationConfiguration: option<s3DestinationConfiguration>,
  @ocaml.doc("<p>Configuration information for delivery of dataset contents to AWS IoT Events.</p>")
  iotEventsDestinationConfiguration: option<iotEventsDestinationConfiguration>,
}
@ocaml.doc("<p>A summary of information about a channel.</p>")
type channelSummary = {
  @ocaml.doc("<p>The last time when a new message arrived in the channel.</p>
         <p>AWS IoT Analytics updates this value at most once per minute for one channel. 
  Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p> 
         <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>")
  lastMessageArrivalTime: option<timestamp_>,
  @ocaml.doc("<p>The last time the channel was updated.</p>") lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>When the channel was created.</p>") creationTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the channel.</p>") status: option<channelStatus>,
  @ocaml.doc("<p>Where channel data is stored.</p>") channelStorage: option<channelStorageSummary>,
  @ocaml.doc("<p>The name of the channel.</p>") channelName: option<channelName>,
}
@ocaml.doc("<p>A collection of data from an MQTT topic. Channels archive the raw, unprocessed messages
      before publishing the data to a pipeline.</p>")
type channel = {
  @ocaml.doc("<p>The last time when a new message arrived in the channel.</p>
         <p>AWS IoT Analytics updates this value at most once per minute for one channel. 
  Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p> 
         <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>")
  lastMessageArrivalTime: option<timestamp_>,
  @ocaml.doc("<p>When the channel was last updated.</p>") lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>When the channel was created.</p>") creationTime: option<timestamp_>,
  @ocaml.doc("<p>How long, in days, message data is kept for the channel.</p>")
  retentionPeriod: option<retentionPeriod>,
  @ocaml.doc("<p>The status of the channel.</p>") status: option<channelStatus>,
  @ocaml.doc("<p>The ARN of the channel.</p>") arn: option<channelArn>,
  @ocaml.doc("<p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or
        <code>customerManagedS3</code> storage. If not specified, the default is
        <code>serviceManagedS3</code>. You cannot change this storage option after the channel is
      created.</p>")
  storage: option<channelStorage>,
  @ocaml.doc("<p>The name of the channel.</p>") name: option<channelName>,
}
@ocaml.doc("<p>The SQL query to modify the message.</p>")
type sqlQueryDatasetAction = {
  @ocaml.doc("<p>Prefilters applied to message data.</p>") filters: option<queryFilters>,
  @ocaml.doc("<p>A SQL query string.</p>") sqlQuery: sqlQuery,
}
type pipelineSummaries = array<pipelineSummary>
type pipelineActivities = array<pipelineActivity>
@ocaml.doc("<p>Contains the configuration information of the Parquet format.</p>")
type parquetConfiguration = {
  @ocaml.doc("<p>Information needed to define a schema.</p>")
  schemaDefinition: option<schemaDefinition>,
}
type lateDataRules = array<lateDataRule>
type datastoreSummaries = array<datastoreSummary>
@ocaml.doc("<p>A summary of information about a data set.</p>")
type datasetSummary = {
  @ocaml.doc("<p>A list of <code>DataActionSummary</code> objects.</p>")
  actions: option<datasetActionSummaries>,
  @ocaml.doc("<p>A list of triggers. A trigger causes data set content to be populated at a specified time
      interval or when another data set is populated. The list of triggers can be empty or contain
      up to five <code>DataSetTrigger</code> objects</p>")
  triggers: option<datasetTriggers>,
  @ocaml.doc("<p>The last time the data set was updated.</p>") lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The time the data set was created.</p>") creationTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the data set.</p>") status: option<datasetStatus>,
  @ocaml.doc("<p>The name of the data set.</p>") datasetName: option<datasetName>,
}
@ocaml.doc("<p>When dataset contents are created, they are delivered to destination specified
      here.</p>")
type datasetContentDeliveryRule = {
  @ocaml.doc("<p>The destination to which dataset contents are delivered.</p>")
  destination: datasetContentDeliveryDestination,
  @ocaml.doc("<p>The name of the dataset content delivery rules entry.</p>")
  entryName: option<entryName>,
}
@ocaml.doc("<p>Information required to run the <code>containerAction</code> to produce dataset
      contents.</p>")
type containerDatasetAction = {
  @ocaml.doc("<p>The values of variables used in the context of the execution of the containerized
      application (basically, parameters passed to the application). Each variable must have a name
      and a value given by one of <code>stringValue</code>, <code>datasetContentVersionValue</code>,
      or <code>outputFileUriValue</code>.</p>")
  variables: option<variables>,
  @ocaml.doc("<p>Configuration of the resource that executes the <code>containerAction</code>.</p>")
  resourceConfiguration: resourceConfiguration,
  @ocaml.doc("<p>The ARN of the role that gives permission to the system to access required resources to
      run the <code>containerAction</code>. This includes, at minimum, permission to retrieve the
      dataset contents that are the input to the containerized application.</p>")
  executionRoleArn: roleArn,
  @ocaml.doc("<p>The ARN of the Docker container stored in your account. The Docker container contains an
      application and required support libraries and is used to generate dataset contents.</p>")
  image: image,
}
type channelSummaries = array<channelSummary>
@ocaml.doc("<p>Contains information about a pipeline.</p>")
type pipeline = {
  @ocaml.doc("<p>The last time the pipeline was updated.</p>") lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>When the pipeline was created.</p>") creationTime: option<timestamp_>,
  @ocaml.doc("<p>A summary of information about the pipeline reprocessing.</p>")
  reprocessingSummaries: option<reprocessingSummaries>,
  @ocaml.doc("<p>The activities that perform transformations on the messages.</p>")
  activities: option<pipelineActivities>,
  @ocaml.doc("<p>The ARN of the pipeline.</p>") arn: option<pipelineArn>,
  @ocaml.doc("<p>The name of the pipeline.</p>") name: option<pipelineName>,
}
@ocaml.doc("<p>Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON 
      and <a href=\"https://parquet.apache.org/\">Parquet</a>.</p>
         <p>The default file format is JSON. You can specify only one format.</p>
         <p>You can't change the file format after you create the data store.</p>")
type fileFormatConfiguration = {
  @ocaml.doc("<p>Contains the configuration information of the Parquet format.</p>")
  parquetConfiguration: option<parquetConfiguration>,
  @ocaml.doc("<p>Contains the configuration information of the JSON format.</p>")
  jsonConfiguration: option<jsonConfiguration>,
}
type datasetSummaries = array<datasetSummary>
type datasetContentDeliveryRules = array<datasetContentDeliveryRule>
@ocaml.doc("<p>A <code>DatasetAction</code> object that specifies how data set contents are automatically
      created.</p>")
type datasetAction = {
  @ocaml.doc("<p>Information that allows the system to run a containerized application to create the
      dataset contents. The application must be in a Docker container along with any required
      support libraries.</p>")
  containerAction: option<containerDatasetAction>,
  @ocaml.doc("<p>An <code>SqlQueryDatasetAction</code> object that uses an SQL query to automatically
      create data set contents.</p>")
  queryAction: option<sqlQueryDatasetAction>,
  @ocaml.doc("<p>The name of the data set action by which data set contents are automatically
      created.</p>")
  actionName: option<datasetActionName>,
}
@ocaml.doc("<p>Information about a data store.</p>")
type datastore = {
  @ocaml.doc("<p>Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON 
      and <a href=\"https://parquet.apache.org/\">Parquet</a>.</p>
         <p>The default file format is JSON. You can specify only one format.</p>
         <p>You can't change the file format after you create the data store.</p>")
  fileFormatConfiguration: option<fileFormatConfiguration>,
  @ocaml.doc("<p>The last time when a new message arrived in the data store.</p>
         <p>AWS IoT Analytics updates this value at most once per minute for one data store. 
  Hence, the <code>lastMessageArrivalTime</code> value is an approximation.</p> 
         <p>This feature only applies to messages that arrived in the data store after October 23, 2020. </p>")
  lastMessageArrivalTime: option<timestamp_>,
  @ocaml.doc("<p>The last time the data store was updated.</p>") lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>When the data store was created.</p>") creationTime: option<timestamp_>,
  @ocaml.doc("<p>How long, in days, message data is kept for the data store. When
        <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>")
  retentionPeriod: option<retentionPeriod>,
  @ocaml.doc("<p>The status of a data store:</p>
         <dl>
            <dt>CREATING</dt>
            <dd>
               <p>The data store is being created.</p>
            </dd>
            <dt>ACTIVE</dt>
            <dd>
               <p>The data store has been created and can be used.</p>
            </dd>
            <dt>DELETING</dt>
            <dd>
               <p>The data store is being deleted.</p>
            </dd>
         </dl>")
  status: option<datastoreStatus>,
  @ocaml.doc("<p>The ARN of the data store.</p>") arn: option<datastoreArn>,
  @ocaml.doc("<p>Where data store data is stored. You can choose one of <code>serviceManagedS3</code> or
        <code>customerManagedS3</code> storage. If not specified, the default is
        <code>serviceManagedS3</code>. You cannot change this storage option after the data store is
      created.</p>")
  storage: option<datastoreStorage>,
  @ocaml.doc("<p>The name of the data store.</p>") name: option<datastoreName>,
}
type datasetActions = array<datasetAction>
@ocaml.doc("<p>Information about a data set.</p>")
type dataset = {
  @ocaml.doc("<p>A list of data rules that send notifications to Amazon CloudWatch, when data arrives late. To
  specify <code>lateDataRules</code>, the dataset must use a <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html\">DeltaTimer</a>
  filter.</p>")
  lateDataRules: option<lateDataRules>,
  @ocaml.doc("<p>Optional. How many versions of dataset contents are kept. If not specified or set to null,
      only the latest version plus the latest succeeded version (if they are different) are kept for
      the time period specified by the <code>retentionPeriod</code> parameter. For more information,
      see <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions\">Keeping Multiple Versions of AWS IoT Analytics Data Sets</a> in the <i>AWS IoT
        Analytics User Guide</i>.</p>")
  versioningConfiguration: option<versioningConfiguration>,
  @ocaml.doc("<p>Optional. How long, in days, message data is kept for the data set.</p>")
  retentionPeriod: option<retentionPeriod>,
  @ocaml.doc("<p>The last time the data set was updated.</p>") lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>When the data set was created.</p>") creationTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the data set.</p>") status: option<datasetStatus>,
  @ocaml.doc("<p>When dataset contents are created they are delivered to destinations specified
      here.</p>")
  contentDeliveryRules: option<datasetContentDeliveryRules>,
  @ocaml.doc("<p>The <code>DatasetTrigger</code> objects that specify when the data set is automatically
      updated.</p>")
  triggers: option<datasetTriggers>,
  @ocaml.doc("<p>The <code>DatasetAction</code> objects that automatically create the data set
      contents.</p>")
  actions: option<datasetActions>,
  @ocaml.doc("<p>The ARN of the data set.</p>") arn: option<datasetArn>,
  @ocaml.doc("<p>The name of the data set.</p>") name: option<datasetName>,
}
@ocaml.doc("<p>AWS IoT Analytics allows you to collect large amounts of device data, process messages, and store them. 
    You can then query the data and run sophisticated analytics on it.  AWS IoT Analytics enables advanced 
    data exploration through integration with Jupyter Notebooks and data visualization through integration 
    with Amazon QuickSight.</p>

         <p>Traditional analytics and business intelligence tools are designed to process structured data. IoT data 
    often comes from devices that record noisy processes (such as temperature, motion, or sound). As a result 
    the data from these devices can have significant gaps, corrupted messages, and false readings that must be 
    cleaned up before analysis can occur. Also, IoT data is often only meaningful in the context of other data 
    from external sources. </p>

         <p>AWS IoT Analytics automates the steps required to analyze data from IoT devices. AWS IoT Analytics 
    filters, transforms, and enriches IoT data before storing it in a time-series data store for analysis. You 
    can set up the service to collect only the data you need from your devices, apply mathematical transforms 
    to process the data, and enrich the data with device-specific metadata such as device type and location 
    before storing it. Then, you can analyze your data by running queries using the built-in SQL query engine, 
    or perform more complex analytics and machine learning inference. AWS IoT Analytics includes pre-built models 
    for common IoT use cases so you can answer questions like which devices are about to fail or which customers 
    are at risk of abandoning their wearable devices.</p>")
module DeletePipeline = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the pipeline to delete.</p>") pipelineName: pipelineName,
  }

  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "DeletePipelineCommand"
  let make = (~pipelineName, ()) => new({pipelineName: pipelineName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDatastore = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the data store to delete.</p>") datastoreName: datastoreName,
  }

  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "DeleteDatastoreCommand"
  let make = (~datastoreName, ()) => new({datastoreName: datastoreName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDatasetContent = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the dataset whose content is deleted. You can also use the strings
      \"$LATEST\" or \"$LATEST_SUCCEEDED\" to delete the latest or latest successfully completed data
      set. If not specified, \"$LATEST_SUCCEEDED\" is the default.</p>")
    versionId: option<datasetContentVersion>,
    @ocaml.doc("<p>The name of the dataset whose content is deleted.</p>") datasetName: datasetName,
  }

  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "DeleteDatasetContentCommand"
  let make = (~datasetName, ~versionId=?, ()) =>
    new({versionId: versionId, datasetName: datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataset = {
  type t
  type request = {@ocaml.doc("<p>The name of the data set to delete.</p>") datasetName: datasetName}

  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "DeleteDatasetCommand"
  let make = (~datasetName, ()) => new({datasetName: datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteChannel = {
  type t
  type request = {@ocaml.doc("<p>The name of the channel to delete.</p>") channelName: channelName}

  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "DeleteChannelCommand"
  let make = (~channelName, ()) => new({channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateDatasetContent = {
  type t
  type request = {
    @ocaml.doc("<p>The version ID of the dataset content. To specify <code>versionId</code> for a dataset
      content, the dataset must use a <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html\">DeltaTimer</a> filter.</p>")
    versionId: option<datasetContentVersion>,
    @ocaml.doc("<p>The name of the dataset.</p>") datasetName: datasetName,
  }
  type response = {
    @ocaml.doc("<p>The version ID of the dataset contents that are being created.</p>")
    versionId: option<datasetContentVersion>,
  }
  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "CreateDatasetContentCommand"
  let make = (~datasetName, ~versionId=?, ()) =>
    new({versionId: versionId, datasetName: datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelPipelineReprocessing = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the reprocessing task (returned by
      <code>StartPipelineReprocessing</code>).</p>")
    reprocessingId: reprocessingId,
    @ocaml.doc("<p>The name of pipeline for which data reprocessing is canceled.</p>")
    pipelineName: pipelineName,
  }

  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "CancelPipelineReprocessingCommand"
  let make = (~reprocessingId, ~pipelineName, ()) =>
    new({reprocessingId: reprocessingId, pipelineName: pipelineName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of those tags which you want to remove.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource whose tags you want to remove.</p>")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SampleChannelData = {
  type t
  type request = {
    @ocaml.doc("<p>The end of the time window from which sample messages are retrieved.</p>")
    endTime: option<endTime>,
    @ocaml.doc("<p>The start of the time window from which sample messages are retrieved.</p>")
    startTime: option<startTime>,
    @ocaml.doc("<p>The number of sample messages to be retrieved. The limit is 10. The default is also
      10.</p>")
    maxMessages: option<maxMessages>,
    @ocaml.doc("<p>The name of the channel whose message samples are retrieved.</p>")
    channelName: channelName,
  }
  type response = {
    @ocaml.doc("<p>The list of message samples. Each sample message is returned as a base64-encoded
      string.</p>")
    payloads: option<messagePayloads>,
  }
  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "SampleChannelDataCommand"
  let make = (~channelName, ~endTime=?, ~startTime=?, ~maxMessages=?, ()) =>
    new({
      endTime: endTime,
      startTime: startTime,
      maxMessages: maxMessages,
      channelName: channelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutLoggingOptions = {
  type t
  type request = {
    @ocaml.doc("<p>The new values of the AWS IoT Analytics logging options.</p>")
    loggingOptions: loggingOptions,
  }

  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "PutLoggingOptionsCommand"
  let make = (~loggingOptions, ()) => new({loggingOptions: loggingOptions})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeLoggingOptions = {
  type t

  type response = {
    @ocaml.doc("<p>The current settings of the AWS IoT Analytics logging options.</p>")
    loggingOptions: option<loggingOptions>,
  }
  @module("@aws-sdk/client-iotanalytics") @new
  external new: unit => t = "DescribeLoggingOptionsCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChannel = {
  type t
  type request = {
    @ocaml.doc("<p>How long, in days, message data is kept for the channel. The retention period cannot be
      updated if the channel's S3 storage is customer-managed.</p>")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or
        <code>customerManagedS3</code> storage. If not specified, the default is
        <code>serviceManagedS3</code>. You cannot change this storage option after the channel is
      created.</p>")
    channelStorage: option<channelStorage>,
    @ocaml.doc("<p>The name of the channel to be updated.</p>") channelName: channelName,
  }

  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "UpdateChannelCommand"
  let make = (~channelName, ~retentionPeriod=?, ~channelStorage=?, ()) =>
    new({
      retentionPeriod: retentionPeriod,
      channelStorage: channelStorage,
      channelName: channelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The new or modified tags for the resource.</p>") tags: tagList_,
    @ocaml.doc("<p>The ARN of the resource whose tags you want to modify.</p>")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartPipelineReprocessing = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies one or more sets of channel messages that you want to reprocess.</p>
         <p>If you use the <code>channelMessages</code> object, you must not specify a value for
        <code>startTime</code> and <code>endTime</code>.</p>")
    channelMessages: option<channelMessages>,
    @ocaml.doc("<p>The end time (exclusive) of raw message data that is reprocessed.</p>
         <p>If you specify a value for the <code>endTime</code> parameter, you must not use the
        <code>channelMessages</code> object.</p>")
    endTime: option<endTime>,
    @ocaml.doc("<p>The start time (inclusive) of raw message data that is reprocessed.</p>
         <p>If you specify a value for the <code>startTime</code> parameter, you must not use the
        <code>channelMessages</code> object.</p>")
    startTime: option<startTime>,
    @ocaml.doc("<p>The name of the pipeline on which to start reprocessing.</p>")
    pipelineName: pipelineName,
  }
  type response = {
    @ocaml.doc("<p>The ID of the pipeline reprocessing activity that was started.</p>")
    reprocessingId: option<reprocessingId>,
  }
  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "StartPipelineReprocessingCommand"
  let make = (~pipelineName, ~channelMessages=?, ~endTime=?, ~startTime=?, ()) =>
    new({
      channelMessages: channelMessages,
      endTime: endTime,
      startTime: startTime,
      pipelineName: pipelineName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource whose tags you want to list.</p>")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The tags (metadata) that you have assigned to the resource.</p>")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDatasetContent = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the data set whose contents are retrieved. You can also use the strings
      \"$LATEST\" or \"$LATEST_SUCCEEDED\" to retrieve the contents of the latest or latest successfully
      completed data set. If not specified, \"$LATEST_SUCCEEDED\" is the default.</p>")
    versionId: option<datasetContentVersion>,
    @ocaml.doc("<p>The name of the data set whose contents are retrieved.</p>")
    datasetName: datasetName,
  }
  type response = {
    @ocaml.doc("<p>The status of the data set content.</p>") status: option<datasetContentStatus>,
    @ocaml.doc("<p>The time when the request was made.</p>") @as("timestamp")
    timestamp_: option<timestamp_>,
    @ocaml.doc("<p>A list of <code>DatasetEntry</code> objects.</p>")
    entries: option<datasetEntries>,
  }
  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "GetDatasetContentCommand"
  let make = (~datasetName, ~versionId=?, ()) =>
    new({versionId: versionId, datasetName: datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateChannel = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the channel.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>How long, in days, message data is kept for the channel. When
        <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>Where channel data is stored. You can choose one of <code>serviceManagedS3</code> or
        <code>customerManagedS3</code> storage. If not specified, the default is
        <code>serviceManagedS3</code>. You cannot change this storage option after the channel is
      created.</p>")
    channelStorage: option<channelStorage>,
    @ocaml.doc("<p>The name of the channel.</p>") channelName: channelName,
  }
  type response = {
    @ocaml.doc("<p>How long, in days, message data is kept for the channel.</p>")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>The ARN of the channel.</p>") channelArn: option<channelArn>,
    @ocaml.doc("<p>The name of the channel.</p>") channelName: option<channelName>,
  }
  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "CreateChannelCommand"
  let make = (~channelName, ~tags=?, ~retentionPeriod=?, ~channelStorage=?, ()) =>
    new({
      tags: tags,
      retentionPeriod: retentionPeriod,
      channelStorage: channelStorage,
      channelName: channelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchPutMessage = {
  type t
  type request = {
    @ocaml.doc("<p>The list of messages to be sent. Each message has the format: { \"messageId\": \"string\",
         \"payload\": \"string\"}.</p>
         <p>The field names of message payloads (data) that you send to AWS IoT Analytics:</p>
        <ul>
            <li>
               <p>Must contain only alphanumeric characters and undescores (_). No other special characters are
               allowed.</p>
            </li>
            <li>
               <p>Must begin with an alphabetic character or single underscore (_).</p>
            </li>
            <li>
               <p>Cannot contain hyphens (-).</p>
            </li>
            <li>
               <p>In regular expression terms: \"^[A-Za-z_]([A-Za-z0-9]*|[A-Za-z0-9][A-Za-z0-9_]*)$\".
            </p>
            </li>
            <li>
               <p>Cannot be more than 255 characters.</p>
            </li>
            <li>
               <p>Are case insensitive. (Fields named foo and FOO in the same payload are considered
               duplicates.)</p>
            </li>
         </ul>
         <p>For example, {\"temp_01\": 29} or {\"_temp_01\": 29} are valid, but {\"temp-01\": 29},
 {\"01_temp\": 29} or {\"__temp_01\": 29} are invalid in message payloads.  </p>")
    messages: messages,
    @ocaml.doc("<p>The name of the channel where the messages are sent.</p>")
    channelName: channelName,
  }
  type response = {
    @ocaml.doc("<p>A list of any errors encountered when sending the messages to the channel.</p>")
    batchPutMessageErrorEntries: option<batchPutMessageErrorEntries>,
  }
  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "BatchPutMessageCommand"
  let make = (~messages, ~channelName, ()) => new({messages: messages, channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RunPipelineActivity = {
  type t
  type request = {
    @ocaml.doc("<p>The sample message payloads on which the pipeline activity is run.</p>")
    payloads: messagePayloads,
    @ocaml.doc("<p>The pipeline activity that is run. This must not be a channel activity or a datastore
      activity because these activities are used in a pipeline only to load the original message and
      to store the (possibly) transformed message. If a lambda activity is specified, only
      short-running Lambda functions (those with a timeout of less than 30 seconds or less) can be
      used.</p>")
    pipelineActivity: pipelineActivity,
  }
  type response = {
    @ocaml.doc("<p>In case the pipeline activity fails, the log message that is generated.</p>")
    logResult: option<logResult>,
    @ocaml.doc("<p>The enriched or transformed sample message payloads as base64-encoded strings. (The
      results of running the pipeline activity on each input sample message payload, encoded in
      base64.)</p>")
    payloads: option<messagePayloads>,
  }
  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "RunPipelineActivityCommand"
  let make = (~payloads, ~pipelineActivity, ()) =>
    new({payloads: payloads, pipelineActivity: pipelineActivity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasetContents = {
  type t
  type request = {
    @ocaml.doc("<p>A filter to limit results to those data set contents whose creation is scheduled before
      the given time. See the field <code>triggers.schedule</code> in the <code>CreateDataset</code>
      request. (timestamp)</p>")
    scheduledBefore: option<timestamp_>,
    @ocaml.doc("<p>A filter to limit results to those data set contents whose creation is scheduled on or
      after the given time. See the field <code>triggers.schedule</code> in the
        <code>CreateDataset</code> request. (timestamp)</p>")
    scheduledOnOrAfter: option<timestamp_>,
    @ocaml.doc("<p>The maximum number of results to return in this request.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the data set whose contents information you want to list.</p>")
    datasetName: datasetName,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next set of results, or <code>null</code> if there are no more
      results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information about data set contents that have been created.</p>")
    datasetContentSummaries: option<datasetContentSummaries>,
  }
  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "ListDatasetContentsCommand"
  let make = (
    ~datasetName,
    ~scheduledBefore=?,
    ~scheduledOnOrAfter=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      scheduledBefore: scheduledBefore,
      scheduledOnOrAfter: scheduledOnOrAfter,
      maxResults: maxResults,
      nextToken: nextToken,
      datasetName: datasetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChannel = {
  type t
  type request = {
    @ocaml.doc("<p>If true, additional statistical information about the channel is included in the response.
      This feature cannot be used with a channel whose S3 storage is customer-managed.</p>")
    includeStatistics: option<includeStatisticsFlag>,
    @ocaml.doc("<p>The name of the channel whose information is retrieved.</p>")
    channelName: channelName,
  }
  type response = {
    @ocaml.doc("<p>Statistics about the channel. Included if the <code>includeStatistics</code> parameter is
      set to <code>true</code> in the request.</p>")
    statistics: option<channelStatistics>,
    @ocaml.doc("<p>An object that contains information about the channel.</p>")
    channel: option<channel>,
  }
  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "DescribeChannelCommand"
  let make = (~channelName, ~includeStatistics=?, ()) =>
    new({includeStatistics: includeStatistics, channelName: channelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePipeline = {
  type t
  type request = {
    @ocaml.doc("<p>A list of <code>PipelineActivity</code> objects. Activities perform transformations on
      your messages, such as removing, renaming or adding message attributes; filtering messages
      based on attribute values; invoking your Lambda functions on messages for advanced processing;
      or performing mathematical transformations to normalize device data.</p>
         <p>The list can be 2-25 <code>PipelineActivity</code> objects and must contain both a
        <code>channel</code> and a <code>datastore</code> activity. Each entry in the list must
      contain only one activity. For example:</p>
         <p>
            <code>pipelineActivities = [ { \"channel\": { ... } }, { \"lambda\": { ... } }, ...
      ]</code>
         </p>")
    pipelineActivities: pipelineActivities,
    @ocaml.doc("<p>The name of the pipeline to update.</p>") pipelineName: pipelineName,
  }

  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "UpdatePipelineCommand"
  let make = (~pipelineActivities, ~pipelineName, ()) =>
    new({pipelineActivities: pipelineActivities, pipelineName: pipelineName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListPipelines = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in this request.</p>
         <p>The default value is 100.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next set of results, or <code>null</code> if there are no more
      results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>PipelineSummary</code> objects.</p>")
    pipelineSummaries: option<pipelineSummaries>,
  }
  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "ListPipelinesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatastores = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in this request.</p>
         <p>The default value is 100.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next set of results, or <code>null</code> if there are no more
      results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>DatastoreSummary</code> objects.</p>")
    datastoreSummaries: option<datastoreSummaries>,
  }
  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "ListDatastoresCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChannels = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in this request.</p>
         <p>The default value is 100.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next set of results, or <code>null</code> if there are no more
      results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>ChannelSummary</code> objects.</p>")
    channelSummaries: option<channelSummaries>,
  }
  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "ListChannelsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePipeline = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the pipeline.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>A list of <code>PipelineActivity</code> objects. Activities perform transformations on
      your messages, such as removing, renaming or adding message attributes; filtering messages
      based on attribute values; invoking your Lambda functions on messages for advanced processing;
      or performing mathematical transformations to normalize device data.</p>
         <p>The list can be 2-25 <code>PipelineActivity</code> objects and must contain both a
        <code>channel</code> and a <code>datastore</code> activity. Each entry in the list must
      contain only one activity. For example:</p>
         <p>
            <code>pipelineActivities = [ { \"channel\": { ... } }, { \"lambda\": { ... } }, ...
      ]</code>
         </p>")
    pipelineActivities: pipelineActivities,
    @ocaml.doc("<p>The name of the pipeline.</p>") pipelineName: pipelineName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the pipeline.</p>") pipelineArn: option<pipelineArn>,
    @ocaml.doc("<p>The name of the pipeline.</p>") pipelineName: option<pipelineName>,
  }
  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "CreatePipelineCommand"
  let make = (~pipelineActivities, ~pipelineName, ~tags=?, ()) =>
    new({tags: tags, pipelineActivities: pipelineActivities, pipelineName: pipelineName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDatastore = {
  type t
  type request = {
    @ocaml.doc("<p>Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON 
      and <a href=\"https://parquet.apache.org/\">Parquet</a>.</p>
         <p>The default file format is JSON. You can specify only one format.</p>
         <p>You can't change the file format after you create the data store.</p>")
    fileFormatConfiguration: option<fileFormatConfiguration>,
    @ocaml.doc("<p>Where data store data is stored. You can choose one of <code>serviceManagedS3</code> or
        <code>customerManagedS3</code> storage. If not specified, the default
        is<code>serviceManagedS3</code>. You cannot change this storage option after the data store
      is created.</p>")
    datastoreStorage: option<datastoreStorage>,
    @ocaml.doc("<p>How long, in days, message data is kept for the data store. The retention period cannot be
      updated if the data store's S3 storage is customer-managed.</p>")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>The name of the data store to be updated.</p>") datastoreName: datastoreName,
  }

  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "UpdateDatastoreCommand"
  let make = (
    ~datastoreName,
    ~fileFormatConfiguration=?,
    ~datastoreStorage=?,
    ~retentionPeriod=?,
    (),
  ) =>
    new({
      fileFormatConfiguration: fileFormatConfiguration,
      datastoreStorage: datastoreStorage,
      retentionPeriod: retentionPeriod,
      datastoreName: datastoreName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListDatasets = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in this request.</p>
         <p>The default value is 100.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next set of results, or <code>null</code> if there are no more
      results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>DatasetSummary</code> objects.</p>")
    datasetSummaries: option<datasetSummaries>,
  }
  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "ListDatasetsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePipeline = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the pipeline whose information is retrieved.</p>")
    pipelineName: pipelineName,
  }
  type response = {
    @ocaml.doc(
      "<p>A <code>Pipeline</code> object that contains information about the pipeline.</p>"
    )
    pipeline: option<pipeline>,
  }
  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "DescribePipelineCommand"
  let make = (~pipelineName, ()) => new({pipelineName: pipelineName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatastore = {
  type t
  type request = {
    @ocaml.doc("<p>Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON 
      and <a href=\"https://parquet.apache.org/\">Parquet</a>.</p>
         <p>The default file format is JSON. You can specify only one format.</p>
         <p>You can't change the file format after you create the data store.</p>")
    fileFormatConfiguration: option<fileFormatConfiguration>,
    @ocaml.doc("<p>Metadata which can be used to manage the data store.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>How long, in days, message data is kept for the data store. When
        <code>customerManagedS3</code> storage is selected, this parameter is ignored.</p>")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>Where data store data is stored. You can choose one of <code>serviceManagedS3</code> or
        <code>customerManagedS3</code> storage. If not specified, the default is
        <code>serviceManagedS3</code>. You cannot change this storage option after the data store is
      created.</p>")
    datastoreStorage: option<datastoreStorage>,
    @ocaml.doc("<p>The name of the data store.</p>") datastoreName: datastoreName,
  }
  type response = {
    @ocaml.doc("<p>How long, in days, message data is kept for the data store.</p>")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>The ARN of the data store.</p>") datastoreArn: option<datastoreArn>,
    @ocaml.doc("<p>The name of the data store.</p>") datastoreName: option<datastoreName>,
  }
  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "CreateDatastoreCommand"
  let make = (
    ~datastoreName,
    ~fileFormatConfiguration=?,
    ~tags=?,
    ~retentionPeriod=?,
    ~datastoreStorage=?,
    (),
  ) =>
    new({
      fileFormatConfiguration: fileFormatConfiguration,
      tags: tags,
      retentionPeriod: retentionPeriod,
      datastoreStorage: datastoreStorage,
      datastoreName: datastoreName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataset = {
  type t
  type request = {
    @ocaml.doc("<p>A list of data rules that send notifications to Amazon CloudWatch, when data arrives late. To
  specify <code>lateDataRules</code>, the dataset must use a <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html\">DeltaTimer</a>
  filter.</p>")
    lateDataRules: option<lateDataRules>,
    @ocaml.doc("<p>Optional. How many versions of dataset contents are kept. If not specified or set to null,
      only the latest version plus the latest succeeded version (if they are different) are kept for
      the time period specified by the <code>retentionPeriod</code> parameter. For more information,
      see <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions\">Keeping Multiple Versions of AWS IoT Analytics Data Sets</a> in the <i>AWS IoT
        Analytics User Guide</i>.</p>")
    versioningConfiguration: option<versioningConfiguration>,
    @ocaml.doc("<p>How long, in days, dataset contents are kept for the dataset.</p>")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>When dataset contents are created, they are delivered to destinations specified
      here.</p>")
    contentDeliveryRules: option<datasetContentDeliveryRules>,
    @ocaml.doc("<p>A list of <code>DatasetTrigger</code> objects. The list can be empty or can contain up to
      five <code>DatasetTrigger</code> objects.</p>")
    triggers: option<datasetTriggers>,
    @ocaml.doc("<p>A list of <code>DatasetAction</code> objects.</p>") actions: datasetActions,
    @ocaml.doc("<p>The name of the data set to update.</p>") datasetName: datasetName,
  }

  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "UpdateDatasetCommand"
  let make = (
    ~actions,
    ~datasetName,
    ~lateDataRules=?,
    ~versioningConfiguration=?,
    ~retentionPeriod=?,
    ~contentDeliveryRules=?,
    ~triggers=?,
    (),
  ) =>
    new({
      lateDataRules: lateDataRules,
      versioningConfiguration: versioningConfiguration,
      retentionPeriod: retentionPeriod,
      contentDeliveryRules: contentDeliveryRules,
      triggers: triggers,
      actions: actions,
      datasetName: datasetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeDatastore = {
  type t
  type request = {
    @ocaml.doc("<p>If true, additional statistical information about the data store is included in the
      response. This feature cannot be used with a data store whose S3 storage is
      customer-managed.</p>")
    includeStatistics: option<includeStatisticsFlag>,
    @ocaml.doc("<p>The name of the data store</p>") datastoreName: datastoreName,
  }
  type response = {
    @ocaml.doc("<p>Additional statistical information about the data store. Included if the
        <code>includeStatistics</code> parameter is set to <code>true</code> in the request.</p>")
    statistics: option<datastoreStatistics>,
    @ocaml.doc("<p>Information about the data store.</p>") datastore: option<datastore>,
  }
  @module("@aws-sdk/client-iotanalytics") @new
  external new: request => t = "DescribeDatastoreCommand"
  let make = (~datastoreName, ~includeStatistics=?, ()) =>
    new({includeStatistics: includeStatistics, datastoreName: datastoreName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataset = {
  type t
  type request = {
    @ocaml.doc("<p>A list of data rules that send notifications to Amazon CloudWatch, when data arrives late. To
  specify <code>lateDataRules</code>, the dataset must use a <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html\">DeltaTimer</a>
  filter.</p>")
    lateDataRules: option<lateDataRules>,
    @ocaml.doc("<p>Metadata which can be used to manage the data set.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>Optional. How many versions of dataset contents are kept. If not specified or set to null,
      only the latest version plus the latest succeeded version (if they are different) are kept for
      the time period specified by the <code>retentionPeriod</code> parameter. For more information,
      see <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions\">Keeping Multiple Versions of AWS IoT Analytics Data Sets</a> in the <i>AWS IoT
        Analytics User Guide</i>.</p>")
    versioningConfiguration: option<versioningConfiguration>,
    @ocaml.doc("<p>Optional. How long, in days, versions of dataset contents are kept for the dataset. If not
      specified or set to <code>null</code>, versions of dataset contents are retained for at most
      90 days. The number of versions of dataset contents retained is determined by the
        <code>versioningConfiguration</code> parameter. For more information, see <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions\">Keeping Multiple Versions of AWS IoT Analytics Data Sets</a> in the <i>AWS IoT
        Analytics User Guide</i>.</p>")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>When dataset contents are created, they are delivered to destinations specified
      here.</p>")
    contentDeliveryRules: option<datasetContentDeliveryRules>,
    @ocaml.doc("<p>A list of triggers. A trigger causes data set contents to be populated at a specified time
      interval or when another data set's contents are created. The list of triggers can be empty or
      contain up to five <code>DataSetTrigger</code> objects.</p>")
    triggers: option<datasetTriggers>,
    @ocaml.doc("<p>A list of actions that create the data set contents.</p>")
    actions: datasetActions,
    @ocaml.doc("<p>The name of the data set.</p>") datasetName: datasetName,
  }
  type response = {
    @ocaml.doc("<p>How long, in days, dataset contents are kept for the dataset.</p>")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>The ARN of the dataset.</p>") datasetArn: option<datasetArn>,
    @ocaml.doc("<p>The name of the dataset.</p>") datasetName: option<datasetName>,
  }
  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "CreateDatasetCommand"
  let make = (
    ~actions,
    ~datasetName,
    ~lateDataRules=?,
    ~tags=?,
    ~versioningConfiguration=?,
    ~retentionPeriod=?,
    ~contentDeliveryRules=?,
    ~triggers=?,
    (),
  ) =>
    new({
      lateDataRules: lateDataRules,
      tags: tags,
      versioningConfiguration: versioningConfiguration,
      retentionPeriod: retentionPeriod,
      contentDeliveryRules: contentDeliveryRules,
      triggers: triggers,
      actions: actions,
      datasetName: datasetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the data set whose information is retrieved.</p>")
    datasetName: datasetName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about the data set.</p>")
    dataset: option<dataset>,
  }
  @module("@aws-sdk/client-iotanalytics") @new external new: request => t = "DescribeDatasetCommand"
  let make = (~datasetName, ()) => new({datasetName: datasetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
