type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-lookoutmetrics") @new
external createClient: unit => awsServiceClient = "LookoutMetricsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validationExceptionReason = [
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
  | @as("CANNOT_PARSE") #CANNOT_PARSE
  | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION
]
type uuid = string
type timezone = string
type timestampString = string
type timestamp_ = Js.Date.t
type timeSeriesId = string
type templatedPath = string
type tagValue = string
type tagKey = string
type tableName = string
type subnetId = string
type serviceCode = string
type sensitivityThreshold = int
type securityGroupId = string
type score = float
type resourceType = string
type resourceId = string
type redshiftDatabaseName = string
type redshiftClusterIdentifier = string
type rdsdatabaseName = string
type rdsdatabaseIdentifier = string
type quoteSymbol = string
type quotaCode = string
type poirotSecretManagerArn = string
type offset = int
type nextToken = string
type namespace = string
type metricValue = float
type metricSetName = string
type metricSetDescription = string
type metricName = string
type message = string
type maxResults = int
type kmsKeyArn = string
type jsonFileCompression = [@as("GZIP") #GZIP | @as("NONE") #NONE]
type integer_ = int
type historicalDataPath = string
type headerValue = string
type frequency = [@as("PT5M") #PT5M | @as("PT10M") #PT10M | @as("PT1H") #PT1H | @as("P1D") #P1D]
type flowName = string
type fieldName = string
type errorMessage = string
type dimensionValue = string
type delimiter = string
type dateTimeFormat = string
type databasePort = int
type databaseHost = string
type dataItem = string
type columnName = string
type charset = string
type csvfileCompression = [@as("GZIP") #GZIP | @as("NONE") #NONE]
type boolean_ = bool
type arn = string
type anomalyDetectorStatus = [
  | @as("BACK_TEST_COMPLETE") #BACK_TEST_COMPLETE
  | @as("BACK_TEST_ACTIVE") #BACK_TEST_ACTIVE
  | @as("BACK_TEST_ACTIVATING") #BACK_TEST_ACTIVATING
  | @as("INACTIVE") #INACTIVE
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("ACTIVATING") #ACTIVATING
  | @as("ACTIVE") #ACTIVE
]
type anomalyDetectorName = string
type anomalyDetectorDescription = string
type anomalyDetectionTaskStatusMessage = string
type anomalyDetectionTaskStatus = [
  | @as("FAILED_TO_SCHEDULE") #FAILED_TO_SCHEDULE
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
]
type alertType = [@as("LAMBDA") #LAMBDA | @as("SNS") #SNS]
type alertStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type alertName = string
type alertDescription = string
type aggregationFunction = [@as("SUM") #SUM | @as("AVG") #AVG]
@ocaml.doc("<p>Contains information about a a field in a validation exception.</p>")
type validationExceptionField = {
  @ocaml.doc("<p>The message with more information about the validation exception.</p>")
  @as("Message")
  message: message,
  @ocaml.doc("<p>The name of the field.</p>") @as("Name") name: fieldName,
}
type timestampList = array<timestampString>
@ocaml.doc("<p>Contains information about the column used to track time in a source data file.</p>")
type timestampColumn = {
  @ocaml.doc("<p>The format of the timestamp column.</p>") @as("ColumnFormat")
  columnFormat: option<dateTimeFormat>,
  @ocaml.doc("<p>The name of the timestamp column.</p>") @as("ColumnName")
  columnName: option<columnName>,
}
@ocaml.doc("<p>Details about feedback submitted for an anomalous metric.</p>")
type timeSeriesFeedback = {
  @ocaml.doc("<p>Feedback on whether the metric is a legitimate anomaly.</p>") @as("IsAnomaly")
  isAnomaly: option<boolean_>,
  @ocaml.doc("<p>The ID of the metric.</p>") @as("TimeSeriesId") timeSeriesId: option<timeSeriesId>,
}
type templatedPathList = array<templatedPath>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type subnetIdList = array<subnetId>
type securityGroupIdList = array<securityGroupId>
type sampleRow = array<dataItem>
@ocaml.doc("<p>Contains information about the SNS topic to which you want to send your alerts and the IAM role that has
      access to that topic.</p>")
type snsconfiguration = {
  @ocaml.doc("<p>The ARN of the target SNS topic.</p>") @as("SnsTopicArn") snsTopicArn: arn,
  @ocaml.doc("<p>The ARN of the IAM role that has access to the target SNS topic.</p>")
  @as("RoleArn")
  roleArn: arn,
}
type metricValueList = array<metricValue>
@ocaml.doc(
  "<p>A calculation made by contrasting a measure and a dimension from your source data.</p>"
)
type metric = {
  @ocaml.doc("<p>The namespace for the metric.</p>") @as("Namespace") namespace: option<namespace>,
  @ocaml.doc("<p>The function with which the metric is calculated.</p>") @as("AggregationFunction")
  aggregationFunction: aggregationFunction,
  @ocaml.doc("<p>The name of the metric.</p>") @as("MetricName") metricName: columnName,
}
@ocaml.doc("<p>Contains information about a Lambda configuration.</p>")
type lambdaConfiguration = {
  @ocaml.doc("<p>The ARN of the Lambda function.</p>") @as("LambdaArn") lambdaArn: arn,
  @ocaml.doc("<p>The ARN of an IAM role that has permission to invoke the Lambda function.</p>")
  @as("RoleArn")
  roleArn: arn,
}
@ocaml.doc("<p>Contains information about how a source JSON data file should be analyzed.</p>")
type jsonFormatDescriptor = {
  @ocaml.doc("<p>The character set in which the source JSON file is written.</p>") @as("Charset")
  charset: option<charset>,
  @ocaml.doc("<p>The level of compression of the source CSV file.</p>") @as("FileCompression")
  fileCompression: option<jsonFileCompression>,
}
@ocaml.doc("<p>Aggregated statistics about a measure affected by an anomaly.</p>")
type itemizedMetricStats = {
  @ocaml.doc("<p>The number of times that the measure appears.</p>") @as("OccurrenceCount")
  occurrenceCount: option<integer_>,
  @ocaml.doc("<p>The name of the measure.</p>") @as("MetricName") metricName: option<columnName>,
}
type historicalDataPathList = array<historicalDataPath>
type headerValueList = array<headerValue>
type headerList = array<columnName>
@ocaml.doc("<p>The status of an anomaly detector run.</p>")
type executionStatus = {
  @ocaml.doc("<p>The reason that the run failed, if applicable.</p>") @as("FailureReason")
  failureReason: option<anomalyDetectionTaskStatusMessage>,
  @ocaml.doc("<p>The run's status.</p>") @as("Status") status: option<anomalyDetectionTaskStatus>,
  @ocaml.doc("<p>The run's timestamp.</p>") @as("Timestamp") timestamp_: option<timestampString>,
}
@ocaml.doc("<p>The severity of a value of a dimension that contributed to an anomaly.</p>")
type dimensionValueContribution = {
  @ocaml.doc("<p>The severity score of the value.</p>") @as("ContributionScore")
  contributionScore: option<score>,
  @ocaml.doc("<p>The value of the dimension.</p>") @as("DimensionValue")
  dimensionValue: option<dimensionValue>,
}
@ocaml.doc("<p>A dimension name and value.</p>")
type dimensionNameValue = {
  @ocaml.doc("<p>The value of the dimension.</p>") @as("DimensionValue")
  dimensionValue: dimensionValue,
  @ocaml.doc("<p>The name of the dimension.</p>") @as("DimensionName") dimensionName: columnName,
}
type dimensionList = array<columnName>
@ocaml.doc("<p>Details about an Amazon CloudWatch datasource.</p>")
type cloudWatchConfig = {
  @ocaml.doc(
    "<p>An IAM role that gives Amazon Lookout for Metrics permission to access data in Amazon CloudWatch.</p>"
  )
  @as("RoleArn")
  roleArn: arn,
}
@ocaml.doc("<p>Details about an Amazon AppFlow flow datasource.</p>")
type appFlowConfig = {
  @ocaml.doc("<p> name of the flow.</p>") @as("FlowName") flowName: flowName,
  @ocaml.doc(
    "<p>An IAM role that gives Amazon Lookout for Metrics permission to access the flow.</p>"
  )
  @as("RoleArn")
  roleArn: arn,
}
@ocaml.doc("<p>Feedback for an anomalous metric.</p>")
type anomalyGroupTimeSeriesFeedback = {
  @ocaml.doc("<p>Feedback on whether the metric is a legitimate anomaly.</p>") @as("IsAnomaly")
  isAnomaly: boolean_,
  @ocaml.doc("<p>The ID of the metric.</p>") @as("TimeSeriesId") timeSeriesId: timeSeriesId,
  @ocaml.doc("<p>The ID of the anomaly group.</p>") @as("AnomalyGroupId") anomalyGroupId: uuid,
}
@ocaml.doc("<p>An anomalous metric in an anomaly group.</p>")
type anomalyGroupTimeSeries = {
  @ocaml.doc("<p>The ID of the metric.</p>") @as("TimeSeriesId") timeSeriesId: option<timeSeriesId>,
  @ocaml.doc("<p>The ID of the anomaly group.</p>") @as("AnomalyGroupId") anomalyGroupId: uuid,
}
@ocaml.doc("<p>Details about a group of anomalous metrics.</p>")
type anomalyGroupSummary = {
  @ocaml.doc("<p>The name of the primary affected measure for the group.</p>")
  @as("PrimaryMetricName")
  primaryMetricName: option<metricName>,
  @ocaml.doc("<p>The severity score of the group.</p>") @as("AnomalyGroupScore")
  anomalyGroupScore: option<score>,
  @ocaml.doc("<p>The ID of the anomaly group.</p>") @as("AnomalyGroupId")
  anomalyGroupId: option<uuid>,
  @ocaml.doc("<p>The end time for the group.</p>") @as("EndTime") endTime: option<timestampString>,
  @ocaml.doc("<p>The start time for the group.</p>") @as("StartTime")
  startTime: option<timestampString>,
}
@ocaml.doc("<p>Contains information about a detector's configuration.</p>")
type anomalyDetectorConfigSummary = {
  @ocaml.doc("<p>The interval at which the detector analyzes its source data.</p>")
  @as("AnomalyDetectorFrequency")
  anomalyDetectorFrequency: option<frequency>,
}
@ocaml.doc("<p>Contains information about a detector's configuration.</p>")
type anomalyDetectorConfig = {
  @ocaml.doc("<p>The frequency at which the detector analyzes its source data.</p>")
  @as("AnomalyDetectorFrequency")
  anomalyDetectorFrequency: option<frequency>,
}
@ocaml.doc(
  "<p>Contains configuration information about the Amazon Virtual Private Cloud (VPC).</p>"
)
type vpcConfiguration = {
  @ocaml.doc("<p>An array of strings containing the list of security groups.</p>")
  @as("SecurityGroupIdList")
  securityGroupIdList: securityGroupIdList,
  @ocaml.doc(
    "<p>An array of strings containing the Amazon VPC subnet IDs (e.g., <code>subnet-0bb1c79de3EXAMPLE</code>.</p>"
  )
  @as("SubnetIdList")
  subnetIdList: subnetIdList,
}
type validationExceptionFieldList = array<validationExceptionField>
type timeSeriesFeedbackList = array<timeSeriesFeedback>
type sampleRows = array<sampleRow>
@ocaml.doc("<p>Contains information about a dataset.</p>")
type metricSetSummary = {
  @ocaml.doc(
    "<p>The dataset's <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a>.</p>"
  )
  @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The time at which the dataset was last modified.</p>") @as("LastModificationTime")
  lastModificationTime: option<timestamp_>,
  @ocaml.doc("<p>The time at which the dataset was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the dataset.</p>") @as("MetricSetName")
  metricSetName: option<metricSetName>,
  @ocaml.doc("<p>The description of the dataset.</p>") @as("MetricSetDescription")
  metricSetDescription: option<metricSetDescription>,
  @ocaml.doc("<p>The ARN of the detector to which the dataset belongs.</p>")
  @as("AnomalyDetectorArn")
  anomalyDetectorArn: option<arn>,
  @ocaml.doc("<p>The ARN of the dataset.</p>") @as("MetricSetArn") metricSetArn: option<arn>,
}
type metricList = array<metric>
type itemizedMetricStatsList = array<itemizedMetricStats>
type executionList = array<executionStatus>
type dimensionValueContributionList = array<dimensionValueContribution>
type dimensionNameValueList = array<dimensionNameValue>
@ocaml.doc("<p>Contains information about how a source CSV data file should be analyzed.</p>")
type csvFormatDescriptor = {
  @ocaml.doc("<p>The character used as a quote character.</p>") @as("QuoteSymbol")
  quoteSymbol: option<quoteSymbol>,
  @ocaml.doc("<p>A list of the source CSV file's headers, if any.</p>") @as("HeaderList")
  headerList: option<headerList>,
  @ocaml.doc("<p>The character used to delimit the source CSV file.</p>") @as("Delimiter")
  delimiter: option<delimiter>,
  @ocaml.doc("<p>Whether or not the source CSV file contains a header.</p>") @as("ContainsHeader")
  containsHeader: option<boolean_>,
  @ocaml.doc("<p>The character set in which the source CSV file is written.</p>") @as("Charset")
  charset: option<charset>,
  @ocaml.doc("<p>The level of compression of the source CSV file.</p>") @as("FileCompression")
  fileCompression: option<csvfileCompression>,
}
type anomalyGroupSummaryList = array<anomalyGroupSummary>
@ocaml.doc("<p>Contains information about an an anomaly detector.</p>")
type anomalyDetectorSummary = {
  @ocaml.doc(
    "<p>The detector's <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a>.</p>"
  )
  @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The status of detector.</p>") @as("Status") status: option<anomalyDetectorStatus>,
  @ocaml.doc("<p>The time at which the detector was last modified.</p>") @as("LastModificationTime")
  lastModificationTime: option<timestamp_>,
  @ocaml.doc("<p>The time at which the detector was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>A description of the detector.</p>") @as("AnomalyDetectorDescription")
  anomalyDetectorDescription: option<anomalyDetectorDescription>,
  @ocaml.doc("<p>The name of the detector.</p>") @as("AnomalyDetectorName")
  anomalyDetectorName: option<anomalyDetectorName>,
  @ocaml.doc("<p>The ARN of the detector.</p>") @as("AnomalyDetectorArn")
  anomalyDetectorArn: option<arn>,
}
@ocaml.doc("<p>Provides a summary of an alert's configuration.</p>")
type alertSummary = {
  @ocaml.doc(
    "<p>The alert's <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a>.</p>"
  )
  @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The time at which the alert was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The time at which the alert was last modified.</p>") @as("LastModificationTime")
  lastModificationTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the alert.</p>") @as("AlertStatus") alertStatus: option<alertStatus>,
  @ocaml.doc("<p>The type of the alert.</p>") @as("AlertType") alertType: option<alertType>,
  @ocaml.doc("<p>The minimum severity for an anomaly to trigger the alert.</p>")
  @as("AlertSensitivityThreshold")
  alertSensitivityThreshold: option<sensitivityThreshold>,
  @ocaml.doc("<p>The name of the alert.</p>") @as("AlertName") alertName: option<alertName>,
  @ocaml.doc("<p>The ARN of the detector to which the alert is attached.</p>")
  @as("AnomalyDetectorArn")
  anomalyDetectorArn: option<arn>,
  @ocaml.doc("<p>The ARN of the alert.</p>") @as("AlertArn") alertArn: option<arn>,
}
@ocaml.doc(
  "<p>A configuration that specifies the action to perform when anomalies are detected.</p>"
)
type action = {
  @ocaml.doc("<p>A configuration for an AWS Lambda channel.</p>") @as("LambdaConfiguration")
  lambdaConfiguration: option<lambdaConfiguration>,
  @ocaml.doc("<p>A configuration for an Amazon SNS channel.</p>") @as("SNSConfiguration")
  snsconfiguration: option<snsconfiguration>,
}
@ocaml.doc("<p>Details about a metric. A metric is an aggregation of the values of a measure for a dimension value, such as
        <i>availability</i> in the <i>us-east-1</i> Region.</p>")
type timeSeries = {
  @ocaml.doc("<p>The values for the metric.</p>") @as("MetricValueList")
  metricValueList: metricValueList,
  @ocaml.doc("<p>The dimensions of the metric.</p>") @as("DimensionList")
  dimensionList: dimensionNameValueList,
  @ocaml.doc("<p>The ID of the metric.</p>") @as("TimeSeriesId") timeSeriesId: timeSeriesId,
}
@ocaml.doc("<p>Provides information about the Amazon Redshift database configuration.</p>")
type redshiftSourceConfig = {
  @ocaml.doc(
    "<p>Contains information about the Amazon Virtual Private Cloud (VPC) configuration.</p>"
  )
  @as("VpcConfiguration")
  vpcConfiguration: vpcConfiguration,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role providing access to the database.</p>")
  @as("RoleArn")
  roleArn: arn,
  @ocaml.doc("<p>The table name of the Redshift database.</p>") @as("TableName")
  tableName: tableName,
  @ocaml.doc("<p>The Redshift database name.</p>") @as("DatabaseName")
  databaseName: redshiftDatabaseName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Secrets Manager role.</p>")
  @as("SecretManagerArn")
  secretManagerArn: poirotSecretManagerArn,
  @ocaml.doc("<p>The port number where the database can be accessed.</p>") @as("DatabasePort")
  databasePort: databasePort,
  @ocaml.doc("<p>The name of the database host.</p>") @as("DatabaseHost")
  databaseHost: databaseHost,
  @ocaml.doc("<p>A string identifying the Redshift cluster.</p>") @as("ClusterIdentifier")
  clusterIdentifier: redshiftClusterIdentifier,
}
@ocaml.doc(
  "<p>Contains information about the Amazon Relational Database Service (RDS) configuration.</p>"
)
type rdssourceConfig = {
  @ocaml.doc(
    "<p>An object containing information about the Amazon Virtual Private Cloud (VPC) configuration.</p>"
  )
  @as("VpcConfiguration")
  vpcConfiguration: vpcConfiguration,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role.</p>") @as("RoleArn") roleArn: arn,
  @ocaml.doc("<p>The name of the table in the database.</p>") @as("TableName") tableName: tableName,
  @ocaml.doc("<p>The name of the RDS database.</p>") @as("DatabaseName")
  databaseName: rdsdatabaseName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Secrets Manager role.</p>")
  @as("SecretManagerArn")
  secretManagerArn: poirotSecretManagerArn,
  @ocaml.doc("<p>The port number where the database can be accessed.</p>") @as("DatabasePort")
  databasePort: databasePort,
  @ocaml.doc("<p>The host name of the database.</p>") @as("DatabaseHost")
  databaseHost: databaseHost,
  @ocaml.doc("<p>A string identifying the database instance.</p>") @as("DBInstanceIdentifier")
  dbinstanceIdentifier: rdsdatabaseIdentifier,
}
type metricSetSummaryList = array<metricSetSummary>
@ocaml.doc("<p>Contains information about a source file's formatting.</p>")
type fileFormatDescriptor = {
  @ocaml.doc("<p>Contains information about how a source JSON data file should be analyzed.</p>")
  @as("JsonFormatDescriptor")
  jsonFormatDescriptor: option<jsonFormatDescriptor>,
  @ocaml.doc("<p>Contains information about how a source CSV data file should be analyzed.</p>")
  @as("CsvFormatDescriptor")
  csvFormatDescriptor: option<csvFormatDescriptor>,
}
@ocaml.doc("<p>Details about a dimension that contributed to an anomaly.</p>")
type dimensionContribution = {
  @ocaml.doc("<p>A list of dimension values that contributed to the anomaly.</p>")
  @as("DimensionValueContributionList")
  dimensionValueContributionList: option<dimensionValueContributionList>,
  @ocaml.doc("<p>The name of the dimension.</p>") @as("DimensionName")
  dimensionName: option<columnName>,
}
@ocaml.doc("<p>Aggregated statistics for a group of anomalous metrics.</p>")
type anomalyGroupStatistics = {
  @ocaml.doc("<p>Statistics for individual metrics within the group.</p>")
  @as("ItemizedMetricStatsList")
  itemizedMetricStatsList: option<itemizedMetricStatsList>,
  @ocaml.doc("<p>The number of groups found.</p>") @as("TotalCount") totalCount: option<integer_>,
  @ocaml.doc("<p>The start of the time range that was searched.</p>") @as("EvaluationStartDate")
  evaluationStartDate: option<timestampString>,
}
type anomalyDetectorSummaryList = array<anomalyDetectorSummary>
type alertSummaryList = array<alertSummary>
@ocaml.doc("<p>A configuration for Amazon SNS-integrated notifications.</p>")
type alert = {
  @ocaml.doc("<p>The time at which the alert was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The time at which the alert was last modified.</p>") @as("LastModificationTime")
  lastModificationTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the alert.</p>") @as("AlertStatus") alertStatus: option<alertStatus>,
  @ocaml.doc("<p>The type of the alert.</p>") @as("AlertType") alertType: option<alertType>,
  @ocaml.doc("<p>The minimum severity for an anomaly to trigger the alert.</p>")
  @as("AlertSensitivityThreshold")
  alertSensitivityThreshold: option<sensitivityThreshold>,
  @ocaml.doc("<p>The name of the alert.</p>") @as("AlertName") alertName: option<alertName>,
  @ocaml.doc("<p>The ARN of the detector to which the alert is attached.</p>")
  @as("AnomalyDetectorArn")
  anomalyDetectorArn: option<arn>,
  @ocaml.doc("<p>The ARN of the alert.</p>") @as("AlertArn") alertArn: option<arn>,
  @ocaml.doc("<p>A description of the alert.</p>") @as("AlertDescription")
  alertDescription: option<alertDescription>,
  @ocaml.doc("<p>Action that will be triggered when there is an alert.</p>") @as("Action")
  action: option<action>,
}
type timeSeriesList = array<timeSeries>
@ocaml.doc("<p>Contains information about the source configuration in Amazon S3.</p>")
type sampleDataS3SourceConfig = {
  @as("FileFormatDescriptor") fileFormatDescriptor: fileFormatDescriptor,
  @ocaml.doc("<p>An array of strings containing the historical set of data paths.</p>")
  @as("HistoricalDataPathList")
  historicalDataPathList: option<historicalDataPathList>,
  @ocaml.doc("<p>An array of strings containing the list of templated paths.</p>")
  @as("TemplatedPathList")
  templatedPathList: option<templatedPathList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role.</p>") @as("RoleArn") roleArn: arn,
}
@ocaml.doc(
  "<p>Contains information about the configuration of the S3 bucket that contains source files.</p>"
)
type s3SourceConfig = {
  @ocaml.doc("<p>Contains information about a source file's formatting.</p>")
  @as("FileFormatDescriptor")
  fileFormatDescriptor: option<fileFormatDescriptor>,
  @ocaml.doc("<p>A list of paths to the historical data files.</p>") @as("HistoricalDataPathList")
  historicalDataPathList: option<historicalDataPathList>,
  @ocaml.doc("<p>A list of templated paths to the source files.</p>") @as("TemplatedPathList")
  templatedPathList: option<templatedPathList>,
  @ocaml.doc(
    "<p>The ARN of an IAM role that has read and write access permissions to the source S3 bucket.</p>"
  )
  @as("RoleArn")
  roleArn: arn,
}
type dimensionContributionList = array<dimensionContribution>
@ocaml.doc("<p>Contains information about source data used to generate a metric.</p>")
type metricSource = {
  @ocaml.doc(
    "<p>An object containing information about the Amazon Redshift database configuration.</p>"
  )
  @as("RedshiftSourceConfig")
  redshiftSourceConfig: option<redshiftSourceConfig>,
  @ocaml.doc(
    "<p>An object containing information about the Amazon Relational Database Service (RDS) configuration.</p>"
  )
  @as("RDSSourceConfig")
  rdssourceConfig: option<rdssourceConfig>,
  @ocaml.doc(
    "<p>An object containing information about the Amazon CloudWatch monitoring configuration.</p>"
  )
  @as("CloudWatchConfig")
  cloudWatchConfig: option<cloudWatchConfig>,
  @ocaml.doc("<p>An object containing information about the AppFlow configuration.</p>")
  @as("AppFlowConfig")
  appFlowConfig: option<appFlowConfig>,
  @as("S3SourceConfig") s3SourceConfig: option<s3SourceConfig>,
}
@ocaml.doc("<p>Details about dimensions that contributed to an anomaly.</p>")
type contributionMatrix = {
  @ocaml.doc("<p>A list of contributing dimensions.</p>") @as("DimensionContributionList")
  dimensionContributionList: option<dimensionContributionList>,
}
@ocaml.doc("<p>Details about a measure affected by an anomaly.</p>")
type metricLevelImpact = {
  @ocaml.doc("<p>Details about the dimensions that contributed to the anomaly.</p>")
  @as("ContributionMatrix")
  contributionMatrix: option<contributionMatrix>,
  @ocaml.doc("<p>The number of anomalous metrics for the measure.</p>") @as("NumTimeSeries")
  numTimeSeries: option<integer_>,
  @ocaml.doc("<p>The name of the measure.</p>") @as("MetricName") metricName: option<metricName>,
}
type metricLevelImpactList = array<metricLevelImpact>
@ocaml.doc("<p>A group of anomalous metrics</p>")
type anomalyGroup = {
  @ocaml.doc("<p>A list of measures affected by the anomaly.</p>") @as("MetricLevelImpactList")
  metricLevelImpactList: option<metricLevelImpactList>,
  @ocaml.doc("<p>The name of the primary affected measure for the group.</p>")
  @as("PrimaryMetricName")
  primaryMetricName: option<metricName>,
  @ocaml.doc("<p>The severity score of the group.</p>") @as("AnomalyGroupScore")
  anomalyGroupScore: option<score>,
  @ocaml.doc("<p>The ID of the anomaly group.</p>") @as("AnomalyGroupId")
  anomalyGroupId: option<uuid>,
  @ocaml.doc("<p>The end time for the group.</p>") @as("EndTime") endTime: option<timestampString>,
  @ocaml.doc("<p>The start time for the group.</p>") @as("StartTime")
  startTime: option<timestampString>,
}
@ocaml.doc("<p>This is the <i>Amazon Lookout for Metrics API Reference</i>. For an introduction to the service
      with tutorials for getting started, visit <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev\">Amazon
        Lookout for Metrics Developer Guide</a>.</p>")
module UpdateAnomalyDetector = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Contains information about the configuration to which the detector will be updated.</p>"
    )
    @as("AnomalyDetectorConfig")
    anomalyDetectorConfig: option<anomalyDetectorConfig>,
    @ocaml.doc("<p>The updated detector description.</p>") @as("AnomalyDetectorDescription")
    anomalyDetectorDescription: option<anomalyDetectorDescription>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS KMS encryption key.</p>")
    @as("KmsKeyArn")
    kmsKeyArn: option<kmsKeyArn>,
    @ocaml.doc("<p>The ARN of the detector to update.</p>") @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the updated detector.</p>") @as("AnomalyDetectorArn")
    anomalyDetectorArn: option<arn>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "UpdateAnomalyDetectorCommand"
  let make = (
    ~anomalyDetectorArn,
    ~anomalyDetectorConfig=?,
    ~anomalyDetectorDescription=?,
    ~kmsKeyArn=?,
    (),
  ) =>
    new({
      anomalyDetectorConfig: anomalyDetectorConfig,
      anomalyDetectorDescription: anomalyDetectorDescription,
      kmsKeyArn: kmsKeyArn,
      anomalyDetectorArn: anomalyDetectorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Keys to remove from the resource's tags.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The resource's Amazon Resource Name (ARN).</p>") @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-lookoutmetrics") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to apply to the resource. Tag keys and values can contain letters, numbers, spaces, and the following
      symbols: <code>_.:/=+@-</code>
         </p>")
    @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>The resource's Amazon Resource Name (ARN).</p>") @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-lookoutmetrics") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutFeedback = {
  type t
  type request = {
    @ocaml.doc("<p>Feedback for an anomalous metric.</p>") @as("AnomalyGroupTimeSeriesFeedback")
    anomalyGroupTimeSeriesFeedback: anomalyGroupTimeSeriesFeedback,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>")
    @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
  }

  @module("@aws-sdk/client-lookoutmetrics") @new external new: request => t = "PutFeedbackCommand"
  let make = (~anomalyGroupTimeSeriesFeedback, ~anomalyDetectorArn, ()) =>
    new({
      anomalyGroupTimeSeriesFeedback: anomalyGroupTimeSeriesFeedback,
      anomalyDetectorArn: anomalyDetectorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource's Amazon Resource Name (ARN).</p>") @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>The resource's tags.</p>") @as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFeedback = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The anomalous metric and group ID.</p>") @as("AnomalyGroupTimeSeriesFeedback")
    anomalyGroupTimeSeriesFeedback: anomalyGroupTimeSeries,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>")
    @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Feedback for an anomalous metric.</p>") @as("AnomalyGroupTimeSeriesFeedback")
    anomalyGroupTimeSeriesFeedback: option<timeSeriesFeedbackList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new external new: request => t = "GetFeedbackCommand"
  let make = (
    ~anomalyGroupTimeSeriesFeedback,
    ~anomalyDetectorArn,
    ~nextToken=?,
    ~maxResults=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      anomalyGroupTimeSeriesFeedback: anomalyGroupTimeSeriesFeedback,
      anomalyDetectorArn: anomalyDetectorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAnomalyDetector = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the detector to describe.</p>") @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the KMS key to use to encrypt your data.</p>") @as("KmsKeyArn")
    kmsKeyArn: option<kmsKeyArn>,
    @ocaml.doc("<p>The reason that the detector failed, if any.</p>") @as("FailureReason")
    failureReason: option<errorMessage>,
    @ocaml.doc("<p>The status of the detector.</p>") @as("Status")
    status: option<anomalyDetectorStatus>,
    @ocaml.doc("<p>The time at which the detector was last modified.</p>")
    @as("LastModificationTime")
    lastModificationTime: option<timestamp_>,
    @ocaml.doc("<p>The time at which the detector was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>Contains information about the detector's configuration.</p>")
    @as("AnomalyDetectorConfig")
    anomalyDetectorConfig: option<anomalyDetectorConfigSummary>,
    @ocaml.doc("<p>A description of the detector.</p>") @as("AnomalyDetectorDescription")
    anomalyDetectorDescription: option<anomalyDetectorDescription>,
    @ocaml.doc("<p>The name of the detector.</p>") @as("AnomalyDetectorName")
    anomalyDetectorName: option<anomalyDetectorName>,
    @ocaml.doc("<p>The ARN of the detector.</p>") @as("AnomalyDetectorArn")
    anomalyDetectorArn: option<arn>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "DescribeAnomalyDetectorCommand"
  let make = (~anomalyDetectorArn, ()) => new({anomalyDetectorArn: anomalyDetectorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAnomalyDetectionExecutions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The number of items to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The timestamp of the anomaly detection job.</p>") @as("Timestamp")
    timestamp_: option<timestampString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>")
    @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of detection jobs.</p>") @as("ExecutionList")
    executionList: option<executionList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "DescribeAnomalyDetectionExecutionsCommand"
  let make = (~anomalyDetectorArn, ~nextToken=?, ~maxResults=?, ~timestamp_=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      timestamp_: timestamp_,
      anomalyDetectorArn: anomalyDetectorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAnomalyDetector = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the detector to delete.</p>") @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
  }

  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "DeleteAnomalyDetectorCommand"
  let make = (~anomalyDetectorArn, ()) => new({anomalyDetectorArn: anomalyDetectorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAlert = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the alert to delete.</p>") @as("AlertArn") alertArn: arn,
  }

  @module("@aws-sdk/client-lookoutmetrics") @new external new: request => t = "DeleteAlertCommand"
  let make = (~alertArn, ()) => new({alertArn: alertArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateAnomalyDetector = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a> to apply to the anomaly detector.</p>"
    )
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The ARN of the KMS key to use to encrypt your data.</p>") @as("KmsKeyArn")
    kmsKeyArn: option<kmsKeyArn>,
    @ocaml.doc("<p>Contains information about the configuration of the anomaly detector.</p>")
    @as("AnomalyDetectorConfig")
    anomalyDetectorConfig: anomalyDetectorConfig,
    @ocaml.doc("<p>A description of the detector.</p>") @as("AnomalyDetectorDescription")
    anomalyDetectorDescription: option<anomalyDetectorDescription>,
    @ocaml.doc("<p>The name of the detector.</p>") @as("AnomalyDetectorName")
    anomalyDetectorName: anomalyDetectorName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the detector.</p>") @as("AnomalyDetectorArn")
    anomalyDetectorArn: option<arn>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "CreateAnomalyDetectorCommand"
  let make = (
    ~anomalyDetectorConfig,
    ~anomalyDetectorName,
    ~tags=?,
    ~kmsKeyArn=?,
    ~anomalyDetectorDescription=?,
    (),
  ) =>
    new({
      tags: tags,
      kmsKeyArn: kmsKeyArn,
      anomalyDetectorConfig: anomalyDetectorConfig,
      anomalyDetectorDescription: anomalyDetectorDescription,
      anomalyDetectorName: anomalyDetectorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAlert = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a> to apply to the alert.</p>"
    )
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>Action that will be triggered when there is an alert.</p>") @as("Action")
    action: action,
    @ocaml.doc("<p>The ARN of the detector to which the alert is attached.</p>")
    @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
    @ocaml.doc("<p>A description of the alert.</p>") @as("AlertDescription")
    alertDescription: option<alertDescription>,
    @ocaml.doc("<p>An integer from 0 to 100 specifying the alert sensitivity threshold.</p>")
    @as("AlertSensitivityThreshold")
    alertSensitivityThreshold: sensitivityThreshold,
    @ocaml.doc("<p>The name of the alert.</p>") @as("AlertName") alertName: alertName,
  }
  type response = {@ocaml.doc("<p>The ARN of the alert.</p>") @as("AlertArn") alertArn: option<arn>}
  @module("@aws-sdk/client-lookoutmetrics") @new external new: request => t = "CreateAlertCommand"
  let make = (
    ~action,
    ~anomalyDetectorArn,
    ~alertSensitivityThreshold,
    ~alertName,
    ~tags=?,
    ~alertDescription=?,
    (),
  ) =>
    new({
      tags: tags,
      action: action,
      anomalyDetectorArn: anomalyDetectorArn,
      alertDescription: alertDescription,
      alertSensitivityThreshold: alertSensitivityThreshold,
      alertName: alertName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BackTestAnomalyDetector = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>")
    @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
  }

  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "BackTestAnomalyDetectorCommand"
  let make = (~anomalyDetectorArn, ()) => new({anomalyDetectorArn: anomalyDetectorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ActivateAnomalyDetector = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the anomaly detector.</p>") @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
  }

  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "ActivateAnomalyDetectorCommand"
  let make = (~anomalyDetectorArn, ()) => new({anomalyDetectorArn: anomalyDetectorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListMetricSets = {
  type t
  type request = {
    @ocaml.doc("<p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To
      retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the anomaly detector containing the metrics sets to list.</p>")
    @as("AnomalyDetectorArn")
    anomalyDetectorArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, the list call returns this token. To retrieve the next set of results, use the
      token in the next list request. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of the datasets in the AWS Region, with configuration details for each.</p>"
    )
    @as("MetricSetSummaryList")
    metricSetSummaryList: option<metricSetSummaryList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "ListMetricSetsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~anomalyDetectorArn=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, anomalyDetectorArn: anomalyDetectorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnomalyGroupSummaries = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The minimum severity score for inclusion in the output.</p>")
    @as("SensitivityThreshold")
    sensitivityThreshold: sensitivityThreshold,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>")
    @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Aggregated details about the anomaly groups.</p>") @as("AnomalyGroupStatistics")
    anomalyGroupStatistics: option<anomalyGroupStatistics>,
    @ocaml.doc("<p>A list of anomaly group summaries.</p>") @as("AnomalyGroupSummaryList")
    anomalyGroupSummaryList: option<anomalyGroupSummaryList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "ListAnomalyGroupSummariesCommand"
  let make = (~sensitivityThreshold, ~anomalyDetectorArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      sensitivityThreshold: sensitivityThreshold,
      anomalyDetectorArn: anomalyDetectorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnomalyDetectors = {
  type t
  type request = {
    @ocaml.doc("<p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To
      retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, the service returns this token. To retrieve the next set of results, use the
      token in the next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of anomaly detectors in the account in the current region.</p>")
    @as("AnomalyDetectorSummaryList")
    anomalyDetectorSummaryList: option<anomalyDetectorSummaryList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "ListAnomalyDetectorsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAlerts = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results that will be displayed by the request.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the result of the previous request is truncated, the response includes a <code>NextToken</code>. To
      retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the alert's detector.</p>") @as("AnomalyDetectorArn")
    anomalyDetectorArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, the service returns this token. To retrieve the next set of results, use this
      token in the next request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Contains information about an alert.</p>") @as("AlertSummaryList")
    alertSummaryList: option<alertSummaryList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new external new: request => t = "ListAlertsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~anomalyDetectorArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, anomalyDetectorArn: anomalyDetectorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlert = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the alert to describe.</p>") @as("AlertArn") alertArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Contains information about an alert.</p>") @as("Alert") alert: option<alert>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new external new: request => t = "DescribeAlertCommand"
  let make = (~alertArn, ()) => new({alertArn: alertArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnomalyGroupTimeSeries = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name of the measure field.</p>") @as("MetricName") metricName: metricName,
    @ocaml.doc("<p>The ID of the anomaly group.</p>") @as("AnomalyGroupId") anomalyGroupId: uuid,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>")
    @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A list of anomalous metrics.</p>") @as("TimeSeriesList")
    timeSeriesList: option<timeSeriesList>,
    @ocaml.doc("<p>The pagination token that's included if more results are available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Timestamps for the anomalous metrics.</p>") @as("TimestampList")
    timestampList: option<timestampList>,
    @ocaml.doc("<p>The name of the measure field.</p>") @as("MetricName")
    metricName: option<metricName>,
    @ocaml.doc("<p>The ID of the anomaly group.</p>") @as("AnomalyGroupId")
    anomalyGroupId: option<uuid>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "ListAnomalyGroupTimeSeriesCommand"
  let make = (~metricName, ~anomalyGroupId, ~anomalyDetectorArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      metricName: metricName,
      anomalyGroupId: anomalyGroupId,
      anomalyDetectorArn: anomalyDetectorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSampleData = {
  type t
  type request = {
    @ocaml.doc("<p>A datasource bucket in Amazon S3.</p>") @as("S3SourceConfig")
    s3SourceConfig: option<sampleDataS3SourceConfig>,
  }
  type response = {
    @ocaml.doc("<p>A list of records.</p>") @as("SampleRows") sampleRows: option<sampleRows>,
    @ocaml.doc("<p>A list of header labels for the records.</p>") @as("HeaderValues")
    headerValues: option<headerValueList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new external new: request => t = "GetSampleDataCommand"
  let make = (~s3SourceConfig=?, ()) => new({s3SourceConfig: s3SourceConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMetricSet = {
  type t
  type request = {
    @as("MetricSource") metricSource: option<metricSource>,
    @ocaml.doc("<p>The dataset's interval.</p>") @as("MetricSetFrequency")
    metricSetFrequency: option<frequency>,
    @ocaml.doc("<p>The dimension list.</p>") @as("DimensionList")
    dimensionList: option<dimensionList>,
    @ocaml.doc("<p>The timestamp column.</p>") @as("TimestampColumn")
    timestampColumn: option<timestampColumn>,
    @ocaml.doc(
      "<p>After an interval ends, the amount of time that the detector waits before importing data.</p>"
    )
    @as("Offset")
    offset: option<offset>,
    @ocaml.doc("<p>The metric list.</p>") @as("MetricList") metricList: option<metricList>,
    @ocaml.doc("<p>The dataset's description.</p>") @as("MetricSetDescription")
    metricSetDescription: option<metricSetDescription>,
    @ocaml.doc("<p>The ARN of the dataset to update.</p>") @as("MetricSetArn") metricSetArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the dataset.</p>") @as("MetricSetArn") metricSetArn: option<arn>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "UpdateMetricSetCommand"
  let make = (
    ~metricSetArn,
    ~metricSource=?,
    ~metricSetFrequency=?,
    ~dimensionList=?,
    ~timestampColumn=?,
    ~offset=?,
    ~metricList=?,
    ~metricSetDescription=?,
    (),
  ) =>
    new({
      metricSource: metricSource,
      metricSetFrequency: metricSetFrequency,
      dimensionList: dimensionList,
      timestampColumn: timestampColumn,
      offset: offset,
      metricList: metricList,
      metricSetDescription: metricSetDescription,
      metricSetArn: metricSetArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMetricSet = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the dataset.</p>") @as("MetricSetArn") metricSetArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Contains information about the dataset's source data.</p>") @as("MetricSource")
    metricSource: option<metricSource>,
    @ocaml.doc("<p>The time zone in which the dataset's data was recorded.</p>") @as("Timezone")
    timezone: option<timezone>,
    @ocaml.doc("<p>The interval at which the data will be analyzed for anomalies.</p>")
    @as("MetricSetFrequency")
    metricSetFrequency: option<frequency>,
    @ocaml.doc("<p>A list of the dimensions chosen for analysis.</p>") @as("DimensionList")
    dimensionList: option<dimensionList>,
    @ocaml.doc(
      "<p>Contains information about the column used for tracking time in your source data.</p>"
    )
    @as("TimestampColumn")
    timestampColumn: option<timestampColumn>,
    @ocaml.doc("<p>A list of the metrics defined by the dataset.</p>") @as("MetricList")
    metricList: option<metricList>,
    @ocaml.doc("<p>The offset for the dataset.</p>") @as("Offset") offset: option<offset>,
    @ocaml.doc("<p>The time at which the dataset was last modified.</p>")
    @as("LastModificationTime")
    lastModificationTime: option<timestamp_>,
    @ocaml.doc("<p>The time at which the dataset was created.</p>") @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The dataset's description.</p>") @as("MetricSetDescription")
    metricSetDescription: option<metricSetDescription>,
    @ocaml.doc("<p>The name of the dataset.</p>") @as("MetricSetName")
    metricSetName: option<metricSetName>,
    @ocaml.doc("<p>The ARN of the detector that contains the dataset.</p>")
    @as("AnomalyDetectorArn")
    anomalyDetectorArn: option<arn>,
    @ocaml.doc("<p>The ARN of the dataset.</p>") @as("MetricSetArn") metricSetArn: option<arn>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "DescribeMetricSetCommand"
  let make = (~metricSetArn, ()) => new({metricSetArn: metricSetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMetricSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of <a href=\"https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html\">tags</a> to apply to the dataset.</p>"
    )
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The time zone in which your source data was recorded.</p>") @as("Timezone")
    timezone: option<timezone>,
    @ocaml.doc("<p>Contains information about how the source data should be interpreted.</p>")
    @as("MetricSource")
    metricSource: metricSource,
    @ocaml.doc("<p>The frequency with which the source data will be analyzed for anomalies.</p>")
    @as("MetricSetFrequency")
    metricSetFrequency: option<frequency>,
    @ocaml.doc("<p>A list of the fields you want to treat as dimensions.</p>") @as("DimensionList")
    dimensionList: option<dimensionList>,
    @ocaml.doc(
      "<p>Contains information about the column used for tracking time in your source data.</p>"
    )
    @as("TimestampColumn")
    timestampColumn: option<timestampColumn>,
    @ocaml.doc(
      "<p>After an interval ends, the amount of time that the detector waits before importing data.</p>"
    )
    @as("Offset")
    offset: option<offset>,
    @ocaml.doc("<p>A list of metrics that the dataset will contain.</p>") @as("MetricList")
    metricList: metricList,
    @ocaml.doc("<p>A description of the dataset you are creating.</p>") @as("MetricSetDescription")
    metricSetDescription: option<metricSetDescription>,
    @ocaml.doc("<p>The name of the dataset.</p>") @as("MetricSetName") metricSetName: metricSetName,
    @ocaml.doc("<p>The ARN of the anomaly detector that will use the dataset.</p>")
    @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the dataset.</p>") @as("MetricSetArn") metricSetArn: option<arn>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "CreateMetricSetCommand"
  let make = (
    ~metricSource,
    ~metricList,
    ~metricSetName,
    ~anomalyDetectorArn,
    ~tags=?,
    ~timezone=?,
    ~metricSetFrequency=?,
    ~dimensionList=?,
    ~timestampColumn=?,
    ~offset=?,
    ~metricSetDescription=?,
    (),
  ) =>
    new({
      tags: tags,
      timezone: timezone,
      metricSource: metricSource,
      metricSetFrequency: metricSetFrequency,
      dimensionList: dimensionList,
      timestampColumn: timestampColumn,
      offset: offset,
      metricList: metricList,
      metricSetDescription: metricSetDescription,
      metricSetName: metricSetName,
      anomalyDetectorArn: anomalyDetectorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAnomalyGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the anomaly detector.</p>")
    @as("AnomalyDetectorArn")
    anomalyDetectorArn: arn,
    @ocaml.doc("<p>The ID of the anomaly group.</p>") @as("AnomalyGroupId") anomalyGroupId: uuid,
  }
  type response = {
    @ocaml.doc("<p>Details about the anomaly group.</p>") @as("AnomalyGroup")
    anomalyGroup: option<anomalyGroup>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new: request => t = "GetAnomalyGroupCommand"
  let make = (~anomalyDetectorArn, ~anomalyGroupId, ()) =>
    new({anomalyDetectorArn: anomalyDetectorArn, anomalyGroupId: anomalyGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
