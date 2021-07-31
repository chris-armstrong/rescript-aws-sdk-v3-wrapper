type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type long = float
type version = int
type urlpath = string
type traceSegmentDocument = string
type traceId = string
type token = string
type timestamp_ = Js.Date.t;
type timeRangeType = [@as("Event") #Event | @as("TraceId") #TraceId]
type tagValue = string
type tagKey = string
type string_ = string
type serviceType = string
type serviceName = string
type segmentId = string
type segmentDocument = string
type samplingStrategyName = [@as("FixedRate") #FixedRate | @as("PartialScan") #PartialScan]
type sampledCount = int
type ruleName = string
type resourceARN = string
type reservoirSize = int
type requestCount = int
type priority = int
type nullableLong = float
type nullableInteger = int
type nullableDouble = float
type nullableBoolean = bool
type integer_ = int
type insightSummaryText = string
type insightState = [@as("CLOSED") #CLOSED | @as("ACTIVE") #ACTIVE]
type insightId = string
type insightCategory = [@as("FAULT") #FAULT]
type hostname = string
type host = string
type httpmethod = string
type groupName = string
type groupARN = string
type getInsightSummariesMaxResults = int
type getInsightEventsMaxResults = int
type getGroupsNextToken = string
type fixedRate = float
type filterExpression = string
type eventSummaryText = string
type errorMessage = string
type entitySelectorExpression = string
type encryptionType = [@as("KMS") #KMS | @as("NONE") #NONE]
type encryptionStatus = [@as("ACTIVE") #ACTIVE | @as("UPDATING") #UPDATING]
type encryptionKeyId = string
type ec2InstanceId = string
type double = float
type clientID = string
type borrowCount = int
type boolean_ = bool
type attributeValue = string
type attributeKey = string
type annotationKey = string
type amazonResourceName = string
type unprocessedTraceSegment = {
@as("Message") message: option<string_>,
@as("ErrorCode") errorCode: option<string_>,
@as("Id") id: option<string_>
}
type unprocessedTraceIdList = array<traceId>
type unprocessedStatistics = {
@as("Message") message: option<string_>,
@as("ErrorCode") errorCode: option<string_>,
@as("RuleName") ruleName: option<string_>
}
type traceSegmentDocumentList = array<traceSegmentDocument>
type traceIdList = array<traceId>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type serviceNames = array<string_>
type segment = {
@as("Document") document: option<segmentDocument>,
@as("Id") id: option<segmentId>
}
type samplingTargetDocument = {
@as("Interval") interval: option<nullableInteger>,
@as("ReservoirQuotaTTL") reservoirQuotaTTL: option<timestamp_>,
@as("ReservoirQuota") reservoirQuota: option<nullableInteger>,
@as("FixedRate") fixedRate: option<double>,
@as("RuleName") ruleName: option<string_>
}
type samplingStrategy = {
@as("Value") value: option<nullableDouble>,
@as("Name") name: option<samplingStrategyName>
}
type samplingStatisticsDocument = {
@as("BorrowCount") borrowCount: option<borrowCount>,
@as("SampledCount") sampledCount: sampledCount,
@as("RequestCount") requestCount: requestCount,
@as("Timestamp") timestamp_: timestamp_,
@as("ClientID") clientID: clientID,
@as("RuleName") ruleName: ruleName
}
type samplingStatisticSummary = {
@as("SampledCount") sampledCount: option<integer_>,
@as("BorrowCount") borrowCount: option<integer_>,
@as("RequestCount") requestCount: option<integer_>,
@as("Timestamp") timestamp_: option<timestamp_>,
@as("RuleName") ruleName: option<string_>
}
type rootCauseException = {
@as("Message") message: option<string_>,
@as("Name") name: option<string_>
}
type responseTimeRootCauseEntity = {
@as("Remote") remote: option<nullableBoolean>,
@as("Coverage") coverage: option<nullableDouble>,
@as("Name") name: option<string_>
}
type resourceARNDetail = {
@as("ARN") arn: option<string_>
}
type requestImpactStatistics = {
@as("TotalCount") totalCount: option<nullableLong>,
@as("OkCount") okCount: option<nullableLong>,
@as("FaultCount") faultCount: option<nullableLong>
}
type instanceIdDetail = {
@as("Id") id: option<string_>
}
type insightsConfiguration = {
@as("NotificationsEnabled") notificationsEnabled: option<nullableBoolean>,
@as("InsightsEnabled") insightsEnabled: option<nullableBoolean>
}
type insightStateList = array<insightState>
type insightImpactGraphEdge = {
@as("ReferenceId") referenceId: option<nullableInteger>
}
type insightCategoryList = array<insightCategory>
type http = {
@as("ClientIp") clientIp: option<string_>,
@as("UserAgent") userAgent: option<string_>,
@as("HttpMethod") httpMethod: option<string_>,
@as("HttpStatus") httpStatus: option<nullableInteger>,
@as("HttpURL") httpURL: option<string_>
}
type histogramEntry = {
@as("Count") count: option<integer_>,
@as("Value") value: option<double>
}
type forecastStatistics = {
@as("FaultCountLow") faultCountLow: option<nullableLong>,
@as("FaultCountHigh") faultCountHigh: option<nullableLong>
}
type faultStatistics = {
@as("TotalCount") totalCount: option<nullableLong>,
@as("OtherCount") otherCount: option<nullableLong>
}
type errorStatistics = {
@as("TotalCount") totalCount: option<nullableLong>,
@as("OtherCount") otherCount: option<nullableLong>,
@as("ThrottleCount") throttleCount: option<nullableLong>
}
type encryptionConfig = {
@as("Type") type_: option<encryptionType>,
@as("Status") status: option<encryptionStatus>,
@as("KeyId") keyId: option<string_>
}
type backendConnectionErrors = {
@as("OtherCount") otherCount: option<nullableInteger>,
@as("UnknownHostCount") unknownHostCount: option<nullableInteger>,
@as("HTTPCode5XXCount") httpcode5XXCount: option<nullableInteger>,
@as("HTTPCode4XXCount") httpcode4XXCount: option<nullableInteger>,
@as("ConnectionRefusedCount") connectionRefusedCount: option<nullableInteger>,
@as("TimeoutCount") timeoutCount: option<nullableInteger>
}
type availabilityZoneDetail = {
@as("Name") name: option<string_>
}
type attributeMap = Js.Dict.t< attributeValue>
type annotationValue = StringValue(string_) | BooleanValue(nullableBoolean) | NumberValue(nullableDouble);
type aliasNames = array<string_>
type unprocessedTraceSegmentList = array<unprocessedTraceSegment>
type unprocessedStatisticsList = array<unprocessedStatistics>
type traceResourceARNs = array<resourceARNDetail>
type traceInstanceIds = array<instanceIdDetail>
type traceAvailabilityZones = array<availabilityZoneDetail>
type telemetryRecord = {
@as("BackendConnectionErrors") backendConnectionErrors: option<backendConnectionErrors>,
@as("SegmentsRejectedCount") segmentsRejectedCount: option<nullableInteger>,
@as("SegmentsSpilloverCount") segmentsSpilloverCount: option<nullableInteger>,
@as("SegmentsSentCount") segmentsSentCount: option<nullableInteger>,
@as("SegmentsReceivedCount") segmentsReceivedCount: option<nullableInteger>,
@as("Timestamp") timestamp_: timestamp_
}
type tagList_ = array<tag>
type serviceStatistics = {
@as("TotalResponseTime") totalResponseTime: option<nullableDouble>,
@as("TotalCount") totalCount: option<nullableLong>,
@as("FaultStatistics") faultStatistics: option<faultStatistics>,
@as("ErrorStatistics") errorStatistics: option<errorStatistics>,
@as("OkCount") okCount: option<nullableLong>
}
type serviceId = {
@as("Type") type_: option<string_>,
@as("AccountId") accountId: option<string_>,
@as("Names") names: option<serviceNames>,
@as("Name") name: option<string_>
}
type segmentList = array<segment>
type samplingTargetDocumentList = array<samplingTargetDocument>
type samplingStatisticsDocumentList = array<samplingStatisticsDocument>
type samplingStatisticSummaryList = array<samplingStatisticSummary>
type samplingRuleUpdate = {
@as("Attributes") attributes: option<attributeMap>,
@as("URLPath") urlpath: option<urlpath>,
@as("HTTPMethod") httpmethod: option<httpmethod>,
@as("ServiceType") serviceType: option<serviceType>,
@as("ServiceName") serviceName: option<serviceName>,
@as("Host") host: option<host>,
@as("ReservoirSize") reservoirSize: option<nullableInteger>,
@as("FixedRate") fixedRate: option<nullableDouble>,
@as("Priority") priority: option<nullableInteger>,
@as("ResourceARN") resourceARN: option<resourceARN>,
@as("RuleARN") ruleARN: option<string_>,
@as("RuleName") ruleName: option<ruleName>
}
type samplingRule = {
@as("Attributes") attributes: option<attributeMap>,
@as("Version") version: version,
@as("URLPath") urlpath: urlpath,
@as("HTTPMethod") httpmethod: httpmethod,
@as("Host") host: host,
@as("ServiceType") serviceType: serviceType,
@as("ServiceName") serviceName: serviceName,
@as("ReservoirSize") reservoirSize: reservoirSize,
@as("FixedRate") fixedRate: fixedRate,
@as("Priority") priority: priority,
@as("ResourceARN") resourceARN: resourceARN,
@as("RuleARN") ruleARN: option<string_>,
@as("RuleName") ruleName: option<ruleName>
}
type rootCauseExceptions = array<rootCauseException>
type responseTimeRootCauseEntityPath = array<responseTimeRootCauseEntity>
type insightImpactGraphEdgeList = array<insightImpactGraphEdge>
type histogram = array<histogramEntry>
type groupSummary = {
@as("InsightsConfiguration") insightsConfiguration: option<insightsConfiguration>,
@as("FilterExpression") filterExpression: option<string_>,
@as("GroupARN") groupARN: option<string_>,
@as("GroupName") groupName: option<string_>
}
type group = {
@as("InsightsConfiguration") insightsConfiguration: option<insightsConfiguration>,
@as("FilterExpression") filterExpression: option<string_>,
@as("GroupARN") groupARN: option<string_>,
@as("GroupName") groupName: option<string_>
}
type edgeStatistics = {
@as("TotalResponseTime") totalResponseTime: option<nullableDouble>,
@as("TotalCount") totalCount: option<nullableLong>,
@as("FaultStatistics") faultStatistics: option<faultStatistics>,
@as("ErrorStatistics") errorStatistics: option<errorStatistics>,
@as("OkCount") okCount: option<nullableLong>
}
type alias = {
@as("Type") type_: option<string_>,
@as("Names") names: option<aliasNames>,
@as("Name") name: option<string_>
}
type trace = {
@as("Segments") segments: option<segmentList>,
@as("LimitExceeded") limitExceeded: option<nullableBoolean>,
@as("Duration") duration: option<nullableDouble>,
@as("Id") id: option<traceId>
}
type timeSeriesServiceStatistics = {
@as("ResponseTimeHistogram") responseTimeHistogram: option<histogram>,
@as("ServiceForecastStatistics") serviceForecastStatistics: option<forecastStatistics>,
@as("ServiceSummaryStatistics") serviceSummaryStatistics: option<serviceStatistics>,
@as("EdgeSummaryStatistics") edgeSummaryStatistics: option<edgeStatistics>,
@as("Timestamp") timestamp_: option<timestamp_>
}
type telemetryRecordList = array<telemetryRecord>
type serviceIds = array<serviceId>
type samplingRuleRecord = {
@as("ModifiedAt") modifiedAt: option<timestamp_>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("SamplingRule") samplingRule: option<samplingRule>
}
type responseTimeRootCauseService = {
@as("Inferred") inferred: option<nullableBoolean>,
@as("EntityPath") entityPath: option<responseTimeRootCauseEntityPath>,
@as("AccountId") accountId: option<string_>,
@as("Type") type_: option<string_>,
@as("Names") names: option<serviceNames>,
@as("Name") name: option<string_>
}
type insightImpactGraphService = {
@as("Edges") edges: option<insightImpactGraphEdgeList>,
@as("AccountId") accountId: option<string_>,
@as("Names") names: option<serviceNames>,
@as("Name") name: option<string_>,
@as("Type") type_: option<string_>,
@as("ReferenceId") referenceId: option<nullableInteger>
}
type groupSummaryList = array<groupSummary>
type faultRootCauseEntity = {
@as("Remote") remote: option<nullableBoolean>,
@as("Exceptions") exceptions: option<rootCauseExceptions>,
@as("Name") name: option<string_>
}
type errorRootCauseEntity = {
@as("Remote") remote: option<nullableBoolean>,
@as("Exceptions") exceptions: option<rootCauseExceptions>,
@as("Name") name: option<string_>
}
type anomalousService = {
@as("ServiceId") serviceId: option<serviceId>
}
type aliasList = array<alias>
type valueWithServiceIds = {
@as("ServiceIds") serviceIds: option<serviceIds>,
@as("AnnotationValue") annotationValue: option<annotationValue>
}
type traceUser = {
@as("ServiceIds") serviceIds: option<serviceIds>,
@as("UserName") userName: option<string_>
}
type traceList = array<trace>
type timeSeriesServiceStatisticsList = array<timeSeriesServiceStatistics>
type samplingRuleRecordList = array<samplingRuleRecord>
type responseTimeRootCauseServices = array<responseTimeRootCauseService>
type insightImpactGraphServiceList = array<insightImpactGraphService>
type faultRootCauseEntityPath = array<faultRootCauseEntity>
type errorRootCauseEntityPath = array<errorRootCauseEntity>
type edge = {
@as("Aliases") aliases: option<aliasList>,
@as("ResponseTimeHistogram") responseTimeHistogram: option<histogram>,
@as("SummaryStatistics") summaryStatistics: option<edgeStatistics>,
@as("EndTime") endTime: option<timestamp_>,
@as("StartTime") startTime: option<timestamp_>,
@as("ReferenceId") referenceId: option<nullableInteger>
}
type anomalousServiceList = array<anomalousService>
type valuesWithServiceIds = array<valueWithServiceIds>
type traceUsers = array<traceUser>
type responseTimeRootCause = {
@as("ClientImpacting") clientImpacting: option<nullableBoolean>,
@as("Services") services: option<responseTimeRootCauseServices>
}
type insightSummary = {
@as("LastUpdateTime") lastUpdateTime: option<timestamp_>,
@as("TopAnomalousServices") topAnomalousServices: option<anomalousServiceList>,
@as("RootCauseServiceRequestImpactStatistics") rootCauseServiceRequestImpactStatistics: option<requestImpactStatistics>,
@as("ClientRequestImpactStatistics") clientRequestImpactStatistics: option<requestImpactStatistics>,
@as("Summary") summary: option<insightSummaryText>,
@as("EndTime") endTime: option<timestamp_>,
@as("StartTime") startTime: option<timestamp_>,
@as("State") state: option<insightState>,
@as("Categories") categories: option<insightCategoryList>,
@as("RootCauseServiceId") rootCauseServiceId: option<serviceId>,
@as("GroupName") groupName: option<groupName>,
@as("GroupARN") groupARN: option<groupARN>,
@as("InsightId") insightId: option<insightId>
}
type insightEvent = {
@as("TopAnomalousServices") topAnomalousServices: option<anomalousServiceList>,
@as("RootCauseServiceRequestImpactStatistics") rootCauseServiceRequestImpactStatistics: option<requestImpactStatistics>,
@as("ClientRequestImpactStatistics") clientRequestImpactStatistics: option<requestImpactStatistics>,
@as("EventTime") eventTime: option<timestamp_>,
@as("Summary") summary: option<eventSummaryText>
}
type insight = {
@as("TopAnomalousServices") topAnomalousServices: option<anomalousServiceList>,
@as("RootCauseServiceRequestImpactStatistics") rootCauseServiceRequestImpactStatistics: option<requestImpactStatistics>,
@as("ClientRequestImpactStatistics") clientRequestImpactStatistics: option<requestImpactStatistics>,
@as("Summary") summary: option<insightSummaryText>,
@as("EndTime") endTime: option<timestamp_>,
@as("StartTime") startTime: option<timestamp_>,
@as("State") state: option<insightState>,
@as("Categories") categories: option<insightCategoryList>,
@as("RootCauseServiceId") rootCauseServiceId: option<serviceId>,
@as("GroupName") groupName: option<groupName>,
@as("GroupARN") groupARN: option<groupARN>,
@as("InsightId") insightId: option<insightId>
}
type faultRootCauseService = {
@as("Inferred") inferred: option<nullableBoolean>,
@as("EntityPath") entityPath: option<faultRootCauseEntityPath>,
@as("AccountId") accountId: option<string_>,
@as("Type") type_: option<string_>,
@as("Names") names: option<serviceNames>,
@as("Name") name: option<string_>
}
type errorRootCauseService = {
@as("Inferred") inferred: option<nullableBoolean>,
@as("EntityPath") entityPath: option<errorRootCauseEntityPath>,
@as("AccountId") accountId: option<string_>,
@as("Type") type_: option<string_>,
@as("Names") names: option<serviceNames>,
@as("Name") name: option<string_>
}
type edgeList = array<edge>
type service = {
@as("ResponseTimeHistogram") responseTimeHistogram: option<histogram>,
@as("DurationHistogram") durationHistogram: option<histogram>,
@as("SummaryStatistics") summaryStatistics: option<serviceStatistics>,
@as("Edges") edges: option<edgeList>,
@as("EndTime") endTime: option<timestamp_>,
@as("StartTime") startTime: option<timestamp_>,
@as("State") state: option<string_>,
@as("Type") type_: option<string_>,
@as("AccountId") accountId: option<string_>,
@as("Root") root: option<nullableBoolean>,
@as("Names") names: option<serviceNames>,
@as("Name") name: option<string_>,
@as("ReferenceId") referenceId: option<nullableInteger>
}
type responseTimeRootCauses = array<responseTimeRootCause>
type insightSummaryList = array<insightSummary>
type insightEventList = array<insightEvent>
type faultRootCauseServices = array<faultRootCauseService>
type errorRootCauseServices = array<errorRootCauseService>
type annotations = Js.Dict.t< valuesWithServiceIds>
type serviceList = array<service>
type faultRootCause = {
@as("ClientImpacting") clientImpacting: option<nullableBoolean>,
@as("Services") services: option<faultRootCauseServices>
}
type errorRootCause = {
@as("ClientImpacting") clientImpacting: option<nullableBoolean>,
@as("Services") services: option<errorRootCauseServices>
}
type faultRootCauses = array<faultRootCause>
type errorRootCauses = array<errorRootCause>
type traceSummary = {
@as("MatchedEventTime") matchedEventTime: option<timestamp_>,
@as("Revision") revision: option<integer_>,
@as("ResponseTimeRootCauses") responseTimeRootCauses: option<responseTimeRootCauses>,
@as("ErrorRootCauses") errorRootCauses: option<errorRootCauses>,
@as("FaultRootCauses") faultRootCauses: option<faultRootCauses>,
@as("EntryPoint") entryPoint: option<serviceId>,
@as("AvailabilityZones") availabilityZones: option<traceAvailabilityZones>,
@as("InstanceIds") instanceIds: option<traceInstanceIds>,
@as("ResourceARNs") resourceARNs: option<traceResourceARNs>,
@as("ServiceIds") serviceIds: option<serviceIds>,
@as("Users") users: option<traceUsers>,
@as("Annotations") annotations: option<annotations>,
@as("Http") http: option<http>,
@as("IsPartial") isPartial: option<nullableBoolean>,
@as("HasThrottle") hasThrottle: option<nullableBoolean>,
@as("HasError") hasError: option<nullableBoolean>,
@as("HasFault") hasFault: option<nullableBoolean>,
@as("ResponseTime") responseTime: option<nullableDouble>,
@as("Duration") duration: option<nullableDouble>,
@as("Id") id: option<traceId>
}
type traceSummaryList = array<traceSummary>
type awsServiceClient;
@module("@aws-sdk/client-xray") @new external createClient: unit => awsServiceClient = "XRayClient";
module DeleteGroup = {
  type t;
  type request = {
@as("GroupARN") groupARN: option<groupARN>,
@as("GroupName") groupName: option<groupName>
}
  type response = unit
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "DeleteGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceARN") resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutEncryptionConfig = {
  type t;
  type request = {
@as("Type") type_: encryptionType,
@as("KeyId") keyId: option<encryptionKeyId>
}
  type response = {
@as("EncryptionConfig") encryptionConfig: option<encryptionConfig>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "PutEncryptionConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEncryptionConfig = {
  type t;
  type request = unit
  type response = {
@as("EncryptionConfig") encryptionConfig: option<encryptionConfig>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetEncryptionConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateGroup = {
  type t;
  type request = {
@as("InsightsConfiguration") insightsConfiguration: option<insightsConfiguration>,
@as("FilterExpression") filterExpression: option<filterExpression>,
@as("GroupARN") groupARN: option<groupARN>,
@as("GroupName") groupName: option<groupName>
}
  type response = {
@as("Group") group: option<group>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "UpdateGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceARN") resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutTraceSegments = {
  type t;
  type request = {
@as("TraceSegmentDocuments") traceSegmentDocuments: traceSegmentDocumentList
}
  type response = {
@as("UnprocessedTraceSegments") unprocessedTraceSegments: option<unprocessedTraceSegmentList>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "PutTraceSegmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("ResourceARN") resourceARN: amazonResourceName
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSamplingTargets = {
  type t;
  type request = {
@as("SamplingStatisticsDocuments") samplingStatisticsDocuments: samplingStatisticsDocumentList
}
  type response = {
@as("UnprocessedStatistics") unprocessedStatistics: option<unprocessedStatisticsList>,
@as("LastRuleModification") lastRuleModification: option<timestamp_>,
@as("SamplingTargetDocuments") samplingTargetDocuments: option<samplingTargetDocumentList>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetSamplingTargetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSamplingStatisticSummaries = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("SamplingStatisticSummaries") samplingStatisticSummaries: option<samplingStatisticSummaryList>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetSamplingStatisticSummariesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetGroup = {
  type t;
  type request = {
@as("GroupARN") groupARN: option<groupARN>,
@as("GroupName") groupName: option<groupName>
}
  type response = {
@as("Group") group: option<group>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateGroup = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("InsightsConfiguration") insightsConfiguration: option<insightsConfiguration>,
@as("FilterExpression") filterExpression: option<filterExpression>,
@as("GroupName") groupName: groupName
}
  type response = {
@as("Group") group: option<group>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "CreateGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSamplingRule = {
  type t;
  type request = {
@as("SamplingRuleUpdate") samplingRuleUpdate: samplingRuleUpdate
}
  type response = {
@as("SamplingRuleRecord") samplingRuleRecord: option<samplingRuleRecord>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "UpdateSamplingRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutTelemetryRecords = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<resourceARN>,
@as("Hostname") hostname: option<hostname>,
@as("EC2InstanceId") ec2InstanceId: option<ec2InstanceId>,
@as("TelemetryRecords") telemetryRecords: telemetryRecordList
}
  type response = unit
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "PutTelemetryRecordsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: option<getGroupsNextToken>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Groups") groups: option<groupSummaryList>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSamplingRule = {
  type t;
  type request = {
@as("RuleARN") ruleARN: option<string_>,
@as("RuleName") ruleName: option<string_>
}
  type response = {
@as("SamplingRuleRecord") samplingRuleRecord: option<samplingRuleRecord>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "DeleteSamplingRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSamplingRule = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("SamplingRule") samplingRule: samplingRule
}
  type response = {
@as("SamplingRuleRecord") samplingRuleRecord: option<samplingRuleRecord>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "CreateSamplingRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTimeSeriesServiceStatistics = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("ForecastStatistics") forecastStatistics: option<nullableBoolean>,
@as("Period") period: option<nullableInteger>,
@as("EntitySelectorExpression") entitySelectorExpression: option<entitySelectorExpression>,
@as("GroupARN") groupARN: option<groupARN>,
@as("GroupName") groupName: option<groupName>,
@as("EndTime") endTime: timestamp_,
@as("StartTime") startTime: timestamp_
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("ContainsOldGroupVersions") containsOldGroupVersions: option<boolean_>,
@as("TimeSeriesServiceStatistics") timeSeriesServiceStatistics: option<timeSeriesServiceStatisticsList>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetTimeSeriesServiceStatisticsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSamplingRules = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("SamplingRuleRecords") samplingRuleRecords: option<samplingRuleRecordList>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetSamplingRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInsightImpactGraph = {
  type t;
  type request = {
@as("NextToken") nextToken: option<token>,
@as("EndTime") endTime: timestamp_,
@as("StartTime") startTime: timestamp_,
@as("InsightId") insightId: insightId
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Services") services: option<insightImpactGraphServiceList>,
@as("ServiceGraphEndTime") serviceGraphEndTime: option<timestamp_>,
@as("ServiceGraphStartTime") serviceGraphStartTime: option<timestamp_>,
@as("EndTime") endTime: option<timestamp_>,
@as("StartTime") startTime: option<timestamp_>,
@as("InsightId") insightId: option<insightId>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetInsightImpactGraphCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGetTraces = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("TraceIds") traceIds: traceIdList
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("UnprocessedTraceIds") unprocessedTraceIds: option<unprocessedTraceIdList>,
@as("Traces") traces: option<traceList>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "BatchGetTracesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInsight = {
  type t;
  type request = {
@as("InsightId") insightId: insightId
}
  type response = {
@as("Insight") insight: option<insight>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetInsightCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInsightSummaries = {
  type t;
  type request = {
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<getInsightSummariesMaxResults>,
@as("EndTime") endTime: timestamp_,
@as("StartTime") startTime: timestamp_,
@as("GroupName") groupName: option<groupName>,
@as("GroupARN") groupARN: option<groupARN>,
@as("States") states: option<insightStateList>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("InsightSummaries") insightSummaries: option<insightSummaryList>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetInsightSummariesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInsightEvents = {
  type t;
  type request = {
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<getInsightEventsMaxResults>,
@as("InsightId") insightId: insightId
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("InsightEvents") insightEvents: option<insightEventList>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetInsightEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTraceGraph = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("TraceIds") traceIds: traceIdList
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Services") services: option<serviceList>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetTraceGraphCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetServiceGraph = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("GroupARN") groupARN: option<groupARN>,
@as("GroupName") groupName: option<groupName>,
@as("EndTime") endTime: timestamp_,
@as("StartTime") startTime: timestamp_
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("ContainsOldGroupVersions") containsOldGroupVersions: option<boolean_>,
@as("Services") services: option<serviceList>,
@as("EndTime") endTime: option<timestamp_>,
@as("StartTime") startTime: option<timestamp_>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetServiceGraphCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTraceSummaries = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("FilterExpression") filterExpression: option<filterExpression>,
@as("SamplingStrategy") samplingStrategy: option<samplingStrategy>,
@as("Sampling") sampling: option<nullableBoolean>,
@as("TimeRangeType") timeRangeType: option<timeRangeType>,
@as("EndTime") endTime: timestamp_,
@as("StartTime") startTime: timestamp_
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("TracesProcessedCount") tracesProcessedCount: option<nullableLong>,
@as("ApproximateTime") approximateTime: option<timestamp_>,
@as("TraceSummaries") traceSummaries: option<traceSummaryList>
}
  @module("@aws-sdk/client-xray") @new external new_: (request) => t = "GetTraceSummariesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
