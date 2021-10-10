type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-xray") @new external createClient: unit => awsServiceClient = "XRayClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type version = int
type urlpath = string
type traceSegmentDocument = string
type traceId = string
type token = string
type timestamp_ = Js.Date.t
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
@ocaml.doc("<p>Information about a segment that failed processing.</p>")
type unprocessedTraceSegment = {
  @ocaml.doc("<p>The error message.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>The error that caused processing to fail.</p>") @as("ErrorCode")
  errorCode: option<string_>,
  @ocaml.doc("<p>The segment's ID.</p>") @as("Id") id: option<string_>,
}
type unprocessedTraceIdList = array<traceId>
@ocaml.doc("<p>Sampling statistics from a call to <a>GetSamplingTargets</a> that X-Ray
      could not process.</p>")
type unprocessedStatistics = {
  @ocaml.doc("<p>The error message.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<string_>,
  @ocaml.doc("<p>The name of the sampling rule.</p>") @as("RuleName") ruleName: option<string_>,
}
type traceSegmentDocumentList = array<traceSegmentDocument>
type traceIdList = array<traceId>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A map that contains tag keys and tag values to attach to an AWS X-Ray group or sampling
      rule. For more information about ways to use tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS resources</a>
      in the <i>AWS General Reference</i>.</p>
         <p>The following restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Maximum number of user-applied tags per resource: 50</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for AWS use. You
          cannot edit or delete system tags.</p>
            </li>
         </ul>")
type tag = {
  @ocaml.doc("<p>An optional tag value, such as <code>Production</code> or <code>test-only</code>. The value can be 
      a maximum of 255 characters, and contain only Unicode letters, numbers, or separators, or the following 
      special characters: <code>+ - = . _ : /</code>
         </p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>A tag key, such as <code>Stage</code> or <code>Name</code>. A tag key cannot be empty. The 
      key can be a maximum of 128 characters, and can contain only Unicode letters, numbers, or separators, 
      or the following special characters: <code>+ - = . _ : /</code>
         </p>")
  @as("Key")
  key: tagKey,
}
type serviceNames = array<string_>
@ocaml.doc("<p>A segment from a trace that has been ingested by the X-Ray service. The segment can be
      compiled from documents uploaded with <a>PutTraceSegments</a>, or an
        <code>inferred</code> segment for a downstream service, generated from a subsegment sent by
      the service that called it.</p>
         <p>For the full segment document schema, see <a href=\"https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html\">AWS X-Ray Segment
        Documents</a> in the <i>AWS X-Ray Developer Guide</i>.</p>")
type segment = {
  @ocaml.doc("<p>The segment document.</p>") @as("Document") document: option<segmentDocument>,
  @ocaml.doc("<p>The segment's ID.</p>") @as("Id") id: option<segmentId>,
}
@ocaml.doc("<p>Temporary changes to a sampling rule configuration. To meet the global sampling target for a rule, X-Ray
      calculates a new reservoir for each service based on the recent sampling results of all services that called <a>GetSamplingTargets</a>.</p>")
type samplingTargetDocument = {
  @ocaml.doc("<p>The number of seconds for the service to wait before getting sampling targets
      again.</p>")
  @as("Interval")
  interval: option<nullableInteger>,
  @ocaml.doc("<p>When the reservoir quota expires.</p>") @as("ReservoirQuotaTTL")
  reservoirQuotaTTL: option<timestamp_>,
  @ocaml.doc("<p>The number of requests per second that X-Ray allocated for this service.</p>")
  @as("ReservoirQuota")
  reservoirQuota: option<nullableInteger>,
  @ocaml.doc("<p>The percentage of matching requests to instrument, after the reservoir is
      exhausted.</p>")
  @as("FixedRate")
  fixedRate: option<double>,
  @ocaml.doc("<p>The name of the sampling rule.</p>") @as("RuleName") ruleName: option<string_>,
}
@ocaml.doc("<p>The name and value of a sampling rule to apply to a trace summary.</p>")
type samplingStrategy = {
  @ocaml.doc("<p>The value of a sampling rule.</p>") @as("Value") value: option<nullableDouble>,
  @ocaml.doc("<p>The name of a sampling rule.</p>") @as("Name") name: option<samplingStrategyName>,
}
@ocaml.doc("<p>Request sampling results for a single rule from a service. Results are for the last 10
      seconds unless the service has been assigned a longer reporting interval after a previous call
      to <a>GetSamplingTargets</a>.</p>")
type samplingStatisticsDocument = {
  @ocaml.doc("<p>The number of requests recorded with borrowed reservoir quota.</p>")
  @as("BorrowCount")
  borrowCount: option<borrowCount>,
  @ocaml.doc("<p>The number of requests recorded.</p>") @as("SampledCount")
  sampledCount: sampledCount,
  @ocaml.doc("<p>The number of requests that matched the rule.</p>") @as("RequestCount")
  requestCount: requestCount,
  @ocaml.doc("<p>The current time.</p>") @as("Timestamp") timestamp_: timestamp_,
  @ocaml.doc("<p>A unique identifier for the service in hexadecimal.</p>") @as("ClientID")
  clientID: clientID,
  @ocaml.doc("<p>The name of the sampling rule.</p>") @as("RuleName") ruleName: ruleName,
}
@ocaml.doc(
  "<p>Aggregated request sampling data for a sampling rule across all services for a 10-second window.</p>"
)
type samplingStatisticSummary = {
  @ocaml.doc("<p>The number of requests recorded.</p>") @as("SampledCount")
  sampledCount: option<integer_>,
  @ocaml.doc("<p>The number of requests recorded with borrowed reservoir quota.</p>")
  @as("BorrowCount")
  borrowCount: option<integer_>,
  @ocaml.doc("<p>The number of requests that matched the rule.</p>") @as("RequestCount")
  requestCount: option<integer_>,
  @ocaml.doc("<p>The start time of the reporting window.</p>") @as("Timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>The name of the sampling rule.</p>") @as("RuleName") ruleName: option<string_>,
}
@ocaml.doc("<p>The exception associated with a root cause.</p>")
type rootCauseException = {
  @ocaml.doc("<p>The message of the exception.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>The name of the exception.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>A collection of segments and corresponding subsegments associated to a response time
      warning.</p>")
type responseTimeRootCauseEntity = {
  @ocaml.doc("<p>A flag that denotes a remote subsegment.</p>") @as("Remote")
  remote: option<nullableBoolean>,
  @ocaml.doc("<p>The type and messages of the exceptions.</p>") @as("Coverage")
  coverage: option<nullableDouble>,
  @ocaml.doc("<p>The name of the entity.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>A list of resources ARNs corresponding to the segments in a trace.</p>")
type resourceARNDetail = {
  @ocaml.doc("<p>The ARN of a corresponding resource.</p>") @as("ARN") arn: option<string_>,
}
@ocaml.doc("<p>Statistics that describe how the incident has impacted a service.</p>")
type requestImpactStatistics = {
  @ocaml.doc("<p>The total number of requests to the service.</p>") @as("TotalCount")
  totalCount: option<nullableLong>,
  @ocaml.doc("<p>The number of successful requests.</p>") @as("OkCount")
  okCount: option<nullableLong>,
  @ocaml.doc("<p>The number of requests that have resulted in a fault,</p>") @as("FaultCount")
  faultCount: option<nullableLong>,
}
@ocaml.doc("<p>A list of EC2 instance IDs corresponding to the segments in a trace. </p>")
type instanceIdDetail = {
  @ocaml.doc("<p>The ID of a corresponding EC2 instance.</p>") @as("Id") id: option<string_>,
}
@ocaml.doc("<p>The structure containing configurations related to insights.</p>")
type insightsConfiguration = {
  @ocaml.doc("<p>Set the NotificationsEnabled value to true to enable insights notifications. Notifications can only be
            enabled on a group with InsightsEnabled set to true.</p>")
  @as("NotificationsEnabled")
  notificationsEnabled: option<nullableBoolean>,
  @ocaml.doc("<p>Set the InsightsEnabled value to true to enable insights or false to disable
            insights.</p>")
  @as("InsightsEnabled")
  insightsEnabled: option<nullableBoolean>,
}
type insightStateList = array<insightState>
@ocaml.doc("<p>The connection between two service in an insight impact graph.</p>")
type insightImpactGraphEdge = {
  @ocaml.doc("<p>Identifier of the edge. Unique within a service map.</p>") @as("ReferenceId")
  referenceId: option<nullableInteger>,
}
type insightCategoryList = array<insightCategory>
@ocaml.doc("<p>Information about an HTTP request.</p>")
type http = {
  @ocaml.doc("<p>The IP address of the requestor.</p>") @as("ClientIp") clientIp: option<string_>,
  @ocaml.doc("<p>The request's user agent string.</p>") @as("UserAgent") userAgent: option<string_>,
  @ocaml.doc("<p>The request method.</p>") @as("HttpMethod") httpMethod: option<string_>,
  @ocaml.doc("<p>The response status.</p>") @as("HttpStatus") httpStatus: option<nullableInteger>,
  @ocaml.doc("<p>The request URL.</p>") @as("HttpURL") httpURL: option<string_>,
}
@ocaml.doc("<p>An entry in a histogram for a statistic. A histogram maps the range of observed values
      on the X axis, and the prevalence of each value on the Y axis.</p>")
type histogramEntry = {
  @ocaml.doc("<p>The prevalence of the entry.</p>") @as("Count") count: option<integer_>,
  @ocaml.doc("<p>The value of the entry.</p>") @as("Value") value: option<double>,
}
@ocaml.doc("<p>The predicted high and low fault count. This is used to determine if a service has
         become anomalous and if an insight should be created.</p>")
type forecastStatistics = {
  @ocaml.doc("<p>The lower limit of fault counts for a service.</p>") @as("FaultCountLow")
  faultCountLow: option<nullableLong>,
  @ocaml.doc("<p>The upper limit of fault counts for a service.</p>") @as("FaultCountHigh")
  faultCountHigh: option<nullableLong>,
}
@ocaml.doc("<p>Information about requests that failed with a 5xx Server Error status code.</p>")
type faultStatistics = {
  @ocaml.doc("<p>The total number of requests that failed with a 5xx Server Error status code.</p>")
  @as("TotalCount")
  totalCount: option<nullableLong>,
  @ocaml.doc("<p>The number of requests that failed with untracked 5xx Server Error status
      codes.</p>")
  @as("OtherCount")
  otherCount: option<nullableLong>,
}
@ocaml.doc("<p>Information about requests that failed with a 4xx Client Error status code.</p>")
type errorStatistics = {
  @ocaml.doc("<p>The total number of requests that failed with a 4xx Client Error status code.</p>")
  @as("TotalCount")
  totalCount: option<nullableLong>,
  @ocaml.doc("<p>The number of requests that failed with untracked 4xx Client Error status
      codes.</p>")
  @as("OtherCount")
  otherCount: option<nullableLong>,
  @ocaml.doc("<p>The number of requests that failed with a 419 throttling status code.</p>")
  @as("ThrottleCount")
  throttleCount: option<nullableLong>,
}
@ocaml.doc("<p>A configuration document that specifies encryption configuration settings.</p>")
type encryptionConfig = {
  @ocaml.doc("<p>The type of encryption. Set to <code>KMS</code> for encryption with CMKs. Set to <code>NONE</code> for
      default encryption.</p>")
  @as("Type")
  type_: option<encryptionType>,
  @ocaml.doc(
    "<p>The encryption status. While the status is <code>UPDATING</code>, X-Ray may encrypt data with a combination of the new and old settings.</p>"
  )
  @as("Status")
  status: option<encryptionStatus>,
  @ocaml.doc("<p>The ID of the customer master key (CMK) used for encryption, if applicable.</p>")
  @as("KeyId")
  keyId: option<string_>,
}
@ocaml.doc("<p></p>")
type backendConnectionErrors = {
  @ocaml.doc("<p></p>") @as("OtherCount") otherCount: option<nullableInteger>,
  @ocaml.doc("<p></p>") @as("UnknownHostCount") unknownHostCount: option<nullableInteger>,
  @ocaml.doc("<p></p>") @as("HTTPCode5XXCount") httpcode5XXCount: option<nullableInteger>,
  @ocaml.doc("<p></p>") @as("HTTPCode4XXCount") httpcode4XXCount: option<nullableInteger>,
  @ocaml.doc("<p></p>") @as("ConnectionRefusedCount")
  connectionRefusedCount: option<nullableInteger>,
  @ocaml.doc("<p></p>") @as("TimeoutCount") timeoutCount: option<nullableInteger>,
}
@ocaml.doc("<p>A list of Availability Zones corresponding to the segments in a trace.</p>")
type availabilityZoneDetail = {
  @ocaml.doc("<p>The name of a corresponding Availability Zone.</p>") @as("Name")
  name: option<string_>,
}
type attributeMap = Js.Dict.t<attributeValue>
@ocaml.doc(
  "<p>Value of a segment annotation. Has one of three value types: Number, Boolean, or String.</p>"
)
type annotationValue = {
  @ocaml.doc("<p>Value for a String annotation.</p>") @as("StringValue")
  stringValue: option<string_>,
  @ocaml.doc("<p>Value for a Boolean annotation.</p>") @as("BooleanValue")
  booleanValue: option<nullableBoolean>,
  @ocaml.doc("<p>Value for a Number annotation.</p>") @as("NumberValue")
  numberValue: option<nullableDouble>,
}
module AnnotationValue = {
  type t = StringValue(string_) | BooleanValue(nullableBoolean) | NumberValue(nullableDouble)
  exception AnnotationValueUnspecified
  let classify = value =>
    switch value {
    | {stringValue: Some(x)} => StringValue(x)
    | {booleanValue: Some(x)} => BooleanValue(x)
    | {numberValue: Some(x)} => NumberValue(x)
    | _ => raise(AnnotationValueUnspecified)
    }

  let make = value =>
    switch value {
    | StringValue(x) => {stringValue: Some(x), booleanValue: None, numberValue: None}
    | BooleanValue(x) => {booleanValue: Some(x), stringValue: None, numberValue: None}
    | NumberValue(x) => {numberValue: Some(x), stringValue: None, booleanValue: None}
    }
}
type aliasNames = array<string_>
type unprocessedTraceSegmentList = array<unprocessedTraceSegment>
type unprocessedStatisticsList = array<unprocessedStatistics>
type traceResourceARNs = array<resourceARNDetail>
type traceInstanceIds = array<instanceIdDetail>
type traceAvailabilityZones = array<availabilityZoneDetail>
@ocaml.doc("<p></p>")
type telemetryRecord = {
  @ocaml.doc("<p></p>") @as("BackendConnectionErrors")
  backendConnectionErrors: option<backendConnectionErrors>,
  @ocaml.doc("<p></p>") @as("SegmentsRejectedCount") segmentsRejectedCount: option<nullableInteger>,
  @ocaml.doc("<p></p>") @as("SegmentsSpilloverCount")
  segmentsSpilloverCount: option<nullableInteger>,
  @ocaml.doc("<p></p>") @as("SegmentsSentCount") segmentsSentCount: option<nullableInteger>,
  @ocaml.doc("<p></p>") @as("SegmentsReceivedCount") segmentsReceivedCount: option<nullableInteger>,
  @ocaml.doc("<p></p>") @as("Timestamp") timestamp_: timestamp_,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Response statistics for a service.</p>")
type serviceStatistics = {
  @ocaml.doc("<p>The aggregate response time of completed requests.</p>") @as("TotalResponseTime")
  totalResponseTime: option<nullableDouble>,
  @ocaml.doc("<p>The total number of completed requests.</p>") @as("TotalCount")
  totalCount: option<nullableLong>,
  @ocaml.doc("<p>Information about requests that failed with a 5xx Server Error status code.</p>")
  @as("FaultStatistics")
  faultStatistics: option<faultStatistics>,
  @ocaml.doc("<p>Information about requests that failed with a 4xx Client Error status code.</p>")
  @as("ErrorStatistics")
  errorStatistics: option<errorStatistics>,
  @ocaml.doc("<p>The number of requests that completed with a 2xx Success status code.</p>")
  @as("OkCount")
  okCount: option<nullableLong>,
}
@ocaml.doc("<p></p>")
type serviceId = {
  @ocaml.doc("<p></p>") @as("Type") type_: option<string_>,
  @ocaml.doc("<p></p>") @as("AccountId") accountId: option<string_>,
  @ocaml.doc("<p></p>") @as("Names") names: option<serviceNames>,
  @ocaml.doc("<p></p>") @as("Name") name: option<string_>,
}
type segmentList = array<segment>
type samplingTargetDocumentList = array<samplingTargetDocument>
type samplingStatisticsDocumentList = array<samplingStatisticsDocument>
type samplingStatisticSummaryList = array<samplingStatisticSummary>
@ocaml.doc("<p>A document specifying changes to a sampling rule's configuration.</p>")
type samplingRuleUpdate = {
  @ocaml.doc("<p>Matches attributes derived from the request.</p>") @as("Attributes")
  attributes: option<attributeMap>,
  @ocaml.doc("<p>Matches the path from a request URL.</p>") @as("URLPath") urlpath: option<urlpath>,
  @ocaml.doc("<p>Matches the HTTP method of a request.</p>") @as("HTTPMethod")
  httpmethod: option<httpmethod>,
  @ocaml.doc(
    "<p>Matches the <code>origin</code> that the service uses to identify its type in segments.</p>"
  )
  @as("ServiceType")
  serviceType: option<serviceType>,
  @ocaml.doc(
    "<p>Matches the <code>name</code> that the service uses to identify itself in segments.</p>"
  )
  @as("ServiceName")
  serviceName: option<serviceName>,
  @ocaml.doc("<p>Matches the hostname from a request URL.</p>") @as("Host") host: option<host>,
  @ocaml.doc("<p>A fixed number of matching requests to instrument per second, prior to applying the
      fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.</p>")
  @as("ReservoirSize")
  reservoirSize: option<nullableInteger>,
  @ocaml.doc("<p>The percentage of matching requests to instrument, after the reservoir is
      exhausted.</p>")
  @as("FixedRate")
  fixedRate: option<nullableDouble>,
  @ocaml.doc("<p>The priority of the sampling rule.</p>") @as("Priority")
  priority: option<nullableInteger>,
  @ocaml.doc("<p>Matches the ARN of the AWS resource on which the service runs.</p>")
  @as("ResourceARN")
  resourceARN: option<resourceARN>,
  @ocaml.doc(
    "<p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
  )
  @as("RuleARN")
  ruleARN: option<string_>,
  @ocaml.doc(
    "<p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
  )
  @as("RuleName")
  ruleName: option<ruleName>,
}
@ocaml.doc("<p>A sampling rule that services use to decide whether to instrument a request. Rule
      fields can match properties of the service, or properties of a request. The service can ignore
      rules that don't match its properties.</p>")
type samplingRule = {
  @ocaml.doc("<p>Matches attributes derived from the request.</p>") @as("Attributes")
  attributes: option<attributeMap>,
  @ocaml.doc("<p>The version of the sampling rule format (<code>1</code>).</p>") @as("Version")
  version: version,
  @ocaml.doc("<p>Matches the path from a request URL.</p>") @as("URLPath") urlpath: urlpath,
  @ocaml.doc("<p>Matches the HTTP method of a request.</p>") @as("HTTPMethod")
  httpmethod: httpmethod,
  @ocaml.doc("<p>Matches the hostname from a request URL.</p>") @as("Host") host: host,
  @ocaml.doc(
    "<p>Matches the <code>origin</code> that the service uses to identify its type in segments.</p>"
  )
  @as("ServiceType")
  serviceType: serviceType,
  @ocaml.doc(
    "<p>Matches the <code>name</code> that the service uses to identify itself in segments.</p>"
  )
  @as("ServiceName")
  serviceName: serviceName,
  @ocaml.doc("<p>A fixed number of matching requests to instrument per second, prior to applying the
      fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.</p>")
  @as("ReservoirSize")
  reservoirSize: reservoirSize,
  @ocaml.doc("<p>The percentage of matching requests to instrument, after the reservoir is
      exhausted.</p>")
  @as("FixedRate")
  fixedRate: fixedRate,
  @ocaml.doc("<p>The priority of the sampling rule.</p>") @as("Priority") priority: priority,
  @ocaml.doc("<p>Matches the ARN of the AWS resource on which the service runs.</p>")
  @as("ResourceARN")
  resourceARN: resourceARN,
  @ocaml.doc(
    "<p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
  )
  @as("RuleARN")
  ruleARN: option<string_>,
  @ocaml.doc(
    "<p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
  )
  @as("RuleName")
  ruleName: option<ruleName>,
}
type rootCauseExceptions = array<rootCauseException>
type responseTimeRootCauseEntityPath = array<responseTimeRootCauseEntity>
type insightImpactGraphEdgeList = array<insightImpactGraphEdge>
type histogram = array<histogramEntry>
@ocaml.doc("<p>Details for a group without metadata.</p>")
type groupSummary = {
  @ocaml.doc("<p>The structure containing configurations related to insights.</p>
        <ul>
            <li>
                <p>The InsightsEnabled boolean can be set to true to enable insights for the
                    group or false to disable insights for the group.</p>
            </li>
            <li>
                <p>The NotificationsEnabled boolean can be set to true to enable insights notifications.
                    Notifications can only be enabled on a group with InsightsEnabled set to true.</p>
            </li>
         </ul>")
  @as("InsightsConfiguration")
  insightsConfiguration: option<insightsConfiguration>,
  @ocaml.doc("<p>The filter expression defining the parameters to include traces.</p>")
  @as("FilterExpression")
  filterExpression: option<string_>,
  @ocaml.doc("<p>The ARN of the group generated based on the GroupName.</p>") @as("GroupARN")
  groupARN: option<string_>,
  @ocaml.doc("<p>The unique case-sensitive name of the group.</p>") @as("GroupName")
  groupName: option<string_>,
}
@ocaml.doc("<p>Details and metadata for a group.</p>")
type group = {
  @ocaml.doc("<p>The structure containing configurations related to insights.</p>
        <ul>
            <li>
                <p>The InsightsEnabled boolean can be set to true to enable insights for the
                    group or false to disable insights for the group.</p>
            </li>
            <li>
                <p>The NotifcationsEnabled  boolean can be set to true to enable insights
                    notifications through Amazon EventBridge for the group.</p>
            </li>
         </ul>")
  @as("InsightsConfiguration")
  insightsConfiguration: option<insightsConfiguration>,
  @ocaml.doc("<p>The filter expression defining the parameters to include traces.</p>")
  @as("FilterExpression")
  filterExpression: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the group generated based on the GroupName.</p>")
  @as("GroupARN")
  groupARN: option<string_>,
  @ocaml.doc("<p>The unique case-sensitive name of the group.</p>") @as("GroupName")
  groupName: option<string_>,
}
@ocaml.doc("<p>Response statistics for an edge.</p>")
type edgeStatistics = {
  @ocaml.doc("<p>The aggregate response time of completed requests.</p>") @as("TotalResponseTime")
  totalResponseTime: option<nullableDouble>,
  @ocaml.doc("<p>The total number of completed requests.</p>") @as("TotalCount")
  totalCount: option<nullableLong>,
  @ocaml.doc("<p>Information about requests that failed with a 5xx Server Error status code.</p>")
  @as("FaultStatistics")
  faultStatistics: option<faultStatistics>,
  @ocaml.doc("<p>Information about requests that failed with a 4xx Client Error status code.</p>")
  @as("ErrorStatistics")
  errorStatistics: option<errorStatistics>,
  @ocaml.doc("<p>The number of requests that completed with a 2xx Success status code.</p>")
  @as("OkCount")
  okCount: option<nullableLong>,
}
@ocaml.doc("<p>An alias for an edge.</p>")
type alias = {
  @ocaml.doc("<p>The type of the alias.</p>") @as("Type") type_: option<string_>,
  @ocaml.doc("<p>A list of names for the alias, including the canonical name.</p>") @as("Names")
  names: option<aliasNames>,
  @ocaml.doc("<p>The canonical name of the alias.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>A collection of segment documents with matching trace IDs.</p>")
type trace = {
  @ocaml.doc("<p>Segment documents for the segments and subsegments that comprise the trace.</p>")
  @as("Segments")
  segments: option<segmentList>,
  @ocaml.doc("<p>LimitExceeded is set to true when the trace has exceeded one of the defined quotas. For
      more information about quotas, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/xray.html\">AWS X-Ray endpoints and quotas</a>.</p>")
  @as("LimitExceeded")
  limitExceeded: option<nullableBoolean>,
  @ocaml.doc("<p>The length of time in seconds between the start time of the root segment and the end
      time of the last segment that completed.</p>")
  @as("Duration")
  duration: option<nullableDouble>,
  @ocaml.doc("<p>The unique identifier for the request that generated the trace's segments and
      subsegments.</p>")
  @as("Id")
  id: option<traceId>,
}
@ocaml.doc("<p>A list of TimeSeriesStatistic structures.</p>")
type timeSeriesServiceStatistics = {
  @ocaml.doc("<p>The response time histogram for the selected entities.</p>")
  @as("ResponseTimeHistogram")
  responseTimeHistogram: option<histogram>,
  @ocaml.doc("<p>The forecasted high and low fault count values.</p>")
  @as("ServiceForecastStatistics")
  serviceForecastStatistics: option<forecastStatistics>,
  @as("ServiceSummaryStatistics") serviceSummaryStatistics: option<serviceStatistics>,
  @as("EdgeSummaryStatistics") edgeSummaryStatistics: option<edgeStatistics>,
  @ocaml.doc("<p>Timestamp of the window for which statistics are aggregated.</p>") @as("Timestamp")
  timestamp_: option<timestamp_>,
}
type telemetryRecordList = array<telemetryRecord>
type serviceIds = array<serviceId>
@ocaml.doc("<p>A <a>SamplingRule</a> and its metadata.</p>")
type samplingRuleRecord = {
  @ocaml.doc("<p>When the rule was last modified.</p>") @as("ModifiedAt")
  modifiedAt: option<timestamp_>,
  @ocaml.doc("<p>When the rule was created.</p>") @as("CreatedAt") createdAt: option<timestamp_>,
  @ocaml.doc("<p>The sampling rule.</p>") @as("SamplingRule") samplingRule: option<samplingRule>,
}
@ocaml.doc("<p>A collection of fields identifying the service in a response time warning.</p>")
type responseTimeRootCauseService = {
  @ocaml.doc("<p>A Boolean value indicating if the service is inferred from the trace.</p>")
  @as("Inferred")
  inferred: option<nullableBoolean>,
  @ocaml.doc("<p>The path of root cause entities found on the service. </p>") @as("EntityPath")
  entityPath: option<responseTimeRootCauseEntityPath>,
  @ocaml.doc("<p>The account ID associated to the service.</p>") @as("AccountId")
  accountId: option<string_>,
  @ocaml.doc("<p>The type associated to the service.</p>") @as("Type") type_: option<string_>,
  @ocaml.doc("<p>A collection of associated service names.</p>") @as("Names")
  names: option<serviceNames>,
  @ocaml.doc("<p>The service name.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Information about an application that processed requests, users that made requests, or downstream services,
         resources, and applications that an application used. </p>")
type insightImpactGraphService = {
  @ocaml.doc("<p>Connections to downstream services.</p>") @as("Edges")
  edges: option<insightImpactGraphEdgeList>,
  @ocaml.doc("<p>Identifier of the AWS account in which the service runs.</p>") @as("AccountId")
  accountId: option<string_>,
  @ocaml.doc("<p>A list of names for the service, including the canonical name.</p>") @as("Names")
  names: option<serviceNames>,
  @ocaml.doc("<p>The canonical name of the service.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>Identifier for the service. Unique within the service map.</p>
         <ul>
            <li>
               <p>AWS Resource - The type of an AWS resource. For example, AWS::EC2::Instance for an application running
               on Amazon EC2 or AWS::DynamoDB::Table for an Amazon DynamoDB table that the application used. </p>
            </li>
            <li>
               <p>AWS Service - The type of an AWS service. For example, AWS::DynamoDB for downstream calls to Amazon
               DynamoDB that didn't target a specific table. </p>
            </li>
            <li>
               <p>AWS Service - The type of an AWS service. For example, AWS::DynamoDB for downstream calls to Amazon
               DynamoDB that didn't target a specific table. </p>
            </li>
            <li>
               <p>remote - A downstream service of indeterminate type.</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<string_>,
  @ocaml.doc("<p>Identifier for the service. Unique within the service map.</p>") @as("ReferenceId")
  referenceId: option<nullableInteger>,
}
type groupSummaryList = array<groupSummary>
@ocaml.doc("<p>A collection of segments and corresponding subsegments associated to a trace summary
      fault error.</p>")
type faultRootCauseEntity = {
  @ocaml.doc("<p>A flag that denotes a remote subsegment.</p>") @as("Remote")
  remote: option<nullableBoolean>,
  @ocaml.doc("<p>The types and messages of the exceptions.</p>") @as("Exceptions")
  exceptions: option<rootCauseExceptions>,
  @ocaml.doc("<p>The name of the entity.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>A collection of segments and corresponding subsegments associated to a trace summary
      error.</p>")
type errorRootCauseEntity = {
  @ocaml.doc("<p>A flag that denotes a remote subsegment.</p>") @as("Remote")
  remote: option<nullableBoolean>,
  @ocaml.doc("<p>The types and messages of the exceptions.</p>") @as("Exceptions")
  exceptions: option<rootCauseExceptions>,
  @ocaml.doc("<p>The name of the entity.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>The service within the service graph that has anomalously high fault rates. </p>")
type anomalousService = {@as("ServiceId") serviceId: option<serviceId>}
type aliasList = array<alias>
@ocaml.doc("<p>Information about a segment annotation.</p>")
type valueWithServiceIds = {
  @ocaml.doc("<p>Services to which the annotation applies.</p>") @as("ServiceIds")
  serviceIds: option<serviceIds>,
  @ocaml.doc("<p>Values of the annotation.</p>") @as("AnnotationValue")
  annotationValue: option<annotationValue>,
}
@ocaml.doc("<p>Information about a user recorded in segment documents.</p>")
type traceUser = {
  @ocaml.doc("<p>Services that the user's request hit.</p>") @as("ServiceIds")
  serviceIds: option<serviceIds>,
  @ocaml.doc("<p>The user's name.</p>") @as("UserName") userName: option<string_>,
}
type traceList = array<trace>
type timeSeriesServiceStatisticsList = array<timeSeriesServiceStatistics>
type samplingRuleRecordList = array<samplingRuleRecord>
type responseTimeRootCauseServices = array<responseTimeRootCauseService>
type insightImpactGraphServiceList = array<insightImpactGraphService>
type faultRootCauseEntityPath = array<faultRootCauseEntity>
type errorRootCauseEntityPath = array<errorRootCauseEntity>
@ocaml.doc("<p>Information about a connection between two services.</p>")
type edge = {
  @ocaml.doc("<p>Aliases for the edge.</p>") @as("Aliases") aliases: option<aliasList>,
  @ocaml.doc("<p>A histogram that maps the spread of client response times on an edge.</p>")
  @as("ResponseTimeHistogram")
  responseTimeHistogram: option<histogram>,
  @ocaml.doc("<p>Response statistics for segments on the edge.</p>") @as("SummaryStatistics")
  summaryStatistics: option<edgeStatistics>,
  @ocaml.doc("<p>The end time of the last segment on the edge.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The start time of the first segment on the edge.</p>") @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>Identifier of the edge. Unique within a service map.</p>") @as("ReferenceId")
  referenceId: option<nullableInteger>,
}
type anomalousServiceList = array<anomalousService>
type valuesWithServiceIds = array<valueWithServiceIds>
type traceUsers = array<traceUser>
@ocaml.doc("<p>The root cause information for a response time warning.</p>")
type responseTimeRootCause = {
  @ocaml.doc("<p>A flag that denotes that the root cause impacts the trace client.</p>")
  @as("ClientImpacting")
  clientImpacting: option<nullableBoolean>,
  @ocaml.doc("<p>A list of corresponding services. A service identifies a segment and contains a name,
      account ID, type, and inferred flag.</p>")
  @as("Services")
  services: option<responseTimeRootCauseServices>,
}
@ocaml.doc("<p>Information that describes an insight.</p>")
type insightSummary = {
  @ocaml.doc("<p>The time, in Unix seconds, that the insight was last updated.</p>")
  @as("LastUpdateTime")
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc("<p>The service within the insight that is most impacted by the incident.</p>")
  @as("TopAnomalousServices")
  topAnomalousServices: option<anomalousServiceList>,
  @ocaml.doc("<p>The impact statistics of the root cause service. This includes the number of requests to
         the client service and whether the requests were faults or okay. </p>")
  @as("RootCauseServiceRequestImpactStatistics")
  rootCauseServiceRequestImpactStatistics: option<requestImpactStatistics>,
  @ocaml.doc("<p>The impact statistics of the client side service. This includes the number of requests
         to the client service and whether the requests were faults or okay. </p>")
  @as("ClientRequestImpactStatistics")
  clientRequestImpactStatistics: option<requestImpactStatistics>,
  @ocaml.doc("<p>A brief description of the insight.</p>") @as("Summary")
  summary: option<insightSummaryText>,
  @ocaml.doc("<p>The time, in Unix seconds, at which the insight ended.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time, in Unix seconds, at which the insight began.</p>") @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The current state of the insight.</p>") @as("State") state: option<insightState>,
  @ocaml.doc("<p> Categories The categories that label and describe the type of insight.</p>")
  @as("Categories")
  categories: option<insightCategoryList>,
  @as("RootCauseServiceId") rootCauseServiceId: option<serviceId>,
  @ocaml.doc("<p>The name of the group  that the insight belongs to.</p>") @as("GroupName")
  groupName: option<groupName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the group that the insight belongs to.</p>")
  @as("GroupARN")
  groupARN: option<groupARN>,
  @ocaml.doc("<p>The insights unique identifier. </p>") @as("InsightId")
  insightId: option<insightId>,
}
@ocaml.doc("<p>X-Ray reevaluates insights periodically until they are resolved, and records each intermediate state in an
         event. You can review incident events in the Impact Timeline on the Inspect page in the X-Ray console.</p>")
type insightEvent = {
  @ocaml.doc("<p>The service during the event that is most impacted by the incident.</p>")
  @as("TopAnomalousServices")
  topAnomalousServices: option<anomalousServiceList>,
  @ocaml.doc("<p>The impact statistics of the root cause service. This includes the number of requests to the client service
         and whether the requests were faults or okay.</p>")
  @as("RootCauseServiceRequestImpactStatistics")
  rootCauseServiceRequestImpactStatistics: option<requestImpactStatistics>,
  @ocaml.doc("<p>The impact statistics of the client side service. This includes the number of requests to the client service
         and whether the requests were faults or okay.</p>")
  @as("ClientRequestImpactStatistics")
  clientRequestImpactStatistics: option<requestImpactStatistics>,
  @ocaml.doc("<p>The time, in Unix seconds, at which the event was recorded.</p>") @as("EventTime")
  eventTime: option<timestamp_>,
  @ocaml.doc("<p>A brief description of the event.</p>") @as("Summary")
  summary: option<eventSummaryText>,
}
@ocaml.doc("<p>When fault rates go outside of the expected range, X-Ray creates an insight. Insights
         tracks emergent issues within your applications.</p>")
type insight = {
  @ocaml.doc("<p>The service within the insight that is most impacted by the incident.</p>")
  @as("TopAnomalousServices")
  topAnomalousServices: option<anomalousServiceList>,
  @ocaml.doc("<p>The impact statistics of the root cause service. This includes the number of requests to the client service
         and whether the requests were faults or okay.</p>")
  @as("RootCauseServiceRequestImpactStatistics")
  rootCauseServiceRequestImpactStatistics: option<requestImpactStatistics>,
  @ocaml.doc("<p>The impact statistics of the client side service. This includes the number of requests to the client service
         and whether the requests were faults or okay.</p>")
  @as("ClientRequestImpactStatistics")
  clientRequestImpactStatistics: option<requestImpactStatistics>,
  @ocaml.doc("<p>A brief description of the insight.</p>") @as("Summary")
  summary: option<insightSummaryText>,
  @ocaml.doc("<p>The time, in Unix seconds, at which the insight ended.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time, in Unix seconds, at which the insight began.</p>") @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The current state of the insight.</p>") @as("State") state: option<insightState>,
  @ocaml.doc("<p>The categories that label and describe the type of insight.</p>") @as("Categories")
  categories: option<insightCategoryList>,
  @as("RootCauseServiceId") rootCauseServiceId: option<serviceId>,
  @ocaml.doc("<p>The name of the group  that the insight belongs to.</p>") @as("GroupName")
  groupName: option<groupName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the group that the insight belongs to.</p>")
  @as("GroupARN")
  groupARN: option<groupARN>,
  @ocaml.doc("<p>The insights unique identifier. </p>") @as("InsightId")
  insightId: option<insightId>,
}
@ocaml.doc("<p>A collection of fields identifying the services in a trace summary fault.</p>")
type faultRootCauseService = {
  @ocaml.doc("<p>A Boolean value indicating if the service is inferred from the trace.</p>")
  @as("Inferred")
  inferred: option<nullableBoolean>,
  @ocaml.doc("<p>The path of root cause entities found on the service. </p>") @as("EntityPath")
  entityPath: option<faultRootCauseEntityPath>,
  @ocaml.doc("<p>The account ID associated to the service.</p>") @as("AccountId")
  accountId: option<string_>,
  @ocaml.doc("<p>The type associated to the service.</p>") @as("Type") type_: option<string_>,
  @ocaml.doc("<p>A collection of associated service names.</p>") @as("Names")
  names: option<serviceNames>,
  @ocaml.doc("<p>The service name.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>A collection of fields identifying the services in a trace summary error.</p>")
type errorRootCauseService = {
  @ocaml.doc("<p>A Boolean value indicating if the service is inferred from the trace.</p>")
  @as("Inferred")
  inferred: option<nullableBoolean>,
  @ocaml.doc("<p>The path of root cause entities found on the service. </p>") @as("EntityPath")
  entityPath: option<errorRootCauseEntityPath>,
  @ocaml.doc("<p>The account ID associated to the service.</p>") @as("AccountId")
  accountId: option<string_>,
  @ocaml.doc("<p>The type associated to the service.</p>") @as("Type") type_: option<string_>,
  @ocaml.doc("<p>A collection of associated service names.</p>") @as("Names")
  names: option<serviceNames>,
  @ocaml.doc("<p>The service name.</p>") @as("Name") name: option<string_>,
}
type edgeList = array<edge>
@ocaml.doc("<p>Information about an application that processed requests, users that made requests, or downstream services,
      resources, and applications that an application used.</p>")
type service = {
  @ocaml.doc("<p>A histogram that maps the spread of service response times.</p>")
  @as("ResponseTimeHistogram")
  responseTimeHistogram: option<histogram>,
  @ocaml.doc("<p>A histogram that maps the spread of service durations.</p>")
  @as("DurationHistogram")
  durationHistogram: option<histogram>,
  @ocaml.doc("<p>Aggregated statistics for the service.</p>") @as("SummaryStatistics")
  summaryStatistics: option<serviceStatistics>,
  @ocaml.doc("<p>Connections to downstream services.</p>") @as("Edges") edges: option<edgeList>,
  @ocaml.doc("<p>The end time of the last segment that the service generated.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The start time of the first segment that the service generated.</p>")
  @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The service's state.</p>") @as("State") state: option<string_>,
  @ocaml.doc("<p>The type of service.</p>
         <ul>
            <li>
               <p>AWS Resource - The type of an AWS resource. For example, <code>AWS::EC2::Instance</code> for an
          application running on Amazon EC2 or <code>AWS::DynamoDB::Table</code> for an Amazon DynamoDB table that the
          application used.</p>
            </li>
            <li>
               <p>AWS Service - The type of an AWS service. For example, <code>AWS::DynamoDB</code>
          for downstream calls to Amazon DynamoDB that didn't target a specific table.</p>
            </li>
            <li>
               <p>
                  <code>client</code> - Represents the clients that sent requests to a root
          service.</p>
            </li>
            <li>
               <p>
                  <code>remote</code> - A downstream service of indeterminate type.</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<string_>,
  @ocaml.doc("<p>Identifier of the AWS account in which the service runs.</p>") @as("AccountId")
  accountId: option<string_>,
  @ocaml.doc("<p>Indicates that the service was the first service to process a request.</p>")
  @as("Root")
  root: option<nullableBoolean>,
  @ocaml.doc("<p>A list of names for the service, including the canonical name.</p>") @as("Names")
  names: option<serviceNames>,
  @ocaml.doc("<p>The canonical name of the service.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>Identifier for the service. Unique within the service map.</p>") @as("ReferenceId")
  referenceId: option<nullableInteger>,
}
type responseTimeRootCauses = array<responseTimeRootCause>
type insightSummaryList = array<insightSummary>
type insightEventList = array<insightEvent>
type faultRootCauseServices = array<faultRootCauseService>
type errorRootCauseServices = array<errorRootCauseService>
type annotations = Js.Dict.t<valuesWithServiceIds>
type serviceList = array<service>
@ocaml.doc("<p>The root cause information for a trace summary fault.</p>")
type faultRootCause = {
  @ocaml.doc("<p>A flag that denotes that the root cause impacts the trace client.</p>")
  @as("ClientImpacting")
  clientImpacting: option<nullableBoolean>,
  @ocaml.doc("<p>A list of corresponding services. A service identifies a segment and it contains a
      name, account ID, type, and inferred flag.</p>")
  @as("Services")
  services: option<faultRootCauseServices>,
}
@ocaml.doc("<p>The root cause of a trace summary error.</p>")
type errorRootCause = {
  @ocaml.doc("<p>A flag that denotes that the root cause impacts the trace client.</p>")
  @as("ClientImpacting")
  clientImpacting: option<nullableBoolean>,
  @ocaml.doc("<p>A list of services corresponding to an error. A service identifies a segment and it
      contains a name, account ID, type, and inferred flag.</p>")
  @as("Services")
  services: option<errorRootCauseServices>,
}
type faultRootCauses = array<faultRootCause>
type errorRootCauses = array<errorRootCause>
@ocaml.doc("<p>Metadata generated from the segment documents in a trace.</p>")
type traceSummary = {
  @ocaml.doc("<p>The matched time stamp of a defined event.</p>") @as("MatchedEventTime")
  matchedEventTime: option<timestamp_>,
  @ocaml.doc("<p>The revision number of a trace.</p>") @as("Revision") revision: option<integer_>,
  @ocaml.doc("<p>A collection of ResponseTimeRootCause structures corresponding to the trace
      segments.</p>")
  @as("ResponseTimeRootCauses")
  responseTimeRootCauses: option<responseTimeRootCauses>,
  @ocaml.doc("<p>A collection of ErrorRootCause structures corresponding to the trace
      segments.</p>")
  @as("ErrorRootCauses")
  errorRootCauses: option<errorRootCauses>,
  @ocaml.doc(
    "<p>A collection of FaultRootCause structures corresponding to the trace segments.</p>"
  )
  @as("FaultRootCauses")
  faultRootCauses: option<faultRootCauses>,
  @ocaml.doc("<p>The root of a trace.</p>") @as("EntryPoint") entryPoint: option<serviceId>,
  @ocaml.doc(
    "<p>A list of Availability Zones for any zone corresponding to the trace segments.</p>"
  )
  @as("AvailabilityZones")
  availabilityZones: option<traceAvailabilityZones>,
  @ocaml.doc("<p>A list of EC2 instance IDs for any instance corresponding to the trace
      segments.</p>")
  @as("InstanceIds")
  instanceIds: option<traceInstanceIds>,
  @ocaml.doc("<p>A list of resource ARNs for any resource corresponding to the trace segments.</p>")
  @as("ResourceARNs")
  resourceARNs: option<traceResourceARNs>,
  @ocaml.doc("<p>Service IDs from the trace's segment documents.</p>") @as("ServiceIds")
  serviceIds: option<serviceIds>,
  @ocaml.doc("<p>Users from the trace's segment documents.</p>") @as("Users")
  users: option<traceUsers>,
  @ocaml.doc("<p>Annotations from the trace's segment documents.</p>") @as("Annotations")
  annotations: option<annotations>,
  @ocaml.doc("<p>Information about the HTTP request served by the trace.</p>") @as("Http")
  http: option<http>,
  @ocaml.doc("<p>One or more of the segment documents is in progress.</p>") @as("IsPartial")
  isPartial: option<nullableBoolean>,
  @ocaml.doc("<p>One or more of the segment documents has a 429 throttling error.</p>")
  @as("HasThrottle")
  hasThrottle: option<nullableBoolean>,
  @ocaml.doc("<p>The root segment document has a 400 series error.</p>") @as("HasError")
  hasError: option<nullableBoolean>,
  @ocaml.doc("<p>The root segment document has a 500 series error.</p>") @as("HasFault")
  hasFault: option<nullableBoolean>,
  @ocaml.doc("<p>The length of time in seconds between the start and end times of the root segment. If
      the service performs work asynchronously, the response time measures the time before the
      response is sent to the user, while the duration measures the amount of time before the last
      traced activity completes.</p>")
  @as("ResponseTime")
  responseTime: option<nullableDouble>,
  @ocaml.doc("<p>The length of time in seconds between the start time of the root segment and the end
      time of the last segment that completed.</p>")
  @as("Duration")
  duration: option<nullableDouble>,
  @ocaml.doc("<p>The unique identifier for the request that generated the trace's segments and
      subsegments.</p>")
  @as("Id")
  id: option<traceId>,
}
type traceSummaryList = array<traceSummary>
@ocaml.doc("<p>AWS X-Ray provides APIs for managing debug traces and retrieving service maps
      and other data created by processing those traces.</p>")
module DeleteGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the group that was generated on creation.</p>") @as("GroupARN")
    groupARN: option<groupARN>,
    @ocaml.doc("<p>The case-sensitive name of the group.</p>") @as("GroupName")
    groupName: option<groupName>,
  }

  @module("@aws-sdk/client-xray") @new external new: request => t = "DeleteGroupCommand"
  let make = (~groupARN=?, ~groupName=?, ()) => new({groupARN: groupARN, groupName: groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Keys for one or more tags that you want to remove from an X-Ray group or sampling rule.</p>"
    )
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-xray") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutEncryptionConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The type of encryption. Set to <code>KMS</code> to use your own key for encryption. Set
      to <code>NONE</code> for default encryption.</p>")
    @as("Type")
    type_: encryptionType,
    @ocaml.doc("<p>An AWS KMS customer master key (CMK) in one of the following formats:</p>
         <ul>
            <li>
               <p>
                  <b>Alias</b> - The name of the key. For example,
            <code>alias/MyKey</code>.</p>
            </li>
            <li>
               <p>
                  <b>Key ID</b> - The KMS key ID of the key. For example,
          <code>ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>. AWS X-Ray does not support asymmetric CMKs.</p>
            </li>
            <li>
               <p>
                  <b>ARN</b> - The full Amazon Resource Name of the key ID or alias.
          For example,
            <code>arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>.
          Use this format to specify a key in a different account.</p>
            </li>
         </ul>
         <p>Omit this key if you set <code>Type</code> to <code>NONE</code>.</p>")
    @as("KeyId")
    keyId: option<encryptionKeyId>,
  }
  type response = {
    @ocaml.doc("<p>The new encryption configuration.</p>") @as("EncryptionConfig")
    encryptionConfig: option<encryptionConfig>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "PutEncryptionConfigCommand"
  let make = (~type_, ~keyId=?, ()) => new({type_: type_, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEncryptionConfig = {
  type t

  type response = {
    @ocaml.doc("<p>The encryption configuration document.</p>") @as("EncryptionConfig")
    encryptionConfig: option<encryptionConfig>,
  }
  @module("@aws-sdk/client-xray") @new external new: unit => t = "GetEncryptionConfigCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The structure containing configurations related to insights.</p>
        <ul>
            <li>
                <p>The InsightsEnabled boolean can be set to true to enable insights for the
                    group or false to disable insights for the group.</p>
            </li>
            <li>
                <p>The NotifcationsEnabled boolean can be set to true to enable insights notifications for the group.
                    Notifications can only be enabled on a group with InsightsEnabled set to true.</p>
            </li>
         </ul>")
    @as("InsightsConfiguration")
    insightsConfiguration: option<insightsConfiguration>,
    @ocaml.doc("<p>The updated filter expression defining criteria by which to group traces.</p>")
    @as("FilterExpression")
    filterExpression: option<filterExpression>,
    @ocaml.doc("<p>The ARN that was generated upon creation.</p>") @as("GroupARN")
    groupARN: option<groupARN>,
    @ocaml.doc("<p>The case-sensitive name of the group.</p>") @as("GroupName")
    groupName: option<groupName>,
  }
  type response = {
    @ocaml.doc("<p>The group that was updated. Contains the name of the group that was updated, the
            ARN of the group that was updated, the updated filter expression, and the updated insight
            configuration assigned to the group.</p>")
    @as("Group")
    group: option<group>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "UpdateGroupCommand"
  let make = (~insightsConfiguration=?, ~filterExpression=?, ~groupARN=?, ~groupName=?, ()) =>
    new({
      insightsConfiguration: insightsConfiguration,
      filterExpression: filterExpression,
      groupARN: groupARN,
      groupName: groupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains one or more tag keys and tag values to attach to an X-Ray group or
      sampling rule. For more information about ways to use tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS resources</a>
      in the <i>AWS General Reference</i>.</p>
         <p>The following restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Maximum number of user-applied tags per resource: 50</p>
            </li>
            <li>
               <p>Maximum tag key length: 128 Unicode characters</p>
            </li>
            <li>
               <p>Maximum tag value length: 256 Unicode characters</p>
            </li>
            <li>
               <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
          / = + - and @</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for AWS use. You
          cannot edit or delete system tags.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-xray") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutTraceSegments = {
  type t
  type request = {
    @ocaml.doc("<p>A string containing a JSON document defining one or more segments or
      subsegments.</p>")
    @as("TraceSegmentDocuments")
    traceSegmentDocuments: traceSegmentDocumentList,
  }
  type response = {
    @ocaml.doc("<p>Segments that failed processing.</p>") @as("UnprocessedTraceSegments")
    unprocessedTraceSegments: option<unprocessedTraceSegmentList>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "PutTraceSegmentsCommand"
  let make = (~traceSegmentDocuments, ()) => new({traceSegmentDocuments: traceSegmentDocuments})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token. If multiple pages of results are returned, use the <code>NextToken</code> value returned with 
    the current page of results as the value of this parameter to get the next page of results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>A pagination token. If multiple pages of results are returned, use the <code>NextToken</code> value returned with 
      the current page of results to get the next page of results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>A list of tags, as key and value pairs, that is associated with the specified X-Ray group or sampling rule.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ~nextToken=?, ()) =>
    new({nextToken: nextToken, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSamplingTargets = {
  type t
  type request = {
    @ocaml.doc("<p>Information about rules that the service is using to sample requests.</p>")
    @as("SamplingStatisticsDocuments")
    samplingStatisticsDocuments: samplingStatisticsDocumentList,
  }
  type response = {
    @ocaml.doc("<p>Information about <a>SamplingStatisticsDocument</a> that X-Ray could not
         process.</p>")
    @as("UnprocessedStatistics")
    unprocessedStatistics: option<unprocessedStatisticsList>,
    @ocaml.doc("<p>The last time a user changed the sampling rule configuration. If
         the sampling rule configuration changed since the service last retrieved it, the service
         should call <a>GetSamplingRules</a> to get the latest version.</p>")
    @as("LastRuleModification")
    lastRuleModification: option<timestamp_>,
    @ocaml.doc("<p>Updated rules that the service should use to sample requests.</p>")
    @as("SamplingTargetDocuments")
    samplingTargetDocuments: option<samplingTargetDocumentList>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "GetSamplingTargetsCommand"
  let make = (~samplingStatisticsDocuments, ()) =>
    new({samplingStatisticsDocuments: samplingStatisticsDocuments})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSamplingStatisticSummaries = {
  type t
  type request = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>Information about the number of requests instrumented for each sampling
         rule.</p>")
    @as("SamplingStatisticSummaries")
    samplingStatisticSummaries: option<samplingStatisticSummaryList>,
  }
  @module("@aws-sdk/client-xray") @new
  external new: request => t = "GetSamplingStatisticSummariesCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the group that was generated on creation.</p>") @as("GroupARN")
    groupARN: option<groupARN>,
    @ocaml.doc("<p>The case-sensitive name of the group.</p>") @as("GroupName")
    groupName: option<groupName>,
  }
  type response = {
    @ocaml.doc("<p>The group that was requested. Contains the name of the group, the ARN of the group,
            the filter expression, and the insight configuration assigned to the group.</p>")
    @as("Group")
    group: option<group>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "GetGroupCommand"
  let make = (~groupARN=?, ~groupName=?, ()) => new({groupARN: groupARN, groupName: groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains one or more tag keys and tag values to attach to an X-Ray group.
            For more information about ways to use tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS
                resources</a> in the <i>AWS General Reference</i>.</p>
        <p>The following restrictions apply to tags:</p>
        <ul>
            <li>
                <p>Maximum number of user-applied tags per resource: 50</p>
            </li>
            <li>
                <p>Maximum tag key length: 128 Unicode characters</p>
            </li>
            <li>
                <p>Maximum tag value length: 256 Unicode characters</p>
            </li>
            <li>
                <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
                    / = + - and @</p>
            </li>
            <li>
                <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
                <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for AWS
                    use.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The structure containing configurations related to insights.</p>
            <ul>
            <li>
                    <p>The InsightsEnabled boolean can be set to true to enable insights for the
                    new group or false to disable insights for the new group.</p>
                </li>
            <li>
                    <p>The NotifcationsEnabled boolean can be set to true to enable insights
                    notifications for the new group. Notifications may only be enabled on a group
                    with InsightsEnabled set to true.</p>
                </li>
         </ul>")
    @as("InsightsConfiguration")
    insightsConfiguration: option<insightsConfiguration>,
    @ocaml.doc("<p>The filter expression defining criteria by which to group traces.</p>")
    @as("FilterExpression")
    filterExpression: option<filterExpression>,
    @ocaml.doc("<p>The case-sensitive name of the new group. Default is a reserved name and names must
            be unique.</p>")
    @as("GroupName")
    groupName: groupName,
  }
  type response = {
    @ocaml.doc("<p>The group that was created. Contains the name of the group that was created, the Amazon Resource Name
            (ARN) of the group that was generated based on the group name, the filter expression, and the insight
            configuration that was assigned to the group.</p>")
    @as("Group")
    group: option<group>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "CreateGroupCommand"
  let make = (~groupName, ~tags=?, ~insightsConfiguration=?, ~filterExpression=?, ()) =>
    new({
      tags: tags,
      insightsConfiguration: insightsConfiguration,
      filterExpression: filterExpression,
      groupName: groupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSamplingRule = {
  type t
  type request = {
    @ocaml.doc("<p>The rule and fields to change.</p>") @as("SamplingRuleUpdate")
    samplingRuleUpdate: samplingRuleUpdate,
  }
  type response = {
    @ocaml.doc("<p>The updated rule definition and metadata.</p>") @as("SamplingRuleRecord")
    samplingRuleRecord: option<samplingRuleRecord>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "UpdateSamplingRuleCommand"
  let make = (~samplingRuleUpdate, ()) => new({samplingRuleUpdate: samplingRuleUpdate})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutTelemetryRecords = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("ResourceARN") resourceARN: option<resourceARN>,
    @ocaml.doc("<p></p>") @as("Hostname") hostname: option<hostname>,
    @ocaml.doc("<p></p>") @as("EC2InstanceId") ec2InstanceId: option<ec2InstanceId>,
    @ocaml.doc("<p></p>") @as("TelemetryRecords") telemetryRecords: telemetryRecordList,
  }

  @module("@aws-sdk/client-xray") @new external new: request => t = "PutTelemetryRecordsCommand"
  let make = (~telemetryRecords, ~resourceARN=?, ~hostname=?, ~ec2InstanceId=?, ()) =>
    new({
      resourceARN: resourceARN,
      hostname: hostname,
      ec2InstanceId: ec2InstanceId,
      telemetryRecords: telemetryRecords,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetGroups = {
  type t
  type request = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<getGroupsNextToken>,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>The collection of all active groups.</p>") @as("Groups")
    groups: option<groupSummaryList>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "GetGroupsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSamplingRule = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
    )
    @as("RuleARN")
    ruleARN: option<string_>,
    @ocaml.doc(
      "<p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
    )
    @as("RuleName")
    ruleName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The deleted rule definition and metadata.</p>") @as("SamplingRuleRecord")
    samplingRuleRecord: option<samplingRuleRecord>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "DeleteSamplingRuleCommand"
  let make = (~ruleARN=?, ~ruleName=?, ()) => new({ruleARN: ruleARN, ruleName: ruleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSamplingRule = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains one or more tag keys and tag values to attach to an X-Ray sampling
         rule. For more information about ways to use tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS
            resources</a> in the <i>AWS General Reference</i>.</p>
         <p>The following restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Maximum number of user-applied tags per resource: 50</p>
            </li>
            <li>
               <p>Maximum tag key length: 128 Unicode characters</p>
            </li>
            <li>
               <p>Maximum tag value length: 256 Unicode characters</p>
            </li>
            <li>
               <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . :
               / = + - and @</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for AWS
               use.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The rule definition.</p>") @as("SamplingRule") samplingRule: samplingRule,
  }
  type response = {
    @ocaml.doc("<p>The saved rule definition and metadata.</p>") @as("SamplingRuleRecord")
    samplingRuleRecord: option<samplingRuleRecord>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "CreateSamplingRuleCommand"
  let make = (~samplingRule, ~tags=?, ()) => new({tags: tags, samplingRule: samplingRule})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTimeSeriesServiceStatistics = {
  type t
  type request = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>The forecasted high and low fault count values. Forecast enabled requests require the
            EntitySelectorExpression ID be provided.</p>")
    @as("ForecastStatistics")
    forecastStatistics: option<nullableBoolean>,
    @ocaml.doc("<p>Aggregation period in seconds.</p>") @as("Period")
    period: option<nullableInteger>,
    @ocaml.doc("<p>A filter expression defining entities that will be aggregated for statistics.
            Supports ID, service, and edge functions. If no selector expression is specified, edge
            statistics are returned. </p>")
    @as("EntitySelectorExpression")
    entitySelectorExpression: option<entitySelectorExpression>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the group for which to pull statistics from.</p>"
    )
    @as("GroupARN")
    groupARN: option<groupARN>,
    @ocaml.doc("<p>The case-sensitive name of the group for which to pull statistics from.</p>")
    @as("GroupName")
    groupName: option<groupName>,
    @ocaml.doc("<p>The end of the time frame for which to aggregate statistics.</p>") @as("EndTime")
    endTime: timestamp_,
    @ocaml.doc("<p>The start of the time frame for which to aggregate statistics.</p>")
    @as("StartTime")
    startTime: timestamp_,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>A flag indicating whether or not a group's filter expression has been consistent, or if a returned
            aggregation might show statistics from an older version of the group's filter expression.</p>")
    @as("ContainsOldGroupVersions")
    containsOldGroupVersions: option<boolean_>,
    @ocaml.doc("<p>The collection of statistics.</p>") @as("TimeSeriesServiceStatistics")
    timeSeriesServiceStatistics: option<timeSeriesServiceStatisticsList>,
  }
  @module("@aws-sdk/client-xray") @new
  external new: request => t = "GetTimeSeriesServiceStatisticsCommand"
  let make = (
    ~endTime,
    ~startTime,
    ~nextToken=?,
    ~forecastStatistics=?,
    ~period=?,
    ~entitySelectorExpression=?,
    ~groupARN=?,
    ~groupName=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      forecastStatistics: forecastStatistics,
      period: period,
      entitySelectorExpression: entitySelectorExpression,
      groupARN: groupARN,
      groupName: groupName,
      endTime: endTime,
      startTime: startTime,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSamplingRules = {
  type t
  type request = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>Rule definitions and metadata.</p>") @as("SamplingRuleRecords")
    samplingRuleRecords: option<samplingRuleRecordList>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "GetSamplingRulesCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInsightImpactGraph = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the pagination token returned by a previous request to retrieve the next page of results. </p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The estimated end time of the insight, in Unix time seconds. The EndTime is exclusive of the value provided.
         The time range between the start time and end time can't be more than six hours. </p>")
    @as("EndTime")
    endTime: timestamp_,
    @ocaml.doc("<p>The estimated start time of the insight, in Unix time seconds. The StartTime is inclusive of the value
         provided and can't be more than 30 days old.</p>")
    @as("StartTime")
    startTime: timestamp_,
    @ocaml.doc(
      "<p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>"
    )
    @as("InsightId")
    insightId: insightId,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<token>,
    @ocaml.doc("<p>The AWS instrumented services related to the insight.</p>") @as("Services")
    services: option<insightImpactGraphServiceList>,
    @ocaml.doc("<p>The time, in Unix seconds, at which the service graph ended.</p>")
    @as("ServiceGraphEndTime")
    serviceGraphEndTime: option<timestamp_>,
    @ocaml.doc("<p>The time, in Unix seconds, at which the service graph started.</p>")
    @as("ServiceGraphStartTime")
    serviceGraphStartTime: option<timestamp_>,
    @ocaml.doc("<p>The provided end time. </p>") @as("EndTime") endTime: option<timestamp_>,
    @ocaml.doc("<p>The provided start time.</p>") @as("StartTime") startTime: option<timestamp_>,
    @ocaml.doc("<p>The insight's unique identifier.</p>") @as("InsightId")
    insightId: option<insightId>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "GetInsightImpactGraphCommand"
  let make = (~endTime, ~startTime, ~insightId, ~nextToken=?, ()) =>
    new({nextToken: nextToken, endTime: endTime, startTime: startTime, insightId: insightId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetTraces = {
  type t
  type request = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>Specify the trace IDs of requests for which to retrieve segments.</p>")
    @as("TraceIds")
    traceIds: traceIdList,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>Trace IDs of requests that haven't been processed.</p>")
    @as("UnprocessedTraceIds")
    unprocessedTraceIds: option<unprocessedTraceIdList>,
    @ocaml.doc("<p>Full traces for the specified requests.</p>") @as("Traces")
    traces: option<traceList>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "BatchGetTracesCommand"
  let make = (~traceIds, ~nextToken=?, ()) => new({nextToken: nextToken, traceIds: traceIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInsight = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>"
    )
    @as("InsightId")
    insightId: insightId,
  }
  type response = {
    @ocaml.doc("<p>The summary information of an insight.</p>") @as("Insight")
    insight: option<insight>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "GetInsightCommand"
  let make = (~insightId, ()) => new({insightId: insightId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInsightSummaries = {
  type t
  type request = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of results to display.</p>") @as("MaxResults")
    maxResults: option<getInsightSummariesMaxResults>,
    @ocaml.doc(
      "<p>The end of the time frame in which the insights ended. The end time can't be more than 30 days old.</p>"
    )
    @as("EndTime")
    endTime: timestamp_,
    @ocaml.doc("<p>The beginning of the time frame in which the insights started. The start time can't be more than 30 days
         old.</p>")
    @as("StartTime")
    startTime: timestamp_,
    @ocaml.doc("<p>The name of the group. Required if the GroupARN isn't provided.</p>")
    @as("GroupName")
    groupName: option<groupName>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the group. Required if the GroupName isn't provided.</p>"
    )
    @as("GroupARN")
    groupARN: option<groupARN>,
    @ocaml.doc("<p>The list of insight states. </p>") @as("States")
    states: option<insightStateList>,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<token>,
    @ocaml.doc("<p>The summary of each insight within the group matching the provided filters. The summary
         contains the InsightID, start and end time, the root cause service, the root cause and
         client impact statistics, the top anomalous services, and the status of the insight.</p>")
    @as("InsightSummaries")
    insightSummaries: option<insightSummaryList>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "GetInsightSummariesCommand"
  let make = (
    ~endTime,
    ~startTime,
    ~nextToken=?,
    ~maxResults=?,
    ~groupName=?,
    ~groupARN=?,
    ~states=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      endTime: endTime,
      startTime: startTime,
      groupName: groupName,
      groupARN: groupARN,
      states: states,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInsightEvents = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the pagination token returned by a previous request to retrieve the next page of events. </p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>Used to retrieve at most the specified value of events.</p>") @as("MaxResults")
    maxResults: option<getInsightEventsMaxResults>,
    @ocaml.doc(
      "<p>The insight's unique identifier. Use the GetInsightSummaries action to retrieve an InsightId.</p>"
    )
    @as("InsightId")
    insightId: insightId,
  }
  type response = {
    @ocaml.doc("<p>Use this token to retrieve the next page of insight events.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A detailed description of the event. This includes the time of the event, client and
         root cause impact statistics, and the top anomalous service at the time of the
         event.</p>")
    @as("InsightEvents")
    insightEvents: option<insightEventList>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "GetInsightEventsCommand"
  let make = (~insightId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, insightId: insightId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTraceGraph = {
  type t
  type request = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>Trace IDs of requests for which to generate a service graph.</p>")
    @as("TraceIds")
    traceIds: traceIdList,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>The services that have processed one of the specified requests.</p>")
    @as("Services")
    services: option<serviceList>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "GetTraceGraphCommand"
  let make = (~traceIds, ~nextToken=?, ()) => new({nextToken: nextToken, traceIds: traceIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetServiceGraph = {
  type t
  type request = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of a group based on which you want to generate a graph.</p>"
    )
    @as("GroupARN")
    groupARN: option<groupARN>,
    @ocaml.doc("<p>The name of a group based on which you want to generate a graph.</p>")
    @as("GroupName")
    groupName: option<groupName>,
    @ocaml.doc("<p>The end of the timeframe for which to generate a graph.</p>") @as("EndTime")
    endTime: timestamp_,
    @ocaml.doc("<p>The start of the time frame for which to generate a graph.</p>") @as("StartTime")
    startTime: timestamp_,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>A flag indicating whether the group's filter expression has been consistent, or
      if the returned service graph may show traces from an older version of the group's filter
      expression.</p>")
    @as("ContainsOldGroupVersions")
    containsOldGroupVersions: option<boolean_>,
    @ocaml.doc("<p>The services that have processed a traced request during the specified time
      frame.</p>")
    @as("Services")
    services: option<serviceList>,
    @ocaml.doc("<p>The end of the time frame for which the graph was generated.</p>") @as("EndTime")
    endTime: option<timestamp_>,
    @ocaml.doc("<p>The start of the time frame for which the graph was generated.</p>")
    @as("StartTime")
    startTime: option<timestamp_>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "GetServiceGraphCommand"
  let make = (~endTime, ~startTime, ~nextToken=?, ~groupARN=?, ~groupName=?, ()) =>
    new({
      nextToken: nextToken,
      groupARN: groupARN,
      groupName: groupName,
      endTime: endTime,
      startTime: startTime,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTraceSummaries = {
  type t
  type request = {
    @ocaml.doc("<p>Specify the pagination token returned by a previous request to retrieve the next page
      of results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specify a filter expression to retrieve trace summaries for services or requests that
      meet certain requirements.</p>")
    @as("FilterExpression")
    filterExpression: option<filterExpression>,
    @ocaml.doc("<p>A parameter to indicate whether to enable sampling on trace summaries. Input parameters are Name and
            Value.</p>")
    @as("SamplingStrategy")
    samplingStrategy: option<samplingStrategy>,
    @ocaml.doc("<p>Set to <code>true</code> to get summaries for only a subset of available
      traces.</p>")
    @as("Sampling")
    sampling: option<nullableBoolean>,
    @ocaml.doc(
      "<p>A parameter to indicate whether to query trace summaries by TraceId or Event time.</p>"
    )
    @as("TimeRangeType")
    timeRangeType: option<timeRangeType>,
    @ocaml.doc("<p>The end of the time frame for which to retrieve traces.</p>") @as("EndTime")
    endTime: timestamp_,
    @ocaml.doc("<p>The start of the time frame for which to retrieve traces.</p>") @as("StartTime")
    startTime: timestamp_,
  }
  type response = {
    @ocaml.doc("<p>If the requested time frame contained more than one page of results, you can use this token to retrieve the
      next page. The first page contains the most recent results, closest to the end of the time frame.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The total number of traces processed, including traces that did not match the specified
      filter expression.</p>")
    @as("TracesProcessedCount")
    tracesProcessedCount: option<nullableLong>,
    @ocaml.doc("<p>The start time of this page of results.</p>") @as("ApproximateTime")
    approximateTime: option<timestamp_>,
    @ocaml.doc("<p>Trace IDs and annotations for traces that were found in the specified time
      frame.</p>")
    @as("TraceSummaries")
    traceSummaries: option<traceSummaryList>,
  }
  @module("@aws-sdk/client-xray") @new external new: request => t = "GetTraceSummariesCommand"
  let make = (
    ~endTime,
    ~startTime,
    ~nextToken=?,
    ~filterExpression=?,
    ~samplingStrategy=?,
    ~sampling=?,
    ~timeRangeType=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      filterExpression: filterExpression,
      samplingStrategy: samplingStrategy,
      sampling: sampling,
      timeRangeType: timeRangeType,
      endTime: endTime,
      startTime: startTime,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
