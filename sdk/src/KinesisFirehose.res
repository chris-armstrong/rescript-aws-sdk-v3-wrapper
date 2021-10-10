type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-firehose") @new
external createClient: unit => awsServiceClient = "KinesisFirehoseClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type username = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type splunkS3BackupMode = [@as("AllEvents") #AllEvents | @as("FailedEventsOnly") #FailedEventsOnly]
type splunkRetryDurationInSeconds = int
type sizeInMBs = int
type s3BackupMode = [@as("Enabled") #Enabled | @as("Disabled") #Disabled]
type roleARN = string
type redshiftS3BackupMode = [@as("Enabled") #Enabled | @as("Disabled") #Disabled]
type redshiftRetryDurationInSeconds = int
type putResponseRecordId = string
type proportion = float
type processorType = [@as("Lambda") #Lambda]
type processorParameterValue = string
type processorParameterName = [
  | @as("BufferIntervalInSeconds") #BufferIntervalInSeconds
  | @as("BufferSizeInMBs") #BufferSizeInMBs
  | @as("RoleArn") #RoleArn
  | @as("NumberOfRetries") #NumberOfRetries
  | @as("LambdaArn") #LambdaArn
]
type prefix = string
type password = string
type parquetWriterVersion = [@as("V2") #V2 | @as("V1") #V1]
type parquetPageSizeBytes = int
type parquetCompression = [
  | @as("SNAPPY") #SNAPPY
  | @as("GZIP") #GZIP
  | @as("UNCOMPRESSED") #UNCOMPRESSED
]
type orcStripeSizeBytes = int
type orcRowIndexStride = int
type orcFormatVersion = [@as("V0_12") #V0_12 | @as("V0_11") #V0_11]
type orcCompression = [@as("SNAPPY") #SNAPPY | @as("ZLIB") #ZLIB | @as("NONE") #NONE]
type nonNegativeIntegerObject = int
type nonEmptyStringWithoutWhitespace = string
type nonEmptyString = string
type noEncryptionConfig = [@as("NoEncryption") #NoEncryption]
type logStreamName = string
type logGroupName = string
type listTagsForDeliveryStreamInputLimit = int
type listDeliveryStreamsInputLimit = int
type kinesisStreamARN = string
type keyType = [
  | @as("CUSTOMER_MANAGED_CMK") #CUSTOMER_MANAGED_CMK
  | @as("AWS_OWNED_CMK") #AWS_OWNED_CMK
]
type intervalInSeconds = int
type httpEndpointUrl = string
type httpEndpointS3BackupMode = [@as("AllData") #AllData | @as("FailedDataOnly") #FailedDataOnly]
type httpEndpointRetryDurationInSeconds = int
type httpEndpointName = string
type httpEndpointBufferingSizeInMBs = int
type httpEndpointBufferingIntervalInSeconds = int
type httpEndpointAttributeValue = string
type httpEndpointAttributeName = string
type httpEndpointAccessKey = string
type hectoken = string
type hecendpointType = [@as("Event") #Event | @as("Raw") #Raw]
type hecendpoint = string
type hecacknowledgmentTimeoutInSeconds = int
type errorOutputPrefix = string
type errorMessage = string
type errorCode = string
type elasticsearchTypeName = string
type elasticsearchS3BackupMode = [
  | @as("AllDocuments") #AllDocuments
  | @as("FailedDocumentsOnly") #FailedDocumentsOnly
]
type elasticsearchRetryDurationInSeconds = int
type elasticsearchIndexRotationPeriod = [
  | @as("OneMonth") #OneMonth
  | @as("OneWeek") #OneWeek
  | @as("OneDay") #OneDay
  | @as("OneHour") #OneHour
  | @as("NoRotation") #NoRotation
]
type elasticsearchIndexName = string
type elasticsearchDomainARN = string
type elasticsearchClusterEndpoint = string
type elasticsearchBufferingSizeInMBs = int
type elasticsearchBufferingIntervalInSeconds = int
type destinationId = string
type describeDeliveryStreamInputLimit = int
type deliveryStreamVersionId = string
type deliveryStreamType = [
  | @as("KinesisStreamAsSource") #KinesisStreamAsSource
  | @as("DirectPut") #DirectPut
]
type deliveryStreamStatus = [
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING_FAILED") #DELETING_FAILED
  | @as("DELETING") #DELETING
  | @as("CREATING_FAILED") #CREATING_FAILED
  | @as("CREATING") #CREATING
]
type deliveryStreamName = string
type deliveryStreamFailureType = [
  | @as("UNKNOWN_ERROR") #UNKNOWN_ERROR
  | @as("SECURITY_GROUP_ACCESS_DENIED") #SECURITY_GROUP_ACCESS_DENIED
  | @as("SUBNET_ACCESS_DENIED") #SUBNET_ACCESS_DENIED
  | @as("ENI_ACCESS_DENIED") #ENI_ACCESS_DENIED
  | @as("SECURITY_GROUP_NOT_FOUND") #SECURITY_GROUP_NOT_FOUND
  | @as("SUBNET_NOT_FOUND") #SUBNET_NOT_FOUND
  | @as("DELETE_ENI_FAILED") #DELETE_ENI_FAILED
  | @as("CREATE_ENI_FAILED") #CREATE_ENI_FAILED
  | @as("KMS_OPT_IN_REQUIRED") #KMS_OPT_IN_REQUIRED
  | @as("KMS_KEY_NOT_FOUND") #KMS_KEY_NOT_FOUND
  | @as("INVALID_KMS_KEY") #INVALID_KMS_KEY
  | @as("DISABLED_KMS_KEY") #DISABLED_KMS_KEY
  | @as("KMS_ACCESS_DENIED") #KMS_ACCESS_DENIED
  | @as("CREATE_KMS_GRANT_FAILED") #CREATE_KMS_GRANT_FAILED
  | @as("RETIRE_KMS_GRANT_FAILED") #RETIRE_KMS_GRANT_FAILED
]
type deliveryStreamEncryptionStatus = [
  | @as("DISABLING_FAILED") #DISABLING_FAILED
  | @as("DISABLING") #DISABLING
  | @as("DISABLED") #DISABLED
  | @as("ENABLING_FAILED") #ENABLING_FAILED
  | @as("ENABLING") #ENABLING
  | @as("ENABLED") #ENABLED
]
type deliveryStreamARN = string
type deliveryStartTimestamp = Js.Date.t
type dataTableName = string
type dataTableColumns = string
type data = NodeJs.Buffer.t
type copyOptions = string
type contentEncoding = [@as("GZIP") #GZIP | @as("NONE") #NONE]
type compressionFormat = [
  | @as("HADOOP_SNAPPY") #HADOOP_SNAPPY
  | @as("Snappy") #Snappy
  | @as("ZIP") #ZIP
  | @as("GZIP") #GZIP
  | @as("UNCOMPRESSED") #UNCOMPRESSED
]
type clusterJDBCURL = string
type bucketARN = string
type booleanObject = bool
type blockSizeBytes = int
type awskmskeyARN = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Metadata that you can assign to a delivery stream, consisting of a key-value
         pair.</p>")
type tag = {
  @ocaml.doc("<p>An optional string, which you can use to describe or define the tag. Maximum length:
         256 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - %
         @</p>")
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>A unique identifier for the tag. Maximum length: 128 characters. Valid characters:
         Unicode letters, digits, white space, _ . / = + - % @</p>")
  @as("Key")
  key: tagKey,
}
type subnetIdList = array<nonEmptyStringWithoutWhitespace>
@ocaml.doc("<p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver
         documents to Splunk, or if it doesn't receive an acknowledgment from Splunk.</p>")
type splunkRetryOptions = {
  @ocaml.doc("<p>The total amount of time that Kinesis Data Firehose spends on retries. This duration
         starts after the initial attempt to send data to Splunk fails. It doesn't include the
         periods during which Kinesis Data Firehose waits for acknowledgment from Splunk after each
         attempt.</p>")
  @as("DurationInSeconds")
  durationInSeconds: option<splunkRetryDurationInSeconds>,
}
type securityGroupIdList = array<nonEmptyStringWithoutWhitespace>
@ocaml.doc("<p>Specifies the schema to which you want Kinesis Data Firehose to configure your data
         before it writes it to Amazon S3. This parameter is required if <code>Enabled</code> is set
         to true.</p>")
type schemaConfiguration = {
  @ocaml.doc("<p>Specifies the table version for the output data schema. If you don't specify this
         version ID, or if you set it to <code>LATEST</code>, Kinesis Data Firehose uses the most
         recent version. This means that any updates to the table are automatically picked
         up.</p>")
  @as("VersionId")
  versionId: option<nonEmptyStringWithoutWhitespace>,
  @ocaml.doc("<p>If you don't specify an AWS Region, the default is the current Region.</p>")
  @as("Region")
  region: option<nonEmptyStringWithoutWhitespace>,
  @ocaml.doc("<p>Specifies the AWS Glue table that contains the column information that constitutes your
         data schema.</p>")
  @as("TableName")
  tableName: option<nonEmptyStringWithoutWhitespace>,
  @ocaml.doc("<p>Specifies the name of the AWS Glue database that contains the schema for the output
         data.</p>")
  @as("DatabaseName")
  databaseName: option<nonEmptyStringWithoutWhitespace>,
  @ocaml.doc("<p>The ID of the AWS Glue Data Catalog. If you don't supply this, the AWS account ID is
         used by default.</p>")
  @as("CatalogId")
  catalogId: option<nonEmptyStringWithoutWhitespace>,
  @ocaml.doc("<p>The role that Kinesis Data Firehose can use to access AWS Glue. This role must be in
         the same account you use for Kinesis Data Firehose. Cross-account roles aren't
         allowed.</p>")
  @as("RoleARN")
  roleARN: option<nonEmptyStringWithoutWhitespace>,
}
@ocaml.doc("<p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver
         documents to Amazon Redshift.</p>")
type redshiftRetryOptions = {
  @ocaml.doc("<p>The length of time during which Kinesis Data Firehose retries delivery after a
         failure, starting from the initial request and including the first attempt. The default
         value is 3600 seconds (60 minutes). Kinesis Data Firehose does not retry if the value of
            <code>DurationInSeconds</code> is 0 (zero) or if the first delivery attempt takes longer
         than the current value.</p>")
  @as("DurationInSeconds")
  durationInSeconds: option<redshiftRetryDurationInSeconds>,
}
@ocaml.doc("<p>The unit of data in a delivery stream.</p>")
type record = {
  @ocaml.doc("<p>The data blob, which is base64-encoded when the blob is serialized. The maximum size
         of the data blob, before base64-encoding, is 1,000 KiB.</p>")
  @as("Data")
  data: data,
}
@ocaml.doc("<p>Contains the result for an individual record from a <a>PutRecordBatch</a>
         request. If the record is successfully added to your delivery stream, it receives a record
         ID. If the record fails to be added to your delivery stream, the result includes an error
         code and an error message.</p>")
type putRecordBatchResponseEntry = {
  @ocaml.doc("<p>The error message for an individual record result.</p>") @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code for an individual record result.</p>") @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The ID of the record.</p>") @as("RecordId") recordId: option<putResponseRecordId>,
}
@ocaml.doc("<p>Describes the processor parameter.</p>")
type processorParameter = {
  @ocaml.doc("<p>The parameter value.</p>") @as("ParameterValue")
  parameterValue: processorParameterValue,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("ParameterName")
  parameterName: processorParameterName,
}
@ocaml.doc("<p>A serializer to use for converting data to the Parquet format before storing it in
         Amazon S3. For more information, see <a href=\"https://parquet.apache.org/documentation/latest/\">Apache Parquet</a>.</p>")
type parquetSerDe = {
  @ocaml.doc("<p>Indicates the version of row format to output. The possible values are <code>V1</code>
         and <code>V2</code>. The default is <code>V1</code>.</p>")
  @as("WriterVersion")
  writerVersion: option<parquetWriterVersion>,
  @ocaml.doc("<p>The maximum amount of padding to apply. This is useful if you intend to copy the data
         from Amazon S3 to HDFS before querying. The default is 0.</p>")
  @as("MaxPaddingBytes")
  maxPaddingBytes: option<nonNegativeIntegerObject>,
  @ocaml.doc("<p>Indicates whether to enable dictionary compression.</p>")
  @as("EnableDictionaryCompression")
  enableDictionaryCompression: option<booleanObject>,
  @ocaml.doc("<p>The compression code to use over data blocks. The possible values are
            <code>UNCOMPRESSED</code>, <code>SNAPPY</code>, and <code>GZIP</code>, with the default
         being <code>SNAPPY</code>. Use <code>SNAPPY</code> for higher decompression speed. Use
            <code>GZIP</code> if the compression ratio is more important than speed.</p>")
  @as("Compression")
  compression: option<parquetCompression>,
  @ocaml.doc("<p>The Parquet page size. Column chunks are divided into pages. A page is conceptually an
         indivisible unit (in terms of compression and encoding). The minimum value is 64 KiB and
         the default is 1 MiB.</p>")
  @as("PageSizeBytes")
  pageSizeBytes: option<parquetPageSizeBytes>,
  @ocaml.doc("<p>The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to
         copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the
         minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.</p>")
  @as("BlockSizeBytes")
  blockSizeBytes: option<blockSizeBytes>,
}
type listOfNonEmptyStringsWithoutWhitespace = array<nonEmptyStringWithoutWhitespace>
type listOfNonEmptyStrings = array<nonEmptyString>
@ocaml.doc("<p>Details about a Kinesis data stream used as the source for a Kinesis Data Firehose
         delivery stream.</p>")
type kinesisStreamSourceDescription = {
  @ocaml.doc("<p>Kinesis Data Firehose starts retrieving records from the Kinesis data stream starting
         with this timestamp.</p>")
  @as("DeliveryStartTimestamp")
  deliveryStartTimestamp: option<deliveryStartTimestamp>,
  @ocaml.doc("<p>The ARN of the role used by the source Kinesis data stream. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam\">AWS Identity and Access Management (IAM) ARN Format</a>.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source Kinesis data stream. For more
         information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams\">Amazon Kinesis Data Streams ARN Format</a>.</p>")
  @as("KinesisStreamARN")
  kinesisStreamARN: option<kinesisStreamARN>,
}
@ocaml.doc("<p>The stream and role Amazon Resource Names (ARNs) for a Kinesis data stream used as
         the source for a delivery stream.</p>")
type kinesisStreamSourceConfiguration = {
  @ocaml.doc("<p>The ARN of the role that provides access to the source Kinesis data stream. For more
         information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam\">AWS Identity and Access Management (IAM) ARN Format</a>.</p>")
  @as("RoleARN")
  roleARN: roleARN,
  @ocaml.doc(
    "<p>The ARN of the source Kinesis data stream. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams\">Amazon Kinesis Data Streams ARN Format</a>.</p>"
  )
  @as("KinesisStreamARN")
  kinesisStreamARN: kinesisStreamARN,
}
@ocaml.doc("<p>Describes an encryption key for a destination in Amazon S3.</p>")
type kmsencryptionConfig = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the encryption key. Must belong to the same AWS
         Region as the destination Amazon S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("AWSKMSKeyARN")
  awskmskeyARN: awskmskeyARN,
}
@ocaml.doc("<p>Describes the retry behavior in case Kinesis Data Firehose is unable to deliver data to
         the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
         receipt from the specified HTTP endpoint destination.</p>")
type httpEndpointRetryOptions = {
  @ocaml.doc("<p>The total amount of time that Kinesis Data Firehose spends on retries. This duration
         starts after the initial attempt to send data to the custom destination via HTTPS endpoint
         fails. It doesn't include the periods during which Kinesis Data Firehose waits for
         acknowledgment from the specified destination after each attempt. </p>")
  @as("DurationInSeconds")
  durationInSeconds: option<httpEndpointRetryDurationInSeconds>,
}
@ocaml.doc("<p>Describes the HTTP endpoint selected as the destination. </p>")
type httpEndpointDescription = {
  @ocaml.doc("<p>The name of the HTTP endpoint selected as the destination.</p>") @as("Name")
  name: option<httpEndpointName>,
  @ocaml.doc("<p>The URL of the HTTP endpoint selected as the destination.</p>") @as("Url")
  url: option<httpEndpointUrl>,
}
@ocaml.doc("<p>Describes the configuration of the HTTP endpoint to which Kinesis Firehose delivers
         data.</p>")
type httpEndpointConfiguration = {
  @ocaml.doc("<p>The access key required for Kinesis Firehose to authenticate with the HTTP endpoint
         selected as the destination.</p>")
  @as("AccessKey")
  accessKey: option<httpEndpointAccessKey>,
  @ocaml.doc("<p>The name of the HTTP endpoint selected as the destination.</p>") @as("Name")
  name: option<httpEndpointName>,
  @ocaml.doc("<p>The URL of the HTTP endpoint selected as the destination.</p>") @as("Url")
  url: httpEndpointUrl,
}
@ocaml.doc("<p>Describes the metadata that's delivered to the specified HTTP endpoint
         destination.</p>")
type httpEndpointCommonAttribute = {
  @ocaml.doc("<p>The value of the HTTP endpoint common attribute.</p>") @as("AttributeValue")
  attributeValue: httpEndpointAttributeValue,
  @ocaml.doc("<p>The name of the HTTP endpoint common attribute.</p>") @as("AttributeName")
  attributeName: httpEndpointAttributeName,
}
@ocaml.doc("<p>Describes the buffering options that can be applied before data is delivered to the HTTP
         endpoint destination. Kinesis Data Firehose treats these options as hints, and it might
         choose to use more optimal values. The <code>SizeInMBs</code> and
            <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
         one of them, you must also provide a value for the other. </p>")
type httpEndpointBufferingHints = {
  @ocaml.doc("<p>Buffer incoming data for the specified period of time, in seconds, before delivering it
         to the destination. The default value is 300 (5 minutes). </p>")
  @as("IntervalInSeconds")
  intervalInSeconds: option<httpEndpointBufferingIntervalInSeconds>,
  @ocaml.doc("<p>Buffer incoming data to the specified size, in MBs, before delivering it to the
         destination. The default value is 5. </p>
         <p>We recommend setting this parameter to a value greater than the amount of data you
         typically ingest into the delivery stream in 10 seconds. For example, if you typically
         ingest data at 1 MB/sec, the value should be 10 MB or higher. </p>")
  @as("SizeInMBs")
  sizeInMBs: option<httpEndpointBufferingSizeInMBs>,
}
@ocaml.doc("<p>Provides details in case one of the following operations fails due to an error related
         to KMS: <a>CreateDeliveryStream</a>, <a>DeleteDeliveryStream</a>,
            <a>StartDeliveryStreamEncryption</a>, <a>StopDeliveryStreamEncryption</a>.</p>")
type failureDescription = {
  @ocaml.doc("<p>A message providing details about the error that caused the failure.</p>")
  @as("Details")
  details: nonEmptyString,
  @ocaml.doc("<p>The type of error that caused the failure.</p>") @as("Type")
  type_: deliveryStreamFailureType,
}
@ocaml.doc("<p>Configures retry behavior in case Kinesis Data Firehose is unable to deliver
         documents to Amazon ES.</p>")
type elasticsearchRetryOptions = {
  @ocaml.doc("<p>After an initial failure to deliver to Amazon ES, the total amount of time during
         which Kinesis Data Firehose retries delivery (including the first attempt). After this time
         has elapsed, the failed documents are written to Amazon S3. Default value is 300 seconds (5
         minutes). A value of 0 (zero) results in no retries.</p>")
  @as("DurationInSeconds")
  durationInSeconds: option<elasticsearchRetryDurationInSeconds>,
}
@ocaml.doc("<p>Describes the buffering to perform before delivering data to the Amazon ES
         destination.</p>")
type elasticsearchBufferingHints = {
  @ocaml.doc("<p>Buffer incoming data to the specified size, in MBs, before delivering it to the
         destination. The default value is 5.</p>
         <p>We recommend setting this parameter to a value greater than the amount of data you
         typically ingest into the delivery stream in 10 seconds. For example, if you typically
         ingest data at 1 MB/sec, the value should be 10 MB or higher.</p>")
  @as("SizeInMBs")
  sizeInMBs: option<elasticsearchBufferingSizeInMBs>,
  @ocaml.doc("<p>Buffer incoming data for the specified period of time, in seconds, before delivering
         it to the destination. The default value is 300 (5 minutes).</p>")
  @as("IntervalInSeconds")
  intervalInSeconds: option<elasticsearchBufferingIntervalInSeconds>,
}
type deliveryStreamNameList = array<deliveryStreamName>
@ocaml.doc("<p>Specifies the type and Amazon Resource Name (ARN) of the CMK to use for Server-Side
         Encryption (SSE). </p>")
type deliveryStreamEncryptionConfigurationInput = {
  @ocaml.doc("<p>Indicates the type of customer master key (CMK) to use for encryption. The default
         setting is <code>AWS_OWNED_CMK</code>. For more information about CMKs, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys\">Customer Master Keys (CMKs)</a>. When you invoke <a>CreateDeliveryStream</a> or <a>StartDeliveryStreamEncryption</a> with
            <code>KeyType</code> set to CUSTOMER_MANAGED_CMK, Kinesis Data Firehose invokes the
         Amazon KMS operation <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateGrant.html\">CreateGrant</a> to create a grant that allows the Kinesis Data Firehose service to
         use the customer managed CMK to perform encryption and decryption. Kinesis Data Firehose
         manages that grant. </p>
         <p>When you invoke <a>StartDeliveryStreamEncryption</a> to change the CMK for a
         delivery stream that is encrypted with a customer managed CMK, Kinesis Data Firehose
         schedules the grant it had on the old CMK for retirement.</p>
         <p>You can use a CMK of type CUSTOMER_MANAGED_CMK to encrypt up to 500 delivery streams. If
         a <a>CreateDeliveryStream</a> or <a>StartDeliveryStreamEncryption</a>
         operation exceeds this limit, Kinesis Data Firehose throws a
            <code>LimitExceededException</code>. </p>
         <important>
            <p>To encrypt your delivery stream, use symmetric CMKs. Kinesis Data Firehose doesn't
            support asymmetric CMKs. For information about symmetric and asymmetric CMKs, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html\">About Symmetric and Asymmetric CMKs</a> in the AWS Key Management Service
            developer guide.</p>
         </important>")
  @as("KeyType")
  keyType: keyType,
  @ocaml.doc("<p>If you set <code>KeyType</code> to <code>CUSTOMER_MANAGED_CMK</code>, you must specify
         the Amazon Resource Name (ARN) of the CMK. If you set <code>KeyType</code> to
            <code>AWS_OWNED_CMK</code>, Kinesis Data Firehose uses a service-account CMK.</p>")
  @as("KeyARN")
  keyARN: option<awskmskeyARN>,
}
@ocaml.doc("<p>Describes a <code>COPY</code> command for Amazon Redshift.</p>")
type copyCommand = {
  @ocaml.doc("<p>Optional parameters to use with the Amazon Redshift <code>COPY</code> command. For
         more information, see the \"Optional Parameters\" section of <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html\">Amazon Redshift COPY command</a>. Some possible
         examples that would apply to Kinesis Data Firehose are as follows:</p>
         <p>
            <code>delimiter '\\t' lzop;</code> - fields are delimited with \"\\t\" (TAB character) and
         compressed using lzop.</p>
         <p>
            <code>delimiter '|'</code> - fields are delimited with \"|\" (this is the default
         delimiter).</p>
         <p>
            <code>delimiter '|' escape</code> - the delimiter should be escaped.</p>
         <p>
            <code>fixedwidth 'venueid:3,venuename:25,venuecity:12,venuestate:2,venueseats:6'</code> -
         fields are fixed width in the source, with each width specified after every column in the
         table.</p>
         <p>
            <code>JSON 's3://mybucket/jsonpaths.txt'</code> - data is in JSON format, and the path
         specified is the format of the data.</p>
         <p>For more examples, see <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_COPY_command_examples.html\">Amazon Redshift COPY command
            examples</a>.</p>")
  @as("CopyOptions")
  copyOptions: option<copyOptions>,
  @ocaml.doc("<p>A comma-separated list of column names.</p>") @as("DataTableColumns")
  dataTableColumns: option<dataTableColumns>,
  @ocaml.doc("<p>The name of the target table. The table must already exist in the database.</p>")
  @as("DataTableName")
  dataTableName: dataTableName,
}
type columnToJsonKeyMappings = Js.Dict.t<nonEmptyString>
@ocaml.doc("<p>Describes the Amazon CloudWatch logging options for your delivery stream.</p>")
type cloudWatchLoggingOptions = {
  @ocaml.doc("<p>The CloudWatch log stream name for logging. This value is required if CloudWatch
         logging is enabled.</p>")
  @as("LogStreamName")
  logStreamName: option<logStreamName>,
  @ocaml.doc("<p>The CloudWatch group name for logging. This value is required if CloudWatch logging
         is enabled.</p>")
  @as("LogGroupName")
  logGroupName: option<logGroupName>,
  @ocaml.doc("<p>Enables or disables CloudWatch logging.</p>") @as("Enabled")
  enabled: option<booleanObject>,
}
@ocaml.doc("<p>Describes hints for the buffering to perform before delivering data to the
         destination. These options are treated as hints, and therefore Kinesis Data Firehose might
         choose to use different values when it is optimal. The <code>SizeInMBs</code> and
            <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
         one of them, you must also provide a value for the other.</p>")
type bufferingHints = {
  @ocaml.doc("<p>Buffer incoming data for the specified period of time, in seconds, before delivering
         it to the destination. The default value is 300. This parameter is optional but if you
         specify a value for it, you must also specify a value for <code>SizeInMBs</code>, and vice
         versa.</p>")
  @as("IntervalInSeconds")
  intervalInSeconds: option<intervalInSeconds>,
  @ocaml.doc("<p>Buffer incoming data to the specified size, in MiBs, before delivering it to the
         destination. The default value is 5. This parameter is optional but if you specify a value
         for it, you must also specify a value for <code>IntervalInSeconds</code>, and vice
         versa.</p>
         <p>We recommend setting this parameter to a value greater than the amount of data you
         typically ingest into the delivery stream in 10 seconds. For example, if you typically
         ingest data at 1 MiB/sec, the value should be 10 MiB or higher.</p>")
  @as("SizeInMBs")
  sizeInMBs: option<sizeInMBs>,
}
@ocaml.doc("<p>The details of the VPC of the Amazon ES destination.</p>")
type vpcConfigurationDescription = {
  @ocaml.doc("<p>The ID of the Amazon ES destination's VPC.</p>") @as("VpcId")
  vpcId: nonEmptyStringWithoutWhitespace,
  @ocaml.doc("<p>The IDs of the security groups that Kinesis Data Firehose uses when it creates ENIs in
         the VPC of the Amazon ES destination. You can use the same security group that the Amazon
         ES domain uses or different ones. If you specify different security groups, ensure that
         they allow outbound HTTPS traffic to the Amazon ES domain's security group. Also ensure
         that the Amazon ES domain's security group allows HTTPS traffic from the security groups
         specified here. If you use the same security group for both your delivery stream and the
         Amazon ES domain, make sure the security group inbound rule allows HTTPS traffic. For more
         information about security group rules, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#SecurityGroupRules\">Security group rules</a> in the Amazon VPC documentation.</p>")
  @as("SecurityGroupIds")
  securityGroupIds: securityGroupIdList,
  @ocaml.doc("<p>The ARN of the IAM role that the delivery stream uses to create endpoints in the
         destination VPC. You can use your existing Kinesis Data Firehose delivery role or you can
         specify a new role. In either case, make sure that the role trusts the Kinesis Data
         Firehose service principal and that it grants the following permissions:</p>
         <ul>
            <li>
               <p>
                  <code>ec2:DescribeVpcs</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:DescribeVpcAttribute</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:DescribeSubnets</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:DescribeSecurityGroups</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:DescribeNetworkInterfaces</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:CreateNetworkInterface</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:CreateNetworkInterfacePermission</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:DeleteNetworkInterface</code>
               </p>
            </li>
         </ul>
         <p>If you revoke these permissions after you create the delivery stream, Kinesis Data
         Firehose can't scale out by creating more ENIs when necessary. You might therefore see a
         degradation in performance.</p>")
  @as("RoleARN")
  roleARN: roleARN,
  @ocaml.doc("<p>The IDs of the subnets that Kinesis Data Firehose uses to create ENIs in the VPC of the
         Amazon ES destination. Make sure that the routing tables and inbound and outbound rules
         allow traffic to flow from the subnets whose IDs are specified here to the subnets that
         have the destination Amazon ES endpoints. Kinesis Data Firehose creates at least one ENI in
         each of the subnets that are specified here. Do not delete or modify these ENIs.</p>
         <p>The number of ENIs that Kinesis Data Firehose creates in the subnets specified here
         scales up and down automatically based on throughput. To enable Kinesis Data Firehose to
         scale up the number of ENIs to match throughput, ensure that you have sufficient quota. To
         help you calculate the quota you need, assume that Kinesis Data Firehose can create up to
         three ENIs for this delivery stream for each of the subnets specified here. For more
         information about ENI quota, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-enis\">Network Interfaces </a> in the Amazon VPC Quotas topic.</p>")
  @as("SubnetIds")
  subnetIds: subnetIdList,
}
@ocaml.doc("<p>The details of the VPC of the Amazon ES destination.</p>")
type vpcConfiguration = {
  @ocaml.doc("<p>The IDs of the security groups that you want Kinesis Data Firehose to use when it
         creates ENIs in the VPC of the Amazon ES destination. You can use the same security group
         that the Amazon ES domain uses or different ones. If you specify different security groups
         here, ensure that they allow outbound HTTPS traffic to the Amazon ES domain's security
         group. Also ensure that the Amazon ES domain's security group allows HTTPS traffic from the
         security groups specified here. If you use the same security group for both your delivery
         stream and the Amazon ES domain, make sure the security group inbound rule allows HTTPS
         traffic. For more information about security group rules, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#SecurityGroupRules\">Security group rules</a> in the Amazon VPC documentation.</p>")
  @as("SecurityGroupIds")
  securityGroupIds: securityGroupIdList,
  @ocaml.doc("<p>The ARN of the IAM role that you want the delivery stream to use to create endpoints in
         the destination VPC. You can use your existing Kinesis Data Firehose delivery role or you
         can specify a new role. In either case, make sure that the role trusts the Kinesis Data
         Firehose service principal and that it grants the following permissions:</p>
         <ul>
            <li>
               <p>
                  <code>ec2:DescribeVpcs</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:DescribeVpcAttribute</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:DescribeSubnets</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:DescribeSecurityGroups</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:DescribeNetworkInterfaces</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:CreateNetworkInterface</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:CreateNetworkInterfacePermission</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ec2:DeleteNetworkInterface</code>
               </p>
            </li>
         </ul>
         <p>If you revoke these permissions after you create the delivery stream, Kinesis Data
         Firehose can't scale out by creating more ENIs when necessary. You might therefore see a
         degradation in performance.</p>")
  @as("RoleARN")
  roleARN: roleARN,
  @ocaml.doc("<p>The IDs of the subnets that you want Kinesis Data Firehose to use to create ENIs in the
         VPC of the Amazon ES destination. Make sure that the routing tables and inbound and
         outbound rules allow traffic to flow from the subnets whose IDs are specified here to the
         subnets that have the destination Amazon ES endpoints. Kinesis Data Firehose creates at
         least one ENI in each of the subnets that are specified here. Do not delete or modify these
         ENIs.</p>
         <p>The number of ENIs that Kinesis Data Firehose creates in the subnets specified here
         scales up and down automatically based on throughput. To enable Kinesis Data Firehose to
         scale up the number of ENIs to match throughput, ensure that you have sufficient quota. To
         help you calculate the quota you need, assume that Kinesis Data Firehose can create up to
         three ENIs for this delivery stream for each of the subnets specified here. For more
         information about ENI quota, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-enis\">Network Interfaces </a> in the Amazon VPC Quotas topic.</p>")
  @as("SubnetIds")
  subnetIds: subnetIdList,
}
type tagDeliveryStreamInputTagList = array<tag>
@ocaml.doc("<p>Details about a Kinesis data stream used as the source for a Kinesis Data Firehose
         delivery stream.</p>")
type sourceDescription = {
  @ocaml.doc("<p>The <a>KinesisStreamSourceDescription</a> value for the source Kinesis
         data stream.</p>")
  @as("KinesisStreamSourceDescription")
  kinesisStreamSourceDescription: option<kinesisStreamSourceDescription>,
}
type putRecordBatchResponseEntryList = array<putRecordBatchResponseEntry>
type putRecordBatchRequestEntryList = array<record>
type processorParameterList = array<processorParameter>
@ocaml.doc("<p>A serializer to use for converting data to the ORC format before storing it in Amazon
         S3. For more information, see <a href=\"https://orc.apache.org/docs/\">Apache
         ORC</a>.</p>")
type orcSerDe = {
  @ocaml.doc("<p>The version of the file to write. The possible values are <code>V0_11</code> and
            <code>V0_12</code>. The default is <code>V0_12</code>.</p>")
  @as("FormatVersion")
  formatVersion: option<orcFormatVersion>,
  @ocaml.doc("<p>Represents the fraction of the total number of non-null rows. To turn off dictionary
         encoding, set this fraction to a number that is less than the number of distinct keys in a
         dictionary. To always use dictionary encoding, set this threshold to 1.</p>")
  @as("DictionaryKeyThreshold")
  dictionaryKeyThreshold: option<proportion>,
  @ocaml.doc("<p>The Bloom filter false positive probability (FPP). The lower the FPP, the bigger the
         Bloom filter. The default value is 0.05, the minimum is 0, and the maximum is 1.</p>")
  @as("BloomFilterFalsePositiveProbability")
  bloomFilterFalsePositiveProbability: option<proportion>,
  @ocaml.doc("<p>The column names for which you want Kinesis Data Firehose to create bloom filters. The
         default is <code>null</code>.</p>")
  @as("BloomFilterColumns")
  bloomFilterColumns: option<listOfNonEmptyStringsWithoutWhitespace>,
  @ocaml.doc(
    "<p>The compression code to use over data blocks. The default is <code>SNAPPY</code>.</p>"
  )
  @as("Compression")
  compression: option<orcCompression>,
  @ocaml.doc("<p>A number between 0 and 1 that defines the tolerance for block padding as a decimal
         fraction of stripe size. The default value is 0.05, which means 5 percent of stripe
         size.</p>
         <p>For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block
         padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB
         block. In such a case, if the available size within the block is more than 3.2 MiB, a new,
         smaller stripe is inserted to fit within that space. This ensures that no stripe crosses
         block boundaries and causes remote reads within a node-local task.</p>
         <p>Kinesis Data Firehose ignores this parameter when <a>OrcSerDe$EnablePadding</a> is <code>false</code>.</p>")
  @as("PaddingTolerance")
  paddingTolerance: option<proportion>,
  @ocaml.doc("<p>Set this to <code>true</code> to indicate that you want stripes to be padded to the HDFS
         block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS
         before querying. The default is <code>false</code>.</p>")
  @as("EnablePadding")
  enablePadding: option<booleanObject>,
  @ocaml.doc("<p>The number of rows between index entries. The default is 10,000 and the minimum is
         1,000.</p>")
  @as("RowIndexStride")
  rowIndexStride: option<orcRowIndexStride>,
  @ocaml.doc("<p>The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to
         copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the
         minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.</p>")
  @as("BlockSizeBytes")
  blockSizeBytes: option<blockSizeBytes>,
  @ocaml.doc("<p>The number of bytes in each stripe. The default is 64 MiB and the minimum is 8
         MiB.</p>")
  @as("StripeSizeBytes")
  stripeSizeBytes: option<orcStripeSizeBytes>,
}
@ocaml.doc("<p>The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data, which means
         converting it from the JSON format in preparation for serializing it to the Parquet or ORC
         format. This is one of two deserializers you can choose, depending on which one offers the
         functionality you need. The other option is the native Hive / HCatalog JsonSerDe.</p>")
type openXJsonSerDe = {
  @ocaml.doc("<p>Maps column names to JSON keys that aren't identical to the column names. This is
         useful when the JSON contains keys that are Hive keywords. For example,
            <code>timestamp</code> is a Hive keyword. If you have a JSON key named
            <code>timestamp</code>, set this parameter to <code>{\"ts\": \"timestamp\"}</code> to map
         this key to a column named <code>ts</code>.</p>")
  @as("ColumnToJsonKeyMappings")
  columnToJsonKeyMappings: option<columnToJsonKeyMappings>,
  @ocaml.doc("<p>When set to <code>true</code>, which is the default, Kinesis Data Firehose converts
         JSON keys to lowercase before deserializing them.</p>")
  @as("CaseInsensitive")
  caseInsensitive: option<booleanObject>,
  @ocaml.doc("<p>When set to <code>true</code>, specifies that the names of the keys include dots and
         that you want Kinesis Data Firehose to replace them with underscores. This is useful
         because Apache Hive does not allow dots in column names. For example, if the JSON contains
         a key whose name is \"a.b\", you can define the column name to be \"a_b\" when using this
         option.</p>
         <p>The default is <code>false</code>.</p>")
  @as("ConvertDotsInJsonKeysToUnderscores")
  convertDotsInJsonKeysToUnderscores: option<booleanObject>,
}
type listTagsForDeliveryStreamOutputTagList = array<tag>
type httpEndpointCommonAttributesList = array<httpEndpointCommonAttribute>
@ocaml.doc("<p>The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose for deserializing
         data, which means converting it from the JSON format in preparation for serializing it to
         the Parquet or ORC format. This is one of two deserializers you can choose, depending on
         which one offers the functionality you need. The other option is the OpenX SerDe.</p>")
type hiveJsonSerDe = {
  @ocaml.doc("<p>Indicates how you want Kinesis Data Firehose to parse the date and timestamps that
         may be present in your input data JSON. To specify these format strings, follow the pattern
         syntax of JodaTime's DateTimeFormat format strings. For more information, see <a href=\"https://www.joda.org/joda-time/apidocs/org/joda/time/format/DateTimeFormat.html\">Class DateTimeFormat</a>. You can also use the special value <code>millis</code> to
         parse timestamps in epoch milliseconds. If you don't specify a format, Kinesis Data
         Firehose uses <code>java.sql.Timestamp::valueOf</code> by default.</p>")
  @as("TimestampFormats")
  timestampFormats: option<listOfNonEmptyStrings>,
}
@ocaml.doc("<p>Describes the encryption for a destination in Amazon S3.</p>")
type encryptionConfiguration = {
  @ocaml.doc("<p>The encryption key.</p>") @as("KMSEncryptionConfig")
  kmsencryptionConfig: option<kmsencryptionConfig>,
  @ocaml.doc("<p>Specifically override existing encryption information to ensure that no encryption is
         used.</p>")
  @as("NoEncryptionConfig")
  noEncryptionConfig: option<noEncryptionConfig>,
}
@ocaml.doc("<p>Contains information about the server-side encryption (SSE) status for the delivery
         stream, the type customer master key (CMK) in use, if any, and the ARN of the CMK. You can
         get <code>DeliveryStreamEncryptionConfiguration</code> by invoking the <a>DescribeDeliveryStream</a> operation. </p>")
type deliveryStreamEncryptionConfiguration = {
  @ocaml.doc("<p>Provides details in case one of the following operations fails due to an error related
         to KMS: <a>CreateDeliveryStream</a>, <a>DeleteDeliveryStream</a>,
            <a>StartDeliveryStreamEncryption</a>, <a>StopDeliveryStreamEncryption</a>.</p>")
  @as("FailureDescription")
  failureDescription: option<failureDescription>,
  @ocaml.doc("<p>This is the server-side encryption (SSE) status for the delivery stream. For a full
         description of the different values of this status, see <a>StartDeliveryStreamEncryption</a> and <a>StopDeliveryStreamEncryption</a>. If this status is <code>ENABLING_FAILED</code>
         or <code>DISABLING_FAILED</code>, it is the status of the most recent attempt to enable or
         disable SSE, respectively.</p>")
  @as("Status")
  status: option<deliveryStreamEncryptionStatus>,
  @ocaml.doc("<p>Indicates the type of customer master key (CMK) that is used for encryption. The default
         setting is <code>AWS_OWNED_CMK</code>. For more information about CMKs, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys\">Customer Master Keys (CMKs)</a>.</p>")
  @as("KeyType")
  keyType: option<keyType>,
  @ocaml.doc("<p>If <code>KeyType</code> is <code>CUSTOMER_MANAGED_CMK</code>, this field contains the
         ARN of the customer managed CMK. If <code>KeyType</code> is <code>AWS_OWNED_CMK</code>,
            <code>DeliveryStreamEncryptionConfiguration</code> doesn't contain a value for
            <code>KeyARN</code>.</p>")
  @as("KeyARN")
  keyARN: option<awskmskeyARN>,
}
@ocaml.doc("<p>The serializer that you want Kinesis Data Firehose to use to convert data to the target
         format before writing it to Amazon S3. Kinesis Data Firehose supports two types of
         serializers: the <a href=\"https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/orc/OrcSerde.html\">ORC SerDe</a> and the <a href=\"https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/parquet/serde/ParquetHiveSerDe.html\">Parquet SerDe</a>.</p>")
type serializer = {
  @ocaml.doc("<p>A serializer to use for converting data to the ORC format before storing it in Amazon
         S3. For more information, see <a href=\"https://orc.apache.org/docs/\">Apache
         ORC</a>.</p>")
  @as("OrcSerDe")
  orcSerDe: option<orcSerDe>,
  @ocaml.doc("<p>A serializer to use for converting data to the Parquet format before storing it in
         Amazon S3. For more information, see <a href=\"https://parquet.apache.org/documentation/latest/\">Apache Parquet</a>.</p>")
  @as("ParquetSerDe")
  parquetSerDe: option<parquetSerDe>,
}
@ocaml.doc("<p>Describes an update for a destination in Amazon S3.</p>")
type s3DestinationUpdate = {
  @ocaml.doc("<p>The CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The encryption configuration. If no value is specified, the default is no
         encryption.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: option<encryptionConfiguration>,
  @ocaml.doc("<p>The compression format. If no value is specified, the default is
            <code>UNCOMPRESSED</code>.</p>
         <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
         for Amazon Redshift destinations because they are not supported by the Amazon Redshift
            <code>COPY</code> operation that reads from the S3 bucket.</p>")
  @as("CompressionFormat")
  compressionFormat: option<compressionFormat>,
  @ocaml.doc("<p>The buffering option. If no value is specified, <code>BufferingHints</code> object
         default values are used.</p>")
  @as("BufferingHints")
  bufferingHints: option<bufferingHints>,
  @ocaml.doc("<p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
         them to S3. This prefix appears immediately following the bucket name. For information
         about how to specify this prefix, see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("ErrorOutputPrefix")
  errorOutputPrefix: option<errorOutputPrefix>,
  @ocaml.doc("<p>The \"YYYY/MM/DD/HH\" time format prefix is automatically used for delivered Amazon S3
         files. You can also specify a custom prefix, as described in <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("Prefix")
  prefix: option<prefix>,
  @ocaml.doc("<p>The ARN of the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("BucketARN")
  bucketARN: option<bucketARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
}
@ocaml.doc("<p>Describes a destination in Amazon S3.</p>")
type s3DestinationDescription = {
  @ocaml.doc("<p>The Amazon CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The encryption configuration. If no value is specified, the default is no
         encryption.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: encryptionConfiguration,
  @ocaml.doc("<p>The compression format. If no value is specified, the default is
            <code>UNCOMPRESSED</code>.</p>")
  @as("CompressionFormat")
  compressionFormat: compressionFormat,
  @ocaml.doc("<p>The buffering option. If no value is specified, <code>BufferingHints</code> object
         default values are used.</p>")
  @as("BufferingHints")
  bufferingHints: bufferingHints,
  @ocaml.doc("<p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
         them to S3. This prefix appears immediately following the bucket name. For information
         about how to specify this prefix, see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("ErrorOutputPrefix")
  errorOutputPrefix: option<errorOutputPrefix>,
  @ocaml.doc("<p>The \"YYYY/MM/DD/HH\" time format prefix is automatically used for delivered Amazon S3
         files. You can also specify a custom prefix, as described in <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("Prefix")
  prefix: option<prefix>,
  @ocaml.doc("<p>The ARN of the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("BucketARN")
  bucketARN: bucketARN,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: roleARN,
}
@ocaml.doc("<p>Describes the configuration of a destination in Amazon S3.</p>")
type s3DestinationConfiguration = {
  @ocaml.doc("<p>The CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The encryption configuration. If no value is specified, the default is no
         encryption.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: option<encryptionConfiguration>,
  @ocaml.doc("<p>The compression format. If no value is specified, the default is
            <code>UNCOMPRESSED</code>.</p>
         <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
         for Amazon Redshift destinations because they are not supported by the Amazon Redshift
            <code>COPY</code> operation that reads from the S3 bucket.</p>")
  @as("CompressionFormat")
  compressionFormat: option<compressionFormat>,
  @ocaml.doc("<p>The buffering option. If no value is specified, <code>BufferingHints</code> object
         default values are used.</p>")
  @as("BufferingHints")
  bufferingHints: option<bufferingHints>,
  @ocaml.doc("<p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
         them to S3. This prefix appears immediately following the bucket name. For information
         about how to specify this prefix, see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("ErrorOutputPrefix")
  errorOutputPrefix: option<errorOutputPrefix>,
  @ocaml.doc("<p>The \"YYYY/MM/DD/HH\" time format prefix is automatically used for delivered Amazon S3
         files. You can also specify a custom prefix, as described in <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("Prefix")
  prefix: option<prefix>,
  @ocaml.doc("<p>The ARN of the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("BucketARN")
  bucketARN: bucketARN,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: roleARN,
}
@ocaml.doc("<p>Describes a data processor.</p>")
type processor = {
  @ocaml.doc("<p>The processor parameters.</p>") @as("Parameters")
  parameters: option<processorParameterList>,
  @ocaml.doc("<p>The type of processor.</p>") @as("Type") type_: processorType,
}
@ocaml.doc("<p>The configuration of the HTTP endpoint request.</p>")
type httpEndpointRequestConfiguration = {
  @ocaml.doc("<p>Describes the metadata sent to the HTTP endpoint destination.</p>")
  @as("CommonAttributes")
  commonAttributes: option<httpEndpointCommonAttributesList>,
  @ocaml.doc("<p>Kinesis Data Firehose uses the content encoding to compress the body of a request before
         sending the request to the destination. For more information, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Encoding\">Content-Encoding</a> in MDN Web Docs, the official Mozilla documentation.</p>")
  @as("ContentEncoding")
  contentEncoding: option<contentEncoding>,
}
@ocaml.doc("<p>The deserializer you want Kinesis Data Firehose to use for converting the input data
         from JSON. Kinesis Data Firehose then serializes the data to its final format using the
            <a>Serializer</a>. Kinesis Data Firehose supports two types of deserializers:
         the <a href=\"https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-JSON\">Apache Hive JSON SerDe</a> and the <a href=\"https://github.com/rcongiu/Hive-JSON-Serde\">OpenX JSON SerDe</a>.</p>")
type deserializer = {
  @ocaml.doc("<p>The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose for deserializing
         data, which means converting it from the JSON format in preparation for serializing it to
         the Parquet or ORC format. This is one of two deserializers you can choose, depending on
         which one offers the functionality you need. The other option is the OpenX SerDe.</p>")
  @as("HiveJsonSerDe")
  hiveJsonSerDe: option<hiveJsonSerDe>,
  @ocaml.doc("<p>The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data, which means
         converting it from the JSON format in preparation for serializing it to the Parquet or ORC
         format. This is one of two deserializers you can choose, depending on which one offers the
         functionality you need. The other option is the native Hive / HCatalog JsonSerDe.</p>")
  @as("OpenXJsonSerDe")
  openXJsonSerDe: option<openXJsonSerDe>,
}
type processorList = array<processor>
@ocaml.doc("<p>Specifies the serializer that you want Kinesis Data Firehose to use to convert the
         format of your data before it writes it to Amazon S3. This parameter is required if
            <code>Enabled</code> is set to true.</p>")
type outputFormatConfiguration = {
  @ocaml.doc("<p>Specifies which serializer to use. You can choose either the ORC SerDe or the Parquet
         SerDe. If both are non-null, the server rejects the request.</p>")
  @as("Serializer")
  serializer: option<serializer>,
}
@ocaml.doc("<p>Specifies the deserializer you want to use to convert the format of the input data.
         This parameter is required if <code>Enabled</code> is set to true.</p>")
type inputFormatConfiguration = {
  @ocaml.doc("<p>Specifies which deserializer to use. You can choose either the Apache Hive JSON SerDe
         or the OpenX JSON SerDe. If both are non-null, the server rejects the request.</p>")
  @as("Deserializer")
  deserializer: option<deserializer>,
}
@ocaml.doc("<p>Describes a data processing configuration.</p>")
type processingConfiguration = {
  @ocaml.doc("<p>The data processors.</p>") @as("Processors") processors: option<processorList>,
  @ocaml.doc("<p>Enables or disables data processing.</p>") @as("Enabled")
  enabled: option<booleanObject>,
}
@ocaml.doc("<p>Specifies that you want Kinesis Data Firehose to convert data from the JSON format to
         the Parquet or ORC format before writing it to Amazon S3. Kinesis Data Firehose uses the
         serializer and deserializer that you specify, in addition to the column information from
         the AWS Glue table, to deserialize your input data from JSON and then serialize it to the
         Parquet or ORC format. For more information, see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/record-format-conversion.html\">Kinesis Data Firehose Record Format Conversion</a>.</p>")
type dataFormatConversionConfiguration = {
  @ocaml.doc("<p>Defaults to <code>true</code>. Set it to <code>false</code> if you want to disable
         format conversion while preserving the configuration details.</p>")
  @as("Enabled")
  enabled: option<booleanObject>,
  @ocaml.doc("<p>Specifies the serializer that you want Kinesis Data Firehose to use to convert the
         format of your data to the Parquet or ORC format. This parameter is required if
            <code>Enabled</code> is set to true.</p>")
  @as("OutputFormatConfiguration")
  outputFormatConfiguration: option<outputFormatConfiguration>,
  @ocaml.doc("<p>Specifies the deserializer that you want Kinesis Data Firehose to use to convert the
         format of your data from JSON. This parameter is required if <code>Enabled</code> is set to
         true.</p>")
  @as("InputFormatConfiguration")
  inputFormatConfiguration: option<inputFormatConfiguration>,
  @ocaml.doc("<p>Specifies the AWS Glue Data Catalog table that contains the column information. This
         parameter is required if <code>Enabled</code> is set to true.</p>")
  @as("SchemaConfiguration")
  schemaConfiguration: option<schemaConfiguration>,
}
@ocaml.doc("<p>Describes an update for a destination in Splunk.</p>")
type splunkDestinationUpdate = {
  @ocaml.doc("<p>The Amazon CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>Your update to the configuration of the backup Amazon S3 location.</p>")
  @as("S3Update")
  s3Update: option<s3DestinationUpdate>,
  @ocaml.doc("<p>Specifies how you want Kinesis Data Firehose to back up documents to Amazon S3. When
         set to <code>FailedDocumentsOnly</code>, Kinesis Data Firehose writes any data that could
         not be indexed to the configured Amazon S3 destination. When set to <code>AllEvents</code>,
         Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed
         documents to Amazon S3. The default value is <code>FailedEventsOnly</code>.</p>
         <p>You can update this backup mode from <code>FailedEventsOnly</code> to
            <code>AllEvents</code>. You can't update it from <code>AllEvents</code> to
            <code>FailedEventsOnly</code>.</p>")
  @as("S3BackupMode")
  s3BackupMode: option<splunkS3BackupMode>,
  @ocaml.doc("<p>The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk
         or if it doesn't receive an acknowledgment of receipt from Splunk.</p>")
  @as("RetryOptions")
  retryOptions: option<splunkRetryOptions>,
  @ocaml.doc("<p>The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from
         Splunk after it sends data. At the end of the timeout period, Kinesis Data Firehose either
         tries to send the data again or considers it an error, based on your retry
         settings.</p>")
  @as("HECAcknowledgmentTimeoutInSeconds")
  hecacknowledgmentTimeoutInSeconds: option<hecacknowledgmentTimeoutInSeconds>,
  @ocaml.doc("<p>A GUID that you obtain from your Splunk cluster when you create a new HEC
         endpoint.</p>")
  @as("HECToken")
  hectoken: option<hectoken>,
  @ocaml.doc("<p>This type can be either \"Raw\" or \"Event.\"</p>") @as("HECEndpointType")
  hecendpointType: option<hecendpointType>,
  @ocaml.doc("<p>The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your
         data.</p>")
  @as("HECEndpoint")
  hecendpoint: option<hecendpoint>,
}
@ocaml.doc("<p>Describes a destination in Splunk.</p>")
type splunkDestinationDescription = {
  @ocaml.doc("<p>The Amazon CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The Amazon S3 destination.></p>") @as("S3DestinationDescription")
  s3DestinationDescription: option<s3DestinationDescription>,
  @ocaml.doc("<p>Defines how documents should be delivered to Amazon S3. When set to
            <code>FailedDocumentsOnly</code>, Kinesis Data Firehose writes any data that could not
         be indexed to the configured Amazon S3 destination. When set to <code>AllDocuments</code>,
         Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed
         documents to Amazon S3. Default value is <code>FailedDocumentsOnly</code>. </p>")
  @as("S3BackupMode")
  s3BackupMode: option<splunkS3BackupMode>,
  @ocaml.doc("<p>The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk
         or if it doesn't receive an acknowledgment of receipt from Splunk.</p>")
  @as("RetryOptions")
  retryOptions: option<splunkRetryOptions>,
  @ocaml.doc("<p>The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from
         Splunk after it sends it data. At the end of the timeout period, Kinesis Data Firehose
         either tries to send the data again or considers it an error, based on your retry
         settings.</p>")
  @as("HECAcknowledgmentTimeoutInSeconds")
  hecacknowledgmentTimeoutInSeconds: option<hecacknowledgmentTimeoutInSeconds>,
  @ocaml.doc("<p>A GUID you obtain from your Splunk cluster when you create a new HEC
         endpoint.</p>")
  @as("HECToken")
  hectoken: option<hectoken>,
  @ocaml.doc("<p>This type can be either \"Raw\" or \"Event.\"</p>") @as("HECEndpointType")
  hecendpointType: option<hecendpointType>,
  @ocaml.doc("<p>The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your
         data.</p>")
  @as("HECEndpoint")
  hecendpoint: option<hecendpoint>,
}
@ocaml.doc("<p>Describes the configuration of a destination in Splunk.</p>")
type splunkDestinationConfiguration = {
  @ocaml.doc("<p>The Amazon CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The configuration for the backup Amazon S3 location.</p>") @as("S3Configuration")
  s3Configuration: s3DestinationConfiguration,
  @ocaml.doc("<p>Defines how documents should be delivered to Amazon S3. When set to
            <code>FailedEventsOnly</code>, Kinesis Data Firehose writes any data that could not be
         indexed to the configured Amazon S3 destination. When set to <code>AllEvents</code>,
         Kinesis Data Firehose delivers all incoming records to Amazon S3, and also writes failed
         documents to Amazon S3. The default value is <code>FailedEventsOnly</code>.</p>
         <p>You can update this backup mode from <code>FailedEventsOnly</code> to
            <code>AllEvents</code>. You can't update it from <code>AllEvents</code> to
            <code>FailedEventsOnly</code>.</p>")
  @as("S3BackupMode")
  s3BackupMode: option<splunkS3BackupMode>,
  @ocaml.doc("<p>The retry behavior in case Kinesis Data Firehose is unable to deliver data to Splunk,
         or if it doesn't receive an acknowledgment of receipt from Splunk.</p>")
  @as("RetryOptions")
  retryOptions: option<splunkRetryOptions>,
  @ocaml.doc("<p>The amount of time that Kinesis Data Firehose waits to receive an acknowledgment from
         Splunk after it sends it data. At the end of the timeout period, Kinesis Data Firehose
         either tries to send the data again or considers it an error, based on your retry
         settings.</p>")
  @as("HECAcknowledgmentTimeoutInSeconds")
  hecacknowledgmentTimeoutInSeconds: option<hecacknowledgmentTimeoutInSeconds>,
  @ocaml.doc("<p>This is a GUID that you obtain from your Splunk cluster when you create a new HEC
         endpoint.</p>")
  @as("HECToken")
  hectoken: hectoken,
  @ocaml.doc("<p>This type can be either \"Raw\" or \"Event.\"</p>") @as("HECEndpointType")
  hecendpointType: hecendpointType,
  @ocaml.doc("<p>The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose sends your
         data.</p>")
  @as("HECEndpoint")
  hecendpoint: hecendpoint,
}
@ocaml.doc("<p>Describes an update for a destination in Amazon Redshift.</p>")
type redshiftDestinationUpdate = {
  @ocaml.doc("<p>The Amazon CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The Amazon S3 destination for backup.</p>") @as("S3BackupUpdate")
  s3BackupUpdate: option<s3DestinationUpdate>,
  @ocaml.doc("<p>You can update a delivery stream to enable Amazon S3 backup if it is disabled. If
         backup is enabled, you can't update the delivery stream to disable it. </p>")
  @as("S3BackupMode")
  s3BackupMode: option<redshiftS3BackupMode>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The Amazon S3 destination.</p>
         <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
         in <code>RedshiftDestinationUpdate.S3Update</code> because the Amazon Redshift
            <code>COPY</code> operation that reads from the S3 bucket doesn't support these
         compression formats.</p>")
  @as("S3Update")
  s3Update: option<s3DestinationUpdate>,
  @ocaml.doc("<p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to
         Amazon Redshift. Default value is 3600 (60 minutes).</p>")
  @as("RetryOptions")
  retryOptions: option<redshiftRetryOptions>,
  @ocaml.doc("<p>The user password.</p>") @as("Password") password: option<password>,
  @ocaml.doc("<p>The name of the user.</p>") @as("Username") username: option<username>,
  @ocaml.doc("<p>The <code>COPY</code> command.</p>") @as("CopyCommand")
  copyCommand: option<copyCommand>,
  @ocaml.doc("<p>The database connection string.</p>") @as("ClusterJDBCURL")
  clusterJDBCURL: option<clusterJDBCURL>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
}
@ocaml.doc("<p>Describes a destination in Amazon Redshift.</p>")
type redshiftDestinationDescription = {
  @ocaml.doc("<p>The Amazon CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The configuration for backup in Amazon S3.</p>") @as("S3BackupDescription")
  s3BackupDescription: option<s3DestinationDescription>,
  @ocaml.doc("<p>The Amazon S3 backup mode.</p>") @as("S3BackupMode")
  s3BackupMode: option<redshiftS3BackupMode>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The Amazon S3 destination.</p>") @as("S3DestinationDescription")
  s3DestinationDescription: s3DestinationDescription,
  @ocaml.doc("<p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to
         Amazon Redshift. Default value is 3600 (60 minutes).</p>")
  @as("RetryOptions")
  retryOptions: option<redshiftRetryOptions>,
  @ocaml.doc("<p>The name of the user.</p>") @as("Username") username: username,
  @ocaml.doc("<p>The <code>COPY</code> command.</p>") @as("CopyCommand") copyCommand: copyCommand,
  @ocaml.doc("<p>The database connection string.</p>") @as("ClusterJDBCURL")
  clusterJDBCURL: clusterJDBCURL,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: roleARN,
}
@ocaml.doc("<p>Describes the configuration of a destination in Amazon Redshift.</p>")
type redshiftDestinationConfiguration = {
  @ocaml.doc("<p>The CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The configuration for backup in Amazon S3.</p>") @as("S3BackupConfiguration")
  s3BackupConfiguration: option<s3DestinationConfiguration>,
  @ocaml.doc("<p>The Amazon S3 backup mode. After you create a delivery stream, you can update it to
         enable Amazon S3 backup if it is disabled. If backup is enabled, you can't update the
         delivery stream to disable it. </p>")
  @as("S3BackupMode")
  s3BackupMode: option<redshiftS3BackupMode>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The configuration for the intermediate Amazon S3 location from which Amazon Redshift
         obtains data. Restrictions are described in the topic for <a>CreateDeliveryStream</a>.</p>
         <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified
         in <code>RedshiftDestinationConfiguration.S3Configuration</code> because the Amazon
         Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't support these
         compression formats.</p>")
  @as("S3Configuration")
  s3Configuration: s3DestinationConfiguration,
  @ocaml.doc("<p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to
         Amazon Redshift. Default value is 3600 (60 minutes).</p>")
  @as("RetryOptions")
  retryOptions: option<redshiftRetryOptions>,
  @ocaml.doc("<p>The user password.</p>") @as("Password") password: password,
  @ocaml.doc("<p>The name of the user.</p>") @as("Username") username: username,
  @ocaml.doc("<p>The <code>COPY</code> command.</p>") @as("CopyCommand") copyCommand: copyCommand,
  @ocaml.doc("<p>The database connection string.</p>") @as("ClusterJDBCURL")
  clusterJDBCURL: clusterJDBCURL,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: roleARN,
}
@ocaml.doc("<p>Updates the specified HTTP endpoint destination.</p>")
type httpEndpointDestinationUpdate = {
  @as("S3Update") s3Update: option<s3DestinationUpdate>,
  @ocaml.doc("<p>Describes the S3 bucket backup options for the data that Kinesis Firehose delivers to
         the HTTP endpoint destination. You can back up all documents (<code>AllData</code>) or only
         the documents that Kinesis Data Firehose could not deliver to the specified HTTP endpoint
         destination (<code>FailedDataOnly</code>).</p>")
  @as("S3BackupMode")
  s3BackupMode: option<httpEndpointS3BackupMode>,
  @ocaml.doc("<p>Describes the retry behavior in case Kinesis Data Firehose is unable to deliver data to
         the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
         receipt from the specified HTTP endpoint destination.</p>")
  @as("RetryOptions")
  retryOptions: option<httpEndpointRetryOptions>,
  @ocaml.doc("<p>Kinesis Data Firehose uses this IAM role for all the permissions that the delivery
         stream needs.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The configuration of the request sent to the HTTP endpoint specified as the
         destination.</p>")
  @as("RequestConfiguration")
  requestConfiguration: option<httpEndpointRequestConfiguration>,
  @as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>Describes buffering options that can be applied to the data before it is delivered to
         the HTTPS endpoint destination. Kinesis Data Firehose teats these options as hints, and it
         might choose to use more optimal values. The <code>SizeInMBs</code> and
            <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
         one of them, you must also provide a value for the other. </p>")
  @as("BufferingHints")
  bufferingHints: option<httpEndpointBufferingHints>,
  @ocaml.doc("<p>Describes the configuration of the HTTP endpoint destination.</p>")
  @as("EndpointConfiguration")
  endpointConfiguration: option<httpEndpointConfiguration>,
}
@ocaml.doc("<p>Describes the HTTP endpoint destination.</p>")
type httpEndpointDestinationDescription = {
  @as("S3DestinationDescription") s3DestinationDescription: option<s3DestinationDescription>,
  @ocaml.doc("<p>Describes the S3 bucket backup options for the data that Kinesis Firehose delivers to
         the HTTP endpoint destination. You can back up all documents (<code>AllData</code>) or only
         the documents that Kinesis Data Firehose could not deliver to the specified HTTP endpoint
         destination (<code>FailedDataOnly</code>).</p>")
  @as("S3BackupMode")
  s3BackupMode: option<httpEndpointS3BackupMode>,
  @ocaml.doc("<p>Describes the retry behavior in case Kinesis Data Firehose is unable to deliver data to
         the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
         receipt from the specified HTTP endpoint destination.</p>")
  @as("RetryOptions")
  retryOptions: option<httpEndpointRetryOptions>,
  @ocaml.doc("<p>Kinesis Data Firehose uses this IAM role for all the permissions that the delivery
         stream needs.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The configuration of request sent to the HTTP endpoint specified as the
         destination.</p>")
  @as("RequestConfiguration")
  requestConfiguration: option<httpEndpointRequestConfiguration>,
  @as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>Describes buffering options that can be applied to the data before it is delivered to
         the HTTPS endpoint destination. Kinesis Data Firehose teats these options as hints, and it
         might choose to use more optimal values. The <code>SizeInMBs</code> and
            <code>IntervalInSeconds</code> parameters are optional. However, if specify a value for
         one of them, you must also provide a value for the other. </p>")
  @as("BufferingHints")
  bufferingHints: option<httpEndpointBufferingHints>,
  @ocaml.doc("<p>The configuration of the specified HTTP endpoint destination.</p>")
  @as("EndpointConfiguration")
  endpointConfiguration: option<httpEndpointDescription>,
}
@ocaml.doc("<p>Describes the configuration of the HTTP endpoint destination.</p>")
type httpEndpointDestinationConfiguration = {
  @as("S3Configuration") s3Configuration: s3DestinationConfiguration,
  @ocaml.doc("<p>Describes the S3 bucket backup options for the data that Kinesis Data Firehose delivers
         to the HTTP endpoint destination. You can back up all documents (<code>AllData</code>) or
         only the documents that Kinesis Data Firehose could not deliver to the specified HTTP
         endpoint destination (<code>FailedDataOnly</code>).</p>")
  @as("S3BackupMode")
  s3BackupMode: option<httpEndpointS3BackupMode>,
  @ocaml.doc("<p>Describes the retry behavior in case Kinesis Data Firehose is unable to deliver data to
         the specified HTTP endpoint destination, or if it doesn't receive a valid acknowledgment of
         receipt from the specified HTTP endpoint destination.</p>")
  @as("RetryOptions")
  retryOptions: option<httpEndpointRetryOptions>,
  @ocaml.doc("<p>Kinesis Data Firehose uses this IAM role for all the permissions that the delivery
         stream needs.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The configuration of the requeste sent to the HTTP endpoint specified as the
         destination.</p>")
  @as("RequestConfiguration")
  requestConfiguration: option<httpEndpointRequestConfiguration>,
  @as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The buffering options that can be used before data is delivered to the specified
         destination. Kinesis Data Firehose treats these options as hints, and it might choose to
         use more optimal values. The <code>SizeInMBs</code> and <code>IntervalInSeconds</code>
         parameters are optional. However, if you specify a value for one of them, you must also
         provide a value for the other. </p>")
  @as("BufferingHints")
  bufferingHints: option<httpEndpointBufferingHints>,
  @ocaml.doc("<p>The configuration of the HTTP endpoint selected as the destination.</p>")
  @as("EndpointConfiguration")
  endpointConfiguration: httpEndpointConfiguration,
}
@ocaml.doc("<p>Describes an update for a destination in Amazon S3.</p>")
type extendedS3DestinationUpdate = {
  @ocaml.doc("<p>The serializer, deserializer, and schema for converting data from the JSON format to
         the Parquet or ORC format before writing it to Amazon S3.</p>")
  @as("DataFormatConversionConfiguration")
  dataFormatConversionConfiguration: option<dataFormatConversionConfiguration>,
  @ocaml.doc("<p>The Amazon S3 destination for backup.</p>") @as("S3BackupUpdate")
  s3BackupUpdate: option<s3DestinationUpdate>,
  @ocaml.doc("<p>You can update a delivery stream to enable Amazon S3 backup if it is disabled. If
         backup is enabled, you can't update the delivery stream to disable it. </p>")
  @as("S3BackupMode")
  s3BackupMode: option<s3BackupMode>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The Amazon CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The encryption configuration. If no value is specified, the default is no
         encryption.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: option<encryptionConfiguration>,
  @ocaml.doc("<p>The compression format. If no value is specified, the default is
            <code>UNCOMPRESSED</code>. </p>")
  @as("CompressionFormat")
  compressionFormat: option<compressionFormat>,
  @ocaml.doc("<p>The buffering option.</p>") @as("BufferingHints")
  bufferingHints: option<bufferingHints>,
  @ocaml.doc("<p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
         them to S3. This prefix appears immediately following the bucket name. For information
         about how to specify this prefix, see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("ErrorOutputPrefix")
  errorOutputPrefix: option<errorOutputPrefix>,
  @ocaml.doc("<p>The \"YYYY/MM/DD/HH\" time format prefix is automatically used for delivered Amazon S3
         files. You can also specify a custom prefix, as described in <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("Prefix")
  prefix: option<prefix>,
  @ocaml.doc("<p>The ARN of the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("BucketARN")
  bucketARN: option<bucketARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
}
@ocaml.doc("<p>Describes a destination in Amazon S3.</p>")
type extendedS3DestinationDescription = {
  @ocaml.doc("<p>The serializer, deserializer, and schema for converting data from the JSON format to
         the Parquet or ORC format before writing it to Amazon S3.</p>")
  @as("DataFormatConversionConfiguration")
  dataFormatConversionConfiguration: option<dataFormatConversionConfiguration>,
  @ocaml.doc("<p>The configuration for backup in Amazon S3.</p>") @as("S3BackupDescription")
  s3BackupDescription: option<s3DestinationDescription>,
  @ocaml.doc("<p>The Amazon S3 backup mode.</p>") @as("S3BackupMode")
  s3BackupMode: option<s3BackupMode>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The Amazon CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The encryption configuration. If no value is specified, the default is no
         encryption.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: encryptionConfiguration,
  @ocaml.doc("<p>The compression format. If no value is specified, the default is
            <code>UNCOMPRESSED</code>.</p>")
  @as("CompressionFormat")
  compressionFormat: compressionFormat,
  @ocaml.doc("<p>The buffering option.</p>") @as("BufferingHints") bufferingHints: bufferingHints,
  @ocaml.doc("<p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
         them to S3. This prefix appears immediately following the bucket name. For information
         about how to specify this prefix, see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("ErrorOutputPrefix")
  errorOutputPrefix: option<errorOutputPrefix>,
  @ocaml.doc("<p>The \"YYYY/MM/DD/HH\" time format prefix is automatically used for delivered Amazon S3
         files. You can also specify a custom prefix, as described in <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("Prefix")
  prefix: option<prefix>,
  @ocaml.doc("<p>The ARN of the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("BucketARN")
  bucketARN: bucketARN,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: roleARN,
}
@ocaml.doc("<p>Describes the configuration of a destination in Amazon S3.</p>")
type extendedS3DestinationConfiguration = {
  @ocaml.doc("<p>The serializer, deserializer, and schema for converting data from the JSON format to
         the Parquet or ORC format before writing it to Amazon S3.</p>")
  @as("DataFormatConversionConfiguration")
  dataFormatConversionConfiguration: option<dataFormatConversionConfiguration>,
  @ocaml.doc("<p>The configuration for backup in Amazon S3.</p>") @as("S3BackupConfiguration")
  s3BackupConfiguration: option<s3DestinationConfiguration>,
  @ocaml.doc("<p>The Amazon S3 backup mode. After you create a delivery stream, you can update it to
         enable Amazon S3 backup if it is disabled. If backup is enabled, you can't update the
         delivery stream to disable it. </p>")
  @as("S3BackupMode")
  s3BackupMode: option<s3BackupMode>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The Amazon CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The encryption configuration. If no value is specified, the default is no
         encryption.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: option<encryptionConfiguration>,
  @ocaml.doc("<p>The compression format. If no value is specified, the default is
         UNCOMPRESSED.</p>")
  @as("CompressionFormat")
  compressionFormat: option<compressionFormat>,
  @ocaml.doc("<p>The buffering option.</p>") @as("BufferingHints")
  bufferingHints: option<bufferingHints>,
  @ocaml.doc("<p>A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing
         them to S3. This prefix appears immediately following the bucket name. For information
         about how to specify this prefix, see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("ErrorOutputPrefix")
  errorOutputPrefix: option<errorOutputPrefix>,
  @ocaml.doc("<p>The \"YYYY/MM/DD/HH\" time format prefix is automatically used for delivered Amazon S3
         files. You can also specify a custom prefix, as described in <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html\">Custom Prefixes
            for Amazon S3 Objects</a>.</p>")
  @as("Prefix")
  prefix: option<prefix>,
  @ocaml.doc("<p>The ARN of the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("BucketARN")
  bucketARN: bucketARN,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: roleARN,
}
@ocaml.doc("<p>Describes an update for a destination in Amazon ES.</p>")
type elasticsearchDestinationUpdate = {
  @ocaml.doc("<p>The CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The Amazon S3 destination.</p>") @as("S3Update")
  s3Update: option<s3DestinationUpdate>,
  @ocaml.doc("<p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to
         Amazon ES. The default value is 300 (5 minutes).</p>")
  @as("RetryOptions")
  retryOptions: option<elasticsearchRetryOptions>,
  @ocaml.doc("<p>The buffering options. If no value is specified,
            <code>ElasticsearchBufferingHints</code> object default values are used. </p>")
  @as("BufferingHints")
  bufferingHints: option<elasticsearchBufferingHints>,
  @ocaml.doc("<p>The Elasticsearch index rotation period. Index rotation appends a timestamp to
            <code>IndexName</code> to facilitate the expiration of old data. For more information,
         see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation\">Index Rotation for the
            Amazon ES Destination</a>. Default value is <code>OneDay</code>.</p>")
  @as("IndexRotationPeriod")
  indexRotationPeriod: option<elasticsearchIndexRotationPeriod>,
  @ocaml.doc("<p>The Elasticsearch type name. For Elasticsearch 6.x, there can be only one type per
         index. If you try to specify a new type for an existing index that already has another
         type, Kinesis Data Firehose returns an error during runtime.</p>

         <p>If you upgrade Elasticsearch from 6.x to 7.x and don’t update your delivery stream,
         Kinesis Data Firehose still delivers data to Elasticsearch with the old index name and type
         name. If you want to update your delivery stream with a new index name, provide an empty
         string for <code>TypeName</code>. </p>")
  @as("TypeName")
  typeName: option<elasticsearchTypeName>,
  @ocaml.doc("<p>The Elasticsearch index name.</p>") @as("IndexName")
  indexName: option<elasticsearchIndexName>,
  @ocaml.doc("<p>The endpoint to use when communicating with the cluster. Specify either this
            <code>ClusterEndpoint</code> or the <code>DomainARN</code> field.</p>")
  @as("ClusterEndpoint")
  clusterEndpoint: option<elasticsearchClusterEndpoint>,
  @ocaml.doc("<p>The ARN of the Amazon ES domain. The IAM role must have permissions
            for <code>DescribeElasticsearchDomain</code>, <code>DescribeElasticsearchDomains</code>,
         and <code>DescribeElasticsearchDomainConfig</code> after assuming the IAM role specified in
            <code>RoleARN</code>. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>

         <p>Specify either <code>ClusterEndpoint</code> or <code>DomainARN</code>.</p>")
  @as("DomainARN")
  domainARN: option<elasticsearchDomainARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose
         for calling the Amazon ES Configuration API and for indexing documents. For more
         information, see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3\">Grant Kinesis Data
            Firehose Access to an Amazon S3 Destination</a> and <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
}
@ocaml.doc("<p>The destination description in Amazon ES.</p>")
type elasticsearchDestinationDescription = {
  @ocaml.doc("<p>The details of the VPC of the Amazon ES destination.</p>")
  @as("VpcConfigurationDescription")
  vpcConfigurationDescription: option<vpcConfigurationDescription>,
  @ocaml.doc("<p>The Amazon CloudWatch logging options.</p>") @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The Amazon S3 destination.</p>") @as("S3DestinationDescription")
  s3DestinationDescription: option<s3DestinationDescription>,
  @ocaml.doc("<p>The Amazon S3 backup mode.</p>") @as("S3BackupMode")
  s3BackupMode: option<elasticsearchS3BackupMode>,
  @ocaml.doc("<p>The Amazon ES retry options.</p>") @as("RetryOptions")
  retryOptions: option<elasticsearchRetryOptions>,
  @ocaml.doc("<p>The buffering options.</p>") @as("BufferingHints")
  bufferingHints: option<elasticsearchBufferingHints>,
  @ocaml.doc("<p>The Elasticsearch index rotation period</p>") @as("IndexRotationPeriod")
  indexRotationPeriod: option<elasticsearchIndexRotationPeriod>,
  @ocaml.doc("<p>The Elasticsearch type name. This applies to Elasticsearch 6.x and lower versions.
         For Elasticsearch 7.x, there's no value for <code>TypeName</code>.</p>")
  @as("TypeName")
  typeName: option<elasticsearchTypeName>,
  @ocaml.doc("<p>The Elasticsearch index name.</p>") @as("IndexName")
  indexName: option<elasticsearchIndexName>,
  @ocaml.doc("<p>The endpoint to use when communicating with the cluster. Kinesis Data Firehose uses
         either this <code>ClusterEndpoint</code> or the <code>DomainARN</code> field to send data
         to Amazon ES.</p>")
  @as("ClusterEndpoint")
  clusterEndpoint: option<elasticsearchClusterEndpoint>,
  @ocaml.doc("<p>The ARN of the Amazon ES domain. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>

         <p>Kinesis Data Firehose uses either <code>ClusterEndpoint</code> or <code>DomainARN</code>
         to send data to Amazon ES.</p>")
  @as("DomainARN")
  domainARN: option<elasticsearchDomainARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS credentials. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
}
@ocaml.doc("<p>Describes the configuration of a destination in Amazon ES.</p>")
type elasticsearchDestinationConfiguration = {
  @ocaml.doc("<p>The details of the VPC of the Amazon ES destination.</p>") @as("VpcConfiguration")
  vpcConfiguration: option<vpcConfiguration>,
  @ocaml.doc("<p>The Amazon CloudWatch logging options for your delivery stream.</p>")
  @as("CloudWatchLoggingOptions")
  cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @ocaml.doc("<p>The data processing configuration.</p>") @as("ProcessingConfiguration")
  processingConfiguration: option<processingConfiguration>,
  @ocaml.doc("<p>The configuration for the backup Amazon S3 location.</p>") @as("S3Configuration")
  s3Configuration: s3DestinationConfiguration,
  @ocaml.doc("<p>Defines how documents should be delivered to Amazon S3. When it is set to
            <code>FailedDocumentsOnly</code>, Kinesis Data Firehose writes any documents that could
         not be indexed to the configured Amazon S3 destination, with
            <code>elasticsearch-failed/</code> appended to the key prefix. When set to
            <code>AllDocuments</code>, Kinesis Data Firehose delivers all incoming records to Amazon
         S3, and also writes failed documents with <code>elasticsearch-failed/</code> appended to
         the prefix. For more information, see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-s3-backup\">Amazon S3 Backup for the
            Amazon ES Destination</a>. Default value is
         <code>FailedDocumentsOnly</code>.</p>
         <p>You can't change this backup mode after you create the delivery stream. </p>")
  @as("S3BackupMode")
  s3BackupMode: option<elasticsearchS3BackupMode>,
  @ocaml.doc("<p>The retry behavior in case Kinesis Data Firehose is unable to deliver documents to
         Amazon ES. The default value is 300 (5 minutes).</p>")
  @as("RetryOptions")
  retryOptions: option<elasticsearchRetryOptions>,
  @ocaml.doc("<p>The buffering options. If no value is specified, the default values for
            <code>ElasticsearchBufferingHints</code> are used.</p>")
  @as("BufferingHints")
  bufferingHints: option<elasticsearchBufferingHints>,
  @ocaml.doc("<p>The Elasticsearch index rotation period. Index rotation appends a timestamp to the
            <code>IndexName</code> to facilitate the expiration of old data. For more information,
         see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation\">Index Rotation for the
            Amazon ES Destination</a>. The default value is <code>OneDay</code>.</p>")
  @as("IndexRotationPeriod")
  indexRotationPeriod: option<elasticsearchIndexRotationPeriod>,
  @ocaml.doc("<p>The Elasticsearch type name. For Elasticsearch 6.x, there can be only one type per
         index. If you try to specify a new type for an existing index that already has another
         type, Kinesis Data Firehose returns an error during run time.</p>

         <p>For Elasticsearch 7.x, don't specify a <code>TypeName</code>.</p>")
  @as("TypeName")
  typeName: option<elasticsearchTypeName>,
  @ocaml.doc("<p>The Elasticsearch index name.</p>") @as("IndexName")
  indexName: elasticsearchIndexName,
  @ocaml.doc("<p>The endpoint to use when communicating with the cluster. Specify either this
            <code>ClusterEndpoint</code> or the <code>DomainARN</code> field.</p>")
  @as("ClusterEndpoint")
  clusterEndpoint: option<elasticsearchClusterEndpoint>,
  @ocaml.doc("<p>The ARN of the Amazon ES domain. The IAM role must have permissions
            for <code>DescribeElasticsearchDomain</code>, <code>DescribeElasticsearchDomains</code>,
         and <code>DescribeElasticsearchDomainConfig</code> after assuming the role specified in
            <b>RoleARN</b>. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>

         <p>Specify either <code>ClusterEndpoint</code> or <code>DomainARN</code>.</p>")
  @as("DomainARN")
  domainARN: option<elasticsearchDomainARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose
         for calling the Amazon ES Configuration API and for indexing documents. For more
         information, see <a href=\"https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3\">Grant Kinesis Data
            Firehose Access to an Amazon S3 Destination</a> and <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
            Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("RoleARN")
  roleARN: roleARN,
}
@ocaml.doc("<p>Describes the destination for a delivery stream.</p>")
type destinationDescription = {
  @ocaml.doc("<p>Describes the specified HTTP endpoint destination.</p>")
  @as("HttpEndpointDestinationDescription")
  httpEndpointDestinationDescription: option<httpEndpointDestinationDescription>,
  @ocaml.doc("<p>The destination in Splunk.</p>") @as("SplunkDestinationDescription")
  splunkDestinationDescription: option<splunkDestinationDescription>,
  @ocaml.doc("<p>The destination in Amazon ES.</p>") @as("ElasticsearchDestinationDescription")
  elasticsearchDestinationDescription: option<elasticsearchDestinationDescription>,
  @ocaml.doc("<p>The destination in Amazon Redshift.</p>") @as("RedshiftDestinationDescription")
  redshiftDestinationDescription: option<redshiftDestinationDescription>,
  @ocaml.doc("<p>The destination in Amazon S3.</p>") @as("ExtendedS3DestinationDescription")
  extendedS3DestinationDescription: option<extendedS3DestinationDescription>,
  @ocaml.doc("<p>[Deprecated] The destination in Amazon S3.</p>") @as("S3DestinationDescription")
  s3DestinationDescription: option<s3DestinationDescription>,
  @ocaml.doc("<p>The ID of the destination.</p>") @as("DestinationId") destinationId: destinationId,
}
type destinationDescriptionList = array<destinationDescription>
@ocaml.doc("<p>Contains information about a delivery stream.</p>")
type deliveryStreamDescription = {
  @ocaml.doc("<p>Indicates whether there are more destinations available to list.</p>")
  @as("HasMoreDestinations")
  hasMoreDestinations: booleanObject,
  @ocaml.doc("<p>The destinations.</p>") @as("Destinations")
  destinations: destinationDescriptionList,
  @ocaml.doc("<p>If the <code>DeliveryStreamType</code> parameter is
            <code>KinesisStreamAsSource</code>, a <a>SourceDescription</a> object
         describing the source Kinesis data stream.</p>")
  @as("Source")
  source: option<sourceDescription>,
  @ocaml.doc("<p>The date and time that the delivery stream was last updated.</p>")
  @as("LastUpdateTimestamp")
  lastUpdateTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the delivery stream was created.</p>")
  @as("CreateTimestamp")
  createTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Each time the destination is updated for a delivery stream, the version ID is
         changed, and the current version ID is required when updating the destination. This is so
         that the service knows it is applying the changes to the correct version of the delivery
         stream.</p>")
  @as("VersionId")
  versionId: deliveryStreamVersionId,
  @ocaml.doc("<p>The delivery stream type. This can be one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>DirectPut</code>: Provider applications access the delivery stream
               directly.</p>
            </li>
            <li>
               <p>
                  <code>KinesisStreamAsSource</code>: The delivery stream uses a Kinesis data
               stream as a source.</p>
            </li>
         </ul>")
  @as("DeliveryStreamType")
  deliveryStreamType: deliveryStreamType,
  @ocaml.doc("<p>Indicates the server-side encryption (SSE) status for the delivery stream.</p>")
  @as("DeliveryStreamEncryptionConfiguration")
  deliveryStreamEncryptionConfiguration: option<deliveryStreamEncryptionConfiguration>,
  @ocaml.doc("<p>Provides details in case one of the following operations fails due to an error related
         to KMS: <a>CreateDeliveryStream</a>, <a>DeleteDeliveryStream</a>,
            <a>StartDeliveryStreamEncryption</a>, <a>StopDeliveryStreamEncryption</a>.</p>")
  @as("FailureDescription")
  failureDescription: option<failureDescription>,
  @ocaml.doc("<p>The status of the delivery stream. If the status of a delivery stream is
            <code>CREATING_FAILED</code>, this status doesn't change, and you can't invoke
            <code>CreateDeliveryStream</code> again on it. However, you can invoke the <a>DeleteDeliveryStream</a> operation to delete it.</p>")
  @as("DeliveryStreamStatus")
  deliveryStreamStatus: deliveryStreamStatus,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the delivery stream. For more information, see
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>")
  @as("DeliveryStreamARN")
  deliveryStreamARN: deliveryStreamARN,
  @ocaml.doc("<p>The name of the delivery stream.</p>") @as("DeliveryStreamName")
  deliveryStreamName: deliveryStreamName,
}
@ocaml.doc("<fullname>Amazon Kinesis Data Firehose API Reference</fullname>
         <p>Amazon Kinesis Data Firehose is a fully managed service that delivers real-time
         streaming data to destinations such as Amazon Simple Storage Service (Amazon S3), Amazon
         Elasticsearch Service (Amazon ES), Amazon Redshift, and Splunk.</p>")
module StopDeliveryStreamEncryption = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the delivery stream for which you want to disable server-side encryption
         (SSE).</p>")
    @as("DeliveryStreamName")
    deliveryStreamName: deliveryStreamName,
  }

  @module("@aws-sdk/client-firehose") @new
  external new: request => t = "StopDeliveryStreamEncryptionCommand"
  let make = (~deliveryStreamName, ()) => new({deliveryStreamName: deliveryStreamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDeliveryStream = {
  type t
  type request = {
    @ocaml.doc("<p>Set this to true if you want to delete the delivery stream even if Kinesis Data Firehose
         is unable to retire the grant for the CMK. Kinesis Data Firehose might be unable to retire
         the grant due to a customer error, such as when the CMK or the grant are in an invalid
         state. If you force deletion, you can then use the <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html\">RevokeGrant</a> operation to revoke the grant you gave to Kinesis Data Firehose. If
         a failure to retire the grant happens due to an AWS KMS issue, Kinesis Data Firehose keeps
         retrying the delete operation.</p>
         <p>The default value is false.</p>")
    @as("AllowForceDelete")
    allowForceDelete: option<booleanObject>,
    @ocaml.doc("<p>The name of the delivery stream.</p>") @as("DeliveryStreamName")
    deliveryStreamName: deliveryStreamName,
  }

  @module("@aws-sdk/client-firehose") @new
  external new: request => t = "DeleteDeliveryStreamCommand"
  let make = (~deliveryStreamName, ~allowForceDelete=?, ()) =>
    new({allowForceDelete: allowForceDelete, deliveryStreamName: deliveryStreamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagDeliveryStream = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys. Each corresponding tag is removed from the delivery
         stream.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The name of the delivery stream.</p>") @as("DeliveryStreamName")
    deliveryStreamName: deliveryStreamName,
  }

  @module("@aws-sdk/client-firehose") @new external new: request => t = "UntagDeliveryStreamCommand"
  let make = (~tagKeys, ~deliveryStreamName, ()) =>
    new({tagKeys: tagKeys, deliveryStreamName: deliveryStreamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartDeliveryStreamEncryption = {
  type t
  type request = {
    @ocaml.doc("<p>Used to specify the type and Amazon Resource Name (ARN) of the KMS key needed for
         Server-Side Encryption (SSE).</p>")
    @as("DeliveryStreamEncryptionConfigurationInput")
    deliveryStreamEncryptionConfigurationInput: option<deliveryStreamEncryptionConfigurationInput>,
    @ocaml.doc("<p>The name of the delivery stream for which you want to enable server-side encryption
         (SSE).</p>")
    @as("DeliveryStreamName")
    deliveryStreamName: deliveryStreamName,
  }

  @module("@aws-sdk/client-firehose") @new
  external new: request => t = "StartDeliveryStreamEncryptionCommand"
  let make = (~deliveryStreamName, ~deliveryStreamEncryptionConfigurationInput=?, ()) =>
    new({
      deliveryStreamEncryptionConfigurationInput: deliveryStreamEncryptionConfigurationInput,
      deliveryStreamName: deliveryStreamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRecord = {
  type t
  type request = {
    @ocaml.doc("<p>The record.</p>") @as("Record") record: record,
    @ocaml.doc("<p>The name of the delivery stream.</p>") @as("DeliveryStreamName")
    deliveryStreamName: deliveryStreamName,
  }
  type response = {
    @ocaml.doc(
      "<p>Indicates whether server-side encryption (SSE) was enabled during this operation.</p>"
    )
    @as("Encrypted")
    encrypted: option<booleanObject>,
    @ocaml.doc("<p>The ID of the record.</p>") @as("RecordId") recordId: putResponseRecordId,
  }
  @module("@aws-sdk/client-firehose") @new external new: request => t = "PutRecordCommand"
  let make = (~record, ~deliveryStreamName, ()) =>
    new({record: record, deliveryStreamName: deliveryStreamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeliveryStreams = {
  type t
  type request = {
    @ocaml.doc("<p>The list of delivery streams returned by this call to
            <code>ListDeliveryStreams</code> will start with the delivery stream whose name comes
         alphabetically immediately after the name you specify in
            <code>ExclusiveStartDeliveryStreamName</code>.</p>")
    @as("ExclusiveStartDeliveryStreamName")
    exclusiveStartDeliveryStreamName: option<deliveryStreamName>,
    @ocaml.doc("<p>The delivery stream type. This can be one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>DirectPut</code>: Provider applications access the delivery stream
               directly.</p>
            </li>
            <li>
               <p>
                  <code>KinesisStreamAsSource</code>: The delivery stream uses a Kinesis data
               stream as a source.</p>
            </li>
         </ul>
         <p>This parameter is optional. If this parameter is omitted, delivery streams of all
         types are returned.</p>")
    @as("DeliveryStreamType")
    deliveryStreamType: option<deliveryStreamType>,
    @ocaml.doc("<p>The maximum number of delivery streams to list. The default value is 10.</p>")
    @as("Limit")
    limit: option<listDeliveryStreamsInputLimit>,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether there are more delivery streams available to list.</p>")
    @as("HasMoreDeliveryStreams")
    hasMoreDeliveryStreams: booleanObject,
    @ocaml.doc("<p>The names of the delivery streams.</p>") @as("DeliveryStreamNames")
    deliveryStreamNames: deliveryStreamNameList,
  }
  @module("@aws-sdk/client-firehose") @new external new: request => t = "ListDeliveryStreamsCommand"
  let make = (~exclusiveStartDeliveryStreamName=?, ~deliveryStreamType=?, ~limit=?, ()) =>
    new({
      exclusiveStartDeliveryStreamName: exclusiveStartDeliveryStreamName,
      deliveryStreamType: deliveryStreamType,
      limit: limit,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagDeliveryStream = {
  type t
  type request = {
    @ocaml.doc("<p>A set of key-value pairs to use to create the tags.</p>") @as("Tags")
    tags: tagDeliveryStreamInputTagList,
    @ocaml.doc("<p>The name of the delivery stream to which you want to add the tags.</p>")
    @as("DeliveryStreamName")
    deliveryStreamName: deliveryStreamName,
  }

  @module("@aws-sdk/client-firehose") @new external new: request => t = "TagDeliveryStreamCommand"
  let make = (~tags, ~deliveryStreamName, ()) =>
    new({tags: tags, deliveryStreamName: deliveryStreamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRecordBatch = {
  type t
  type request = {
    @ocaml.doc("<p>One or more records.</p>") @as("Records")
    records: putRecordBatchRequestEntryList,
    @ocaml.doc("<p>The name of the delivery stream.</p>") @as("DeliveryStreamName")
    deliveryStreamName: deliveryStreamName,
  }
  type response = {
    @ocaml.doc("<p>The results array. For each record, the index of the response element is the same as
         the index used in the request array.</p>")
    @as("RequestResponses")
    requestResponses: putRecordBatchResponseEntryList,
    @ocaml.doc(
      "<p>Indicates whether server-side encryption (SSE) was enabled during this operation.</p>"
    )
    @as("Encrypted")
    encrypted: option<booleanObject>,
    @ocaml.doc("<p>The number of records that might have failed processing. This number might be greater
         than 0 even if the <a>PutRecordBatch</a> call succeeds. Check
            <code>FailedPutCount</code> to determine whether there are records that you need to
         resend.</p>")
    @as("FailedPutCount")
    failedPutCount: nonNegativeIntegerObject,
  }
  @module("@aws-sdk/client-firehose") @new external new: request => t = "PutRecordBatchCommand"
  let make = (~records, ~deliveryStreamName, ()) =>
    new({records: records, deliveryStreamName: deliveryStreamName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForDeliveryStream = {
  type t
  type request = {
    @ocaml.doc("<p>The number of tags to return. If this number is less than the total number of tags
         associated with the delivery stream, <code>HasMoreTags</code> is set to <code>true</code>
         in the response. To list additional tags, set <code>ExclusiveStartTagKey</code> to the last
         key in the response. </p>")
    @as("Limit")
    limit: option<listTagsForDeliveryStreamInputLimit>,
    @ocaml.doc("<p>The key to use as the starting point for the list of tags. If you set this parameter,
            <code>ListTagsForDeliveryStream</code> gets all tags that occur after
            <code>ExclusiveStartTagKey</code>.</p>")
    @as("ExclusiveStartTagKey")
    exclusiveStartTagKey: option<tagKey>,
    @ocaml.doc("<p>The name of the delivery stream whose tags you want to list.</p>")
    @as("DeliveryStreamName")
    deliveryStreamName: deliveryStreamName,
  }
  type response = {
    @ocaml.doc("<p>If this is <code>true</code> in the response, more tags are available. To list the
         remaining tags, set <code>ExclusiveStartTagKey</code> to the key of the last tag returned
         and call <code>ListTagsForDeliveryStream</code> again.</p>")
    @as("HasMoreTags")
    hasMoreTags: booleanObject,
    @ocaml.doc("<p>A list of tags associated with <code>DeliveryStreamName</code>, starting with the
         first tag after <code>ExclusiveStartTagKey</code> and up to the specified
            <code>Limit</code>.</p>")
    @as("Tags")
    tags: listTagsForDeliveryStreamOutputTagList,
  }
  @module("@aws-sdk/client-firehose") @new
  external new: request => t = "ListTagsForDeliveryStreamCommand"
  let make = (~deliveryStreamName, ~limit=?, ~exclusiveStartTagKey=?, ()) =>
    new({
      limit: limit,
      exclusiveStartTagKey: exclusiveStartTagKey,
      deliveryStreamName: deliveryStreamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDestination = {
  type t
  type request = {
    @ocaml.doc("<p>Describes an update to the specified HTTP endpoint destination.</p>")
    @as("HttpEndpointDestinationUpdate")
    httpEndpointDestinationUpdate: option<httpEndpointDestinationUpdate>,
    @ocaml.doc("<p>Describes an update for a destination in Splunk.</p>")
    @as("SplunkDestinationUpdate")
    splunkDestinationUpdate: option<splunkDestinationUpdate>,
    @ocaml.doc("<p>Describes an update for a destination in Amazon ES.</p>")
    @as("ElasticsearchDestinationUpdate")
    elasticsearchDestinationUpdate: option<elasticsearchDestinationUpdate>,
    @ocaml.doc("<p>Describes an update for a destination in Amazon Redshift.</p>")
    @as("RedshiftDestinationUpdate")
    redshiftDestinationUpdate: option<redshiftDestinationUpdate>,
    @ocaml.doc("<p>Describes an update for a destination in Amazon S3.</p>")
    @as("ExtendedS3DestinationUpdate")
    extendedS3DestinationUpdate: option<extendedS3DestinationUpdate>,
    @ocaml.doc("<p>[Deprecated] Describes an update for a destination in Amazon S3.</p>")
    @as("S3DestinationUpdate")
    s3DestinationUpdate: option<s3DestinationUpdate>,
    @ocaml.doc("<p>The ID of the destination.</p>") @as("DestinationId")
    destinationId: destinationId,
    @ocaml.doc("<p>Obtain this value from the <code>VersionId</code> result of <a>DeliveryStreamDescription</a>. This value is required, and helps the service
         perform conditional operations. For example, if there is an interleaving update and this
         value is null, then the update destination fails. After the update is successful, the
            <code>VersionId</code> value is updated. The service then performs a merge of the old
         configuration with the new configuration.</p>")
    @as("CurrentDeliveryStreamVersionId")
    currentDeliveryStreamVersionId: deliveryStreamVersionId,
    @ocaml.doc("<p>The name of the delivery stream.</p>") @as("DeliveryStreamName")
    deliveryStreamName: deliveryStreamName,
  }

  @module("@aws-sdk/client-firehose") @new external new: request => t = "UpdateDestinationCommand"
  let make = (
    ~destinationId,
    ~currentDeliveryStreamVersionId,
    ~deliveryStreamName,
    ~httpEndpointDestinationUpdate=?,
    ~splunkDestinationUpdate=?,
    ~elasticsearchDestinationUpdate=?,
    ~redshiftDestinationUpdate=?,
    ~extendedS3DestinationUpdate=?,
    ~s3DestinationUpdate=?,
    (),
  ) =>
    new({
      httpEndpointDestinationUpdate: httpEndpointDestinationUpdate,
      splunkDestinationUpdate: splunkDestinationUpdate,
      elasticsearchDestinationUpdate: elasticsearchDestinationUpdate,
      redshiftDestinationUpdate: redshiftDestinationUpdate,
      extendedS3DestinationUpdate: extendedS3DestinationUpdate,
      s3DestinationUpdate: s3DestinationUpdate,
      destinationId: destinationId,
      currentDeliveryStreamVersionId: currentDeliveryStreamVersionId,
      deliveryStreamName: deliveryStreamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateDeliveryStream = {
  type t
  type request = {
    @ocaml.doc("<p>A set of tags to assign to the delivery stream. A tag is a key-value pair that you can
         define and assign to AWS resources. Tags are metadata. For example, you can add friendly
         names and descriptions or other types of information that can help you distinguish the
         delivery stream. For more information about tags, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html\">Using Cost Allocation Tags</a> in the AWS Billing and Cost Management User
         Guide.</p>

         <p>You can specify up to 50 tags when creating a delivery stream.</p>")
    @as("Tags")
    tags: option<tagDeliveryStreamInputTagList>,
    @ocaml.doc("<p>Enables configuring Kinesis Firehose to deliver data to any HTTP endpoint destination.
         You can specify only one destination.</p>")
    @as("HttpEndpointDestinationConfiguration")
    httpEndpointDestinationConfiguration: option<httpEndpointDestinationConfiguration>,
    @ocaml.doc("<p>The destination in Splunk. You can specify only one destination.</p>")
    @as("SplunkDestinationConfiguration")
    splunkDestinationConfiguration: option<splunkDestinationConfiguration>,
    @ocaml.doc("<p>The destination in Amazon ES. You can specify only one destination.</p>")
    @as("ElasticsearchDestinationConfiguration")
    elasticsearchDestinationConfiguration: option<elasticsearchDestinationConfiguration>,
    @ocaml.doc("<p>The destination in Amazon Redshift. You can specify only one destination.</p>")
    @as("RedshiftDestinationConfiguration")
    redshiftDestinationConfiguration: option<redshiftDestinationConfiguration>,
    @ocaml.doc("<p>The destination in Amazon S3. You can specify only one destination.</p>")
    @as("ExtendedS3DestinationConfiguration")
    extendedS3DestinationConfiguration: option<extendedS3DestinationConfiguration>,
    @ocaml.doc("<p>[Deprecated]
         The destination in Amazon S3. You can specify only one destination.</p>")
    @as("S3DestinationConfiguration")
    s3DestinationConfiguration: option<s3DestinationConfiguration>,
    @ocaml.doc("<p>Used to specify the type and Amazon Resource Name (ARN) of the KMS key needed for
         Server-Side Encryption (SSE).</p>")
    @as("DeliveryStreamEncryptionConfigurationInput")
    deliveryStreamEncryptionConfigurationInput: option<deliveryStreamEncryptionConfigurationInput>,
    @ocaml.doc("<p>When a Kinesis data stream is used as the source for the delivery stream, a <a>KinesisStreamSourceConfiguration</a> containing the Kinesis data stream Amazon
         Resource Name (ARN) and the role ARN for the source stream.</p>")
    @as("KinesisStreamSourceConfiguration")
    kinesisStreamSourceConfiguration: option<kinesisStreamSourceConfiguration>,
    @ocaml.doc("<p>The delivery stream type. This parameter can be one of the following
         values:</p>
         <ul>
            <li>
               <p>
                  <code>DirectPut</code>: Provider applications access the delivery stream
               directly.</p>
            </li>
            <li>
               <p>
                  <code>KinesisStreamAsSource</code>: The delivery stream uses a Kinesis data
               stream as a source.</p>
            </li>
         </ul>")
    @as("DeliveryStreamType")
    deliveryStreamType: option<deliveryStreamType>,
    @ocaml.doc("<p>The name of the delivery stream. This name must be unique per AWS account in the same
         AWS Region. If the delivery streams are in different accounts or different Regions, you can
         have multiple delivery streams with the same name.</p>")
    @as("DeliveryStreamName")
    deliveryStreamName: deliveryStreamName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the delivery stream.</p>") @as("DeliveryStreamARN")
    deliveryStreamARN: option<deliveryStreamARN>,
  }
  @module("@aws-sdk/client-firehose") @new
  external new: request => t = "CreateDeliveryStreamCommand"
  let make = (
    ~deliveryStreamName,
    ~tags=?,
    ~httpEndpointDestinationConfiguration=?,
    ~splunkDestinationConfiguration=?,
    ~elasticsearchDestinationConfiguration=?,
    ~redshiftDestinationConfiguration=?,
    ~extendedS3DestinationConfiguration=?,
    ~s3DestinationConfiguration=?,
    ~deliveryStreamEncryptionConfigurationInput=?,
    ~kinesisStreamSourceConfiguration=?,
    ~deliveryStreamType=?,
    (),
  ) =>
    new({
      tags: tags,
      httpEndpointDestinationConfiguration: httpEndpointDestinationConfiguration,
      splunkDestinationConfiguration: splunkDestinationConfiguration,
      elasticsearchDestinationConfiguration: elasticsearchDestinationConfiguration,
      redshiftDestinationConfiguration: redshiftDestinationConfiguration,
      extendedS3DestinationConfiguration: extendedS3DestinationConfiguration,
      s3DestinationConfiguration: s3DestinationConfiguration,
      deliveryStreamEncryptionConfigurationInput: deliveryStreamEncryptionConfigurationInput,
      kinesisStreamSourceConfiguration: kinesisStreamSourceConfiguration,
      deliveryStreamType: deliveryStreamType,
      deliveryStreamName: deliveryStreamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDeliveryStream = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the destination to start returning the destination information. Kinesis
         Data Firehose supports one destination per delivery stream.</p>")
    @as("ExclusiveStartDestinationId")
    exclusiveStartDestinationId: option<destinationId>,
    @ocaml.doc("<p>The limit on the number of destinations to return. You can have one destination per
         delivery stream.</p>")
    @as("Limit")
    limit: option<describeDeliveryStreamInputLimit>,
    @ocaml.doc("<p>The name of the delivery stream.</p>") @as("DeliveryStreamName")
    deliveryStreamName: deliveryStreamName,
  }
  type response = {
    @ocaml.doc("<p>Information about the delivery stream.</p>") @as("DeliveryStreamDescription")
    deliveryStreamDescription: deliveryStreamDescription,
  }
  @module("@aws-sdk/client-firehose") @new
  external new: request => t = "DescribeDeliveryStreamCommand"
  let make = (~deliveryStreamName, ~exclusiveStartDestinationId=?, ~limit=?, ()) =>
    new({
      exclusiveStartDestinationId: exclusiveStartDestinationId,
      limit: limit,
      deliveryStreamName: deliveryStreamName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
