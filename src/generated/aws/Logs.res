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
type nextToken = string
type metricValue = string
type metricNamespace = string
type metricName = string
type message = string
type logStreamSearchedCompletely = bool
type logStreamName = string
type logRecordPointer = string
type logGroupName = string
type logEventIndex = int
type kmsKeyId = string
type interleaved = bool
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
type distribution = [@as("ByLogStream") #ByLogStream | @as("Random") #Random]
type dimensionsValue = string
type dimensionsKey = string
type destinationName = string
type destinationArn = string
type describeQueriesMaxResults = int
type describeLimit = int
type descending = bool
type defaultValue = float
type days = int
type arn = string
type accessPolicy = string
type testEventMessages = array<eventMessage>
type tags = Js.Dict.t<tagValue>
type tagList_ = array<tagKey>
type subscriptionFilter = {
  creationTime: option<timestamp_>,
  distribution: option<distribution>,
  roleArn: option<roleArn>,
  destinationArn: option<destinationArn>,
  filterPattern: option<filterPattern>,
  logGroupName: option<logGroupName>,
  filterName: option<filterName>,
}
type searchedLogStream = {
  searchedCompletely: option<logStreamSearchedCompletely>,
  logStreamName: option<logStreamName>,
}
type resultField = {
  value: option<value>,
  field: option<field>,
}
type resourcePolicy = {
  lastUpdatedTime: option<timestamp_>,
  policyDocument: option<policyDocument>,
  policyName: option<policyName>,
}
type rejectedLogEventsInfo = {
  expiredLogEventEndIndex: option<logEventIndex>,
  tooOldLogEventEndIndex: option<logEventIndex>,
  tooNewLogEventStartIndex: option<logEventIndex>,
}
type queryStatistics = {
  bytesScanned: option<statsValue>,
  recordsScanned: option<statsValue>,
  recordsMatched: option<statsValue>,
}
type queryInfo = {
  logGroupName: option<logGroupName>,
  createTime: option<timestamp_>,
  status: option<queryStatus>,
  queryString: option<queryString>,
  queryId: option<queryId>,
}
type queryCompileErrorLocation = {
  endCharOffset: option<queryCharOffset>,
  startCharOffset: option<queryCharOffset>,
}
type outputLogEvent = {
  ingestionTime: option<timestamp_>,
  message: option<eventMessage>,
  @as("timestamp") timestamp_: option<timestamp_>,
}
type logStream = {
  storedBytes: option<storedBytes>,
  arn: option<arn>,
  uploadSequenceToken: option<sequenceToken>,
  lastIngestionTime: option<timestamp_>,
  lastEventTimestamp: option<timestamp_>,
  firstEventTimestamp: option<timestamp_>,
  creationTime: option<timestamp_>,
  logStreamName: option<logStreamName>,
}
type logRecord = Js.Dict.t<value>
type logGroupNames = array<logGroupName>
type logGroupField = {
  percent: option<percentage>,
  name: option<field>,
}
type logGroup = {
  kmsKeyId: option<kmsKeyId>,
  storedBytes: option<storedBytes>,
  arn: option<arn>,
  metricFilterCount: option<filterCount>,
  retentionInDays: option<days>,
  creationTime: option<timestamp_>,
  logGroupName: option<logGroupName>,
}
type inputLogStreamNames = array<logStreamName>
type inputLogEvent = {
  message: eventMessage,
  @as("timestamp") timestamp_: timestamp_,
}
type filteredLogEvent = {
  eventId: option<eventId>,
  ingestionTime: option<timestamp_>,
  message: option<eventMessage>,
  @as("timestamp") timestamp_: option<timestamp_>,
  logStreamName: option<logStreamName>,
}
type extractedValues = Js.Dict.t<value>
type exportTaskStatus = {
  message: option<exportTaskStatusMessage>,
  code: option<exportTaskStatusCode>,
}
type exportTaskExecutionInfo = {
  completionTime: option<timestamp_>,
  creationTime: option<timestamp_>,
}
type dimensions = Js.Dict.t<dimensionsValue>
type destination = {
  creationTime: option<timestamp_>,
  arn: option<arn>,
  accessPolicy: option<accessPolicy>,
  roleArn: option<roleArn>,
  targetArn: option<targetArn>,
  destinationName: option<destinationName>,
}
type subscriptionFilters = array<subscriptionFilter>
type searchedLogStreams = array<searchedLogStream>
type resultRows = array<resultField>
type resourcePolicies = array<resourcePolicy>
type queryInfoList = array<queryInfo>
type queryDefinition = {
  logGroupNames: option<logGroupNames>,
  lastModified: option<timestamp_>,
  queryString: option<queryDefinitionString>,
  name: option<queryDefinitionName>,
  queryDefinitionId: option<queryId>,
}
type queryCompileError = {
  message: option<message>,
  location: option<queryCompileErrorLocation>,
}
type outputLogEvents = array<outputLogEvent>
type metricTransformation = {
  @as("unit") unit_: option<standardUnit>,
  dimensions: option<dimensions>,
  defaultValue: option<defaultValue>,
  metricValue: metricValue,
  metricNamespace: metricNamespace,
  metricName: metricName,
}
type metricFilterMatchRecord = {
  extractedValues: option<extractedValues>,
  eventMessage: option<eventMessage>,
  eventNumber: option<eventNumber>,
}
type logStreams = array<logStream>
type logGroups = array<logGroup>
type logGroupFieldList = array<logGroupField>
type inputLogEvents = array<inputLogEvent>
type filteredLogEvents = array<filteredLogEvent>
type exportTask = {
  executionInfo: option<exportTaskExecutionInfo>,
  status: option<exportTaskStatus>,
  destinationPrefix: option<exportDestinationPrefix>,
  destination: option<exportDestinationBucket>,
  to: option<timestamp_>,
  from: option<timestamp_>,
  logGroupName: option<logGroupName>,
  taskName: option<exportTaskName>,
  taskId: option<exportTaskId>,
}
type destinations = array<destination>
type queryResults = array<resultRows>
type queryDefinitionList = array<queryDefinition>
type metricTransformations = array<metricTransformation>
type metricFilterMatches = array<metricFilterMatchRecord>
type exportTasks = array<exportTask>
type metricFilter = {
  logGroupName: option<logGroupName>,
  creationTime: option<timestamp_>,
  metricTransformations: option<metricTransformations>,
  filterPattern: option<filterPattern>,
  filterName: option<filterName>,
}
type metricFilters = array<metricFilter>

module StopQuery = {
  type t
  type request = {queryId: queryId}
  type response = {success: option<success>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "StopQueryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSubscriptionFilter = {
  type t
  type request = {
    distribution: option<distribution>,
    roleArn: option<roleArn>,
    destinationArn: destinationArn,
    filterPattern: filterPattern,
    filterName: filterName,
    logGroupName: logGroupName,
  }

  @module("@aws-sdk/client-logs") @new external new: request => t = "PutSubscriptionFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRetentionPolicy = {
  type t
  type request = {
    retentionInDays: days,
    logGroupName: logGroupName,
  }

  @module("@aws-sdk/client-logs") @new external new: request => t = "PutRetentionPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutDestinationPolicy = {
  type t
  type request = {
    accessPolicy: accessPolicy,
    destinationName: destinationName,
  }

  @module("@aws-sdk/client-logs") @new external new: request => t = "PutDestinationPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateKmsKey = {
  type t
  type request = {logGroupName: logGroupName}

  @module("@aws-sdk/client-logs") @new external new: request => t = "DisassociateKmsKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSubscriptionFilter = {
  type t
  type request = {
    filterName: filterName,
    logGroupName: logGroupName,
  }

  @module("@aws-sdk/client-logs") @new
  external new: request => t = "DeleteSubscriptionFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRetentionPolicy = {
  type t
  type request = {logGroupName: logGroupName}

  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteRetentionPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {policyName: option<policyName>}

  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteResourcePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteQueryDefinition = {
  type t
  type request = {queryDefinitionId: queryId}
  type response = {success: option<success>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteQueryDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMetricFilter = {
  type t
  type request = {
    filterName: filterName,
    logGroupName: logGroupName,
  }

  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteMetricFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLogStream = {
  type t
  type request = {
    logStreamName: logStreamName,
    logGroupName: logGroupName,
  }

  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteLogStreamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLogGroup = {
  type t
  type request = {logGroupName: logGroupName}

  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteLogGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDestination = {
  type t
  type request = {destinationName: destinationName}

  @module("@aws-sdk/client-logs") @new external new: request => t = "DeleteDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateLogStream = {
  type t
  type request = {
    logStreamName: logStreamName,
    logGroupName: logGroupName,
  }

  @module("@aws-sdk/client-logs") @new external new: request => t = "CreateLogStreamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateExportTask = {
  type t
  type request = {
    destinationPrefix: option<exportDestinationPrefix>,
    destination: exportDestinationBucket,
    to: timestamp_,
    from: timestamp_,
    logStreamNamePrefix: option<logStreamName>,
    logGroupName: logGroupName,
    taskName: option<exportTaskName>,
  }
  type response = {taskId: option<exportTaskId>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "CreateExportTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelExportTask = {
  type t
  type request = {taskId: exportTaskId}

  @module("@aws-sdk/client-logs") @new external new: request => t = "CancelExportTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateKmsKey = {
  type t
  type request = {
    kmsKeyId: kmsKeyId,
    logGroupName: logGroupName,
  }

  @module("@aws-sdk/client-logs") @new external new: request => t = "AssociateKmsKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagLogGroup = {
  type t
  type request = {
    tags: tagList_,
    logGroupName: logGroupName,
  }

  @module("@aws-sdk/client-logs") @new external new: request => t = "UntagLogGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagLogGroup = {
  type t
  type request = {
    tags: tags,
    logGroupName: logGroupName,
  }

  @module("@aws-sdk/client-logs") @new external new: request => t = "TagLogGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutResourcePolicy = {
  type t
  type request = {
    policyDocument: option<policyDocument>,
    policyName: option<policyName>,
  }
  type response = {resourcePolicy: option<resourcePolicy>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutResourcePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutQueryDefinition = {
  type t
  type request = {
    queryString: queryDefinitionString,
    logGroupNames: option<logGroupNames>,
    queryDefinitionId: option<queryId>,
    name: queryDefinitionName,
  }
  type response = {queryDefinitionId: option<queryId>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutQueryDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDestination = {
  type t
  type request = {
    roleArn: roleArn,
    targetArn: targetArn,
    destinationName: destinationName,
  }
  type response = {destination: option<destination>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsLogGroup = {
  type t
  type request = {logGroupName: logGroupName}
  type response = {tags: option<tags>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "ListTagsLogGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLogRecord = {
  type t
  type request = {logRecordPointer: logRecordPointer}
  type response = {logRecord: option<logRecord>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "GetLogRecordCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLogGroup = {
  type t
  type request = {
    tags: option<tags>,
    kmsKeyId: option<kmsKeyId>,
    logGroupName: logGroupName,
  }

  @module("@aws-sdk/client-logs") @new external new: request => t = "CreateLogGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartQuery = {
  type t
  type request = {
    limit: option<eventsLimit>,
    queryString: queryString,
    endTime: timestamp_,
    startTime: timestamp_,
    logGroupNames: option<logGroupNames>,
    logGroupName: option<logGroupName>,
  }
  type response = {queryId: option<queryId>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "StartQueryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutLogEvents = {
  type t
  type request = {
    sequenceToken: option<sequenceToken>,
    logEvents: inputLogEvents,
    logStreamName: logStreamName,
    logGroupName: logGroupName,
  }
  type response = {
    rejectedLogEventsInfo: option<rejectedLogEventsInfo>,
    nextSequenceToken: option<sequenceToken>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "PutLogEventsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLogGroupFields = {
  type t
  type request = {
    time: option<timestamp_>,
    logGroupName: logGroupName,
  }
  type response = {logGroupFields: option<logGroupFieldList>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "GetLogGroupFieldsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLogEvents = {
  type t
  type request = {
    startFromHead: option<startFromHead>,
    limit: option<eventsLimit>,
    nextToken: option<nextToken>,
    endTime: option<timestamp_>,
    startTime: option<timestamp_>,
    logStreamName: logStreamName,
    logGroupName: logGroupName,
  }
  type response = {
    nextBackwardToken: option<nextToken>,
    nextForwardToken: option<nextToken>,
    events: option<outputLogEvents>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "GetLogEventsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FilterLogEvents = {
  type t
  type request = {
    interleaved: option<interleaved>,
    limit: option<eventsLimit>,
    nextToken: option<nextToken>,
    filterPattern: option<filterPattern>,
    endTime: option<timestamp_>,
    startTime: option<timestamp_>,
    logStreamNamePrefix: option<logStreamName>,
    logStreamNames: option<inputLogStreamNames>,
    logGroupName: logGroupName,
  }
  type response = {
    nextToken: option<nextToken>,
    searchedLogStreams: option<searchedLogStreams>,
    events: option<filteredLogEvents>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "FilterLogEventsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSubscriptionFilters = {
  type t
  type request = {
    limit: option<describeLimit>,
    nextToken: option<nextToken>,
    filterNamePrefix: option<filterName>,
    logGroupName: logGroupName,
  }
  type response = {
    nextToken: option<nextToken>,
    subscriptionFilters: option<subscriptionFilters>,
  }
  @module("@aws-sdk/client-logs") @new
  external new: request => t = "DescribeSubscriptionFiltersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResourcePolicies = {
  type t
  type request = {
    limit: option<describeLimit>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    resourcePolicies: option<resourcePolicies>,
  }
  @module("@aws-sdk/client-logs") @new
  external new: request => t = "DescribeResourcePoliciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeQueries = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<describeQueriesMaxResults>,
    status: option<queryStatus>,
    logGroupName: option<logGroupName>,
  }
  type response = {
    nextToken: option<nextToken>,
    queries: option<queryInfoList>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeQueriesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLogStreams = {
  type t
  type request = {
    limit: option<describeLimit>,
    nextToken: option<nextToken>,
    descending: option<descending>,
    orderBy: option<orderBy>,
    logStreamNamePrefix: option<logStreamName>,
    logGroupName: logGroupName,
  }
  type response = {
    nextToken: option<nextToken>,
    logStreams: option<logStreams>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeLogStreamsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLogGroups = {
  type t
  type request = {
    limit: option<describeLimit>,
    nextToken: option<nextToken>,
    logGroupNamePrefix: option<logGroupName>,
  }
  type response = {
    nextToken: option<nextToken>,
    logGroups: option<logGroups>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeLogGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDestinations = {
  type t
  type request = {
    limit: option<describeLimit>,
    nextToken: option<nextToken>,
    @as("DestinationNamePrefix") destinationNamePrefix: option<destinationName>,
  }
  type response = {
    nextToken: option<nextToken>,
    destinations: option<destinations>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeDestinationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestMetricFilter = {
  type t
  type request = {
    logEventMessages: testEventMessages,
    filterPattern: filterPattern,
  }
  type response = {matches: option<metricFilterMatches>}
  @module("@aws-sdk/client-logs") @new external new: request => t = "TestMetricFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutMetricFilter = {
  type t
  type request = {
    metricTransformations: metricTransformations,
    filterPattern: filterPattern,
    filterName: filterName,
    logGroupName: logGroupName,
  }

  @module("@aws-sdk/client-logs") @new external new: request => t = "PutMetricFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetQueryResults = {
  type t
  type request = {queryId: queryId}
  type response = {
    status: option<queryStatus>,
    statistics: option<queryStatistics>,
    results: option<queryResults>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "GetQueryResultsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeQueryDefinitions = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<queryListMaxResults>,
    queryDefinitionNamePrefix: option<queryDefinitionName>,
  }
  type response = {
    nextToken: option<nextToken>,
    queryDefinitions: option<queryDefinitionList>,
  }
  @module("@aws-sdk/client-logs") @new
  external new: request => t = "DescribeQueryDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExportTasks = {
  type t
  type request = {
    limit: option<describeLimit>,
    nextToken: option<nextToken>,
    statusCode: option<exportTaskStatusCode>,
    taskId: option<exportTaskId>,
  }
  type response = {
    nextToken: option<nextToken>,
    exportTasks: option<exportTasks>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeExportTasksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMetricFilters = {
  type t
  type request = {
    metricNamespace: option<metricNamespace>,
    metricName: option<metricName>,
    limit: option<describeLimit>,
    nextToken: option<nextToken>,
    filterNamePrefix: option<filterName>,
    logGroupName: option<logGroupName>,
  }
  type response = {
    nextToken: option<nextToken>,
    metricFilters: option<metricFilters>,
  }
  @module("@aws-sdk/client-logs") @new external new: request => t = "DescribeMetricFiltersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
