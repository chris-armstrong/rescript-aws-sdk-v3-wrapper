type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-monitoring") @new
external createClient: unit => awsServiceClient = "CloudWatchClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type treatMissingData = string
type timestamp_ = Js.Date.t
type threshold = float
type tagValue = string
type tagKey = string
type storageResolution = int
type statusCode = [
  | @as("PartialData") #PartialData
  | @as("InternalError") #InternalError
  | @as("Complete") #Complete
]
type statistic = [
  | @as("Maximum") #Maximum
  | @as("Minimum") #Minimum
  | @as("Sum") #Sum
  | @as("Average") #Average
  | @as("SampleCount") #SampleCount
]
type stateValue = [
  | @as("INSUFFICIENT_DATA") #INSUFFICIENT_DATA
  | @as("ALARM") #ALARM
  | @as("OK") #OK
]
type stateReasonData = string
type stateReason = string
type stat = string
type standardUnit = [
  | @as("None") #None
  | @as("Count/Second") #Count_Second
  | @as("Terabits/Second") #Terabits_Second
  | @as("Gigabits/Second") #Gigabits_Second
  | @as("Megabits/Second") #Megabits_Second
  | @as("Kilobits/Second") #Kilobits_Second
  | @as("Bits/Second") #Bits_Second
  | @as("Terabytes/Second") #Terabytes_Second
  | @as("Gigabytes/Second") #Gigabytes_Second
  | @as("Megabytes/Second") #Megabytes_Second
  | @as("Kilobytes/Second") #Kilobytes_Second
  | @as("Bytes/Second") #Bytes_Second
  | @as("Count") #Count
  | @as("Percent") #Percent
  | @as("Terabits") #Terabits
  | @as("Gigabits") #Gigabits
  | @as("Megabits") #Megabits
  | @as("Kilobits") #Kilobits
  | @as("Bits") #Bits
  | @as("Terabytes") #Terabytes
  | @as("Gigabytes") #Gigabytes
  | @as("Megabytes") #Megabytes
  | @as("Kilobytes") #Kilobytes
  | @as("Bytes") #Bytes
  | @as("Milliseconds") #Milliseconds
  | @as("Microseconds") #Microseconds
  | @as("Seconds") #Seconds
]
type size = float
type scanBy = [
  | @as("TimestampAscending") #TimestampAscending
  | @as("TimestampDescending") #TimestampDescending
]
type returnData = bool
type resourceType = string
type resourceName = string
type resourceId = string
type recentlyActive = [@as("PT3H") #PT3H]
type period = int
type outputFormat = string
type nextToken = string
type namespace = string
type metricWidgetImage = NodeJs.Buffer.t
type metricWidget = string
type metricStreamState = string
type metricStreamOutputFormat = [@as("opentelemetry0.7") #Opentelemetry0_7 | @as("json") #Json]
type metricStreamName = string
type metricName = string
type metricLabel = string
type metricId = string
type metricExpression = string
type messageDataValue = string
type messageDataCode = string
type message = string
type maxReturnedResultsCount = int
type maxRecords = int
type listMetricStreamsMaxResults = int
type lastModified = Js.Date.t
type insightRuleUnboundLong = float
type insightRuleUnboundInteger = int
type insightRuleUnboundDouble = float
type insightRuleState = string
type insightRuleSchema = string
type insightRuleOrderBy = string
type insightRuleName = string
type insightRuleMetricName = string
type insightRuleMaxResults = int
type insightRuleDefinition = string
type insightRuleContributorKeyLabel = string
type insightRuleContributorKey = string
type insightRuleAggregationStatistic = string
type historySummary = string
type historyItemType = [
  | @as("Action") #Action
  | @as("StateUpdate") #StateUpdate
  | @as("ConfigurationUpdate") #ConfigurationUpdate
]
type historyData = string
type getMetricDataMaxDatapoints = int
type getMetricDataLabelTimezone = string
type faultDescription = string
type failureResource = string
type failureDescription = string
type failureCode = string
type extendedStatistic = string
type exceptionType = string
type evaluationPeriods = int
type evaluateLowSampleCountPercentile = string
type errorMessage = string
type dimensionValue = string
type dimensionName = string
type datapointsToAlarm = int
type datapointValue = float
type dataPath = string
type dashboardNamePrefix = string
type dashboardName = string
type dashboardErrorMessage = string
type dashboardBody = string
type dashboardArn = string
type comparisonOperator = [
  | @as("GreaterThanUpperThreshold") #GreaterThanUpperThreshold
  | @as("LessThanLowerThreshold") #LessThanLowerThreshold
  | @as("LessThanLowerOrGreaterThanUpperThreshold") #LessThanLowerOrGreaterThanUpperThreshold
  | @as("LessThanOrEqualToThreshold") #LessThanOrEqualToThreshold
  | @as("LessThanThreshold") #LessThanThreshold
  | @as("GreaterThanThreshold") #GreaterThanThreshold
  | @as("GreaterThanOrEqualToThreshold") #GreaterThanOrEqualToThreshold
]
type awsQueryErrorMessage = string
type anomalyDetectorStateValue = [
  | @as("TRAINED") #TRAINED
  | @as("TRAINED_INSUFFICIENT_DATA") #TRAINED_INSUFFICIENT_DATA
  | @as("PENDING_TRAINING") #PENDING_TRAINING
]
type anomalyDetectorMetricTimezone = string
type anomalyDetectorMetricStat = string
type amazonResourceName = string
type alarmType = [@as("MetricAlarm") #MetricAlarm | @as("CompositeAlarm") #CompositeAlarm]
type alarmRule = string
type alarmNamePrefix = string
type alarmName = string
type alarmDescription = string
type alarmArn = string
type actionsEnabled = bool
type actionPrefix = string
type values = array<datapointValue>
type timestamps = array<timestamp_>
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type statistics = array<statistic>
type statisticSet = {
  @as("Maximum") maximum: datapointValue,
  @as("Minimum") minimum: datapointValue,
  @as("Sum") sum: datapointValue,
  @as("SampleCount") sampleCount: datapointValue,
}
type resourceList = array<resourceName>
type range = {
  @as("EndTime") endTime: timestamp_,
  @as("StartTime") startTime: timestamp_,
}
type partialFailure = {
  @as("FailureDescription") failureDescription: option<failureDescription>,
  @as("FailureCode") failureCode: option<failureCode>,
  @as("ExceptionType") exceptionType: option<exceptionType>,
  @as("FailureResource") failureResource: option<failureResource>,
}
type metricStreamNames = array<metricStreamName>
type metricStreamFilter = {@as("Namespace") namespace: option<namespace>}
type metricStreamEntry = {
  @as("OutputFormat") outputFormat: option<metricStreamOutputFormat>,
  @as("State") state: option<metricStreamState>,
  @as("FirehoseArn") firehoseArn: option<amazonResourceName>,
  @as("Name") name: option<metricStreamName>,
  @as("LastUpdateDate") lastUpdateDate: option<timestamp_>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("Arn") arn: option<amazonResourceName>,
}
type messageData = {
  @as("Value") value: option<messageDataValue>,
  @as("Code") code: option<messageDataCode>,
}
type labelOptions = {@as("Timezone") timezone: option<getMetricDataLabelTimezone>}
type insightRuleNames = array<insightRuleName>
type insightRuleMetricList = array<insightRuleMetricName>
type insightRuleMetricDatapoint = {
  @as("Maximum") maximum: option<insightRuleUnboundDouble>,
  @as("Minimum") minimum: option<insightRuleUnboundDouble>,
  @as("Sum") sum: option<insightRuleUnboundDouble>,
  @as("Average") average: option<insightRuleUnboundDouble>,
  @as("SampleCount") sampleCount: option<insightRuleUnboundDouble>,
  @as("MaxContributorValue") maxContributorValue: option<insightRuleUnboundDouble>,
  @as("UniqueContributors") uniqueContributors: option<insightRuleUnboundDouble>,
  @as("Timestamp") timestamp_: timestamp_,
}
type insightRuleContributorKeys = array<insightRuleContributorKey>
type insightRuleContributorKeyLabels = array<insightRuleContributorKeyLabel>
type insightRuleContributorDatapoint = {
  @as("ApproximateValue") approximateValue: insightRuleUnboundDouble,
  @as("Timestamp") timestamp_: timestamp_,
}
type insightRule = {
  @as("Definition") definition: insightRuleDefinition,
  @as("Schema") schema: insightRuleSchema,
  @as("State") state: insightRuleState,
  @as("Name") name: insightRuleName,
}
type extendedStatistics = array<extendedStatistic>
type dimensionFilter = {
  @as("Value") value: option<dimensionValue>,
  @as("Name") name: dimensionName,
}
type dimension = {
  @as("Value") value: dimensionValue,
  @as("Name") name: dimensionName,
}
type datapointValues = array<datapointValue>
type datapointValueMap = Js.Dict.t<datapointValue>
type dashboardValidationMessage = {
  @as("Message") message: option<message>,
  @as("DataPath") dataPath: option<dataPath>,
}
type dashboardNames = array<dashboardName>
type dashboardEntry = {
  @as("Size") size: option<size>,
  @as("LastModified") lastModified: option<lastModified>,
  @as("DashboardArn") dashboardArn: option<dashboardArn>,
  @as("DashboardName") dashboardName: option<dashboardName>,
}
type counts = array<datapointValue>
type alarmTypes = array<alarmType>
type alarmNames = array<alarmName>
type alarmHistoryItem = {
  @as("HistoryData") historyData: option<historyData>,
  @as("HistorySummary") historySummary: option<historySummary>,
  @as("HistoryItemType") historyItemType: option<historyItemType>,
  @as("Timestamp") timestamp_: option<timestamp_>,
  @as("AlarmType") alarmType: option<alarmType>,
  @as("AlarmName") alarmName: option<alarmName>,
}
type tagList_ = array<tag>
type metricStreamFilters = array<metricStreamFilter>
type metricStreamEntries = array<metricStreamEntry>
type metricDataResultMessages = array<messageData>
type insightRules = array<insightRule>
type insightRuleMetricDatapoints = array<insightRuleMetricDatapoint>
type insightRuleContributorDatapoints = array<insightRuleContributorDatapoint>
type dimensions = array<dimension>
type dimensionFilters = array<dimensionFilter>
type datapoint = {
  @as("ExtendedStatistics") extendedStatistics: option<datapointValueMap>,
  @as("Unit") unit_: option<standardUnit>,
  @as("Maximum") maximum: option<datapointValue>,
  @as("Minimum") minimum: option<datapointValue>,
  @as("Sum") sum: option<datapointValue>,
  @as("Average") average: option<datapointValue>,
  @as("SampleCount") sampleCount: option<datapointValue>,
  @as("Timestamp") timestamp_: option<timestamp_>,
}
type dashboardValidationMessages = array<dashboardValidationMessage>
type dashboardEntries = array<dashboardEntry>
type compositeAlarm = {
  @as("StateValue") stateValue: option<stateValue>,
  @as("StateUpdatedTimestamp") stateUpdatedTimestamp: option<timestamp_>,
  @as("StateReasonData") stateReasonData: option<stateReasonData>,
  @as("StateReason") stateReason: option<stateReason>,
  @as("OKActions") okactions: option<resourceList>,
  @as("InsufficientDataActions") insufficientDataActions: option<resourceList>,
  @as("AlarmRule") alarmRule: option<alarmRule>,
  @as("AlarmName") alarmName: option<alarmName>,
  @as("AlarmDescription") alarmDescription: option<alarmDescription>,
  @as("AlarmConfigurationUpdatedTimestamp") alarmConfigurationUpdatedTimestamp: option<timestamp_>,
  @as("AlarmArn") alarmArn: option<alarmArn>,
  @as("AlarmActions") alarmActions: option<resourceList>,
  @as("ActionsEnabled") actionsEnabled: option<actionsEnabled>,
}
type batchFailures = array<partialFailure>
type anomalyDetectorExcludedTimeRanges = array<range>
type alarmHistoryItems = array<alarmHistoryItem>
type metricDatum = {
  @as("StorageResolution") storageResolution: option<storageResolution>,
  @as("Unit") unit_: option<standardUnit>,
  @as("Counts") counts: option<counts>,
  @as("Values") values: option<values>,
  @as("StatisticValues") statisticValues: option<statisticSet>,
  @as("Value") value: option<datapointValue>,
  @as("Timestamp") timestamp_: option<timestamp_>,
  @as("Dimensions") dimensions: option<dimensions>,
  @as("MetricName") metricName: metricName,
}
type metricDataResult = {
  @as("Messages") messages: option<metricDataResultMessages>,
  @as("StatusCode") statusCode: option<statusCode>,
  @as("Values") values: option<datapointValues>,
  @as("Timestamps") timestamps: option<timestamps>,
  @as("Label") label: option<metricLabel>,
  @as("Id") id: option<metricId>,
}
type metric = {
  @as("Dimensions") dimensions: option<dimensions>,
  @as("MetricName") metricName: option<metricName>,
  @as("Namespace") namespace: option<namespace>,
}
type insightRuleContributor = {
  @as("Datapoints") datapoints: insightRuleContributorDatapoints,
  @as("ApproximateAggregateValue") approximateAggregateValue: insightRuleUnboundDouble,
  @as("Keys") keys: insightRuleContributorKeys,
}
type datapoints = array<datapoint>
type compositeAlarms = array<compositeAlarm>
type anomalyDetectorConfiguration = {
  @as("MetricTimezone") metricTimezone: option<anomalyDetectorMetricTimezone>,
  @as("ExcludedTimeRanges") excludedTimeRanges: option<anomalyDetectorExcludedTimeRanges>,
}
type metrics = array<metric>
type metricStat = {
  @as("Unit") unit_: option<standardUnit>,
  @as("Stat") stat: stat,
  @as("Period") period: period,
  @as("Metric") metric: metric,
}
type metricDataResults = array<metricDataResult>
type metricData = array<metricDatum>
type insightRuleContributors = array<insightRuleContributor>
type anomalyDetector = {
  @as("StateValue") stateValue: option<anomalyDetectorStateValue>,
  @as("Configuration") configuration: option<anomalyDetectorConfiguration>,
  @as("Stat") stat: option<anomalyDetectorMetricStat>,
  @as("Dimensions") dimensions: option<dimensions>,
  @as("MetricName") metricName: option<metricName>,
  @as("Namespace") namespace: option<namespace>,
}
type metricDataQuery = {
  @as("Period") period: option<period>,
  @as("ReturnData") returnData: option<returnData>,
  @as("Label") label: option<metricLabel>,
  @as("Expression") expression: option<metricExpression>,
  @as("MetricStat") metricStat: option<metricStat>,
  @as("Id") id: metricId,
}
type anomalyDetectors = array<anomalyDetector>
type metricDataQueries = array<metricDataQuery>
type metricAlarm = {
  @as("ThresholdMetricId") thresholdMetricId: option<metricId>,
  @as("Metrics") metrics: option<metricDataQueries>,
  @as("EvaluateLowSampleCountPercentile")
  evaluateLowSampleCountPercentile: option<evaluateLowSampleCountPercentile>,
  @as("TreatMissingData") treatMissingData: option<treatMissingData>,
  @as("ComparisonOperator") comparisonOperator: option<comparisonOperator>,
  @as("Threshold") threshold: option<threshold>,
  @as("DatapointsToAlarm") datapointsToAlarm: option<datapointsToAlarm>,
  @as("EvaluationPeriods") evaluationPeriods: option<evaluationPeriods>,
  @as("Unit") unit_: option<standardUnit>,
  @as("Period") period: option<period>,
  @as("Dimensions") dimensions: option<dimensions>,
  @as("ExtendedStatistic") extendedStatistic: option<extendedStatistic>,
  @as("Statistic") statistic: option<statistic>,
  @as("Namespace") namespace: option<namespace>,
  @as("MetricName") metricName: option<metricName>,
  @as("StateUpdatedTimestamp") stateUpdatedTimestamp: option<timestamp_>,
  @as("StateReasonData") stateReasonData: option<stateReasonData>,
  @as("StateReason") stateReason: option<stateReason>,
  @as("StateValue") stateValue: option<stateValue>,
  @as("InsufficientDataActions") insufficientDataActions: option<resourceList>,
  @as("AlarmActions") alarmActions: option<resourceList>,
  @as("OKActions") okactions: option<resourceList>,
  @as("ActionsEnabled") actionsEnabled: option<actionsEnabled>,
  @as("AlarmConfigurationUpdatedTimestamp") alarmConfigurationUpdatedTimestamp: option<timestamp_>,
  @as("AlarmDescription") alarmDescription: option<alarmDescription>,
  @as("AlarmArn") alarmArn: option<alarmArn>,
  @as("AlarmName") alarmName: option<alarmName>,
}
type metricAlarms = array<metricAlarm>

module SetAlarmState = {
  type t
  type request = {
    @as("StateReasonData") stateReasonData: option<stateReasonData>,
    @as("StateReason") stateReason: stateReason,
    @as("StateValue") stateValue: stateValue,
    @as("AlarmName") alarmName: alarmName,
  }

  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "SetAlarmStateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetMetricWidgetImage = {
  type t
  type request = {
    @as("OutputFormat") outputFormat: option<outputFormat>,
    @as("MetricWidget") metricWidget: metricWidget,
  }
  type response = {@as("MetricWidgetImage") metricWidgetImage: option<metricWidgetImage>}
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "GetMetricWidgetImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDashboard = {
  type t
  type request = {@as("DashboardName") dashboardName: dashboardName}
  type response = {
    @as("DashboardName") dashboardName: option<dashboardName>,
    @as("DashboardBody") dashboardBody: option<dashboardBody>,
    @as("DashboardArn") dashboardArn: option<dashboardArn>,
  }
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "GetDashboardCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMetricStream = {
  type t
  type request = {@as("Name") name: metricStreamName}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "DeleteMetricStreamCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopMetricStreams = {
  type t
  type request = {@as("Names") names: metricStreamNames}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "StopMetricStreamsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMetricStreams = {
  type t
  type request = {@as("Names") names: metricStreamNames}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "StartMetricStreamsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableAlarmActions = {
  type t
  type request = {@as("AlarmNames") alarmNames: alarmNames}

  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "EnableAlarmActionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableAlarmActions = {
  type t
  type request = {@as("AlarmNames") alarmNames: alarmNames}

  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "DisableAlarmActionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDashboards = {
  type t
  type request = {@as("DashboardNames") dashboardNames: dashboardNames}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "DeleteDashboardsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAlarms = {
  type t
  type request = {@as("AlarmNames") alarmNames: alarmNames}

  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "DeleteAlarmsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutMetricStream = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("OutputFormat") outputFormat: metricStreamOutputFormat,
    @as("RoleArn") roleArn: amazonResourceName,
    @as("FirehoseArn") firehoseArn: amazonResourceName,
    @as("ExcludeFilters") excludeFilters: option<metricStreamFilters>,
    @as("IncludeFilters") includeFilters: option<metricStreamFilters>,
    @as("Name") name: metricStreamName,
  }
  type response = {@as("Arn") arn: option<amazonResourceName>}
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "PutMetricStreamCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutInsightRule = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("RuleDefinition") ruleDefinition: insightRuleDefinition,
    @as("RuleState") ruleState: option<insightRuleState>,
    @as("RuleName") ruleName: insightRuleName,
  }
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "PutInsightRuleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDashboard = {
  type t
  type request = {
    @as("DashboardBody") dashboardBody: dashboardBody,
    @as("DashboardName") dashboardName: dashboardName,
  }
  type response = {
    @as("DashboardValidationMessages")
    dashboardValidationMessages: option<dashboardValidationMessages>,
  }
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "PutDashboardCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutCompositeAlarm = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("OKActions") okactions: option<resourceList>,
    @as("InsufficientDataActions") insufficientDataActions: option<resourceList>,
    @as("AlarmRule") alarmRule: alarmRule,
    @as("AlarmName") alarmName: alarmName,
    @as("AlarmDescription") alarmDescription: option<alarmDescription>,
    @as("AlarmActions") alarmActions: option<resourceList>,
    @as("ActionsEnabled") actionsEnabled: option<actionsEnabled>,
  }

  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "PutCompositeAlarmCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceARN") resourceARN: amazonResourceName}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMetricStreams = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<listMetricStreamsMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("Entries") entries: option<metricStreamEntries>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "ListMetricStreamsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDashboards = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DashboardNamePrefix") dashboardNamePrefix: option<dashboardNamePrefix>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DashboardEntries") dashboardEntries: option<dashboardEntries>,
  }
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "ListDashboardsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMetricStream = {
  type t
  type request = {@as("Name") name: metricStreamName}
  type response = {
    @as("OutputFormat") outputFormat: option<metricStreamOutputFormat>,
    @as("LastUpdateDate") lastUpdateDate: option<timestamp_>,
    @as("CreationDate") creationDate: option<timestamp_>,
    @as("State") state: option<metricStreamState>,
    @as("RoleArn") roleArn: option<amazonResourceName>,
    @as("FirehoseArn") firehoseArn: option<amazonResourceName>,
    @as("ExcludeFilters") excludeFilters: option<metricStreamFilters>,
    @as("IncludeFilters") includeFilters: option<metricStreamFilters>,
    @as("Name") name: option<metricStreamName>,
    @as("Arn") arn: option<amazonResourceName>,
  }
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "GetMetricStreamCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableInsightRules = {
  type t
  type request = {@as("RuleNames") ruleNames: insightRuleNames}
  type response = {@as("Failures") failures: option<batchFailures>}
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "EnableInsightRulesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableInsightRules = {
  type t
  type request = {@as("RuleNames") ruleNames: insightRuleNames}
  type response = {@as("Failures") failures: option<batchFailures>}
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "DisableInsightRulesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInsightRules = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<insightRuleMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("InsightRules") insightRules: option<insightRules>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "DescribeInsightRulesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlarmHistory = {
  type t
  type request = {
    @as("ScanBy") scanBy: option<scanBy>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxRecords") maxRecords: option<maxRecords>,
    @as("EndDate") endDate: option<timestamp_>,
    @as("StartDate") startDate: option<timestamp_>,
    @as("HistoryItemType") historyItemType: option<historyItemType>,
    @as("AlarmTypes") alarmTypes: option<alarmTypes>,
    @as("AlarmName") alarmName: option<alarmName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AlarmHistoryItems") alarmHistoryItems: option<alarmHistoryItems>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "DescribeAlarmHistoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInsightRules = {
  type t
  type request = {@as("RuleNames") ruleNames: insightRuleNames}
  type response = {@as("Failures") failures: option<batchFailures>}
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "DeleteInsightRulesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAnomalyDetector = {
  type t
  type request = {
    @as("Stat") stat: anomalyDetectorMetricStat,
    @as("Dimensions") dimensions: option<dimensions>,
    @as("MetricName") metricName: metricName,
    @as("Namespace") namespace: namespace,
  }
  type response = unit
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "DeleteAnomalyDetectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAnomalyDetector = {
  type t
  type request = {
    @as("Configuration") configuration: option<anomalyDetectorConfiguration>,
    @as("Stat") stat: anomalyDetectorMetricStat,
    @as("Dimensions") dimensions: option<dimensions>,
    @as("MetricName") metricName: metricName,
    @as("Namespace") namespace: namespace,
  }
  type response = unit
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "PutAnomalyDetectorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMetricStatistics = {
  type t
  type request = {
    @as("Unit") unit_: option<standardUnit>,
    @as("ExtendedStatistics") extendedStatistics: option<extendedStatistics>,
    @as("Statistics") statistics: option<statistics>,
    @as("Period") period: period,
    @as("EndTime") endTime: timestamp_,
    @as("StartTime") startTime: timestamp_,
    @as("Dimensions") dimensions: option<dimensions>,
    @as("MetricName") metricName: metricName,
    @as("Namespace") namespace: namespace,
  }
  type response = {
    @as("Datapoints") datapoints: option<datapoints>,
    @as("Label") label: option<metricLabel>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "GetMetricStatisticsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutMetricData = {
  type t
  type request = {
    @as("MetricData") metricData: metricData,
    @as("Namespace") namespace: namespace,
  }

  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "PutMetricDataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListMetrics = {
  type t
  type request = {
    @as("RecentlyActive") recentlyActive: option<recentlyActive>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Dimensions") dimensions: option<dimensionFilters>,
    @as("MetricName") metricName: option<metricName>,
    @as("Namespace") namespace: option<namespace>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Metrics") metrics: option<metrics>,
  }
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "ListMetricsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInsightRuleReport = {
  type t
  type request = {
    @as("OrderBy") orderBy: option<insightRuleOrderBy>,
    @as("Metrics") metrics: option<insightRuleMetricList>,
    @as("MaxContributorCount") maxContributorCount: option<insightRuleUnboundInteger>,
    @as("Period") period: period,
    @as("EndTime") endTime: timestamp_,
    @as("StartTime") startTime: timestamp_,
    @as("RuleName") ruleName: insightRuleName,
  }
  type response = {
    @as("MetricDatapoints") metricDatapoints: option<insightRuleMetricDatapoints>,
    @as("Contributors") contributors: option<insightRuleContributors>,
    @as("ApproximateUniqueCount") approximateUniqueCount: option<insightRuleUnboundLong>,
    @as("AggregateValue") aggregateValue: option<insightRuleUnboundDouble>,
    @as("AggregationStatistic") aggregationStatistic: option<insightRuleAggregationStatistic>,
    @as("KeyLabels") keyLabels: option<insightRuleContributorKeyLabels>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "GetInsightRuleReportCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAnomalyDetectors = {
  type t
  type request = {
    @as("Dimensions") dimensions: option<dimensions>,
    @as("MetricName") metricName: option<metricName>,
    @as("Namespace") namespace: option<namespace>,
    @as("MaxResults") maxResults: option<maxReturnedResultsCount>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AnomalyDetectors") anomalyDetectors: option<anomalyDetectors>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "DescribeAnomalyDetectorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutMetricAlarm = {
  type t
  type request = {
    @as("ThresholdMetricId") thresholdMetricId: option<metricId>,
    @as("Tags") tags: option<tagList_>,
    @as("Metrics") metrics: option<metricDataQueries>,
    @as("EvaluateLowSampleCountPercentile")
    evaluateLowSampleCountPercentile: option<evaluateLowSampleCountPercentile>,
    @as("TreatMissingData") treatMissingData: option<treatMissingData>,
    @as("ComparisonOperator") comparisonOperator: comparisonOperator,
    @as("Threshold") threshold: option<threshold>,
    @as("DatapointsToAlarm") datapointsToAlarm: option<datapointsToAlarm>,
    @as("EvaluationPeriods") evaluationPeriods: evaluationPeriods,
    @as("Unit") unit_: option<standardUnit>,
    @as("Period") period: option<period>,
    @as("Dimensions") dimensions: option<dimensions>,
    @as("ExtendedStatistic") extendedStatistic: option<extendedStatistic>,
    @as("Statistic") statistic: option<statistic>,
    @as("Namespace") namespace: option<namespace>,
    @as("MetricName") metricName: option<metricName>,
    @as("InsufficientDataActions") insufficientDataActions: option<resourceList>,
    @as("AlarmActions") alarmActions: option<resourceList>,
    @as("OKActions") okactions: option<resourceList>,
    @as("ActionsEnabled") actionsEnabled: option<actionsEnabled>,
    @as("AlarmDescription") alarmDescription: option<alarmDescription>,
    @as("AlarmName") alarmName: alarmName,
  }

  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "PutMetricAlarmCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetMetricData = {
  type t
  type request = {
    @as("LabelOptions") labelOptions: option<labelOptions>,
    @as("MaxDatapoints") maxDatapoints: option<getMetricDataMaxDatapoints>,
    @as("ScanBy") scanBy: option<scanBy>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("EndTime") endTime: timestamp_,
    @as("StartTime") startTime: timestamp_,
    @as("MetricDataQueries") metricDataQueries: metricDataQueries,
  }
  type response = {
    @as("Messages") messages: option<metricDataResultMessages>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MetricDataResults") metricDataResults: option<metricDataResults>,
  }
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "GetMetricDataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlarmsForMetric = {
  type t
  type request = {
    @as("Unit") unit_: option<standardUnit>,
    @as("Period") period: option<period>,
    @as("Dimensions") dimensions: option<dimensions>,
    @as("ExtendedStatistic") extendedStatistic: option<extendedStatistic>,
    @as("Statistic") statistic: option<statistic>,
    @as("Namespace") namespace: namespace,
    @as("MetricName") metricName: metricName,
  }
  type response = {@as("MetricAlarms") metricAlarms: option<metricAlarms>}
  @module("@aws-sdk/client-monitoring") @new
  external new_: request => t = "DescribeAlarmsForMetricCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlarms = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxRecords") maxRecords: option<maxRecords>,
    @as("ActionPrefix") actionPrefix: option<actionPrefix>,
    @as("StateValue") stateValue: option<stateValue>,
    @as("ParentsOfAlarmName") parentsOfAlarmName: option<alarmName>,
    @as("ChildrenOfAlarmName") childrenOfAlarmName: option<alarmName>,
    @as("AlarmTypes") alarmTypes: option<alarmTypes>,
    @as("AlarmNamePrefix") alarmNamePrefix: option<alarmNamePrefix>,
    @as("AlarmNames") alarmNames: option<alarmNames>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MetricAlarms") metricAlarms: option<metricAlarms>,
    @as("CompositeAlarms") compositeAlarms: option<compositeAlarms>,
  }
  @module("@aws-sdk/client-monitoring") @new external new_: request => t = "DescribeAlarmsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
