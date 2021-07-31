type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validationExceptionReason = [@as("OTHER") #OTHER | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED | @as("CANNOT_PARSE") #CANNOT_PARSE | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION]
type uUID = string
type timezone = string
type timestampString = string
type amazonawsTimestamp = Js.Date.t;
type timeSeriesId = string
type templatedPath = string
type tagValue = string
type tagKey = string
type tableName = string
type subnetId = string
type serviceCode = string
type sensitivityThreshold = int;
type securityGroupId = string
type score = float;
type resourceType = string
type resourceId = string
type redshiftDatabaseName = string
type redshiftClusterIdentifier = string
type rDSDatabaseName = string
type rDSDatabaseIdentifier = string
type quoteSymbol = string
type quotaCode = string
type poirotSecretManagerArn = string
type offset = int;
type nextToken = string
type namespace = string
type metricValue = float;
type metricSetName = string
type metricSetDescription = string
type metricName = string
type message = string
type maxResults = int;
type kmsKeyArn = string
type jsonFileCompression = [@as("GZIP") #GZIP | @as("NONE") #NONE]
type amazonawsInteger = int;
type historicalDataPath = string
type headerValue = string
type frequency = [@as("PT5M") #PT5M | @as("PT10M") #PT10M | @as("PT1H") #PT1H | @as("P1D") #P1D]
type flowName = string
type fieldName = string
type errorMessage = string
type dimensionValue = string
type delimiter = string
type dateTimeFormat = string
type databasePort = int;
type databaseHost = string
type dataItem = string
type columnName = string
type charset = string
type cSVFileCompression = [@as("GZIP") #GZIP | @as("NONE") #NONE]
type amazonawsBoolean = bool;
type arn = string
type anomalyDetectorStatus = [@as("BACK_TEST_COMPLETE") #BACK_TEST_COMPLETE | @as("BACK_TEST_ACTIVE") #BACK_TEST_ACTIVE | @as("BACK_TEST_ACTIVATING") #BACK_TEST_ACTIVATING | @as("INACTIVE") #INACTIVE | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("ACTIVATING") #ACTIVATING | @as("ACTIVE") #ACTIVE]
type anomalyDetectorName = string
type anomalyDetectorDescription = string
type anomalyDetectionTaskStatusMessage = string
type anomalyDetectionTaskStatus = [@as("FAILED_TO_SCHEDULE") #FAILED_TO_SCHEDULE | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING") #PENDING]
type alertType = [@as("LAMBDA") #LAMBDA | @as("SNS") #SNS]
type alertStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type alertName = string
type alertDescription = string
type aggregationFunction = [@as("SUM") #SUM | @as("AVG") #AVG]
type validationExceptionField = {
@as("Message") message: option<message>,
@as("Name") name: option<fieldName>
}
type timestampList = array<timestampString>
type timestampColumn = {
@as("ColumnFormat") columnFormat: dateTimeFormat,
@as("ColumnName") columnName: columnName
}
type timeSeriesFeedback = {
@as("IsAnomaly") isAnomaly: amazonawsBoolean,
@as("TimeSeriesId") timeSeriesId: timeSeriesId
}
type templatedPathList = array<templatedPath>
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type subnetIdList = array<subnetId>
type securityGroupIdList = array<securityGroupId>
type sampleRow = array<dataItem>
type sNSConfiguration = {
@as("SnsTopicArn") snsTopicArn: option<arn>,
@as("RoleArn") roleArn: option<arn>
}
type metricValueList = array<metricValue>
type metric = {
@as("Namespace") namespace: namespace,
@as("AggregationFunction") aggregationFunction: option<aggregationFunction>,
@as("MetricName") metricName: option<columnName>
}
type lambdaConfiguration = {
@as("LambdaArn") lambdaArn: option<arn>,
@as("RoleArn") roleArn: option<arn>
}
type jsonFormatDescriptor = {
@as("Charset") charset: charset,
@as("FileCompression") fileCompression: jsonFileCompression
}
type itemizedMetricStats = {
@as("OccurrenceCount") occurrenceCount: amazonawsInteger,
@as("MetricName") metricName: columnName
}
type historicalDataPathList = array<historicalDataPath>
type headerValueList = array<headerValue>
type headerList = array<columnName>
type executionStatus = {
@as("FailureReason") failureReason: anomalyDetectionTaskStatusMessage,
@as("Status") status: anomalyDetectionTaskStatus,
@as("Timestamp") timestamp: timestampString
}
type dimensionValueContribution = {
@as("ContributionScore") contributionScore: score,
@as("DimensionValue") dimensionValue: dimensionValue
}
type dimensionNameValue = {
@as("DimensionValue") dimensionValue: option<dimensionValue>,
@as("DimensionName") dimensionName: option<columnName>
}
type dimensionList = array<columnName>
type cloudWatchConfig = {
@as("RoleArn") roleArn: option<arn>
}
type appFlowConfig = {
@as("FlowName") flowName: option<flowName>,
@as("RoleArn") roleArn: option<arn>
}
type anomalyGroupTimeSeriesFeedback = {
@as("IsAnomaly") isAnomaly: option<amazonawsBoolean>,
@as("TimeSeriesId") timeSeriesId: option<timeSeriesId>,
@as("AnomalyGroupId") anomalyGroupId: option<uUID>
}
type anomalyGroupTimeSeries = {
@as("TimeSeriesId") timeSeriesId: timeSeriesId,
@as("AnomalyGroupId") anomalyGroupId: option<uUID>
}
type anomalyGroupSummary = {
@as("PrimaryMetricName") primaryMetricName: metricName,
@as("AnomalyGroupScore") anomalyGroupScore: score,
@as("AnomalyGroupId") anomalyGroupId: uUID,
@as("EndTime") endTime: timestampString,
@as("StartTime") startTime: timestampString
}
type anomalyDetectorConfigSummary = {
@as("AnomalyDetectorFrequency") anomalyDetectorFrequency: frequency
}
type anomalyDetectorConfig = {
@as("AnomalyDetectorFrequency") anomalyDetectorFrequency: frequency
}
type vpcConfiguration = {
@as("SecurityGroupIdList") securityGroupIdList: option<securityGroupIdList>,
@as("SubnetIdList") subnetIdList: option<subnetIdList>
}
type validationExceptionFieldList = array<validationExceptionField>
type timeSeriesFeedbackList = array<timeSeriesFeedback>
type sampleRows = array<sampleRow>
type metricSetSummary = {
@as("Tags") tags: tagMap,
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("MetricSetName") metricSetName: metricSetName,
@as("MetricSetDescription") metricSetDescription: metricSetDescription,
@as("AnomalyDetectorArn") anomalyDetectorArn: arn,
@as("MetricSetArn") metricSetArn: arn
}
type metricList = array<metric>
type itemizedMetricStatsList = array<itemizedMetricStats>
type executionList = array<executionStatus>
type dimensionValueContributionList = array<dimensionValueContribution>
type dimensionNameValueList = array<dimensionNameValue>
type csvFormatDescriptor = {
@as("QuoteSymbol") quoteSymbol: quoteSymbol,
@as("HeaderList") headerList: headerList,
@as("Delimiter") delimiter: delimiter,
@as("ContainsHeader") containsHeader: amazonawsBoolean,
@as("Charset") charset: charset,
@as("FileCompression") fileCompression: cSVFileCompression
}
type anomalyGroupSummaryList = array<anomalyGroupSummary>
type anomalyDetectorSummary = {
@as("Tags") tags: tagMap,
@as("Status") status: anomalyDetectorStatus,
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("AnomalyDetectorDescription") anomalyDetectorDescription: anomalyDetectorDescription,
@as("AnomalyDetectorName") anomalyDetectorName: anomalyDetectorName,
@as("AnomalyDetectorArn") anomalyDetectorArn: arn
}
type alertSummary = {
@as("Tags") tags: tagMap,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("AlertStatus") alertStatus: alertStatus,
@as("AlertType") alertType: alertType,
@as("AlertSensitivityThreshold") alertSensitivityThreshold: sensitivityThreshold,
@as("AlertName") alertName: alertName,
@as("AnomalyDetectorArn") anomalyDetectorArn: arn,
@as("AlertArn") alertArn: arn
}
type action = {
@as("LambdaConfiguration") lambdaConfiguration: lambdaConfiguration,
@as("SNSConfiguration") sNSConfiguration: sNSConfiguration
}
type timeSeries = {
@as("MetricValueList") metricValueList: option<metricValueList>,
@as("DimensionList") dimensionList: option<dimensionNameValueList>,
@as("TimeSeriesId") timeSeriesId: option<timeSeriesId>
}
type redshiftSourceConfig = {
@as("VpcConfiguration") vpcConfiguration: option<vpcConfiguration>,
@as("RoleArn") roleArn: option<arn>,
@as("TableName") tableName: option<tableName>,
@as("DatabaseName") databaseName: option<redshiftDatabaseName>,
@as("SecretManagerArn") secretManagerArn: option<poirotSecretManagerArn>,
@as("DatabasePort") databasePort: option<databasePort>,
@as("DatabaseHost") databaseHost: option<databaseHost>,
@as("ClusterIdentifier") clusterIdentifier: option<redshiftClusterIdentifier>
}
type rDSSourceConfig = {
@as("VpcConfiguration") vpcConfiguration: option<vpcConfiguration>,
@as("RoleArn") roleArn: option<arn>,
@as("TableName") tableName: option<tableName>,
@as("DatabaseName") databaseName: option<rDSDatabaseName>,
@as("SecretManagerArn") secretManagerArn: option<poirotSecretManagerArn>,
@as("DatabasePort") databasePort: option<databasePort>,
@as("DatabaseHost") databaseHost: option<databaseHost>,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<rDSDatabaseIdentifier>
}
type metricSetSummaryList = array<metricSetSummary>
type fileFormatDescriptor = {
@as("JsonFormatDescriptor") jsonFormatDescriptor: jsonFormatDescriptor,
@as("CsvFormatDescriptor") csvFormatDescriptor: csvFormatDescriptor
}
type dimensionContribution = {
@as("DimensionValueContributionList") dimensionValueContributionList: dimensionValueContributionList,
@as("DimensionName") dimensionName: columnName
}
type anomalyGroupStatistics = {
@as("ItemizedMetricStatsList") itemizedMetricStatsList: itemizedMetricStatsList,
@as("TotalCount") totalCount: amazonawsInteger,
@as("EvaluationStartDate") evaluationStartDate: timestampString
}
type anomalyDetectorSummaryList = array<anomalyDetectorSummary>
type alertSummaryList = array<alertSummary>
type alert = {
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("AlertStatus") alertStatus: alertStatus,
@as("AlertType") alertType: alertType,
@as("AlertSensitivityThreshold") alertSensitivityThreshold: sensitivityThreshold,
@as("AlertName") alertName: alertName,
@as("AnomalyDetectorArn") anomalyDetectorArn: arn,
@as("AlertArn") alertArn: arn,
@as("AlertDescription") alertDescription: alertDescription,
@as("Action") action: action
}
type timeSeriesList = array<timeSeries>
type sampleDataS3SourceConfig = {
@as("FileFormatDescriptor") fileFormatDescriptor: option<fileFormatDescriptor>,
@as("HistoricalDataPathList") historicalDataPathList: historicalDataPathList,
@as("TemplatedPathList") templatedPathList: templatedPathList,
@as("RoleArn") roleArn: option<arn>
}
type s3SourceConfig = {
@as("FileFormatDescriptor") fileFormatDescriptor: fileFormatDescriptor,
@as("HistoricalDataPathList") historicalDataPathList: historicalDataPathList,
@as("TemplatedPathList") templatedPathList: templatedPathList,
@as("RoleArn") roleArn: option<arn>
}
type dimensionContributionList = array<dimensionContribution>
type metricSource = {
@as("RedshiftSourceConfig") redshiftSourceConfig: redshiftSourceConfig,
@as("RDSSourceConfig") rDSSourceConfig: rDSSourceConfig,
@as("CloudWatchConfig") cloudWatchConfig: cloudWatchConfig,
@as("AppFlowConfig") appFlowConfig: appFlowConfig,
@as("S3SourceConfig") s3SourceConfig: s3SourceConfig
}
type contributionMatrix = {
@as("DimensionContributionList") dimensionContributionList: dimensionContributionList
}
type metricLevelImpact = {
@as("ContributionMatrix") contributionMatrix: contributionMatrix,
@as("NumTimeSeries") numTimeSeries: amazonawsInteger,
@as("MetricName") metricName: metricName
}
type metricLevelImpactList = array<metricLevelImpact>
type anomalyGroup = {
@as("MetricLevelImpactList") metricLevelImpactList: metricLevelImpactList,
@as("PrimaryMetricName") primaryMetricName: metricName,
@as("AnomalyGroupScore") anomalyGroupScore: score,
@as("AnomalyGroupId") anomalyGroupId: uUID,
@as("EndTime") endTime: timestampString,
@as("StartTime") startTime: timestampString
}
type clientType;
@module("@aws-sdk/client-lookoutmetrics") @new external createClient: unit => clientType = "LookoutMetricsClient";
module UpdateAnomalyDetector = {
  type t;
  type request = {
@as("AnomalyDetectorConfig") anomalyDetectorConfig: anomalyDetectorConfig,
@as("AnomalyDetectorDescription") anomalyDetectorDescription: anomalyDetectorDescription,
@as("KmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>
}
  type response = {
@as("AnomalyDetectorArn") anomalyDetectorArn: arn
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "UpdateAnomalyDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutFeedback = {
  type t;
  type request = {
@as("AnomalyGroupTimeSeriesFeedback") anomalyGroupTimeSeriesFeedback: option<anomalyGroupTimeSeriesFeedback>,
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "PutFeedbackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFeedback = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("AnomalyGroupTimeSeriesFeedback") anomalyGroupTimeSeriesFeedback: option<anomalyGroupTimeSeries>,
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AnomalyGroupTimeSeriesFeedback") anomalyGroupTimeSeriesFeedback: timeSeriesFeedbackList
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "GetFeedbackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAnomalyDetector = {
  type t;
  type request = {
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>
}
  type response = {
@as("KmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("FailureReason") failureReason: errorMessage,
@as("Status") status: anomalyDetectorStatus,
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("AnomalyDetectorConfig") anomalyDetectorConfig: anomalyDetectorConfigSummary,
@as("AnomalyDetectorDescription") anomalyDetectorDescription: anomalyDetectorDescription,
@as("AnomalyDetectorName") anomalyDetectorName: anomalyDetectorName,
@as("AnomalyDetectorArn") anomalyDetectorArn: arn
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "DescribeAnomalyDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAnomalyDetectionExecutions = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Timestamp") timestamp: timestampString,
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ExecutionList") executionList: executionList
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "DescribeAnomalyDetectionExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAnomalyDetector = {
  type t;
  type request = {
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "DeleteAnomalyDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAlert = {
  type t;
  type request = {
@as("AlertArn") alertArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "DeleteAlertCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAnomalyDetector = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("KmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("AnomalyDetectorConfig") anomalyDetectorConfig: option<anomalyDetectorConfig>,
@as("AnomalyDetectorDescription") anomalyDetectorDescription: anomalyDetectorDescription,
@as("AnomalyDetectorName") anomalyDetectorName: option<anomalyDetectorName>
}
  type response = {
@as("AnomalyDetectorArn") anomalyDetectorArn: arn
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "CreateAnomalyDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAlert = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("Action") action: option<action>,
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>,
@as("AlertDescription") alertDescription: alertDescription,
@as("AlertSensitivityThreshold") alertSensitivityThreshold: option<sensitivityThreshold>,
@as("AlertName") alertName: option<alertName>
}
  type response = {
@as("AlertArn") alertArn: arn
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "CreateAlertCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BackTestAnomalyDetector = {
  type t;
  type request = {
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "BackTestAnomalyDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ActivateAnomalyDetector = {
  type t;
  type request = {
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "ActivateAnomalyDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMetricSets = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("AnomalyDetectorArn") anomalyDetectorArn: arn
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("MetricSetSummaryList") metricSetSummaryList: metricSetSummaryList
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "ListMetricSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAnomalyGroupSummaries = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("SensitivityThreshold") sensitivityThreshold: option<sensitivityThreshold>,
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AnomalyGroupStatistics") anomalyGroupStatistics: anomalyGroupStatistics,
@as("AnomalyGroupSummaryList") anomalyGroupSummaryList: anomalyGroupSummaryList
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "ListAnomalyGroupSummariesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAnomalyDetectors = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AnomalyDetectorSummaryList") anomalyDetectorSummaryList: anomalyDetectorSummaryList
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "ListAnomalyDetectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAlerts = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("AnomalyDetectorArn") anomalyDetectorArn: arn
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AlertSummaryList") alertSummaryList: alertSummaryList
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "ListAlertsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAlert = {
  type t;
  type request = {
@as("AlertArn") alertArn: option<arn>
}
  type response = {
@as("Alert") alert: alert
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "DescribeAlertCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAnomalyGroupTimeSeries = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("MetricName") metricName: option<metricName>,
@as("AnomalyGroupId") anomalyGroupId: option<uUID>,
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>
}
  type response = {
@as("TimeSeriesList") timeSeriesList: timeSeriesList,
@as("NextToken") nextToken: nextToken,
@as("TimestampList") timestampList: timestampList,
@as("MetricName") metricName: metricName,
@as("AnomalyGroupId") anomalyGroupId: uUID
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "ListAnomalyGroupTimeSeriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSampleData = {
  type t;
  type request = {
@as("S3SourceConfig") s3SourceConfig: sampleDataS3SourceConfig
}
  type response = {
@as("SampleRows") sampleRows: sampleRows,
@as("HeaderValues") headerValues: headerValueList
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "GetSampleDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMetricSet = {
  type t;
  type request = {
@as("MetricSource") metricSource: metricSource,
@as("MetricSetFrequency") metricSetFrequency: frequency,
@as("DimensionList") dimensionList: dimensionList,
@as("TimestampColumn") timestampColumn: timestampColumn,
@as("Offset") offset: offset,
@as("MetricList") metricList: metricList,
@as("MetricSetDescription") metricSetDescription: metricSetDescription,
@as("MetricSetArn") metricSetArn: option<arn>
}
  type response = {
@as("MetricSetArn") metricSetArn: arn
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "UpdateMetricSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMetricSet = {
  type t;
  type request = {
@as("MetricSetArn") metricSetArn: option<arn>
}
  type response = {
@as("MetricSource") metricSource: metricSource,
@as("Timezone") timezone: timezone,
@as("MetricSetFrequency") metricSetFrequency: frequency,
@as("DimensionList") dimensionList: dimensionList,
@as("TimestampColumn") timestampColumn: timestampColumn,
@as("MetricList") metricList: metricList,
@as("Offset") offset: offset,
@as("LastModificationTime") lastModificationTime: amazonawsTimestamp,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("MetricSetDescription") metricSetDescription: metricSetDescription,
@as("MetricSetName") metricSetName: metricSetName,
@as("AnomalyDetectorArn") anomalyDetectorArn: arn,
@as("MetricSetArn") metricSetArn: arn
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "DescribeMetricSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMetricSet = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("Timezone") timezone: timezone,
@as("MetricSource") metricSource: option<metricSource>,
@as("MetricSetFrequency") metricSetFrequency: frequency,
@as("DimensionList") dimensionList: dimensionList,
@as("TimestampColumn") timestampColumn: timestampColumn,
@as("Offset") offset: offset,
@as("MetricList") metricList: option<metricList>,
@as("MetricSetDescription") metricSetDescription: metricSetDescription,
@as("MetricSetName") metricSetName: option<metricSetName>,
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>
}
  type response = {
@as("MetricSetArn") metricSetArn: arn
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "CreateMetricSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAnomalyGroup = {
  type t;
  type request = {
@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>,
@as("AnomalyGroupId") anomalyGroupId: option<uUID>
}
  type response = {
@as("AnomalyGroup") anomalyGroup: anomalyGroup
}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: (request) => t = "GetAnomalyGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
