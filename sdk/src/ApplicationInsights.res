type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-applicationinsights") @new
external createClient: unit => awsServiceClient = "ApplicationInsightsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
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
type tier = [
  | @as("ACTIVE_DIRECTORY") #ACTIVE_DIRECTORY
  | @as("SHAREPOINT") #SHAREPOINT
  | @as("SQL_SERVER_FAILOVER_CLUSTER_INSTANCE") #SQL_SERVER_FAILOVER_CLUSTER_INSTANCE
  | @as("SAP_HANA_HIGH_AVAILABILITY") #SAP_HANA_HIGH_AVAILABILITY
  | @as("SAP_HANA_SINGLE_NODE") #SAP_HANA_SINGLE_NODE
  | @as("SAP_HANA_MULTI_NODE") #SAP_HANA_MULTI_NODE
  | @as("ORACLE") #ORACLE
  | @as("JAVA_JMX") #JAVA_JMX
  | @as("POSTGRESQL") #POSTGRESQL
  | @as("MYSQL") #MYSQL
  | @as("SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP") #SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP
  | @as("SQL_SERVER") #SQL_SERVER
  | @as("DOT_NET_WEB") #DOT_NET_WEB
  | @as("DOT_NET_WEB_TIER") #DOT_NET_WEB_TIER
  | @as("DOT_NET_WORKER") #DOT_NET_WORKER
  | @as("DOT_NET_CORE") #DOT_NET_CORE
  | @as("DEFAULT") #DEFAULT
  | @as("CUSTOM") #CUSTOM
]
type tagValue = string
type tagKey = string
type status = [
  | @as("RECURRING") #RECURRING
  | @as("PENDING") #PENDING
  | @as("RESOLVED") #RESOLVED
  | @as("IGNORE") #IGNORE
]
type statesStatus = string
type statesInput = string
type statesExecutionArn = string
type statesArn = string
type startTime = Js.Date.t
type sourceType = string
type sourceARN = string
type severityLevel = [@as("High") #High | @as("Medium") #Medium | @as("Low") #Low]
type s3EventName = string
type resourceType = string
type resourceGroupName = string
type resourceARN = string
type removeSNSTopic = bool
type remarks = string
type recurringCount = float
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
type lineTime = Js.Date.t
type lifeCycle = string
type lastRecurrenceTime = Js.Date.t
type insights = string
type healthService = string
type healthEventTypeCode = string
type healthEventTypeCategory = string
type healthEventDescription = string
type healthEventArn = string
type feedbackValue = [
  | @as("NOT_USEFUL") #NOT_USEFUL
  | @as("USEFUL") #USEFUL
  | @as("NOT_SPECIFIED") #NOT_SPECIFIED
]
type feedbackKey = [@as("INSIGHTS_FEEDBACK") #INSIGHTS_FEEDBACK]
type exceptionMessage = string
type errorMsg = string
type endTime = Js.Date.t
type ec2State = string
type ebsResult = string
type ebsRequestId = string
type ebsEvent = string
type ebsCause = string
type discoveryType = [
  | @as("ACCOUNT_BASED") #ACCOUNT_BASED
  | @as("RESOURCE_GROUP_BASED") #RESOURCE_GROUP_BASED
]
type customComponentName = string
type configurationEventTime = Js.Date.t
type configurationEventStatus = [@as("ERROR") #ERROR | @as("WARN") #WARN | @as("INFO") #INFO]
type configurationEventResourceType = [
  | @as("SSM_ASSOCIATION") #SSM_ASSOCIATION
  | @as("CLOUDFORMATION") #CLOUDFORMATION
  | @as("CLOUDWATCH_LOG") #CLOUDWATCH_LOG
  | @as("CLOUDWATCH_ALARM") #CLOUDWATCH_ALARM
]
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
type cloudWatchEventSource = [
  | @as("RDS") #RDS
  | @as("HEALTH") #HEALTH
  | @as("CODE_DEPLOY") #CODE_DEPLOY
  | @as("EC2") #EC2
]
type cloudWatchEventId = string
type cloudWatchEventDetailType = string
type cwemonitorEnabled = bool
type autoCreate = bool
type autoConfigEnabled = bool
type amazonResourceName = string
type affectedResource = string
type workloadMetaData = Js.Dict.t<metaDataValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>An object that defines the tags associated with an application.
         A <i>tag</i> is a label that you optionally define and associate with
         an application. Tags can help you categorize and manage resources in different ways, such as
         by purpose, owner, environment, or other criteria.</p>
         <p>Each tag consists of a required <i>tag key</i> and an
         associated <i>tag value</i>, both of which you define. A tag key is a
         general label that acts as a category for a more specific tag value. A tag value acts as
         a descriptor within a tag key. A tag key can contain as many as 128 characters. A tag
         value can contain as many as 256 characters. The characters can be Unicode letters,
         digits, white space, or one of the following symbols: _ . : / = + -. The following
         additional restrictions apply to tags:</p>
         <ul>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>For each associated resource, each tag key must be unique and it can have only
               one value.</p>
            </li>
            <li>
               <p>The <code>aws:</code> prefix is reserved for use by AWS; you can’t use it in
               any tag keys or values that you define. In addition, you can't edit or remove
               tag keys or values that use this prefix. </p>
            </li>
         </ul>")
type tag = {
  @ocaml.doc("<p>The optional part of a key-value pair that defines a tag. The maximum length of a tag
         value is 256 characters. The minimum length is 0 characters. If you don't want an
         application to have a specific tag value, don't specify a value for this parameter.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>One part of a key-value pair that defines a tag. The maximum length of a tag key is
         128 characters. The minimum length is 1 character.</p>")
  @as("Key")
  key: tagKey,
}
type resourceList = array<resourceARN>
@ocaml.doc("<p>Describes an anomaly or error with the application.</p>")
type observation = {
  @ocaml.doc("<p>
         The type of the  X-Ray node.      </p>")
  @as("XRayNodeType")
  xrayNodeType: option<xrayNodeType>,
  @ocaml.doc("<p>
         The name of the X-Ray node.
      </p>")
  @as("XRayNodeName")
  xrayNodeName: option<xrayNodeName>,
  @ocaml.doc("<p>
         The X-Ray node request average latency for this node.
      </p>")
  @as("XRayRequestAverageLatency")
  xrayRequestAverageLatency: option<xrayRequestAverageLatency>,
  @ocaml.doc("<p>
         The X-Ray request count for this node.
      </p>")
  @as("XRayRequestCount")
  xrayRequestCount: option<xrayRequestCount>,
  @ocaml.doc("<p>
         The X-Ray request error percentage for this node.
      </p>")
  @as("XRayErrorPercent")
  xrayErrorPercent: option<xrayErrorPercent>,
  @ocaml.doc("<p>
         The X-Ray request throttle percentage for this node.
      </p>")
  @as("XRayThrottlePercent")
  xrayThrottlePercent: option<xrayThrottlePercent>,
  @ocaml.doc("<p>
         The X-Ray request fault percentage for this node.
      </p>")
  @as("XRayFaultPercent")
  xrayFaultPercent: option<xrayFaultPercent>,
  @ocaml.doc("<p>
            The request ID of an EBS CloudWatch event.
         </p>")
  @as("EbsRequestId")
  ebsRequestId: option<ebsRequestId>,
  @ocaml.doc("<p>
         The cause of an EBS CloudWatch event.
      </p>")
  @as("EbsCause")
  ebsCause: option<ebsCause>,
  @ocaml.doc("<p>
         The result of an EBS CloudWatch event, such as <code>failed</code> or <code>succeeded</code>.
      </p>")
  @as("EbsResult")
  ebsResult: option<ebsResult>,
  @ocaml.doc("<p>
         The type of EBS CloudWatch event, such as <code>createVolume</code>, <code>deleteVolume</code> or <code>attachVolume</code>.
      </p>")
  @as("EbsEvent")
  ebsEvent: option<ebsEvent>,
  @ocaml.doc("<p>
         The input to the step function-based observation.
      </p>")
  @as("StatesInput")
  statesInput: option<statesInput>,
  @ocaml.doc("<p>
         The status of the step function-related observation.
      </p>")
  @as("StatesStatus")
  statesStatus: option<statesStatus>,
  @ocaml.doc("<p>
         The Amazon Resource Name (ARN)  of the step function-based observation.
      </p>")
  @as("StatesArn")
  statesArn: option<statesArn>,
  @ocaml.doc("<p>
         The Amazon Resource Name (ARN) of the step function execution-based observation.
      </p>")
  @as("StatesExecutionArn")
  statesExecutionArn: option<statesExecutionArn>,
  @ocaml.doc("<p>
         The name of the S3 CloudWatch Event-based observation.
      </p>")
  @as("S3EventName")
  s3EventName: option<s3EventName>,
  @ocaml.doc("<p>
         The message of an RDS event.
      </p>")
  @as("RdsEventMessage")
  rdsEventMessage: option<rdsEventMessage>,
  @ocaml.doc("<p>
         The category of an RDS event.
      </p>")
  @as("RdsEventCategories")
  rdsEventCategories: option<rdsEventCategories>,
  @ocaml.doc("<p>
         The state of the instance, such as <code>STOPPING</code> or <code>TERMINATING</code>.
      </p>")
  @as("Ec2State")
  ec2State: option<ec2State>,
  @ocaml.doc("<p>
         The instance group to which the CodeDeploy instance belongs. 
      </p>")
  @as("CodeDeployInstanceGroupId")
  codeDeployInstanceGroupId: option<codeDeployInstanceGroupId>,
  @ocaml.doc("<p>
         The CodeDeploy application to which the deployment belongs.
      </p>")
  @as("CodeDeployApplication")
  codeDeployApplication: option<codeDeployApplication>,
  @ocaml.doc("<p>
         The status of the CodeDeploy deployment, for example <code>SUCCESS</code> or <code> FAILURE</code>. 
      </p>")
  @as("CodeDeployState")
  codeDeployState: option<codeDeployState>,
  @ocaml.doc("<p>
         The deployment group to which the CodeDeploy deployment belongs.
      </p>")
  @as("CodeDeployDeploymentGroup")
  codeDeployDeploymentGroup: option<codeDeployDeploymentGroup>,
  @ocaml.doc(
    "<p> The deployment ID of the CodeDeploy-based observation related to the detected problem. </p>"
  )
  @as("CodeDeployDeploymentId")
  codeDeployDeploymentId: option<codeDeployDeploymentId>,
  @ocaml.doc(
    "<p> The description of the AWS Health event provided by the service, such as Amazon EC2. </p>"
  )
  @as("HealthEventDescription")
  healthEventDescription: option<healthEventDescription>,
  @ocaml.doc("<p> The category of the AWS Health event, such as <code>issue</code>. </p>")
  @as("HealthEventTypeCategory")
  healthEventTypeCategory: option<healthEventTypeCategory>,
  @ocaml.doc("<p> The type of the AWS Health event, for example,
            <code>AWS_EC2_POWER_CONNECTIVITY_ISSUE</code>. </p>")
  @as("HealthEventTypeCode")
  healthEventTypeCode: option<healthEventTypeCode>,
  @ocaml.doc("<p> The service to which the AWS Health Event belongs, such as EC2. </p>")
  @as("HealthService")
  healthService: option<healthService>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the AWS Health Event-based observation.</p>")
  @as("HealthEventArn")
  healthEventArn: option<healthEventArn>,
  @ocaml.doc("<p> The detail type of the CloudWatch Event-based observation, for example, <code>EC2
            Instance State-change Notification</code>. </p>")
  @as("CloudWatchEventDetailType")
  cloudWatchEventDetailType: option<cloudWatchEventDetailType>,
  @ocaml.doc("<p> The source of the CloudWatch Event. </p>") @as("CloudWatchEventSource")
  cloudWatchEventSource: option<cloudWatchEventSource>,
  @ocaml.doc(
    "<p> The ID of the CloudWatch Event-based observation related to the detected problem. </p>"
  )
  @as("CloudWatchEventId")
  cloudWatchEventId: option<cloudWatchEventId>,
  @ocaml.doc("<p>The value of the source observation metric.</p>") @as("Value")
  value: option<value>,
  @ocaml.doc("<p>The unit of the source observation metric.</p>") @as("Unit") unit_: option<unit_>,
  @ocaml.doc("<p>The name of the observation metric.</p>") @as("MetricName")
  metricName: option<metricName>,
  @ocaml.doc("<p>The namespace of the observation metric.</p>") @as("MetricNamespace")
  metricNamespace: option<metricNamespace>,
  @ocaml.doc("<p>The log filter of the observation.</p>") @as("LogFilter")
  logFilter: option<logFilter>,
  @ocaml.doc("<p>The log text of the observation.</p>") @as("LogText") logText: option<logText>,
  @ocaml.doc(
    "<p>The timestamp in the CloudWatch Logs that specifies when the matched line occurred.</p>"
  )
  @as("LineTime")
  lineTime: option<lineTime>,
  @ocaml.doc("<p>The log group name.</p>") @as("LogGroup") logGroup: option<logGroup>,
  @ocaml.doc("<p>The source resource ARN of the observation.</p>") @as("SourceARN")
  sourceARN: option<sourceARN>,
  @ocaml.doc("<p>The source type of the observation.</p>") @as("SourceType")
  sourceType: option<sourceType>,
  @ocaml.doc("<p>The time when the observation ended, in epoch seconds.</p>") @as("EndTime")
  endTime: option<endTime>,
  @ocaml.doc("<p>The time when the observation was  first detected, in epoch seconds.</p>")
  @as("StartTime")
  startTime: option<startTime>,
  @ocaml.doc("<p>The ID of the observation type.</p>") @as("Id") id: option<observationId>,
}
type logPatternSetList = array<logPatternSetName>
@ocaml.doc(
  "<p>An object that defines the log patterns that belongs to a <code>LogPatternSet</code>.</p>"
)
type logPattern = {
  @ocaml.doc("<p>Rank of the log pattern. Must be a value between <code>1</code> and <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be last to get matched. When you configure custom log patterns from the console, a <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a <code>High</code> severity pattern translates to a <code>250,000</code> rank.
         Rank values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for AWS-provided patterns.
      </p>")
  @as("Rank")
  rank: option<logPatternRank>,
  @ocaml.doc("<p>A regular expression that defines the log pattern. A log pattern can contain as many as 50 characters, and it cannot
         be empty. The pattern must be DFA compatible. Patterns that utilize forward lookahead or backreference constructions are not supported.</p>")
  @as("Pattern")
  pattern: option<logPatternRegex>,
  @ocaml.doc("<p>The name of the log pattern. A log pattern name can contain as many as 50 characters, and it cannot
         be empty. The characters can be Unicode letters, digits, or one of the following symbols: period, dash, underscore.</p>")
  @as("PatternName")
  patternName: option<logPatternName>,
  @ocaml.doc("<p>The name of the log pattern. A log pattern name can contain as many as 30 characters, and it cannot
         be empty. The characters can be Unicode letters, digits, or one of the following symbols: period, dash, underscore.</p>")
  @as("PatternSetName")
  patternSetName: option<logPatternSetName>,
}
type feedback = Js.Dict.t<feedbackValue>
@ocaml.doc("<p>
         The event information.
      </p>")
type configurationEvent = {
  @ocaml.doc("<p>
         The name of the resource Application Insights attempted to configure. 
      </p>")
  @as("EventResourceName")
  eventResourceName: option<configurationEventResourceName>,
  @ocaml.doc("<p>
         The details of the event in plain text. 
      </p>")
  @as("EventDetail")
  eventDetail: option<configurationEventDetail>,
  @ocaml.doc("<p>
         The timestamp of the event. 
      </p>")
  @as("EventTime")
  eventTime: option<configurationEventTime>,
  @ocaml.doc("<p>
         The resource type that Application Insights attempted to configure, for example, CLOUDWATCH_ALARM.
      </p>")
  @as("EventResourceType")
  eventResourceType: option<configurationEventResourceType>,
  @ocaml.doc("<p>
         The status of the configuration update event. Possible values include INFO, WARN, and ERROR.
      </p>")
  @as("EventStatus")
  eventStatus: option<configurationEventStatus>,
  @ocaml.doc("<p>
         The resource monitored by Application Insights.
      </p>")
  @as("MonitoredResourceARN")
  monitoredResourceARN: option<configurationEventMonitoredResourceARN>,
}
@ocaml.doc("<p>Describes the status of the application.</p>")
type applicationInfo = {
  @as("DiscoveryType") discoveryType: option<discoveryType>,
  @as("AutoConfigEnabled") autoConfigEnabled: option<autoConfigEnabled>,
  @ocaml.doc("<p>The issues on the user side that block Application Insights from successfully monitoring
         an application. Example remarks include:</p>
         <ul>
            <li>
               <p>“Configuring application, detected 1 Errors, 3 Warnings”</p>
            </li>
            <li>
               <p>“Configuring application, detected 1 Unconfigured Components”</p>
            </li>
         </ul>")
  @as("Remarks")
  remarks: option<remarks>,
  @ocaml.doc("<p>
         Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as <code>instance terminated</code>, <code>failed deployment</code>, and others.
      </p>")
  @as("CWEMonitorEnabled")
  cwemonitorEnabled: option<cwemonitorEnabled>,
  @ocaml.doc("<p>
         Indicates whether Application Insights will create opsItems for any problem detected by Application
         Insights for an application.
      </p>")
  @as("OpsCenterEnabled")
  opsCenterEnabled: option<opsCenterEnabled>,
  @ocaml.doc("<p>
         The SNS topic provided to Application Insights that is associated to the created opsItems to receive SNS notifications
         for opsItem updates.
      </p>")
  @as("OpsItemSNSTopicArn")
  opsItemSNSTopicArn: option<opsItemSNSTopicArn>,
  @ocaml.doc("<p>The lifecycle of the application. </p>") @as("LifeCycle")
  lifeCycle: option<lifeCycle>,
  @ocaml.doc("<p>The name of the resource group used for the application.</p>")
  @as("ResourceGroupName")
  resourceGroupName: option<resourceGroupName>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Describes a problem that is detected by correlating observations.</p>")
type problem = {
  @as("LastRecurrenceTime") lastRecurrenceTime: option<lastRecurrenceTime>,
  @as("RecurringCount") recurringCount: option<recurringCount>,
  @ocaml.doc("<p>Feedback provided by the user about the problem.</p>") @as("Feedback")
  feedback: option<feedback>,
  @ocaml.doc("<p>The name of the resource group affected by the problem.</p>")
  @as("ResourceGroupName")
  resourceGroupName: option<resourceGroupName>,
  @ocaml.doc("<p>A measure of the level of impact of the problem.</p>") @as("SeverityLevel")
  severityLevel: option<severityLevel>,
  @ocaml.doc("<p>The time when the problem ended, in epoch seconds.</p>") @as("EndTime")
  endTime: option<endTime>,
  @ocaml.doc("<p>The time when the problem started, in epoch seconds.</p>") @as("StartTime")
  startTime: option<startTime>,
  @ocaml.doc("<p>The resource affected by the problem.</p>") @as("AffectedResource")
  affectedResource: option<affectedResource>,
  @ocaml.doc("<p>The status of the problem.</p>") @as("Status") status: option<status>,
  @ocaml.doc("<p>A detailed analysis of the problem using machine learning.</p>") @as("Insights")
  insights: option<insights>,
  @ocaml.doc("<p>The name of the problem.</p>") @as("Title") title: option<title>,
  @ocaml.doc("<p>The ID of the problem.</p>") @as("Id") id: option<problemId>,
}
type observationList = array<observation>
type logPatternList = array<logPattern>
type detectedWorkload = Js.Dict.t<workloadMetaData>
type configurationEventList = array<configurationEvent>
type applicationInfoList = array<applicationInfo>
@ocaml.doc("<p>Describes observations related to the problem.</p>")
type relatedObservations = {
  @ocaml.doc("<p>The list of observations related to the problem.</p>") @as("ObservationList")
  observationList: option<observationList>,
}
type problemList = array<problem>
@ocaml.doc("<p>Describes a standalone resource or similarly grouped resources that the application is made
         up of.</p>")
type applicationComponent = {
  @ocaml.doc("<p>
         Workloads detected in the application component. 
      </p>")
  @as("DetectedWorkload")
  detectedWorkload: option<detectedWorkload>,
  @ocaml.doc("<p>Indicates whether the application component is monitored. </p>") @as("Monitor")
  monitor: option<monitor>,
  @ocaml.doc("<p>The stack tier of the application component.</p>") @as("Tier") tier: option<tier>,
  @ocaml.doc("<p>
         The operating system of the component.
      </p>")
  @as("OsType")
  osType: option<osType>,
  @ocaml.doc(
    "<p>The resource type. Supported resource types include EC2 instances, Auto Scaling group, Classic ELB, Application ELB, and SQS Queue.</p>"
  )
  @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>
         If logging is supported for the resource type, indicates whether the component has configured logs to be monitored.
      </p>")
  @as("ComponentRemarks")
  componentRemarks: option<remarks>,
  @ocaml.doc("<p>The name of the component.</p>") @as("ComponentName")
  componentName: option<componentName>,
}
type applicationComponentList = array<applicationComponent>
@ocaml.doc("<fullname>Amazon CloudWatch Application Insights</fullname>
         <p> Amazon CloudWatch Application Insights is a service that
         helps you detect common problems with your applications. It
         enables you to pinpoint the source of issues in your applications (built with technologies
         such as Microsoft IIS, .NET, and Microsoft SQL Server), by providing key insights into
         detected problems.</p>
         <p>After you onboard your application, CloudWatch Application Insights identifies, 
         recommends, and sets up metrics and logs. It continuously analyzes and
         correlates your metrics and logs for unusual behavior to surface actionable problems with
         your application. For example, if your application is slow and unresponsive and leading to
         HTTP 500 errors in your Application Load Balancer (ALB), Application Insights informs you
         that a memory pressure problem with your SQL Server database is occurring. It bases this
         analysis on impactful metrics and log errors. </p>")
module UpdateComponentConfiguration = {
  type t
  type request = {
    @as("AutoConfigEnabled") autoConfigEnabled: option<autoConfigEnabled>,
    @ocaml.doc("<p>The configuration settings of the component. The value is the escaped JSON of the configuration. For
         more information about the JSON format, see <a href=\"https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html\">Working with JSON</a>.
         You can send a request to <code>DescribeComponentConfigurationRecommendation</code> to see the recommended configuration for a component. For the complete
         format of the component configuration file, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/component-config.html\">Component Configuration</a>.</p>")
    @as("ComponentConfiguration")
    componentConfiguration: option<componentConfiguration>,
    @ocaml.doc("<p>The tier of the application component. Supported tiers include <code>DOT_NET_WORKER</code>,
         <code>DOT_NET_WEB</code>, <code>DOT_NET_CORE</code>, <code>SQL_SERVER</code>, and <code>DEFAULT</code>.</p>")
    @as("Tier")
    tier: option<tier>,
    @ocaml.doc("<p>Indicates whether the application component is monitored.</p>") @as("Monitor")
    monitor: option<monitor>,
    @ocaml.doc("<p>The name of the component.</p>") @as("ComponentName")
    componentName: componentName,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "UpdateComponentConfigurationCommand"
  let make = (
    ~componentName,
    ~resourceGroupName,
    ~autoConfigEnabled=?,
    ~componentConfiguration=?,
    ~tier=?,
    ~monitor=?,
    (),
  ) =>
    new({
      autoConfigEnabled: autoConfigEnabled,
      componentConfiguration: componentConfiguration,
      tier: tier,
      monitor: monitor,
      componentName: componentName,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeComponentConfigurationRecommendation = {
  type t
  type request = {
    @ocaml.doc("<p>The tier of the application component. Supported tiers include
         <code>DOT_NET_CORE</code>, <code>DOT_NET_WORKER</code>, <code>DOT_NET_WEB</code>, <code>SQL_SERVER</code>,
         and <code>DEFAULT</code>.</p>")
    @as("Tier")
    tier: tier,
    @ocaml.doc("<p>The name of the component.</p>") @as("ComponentName")
    componentName: componentName,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {
    @ocaml.doc(
      "<p>The recommended configuration settings of the component. The value is the escaped JSON of the configuration.</p>"
    )
    @as("ComponentConfiguration")
    componentConfiguration: option<componentConfiguration>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "DescribeComponentConfigurationRecommendationCommand"
  let make = (~tier, ~componentName, ~resourceGroupName, ()) =>
    new({tier: tier, componentName: componentName, resourceGroupName: resourceGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeComponentConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the component.</p>") @as("ComponentName")
    componentName: componentName,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {
    @ocaml.doc(
      "<p>The configuration settings of the component. The value is the escaped JSON of the configuration.</p>"
    )
    @as("ComponentConfiguration")
    componentConfiguration: option<componentConfiguration>,
    @ocaml.doc("<p>The tier of the application component. Supported tiers include
         <code>DOT_NET_CORE</code>, <code>DOT_NET_WORKER</code>, <code>DOT_NET_WEB</code>,
         <code>SQL_SERVER</code>, and <code>DEFAULT</code>
         </p>")
    @as("Tier")
    tier: option<tier>,
    @ocaml.doc("<p>Indicates whether the application component is monitored.</p>") @as("Monitor")
    monitor: option<monitor>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "DescribeComponentConfigurationCommand"
  let make = (~componentName, ~resourceGroupName, ()) =>
    new({componentName: componentName, resourceGroupName: resourceGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLogPattern = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the log pattern.</p>") @as("PatternName")
    patternName: logPatternName,
    @ocaml.doc("<p>The name of the log pattern set.</p>") @as("PatternSetName")
    patternSetName: logPatternSetName,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "DeleteLogPatternCommand"
  let make = (~patternName, ~patternSetName, ~resourceGroupName, ()) =>
    new({
      patternName: patternName,
      patternSetName: patternSetName,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteComponent = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the component.</p>") @as("ComponentName")
    componentName: customComponentName,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "DeleteComponentCommand"
  let make = (~componentName, ~resourceGroupName, ()) =>
    new({componentName: componentName, resourceGroupName: resourceGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "DeleteApplicationCommand"
  let make = (~resourceGroupName, ()) => new({resourceGroupName: resourceGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateLogPattern = {
  type t
  type request = {
    @ocaml.doc("<p>Rank of the log pattern. Must be a value between <code>1</code> and <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be last to get matched. When you configure custom log patterns from the console, a <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a <code>High</code> severity pattern translates to a <code>250,000</code> rank.
         Rank values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for AWS-provided patterns.
      </p>")
    @as("Rank")
    rank: option<logPatternRank>,
    @ocaml.doc(
      "<p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward lookahead or backreference constructions are not supported.</p>"
    )
    @as("Pattern")
    pattern: option<logPatternRegex>,
    @ocaml.doc("<p>The name of the log pattern.</p>") @as("PatternName")
    patternName: logPatternName,
    @ocaml.doc("<p>The name of the log pattern set.</p>") @as("PatternSetName")
    patternSetName: logPatternSetName,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {
    @ocaml.doc("<p>The successfully created log pattern.</p>") @as("LogPattern")
    logPattern: option<logPattern>,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: option<resourceGroupName>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "UpdateLogPatternCommand"
  let make = (~patternName, ~patternSetName, ~resourceGroupName, ~rank=?, ~pattern=?, ()) =>
    new({
      rank: rank,
      pattern: pattern,
      patternName: patternName,
      patternSetName: patternSetName,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateComponent = {
  type t
  type request = {
    @ocaml.doc("<p>The list of resource ARNs that belong to the component.</p>") @as("ResourceList")
    resourceList: option<resourceList>,
    @ocaml.doc("<p>The new name of the component.</p>") @as("NewComponentName")
    newComponentName: option<customComponentName>,
    @ocaml.doc("<p>The name of the component.</p>") @as("ComponentName")
    componentName: customComponentName,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "UpdateComponentCommand"
  let make = (~componentName, ~resourceGroupName, ~resourceList=?, ~newComponentName=?, ()) =>
    new({
      resourceList: resourceList,
      newComponentName: newComponentName,
      componentName: componentName,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateApplication = {
  type t
  type request = {
    @as("AutoConfigEnabled") autoConfigEnabled: option<autoConfigEnabled>,
    @ocaml.doc("<p>
         Disassociates the SNS topic from the opsItem created for detected problems.</p>")
    @as("RemoveSNSTopic")
    removeSNSTopic: option<removeSNSTopic>,
    @ocaml.doc("<p>
         The SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to
         receive notifications for updates to the opsItem.</p>")
    @as("OpsItemSNSTopicArn")
    opsItemSNSTopicArn: option<opsItemSNSTopicArn>,
    @ocaml.doc("<p>
         Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as <code>instance terminated</code>, <code>failed deployment</code>, and others.
      </p>")
    @as("CWEMonitorEnabled")
    cwemonitorEnabled: option<cwemonitorEnabled>,
    @ocaml.doc("<p>
         When set to <code>true</code>, creates opsItems for any problems detected on an application.
      </p>")
    @as("OpsCenterEnabled")
    opsCenterEnabled: option<opsCenterEnabled>,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {
    @ocaml.doc("<p>Information about the application. </p>") @as("ApplicationInfo")
    applicationInfo: option<applicationInfo>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "UpdateApplicationCommand"
  let make = (
    ~resourceGroupName,
    ~autoConfigEnabled=?,
    ~removeSNSTopic=?,
    ~opsItemSNSTopicArn=?,
    ~cwemonitorEnabled=?,
    ~opsCenterEnabled=?,
    (),
  ) =>
    new({
      autoConfigEnabled: autoConfigEnabled,
      removeSNSTopic: removeSNSTopic,
      opsItemSNSTopicArn: opsItemSNSTopicArn,
      cwemonitorEnabled: cwemonitorEnabled,
      opsCenterEnabled: opsCenterEnabled,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags (tag keys) that you want to remove from the resource. When you specify a tag
         key, the action removes both that key and its associated tag value.</p>
         <p>To remove more than one tag from the application, append the <code>TagKeys</code>
         parameter and argument for each additional tag to remove, separated by an ampersand.
      </p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the application that you want to remove one or more tags from.</p>"
    )
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListLogPatternSets = {
  type t
  type request = {
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. To retrieve the remaining
         results, make another call with the returned <code>NextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<maxEntities>,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {
    @ocaml.doc("<p>The token used to retrieve the next page of results. This value is <code>null</code>
         when there are no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of log pattern sets.</p>") @as("LogPatternSets")
    logPatternSets: option<logPatternSetList>,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: option<resourceGroupName>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "ListLogPatternSetsCommand"
  let make = (~resourceGroupName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, resourceGroupName: resourceGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeObservation = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the observation.</p>") @as("ObservationId")
    observationId: observationId,
  }
  type response = {
    @ocaml.doc("<p>Information about the observation.</p>") @as("Observation")
    observation: option<observation>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "DescribeObservationCommand"
  let make = (~observationId, ()) => new({observationId: observationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLogPattern = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the log pattern.</p>") @as("PatternName")
    patternName: logPatternName,
    @ocaml.doc("<p>The name of the log pattern set.</p>") @as("PatternSetName")
    patternSetName: logPatternSetName,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {
    @ocaml.doc("<p>The successfully created log pattern.</p>") @as("LogPattern")
    logPattern: option<logPattern>,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: option<resourceGroupName>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "DescribeLogPatternCommand"
  let make = (~patternName, ~patternSetName, ~resourceGroupName, ()) =>
    new({
      patternName: patternName,
      patternSetName: patternSetName,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {
    @ocaml.doc("<p>Information about the application.</p>") @as("ApplicationInfo")
    applicationInfo: option<applicationInfo>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "DescribeApplicationCommand"
  let make = (~resourceGroupName, ()) => new({resourceGroupName: resourceGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLogPattern = {
  type t
  type request = {
    @ocaml.doc("<p>Rank of the log pattern. Must be a value between <code>1</code> and <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be last to get matched. When you configure custom log patterns from the console, a <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a <code>High</code> severity pattern translates to a <code>250,000</code> rank.
         Rank values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for AWS-provided patterns.
      </p>")
    @as("Rank")
    rank: logPatternRank,
    @ocaml.doc(
      "<p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward lookahead or backreference constructions are not supported.</p>"
    )
    @as("Pattern")
    pattern: logPatternRegex,
    @ocaml.doc("<p>The name of the log pattern.</p>") @as("PatternName")
    patternName: logPatternName,
    @ocaml.doc("<p>The name of the log pattern set.</p>") @as("PatternSetName")
    patternSetName: logPatternSetName,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: option<resourceGroupName>,
    @ocaml.doc("<p>The successfully created log pattern.</p>") @as("LogPattern")
    logPattern: option<logPattern>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "CreateLogPatternCommand"
  let make = (~rank, ~pattern, ~patternName, ~patternSetName, ~resourceGroupName, ()) =>
    new({
      rank: rank,
      pattern: pattern,
      patternName: patternName,
      patternSetName: patternSetName,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateComponent = {
  type t
  type request = {
    @ocaml.doc("<p>The list of resource ARNs that belong to the component.</p>") @as("ResourceList")
    resourceList: resourceList,
    @ocaml.doc("<p>The name of the component.</p>") @as("ComponentName")
    componentName: customComponentName,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {.}
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "CreateComponentCommand"
  let make = (~resourceList, ~componentName, ~resourceGroupName, ()) =>
    new({
      resourceList: resourceList,
      componentName: componentName,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that to add to the application. A tag consists of a required
         tag key (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum
         length of a tag key is 128 characters. The maximum length of a tag value is 256
         characters.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the application that you want to add one or more tags to.</p>"
    )
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application that you want to retrieve tag
         information for.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>An array that lists all the tags that are associated with the application. Each tag
         consists of a required tag key (<code>Key</code>) and an associated tag value
         (<code>Value</code>).</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLogPatterns = {
  type t
  type request = {
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. To retrieve the remaining
         results, make another call with the returned <code>NextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<maxEntities>,
    @ocaml.doc("<p>The name of the log pattern set.</p>") @as("PatternSetName")
    patternSetName: option<logPatternSetName>,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {
    @ocaml.doc("<p>The token used to retrieve the next page of results. This value is <code>null</code>
         when there are no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of log patterns.</p>") @as("LogPatterns")
    logPatterns: option<logPatternList>,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: option<resourceGroupName>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "ListLogPatternsCommand"
  let make = (~resourceGroupName, ~nextToken=?, ~maxResults=?, ~patternSetName=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      patternSetName: patternSetName,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConfigurationHistory = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>NextToken</code> value returned from a previous paginated <code>ListConfigurationHistory</code> request where
         <code>MaxResults</code> was used and the results exceeded the value of that parameter. Pagination
         continues from the end of the previous results that returned the <code>NextToken</code> value. This
         value is <code>null</code> when there are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p> The maximum number of results returned by <code>ListConfigurationHistory</code> in
         paginated output. When this parameter is used, <code>ListConfigurationHistory</code>
         returns only <code>MaxResults</code> in a single page along with a <code>NextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListConfigurationHistory</code> request with the returned
            <code>NextToken</code> value. If this parameter is not used, then
            <code>ListConfigurationHistory</code> returns all results. </p>")
    @as("MaxResults")
    maxResults: option<maxEntities>,
    @ocaml.doc(
      "<p>The status of the configuration update event. Possible values include INFO, WARN, and ERROR.</p>"
    )
    @as("EventStatus")
    eventStatus: option<configurationEventStatus>,
    @ocaml.doc("<p>The end time of the event.</p>") @as("EndTime") endTime: option<endTime>,
    @ocaml.doc("<p>The start time of the event. </p>") @as("StartTime")
    startTime: option<startTime>,
    @ocaml.doc("<p>Resource group to which the application belongs. </p>") @as("ResourceGroupName")
    resourceGroupName: option<resourceGroupName>,
  }
  type response = {
    @ocaml.doc("<p>The <code>NextToken</code> value to include in a future
            <code>ListConfigurationHistory</code> request. When the results of a
            <code>ListConfigurationHistory</code> request exceed <code>MaxResults</code>, this value
         can be used to retrieve the next page of results. This value is <code>null</code> when
         there are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p> The list of configuration events and their corresponding details. </p>")
    @as("EventList")
    eventList: option<configurationEventList>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "ListConfigurationHistoryCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~eventStatus=?,
    ~endTime=?,
    ~startTime=?,
    ~resourceGroupName=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      eventStatus: eventStatus,
      endTime: endTime,
      startTime: startTime,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplications = {
  type t
  type request = {
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. To retrieve the remaining
         results, make another call with the returned <code>NextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<maxEntities>,
  }
  type response = {
    @ocaml.doc("<p>The token used to retrieve the next page of results. This value is <code>null</code>
         when there are no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of applications.</p>") @as("ApplicationInfoList")
    applicationInfoList: option<applicationInfoList>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "ListApplicationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProblem = {
  type t
  type request = {@ocaml.doc("<p>The ID of the problem.</p>") @as("ProblemId") problemId: problemId}
  type response = {
    @ocaml.doc("<p>Information about the problem. </p>") @as("Problem") problem: option<problem>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "DescribeProblemCommand"
  let make = (~problemId, ()) => new({problemId: problemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplication = {
  type t
  type request = {
    @as("AutoCreate") autoCreate: option<autoCreate>,
    @as("AutoConfigEnabled") autoConfigEnabled: option<autoConfigEnabled>,
    @ocaml.doc("<p>List of tags to add to the application.
         tag key (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum
         length of a tag key is 128 characters. The maximum length of a tag value is 256
         characters.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>
         The SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to
         receive notifications for updates to the opsItem.
      </p>")
    @as("OpsItemSNSTopicArn")
    opsItemSNSTopicArn: option<opsItemSNSTopicArn>,
    @ocaml.doc("<p>
         Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as <code>instance terminated</code>, <code>failed deployment</code>, and others.
      </p>")
    @as("CWEMonitorEnabled")
    cwemonitorEnabled: option<cwemonitorEnabled>,
    @ocaml.doc("<p>
         When set to <code>true</code>, creates opsItems for any problems detected on an application.
      </p>")
    @as("OpsCenterEnabled")
    opsCenterEnabled: option<opsCenterEnabled>,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: option<resourceGroupName>,
  }
  type response = {
    @ocaml.doc("<p>Information about the application.</p>") @as("ApplicationInfo")
    applicationInfo: option<applicationInfo>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "CreateApplicationCommand"
  let make = (
    ~autoCreate=?,
    ~autoConfigEnabled=?,
    ~tags=?,
    ~opsItemSNSTopicArn=?,
    ~cwemonitorEnabled=?,
    ~opsCenterEnabled=?,
    ~resourceGroupName=?,
    (),
  ) =>
    new({
      autoCreate: autoCreate,
      autoConfigEnabled: autoConfigEnabled,
      tags: tags,
      opsItemSNSTopicArn: opsItemSNSTopicArn,
      cwemonitorEnabled: cwemonitorEnabled,
      opsCenterEnabled: opsCenterEnabled,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProblems = {
  type t
  type request = {
    @as("ComponentName") componentName: option<componentName>,
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. To retrieve the remaining
         results, make another call with the returned <code>NextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<maxEntities>,
    @ocaml.doc("<p>The time when the problem ended, in epoch seconds. If not specified, problems within the
         past seven days are returned.</p>")
    @as("EndTime")
    endTime: option<endTime>,
    @ocaml.doc("<p>The time when the problem was detected, in epoch
         seconds. If you don't specify a time frame for the request, problems within the past seven days are returned.</p>")
    @as("StartTime")
    startTime: option<startTime>,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: option<resourceGroupName>,
  }
  type response = {
    @as("ResourceGroupName") resourceGroupName: option<resourceGroupName>,
    @ocaml.doc("<p>The token used to retrieve the next page of results. This value is <code>null</code>
         when there are no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of problems. </p>") @as("ProblemList") problemList: option<problemList>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "ListProblemsCommand"
  let make = (
    ~componentName=?,
    ~nextToken=?,
    ~maxResults=?,
    ~endTime=?,
    ~startTime=?,
    ~resourceGroupName=?,
    (),
  ) =>
    new({
      componentName: componentName,
      nextToken: nextToken,
      maxResults: maxResults,
      endTime: endTime,
      startTime: startTime,
      resourceGroupName: resourceGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProblemObservations = {
  type t
  type request = {@ocaml.doc("<p>The ID of the problem.</p>") @as("ProblemId") problemId: problemId}
  type response = {
    @ocaml.doc("<p>Observations related to the problem.</p>") @as("RelatedObservations")
    relatedObservations: option<relatedObservations>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "DescribeProblemObservationsCommand"
  let make = (~problemId, ()) => new({problemId: problemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeComponent = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the component.</p>") @as("ComponentName")
    componentName: componentName,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {
    @ocaml.doc("<p>The list of resource ARNs that belong to the component.</p>") @as("ResourceList")
    resourceList: option<resourceList>,
    @as("ApplicationComponent") applicationComponent: option<applicationComponent>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "DescribeComponentCommand"
  let make = (~componentName, ~resourceGroupName, ()) =>
    new({componentName: componentName, resourceGroupName: resourceGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListComponents = {
  type t
  type request = {
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. To retrieve the remaining
         results, make another call with the returned <code>NextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<maxEntities>,
    @ocaml.doc("<p>The name of the resource group.</p>") @as("ResourceGroupName")
    resourceGroupName: resourceGroupName,
  }
  type response = {
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of application components.</p>") @as("ApplicationComponentList")
    applicationComponentList: option<applicationComponentList>,
  }
  @module("@aws-sdk/client-applicationinsights") @new
  external new: request => t = "ListComponentsCommand"
  let make = (~resourceGroupName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, resourceGroupName: resourceGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
