type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-kinesisanalytics") @new
external createClient: unit => awsServiceClient = "KinesisAnalyticsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type roleARN = string
type resourceARN = string
type recordRowPath = string
type recordRowDelimiter = string
type recordFormatType = [@as("CSV") #CSV | @as("JSON") #JSON]
type recordEncoding = string
type recordColumnSqlType = string
type recordColumnName = string
type recordColumnMapping = string
type recordColumnDelimiter = string
type rawInputRecord = string
type processedInputRecord = string
type parsedInputRecordField = string
type logStreamARN = string
type listApplicationsInputLimit = int
type kinesisAnalyticsARN = string
type inputStartingPosition = [
  | @as("LAST_STOPPED_POINT") #LAST_STOPPED_POINT
  | @as("TRIM_HORIZON") #TRIM_HORIZON
  | @as("NOW") #NOW
]
type inputParallelismCount = int
type inAppTableName = string
type inAppStreamName = string
type id = string
type fileKey = string
type errorMessage = string
type bucketARN = string
type booleanObject = bool
type applicationVersionId = float
type applicationStatus = [
  | @as("UPDATING") #UPDATING
  | @as("RUNNING") #RUNNING
  | @as("READY") #READY
  | @as("STOPPING") #STOPPING
  | @as("STARTING") #STARTING
  | @as("DELETING") #DELETING
]
type applicationName = string
type applicationDescription = string
type applicationCode = string
type tagKeys = array<tagKey>
@ocaml.doc("<p>A key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. Note that 
        the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.
      For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html\">Using Tagging</a>.</p>")
type tag = {
  @ocaml.doc("<p>The value of the key-value tag. The value is optional.</p>") @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>The key of the key-value tag.</p>") @as("Key") key: tagKey,
}
@ocaml.doc(
  "<p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>"
)
type s3ReferenceDataSourceUpdate = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application.</p>"
  )
  @as("ReferenceRoleARNUpdate")
  referenceRoleARNUpdate: option<roleARN>,
  @ocaml.doc("<p>Object key name.</p>") @as("FileKeyUpdate") fileKeyUpdate: option<fileKey>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the S3 bucket.</p>") @as("BucketARNUpdate")
  bucketARNUpdate: option<bucketARN>,
}
@ocaml.doc("<p>Provides the bucket name and object key name that stores the reference data.</p>")
type s3ReferenceDataSourceDescription = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf to populate the in-application reference table.</p>"
  )
  @as("ReferenceRoleARN")
  referenceRoleARN: roleARN,
  @ocaml.doc("<p>Amazon S3 object key name.</p>") @as("FileKey") fileKey: fileKey,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the S3 bucket.</p>") @as("BucketARN")
  bucketARN: bucketARN,
}
@ocaml.doc("<p>Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.</p>
        <p>An Amazon Kinesis Analytics application loads reference data only once. If the data changes, 
            you call the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html\">UpdateApplication</a> operation to trigger 
            reloading of data into your application.</p>")
type s3ReferenceDataSource = {
  @ocaml.doc(
    "<p>ARN of the IAM role that the service can assume to read data on your behalf. This role must have permission for the <code>s3:GetObject</code> action on the object and trust policy that allows Amazon Kinesis Analytics service principal to assume this role.</p>"
  )
  @as("ReferenceRoleARN")
  referenceRoleARN: roleARN,
  @ocaml.doc("<p>Object key name containing reference data.</p>") @as("FileKey") fileKey: fileKey,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the S3 bucket.</p>") @as("BucketARN")
  bucketARN: bucketARN,
}
@ocaml.doc("<p>Provides a description of an Amazon S3 data source, including the Amazon Resource
            Name (ARN) of the S3 bucket, the ARN of the IAM role that is used to access the bucket,
            and the name of the Amazon S3 object that contains the data.</p>")
type s3Configuration = {
  @ocaml.doc("<p>The name of the object that contains the data.</p>") @as("FileKey")
  fileKey: fileKey,
  @ocaml.doc("<p>ARN of the S3 bucket that contains the data.</p>") @as("BucketARN")
  bucketARN: bucketARN,
  @ocaml.doc("<p>IAM ARN of the role used to access the data.</p>") @as("RoleARN") roleARN: roleARN,
}
@ocaml.doc("<p>Describes the mapping of each data element in the streaming 
            source to the corresponding column in the in-application stream.</p>
        <p>Also used to describe the format of the reference data source.</p>")
type recordColumn = {
  @ocaml.doc("<p>Type of column created in the in-application input stream or reference table.</p>")
  @as("SqlType")
  sqlType: recordColumnSqlType,
  @ocaml.doc("<p>Reference to the data element in the streaming input or the reference data source. This element
            is required if the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_RecordFormat.html#analytics-Type-RecordFormat-RecordFormatTypel\">RecordFormatType</a> is <code>JSON</code>.</p>")
  @as("Mapping")
  mapping: option<recordColumnMapping>,
  @ocaml.doc(
    "<p>Name of the column created in the in-application input stream or reference table.</p>"
  )
  @as("Name")
  name: recordColumnName,
}
type rawInputRecords = array<rawInputRecord>
type processedInputRecords = array<processedInputRecord>
type parsedInputRecord = array<parsedInputRecordField>
@ocaml.doc("<p>When updating an output configuration using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html\">UpdateApplication</a>
            operation, provides information about an AWS Lambda function configured as the
            destination.</p>")
type lambdaOutputUpdate = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function on your behalf. You need to grant the necessary permissions to this role. </p>"
  )
  @as("RoleARNUpdate")
  roleARNUpdate: option<roleARN>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the destination Lambda function.</p>
        <note>
            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a>
            </p>
         </note>")
  @as("ResourceARNUpdate")
  resourceARNUpdate: option<resourceARN>,
}
@ocaml.doc("<p>For an application output, describes the AWS Lambda function configured as its
            destination. </p>")
type lambdaOutputDescription = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function.</p>"
  )
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the destination Lambda function.</p>")
  @as("ResourceARN")
  resourceARN: option<resourceARN>,
}
@ocaml.doc("<p>When configuring application output, identifies an AWS Lambda function as the
            destination. You provide the function Amazon Resource Name (ARN) and also an IAM role
            ARN that Amazon Kinesis Analytics can use to write to the function on your behalf. </p>")
type lambdaOutput = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function on your behalf. You need to grant the necessary permissions to this role. </p>"
  )
  @as("RoleARN")
  roleARN: roleARN,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the destination Lambda function to write
            to.</p>
        <note>
            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a>
            </p>
         </note>")
  @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>
            When updating an output configuration using the 
            <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html\">UpdateApplication</a>  operation, 
            provides information about an Amazon Kinesis stream configured as 
            the destination.
        </p>")
type kinesisStreamsOutputUpdate = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>"
  )
  @as("RoleARNUpdate")
  roleARNUpdate: option<roleARN>,
  @ocaml.doc(
    "<p>Amazon Resource Name (ARN) of the Amazon Kinesis stream where you want to write the output.</p>"
  )
  @as("ResourceARNUpdate")
  resourceARNUpdate: option<resourceARN>,
}
@ocaml.doc("<p>
            For an application output, describes 
            the Amazon Kinesis stream configured as its destination.
        </p>")
type kinesisStreamsOutputDescription = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>"
  )
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the Amazon Kinesis stream.</p>") @as("ResourceARN")
  resourceARN: option<resourceARN>,
}
@ocaml.doc("<p>When configuring application output, identifies an Amazon Kinesis stream as the
            destination. You provide the stream Amazon Resource Name (ARN) and also an IAM role ARN
            that Amazon Kinesis Analytics can use to write to the stream on your behalf.</p>")
type kinesisStreamsOutput = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.</p>"
  )
  @as("RoleARN")
  roleARN: roleARN,
  @ocaml.doc("<p>ARN of the destination Amazon Kinesis stream to write to.</p>") @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>When updating application input configuration, provides information about an 
            Amazon Kinesis stream as the streaming source.</p>")
type kinesisStreamsInputUpdate = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>"
  )
  @as("RoleARNUpdate")
  roleARNUpdate: option<roleARN>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the input Amazon Kinesis stream to read.</p>")
  @as("ResourceARNUpdate")
  resourceARNUpdate: option<resourceARN>,
}
@ocaml.doc("<p>
            Describes the Amazon Kinesis stream that is configured as the streaming source 
            in the application input configuration. 
          </p>")
type kinesisStreamsInputDescription = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>"
  )
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the Amazon Kinesis stream.</p>") @as("ResourceARN")
  resourceARN: option<resourceARN>,
}
@ocaml.doc("<p> Identifies an Amazon Kinesis stream as the streaming source. You provide the
            stream's Amazon Resource Name (ARN) and an IAM role ARN that enables Amazon Kinesis
            Analytics to access the stream on your behalf.</p>")
type kinesisStreamsInput = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>"
  )
  @as("RoleARN")
  roleARN: roleARN,
  @ocaml.doc("<p>ARN of the input Amazon Kinesis stream to read.</p>") @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>
            When updating an output configuration using the 
            <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html\">UpdateApplication</a> operation, 
            provides information about an Amazon Kinesis Firehose delivery stream configured as 
            the destination.
        </p>")
type kinesisFirehoseOutputUpdate = {
  @ocaml.doc("<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream
            on your behalf. You need to grant the necessary permissions to this role.</p>")
  @as("RoleARNUpdate")
  roleARNUpdate: option<roleARN>,
  @ocaml.doc(
    "<p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream to write to.</p>"
  )
  @as("ResourceARNUpdate")
  resourceARNUpdate: option<resourceARN>,
}
@ocaml.doc("<p>
            For an application output, describes 
            the Amazon Kinesis Firehose delivery stream configured as its destination.
        </p>")
type kinesisFirehoseOutputDescription = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>"
  )
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.</p>")
  @as("ResourceARN")
  resourceARN: option<resourceARN>,
}
@ocaml.doc("<p>When configuring application output, 
            identifies an Amazon Kinesis Firehose delivery stream as the destination. 
            You provide the stream Amazon Resource Name (ARN) and an IAM role  
            that enables Amazon Kinesis Analytics to write to the stream on your behalf.</p>")
type kinesisFirehoseOutput = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.</p>"
  )
  @as("RoleARN")
  roleARN: roleARN,
  @ocaml.doc("<p>ARN of the destination Amazon Kinesis Firehose delivery stream to write to.</p>")
  @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>When updating application input configuration, provides information about an  
            Amazon Kinesis Firehose delivery stream as the streaming source.</p>")
type kinesisFirehoseInputUpdate = {
  @ocaml.doc("<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream
            on your behalf. You need to grant the necessary permissions to this role.</p>")
  @as("RoleARNUpdate")
  roleARNUpdate: option<roleARN>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the input Amazon Kinesis Firehose delivery stream to
            read.</p>")
  @as("ResourceARNUpdate")
  resourceARNUpdate: option<resourceARN>,
}
@ocaml.doc("<p>
            Describes the Amazon Kinesis Firehose delivery stream that is configured as the streaming source 
            in the application input configuration. 
        </p>")
type kinesisFirehoseInputDescription = {
  @ocaml.doc(
    "<p>ARN of the IAM role that Amazon Kinesis Analytics assumes to access the stream.</p>"
  )
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.</p>")
  @as("ResourceARN")
  resourceARN: option<resourceARN>,
}
@ocaml.doc("<p> Identifies an Amazon Kinesis Firehose delivery stream as the streaming source. You
            provide the delivery stream's Amazon Resource Name (ARN) and an IAM role ARN that
            enables Amazon Kinesis Analytics to access the stream on your behalf.</p>")
type kinesisFirehoseInput = {
  @ocaml.doc("<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream
            on your behalf. You need to make sure that the role has the necessary permissions to
            access the stream.</p>")
  @as("RoleARN")
  roleARN: roleARN,
  @ocaml.doc("<p>ARN of the input delivery stream.</p>") @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc(
  "<p>Provides additional mapping information when JSON is the record format on the streaming source.</p>"
)
type jsonmappingParameters = {
  @ocaml.doc("<p>Path to the top-level parent that contains the records.</p>") @as("RecordRowPath")
  recordRowPath: recordRowPath,
}
@ocaml.doc("<p>Describes the point at which the application reads from 
            the streaming source.</p>")
type inputStartingPositionConfiguration = {
  @ocaml.doc("<p>The starting position on the stream.</p>
        <ul>
            <li>
                <p>
                  <code>NOW</code> - Start reading just after the most recent record in the
                    stream, start at the request time stamp that the customer issued.</p>
                
                
            </li>
            <li>
                <p>
                  <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the stream, 
                    which is the oldest record available in the stream. This option is not available 
                    for an Amazon Kinesis Firehose delivery stream.</p>
            </li>
            <li>
                <p>
                  <code>LAST_STOPPED_POINT</code> - Resume reading from where the application last stopped reading.</p>
            </li>
         </ul>")
  @as("InputStartingPosition")
  inputStartingPosition: option<inputStartingPosition>,
}
@ocaml.doc("<p>Provides updates to the parallelism count.</p>")
type inputParallelismUpdate = {
  @ocaml.doc("<p>Number of in-application streams to create for the specified 
            streaming source.</p>")
  @as("CountUpdate")
  countUpdate: option<inputParallelismCount>,
}
@ocaml.doc("<p>Describes the number of in-application streams to create for a given 
            streaming source. For information about parallelism, 
            see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>.
        </p>")
type inputParallelism = {
  @ocaml.doc("<p>Number of in-application streams to create. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html\">Limits</a>.
        </p>")
  @as("Count")
  count: option<inputParallelismCount>,
}
@ocaml.doc(
  "<p>Represents an update to the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html\">InputLambdaProcessor</a> that is used to preprocess the records in the stream.</p>"
)
type inputLambdaProcessorUpdate = {
  @ocaml.doc("<p>The ARN of the new IAM role that is used to access the AWS Lambda
            function.</p>")
  @as("RoleARNUpdate")
  roleARNUpdate: option<roleARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the new <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that
            is used to preprocess the records in the stream.</p>
        <note>
            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a>
            </p>
         </note>")
  @as("ResourceARNUpdate")
  resourceARNUpdate: option<resourceARN>,
}
@ocaml.doc("<p>An object that contains the Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that
            is used to preprocess records in the stream, and the ARN of the IAM role that is  used
            to access the AWS Lambda expression.</p>")
type inputLambdaProcessorDescription = {
  @ocaml.doc("<p>The ARN of the IAM role that is used to access the AWS Lambda function.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc(
    "<p>The ARN of the <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that is used to preprocess the records in the stream.</p>"
  )
  @as("ResourceARN")
  resourceARN: option<resourceARN>,
}
@ocaml.doc("<p>An object that contains the Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that
            is used to preprocess records in the stream, and the ARN of the IAM role that is used to
            access the AWS Lambda function. </p>")
type inputLambdaProcessor = {
  @ocaml.doc("<p>The ARN of the IAM role that is used to access the AWS Lambda function.</p>")
  @as("RoleARN")
  roleARN: roleARN,
  @ocaml.doc("<p>The ARN of the <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that operates
            on records in the stream.</p>
            <note>
            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a>
            </p>
         </note>")
  @as("ResourceARN")
  resourceARN: resourceARN,
}
type inAppStreamNames = array<inAppStreamName>
@ocaml.doc("<p>Describes the data format when records are written to the destination. 
            For more information, 
            see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>. 
            
            
        </p>")
type destinationSchema = {
  @ocaml.doc("<p>Specifies the format of the records on the output stream.</p>")
  @as("RecordFormatType")
  recordFormatType: recordFormatType,
}
@ocaml.doc("<p>Describes CloudWatch logging option updates.</p>")
type cloudWatchLoggingOptionUpdate = {
  @ocaml.doc(
    "<p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled.</p>"
  )
  @as("RoleARNUpdate")
  roleARNUpdate: option<roleARN>,
  @ocaml.doc("<p>ARN of the CloudWatch log to receive application messages.</p>")
  @as("LogStreamARNUpdate")
  logStreamARNUpdate: option<logStreamARN>,
  @ocaml.doc("<p>ID of the CloudWatch logging option to update</p>")
  @as("CloudWatchLoggingOptionId")
  cloudWatchLoggingOptionId: id,
}
@ocaml.doc("<p>Description of the CloudWatch logging option.</p>")
type cloudWatchLoggingOptionDescription = {
  @ocaml.doc(
    "<p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled.</p>"
  )
  @as("RoleARN")
  roleARN: roleARN,
  @ocaml.doc("<p>ARN of the CloudWatch log to receive application messages.</p>")
  @as("LogStreamARN")
  logStreamARN: logStreamARN,
  @ocaml.doc("<p>ID of the CloudWatch logging option description.</p>")
  @as("CloudWatchLoggingOptionId")
  cloudWatchLoggingOptionId: option<id>,
}
@ocaml.doc("<p>Provides a description of CloudWatch logging options, including the log stream
            Amazon Resource Name (ARN) and the role ARN.</p>")
type cloudWatchLoggingOption = {
  @ocaml.doc("<p>IAM ARN of the role to use to send application messages. Note: To write application
            messages to CloudWatch, the IAM role that is used must have the
            <code>PutLogEvents</code> policy action enabled.</p>")
  @as("RoleARN")
  roleARN: roleARN,
  @ocaml.doc("<p>ARN of the CloudWatch log to receive application messages.</p>")
  @as("LogStreamARN")
  logStreamARN: logStreamARN,
}
@ocaml.doc("<p>Provides additional mapping information when the record format 
            uses delimiters, such as CSV. For example, the following sample records 
            use CSV format, where the records use the <i>'\\n'</i> as the row delimiter and a comma (\",\") as the column delimiter:
        </p>
        
        <p>
            <code>\"name1\", \"address1\"</code>
         </p>
        <p>
            <code>\"name2\", \"address2\"</code>
         </p>")
type csvmappingParameters = {
  @ocaml.doc(
    "<p>Column delimiter. For example, in a CSV format, a comma (\",\") is the typical column delimiter.</p>"
  )
  @as("RecordColumnDelimiter")
  recordColumnDelimiter: recordColumnDelimiter,
  @ocaml.doc(
    "<p>Row delimiter. For example, in a CSV format, <i>'\\n'</i> is the typical row delimiter.</p>"
  )
  @as("RecordRowDelimiter")
  recordRowDelimiter: recordRowDelimiter,
}
@ocaml.doc("<note>
            <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
         </note> 
        <p>Provides application summary information, including the application Amazon Resource Name (ARN), name, and status.</p>")
type applicationSummary = {
  @ocaml.doc("<p>Status of the application.</p>") @as("ApplicationStatus")
  applicationStatus: applicationStatus,
  @ocaml.doc("<p>ARN of the application.</p>") @as("ApplicationARN") applicationARN: resourceARN,
  @ocaml.doc("<p>Name of the application.</p>") @as("ApplicationName")
  applicationName: applicationName,
}
type tags = array<tag>
type recordColumns = array<recordColumn>
type parsedInputRecords = array<parsedInputRecord>
@ocaml.doc("<p>
            Describes updates to the output configuration identified by 
            the <code>OutputId</code>.
        </p>")
type outputUpdate = {
  @ocaml.doc(
    "<p>Describes the data format when records are written to the destination. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>.</p>"
  )
  @as("DestinationSchemaUpdate")
  destinationSchemaUpdate: option<destinationSchema>,
  @ocaml.doc("<p>Describes an AWS Lambda function as the destination for the output.</p>")
  @as("LambdaOutputUpdate")
  lambdaOutputUpdate: option<lambdaOutputUpdate>,
  @ocaml.doc("<p>Describes an Amazon Kinesis Firehose delivery stream as the destination for the
            output.</p>")
  @as("KinesisFirehoseOutputUpdate")
  kinesisFirehoseOutputUpdate: option<kinesisFirehoseOutputUpdate>,
  @ocaml.doc("<p>Describes an Amazon Kinesis stream as the destination for the output.</p>")
  @as("KinesisStreamsOutputUpdate")
  kinesisStreamsOutputUpdate: option<kinesisStreamsOutputUpdate>,
  @ocaml.doc("<p>If you want to specify a different in-application stream 
            for this output configuration, use this field to 
            specify the new in-application stream name.</p>")
  @as("NameUpdate")
  nameUpdate: option<inAppStreamName>,
  @ocaml.doc("<p>Identifies the specific output configuration that you want to update.</p>")
  @as("OutputId")
  outputId: id,
}
@ocaml.doc("<p>Describes the application output configuration, which includes  
            the in-application stream name and the destination where the stream data 
            is written. The destination can be an Amazon Kinesis stream or an  
            Amazon Kinesis Firehose delivery stream.
        </p>")
type outputDescription = {
  @ocaml.doc("<p>Data format used for writing data to the destination.</p>")
  @as("DestinationSchema")
  destinationSchema: option<destinationSchema>,
  @ocaml.doc("<p>Describes the AWS Lambda function configured as the destination where output is
            written.</p>")
  @as("LambdaOutputDescription")
  lambdaOutputDescription: option<lambdaOutputDescription>,
  @ocaml.doc("<p>Describes the Amazon Kinesis Firehose delivery stream configured as the 
            destination where output is written.</p>")
  @as("KinesisFirehoseOutputDescription")
  kinesisFirehoseOutputDescription: option<kinesisFirehoseOutputDescription>,
  @ocaml.doc("<p>Describes Amazon Kinesis stream configured as the 
            destination where output is written.</p>")
  @as("KinesisStreamsOutputDescription")
  kinesisStreamsOutputDescription: option<kinesisStreamsOutputDescription>,
  @ocaml.doc("<p>Name of the in-application stream configured as output.</p>") @as("Name")
  name: option<inAppStreamName>,
  @ocaml.doc("<p>A unique identifier for the output configuration.</p>") @as("OutputId")
  outputId: option<id>,
}
@ocaml.doc("<p>
            Describes application output configuration in which you identify 
            an in-application stream and a destination where you want the 
            in-application stream data to be written. The destination can be 
            an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream.
        </p>
        
        <p></p>
        <p>For limits on how many destinations an application can write and other 
            limitations, see 
            <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html\">Limits</a>. 
        </p>")
type output = {
  @ocaml.doc(
    "<p>Describes the data format when records are written to the destination. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>.</p>"
  )
  @as("DestinationSchema")
  destinationSchema: destinationSchema,
  @ocaml.doc("<p>Identifies an AWS Lambda function as the destination.</p>") @as("LambdaOutput")
  lambdaOutput: option<lambdaOutput>,
  @ocaml.doc("<p>Identifies an Amazon Kinesis Firehose delivery stream as the destination.</p>")
  @as("KinesisFirehoseOutput")
  kinesisFirehoseOutput: option<kinesisFirehoseOutput>,
  @ocaml.doc("<p>Identifies an Amazon Kinesis stream 
            as the destination.</p>")
  @as("KinesisStreamsOutput")
  kinesisStreamsOutput: option<kinesisStreamsOutput>,
  @ocaml.doc("<p>Name of the in-application stream.</p>") @as("Name") name: inAppStreamName,
}
@ocaml.doc("<p>When configuring application input 
            at the time of creating or updating an application, 
            provides additional mapping information specific to 
            the record format (such as JSON, CSV, or record fields delimited 
            by some delimiter) on the streaming source.</p>")
type mappingParameters = {
  @ocaml.doc("<p>Provides additional mapping information when the record format uses delimiters 
            (for example, CSV).</p>")
  @as("CSVMappingParameters")
  csvmappingParameters: option<csvmappingParameters>,
  @ocaml.doc(
    "<p>Provides additional mapping information when JSON is the record format on the streaming source.</p>"
  )
  @as("JSONMappingParameters")
  jsonmappingParameters: option<jsonmappingParameters>,
}
@ocaml.doc(
  "<p>Describes updates to an <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a>. </p>"
)
type inputProcessingConfigurationUpdate = {
  @ocaml.doc(
    "<p>Provides update information for an <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html\">InputLambdaProcessor</a>.</p>"
  )
  @as("InputLambdaProcessorUpdate")
  inputLambdaProcessorUpdate: inputLambdaProcessorUpdate,
}
@ocaml.doc("<p>Provides configuration information about an input processor. Currently, the only input processor available is 
            <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a>.</p>")
type inputProcessingConfigurationDescription = {
  @ocaml.doc(
    "<p>Provides configuration information about the associated <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessorDescription.html\">InputLambdaProcessorDescription</a>.</p>"
  )
  @as("InputLambdaProcessorDescription")
  inputLambdaProcessorDescription: option<inputLambdaProcessorDescription>,
}
@ocaml.doc("<p>Provides a description of a processor that is used to preprocess the records in the
            stream before being processed by your application code. Currently, the only input
            processor available is <a href=\"https://docs.aws.amazon.com/lambda/\">AWS
                Lambda</a>.</p>")
type inputProcessingConfiguration = {
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html\">InputLambdaProcessor</a> that is used to preprocess the records
            in the stream before being processed by your application code.</p>")
  @as("InputLambdaProcessor")
  inputLambdaProcessor: inputLambdaProcessor,
}
@ocaml.doc("<p>When you start your application, 
            you provide this configuration, which identifies the input source and the point 
            in the input source at which you want the application to start processing records.</p>")
type inputConfiguration = {
  @ocaml.doc("<p>Point at which you want the application to start processing 
            records from the streaming source.</p>")
  @as("InputStartingPositionConfiguration")
  inputStartingPositionConfiguration: inputStartingPositionConfiguration,
  @ocaml.doc("<p>Input source ID. You can get this ID by calling 
            the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation.</p>")
  @as("Id")
  id: id,
}
type cloudWatchLoggingOptions = array<cloudWatchLoggingOption>
type cloudWatchLoggingOptionUpdates = array<cloudWatchLoggingOptionUpdate>
type cloudWatchLoggingOptionDescriptions = array<cloudWatchLoggingOptionDescription>
type applicationSummaries = array<applicationSummary>
@ocaml.doc("<p>
            Describes the record format and relevant mapping information that 
            should be applied to schematize the records on the stream.
        </p>")
type recordFormat = {
  @ocaml.doc(
    "<p>When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.</p>"
  )
  @as("MappingParameters")
  mappingParameters: option<mappingParameters>,
  @ocaml.doc("<p>The type of record format.</p>") @as("RecordFormatType")
  recordFormatType: recordFormatType,
}
type outputs = array<output>
type outputUpdates = array<outputUpdate>
type outputDescriptions = array<outputDescription>
type inputConfigurations = array<inputConfiguration>
@ocaml.doc(
  "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"
)
type sourceSchema = {
  @ocaml.doc("<p>A list of <code>RecordColumn</code> objects.</p>") @as("RecordColumns")
  recordColumns: recordColumns,
  @ocaml.doc(
    "<p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>"
  )
  @as("RecordEncoding")
  recordEncoding: option<recordEncoding>,
  @ocaml.doc("<p>Specifies the format of the records on the streaming source.</p>")
  @as("RecordFormat")
  recordFormat: recordFormat,
}
@ocaml.doc("<p>Describes updates for the application's input schema.</p>")
type inputSchemaUpdate = {
  @ocaml.doc("<p>A list of <code>RecordColumn</code> objects. Each object describes the mapping 
            of the streaming source element to the corresponding column in the in-application stream. </p>")
  @as("RecordColumnUpdates")
  recordColumnUpdates: option<recordColumns>,
  @ocaml.doc(
    "<p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>"
  )
  @as("RecordEncodingUpdate")
  recordEncodingUpdate: option<recordEncoding>,
  @ocaml.doc("<p>Specifies the format of the records on the streaming source.</p>")
  @as("RecordFormatUpdate")
  recordFormatUpdate: option<recordFormat>,
}
@ocaml.doc(
  "<p>When you update a reference data source configuration for an application, this object provides all the updated values (such as the source bucket name and object key name), the in-application table name that is created, and updated mapping information that maps the data in the Amazon S3 object to the in-application reference table that is created.</p>"
)
type referenceDataSourceUpdate = {
  @ocaml.doc(
    "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream. </p>"
  )
  @as("ReferenceSchemaUpdate")
  referenceSchemaUpdate: option<sourceSchema>,
  @ocaml.doc(
    "<p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>"
  )
  @as("S3ReferenceDataSourceUpdate")
  s3ReferenceDataSourceUpdate: option<s3ReferenceDataSourceUpdate>,
  @ocaml.doc("<p>In-application table name that is created by this update.</p>")
  @as("TableNameUpdate")
  tableNameUpdate: option<inAppTableName>,
  @ocaml.doc("<p>ID of the reference data source being updated. You can use the 
            <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get this value.</p>")
  @as("ReferenceId")
  referenceId: id,
}
@ocaml.doc("<p>Describes the reference data source configured for an application.</p>")
type referenceDataSourceDescription = {
  @ocaml.doc(
    "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"
  )
  @as("ReferenceSchema")
  referenceSchema: option<sourceSchema>,
  @ocaml.doc(
    "<p>Provides the S3 bucket name, the object key name that contains the reference data. It also provides the Amazon Resource Name (ARN) of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application reference table.</p>"
  )
  @as("S3ReferenceDataSourceDescription")
  s3ReferenceDataSourceDescription: s3ReferenceDataSourceDescription,
  @ocaml.doc(
    "<p>The in-application table name created by the specific reference data source configuration.</p>"
  )
  @as("TableName")
  tableName: inAppTableName,
  @ocaml.doc("<p>ID of the reference data source. This is the ID 
            that Amazon Kinesis Analytics assigns when you add the reference data source 
            to your application using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html\">AddApplicationReferenceDataSource</a> operation.</p>")
  @as("ReferenceId")
  referenceId: id,
}
@ocaml.doc(
  "<p>Describes the reference data source by providing the source information (S3 bucket name and object key name), the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.</p>"
)
type referenceDataSource = {
  @ocaml.doc(
    "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"
  )
  @as("ReferenceSchema")
  referenceSchema: sourceSchema,
  @ocaml.doc("<p>Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.
            
            An Amazon Kinesis Analytics application loads reference data only once. If the data changes, you call the <code>UpdateApplication</code> operation to trigger reloading of data into your application. </p>")
  @as("S3ReferenceDataSource")
  s3ReferenceDataSource: option<s3ReferenceDataSource>,
  @ocaml.doc("<p>Name of the in-application table to create.</p>") @as("TableName")
  tableName: inAppTableName,
}
@ocaml.doc("<p>Describes updates to a specific input configuration (identified by the 
            <code>InputId</code> of an application). </p>")
type inputUpdate = {
  @ocaml.doc("<p>Describes the parallelism updates (the number in-application 
            streams Amazon Kinesis Analytics creates for the specific streaming source).</p>")
  @as("InputParallelismUpdate")
  inputParallelismUpdate: option<inputParallelismUpdate>,
  @ocaml.doc("<p>Describes the data format on the streaming source, and 
            how record elements on the streaming source map to columns of the in-application stream that is created.</p>")
  @as("InputSchemaUpdate")
  inputSchemaUpdate: option<inputSchemaUpdate>,
  @ocaml.doc("<p>If an Amazon Kinesis Firehose delivery stream is the streaming source to be
            updated, provides an updated stream ARN and IAM role ARN.</p>")
  @as("KinesisFirehoseInputUpdate")
  kinesisFirehoseInputUpdate: option<kinesisFirehoseInputUpdate>,
  @ocaml.doc("<p>If an Amazon Kinesis stream is the streaming source to be updated, provides an
            updated stream Amazon Resource Name (ARN) and IAM role ARN.</p>")
  @as("KinesisStreamsInputUpdate")
  kinesisStreamsInputUpdate: option<kinesisStreamsInputUpdate>,
  @ocaml.doc("<p>Describes updates for an input processing configuration.</p>")
  @as("InputProcessingConfigurationUpdate")
  inputProcessingConfigurationUpdate: option<inputProcessingConfigurationUpdate>,
  @ocaml.doc("<p>Name prefix for in-application streams that Amazon Kinesis Analytics creates 
            for the specific streaming source.</p>")
  @as("NamePrefixUpdate")
  namePrefixUpdate: option<inAppStreamName>,
  @ocaml.doc("<p>Input ID of the application input to be updated.</p>") @as("InputId") inputId: id,
}
@ocaml.doc("<p>Describes the application input configuration. 
            For more information, 
            see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. 
        </p>")
type inputDescription = {
  @ocaml.doc("<p>Point at which the application is configured to read from the input stream.</p>")
  @as("InputStartingPositionConfiguration")
  inputStartingPositionConfiguration: option<inputStartingPositionConfiguration>,
  @ocaml.doc("<p>Describes the configured parallelism (number of in-application streams 
            mapped to the streaming source).</p>")
  @as("InputParallelism")
  inputParallelism: option<inputParallelism>,
  @ocaml.doc("<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding 
            columns in the in-application stream that is being created. </p>")
  @as("InputSchema")
  inputSchema: option<sourceSchema>,
  @ocaml.doc("<p>If an Amazon Kinesis Firehose delivery stream is configured as a streaming source,
            provides the delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics
            to access the stream on your behalf.</p>")
  @as("KinesisFirehoseInputDescription")
  kinesisFirehoseInputDescription: option<kinesisFirehoseInputDescription>,
  @ocaml.doc("<p>If an Amazon Kinesis stream is configured as streaming source, provides Amazon
            Kinesis stream's Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis
            Analytics to access the stream on your behalf.</p>")
  @as("KinesisStreamsInputDescription")
  kinesisStreamsInputDescription: option<kinesisStreamsInputDescription>,
  @ocaml.doc(
    "<p>The description of the preprocessor that executes on records in this input before the application's code is run.</p>"
  )
  @as("InputProcessingConfigurationDescription")
  inputProcessingConfigurationDescription: option<inputProcessingConfigurationDescription>,
  @ocaml.doc("<p>Returns the in-application stream names that are mapped to the 
            stream source.</p>")
  @as("InAppStreamNames")
  inAppStreamNames: option<inAppStreamNames>,
  @ocaml.doc("<p>In-application name prefix.</p>") @as("NamePrefix")
  namePrefix: option<inAppStreamName>,
  @ocaml.doc("<p>Input ID associated with the application input. 
            This is the ID that Amazon Kinesis Analytics assigns to each 
            input configuration you add to your application. </p>")
  @as("InputId")
  inputId: option<id>,
}
@ocaml.doc("<p>When you configure the application input, you specify the streaming source,  the 
            in-application stream name that is created, and the mapping between the two. 
            For more information, 
            see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. </p>")
type input = {
  @ocaml.doc("<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.</p>
        <p>Also used to describe the format of the reference data source.</p>")
  @as("InputSchema")
  inputSchema: sourceSchema,
  @ocaml.doc("<p>Describes the number of in-application streams to create. </p>
         <p>Data from your source is routed to these in-application input streams.</p>
        <p>    (see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>.</p>")
  @as("InputParallelism")
  inputParallelism: option<inputParallelism>,
  @ocaml.doc("<p>If the streaming source is an Amazon Kinesis Firehose delivery stream, identifies
            the delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics to
            access the stream on your behalf.</p>
        <p>Note: Either <code>KinesisStreamsInput</code> or <code>KinesisFirehoseInput</code> is required.</p>")
  @as("KinesisFirehoseInput")
  kinesisFirehoseInput: option<kinesisFirehoseInput>,
  @ocaml.doc("<p>If the streaming source is an Amazon Kinesis stream, 
            identifies the stream's Amazon Resource Name (ARN) and an IAM role 
            that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
        <p>Note: Either <code>KinesisStreamsInput</code> or <code>KinesisFirehoseInput</code> is required.</p>")
  @as("KinesisStreamsInput")
  kinesisStreamsInput: option<kinesisStreamsInput>,
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a> for the input. An input
            processor transforms records as they are received from the stream, before the
            application's SQL code executes. Currently, the only input processing configuration
            available is <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html\">InputLambdaProcessor</a>.</p>")
  @as("InputProcessingConfiguration")
  inputProcessingConfiguration: option<inputProcessingConfiguration>,
  @ocaml.doc("<p>Name prefix to use when creating an in-application stream. Suppose that you specify
            a prefix \"MyInApplicationStream.\" Amazon Kinesis Analytics then creates one or more (as
            per the <code>InputParallelism</code> count you specified) in-application streams with
            names \"MyInApplicationStream_001,\" \"MyInApplicationStream_002,\" and so on. </p>")
  @as("NamePrefix")
  namePrefix: inAppStreamName,
}
type referenceDataSourceUpdates = array<referenceDataSourceUpdate>
type referenceDataSourceDescriptions = array<referenceDataSourceDescription>
type inputs = array<input>
type inputUpdates = array<inputUpdate>
type inputDescriptions = array<inputDescription>
@ocaml.doc("<p>Describes updates to apply to an existing Amazon Kinesis Analytics application.</p>")
type applicationUpdate = {
  @ocaml.doc("<p>Describes application CloudWatch logging option updates.</p>")
  @as("CloudWatchLoggingOptionUpdates")
  cloudWatchLoggingOptionUpdates: option<cloudWatchLoggingOptionUpdates>,
  @ocaml.doc("<p>Describes application reference data source updates.</p>")
  @as("ReferenceDataSourceUpdates")
  referenceDataSourceUpdates: option<referenceDataSourceUpdates>,
  @ocaml.doc("<p>Describes application output configuration updates.</p>") @as("OutputUpdates")
  outputUpdates: option<outputUpdates>,
  @ocaml.doc("<p>Describes application code updates.</p>") @as("ApplicationCodeUpdate")
  applicationCodeUpdate: option<applicationCode>,
  @ocaml.doc("<p>Describes application input configuration updates.</p>") @as("InputUpdates")
  inputUpdates: option<inputUpdates>,
}
@ocaml.doc("<note>
            <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
         </note> 
        <p>Provides a description of the application, including the application Amazon Resource Name (ARN), status, latest version, and input and output configuration.</p>")
type applicationDetail = {
  @ocaml.doc("<p>Provides the current application version.</p>") @as("ApplicationVersionId")
  applicationVersionId: applicationVersionId,
  @ocaml.doc(
    "<p>Returns the application code that you provided to perform data analysis on any of the in-application streams in your application.</p>"
  )
  @as("ApplicationCode")
  applicationCode: option<applicationCode>,
  @ocaml.doc("<p>Describes the CloudWatch log streams that are configured to receive application
            messages. For more information about using CloudWatch log streams with Amazon Kinesis
            Analytics applications, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html\">Working with Amazon
                CloudWatch Logs</a>. </p>")
  @as("CloudWatchLoggingOptionDescriptions")
  cloudWatchLoggingOptionDescriptions: option<cloudWatchLoggingOptionDescriptions>,
  @ocaml.doc("<p>Describes reference data sources configured for the application. 
            
            For more information, 
            see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. 
            
        </p>")
  @as("ReferenceDataSourceDescriptions")
  referenceDataSourceDescriptions: option<referenceDataSourceDescriptions>,
  @ocaml.doc("<p>Describes the application output configuration.
            For more information, 
            see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>. 
            
        </p>")
  @as("OutputDescriptions")
  outputDescriptions: option<outputDescriptions>,
  @ocaml.doc("<p>Describes the application input configuration. 
            For more information, 
            see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. 
            
        </p>")
  @as("InputDescriptions")
  inputDescriptions: option<inputDescriptions>,
  @ocaml.doc("<p>Time stamp when the application was last updated.</p>") @as("LastUpdateTimestamp")
  lastUpdateTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Time stamp when the application version was created.</p>") @as("CreateTimestamp")
  createTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Status of the application.</p>") @as("ApplicationStatus")
  applicationStatus: applicationStatus,
  @ocaml.doc("<p>ARN of the application.</p>") @as("ApplicationARN") applicationARN: resourceARN,
  @ocaml.doc("<p>Description of the application.</p>") @as("ApplicationDescription")
  applicationDescription: option<applicationDescription>,
  @ocaml.doc("<p>Name of the application.</p>") @as("ApplicationName")
  applicationName: applicationName,
}
@ocaml.doc("<fullname>Amazon Kinesis Analytics</fullname>
        <p>
            <b>Overview</b>
         </p>
        <note>
            <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
         </note> 
        <p>This is the <i>Amazon Kinesis Analytics v1 API Reference</i>. 
            The Amazon Kinesis Analytics Developer Guide provides additional information. 
            </p>")
module StopApplication = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Name of the running application to stop.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "StopApplicationCommand"
  let make = (~applicationName, ()) => new({applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplicationReferenceDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>ID of the reference data source. When you add a reference data source to your 
            application using the 
            <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html\">AddApplicationReferenceDataSource</a>, Amazon Kinesis Analytics assigns an ID. 
            You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the reference ID.
        </p>")
    @as("ReferenceId")
    referenceId: id,
    @ocaml.doc("<p>Version of the application.  
            You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current application version.
            If the version specified 
            is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>Name of an existing application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationReferenceDataSourceCommand"
  let make = (~referenceId, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({
      referenceId: referenceId,
      currentApplicationVersionId: currentApplicationVersionId,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplicationOutput = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The ID of the configuration to delete. 
            Each output configuration that is added to the application, either when the application is 
            created or later using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationOutput.html\">AddApplicationOutput</a> operation, has a unique ID. 
            You need to provide the ID to uniquely identify the output configuration that you want to 
            delete from the application configuration. 
            You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the specific
            <code>OutputId</code>. 
        </p>")
    @as("OutputId")
    outputId: id,
    @ocaml.doc("<p>Amazon Kinesis Analytics application version. 
            You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current application version.
            If the version specified is not the current version, the 
            <code>ConcurrentModificationException</code> is returned.
        </p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>Amazon Kinesis Analytics application name.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationOutputCommand"
  let make = (~outputId, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({
      outputId: outputId,
      currentApplicationVersionId: currentApplicationVersionId,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplicationInputProcessingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the input configuration from which to delete the input processing
            configuration. You can get a list of the input IDs for an application by using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation.</p>")
    @as("InputId")
    inputId: id,
    @ocaml.doc("<p>The version ID of the Kinesis Analytics application.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>The Kinesis Analytics application name.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationInputProcessingConfigurationCommand"
  let make = (~inputId, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({
      inputId: inputId,
      currentApplicationVersionId: currentApplicationVersionId,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplicationCloudWatchLoggingOption = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>CloudWatchLoggingOptionId</code> of the CloudWatch logging option to
            delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation. </p>")
    @as("CloudWatchLoggingOptionId")
    cloudWatchLoggingOptionId: id,
    @ocaml.doc("<p>The version ID of the Kinesis Analytics application.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>The Kinesis Analytics application name.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationCloudWatchLoggingOptionCommand"
  let make = (~cloudWatchLoggingOptionId, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({
      cloudWatchLoggingOptionId: cloudWatchLoggingOptionId,
      currentApplicationVersionId: currentApplicationVersionId,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplication = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
            You can use the <code>DescribeApplication</code> operation to get this value.
        </p>")
    @as("CreateTimestamp")
    createTimestamp: timestamp_,
    @ocaml.doc("<p>Name of the Amazon Kinesis Analytics application to delete.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationCommand"
  let make = (~createTimestamp, ~applicationName, ()) =>
    new({createTimestamp: createTimestamp, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of keys of tags to remove from the specified application.</p>")
    @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc("<p>The ARN of the Kinesis Analytics application from which to remove the tags.</p>")
    @as("ResourceARN")
    resourceARN: kinesisAnalyticsARN,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddApplicationCloudWatchLoggingOption = {
  type t
  type request = {
    @ocaml.doc("<p>Provides the CloudWatch log stream Amazon Resource Name (ARN) and the IAM role ARN.
            Note: To write application messages to CloudWatch, the IAM role that is used must have
            the <code>PutLogEvents</code> policy action enabled.</p>")
    @as("CloudWatchLoggingOption")
    cloudWatchLoggingOption: cloudWatchLoggingOption,
    @ocaml.doc("<p>The version ID of the Kinesis Analytics application.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>The Kinesis Analytics application name.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "AddApplicationCloudWatchLoggingOptionCommand"
  let make = (~cloudWatchLoggingOption, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({
      cloudWatchLoggingOption: cloudWatchLoggingOption,
      currentApplicationVersionId: currentApplicationVersionId,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The key-value tags to assign to the application.</p>") @as("Tags") tags: tags,
    @ocaml.doc("<p>The ARN of the application to assign the tags.</p>") @as("ResourceARN")
    resourceARN: kinesisAnalyticsARN,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the application for which to retrieve tags.</p>") @as("ResourceARN")
    resourceARN: kinesisAnalyticsARN,
  }
  type response = {
    @ocaml.doc("<p>The key-value tags assigned to the application.</p>") @as("Tags")
    tags: option<tags>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplications = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>Name of the application to start the list with. When using pagination to retrieve the list, you don't need to specify this parameter in the first request. However, in subsequent requests, you add the last application name from the previous response to get the next page of applications.</p>"
    )
    @as("ExclusiveStartApplicationName")
    exclusiveStartApplicationName: option<applicationName>,
    @ocaml.doc("<p>Maximum number of applications to list.</p>") @as("Limit")
    limit: option<listApplicationsInputLimit>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>Returns true if there are more applications to retrieve.</p>")
    @as("HasMoreApplications")
    hasMoreApplications: booleanObject,
    @ocaml.doc("<p>List of <code>ApplicationSummary</code> objects. </p>")
    @as("ApplicationSummaries")
    applicationSummaries: applicationSummaries,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "ListApplicationsCommand"
  let make = (~exclusiveStartApplicationName=?, ~limit=?, ()) =>
    new({exclusiveStartApplicationName: exclusiveStartApplicationName, limit: limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddApplicationOutput = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An array of objects, each describing one output configuration. In the output
            configuration, you specify the name of an in-application stream, a destination (that is,
            an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an AWS Lambda
            function), and record the formation to use when writing to the destination.</p>")
    @as("Output")
    output: output,
    @ocaml.doc("<p>Version of the application to which you want to add the output configuration. You
            can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current
            application version. If the version specified is not the current version, the
                <code>ConcurrentModificationException</code> is returned. </p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>Name of the application to which you want to add the output configuration.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "AddApplicationOutputCommand"
  let make = (~output, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({
      output: output,
      currentApplicationVersionId: currentApplicationVersionId,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddApplicationInputProcessingConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a> to add to the application.</p>"
    )
    @as("InputProcessingConfiguration")
    inputProcessingConfiguration: inputProcessingConfiguration,
    @ocaml.doc("<p>The ID of the input configuration to add the input processing configuration to. You
            can get a list of the input IDs for an application using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation.</p>")
    @as("InputId")
    inputId: id,
    @ocaml.doc("<p>Version of the application to which you want to add the input processing configuration. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> 
            operation to get the current application version.  If the version specified is not the current version, the 
            <code>ConcurrentModificationException</code> is returned.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc(
      "<p>Name of the application to which you want to add the input processing configuration.</p>"
    )
    @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "AddApplicationInputProcessingConfigurationCommand"
  let make = (
    ~inputProcessingConfiguration,
    ~inputId,
    ~currentApplicationVersionId,
    ~applicationName,
    (),
  ) =>
    new({
      inputProcessingConfiguration: inputProcessingConfiguration,
      inputId: inputId,
      currentApplicationVersionId: currentApplicationVersionId,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartApplication = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>Identifies the specific input, by ID, that the application starts consuming. Amazon Kinesis Analytics starts reading the streaming source associated with the input. You can also specify where in the streaming source you want Amazon Kinesis Analytics to start reading.</p>"
    )
    @as("InputConfigurations")
    inputConfigurations: inputConfigurations,
    @ocaml.doc("<p>Name of the application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "StartApplicationCommand"
  let make = (~inputConfigurations, ~applicationName, ()) =>
    new({inputConfigurations: inputConfigurations, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DiscoverInputSchema = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a> to use to preprocess the records before discovering the schema of the records.</p>"
    )
    @as("InputProcessingConfiguration")
    inputProcessingConfiguration: option<inputProcessingConfiguration>,
    @ocaml.doc("<p>Specify this parameter to discover a schema from data in an Amazon S3
            object.</p>")
    @as("S3Configuration")
    s3Configuration: option<s3Configuration>,
    @ocaml.doc(
      "<p>Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.</p>"
    )
    @as("InputStartingPositionConfiguration")
    inputStartingPositionConfiguration: option<inputStartingPositionConfiguration>,
    @ocaml.doc(
      "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.</p>"
    )
    @as("RoleARN")
    roleARN: option<roleARN>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the streaming source.</p>") @as("ResourceARN")
    resourceARN: option<resourceARN>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>Raw stream data that was sampled to infer the schema.</p>")
    @as("RawInputRecords")
    rawInputRecords: option<rawInputRecords>,
    @ocaml.doc(
      "<p>Stream data that was modified by the processor specified in the <code>InputProcessingConfiguration</code> parameter.</p>"
    )
    @as("ProcessedInputRecords")
    processedInputRecords: option<processedInputRecords>,
    @ocaml.doc(
      "<p>An array of elements, where each element corresponds to a row in a stream record (a stream record can have more than one row).</p>"
    )
    @as("ParsedInputRecords")
    parsedInputRecords: option<parsedInputRecords>,
    @ocaml.doc(
      "<p>Schema inferred from the streaming source. It identifies the format of the data in the streaming source and how each data element maps to corresponding columns in the in-application stream that you can create.</p>"
    )
    @as("InputSchema")
    inputSchema: option<sourceSchema>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DiscoverInputSchemaCommand"
  let make = (
    ~inputProcessingConfiguration=?,
    ~s3Configuration=?,
    ~inputStartingPositionConfiguration=?,
    ~roleARN=?,
    ~resourceARN=?,
    (),
  ) =>
    new({
      inputProcessingConfiguration: inputProcessingConfiguration,
      s3Configuration: s3Configuration,
      inputStartingPositionConfiguration: inputStartingPositionConfiguration,
      roleARN: roleARN,
      resourceARN: resourceARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddApplicationReferenceDataSource = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>The reference data source can be an object in your Amazon S3 bucket. Amazon Kinesis Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created. You must also provide an IAM role with the necessary permissions that Amazon Kinesis Analytics can assume to read the object from your S3 bucket on your behalf.</p>"
    )
    @as("ReferenceDataSource")
    referenceDataSource: referenceDataSource,
    @ocaml.doc("<p>Version of the application for which you are adding the reference data source. 
            You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current application version.
            If the version specified is not the current version, the 
            <code>ConcurrentModificationException</code> is returned.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>Name of an existing application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "AddApplicationReferenceDataSourceCommand"
  let make = (~referenceDataSource, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({
      referenceDataSource: referenceDataSource,
      currentApplicationVersionId: currentApplicationVersionId,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddApplicationInput = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_Input.html\">Input</a> to add.</p>"
    )
    @as("Input")
    input: input,
    @ocaml.doc("<p>Current version of your Amazon Kinesis Analytics application. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation 
            to find the current application version.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc(
      "<p>Name of your existing Amazon Kinesis Analytics application to which you want to add the streaming source.</p>"
    )
    @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "AddApplicationInputCommand"
  let make = (~input, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({
      input: input,
      currentApplicationVersionId: currentApplicationVersionId,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateApplication = {
  type t
  @ocaml.doc("<p>TBD</p>")
  type request = {
    @ocaml.doc("<p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.
        For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html\">Using Tagging</a>.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>One or more SQL statements that read input data, transform it, and generate output.
            For example, you can write a SQL statement that reads data from one in-application
            stream, generates a running average of the number of advertisement clicks by vendor, and
            insert resulting rows in another in-application stream using pumps. For more information
            about the typical pattern, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html\">Application
                Code</a>. </p>
        
        <p>You can provide such series of SQL statements, 
            where output of one statement can be
            used as the input for the next statement. You store 
            intermediate results by creating in-application streams and pumps.</p>
        
        <p>Note that the application code must create the streams with names 
            specified in the <code>Outputs</code>. For example, 
            if your <code>Outputs</code> defines output streams named 
            <code>ExampleOutputStream1</code> and <code>ExampleOutputStream2</code>,
            then your application code must create these streams. </p>")
    @as("ApplicationCode")
    applicationCode: option<applicationCode>,
    @ocaml.doc("<p>Use this parameter to configure a CloudWatch log stream to monitor application
            configuration errors. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html\">Working with Amazon
                CloudWatch Logs</a>.</p>")
    @as("CloudWatchLoggingOptions")
    cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
    @ocaml.doc("<p>You can configure application output to write data from any of the in-application streams to up to three destinations.</p>
        <p>These destinations can be Amazon Kinesis streams, Amazon Kinesis Firehose delivery
            streams, AWS Lambda destinations, or any combination of the three.</p>
        <p>In the configuration, you specify the in-application stream name, the destination stream or Lambda function Amazon Resource Name (ARN), and the format to use when writing data. You must also provide an IAM role that Amazon Kinesis Analytics can assume to write to the 
            destination stream or Lambda function on your behalf.</p>
        <p>In the output configuration, you also provide the output stream or Lambda function ARN. For stream destinations, you provide the format
            of data in the stream (for example, JSON, CSV). You also must provide an IAM role that
            Amazon Kinesis Analytics can assume to write to the stream or Lambda function on your behalf.</p>")
    @as("Outputs")
    outputs: option<outputs>,
    @ocaml.doc("<p>Use this parameter to configure the application input.</p>
        <p>You can configure your application to receive input from a single streaming source. In this configuration, you map this streaming source to an in-application stream that is created. Your application code can then query the in-application stream like a table (you can think of it as a constantly updating table).</p>
        <p>For the streaming source, you provide its Amazon Resource Name (ARN) and format of
            data on the stream (for example, JSON, CSV, etc.). You also must provide an IAM role
            that Amazon Kinesis Analytics can assume to read this stream on your behalf.</p>
        <p>To create the in-application stream, you need to specify a schema to transform your data into a schematized version used in SQL. In the schema, you provide the necessary mapping of the data elements in the streaming source to record columns in the in-app stream.</p>")
    @as("Inputs")
    inputs: option<inputs>,
    @ocaml.doc("<p>Summary description of the application.</p>") @as("ApplicationDescription")
    applicationDescription: option<applicationDescription>,
    @ocaml.doc(
      "<p>Name of your Amazon Kinesis Analytics application (for example, <code>sample-app</code>).</p>"
    )
    @as("ApplicationName")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>TBD</p>")
  type response = {
    @ocaml.doc("<p>In response to your <code>CreateApplication</code> request, Amazon Kinesis Analytics returns a 
            response with a summary of the application it created, including the application Amazon Resource Name (ARN), 
            name, and status.</p>")
    @as("ApplicationSummary")
    applicationSummary: applicationSummary,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "CreateApplicationCommand"
  let make = (
    ~applicationName,
    ~tags=?,
    ~applicationCode=?,
    ~cloudWatchLoggingOptions=?,
    ~outputs=?,
    ~inputs=?,
    ~applicationDescription=?,
    (),
  ) =>
    new({
      tags: tags,
      applicationCode: applicationCode,
      cloudWatchLoggingOptions: cloudWatchLoggingOptions,
      outputs: outputs,
      inputs: inputs,
      applicationDescription: applicationDescription,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>Describes application updates.</p>") @as("ApplicationUpdate")
    applicationUpdate: applicationUpdate,
    @ocaml.doc("<p>The current application version ID. You can use the 
            <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get this value.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>Name of the Amazon Kinesis Analytics application to update.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "UpdateApplicationCommand"
  let make = (~applicationUpdate, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({
      applicationUpdate: applicationUpdate,
      currentApplicationVersionId: currentApplicationVersionId,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeApplication = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Name of the application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc(
      "<p>Provides a description of the application, such as the application Amazon Resource Name (ARN), status, latest version, and input and output configuration details.</p>"
    )
    @as("ApplicationDetail")
    applicationDetail: applicationDetail,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DescribeApplicationCommand"
  let make = (~applicationName, ()) => new({applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
