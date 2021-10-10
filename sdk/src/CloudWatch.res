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
@ocaml.doc("<p>A key-value pair associated with a CloudWatch resource.</p>")
type tag = {
  @ocaml.doc("<p>The value for the specified tag key.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>A string that you can use to assign a value. The combination of tag keys and values can help you organize and categorize your 
		resources.</p>")
  @as("Key")
  key: tagKey,
}
type statistics = array<statistic>
@ocaml.doc("<p>Represents a set of statistics that describes a specific metric. </p>")
type statisticSet = {
  @ocaml.doc("<p>The maximum value of the sample set.</p>") @as("Maximum") maximum: datapointValue,
  @ocaml.doc("<p>The minimum value of the sample set.</p>") @as("Minimum") minimum: datapointValue,
  @ocaml.doc("<p>The sum of values for the sample set.</p>") @as("Sum") sum: datapointValue,
  @ocaml.doc("<p>The number of samples used for the statistic set.</p>") @as("SampleCount")
  sampleCount: datapointValue,
}
type resourceList = array<resourceName>
@ocaml.doc("<p>Specifies one range of days or times to exclude from use for training an
		anomaly detection model.</p>")
type range = {
  @ocaml.doc("<p>The end time of the range to exclude. The format is <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, 
			<code>2019-07-01T23:59:59</code>.</p>")
  @as("EndTime")
  endTime: timestamp_,
  @ocaml.doc("<p>The start time of the range to exclude. The format is <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, 
			<code>2019-07-01T23:59:59</code>.</p>")
  @as("StartTime")
  startTime: timestamp_,
}
@ocaml.doc("<p>This array is empty if the API operation was successful for all the rules specified in the request. If the operation could
		not process one of the rules, the following data is returned for each of those rules.</p>")
type partialFailure = {
  @ocaml.doc("<p>A description of the error.</p>") @as("FailureDescription")
  failureDescription: option<failureDescription>,
  @ocaml.doc("<p>The code of the error.</p>") @as("FailureCode") failureCode: option<failureCode>,
  @ocaml.doc("<p>The type of error.</p>") @as("ExceptionType") exceptionType: option<exceptionType>,
  @ocaml.doc("<p>The specified rule that could not be deleted.</p>") @as("FailureResource")
  failureResource: option<failureResource>,
}
type metricStreamNames = array<metricStreamName>
@ocaml.doc("<p>This structure contains the name of one of the metric namespaces that is listed in
		a filter of a metric stream.</p>")
type metricStreamFilter = {
  @ocaml.doc("<p>The name of the metric namespace in the filter.</p>") @as("Namespace")
  namespace: option<namespace>,
}
@ocaml.doc("<p>This structure contains the configuration information about one metric stream.</p>")
type metricStreamEntry = {
  @ocaml.doc("<p>The output format of this metric stream. Valid values are 
			<code>json</code>
			and <code>opentelemetry0.7</code>.</p>")
  @as("OutputFormat")
  outputFormat: option<metricStreamOutputFormat>,
  @ocaml.doc(
    "<p>The current state of this stream. Valid values are <code>running</code> and <code>stopped</code>.</p>"
  )
  @as("State")
  state: option<metricStreamState>,
  @ocaml.doc(
    "<p>The ARN of the Kinesis Firehose devlivery stream that is used for this metric stream.</p>"
  )
  @as("FirehoseArn")
  firehoseArn: option<amazonResourceName>,
  @ocaml.doc("<p>The name of the metric stream.</p>") @as("Name") name: option<metricStreamName>,
  @ocaml.doc(
    "<p>The date that the configuration of this metric stream was most recently updated.</p>"
  )
  @as("LastUpdateDate")
  lastUpdateDate: option<timestamp_>,
  @ocaml.doc("<p>The date that the metric stream was originally created.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The ARN of the metric stream.</p>") @as("Arn") arn: option<amazonResourceName>,
}
@ocaml.doc(
  "<p>A message returned by the <code>GetMetricData</code>API, including a code and a description.</p>"
)
type messageData = {
  @ocaml.doc("<p>The message text.</p>") @as("Value") value: option<messageDataValue>,
  @ocaml.doc("<p>The error code or status code associated with the message.</p>") @as("Code")
  code: option<messageDataCode>,
}
@ocaml.doc("<p>This structure includes the <code>Timezone</code> parameter, which you can use
			to specify your time zone so that the labels that are associated with returned metrics display the 
			correct time
			for your time zone. </p>
		       <p>The <code>Timezone</code> value affects a label only if you have a time-based
		dynamic expression in the label. For more information about dynamic expressions in labels, 
		see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html\">Using Dynamic Labels</a>.</p>")
type labelOptions = {
  @ocaml.doc("<p>The time zone to use for metric data return in this operation. 
			The format is <code>+</code> or <code>-</code> followed by four digits. 
			The first two digits indicate the number of hours ahead or behind of UTC, and 
			the final two digits are the number of minutes. For example, +0130 indicates a time zone that is 1 hour 
			and 30 minutes ahead of UTC. The default is +0000. </p>")
  @as("Timezone")
  timezone: option<getMetricDataLabelTimezone>,
}
type insightRuleNames = array<insightRuleName>
type insightRuleMetricList = array<insightRuleMetricName>
@ocaml.doc("<p>One data point from the metric time series returned in a Contributor Insights rule report.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetInsightRuleReport.html\">GetInsightRuleReport</a>.</p>")
type insightRuleMetricDatapoint = {
  @ocaml.doc("<p>The maximum value from a single occurence from a single contributor during the time period represented by that data point.</p>
		       <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>")
  @as("Maximum")
  maximum: option<insightRuleUnboundDouble>,
  @ocaml.doc("<p>The minimum value from a single contributor during the time period represented by that data point.</p>
		       <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>")
  @as("Minimum")
  minimum: option<insightRuleUnboundDouble>,
  @ocaml.doc("<p>The sum of the values from all contributors during the time period represented by that data point.</p>
		       <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>")
  @as("Sum")
  sum: option<insightRuleUnboundDouble>,
  @ocaml.doc("<p>The average value from all contributors during the time period represented by that data point.</p>
		       <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>")
  @as("Average")
  average: option<insightRuleUnboundDouble>,
  @ocaml.doc("<p>The number of occurrences that matched the rule during this data point.</p>
		       <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>")
  @as("SampleCount")
  sampleCount: option<insightRuleUnboundDouble>,
  @ocaml.doc("<p>The maximum value provided by one contributor during this timestamp. Each timestamp is evaluated separately, 
			so the identity of the max contributor
		could be different for each timestamp.</p>
		       <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>")
  @as("MaxContributorValue")
  maxContributorValue: option<insightRuleUnboundDouble>,
  @ocaml.doc("<p>The number of unique contributors who published data during this timestamp.</p>
		       <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>")
  @as("UniqueContributors")
  uniqueContributors: option<insightRuleUnboundDouble>,
  @ocaml.doc("<p>The timestamp of the data point.</p>") @as("Timestamp") timestamp_: timestamp_,
}
type insightRuleContributorKeys = array<insightRuleContributorKey>
type insightRuleContributorKeyLabels = array<insightRuleContributorKeyLabel>
@ocaml.doc("<p>One data point related to one contributor.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetInsightRuleReport.html\">GetInsightRuleReport</a> and 
			<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_InsightRuleContributor.html\">InsightRuleContributor</a>.</p>")
type insightRuleContributorDatapoint = {
  @ocaml.doc("<p>The approximate value that this contributor added during this timestamp.</p>")
  @as("ApproximateValue")
  approximateValue: insightRuleUnboundDouble,
  @ocaml.doc("<p>The timestamp of the data point.</p>") @as("Timestamp") timestamp_: timestamp_,
}
@ocaml.doc("<p>This structure contains the definition for a Contributor Insights rule.</p>")
type insightRule = {
  @ocaml.doc("<p>The definition of the rule, as a JSON object. The definition contains the keywords used to define contributors, 
			the value to aggregate on if this rule returns a sum instead of a count, and the filters. For details on the valid syntax, see 
			<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html\">Contributor Insights
				Rule Syntax</a>.</p>")
  @as("Definition")
  definition: insightRuleDefinition,
  @ocaml.doc("<p>For rules that you create, this is always <code>{\"Name\": \"CloudWatchLogRule\", \"Version\": 1}</code>. For built-in rules, 
			this is <code>{\"Name\": \"ServiceLogRule\", \"Version\": 1}</code>
         </p>")
  @as("Schema")
  schema: insightRuleSchema,
  @ocaml.doc("<p>Indicates whether the rule is enabled or disabled.</p>") @as("State")
  state: insightRuleState,
  @ocaml.doc("<p>The name of the rule.</p>") @as("Name") name: insightRuleName,
}
type extendedStatistics = array<extendedStatistic>
@ocaml.doc("<p>Represents filters for a dimension.</p>")
type dimensionFilter = {
  @ocaml.doc("<p>The value of the dimension to be matched.</p>") @as("Value")
  value: option<dimensionValue>,
  @ocaml.doc("<p>The dimension name to be matched.</p>") @as("Name") name: dimensionName,
}
@ocaml.doc("<p>A dimension is a name/value pair that is part of the identity of a metric. You 
			can assign up to 10 dimensions to a metric. Because dimensions are part of the unique 
			identifier for a metric, whenever you add a unique name/value pair to one of 
			your metrics, you are creating a new variation of that metric. </p>")
type dimension = {
  @ocaml.doc("<p>The value of the dimension. Dimension values cannot contain blank spaces 
			or non-ASCII characters.</p>")
  @as("Value")
  value: dimensionValue,
  @ocaml.doc("<p>The name of the dimension. Dimension names cannot contain blank spaces or non-ASCII
		characters.</p>")
  @as("Name")
  name: dimensionName,
}
type datapointValues = array<datapointValue>
type datapointValueMap = Js.Dict.t<datapointValue>
@ocaml.doc("<p>An error or warning for the operation.</p>")
type dashboardValidationMessage = {
  @ocaml.doc("<p>A message describing the error or warning.</p>") @as("Message")
  message: option<message>,
  @ocaml.doc("<p>The data path related to the message.</p>") @as("DataPath")
  dataPath: option<dataPath>,
}
type dashboardNames = array<dashboardName>
@ocaml.doc("<p>Represents a specific dashboard.</p>")
type dashboardEntry = {
  @ocaml.doc("<p>The size of the dashboard, in bytes.</p>") @as("Size") size: option<size>,
  @ocaml.doc("<p>The time stamp of when the dashboard was last modified, either by an API call or
			through the console. This number is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>")
  @as("LastModified")
  lastModified: option<lastModified>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dashboard.</p>") @as("DashboardArn")
  dashboardArn: option<dashboardArn>,
  @ocaml.doc("<p>The name of the dashboard.</p>") @as("DashboardName")
  dashboardName: option<dashboardName>,
}
type counts = array<datapointValue>
type alarmTypes = array<alarmType>
type alarmNames = array<alarmName>
@ocaml.doc("<p>Represents the history of a specific alarm.</p>")
type alarmHistoryItem = {
  @ocaml.doc("<p>Data about the alarm, in JSON format.</p>") @as("HistoryData")
  historyData: option<historyData>,
  @ocaml.doc("<p>A summary of the alarm history, in text format.</p>") @as("HistorySummary")
  historySummary: option<historySummary>,
  @ocaml.doc("<p>The type of alarm history item.</p>") @as("HistoryItemType")
  historyItemType: option<historyItemType>,
  @ocaml.doc("<p>The time stamp for the alarm history item.</p>") @as("Timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>The type of alarm, either metric alarm or composite alarm.</p>") @as("AlarmType")
  alarmType: option<alarmType>,
  @ocaml.doc("<p>The descriptive name for the alarm.</p>") @as("AlarmName")
  alarmName: option<alarmName>,
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
@ocaml.doc("<p>Encapsulates the statistical data that CloudWatch computes from metric data.</p>")
type datapoint = {
  @ocaml.doc("<p>The percentile statistic for the data point.</p>") @as("ExtendedStatistics")
  extendedStatistics: option<datapointValueMap>,
  @ocaml.doc("<p>The standard unit for the data point.</p>") @as("Unit")
  unit_: option<standardUnit>,
  @ocaml.doc("<p>The maximum metric value for the data point.</p>") @as("Maximum")
  maximum: option<datapointValue>,
  @ocaml.doc("<p>The minimum metric value for the data point.</p>") @as("Minimum")
  minimum: option<datapointValue>,
  @ocaml.doc("<p>The sum of the metric values for the data point.</p>") @as("Sum")
  sum: option<datapointValue>,
  @ocaml.doc("<p>The average of the metric values that correspond to the data point.</p>")
  @as("Average")
  average: option<datapointValue>,
  @ocaml.doc("<p>The number of metric values that contributed to the aggregate value of this
			data point.</p>")
  @as("SampleCount")
  sampleCount: option<datapointValue>,
  @ocaml.doc("<p>The time stamp used for the data point.</p>") @as("Timestamp")
  timestamp_: option<timestamp_>,
}
type dashboardValidationMessages = array<dashboardValidationMessage>
type dashboardEntries = array<dashboardEntry>
@ocaml.doc("<p>The details about a composite alarm.</p>")
type compositeAlarm = {
  @ocaml.doc("<p>The state value for the alarm.</p>") @as("StateValue")
  stateValue: option<stateValue>,
  @ocaml.doc("<p>The time stamp of the last update to the alarm state.</p>")
  @as("StateUpdatedTimestamp")
  stateUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>An explanation for the alarm state, in JSON format.</p>") @as("StateReasonData")
  stateReasonData: option<stateReasonData>,
  @ocaml.doc("<p>An explanation for the alarm state, in text format.</p>") @as("StateReason")
  stateReason: option<stateReason>,
  @ocaml.doc(
    "<p>The actions to execute when this alarm transitions to the OK state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>"
  )
  @as("OKActions")
  okactions: option<resourceList>,
  @ocaml.doc(
    "<p>The actions to execute when this alarm transitions to the INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>"
  )
  @as("InsufficientDataActions")
  insufficientDataActions: option<resourceList>,
  @ocaml.doc("<p>The rule that this alarm uses to evaluate its alarm state.</p>") @as("AlarmRule")
  alarmRule: option<alarmRule>,
  @ocaml.doc("<p>The name of the alarm.</p>") @as("AlarmName") alarmName: option<alarmName>,
  @ocaml.doc("<p>The description of the alarm.</p>") @as("AlarmDescription")
  alarmDescription: option<alarmDescription>,
  @ocaml.doc("<p>The time stamp of the last update to the alarm configuration.</p>")
  @as("AlarmConfigurationUpdatedTimestamp")
  alarmConfigurationUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the alarm.</p>") @as("AlarmArn")
  alarmArn: option<alarmArn>,
  @ocaml.doc(
    "<p>The actions to execute when this alarm transitions to the ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>"
  )
  @as("AlarmActions")
  alarmActions: option<resourceList>,
  @ocaml.doc(
    "<p>Indicates whether actions should be executed during any changes to the alarm state.</p>"
  )
  @as("ActionsEnabled")
  actionsEnabled: option<actionsEnabled>,
}
type batchFailures = array<partialFailure>
type anomalyDetectorExcludedTimeRanges = array<range>
type alarmHistoryItems = array<alarmHistoryItem>
@ocaml.doc("<p>Encapsulates the information sent to either create a metric or add new values
			to be aggregated into an existing metric.</p>")
type metricDatum = {
  @ocaml.doc("<p>Valid values are 1 and 60. Setting this to 1 specifies this metric as a high-resolution metric, so that CloudWatch stores the metric with 
			sub-minute resolution down to one second.
		Setting this to 60 specifies this metric as a regular-resolution metric, which CloudWatch stores at 1-minute resolution. Currently, high resolution is available
		only for custom metrics. For more information about high-resolution metrics, 
			see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html#high-resolution-metrics\">High-Resolution Metrics</a> in the
			<i>Amazon CloudWatch User Guide</i>.
		</p>
	        <p>This field is optional, if you do not specify it the default of 60 is used.</p>")
  @as("StorageResolution")
  storageResolution: option<storageResolution>,
  @ocaml.doc("<p>When you are using a <code>Put</code> operation, this defines what unit you want to use when storing the metric.</p>
		       <p>In 
		a <code>Get</code> operation, this displays the unit that is used for the metric.</p>")
  @as("Unit")
  unit_: option<standardUnit>,
  @ocaml.doc("<p>Array of numbers that is used along with the <code>Values</code> array. Each number in the <code>Count</code> array 
			is the number of times the corresponding value in the <code>Values</code> array occurred during the period. </p>
		       <p>If you omit the <code>Counts</code> array, the default of 1 is used as the value for each count. If you
		include a <code>Counts</code> array, it must include the same amount of values as the <code>Values</code> array.</p>")
  @as("Counts")
  counts: option<counts>,
  @ocaml.doc("<p>Array of numbers representing the values for the metric during the period. Each unique value is listed just once
		in this array, and the corresponding number in the <code>Counts</code> array specifies the number of times that value occurred during the period.
		You can include up to 150 unique values in each <code>PutMetricData</code> action that specifies a <code>Values</code> array.</p>
		       <p>Although the <code>Values</code> array accepts numbers of type
			<code>Double</code>, CloudWatch rejects values that are either too small
			or too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity,
			-Infinity) are not supported.</p>")
  @as("Values")
  values: option<values>,
  @ocaml.doc("<p>The statistical values for the metric.</p>") @as("StatisticValues")
  statisticValues: option<statisticSet>,
  @ocaml.doc("<p>The value for the metric.</p>
		       <p>Although the parameter accepts numbers of type Double, CloudWatch rejects values that are either too small or
			too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity, -Infinity)
			are not supported.</p>")
  @as("Value")
  value: option<datapointValue>,
  @ocaml.doc(
    "<p>The time the metric data was received, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>"
  )
  @as("Timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>The dimensions associated with the metric.</p>") @as("Dimensions")
  dimensions: option<dimensions>,
  @ocaml.doc("<p>The name of the metric.</p>") @as("MetricName") metricName: metricName,
}
@ocaml.doc("<p>A <code>GetMetricData</code> call returns an array of <code>MetricDataResult</code>
			structures. Each of these structures includes the data points for that metric, along
			with the timestamps of those data points and other identifying information.</p>")
type metricDataResult = {
  @ocaml.doc("<p>A list of messages with additional information about the data returned.</p>")
  @as("Messages")
  messages: option<metricDataResultMessages>,
  @ocaml.doc("<p>The status of the returned data. <code>Complete</code> indicates that all data points in the requested time range were returned. 
			<code>PartialData</code> means that an incomplete set of data points were returned. 
					You can use the <code>NextToken</code> value that was returned and repeat your request to get more data points. 
			<code>NextToken</code> is not returned if you are performing a math expression. <code>InternalError</code>  
			indicates that an error occurred. Retry your request using <code>NextToken</code>, if present.</p>")
  @as("StatusCode")
  statusCode: option<statusCode>,
  @ocaml.doc("<p>The data points for the metric corresponding to <code>Timestamps</code>. The number of
			values always matches the number of timestamps and the timestamp for Values[x] is
			Timestamps[x].</p>")
  @as("Values")
  values: option<datapointValues>,
  @ocaml.doc("<p>The timestamps for the data points, formatted in Unix timestamp format. The number of
			timestamps always matches the number of values and the value for Timestamps[x] is
			Values[x].</p>")
  @as("Timestamps")
  timestamps: option<timestamps>,
  @ocaml.doc("<p>The human-readable label associated with the data.</p>") @as("Label")
  label: option<metricLabel>,
  @ocaml.doc("<p>The short name you specified to represent this metric.</p>") @as("Id")
  id: option<metricId>,
}
@ocaml.doc("<p>Represents a specific metric.</p>")
type metric = {
  @ocaml.doc("<p>The dimensions for the metric.</p>") @as("Dimensions")
  dimensions: option<dimensions>,
  @ocaml.doc("<p>The name of the metric. This is a required field.</p>") @as("MetricName")
  metricName: option<metricName>,
  @ocaml.doc("<p>The namespace of the metric.</p>") @as("Namespace") namespace: option<namespace>,
}
@ocaml.doc("<p>One of the unique contributors found by a Contributor Insights rule. If the rule contains multiple keys, then
			a unique contributor is a unique combination of values from all the keys in the rule.</p>
		       <p>If the rule contains a single key, then each unique contributor is each unique value for this key.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetInsightRuleReport.html\">GetInsightRuleReport</a>.</p>")
type insightRuleContributor = {
  @ocaml.doc(
    "<p>An array of the data points where this contributor is present. Only the data points when this contributor appeared are included in the array.</p>"
  )
  @as("Datapoints")
  datapoints: insightRuleContributorDatapoints,
  @ocaml.doc("<p>An approximation of the aggregate value that comes from this contributor.</p>")
  @as("ApproximateAggregateValue")
  approximateAggregateValue: insightRuleUnboundDouble,
  @ocaml.doc(
    "<p>One of the log entry field keywords that is used to define contributors for this rule.</p>"
  )
  @as("Keys")
  keys: insightRuleContributorKeys,
}
type datapoints = array<datapoint>
type compositeAlarms = array<compositeAlarm>
@ocaml.doc("<p>The configuration specifies details about how the anomaly detection model is to be trained,
			including time ranges to exclude from use for training the model and the time zone to
			use for the metric.</p>")
type anomalyDetectorConfiguration = {
  @ocaml.doc("<p>The time zone to use for the metric. This is useful to enable the model to automatically
			account for daylight savings time changes if the metric is sensitive to such time
			changes.</p>
		       <p>To specify a time zone, use the name of the time zone as specified in the standard tz database. For more information, 
			see <a href=\"https://en.wikipedia.org/wiki/Tz_database\">tz database</a>.</p>")
  @as("MetricTimezone")
  metricTimezone: option<anomalyDetectorMetricTimezone>,
  @ocaml.doc("<p>An array of time ranges to exclude from use when the anomaly detection model is trained. Use
			this to make sure that events that could cause unusual values for the metric, such as
			deployments, aren't used when CloudWatch creates the model.</p>")
  @as("ExcludedTimeRanges")
  excludedTimeRanges: option<anomalyDetectorExcludedTimeRanges>,
}
type metrics = array<metric>
@ocaml.doc(
  "<p>This structure defines the metric to be returned, along with the statistics, period, and units.</p>"
)
type metricStat = {
  @ocaml.doc("<p>When you are using a <code>Put</code> operation, this defines what unit you want to use when storing the metric.</p>
		       <p>In a <code>Get</code> operation, if you omit <code>Unit</code> then all data that was collected with any unit is returned, along with the corresponding units that were specified
			when the data was reported to CloudWatch. If you specify a unit, the operation returns only data that was collected with that unit specified.
			If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.</p>")
  @as("Unit")
  unit_: option<standardUnit>,
  @ocaml.doc(
    "<p>The statistic to return. It can include any CloudWatch statistic or extended statistic.</p>"
  )
  @as("Stat")
  stat: stat,
  @ocaml.doc("<p>The granularity, in seconds, of the returned data points. For metrics with regular resolution, a period can
			be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected
			at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics
			are those metrics stored by a <code>PutMetricData</code> call that includes a <code>StorageResolution</code> of 1 second.</p>
			      <p>If the <code>StartTime</code> parameter specifies a time stamp that is greater than
				3 hours ago, you must specify the period as follows or no data points in that time range is returned:</p>
			      <ul>
            <li>
               <p>Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds (1 minute).</p>
            </li>
            <li>
               <p>Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).</p>
            </li>
            <li>
               <p>Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).</p>
            </li>
         </ul>")
  @as("Period")
  period: period,
  @ocaml.doc("<p>The metric to return, including the metric name, namespace, and dimensions.</p>")
  @as("Metric")
  metric: metric,
}
type metricDataResults = array<metricDataResult>
type metricData = array<metricDatum>
type insightRuleContributors = array<insightRuleContributor>
@ocaml.doc("<p>An anomaly detection model associated with a particular CloudWatch metric and statistic. You
			can use the model to display a band of expected normal values when the metric is
			graphed.</p>")
type anomalyDetector = {
  @ocaml.doc("<p>The current status of the anomaly detector's training. The possible values are <code>TRAINED | PENDING_TRAINING | TRAINED_INSUFFICIENT_DATA</code>
         </p>")
  @as("StateValue")
  stateValue: option<anomalyDetectorStateValue>,
  @ocaml.doc("<p>The configuration specifies details about how the 
		anomaly detection model is to be trained, including time ranges to 
		exclude from use for training the model, and the time zone to use for 
		the metric.</p>")
  @as("Configuration")
  configuration: option<anomalyDetectorConfiguration>,
  @ocaml.doc("<p>The statistic associated with the anomaly detection model.</p>") @as("Stat")
  stat: option<anomalyDetectorMetricStat>,
  @ocaml.doc("<p>The metric dimensions associated with the anomaly detection model.</p>")
  @as("Dimensions")
  dimensions: option<dimensions>,
  @ocaml.doc("<p>The name of the metric associated with the anomaly detection model.</p>")
  @as("MetricName")
  metricName: option<metricName>,
  @ocaml.doc("<p>The namespace of the metric associated with the anomaly detection model.</p>")
  @as("Namespace")
  namespace: option<namespace>,
}
@ocaml.doc("<p>This structure is used in both <code>GetMetricData</code> and <code>PutMetricAlarm</code>. The supported
			use of this structure is different for those two operations.</p>
		       <p>When used in <code>GetMetricData</code>, it indicates the metric data to return, and whether this call is just retrieving
			a batch set of data for one metric, or is performing a math expression on metric data. A
			single <code>GetMetricData</code> call can include up to 500 <code>MetricDataQuery</code>
			structures.</p>
		       <p>When used in <code>PutMetricAlarm</code>, it enables you to create an alarm based on a
			metric math expression. Each <code>MetricDataQuery</code> in the array specifies either
			a metric to retrieve, or a math expression to be performed on retrieved metrics. A
			single <code>PutMetricAlarm</code> call can include up to 20
				<code>MetricDataQuery</code> structures in the array. The 20 structures can include
			as many as 10 structures that contain a <code>MetricStat</code> parameter to retrieve a
			metric, and as many as 10 structures that contain the <code>Expression</code> parameter
			to perform a math expression. Of those <code>Expression</code> structures, one must have <code>True</code>
		as the value for <code>ReturnData</code>. The result of this expression is the value the alarm watches.</p>

		       <p>Any expression used in a <code>PutMetricAlarm</code>
			operation must return a single time series. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax\">Metric Math Syntax and Functions</a> in the <i>Amazon CloudWatch User
				Guide</i>.</p>

		       <p>Some of the parameters of this structure also have different uses whether you are using this structure in a <code>GetMetricData</code>
			operation or a <code>PutMetricAlarm</code> operation. These differences are explained in the following parameter list.</p>")
type metricDataQuery = {
  @ocaml.doc("<p>The granularity, in seconds, of the returned data points. For metrics with regular resolution, a 
			period can be as short as one minute (60 seconds) and must be a multiple of 60. 
			For high-resolution metrics that are collected at intervals of less than one minute, 
			the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those metrics 
			stored by a <code>PutMetricData</code> operation that includes a <code>StorageResolution of 1 second</code>.</p>")
  @as("Period")
  period: option<period>,
  @ocaml.doc("<p>When used in <code>GetMetricData</code>, this option indicates whether to return the
			timestamps and raw data values of this metric. If you are performing this call just to
			do math expressions and do not also need the raw data returned, you can specify
				<code>False</code>. If you omit this, the default of <code>True</code> is
			used.</p>
		       <p>When used in <code>PutMetricAlarm</code>, specify <code>True</code> for the one expression result to use as the alarm. For all 
		other metrics and expressions in the same <code>PutMetricAlarm</code> operation, specify <code>ReturnData</code> as False.</p>")
  @as("ReturnData")
  returnData: option<returnData>,
  @ocaml.doc("<p>A human-readable label for this metric or expression. This is especially useful 
			if this is an expression, so that you know
			what the value represents. If the metric or expression is shown in a 
			CloudWatch dashboard widget, the label is shown. If Label is omitted, CloudWatch 
			generates a default.</p>
		       <p>You can put dynamic expressions into a label, so that it is more descriptive. 
			For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html\">Using Dynamic Labels</a>.</p>")
  @as("Label")
  label: option<metricLabel>,
  @ocaml.doc("<p>The math expression to be performed on the returned data, if this object is performing a math expression. This expression
			can use the <code>Id</code> of the other metrics to refer to those metrics, and can also use the <code>Id</code> of other 
			expressions to use the result of those expressions. For more information about metric math expressions, see 
			<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax\">Metric Math Syntax and Functions</a> in the
			<i>Amazon CloudWatch User Guide</i>.</p>
		       <p>Within each MetricDataQuery object, you must specify either 
			<code>Expression</code> or <code>MetricStat</code> but not both.</p>")
  @as("Expression")
  expression: option<metricExpression>,
  @ocaml.doc("<p>The metric to be returned, along with statistics, period, and units. Use this parameter only if this object is retrieving a metric 
			and not performing a math expression on returned data.</p>
		       <p>Within one MetricDataQuery object, you must specify either 
			<code>Expression</code> or <code>MetricStat</code> but not both.</p>")
  @as("MetricStat")
  metricStat: option<metricStat>,
  @ocaml.doc("<p>A short name used to tie this object to the results in the response. This name must be
			unique within a single call to <code>GetMetricData</code>. If you are performing math
			expressions on this set of data, this name represents that data and can serve as a
			variable in the mathematical expression. The valid characters are letters, numbers, and
			underscore. The first character must be a lowercase letter.</p>")
  @as("Id")
  id: metricId,
}
type anomalyDetectors = array<anomalyDetector>
type metricDataQueries = array<metricDataQuery>
@ocaml.doc("<p>The details about a metric alarm.</p>")
type metricAlarm = {
  @ocaml.doc("<p>In an alarm based on an anomaly detection model, this is the ID of the 
			<code>ANOMALY_DETECTION_BAND</code> function 
			used as the threshold for the alarm.</p>")
  @as("ThresholdMetricId")
  thresholdMetricId: option<metricId>,
  @ocaml.doc("<p>An array of MetricDataQuery structures, used in an alarm based on a 
			metric math expression. Each structure either retrieves a 
			metric or performs a math expression.
			
			One item in the Metrics array is the math expression that the alarm watches. 
			This expression by designated by having <code>ReturnData</code> set to
			true.</p>")
  @as("Metrics")
  metrics: option<metricDataQueries>,
  @ocaml.doc("<p>Used only for alarms based on percentiles. If <code>ignore</code>, the alarm state does not change 
			during periods with too few data points to be statistically significant. If <code>evaluate</code> or this 
			parameter is not used, the alarm is always evaluated and possibly changes state no matter 
			how many data points are available.</p>")
  @as("EvaluateLowSampleCountPercentile")
  evaluateLowSampleCountPercentile: option<evaluateLowSampleCountPercentile>,
  @ocaml.doc(
    "<p>Sets how this alarm is to handle missing data points. If this parameter is omitted, the default behavior of <code>missing</code> is used.</p>"
  )
  @as("TreatMissingData")
  treatMissingData: option<treatMissingData>,
  @ocaml.doc("<p>The arithmetic operation to use when comparing the specified
			statistic and threshold. The specified statistic value is used as the first operand.</p>")
  @as("ComparisonOperator")
  comparisonOperator: option<comparisonOperator>,
  @ocaml.doc("<p>The value to compare with the specified statistic.</p>") @as("Threshold")
  threshold: option<threshold>,
  @ocaml.doc("<p>The number of data points that must be breaching to trigger the alarm.</p>")
  @as("DatapointsToAlarm")
  datapointsToAlarm: option<datapointsToAlarm>,
  @ocaml.doc("<p>The number of periods over which data is compared to the specified threshold.</p>")
  @as("EvaluationPeriods")
  evaluationPeriods: option<evaluationPeriods>,
  @ocaml.doc("<p>The unit of the metric associated with the alarm.</p>") @as("Unit")
  unit_: option<standardUnit>,
  @ocaml.doc("<p>The period, in seconds, over which the statistic is applied.</p>") @as("Period")
  period: option<period>,
  @ocaml.doc("<p>The dimensions for the metric associated with the alarm.</p>") @as("Dimensions")
  dimensions: option<dimensions>,
  @ocaml.doc("<p>The percentile statistic for the metric associated with the alarm. Specify a value between
			p0.0 and p100.</p>")
  @as("ExtendedStatistic")
  extendedStatistic: option<extendedStatistic>,
  @ocaml.doc("<p>The statistic for the metric associated with the alarm, other than percentile.
		    For percentile statistics, use <code>ExtendedStatistic</code>.</p>")
  @as("Statistic")
  statistic: option<statistic>,
  @ocaml.doc("<p>The namespace of the metric associated with the alarm.</p>") @as("Namespace")
  namespace: option<namespace>,
  @ocaml.doc("<p>The name of the metric associated with the alarm, if this is an alarm
		based on a single metric.</p>")
  @as("MetricName")
  metricName: option<metricName>,
  @ocaml.doc("<p>The time stamp of the last update to the alarm state.</p>")
  @as("StateUpdatedTimestamp")
  stateUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>An explanation for the alarm state, in JSON format.</p>") @as("StateReasonData")
  stateReasonData: option<stateReasonData>,
  @ocaml.doc("<p>An explanation for the alarm state, in text format.</p>") @as("StateReason")
  stateReason: option<stateReason>,
  @ocaml.doc("<p>The state value for the alarm.</p>") @as("StateValue")
  stateValue: option<stateValue>,
  @ocaml.doc("<p>The actions to execute when this alarm transitions to the <code>INSUFFICIENT_DATA</code> state 
			from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>")
  @as("InsufficientDataActions")
  insufficientDataActions: option<resourceList>,
  @ocaml.doc("<p>The actions to execute when this alarm transitions to the <code>ALARM</code> state 
			from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>")
  @as("AlarmActions")
  alarmActions: option<resourceList>,
  @ocaml.doc("<p>The actions to execute when this alarm transitions to the <code>OK</code> state
			from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>")
  @as("OKActions")
  okactions: option<resourceList>,
  @ocaml.doc(
    "<p>Indicates whether actions should be executed during any changes to the alarm state.</p>"
  )
  @as("ActionsEnabled")
  actionsEnabled: option<actionsEnabled>,
  @ocaml.doc("<p>The time stamp of the last update to the alarm configuration.</p>")
  @as("AlarmConfigurationUpdatedTimestamp")
  alarmConfigurationUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The description of the alarm.</p>") @as("AlarmDescription")
  alarmDescription: option<alarmDescription>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the alarm.</p>") @as("AlarmArn")
  alarmArn: option<alarmArn>,
  @ocaml.doc("<p>The name of the alarm.</p>") @as("AlarmName") alarmName: option<alarmName>,
}
type metricAlarms = array<metricAlarm>
@ocaml.doc("<p>Amazon CloudWatch monitors your Amazon Web Services (AWS) resources and the
			applications you run on AWS in real time. You can use CloudWatch to collect and track
			metrics, which are the variables you want to measure for your resources and
			applications.</p>

		       <p>CloudWatch alarms send notifications or automatically change the resources you are monitoring based on rules
			that you define. For example, you can monitor the CPU usage and disk reads and writes of your Amazon EC2
			instances. Then, use this data to determine whether you should launch
			additional instances to handle increased load. You can also use this data to stop
			under-used instances to save
			money.</p>

		       <p>In addition to monitoring the built-in metrics that come with AWS, you can monitor
			your own custom metrics. With CloudWatch, you gain system-wide visibility into resource
			utilization, application performance, and operational health.</p>")
module SetAlarmState = {
  type t
  type request = {
    @ocaml.doc("<p>The reason that this alarm is set to this specific state, in JSON format.</p>
		       <p>For SNS or EC2 alarm actions, this is just informational. But for EC2 Auto Scaling or application Auto Scaling
		alarm actions, the Auto Scaling policy uses the information in this field to take the correct action.</p>")
    @as("StateReasonData")
    stateReasonData: option<stateReasonData>,
    @ocaml.doc("<p>The reason that this alarm is set to this specific state, in text format.</p>")
    @as("StateReason")
    stateReason: stateReason,
    @ocaml.doc("<p>The value of the state.</p>") @as("StateValue") stateValue: stateValue,
    @ocaml.doc("<p>The name of the alarm.</p>") @as("AlarmName") alarmName: alarmName,
  }

  @module("@aws-sdk/client-monitoring") @new external new: request => t = "SetAlarmStateCommand"
  let make = (~stateReason, ~stateValue, ~alarmName, ~stateReasonData=?, ()) =>
    new({
      stateReasonData: stateReasonData,
      stateReason: stateReason,
      stateValue: stateValue,
      alarmName: alarmName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetMetricWidgetImage = {
  type t
  type request = {
    @ocaml.doc("<p>The format of the resulting image. Only PNG images are supported.</p>

		       <p>The default is <code>png</code>. If you specify <code>png</code>, the API returns an HTTP response with the 
			content-type set to <code>text/xml</code>. The image data is in a <code>MetricWidgetImage</code> 
			field. For example:</p>
		
		       <p>
            <code>
			<GetMetricWidgetImageResponse xmlns=<URLstring>></code>
         </p>
		       <p>
            <code>  <GetMetricWidgetImageResult></code>
         </p>
		       <p>
            <code>    <MetricWidgetImage></code>
         </p>
		       <p>
            <code>       iVBORw0KGgoAAAANSUhEUgAAAlgAAAGQEAYAAAAip...</code>
         </p>
		       <p>
            <code>    </MetricWidgetImage></code>
         </p>
		       <p>
            <code>  </GetMetricWidgetImageResult></code>
         </p>
		       <p>
            <code>  <ResponseMetadata></code>
         </p>
		       <p>
            <code>    <RequestId>6f0d4192-4d42-11e8-82c1-f539a07e0e3b</RequestId></code>
         </p>
		       <p>
            <code>  </ResponseMetadata></code>
         </p>
		       <p>
            <code></GetMetricWidgetImageResponse></code>
         </p>
		
		       <p>The <code>image/png</code> setting is intended only for custom HTTP requests. For most
			use cases, and all actions using an AWS SDK, you should use <code>png</code>. If you specify 
			<code>image/png</code>, the HTTP response has a content-type set to <code>image/png</code>, 
			and the body of the response is a PNG image. </p>")
    @as("OutputFormat")
    outputFormat: option<outputFormat>,
    @ocaml.doc("<p>A JSON string that defines the bitmap graph to be retrieved. The string includes the 
			metrics to include in the graph, statistics, annotations, title, axis limits, and so on. 
			You can include only one <code>MetricWidget</code> parameter in each <code>GetMetricWidgetImage</code> call.</p>
		       <p>For more information about the syntax of <code>MetricWidget</code> see 
			<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Metric-Widget-Structure.html\">GetMetricWidgetImage: Metric Widget Structure and Syntax</a>.</p>
		
		       <p>If any metric on the graph could not load all the requested data points, an orange triangle with an exclamation
			point appears next to the graph legend.</p>")
    @as("MetricWidget")
    metricWidget: metricWidget,
  }
  type response = {
    @ocaml.doc(
      "<p>The image of the graph, in the output format specified. The output is base64-encoded.</p>"
    )
    @as("MetricWidgetImage")
    metricWidgetImage: option<metricWidgetImage>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "GetMetricWidgetImageCommand"
  let make = (~metricWidget, ~outputFormat=?, ()) =>
    new({outputFormat: outputFormat, metricWidget: metricWidget})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDashboard = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the dashboard to be described.</p>") @as("DashboardName")
    dashboardName: dashboardName,
  }
  type response = {
    @ocaml.doc("<p>The name of the dashboard.</p>") @as("DashboardName")
    dashboardName: option<dashboardName>,
    @ocaml.doc("<p>The detailed information about the dashboard, including what widgets are included and their location
			on the dashboard. For more information about the <code>DashboardBody</code> syntax, 
			see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html\">Dashboard Body Structure and Syntax</a>. </p>")
    @as("DashboardBody")
    dashboardBody: option<dashboardBody>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dashboard.</p>") @as("DashboardArn")
    dashboardArn: option<dashboardArn>,
  }
  @module("@aws-sdk/client-monitoring") @new external new: request => t = "GetDashboardCommand"
  let make = (~dashboardName, ()) => new({dashboardName: dashboardName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMetricStream = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the metric stream to delete.</p>") @as("Name")
    name: metricStreamName,
  }

  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "DeleteMetricStreamCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys to remove from the resource.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the CloudWatch resource that you're removing tags from.</p>
		       <p>The ARN format of an alarm is 
			<code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:alarm:<i>alarm-name</i>
            </code>
         </p>
		       <p>The ARN format of a Contributor Insights rule is 
			<code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:insight-rule:<i>insight-rule-name</i>
            </code>
         </p>
	        <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies\"> Resource
				Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General
			Reference</i>.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-monitoring") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopMetricStreams = {
  type t
  type request = {
    @ocaml.doc("<p>The array of the names of metric streams to stop streaming.</p>
		       <p>This is an \"all or nothing\" operation. If you do not have 
			permission to access all of the metric streams that you list here, then none of the streams that you list
			in the operation will stop streaming.</p>")
    @as("Names")
    names: metricStreamNames,
  }

  @module("@aws-sdk/client-monitoring") @new external new: request => t = "StopMetricStreamsCommand"
  let make = (~names, ()) => new({names: names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartMetricStreams = {
  type t
  type request = {
    @ocaml.doc("<p>The array of the names of metric streams to start streaming.</p>
		       <p>This is an \"all or nothing\" operation. If you do not have 
		permission to access all of the metric streams that you list here, then none of the streams that you list
		in the operation will start streaming.</p>")
    @as("Names")
    names: metricStreamNames,
  }

  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "StartMetricStreamsCommand"
  let make = (~names, ()) => new({names: names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableAlarmActions = {
  type t
  type request = {
    @ocaml.doc("<p>The names of the alarms.</p>") @as("AlarmNames") alarmNames: alarmNames,
  }

  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "EnableAlarmActionsCommand"
  let make = (~alarmNames, ()) => new({alarmNames: alarmNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableAlarmActions = {
  type t
  type request = {
    @ocaml.doc("<p>The names of the alarms.</p>") @as("AlarmNames") alarmNames: alarmNames,
  }

  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "DisableAlarmActionsCommand"
  let make = (~alarmNames, ()) => new({alarmNames: alarmNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDashboards = {
  type t
  type request = {
    @ocaml.doc("<p>The dashboards to be deleted. This parameter is required.</p>")
    @as("DashboardNames")
    dashboardNames: dashboardNames,
  }

  @module("@aws-sdk/client-monitoring") @new external new: request => t = "DeleteDashboardsCommand"
  let make = (~dashboardNames, ()) => new({dashboardNames: dashboardNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAlarms = {
  type t
  type request = {
    @ocaml.doc("<p>The alarms to be deleted.</p>") @as("AlarmNames") alarmNames: alarmNames,
  }

  @module("@aws-sdk/client-monitoring") @new external new: request => t = "DeleteAlarmsCommand"
  let make = (~alarmNames, ()) => new({alarmNames: alarmNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of key-value pairs to associate with the alarm.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The ARN of the CloudWatch resource that you're adding tags to.</p>
		       <p>The ARN format of an alarm is 
			<code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:alarm:<i>alarm-name</i>
            </code>
         </p>
		       <p>The ARN format of a Contributor Insights rule is 
			<code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:insight-rule:<i>insight-rule-name</i>
            </code>
         </p>
		       <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies\"> Resource
				Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General
			Reference</i>.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-monitoring") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutMetricStream = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pairs to associate with the metric stream. You can associate as 
			many as 50 tags with a metric stream.</p>
		       <p>Tags can help you organize and categorize your resources. You can also use them to scope user
			permissions by granting a user
			permission to access or change only resources with certain tag values.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The output format for the stream. Valid values are <code>json</code>
		and <code>opentelemetry0.7</code>. For more information about metric stream
		output formats, see 
			<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html\">
				Metric streams output formats</a>.</p>")
    @as("OutputFormat")
    outputFormat: metricStreamOutputFormat,
    @ocaml.doc("<p>The ARN of an IAM role that this metric stream will use to access
			Amazon Kinesis Firehose resources. This IAM role must already 
		exist and must be in the same account as the metric stream. This IAM role must include the following permissions:</p>
		       <ul>
            <li>
               <p>firehose:PutRecord</p>
            </li>
            <li>
               <p>firehose:PutRecordBatch</p>
            </li>
         </ul>")
    @as("RoleArn")
    roleArn: amazonResourceName,
    @ocaml.doc("<p>The ARN of the Amazon Kinesis Firehose delivery stream to use for this metric stream.
		This Amazon Kinesis Firehose delivery stream must already exist and must be in the same
		account as the metric stream.</p>")
    @as("FirehoseArn")
    firehoseArn: amazonResourceName,
    @ocaml.doc("<p>If you specify this parameter, the stream sends metrics from all
			metric namespaces except for the namespaces that you specify here.</p>
		       <p>You cannot include <code>ExcludeFilters</code> and <code>IncludeFilters</code> in 
			the same operation.</p>")
    @as("ExcludeFilters")
    excludeFilters: option<metricStreamFilters>,
    @ocaml.doc("<p>If you specify this parameter, the stream sends only the 
		metrics from the metric namespaces that you specify here.</p>
		       <p>You cannot include <code>IncludeFilters</code> and <code>ExcludeFilters</code>
		in the same operation.</p>")
    @as("IncludeFilters")
    includeFilters: option<metricStreamFilters>,
    @ocaml.doc("<p>If you are creating a new metric stream, this is the name for the new stream. The name
		must be different than the names of other metric streams in this account and Region.</p>
		       <p>If you are updating a metric stream, specify the name of that stream here.</p>
		       <p>Valid characters are A-Z, a-z, 0-9, \"-\" and \"_\".</p>")
    @as("Name")
    name: metricStreamName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the metric stream.</p>") @as("Arn") arn: option<amazonResourceName>,
  }
  @module("@aws-sdk/client-monitoring") @new external new: request => t = "PutMetricStreamCommand"
  let make = (
    ~outputFormat,
    ~roleArn,
    ~firehoseArn,
    ~name,
    ~tags=?,
    ~excludeFilters=?,
    ~includeFilters=?,
    (),
  ) =>
    new({
      tags: tags,
      outputFormat: outputFormat,
      roleArn: roleArn,
      firehoseArn: firehoseArn,
      excludeFilters: excludeFilters,
      includeFilters: includeFilters,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutInsightRule = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pairs to associate with the Contributor Insights rule. 
			You can associate as many as 50 tags with a rule.</p>
		       <p>Tags can help you organize and categorize your
			resources. You can also use them to scope user permissions, by 
			granting a user permission to access or change only the resources that have
			certain tag values.</p>
		       <p>To be able to associate tags with a rule, you must have the <code>cloudwatch:TagResource</code>
		permission in addition to the <code>cloudwatch:PutInsightRule</code> permission.</p>
		       <p>If you are using this operation to update an existing Contributor Insights rule, any tags
		you specify in this parameter are ignored. To change the tags of an existing rule, use
			<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html\">TagResource</a>.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The definition of the rule, as a JSON object. For details on the valid syntax, see 
			<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html\">Contributor Insights
			Rule Syntax</a>.</p>")
    @as("RuleDefinition")
    ruleDefinition: insightRuleDefinition,
    @ocaml.doc("<p>The state of the rule. Valid values are ENABLED and DISABLED.</p>")
    @as("RuleState")
    ruleState: option<insightRuleState>,
    @ocaml.doc("<p>A unique name for the rule.</p>") @as("RuleName") ruleName: insightRuleName,
  }

  @module("@aws-sdk/client-monitoring") @new external new: request => t = "PutInsightRuleCommand"
  let make = (~ruleDefinition, ~ruleName, ~tags=?, ~ruleState=?, ()) =>
    new({tags: tags, ruleDefinition: ruleDefinition, ruleState: ruleState, ruleName: ruleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutDashboard = {
  type t
  type request = {
    @ocaml.doc("<p>The detailed information about the dashboard in JSON format, including the widgets to include and their location
			on the dashboard.  This parameter is required.</p>
		       <p>For more information about the syntax, 
			see  <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html\">Dashboard Body Structure and Syntax</a>.</p>")
    @as("DashboardBody")
    dashboardBody: dashboardBody,
    @ocaml.doc("<p>The name of the dashboard. If a dashboard with this name already exists, this call modifies that dashboard, replacing
			its current contents. Otherwise, a new dashboard is created. The maximum length is 255, and valid characters are 
			A-Z, a-z, 0-9, \"-\", and \"_\".  This parameter is required.</p>")
    @as("DashboardName")
    dashboardName: dashboardName,
  }
  type response = {
    @ocaml.doc("<p>If the input for <code>PutDashboard</code> was correct and the dashboard was successfully created or modified, this result is empty.</p>
			      <p>If this result includes only warning messages, then the input was valid enough for the dashboard to be
			created or modified, but some elements of the dashboard
			might not render.</p>
				     <p>If this result includes error messages, the input was not valid and the operation failed.</p>")
    @as("DashboardValidationMessages")
    dashboardValidationMessages: option<dashboardValidationMessages>,
  }
  @module("@aws-sdk/client-monitoring") @new external new: request => t = "PutDashboardCommand"
  let make = (~dashboardBody, ~dashboardName, ()) =>
    new({dashboardBody: dashboardBody, dashboardName: dashboardName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutCompositeAlarm = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pairs to associate with the composite alarm. You can associate as many as 50 tags with an alarm.</p>
		       <p>Tags can help you organize and categorize your
			resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with
			certain tag values.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The actions to execute when this alarm transitions to an <code>OK</code> state
			from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>
		
		
		       <p>Valid Values: <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
            </code> 
         </p>")
    @as("OKActions")
    okactions: option<resourceList>,
    @ocaml.doc("<p>The actions to execute when this alarm transitions to the <code>INSUFFICIENT_DATA</code> state from any other state. 
			Each action is specified as an Amazon Resource Name (ARN).</p>
		
		       <p>Valid Values: <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
            </code> 
         </p>")
    @as("InsufficientDataActions")
    insufficientDataActions: option<resourceList>,
    @ocaml.doc("<p>An expression that specifies which other alarms are to be evaluated to determine this
			composite alarm's state. For each alarm that you reference, you
			designate a function that
			specifies whether that alarm needs to be in ALARM state, OK state, or INSUFFICIENT_DATA state. You
			can use operators (AND, OR and NOT) to combine multiple functions in a single expression. You can use parenthesis to logically group the 
			functions in your expression.</p>
		       <p>You can use either alarm names or ARNs to reference the other alarms that are to be evaluated.</p>
		       <p>Functions can include the following:</p>
		       <ul>
            <li>
               <p>
                  <code>ALARM(\"<i>alarm-name</i> or <i>alarm-ARN</i>\")</code> is TRUE if the named
			alarm is in ALARM state.</p>
            </li>
            <li>
               <p>
                  <code>OK(\"<i>alarm-name</i> or <i>alarm-ARN</i>\")</code> is TRUE if the named
				alarm is in OK state.</p>
            </li>
            <li>
               <p>
                  <code>INSUFFICIENT_DATA(\"<i>alarm-name</i> or <i>alarm-ARN</i>\")</code> is TRUE if the named
				alarm is in INSUFFICIENT_DATA state.</p>
            </li>
            <li>
               <p>
                  <code>TRUE</code> always evaluates to TRUE.</p>
            </li>
            <li>
               <p>
                  <code>FALSE</code> always evaluates to FALSE.</p>
            </li>
         </ul>
		       <p>TRUE and FALSE are useful for testing a complex <code>AlarmRule</code> structure, and 
		for testing your alarm actions.</p>
		       <p>Alarm names specified in <code>AlarmRule</code> can be surrounded with double-quotes (\"), but do not have to be.</p>
		       <p>The following
			are some examples of <code>AlarmRule</code>:</p>
		       <ul>
            <li>
               <p>
                  <code>ALARM(CPUUtilizationTooHigh) AND ALARM(DiskReadOpsTooHigh)</code> specifies that the composite alarm goes into ALARM state only
				if both CPUUtilizationTooHigh and DiskReadOpsTooHigh alarms are in ALARM state.</p>
            </li>
            <li>
               <p>
                  <code>ALARM(CPUUtilizationTooHigh) AND NOT ALARM(DeploymentInProgress)</code>
					specifies that the alarm goes to ALARM state if CPUUtilizationTooHigh is in ALARM state
					and DeploymentInProgress is not in ALARM state. This example reduces
					alarm noise during a known deployment window.</p>
            </li>
            <li>
               <p>
                  <code>(ALARM(CPUUtilizationTooHigh) OR ALARM(DiskReadOpsTooHigh)) AND OK(NetworkOutTooHigh)</code> goes into ALARM 
				state if CPUUtilizationTooHigh OR DiskReadOpsTooHigh is in ALARM state, and if NetworkOutTooHigh is in OK state. 
				This provides another example of using a composite alarm to prevent noise. This rule ensures that you are not notified with an 
				alarm action on high CPU or disk usage if a known network problem is also occurring.</p>
            </li>
         </ul>
		       <p>The <code>AlarmRule</code> can specify as many as 100
			\"children\" alarms. The <code>AlarmRule</code> expression can have as many as 500 elements. Elements
			are child alarms, TRUE or FALSE statements, and
			parentheses.</p>")
    @as("AlarmRule")
    alarmRule: alarmRule,
    @ocaml.doc(
      "<p>The name for the composite alarm. This name must be unique within the Region.</p>"
    )
    @as("AlarmName")
    alarmName: alarmName,
    @ocaml.doc("<p>The description for the composite alarm.</p>") @as("AlarmDescription")
    alarmDescription: option<alarmDescription>,
    @ocaml.doc("<p>The actions to execute when this alarm transitions to the <code>ALARM</code> state from any other state. 
			Each action is specified as an Amazon Resource Name (ARN).</p>
		
		       <p>Valid Values: <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
            </code>
			| <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:opsitem:<i>severity</i>
            </code>
         </p>")
    @as("AlarmActions")
    alarmActions: option<resourceList>,
    @ocaml.doc("<p>Indicates whether actions should be executed during any changes to the alarm state of the composite alarm. The default is 
			<code>TRUE</code>.</p>")
    @as("ActionsEnabled")
    actionsEnabled: option<actionsEnabled>,
  }

  @module("@aws-sdk/client-monitoring") @new external new: request => t = "PutCompositeAlarmCommand"
  let make = (
    ~alarmRule,
    ~alarmName,
    ~tags=?,
    ~okactions=?,
    ~insufficientDataActions=?,
    ~alarmDescription=?,
    ~alarmActions=?,
    ~actionsEnabled=?,
    (),
  ) =>
    new({
      tags: tags,
      okactions: okactions,
      insufficientDataActions: insufficientDataActions,
      alarmRule: alarmRule,
      alarmName: alarmName,
      alarmDescription: alarmDescription,
      alarmActions: alarmActions,
      actionsEnabled: actionsEnabled,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the CloudWatch resource that you want to view tags for.</p>
		       <p>The ARN format of an alarm is 
			<code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:alarm:<i>alarm-name</i>
            </code>
         </p>
		       <p>The ARN format of a Contributor Insights rule is 
			<code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:insight-rule:<i>insight-rule-name</i>
            </code>
         </p>
	        <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies\"> Resource
				Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General
			Reference</i>.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The list of tag keys and values associated with the resource you specified.</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMetricStreams = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in one operation.</p>") @as("MaxResults")
    maxResults: option<listMetricStreamsMaxResults>,
    @ocaml.doc(
      "<p>Include this value, if it was returned by the previous call, to get the next set of metric streams.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The array of metric stream information.</p>") @as("Entries")
    entries: option<metricStreamEntries>,
    @ocaml.doc("<p>The token that marks the start of the next batch of returned results. You can use this 
		token in a subsequent operation to get the next batch of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-monitoring") @new external new: request => t = "ListMetricStreamsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDashboards = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token returned by a previous call to indicate that there is more data available.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>If you specify this parameter, only
			the dashboards with names starting with the specified string are listed. The maximum length is 255, and 
			valid characters are A-Z, a-z, 0-9, \".\", \"-\", and \"_\".
			 
		</p>")
    @as("DashboardNamePrefix")
    dashboardNamePrefix: option<dashboardNamePrefix>,
  }
  type response = {
    @ocaml.doc("<p>The token that marks the start of the next batch of returned results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of matching dashboards.</p>") @as("DashboardEntries")
    dashboardEntries: option<dashboardEntries>,
  }
  @module("@aws-sdk/client-monitoring") @new external new: request => t = "ListDashboardsCommand"
  let make = (~nextToken=?, ~dashboardNamePrefix=?, ()) =>
    new({nextToken: nextToken, dashboardNamePrefix: dashboardNamePrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMetricStream = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the metric stream to retrieve information about.</p>") @as("Name")
    name: metricStreamName,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("OutputFormat") outputFormat: option<metricStreamOutputFormat>,
    @ocaml.doc("<p>The date of the most recent update to the metric stream's configuration.</p>")
    @as("LastUpdateDate")
    lastUpdateDate: option<timestamp_>,
    @ocaml.doc("<p>The date that the metric stream was created.</p>") @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>The state of the metric stream. The possible values are <code>running</code>
		and <code>stopped</code>.</p>")
    @as("State")
    state: option<metricStreamState>,
    @ocaml.doc("<p>The ARN of the IAM role that is used by this metric stream.</p>") @as("RoleArn")
    roleArn: option<amazonResourceName>,
    @ocaml.doc("<p>The ARN of the Amazon Kinesis Firehose delivery stream that is used by
		this metric stream.</p>")
    @as("FirehoseArn")
    firehoseArn: option<amazonResourceName>,
    @ocaml.doc("<p>If this array of metric namespaces is present, then these namespaces are the only
			metric namespaces that are not streamed by this metric stream. In this case, all other metric namespaces in
		the account are streamed by this metric stream.</p>")
    @as("ExcludeFilters")
    excludeFilters: option<metricStreamFilters>,
    @ocaml.doc("<p>If this array of metric namespaces is present, then these
			namespaces are the only
		metric namespaces that are streamed by this metric stream.</p>")
    @as("IncludeFilters")
    includeFilters: option<metricStreamFilters>,
    @ocaml.doc("<p>The name of the metric stream.</p>") @as("Name") name: option<metricStreamName>,
    @ocaml.doc("<p>The ARN of the metric stream.</p>") @as("Arn") arn: option<amazonResourceName>,
  }
  @module("@aws-sdk/client-monitoring") @new external new: request => t = "GetMetricStreamCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableInsightRules = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of the rule names to enable. If you need to find out the names of your rules, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html\">DescribeInsightRules</a>.</p>"
    )
    @as("RuleNames")
    ruleNames: insightRuleNames,
  }
  type response = {
    @ocaml.doc(
      "<p>An array listing the rules that could not be enabled. You cannot disable or enable built-in rules.</p>"
    )
    @as("Failures")
    failures: option<batchFailures>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "EnableInsightRulesCommand"
  let make = (~ruleNames, ()) => new({ruleNames: ruleNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableInsightRules = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of the rule names to disable. If you need to find out the names of your rules, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html\">DescribeInsightRules</a>.</p>"
    )
    @as("RuleNames")
    ruleNames: insightRuleNames,
  }
  type response = {
    @ocaml.doc(
      "<p>An array listing the rules that could not be disabled. You cannot disable built-in rules.</p>"
    )
    @as("Failures")
    failures: option<batchFailures>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "DisableInsightRulesCommand"
  let make = (~ruleNames, ()) => new({ruleNames: ruleNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInsightRules = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in one operation. If you omit this
		parameter, the default of 500 is used.</p>")
    @as("MaxResults")
    maxResults: option<insightRuleMaxResults>,
    @ocaml.doc(
      "<p>Include this value, if it was returned by the previous operation, to get the next set of rules.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The rules returned by the operation.</p>") @as("InsightRules")
    insightRules: option<insightRules>,
    @ocaml.doc(
      "<p>If this parameter is present, it is a token that marks the start of the next batch of returned results.      </p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "DescribeInsightRulesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlarmHistory = {
  type t
  type request = {
    @ocaml.doc("<p>Specified whether to return the newest or oldest alarm history first. Specify <code>TimestampDescending</code> to have the newest
		event history returned first, and specify <code>TimestampAscending</code> to have the oldest history returned first.</p>")
    @as("ScanBy")
    scanBy: option<scanBy>,
    @ocaml.doc("<p>The token returned by a previous call to indicate that there is more data
			available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of alarm history records to retrieve.</p>") @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The ending date to retrieve alarm history.</p>") @as("EndDate")
    endDate: option<timestamp_>,
    @ocaml.doc("<p>The starting date to retrieve alarm history.</p>") @as("StartDate")
    startDate: option<timestamp_>,
    @ocaml.doc("<p>The type of alarm histories to retrieve.</p>") @as("HistoryItemType")
    historyItemType: option<historyItemType>,
    @ocaml.doc("<p>Use this parameter to specify whether you want the operation to return metric alarms or composite alarms. If you omit this parameter, 
			only metric alarms are returned.</p>")
    @as("AlarmTypes")
    alarmTypes: option<alarmTypes>,
    @ocaml.doc("<p>The name of the alarm.</p>") @as("AlarmName") alarmName: option<alarmName>,
  }
  type response = {
    @ocaml.doc("<p>The token that marks the start of the next batch of returned results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The alarm histories, in JSON format.</p>") @as("AlarmHistoryItems")
    alarmHistoryItems: option<alarmHistoryItems>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "DescribeAlarmHistoryCommand"
  let make = (
    ~scanBy=?,
    ~nextToken=?,
    ~maxRecords=?,
    ~endDate=?,
    ~startDate=?,
    ~historyItemType=?,
    ~alarmTypes=?,
    ~alarmName=?,
    (),
  ) =>
    new({
      scanBy: scanBy,
      nextToken: nextToken,
      maxRecords: maxRecords,
      endDate: endDate,
      startDate: startDate,
      historyItemType: historyItemType,
      alarmTypes: alarmTypes,
      alarmName: alarmName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInsightRules = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of the rule names to delete. If you need to find out the names of your rules, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html\">DescribeInsightRules</a>.</p>"
    )
    @as("RuleNames")
    ruleNames: insightRuleNames,
  }
  type response = {
    @ocaml.doc(
      "<p>An array listing the rules that could not be deleted. You cannot delete built-in rules.</p>"
    )
    @as("Failures")
    failures: option<batchFailures>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "DeleteInsightRulesCommand"
  let make = (~ruleNames, ()) => new({ruleNames: ruleNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAnomalyDetector = {
  type t
  type request = {
    @ocaml.doc("<p>The statistic associated with the anomaly detection model to delete.</p>")
    @as("Stat")
    stat: anomalyDetectorMetricStat,
    @ocaml.doc(
      "<p>The metric dimensions associated with the anomaly detection model to delete.</p>"
    )
    @as("Dimensions")
    dimensions: option<dimensions>,
    @ocaml.doc("<p>The metric name associated with the anomaly detection model to delete.</p>")
    @as("MetricName")
    metricName: metricName,
    @ocaml.doc("<p>The namespace associated with the anomaly detection model to delete.</p>")
    @as("Namespace")
    namespace: namespace,
  }

  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "DeleteAnomalyDetectorCommand"
  let make = (~stat, ~metricName, ~namespace, ~dimensions=?, ()) =>
    new({stat: stat, dimensions: dimensions, metricName: metricName, namespace: namespace})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutAnomalyDetector = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration specifies details about how the 
			anomaly detection model is to be trained, including 
			time ranges to exclude when training and updating the model.
			You can specify as many as 10 time ranges.</p>
		       <p>The configuration can also include the time zone to use for 
			the metric.</p>")
    @as("Configuration")
    configuration: option<anomalyDetectorConfiguration>,
    @ocaml.doc("<p>The statistic to use for the metric and the anomaly detection model.</p>")
    @as("Stat")
    stat: anomalyDetectorMetricStat,
    @ocaml.doc("<p>The metric dimensions to create the anomaly detection model for.</p>")
    @as("Dimensions")
    dimensions: option<dimensions>,
    @ocaml.doc("<p>The name of the metric to create the anomaly detection model for.</p>")
    @as("MetricName")
    metricName: metricName,
    @ocaml.doc("<p>The namespace of the metric to create the anomaly detection model for.</p>")
    @as("Namespace")
    namespace: namespace,
  }

  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "PutAnomalyDetectorCommand"
  let make = (~stat, ~metricName, ~namespace, ~configuration=?, ~dimensions=?, ()) =>
    new({
      configuration: configuration,
      stat: stat,
      dimensions: dimensions,
      metricName: metricName,
      namespace: namespace,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetMetricStatistics = {
  type t
  type request = {
    @ocaml.doc("<p>The unit for a given metric. 
			If you omit <code>Unit</code>, all data that was collected with any unit is returned, along with the corresponding units that were specified
			when the data was reported to CloudWatch. If you specify a unit, the operation returns only data that was collected with that unit specified.
			If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.</p>")
    @as("Unit")
    unit_: option<standardUnit>,
    @ocaml.doc("<p>The percentile statistics. Specify values between p0.0 and p100. When calling <code>GetMetricStatistics</code>, you must 
			specify either <code>Statistics</code> or <code>ExtendedStatistics</code>, but not both. Percentile statistics are not 
			available for metrics when any of the metric values are negative numbers.</p>")
    @as("ExtendedStatistics")
    extendedStatistics: option<extendedStatistics>,
    @ocaml.doc("<p>The metric statistics, other than percentile. For percentile statistics,
		    use <code>ExtendedStatistics</code>. When calling <code>GetMetricStatistics</code>, you must 
		specify either <code>Statistics</code> or <code>ExtendedStatistics</code>, but not both.</p>")
    @as("Statistics")
    statistics: option<statistics>,
    @ocaml.doc("<p>The granularity, in seconds, of the returned data points. For metrics with regular resolution, a period can
			be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected
			at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics
		are those metrics stored by a <code>PutMetricData</code> call that includes a <code>StorageResolution</code> of 1 second.</p>
		       <p>If the <code>StartTime</code> parameter specifies a time stamp that is greater than
		    3 hours ago, you must specify the period as follows or no data points in that time range is returned:</p>
		       <ul>
            <li>
               <p>Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds (1 minute).</p>
            </li>
            <li>
               <p>Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).</p>
            </li>
            <li>
               <p>Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).</p>
            </li>
         </ul>")
    @as("Period")
    period: period,
    @ocaml.doc("<p>The time stamp that determines the last data point to return.</p> 
		       <p>The value specified is exclusive; results include data points up to the specified time stamp.
			In a raw HTTP query, the time stamp must be in ISO 8601 UTC format (for example, 2016-10-10T23:00:00Z).</p>")
    @as("EndTime")
    endTime: timestamp_,
    @ocaml.doc("<p>The time stamp that determines the first data point to return. Start times are 
			evaluated relative to the time that CloudWatch receives the request.</p>
	        <p>The value specified is inclusive; results include data points with the specified time stamp. 
	    	In a raw HTTP query, the time stamp must be in ISO 8601 UTC format (for example, 2016-10-03T23:00:00Z).</p>
		       <p>CloudWatch rounds the specified time stamp as follows:</p>
		       <ul>
            <li>
               <p>Start time less than 15 days ago - Round down to the nearest whole minute.
			    For example, 12:32:34 is rounded down to 12:32:00.</p>
            </li>
            <li>
               <p>Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval.
			    For example, 12:32:34 is rounded down to 12:30:00.</p>
            </li>
            <li>
               <p>Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval.
			    For example, 12:32:34 is rounded down to 12:00:00.</p>
            </li>
         </ul>
		       <p>If you set <code>Period</code> to 5, 10, or 30, the start time of your request is 
			rounded down to the nearest time that corresponds to even 5-, 10-, or 30-second divisions
			of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the previous 
			10-second period, the start time of your request is rounded down and you receive data from 01:05:10 to 
			01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of data, using a 
			period of 5 seconds, you receive data 
			timestamped between 15:02:15 and 15:07:15.
		</p>")
    @as("StartTime")
    startTime: timestamp_,
    @ocaml.doc("<p>The dimensions. If the metric contains multiple dimensions, you must include a value for each dimension. CloudWatch treats each unique combination of dimensions as a separate metric.
		    If a specific combination of dimensions was not published, you can't retrieve statistics for it.
		    You must specify the same dimensions that were used when the metrics were created. For an example,
		    see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations\">Dimension Combinations</a> in the <i>Amazon CloudWatch User Guide</i>. For more information about specifying dimensions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html\">Publishing Metrics</a> in the
			<i>Amazon CloudWatch User Guide</i>.</p>")
    @as("Dimensions")
    dimensions: option<dimensions>,
    @ocaml.doc("<p>The name of the metric, with or without spaces.</p>") @as("MetricName")
    metricName: metricName,
    @ocaml.doc("<p>The namespace of the metric, with or without spaces.</p>") @as("Namespace")
    namespace: namespace,
  }
  type response = {
    @ocaml.doc("<p>The data points for the specified metric.</p>") @as("Datapoints")
    datapoints: option<datapoints>,
    @ocaml.doc("<p>A label for the specified metric.</p>") @as("Label") label: option<metricLabel>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "GetMetricStatisticsCommand"
  let make = (
    ~period,
    ~endTime,
    ~startTime,
    ~metricName,
    ~namespace,
    ~unit_=?,
    ~extendedStatistics=?,
    ~statistics=?,
    ~dimensions=?,
    (),
  ) =>
    new({
      unit_: unit_,
      extendedStatistics: extendedStatistics,
      statistics: statistics,
      period: period,
      endTime: endTime,
      startTime: startTime,
      dimensions: dimensions,
      metricName: metricName,
      namespace: namespace,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutMetricData = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The data for the metric. The array can include no more than 20 metrics per call.</p>"
    )
    @as("MetricData")
    metricData: metricData,
    @ocaml.doc("<p>The namespace for the metric data.</p>
		       <p>To avoid conflicts
			with AWS service namespaces, you should not specify a namespace that begins with <code>AWS/</code>
         </p>")
    @as("Namespace")
    namespace: namespace,
  }

  @module("@aws-sdk/client-monitoring") @new external new: request => t = "PutMetricDataCommand"
  let make = (~metricData, ~namespace, ()) => new({metricData: metricData, namespace: namespace})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListMetrics = {
  type t
  type request = {
    @ocaml.doc("<p>To filter the results to show only metrics that have had data points published
			in the past three hours, specify this parameter
			with a value of <code>PT3H</code>. This is the only valid value
			for this parameter.</p>
		       <p>The results that are returned are an approximation of the value you specify. There
		is a low probability that the returned results include metrics with last published
		data as much as 40 minutes more than the specified time interval.</p>")
    @as("RecentlyActive")
    recentlyActive: option<recentlyActive>,
    @ocaml.doc("<p>The token returned by a previous call to indicate that there is more data
			available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The dimensions to filter against.  Only the dimensions that match exactly 
			will be returned.</p>")
    @as("Dimensions")
    dimensions: option<dimensionFilters>,
    @ocaml.doc("<p>The name of the metric to filter against.  Only the metrics with names that match exactly 
			will be returned.</p>")
    @as("MetricName")
    metricName: option<metricName>,
    @ocaml.doc("<p>The metric namespace to filter against. Only the namespace that matches exactly 
		will be returned.</p>")
    @as("Namespace")
    namespace: option<namespace>,
  }
  type response = {
    @ocaml.doc("<p>The token that marks the start of the next batch of returned results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The metrics that match your request. </p>") @as("Metrics")
    metrics: option<metrics>,
  }
  @module("@aws-sdk/client-monitoring") @new external new: request => t = "ListMetricsCommand"
  let make = (~recentlyActive=?, ~nextToken=?, ~dimensions=?, ~metricName=?, ~namespace=?, ()) =>
    new({
      recentlyActive: recentlyActive,
      nextToken: nextToken,
      dimensions: dimensions,
      metricName: metricName,
      namespace: namespace,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInsightRuleReport = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Determines what statistic to use to rank the contributors. Valid values are SUM and MAXIMUM.</p>"
    )
    @as("OrderBy")
    orderBy: option<insightRuleOrderBy>,
    @ocaml.doc("<p>Specifies which metrics to use for aggregation of contributor values for the report. You can specify one or more
		of the following metrics:</p>
		       <ul>
            <li>
				           <p>
                  <code>UniqueContributors</code> -- the number of unique contributors for each data point.</p>
			         </li>
            <li>
				           <p>
                  <code>MaxContributorValue</code> -- the value of the top contributor for each data point. The identity of the
					contributor might change for each data point in the graph.</p>
				           <p>If this rule aggregates by COUNT, the top contributor for each data point is the contributor with the 
					most occurrences in that period. If the rule aggregates by SUM, the top contributor is the contributor with the highest sum in the log field specified
					by the rule's <code>Value</code>, during that period.</p>
			         </li>
            <li>
				           <p>
                  <code>SampleCount</code> -- the number of data points matched by the rule.</p>
			         </li>
            <li>
				           <p>
                  <code>Sum</code> -- the sum of the values from all contributors during the time period represented by that data point.</p>
			         </li>
            <li>
				           <p>
                  <code>Minimum</code> -- the minimum value from a single observation during the time period represented by that data point.</p>
			         </li>
            <li>
				           <p>
                  <code>Maximum</code> -- the maximum value from a single observation during the time period represented by that data point.</p>
			         </li>
            <li>
				           <p>
                  <code>Average</code> -- the average value from all contributors during the time period represented by that data point.</p>
			         </li>
         </ul>")
    @as("Metrics")
    metrics: option<insightRuleMetricList>,
    @ocaml.doc(
      "<p>The maximum number of contributors to include in the report. The range is 1 to 100. If you omit this, the default of 10 is used.</p>"
    )
    @as("MaxContributorCount")
    maxContributorCount: option<insightRuleUnboundInteger>,
    @ocaml.doc(
      "<p>The period, in seconds, to use for the statistics in the <code>InsightRuleMetricDatapoint</code> results.</p>"
    )
    @as("Period")
    period: period,
    @ocaml.doc("<p>The end time of the data to use in the report. When used in a raw HTTP Query API, it is formatted as 
			<code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, 
			<code>2019-07-01T23:59:59</code>.</p>")
    @as("EndTime")
    endTime: timestamp_,
    @ocaml.doc("<p>The start time of the data to use in the report. When used in a raw HTTP Query API, it is formatted as 
			<code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, 
			<code>2019-07-01T23:59:59</code>.</p>")
    @as("StartTime")
    startTime: timestamp_,
    @ocaml.doc("<p>The name of the rule that you want to see data from.</p>") @as("RuleName")
    ruleName: insightRuleName,
  }
  type response = {
    @ocaml.doc(
      "<p>A time series of metric data points that matches the time period in the rule request.</p>"
    )
    @as("MetricDatapoints")
    metricDatapoints: option<insightRuleMetricDatapoints>,
    @ocaml.doc("<p>An array of the unique contributors found by this rule in this time period. If the rule contains multiple keys, each combination of values
		for the keys counts as a unique contributor.</p>")
    @as("Contributors")
    contributors: option<insightRuleContributors>,
    @ocaml.doc(
      "<p>An approximate count of the unique contributors found by this rule in this time period.</p>"
    )
    @as("ApproximateUniqueCount")
    approximateUniqueCount: option<insightRuleUnboundLong>,
    @ocaml.doc("<p>The sum of the values from all individual contributors that match the rule.</p>")
    @as("AggregateValue")
    aggregateValue: option<insightRuleUnboundDouble>,
    @ocaml.doc("<p>Specifies whether this rule aggregates contributor data by COUNT or SUM.</p>")
    @as("AggregationStatistic")
    aggregationStatistic: option<insightRuleAggregationStatistic>,
    @ocaml.doc("<p>An array of the strings used as the keys for this rule. The keys are the dimensions used to classify contributors. 
			If the rule contains more than one key, then each unique combination of values for the keys is counted as a unique contributor.</p>")
    @as("KeyLabels")
    keyLabels: option<insightRuleContributorKeyLabels>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "GetInsightRuleReportCommand"
  let make = (
    ~period,
    ~endTime,
    ~startTime,
    ~ruleName,
    ~orderBy=?,
    ~metrics=?,
    ~maxContributorCount=?,
    (),
  ) =>
    new({
      orderBy: orderBy,
      metrics: metrics,
      maxContributorCount: maxContributorCount,
      period: period,
      endTime: endTime,
      startTime: startTime,
      ruleName: ruleName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAnomalyDetectors = {
  type t
  type request = {
    @ocaml.doc("<p>Limits the results to only the anomaly detection models that are associated with the
			specified metric dimensions. If there are multiple metrics that have these dimensions
			and have anomaly detection models associated, they're all returned.</p>")
    @as("Dimensions")
    dimensions: option<dimensions>,
    @ocaml.doc("<p>Limits the results to only the anomaly detection models that are associated with the
			specified metric name. If there are multiple metrics with this name in different
			namespaces that have anomaly detection models, they're all returned.</p>")
    @as("MetricName")
    metricName: option<metricName>,
    @ocaml.doc("<p>Limits the results to only the anomaly detection models that
			are associated with the specified namespace.</p>")
    @as("Namespace")
    namespace: option<namespace>,
    @ocaml.doc("<p>The maximum number of results to return in one operation. The maximum
			value that you can specify is 100.</p>
			      <p>To retrieve the remaining results, make another call with the returned 
			<code>NextToken</code> value. </p>")
    @as("MaxResults")
    maxResults: option<maxReturnedResultsCount>,
    @ocaml.doc(
      "<p>Use the token returned by the previous operation to request the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A token that you can use in a subsequent operation to 
		retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of anomaly detection models returned by the operation.</p>")
    @as("AnomalyDetectors")
    anomalyDetectors: option<anomalyDetectors>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "DescribeAnomalyDetectorsCommand"
  let make = (~dimensions=?, ~metricName=?, ~namespace=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      dimensions: dimensions,
      metricName: metricName,
      namespace: namespace,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutMetricAlarm = {
  type t
  type request = {
    @ocaml.doc("<p>If this is an alarm based on an anomaly detection model, make this value match
			the ID of
			the <code>ANOMALY_DETECTION_BAND</code> function.</p>
		       <p>For an example of how to use this parameter, see the 
			<b>Anomaly Detection
		Model Alarm</b> example on this page.</p>
		       <p>If your alarm uses this parameter, it cannot have Auto Scaling actions.</p>")
    @as("ThresholdMetricId")
    thresholdMetricId: option<metricId>,
    @ocaml.doc("<p>A list of key-value pairs to associate with the alarm. You can associate as many as 50 tags with an alarm.</p>
		       <p>Tags can help you organize and categorize your resources. You can also use them to scope user
			permissions by granting a user
			permission to access or change only resources with certain tag values.</p>
		       <p>If you are using this operation to update an existing alarm, any tags
			you specify in this parameter are ignored. To change the tags of an existing alarm, use
			<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html\">TagResource</a>
			or <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_UntagResource.html\">UntagResource</a>.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>An array of <code>MetricDataQuery</code> structures that enable you to create an alarm based on the result of a 
			metric math expression. For each <code>PutMetricAlarm</code>
			operation, you must specify either <code>MetricName</code> or a <code>Metrics</code> array.</p>
		       <p>Each item in the <code>Metrics</code> array either retrieves a metric or performs a math expression.</p>
		       <p>One item in the <code>Metrics</code> array is the expression that the alarm watches. You designate this expression 
			by setting <code>ReturnData</code> to true for this object in the array. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDataQuery.html\">MetricDataQuery</a>.</p>
		       <p>If you use the <code>Metrics</code> parameter, you cannot include the <code>MetricName</code>, <code>Dimensions</code>, <code>Period</code>,
			<code>Namespace</code>, <code>Statistic</code>, or <code>ExtendedStatistic</code> parameters of <code>PutMetricAlarm</code> in the same operation. 
			Instead, you retrieve
		the metrics you are using in your math expression as part of the <code>Metrics</code> array.</p>")
    @as("Metrics")
    metrics: option<metricDataQueries>,
    @ocaml.doc("<p> Used only for alarms based on percentiles. If you specify <code>ignore</code>, the alarm state does not change during periods with too few data points to be 
			statistically significant. If you specify <code>evaluate</code> or omit this parameter, the alarm is always evaluated and possibly changes state
			no matter how many data points are available. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples\">Percentile-Based CloudWatch Alarms and Low Data Samples</a>.</p>
		       <p>Valid Values: <code>evaluate | ignore</code>
         </p>")
    @as("EvaluateLowSampleCountPercentile")
    evaluateLowSampleCountPercentile: option<evaluateLowSampleCountPercentile>,
    @ocaml.doc("<p> Sets how this alarm is to handle missing data points. If <code>TreatMissingData</code> is omitted, the default behavior of <code>missing</code> is used. 
			For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data\">Configuring How CloudWatch 
				Alarms Treats Missing Data</a>.</p>
		       <p>Valid Values: <code>breaching | notBreaching | ignore | missing</code>
         </p>")
    @as("TreatMissingData")
    treatMissingData: option<treatMissingData>,
    @ocaml.doc("<p> The arithmetic operation to use when comparing the specified statistic and
			threshold. The specified statistic value is used as the first operand.</p>
		       <p>The values <code>LessThanLowerOrGreaterThanUpperThreshold</code>, 
			<code>LessThanLowerThreshold</code>, and <code>GreaterThanUpperThreshold</code>
		are used only for alarms based on anomaly detection models.</p>")
    @as("ComparisonOperator")
    comparisonOperator: comparisonOperator,
    @ocaml.doc("<p>The value against which the specified statistic is compared.</p>
		       <p>This parameter is required for alarms based on static thresholds, but should
		not be used for alarms based on anomaly detection models.</p>")
    @as("Threshold")
    threshold: option<threshold>,
    @ocaml.doc("<p>The number of data points that must be breaching to trigger the alarm. This is used only if you are setting 
			an \"M out of N\" alarm. In that case, this value is the M. For more information, see 
			<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation\">Evaluating an Alarm</a> in the
			<i>Amazon CloudWatch User Guide</i>.</p>")
    @as("DatapointsToAlarm")
    datapointsToAlarm: option<datapointsToAlarm>,
    @ocaml.doc("<p>The number of periods over which data is compared to the specified threshold. If you are
			setting an alarm that requires that a number of consecutive data points be breaching to
			trigger the alarm, this value specifies that number. If you are setting an \"M out of N\"
			alarm, this value is the N.</p>
		       <p>An alarm's total current evaluation period can
			be no longer than one day, so this number multiplied by <code>Period</code> cannot be more than 86,400 seconds.</p>")
    @as("EvaluationPeriods")
    evaluationPeriods: evaluationPeriods,
    @ocaml.doc("<p>The unit of measure for the statistic. For example, the units for the Amazon EC2
			NetworkIn metric are Bytes because NetworkIn tracks the number of bytes that an instance
			receives on all network interfaces. You can also specify a unit when you create a custom
			metric. Units help provide conceptual meaning to your data. Metric data points that
			specify a unit of measure, such as Percent, are aggregated separately.</p>
		       <p>If you don't specify <code>Unit</code>, CloudWatch retrieves all unit types that have been published for the
			metric and attempts to evaluate the alarm.
			Usually, metrics are
			published with only one unit, so the alarm
			works as intended.</p>
			      <p>However, if the metric is published with multiple types of units and you don't specify a unit, the alarm's
			behavior is not defined and
			it behaves predictably.</p>
		       <p>We recommend omitting <code>Unit</code> so that you don't inadvertently
			specify an incorrect unit that is not published for this metric. Doing so 
			causes the alarm to be stuck in the <code>INSUFFICIENT DATA</code> state.</p>")
    @as("Unit")
    unit_: option<standardUnit>,
    @ocaml.doc("<p>The length, in seconds, used each time the metric specified in <code>MetricName</code> is
			evaluated. Valid values are 10, 30, and any multiple of 60.</p>
		       <p>
            <code>Period</code> is required for alarms based on static thresholds. If 
		you are creating an alarm based on a metric math expression, you specify the 
		period for each metric within the objects in the <code>Metrics</code> array.</p>
		       <p>Be sure to specify 10 or 30 only for metrics that are stored by a <code>PutMetricData</code> call with a
				<code>StorageResolution</code> of 1. If you specify a period of 10 or 30 for a metric that does not have
			sub-minute resolution, the alarm still attempts to gather data at the period rate that you specify. In this case,
			it does not receive data for the attempts that do not correspond to a one-minute data resolution, and the alarm
			might often lapse into INSUFFICENT_DATA status. Specifying 10 or 30 also sets this alarm as a high-resolution alarm,
			which has a higher charge than other alarms. For more information about pricing, see <a href=\"https://aws.amazon.com/cloudwatch/pricing/\">Amazon CloudWatch Pricing</a>.</p>
		       <p>An alarm's total current evaluation period can
		be no longer than one day, so <code>Period</code> multiplied by <code>EvaluationPeriods</code> cannot be more than 86,400 seconds.</p>")
    @as("Period")
    period: option<period>,
    @ocaml.doc("<p>The dimensions for the metric specified in <code>MetricName</code>.</p>")
    @as("Dimensions")
    dimensions: option<dimensions>,
    @ocaml.doc("<p>The percentile statistic for the metric specified in <code>MetricName</code>. Specify a value 
			between p0.0 and p100. When you call <code>PutMetricAlarm</code> and specify 
			a <code>MetricName</code>, you must 
			specify either <code>Statistic</code> or <code>ExtendedStatistic,</code> but not both.</p>")
    @as("ExtendedStatistic")
    extendedStatistic: option<extendedStatistic>,
    @ocaml.doc("<p>The statistic for the metric specified in <code>MetricName</code>, other than percentile.
		    For percentile statistics, use <code>ExtendedStatistic</code>. When you call <code>PutMetricAlarm</code> and specify 
			a <code>MetricName</code>, you must 
		specify either <code>Statistic</code> or <code>ExtendedStatistic,</code> but not both.</p>")
    @as("Statistic")
    statistic: option<statistic>,
    @ocaml.doc(
      "<p>The namespace for the metric associated specified in <code>MetricName</code>.</p>"
    )
    @as("Namespace")
    namespace: option<namespace>,
    @ocaml.doc("<p>The name for the metric associated with the alarm. For each <code>PutMetricAlarm</code>
		operation, you must specify either <code>MetricName</code> or a <code>Metrics</code> array.</p>
		       <p>If you are creating an alarm based on a math expression, you cannot specify this parameter, or any of the 
			<code>Dimensions</code>, <code>Period</code>,
			<code>Namespace</code>, <code>Statistic</code>, or <code>ExtendedStatistic</code> parameters. Instead, you specify 
		all this information in the <code>Metrics</code> array.</p>")
    @as("MetricName")
    metricName: option<metricName>,
    @ocaml.doc("<p>The actions to execute when this alarm transitions to the <code>INSUFFICIENT_DATA</code> state from any other state. 
			Each action is specified as an Amazon Resource Name (ARN).</p>

		       <p>Valid Values: <code>arn:aws:automate:<i>region</i>:ec2:stop</code> | 
			<code>arn:aws:automate:<i>region</i>:ec2:terminate</code> | 
			<code>arn:aws:automate:<i>region</i>:ec2:recover</code> |
			<code>arn:aws:automate:<i>region</i>:ec2:reboot</code> |
			<code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
            </code> |
			<code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>:autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i>
            </code>
         </p>

		       <p>Valid Values (for use with IAM roles):
			<code>>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code> |
				<code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code> |
				<code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code>
         </p>")
    @as("InsufficientDataActions")
    insufficientDataActions: option<resourceList>,
    @ocaml.doc("<p>The actions to execute when this alarm transitions to the <code>ALARM</code> state from any other state. 
			Each action is specified as an Amazon Resource Name (ARN).</p>

		       <p>Valid Values: <code>arn:aws:automate:<i>region</i>:ec2:stop</code> | 
			<code>arn:aws:automate:<i>region</i>:ec2:terminate</code> | 
			<code>arn:aws:automate:<i>region</i>:ec2:recover</code> |
			<code>arn:aws:automate:<i>region</i>:ec2:reboot</code> |
			<code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
            </code> |
			<code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>:autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i>
            </code>
			| <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:opsitem:<i>severity</i>
            </code>
         </p>

		       <p>Valid Values (for use with IAM roles):
			<code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code> |
				<code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code> |
				<code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code>
         </p>")
    @as("AlarmActions")
    alarmActions: option<resourceList>,
    @ocaml.doc("<p>The actions to execute when this alarm transitions to an <code>OK</code> state
			from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>

		       <p>Valid Values: <code>arn:aws:automate:<i>region</i>:ec2:stop</code> | 
			<code>arn:aws:automate:<i>region</i>:ec2:terminate</code> | 
			<code>arn:aws:automate:<i>region</i>:ec2:recover</code> |
			<code>arn:aws:automate:<i>region</i>:ec2:reboot</code> |
			<code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
            </code> |
			<code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>:autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i>
            </code>
         </p>

		       <p>Valid Values (for use with IAM roles):
			<code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code> |
				<code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code> |
				<code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code> |
			    <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Recover/1.0</code>
         </p>")
    @as("OKActions")
    okactions: option<resourceList>,
    @ocaml.doc("<p>Indicates whether actions should be executed during any changes to the alarm state. The default is 
			<code>TRUE</code>.</p>")
    @as("ActionsEnabled")
    actionsEnabled: option<actionsEnabled>,
    @ocaml.doc("<p>The description for the alarm.</p>") @as("AlarmDescription")
    alarmDescription: option<alarmDescription>,
    @ocaml.doc("<p>The name for the alarm. This name must be unique within the Region.</p>")
    @as("AlarmName")
    alarmName: alarmName,
  }

  @module("@aws-sdk/client-monitoring") @new external new: request => t = "PutMetricAlarmCommand"
  let make = (
    ~comparisonOperator,
    ~evaluationPeriods,
    ~alarmName,
    ~thresholdMetricId=?,
    ~tags=?,
    ~metrics=?,
    ~evaluateLowSampleCountPercentile=?,
    ~treatMissingData=?,
    ~threshold=?,
    ~datapointsToAlarm=?,
    ~unit_=?,
    ~period=?,
    ~dimensions=?,
    ~extendedStatistic=?,
    ~statistic=?,
    ~namespace=?,
    ~metricName=?,
    ~insufficientDataActions=?,
    ~alarmActions=?,
    ~okactions=?,
    ~actionsEnabled=?,
    ~alarmDescription=?,
    (),
  ) =>
    new({
      thresholdMetricId: thresholdMetricId,
      tags: tags,
      metrics: metrics,
      evaluateLowSampleCountPercentile: evaluateLowSampleCountPercentile,
      treatMissingData: treatMissingData,
      comparisonOperator: comparisonOperator,
      threshold: threshold,
      datapointsToAlarm: datapointsToAlarm,
      evaluationPeriods: evaluationPeriods,
      unit_: unit_,
      period: period,
      dimensions: dimensions,
      extendedStatistic: extendedStatistic,
      statistic: statistic,
      namespace: namespace,
      metricName: metricName,
      insufficientDataActions: insufficientDataActions,
      alarmActions: alarmActions,
      okactions: okactions,
      actionsEnabled: actionsEnabled,
      alarmDescription: alarmDescription,
      alarmName: alarmName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetMetricData = {
  type t
  type request = {
    @ocaml.doc("<p>This structure includes the <code>Timezone</code> parameter, which you can use
			to specify your time zone so that the labels of returned data display the 
			correct time
			for your time zone. </p>")
    @as("LabelOptions")
    labelOptions: option<labelOptions>,
    @ocaml.doc("<p>The maximum number of data points the request should return before paginating. If you omit
			this, the default of 100,800 is used.</p>")
    @as("MaxDatapoints")
    maxDatapoints: option<getMetricDataMaxDatapoints>,
    @ocaml.doc("<p>The order in which data points should be returned. <code>TimestampDescending</code> returns the newest data first and paginates
			when the <code>MaxDatapoints</code> limit is reached. <code>TimestampAscending</code> returns the oldest data first and paginates
			when the <code>MaxDatapoints</code> limit is reached.</p>")
    @as("ScanBy")
    scanBy: option<scanBy>,
    @ocaml.doc("<p>Include this value, if it was returned by the previous <code>GetMetricData</code> operation, 
			to get the next set of data points.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The time stamp indicating the latest data to be returned.</p>
		       <p>The value specified is exclusive; results include data points up to the specified time stamp.</p>
		       <p>For better performance, specify <code>StartTime</code> and <code>EndTime</code>
			values that align with the value of the metric's <code>Period</code> and sync up with
			the beginning and end of an hour. For example, if the <code>Period</code> of a metric
			is 5 minutes, specifying 12:05 or 12:30 as <code>EndTime</code> can get a faster response
			from CloudWatch than setting 12:07 or 12:29 as the <code>EndTime</code>.</p>")
    @as("EndTime")
    endTime: timestamp_,
    @ocaml.doc("<p>The time stamp indicating the earliest data to be returned.</p>
		       <p>The value specified is inclusive; results include data points with the specified time stamp. </p>
		       <p>CloudWatch rounds the specified time stamp as follows:</p>
		       <ul>
            <li>
               <p>Start time less than 15 days ago - Round down to the nearest whole minute.
				For example, 12:32:34 is rounded down to 12:32:00.</p>
            </li>
            <li>
               <p>Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval.
				For example, 12:32:34 is rounded down to 12:30:00.</p>
            </li>
            <li>
               <p>Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval.
				For example, 12:32:34 is rounded down to 12:00:00.</p>
            </li>
         </ul>
		       <p>If you set <code>Period</code> to 5, 10, or 30, the start time of your request is 
			rounded down to the nearest time that corresponds to even 5-, 10-, or 30-second divisions
			of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the previous 
			10-second period, the start time of your request is rounded down and you receive data from 01:05:10 to 
			01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of data, using a 
			period of 5 seconds, you receive data 
			timestamped between 15:02:15 and 15:07:15.
		</p>
		       <p>For better performance, specify <code>StartTime</code> and <code>EndTime</code>
		values that align with the value of the metric's <code>Period</code> and sync up with
		the beginning and end of an hour. For example, if the <code>Period</code> of a metric
		is 5 minutes, specifying 12:05 or 12:30 as <code>StartTime</code> can get a faster response
			from CloudWatch than setting 12:07 or 12:29 as the <code>StartTime</code>.</p>")
    @as("StartTime")
    startTime: timestamp_,
    @ocaml.doc("<p>The metric queries to be returned. A single <code>GetMetricData</code> call can include as many as 500 <code>MetricDataQuery</code>
		structures. Each of these structures can specify either a metric to retrieve, or a math expression to perform on retrieved data. </p>")
    @as("MetricDataQueries")
    metricDataQueries: metricDataQueries,
  }
  type response = {
    @ocaml.doc("<p>Contains a message about this <code>GetMetricData</code> operation, if the operation results in such a message.
			An example of a message that
			might be returned is <code>Maximum number of allowed metrics exceeded</code>. If there is a message, as much of the
			operation as possible is still executed.</p>
		       <p>A message appears here only if it is related to the global <code>GetMetricData</code> operation. Any message
			about a specific metric returned by the operation appears in the <code>MetricDataResult</code> object returned for that metric.</p>")
    @as("Messages")
    messages: option<metricDataResultMessages>,
    @ocaml.doc("<p>A token that marks the next batch of returned results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The metrics that are returned, including the metric name, namespace, and dimensions.</p>"
    )
    @as("MetricDataResults")
    metricDataResults: option<metricDataResults>,
  }
  @module("@aws-sdk/client-monitoring") @new external new: request => t = "GetMetricDataCommand"
  let make = (
    ~endTime,
    ~startTime,
    ~metricDataQueries,
    ~labelOptions=?,
    ~maxDatapoints=?,
    ~scanBy=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      labelOptions: labelOptions,
      maxDatapoints: maxDatapoints,
      scanBy: scanBy,
      nextToken: nextToken,
      endTime: endTime,
      startTime: startTime,
      metricDataQueries: metricDataQueries,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlarmsForMetric = {
  type t
  type request = {
    @ocaml.doc("<p>The unit for the metric.</p>") @as("Unit") unit_: option<standardUnit>,
    @ocaml.doc("<p>The period, in seconds, over which the statistic is applied.</p>") @as("Period")
    period: option<period>,
    @ocaml.doc("<p>The dimensions associated with the metric. If the metric has any associated
			dimensions, you must specify them in order for the call to succeed.</p>")
    @as("Dimensions")
    dimensions: option<dimensions>,
    @ocaml.doc("<p>The percentile statistic for the metric. Specify a value between
		    p0.0 and p100.</p>")
    @as("ExtendedStatistic")
    extendedStatistic: option<extendedStatistic>,
    @ocaml.doc("<p>The statistic for the metric, other than percentiles.
		    For percentile statistics, use <code>ExtendedStatistics</code>.</p>")
    @as("Statistic")
    statistic: option<statistic>,
    @ocaml.doc("<p>The namespace of the metric.</p>") @as("Namespace") namespace: namespace,
    @ocaml.doc("<p>The name of the metric.</p>") @as("MetricName") metricName: metricName,
  }
  type response = {
    @ocaml.doc("<p>The information for each alarm with the specified metric.</p>")
    @as("MetricAlarms")
    metricAlarms: option<metricAlarms>,
  }
  @module("@aws-sdk/client-monitoring") @new
  external new: request => t = "DescribeAlarmsForMetricCommand"
  let make = (
    ~namespace,
    ~metricName,
    ~unit_=?,
    ~period=?,
    ~dimensions=?,
    ~extendedStatistic=?,
    ~statistic=?,
    (),
  ) =>
    new({
      unit_: unit_,
      period: period,
      dimensions: dimensions,
      extendedStatistic: extendedStatistic,
      statistic: statistic,
      namespace: namespace,
      metricName: metricName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlarms = {
  type t
  type request = {
    @ocaml.doc("<p>The token returned by a previous call to indicate that there is more data
			available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of alarm descriptions to retrieve.</p>") @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>Use this parameter to filter the results of the operation to only those alarms that
		use a certain alarm action. For example, you could specify the ARN of an SNS topic to find all
		alarms that send notifications to that topic.</p>")
    @as("ActionPrefix")
    actionPrefix: option<actionPrefix>,
    @ocaml.doc(
      "<p>Specify this parameter to receive information only about alarms that are currently in the state that you specify.</p>"
    )
    @as("StateValue")
    stateValue: option<stateValue>,
    @ocaml.doc("<p>If you use this parameter and specify the name of a metric or composite alarm, the operation returns 
			information about the \"parent\" alarms
			of the alarm you specify. These are the composite alarms that have <code>AlarmRule</code>
			parameters that reference 
			the alarm named in <code>ParentsOfAlarmName</code>. Information about the alarm that you specify in
			<code>ParentsOfAlarmName</code> is not returned.</p>
		       <p>If you specify <code>ParentsOfAlarmName</code>, you cannot specify any other parameters in the request except
			for <code>MaxRecords</code> and <code>NextToken</code>. If you do so, you receive a validation
			error.</p>
		       <note>
            <p>Only the Alarm Name and ARN are returned by this operation when you use this parameter. To get complete information about
			these alarms, perform another <code>DescribeAlarms</code> operation and specify
			the parent alarm names in the <code>AlarmNames</code> parameter.</p>
         </note>")
    @as("ParentsOfAlarmName")
    parentsOfAlarmName: option<alarmName>,
    @ocaml.doc("<p>If you use this parameter and specify the name of a composite alarm, the operation returns 
			information about the \"children\" alarms
			of the alarm you specify. These are the metric alarms and composite alarms referenced in the 
			<code>AlarmRule</code> field of the composite alarm that you specify in 
			<code>ChildrenOfAlarmName</code>. Information about the composite alarm that you name in 
			<code>ChildrenOfAlarmName</code> is not returned.</p>
		       <p>If you specify <code>ChildrenOfAlarmName</code>, you cannot specify any other parameters in the request except
			for <code>MaxRecords</code> and <code>NextToken</code>. If you do so, you
			receive a validation
			error.</p>
		       <note>
            <p>Only the <code>Alarm Name</code>, <code>ARN</code>, <code>StateValue</code> (OK/ALARM/INSUFFICIENT_DATA), and <code>StateUpdatedTimestamp</code> 
			information are returned by this operation 
			when you use this parameter. To get complete information about
			these alarms, perform another <code>DescribeAlarms</code> operation and specify
			the parent alarm names in the <code>AlarmNames</code> parameter.</p>
         </note>")
    @as("ChildrenOfAlarmName")
    childrenOfAlarmName: option<alarmName>,
    @ocaml.doc("<p>Use this parameter to specify whether you want the operation to return metric alarms or composite alarms. If you omit this parameter, 
		only metric alarms are returned.</p>")
    @as("AlarmTypes")
    alarmTypes: option<alarmTypes>,
    @ocaml.doc("<p>An alarm name prefix. If you specify this parameter, you receive information about all alarms that have names
			that start with this prefix.</p>
		       <p>If this parameter
			is specified, you cannot specify <code>AlarmNames</code>.</p>")
    @as("AlarmNamePrefix")
    alarmNamePrefix: option<alarmNamePrefix>,
    @ocaml.doc("<p>The names of the alarms to retrieve information about.</p>") @as("AlarmNames")
    alarmNames: option<alarmNames>,
  }
  type response = {
    @ocaml.doc("<p>The token that marks the start of the next batch of returned results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information about any metric alarms returned by the operation.</p>")
    @as("MetricAlarms")
    metricAlarms: option<metricAlarms>,
    @ocaml.doc("<p>The information about any composite alarms returned by the operation.</p>")
    @as("CompositeAlarms")
    compositeAlarms: option<compositeAlarms>,
  }
  @module("@aws-sdk/client-monitoring") @new external new: request => t = "DescribeAlarmsCommand"
  let make = (
    ~nextToken=?,
    ~maxRecords=?,
    ~actionPrefix=?,
    ~stateValue=?,
    ~parentsOfAlarmName=?,
    ~childrenOfAlarmName=?,
    ~alarmTypes=?,
    ~alarmNamePrefix=?,
    ~alarmNames=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxRecords: maxRecords,
      actionPrefix: actionPrefix,
      stateValue: stateValue,
      parentsOfAlarmName: parentsOfAlarmName,
      childrenOfAlarmName: childrenOfAlarmName,
      alarmTypes: alarmTypes,
      alarmNamePrefix: alarmNamePrefix,
      alarmNames: alarmNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
