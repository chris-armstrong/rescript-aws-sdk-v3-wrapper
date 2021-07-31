type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type value = string
type token = string
type amazonawsTimestamp = float;
type targetArn = string
type tagValue = string
type tagKey = string
type success = bool;
type storedBytes = float;
type statsValue = float;
type startFromHead = bool;
type standardUnit = [@as("None") #None | @as("Count/Second") #Count_Second | @as("Terabits/Second") #Terabits_Second | @as("Gigabits/Second") #Gigabits_Second | @as("Megabits/Second") #Megabits_Second | @as("Kilobits/Second") #Kilobits_Second | @as("Bits/Second") #Bits_Second | @as("Terabytes/Second") #Terabytes_Second | @as("Gigabytes/Second") #Gigabytes_Second | @as("Megabytes/Second") #Megabytes_Second | @as("Kilobytes/Second") #Kilobytes_Second | @as("Bytes/Second") #Bytes_Second | @as("Count") #Count | @as("Percent") #Percent | @as("Terabits") #Terabits | @as("Gigabits") #Gigabits | @as("Megabits") #Megabits | @as("Kilobits") #Kilobits | @as("Bits") #Bits | @as("Terabytes") #Terabytes | @as("Gigabytes") #Gigabytes | @as("Megabytes") #Megabytes | @as("Kilobytes") #Kilobytes | @as("Bytes") #Bytes | @as("Milliseconds") #Milliseconds | @as("Microseconds") #Microseconds | @as("Seconds") #Seconds]
type sequenceToken = string
type roleArn = string
type queryString = string
type queryStatus = [@as("Unknown") #Unknown | @as("Timeout") #Timeout | @as("Cancelled") #Cancelled | @as("Failed") #Failed | @as("Complete") #Complete | @as("Running") #Running | @as("Scheduled") #Scheduled]
type queryListMaxResults = int;
type queryId = string
type queryDefinitionString = string
type queryDefinitionName = string
type queryCharOffset = int;
type policyName = string
type policyDocument = string
type percentage = int;
type orderBy = [@as("LastEventTime") #LastEventTime | @as("LogStreamName") #LogStreamName]
type nextToken = string
type metricValue = string
type metricNamespace = string
type metricName = string
type message = string
type logStreamSearchedCompletely = bool;
type logStreamName = string
type logRecordPointer = string
type logGroupName = string
type logEventIndex = int;
type kmsKeyId = string
type interleaved = bool;
type filterPattern = string
type filterName = string
type filterCount = int;
type field = string
type exportTaskStatusMessage = string
type exportTaskStatusCode = [@as("RUNNING") #RUNNING | @as("PENDING_CANCEL") #PENDING_CANCEL | @as("PENDING") #PENDING | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("CANCELLED") #CANCELLED]
type exportTaskName = string
type exportTaskId = string
type exportDestinationPrefix = string
type exportDestinationBucket = string
type eventsLimit = int;
type eventNumber = float;
type eventMessage = string
type eventId = string
type distribution = [@as("ByLogStream") #ByLogStream | @as("Random") #Random]
type dimensionsValue = string
type dimensionsKey = string
type destinationName = string
type destinationArn = string
type describeQueriesMaxResults = int;
type describeLimit = int;
type descending = bool;
type defaultValue = float;
type days = int;
type arn = string
type accessPolicy = string
type testEventMessages = array<eventMessage>
type tags = Js.Dict.t< tagValue>
type tagList = array<tagKey>
type subscriptionFilter = {
@as("creationTime") creationTime: amazonawsTimestamp,
@as("distribution") distribution: distribution,
@as("roleArn") roleArn: roleArn,
@as("destinationArn") destinationArn: destinationArn,
@as("filterPattern") filterPattern: filterPattern,
@as("logGroupName") logGroupName: logGroupName,
@as("filterName") filterName: filterName
}
type searchedLogStream = {
@as("searchedCompletely") searchedCompletely: logStreamSearchedCompletely,
@as("logStreamName") logStreamName: logStreamName
}
type resultField = {
@as("value") value: value,
@as("field") field: field
}
type resourcePolicy = {
@as("lastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("policyDocument") policyDocument: policyDocument,
@as("policyName") policyName: policyName
}
type rejectedLogEventsInfo = {
@as("expiredLogEventEndIndex") expiredLogEventEndIndex: logEventIndex,
@as("tooOldLogEventEndIndex") tooOldLogEventEndIndex: logEventIndex,
@as("tooNewLogEventStartIndex") tooNewLogEventStartIndex: logEventIndex
}
type queryStatistics = {
@as("bytesScanned") bytesScanned: statsValue,
@as("recordsScanned") recordsScanned: statsValue,
@as("recordsMatched") recordsMatched: statsValue
}
type queryInfo = {
@as("logGroupName") logGroupName: logGroupName,
@as("createTime") createTime: amazonawsTimestamp,
@as("status") status: queryStatus,
@as("queryString") queryString: queryString,
@as("queryId") queryId: queryId
}
type queryCompileErrorLocation = {
@as("endCharOffset") endCharOffset: queryCharOffset,
@as("startCharOffset") startCharOffset: queryCharOffset
}
type outputLogEvent = {
@as("ingestionTime") ingestionTime: amazonawsTimestamp,
@as("message") message: eventMessage,
@as("timestamp") timestamp: amazonawsTimestamp
}
type logStream = {
@as("storedBytes") storedBytes: storedBytes,
@as("arn") arn: arn,
@as("uploadSequenceToken") uploadSequenceToken: sequenceToken,
@as("lastIngestionTime") lastIngestionTime: amazonawsTimestamp,
@as("lastEventTimestamp") lastEventTimestamp: amazonawsTimestamp,
@as("firstEventTimestamp") firstEventTimestamp: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("logStreamName") logStreamName: logStreamName
}
type logRecord = Js.Dict.t< value>
type logGroupNames = array<logGroupName>
type logGroupField = {
@as("percent") percent: percentage,
@as("name") name: field
}
type logGroup = {
@as("kmsKeyId") kmsKeyId: kmsKeyId,
@as("storedBytes") storedBytes: storedBytes,
@as("arn") arn: arn,
@as("metricFilterCount") metricFilterCount: filterCount,
@as("retentionInDays") retentionInDays: days,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("logGroupName") logGroupName: logGroupName
}
type inputLogStreamNames = array<logStreamName>
type inputLogEvent = {
@as("message") message: option<eventMessage>,
@as("timestamp") timestamp: option<amazonawsTimestamp>
}
type filteredLogEvent = {
@as("eventId") eventId: eventId,
@as("ingestionTime") ingestionTime: amazonawsTimestamp,
@as("message") message: eventMessage,
@as("timestamp") timestamp: amazonawsTimestamp,
@as("logStreamName") logStreamName: logStreamName
}
type extractedValues = Js.Dict.t< value>
type exportTaskStatus = {
@as("message") message: exportTaskStatusMessage,
@as("code") code: exportTaskStatusCode
}
type exportTaskExecutionInfo = {
@as("completionTime") completionTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp
}
type dimensions = Js.Dict.t< dimensionsValue>
type destination = {
@as("creationTime") creationTime: amazonawsTimestamp,
@as("arn") arn: arn,
@as("accessPolicy") accessPolicy: accessPolicy,
@as("roleArn") roleArn: roleArn,
@as("targetArn") targetArn: targetArn,
@as("destinationName") destinationName: destinationName
}
type subscriptionFilters = array<subscriptionFilter>
type searchedLogStreams = array<searchedLogStream>
type resultRows = array<resultField>
type resourcePolicies = array<resourcePolicy>
type queryInfoList = array<queryInfo>
type queryDefinition = {
@as("logGroupNames") logGroupNames: logGroupNames,
@as("lastModified") lastModified: amazonawsTimestamp,
@as("queryString") queryString: queryDefinitionString,
@as("name") name: queryDefinitionName,
@as("queryDefinitionId") queryDefinitionId: queryId
}
type queryCompileError = {
@as("message") message: message,
@as("location") location: queryCompileErrorLocation
}
type outputLogEvents = array<outputLogEvent>
type metricTransformation = {
@as("unit") unit: standardUnit,
@as("dimensions") dimensions: dimensions,
@as("defaultValue") defaultValue: defaultValue,
@as("metricValue") metricValue: option<metricValue>,
@as("metricNamespace") metricNamespace: option<metricNamespace>,
@as("metricName") metricName: option<metricName>
}
type metricFilterMatchRecord = {
@as("extractedValues") extractedValues: extractedValues,
@as("eventMessage") eventMessage: eventMessage,
@as("eventNumber") eventNumber: eventNumber
}
type logStreams = array<logStream>
type logGroups = array<logGroup>
type logGroupFieldList = array<logGroupField>
type inputLogEvents = array<inputLogEvent>
type filteredLogEvents = array<filteredLogEvent>
type exportTask = {
@as("executionInfo") executionInfo: exportTaskExecutionInfo,
@as("status") status: exportTaskStatus,
@as("destinationPrefix") destinationPrefix: exportDestinationPrefix,
@as("destination") destination: exportDestinationBucket,
@as("to") to: amazonawsTimestamp,
@as("from") from: amazonawsTimestamp,
@as("logGroupName") logGroupName: logGroupName,
@as("taskName") taskName: exportTaskName,
@as("taskId") taskId: exportTaskId
}
type destinations = array<destination>
type queryResults = array<resultRows>
type queryDefinitionList = array<queryDefinition>
type metricTransformations = array<metricTransformation>
type metricFilterMatches = array<metricFilterMatchRecord>
type exportTasks = array<exportTask>
type metricFilter = {
@as("logGroupName") logGroupName: logGroupName,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("metricTransformations") metricTransformations: metricTransformations,
@as("filterPattern") filterPattern: filterPattern,
@as("filterName") filterName: filterName
}
type metricFilters = array<metricFilter>
type clientType;
@module("@aws-sdk/client-logs") @new external createClient: unit => clientType = "LogsClient";
module StopQuery = {
  type t;
  type request = {
@as("queryId") queryId: option<queryId>
}
  type response = {
@as("success") success: success
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "StopQueryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutSubscriptionFilter = {
  type t;
  type request = {
@as("distribution") distribution: distribution,
@as("roleArn") roleArn: roleArn,
@as("destinationArn") destinationArn: option<destinationArn>,
@as("filterPattern") filterPattern: option<filterPattern>,
@as("filterName") filterName: option<filterName>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "PutSubscriptionFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutRetentionPolicy = {
  type t;
  type request = {
@as("retentionInDays") retentionInDays: option<days>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "PutRetentionPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutDestinationPolicy = {
  type t;
  type request = {
@as("accessPolicy") accessPolicy: option<accessPolicy>,
@as("destinationName") destinationName: option<destinationName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "PutDestinationPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisassociateKmsKey = {
  type t;
  type request = {
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DisassociateKmsKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSubscriptionFilter = {
  type t;
  type request = {
@as("filterName") filterName: option<filterName>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DeleteSubscriptionFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRetentionPolicy = {
  type t;
  type request = {
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DeleteRetentionPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteResourcePolicy = {
  type t;
  type request = {
@as("policyName") policyName: policyName
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DeleteResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteQueryDefinition = {
  type t;
  type request = {
@as("queryDefinitionId") queryDefinitionId: option<queryId>
}
  type response = {
@as("success") success: success
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DeleteQueryDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMetricFilter = {
  type t;
  type request = {
@as("filterName") filterName: option<filterName>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DeleteMetricFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteLogStream = {
  type t;
  type request = {
@as("logStreamName") logStreamName: option<logStreamName>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DeleteLogStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteLogGroup = {
  type t;
  type request = {
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DeleteLogGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDestination = {
  type t;
  type request = {
@as("destinationName") destinationName: option<destinationName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DeleteDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateLogStream = {
  type t;
  type request = {
@as("logStreamName") logStreamName: option<logStreamName>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "CreateLogStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateExportTask = {
  type t;
  type request = {
@as("destinationPrefix") destinationPrefix: exportDestinationPrefix,
@as("destination") destination: option<exportDestinationBucket>,
@as("to") to: option<amazonawsTimestamp>,
@as("from") from: option<amazonawsTimestamp>,
@as("logStreamNamePrefix") logStreamNamePrefix: logStreamName,
@as("logGroupName") logGroupName: option<logGroupName>,
@as("taskName") taskName: exportTaskName
}
  type response = {
@as("taskId") taskId: exportTaskId
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "CreateExportTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelExportTask = {
  type t;
  type request = {
@as("taskId") taskId: option<exportTaskId>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "CancelExportTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssociateKmsKey = {
  type t;
  type request = {
@as("kmsKeyId") kmsKeyId: option<kmsKeyId>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "AssociateKmsKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagLogGroup = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "UntagLogGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagLogGroup = {
  type t;
  type request = {
@as("tags") tags: option<tags>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "TagLogGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutResourcePolicy = {
  type t;
  type request = {
@as("policyDocument") policyDocument: policyDocument,
@as("policyName") policyName: policyName
}
  type response = {
@as("resourcePolicy") resourcePolicy: resourcePolicy
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "PutResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutQueryDefinition = {
  type t;
  type request = {
@as("queryString") queryString: option<queryDefinitionString>,
@as("logGroupNames") logGroupNames: logGroupNames,
@as("queryDefinitionId") queryDefinitionId: queryId,
@as("name") name: option<queryDefinitionName>
}
  type response = {
@as("queryDefinitionId") queryDefinitionId: queryId
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "PutQueryDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutDestination = {
  type t;
  type request = {
@as("roleArn") roleArn: option<roleArn>,
@as("targetArn") targetArn: option<targetArn>,
@as("destinationName") destinationName: option<destinationName>
}
  type response = {
@as("destination") destination: destination
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "PutDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsLogGroup = {
  type t;
  type request = {
@as("logGroupName") logGroupName: option<logGroupName>
}
  type response = {
@as("tags") tags: tags
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "ListTagsLogGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLogRecord = {
  type t;
  type request = {
@as("logRecordPointer") logRecordPointer: option<logRecordPointer>
}
  type response = {
@as("logRecord") logRecord: logRecord
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "GetLogRecordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLogGroup = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("kmsKeyId") kmsKeyId: kmsKeyId,
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "CreateLogGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartQuery = {
  type t;
  type request = {
@as("limit") limit: eventsLimit,
@as("queryString") queryString: option<queryString>,
@as("endTime") endTime: option<amazonawsTimestamp>,
@as("startTime") startTime: option<amazonawsTimestamp>,
@as("logGroupNames") logGroupNames: logGroupNames,
@as("logGroupName") logGroupName: logGroupName
}
  type response = {
@as("queryId") queryId: queryId
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "StartQueryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutLogEvents = {
  type t;
  type request = {
@as("sequenceToken") sequenceToken: sequenceToken,
@as("logEvents") logEvents: option<inputLogEvents>,
@as("logStreamName") logStreamName: option<logStreamName>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  type response = {
@as("rejectedLogEventsInfo") rejectedLogEventsInfo: rejectedLogEventsInfo,
@as("nextSequenceToken") nextSequenceToken: sequenceToken
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "PutLogEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLogGroupFields = {
  type t;
  type request = {
@as("time") time: amazonawsTimestamp,
@as("logGroupName") logGroupName: option<logGroupName>
}
  type response = {
@as("logGroupFields") logGroupFields: logGroupFieldList
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "GetLogGroupFieldsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLogEvents = {
  type t;
  type request = {
@as("startFromHead") startFromHead: startFromHead,
@as("limit") limit: eventsLimit,
@as("nextToken") nextToken: nextToken,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("logStreamName") logStreamName: option<logStreamName>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  type response = {
@as("nextBackwardToken") nextBackwardToken: nextToken,
@as("nextForwardToken") nextForwardToken: nextToken,
@as("events") events: outputLogEvents
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "GetLogEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module FilterLogEvents = {
  type t;
  type request = {
@as("interleaved") interleaved: interleaved,
@as("limit") limit: eventsLimit,
@as("nextToken") nextToken: nextToken,
@as("filterPattern") filterPattern: filterPattern,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("logStreamNamePrefix") logStreamNamePrefix: logStreamName,
@as("logStreamNames") logStreamNames: inputLogStreamNames,
@as("logGroupName") logGroupName: option<logGroupName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("searchedLogStreams") searchedLogStreams: searchedLogStreams,
@as("events") events: filteredLogEvents
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "FilterLogEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSubscriptionFilters = {
  type t;
  type request = {
@as("limit") limit: describeLimit,
@as("nextToken") nextToken: nextToken,
@as("filterNamePrefix") filterNamePrefix: filterName,
@as("logGroupName") logGroupName: option<logGroupName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("subscriptionFilters") subscriptionFilters: subscriptionFilters
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DescribeSubscriptionFiltersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeResourcePolicies = {
  type t;
  type request = {
@as("limit") limit: describeLimit,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("resourcePolicies") resourcePolicies: resourcePolicies
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DescribeResourcePoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeQueries = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: describeQueriesMaxResults,
@as("status") status: queryStatus,
@as("logGroupName") logGroupName: logGroupName
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("queries") queries: queryInfoList
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DescribeQueriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLogStreams = {
  type t;
  type request = {
@as("limit") limit: describeLimit,
@as("nextToken") nextToken: nextToken,
@as("descending") descending: descending,
@as("orderBy") orderBy: orderBy,
@as("logStreamNamePrefix") logStreamNamePrefix: logStreamName,
@as("logGroupName") logGroupName: option<logGroupName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("logStreams") logStreams: logStreams
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DescribeLogStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLogGroups = {
  type t;
  type request = {
@as("limit") limit: describeLimit,
@as("nextToken") nextToken: nextToken,
@as("logGroupNamePrefix") logGroupNamePrefix: logGroupName
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("logGroups") logGroups: logGroups
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DescribeLogGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDestinations = {
  type t;
  type request = {
@as("limit") limit: describeLimit,
@as("nextToken") nextToken: nextToken,
@as("DestinationNamePrefix") destinationNamePrefix: destinationName
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("destinations") destinations: destinations
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DescribeDestinationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestMetricFilter = {
  type t;
  type request = {
@as("logEventMessages") logEventMessages: option<testEventMessages>,
@as("filterPattern") filterPattern: option<filterPattern>
}
  type response = {
@as("matches") matches: metricFilterMatches
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "TestMetricFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutMetricFilter = {
  type t;
  type request = {
@as("metricTransformations") metricTransformations: option<metricTransformations>,
@as("filterPattern") filterPattern: option<filterPattern>,
@as("filterName") filterName: option<filterName>,
@as("logGroupName") logGroupName: option<logGroupName>
}
  
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "PutMetricFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetQueryResults = {
  type t;
  type request = {
@as("queryId") queryId: option<queryId>
}
  type response = {
@as("status") status: queryStatus,
@as("statistics") statistics: queryStatistics,
@as("results") results: queryResults
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "GetQueryResultsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeQueryDefinitions = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: queryListMaxResults,
@as("queryDefinitionNamePrefix") queryDefinitionNamePrefix: queryDefinitionName
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("queryDefinitions") queryDefinitions: queryDefinitionList
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DescribeQueryDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeExportTasks = {
  type t;
  type request = {
@as("limit") limit: describeLimit,
@as("nextToken") nextToken: nextToken,
@as("statusCode") statusCode: exportTaskStatusCode,
@as("taskId") taskId: exportTaskId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("exportTasks") exportTasks: exportTasks
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DescribeExportTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMetricFilters = {
  type t;
  type request = {
@as("metricNamespace") metricNamespace: metricNamespace,
@as("metricName") metricName: metricName,
@as("limit") limit: describeLimit,
@as("nextToken") nextToken: nextToken,
@as("filterNamePrefix") filterNamePrefix: filterName,
@as("logGroupName") logGroupName: logGroupName
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("metricFilters") metricFilters: metricFilters
}
  @module("@aws-sdk/client-logs") @new external new_: (request) => t = "DescribeMetricFiltersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
