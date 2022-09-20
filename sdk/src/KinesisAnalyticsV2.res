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
external createClient: unit => awsServiceClient = "KinesisAnalyticsV2Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type zipFileContent = NodeJs.Buffer.t
type vpcId = string
type urlType = [
  | @as("ZEPPELIN_UI_URL") #ZEPPELIN_UI_URL
  | @as("FLINK_DASHBOARD_URL") #FLINK_DASHBOARD_URL
]
type timestamp_ = Js.Date.t
type textContent = string
type tagValue = string
type tagKey = string
type subnetId = string
type snapshotStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("READY") #READY
  | @as("CREATING") #CREATING
]
type snapshotName = string
type sessionExpirationDurationInSeconds = float
type securityGroupId = string
type runtimeEnvironment = [
  | @as("ZEPPELIN-FLINK-2_0") #ZEPPELIN_FLINK_2_0
  | @as("FLINK-1_13") #FLINK_1_13
  | @as("FLINK-1_11") #FLINK_1_11
  | @as("ZEPPELIN-FLINK-1_0") #ZEPPELIN_FLINK_1_0
  | @as("FLINK-1_8") #FLINK_1_8
  | @as("FLINK-1_6") #FLINK_1_6
  | @as("SQL-1_0") #SQL_1_0
]
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
type propertyValue = string
type propertyKey = string
type processedInputRecord = string
type parsedInputRecordField = string
type parallelismPerKPU = int
type parallelism = int
type objectVersion = string
type nextToken = string
type minPauseBetweenCheckpoints = float
type metricsLevel = [
  | @as("PARALLELISM") #PARALLELISM
  | @as("OPERATOR") #OPERATOR
  | @as("TASK") #TASK
  | @as("APPLICATION") #APPLICATION
]
type mavenVersion = string
type mavenGroupId = string
type mavenArtifactId = string
type logStreamARN = string
type logLevel = [@as("DEBUG") #DEBUG | @as("ERROR") #ERROR | @as("WARN") #WARN | @as("INFO") #INFO]
type listSnapshotsInputLimit = int
type listApplicationsInputLimit = int
type listApplicationVersionsInputLimit = int
type kinesisAnalyticsARN = string
type jobPlanDescription = string
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
type databaseARN = string
type configurationType = [@as("CUSTOM") #CUSTOM | @as("DEFAULT") #DEFAULT]
type conditionalToken = string
type codeSize = float
type codeMD5 = string
type codeContentType = [@as("ZIPFILE") #ZIPFILE | @as("PLAINTEXT") #PLAINTEXT]
type checkpointInterval = float
type bucketARN = string
type booleanObject = bool
type basePath = string
type authorizedUrl = string
type artifactType = [@as("DEPENDENCY_JAR") #DEPENDENCY_JAR | @as("UDF") #UDF]
type applicationVersionId = float
type applicationStatus = [
  | @as("ROLLED_BACK") #ROLLED_BACK
  | @as("MAINTENANCE") #MAINTENANCE
  | @as("ROLLING_BACK") #ROLLING_BACK
  | @as("FORCE_STOPPING") #FORCE_STOPPING
  | @as("AUTOSCALING") #AUTOSCALING
  | @as("UPDATING") #UPDATING
  | @as("RUNNING") #RUNNING
  | @as("READY") #READY
  | @as("STOPPING") #STOPPING
  | @as("STARTING") #STARTING
  | @as("DELETING") #DELETING
]
type applicationRestoreType = [
  | @as("RESTORE_FROM_CUSTOM_SNAPSHOT") #RESTORE_FROM_CUSTOM_SNAPSHOT
  | @as("RESTORE_FROM_LATEST_SNAPSHOT") #RESTORE_FROM_LATEST_SNAPSHOT
  | @as("SKIP_RESTORE_FROM_SNAPSHOT") #SKIP_RESTORE_FROM_SNAPSHOT
]
type applicationName = string
type applicationMode = [@as("INTERACTIVE") #INTERACTIVE | @as("STREAMING") #STREAMING]
type applicationMaintenanceWindowStartTime = string
type applicationMaintenanceWindowEndTime = string
type applicationDescription = string
@ocaml.doc(
  "<p>Updates to the monitoring configuration for Apache Zeppelin within a Kinesis Data Analytics Studio notebook.</p>"
)
type zeppelinMonitoringConfigurationUpdate = {
  @ocaml.doc(
    "<p>Updates to the logging level for Apache Zeppelin within a Kinesis Data Analytics Studio notebook.</p>"
  )
  @as("LogLevelUpdate")
  logLevelUpdate: logLevel,
}
@ocaml.doc(
  "<p>The monitoring configuration for Apache Zeppelin within a Kinesis Data Analytics Studio notebook.</p>"
)
type zeppelinMonitoringConfigurationDescription = {
  @ocaml.doc("<p>Describes the verbosity of the CloudWatch Logs for an application.</p>")
  @as("LogLevel")
  logLevel: option<logLevel>,
}
@ocaml.doc(
  "<p>Describes configuration parameters for Amazon CloudWatch logging for a Kinesis Data Analytics Studio notebook. For more information about CloudWatch logging, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/monitoring-overview.html\">Monitoring</a>.</p>"
)
type zeppelinMonitoringConfiguration = {
  @ocaml.doc("<p>The verbosity of the CloudWatch Logs for an application.</p>") @as("LogLevel")
  logLevel: logLevel,
}
type tagKeys = array<tagKey>
@ocaml.doc("<p>A key-value pair (the value is optional) that you can define and assign to Amazon resources. 
        If you specify a tag that already exists, the tag value is replaced with the value that you 
        specify in the request. Note that 
        the maximum number of application tags includes system tags. The maximum number of user-defined 
        application tags is 50.
      For more information, see 
        <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html\">Using Tagging</a>.</p>")
type tag = {
  @ocaml.doc("<p>The value of the key-value tag. The value is optional.</p>") @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>The key of the key-value tag.</p>") @as("Key") key: tagKey,
}
type subnetIds = array<subnetId>
@ocaml.doc("<p>Provides details about a snapshot of application state.</p>")
type snapshotDetails = {
  @ocaml.doc("<p>The timestamp of the application snapshot.</p>") @as("SnapshotCreationTimestamp")
  snapshotCreationTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The current application version ID when the snapshot was created.</p>")
  @as("ApplicationVersionId")
  applicationVersionId: applicationVersionId,
  @ocaml.doc("<p>The status of the application snapshot.</p>") @as("SnapshotStatus")
  snapshotStatus: snapshotStatus,
  @ocaml.doc("<p>The identifier for the application snapshot.</p>") @as("SnapshotName")
  snapshotName: snapshotName,
}
type securityGroupIds = array<securityGroupId>
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, describes the Amazon S3 bucket
      name and object key name for an in-application reference table. </p>")
type s3ReferenceDataSourceUpdate = {
  @ocaml.doc("<p>The object key name.</p>") @as("FileKeyUpdate") fileKeyUpdate: option<fileKey>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>") @as("BucketARNUpdate")
  bucketARNUpdate: option<bucketARN>,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, provides the bucket name and
      object key name that stores the reference data.</p>")
type s3ReferenceDataSourceDescription = {
  @ocaml.doc("<p>The ARN of the IAM role that Kinesis Data Analytics can assume to read the Amazon S3
      object on your behalf to populate the in-application reference table. </p>
         <note>
            <p>Provided for backward compatibility. Applications that are created with the current API
        version have an application-level service execution role rather than a resource-level
        role.</p>
         </note>")
  @as("ReferenceRoleARN")
  referenceRoleARN: option<roleARN>,
  @ocaml.doc("<p>Amazon S3 object key name.</p>") @as("FileKey") fileKey: fileKey,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>") @as("BucketARN")
  bucketARN: bucketARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, identifies the Amazon S3
      bucket and object that contains the reference data.</p>
      
         <p>A Kinesis Data Analytics application loads reference data only once. If the data changes, you call the <a>UpdateApplication</a> 
        operation to trigger reloading of data into your application. </p>")
type s3ReferenceDataSource = {
  @ocaml.doc("<p>The object key name containing the reference data.</p>") @as("FileKey")
  fileKey: option<fileKey>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>") @as("BucketARN")
  bucketARN: option<bucketARN>,
}
@ocaml.doc("<p>Describes an update for the Amazon S3 code content location for an application.</p>")
type s3ContentLocationUpdate = {
  @ocaml.doc("<p>The new version of the object containing the application code.</p>")
  @as("ObjectVersionUpdate")
  objectVersionUpdate: option<objectVersion>,
  @ocaml.doc("<p>The new file key for the object containing the application code.</p>")
  @as("FileKeyUpdate")
  fileKeyUpdate: option<fileKey>,
  @ocaml.doc(
    "<p>The new Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>"
  )
  @as("BucketARNUpdate")
  bucketARNUpdate: option<bucketARN>,
}
@ocaml.doc("<p>For a Kinesis Data Analytics application provides a
      description of an Amazon S3 object, including the Amazon Resource Name (ARN) of the S3 bucket,
      the name of the Amazon S3 object that contains the data, and the version number of the Amazon
      S3 object that contains the data. </p>")
type s3ContentLocation = {
  @ocaml.doc("<p>The version of the object containing the application code.</p>")
  @as("ObjectVersion")
  objectVersion: option<objectVersion>,
  @ocaml.doc("<p>The file key for the object containing the application code.</p>") @as("FileKey")
  fileKey: fileKey,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>"
  )
  @as("BucketARN")
  bucketARN: bucketARN,
}
@ocaml.doc(
  "<p>The information required to update the S3 base location that holds the application.</p>"
)
type s3ContentBaseLocationUpdate = {
  @ocaml.doc("<p>The updated S3 bucket path.</p>") @as("BasePathUpdate")
  basePathUpdate: option<basePath>,
  @ocaml.doc("<p>The updated Amazon Resource Name (ARN) of the S3 bucket.</p>")
  @as("BucketARNUpdate")
  bucketARNUpdate: option<bucketARN>,
}
@ocaml.doc("<p>The description of the S3 base location that holds the application.</p>")
type s3ContentBaseLocationDescription = {
  @ocaml.doc("<p>The base path for the S3 bucket.</p>") @as("BasePath") basePath: option<basePath>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>") @as("BucketARN")
  bucketARN: bucketARN,
}
@ocaml.doc("<p>The S3 bucket that holds the application information.</p>")
type s3ContentBaseLocation = {
  @ocaml.doc("<p>The base path for the S3 bucket.</p>") @as("BasePath") basePath: option<basePath>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>") @as("BucketARN")
  bucketARN: bucketARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, provides a description of an
      Amazon S3 data source, including the Amazon Resource Name (ARN) of the S3 bucket and the name
      of the Amazon S3 object that contains the data.</p>")
type s3Configuration = {
  @ocaml.doc("<p>The name of the object that contains the data.</p>") @as("FileKey")
  fileKey: fileKey,
  @ocaml.doc("<p>The ARN of the S3 bucket that contains the data.</p>") @as("BucketARN")
  bucketARN: bucketARN,
}
@ocaml.doc("<p>Describes the location of an application's code stored in an S3 bucket.</p>")
type s3ApplicationCodeLocationDescription = {
  @ocaml.doc("<p>The version of the object containing the application code.</p>")
  @as("ObjectVersion")
  objectVersion: option<objectVersion>,
  @ocaml.doc("<p>The file key for the object containing the application code.</p>") @as("FileKey")
  fileKey: fileKey,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>"
  )
  @as("BucketARN")
  bucketARN: bucketARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, describes the mapping of each
      data element in the streaming source to the corresponding column in the in-application
      stream.</p>
         <p>Also used to describe the format of the reference data source.</p>")
type recordColumn = {
  @ocaml.doc(
    "<p>The type of column created in the in-application input stream or reference table.</p>"
  )
  @as("SqlType")
  sqlType: recordColumnSqlType,
  @ocaml.doc("<p>A reference to the data element in the streaming input or the reference data
      source.</p>")
  @as("Mapping")
  mapping: option<recordColumnMapping>,
  @ocaml.doc("<p>The name of the column that is created in the in-application input stream or reference
      table.</p>")
  @as("Name")
  name: recordColumnName,
}
type rawInputRecords = array<rawInputRecord>
type propertyMap = Js.Dict.t<propertyValue>
type processedInputRecords = array<processedInputRecord>
type parsedInputRecord = array<parsedInputRecordField>
@ocaml.doc(
  "<p>Describes updates to parameters for how an application executes multiple tasks simultaneously.</p>"
)
type parallelismConfigurationUpdate = {
  @ocaml.doc(
    "<p>Describes updates to whether the Kinesis Data Analytics service can increase the parallelism of a Flink-based Kinesis Data Analytics application in response to increased throughput.</p>"
  )
  @as("AutoScalingEnabledUpdate")
  autoScalingEnabledUpdate: option<booleanObject>,
  @ocaml.doc(
    "<p>Describes updates to the number of parallel tasks an application can perform per Kinesis Processing Unit (KPU) used by the application.</p>"
  )
  @as("ParallelismPerKPUUpdate")
  parallelismPerKPUUpdate: option<parallelismPerKPU>,
  @ocaml.doc("<p>Describes updates to the initial number of parallel tasks an application can perform. If <code>AutoScalingEnabled</code> is set to True, then 
      Kinesis Data Analytics can increase the <code>CurrentParallelism</code> value in response to application
    load. The service can increase <code>CurrentParallelism</code> up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application. 
    The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service will
    reduce <code>CurrentParallelism</code> down to the <code>Parallelism</code> setting.</p>")
  @as("ParallelismUpdate")
  parallelismUpdate: option<parallelism>,
  @ocaml.doc("<p>Describes updates to whether the application uses the default parallelism for the Kinesis Data Analytics service, or if a custom parallelism is used.
    You must set this property to <code>CUSTOM</code>
    in order to change your application's <code>AutoScalingEnabled</code>, <code>Parallelism</code>, or <code>ParallelismPerKPU</code> properties.</p>")
  @as("ConfigurationTypeUpdate")
  configurationTypeUpdate: option<configurationType>,
}
@ocaml.doc("<p>Describes parameters for how a Flink-based Kinesis Data Analytics application
      executes multiple tasks simultaneously.</p>")
type parallelismConfigurationDescription = {
  @ocaml.doc(
    "<p>Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.</p>"
  )
  @as("AutoScalingEnabled")
  autoScalingEnabled: option<booleanObject>,
  @ocaml.doc("<p>Describes the current number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform. 
      If <code>AutoScalingEnabled</code> is set to True, Kinesis Data Analytics can increase this value in response to application
    load. The service can increase this value up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application. 
    The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service can reduce
    the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>")
  @as("CurrentParallelism")
  currentParallelism: option<parallelism>,
  @ocaml.doc("<p>Describes the number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform per 
      Kinesis Processing Unit (KPU) used by the application.</p>")
  @as("ParallelismPerKPU")
  parallelismPerKPU: option<parallelismPerKPU>,
  @ocaml.doc("<p>Describes the initial number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform. 
      If <code>AutoScalingEnabled</code> is set to True, then Kinesis Data Analytics can increase the <code>CurrentParallelism</code> value in response to application
    load. The service can increase <code>CurrentParallelism</code> up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application. 
    The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service can
    reduce the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>")
  @as("Parallelism")
  parallelism: option<parallelism>,
  @ocaml.doc(
    "<p>Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. </p>"
  )
  @as("ConfigurationType")
  configurationType: option<configurationType>,
}
@ocaml.doc("<p>Describes parameters for how a Flink-based Kinesis Data Analytics application
      executes multiple tasks simultaneously. For more information about parallelism,
      see <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/dev/parallel.html\">Parallel Execution</a> in the <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/\">Apache Flink
        Documentation</a>.</p>")
type parallelismConfiguration = {
  @ocaml.doc(
    "<p>Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.</p>"
  )
  @as("AutoScalingEnabled")
  autoScalingEnabled: option<booleanObject>,
  @ocaml.doc("<p>Describes the number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform per Kinesis Processing Unit 
      (KPU) used by the application. For more
      information about KPUs, see <a href=\"http://aws.amazon.com/kinesis/data-analytics/pricing/\">Amazon Kinesis Data Analytics Pricing</a>.</p>")
  @as("ParallelismPerKPU")
  parallelismPerKPU: option<parallelismPerKPU>,
  @ocaml.doc("<p>Describes the initial number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform. If <code>AutoScalingEnabled</code> 
      is set to True, Kinesis Data Analytics increases the <code>CurrentParallelism</code> value in response to application
    load. The service can increase the <code>CurrentParallelism</code> value up to the maximum parallelism, which is 
      <code>ParalellismPerKPU</code> times the maximum KPUs for the application. 
    The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If 
    application load is reduced, the service can
    reduce the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>")
  @as("Parallelism")
  parallelism: option<parallelism>,
  @ocaml.doc("<p>Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. You must set this property to <code>CUSTOM</code>
    in order to change your application's <code>AutoScalingEnabled</code>, <code>Parallelism</code>, or <code>ParallelismPerKPU</code> properties.</p>")
  @as("ConfigurationType")
  configurationType: configurationType,
}
@ocaml.doc(
  "<p>Describes updates to configuration parameters for Amazon CloudWatch logging for an application.</p>"
)
type monitoringConfigurationUpdate = {
  @ocaml.doc("<p>Describes updates to the verbosity of the CloudWatch Logs for an application.</p>")
  @as("LogLevelUpdate")
  logLevelUpdate: option<logLevel>,
  @ocaml.doc("<p>Describes updates to the granularity of the CloudWatch Logs for an application. The <code>Parallelism</code>
      level is not recommended for applications with a Parallelism over 64 due to excessive costs.</p>")
  @as("MetricsLevelUpdate")
  metricsLevelUpdate: option<metricsLevel>,
  @ocaml.doc("<p>Describes updates to whether to use the default CloudWatch logging configuration for 
      an application. You must set this property to <code>CUSTOM</code> in order to set the <code>LogLevel</code> or
    <code>MetricsLevel</code> parameters.</p>")
  @as("ConfigurationTypeUpdate")
  configurationTypeUpdate: option<configurationType>,
}
@ocaml.doc("<p>Describes configuration parameters for CloudWatch logging for an application.</p>")
type monitoringConfigurationDescription = {
  @ocaml.doc("<p>Describes the verbosity of the CloudWatch Logs for an application.</p>")
  @as("LogLevel")
  logLevel: option<logLevel>,
  @ocaml.doc("<p>Describes the granularity of the CloudWatch Logs for an application.</p>")
  @as("MetricsLevel")
  metricsLevel: option<metricsLevel>,
  @ocaml.doc(
    "<p>Describes whether to use the default CloudWatch logging configuration for an application.</p>"
  )
  @as("ConfigurationType")
  configurationType: option<configurationType>,
}
@ocaml.doc(
  "<p>Describes configuration parameters for Amazon CloudWatch logging for an application. For more information about CloudWatch logging, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/monitoring-overview.html\">Monitoring</a>.</p>"
)
type monitoringConfiguration = {
  @ocaml.doc("<p>Describes the verbosity of the CloudWatch Logs for an application.</p>")
  @as("LogLevel")
  logLevel: option<logLevel>,
  @ocaml.doc("<p>Describes the granularity of the CloudWatch Logs for an application. The <code>Parallelism</code>
    level is not recommended for applications with a Parallelism over 64 due to excessive costs.</p>")
  @as("MetricsLevel")
  metricsLevel: option<metricsLevel>,
  @ocaml.doc("<p>Describes whether to use the default CloudWatch logging configuration for an application. 
    You must set this property to <code>CUSTOM</code> in order to set the <code>LogLevel</code> or
    <code>MetricsLevel</code> parameters.</p>")
  @as("ConfigurationType")
  configurationType: configurationType,
}
@ocaml.doc(
  "<p>The information required to specify a Maven reference. You can use Maven references to specify dependency JAR files.</p>"
)
type mavenReference = {
  @ocaml.doc("<p>The version of the Maven reference.</p>") @as("Version") version: mavenVersion,
  @ocaml.doc("<p>The artifact ID of the Maven reference.</p>") @as("ArtifactId")
  artifactId: mavenArtifactId,
  @ocaml.doc("<p>The group ID of the Maven reference.</p>") @as("GroupId") groupId: mavenGroupId,
}
@ocaml.doc("<p>When you update an SQL-based Kinesis Data Analytics application's output
      configuration using the <a>UpdateApplication</a> operation, provides information
      about an Amazon Lambda function that is configured as the destination.</p>")
type lambdaOutputUpdate = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the destination Amazon Lambda function.</p>
         <note>
            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: Amazon Lambda</a>
            </p>
         </note>")
  @as("ResourceARNUpdate")
  resourceARNUpdate: resourceARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application's output, describes the Amazon
      Lambda function that is configured as its destination. </p>")
type lambdaOutputDescription = {
  @ocaml.doc("<p>The ARN of the IAM role that Kinesis Data Analytics can assume to write to the destination
      function.</p>
         <note>
            <p>Provided for backward compatibility. Applications that are created with the current API
        version have an application-level service execution role rather than a resource-level
        role.</p>
         </note>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the destination Lambda function.</p>")
  @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>When you configure a SQL-based Kinesis Data Analytics application's output,
      identifies an Amazon Lambda function as the destination. You provide the function Amazon Resource
      Name (ARN) of the Lambda function. </p>")
type lambdaOutput = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the destination Lambda function to write to.</p>
         <note>
            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: Amazon Lambda</a>
            </p>
         </note>")
  @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>When you update a SQL-based Kinesis Data Analytics application's output
      configuration using the <a>UpdateApplication</a> operation, provides information
      about a Kinesis data stream that is configured as the destination.</p>")
type kinesisStreamsOutputUpdate = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Kinesis data stream where you want to write the
      output.</p>")
  @as("ResourceARNUpdate")
  resourceARNUpdate: resourceARN,
}
@ocaml.doc("<p>For an SQL-based Kinesis Data Analytics application's output, describes the Kinesis
      data stream that is configured as its destination. </p>")
type kinesisStreamsOutputDescription = {
  @ocaml.doc("<p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the
      stream.</p>
         <note>
            <p>Provided for backward compatibility. Applications that are created with the current API
        version have an application-level service execution role rather than a resource-level
        role.</p>
         </note>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Kinesis data stream.</p>") @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>When you configure a SQL-based Kinesis Data Analytics application's output,
      identifies a Kinesis data stream as the destination. You provide the stream Amazon Resource
      Name (ARN). </p>")
type kinesisStreamsOutput = {
  @ocaml.doc("<p>The ARN of the destination Kinesis data stream to write to.</p>")
  @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>When you update the input configuration for a SQL-based Kinesis Data Analytics application, provides information about a 
      Kinesis stream as the streaming
      source.</p>")
type kinesisStreamsInputUpdate = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the input Kinesis data stream to read.</p>")
  @as("ResourceARNUpdate")
  resourceARNUpdate: resourceARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, describes the Kinesis data
      stream that is configured as the streaming source in the application input configuration. </p>")
type kinesisStreamsInputDescription = {
  @ocaml.doc("<p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the
      stream.</p>
         <note>
            <p>Provided for backward compatibility. Applications that are created with the current API
        version have an application-level service execution role rather than a resource-level
        role.</p>
         </note>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Kinesis data stream.</p>") @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p> Identifies a Kinesis data stream as the streaming source. You provide the
      stream's Amazon Resource Name (ARN).</p>")
type kinesisStreamsInput = {
  @ocaml.doc("<p>The ARN of the input Kinesis data stream to read.</p>") @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, when updating an output
      configuration using the <a>UpdateApplication</a> operation, provides information
      about a Kinesis Data Firehose delivery stream that is configured as the destination.</p>")
type kinesisFirehoseOutputUpdate = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the delivery stream to write to. </p>")
  @as("ResourceARNUpdate")
  resourceARNUpdate: resourceARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application's output, describes the Kinesis
      Data Firehose delivery stream that is configured as its destination.</p>")
type kinesisFirehoseOutputDescription = {
  @ocaml.doc("<p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the
      stream.</p>
         <note>
            <p>Provided for backward compatibility. Applications that are created with the current API
        version have an application-level service execution role rather than a resource-level
        role.</p>
         </note>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the delivery stream.</p>") @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, when configuring application
      output, identifies a Kinesis Data Firehose delivery stream as the destination. You provide the
      stream Amazon Resource Name (ARN) of the delivery stream. </p>")
type kinesisFirehoseOutput = {
  @ocaml.doc("<p>The ARN of the destination delivery stream to write to.</p>") @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, when updating application
      input configuration, provides information about a Kinesis Data Firehose delivery stream as the
      streaming source.</p>")
type kinesisFirehoseInputUpdate = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the input delivery stream to read.</p>")
  @as("ResourceARNUpdate")
  resourceARNUpdate: resourceARN,
}
@ocaml.doc("<p>Describes the Amazon Kinesis Data Firehose delivery stream that is configured as the streaming source 
      in the application input configuration. </p>")
type kinesisFirehoseInputDescription = {
  @ocaml.doc("<p>The ARN of the IAM role that Kinesis Data Analytics assumes to access the stream.</p>
         <note>
            <p>Provided for backward compatibility. Applications that are created with the current API
        version have an application-level service execution role rather than a resource-level
        role.</p>
         </note>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the delivery stream.</p>") @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, identifies a Kinesis Data
      Firehose delivery stream as the streaming source. You provide the delivery stream's Amazon
      Resource Name (ARN).</p>")
type kinesisFirehoseInput = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the delivery stream.</p>") @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, provides additional mapping
      information when JSON is the record format on the streaming source.</p>")
type jsonmappingParameters = {
  @ocaml.doc("<p>The path to the top-level parent that contains the records.</p>")
  @as("RecordRowPath")
  recordRowPath: recordRowPath,
}
@ocaml.doc("<p>Describes the point at which the application reads from 
      the streaming source.</p>")
type inputStartingPositionConfiguration = {
  @ocaml.doc("<p>The starting position on the stream.</p>
         <ul>
            <li>
               <p>
                  <code>NOW</code> - Start reading just after the most recent record in the stream, and
          start at the request timestamp that the customer issued.</p>
        
        
            </li>
            <li>
               <p>
                  <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the stream, 
          which is the oldest record available in the stream. This option is not available 
          for an Amazon Kinesis Data Firehose delivery stream.</p>
            </li>
            <li>
               <p>
                  <code>LAST_STOPPED_POINT</code> - Resume reading from where the application last stopped reading.</p>
            </li>
         </ul>")
  @as("InputStartingPosition")
  inputStartingPosition: option<inputStartingPosition>,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, provides updates to the
      parallelism count.</p>")
type inputParallelismUpdate = {
  @ocaml.doc(
    "<p>The number of in-application streams to create for the specified streaming source.</p>"
  )
  @as("CountUpdate")
  countUpdate: inputParallelismCount,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, describes the number of
      in-application streams to create for a given streaming source. </p>")
type inputParallelism = {
  @ocaml.doc("<p>The number of in-application streams to create.</p>") @as("Count")
  count: option<inputParallelismCount>,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, represents an update to the
        <a>InputLambdaProcessor</a> that is used to preprocess the records in the
      stream.</p>")
type inputLambdaProcessorUpdate = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the new Amazon Lambda function that is used to preprocess
      the records in the stream.</p>
         <note>
            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: Amazon Lambda</a>
            </p>
         </note>")
  @as("ResourceARNUpdate")
  resourceARNUpdate: resourceARN,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, an object that contains the
      Amazon Resource Name (ARN) of the Amazon Lambda function that is used to preprocess records in
      the stream.</p>")
type inputLambdaProcessorDescription = {
  @ocaml.doc("<p>The ARN of the IAM role that is used to access the Amazon Lambda function.</p>
         <note>
            <p>Provided for backward compatibility. Applications that are created with the current API
        version have an application-level service execution role rather than a resource-level
        role.</p>
         </note>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>The ARN of the Amazon Lambda function that is used to preprocess the records in the
      stream.</p>
         <note>
            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: Amazon Lambda</a>
            </p>
         </note>")
  @as("ResourceARN")
  resourceARN: resourceARN,
}
@ocaml.doc("<p>An object that contains the Amazon Resource Name (ARN) of the Amazon Lambda function that is
      used to preprocess records in the stream in a SQL-based Kinesis Data Analytics application. </p>")
type inputLambdaProcessor = {
  @ocaml.doc("<p>The ARN of the Amazon Lambda function that operates on records in the stream.</p>
         <note>
            <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: Amazon Lambda</a>
            </p>
         </note>")
  @as("ResourceARN")
  resourceARN: resourceARN,
}
type inAppStreamNames = array<inAppStreamName>
@ocaml.doc(
  "<p>Updates to the configuration of the Glue Data Catalog that you use for SQL queries that you write in a Kinesis Data Analytics Studio notebook.</p>"
)
type glueDataCatalogConfigurationUpdate = {
  @ocaml.doc("<p>The updated Amazon Resource Name (ARN) of the database.</p>")
  @as("DatabaseARNUpdate")
  databaseARNUpdate: databaseARN,
}
@ocaml.doc(
  "<p>The configuration of the Glue Data Catalog that you use for Apache Flink SQL queries and table API transforms that you write in an application.</p>"
)
type glueDataCatalogConfigurationDescription = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the database.</p>") @as("DatabaseARN")
  databaseARN: databaseARN,
}
@ocaml.doc(
  "<p>The configuration of the Glue Data Catalog that you use for Apache Flink SQL queries and table API transforms that you write in an application.</p>"
)
type glueDataCatalogConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the database.</p>") @as("DatabaseARN")
  databaseARN: databaseARN,
}
@ocaml.doc(
  "<p>Describes the starting parameters for a Flink-based Kinesis Data Analytics application.</p>"
)
type flinkRunConfiguration = {
  @ocaml.doc("<p>When restoring from a snapshot, specifies whether the runtime is allowed to skip a state that cannot 
       be mapped to the new program.
     This will happen if the program is updated between snapshots to remove stateful parameters, and 
     state data in the snapshot no longer 
     corresponds to valid application data. For more information, see 
     <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/ops/state/savepoints.html#allowing-non-restored-state\">
       Allowing Non-Restored State</a> in the <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/\">Apache Flink 
         documentation</a>.</p>
         <note>
            <p>This value defaults to <code>false</code>. If you update your application without
     specifying this parameter, <code>AllowNonRestoredState</code> will be set to <code>false</code>,
     even if it was previously set to <code>true</code>.</p>
         </note>")
  @as("AllowNonRestoredState")
  allowNonRestoredState: option<booleanObject>,
}
@ocaml.doc(
  "<p>Describes the data format when records are written to the destination in a SQL-based Kinesis Data Analytics application. </p>"
)
type destinationSchema = {
  @ocaml.doc("<p>Specifies the format of the records on the output stream.</p>")
  @as("RecordFormatType")
  recordFormatType: recordFormatType,
}
@ocaml.doc("<p>Describes the Amazon CloudWatch logging option updates.</p>")
type cloudWatchLoggingOptionUpdate = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CloudWatch log to receive application
      messages.</p>")
  @as("LogStreamARNUpdate")
  logStreamARNUpdate: option<logStreamARN>,
  @ocaml.doc("<p>The ID of the CloudWatch logging option to update</p>")
  @as("CloudWatchLoggingOptionId")
  cloudWatchLoggingOptionId: id,
}
@ocaml.doc("<p>Describes the Amazon CloudWatch logging option.</p>")
type cloudWatchLoggingOptionDescription = {
  @ocaml.doc("<p>The IAM ARN of the role to use to send application messages. </p>
         <note>
            <p>Provided for backward compatibility. Applications created with the current API version have an
        application-level service execution role rather than a resource-level role.</p>
         </note>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CloudWatch log to receive application
      messages.</p>")
  @as("LogStreamARN")
  logStreamARN: logStreamARN,
  @ocaml.doc("<p>The ID of the CloudWatch logging option description.</p>")
  @as("CloudWatchLoggingOptionId")
  cloudWatchLoggingOptionId: option<id>,
}
@ocaml.doc("<p>Provides a description of Amazon CloudWatch logging options, including the log stream
      Amazon Resource Name (ARN). </p>")
type cloudWatchLoggingOption = {
  @ocaml.doc("<p>The ARN of the CloudWatch log to receive application messages.</p>")
  @as("LogStreamARN")
  logStreamARN: logStreamARN,
}
@ocaml.doc(
  "<p>Describes updates to the checkpointing parameters for a Flink-based Kinesis Data Analytics application.</p>"
)
type checkpointConfigurationUpdate = {
  @ocaml.doc("<p>Describes updates to the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation
      can start.</p>
         <note>
            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this API or 
      in application code.</p>
         </note>")
  @as("MinPauseBetweenCheckpointsUpdate")
  minPauseBetweenCheckpointsUpdate: option<minPauseBetweenCheckpoints>,
  @ocaml.doc("<p>Describes updates to the interval in milliseconds between checkpoint operations.</p>
         <note>
            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    the application will use a <code>CheckpointInterval</code> value of 60000, even if this value is set to another value 
      using this API or in application code.</p>
         </note>")
  @as("CheckpointIntervalUpdate")
  checkpointIntervalUpdate: option<checkpointInterval>,
  @ocaml.doc("<p>Describes updates to whether checkpointing is enabled for an application.</p>
         <note>
            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value is set to 
      another value using this API or in application code.</p>
         </note>")
  @as("CheckpointingEnabledUpdate")
  checkpointingEnabledUpdate: option<booleanObject>,
  @ocaml.doc("<p>Describes updates to whether the application uses the default checkpointing behavior of
      Kinesis Data Analytics. You must set this property to <code>CUSTOM</code> in order to set the
      <code>CheckpointingEnabled</code>, <code>CheckpointInterval</code>, or <code>MinPauseBetweenCheckpoints</code> parameters.
      </p>
         <note>
            <p>If this value is set to <code>DEFAULT</code>, the application will use the following values, even if they are 
      set to other values using APIs or
    application code:</p>
            <ul>
               <li>
                  <p>
                     <b>CheckpointingEnabled:</b> true</p>
               </li>
               <li>
                  <p>
                     <b>CheckpointInterval:</b> 60000</p>
               </li>
               <li>
                  <p>
                     <b>MinPauseBetweenCheckpoints:</b> 5000</p>
               </li>
            </ul>
         </note>")
  @as("ConfigurationTypeUpdate")
  configurationTypeUpdate: option<configurationType>,
}
@ocaml.doc(
  "<p>Describes checkpointing parameters for a Flink-based Kinesis Data Analytics application.</p>"
)
type checkpointConfigurationDescription = {
  @ocaml.doc("<p>Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation
      can start. </p>
         <note>
            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this 
      API or in application code.</p>
         </note>")
  @as("MinPauseBetweenCheckpoints")
  minPauseBetweenCheckpoints: option<minPauseBetweenCheckpoints>,
  @ocaml.doc("<p>Describes the interval in milliseconds between checkpoint operations. </p>
         <note>
            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    the application will use a <code>CheckpointInterval</code> value of 60000, even if this value is set to another value 
      using this API or in application code.</p>
         </note>")
  @as("CheckpointInterval")
  checkpointInterval: option<checkpointInterval>,
  @ocaml.doc("<p>Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application.</p>
         <note>
            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value is set to 
      another value using this API or in application code.</p>
         </note>")
  @as("CheckpointingEnabled")
  checkpointingEnabled: option<booleanObject>,
  @ocaml.doc("<p>Describes whether the application uses the default checkpointing behavior in Kinesis Data Analytics. </p>
         <note>
            <p>If this value is set to <code>DEFAULT</code>, the application will use the following values, 
      even if they are set to other values using APIs or
    application code:</p>
            <ul>
               <li>
                  <p>
                     <b>CheckpointingEnabled:</b> true</p>
               </li>
               <li>
                  <p>
                     <b>CheckpointInterval:</b> 60000</p>
               </li>
               <li>
                  <p>
                     <b>MinPauseBetweenCheckpoints:</b> 5000</p>
               </li>
            </ul>
         </note>")
  @as("ConfigurationType")
  configurationType: option<configurationType>,
}
@ocaml.doc("<p>Describes an application's checkpointing configuration. Checkpointing is the process of persisting application state for fault 
      tolerance.
      For more information, see 
      <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/concepts/programming-model.html#checkpoints-for-fault-tolerance\">
        Checkpoints for Fault Tolerance</a> in the 
      <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/\">Apache Flink Documentation</a>.</p>")
type checkpointConfiguration = {
  @ocaml.doc("<p>Describes the minimum time in milliseconds after a checkpoint operation completes that a
      new checkpoint operation can start. If a checkpoint operation takes longer than the
        <code>CheckpointInterval</code>, the application otherwise performs continual checkpoint
      operations. For more information, see <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/ops/state/large_state_tuning.html#tuning-checkpointing\"> Tuning Checkpointing</a> in the <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/\">Apache Flink
        Documentation</a>.</p>
         <note>
            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this 
      API or in application code.</p>
         </note>")
  @as("MinPauseBetweenCheckpoints")
  minPauseBetweenCheckpoints: option<minPauseBetweenCheckpoints>,
  @ocaml.doc("<p>Describes the interval in milliseconds between checkpoint operations. </p>
         <note>
            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    the application will use a <code>CheckpointInterval</code> value of 60000, even if this value is set 
      to another value using this API or in application code.</p>
         </note>")
  @as("CheckpointInterval")
  checkpointInterval: option<checkpointInterval>,
  @ocaml.doc("<p>Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application.</p>
         <note>
            <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>,
    the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value 
      is set to another value using this API or in application code.</p>
         </note>")
  @as("CheckpointingEnabled")
  checkpointingEnabled: option<booleanObject>,
  @ocaml.doc("<p>Describes whether the application uses Kinesis Data Analytics' default checkpointing behavior. 
    You must set this property to <code>CUSTOM</code> in order to set the
      <code>CheckpointingEnabled</code>, <code>CheckpointInterval</code>, or <code>MinPauseBetweenCheckpoints</code> parameters.</p>
         <note>
            <p>If this value is set to <code>DEFAULT</code>, the application will use the following values, even if they are set to other values using APIs or
    application code:</p>
            <ul>
               <li>
                  <p>
                     <b>CheckpointingEnabled:</b> true</p>
               </li>
               <li>
                  <p>
                     <b>CheckpointInterval:</b> 60000</p>
               </li>
               <li>
                  <p>
                     <b>MinPauseBetweenCheckpoints:</b> 5000</p>
               </li>
            </ul>
         </note>")
  @as("ConfigurationType")
  configurationType: configurationType,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, provides additional mapping information when the record
      format uses delimiters, such as CSV. For example, the following sample records use CSV format,
      where the records use the <i>'\\n'</i> as the row delimiter and a comma (\",\") as
      the column delimiter: </p>
      
         <p>
            <code>\"name1\", \"address1\"</code>
         </p>
         <p>
            <code>\"name2\", \"address2\"</code>
         </p>")
type csvmappingParameters = {
  @ocaml.doc("<p>The column delimiter. For example, in a CSV format, a comma (\",\") is the typical column
      delimiter.</p>")
  @as("RecordColumnDelimiter")
  recordColumnDelimiter: recordColumnDelimiter,
  @ocaml.doc("<p>The row delimiter. For example, in a CSV format, <i>'\\n'</i> is the typical
      row delimiter.</p>")
  @as("RecordRowDelimiter")
  recordRowDelimiter: recordRowDelimiter,
}
@ocaml.doc("<p>The summary of the application version.</p>")
type applicationVersionSummary = {
  @ocaml.doc("<p>The status of the application.</p>") @as("ApplicationStatus")
  applicationStatus: applicationStatus,
  @ocaml.doc(
    "<p>The ID of the application version. Kinesis Data Analytics updates the <code>ApplicationVersionId</code> each time you update the application.</p>"
  )
  @as("ApplicationVersionId")
  applicationVersionId: applicationVersionId,
}
@ocaml.doc(
  "<p>Provides application summary information, including the application Amazon Resource Name (ARN), name, and status.</p>"
)
type applicationSummary = {
  @ocaml.doc(
    "<p>For a Kinesis Data Analytics for Apache Flink application, the mode is <code>STREAMING</code>. For a Kinesis Data Analytics Studio notebook, it is <code>INTERACTIVE</code>.</p>"
  )
  @as("ApplicationMode")
  applicationMode: option<applicationMode>,
  @ocaml.doc("<p>The runtime environment for the application.</p>") @as("RuntimeEnvironment")
  runtimeEnvironment: runtimeEnvironment,
  @ocaml.doc("<p>Provides the current application version.</p>") @as("ApplicationVersionId")
  applicationVersionId: applicationVersionId,
  @ocaml.doc("<p>The status of the application.</p>") @as("ApplicationStatus")
  applicationStatus: applicationStatus,
  @ocaml.doc("<p>The ARN of the application.</p>") @as("ApplicationARN")
  applicationARN: resourceARN,
  @ocaml.doc("<p>The name of the application.</p>") @as("ApplicationName")
  applicationName: applicationName,
}
@ocaml.doc(
  "<p>Describes updates to whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>"
)
type applicationSnapshotConfigurationUpdate = {
  @ocaml.doc("<p>Describes updates to whether snapshots are enabled for an application.</p>")
  @as("SnapshotsEnabledUpdate")
  snapshotsEnabledUpdate: booleanObject,
}
@ocaml.doc(
  "<p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>"
)
type applicationSnapshotConfigurationDescription = {
  @ocaml.doc(
    "<p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("SnapshotsEnabled")
  snapshotsEnabled: booleanObject,
}
@ocaml.doc(
  "<p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>"
)
type applicationSnapshotConfiguration = {
  @ocaml.doc(
    "<p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("SnapshotsEnabled")
  snapshotsEnabled: booleanObject,
}
@ocaml.doc(
  "<p>Specifies the method and snapshot to use when restarting an application using previously saved application state.</p>"
)
type applicationRestoreConfiguration = {
  @ocaml.doc("<p>The identifier of an existing snapshot of application state to use to restart an application.
      The application uses this value if <code>RESTORE_FROM_CUSTOM_SNAPSHOT</code> is specified for the 
      <code>ApplicationRestoreType</code>.</p>")
  @as("SnapshotName")
  snapshotName: option<snapshotName>,
  @ocaml.doc("<p>Specifies how the application should be restored.</p>")
  @as("ApplicationRestoreType")
  applicationRestoreType: applicationRestoreType,
}
@ocaml.doc("<p>Describes the updated maintenance configuration for the application.</p>")
type applicationMaintenanceConfigurationUpdate = {
  @ocaml.doc("<p>The updated start time for the maintenance window.</p>")
  @as("ApplicationMaintenanceWindowStartTimeUpdate")
  applicationMaintenanceWindowStartTimeUpdate: applicationMaintenanceWindowStartTime,
}
@ocaml.doc("<p>The details of the maintenance configuration for the application.</p>")
type applicationMaintenanceConfigurationDescription = {
  @ocaml.doc("<p>The end time for the maintenance window.</p>")
  @as("ApplicationMaintenanceWindowEndTime")
  applicationMaintenanceWindowEndTime: applicationMaintenanceWindowEndTime,
  @ocaml.doc("<p>The start time for the maintenance window.</p>")
  @as("ApplicationMaintenanceWindowStartTime")
  applicationMaintenanceWindowStartTime: applicationMaintenanceWindowStartTime,
}
@ocaml.doc("<p>Describes updates to the VPC configuration used by the application.</p>")
type vpcConfigurationUpdate = {
  @ocaml.doc("<p>Describes updates to the array of 
        <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html\">SecurityGroup</a> IDs used by the VPC configuration.</p>")
  @as("SecurityGroupIdUpdates")
  securityGroupIdUpdates: option<securityGroupIds>,
  @ocaml.doc("<p>Describes updates to the array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html\">Subnet</a> 
        IDs 
        used by the VPC configuration.</p>")
  @as("SubnetIdUpdates")
  subnetIdUpdates: option<subnetIds>,
  @ocaml.doc("<p>Describes an update to the ID of the VPC configuration.</p>")
  @as("VpcConfigurationId")
  vpcConfigurationId: id,
}
@ocaml.doc("<p>Describes the parameters of a VPC used by the application.</p>")
type vpcConfigurationDescription = {
  @ocaml.doc("<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html\">SecurityGroup</a> 
        IDs used by the VPC configuration.</p>")
  @as("SecurityGroupIds")
  securityGroupIds: securityGroupIds,
  @ocaml.doc("<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html\">Subnet</a> 
        IDs used by the VPC configuration.</p>")
  @as("SubnetIds")
  subnetIds: subnetIds,
  @ocaml.doc("<p>The ID of the associated VPC.</p>") @as("VpcId") vpcId: vpcId,
  @ocaml.doc("<p>The ID of the VPC configuration.</p>") @as("VpcConfigurationId")
  vpcConfigurationId: id,
}
@ocaml.doc("<p>Describes the parameters of a VPC used by the application.</p>")
type vpcConfiguration = {
  @ocaml.doc("<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html\">SecurityGroup</a> 
        IDs used by the VPC configuration.</p>")
  @as("SecurityGroupIds")
  securityGroupIds: securityGroupIds,
  @ocaml.doc("<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html\">Subnet</a> IDs 
        used by the VPC configuration.</p>")
  @as("SubnetIds")
  subnetIds: subnetIds,
}
type tags = array<tag>
@ocaml.doc(
  "<p>Describes the starting parameters for a SQL-based Kinesis Data Analytics application.</p>"
)
type sqlRunConfiguration = {
  @ocaml.doc("<p>The point at which you want the application to start processing records from the streaming
      source. </p>")
  @as("InputStartingPositionConfiguration")
  inputStartingPositionConfiguration: inputStartingPositionConfiguration,
  @ocaml.doc(
    "<p>The input source ID. You can get this ID by calling the <a>DescribeApplication</a> operation. </p>"
  )
  @as("InputId")
  inputId: id,
}
type snapshotSummaries = array<snapshotDetails>
@ocaml.doc(
  "<p>Describes the updates to the starting parameters for a Kinesis Data Analytics application.</p>"
)
type runConfigurationUpdate = {
  @ocaml.doc("<p>Describes updates to the restore behavior of a restarting application.</p>")
  @as("ApplicationRestoreConfiguration")
  applicationRestoreConfiguration: option<applicationRestoreConfiguration>,
  @ocaml.doc(
    "<p>Describes the starting parameters for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("FlinkRunConfiguration")
  flinkRunConfiguration: option<flinkRunConfiguration>,
}
@ocaml.doc("<p>Describes the starting properties for a Kinesis Data Analytics application.</p>")
type runConfigurationDescription = {
  @as("FlinkRunConfigurationDescription")
  flinkRunConfigurationDescription: option<flinkRunConfiguration>,
  @ocaml.doc("<p>Describes the restore behavior of a restarting application.</p>")
  @as("ApplicationRestoreConfigurationDescription")
  applicationRestoreConfigurationDescription: option<applicationRestoreConfiguration>,
}
type recordColumns = array<recordColumn>
@ocaml.doc("<p>Property key-value pairs passed into an application.</p>")
type propertyGroup = {
  @ocaml.doc("<p>Describes the value of an application execution property key-value pair.</p>")
  @as("PropertyMap")
  propertyMap: propertyMap,
  @ocaml.doc("<p>Describes the key of an application execution property key-value pair.</p>")
  @as("PropertyGroupId")
  propertyGroupId: id,
}
type parsedInputRecords = array<parsedInputRecord>
@ocaml.doc("<p> For a SQL-based Kinesis Data Analytics application, describes updates to the
      output configuration identified by the <code>OutputId</code>. </p>")
type outputUpdate = {
  @ocaml.doc("<p>Describes the data format when records are written to the destination. 
      </p>")
  @as("DestinationSchemaUpdate")
  destinationSchemaUpdate: option<destinationSchema>,
  @ocaml.doc("<p>Describes an Amazon Lambda function as the destination for the output.</p>")
  @as("LambdaOutputUpdate")
  lambdaOutputUpdate: option<lambdaOutputUpdate>,
  @ocaml.doc("<p>Describes a Kinesis Data Firehose delivery stream as the destination for the
      output.</p>")
  @as("KinesisFirehoseOutputUpdate")
  kinesisFirehoseOutputUpdate: option<kinesisFirehoseOutputUpdate>,
  @ocaml.doc("<p>Describes a Kinesis data stream as the destination for the output.</p>")
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
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, describes the application
      output configuration, which includes the in-application stream name and the destination where
      the stream data is written. The destination can be a Kinesis data stream or a Kinesis Data
      Firehose delivery stream. </p>")
type outputDescription = {
  @ocaml.doc("<p>The data format used for writing data to the destination.</p>")
  @as("DestinationSchema")
  destinationSchema: option<destinationSchema>,
  @ocaml.doc("<p>Describes the Lambda function that is configured as the destination where output is
      written.</p>")
  @as("LambdaOutputDescription")
  lambdaOutputDescription: option<lambdaOutputDescription>,
  @ocaml.doc("<p>Describes the Kinesis Data Firehose delivery stream that is configured as the destination
      where output is written.</p>")
  @as("KinesisFirehoseOutputDescription")
  kinesisFirehoseOutputDescription: option<kinesisFirehoseOutputDescription>,
  @ocaml.doc("<p>Describes the Kinesis data stream that is configured as the destination where output is
      written.</p>")
  @as("KinesisStreamsOutputDescription")
  kinesisStreamsOutputDescription: option<kinesisStreamsOutputDescription>,
  @ocaml.doc("<p>The name of the in-application stream that is configured as output.</p>")
  @as("Name")
  name: option<inAppStreamName>,
  @ocaml.doc("<p>A unique identifier for the output configuration.</p>") @as("OutputId")
  outputId: option<id>,
}
@ocaml.doc("<p> Describes a SQL-based Kinesis Data Analytics application's output configuration,
      in which you identify an in-application stream and a destination where you want the
      in-application stream data to be written. The destination can be a Kinesis data stream or a
      Kinesis Data Firehose delivery stream. </p>
    
         <p></p>")
type output = {
  @ocaml.doc("<p>Describes the data format when records are written to the destination. 
      </p>")
  @as("DestinationSchema")
  destinationSchema: destinationSchema,
  @ocaml.doc("<p>Identifies an Amazon Lambda function as the destination.</p>") @as("LambdaOutput")
  lambdaOutput: option<lambdaOutput>,
  @ocaml.doc("<p>Identifies a Kinesis Data Firehose delivery stream as the destination.</p>")
  @as("KinesisFirehoseOutput")
  kinesisFirehoseOutput: option<kinesisFirehoseOutput>,
  @ocaml.doc("<p>Identifies a Kinesis data stream 
      as the destination.</p>")
  @as("KinesisStreamsOutput")
  kinesisStreamsOutput: option<kinesisStreamsOutput>,
  @ocaml.doc("<p>The name of the in-application stream.</p>") @as("Name") name: inAppStreamName,
}
@ocaml.doc("<p>When you configure a SQL-based Kinesis Data Analytics application's input at the
      time of creating or updating an application, provides additional mapping information specific
      to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the
      streaming source.</p>")
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
  "<p>For a SQL-based Kinesis Data Analytics application, describes updates to an <a>InputProcessingConfiguration</a>.</p>"
)
type inputProcessingConfigurationUpdate = {
  @ocaml.doc("<p>Provides update information for an <a>InputLambdaProcessor</a>.</p>")
  @as("InputLambdaProcessorUpdate")
  inputLambdaProcessorUpdate: inputLambdaProcessorUpdate,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, provides the configuration
        information about an input processor. Currently, the only input processor available is <a href=\"https://docs.aws.amazon.com/lambda/\">Amazon Lambda</a>.</p>")
type inputProcessingConfigurationDescription = {
  @ocaml.doc("<p>Provides configuration information about the associated <a>InputLambdaProcessorDescription</a>
         </p>")
  @as("InputLambdaProcessorDescription")
  inputLambdaProcessorDescription: option<inputLambdaProcessorDescription>,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, describes a processor that is
      used to preprocess the records in the stream before being processed by your application code.
      Currently, the only input processor available is <a href=\"https://docs.aws.amazon.com/lambda/\">Amazon Lambda</a>.</p>")
type inputProcessingConfiguration = {
  @ocaml.doc("<p>The <a>InputLambdaProcessor</a> that is used to preprocess the records
      in the stream before being processed by your application code.</p>")
  @as("InputLambdaProcessor")
  inputLambdaProcessor: inputLambdaProcessor,
}
@ocaml.doc(
  "<p>Describes updates to the configuration parameters for a Flink-based Kinesis Data Analytics application.</p>"
)
type flinkApplicationConfigurationUpdate = {
  @ocaml.doc(
    "<p>Describes updates to the parameters for how an application executes multiple tasks simultaneously.</p>"
  )
  @as("ParallelismConfigurationUpdate")
  parallelismConfigurationUpdate: option<parallelismConfigurationUpdate>,
  @ocaml.doc("<p>Describes updates to the configuration parameters for Amazon CloudWatch logging for an
      application.</p>")
  @as("MonitoringConfigurationUpdate")
  monitoringConfigurationUpdate: option<monitoringConfigurationUpdate>,
  @ocaml.doc("<p>Describes updates to an application's checkpointing configuration. Checkpointing is the process of persisting 
      application state for fault tolerance.</p>")
  @as("CheckpointConfigurationUpdate")
  checkpointConfigurationUpdate: option<checkpointConfigurationUpdate>,
}
@ocaml.doc(
  "<p>Describes configuration parameters for a Flink-based Kinesis Data Analytics application.</p>"
)
type flinkApplicationConfigurationDescription = {
  @ocaml.doc("<p>The job plan for an application. For more information about the job plan, see <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/internals/job_scheduling.html\">Jobs and Scheduling</a> in the <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/\">Apache Flink
        Documentation</a>. To retrieve the job plan for the application, use the <a>DescribeApplicationRequest$IncludeAdditionalDetails</a> parameter of the <a>DescribeApplication</a> operation.</p>")
  @as("JobPlanDescription")
  jobPlanDescription: option<jobPlanDescription>,
  @ocaml.doc(
    "<p>Describes parameters for how an application executes multiple tasks simultaneously.</p>"
  )
  @as("ParallelismConfigurationDescription")
  parallelismConfigurationDescription: option<parallelismConfigurationDescription>,
  @ocaml.doc("<p>Describes configuration parameters for Amazon CloudWatch logging for an
      application.</p>")
  @as("MonitoringConfigurationDescription")
  monitoringConfigurationDescription: option<monitoringConfigurationDescription>,
  @ocaml.doc("<p>Describes an application's checkpointing configuration. Checkpointing is the process of persisting application state 
      for fault tolerance.</p>")
  @as("CheckpointConfigurationDescription")
  checkpointConfigurationDescription: option<checkpointConfigurationDescription>,
}
@ocaml.doc(
  "<p>Describes configuration parameters for a Flink-based Kinesis Data Analytics application or a Studio notebook.</p>"
)
type flinkApplicationConfiguration = {
  @ocaml.doc(
    "<p>Describes parameters for how an application executes multiple tasks simultaneously.</p>"
  )
  @as("ParallelismConfiguration")
  parallelismConfiguration: option<parallelismConfiguration>,
  @ocaml.doc("<p>Describes configuration parameters for Amazon CloudWatch logging for an
      application.</p>")
  @as("MonitoringConfiguration")
  monitoringConfiguration: option<monitoringConfiguration>,
  @ocaml.doc("<p>Describes an application's checkpointing configuration. Checkpointing is the 
      process of persisting application state for fault tolerance.
      For more information, see 
      <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/concepts/programming-model.html#checkpoints-for-fault-tolerance\">
        Checkpoints for Fault Tolerance</a> in the 
      <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/\">Apache Flink Documentation</a>. </p>")
  @as("CheckpointConfiguration")
  checkpointConfiguration: option<checkpointConfiguration>,
}
@ocaml.doc(
  "<p>Updates to the configuration information required to deploy an Amazon Data Analytics Studio notebook as an application with durable state.</p>"
)
type deployAsApplicationConfigurationUpdate = {
  @ocaml.doc(
    "<p>Updates to the location that holds the data required to specify an Amazon Data Analytics application.</p>"
  )
  @as("S3ContentLocationUpdate")
  s3ContentLocationUpdate: option<s3ContentBaseLocationUpdate>,
}
@ocaml.doc(
  "<p>The configuration information required to deploy an Amazon Data Analytics Studio notebook as an application with durable state.</p>"
)
type deployAsApplicationConfigurationDescription = {
  @ocaml.doc(
    "<p>The location that holds the data required to specify an Amazon Data Analytics application.</p>"
  )
  @as("S3ContentLocationDescription")
  s3ContentLocationDescription: s3ContentBaseLocationDescription,
}
@ocaml.doc(
  "<p>The information required to deploy a Kinesis Data Analytics Studio notebook as an application with durable state.</p>"
)
type deployAsApplicationConfiguration = {
  @ocaml.doc("<p>The description of an Amazon S3 object that contains the Amazon Data Analytics application, including the Amazon Resource Name (ARN) of the S3 bucket, the name of the Amazon S3 object that contains the data, and the version number of the Amazon S3 object that contains the data.    
    </p>")
  @as("S3ContentLocation")
  s3ContentLocation: s3ContentBaseLocation,
}
@ocaml.doc("<p>Specifies a dependency JAR or a JAR of user-defined functions.</p>")
type customArtifactConfigurationDescription = {
  @ocaml.doc("<p>The parameters that are required to specify a Maven dependency.</p>")
  @as("MavenReferenceDescription")
  mavenReferenceDescription: option<mavenReference>,
  @as("S3ContentLocationDescription") s3ContentLocationDescription: option<s3ContentLocation>,
  @ocaml.doc("<p>
            <code>UDF</code> stands for user-defined functions. This type of artifact must be in an S3 bucket. A <code>DEPENDENCY_JAR</code> can be in either Maven or an S3 bucket.</p>")
  @as("ArtifactType")
  artifactType: option<artifactType>,
}
@ocaml.doc(
  "<p>Specifies dependency JARs, as well as JAR files that contain user-defined functions (UDF).</p>"
)
type customArtifactConfiguration = {
  @ocaml.doc("<p>The parameters required to fully specify a Maven reference.</p>")
  @as("MavenReference")
  mavenReference: option<mavenReference>,
  @as("S3ContentLocation") s3ContentLocation: option<s3ContentLocation>,
  @ocaml.doc("<p>
            <code>UDF</code> stands for user-defined functions. This type of artifact must be in an S3 bucket. A <code>DEPENDENCY_JAR</code> can be in either Maven or an S3 bucket.</p>")
  @as("ArtifactType")
  artifactType: artifactType,
}
@ocaml.doc(
  "<p>Describes an update to the code of an application. Not supported for Apache Zeppelin.</p>"
)
type codeContentUpdate = {
  @ocaml.doc("<p>Describes an update to the location of code for an application.</p>")
  @as("S3ContentLocationUpdate")
  s3ContentLocationUpdate: option<s3ContentLocationUpdate>,
  @ocaml.doc("<p>Describes an update to the zipped code for an application.</p>")
  @as("ZipFileContentUpdate")
  zipFileContentUpdate: option<zipFileContent>,
  @ocaml.doc("<p>Describes an update to the text code for an application.</p>")
  @as("TextContentUpdate")
  textContentUpdate: option<textContent>,
}
@ocaml.doc("<p>Describes details about the code of a Kinesis Data Analytics application.</p>")
type codeContentDescription = {
  @ocaml.doc("<p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the application
      code stored in Amazon S3.</p>")
  @as("S3ApplicationCodeLocationDescription")
  s3ApplicationCodeLocationDescription: option<s3ApplicationCodeLocationDescription>,
  @ocaml.doc(
    "<p>The size in bytes of the application code. Can be used to validate zip-format code.</p>"
  )
  @as("CodeSize")
  codeSize: option<codeSize>,
  @ocaml.doc("<p>The checksum that can be used to validate zip-format code.</p>") @as("CodeMD5")
  codeMD5: option<codeMD5>,
  @ocaml.doc("<p>The text-format code</p>") @as("TextContent") textContent: option<textContent>,
}
@ocaml.doc("<p>Specifies either the application code, or the location of the application code, for a
      Flink-based Kinesis Data Analytics application. </p>")
type codeContent = {
  @ocaml.doc("<p>Information about the Amazon S3 bucket that contains the application code.</p>")
  @as("S3ContentLocation")
  s3ContentLocation: option<s3ContentLocation>,
  @ocaml.doc("<p>The zip-format code for a Flink-based Kinesis Data Analytics application.</p>")
  @as("ZipFileContent")
  zipFileContent: option<zipFileContent>,
  @ocaml.doc("<p>The text-format code for a Flink-based Kinesis Data Analytics application.</p>")
  @as("TextContent")
  textContent: option<textContent>,
}
type cloudWatchLoggingOptions = array<cloudWatchLoggingOption>
type cloudWatchLoggingOptionUpdates = array<cloudWatchLoggingOptionUpdate>
type cloudWatchLoggingOptionDescriptions = array<cloudWatchLoggingOptionDescription>
@ocaml.doc(
  "<p>Updates to the configuration parameters for the default Amazon Glue database. You use this database for SQL queries that you write in a Kinesis Data Analytics Studio notebook.</p>"
)
type catalogConfigurationUpdate = {
  @ocaml.doc(
    "<p>Updates to the configuration parameters for the default Amazon Glue database. You use this database for SQL queries that you write in a Kinesis Data Analytics Studio notebook.</p>"
  )
  @as("GlueDataCatalogConfigurationUpdate")
  glueDataCatalogConfigurationUpdate: glueDataCatalogConfigurationUpdate,
}
@ocaml.doc(
  "<p>The configuration parameters for the default Amazon Glue database. You use this database for Apache Flink SQL queries and table API transforms that you write in a Kinesis Data Analytics Studio notebook.</p>"
)
type catalogConfigurationDescription = {
  @ocaml.doc(
    "<p>The configuration parameters for the default Amazon Glue database. You use this database for SQL queries that you write in a Kinesis Data Analytics Studio notebook.</p>"
  )
  @as("GlueDataCatalogConfigurationDescription")
  glueDataCatalogConfigurationDescription: glueDataCatalogConfigurationDescription,
}
@ocaml.doc(
  "<p>The configuration parameters for the default Amazon Glue database. You use this database for SQL queries that you write in a Kinesis Data Analytics Studio notebook.</p>"
)
type catalogConfiguration = {
  @ocaml.doc(
    "<p>The configuration parameters for the default Amazon Glue database. You use this database for Apache Flink SQL queries and table API transforms that you write in a Kinesis Data Analytics Studio notebook.</p>"
  )
  @as("GlueDataCatalogConfiguration")
  glueDataCatalogConfiguration: glueDataCatalogConfiguration,
}
type applicationVersionSummaries = array<applicationVersionSummary>
type applicationSummaries = array<applicationSummary>
type vpcConfigurations = array<vpcConfiguration>
type vpcConfigurationUpdates = array<vpcConfigurationUpdate>
type vpcConfigurationDescriptions = array<vpcConfigurationDescription>
type sqlRunConfigurations = array<sqlRunConfiguration>
@ocaml.doc("<p> For a SQL-based Kinesis Data Analytics application, describes the record format
      and relevant mapping information that should be applied to schematize the records on the
      stream. </p>")
type recordFormat = {
  @ocaml.doc("<p>When you configure application input at the time of creating or updating an application,
      provides additional mapping information specific to the record format (such as JSON, CSV, or
      record fields delimited by some delimiter) on the streaming source.</p>")
  @as("MappingParameters")
  mappingParameters: option<mappingParameters>,
  @ocaml.doc("<p>The type of record format.</p>") @as("RecordFormatType")
  recordFormatType: recordFormatType,
}
type propertyGroups = array<propertyGroup>
type outputs = array<output>
type outputUpdates = array<outputUpdate>
type outputDescriptions = array<outputDescription>
type customArtifactsConfigurationList = array<customArtifactConfiguration>
type customArtifactsConfigurationDescriptionList = array<customArtifactConfigurationDescription>
@ocaml.doc(
  "<p>Describes code configuration updates for an application. This is supported for a Flink-based Kinesis Data Analytics application or a SQL-based Kinesis Data Analytics application.</p>"
)
type applicationCodeConfigurationUpdate = {
  @ocaml.doc("<p>Describes updates to the code content of an application.</p>")
  @as("CodeContentUpdate")
  codeContentUpdate: option<codeContentUpdate>,
  @ocaml.doc("<p>Describes updates to the code content type.</p>") @as("CodeContentTypeUpdate")
  codeContentTypeUpdate: option<codeContentType>,
}
@ocaml.doc("<p>Describes code configuration for an application.</p>")
type applicationCodeConfigurationDescription = {
  @ocaml.doc("<p>Describes details about the location and format of the application code.</p>")
  @as("CodeContentDescription")
  codeContentDescription: option<codeContentDescription>,
  @ocaml.doc("<p>Specifies whether the code content is in text or zip format.</p>")
  @as("CodeContentType")
  codeContentType: codeContentType,
}
@ocaml.doc("<p>Describes code configuration for an application.</p>")
type applicationCodeConfiguration = {
  @ocaml.doc("<p>Specifies whether the code content is in text or zip format.</p>")
  @as("CodeContentType")
  codeContentType: codeContentType,
  @ocaml.doc("<p>The location and type of the application code.</p>") @as("CodeContent")
  codeContent: option<codeContent>,
}
@ocaml.doc("<p>Updates to the configuration of Kinesis Data Analytics Studio notebook.</p>")
type zeppelinApplicationConfigurationUpdate = {
  @ocaml.doc(
    "<p>Updates to the customer artifacts. Custom artifacts are dependency JAR files and user-defined functions (UDF).</p>"
  )
  @as("CustomArtifactsConfigurationUpdate")
  customArtifactsConfigurationUpdate: option<customArtifactsConfigurationList>,
  @as("DeployAsApplicationConfigurationUpdate")
  deployAsApplicationConfigurationUpdate: option<deployAsApplicationConfigurationUpdate>,
  @ocaml.doc(
    "<p>Updates to the configuration of the Amazon Glue Data Catalog that is associated with the Kinesis Data Analytics Studio notebook.</p>"
  )
  @as("CatalogConfigurationUpdate")
  catalogConfigurationUpdate: option<catalogConfigurationUpdate>,
  @ocaml.doc(
    "<p>Updates to the monitoring configuration of a Kinesis Data Analytics Studio notebook.</p>"
  )
  @as("MonitoringConfigurationUpdate")
  monitoringConfigurationUpdate: option<zeppelinMonitoringConfigurationUpdate>,
}
@ocaml.doc("<p>The configuration of a Kinesis Data Analytics Studio notebook.</p>")
type zeppelinApplicationConfigurationDescription = {
  @ocaml.doc("<p>Custom artifacts are dependency JARs and user-defined functions (UDF).</p>")
  @as("CustomArtifactsConfigurationDescription")
  customArtifactsConfigurationDescription: option<customArtifactsConfigurationDescriptionList>,
  @ocaml.doc(
    "<p>The parameters required to deploy a Kinesis Data Analytics Studio notebook as an application with durable state.</p>"
  )
  @as("DeployAsApplicationConfigurationDescription")
  deployAsApplicationConfigurationDescription: option<deployAsApplicationConfigurationDescription>,
  @ocaml.doc(
    "<p>The Amazon Glue Data Catalog that is associated with the Kinesis Data Analytics Studio notebook.</p>"
  )
  @as("CatalogConfigurationDescription")
  catalogConfigurationDescription: option<catalogConfigurationDescription>,
  @ocaml.doc("<p>The monitoring configuration of a Kinesis Data Analytics Studio notebook.</p>")
  @as("MonitoringConfigurationDescription")
  monitoringConfigurationDescription: zeppelinMonitoringConfigurationDescription,
}
@ocaml.doc("<p>The configuration of a Kinesis Data Analytics Studio notebook.</p>")
type zeppelinApplicationConfiguration = {
  @ocaml.doc("<p>Custom artifacts are dependency JARs and user-defined functions (UDF).</p>")
  @as("CustomArtifactsConfiguration")
  customArtifactsConfiguration: option<customArtifactsConfigurationList>,
  @ocaml.doc(
    "<p>The information required to deploy a Kinesis Data Analytics Studio notebook as an application with durable state.</p>"
  )
  @as("DeployAsApplicationConfiguration")
  deployAsApplicationConfiguration: option<deployAsApplicationConfiguration>,
  @ocaml.doc(
    "<p>The Amazon Glue Data Catalog that you use in queries in a Kinesis Data Analytics Studio notebook.</p>"
  )
  @as("CatalogConfiguration")
  catalogConfiguration: option<catalogConfiguration>,
  @ocaml.doc("<p>The monitoring configuration of a Kinesis Data Analytics Studio notebook.</p>")
  @as("MonitoringConfiguration")
  monitoringConfiguration: option<zeppelinMonitoringConfiguration>,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, describes the format of the
      data in the streaming source, and how each data element maps to corresponding columns created
      in the in-application stream. </p>")
type sourceSchema = {
  @ocaml.doc("<p>A list of <code>RecordColumn</code> objects. </p>") @as("RecordColumns")
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
@ocaml.doc("<p>Describes the starting parameters for an Kinesis Data Analytics application.</p>")
type runConfiguration = {
  @ocaml.doc("<p>Describes the restore behavior of a restarting application.</p>")
  @as("ApplicationRestoreConfiguration")
  applicationRestoreConfiguration: option<applicationRestoreConfiguration>,
  @ocaml.doc("<p>Describes the starting parameters for a SQL-based Kinesis Data Analytics application
      application.</p>")
  @as("SqlRunConfigurations")
  sqlRunConfigurations: option<sqlRunConfigurations>,
  @ocaml.doc(
    "<p>Describes the starting parameters for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("FlinkRunConfiguration")
  flinkRunConfiguration: option<flinkRunConfiguration>,
}
@ocaml.doc("<p>Describes updates for an SQL-based Kinesis Data Analytics application's input
      schema.</p>")
type inputSchemaUpdate = {
  @ocaml.doc("<p>A list of <code>RecordColumn</code> objects. Each object describes the mapping 
      of the streaming source element to the corresponding column in the in-application stream.</p>")
  @as("RecordColumnUpdates")
  recordColumnUpdates: option<recordColumns>,
  @ocaml.doc(
    "<p>Specifies the encoding of the records in the streaming source; for example, UTF-8.</p>"
  )
  @as("RecordEncodingUpdate")
  recordEncodingUpdate: option<recordEncoding>,
  @ocaml.doc("<p>Specifies the format of the records on the streaming source.</p>")
  @as("RecordFormatUpdate")
  recordFormatUpdate: option<recordFormat>,
}
@ocaml.doc(
  "<p>Describes updates to the execution property groups for a Flink-based Kinesis Data Analytics application or a Studio notebook.</p>"
)
type environmentPropertyUpdates = {
  @ocaml.doc("<p>Describes updates to the execution property groups.</p>") @as("PropertyGroups")
  propertyGroups: propertyGroups,
}
@ocaml.doc("<p>Describes the execution properties for an Apache Flink runtime.</p>")
type environmentPropertyDescriptions = {
  @ocaml.doc("<p>Describes the execution property groups.</p>") @as("PropertyGroupDescriptions")
  propertyGroupDescriptions: option<propertyGroups>,
}
@ocaml.doc(
  "<p>Describes execution properties for a Flink-based Kinesis Data Analytics application.</p>"
)
type environmentProperties = {
  @ocaml.doc("<p>Describes the execution property groups.</p>") @as("PropertyGroups")
  propertyGroups: propertyGroups,
}
@ocaml.doc("<p>When you update a reference data source configuration for a
       SQL-based Kinesis Data Analytics application, this object provides all the updated values 
      (such as the source bucket name and object key name), the in-application table name that is created, 
      and updated mapping information that maps the data in the Amazon S3 object to the in-application 
      reference table that is created.</p>")
type referenceDataSourceUpdate = {
  @ocaml.doc("<p>Describes the format of the data in the streaming source, and how each data element maps to 
      corresponding columns created in the in-application stream. </p>")
  @as("ReferenceSchemaUpdate")
  referenceSchemaUpdate: option<sourceSchema>,
  @ocaml.doc("<p>Describes the S3 bucket name, object key name, and IAM role that Kinesis Data Analytics can assume to read the 
      Amazon S3 object on your behalf and populate the in-application reference table.</p>")
  @as("S3ReferenceDataSourceUpdate")
  s3ReferenceDataSourceUpdate: option<s3ReferenceDataSourceUpdate>,
  @ocaml.doc("<p>The in-application table name that is created by this update.</p>")
  @as("TableNameUpdate")
  tableNameUpdate: option<inAppTableName>,
  @ocaml.doc(
    "<p>The ID of the reference data source that is being updated. You can use the <a>DescribeApplication</a> operation to get this value.</p>"
  )
  @as("ReferenceId")
  referenceId: id,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, describes the reference data
      source configured for an application.</p>")
type referenceDataSourceDescription = {
  @ocaml.doc(
    "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"
  )
  @as("ReferenceSchema")
  referenceSchema: option<sourceSchema>,
  @ocaml.doc(
    "<p>Provides the Amazon S3 bucket name, the object key name that contains the reference data. </p>"
  )
  @as("S3ReferenceDataSourceDescription")
  s3ReferenceDataSourceDescription: s3ReferenceDataSourceDescription,
  @ocaml.doc(
    "<p>The in-application table name created by the specific reference data source configuration.</p>"
  )
  @as("TableName")
  tableName: inAppTableName,
  @ocaml.doc("<p>The ID of the reference data source. This is the ID that Kinesis Data Analytics assigns
      when you add the reference data source to your application using the <a>CreateApplication</a> or <a>UpdateApplication</a> operation.</p>")
  @as("ReferenceId")
  referenceId: id,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, describes the reference data
      source by providing the source information (Amazon S3 bucket name and object key name), the
      resulting in-application table name that is created, and the necessary schema to map the data
      elements in the Amazon S3 object to the in-application table.</p>")
type referenceDataSource = {
  @ocaml.doc(
    "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"
  )
  @as("ReferenceSchema")
  referenceSchema: sourceSchema,
  @ocaml.doc("<p>Identifies the S3 bucket and object that contains the reference data.
      
      A Kinesis Data Analytics application loads reference data only once. If the data changes, you call the <a>UpdateApplication</a> operation to trigger reloading of data into your application. </p>")
  @as("S3ReferenceDataSource")
  s3ReferenceDataSource: option<s3ReferenceDataSource>,
  @ocaml.doc("<p>The name of the in-application table to create.</p>") @as("TableName")
  tableName: inAppTableName,
}
@ocaml.doc("<p>For a SQL-based Kinesis Data Analytics application, describes updates to a
      specific input configuration (identified by the <code>InputId</code> of an application). </p>")
type inputUpdate = {
  @ocaml.doc(
    "<p>Describes the parallelism updates (the number of in-application streams Kinesis Data Analytics creates for the specific streaming source).</p>"
  )
  @as("InputParallelismUpdate")
  inputParallelismUpdate: option<inputParallelismUpdate>,
  @ocaml.doc("<p>Describes the data format on the streaming source, and 
      how record elements on the streaming source map to columns of the in-application stream that is created.</p>")
  @as("InputSchemaUpdate")
  inputSchemaUpdate: option<inputSchemaUpdate>,
  @ocaml.doc("<p>If a Kinesis Data Firehose delivery stream is the streaming source to be
      updated, provides an updated stream ARN.</p>")
  @as("KinesisFirehoseInputUpdate")
  kinesisFirehoseInputUpdate: option<kinesisFirehoseInputUpdate>,
  @ocaml.doc("<p>If a Kinesis data stream is the streaming source to be updated, provides an
      updated stream Amazon Resource Name (ARN).</p>")
  @as("KinesisStreamsInputUpdate")
  kinesisStreamsInputUpdate: option<kinesisStreamsInputUpdate>,
  @ocaml.doc("<p>Describes updates to an <a>InputProcessingConfiguration</a>.</p>")
  @as("InputProcessingConfigurationUpdate")
  inputProcessingConfigurationUpdate: option<inputProcessingConfigurationUpdate>,
  @ocaml.doc("<p>The name prefix for in-application streams that Kinesis Data Analytics creates for the
      specific streaming source.</p>")
  @as("NamePrefixUpdate")
  namePrefixUpdate: option<inAppStreamName>,
  @ocaml.doc("<p>The input ID of the application input to be updated.</p>") @as("InputId")
  inputId: id,
}
@ocaml.doc(
  "<p>Describes the application input configuration for a SQL-based Kinesis Data Analytics application. </p>"
)
type inputDescription = {
  @ocaml.doc(
    "<p>The point at which the application is configured to read from the input stream.</p>"
  )
  @as("InputStartingPositionConfiguration")
  inputStartingPositionConfiguration: option<inputStartingPositionConfiguration>,
  @ocaml.doc(
    "<p>Describes the configured parallelism (number of in-application streams mapped to the streaming source). </p>"
  )
  @as("InputParallelism")
  inputParallelism: option<inputParallelism>,
  @ocaml.doc("<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns 
      in the in-application stream that is being created. </p>")
  @as("InputSchema")
  inputSchema: option<sourceSchema>,
  @ocaml.doc(
    "<p>If a Kinesis Data Firehose delivery stream is configured as a streaming source, provides the delivery stream's ARN. </p>"
  )
  @as("KinesisFirehoseInputDescription")
  kinesisFirehoseInputDescription: option<kinesisFirehoseInputDescription>,
  @ocaml.doc("<p>If a Kinesis data stream is configured as a streaming source, provides the Kinesis data
      stream's Amazon Resource Name (ARN). </p>")
  @as("KinesisStreamsInputDescription")
  kinesisStreamsInputDescription: option<kinesisStreamsInputDescription>,
  @ocaml.doc(
    "<p>The description of the preprocessor that executes on records in this input before the application's code is run. </p>"
  )
  @as("InputProcessingConfigurationDescription")
  inputProcessingConfigurationDescription: option<inputProcessingConfigurationDescription>,
  @ocaml.doc(
    "<p>Returns the in-application stream names that are mapped to the stream source. </p>"
  )
  @as("InAppStreamNames")
  inAppStreamNames: option<inAppStreamNames>,
  @ocaml.doc("<p>The in-application name prefix.</p>") @as("NamePrefix")
  namePrefix: option<inAppStreamName>,
  @ocaml.doc("<p>The input ID that is associated with the application input. This is the ID that Kinesis Data Analytics assigns to each input 
      configuration that you add to your application. </p>")
  @as("InputId")
  inputId: option<id>,
}
@ocaml.doc("<p>When you configure the application input for a SQL-based Kinesis Data Analytics application, you specify the streaming source, the in-application stream 
      name that is created,
      and the mapping between the two. </p>")
type input = {
  @ocaml.doc("<p>Describes the format of the data in the streaming source, and how each data element maps
      to corresponding columns in the in-application stream that is being created.</p>
         <p>Also used to describe the format of the reference data source.</p>")
  @as("InputSchema")
  inputSchema: sourceSchema,
  @ocaml.doc("<p>Describes the number of in-application streams to create. </p>")
  @as("InputParallelism")
  inputParallelism: option<inputParallelism>,
  @ocaml.doc(
    "<p>If the streaming source is an Amazon Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN.</p>"
  )
  @as("KinesisFirehoseInput")
  kinesisFirehoseInput: option<kinesisFirehoseInput>,
  @ocaml.doc(
    "<p>If the streaming source is an Amazon Kinesis data stream, identifies the stream's Amazon Resource Name (ARN). </p>"
  )
  @as("KinesisStreamsInput")
  kinesisStreamsInput: option<kinesisStreamsInput>,
  @ocaml.doc("<p>The <a>InputProcessingConfiguration</a> for the input. An input processor transforms records as they are received 
      from the stream, before the application's SQL code executes. Currently, the only input processing configuration available is 
      <a>InputLambdaProcessor</a>. </p>")
  @as("InputProcessingConfiguration")
  inputProcessingConfiguration: option<inputProcessingConfiguration>,
  @ocaml.doc("<p>The name prefix to use when creating an in-application stream. Suppose that you specify a
      prefix \"<code>MyInApplicationStream</code>.\" Kinesis Data Analytics then creates one or more
      (as per the <code>InputParallelism</code> count you specified) in-application streams with the
      names \"<code>MyInApplicationStream_001</code>,\" \"<code>MyInApplicationStream_002</code>,\" and
      so on. </p>")
  @as("NamePrefix")
  namePrefix: inAppStreamName,
}
type referenceDataSources = array<referenceDataSource>
type referenceDataSourceUpdates = array<referenceDataSourceUpdate>
type referenceDataSourceDescriptions = array<referenceDataSourceDescription>
type inputs = array<input>
type inputUpdates = array<inputUpdate>
type inputDescriptions = array<inputDescription>
@ocaml.doc("<p>Describes updates to the input streams, destination streams, and reference data sources
      for a SQL-based Kinesis Data Analytics application.</p>")
type sqlApplicationConfigurationUpdate = {
  @ocaml.doc("<p>The array of <a>ReferenceDataSourceUpdate</a> objects describing the new
      reference data sources used by the application.</p>")
  @as("ReferenceDataSourceUpdates")
  referenceDataSourceUpdates: option<referenceDataSourceUpdates>,
  @ocaml.doc("<p>The array of <a>OutputUpdate</a> objects describing the new destination streams
      used by the application.</p>")
  @as("OutputUpdates")
  outputUpdates: option<outputUpdates>,
  @ocaml.doc("<p>The array of <a>InputUpdate</a> objects describing the new input streams used
      by the application.</p>")
  @as("InputUpdates")
  inputUpdates: option<inputUpdates>,
}
@ocaml.doc(
  "<p>Describes the inputs, outputs, and reference data sources for a SQL-based Kinesis Data Analytics application.</p>"
)
type sqlApplicationConfigurationDescription = {
  @ocaml.doc("<p>The array of <a>ReferenceDataSourceDescription</a> objects describing the
      reference data sources used by the application.</p>")
  @as("ReferenceDataSourceDescriptions")
  referenceDataSourceDescriptions: option<referenceDataSourceDescriptions>,
  @ocaml.doc("<p>The array of <a>OutputDescription</a> objects describing the destination
      streams used by the application.</p>")
  @as("OutputDescriptions")
  outputDescriptions: option<outputDescriptions>,
  @ocaml.doc("<p>The array of <a>InputDescription</a> objects describing the input streams used
      by the application.</p>")
  @as("InputDescriptions")
  inputDescriptions: option<inputDescriptions>,
}
@ocaml.doc(
  "<p>Describes the inputs, outputs, and reference data sources for a SQL-based Kinesis Data Analytics application.</p>"
)
type sqlApplicationConfiguration = {
  @ocaml.doc("<p>The array of <a>ReferenceDataSource</a> objects describing the reference data
      sources used by the application.</p>")
  @as("ReferenceDataSources")
  referenceDataSources: option<referenceDataSources>,
  @ocaml.doc("<p>The array of <a>Output</a> objects describing the destination streams used by
      the application.</p>")
  @as("Outputs")
  outputs: option<outputs>,
  @ocaml.doc("<p>The array of <a>Input</a> objects describing the input streams used by the
      application.</p>")
  @as("Inputs")
  inputs: option<inputs>,
}
@ocaml.doc("<p>Describes updates to an application's configuration.</p>")
type applicationConfigurationUpdate = {
  @ocaml.doc("<p>Updates to the configuration of a Kinesis Data Analytics Studio notebook.</p>")
  @as("ZeppelinApplicationConfigurationUpdate")
  zeppelinApplicationConfigurationUpdate: option<zeppelinApplicationConfigurationUpdate>,
  @ocaml.doc(
    "<p>Updates to the array of descriptions of VPC configurations available to the application.</p>"
  )
  @as("VpcConfigurationUpdates")
  vpcConfigurationUpdates: option<vpcConfigurationUpdates>,
  @ocaml.doc(
    "<p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("ApplicationSnapshotConfigurationUpdate")
  applicationSnapshotConfigurationUpdate: option<applicationSnapshotConfigurationUpdate>,
  @ocaml.doc(
    "<p>Describes updates to the environment properties for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("EnvironmentPropertyUpdates")
  environmentPropertyUpdates: option<environmentPropertyUpdates>,
  @ocaml.doc(
    "<p>Describes updates to a Flink-based Kinesis Data Analytics application's configuration.</p>"
  )
  @as("FlinkApplicationConfigurationUpdate")
  flinkApplicationConfigurationUpdate: option<flinkApplicationConfigurationUpdate>,
  @ocaml.doc("<p>Describes updates to an application's code
      configuration.</p>")
  @as("ApplicationCodeConfigurationUpdate")
  applicationCodeConfigurationUpdate: option<applicationCodeConfigurationUpdate>,
  @ocaml.doc("<p>Describes updates to a SQL-based Kinesis Data Analytics application's
      configuration.</p>")
  @as("SqlApplicationConfigurationUpdate")
  sqlApplicationConfigurationUpdate: option<sqlApplicationConfigurationUpdate>,
}
@ocaml.doc(
  "<p>Describes details about the application code and starting parameters for a Kinesis Data Analytics application.</p>"
)
type applicationConfigurationDescription = {
  @ocaml.doc("<p>The configuration parameters for a Kinesis Data Analytics Studio notebook.</p>")
  @as("ZeppelinApplicationConfigurationDescription")
  zeppelinApplicationConfigurationDescription: option<zeppelinApplicationConfigurationDescription>,
  @ocaml.doc("<p>The array of descriptions of VPC configurations available to the application.</p>")
  @as("VpcConfigurationDescriptions")
  vpcConfigurationDescriptions: option<vpcConfigurationDescriptions>,
  @ocaml.doc(
    "<p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("ApplicationSnapshotConfigurationDescription")
  applicationSnapshotConfigurationDescription: option<applicationSnapshotConfigurationDescription>,
  @ocaml.doc(
    "<p>Describes execution properties for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("EnvironmentPropertyDescriptions")
  environmentPropertyDescriptions: option<environmentPropertyDescriptions>,
  @ocaml.doc("<p>The details about a Flink-based Kinesis Data Analytics application.</p>")
  @as("FlinkApplicationConfigurationDescription")
  flinkApplicationConfigurationDescription: option<flinkApplicationConfigurationDescription>,
  @ocaml.doc(
    "<p>The details about the starting properties for a Kinesis Data Analytics application.</p>"
  )
  @as("RunConfigurationDescription")
  runConfigurationDescription: option<runConfigurationDescription>,
  @ocaml.doc(
    "<p>The details about the application code for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("ApplicationCodeConfigurationDescription")
  applicationCodeConfigurationDescription: option<applicationCodeConfigurationDescription>,
  @ocaml.doc(
    "<p>The details about inputs, outputs, and reference data sources for a SQL-based Kinesis Data Analytics application.</p>"
  )
  @as("SqlApplicationConfigurationDescription")
  sqlApplicationConfigurationDescription: option<sqlApplicationConfigurationDescription>,
}
@ocaml.doc("<p>Specifies the creation parameters for a Kinesis Data Analytics application.</p>")
type applicationConfiguration = {
  @ocaml.doc("<p>The configuration parameters for a Kinesis Data Analytics Studio notebook.</p>")
  @as("ZeppelinApplicationConfiguration")
  zeppelinApplicationConfiguration: option<zeppelinApplicationConfiguration>,
  @ocaml.doc("<p>The array of descriptions of VPC configurations available to the application.</p>")
  @as("VpcConfigurations")
  vpcConfigurations: option<vpcConfigurations>,
  @ocaml.doc(
    "<p>Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("ApplicationSnapshotConfiguration")
  applicationSnapshotConfiguration: option<applicationSnapshotConfiguration>,
  @ocaml.doc(
    "<p>The code location and type parameters for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("ApplicationCodeConfiguration")
  applicationCodeConfiguration: option<applicationCodeConfiguration>,
  @ocaml.doc(
    "<p>Describes execution properties for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("EnvironmentProperties")
  environmentProperties: option<environmentProperties>,
  @ocaml.doc(
    "<p>The creation and update parameters for a Flink-based Kinesis Data Analytics application.</p>"
  )
  @as("FlinkApplicationConfiguration")
  flinkApplicationConfiguration: option<flinkApplicationConfiguration>,
  @ocaml.doc(
    "<p>The creation and update parameters for a SQL-based Kinesis Data Analytics application.</p>"
  )
  @as("SqlApplicationConfiguration")
  sqlApplicationConfiguration: option<sqlApplicationConfiguration>,
}
@ocaml.doc("<p>Describes the application, including the application Amazon Resource Name (ARN), status,
      latest version, and input and output configurations.</p>")
type applicationDetail = {
  @ocaml.doc(
    "<p>To create a Kinesis Data Analytics Studio notebook, you must set the mode to <code>INTERACTIVE</code>. However, for a Kinesis Data Analytics for Apache Flink application, the mode is optional.</p>"
  )
  @as("ApplicationMode")
  applicationMode: option<applicationMode>,
  @ocaml.doc("<p>The version to which you want to roll back the application.</p>")
  @as("ApplicationVersionRolledBackTo")
  applicationVersionRolledBackTo: option<applicationVersionId>,
  @ocaml.doc("<p>A value you use to implement strong concurrency for application updates.</p>")
  @as("ConditionalToken")
  conditionalToken: option<conditionalToken>,
  @ocaml.doc("<p>If you reverted the application using <a>RollbackApplication</a>,
        the application version when <code>RollbackApplication</code> was called.</p>")
  @as("ApplicationVersionRolledBackFrom")
  applicationVersionRolledBackFrom: option<applicationVersionId>,
  @ocaml.doc("<p>The previous application version before the latest application update. <a>RollbackApplication</a>
        reverts the application to this version.</p>")
  @as("ApplicationVersionUpdatedFrom")
  applicationVersionUpdatedFrom: option<applicationVersionId>,
  @ocaml.doc("<p>The details of the maintenance configuration for the application.</p>")
  @as("ApplicationMaintenanceConfigurationDescription")
  applicationMaintenanceConfigurationDescription: option<
    applicationMaintenanceConfigurationDescription,
  >,
  @ocaml.doc("<p>Describes the application Amazon CloudWatch logging options.</p>")
  @as("CloudWatchLoggingOptionDescriptions")
  cloudWatchLoggingOptionDescriptions: option<cloudWatchLoggingOptionDescriptions>,
  @ocaml.doc(
    "<p>Describes details about the application code and starting parameters for a Kinesis Data Analytics application.</p>"
  )
  @as("ApplicationConfigurationDescription")
  applicationConfigurationDescription: option<applicationConfigurationDescription>,
  @ocaml.doc("<p>The current timestamp when the application was last updated.</p>")
  @as("LastUpdateTimestamp")
  lastUpdateTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The current timestamp when the application was created.</p>")
  @as("CreateTimestamp")
  createTimestamp: option<timestamp_>,
  @ocaml.doc("<p>Provides the current application version. Kinesis Data Analytics updates the
        <code>ApplicationVersionId</code> each time you update the application.</p>")
  @as("ApplicationVersionId")
  applicationVersionId: applicationVersionId,
  @ocaml.doc("<p>The status of the application.</p>") @as("ApplicationStatus")
  applicationStatus: applicationStatus,
  @ocaml.doc(
    "<p>Specifies the IAM role that the application uses to access external resources.</p>"
  )
  @as("ServiceExecutionRole")
  serviceExecutionRole: option<roleARN>,
  @ocaml.doc(
    "<p>The runtime environment for the application (<code>SQL-1_0</code>, <code>FLINK-1_6</code>, <code>FLINK-1_8</code>, or <code>FLINK-1_11</code>).</p>"
  )
  @as("RuntimeEnvironment")
  runtimeEnvironment: runtimeEnvironment,
  @ocaml.doc("<p>The name of the application.</p>") @as("ApplicationName")
  applicationName: applicationName,
  @ocaml.doc("<p>The description of the application.</p>") @as("ApplicationDescription")
  applicationDescription: option<applicationDescription>,
  @ocaml.doc("<p>The ARN of the application.</p>") @as("ApplicationARN")
  applicationARN: resourceARN,
}
@ocaml.doc("<p>Amazon Kinesis Data Analytics is a fully managed service that you can use to process and analyze streaming data using Java, SQL, or Scala. The service
      enables you to quickly author and run Java, SQL, or Scala code against streaming sources to perform time
      series analytics, feed real-time dashboards, and create real-time metrics.</p>")
module StopApplication = {
  type t
  type request = {
    @ocaml.doc("<p>Set to <code>true</code> to force the application to stop. If you set <code>Force</code>
          to <code>true</code>, Kinesis Data Analytics stops the application without taking a snapshot. 
      </p>
          <note>
            <p>Force-stopping your application may lead to data loss or duplication.
              To prevent data loss or duplicate processing of data during application restarts, 
              we recommend you to take frequent snapshots of your application.</p>
         </note>
         <p>You can only force stop a Flink-based Kinesis Data Analytics application. You can't force stop a SQL-based Kinesis Data Analytics application.</p>
         <p>The application must be in the
          <code>STARTING</code>, <code>UPDATING</code>, <code>STOPPING</code>, <code>AUTOSCALING</code>, or
          <code>RUNNING</code> status. </p>")
    @as("Force")
    force: option<booleanObject>,
    @ocaml.doc("<p>The name of the running application to stop.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "StopApplicationCommand"
  let make = (~applicationName, ~force=?, ()) => new({force, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteApplicationVpcConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>A value you use to implement strong concurrency for application updates. You must provide
      the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You get the
      application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the <code>ConditionalToken</code> parameter instead of
        <code>CurrentApplicationVersionId</code>.</p>")
    @as("ConditionalToken")
    conditionalToken: option<conditionalToken>,
    @ocaml.doc("<p>The ID of the VPC configuration to delete.</p>") @as("VpcConfigurationId")
    vpcConfigurationId: id,
    @ocaml.doc("<p>The current application version ID. You must provide the
        <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You can
      retrieve the application version ID using <a>DescribeApplication</a>. For better
      concurrency support, use the <code>ConditionalToken</code> parameter instead of
        <code>CurrentApplicationVersionId</code>.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The name of an existing application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>The updated version ID of the application.</p>") @as("ApplicationVersionId")
    applicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The ARN of the Kinesis Data Analytics application.</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationVpcConfigurationCommand"
  let make = (
    ~vpcConfigurationId,
    ~applicationName,
    ~conditionalToken=?,
    ~currentApplicationVersionId=?,
    (),
  ) => new({conditionalToken, vpcConfigurationId, currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteApplicationSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The creation timestamp of the application snapshot to delete. You can retrieve this value 
      using 
      or .</p>")
    @as("SnapshotCreationTimestamp")
    snapshotCreationTimestamp: timestamp_,
    @ocaml.doc("<p>The identifier for the snapshot delete.</p>") @as("SnapshotName")
    snapshotName: snapshotName,
    @ocaml.doc("<p>The name of an existing application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationSnapshotCommand"
  let make = (~snapshotCreationTimestamp, ~snapshotName, ~applicationName, ()) =>
    new({snapshotCreationTimestamp, snapshotName, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteApplicationReferenceDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the reference data source. When you add a reference data source to your
      application using the <a>AddApplicationReferenceDataSource</a>, Kinesis Data Analytics assigns an ID. 
      You can use the <a>DescribeApplication</a> operation to
      get the reference ID. </p>")
    @as("ReferenceId")
    referenceId: id,
    @ocaml.doc("<p>The current application version.  
      You can use the <a>DescribeApplication</a> operation to get the current application version.
      If the version specified 
      is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>The name of an existing application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>The updated version ID of the application.</p>") @as("ApplicationVersionId")
    applicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationReferenceDataSourceCommand"
  let make = (~referenceId, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({referenceId, currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteApplicationOutput = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the configuration to delete. Each output configuration that is added to the
      application (either when the application is created or later) using the <a>AddApplicationOutput</a> operation has a unique ID. You need to provide the ID to
      uniquely identify the output configuration that you want to delete from the application
      configuration. You can use the <a>DescribeApplication</a> operation to get the
      specific <code>OutputId</code>. </p>")
    @as("OutputId")
    outputId: id,
    @ocaml.doc("<p>The application version. 
      You can use the <a>DescribeApplication</a> operation to get the current application version.
      If the version specified is not the current version, the 
      <code>ConcurrentModificationException</code> is returned.
    </p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>The application name.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>The current application version ID.</p>") @as("ApplicationVersionId")
    applicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationOutputCommand"
  let make = (~outputId, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({outputId, currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteApplicationInputProcessingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the input configuration from which to delete the input processing
      configuration. You can get a list of the input IDs for an application by using the <a>DescribeApplication</a> operation.</p>")
    @as("InputId")
    inputId: id,
    @ocaml.doc("<p>The application version. 
      You can use the <a>DescribeApplication</a> operation to get the current application version.
      If the version specified is not the current version, the 
      <code>ConcurrentModificationException</code> is returned.
    </p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>The name of the application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>The current application version ID.</p>") @as("ApplicationVersionId")
    applicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationInputProcessingConfigurationCommand"
  let make = (~inputId, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({inputId, currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteApplication = {
  type t
  type request = {
    @ocaml.doc("<p>Use the <code>DescribeApplication</code> operation to get this value.</p>")
    @as("CreateTimestamp")
    createTimestamp: timestamp_,
    @ocaml.doc("<p>The name of the application to delete.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationCommand"
  let make = (~createTimestamp, ~applicationName, ()) => new({createTimestamp, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateApplicationSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier for the application snapshot.</p>") @as("SnapshotName")
    snapshotName: snapshotName,
    @ocaml.doc("<p>The name of an existing application</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "CreateApplicationSnapshotCommand"
  let make = (~snapshotName, ~applicationName, ()) => new({snapshotName, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateApplicationPresignedUrl = {
  type t
  type request = {
    @ocaml.doc("<p>The duration in seconds for which the returned URL will be valid.</p>")
    @as("SessionExpirationDurationInSeconds")
    sessionExpirationDurationInSeconds: option<sessionExpirationDurationInSeconds>,
    @ocaml.doc("<p>The type of the extension for which to create and return a URL. Currently, the only valid
            extension URL type is <code>FLINK_DASHBOARD_URL</code>. </p>")
    @as("UrlType")
    urlType: urlType,
    @ocaml.doc("<p>The name of the application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>The URL of the extension.</p>") @as("AuthorizedUrl")
    authorizedUrl: option<authorizedUrl>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "CreateApplicationPresignedUrlCommand"
  let make = (~urlType, ~applicationName, ~sessionExpirationDurationInSeconds=?, ()) =>
    new({sessionExpirationDurationInSeconds, urlType, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateApplicationMaintenanceConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Describes the application maintenance configuration update.</p>")
    @as("ApplicationMaintenanceConfigurationUpdate")
    applicationMaintenanceConfigurationUpdate: applicationMaintenanceConfigurationUpdate,
    @ocaml.doc(
      "<p>The name of the application for which you want to update the maintenance configuration.</p>"
    )
    @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>The application maintenance configuration description after the update.</p>")
    @as("ApplicationMaintenanceConfigurationDescription")
    applicationMaintenanceConfigurationDescription: option<
      applicationMaintenanceConfigurationDescription,
    >,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "UpdateApplicationMaintenanceConfigurationCommand"
  let make = (~applicationMaintenanceConfigurationUpdate, ~applicationName, ()) =>
    new({applicationMaintenanceConfigurationUpdate, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of keys of tags to remove from the specified application.</p>")
    @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc(
      "<p>The ARN of the Kinesis Data Analytics application from which to remove the tags.</p>"
    )
    @as("ResourceARN")
    resourceARN: kinesisAnalyticsARN,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeApplicationSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of an application snapshot. You can retrieve this value using 
      .</p>")
    @as("SnapshotName")
    snapshotName: snapshotName,
    @ocaml.doc("<p>The name of an existing application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>An object containing information about the application snapshot.</p>")
    @as("SnapshotDetails")
    snapshotDetails: snapshotDetails,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DescribeApplicationSnapshotCommand"
  let make = (~snapshotName, ~applicationName, ()) => new({snapshotName, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The key-value tags to assign to the application.</p>") @as("Tags") tags: tags,
    @ocaml.doc("<p>The ARN of the application to assign the tags.</p>") @as("ResourceARN")
    resourceARN: kinesisAnalyticsARN,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesisanalytics") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags, resourceARN})
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
  type request = {
    @ocaml.doc("<p>If a previous command returned a pagination token, 
      pass it into this value to retrieve the next set of results.
      For more information about pagination, see 
      <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/pagination.html\">Using the Amazon Command Line Interface's Pagination Options</a>.</p>")
    @as("NextToken")
    nextToken: option<applicationName>,
    @ocaml.doc("<p>The maximum number of applications to list.</p>") @as("Limit")
    limit: option<listApplicationsInputLimit>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token for the next set of results, or <code>null</code> if there are no additional results.
      Pass this token into a subsequent command to retrieve the next set of items
      For more information about pagination, see 
      <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/pagination.html\">Using the Amazon Command Line Interface's Pagination Options</a>.</p>")
    @as("NextToken")
    nextToken: option<applicationName>,
    @ocaml.doc("<p>A list of <code>ApplicationSummary</code> objects.</p>")
    @as("ApplicationSummaries")
    applicationSummaries: applicationSummaries,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "ListApplicationsCommand"
  let make = (~nextToken=?, ~limit=?, ()) => new({nextToken, limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListApplicationVersions = {
  type t
  type request = {
    @ocaml.doc("<p>If a previous invocation of this operation returned a pagination token, pass it into this value to retrieve the next set of results. For more information about pagination, see 
      <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/pagination.html\">Using the Amazon Command Line Interface's Pagination Options</a>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of versions to list in this invocation of the operation.</p>")
    @as("Limit")
    limit: option<listApplicationVersionsInputLimit>,
    @ocaml.doc("<p>The name of the application for which you want to list all versions.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>The pagination token for the next set of results, or <code>null</code> if there are no additional results. 
      To retrieve the next set of items, pass this token into a subsequent invocation of this operation. For more information about pagination, see 
      <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/pagination.html\">Using the Amazon Command Line Interface's Pagination Options</a>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of the application versions and the associated configuration summaries. The list includes application versions that were rolled back.</p>
         <p>To get the complete description of a specific application version, invoke the <a>DescribeApplicationVersion</a> operation.</p>")
    @as("ApplicationVersionSummaries")
    applicationVersionSummaries: option<applicationVersionSummaries>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "ListApplicationVersionsCommand"
  let make = (~applicationName, ~nextToken=?, ~limit=?, ()) =>
    new({nextToken, limit, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListApplicationSnapshots = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more 
      output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should 
      continue from. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of application snapshots to list.</p>") @as("Limit")
    limit: option<listSnapshotsInputLimit>,
    @ocaml.doc("<p>The name of an existing application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or <code>null</code> if there are no additional results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A collection of objects containing information about the application snapshots.</p>"
    )
    @as("SnapshotSummaries")
    snapshotSummaries: option<snapshotSummaries>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "ListApplicationSnapshotsCommand"
  let make = (~applicationName, ~nextToken=?, ~limit=?, ()) =>
    new({nextToken, limit, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteApplicationCloudWatchLoggingOption = {
  type t
  type request = {
    @ocaml.doc("<p>A value you use to implement strong concurrency for application updates. You must provide
      the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You get the
      application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the <code>ConditionalToken</code> parameter instead of
        <code>CurrentApplicationVersionId</code>.</p>")
    @as("ConditionalToken")
    conditionalToken: option<conditionalToken>,
    @ocaml.doc("<p>The <code>CloudWatchLoggingOptionId</code> of the Amazon CloudWatch logging option to
         delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a>DescribeApplication</a> operation. </p>")
    @as("CloudWatchLoggingOptionId")
    cloudWatchLoggingOptionId: id,
    @ocaml.doc("<p>The version ID of the application. You must provide the
        <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You can
      retrieve the application version ID using <a>DescribeApplication</a>. For better
      concurrency support, use the <code>ConditionalToken</code> parameter instead of
        <code>CurrentApplicationVersionId</code>.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The application name.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc(
      "<p>The descriptions of the remaining CloudWatch logging options for the application.</p>"
    )
    @as("CloudWatchLoggingOptionDescriptions")
    cloudWatchLoggingOptionDescriptions: option<cloudWatchLoggingOptionDescriptions>,
    @ocaml.doc("<p>The version ID of the application. Kinesis Data Analytics updates the
        <code>ApplicationVersionId</code> each time you change the CloudWatch logging
      options.</p>")
    @as("ApplicationVersionId")
    applicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The application's Amazon Resource Name (ARN).</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DeleteApplicationCloudWatchLoggingOptionCommand"
  let make = (
    ~cloudWatchLoggingOptionId,
    ~applicationName,
    ~conditionalToken=?,
    ~currentApplicationVersionId=?,
    (),
  ) =>
    new({conditionalToken, cloudWatchLoggingOptionId, currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddApplicationVpcConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>A value you use to implement strong concurrency for application updates. You must
      provide the <code>ApplicationVersionID</code> or the <code>ConditionalToken</code>. You get
      the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
        <code>ConditionalToken</code> parameter instead of
      <code>CurrentApplicationVersionId</code>.</p>")
    @as("ConditionalToken")
    conditionalToken: option<conditionalToken>,
    @ocaml.doc("<p>Description of the VPC to add to the application.</p>") @as("VpcConfiguration")
    vpcConfiguration: vpcConfiguration,
    @ocaml.doc("<p>The version of the application to which you want to add the VPC configuration. You must
      provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
      can use the <a>DescribeApplication</a> operation to get the current application
      version. If the version specified is not the current version, the
        <code>ConcurrentModificationException</code> is returned. For better concurrency support,
      use the <code>ConditionalToken</code> parameter instead of
        <code>CurrentApplicationVersionId</code>.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The name of an existing application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>The parameters of the new VPC configuration.</p>")
    @as("VpcConfigurationDescription")
    vpcConfigurationDescription: option<vpcConfigurationDescription>,
    @ocaml.doc("<p>Provides the current application version. Kinesis Data Analytics updates the ApplicationVersionId each
      time you update the application.</p>")
    @as("ApplicationVersionId")
    applicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The ARN of the application.</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "AddApplicationVpcConfigurationCommand"
  let make = (
    ~vpcConfiguration,
    ~applicationName,
    ~conditionalToken=?,
    ~currentApplicationVersionId=?,
    (),
  ) => new({conditionalToken, vpcConfiguration, currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddApplicationInputProcessingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The <a>InputProcessingConfiguration</a> to add to the application.</p>")
    @as("InputProcessingConfiguration")
    inputProcessingConfiguration: inputProcessingConfiguration,
    @ocaml.doc("<p>The ID of the input configuration to add the input processing configuration to. You
      can get a list of the input IDs for an application using the <a>DescribeApplication</a> operation.</p>")
    @as("InputId")
    inputId: id,
    @ocaml.doc("<p>The version of the application to which you want to add the input processing
      configuration. You can use the <a>DescribeApplication</a> operation to get the
      current application version. If the version specified is not the current version, the
        <code>ConcurrentModificationException</code> is returned.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>The name of the application to which you want to add the input processing
      configuration.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc(
      "<p>The description of the preprocessor that executes on records in this input before the application's code is run.</p>"
    )
    @as("InputProcessingConfigurationDescription")
    inputProcessingConfigurationDescription: option<inputProcessingConfigurationDescription>,
    @ocaml.doc("<p>The input ID that is associated with the application input. This is the ID that Kinesis Data Analytics assigns 
      to each input configuration that you add to your
      application.</p>")
    @as("InputId")
    inputId: option<id>,
    @ocaml.doc("<p>Provides the current application version. </p>") @as("ApplicationVersionId")
    applicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "AddApplicationInputProcessingConfigurationCommand"
  let make = (
    ~inputProcessingConfiguration,
    ~inputId,
    ~currentApplicationVersionId,
    ~applicationName,
    (),
  ) => new({inputProcessingConfiguration, inputId, currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddApplicationCloudWatchLoggingOption = {
  type t
  type request = {
    @ocaml.doc("<p>A value you use to implement strong concurrency for application updates. You must
      provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
      get the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
        <code>ConditionalToken</code> parameter instead of
      <code>CurrentApplicationVersionId</code>.</p>")
    @as("ConditionalToken")
    conditionalToken: option<conditionalToken>,
    @ocaml.doc("<p>Provides the Amazon CloudWatch log stream Amazon Resource Name (ARN). </p>")
    @as("CloudWatchLoggingOption")
    cloudWatchLoggingOption: cloudWatchLoggingOption,
    @ocaml.doc("<p>The version ID of the Kinesis Data Analytics application. You must provide the
        <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>.You can
      retrieve the application version ID using <a>DescribeApplication</a>. For better
      concurrency support, use the <code>ConditionalToken</code> parameter instead of
        <code>CurrentApplicationVersionId</code>.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The Kinesis Data Analytics application name.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc(
      "<p>The descriptions of the current CloudWatch logging options for the Kinesis Data Analytics application.</p>"
    )
    @as("CloudWatchLoggingOptionDescriptions")
    cloudWatchLoggingOptionDescriptions: option<cloudWatchLoggingOptionDescriptions>,
    @ocaml.doc("<p>The new version ID of the Kinesis Data Analytics application. Kinesis Data Analytics
      updates the <code>ApplicationVersionId</code> each time you change the CloudWatch logging
      options. </p>")
    @as("ApplicationVersionId")
    applicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The application's ARN.</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "AddApplicationCloudWatchLoggingOptionCommand"
  let make = (
    ~cloudWatchLoggingOption,
    ~applicationName,
    ~conditionalToken=?,
    ~currentApplicationVersionId=?,
    (),
  ) =>
    new({conditionalToken, cloudWatchLoggingOption, currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddApplicationOutput = {
  type t
  type request = {
    @ocaml.doc("<p>An array of objects, each describing one output configuration. In the output
      configuration, you specify the name of an in-application stream, a destination (that is, a
      Kinesis data stream, a Kinesis Data Firehose delivery stream, or an Amazon Lambda function), and
      record the formation to use when writing to the destination.</p>")
    @as("Output")
    output: output,
    @ocaml.doc("<p>The version of the application to which you want to add the output configuration. You can
      use the <a>DescribeApplication</a> operation to get the current application
      version. If the version specified is not the current version, the
        <code>ConcurrentModificationException</code> is returned. </p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc(
      "<p>The name of the application to which you want to add the output configuration.</p>"
    )
    @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>Describes the application output configuration.
      For more information, 
      see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>. 
      
    </p>")
    @as("OutputDescriptions")
    outputDescriptions: option<outputDescriptions>,
    @ocaml.doc("<p>The updated application version ID. Kinesis Data Analytics increments this ID when the application is
      updated.</p>")
    @as("ApplicationVersionId")
    applicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "AddApplicationOutputCommand"
  let make = (~output, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({output, currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartApplication = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Identifies the run configuration (start parameters) of a Kinesis Data Analytics application.</p>"
    )
    @as("RunConfiguration")
    runConfiguration: option<runConfiguration>,
    @ocaml.doc("<p>The name of the application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {.}
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "StartApplicationCommand"
  let make = (~applicationName, ~runConfiguration=?, ()) => new({runConfiguration, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DiscoverInputSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The <a>InputProcessingConfiguration</a> to use to preprocess the records 
      before discovering the schema of the records.</p>")
    @as("InputProcessingConfiguration")
    inputProcessingConfiguration: option<inputProcessingConfiguration>,
    @ocaml.doc("<p>Specify this parameter to discover a schema from data in an Amazon S3
      object.</p>")
    @as("S3Configuration")
    s3Configuration: option<s3Configuration>,
    @ocaml.doc("<p>The point at which you want Kinesis Data Analytics to start reading records from the
      specified streaming source discovery purposes.</p>")
    @as("InputStartingPositionConfiguration")
    inputStartingPositionConfiguration: option<inputStartingPositionConfiguration>,
    @ocaml.doc("<p>The ARN of the role that is used to access the streaming source.</p>")
    @as("ServiceExecutionRole")
    serviceExecutionRole: roleARN,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the streaming source.</p>") @as("ResourceARN")
    resourceARN: option<resourceARN>,
  }
  type response = {
    @ocaml.doc("<p>The raw stream data that was sampled to infer the schema.</p>")
    @as("RawInputRecords")
    rawInputRecords: option<rawInputRecords>,
    @ocaml.doc("<p>The stream data that was modified by the processor specified in the
        <code>InputProcessingConfiguration</code> parameter.</p>")
    @as("ProcessedInputRecords")
    processedInputRecords: option<processedInputRecords>,
    @ocaml.doc("<p>An array of elements, where each element corresponds to a row in a stream record 
      (a stream record can have more than one row).</p>")
    @as("ParsedInputRecords")
    parsedInputRecords: option<parsedInputRecords>,
    @ocaml.doc("<p>The schema inferred from the streaming source. It identifies the format of the data in the
      streaming source and how each data element maps to corresponding columns in the in-application
      stream that you can create.</p>")
    @as("InputSchema")
    inputSchema: option<sourceSchema>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DiscoverInputSchemaCommand"
  let make = (
    ~serviceExecutionRole,
    ~inputProcessingConfiguration=?,
    ~s3Configuration=?,
    ~inputStartingPositionConfiguration=?,
    ~resourceARN=?,
    (),
  ) =>
    new({
      inputProcessingConfiguration,
      s3Configuration,
      inputStartingPositionConfiguration,
      serviceExecutionRole,
      resourceARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddApplicationReferenceDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>The reference data source can be an object in your Amazon S3 bucket. Kinesis Data Analytics reads the object and copies the data 
      into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting 
      in-application table that is 
      created. </p>")
    @as("ReferenceDataSource")
    referenceDataSource: referenceDataSource,
    @ocaml.doc("<p>The version of the application for which you are adding the reference data source. 
        You can
      use the <a>DescribeApplication</a> operation to get the current application
      version. If the version specified is not the current version, the
        <code>ConcurrentModificationException</code> is returned.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>The name of an existing application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>Describes reference data sources configured for the application. 
      
      
      
    </p>")
    @as("ReferenceDataSourceDescriptions")
    referenceDataSourceDescriptions: option<referenceDataSourceDescriptions>,
    @ocaml.doc("<p>The updated application version ID. Kinesis Data Analytics increments this ID when
      the application is updated.</p>")
    @as("ApplicationVersionId")
    applicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "AddApplicationReferenceDataSourceCommand"
  let make = (~referenceDataSource, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({referenceDataSource, currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddApplicationInput = {
  type t
  type request = {
    @ocaml.doc("<p>The <a>Input</a> to add.</p>") @as("Input") input: input,
    @ocaml.doc("<p>The current version of your application. 
        You must provide the <code>ApplicationVersionID</code> or the <code>ConditionalToken</code>.You can use the <a>DescribeApplication</a> operation to find the current application version.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>The name of your existing application to which you want to add the streaming
      source.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>Describes the application input configuration. 
       
      
    </p>")
    @as("InputDescriptions")
    inputDescriptions: option<inputDescriptions>,
    @ocaml.doc("<p>Provides the current application version.</p>") @as("ApplicationVersionId")
    applicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationARN")
    applicationARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "AddApplicationInputCommand"
  let make = (~input, ~currentApplicationVersionId, ~applicationName, ()) =>
    new({input, currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>A value you use to implement strong concurrency for application updates. You must
      provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
      get the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
        <code>ConditionalToken</code> parameter instead of
      <code>CurrentApplicationVersionId</code>.</p>")
    @as("ConditionalToken")
    conditionalToken: option<conditionalToken>,
    @ocaml.doc("<p>Describes application Amazon CloudWatch logging option updates. You can only update
      existing CloudWatch logging options with this action. To add a new CloudWatch logging option,
      use <a>AddApplicationCloudWatchLoggingOption</a>.</p>")
    @as("CloudWatchLoggingOptionUpdates")
    cloudWatchLoggingOptionUpdates: option<cloudWatchLoggingOptionUpdates>,
    @ocaml.doc("<p>Describes updates to the application's starting parameters.</p>")
    @as("RunConfigurationUpdate")
    runConfigurationUpdate: option<runConfigurationUpdate>,
    @ocaml.doc("<p>Describes updates to the service execution role.</p>")
    @as("ServiceExecutionRoleUpdate")
    serviceExecutionRoleUpdate: option<roleARN>,
    @ocaml.doc("<p>Describes application configuration updates.</p>")
    @as("ApplicationConfigurationUpdate")
    applicationConfigurationUpdate: option<applicationConfigurationUpdate>,
    @ocaml.doc("<p>The current application version ID. You must provide the
        <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>.You can
      retrieve the application version ID using <a>DescribeApplication</a>. For better
      concurrency support, use the <code>ConditionalToken</code> parameter instead of
        <code>CurrentApplicationVersionId</code>.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: option<applicationVersionId>,
    @ocaml.doc("<p>The name of the application to update.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>Describes application updates.</p>") @as("ApplicationDetail")
    applicationDetail: applicationDetail,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "UpdateApplicationCommand"
  let make = (
    ~applicationName,
    ~conditionalToken=?,
    ~cloudWatchLoggingOptionUpdates=?,
    ~runConfigurationUpdate=?,
    ~serviceExecutionRoleUpdate=?,
    ~applicationConfigurationUpdate=?,
    ~currentApplicationVersionId=?,
    (),
  ) =>
    new({
      conditionalToken,
      cloudWatchLoggingOptionUpdates,
      runConfigurationUpdate,
      serviceExecutionRoleUpdate,
      applicationConfigurationUpdate,
      currentApplicationVersionId,
      applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RollbackApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The current application version ID. You can retrieve the application version ID using 
            <a>DescribeApplication</a>.</p>")
    @as("CurrentApplicationVersionId")
    currentApplicationVersionId: applicationVersionId,
    @ocaml.doc("<p>The name of the application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {@as("ApplicationDetail") applicationDetail: applicationDetail}
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "RollbackApplicationCommand"
  let make = (~currentApplicationVersionId, ~applicationName, ()) =>
    new({currentApplicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeApplicationVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the application version for which you want to get the description.</p>"
    )
    @as("ApplicationVersionId")
    applicationVersionId: applicationVersionId,
    @ocaml.doc(
      "<p>The name of the application for which you want to get the version description.</p>"
    )
    @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @as("ApplicationVersionDetail") applicationVersionDetail: option<applicationDetail>,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DescribeApplicationVersionCommand"
  let make = (~applicationVersionId, ~applicationName, ()) =>
    new({applicationVersionId, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeApplication = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Displays verbose information about a Kinesis Data Analytics application, including the application's job plan.</p>"
    )
    @as("IncludeAdditionalDetails")
    includeAdditionalDetails: option<booleanObject>,
    @ocaml.doc("<p>The name of the application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>Provides a description of the application, such as the application's Amazon Resource Name
      (ARN), status, and latest version.</p>")
    @as("ApplicationDetail")
    applicationDetail: applicationDetail,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "DescribeApplicationCommand"
  let make = (~applicationName, ~includeAdditionalDetails=?, ()) =>
    new({includeAdditionalDetails, applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>Use the <code>STREAMING</code> mode to create a Kinesis Data Analytics Studio notebook. To create a Kinesis Data Analytics Studio notebook, use the 
    <code>INTERACTIVE</code> mode.</p>")
    @as("ApplicationMode")
    applicationMode: option<applicationMode>,
    @ocaml.doc("<p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an 
        application. Note that the maximum number of application tags includes system tags. The maximum number of 
        user-defined application tags is 50.
        For more information, see 
        <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html\">Using Tagging</a>.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Use this parameter to configure an Amazon CloudWatch log stream to monitor application
      configuration errors.
      </p>")
    @as("CloudWatchLoggingOptions")
    cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
    @ocaml.doc("<p>Use this parameter to configure the application.</p>")
    @as("ApplicationConfiguration")
    applicationConfiguration: option<applicationConfiguration>,
    @ocaml.doc("<p>The IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose
      delivery streams, Amazon S3 objects, and other external resources.</p>")
    @as("ServiceExecutionRole")
    serviceExecutionRole: roleARN,
    @ocaml.doc(
      "<p>The runtime environment for the application (<code>SQL-1_0</code>, <code>FLINK-1_6</code>, <code>FLINK-1_8</code>, or <code>FLINK-1_11</code>).</p>"
    )
    @as("RuntimeEnvironment")
    runtimeEnvironment: runtimeEnvironment,
    @ocaml.doc("<p>A summary description of the application.</p>") @as("ApplicationDescription")
    applicationDescription: option<applicationDescription>,
    @ocaml.doc("<p>The name of your application (for example, <code>sample-app</code>).</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>In response to your <code>CreateApplication</code> request, Kinesis Data Analytics returns a 
      response with details of the application it created.</p>")
    @as("ApplicationDetail")
    applicationDetail: applicationDetail,
  }
  @module("@aws-sdk/client-kinesisanalytics") @new
  external new: request => t = "CreateApplicationCommand"
  let make = (
    ~serviceExecutionRole,
    ~runtimeEnvironment,
    ~applicationName,
    ~applicationMode=?,
    ~tags=?,
    ~cloudWatchLoggingOptions=?,
    ~applicationConfiguration=?,
    ~applicationDescription=?,
    (),
  ) =>
    new({
      applicationMode,
      tags,
      cloudWatchLoggingOptions,
      applicationConfiguration,
      serviceExecutionRole,
      runtimeEnvironment,
      applicationDescription,
      applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
