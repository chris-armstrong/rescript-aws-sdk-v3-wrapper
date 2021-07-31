type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type xRayThrottlePercent = int;
type xRayRequestCount = int;
type xRayRequestAverageLatency = float;
type xRayNodeType = string
type xRayNodeName = string
type xRayFaultPercent = int;
type xRayErrorPercent = int;
type value = float;
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
type removeSNSTopic = bool;
type remarks = string
type rdsEventMessage = string
type rdsEventCategories = string
type problemId = string
type paginationToken = string
type osType = [@as("LINUX") #LINUX | @as("WINDOWS") #WINDOWS]
type opsItemSNSTopicArn = string
type opsCenterEnabled = bool;
type observationId = string
type monitor = bool;
type metricNamespace = string
type metricName = string
type metaDataValue = string
type metaDataKey = string
type maxEntities = int;
type logText = string
type logPatternSetName = string
type logPatternRegex = string
type logPatternRank = int;
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
type cWEMonitorEnabled = bool;
type amazonResourceName = string
type affectedResource = string
type workloadMetaData = Js.Dict.t< metaDataValue>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type resourceList = array<resourceARN>
type observation = {
@as("XRayNodeType") xRayNodeType: xRayNodeType,
@as("XRayNodeName") xRayNodeName: xRayNodeName,
@as("XRayRequestAverageLatency") xRayRequestAverageLatency: xRayRequestAverageLatency,
@as("XRayRequestCount") xRayRequestCount: xRayRequestCount,
@as("XRayErrorPercent") xRayErrorPercent: xRayErrorPercent,
@as("XRayThrottlePercent") xRayThrottlePercent: xRayThrottlePercent,
@as("XRayFaultPercent") xRayFaultPercent: xRayFaultPercent,
@as("EbsRequestId") ebsRequestId: ebsRequestId,
@as("EbsCause") ebsCause: ebsCause,
@as("EbsResult") ebsResult: ebsResult,
@as("EbsEvent") ebsEvent: ebsEvent,
@as("StatesInput") statesInput: statesInput,
@as("StatesStatus") statesStatus: statesStatus,
@as("StatesArn") statesArn: statesArn,
@as("StatesExecutionArn") statesExecutionArn: statesExecutionArn,
@as("S3EventName") s3EventName: s3EventName,
@as("RdsEventMessage") rdsEventMessage: rdsEventMessage,
@as("RdsEventCategories") rdsEventCategories: rdsEventCategories,
@as("Ec2State") ec2State: ec2State,
@as("CodeDeployInstanceGroupId") codeDeployInstanceGroupId: codeDeployInstanceGroupId,
@as("CodeDeployApplication") codeDeployApplication: codeDeployApplication,
@as("CodeDeployState") codeDeployState: codeDeployState,
@as("CodeDeployDeploymentGroup") codeDeployDeploymentGroup: codeDeployDeploymentGroup,
@as("CodeDeployDeploymentId") codeDeployDeploymentId: codeDeployDeploymentId,
@as("HealthEventDescription") healthEventDescription: healthEventDescription,
@as("HealthEventTypeCategory") healthEventTypeCategory: healthEventTypeCategory,
@as("HealthEventTypeCode") healthEventTypeCode: healthEventTypeCode,
@as("HealthService") healthService: healthService,
@as("HealthEventArn") healthEventArn: healthEventArn,
@as("CloudWatchEventDetailType") cloudWatchEventDetailType: cloudWatchEventDetailType,
@as("CloudWatchEventSource") cloudWatchEventSource: cloudWatchEventSource,
@as("CloudWatchEventId") cloudWatchEventId: cloudWatchEventId,
@as("Value") value: value,
@as("Unit") unit: unit_,
@as("MetricName") metricName: metricName,
@as("MetricNamespace") metricNamespace: metricNamespace,
@as("LogFilter") logFilter: logFilter,
@as("LogText") logText: logText,
@as("LineTime") lineTime: lineTime,
@as("LogGroup") logGroup: logGroup,
@as("SourceARN") sourceARN: sourceARN,
@as("SourceType") sourceType: sourceType,
@as("EndTime") endTime: endTime,
@as("StartTime") startTime: startTime,
@as("Id") id: observationId
}
type logPatternSetList = array<logPatternSetName>
type logPattern = {
@as("Rank") rank: logPatternRank,
@as("Pattern") pattern: logPatternRegex,
@as("PatternName") patternName: logPatternName,
@as("PatternSetName") patternSetName: logPatternSetName
}
type feedback = Js.Dict.t< feedbackValue>
type configurationEvent = {
@as("EventResourceName") eventResourceName: configurationEventResourceName,
@as("EventDetail") eventDetail: configurationEventDetail,
@as("EventTime") eventTime: configurationEventTime,
@as("EventResourceType") eventResourceType: configurationEventResourceType,
@as("EventStatus") eventStatus: configurationEventStatus,
@as("MonitoredResourceARN") monitoredResourceARN: configurationEventMonitoredResourceARN
}
type applicationInfo = {
@as("Remarks") remarks: remarks,
@as("CWEMonitorEnabled") cWEMonitorEnabled: cWEMonitorEnabled,
@as("OpsCenterEnabled") opsCenterEnabled: opsCenterEnabled,
@as("OpsItemSNSTopicArn") opsItemSNSTopicArn: opsItemSNSTopicArn,
@as("LifeCycle") lifeCycle: lifeCycle,
@as("ResourceGroupName") resourceGroupName: resourceGroupName
}
type tagList = array<tag>
type problem = {
@as("Feedback") feedback: feedback,
@as("ResourceGroupName") resourceGroupName: resourceGroupName,
@as("SeverityLevel") severityLevel: severityLevel,
@as("EndTime") endTime: endTime,
@as("StartTime") startTime: startTime,
@as("AffectedResource") affectedResource: affectedResource,
@as("Status") status: status,
@as("Insights") insights: insights,
@as("Title") title: title,
@as("Id") id: problemId
}
type observationList = array<observation>
type logPatternList = array<logPattern>
type detectedWorkload = Js.Dict.t< workloadMetaData>
type configurationEventList = array<configurationEvent>
type applicationInfoList = array<applicationInfo>
type relatedObservations = {
@as("ObservationList") observationList: observationList
}
type problemList = array<problem>
type applicationComponent = {
@as("DetectedWorkload") detectedWorkload: detectedWorkload,
@as("Monitor") monitor: monitor,
@as("Tier") tier: tier,
@as("OsType") osType: osType,
@as("ResourceType") resourceType: resourceType,
@as("ComponentRemarks") componentRemarks: remarks,
@as("ComponentName") componentName: componentName
}
type applicationComponentList = array<applicationComponent>
type clientType;
@module("@aws-sdk/client-applicationinsights") @new external createClient: unit => clientType = "ApplicationInsightsClient";
module UpdateComponentConfiguration = {
  type t;
  type request = {
@as("ComponentConfiguration") componentConfiguration: componentConfiguration,
@as("Tier") tier: tier,
@as("Monitor") monitor: monitor,
@as("ComponentName") componentName: option<componentName>,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "UpdateComponentConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeComponentConfigurationRecommendation = {
  type t;
  type request = {
@as("Tier") tier: option<tier>,
@as("ComponentName") componentName: option<componentName>,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("ComponentConfiguration") componentConfiguration: componentConfiguration
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeComponentConfigurationRecommendationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeComponentConfiguration = {
  type t;
  type request = {
@as("ComponentName") componentName: option<componentName>,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("ComponentConfiguration") componentConfiguration: componentConfiguration,
@as("Tier") tier: tier,
@as("Monitor") monitor: monitor
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeComponentConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLogPattern = {
  type t;
  type request = {
@as("PatternName") patternName: option<logPatternName>,
@as("PatternSetName") patternSetName: option<logPatternSetName>,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DeleteLogPatternCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteComponent = {
  type t;
  type request = {
@as("ComponentName") componentName: option<customComponentName>,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DeleteComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DeleteApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLogPattern = {
  type t;
  type request = {
@as("Rank") rank: logPatternRank,
@as("Pattern") pattern: logPatternRegex,
@as("PatternName") patternName: option<logPatternName>,
@as("PatternSetName") patternSetName: option<logPatternSetName>,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("LogPattern") logPattern: logPattern,
@as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "UpdateLogPatternCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateComponent = {
  type t;
  type request = {
@as("ResourceList") resourceList: resourceList,
@as("NewComponentName") newComponentName: customComponentName,
@as("ComponentName") componentName: option<customComponentName>,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "UpdateComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
@as("RemoveSNSTopic") removeSNSTopic: removeSNSTopic,
@as("OpsItemSNSTopicArn") opsItemSNSTopicArn: opsItemSNSTopicArn,
@as("CWEMonitorEnabled") cWEMonitorEnabled: cWEMonitorEnabled,
@as("OpsCenterEnabled") opsCenterEnabled: opsCenterEnabled,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("ApplicationInfo") applicationInfo: applicationInfo
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "UpdateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLogPatternSets = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxEntities,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("LogPatternSets") logPatternSets: logPatternSetList,
@as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListLogPatternSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeObservation = {
  type t;
  type request = {
@as("ObservationId") observationId: option<observationId>
}
  type response = {
@as("Observation") observation: observation
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeObservationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLogPattern = {
  type t;
  type request = {
@as("PatternName") patternName: option<logPatternName>,
@as("PatternSetName") patternSetName: option<logPatternSetName>,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("LogPattern") logPattern: logPattern,
@as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeLogPatternCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApplication = {
  type t;
  type request = {
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("ApplicationInfo") applicationInfo: applicationInfo
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLogPattern = {
  type t;
  type request = {
@as("Rank") rank: option<logPatternRank>,
@as("Pattern") pattern: option<logPatternRegex>,
@as("PatternName") patternName: option<logPatternName>,
@as("PatternSetName") patternSetName: option<logPatternSetName>,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("ResourceGroupName") resourceGroupName: resourceGroupName,
@as("LogPattern") logPattern: logPattern
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "CreateLogPatternCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateComponent = {
  type t;
  type request = {
@as("ResourceList") resourceList: option<resourceList>,
@as("ComponentName") componentName: option<customComponentName>,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "CreateComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLogPatterns = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxEntities,
@as("PatternSetName") patternSetName: logPatternSetName,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("LogPatterns") logPatterns: logPatternList,
@as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListLogPatternsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationHistory = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxEntities,
@as("EventStatus") eventStatus: configurationEventStatus,
@as("EndTime") endTime: endTime,
@as("StartTime") startTime: startTime,
@as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("EventList") eventList: configurationEventList
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListConfigurationHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxEntities
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("ApplicationInfoList") applicationInfoList: applicationInfoList
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProblem = {
  type t;
  type request = {
@as("ProblemId") problemId: option<problemId>
}
  type response = {
@as("Problem") problem: problem
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeProblemCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("OpsItemSNSTopicArn") opsItemSNSTopicArn: opsItemSNSTopicArn,
@as("CWEMonitorEnabled") cWEMonitorEnabled: cWEMonitorEnabled,
@as("OpsCenterEnabled") opsCenterEnabled: opsCenterEnabled,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("ApplicationInfo") applicationInfo: applicationInfo
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "CreateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProblems = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxEntities,
@as("EndTime") endTime: endTime,
@as("StartTime") startTime: startTime,
@as("ResourceGroupName") resourceGroupName: resourceGroupName
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("ProblemList") problemList: problemList
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListProblemsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProblemObservations = {
  type t;
  type request = {
@as("ProblemId") problemId: option<problemId>
}
  type response = {
@as("RelatedObservations") relatedObservations: relatedObservations
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeProblemObservationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeComponent = {
  type t;
  type request = {
@as("ComponentName") componentName: option<componentName>,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("ResourceList") resourceList: resourceList,
@as("ApplicationComponent") applicationComponent: applicationComponent
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "DescribeComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListComponents = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxEntities,
@as("ResourceGroupName") resourceGroupName: option<resourceGroupName>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("ApplicationComponentList") applicationComponentList: applicationComponentList
}
  @module("@aws-sdk/client-applicationinsights") @new external new_: (request) => t = "ListComponentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
