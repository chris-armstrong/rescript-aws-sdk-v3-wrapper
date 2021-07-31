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
type validationExceptionField = {
  @as("Message") message: message,
  @as("Name") name: fieldName,
}
type timestampList = array<timestampString>
type timestampColumn = {
  @as("ColumnFormat") columnFormat: option<dateTimeFormat>,
  @as("ColumnName") columnName: option<columnName>,
}
type timeSeriesFeedback = {
  @as("IsAnomaly") isAnomaly: option<boolean_>,
  @as("TimeSeriesId") timeSeriesId: option<timeSeriesId>,
}
type templatedPathList = array<templatedPath>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type subnetIdList = array<subnetId>
type securityGroupIdList = array<securityGroupId>
type sampleRow = array<dataItem>
type snsconfiguration = {
  @as("SnsTopicArn") snsTopicArn: arn,
  @as("RoleArn") roleArn: arn,
}
type metricValueList = array<metricValue>
type metric = {
  @as("Namespace") namespace: option<namespace>,
  @as("AggregationFunction") aggregationFunction: aggregationFunction,
  @as("MetricName") metricName: columnName,
}
type lambdaConfiguration = {
  @as("LambdaArn") lambdaArn: arn,
  @as("RoleArn") roleArn: arn,
}
type jsonFormatDescriptor = {
  @as("Charset") charset: option<charset>,
  @as("FileCompression") fileCompression: option<jsonFileCompression>,
}
type itemizedMetricStats = {
  @as("OccurrenceCount") occurrenceCount: option<integer_>,
  @as("MetricName") metricName: option<columnName>,
}
type historicalDataPathList = array<historicalDataPath>
type headerValueList = array<headerValue>
type headerList = array<columnName>
type executionStatus = {
  @as("FailureReason") failureReason: option<anomalyDetectionTaskStatusMessage>,
  @as("Status") status: option<anomalyDetectionTaskStatus>,
  @as("Timestamp") timestamp_: option<timestampString>,
}
type dimensionValueContribution = {
  @as("ContributionScore") contributionScore: option<score>,
  @as("DimensionValue") dimensionValue: option<dimensionValue>,
}
type dimensionNameValue = {
  @as("DimensionValue") dimensionValue: dimensionValue,
  @as("DimensionName") dimensionName: columnName,
}
type dimensionList = array<columnName>
type cloudWatchConfig = {@as("RoleArn") roleArn: arn}
type appFlowConfig = {
  @as("FlowName") flowName: flowName,
  @as("RoleArn") roleArn: arn,
}
type anomalyGroupTimeSeriesFeedback = {
  @as("IsAnomaly") isAnomaly: boolean_,
  @as("TimeSeriesId") timeSeriesId: timeSeriesId,
  @as("AnomalyGroupId") anomalyGroupId: uuid,
}
type anomalyGroupTimeSeries = {
  @as("TimeSeriesId") timeSeriesId: option<timeSeriesId>,
  @as("AnomalyGroupId") anomalyGroupId: uuid,
}
type anomalyGroupSummary = {
  @as("PrimaryMetricName") primaryMetricName: option<metricName>,
  @as("AnomalyGroupScore") anomalyGroupScore: option<score>,
  @as("AnomalyGroupId") anomalyGroupId: option<uuid>,
  @as("EndTime") endTime: option<timestampString>,
  @as("StartTime") startTime: option<timestampString>,
}
type anomalyDetectorConfigSummary = {
  @as("AnomalyDetectorFrequency") anomalyDetectorFrequency: option<frequency>,
}
type anomalyDetectorConfig = {
  @as("AnomalyDetectorFrequency") anomalyDetectorFrequency: option<frequency>,
}
type vpcConfiguration = {
  @as("SecurityGroupIdList") securityGroupIdList: securityGroupIdList,
  @as("SubnetIdList") subnetIdList: subnetIdList,
}
type validationExceptionFieldList = array<validationExceptionField>
type timeSeriesFeedbackList = array<timeSeriesFeedback>
type sampleRows = array<sampleRow>
type metricSetSummary = {
  @as("Tags") tags: option<tagMap>,
  @as("LastModificationTime") lastModificationTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("MetricSetName") metricSetName: option<metricSetName>,
  @as("MetricSetDescription") metricSetDescription: option<metricSetDescription>,
  @as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>,
  @as("MetricSetArn") metricSetArn: option<arn>,
}
type metricList = array<metric>
type itemizedMetricStatsList = array<itemizedMetricStats>
type executionList = array<executionStatus>
type dimensionValueContributionList = array<dimensionValueContribution>
type dimensionNameValueList = array<dimensionNameValue>
type csvFormatDescriptor = {
  @as("QuoteSymbol") quoteSymbol: option<quoteSymbol>,
  @as("HeaderList") headerList: option<headerList>,
  @as("Delimiter") delimiter: option<delimiter>,
  @as("ContainsHeader") containsHeader: option<boolean_>,
  @as("Charset") charset: option<charset>,
  @as("FileCompression") fileCompression: option<csvfileCompression>,
}
type anomalyGroupSummaryList = array<anomalyGroupSummary>
type anomalyDetectorSummary = {
  @as("Tags") tags: option<tagMap>,
  @as("Status") status: option<anomalyDetectorStatus>,
  @as("LastModificationTime") lastModificationTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("AnomalyDetectorDescription") anomalyDetectorDescription: option<anomalyDetectorDescription>,
  @as("AnomalyDetectorName") anomalyDetectorName: option<anomalyDetectorName>,
  @as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>,
}
type alertSummary = {
  @as("Tags") tags: option<tagMap>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("LastModificationTime") lastModificationTime: option<timestamp_>,
  @as("AlertStatus") alertStatus: option<alertStatus>,
  @as("AlertType") alertType: option<alertType>,
  @as("AlertSensitivityThreshold") alertSensitivityThreshold: option<sensitivityThreshold>,
  @as("AlertName") alertName: option<alertName>,
  @as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>,
  @as("AlertArn") alertArn: option<arn>,
}
type action = {
  @as("LambdaConfiguration") lambdaConfiguration: option<lambdaConfiguration>,
  @as("SNSConfiguration") snsconfiguration: option<snsconfiguration>,
}
type timeSeries = {
  @as("MetricValueList") metricValueList: metricValueList,
  @as("DimensionList") dimensionList: dimensionNameValueList,
  @as("TimeSeriesId") timeSeriesId: timeSeriesId,
}
type redshiftSourceConfig = {
  @as("VpcConfiguration") vpcConfiguration: vpcConfiguration,
  @as("RoleArn") roleArn: arn,
  @as("TableName") tableName: tableName,
  @as("DatabaseName") databaseName: redshiftDatabaseName,
  @as("SecretManagerArn") secretManagerArn: poirotSecretManagerArn,
  @as("DatabasePort") databasePort: databasePort,
  @as("DatabaseHost") databaseHost: databaseHost,
  @as("ClusterIdentifier") clusterIdentifier: redshiftClusterIdentifier,
}
type rdssourceConfig = {
  @as("VpcConfiguration") vpcConfiguration: vpcConfiguration,
  @as("RoleArn") roleArn: arn,
  @as("TableName") tableName: tableName,
  @as("DatabaseName") databaseName: rdsdatabaseName,
  @as("SecretManagerArn") secretManagerArn: poirotSecretManagerArn,
  @as("DatabasePort") databasePort: databasePort,
  @as("DatabaseHost") databaseHost: databaseHost,
  @as("DBInstanceIdentifier") dbinstanceIdentifier: rdsdatabaseIdentifier,
}
type metricSetSummaryList = array<metricSetSummary>
type fileFormatDescriptor = {
  @as("JsonFormatDescriptor") jsonFormatDescriptor: option<jsonFormatDescriptor>,
  @as("CsvFormatDescriptor") csvFormatDescriptor: option<csvFormatDescriptor>,
}
type dimensionContribution = {
  @as("DimensionValueContributionList")
  dimensionValueContributionList: option<dimensionValueContributionList>,
  @as("DimensionName") dimensionName: option<columnName>,
}
type anomalyGroupStatistics = {
  @as("ItemizedMetricStatsList") itemizedMetricStatsList: option<itemizedMetricStatsList>,
  @as("TotalCount") totalCount: option<integer_>,
  @as("EvaluationStartDate") evaluationStartDate: option<timestampString>,
}
type anomalyDetectorSummaryList = array<anomalyDetectorSummary>
type alertSummaryList = array<alertSummary>
type alert = {
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("LastModificationTime") lastModificationTime: option<timestamp_>,
  @as("AlertStatus") alertStatus: option<alertStatus>,
  @as("AlertType") alertType: option<alertType>,
  @as("AlertSensitivityThreshold") alertSensitivityThreshold: option<sensitivityThreshold>,
  @as("AlertName") alertName: option<alertName>,
  @as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>,
  @as("AlertArn") alertArn: option<arn>,
  @as("AlertDescription") alertDescription: option<alertDescription>,
  @as("Action") action: option<action>,
}
type timeSeriesList = array<timeSeries>
type sampleDataS3SourceConfig = {
  @as("FileFormatDescriptor") fileFormatDescriptor: fileFormatDescriptor,
  @as("HistoricalDataPathList") historicalDataPathList: option<historicalDataPathList>,
  @as("TemplatedPathList") templatedPathList: option<templatedPathList>,
  @as("RoleArn") roleArn: arn,
}
type s3SourceConfig = {
  @as("FileFormatDescriptor") fileFormatDescriptor: option<fileFormatDescriptor>,
  @as("HistoricalDataPathList") historicalDataPathList: option<historicalDataPathList>,
  @as("TemplatedPathList") templatedPathList: option<templatedPathList>,
  @as("RoleArn") roleArn: arn,
}
type dimensionContributionList = array<dimensionContribution>
type metricSource = {
  @as("RedshiftSourceConfig") redshiftSourceConfig: option<redshiftSourceConfig>,
  @as("RDSSourceConfig") rdssourceConfig: option<rdssourceConfig>,
  @as("CloudWatchConfig") cloudWatchConfig: option<cloudWatchConfig>,
  @as("AppFlowConfig") appFlowConfig: option<appFlowConfig>,
  @as("S3SourceConfig") s3SourceConfig: option<s3SourceConfig>,
}
type contributionMatrix = {
  @as("DimensionContributionList") dimensionContributionList: option<dimensionContributionList>,
}
type metricLevelImpact = {
  @as("ContributionMatrix") contributionMatrix: option<contributionMatrix>,
  @as("NumTimeSeries") numTimeSeries: option<integer_>,
  @as("MetricName") metricName: option<metricName>,
}
type metricLevelImpactList = array<metricLevelImpact>
type anomalyGroup = {
  @as("MetricLevelImpactList") metricLevelImpactList: option<metricLevelImpactList>,
  @as("PrimaryMetricName") primaryMetricName: option<metricName>,
  @as("AnomalyGroupScore") anomalyGroupScore: option<score>,
  @as("AnomalyGroupId") anomalyGroupId: option<uuid>,
  @as("EndTime") endTime: option<timestampString>,
  @as("StartTime") startTime: option<timestampString>,
}

module UpdateAnomalyDetector = {
  type t
  type request = {
    @as("AnomalyDetectorConfig") anomalyDetectorConfig: option<anomalyDetectorConfig>,
    @as("AnomalyDetectorDescription")
    anomalyDetectorDescription: option<anomalyDetectorDescription>,
    @as("KmsKeyArn") kmsKeyArn: option<kmsKeyArn>,
    @as("AnomalyDetectorArn") anomalyDetectorArn: arn,
  }
  type response = {@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>}
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "UpdateAnomalyDetectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagMap,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutFeedback = {
  type t
  type request = {
    @as("AnomalyGroupTimeSeriesFeedback")
    anomalyGroupTimeSeriesFeedback: anomalyGroupTimeSeriesFeedback,
    @as("AnomalyDetectorArn") anomalyDetectorArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: request => t = "PutFeedbackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: arn}
  type response = {@as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFeedback = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AnomalyGroupTimeSeriesFeedback") anomalyGroupTimeSeriesFeedback: anomalyGroupTimeSeries,
    @as("AnomalyDetectorArn") anomalyDetectorArn: arn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AnomalyGroupTimeSeriesFeedback")
    anomalyGroupTimeSeriesFeedback: option<timeSeriesFeedbackList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: request => t = "GetFeedbackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAnomalyDetector = {
  type t
  type request = {@as("AnomalyDetectorArn") anomalyDetectorArn: arn}
  type response = {
    @as("KmsKeyArn") kmsKeyArn: option<kmsKeyArn>,
    @as("FailureReason") failureReason: option<errorMessage>,
    @as("Status") status: option<anomalyDetectorStatus>,
    @as("LastModificationTime") lastModificationTime: option<timestamp_>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("AnomalyDetectorConfig") anomalyDetectorConfig: option<anomalyDetectorConfigSummary>,
    @as("AnomalyDetectorDescription")
    anomalyDetectorDescription: option<anomalyDetectorDescription>,
    @as("AnomalyDetectorName") anomalyDetectorName: option<anomalyDetectorName>,
    @as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "DescribeAnomalyDetectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAnomalyDetectionExecutions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Timestamp") timestamp_: option<timestampString>,
    @as("AnomalyDetectorArn") anomalyDetectorArn: arn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ExecutionList") executionList: option<executionList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "DescribeAnomalyDetectionExecutionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAnomalyDetector = {
  type t
  type request = {@as("AnomalyDetectorArn") anomalyDetectorArn: arn}
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "DeleteAnomalyDetectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAlert = {
  type t
  type request = {@as("AlertArn") alertArn: arn}
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: request => t = "DeleteAlertCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAnomalyDetector = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("KmsKeyArn") kmsKeyArn: option<kmsKeyArn>,
    @as("AnomalyDetectorConfig") anomalyDetectorConfig: anomalyDetectorConfig,
    @as("AnomalyDetectorDescription")
    anomalyDetectorDescription: option<anomalyDetectorDescription>,
    @as("AnomalyDetectorName") anomalyDetectorName: anomalyDetectorName,
  }
  type response = {@as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>}
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "CreateAnomalyDetectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAlert = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("Action") action: action,
    @as("AnomalyDetectorArn") anomalyDetectorArn: arn,
    @as("AlertDescription") alertDescription: option<alertDescription>,
    @as("AlertSensitivityThreshold") alertSensitivityThreshold: sensitivityThreshold,
    @as("AlertName") alertName: alertName,
  }
  type response = {@as("AlertArn") alertArn: option<arn>}
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: request => t = "CreateAlertCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BackTestAnomalyDetector = {
  type t
  type request = {@as("AnomalyDetectorArn") anomalyDetectorArn: arn}
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "BackTestAnomalyDetectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ActivateAnomalyDetector = {
  type t
  type request = {@as("AnomalyDetectorArn") anomalyDetectorArn: arn}
  type response = unit
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "ActivateAnomalyDetectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMetricSets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MetricSetSummaryList") metricSetSummaryList: option<metricSetSummaryList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "ListMetricSetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnomalyGroupSummaries = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("SensitivityThreshold") sensitivityThreshold: sensitivityThreshold,
    @as("AnomalyDetectorArn") anomalyDetectorArn: arn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AnomalyGroupStatistics") anomalyGroupStatistics: option<anomalyGroupStatistics>,
    @as("AnomalyGroupSummaryList") anomalyGroupSummaryList: option<anomalyGroupSummaryList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "ListAnomalyGroupSummariesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnomalyDetectors = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AnomalyDetectorSummaryList")
    anomalyDetectorSummaryList: option<anomalyDetectorSummaryList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "ListAnomalyDetectorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAlerts = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AlertSummaryList") alertSummaryList: option<alertSummaryList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new external new_: request => t = "ListAlertsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlert = {
  type t
  type request = {@as("AlertArn") alertArn: arn}
  type response = {@as("Alert") alert: option<alert>}
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "DescribeAlertCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnomalyGroupTimeSeries = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("MetricName") metricName: metricName,
    @as("AnomalyGroupId") anomalyGroupId: uuid,
    @as("AnomalyDetectorArn") anomalyDetectorArn: arn,
  }
  type response = {
    @as("TimeSeriesList") timeSeriesList: option<timeSeriesList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("TimestampList") timestampList: option<timestampList>,
    @as("MetricName") metricName: option<metricName>,
    @as("AnomalyGroupId") anomalyGroupId: option<uuid>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "ListAnomalyGroupTimeSeriesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSampleData = {
  type t
  type request = {@as("S3SourceConfig") s3SourceConfig: option<sampleDataS3SourceConfig>}
  type response = {
    @as("SampleRows") sampleRows: option<sampleRows>,
    @as("HeaderValues") headerValues: option<headerValueList>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "GetSampleDataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMetricSet = {
  type t
  type request = {
    @as("MetricSource") metricSource: option<metricSource>,
    @as("MetricSetFrequency") metricSetFrequency: option<frequency>,
    @as("DimensionList") dimensionList: option<dimensionList>,
    @as("TimestampColumn") timestampColumn: option<timestampColumn>,
    @as("Offset") offset: option<offset>,
    @as("MetricList") metricList: option<metricList>,
    @as("MetricSetDescription") metricSetDescription: option<metricSetDescription>,
    @as("MetricSetArn") metricSetArn: arn,
  }
  type response = {@as("MetricSetArn") metricSetArn: option<arn>}
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "UpdateMetricSetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMetricSet = {
  type t
  type request = {@as("MetricSetArn") metricSetArn: arn}
  type response = {
    @as("MetricSource") metricSource: option<metricSource>,
    @as("Timezone") timezone: option<timezone>,
    @as("MetricSetFrequency") metricSetFrequency: option<frequency>,
    @as("DimensionList") dimensionList: option<dimensionList>,
    @as("TimestampColumn") timestampColumn: option<timestampColumn>,
    @as("MetricList") metricList: option<metricList>,
    @as("Offset") offset: option<offset>,
    @as("LastModificationTime") lastModificationTime: option<timestamp_>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("MetricSetDescription") metricSetDescription: option<metricSetDescription>,
    @as("MetricSetName") metricSetName: option<metricSetName>,
    @as("AnomalyDetectorArn") anomalyDetectorArn: option<arn>,
    @as("MetricSetArn") metricSetArn: option<arn>,
  }
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "DescribeMetricSetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMetricSet = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("Timezone") timezone: option<timezone>,
    @as("MetricSource") metricSource: metricSource,
    @as("MetricSetFrequency") metricSetFrequency: option<frequency>,
    @as("DimensionList") dimensionList: option<dimensionList>,
    @as("TimestampColumn") timestampColumn: option<timestampColumn>,
    @as("Offset") offset: option<offset>,
    @as("MetricList") metricList: metricList,
    @as("MetricSetDescription") metricSetDescription: option<metricSetDescription>,
    @as("MetricSetName") metricSetName: metricSetName,
    @as("AnomalyDetectorArn") anomalyDetectorArn: arn,
  }
  type response = {@as("MetricSetArn") metricSetArn: option<arn>}
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "CreateMetricSetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAnomalyGroup = {
  type t
  type request = {
    @as("AnomalyDetectorArn") anomalyDetectorArn: arn,
    @as("AnomalyGroupId") anomalyGroupId: uuid,
  }
  type response = {@as("AnomalyGroup") anomalyGroup: option<anomalyGroup>}
  @module("@aws-sdk/client-lookoutmetrics") @new
  external new_: request => t = "GetAnomalyGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
