type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-logs") @new external createClient: unit => awsServiceClient = "LogsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type value = string
type token = string
type timestamp_ = float
type targetArn = string
type tagValue = string
type tagKey = string
type success = bool
type storedBytes = float
type statsValue = float
type startFromHead = bool
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
type sequenceToken = string
type roleArn = string
type queryString = string
type queryStatus = [
  | @as("Unknown") #Unknown
  | @as("Timeout") #Timeout
  | @as("Cancelled") #Cancelled
  | @as("Failed") #Failed
  | @as("Complete") #Complete
  | @as("Running") #Running
  | @as("Scheduled") #Scheduled
]
type queryListMaxResults = int
type queryId = string
type queryDefinitionString = string
type queryDefinitionName = string
type queryCharOffset = int
type policyName = string
type policyDocument = string
type percentage = int
type orderBy = [@as("LastEventTime") #LastEventTime | @as("LogStreamName") #LogStreamName]
@ocaml.doc(
  "<p>The token for the next set of items to return. The token expires after 24 hours.</p>"
)
type nextToken = string
@ocaml.doc("<p>The value to publish to the CloudWatch metric. 
      For example, if you're counting the occurrences of a term like \"Error\", the value is \"1\" 
      for each occurrence. If you're counting the bytes transferred, the value is the value in the log event.</p>")
type metricValue = string
type metricNamespace = string
@ocaml.doc("<p>The name of the CloudWatch metric to which the monitored log information should be
      published. For example, you might publish to a metric named ErrorCount.</p>")
type metricName = string
type message = string
type logStreamSearchedCompletely = bool
type logStreamName = string
type logRecordPointer = string
type logGroupName = string
type logEventIndex = int
type kmsKeyId = string
type interleaved = bool
type forceUpdate = bool
@ocaml.doc("<p>A symbolic description of how CloudWatch Logs should interpret the data in each log
      event. For example, a log event can contain timestamps, IP addresses, strings, and so on. You
      use the filter pattern to specify what to look for in the log event message.</p>")
type filterPattern = string
type filterName = string
type filterCount = int
type field = string
type exportTaskStatusMessage = string
type exportTaskStatusCode = [
  | @as("RUNNING") #RUNNING
  | @as("PENDING_CANCEL") #PENDING_CANCEL
  | @as("PENDING") #PENDING
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("CANCELLED") #CANCELLED
]
type exportTaskName = string
type exportTaskId = string
type exportDestinationPrefix = string
type exportDestinationBucket = string
type eventsLimit = int
type eventNumber = float
type eventMessage = string
type eventId = string
@ocaml.doc("<p>The method used to distribute log data to the destination, which can be either
      random or grouped by log stream.</p>")
type distribution = [@as("ByLogStream") #ByLogStream | @as("Random") #Random]
type dimensionsValue = string
type dimensionsKey = string
type destinationName = string
type destinationArn = string
type describeQueriesMaxResults = int
type describeLimit = int
type descending = bool
type defaultValue = float
@ocaml.doc("<p>The number of days to retain the log events in the specified log group.
      Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, and 3653.</p>
         <p>To set a log group to never have log events expire, use
    <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DeleteRetentionPolicy.html\">DeleteRetentionPolicy</a>.
  </p>")
type days = int
type arn = string
type accessPolicy = string
type testEventMessages = array<eventMessage>
type tags = Js.Dict.t<tagValue>
type tagList_ = array<tagKey>
@ocaml.doc("<p>Represents a subscription filter.</p>")
type subscriptionFilter = {
  @ocaml.doc("<p>The creation time of the subscription filter, expressed as the number of milliseconds
      after Jan 1, 1970 00:00:00 UTC.</p>")
  creationTime: option<timestamp_>,
  distribution: option<distribution>,
  @ocaml.doc("<p></p>") roleArn: option<roleArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the destination.</p>")
  destinationArn: option<destinationArn>,
  filterPattern: option<filterPattern>,
  @ocaml.doc("<p>The name of the log group.</p>") logGroupName: option<logGroupName>,
  @ocaml.doc("<p>The name of the subscription filter.</p>") filterName: option<filterName>,
}
@ocaml.doc("<p>Represents the search status of a log stream.</p>")
type searchedLogStream = {
  @ocaml.doc("<p>Indicates whether all the events in this log stream were searched.</p>")
  searchedCompletely: option<logStreamSearchedCompletely>,
  @ocaml.doc("<p>The name of the log stream.</p>") logStreamName: option<logStreamName>,
}
@ocaml.doc("<p>Contains one field from one log event returned by a CloudWatch Logs Insights query, along with the value of that field.</p>
         <p>For more information about the fields that are 
      generated by CloudWatch logs, see 
      <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html\">Supported Logs and Discovered Fields</a>.</p>")
type resultField = {
  @ocaml.doc("<p>The value of this field.</p>") value: option<value>,
  @ocaml.doc("<p>The log event field.</p>") field: option<field>,
}
@ocaml.doc(
  "<p>A policy enabling one or more entities to put logs to a log group in this account.</p>"
)
type resourcePolicy = {
  @ocaml.doc("<p>Timestamp showing when this policy was last updated, expressed as the number of
      milliseconds after Jan 1, 1970 00:00:00 UTC.</p>")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The details of the policy.</p>") policyDocument: option<policyDocument>,
  @ocaml.doc("<p>The name of the resource policy.</p>") policyName: option<policyName>,
}
@ocaml.doc("<p>Represents the rejected events.</p>")
type rejectedLogEventsInfo = {
  @ocaml.doc("<p>The expired log events.</p>") expiredLogEventEndIndex: option<logEventIndex>,
  @ocaml.doc("<p>The log events that are too old.</p>")
  tooOldLogEventEndIndex: option<logEventIndex>,
  @ocaml.doc("<p>The log events that are too new.</p>")
  tooNewLogEventStartIndex: option<logEventIndex>,
}
@ocaml.doc("<p>Contains the number of log events scanned by the query, the number of log events that matched the 
      query criteria, and the total number of bytes in the log events that were scanned.</p>")
type queryStatistics = {
  @ocaml.doc("<p>The total number of bytes in the log events scanned during the query.</p>")
  bytesScanned: option<statsValue>,
  @ocaml.doc("<p>The total number of log events scanned during the query.</p>")
  recordsScanned: option<statsValue>,
  @ocaml.doc("<p>The number of log events that matched the query string.</p>")
  recordsMatched: option<statsValue>,
}
@ocaml.doc(
  "<p>Information about one CloudWatch Logs Insights query that matches the request in a <code>DescribeQueries</code> operation. </p>"
)
type queryInfo = {
  @ocaml.doc("<p>The name of the log group scanned by this query.</p>")
  logGroupName: option<logGroupName>,
  @ocaml.doc("<p>The date and time that this query was created.</p>")
  createTime: option<timestamp_>,
  @ocaml.doc("<p>The status of this query. Possible values are <code>Cancelled</code>,
      <code>Complete</code>, <code>Failed</code>, <code>Running</code>, <code>Scheduled</code>, and <code>Unknown</code>.</p>")
  status: option<queryStatus>,
  @ocaml.doc("<p>The query string used in this query.</p>") queryString: option<queryString>,
  @ocaml.doc("<p>The unique ID number of this query.</p>") queryId: option<queryId>,
}
@ocaml.doc("<p>Reserved.</p>")
type queryCompileErrorLocation = {
  @ocaml.doc("<p>Reserved.</p>") endCharOffset: option<queryCharOffset>,
  @ocaml.doc("<p>Reserved.</p>") startCharOffset: option<queryCharOffset>,
}
@ocaml.doc("<p>Represents a log event.</p>")
type outputLogEvent = {
  @ocaml.doc("<p>The time the event was ingested, expressed as the number of milliseconds after Jan 1,
      1970 00:00:00 UTC.</p>")
  ingestionTime: option<timestamp_>,
  @ocaml.doc("<p>The data contained in the log event.</p>") message: option<eventMessage>,
  @ocaml.doc("<p>The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970
      00:00:00 UTC.</p>")
  @as("timestamp")
  timestamp_: option<timestamp_>,
}
@ocaml.doc("<p>Represents a log stream, which is a sequence of log events from 
      a single emitter of logs.</p>")
type logStream = {
  @ocaml.doc("<p>The number of bytes stored.</p>
         <p>
            <b>Important:</b> On June 17, 2019, this parameter was
      deprecated for log streams, and is always reported as zero. This change applies only to log
      streams. The <code>storedBytes</code> parameter for log groups is not affected.</p>")
  storedBytes: option<storedBytes>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the log stream.</p>") arn: option<arn>,
  @ocaml.doc("<p>The sequence token.</p>") uploadSequenceToken: option<sequenceToken>,
  @ocaml.doc("<p>The ingestion time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00
      UTC.</p>")
  lastIngestionTime: option<timestamp_>,
  @ocaml.doc("<p>The time of the most recent log event in the log stream in CloudWatch Logs. This number
      is expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. The
        <code>lastEventTime</code> value updates on an eventual consistency basis. It typically
      updates in less than an hour from ingestion, but in rare situations might take
      longer.</p>")
  lastEventTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time of the first event, expressed as the number of milliseconds after Jan 1, 1970
      00:00:00 UTC.</p>")
  firstEventTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The creation time of the stream, expressed as the number of milliseconds after Jan 1,
      1970 00:00:00 UTC.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the log stream.</p>") logStreamName: option<logStreamName>,
}
type logRecord = Js.Dict.t<value>
type logGroupNames = array<logGroupName>
@ocaml.doc("<p>The fields contained in log events found by a <code>GetLogGroupFields</code> operation,
      along with the percentage of queried log events in which each field appears.</p>")
type logGroupField = {
  @ocaml.doc("<p>The percentage of log events queried that contained the field.</p>")
  percent: option<percentage>,
  @ocaml.doc("<p>The name of a log field.</p>") name: option<field>,
}
@ocaml.doc("<p>Represents a log group.</p>")
type logGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.</p>")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The number of bytes stored.</p>") storedBytes: option<storedBytes>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the log group.</p>") arn: option<arn>,
  @ocaml.doc("<p>The number of metric filters.</p>") metricFilterCount: option<filterCount>,
  retentionInDays: option<days>,
  @ocaml.doc("<p>The creation time of the log group, expressed as the number of milliseconds after Jan
      1, 1970 00:00:00 UTC.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The name of the log group.</p>") logGroupName: option<logGroupName>,
}
type inputLogStreamNames = array<logStreamName>
@ocaml.doc("<p>Represents a log event, which is a record of activity that was recorded 
      by the application or resource being monitored.</p>")
type inputLogEvent = {
  @ocaml.doc("<p>The raw event message.</p>") message: eventMessage,
  @ocaml.doc("<p>The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970
      00:00:00 UTC.</p>")
  @as("timestamp")
  timestamp_: timestamp_,
}
@ocaml.doc("<p>Represents a matched event.</p>")
type filteredLogEvent = {
  @ocaml.doc("<p>The ID of the event.</p>") eventId: option<eventId>,
  @ocaml.doc("<p>The time the event was ingested, expressed as the number of milliseconds after Jan 1,
      1970 00:00:00 UTC.</p>")
  ingestionTime: option<timestamp_>,
  @ocaml.doc("<p>The data contained in the log event.</p>") message: option<eventMessage>,
  @ocaml.doc("<p>The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970
      00:00:00 UTC.</p>")
  @as("timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>The name of the log stream to which this event belongs.</p>")
  logStreamName: option<logStreamName>,
}
type extractedValues = Js.Dict.t<value>
@ocaml.doc("<p>Represents the status of an export task.</p>")
type exportTaskStatus = {
  @ocaml.doc("<p>The status message related to the status code.</p>")
  message: option<exportTaskStatusMessage>,
  @ocaml.doc("<p>The status code of the export task.</p>") code: option<exportTaskStatusCode>,
}
@ocaml.doc("<p>Represents the status of an export task.</p>")
type exportTaskExecutionInfo = {
  @ocaml.doc("<p>The completion time of the export task, expressed as the number of milliseconds after
      Jan 1, 1970 00:00:00 UTC.</p>")
  completionTime: option<timestamp_>,
  @ocaml.doc("<p>The creation time of the export task, expressed as the number of milliseconds after Jan
      1, 1970 00:00:00 UTC.</p>")
  creationTime: option<timestamp_>,
}
type dimensions = Js.Dict.t<dimensionsValue>
@ocaml.doc("<p>Represents a cross-account destination that receives subscription log events.</p>")
type destination = {
  @ocaml.doc("<p>The creation time of the destination, expressed as the number of milliseconds after Jan
      1, 1970 00:00:00 UTC.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The ARN of this destination.</p>") arn: option<arn>,
  @ocaml.doc("<p>An IAM policy document that governs which Amazon Web Services accounts can create subscription filters
      against this destination.</p>")
  accessPolicy: option<accessPolicy>,
  @ocaml.doc("<p>A role for impersonation, used when delivering log events to the target.</p>")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the physical target where the log events are
      delivered (for example, a Kinesis stream).</p>")
  targetArn: option<targetArn>,
  @ocaml.doc("<p>The name of the destination.</p>") destinationName: option<destinationName>,
}
type subscriptionFilters = array<subscriptionFilter>
type searchedLogStreams = array<searchedLogStream>
type resultRows = array<resultField>
type resourcePolicies = array<resourcePolicy>
type queryInfoList = array<queryInfo>
@ocaml.doc(
  "<p>This structure contains details about a saved CloudWatch Logs Insights query definition.</p>"
)
type queryDefinition = {
  @ocaml.doc(
    "<p>If this query definition contains a list of log groups that it is limited to, that list appears here.</p>"
  )
  logGroupNames: option<logGroupNames>,
  @ocaml.doc("<p>The date that the query definition was most recently modified.</p>")
  lastModified: option<timestamp_>,
  @ocaml.doc("<p>The query string to use for this definition.
      For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html\">CloudWatch Logs Insights Query Syntax</a>.</p>")
  queryString: option<queryDefinitionString>,
  @ocaml.doc("<p>The name of the query definition.</p>") name: option<queryDefinitionName>,
  @ocaml.doc("<p>The unique ID of the query definition.</p>") queryDefinitionId: option<queryId>,
}
@ocaml.doc("<p>Reserved.</p>")
type queryCompileError = {
  @ocaml.doc("<p>Reserved.</p>") message: option<message>,
  @ocaml.doc("<p>Reserved.</p>") location: option<queryCompileErrorLocation>,
}
type outputLogEvents = array<outputLogEvent>
@ocaml.doc("<p>Indicates how to transform ingested log events to metric data in a CloudWatch
      metric.</p>")
type metricTransformation = {
  @ocaml.doc(
    "<p>The unit to assign to the metric. If you omit this, the unit is set as <code>None</code>.</p>"
  )
  @as("unit")
  unit_: option<standardUnit>,
  @ocaml.doc("<p>The fields to use as dimensions for the metric. One metric filter can include
    as many as three dimensions.</p>
         <important>
            <p>Metrics extracted from log events are charged as custom metrics.
      To prevent unexpected high charges, do not specify high-cardinality fields such as 
      <code>IPAddress</code> or <code>requestID</code> as dimensions. Each different value 
      found for 
      a dimension is treated as a separate metric and accrues charges as a separate custom metric.
    </p>
            <p>To help prevent accidental high charges, Amazon disables a metric filter
        if it generates 1000 different name/value pairs for the dimensions that you 
        have specified within a certain amount of time.</p>
            <p>You can also set up a billing alarm to alert you if your charges are higher than 
        expected. For more information, 
        see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html\">
          Creating a Billing Alarm to Monitor Your Estimated Amazon Web Services Charges</a>.
       </p>
         </important>")
  dimensions: option<dimensions>,
  @ocaml.doc("<p>(Optional) The value to emit when a filter pattern does not match a log event. 
      This value can be null.</p>")
  defaultValue: option<defaultValue>,
  @ocaml.doc(
    "<p>The value to publish to the CloudWatch metric when a filter pattern matches a log event.</p>"
  )
  metricValue: metricValue,
  @ocaml.doc("<p>A custom namespace to contain your metric in CloudWatch. Use namespaces to group together metrics
      that are similar. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace\">Namespaces</a>.</p>")
  metricNamespace: metricNamespace,
  @ocaml.doc("<p>The name of the CloudWatch metric.</p>") metricName: metricName,
}
@ocaml.doc("<p>Represents a matched event.</p>")
type metricFilterMatchRecord = {
  @ocaml.doc("<p>The values extracted from the event data by the filter.</p>")
  extractedValues: option<extractedValues>,
  @ocaml.doc("<p>The raw event data.</p>") eventMessage: option<eventMessage>,
  @ocaml.doc("<p>The event number.</p>") eventNumber: option<eventNumber>,
}
type logStreams = array<logStream>
type logGroups = array<logGroup>
type logGroupFieldList = array<logGroupField>
type inputLogEvents = array<inputLogEvent>
type filteredLogEvents = array<filteredLogEvent>
@ocaml.doc("<p>Represents an export task.</p>")
type exportTask = {
  @ocaml.doc("<p>Execution information about the export task.</p>")
  executionInfo: option<exportTaskExecutionInfo>,
  @ocaml.doc("<p>The status of the export task.</p>") status: option<exportTaskStatus>,
  @ocaml.doc(
    "<p>The prefix that was used as the start of Amazon S3 key for every object exported.</p>"
  )
  destinationPrefix: option<exportDestinationPrefix>,
  @ocaml.doc("<p>The name of the S3 bucket to which the log data was exported.</p>")
  destination: option<exportDestinationBucket>,
  @ocaml.doc("<p>The end time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
      Events with a timestamp later than this time are not exported.</p>")
  to: option<timestamp_>,
  @ocaml.doc("<p>The start time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
      Events with a timestamp before this time are not exported.</p>")
  from: option<timestamp_>,
  @ocaml.doc("<p>The name of the log group from which logs data was exported.</p>")
  logGroupName: option<logGroupName>,
  @ocaml.doc("<p>The name of the export task.</p>") taskName: option<exportTaskName>,
  @ocaml.doc("<p>The ID of the export task.</p>") taskId: option<exportTaskId>,
}
type destinations = array<destination>
type queryResults = array<resultRows>
type queryDefinitionList = array<queryDefinition>
type metricTransformations = array<metricTransformation>
type metricFilterMatches = array<metricFilterMatchRecord>
type exportTasks = array<exportTask>
@ocaml.doc("<p>Metric filters express how CloudWatch Logs would extract metric observations 
      from ingested log events and transform them into metric data in a CloudWatch metric.</p>")
type metricFilter = {
  @ocaml.doc("<p>The name of the log group.</p>") logGroupName: option<logGroupName>,
  @ocaml.doc("<p>The creation time of the metric filter, expressed as the number of milliseconds after
      Jan 1, 1970 00:00:00 UTC.</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The metric transformations.</p>")
  metricTransformations: option<metricTransformations>,
  filterPattern: option<filterPattern>,
  @ocaml.doc("<p>The name of the metric filter.</p>") filterName: option<filterName>,
}
type metricFilters = array<metricFilter>
@ocaml.doc("<p>You can use Amazon CloudWatch Logs to monitor, store, and access your log files from
      EC2 instances, CloudTrail, and other sources. You can then retrieve the associated
      log data from CloudWatch Logs using the CloudWatch console, CloudWatch Logs commands in the
      Amazon Web Services CLI, CloudWatch Logs API, or CloudWatch Logs SDK.</p> 
         <p>You can use CloudWatch Logs to:</p>
         <ul>
            <li>
               <p>
                  <b>Monitor logs from EC2 instances in real-time</b>: You
          can use CloudWatch Logs to monitor applications and systems using log data. For example,
          CloudWatch Logs can track the number of errors that occur in your application logs and
          send you a notification whenever the rate of errors exceeds a threshold that you specify.
          CloudWatch Logs uses your log data for monitoring so no code changes are required. For
          example, you can monitor application logs for specific literal terms (such as
          \"NullReferenceException\") or count the number of occurrences of a literal term at a
          particular position in log data (such as \"404\" status codes in an Apache access log). When
          the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch
          metric that you specify.</p>
            </li>
            <li>
               <p>
                  <b>Monitor CloudTrail logged events</b>: You can
          create alarms in CloudWatch and receive notifications of particular API activity as
          captured by CloudTrail. You can use the notification to perform troubleshooting.</p>
            </li>
            <li>
               <p>
                  <b>Archive log data</b>: You can use CloudWatch Logs to
          store your log data in highly durable storage. You can change the log retention setting so
          that any log events older than this setting are automatically deleted. The CloudWatch Logs
          agent makes it easy to quickly send both rotated and non-rotated log data off of a host
          and into the log service. You can then access the raw log data when you need it.</p>
            </li>
         </ul>")
module StopQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The ID number of the query to stop. To find this ID number, use
        <code>DescribeQueries</code>.</p>")
    queryId: queryId,
  }
  type response = {
    @ocaml.doc(
      "<p>This is true if the query was stopped by the <code>StopQuery</code> operation.</p>"
    )
    success: option<success>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "StopQueryCommand"
  let make = (~queryId, ()) => new({queryId: queryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSubscriptionFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The method used to distribute log data to the destination. By default, log data is
      grouped by log stream, but the grouping can be set to random for a more even distribution.
      This property is only applicable when the destination is an Amazon Kinesis stream. </p>")
    distribution: option<distribution>,
    @ocaml.doc("<p>The ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log
      events to the destination stream. You don't need to provide the ARN when you are working with
      a logical destination for cross-account delivery.</p>")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The ARN of the destination to deliver matching log events to. Currently, the supported
      destinations are:</p>
         <ul>
            <li>
               <p>An Amazon Kinesis stream belonging to the same account as the subscription filter,
          for same-account delivery.</p>
            </li>
            <li>
               <p>A logical destination (specified using an ARN) belonging to a different account, 
          for cross-account delivery.</p>
               <p>If you are setting up a cross-account subscription, the destination must have an 
        IAM policy associated with it that allows the sender to send logs to the destination.
        For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html\">PutDestinationPolicy</a>.</p>
            </li>
            <li>
               <p>An Amazon Kinesis Firehose delivery stream belonging to the same account as the
          subscription filter, for same-account delivery.</p>
            </li>
            <li>
               <p>A Lambda function belonging to the same account as the subscription filter,
          for same-account delivery.</p>
            </li>
         </ul>")
    destinationArn: destinationArn,
    @ocaml.doc("<p>A filter pattern for subscribing to a filtered stream of log events.</p>")
    filterPattern: filterPattern,
    @ocaml.doc("<p>A name for the subscription filter. If you are updating an existing filter, you must
      specify the correct name in <code>filterName</code>. To find the name of the filter currently
      associated with a log group, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html\">DescribeSubscriptionFilters</a>.</p>")
    filterName: filterName,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutSubscriptionFilterCommand"
  let make = (
    ~destinationArn,
    ~filterPattern,
    ~filterName,
    ~logGroupName,
    ~distribution=?,
    ~roleArn=?,
    (),
  ) =>
    new({
      distribution: distribution,
      roleArn: roleArn,
      destinationArn: destinationArn,
      filterPattern: filterPattern,
      filterName: filterName,
      logGroupName: logGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRetentionPolicy = {
  type t
  type request = {
    retentionInDays: days,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutRetentionPolicyCommand"
  let make = (~retentionInDays, ~logGroupName, ()) =>
    new({retentionInDays: retentionInDays, logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutDestinationPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Specify true if you are updating an existing destination policy to grant permission to
    an organization ID instead of granting permission to individual AWS accounts. Before
    you update a destination policy this way, you must first update the subscription
    filters in the accounts that send logs to this destination. If you do not, the subscription
    filters might stop working. By specifying <code>true</code>
      for <code>forceUpdate</code>, you are affirming that you have already updated the subscription 
      filters.
    For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Cross-Account-Log_Subscription-Update.html\">
      Updating an existing cross-account subscription</a>
         </p>
         <p>If you omit this parameter, the default of <code>false</code> is used.</p>")
    forceUpdate: option<forceUpdate>,
    @ocaml.doc("<p>An IAM policy document that authorizes cross-account users to deliver their log events
      to the associated destination. This can be up to 5120 bytes.</p>")
    accessPolicy: accessPolicy,
    @ocaml.doc("<p>A name for an existing destination.</p>") destinationName: destinationName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutDestinationPolicyCommand"
  let make = (~accessPolicy, ~destinationName, ~forceUpdate=?, ()) =>
    new({forceUpdate: forceUpdate, accessPolicy: accessPolicy, destinationName: destinationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateKmsKey = {
  type t
  type request = {@ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName}
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "DisassociateKmsKeyCommand"
  let make = (~logGroupName, ()) => new({logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSubscriptionFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the subscription filter.</p>") filterName: filterName,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new
  external new: request => t = "DeleteSubscriptionFilterCommand"
  let make = (~filterName, ~logGroupName, ()) =>
    new({filterName: filterName, logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRetentionPolicy = {
  type t
  type request = {@ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName}
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteRetentionPolicyCommand"
  let make = (~logGroupName, ()) => new({logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the policy to be revoked. This parameter is required.</p>")
    policyName: option<policyName>,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteResourcePolicyCommand"
  let make = (~policyName=?, ()) => new({policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteQueryDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the query definition that you want to delete. You can use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html\">DescribeQueryDefinitions</a> to retrieve the
      IDs of your saved query definitions.</p>")
    queryDefinitionId: queryId,
  }
  type response = {
    @ocaml.doc("<p>A value of TRUE indicates that the operation succeeded. FALSE indicates that the operation
      failed.</p>")
    success: option<success>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteQueryDefinitionCommand"
  let make = (~queryDefinitionId, ()) => new({queryDefinitionId: queryDefinitionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMetricFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the metric filter.</p>") filterName: filterName,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteMetricFilterCommand"
  let make = (~filterName, ~logGroupName, ()) =>
    new({filterName: filterName, logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLogStream = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the log stream.</p>") logStreamName: logStreamName,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteLogStreamCommand"
  let make = (~logStreamName, ~logGroupName, ()) =>
    new({logStreamName: logStreamName, logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLogGroup = {
  type t
  type request = {@ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName}
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteLogGroupCommand"
  let make = (~logGroupName, ()) => new({logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the destination.</p>") destinationName: destinationName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteDestinationCommand"
  let make = (~destinationName, ()) => new({destinationName: destinationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateLogStream = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the log stream.</p>") logStreamName: logStreamName,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "CreateLogStreamCommand"
  let make = (~logStreamName, ~logGroupName, ()) =>
    new({logStreamName: logStreamName, logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateExportTask = {
  type t
  type request = {
    @ocaml.doc("<p>The prefix used as the start of the key for every object exported. If you don't
      specify a value, the default is <code>exportedlogs</code>.</p>")
    destinationPrefix: option<exportDestinationPrefix>,
    @ocaml.doc(
      "<p>The name of S3 bucket for the exported log data. The bucket must be in the same Amazon Web Services region.</p>"
    )
    destination: exportDestinationBucket,
    @ocaml.doc("<p>The end time of the range for the request, expreswatchlogsdocused as the number of milliseconds
      after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not
      exported.</p>")
    to: timestamp_,
    @ocaml.doc("<p>The start time of the range for the request, expressed as the number of milliseconds
      after Jan 1, 1970 00:00:00 UTC. Events with a timestamp earlier than this time are not
      exported.</p>")
    from: timestamp_,
    @ocaml.doc("<p>Export only log streams that match the provided prefix. If you don't
      specify a value, no prefix filter is applied.</p>")
    logStreamNamePrefix: option<logStreamName>,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
    @ocaml.doc("<p>The name of the export task.</p>") taskName: option<exportTaskName>,
  }
  type response = {@ocaml.doc("<p>The ID of the export task.</p>") taskId: option<exportTaskId>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "CreateExportTaskCommand"
  let make = (
    ~destination,
    ~to,
    ~from,
    ~logGroupName,
    ~destinationPrefix=?,
    ~logStreamNamePrefix=?,
    ~taskName=?,
    (),
  ) =>
    new({
      destinationPrefix: destinationPrefix,
      destination: destination,
      to: to,
      from: from,
      logStreamNamePrefix: logStreamNamePrefix,
      logGroupName: logGroupName,
      taskName: taskName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelExportTask = {
  type t
  type request = {@ocaml.doc("<p>The ID of the export task.</p>") taskId: exportTaskId}
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "CancelExportTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateKmsKey = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. This must be a symmetric CMK.
      For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms\">Amazon Resource Names - Key Management Service</a> and <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using Symmetric and Asymmetric Keys</a>.</p>")
    kmsKeyId: kmsKeyId,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "AssociateKmsKeyCommand"
  let make = (~kmsKeyId, ~logGroupName, ()) => new({kmsKeyId: kmsKeyId, logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagLogGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys. The corresponding tags are removed from the log group.</p>")
    tags: tagList_,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "UntagLogGroupCommand"
  let make = (~tags, ~logGroupName, ()) => new({tags: tags, logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagLogGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The key-value pairs to use for the tags.</p>") tags: tags,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "TagLogGroupCommand"
  let make = (~tags, ~logGroupName, ()) => new({tags: tags, logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Details of the new policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string.
    This parameter is required.</p>
         <p>The following example creates a resource policy enabling the Route 53 service to put
      DNS query logs in to the specified log group. Replace <code>\"logArn\"</code> with the ARN of 
      your CloudWatch Logs resource, such as a log group or log stream.</p>
         <p>CloudWatch Logs also supports <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourcearn\">aws:SourceArn</a>
      and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceaccount\">aws:SourceAccount</a>
condition context keys.</p>
         <p>In the example resource policy, you would replace the value of <code>SourceArn</code> with the resource making the
      call from Route 53 to CloudWatch Logs and replace the value of <code>SourceAccount</code> with 
      the Amazon Web Services account ID making that call.</p>
         <p></p>
         <p>
            <code>{
    \"Version\": \"2012-10-17\",
    \"Statement\": [
        {
           \"Sid\": \"Route53LogsToCloudWatchLogs\",
           \"Effect\": \"Allow\",
           \"Principal\": {
               \"Service\": [
                   \"route53.amazonaws.com\"
                ]
            },
           \"Action\": \"logs:PutLogEvents\",
           \"Resource\": \"logArn\",
           \"Condition\": {
               \"ArnLike\": {
                   \"aws:SourceArn\": \"myRoute53ResourceArn\"
                },
               \"StringEquals\": {
                   \"aws:SourceAccount\": \"myAwsAccountId\"
               }
            }
        }
      ]
}</code>
 
         </p>")
    policyDocument: option<policyDocument>,
    @ocaml.doc("<p>Name of the new policy. This parameter is required.</p>")
    policyName: option<policyName>,
  }
  type response = {@ocaml.doc("<p>The new policy.</p>") resourcePolicy: option<resourcePolicy>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutResourcePolicyCommand"
  let make = (~policyDocument=?, ~policyName=?, ()) =>
    new({policyDocument: policyDocument, policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutQueryDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>The query string to use for this definition. 
      For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html\">CloudWatch Logs Insights Query Syntax</a>.</p>")
    queryString: queryDefinitionString,
    @ocaml.doc("<p>Use this parameter to include specific log groups as part of your query definition.</p>
         <p>If you are updating a query definition and you omit this parameter, then the updated
      definition will contain no log groups.</p>")
    logGroupNames: option<logGroupNames>,
    @ocaml.doc("<p>If you are updating a query definition, use this parameter to specify the ID of the query
      definition that you want to update. You can use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html\">DescribeQueryDefinitions</a> to retrieve the IDs of your saved query
      definitions.</p>
         <p>If you are creating a query definition, do not specify this parameter. CloudWatch
      generates a unique ID for the new query definition and include it in the response to this
      operation.</p>")
    queryDefinitionId: option<queryId>,
    @ocaml.doc("<p>A name for the query definition. If you are saving a lot of query definitions, we
      recommend that you name them so that you can easily find the ones you want by using the first
      part of the name as a filter in the <code>queryDefinitionNamePrefix</code> parameter of <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html\">DescribeQueryDefinitions</a>.</p>")
    name: queryDefinitionName,
  }
  type response = {
    @ocaml.doc("<p>The ID of the query definition.</p>") queryDefinitionId: option<queryId>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutQueryDefinitionCommand"
  let make = (~queryString, ~name, ~logGroupNames=?, ~queryDefinitionId=?, ()) =>
    new({
      queryString: queryString,
      logGroupNames: logGroupNames,
      queryDefinitionId: queryDefinitionId,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of an IAM role that grants CloudWatch Logs permissions to call the Amazon
      Kinesis <code>PutRecord</code> operation on the destination stream.</p>")
    roleArn: roleArn,
    @ocaml.doc(
      "<p>The ARN of an Amazon Kinesis stream to which to deliver matching log events.</p>"
    )
    targetArn: targetArn,
    @ocaml.doc("<p>A name for the destination.</p>") destinationName: destinationName,
  }
  type response = {@ocaml.doc("<p>The destination.</p>") destination: option<destination>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutDestinationCommand"
  let make = (~roleArn, ~targetArn, ~destinationName, ()) =>
    new({roleArn: roleArn, targetArn: targetArn, destinationName: destinationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsLogGroup = {
  type t
  type request = {@ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName}
  type response = {@ocaml.doc("<p>The tags for the log group.</p>") tags: option<tags>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "ListTagsLogGroupCommand"
  let make = (~logGroupName, ()) => new({logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLogRecord = {
  type t
  type request = {
    @ocaml.doc("<p>The pointer corresponding to the log event record you want to retrieve. You get this from
      the response of a <code>GetQueryResults</code> operation. In that response, the value of the
        <code>@ptr</code> field for a log event is the value to use as <code>logRecordPointer</code>
      to retrieve that complete log event record.</p>")
    logRecordPointer: logRecordPointer,
  }
  type response = {
    @ocaml.doc("<p>The requested log event, as a JSON string.</p>") logRecord: option<logRecord>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "GetLogRecordCommand"
  let make = (~logRecordPointer, ()) => new({logRecordPointer: logRecordPointer})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLogGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The key-value pairs to use for the tags.</p>
         <p>CloudWatch Logs doesn’t support IAM policies that prevent users from assigning specified tags to 
      log groups using the <code>aws:Resource/<i>key-name</i>
            </code> or <code>aws:TagKeys</code> condition keys. 
      For more information about using tags to control access, see 
      <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html\">Controlling access to Amazon Web Services resources using tags</a>.</p>")
    tags: option<tags>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. 
      For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms\">Amazon Resource Names - Key Management Service</a>.</p>")
    kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "CreateLogGroupCommand"
  let make = (~logGroupName, ~tags=?, ~kmsKeyId=?, ()) =>
    new({tags: tags, kmsKeyId: kmsKeyId, logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of log events to return in the query. If the query string uses the <code>fields</code> command,
    only the specified fields and their values are returned. The default is 1000.</p>")
    limit: option<eventsLimit>,
    @ocaml.doc("<p>The query string to use.
      For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html\">CloudWatch Logs Insights Query Syntax</a>.</p>")
    queryString: queryString,
    @ocaml.doc("<p>The end of the time range to query. The range is inclusive, so the specified
      end time is included in the query. Specified as epoch
      time, the number of seconds since January 1, 1970, 00:00:00 UTC.</p>")
    endTime: timestamp_,
    @ocaml.doc("<p>The beginning of the time range to query. The range is inclusive, so the specified
      start time is included in the query. Specified as epoch time, the
      number of seconds since January 1, 1970, 00:00:00 UTC.</p>")
    startTime: timestamp_,
    @ocaml.doc("<p>The list of log groups to be queried. You can include up to 20 log groups.</p>
         <p>A <code>StartQuery</code> operation must include a <code>logGroupNames</code> or a <code>logGroupName</code> parameter, but
    not both.</p>")
    logGroupNames: option<logGroupNames>,
    @ocaml.doc("<p>The log group on which to perform the query.</p>
         <p>A <code>StartQuery</code> operation must include a <code>logGroupNames</code> or a <code>logGroupName</code> parameter, but
      not both.</p>")
    logGroupName: option<logGroupName>,
  }
  type response = {@ocaml.doc("<p>The unique ID of the query. </p>") queryId: option<queryId>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "StartQueryCommand"
  let make = (
    ~queryString,
    ~endTime,
    ~startTime,
    ~limit=?,
    ~logGroupNames=?,
    ~logGroupName=?,
    (),
  ) =>
    new({
      limit: limit,
      queryString: queryString,
      endTime: endTime,
      startTime: startTime,
      logGroupNames: logGroupNames,
      logGroupName: logGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutLogEvents = {
  type t
  type request = {
    @ocaml.doc("<p>The sequence token obtained from the response of the previous <code>PutLogEvents</code>
      call. An upload in a newly created log stream does not require a sequence token. You can also
      get the sequence token using <a href=\"https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeLogStreams.html\">DescribeLogStreams</a>. If you call <code>PutLogEvents</code> twice within a narrow
      time period using the same value for <code>sequenceToken</code>, both calls might be
      successful or one might be rejected.</p>")
    sequenceToken: option<sequenceToken>,
    @ocaml.doc("<p>The log events.</p>") logEvents: inputLogEvents,
    @ocaml.doc("<p>The name of the log stream.</p>") logStreamName: logStreamName,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {
    @ocaml.doc("<p>The rejected events.</p>") rejectedLogEventsInfo: option<rejectedLogEventsInfo>,
    @ocaml.doc("<p>The next sequence token.</p>") nextSequenceToken: option<sequenceToken>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutLogEventsCommand"
  let make = (~logEvents, ~logStreamName, ~logGroupName, ~sequenceToken=?, ()) =>
    new({
      sequenceToken: sequenceToken,
      logEvents: logEvents,
      logStreamName: logStreamName,
      logGroupName: logGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLogGroupFields = {
  type t
  type request = {
    @ocaml.doc("<p>The time to set as the center of the query. If you specify <code>time</code>, the 15 minutes
       before this time are queries. If you omit <code>time</code> the 8
      minutes before and 8 minutes after this time are searched.</p>
         <p>The <code>time</code> value is specified as epoch time, the number of seconds since
      January 1, 1970, 00:00:00 UTC.</p>")
    time: option<timestamp_>,
    @ocaml.doc("<p>The name of the log group to search.</p>") logGroupName: logGroupName,
  }
  type response = {
    @ocaml.doc("<p>The array of fields found in the query. Each object in the array contains the name of the field, along with the 
    percentage of time it appeared in the log events that were queried.</p>")
    logGroupFields: option<logGroupFieldList>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "GetLogGroupFieldsCommand"
  let make = (~logGroupName, ~time=?, ()) => new({time: time, logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLogEvents = {
  type t
  type request = {
    @ocaml.doc("<p>If the value is true, the earliest log events are returned first.
      If the value is false, the latest log events are returned first.
      The default value is false.</p>
         <p>If you are using a previous <code>nextForwardToken</code> value as the <code>nextToken</code> in this operation, 
      you must specify <code>true</code> for <code>startFromHead</code>.</p>")
    startFromHead: option<startFromHead>,
    @ocaml.doc("<p>The maximum number of log events returned. If you don't specify a value, the maximum is
      as many log events as can fit in a response size of 1 MB, up to 10,000 log events.</p>")
    limit: option<eventsLimit>,
    @ocaml.doc(
      "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The end of the time range, expressed as the number of milliseconds after Jan 1, 1970
      00:00:00 UTC. Events with a timestamp equal to or later than this time are not
      included.</p>")
    endTime: option<timestamp_>,
    @ocaml.doc("<p>The start of the time range, expressed as the number of milliseconds after Jan 1, 1970
      00:00:00 UTC. Events with a timestamp equal to this time or later than this time are included.
      Events with a timestamp earlier than this time are not included.</p>")
    startTime: option<timestamp_>,
    @ocaml.doc("<p>The name of the log stream.</p>") logStreamName: logStreamName,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items in the backward direction. The token expires after
      24 hours. This token is never null. If you have reached the end of the stream, it returns the
      same token you passed in.</p>")
    nextBackwardToken: option<nextToken>,
    @ocaml.doc("<p>The token for the next set of items in the forward direction. The token expires after
      24 hours. If you have reached the end of the stream, it returns the same token you passed
      in.</p>")
    nextForwardToken: option<nextToken>,
    @ocaml.doc("<p>The events.</p>") events: option<outputLogEvents>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "GetLogEventsCommand"
  let make = (
    ~logStreamName,
    ~logGroupName,
    ~startFromHead=?,
    ~limit=?,
    ~nextToken=?,
    ~endTime=?,
    ~startTime=?,
    (),
  ) =>
    new({
      startFromHead: startFromHead,
      limit: limit,
      nextToken: nextToken,
      endTime: endTime,
      startTime: startTime,
      logStreamName: logStreamName,
      logGroupName: logGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FilterLogEvents = {
  type t
  type request = {
    @ocaml.doc("<p>If the value is true, the operation makes a best effort to provide responses that
      contain events from multiple log streams within the log group, interleaved in a single
      response. If the value is false, all the matched log events in the first log stream are
      searched first, then those in the next log stream, and so on. The default is false.</p>
         <p>
            <b>Important:</b> Starting on June 17, 2019, this parameter
      is ignored and the value is assumed to be true. The response from this operation always
      interleaves events from multiple log streams within a log group.</p>")
    interleaved: option<interleaved>,
    @ocaml.doc("<p>The maximum number of events to return. The default is 10,000 events.</p>")
    limit: option<eventsLimit>,
    @ocaml.doc(
      "<p>The token for the next set of events to return. (You received this token from a previous call.)</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The filter pattern to use. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html\">Filter and Pattern Syntax</a>.</p>
         <p>If not provided, all the events are matched.</p>")
    filterPattern: option<filterPattern>,
    @ocaml.doc("<p>The end of the time range, expressed as the number of milliseconds after Jan 1, 1970
      00:00:00 UTC. Events with a timestamp later than this time are not returned.</p>")
    endTime: option<timestamp_>,
    @ocaml.doc("<p>The start of the time range, expressed as the number of milliseconds after Jan 1, 1970
      00:00:00 UTC. Events with a timestamp before this time are not returned.</p>")
    startTime: option<timestamp_>,
    @ocaml.doc("<p>Filters the results to include only events from log streams that have names starting with this prefix.</p>
         <p>If you specify a value for both <code>logStreamNamePrefix</code> and <code>logStreamNames</code>, but the value for
      <code>logStreamNamePrefix</code> does not match any log stream names specified in <code>logStreamNames</code>, the action
    returns an <code>InvalidParameterException</code> error.</p>")
    logStreamNamePrefix: option<logStreamName>,
    @ocaml.doc("<p>Filters the results to only logs from the log streams in this list.</p>
         <p>If you specify a value for both <code>logStreamNamePrefix</code> and <code>logStreamNames</code>, the action
      returns an <code>InvalidParameterException</code> error.</p>")
    logStreamNames: option<inputLogStreamNames>,
    @ocaml.doc("<p>The name of the log group to search.</p>") logGroupName: logGroupName,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use when requesting the next set of items. The token expires after 24 hours.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            <b>IMPORTANT</b> Starting on May 15, 2020, 
    this parameter will be deprecated. This parameter will be an empty list 
    after the deprecation occurs.</p>
         <p>Indicates which log streams have been searched and whether each has been searched completely.</p>")
    searchedLogStreams: option<searchedLogStreams>,
    @ocaml.doc("<p>The matched events.</p>") events: option<filteredLogEvents>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "FilterLogEventsCommand"
  let make = (
    ~logGroupName,
    ~interleaved=?,
    ~limit=?,
    ~nextToken=?,
    ~filterPattern=?,
    ~endTime=?,
    ~startTime=?,
    ~logStreamNamePrefix=?,
    ~logStreamNames=?,
    (),
  ) =>
    new({
      interleaved: interleaved,
      limit: limit,
      nextToken: nextToken,
      filterPattern: filterPattern,
      endTime: endTime,
      startTime: startTime,
      logStreamNamePrefix: logStreamNamePrefix,
      logStreamNames: logStreamNames,
      logGroupName: logGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSubscriptionFilters = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>"
    )
    limit: option<describeLimit>,
    @ocaml.doc(
      "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The prefix to match. If you don't specify a value, no prefix filter is applied.</p>"
    )
    filterNamePrefix: option<filterName>,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The subscription filters.</p>") subscriptionFilters: option<subscriptionFilters>,
  }
  @module("@aws-sdk/client-logs") @new
  external new: request => t = "DescribeSubscriptionFiltersCommand"
  let make = (~logGroupName, ~limit=?, ~nextToken=?, ~filterNamePrefix=?, ()) =>
    new({
      limit: limit,
      nextToken: nextToken,
      filterNamePrefix: filterNamePrefix,
      logGroupName: logGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResourcePolicies = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of resource policies to be displayed with one call of this API.</p>"
    )
    limit: option<describeLimit>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The resource policies that exist in this account.</p>")
    resourcePolicies: option<resourcePolicies>,
  }
  @module("@aws-sdk/client-logs") @new
  external new: request => t = "DescribeResourcePoliciesCommand"
  let make = (~limit=?, ~nextToken=?, ()) => new({limit: limit, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeQueries = {
  type t
  type request = {
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Limits the number of returned queries to the specified number.</p>")
    maxResults: option<describeQueriesMaxResults>,
    @ocaml.doc("<p>Limits the returned queries to only those that have the specified status. Valid values are <code>Cancelled</code>, 
      <code>Complete</code>, <code>Failed</code>, <code>Running</code>, and <code>Scheduled</code>.</p>")
    status: option<queryStatus>,
    @ocaml.doc("<p>Limits the returned queries to only those for the specified log group.</p>")
    logGroupName: option<logGroupName>,
  }
  type response = {
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of queries that match the request.</p>") queries: option<queryInfoList>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeQueriesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~status=?, ~logGroupName=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, status: status, logGroupName: logGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLogStreams = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>"
    )
    limit: option<describeLimit>,
    @ocaml.doc(
      "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>If the value is true, results are returned in descending order. 
      If the value is to false, results are returned in ascending order.
      The default value is false.</p>")
    descending: option<descending>,
    @ocaml.doc("<p>If the value is <code>LogStreamName</code>, the results are ordered by log stream name.
      If the value is <code>LastEventTime</code>, the results are ordered by the event time. 
      The default value is <code>LogStreamName</code>.</p>
         <p>If you order the results by event time, you cannot specify the <code>logStreamNamePrefix</code> parameter.</p>
         <p>
            <code>lastEventTimestamp</code> represents the time of the most recent log event in the
      log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after
      Jan 1, 1970 00:00:00 UTC. <code>lastEventTimestamp</code> updates on an eventual consistency
      basis. It typically updates in less than an hour from ingestion, but in rare situations might
      take longer.</p>")
    orderBy: option<orderBy>,
    @ocaml.doc("<p>The prefix to match.</p> 
         <p>If <code>orderBy</code> is <code>LastEventTime</code>, you cannot specify this
      parameter.</p>")
    logStreamNamePrefix: option<logStreamName>,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The log streams.</p>") logStreams: option<logStreams>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeLogStreamsCommand"
  let make = (
    ~logGroupName,
    ~limit=?,
    ~nextToken=?,
    ~descending=?,
    ~orderBy=?,
    ~logStreamNamePrefix=?,
    (),
  ) =>
    new({
      limit: limit,
      nextToken: nextToken,
      descending: descending,
      orderBy: orderBy,
      logStreamNamePrefix: logStreamNamePrefix,
      logGroupName: logGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLogGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>"
    )
    limit: option<describeLimit>,
    @ocaml.doc(
      "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The prefix to match.</p>") logGroupNamePrefix: option<logGroupName>,
  }
  type response = {
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The log groups.</p>
         <p>If the <code>retentionInDays</code> value if not included for a log group, then that log group
    is set to have its events never expire.</p>")
    logGroups: option<logGroups>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeLogGroupsCommand"
  let make = (~limit=?, ~nextToken=?, ~logGroupNamePrefix=?, ()) =>
    new({limit: limit, nextToken: nextToken, logGroupNamePrefix: logGroupNamePrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDestinations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>"
    )
    limit: option<describeLimit>,
    @ocaml.doc(
      "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The prefix to match. If you don't specify a value, no prefix filter is applied.</p>"
    )
    @as("DestinationNamePrefix")
    destinationNamePrefix: option<destinationName>,
  }
  type response = {
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The destinations.</p>") destinations: option<destinations>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeDestinationsCommand"
  let make = (~limit=?, ~nextToken=?, ~destinationNamePrefix=?, ()) =>
    new({limit: limit, nextToken: nextToken, destinationNamePrefix: destinationNamePrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestMetricFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The log event messages to test.</p>") logEventMessages: testEventMessages,
    filterPattern: filterPattern,
  }
  type response = {@ocaml.doc("<p>The matched events.</p>") matches: option<metricFilterMatches>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "TestMetricFilterCommand"
  let make = (~logEventMessages, ~filterPattern, ()) =>
    new({logEventMessages: logEventMessages, filterPattern: filterPattern})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutMetricFilter = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of information that defines how metric data gets emitted.</p>")
    metricTransformations: metricTransformations,
    @ocaml.doc("<p>A filter pattern for extracting metric data out of ingested log events.</p>")
    filterPattern: filterPattern,
    @ocaml.doc("<p>A name for the metric filter.</p>") filterName: filterName,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: logGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutMetricFilterCommand"
  let make = (~metricTransformations, ~filterPattern, ~filterName, ~logGroupName, ()) =>
    new({
      metricTransformations: metricTransformations,
      filterPattern: filterPattern,
      filterName: filterName,
      logGroupName: logGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetQueryResults = {
  type t
  type request = {@ocaml.doc("<p>The ID number of the query.</p>") queryId: queryId}
  type response = {
    @ocaml.doc("<p>The status of the most recent running of the query. Possible values are <code>Cancelled</code>, 
      <code>Complete</code>, <code>Failed</code>, <code>Running</code>, <code>Scheduled</code>, 
      <code>Timeout</code>, and <code>Unknown</code>.</p>
         <p>Queries time out after 15 minutes of execution. To avoid having your queries time out,
      reduce the time range being searched or partition your query into a number of queries.</p>")
    status: option<queryStatus>,
    @ocaml.doc("<p>Includes the number of log events scanned by the query, the number of log events that matched the 
    query criteria, and the total number of bytes in the log events that were scanned. These values
    reflect the full raw results of the query.</p>")
    statistics: option<queryStatistics>,
    @ocaml.doc("<p>The log events that matched the query criteria during the most recent time it ran.</p>
         <p>The <code>results</code> value is an array of arrays. Each log event is one object in the
      top-level array. Each of these log event objects is an array of
        <code>field</code>/<code>value</code> pairs.</p>")
    results: option<queryResults>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "GetQueryResultsCommand"
  let make = (~queryId, ()) => new({queryId: queryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeQueryDefinitions = {
  type t
  type request = {
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Limits the number of returned query definitions to the specified number.</p>")
    maxResults: option<queryListMaxResults>,
    @ocaml.doc(
      "<p>Use this parameter to filter your results to only the query definitions that have names that start with the prefix you specify.</p>"
    )
    queryDefinitionNamePrefix: option<queryDefinitionName>,
  }
  type response = {
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of query definitions that match your request.</p>")
    queryDefinitions: option<queryDefinitionList>,
  }
  @module("@aws-sdk/client-logs") @new
  external new: request => t = "DescribeQueryDefinitionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~queryDefinitionNamePrefix=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      queryDefinitionNamePrefix: queryDefinitionNamePrefix,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExportTasks = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>"
    )
    limit: option<describeLimit>,
    @ocaml.doc(
      "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The status code of the export task. Specifying a status code filters the results to zero or more export tasks.</p>"
    )
    statusCode: option<exportTaskStatusCode>,
    @ocaml.doc(
      "<p>The ID of the export task. Specifying a task ID filters the results to zero or one export tasks.</p>"
    )
    taskId: option<exportTaskId>,
  }
  type response = {
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The export tasks.</p>") exportTasks: option<exportTasks>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeExportTasksCommand"
  let make = (~limit=?, ~nextToken=?, ~statusCode=?, ~taskId=?, ()) =>
    new({limit: limit, nextToken: nextToken, statusCode: statusCode, taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMetricFilters = {
  type t
  type request = {
    @ocaml.doc("<p>Filters results to include only those in the specified namespace. If you include this parameter in your request, you 
    must also include the <code>metricName</code> parameter.</p>")
    metricNamespace: option<metricNamespace>,
    @ocaml.doc("<p>Filters results to include only those with the specified metric name. If you include this parameter in your request, you 
    must also include the <code>metricNamespace</code> parameter.</p>")
    metricName: option<metricName>,
    @ocaml.doc(
      "<p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>"
    )
    limit: option<describeLimit>,
    @ocaml.doc(
      "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The prefix to match. CloudWatch Logs uses the value you set here
    only if you also include the <code>logGroupName</code> parameter in your request.</p>")
    filterNamePrefix: option<filterName>,
    @ocaml.doc("<p>The name of the log group.</p>") logGroupName: option<logGroupName>,
  }
  type response = {
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The metric filters.</p>") metricFilters: option<metricFilters>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeMetricFiltersCommand"
  let make = (
    ~metricNamespace=?,
    ~metricName=?,
    ~limit=?,
    ~nextToken=?,
    ~filterNamePrefix=?,
    ~logGroupName=?,
    (),
  ) =>
    new({
      metricNamespace: metricNamespace,
      metricName: metricName,
      limit: limit,
      nextToken: nextToken,
      filterNamePrefix: filterNamePrefix,
      logGroupName: logGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
