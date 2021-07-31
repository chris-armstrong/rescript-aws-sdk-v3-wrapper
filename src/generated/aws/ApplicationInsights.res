type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-applicationinsights") @new external createClient: unit => awsServiceClient = "ApplicationInsightsClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type xrayThrottlePercent = int
type xrayRequestCount = int
type xrayRequestAverageLatency = float
type xrayNodeType = string
type xrayNodeName = string
type xrayFaultPercent = int
type xrayErrorPercent = int
type value = float
type unit_ = string
type title = string
type tier = [@as("ORACLE") #ORACLE | @as("JAVA_JMX") #JAVA_JMX | @as("POSTGRESQL") #POSTGRESQL | @as("MYSQL") #MYSQL | @as("SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP") #SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP | @as("SQL_SERVER") #SQL_SERVER | @as("DOT_NET_WEB") #DOT_NET_WEB | @as("DOT_NET_WEB_TIER") #DOT_NET_WEB_TIER | @as("DOT_NET_WORKER") #DOT_NET_WORKER | @as("DOT_NET_CORE") #DOT_NET_CORE | @as("DEFAULT") #DEFAULT | @as("CUSTOM") #CUSTOM]
type tagValue = string
type tagKey = string
type status = [@as("PENDING") #PENDING | @as("RESOLVED") #RESOLVED | @as("IGNORE") #IGNORE]
type statesStatus = string
type statesInput = string
type statesExecutionArn = string
type statesArn = string
type startTime = Js.Date.t;
type sourceType = string
type sourceARN = string
type severityLevel = [@as("High") #High | @as("Medium") #Medium | @as("Low") #Low]
type s3EventName = string
type resourceType = string
type resourceGroupName = string
type resourceARN = string
type removeSNSTopic = bool
type remarks = string
type rdsEventMessage = string
type rdsEventCategories = string
type problemId = string
type paginationToken = string
type osType = [@as("LINUX") #LINUX | @as("WINDOWS") #WINDOWS]
type opsItemSNSTopicArn = string
type opsCenterEnabled = bool
type observationId = string
type monitor = bool
type metricNamespace = string
type metricName = string
type metaDataValue = string
type metaDataKey = string
type maxEntities = int
type logText = string
type logPatternSetName = string
type logPatternRegex = string
type logPatternRank = int
type logPatternName = string
type logGroup = string
type logFilter = [@as("INFO") #INFO | @as("WARN") #WARN | @as("ERROR") #ERROR]
type lineTime = Js.Date.t;
type lifeCycle = string
type insights = string
type healthService = string
type healthEventTypeCode = string
type healthEventTypeCategory = string
type healthEventDescription = string
type healthEventArn = string
type feedbackValue = [@as("NOT_USEFUL") #NOT_USEFUL | @as("USEFUL") #USEFUL | @as("NOT_SPECIFIED") #NOT_SPECIFIED]
type feedbackKey = [@as("INSIGHTS_FEEDBACK") #INSIGHTS_FEEDBACK]
type exceptionMessage = string
type errorMsg = string
type endTime = Js.Date.t;
type ec2State = string
type ebsResult = string
type ebsRequestId = string
type ebsEvent = string
type ebsCause = string
type customComponentName = string
type configurationEventTime = Js.Date.t;
type configurationEventStatus = [@as("ERROR") #ERROR | @as("WARN") #WARN | @as("INFO") #INFO]
type configurationEventResourceType = [@as("SSM_ASSOCIATION") #SSM_ASSOCIATION | @as("CLOUDFORMATION") #CLOUDFORMATION | @as("CLOUDWATCH_LOG") #CLOUDWATCH_LOG | @as("CLOUDWATCH_ALARM") #CLOUDWATCH_ALARM]
type configurationEventResourceName = string
type configurationEventMonitoredResourceARN = string
type configurationEventDetail = string
type componentName = string
type componentConfiguration = string
type codeDeployState = string
type codeDeployInstanceGroupId = string
type codeDeployDeploymentId = string
type codeDeployDeploymentGroup = string
type codeDeployApplication = string
type cloudWatchEventSource = [@as("RDS") #RDS | @as("HEALTH") #HEALTH | @as("CODE_DEPLOY") #CODE_DEPLOY | @as("EC2") #EC2]
type cloudWatchEventId = string
type cloudWatchEventDetailType = string
type cwemonitorEnabled = bool
type amazonResourceName = string
type affectedResource = string
type workloadMetaData = Js.Dict.t<metaDataValue>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
  @as("Key") key: tagKey
}
type resourceList = array<resourceARN>
type observation = {
@as("XRayNodeType") xrayNodeType: option<xrayNodeType>,
  @as("XRayNodeName") xrayNodeName: option<xrayNodeName>,
  @as("XRayRequestAverageLatency") xrayRequestAverageLatency: option<xrayRequestAverageLatency>,
  @as("XRayRequestCount") xrayRequestCount: option<xrayRequestCount>,
  @as("XRayErrorPercent") xrayErrorPercent: option<xrayErrorPercent>,
  @as("XRayThrottlePercent") xrayThrottlePercent: option<xrayThrottlePercent>,
  @as("XRayFaultPercent") xrayFaultPercent: option<xrayFaultPercent>,
  @as("EbsRequestId") ebsRequestId: option<ebsRequestId>,
  @as("EbsCause") ebsCause: option<ebsCause>,
  @as("EbsResult") ebsResult: option<ebsResult>,
  @as("EbsEvent") ebsEvent: option<ebsEvent>,
  @as("StatesInput") statesInput: option<statesInput>,
  @as("StatesStatus") statesStatus: option<statesStatus>,
  @as("StatesArn") statesArn: option<statesArn>,
  @as("StatesExecutionArn") statesExecutionArn: option<statesExecutionArn>,
  @as("S3EventName") s3EventName: option<s3EventName>,
  @as("RdsEventMessage") rdsEventMessage: option<rdsEventMessage>,
  @as("RdsEventCategories") rdsEventCategories: option<rdsEventCategories>,
  @as("Ec2State") ec2State: option<ec2State>,
  @as("CodeDeployInstanceGroupId") codeDeployInstanceGroupId: option<codeDeployInstanceGroupId>,
  @as("CodeDeployApplication") codeDeployApplication: option<codeDeployApplication>,
  @as("CodeDeployState") codeDeployState: option<codeDeployState>,
  @as("CodeDeployDeploymentGroup") codeDeployDeploymentGroup: option<codeDeployDeploymentGroup>,
  @as("CodeDeployDeploymentId") codeDeployDeploymentId: option<codeDeployDeploymentId>,
  @as("HealthEventDescription") healthEventDescription: option<healthEventDescription>,
  @as("HealthEventTypeCategory") healthEventTypeCategory: option<healthEventTypeCategory>,
  @as("HealthEventTypeCode") healthEventTypeCode: option<healthEventTypeCode>,
  @as("HealthService") healthService: option<healthService>,
  @as("HealthEventArn") healthEventArn: option<healthEventArn>,
  @as("CloudWatchEventDetailType") cloudWatchEventDetailType: option<cloudWatchEventDetailType>,
  @as("CloudWatchEventSource") cloudWatchEventSource: option<cloudWatchEventSource>,
  @as("CloudWatchEventId") cloudWatchEventId: option<cloudWatchEventId>,
  @as("Value") value: option<value>,
  @as("Unit") unit_: option<unit_>,
  @as("MetricName") metricName: option<metricName>,
  @as("MetricNamespace") metricNamespace: option<metricNamespace>,
  @as("LogFilter") logFilter: option<logFilter>,
  @as("LogText") logText: option<logText>,
  @as("LineTime") lineTime: option<lineTime>,
  @as("LogGroup") logGroup: option<logGroup>,
  @as("SourceARN") sourceARN: option<sourceARN>,
  @as("SourceType") sourceType: option<sourceType>,
  @as("EndTime") endTime: option<endTime>,
  @as("StartTime") startTime: option<startTime>,
  @as("Id") id: option<observationId>
}
type logPatternSetList = array<logPatternSetName>
type logPattern = {
@as("Rank") rank: option<logPatternRank>,
  @as("Pattern") pattern: option<logPatternRegex>,
  @as("PatternName") patternName: option<logPatternName>,
  @as("PatternSetName") patternSetName: option<logPatternSetName>
}
type feedback = Js.Dict.t<feedbackValue>
type configurationEvent = {
@as("EventResourceName") eventResourceName: option<configurationEventResourceName>,
  @as("EventDetail") eventDetail: option<configurationEventDetail>,
  @as("EventTime") eventTime: option<configurationEventTime>,
  @as("EventResourceType") eventResourceType: option<configurationEventResourceType>,
  @as("EventStatus") eventStatus: option<configurationEventStatus>,
  @as("MonitoredResourceARN") monitoredResourceARN: option<configurationEventMonitoredResourceARN>
}
type applicationInfo = {
@as("Remarks") remarks: option<remarks>,
  @as("CWEMonitorEnabled") cwemonitorEnabled: option<cwemonitorEnabled>,
  @as("OpsCenterEnabled") opsCenterEnabled: option<opsCenterEnabled>,
  @as("OpsItemSNSTopicArn") opsItemSNSTopicArn: option<opsItemSNSTopicArn>,
  @as("LifeCycle") lifeCycle: option<lifeCycle>,
  @as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
type tagList_ = array<tag>
type problem = {
@as("Feedback") feedback: option<feedback>,
  @as("ResourceGroupName") resourceGroupName: option<resourceGroupName>,
  @as("SeverityLevel") severityLevel: option<severityLevel>,
  @as("EndTime") endTime: option<endTime>,
  @as("StartTime") startTime: option<startTime>,
  @as("AffectedResource") affectedResource: option<affectedResource>,
  @as("Status") status: option<status>,
  @as("Insights") insights: option<insights>,
  @as("Title") title: option<title>,
  @as("Id") id: option<problemId>
}
type observationList = array<observation>
type logPatternList = array<logPattern>
type detectedWorkload = Js.Dict.t<workloadMetaData>
type configurationEventList = array<configurationEvent>
type applicationInfoList = array<applicationInfo>
type relatedObservations = {
@as("ObservationList") observationList: option<observationList>
}
type problemList = array<problem>
type applicationComponent = {
@as("DetectedWorkload") detectedWorkload: option<detectedWorkload>,
  @as("Monitor") monitor: option<monitor>,
  @as("Tier") tier: option<tier>,
  @as("OsType") osType: option<osType>,
  @as("ResourceType") resourceType: option<resourceType>,
  @as("ComponentRemarks") componentRemarks: option<remarks>,
  @as("ComponentName") componentName: option<componentName>
}
type applicationComponentList = array<applicationComponent>

module UpdateComponentConfiguration = {
  type t;
  type request = {
@as("ComponentConfiguration") componentConfiguration: option<componentConfiguration>,
  @as("Tier") tier: option<tier>,
  @as("Monitor") monitor: option<monitor>,
  @as("ComponentName") componentName: componentName,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "UpdateComponentConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeComponentConfigurationRecommendation = {
  type t;
  type request = {
@as("Tier") tier: tier,
  @as("ComponentName") componentName: componentName,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("ComponentConfiguration") componentConfiguration: option<componentConfiguration>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeComponentConfigurationRecommendationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeComponentConfiguration = {
  type t;
  type request = {
@as("ComponentName") componentName: componentName,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("ComponentConfiguration") componentConfiguration: option<componentConfiguration>,
  @as("Tier") tier: option<tier>,
  @as("Monitor") monitor: option<monitor>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeComponentConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLogPattern = {
  type t;
  type request = {
@as("PatternName") patternName: logPatternName,
  @as("PatternSetName") patternSetName: logPatternSetName,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DeleteLogPatternCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteComponent = {
  type t;
  type request = {
@as("ComponentName") componentName: customComponentName,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DeleteComponentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DeleteApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateLogPattern = {
  type t;
  type request = {
@as("Rank") rank: option<logPatternRank>,
  @as("Pattern") pattern: option<logPatternRegex>,
  @as("PatternName") patternName: logPatternName,
  @as("PatternSetName") patternSetName: logPatternSetName,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("LogPattern") logPattern: option<logPattern>,
  @as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "UpdateLogPatternCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateComponent = {
  type t;
  type request = {
@as("ResourceList") resourceList: option<resourceList>,
  @as("NewComponentName") newComponentName: option<customComponentName>,
  @as("ComponentName") componentName: customComponentName,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "UpdateComponentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
@as("RemoveSNSTopic") removeSNSTopic: option<removeSNSTopic>,
  @as("OpsItemSNSTopicArn") opsItemSNSTopicArn: option<opsItemSNSTopicArn>,
  @as("CWEMonitorEnabled") cwemonitorEnabled: option<cwemonitorEnabled>,
  @as("OpsCenterEnabled") opsCenterEnabled: option<opsCenterEnabled>,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("ApplicationInfo") applicationInfo: option<applicationInfo>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "UpdateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
  @as("ResourceARN") resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLogPatternSets = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("MaxResults") maxResults: option<maxEntities>,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("LogPatternSets") logPatternSets: option<logPatternSetList>,
  @as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListLogPatternSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeObservation = {
  type t;
  type request = {
@as("ObservationId") observationId: observationId
}
  type response = {
@as("Observation") observation: option<observation>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeObservationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLogPattern = {
  type t;
  type request = {
@as("PatternName") patternName: logPatternName,
  @as("PatternSetName") patternSetName: logPatternSetName,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("LogPattern") logPattern: option<logPattern>,
  @as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeLogPatternCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeApplication = {
  type t;
  type request = {
@as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("ApplicationInfo") applicationInfo: option<applicationInfo>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLogPattern = {
  type t;
  type request = {
@as("Rank") rank: logPatternRank,
  @as("Pattern") pattern: logPatternRegex,
  @as("PatternName") patternName: logPatternName,
  @as("PatternSetName") patternSetName: logPatternSetName,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>,
  @as("LogPattern") logPattern: option<logPattern>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "CreateLogPatternCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateComponent = {
  type t;
  type request = {
@as("ResourceList") resourceList: resourceList,
  @as("ComponentName") componentName: customComponentName,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "CreateComponentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
  @as("ResourceARN") resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: amazonResourceName
}
  type response = {
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLogPatterns = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("MaxResults") maxResults: option<maxEntities>,
  @as("PatternSetName") patternSetName: option<logPatternSetName>,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("LogPatterns") logPatterns: option<logPatternList>,
  @as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListLogPatternsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationHistory = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("MaxResults") maxResults: option<maxEntities>,
  @as("EventStatus") eventStatus: option<configurationEventStatus>,
  @as("EndTime") endTime: option<endTime>,
  @as("StartTime") startTime: option<startTime>,
  @as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("EventList") eventList: option<configurationEventList>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListConfigurationHistoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("MaxResults") maxResults: option<maxEntities>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("ApplicationInfoList") applicationInfoList: option<applicationInfoList>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListApplicationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProblem = {
  type t;
  type request = {
@as("ProblemId") problemId: problemId
}
  type response = {
@as("Problem") problem: option<problem>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeProblemCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("OpsItemSNSTopicArn") opsItemSNSTopicArn: option<opsItemSNSTopicArn>,
  @as("CWEMonitorEnabled") cwemonitorEnabled: option<cwemonitorEnabled>,
  @as("OpsCenterEnabled") opsCenterEnabled: option<opsCenterEnabled>,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("ApplicationInfo") applicationInfo: option<applicationInfo>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "CreateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProblems = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("MaxResults") maxResults: option<maxEntities>,
  @as("EndTime") endTime: option<endTime>,
  @as("StartTime") startTime: option<startTime>,
  @as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("ProblemList") problemList: option<problemList>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListProblemsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProblemObservations = {
  type t;
  type request = {
@as("ProblemId") problemId: problemId
}
  type response = {
@as("RelatedObservations") relatedObservations: option<relatedObservations>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeProblemObservationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeComponent = {
  type t;
  type request = {
@as("ComponentName") componentName: componentName,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("ResourceList") resourceList: option<resourceList>,
  @as("ApplicationComponent") applicationComponent: option<applicationComponent>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeComponentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListComponents = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("MaxResults") maxResults: option<maxEntities>,
  @as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("ApplicationComponentList") applicationComponentList: option<applicationComponentList>
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListComponentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
