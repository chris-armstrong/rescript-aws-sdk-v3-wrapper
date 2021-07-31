type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type version = int;
type uRLPath = string
type traceSegmentDocument = string
type traceId = string
type token = string
type amazonawsTimestamp = Js.Date.t;
type timeRangeType = [@as("Event") #Event | @as("TraceId") #TraceId]
type tagValue = string
type tagKey = string
type amazonawsString = string
type serviceType = string
type serviceName = string
type segmentId = string
type segmentDocument = string
type samplingStrategyName = [@as("FixedRate") #FixedRate | @as("PartialScan") #PartialScan]
type sampledCount = int;
type ruleName = string
type resourceARN = string
type reservoirSize = int;
type requestCount = int;
type priority = int;
type nullableLong = float;
type nullableInteger = int;
type nullableDouble = float;
type nullableBoolean = bool;
type amazonawsInteger = int;
type insightSummaryText = string
type insightState = [@as("CLOSED") #CLOSED | @as("ACTIVE") #ACTIVE]
type insightId = string
type insightCategory = [@as("FAULT") #FAULT]
type hostname = string
type host = string
type hTTPMethod = string
type groupName = string
type groupARN = string
type getInsightSummariesMaxResults = int;
type getInsightEventsMaxResults = int;
type getGroupsNextToken = string
type fixedRate = float;
type filterExpression = string
type eventSummaryText = string
type errorMessage = string
type entitySelectorExpression = string
type encryptionType = [@as("KMS") #KMS | @as("NONE") #NONE]
type encryptionStatus = [@as("ACTIVE") #ACTIVE | @as("UPDATING") #UPDATING]
type encryptionKeyId = string
type eC2InstanceId = string
type amazonawsDouble = float;
type clientID = string
type borrowCount = int;
type amazonawsBoolean = bool;
type attributeValue = string
type attributeKey = string
type annotationKey = string
type amazonResourceName = string
type unprocessedTraceSegment = {
@as("Message") message: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("Id") id: amazonawsString
}
type unprocessedTraceIdList = array<traceId>
type unprocessedStatistics = {
@as("Message") message: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("RuleName") ruleName: amazonawsString
}
type traceSegmentDocumentList = array<traceSegmentDocument>
type traceIdList = array<traceId>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type serviceNames = array<amazonawsString>
type segment = {
@as("Document") document: segmentDocument,
@as("Id") id: segmentId
}
type samplingTargetDocument = {
@as("Interval") interval: nullableInteger,
@as("ReservoirQuotaTTL") reservoirQuotaTTL: amazonawsTimestamp,
@as("ReservoirQuota") reservoirQuota: nullableInteger,
@as("FixedRate") fixedRate: amazonawsDouble,
@as("RuleName") ruleName: amazonawsString
}
type samplingStrategy = {
@as("Value") value: nullableDouble,
@as("Name") name: samplingStrategyName
}
type samplingStatisticsDocument = {
@as("BorrowCount") borrowCount: borrowCount,
@as("SampledCount") sampledCount: option<sampledCount>,
@as("RequestCount") requestCount: option<requestCount>,
@as("Timestamp") timestamp: option<amazonawsTimestamp>,
@as("ClientID") clientID: option<clientID>,
@as("RuleName") ruleName: option<ruleName>
}
type samplingStatisticSummary = {
@as("SampledCount") sampledCount: amazonawsInteger,
@as("BorrowCount") borrowCount: amazonawsInteger,
@as("RequestCount") requestCount: amazonawsInteger,
@as("Timestamp") timestamp: amazonawsTimestamp,
@as("RuleName") ruleName: amazonawsString
}
type rootCauseException = {
@as("Message") message: amazonawsString,
@as("Name") name: amazonawsString
}
type responseTimeRootCauseEntity = {
@as("Remote") remote: nullableBoolean,
@as("Coverage") coverage: nullableDouble,
@as("Name") name: amazonawsString
}
type resourceARNDetail = {
@as("ARN") aRN: amazonawsString
}
type requestImpactStatistics = {
@as("TotalCount") totalCount: nullableLong,
@as("OkCount") okCount: nullableLong,
@as("FaultCount") faultCount: nullableLong
}
type instanceIdDetail = {
@as("Id") id: amazonawsString
}
type insightsConfiguration = {
@as("NotificationsEnabled") notificationsEnabled: nullableBoolean,
@as("InsightsEnabled") insightsEnabled: nullableBoolean
}
type insightStateList = array<insightState>
type insightImpactGraphEdge = {
@as("ReferenceId") referenceId: nullableInteger
}
type insightCategoryList = array<insightCategory>
type http = {
@as("ClientIp") clientIp: amazonawsString,
@as("UserAgent") userAgent: amazonawsString,
@as("HttpMethod") httpMethod: amazonawsString,
@as("HttpStatus") httpStatus: nullableInteger,
@as("HttpURL") httpURL: amazonawsString
}
type histogramEntry = {
@as("Count") count: amazonawsInteger,
@as("Value") value: amazonawsDouble
}
type forecastStatistics = {
@as("FaultCountLow") faultCountLow: nullableLong,
@as("FaultCountHigh") faultCountHigh: nullableLong
}
type faultStatistics = {
@as("TotalCount") totalCount: nullableLong,
@as("OtherCount") otherCount: nullableLong
}
type errorStatistics = {
@as("TotalCount") totalCount: nullableLong,
@as("OtherCount") otherCount: nullableLong,
@as("ThrottleCount") throttleCount: nullableLong
}
type encryptionConfig = {
@as("Type") type_: encryptionType,
@as("Status") status: encryptionStatus,
@as("KeyId") keyId: amazonawsString
}
type backendConnectionErrors = {
@as("OtherCount") otherCount: nullableInteger,
@as("UnknownHostCount") unknownHostCount: nullableInteger,
@as("HTTPCode5XXCount") hTTPCode5XXCount: nullableInteger,
@as("HTTPCode4XXCount") hTTPCode4XXCount: nullableInteger,
@as("ConnectionRefusedCount") connectionRefusedCount: nullableInteger,
@as("TimeoutCount") timeoutCount: nullableInteger
}
type availabilityZoneDetail = {
@as("Name") name: amazonawsString
}
type attributeMap = Js.Dict.t< attributeValue>
type annotationValue = StringValue(amazonawsString) | BooleanValue(nullableBoolean) | NumberValue(nullableDouble);
type aliasNames = array<amazonawsString>
type unprocessedTraceSegmentList = array<unprocessedTraceSegment>
type unprocessedStatisticsList = array<unprocessedStatistics>
type traceResourceARNs = array<resourceARNDetail>
type traceInstanceIds = array<instanceIdDetail>
type traceAvailabilityZones = array<availabilityZoneDetail>
type telemetryRecord = {
@as("BackendConnectionErrors") backendConnectionErrors: backendConnectionErrors,
@as("SegmentsRejectedCount") segmentsRejectedCount: nullableInteger,
@as("SegmentsSpilloverCount") segmentsSpilloverCount: nullableInteger,
@as("SegmentsSentCount") segmentsSentCount: nullableInteger,
@as("SegmentsReceivedCount") segmentsReceivedCount: nullableInteger,
@as("Timestamp") timestamp: option<amazonawsTimestamp>
}
type tagList = array<tag>
type serviceStatistics = {
@as("TotalResponseTime") totalResponseTime: nullableDouble,
@as("TotalCount") totalCount: nullableLong,
@as("FaultStatistics") faultStatistics: faultStatistics,
@as("ErrorStatistics") errorStatistics: errorStatistics,
@as("OkCount") okCount: nullableLong
}
type serviceId = {
@as("Type") type_: amazonawsString,
@as("AccountId") accountId: amazonawsString,
@as("Names") names: serviceNames,
@as("Name") name: amazonawsString
}
type segmentList = array<segment>
type samplingTargetDocumentList = array<samplingTargetDocument>
type samplingStatisticsDocumentList = array<samplingStatisticsDocument>
type samplingStatisticSummaryList = array<samplingStatisticSummary>
type samplingRuleUpdate = {
@as("Attributes") attributes: attributeMap,
@as("URLPath") uRLPath: uRLPath,
@as("HTTPMethod") hTTPMethod: hTTPMethod,
@as("ServiceType") serviceType: serviceType,
@as("ServiceName") serviceName: serviceName,
@as("Host") host: host,
@as("ReservoirSize") reservoirSize: nullableInteger,
@as("FixedRate") fixedRate: nullableDouble,
@as("Priority") priority: nullableInteger,
@as("ResourceARN") resourceARN: resourceARN,
@as("RuleARN") ruleARN: amazonawsString,
@as("RuleName") ruleName: ruleName
}
type samplingRule = {
@as("Attributes") attributes: attributeMap,
@as("Version") version: option<version>,
@as("URLPath") uRLPath: option<uRLPath>,
@as("HTTPMethod") hTTPMethod: option<hTTPMethod>,
@as("Host") host: option<host>,
@as("ServiceType") serviceType: option<serviceType>,
@as("ServiceName") serviceName: option<serviceName>,
@as("ReservoirSize") reservoirSize: option<reservoirSize>,
@as("FixedRate") fixedRate: option<fixedRate>,
@as("Priority") priority: option<priority>,
@as("ResourceARN") resourceARN: option<resourceARN>,
@as("RuleARN") ruleARN: amazonawsString,
@as("RuleName") ruleName: ruleName
}
type rootCauseExceptions = array<rootCauseException>
type responseTimeRootCauseEntityPath = array<responseTimeRootCauseEntity>
type insightImpactGraphEdgeList = array<insightImpactGraphEdge>
type histogram = array<histogramEntry>
type groupSummary = {
@as("InsightsConfiguration") insightsConfiguration: insightsConfiguration,
@as("FilterExpression") filterExpression: amazonawsString,
@as("GroupARN") groupARN: amazonawsString,
@as("GroupName") groupName: amazonawsString
}
type group = {
@as("InsightsConfiguration") insightsConfiguration: insightsConfiguration,
@as("FilterExpression") filterExpression: amazonawsString,
@as("GroupARN") groupARN: amazonawsString,
@as("GroupName") groupName: amazonawsString
}
type edgeStatistics = {
@as("TotalResponseTime") totalResponseTime: nullableDouble,
@as("TotalCount") totalCount: nullableLong,
@as("FaultStatistics") faultStatistics: faultStatistics,
@as("ErrorStatistics") errorStatistics: errorStatistics,
@as("OkCount") okCount: nullableLong
}
type alias = {
@as("Type") type_: amazonawsString,
@as("Names") names: aliasNames,
@as("Name") name: amazonawsString
}
type trace = {
@as("Segments") segments: segmentList,
@as("LimitExceeded") limitExceeded: nullableBoolean,
@as("Duration") duration: nullableDouble,
@as("Id") id: traceId
}
type timeSeriesServiceStatistics = {
@as("ResponseTimeHistogram") responseTimeHistogram: histogram,
@as("ServiceForecastStatistics") serviceForecastStatistics: forecastStatistics,
@as("ServiceSummaryStatistics") serviceSummaryStatistics: serviceStatistics,
@as("EdgeSummaryStatistics") edgeSummaryStatistics: edgeStatistics,
@as("Timestamp") timestamp: amazonawsTimestamp
}
type telemetryRecordList = array<telemetryRecord>
type serviceIds = array<serviceId>
type samplingRuleRecord = {
@as("ModifiedAt") modifiedAt: amazonawsTimestamp,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("SamplingRule") samplingRule: samplingRule
}
type responseTimeRootCauseService = {
@as("Inferred") inferred: nullableBoolean,
@as("EntityPath") entityPath: responseTimeRootCauseEntityPath,
@as("AccountId") accountId: amazonawsString,
@as("Type") type_: amazonawsString,
@as("Names") names: serviceNames,
@as("Name") name: amazonawsString
}
type insightImpactGraphService = {
@as("Edges") edges: insightImpactGraphEdgeList,
@as("AccountId") accountId: amazonawsString,
@as("Names") names: serviceNames,
@as("Name") name: amazonawsString,
@as("Type") type_: amazonawsString,
@as("ReferenceId") referenceId: nullableInteger
}
type groupSummaryList = array<groupSummary>
type faultRootCauseEntity = {
@as("Remote") remote: nullableBoolean,
@as("Exceptions") exceptions: rootCauseExceptions,
@as("Name") name: amazonawsString
}
type errorRootCauseEntity = {
@as("Remote") remote: nullableBoolean,
@as("Exceptions") exceptions: rootCauseExceptions,
@as("Name") name: amazonawsString
}
type anomalousService = {
@as("ServiceId") serviceId: serviceId
}
type aliasList = array<alias>
type valueWithServiceIds = {
@as("ServiceIds") serviceIds: serviceIds,
@as("AnnotationValue") annotationValue: annotationValue
}
type traceUser = {
@as("ServiceIds") serviceIds: serviceIds,
@as("UserName") userName: amazonawsString
}
type traceList = array<trace>
type timeSeriesServiceStatisticsList = array<timeSeriesServiceStatistics>
type samplingRuleRecordList = array<samplingRuleRecord>
type responseTimeRootCauseServices = array<responseTimeRootCauseService>
type insightImpactGraphServiceList = array<insightImpactGraphService>
type faultRootCauseEntityPath = array<faultRootCauseEntity>
type errorRootCauseEntityPath = array<errorRootCauseEntity>
type edge = {
@as("Aliases") aliases: aliasList,
@as("ResponseTimeHistogram") responseTimeHistogram: histogram,
@as("SummaryStatistics") summaryStatistics: edgeStatistics,
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp,
@as("ReferenceId") referenceId: nullableInteger
}
type anomalousServiceList = array<anomalousService>
type valuesWithServiceIds = array<valueWithServiceIds>
type traceUsers = array<traceUser>
type responseTimeRootCause = {
@as("ClientImpacting") clientImpacting: nullableBoolean,
@as("Services") services: responseTimeRootCauseServices
}
type insightSummary = {
@as("LastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("TopAnomalousServices") topAnomalousServices: anomalousServiceList,
@as("RootCauseServiceRequestImpactStatistics") rootCauseServiceRequestImpactStatistics: requestImpactStatistics,
@as("ClientRequestImpactStatistics") clientRequestImpactStatistics: requestImpactStatistics,
@as("Summary") summary: insightSummaryText,
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp,
@as("State") state: insightState,
@as("Categories") categories: insightCategoryList,
@as("RootCauseServiceId") rootCauseServiceId: serviceId,
@as("GroupName") groupName: groupName,
@as("GroupARN") groupARN: groupARN,
@as("InsightId") insightId: insightId
}
type insightEvent = {
@as("TopAnomalousServices") topAnomalousServices: anomalousServiceList,
@as("RootCauseServiceRequestImpactStatistics") rootCauseServiceRequestImpactStatistics: requestImpactStatistics,
@as("ClientRequestImpactStatistics") clientRequestImpactStatistics: requestImpactStatistics,
@as("EventTime") eventTime: amazonawsTimestamp,
@as("Summary") summary: eventSummaryText
}
type insight = {
@as("TopAnomalousServices") topAnomalousServices: anomalousServiceList,
@as("RootCauseServiceRequestImpactStatistics") rootCauseServiceRequestImpactStatistics: requestImpactStatistics,
@as("ClientRequestImpactStatistics") clientRequestImpactStatistics: requestImpactStatistics,
@as("Summary") summary: insightSummaryText,
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp,
@as("State") state: insightState,
@as("Categories") categories: insightCategoryList,
@as("RootCauseServiceId") rootCauseServiceId: serviceId,
@as("GroupName") groupName: groupName,
@as("GroupARN") groupARN: groupARN,
@as("InsightId") insightId: insightId
}
type faultRootCauseService = {
@as("Inferred") inferred: nullableBoolean,
@as("EntityPath") entityPath: faultRootCauseEntityPath,
@as("AccountId") accountId: amazonawsString,
@as("Type") type_: amazonawsString,
@as("Names") names: serviceNames,
@as("Name") name: amazonawsString
}
type errorRootCauseService = {
@as("Inferred") inferred: nullableBoolean,
@as("EntityPath") entityPath: errorRootCauseEntityPath,
@as("AccountId") accountId: amazonawsString,
@as("Type") type_: amazonawsString,
@as("Names") names: serviceNames,
@as("Name") name: amazonawsString
}
type edgeList = array<edge>
type service = {
@as("ResponseTimeHistogram") responseTimeHistogram: histogram,
@as("DurationHistogram") durationHistogram: histogram,
@as("SummaryStatistics") summaryStatistics: serviceStatistics,
@as("Edges") edges: edgeList,
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp,
@as("State") state: amazonawsString,
@as("Type") type_: amazonawsString,
@as("AccountId") accountId: amazonawsString,
@as("Root") root: nullableBoolean,
@as("Names") names: serviceNames,
@as("Name") name: amazonawsString,
@as("ReferenceId") referenceId: nullableInteger
}
type responseTimeRootCauses = array<responseTimeRootCause>
type insightSummaryList = array<insightSummary>
type insightEventList = array<insightEvent>
type faultRootCauseServices = array<faultRootCauseService>
type errorRootCauseServices = array<errorRootCauseService>
type annotations = Js.Dict.t< valuesWithServiceIds>
type serviceList = array<service>
type faultRootCause = {
@as("ClientImpacting") clientImpacting: nullableBoolean,
@as("Services") services: faultRootCauseServices
}
type errorRootCause = {
@as("ClientImpacting") clientImpacting: nullableBoolean,
@as("Services") services: errorRootCauseServices
}
type faultRootCauses = array<faultRootCause>
type errorRootCauses = array<errorRootCause>
type traceSummary = {
@as("MatchedEventTime") matchedEventTime: amazonawsTimestamp,
@as("Revision") revision: amazonawsInteger,
@as("ResponseTimeRootCauses") responseTimeRootCauses: responseTimeRootCauses,
@as("ErrorRootCauses") errorRootCauses: errorRootCauses,
@as("FaultRootCauses") faultRootCauses: faultRootCauses,
@as("EntryPoint") entryPoint: serviceId,
@as("AvailabilityZones") availabilityZones: traceAvailabilityZones,
@as("InstanceIds") instanceIds: traceInstanceIds,
@as("ResourceARNs") resourceARNs: traceResourceARNs,
@as("ServiceIds") serviceIds: serviceIds,
@as("Users") users: traceUsers,
@as("Annotations") annotations: annotations,
@as("Http") http: http,
@as("IsPartial") isPartial: nullableBoolean,
@as("HasThrottle") hasThrottle: nullableBoolean,
@as("HasError") hasError: nullableBoolean,
@as("HasFault") hasFault: nullableBoolean,
@as("ResponseTime") responseTime: nullableDouble,
@as("Duration") duration: nullableDouble,
@as("Id") id: traceId
}
type traceSummaryList = array<traceSummary>
type clientType;
@module("@aws-sdk/client-xray") @new external createClient: unit => clientType = "XRayClient";
module DeleteGroup = {
  type t;
  type request = {
@as("GroupARN") groupARN: groupARN,
@as("GroupName") groupName: groupName
}
  type response = unit
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "DeleteGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutEncryptionConfig = {
  type t;
  type request = {
@as("Type") type_: option<encryptionType>,
@as("KeyId") keyId: encryptionKeyId
}
  type response = {
@as("EncryptionConfig") encryptionConfig: encryptionConfig
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "PutEncryptionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEncryptionConfig = {
  type t;
  type request = unit
  type response = {
@as("EncryptionConfig") encryptionConfig: encryptionConfig
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetEncryptionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGroup = {
  type t;
  type request = {
@as("InsightsConfiguration") insightsConfiguration: insightsConfiguration,
@as("FilterExpression") filterExpression: filterExpression,
@as("GroupARN") groupARN: groupARN,
@as("GroupName") groupName: groupName
}
  type response = {
@as("Group") group: group
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "UpdateGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutTraceSegments = {
  type t;
  type request = {
@as("TraceSegmentDocuments") traceSegmentDocuments: option<traceSegmentDocumentList>
}
  type response = {
@as("UnprocessedTraceSegments") unprocessedTraceSegments: unprocessedTraceSegmentList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "PutTraceSegmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSamplingTargets = {
  type t;
  type request = {
@as("SamplingStatisticsDocuments") samplingStatisticsDocuments: option<samplingStatisticsDocumentList>
}
  type response = {
@as("UnprocessedStatistics") unprocessedStatistics: unprocessedStatisticsList,
@as("LastRuleModification") lastRuleModification: amazonawsTimestamp,
@as("SamplingTargetDocuments") samplingTargetDocuments: samplingTargetDocumentList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetSamplingTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSamplingStatisticSummaries = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("SamplingStatisticSummaries") samplingStatisticSummaries: samplingStatisticSummaryList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetSamplingStatisticSummariesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroup = {
  type t;
  type request = {
@as("GroupARN") groupARN: groupARN,
@as("GroupName") groupName: groupName
}
  type response = {
@as("Group") group: group
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("InsightsConfiguration") insightsConfiguration: insightsConfiguration,
@as("FilterExpression") filterExpression: filterExpression,
@as("GroupName") groupName: option<groupName>
}
  type response = {
@as("Group") group: group
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "CreateGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSamplingRule = {
  type t;
  type request = {
@as("SamplingRuleUpdate") samplingRuleUpdate: option<samplingRuleUpdate>
}
  type response = {
@as("SamplingRuleRecord") samplingRuleRecord: samplingRuleRecord
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "UpdateSamplingRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutTelemetryRecords = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: resourceARN,
@as("Hostname") hostname: hostname,
@as("EC2InstanceId") eC2InstanceId: eC2InstanceId,
@as("TelemetryRecords") telemetryRecords: option<telemetryRecordList>
}
  type response = unit
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "PutTelemetryRecordsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: getGroupsNextToken
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Groups") groups: groupSummaryList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSamplingRule = {
  type t;
  type request = {
@as("RuleARN") ruleARN: amazonawsString,
@as("RuleName") ruleName: amazonawsString
}
  type response = {
@as("SamplingRuleRecord") samplingRuleRecord: samplingRuleRecord
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "DeleteSamplingRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSamplingRule = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("SamplingRule") samplingRule: option<samplingRule>
}
  type response = {
@as("SamplingRuleRecord") samplingRuleRecord: samplingRuleRecord
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "CreateSamplingRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTimeSeriesServiceStatistics = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("ForecastStatistics") forecastStatistics: nullableBoolean,
@as("Period") period: nullableInteger,
@as("EntitySelectorExpression") entitySelectorExpression: entitySelectorExpression,
@as("GroupARN") groupARN: groupARN,
@as("GroupName") groupName: groupName,
@as("EndTime") endTime: option<amazonawsTimestamp>,
@as("StartTime") startTime: option<amazonawsTimestamp>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ContainsOldGroupVersions") containsOldGroupVersions: amazonawsBoolean,
@as("TimeSeriesServiceStatistics") timeSeriesServiceStatistics: timeSeriesServiceStatisticsList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetTimeSeriesServiceStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSamplingRules = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("SamplingRuleRecords") samplingRuleRecords: samplingRuleRecordList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetSamplingRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInsightImpactGraph = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("EndTime") endTime: option<amazonawsTimestamp>,
@as("StartTime") startTime: option<amazonawsTimestamp>,
@as("InsightId") insightId: option<insightId>
}
  type response = {
@as("NextToken") nextToken: token,
@as("Services") services: insightImpactGraphServiceList,
@as("ServiceGraphEndTime") serviceGraphEndTime: amazonawsTimestamp,
@as("ServiceGraphStartTime") serviceGraphStartTime: amazonawsTimestamp,
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp,
@as("InsightId") insightId: insightId
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetInsightImpactGraphCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetTraces = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("TraceIds") traceIds: option<traceIdList>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("UnprocessedTraceIds") unprocessedTraceIds: unprocessedTraceIdList,
@as("Traces") traces: traceList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "BatchGetTracesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInsight = {
  type t;
  type request = {
@as("InsightId") insightId: option<insightId>
}
  type response = {
@as("Insight") insight: insight
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetInsightCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInsightSummaries = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: getInsightSummariesMaxResults,
@as("EndTime") endTime: option<amazonawsTimestamp>,
@as("StartTime") startTime: option<amazonawsTimestamp>,
@as("GroupName") groupName: groupName,
@as("GroupARN") groupARN: groupARN,
@as("States") states: insightStateList
}
  type response = {
@as("NextToken") nextToken: token,
@as("InsightSummaries") insightSummaries: insightSummaryList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetInsightSummariesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInsightEvents = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: getInsightEventsMaxResults,
@as("InsightId") insightId: option<insightId>
}
  type response = {
@as("NextToken") nextToken: token,
@as("InsightEvents") insightEvents: insightEventList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetInsightEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTraceGraph = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("TraceIds") traceIds: option<traceIdList>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Services") services: serviceList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetTraceGraphCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServiceGraph = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("GroupARN") groupARN: groupARN,
@as("GroupName") groupName: groupName,
@as("EndTime") endTime: option<amazonawsTimestamp>,
@as("StartTime") startTime: option<amazonawsTimestamp>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ContainsOldGroupVersions") containsOldGroupVersions: amazonawsBoolean,
@as("Services") services: serviceList,
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetServiceGraphCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTraceSummaries = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("FilterExpression") filterExpression: filterExpression,
@as("SamplingStrategy") samplingStrategy: samplingStrategy,
@as("Sampling") sampling: nullableBoolean,
@as("TimeRangeType") timeRangeType: timeRangeType,
@as("EndTime") endTime: option<amazonawsTimestamp>,
@as("StartTime") startTime: option<amazonawsTimestamp>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TracesProcessedCount") tracesProcessedCount: nullableLong,
@as("ApproximateTime") approximateTime: amazonawsTimestamp,
@as("TraceSummaries") traceSummaries: traceSummaryList
}
  @module("@aws-sdk/client-xray") @new external new_: (Js.Promise.t<request>) => t = "GetTraceSummariesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
