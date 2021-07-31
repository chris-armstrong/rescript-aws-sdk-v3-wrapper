type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type treatMissingData = string
type amazonawsTimestamp = Js.Date.t;
type threshold = float;
type tagValue = string
type tagKey = string
type storageResolution = int;
type statusCode = [@as("PartialData") #PartialData | @as("InternalError") #InternalError | @as("Complete") #Complete]
type statistic = [@as("Maximum") #Maximum | @as("Minimum") #Minimum | @as("Sum") #Sum | @as("Average") #Average | @as("SampleCount") #SampleCount]
type stateValue = [@as("INSUFFICIENT_DATA") #INSUFFICIENT_DATA | @as("ALARM") #ALARM | @as("OK") #OK]
type stateReasonData = string
type stateReason = string
type stat = string
type standardUnit = [@as("None") #None | @as("Count/Second") #Count_Second | @as("Terabits/Second") #Terabits_Second | @as("Gigabits/Second") #Gigabits_Second | @as("Megabits/Second") #Megabits_Second | @as("Kilobits/Second") #Kilobits_Second | @as("Bits/Second") #Bits_Second | @as("Terabytes/Second") #Terabytes_Second | @as("Gigabytes/Second") #Gigabytes_Second | @as("Megabytes/Second") #Megabytes_Second | @as("Kilobytes/Second") #Kilobytes_Second | @as("Bytes/Second") #Bytes_Second | @as("Count") #Count | @as("Percent") #Percent | @as("Terabits") #Terabits | @as("Gigabits") #Gigabits | @as("Megabits") #Megabits | @as("Kilobits") #Kilobits | @as("Bits") #Bits | @as("Terabytes") #Terabytes | @as("Gigabytes") #Gigabytes | @as("Megabytes") #Megabytes | @as("Kilobytes") #Kilobytes | @as("Bytes") #Bytes | @as("Milliseconds") #Milliseconds | @as("Microseconds") #Microseconds | @as("Seconds") #Seconds]
type size = float;
type scanBy = [@as("TimestampAscending") #TimestampAscending | @as("TimestampDescending") #TimestampDescending]
type returnData = bool;
type resourceType = string
type resourceName = string
type resourceId = string
type recentlyActive = [@as("PT3H") #PT3H]
type period = int;
type outputFormat = string
type nextToken = string
type namespace = string
type metricWidgetImage = NodeJs.Buffer.t;
type metricWidget = string
type metricStreamState = string
type metricStreamOutputFormat = [@as("opentelemetry0.7") #opentelemetry0_7 | @as("json") #json]
type metricStreamName = string
type metricName = string
type metricLabel = string
type metricId = string
type metricExpression = string
type messageDataValue = string
type messageDataCode = string
type message = string
type maxReturnedResultsCount = int;
type maxRecords = int;
type listMetricStreamsMaxResults = int;
type lastModified = Js.Date.t;
type insightRuleUnboundLong = float;
type insightRuleUnboundInteger = int;
type insightRuleUnboundDouble = float;
type insightRuleState = string
type insightRuleSchema = string
type insightRuleOrderBy = string
type insightRuleName = string
type insightRuleMetricName = string
type insightRuleMaxResults = int;
type insightRuleDefinition = string
type insightRuleContributorKeyLabel = string
type insightRuleContributorKey = string
type insightRuleAggregationStatistic = string
type historySummary = string
type historyItemType = [@as("Action") #Action | @as("StateUpdate") #StateUpdate | @as("ConfigurationUpdate") #ConfigurationUpdate]
type historyData = string
type getMetricDataMaxDatapoints = int;
type getMetricDataLabelTimezone = string
type faultDescription = string
type failureResource = string
type failureDescription = string
type failureCode = string
type extendedStatistic = string
type exceptionType = string
type evaluationPeriods = int;
type evaluateLowSampleCountPercentile = string
type errorMessage = string
type dimensionValue = string
type dimensionName = string
type datapointsToAlarm = int;
type datapointValue = float;
type dataPath = string
type dashboardNamePrefix = string
type dashboardName = string
type dashboardErrorMessage = string
type dashboardBody = string
type dashboardArn = string
type comparisonOperator = [@as("GreaterThanUpperThreshold") #GreaterThanUpperThreshold | @as("LessThanLowerThreshold") #LessThanLowerThreshold | @as("LessThanLowerOrGreaterThanUpperThreshold") #LessThanLowerOrGreaterThanUpperThreshold | @as("LessThanOrEqualToThreshold") #LessThanOrEqualToThreshold | @as("LessThanThreshold") #LessThanThreshold | @as("GreaterThanThreshold") #GreaterThanThreshold | @as("GreaterThanOrEqualToThreshold") #GreaterThanOrEqualToThreshold]
type awsQueryErrorMessage = string
type anomalyDetectorStateValue = [@as("TRAINED") #TRAINED | @as("TRAINED_INSUFFICIENT_DATA") #TRAINED_INSUFFICIENT_DATA | @as("PENDING_TRAINING") #PENDING_TRAINING]
type anomalyDetectorMetricTimezone = string
type anomalyDetectorMetricStat = string
type amazonResourceName = string
type alarmType = [@as("MetricAlarm") #MetricAlarm | @as("CompositeAlarm") #CompositeAlarm]
type alarmRule = string
type alarmNamePrefix = string
type alarmName = string
type alarmDescription = string
type alarmArn = string
type actionsEnabled = bool;
type actionPrefix = string
type values = array<datapointValue>
type timestamps = array<amazonawsTimestamp>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type statistics = array<statistic>
type statisticSet = {
@as("Maximum") maximum: option<datapointValue>,
@as("Minimum") minimum: option<datapointValue>,
@as("Sum") sum: option<datapointValue>,
@as("SampleCount") sampleCount: option<datapointValue>
}
type resourceList = array<resourceName>
type range = {
@as("EndTime") endTime: option<amazonawsTimestamp>,
@as("StartTime") startTime: option<amazonawsTimestamp>
}
type partialFailure = {
@as("FailureDescription") failureDescription: failureDescription,
@as("FailureCode") failureCode: failureCode,
@as("ExceptionType") exceptionType: exceptionType,
@as("FailureResource") failureResource: failureResource
}
type metricStreamNames = array<metricStreamName>
type metricStreamFilter = {
@as("Namespace") namespace: namespace
}
type metricStreamEntry = {
@as("OutputFormat") outputFormat: metricStreamOutputFormat,
@as("State") state: metricStreamState,
@as("FirehoseArn") firehoseArn: amazonResourceName,
@as("Name") name: metricStreamName,
@as("LastUpdateDate") lastUpdateDate: amazonawsTimestamp,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("Arn") arn: amazonResourceName
}
type messageData = {
@as("Value") value: messageDataValue,
@as("Code") code: messageDataCode
}
type labelOptions = {
@as("Timezone") timezone: getMetricDataLabelTimezone
}
type insightRuleNames = array<insightRuleName>
type insightRuleMetricList = array<insightRuleMetricName>
type insightRuleMetricDatapoint = {
@as("Maximum") maximum: insightRuleUnboundDouble,
@as("Minimum") minimum: insightRuleUnboundDouble,
@as("Sum") sum: insightRuleUnboundDouble,
@as("Average") average: insightRuleUnboundDouble,
@as("SampleCount") sampleCount: insightRuleUnboundDouble,
@as("MaxContributorValue") maxContributorValue: insightRuleUnboundDouble,
@as("UniqueContributors") uniqueContributors: insightRuleUnboundDouble,
@as("Timestamp") timestamp: option<amazonawsTimestamp>
}
type insightRuleContributorKeys = array<insightRuleContributorKey>
type insightRuleContributorKeyLabels = array<insightRuleContributorKeyLabel>
type insightRuleContributorDatapoint = {
@as("ApproximateValue") approximateValue: option<insightRuleUnboundDouble>,
@as("Timestamp") timestamp: option<amazonawsTimestamp>
}
type insightRule = {
@as("Definition") definition: option<insightRuleDefinition>,
@as("Schema") schema: option<insightRuleSchema>,
@as("State") state: option<insightRuleState>,
@as("Name") name: option<insightRuleName>
}
type extendedStatistics = array<extendedStatistic>
type dimensionFilter = {
@as("Value") value: dimensionValue,
@as("Name") name: option<dimensionName>
}
type dimension = {
@as("Value") value: option<dimensionValue>,
@as("Name") name: option<dimensionName>
}
type datapointValues = array<datapointValue>
type datapointValueMap = Js.Dict.t< datapointValue>
type dashboardValidationMessage = {
@as("Message") message: message,
@as("DataPath") dataPath: dataPath
}
type dashboardNames = array<dashboardName>
type dashboardEntry = {
@as("Size") size: size,
@as("LastModified") lastModified: lastModified,
@as("DashboardArn") dashboardArn: dashboardArn,
@as("DashboardName") dashboardName: dashboardName
}
type counts = array<datapointValue>
type alarmTypes = array<alarmType>
type alarmNames = array<alarmName>
type alarmHistoryItem = {
@as("HistoryData") historyData: historyData,
@as("HistorySummary") historySummary: historySummary,
@as("HistoryItemType") historyItemType: historyItemType,
@as("Timestamp") timestamp: amazonawsTimestamp,
@as("AlarmType") alarmType: alarmType,
@as("AlarmName") alarmName: alarmName
}
type tagList = array<tag>
type metricStreamFilters = array<metricStreamFilter>
type metricStreamEntries = array<metricStreamEntry>
type metricDataResultMessages = array<messageData>
type insightRules = array<insightRule>
type insightRuleMetricDatapoints = array<insightRuleMetricDatapoint>
type insightRuleContributorDatapoints = array<insightRuleContributorDatapoint>
type dimensions = array<dimension>
type dimensionFilters = array<dimensionFilter>
type datapoint = {
@as("ExtendedStatistics") extendedStatistics: datapointValueMap,
@as("Unit") unit: standardUnit,
@as("Maximum") maximum: datapointValue,
@as("Minimum") minimum: datapointValue,
@as("Sum") sum: datapointValue,
@as("Average") average: datapointValue,
@as("SampleCount") sampleCount: datapointValue,
@as("Timestamp") timestamp: amazonawsTimestamp
}
type dashboardValidationMessages = array<dashboardValidationMessage>
type dashboardEntries = array<dashboardEntry>
type compositeAlarm = {
@as("StateValue") stateValue: stateValue,
@as("StateUpdatedTimestamp") stateUpdatedTimestamp: amazonawsTimestamp,
@as("StateReasonData") stateReasonData: stateReasonData,
@as("StateReason") stateReason: stateReason,
@as("OKActions") oKActions: resourceList,
@as("InsufficientDataActions") insufficientDataActions: resourceList,
@as("AlarmRule") alarmRule: alarmRule,
@as("AlarmName") alarmName: alarmName,
@as("AlarmDescription") alarmDescription: alarmDescription,
@as("AlarmConfigurationUpdatedTimestamp") alarmConfigurationUpdatedTimestamp: amazonawsTimestamp,
@as("AlarmArn") alarmArn: alarmArn,
@as("AlarmActions") alarmActions: resourceList,
@as("ActionsEnabled") actionsEnabled: actionsEnabled
}
type batchFailures = array<partialFailure>
type anomalyDetectorExcludedTimeRanges = array<range>
type alarmHistoryItems = array<alarmHistoryItem>
type metricDatum = {
@as("StorageResolution") storageResolution: storageResolution,
@as("Unit") unit: standardUnit,
@as("Counts") counts: counts,
@as("Values") values: values,
@as("StatisticValues") statisticValues: statisticSet,
@as("Value") value: datapointValue,
@as("Timestamp") timestamp: amazonawsTimestamp,
@as("Dimensions") dimensions: dimensions,
@as("MetricName") metricName: option<metricName>
}
type metricDataResult = {
@as("Messages") messages: metricDataResultMessages,
@as("StatusCode") statusCode: statusCode,
@as("Values") values: datapointValues,
@as("Timestamps") timestamps: timestamps,
@as("Label") label: metricLabel,
@as("Id") id: metricId
}
type metric = {
@as("Dimensions") dimensions: dimensions,
@as("MetricName") metricName: metricName,
@as("Namespace") namespace: namespace
}
type insightRuleContributor = {
@as("Datapoints") datapoints: option<insightRuleContributorDatapoints>,
@as("ApproximateAggregateValue") approximateAggregateValue: option<insightRuleUnboundDouble>,
@as("Keys") keys: option<insightRuleContributorKeys>
}
type datapoints = array<datapoint>
type compositeAlarms = array<compositeAlarm>
type anomalyDetectorConfiguration = {
@as("MetricTimezone") metricTimezone: anomalyDetectorMetricTimezone,
@as("ExcludedTimeRanges") excludedTimeRanges: anomalyDetectorExcludedTimeRanges
}
type metrics = array<metric>
type metricStat = {
@as("Unit") unit: standardUnit,
@as("Stat") stat: option<stat>,
@as("Period") period: option<period>,
@as("Metric") metric: option<metric>
}
type metricDataResults = array<metricDataResult>
type metricData = array<metricDatum>
type insightRuleContributors = array<insightRuleContributor>
type anomalyDetector = {
@as("StateValue") stateValue: anomalyDetectorStateValue,
@as("Configuration") configuration: anomalyDetectorConfiguration,
@as("Stat") stat: anomalyDetectorMetricStat,
@as("Dimensions") dimensions: dimensions,
@as("MetricName") metricName: metricName,
@as("Namespace") namespace: namespace
}
type metricDataQuery = {
@as("Period") period: period,
@as("ReturnData") returnData: returnData,
@as("Label") label: metricLabel,
@as("Expression") expression: metricExpression,
@as("MetricStat") metricStat: metricStat,
@as("Id") id: option<metricId>
}
type anomalyDetectors = array<anomalyDetector>
type metricDataQueries = array<metricDataQuery>
type metricAlarm = {
@as("ThresholdMetricId") thresholdMetricId: metricId,
@as("Metrics") metrics: metricDataQueries,
@as("EvaluateLowSampleCountPercentile") evaluateLowSampleCountPercentile: evaluateLowSampleCountPercentile,
@as("TreatMissingData") treatMissingData: treatMissingData,
@as("ComparisonOperator") comparisonOperator: comparisonOperator,
@as("Threshold") threshold: threshold,
@as("DatapointsToAlarm") datapointsToAlarm: datapointsToAlarm,
@as("EvaluationPeriods") evaluationPeriods: evaluationPeriods,
@as("Unit") unit: standardUnit,
@as("Period") period: period,
@as("Dimensions") dimensions: dimensions,
@as("ExtendedStatistic") extendedStatistic: extendedStatistic,
@as("Statistic") statistic: statistic,
@as("Namespace") namespace: namespace,
@as("MetricName") metricName: metricName,
@as("StateUpdatedTimestamp") stateUpdatedTimestamp: amazonawsTimestamp,
@as("StateReasonData") stateReasonData: stateReasonData,
@as("StateReason") stateReason: stateReason,
@as("StateValue") stateValue: stateValue,
@as("InsufficientDataActions") insufficientDataActions: resourceList,
@as("AlarmActions") alarmActions: resourceList,
@as("OKActions") oKActions: resourceList,
@as("ActionsEnabled") actionsEnabled: actionsEnabled,
@as("AlarmConfigurationUpdatedTimestamp") alarmConfigurationUpdatedTimestamp: amazonawsTimestamp,
@as("AlarmDescription") alarmDescription: alarmDescription,
@as("AlarmArn") alarmArn: alarmArn,
@as("AlarmName") alarmName: alarmName
}
type metricAlarms = array<metricAlarm>
type clientType;
@module("@aws-sdk/client-monitoring") @new external createClient: unit => clientType = "CloudWatchClient";
module SetAlarmState = {
  type t;
  type request = {
@as("StateReasonData") stateReasonData: stateReasonData,
@as("StateReason") stateReason: option<stateReason>,
@as("StateValue") stateValue: option<stateValue>,
@as("AlarmName") alarmName: option<alarmName>
}
  
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "SetAlarmStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetMetricWidgetImage = {
  type t;
  type request = {
@as("OutputFormat") outputFormat: outputFormat,
@as("MetricWidget") metricWidget: option<metricWidget>
}
  type response = {
@as("MetricWidgetImage") metricWidgetImage: metricWidgetImage
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "GetMetricWidgetImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDashboard = {
  type t;
  type request = {
@as("DashboardName") dashboardName: option<dashboardName>
}
  type response = {
@as("DashboardName") dashboardName: dashboardName,
@as("DashboardBody") dashboardBody: dashboardBody,
@as("DashboardArn") dashboardArn: dashboardArn
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "GetDashboardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMetricStream = {
  type t;
  type request = {
@as("Name") name: option<metricStreamName>
}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DeleteMetricStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopMetricStreams = {
  type t;
  type request = {
@as("Names") names: option<metricStreamNames>
}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "StopMetricStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMetricStreams = {
  type t;
  type request = {
@as("Names") names: option<metricStreamNames>
}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "StartMetricStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableAlarmActions = {
  type t;
  type request = {
@as("AlarmNames") alarmNames: option<alarmNames>
}
  
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "EnableAlarmActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisableAlarmActions = {
  type t;
  type request = {
@as("AlarmNames") alarmNames: option<alarmNames>
}
  
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DisableAlarmActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDashboards = {
  type t;
  type request = {
@as("DashboardNames") dashboardNames: option<dashboardNames>
}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DeleteDashboardsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAlarms = {
  type t;
  type request = {
@as("AlarmNames") alarmNames: option<alarmNames>
}
  
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DeleteAlarmsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutMetricStream = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("OutputFormat") outputFormat: option<metricStreamOutputFormat>,
@as("RoleArn") roleArn: option<amazonResourceName>,
@as("FirehoseArn") firehoseArn: option<amazonResourceName>,
@as("ExcludeFilters") excludeFilters: metricStreamFilters,
@as("IncludeFilters") includeFilters: metricStreamFilters,
@as("Name") name: option<metricStreamName>
}
  type response = {
@as("Arn") arn: amazonResourceName
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "PutMetricStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutInsightRule = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("RuleDefinition") ruleDefinition: option<insightRuleDefinition>,
@as("RuleState") ruleState: insightRuleState,
@as("RuleName") ruleName: option<insightRuleName>
}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "PutInsightRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutDashboard = {
  type t;
  type request = {
@as("DashboardBody") dashboardBody: option<dashboardBody>,
@as("DashboardName") dashboardName: option<dashboardName>
}
  type response = {
@as("DashboardValidationMessages") dashboardValidationMessages: dashboardValidationMessages
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "PutDashboardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutCompositeAlarm = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("OKActions") oKActions: resourceList,
@as("InsufficientDataActions") insufficientDataActions: resourceList,
@as("AlarmRule") alarmRule: option<alarmRule>,
@as("AlarmName") alarmName: option<alarmName>,
@as("AlarmDescription") alarmDescription: alarmDescription,
@as("AlarmActions") alarmActions: resourceList,
@as("ActionsEnabled") actionsEnabled: actionsEnabled
}
  
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "PutCompositeAlarmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMetricStreams = {
  type t;
  type request = {
@as("MaxResults") maxResults: listMetricStreamsMaxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("Entries") entries: metricStreamEntries,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "ListMetricStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDashboards = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("DashboardNamePrefix") dashboardNamePrefix: dashboardNamePrefix
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("DashboardEntries") dashboardEntries: dashboardEntries
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "ListDashboardsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMetricStream = {
  type t;
  type request = {
@as("Name") name: option<metricStreamName>
}
  type response = {
@as("OutputFormat") outputFormat: metricStreamOutputFormat,
@as("LastUpdateDate") lastUpdateDate: amazonawsTimestamp,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("State") state: metricStreamState,
@as("RoleArn") roleArn: amazonResourceName,
@as("FirehoseArn") firehoseArn: amazonResourceName,
@as("ExcludeFilters") excludeFilters: metricStreamFilters,
@as("IncludeFilters") includeFilters: metricStreamFilters,
@as("Name") name: metricStreamName,
@as("Arn") arn: amazonResourceName
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "GetMetricStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableInsightRules = {
  type t;
  type request = {
@as("RuleNames") ruleNames: option<insightRuleNames>
}
  type response = {
@as("Failures") failures: batchFailures
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "EnableInsightRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableInsightRules = {
  type t;
  type request = {
@as("RuleNames") ruleNames: option<insightRuleNames>
}
  type response = {
@as("Failures") failures: batchFailures
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DisableInsightRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInsightRules = {
  type t;
  type request = {
@as("MaxResults") maxResults: insightRuleMaxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("InsightRules") insightRules: insightRules,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DescribeInsightRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAlarmHistory = {
  type t;
  type request = {
@as("ScanBy") scanBy: scanBy,
@as("NextToken") nextToken: nextToken,
@as("MaxRecords") maxRecords: maxRecords,
@as("EndDate") endDate: amazonawsTimestamp,
@as("StartDate") startDate: amazonawsTimestamp,
@as("HistoryItemType") historyItemType: historyItemType,
@as("AlarmTypes") alarmTypes: alarmTypes,
@as("AlarmName") alarmName: alarmName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AlarmHistoryItems") alarmHistoryItems: alarmHistoryItems
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DescribeAlarmHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInsightRules = {
  type t;
  type request = {
@as("RuleNames") ruleNames: option<insightRuleNames>
}
  type response = {
@as("Failures") failures: batchFailures
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DeleteInsightRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAnomalyDetector = {
  type t;
  type request = {
@as("Stat") stat: option<anomalyDetectorMetricStat>,
@as("Dimensions") dimensions: dimensions,
@as("MetricName") metricName: option<metricName>,
@as("Namespace") namespace: option<namespace>
}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DeleteAnomalyDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAnomalyDetector = {
  type t;
  type request = {
@as("Configuration") configuration: anomalyDetectorConfiguration,
@as("Stat") stat: option<anomalyDetectorMetricStat>,
@as("Dimensions") dimensions: dimensions,
@as("MetricName") metricName: option<metricName>,
@as("Namespace") namespace: option<namespace>
}
  type response = unit
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "PutAnomalyDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMetricStatistics = {
  type t;
  type request = {
@as("Unit") unit: standardUnit,
@as("ExtendedStatistics") extendedStatistics: extendedStatistics,
@as("Statistics") statistics: statistics,
@as("Period") period: option<period>,
@as("EndTime") endTime: option<amazonawsTimestamp>,
@as("StartTime") startTime: option<amazonawsTimestamp>,
@as("Dimensions") dimensions: dimensions,
@as("MetricName") metricName: option<metricName>,
@as("Namespace") namespace: option<namespace>
}
  type response = {
@as("Datapoints") datapoints: datapoints,
@as("Label") label: metricLabel
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "GetMetricStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutMetricData = {
  type t;
  type request = {
@as("MetricData") metricData: option<metricData>,
@as("Namespace") namespace: option<namespace>
}
  
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "PutMetricDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListMetrics = {
  type t;
  type request = {
@as("RecentlyActive") recentlyActive: recentlyActive,
@as("NextToken") nextToken: nextToken,
@as("Dimensions") dimensions: dimensionFilters,
@as("MetricName") metricName: metricName,
@as("Namespace") namespace: namespace
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Metrics") metrics: metrics
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "ListMetricsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInsightRuleReport = {
  type t;
  type request = {
@as("OrderBy") orderBy: insightRuleOrderBy,
@as("Metrics") metrics: insightRuleMetricList,
@as("MaxContributorCount") maxContributorCount: insightRuleUnboundInteger,
@as("Period") period: option<period>,
@as("EndTime") endTime: option<amazonawsTimestamp>,
@as("StartTime") startTime: option<amazonawsTimestamp>,
@as("RuleName") ruleName: option<insightRuleName>
}
  type response = {
@as("MetricDatapoints") metricDatapoints: insightRuleMetricDatapoints,
@as("Contributors") contributors: insightRuleContributors,
@as("ApproximateUniqueCount") approximateUniqueCount: insightRuleUnboundLong,
@as("AggregateValue") aggregateValue: insightRuleUnboundDouble,
@as("AggregationStatistic") aggregationStatistic: insightRuleAggregationStatistic,
@as("KeyLabels") keyLabels: insightRuleContributorKeyLabels
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "GetInsightRuleReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAnomalyDetectors = {
  type t;
  type request = {
@as("Dimensions") dimensions: dimensions,
@as("MetricName") metricName: metricName,
@as("Namespace") namespace: namespace,
@as("MaxResults") maxResults: maxReturnedResultsCount,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AnomalyDetectors") anomalyDetectors: anomalyDetectors
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DescribeAnomalyDetectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutMetricAlarm = {
  type t;
  type request = {
@as("ThresholdMetricId") thresholdMetricId: metricId,
@as("Tags") tags: tagList,
@as("Metrics") metrics: metricDataQueries,
@as("EvaluateLowSampleCountPercentile") evaluateLowSampleCountPercentile: evaluateLowSampleCountPercentile,
@as("TreatMissingData") treatMissingData: treatMissingData,
@as("ComparisonOperator") comparisonOperator: option<comparisonOperator>,
@as("Threshold") threshold: threshold,
@as("DatapointsToAlarm") datapointsToAlarm: datapointsToAlarm,
@as("EvaluationPeriods") evaluationPeriods: option<evaluationPeriods>,
@as("Unit") unit: standardUnit,
@as("Period") period: period,
@as("Dimensions") dimensions: dimensions,
@as("ExtendedStatistic") extendedStatistic: extendedStatistic,
@as("Statistic") statistic: statistic,
@as("Namespace") namespace: namespace,
@as("MetricName") metricName: metricName,
@as("InsufficientDataActions") insufficientDataActions: resourceList,
@as("AlarmActions") alarmActions: resourceList,
@as("OKActions") oKActions: resourceList,
@as("ActionsEnabled") actionsEnabled: actionsEnabled,
@as("AlarmDescription") alarmDescription: alarmDescription,
@as("AlarmName") alarmName: option<alarmName>
}
  
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "PutMetricAlarmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetMetricData = {
  type t;
  type request = {
@as("LabelOptions") labelOptions: labelOptions,
@as("MaxDatapoints") maxDatapoints: getMetricDataMaxDatapoints,
@as("ScanBy") scanBy: scanBy,
@as("NextToken") nextToken: nextToken,
@as("EndTime") endTime: option<amazonawsTimestamp>,
@as("StartTime") startTime: option<amazonawsTimestamp>,
@as("MetricDataQueries") metricDataQueries: option<metricDataQueries>
}
  type response = {
@as("Messages") messages: metricDataResultMessages,
@as("NextToken") nextToken: nextToken,
@as("MetricDataResults") metricDataResults: metricDataResults
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "GetMetricDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAlarmsForMetric = {
  type t;
  type request = {
@as("Unit") unit: standardUnit,
@as("Period") period: period,
@as("Dimensions") dimensions: dimensions,
@as("ExtendedStatistic") extendedStatistic: extendedStatistic,
@as("Statistic") statistic: statistic,
@as("Namespace") namespace: option<namespace>,
@as("MetricName") metricName: option<metricName>
}
  type response = {
@as("MetricAlarms") metricAlarms: metricAlarms
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DescribeAlarmsForMetricCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAlarms = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxRecords") maxRecords: maxRecords,
@as("ActionPrefix") actionPrefix: actionPrefix,
@as("StateValue") stateValue: stateValue,
@as("ParentsOfAlarmName") parentsOfAlarmName: alarmName,
@as("ChildrenOfAlarmName") childrenOfAlarmName: alarmName,
@as("AlarmTypes") alarmTypes: alarmTypes,
@as("AlarmNamePrefix") alarmNamePrefix: alarmNamePrefix,
@as("AlarmNames") alarmNames: alarmNames
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("MetricAlarms") metricAlarms: metricAlarms,
@as("CompositeAlarms") compositeAlarms: compositeAlarms
}
  @module("@aws-sdk/client-monitoring") @new external new_: (Js.Promise.t<request>) => t = "DescribeAlarmsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
