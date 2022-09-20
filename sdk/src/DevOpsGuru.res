type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-devops-guru") @new
external createClient: unit => awsServiceClient = "DevOpsGuruClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validationExceptionReason = [
  | @as("PARAMETER_INCONSISTENT_WITH_SERVICE_STATE") #PARAMETER_INCONSISTENT_WITH_SERVICE_STATE
  | @as("INVALID_PARAMETER_COMBINATION") #INVALID_PARAMETER_COMBINATION
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
  | @as("CANNOT_PARSE") #CANNOT_PARSE
  | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION
]
type uuidNextToken = string
type updateResourceCollectionAction = [@as("REMOVE") #REMOVE | @as("ADD") #ADD]
type topicArn = string
type timestamp_ = Js.Date.t
type tagValue = string
type stackName = string
type ssmOpsItemId = string
type serviceName = [
  | @as("SWF") #SWF
  | @as("STEP_FUNCTIONS") #STEP_FUNCTIONS
  | @as("SQS") #SQS
  | @as("SNS") #SNS
  | @as("SAGE_MAKER") #SAGE_MAKER
  | @as("S3") #S3
  | @as("ROUTE_53") #ROUTE_53
  | @as("REDSHIFT") #REDSHIFT
  | @as("RDS") #RDS
  | @as("NETWORK_ELB") #NETWORK_ELB
  | @as("NAT_GATEWAY") #NAT_GATEWAY
  | @as("LAMBDA") #LAMBDA
  | @as("KINESIS") #KINESIS
  | @as("ES") #ES
  | @as("ELB") #ELB
  | @as("ELASTI_CACHE") #ELASTI_CACHE
  | @as("ELASTIC_BEANSTALK") #ELASTIC_BEANSTALK
  | @as("EKS") #EKS
  | @as("ECS") #ECS
  | @as("EC2") #EC2
  | @as("DYNAMO_DB") #DYNAMO_DB
  | @as("CLOUD_FRONT") #CLOUD_FRONT
  | @as("AUTO_SCALING_GROUP") #AUTO_SCALING_GROUP
  | @as("APPLICATION_ELB") #APPLICATION_ELB
  | @as("API_GATEWAY") #API_GATEWAY
]
type searchOrganizationInsightsMaxResults = int
type searchInsightsMaxResults = int
type retryAfterSeconds = int
type resourceType = string
type resourceName = string
type resourceIdType = string
type resourceIdString = string
type resourceHours = float
type resourceCollectionType = [
  | @as("AWS_TAGS") #AWS_TAGS
  | @as("AWS_SERVICE") #AWS_SERVICE
  | @as("AWS_CLOUD_FORMATION") #AWS_CLOUD_FORMATION
]
type resourceArn = string
type recommendationRelatedEventResourceType = string
type recommendationRelatedEventResourceName = string
type recommendationRelatedEventName = string
type recommendationRelatedCloudWatchMetricsSourceNamespace = string
type recommendationRelatedCloudWatchMetricsSourceMetricName = string
type recommendationRelatedAnomalyResourceType = string
type recommendationRelatedAnomalyResourceName = string
type recommendationReason = string
type recommendationName = string
type recommendationLink = string
type recommendationDescription = string
type recommendationCategory = string
type performanceInsightsValueDouble = float
type performanceInsightsStatType = string
type performanceInsightsReferenceName = string
type performanceInsightsMetricUnit = string
type performanceInsightsMetricName = string
type performanceInsightsMetricLimitInteger = int
type performanceInsightsMetricGroup = string
type performanceInsightsMetricFilterValue = string
type performanceInsightsMetricFilterKey = string
type performanceInsightsMetricDisplayName = string
type performanceInsightsMetricDimension = string
type organizationalUnitId = string
type organizationResourceCollectionType = [
  | @as("AWS_TAGS") #AWS_TAGS
  | @as("AWS_ACCOUNT") #AWS_ACCOUNT
  | @as("AWS_SERVICE") #AWS_SERVICE
  | @as("AWS_CLOUD_FORMATION") #AWS_CLOUD_FORMATION
]
type organizationResourceCollectionMaxResults = int
@ocaml.doc("<p> Specifies if DevOps Guru is enabled to create an Amazon Web Services Systems Manager OpsItem for each created
			insight. </p>")
type optInStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type numReactiveInsights = int
type numProactiveInsights = int
type numOpenReactiveInsights = int
type numOpenProactiveInsights = int
type numMetricsAnalyzed = int
type notificationChannelId = string
type metricValue = float
type meanTimeToRecoverInMilliseconds = float
type locale = [
  | @as("ZH_TW") #ZH_TW
  | @as("ZH_CN") #ZH_CN
  | @as("PT_BR") #PT_BR
  | @as("KO_KR") #KO_KR
  | @as("JA_JP") #JA_JP
  | @as("IT_IT") #IT_IT
  | @as("FR_FR") #FR_FR
  | @as("ES_ES") #ES_ES
  | @as("EN_GB") #EN_GB
  | @as("EN_US") #EN_US
  | @as("DE_DE") #DE_DE
]
type listInsightsMaxResults = int
type listEventsMaxResults = int
type listAnomaliesForInsightMaxResults = int
type insightType = [@as("PROACTIVE") #PROACTIVE | @as("REACTIVE") #REACTIVE]
type insightStatus = [@as("CLOSED") #CLOSED | @as("ONGOING") #ONGOING]
type insightSeverity = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type insightName = string
type insightId = string
type insightFeedbackOption = [
  | @as("DATA_INCORRECT") #DATA_INCORRECT
  | @as("DATA_NOISY_ANOMALY") #DATA_NOISY_ANOMALY
  | @as("ALERT_TOO_SENSITIVE") #ALERT_TOO_SENSITIVE
  | @as("RECOMMENDATION_USEFUL") #RECOMMENDATION_USEFUL
  | @as("VALID_COLLECTION") #VALID_COLLECTION
]
type insightDescription = string
type eventSourceOptInStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type eventSource = string
type eventResourceType = string
type eventResourceName = string
type eventResourceArn = string
type eventName = string
type eventId = string
type eventDataSource = [
  | @as("AWS_CODE_DEPLOY") #AWS_CODE_DEPLOY
  | @as("AWS_CLOUD_TRAIL") #AWS_CLOUD_TRAIL
]
type eventClass = [
  | @as("SCHEMA_CHANGE") #SCHEMA_CHANGE
  | @as("CONFIG_CHANGE") #CONFIG_CHANGE
  | @as("SECURITY_CHANGE") #SECURITY_CHANGE
  | @as("DEPLOYMENT") #DEPLOYMENT
  | @as("INFRASTRUCTURE") #INFRASTRUCTURE
]
type errorServiceCodeString = string
type errorQuotaCodeString = string
type errorNameString = string
type errorMessageString = string
type costEstimationStatus = [@as("COMPLETED") #COMPLETED | @as("ONGOING") #ONGOING]
type costEstimationServiceResourceState = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type costEstimationServiceResourceCount = int
type cost = float
type cloudWatchMetricsUnit = string
type cloudWatchMetricsStat = [
  | @as("p50") #P50
  | @as("p90") #P90
  | @as("p99") #P99
  | @as("Maximum") #Maximum
  | @as("Minimum") #Minimum
  | @as("SampleCount") #SampleCount
  | @as("Average") #Average
  | @as("Sum") #Sum
]
type cloudWatchMetricsPeriod = int
type cloudWatchMetricsNamespace = string
type cloudWatchMetricsMetricName = string
type cloudWatchMetricsDimensionValue = string
type cloudWatchMetricsDimensionName = string
type cloudWatchMetricDataStatusCode = [
  | @as("PartialData") #PartialData
  | @as("InternalError") #InternalError
  | @as("Complete") #Complete
]
type clientToken = string
type awsAccountId = string
type appBoundaryKey = string
type anomalyType = [@as("CONTEXTUAL") #CONTEXTUAL | @as("CAUSAL") #CAUSAL]
type anomalyStatus = [@as("CLOSED") #CLOSED | @as("ONGOING") #ONGOING]
type anomalySource = string
type anomalySeverity = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type anomalyName = string
type anomalyLimit = float
type anomalyId = string
type anomalyDescription = string
@ocaml.doc("<p> The field associated with the validation exception. </p>")
type validationExceptionField = {
  @ocaml.doc("<p> The message associated with the validation exception with information to help
			determine its cause. </p>")
  @as("Message")
  message: errorMessageString,
  @ocaml.doc("<p> The name of the field. </p>") @as("Name") name: errorNameString,
}
type updateTagValues = array<tagValue>
type updateStackNames = array<stackName>
@ocaml.doc("<p>A pair that contains metric values at the respective timestamp.</p>")
type timestampMetricValuePair = {
  @ocaml.doc("<p>Value of the anomalous metric data point at respective Timestamp.</p>")
  @as("MetricValue")
  metricValue: option<metricValue>,
  @ocaml.doc("<p>A <code>Timestamp</code> that specifies the time the event occurred. </p>")
  @as("Timestamp")
  timestamp_: option<timestamp_>,
}
type tagValues = array<tagValue>
@ocaml.doc("<p> A time range used to specify when the behavior of an insight or anomaly started.
		</p>")
type startTimeRange = {
  @ocaml.doc("<p> The end time of the time range. </p>") @as("ToTime") toTime: option<timestamp_>,
  @ocaml.doc("<p> The start time of the time range. </p>") @as("FromTime")
  fromTime: option<timestamp_>,
}
type stackNames = array<stackName>
@ocaml.doc("<p> Contains the Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic. </p> 
         <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission 
				to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. 
				For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html\">Permissions 
				for cross account Amazon SNS topics</a>.</p>
				     <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions 
				to the CMK. For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html\">Permissions for 
				Amazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>")
type snsChannelConfig = {
  @ocaml.doc(
    "<p> The Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic. </p>"
  )
  @as("TopicArn")
  topicArn: option<topicArn>,
}
@ocaml.doc("<p>An object that contains information about the estimated monthly cost to analyze an
			Amazon Web Services resource. For more information, 
			see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html\">Estimate your 
			Amazon DevOps Guru costs</a> and 
			<a href=\"http://aws.amazon.com/devops-guru/pricing/\">Amazon DevOps Guru pricing</a>.</p>")
type serviceResourceCost = {
  @ocaml.doc("<p>The total estimated monthly cost to analyze the active resources for this
			resource.</p>")
  @as("Cost")
  cost: option<cost>,
  @ocaml.doc("<p>The price per hour to analyze the resources in the service.
			For more information, 
			see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html\">Estimate your 
			Amazon DevOps Guru costs</a> and 
			<a href=\"http://aws.amazon.com/devops-guru/pricing/\">Amazon DevOps Guru pricing</a>.</p>")
  @as("UnitCost")
  unitCost: option<cost>,
  @ocaml.doc("<p>The number of active resources analyzed for this service to create a monthly cost
			estimate.</p>")
  @as("Count")
  count: option<costEstimationServiceResourceCount>,
  @ocaml.doc("<p>The state of the resource. The resource is <code>ACTIVE</code> if it produces metrics,
			events, or logs within an hour, otherwise it is <code>INACTIVE</code>. You pay for the
			number of active Amazon Web Services resource hours analyzed for each resource. Inactive resources are
			not charged. </p>")
  @as("State")
  state: option<costEstimationServiceResourceState>,
  @ocaml.doc("<p>The type of the Amazon Web Services resource.</p>") @as("Type")
  type_: option<resourceType>,
}
type serviceNames = array<serviceName>
@ocaml.doc("<p>Contains the number of open proactive and reactive insights in an analyzed Amazon Web Services
			service.</p>")
type serviceInsightHealth = {
  @ocaml.doc("<p>The number of open reactive insights in the Amazon Web Services service</p>")
  @as("OpenReactiveInsights")
  openReactiveInsights: option<numOpenReactiveInsights>,
  @ocaml.doc("<p>The number of open proactive insights in the Amazon Web Services service</p>")
  @as("OpenProactiveInsights")
  openProactiveInsights: option<numOpenProactiveInsights>,
}
type searchInsightsAccountIdList = array<awsAccountId>
@ocaml.doc("<p> Information about an Amazon Web Services resource that emitted and event that is related to a
			recommendation in an insight. </p>")
type recommendationRelatedEventResource = {
  @ocaml.doc("<p> The type of the resource that emitted the event. This corresponds to the
				<code>Type</code> field in an <code>EventResource</code> object. </p>")
  @as("Type")
  type_: option<recommendationRelatedEventResourceType>,
  @ocaml.doc("<p> The name of the resource that emitted the event. This corresponds to the
				<code>Name</code> field in an <code>EventResource</code> object. </p>")
  @as("Name")
  name: option<recommendationRelatedEventResourceName>,
}
@ocaml.doc("<p> Information about an Amazon CloudWatch metric that is analyzed by DevOps Guru. It is one of many
			analyzed metrics that are used to generate insights. </p>")
type recommendationRelatedCloudWatchMetricsSourceDetail = {
  @ocaml.doc(
    "<p>The namespace of the CloudWatch metric. A namespace is a container for CloudWatch metrics.</p>"
  )
  @as("Namespace")
  namespace: option<recommendationRelatedCloudWatchMetricsSourceNamespace>,
  @ocaml.doc("<p>The name of the CloudWatch metric.</p>") @as("MetricName")
  metricName: option<recommendationRelatedCloudWatchMetricsSourceMetricName>,
}
@ocaml.doc(
  "<p> Information about a resource in which DevOps Guru detected anomalous behavior. </p>"
)
type recommendationRelatedAnomalyResource = {
  @ocaml.doc("<p> The type of the resource. Resource types take the same form that is used by Amazon Web Services CloudFormation
			resource type identifiers, <code>service-provider::service-name::data-type-name</code>.
			For example, <code>AWS::RDS::DBCluster</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">Amazon Web Services
				resource and property types reference</a> in the <i>Amazon Web Services CloudFormation User
				Guide</i>.</p>")
  @as("Type")
  type_: option<recommendationRelatedAnomalyResourceType>,
  @ocaml.doc("<p> The name of the resource. </p>") @as("Name")
  name: option<recommendationRelatedAnomalyResourceName>,
}
@ocaml.doc("<p> The time range during which anomalous behavior in a proactive anomaly or an insight
			is expected to occur. </p>")
type predictionTimeRange = {
  @ocaml.doc("<p> The time when the behavior in a proactive insight is expected to end. </p>")
  @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p> The time range during which a metric limit is expected to be exceeded. This applies
			to proactive insights only. </p>")
  @as("StartTime")
  startTime: timestamp_,
}
@ocaml.doc("<p>A statistic in a Performance Insights collection.</p>")
type performanceInsightsStat = {
  @ocaml.doc("<p>The value of the statistic.</p>") @as("Value")
  value: option<performanceInsightsValueDouble>,
  @ocaml.doc("<p>The statistic type.</p>") @as("Type") type_: option<performanceInsightsStatType>,
}
@ocaml.doc("<p>A reference value to compare Performance Insights metrics against to determine if the metrics
			demonstrate anomalous behavior.</p>")
type performanceInsightsReferenceScalar = {
  @ocaml.doc("<p>The reference value.</p>") @as("Value")
  value: option<performanceInsightsValueDouble>,
}
type performanceInsightsMetricFilterMap = Js.Dict.t<performanceInsightsMetricFilterValue>
type performanceInsightsMetricDimensions = array<performanceInsightsMetricDimension>
type organizationalUnitIdList = array<organizationalUnitId>
@ocaml.doc("<p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager
			OpsCenter for each created insight. </p>")
type opsCenterIntegrationConfig = {
  @ocaml.doc("<p> Specifies if DevOps Guru is enabled to create an Amazon Web Services Systems Manager OpsItem for each created
			insight. </p>")
  @as("OptInStatus")
  optInStatus: option<optInStatus>,
}
@ocaml.doc("<p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager
			OpsCenter for each created insight. </p>")
type opsCenterIntegration = {
  @ocaml.doc("<p> Specifies if DevOps Guru is enabled to create an Amazon Web Services Systems Manager OpsItem for each created
			insight. </p>")
  @as("OptInStatus")
  optInStatus: option<optInStatus>,
}
type listInsightsOrganizationalUnitIdList = array<organizationalUnitId>
@ocaml.doc("<p> Used to filter for insights that have the status <code>ONGOING</code>. </p>")
type listInsightsOngoingStatusFilter = {
  @ocaml.doc("<p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
		</p>")
  @as("Type")
  type_: insightType,
}
type listInsightsAccountIdList = array<awsAccountId>
@ocaml.doc("<p> A time ranged that specifies when the observed behavior in an insight started and
			ended. </p>")
type insightTimeRange = {
  @ocaml.doc("<p> The time when the behavior described in an insight ended. </p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p> The time when the behavior described in an insight started. </p>")
  @as("StartTime")
  startTime: timestamp_,
}
type insightStatuses = array<insightStatus>
type insightSeverities = array<insightSeverity>
@ocaml.doc("<p> Information about the number of open reactive and proactive insights that can be used
			to gauge the health of your system. </p>")
type insightHealth = {
  @ocaml.doc("<p> The Meant Time to Recover (MTTR) for the insight. </p>")
  @as("MeanTimeToRecoverInMilliseconds")
  meanTimeToRecoverInMilliseconds: option<meanTimeToRecoverInMilliseconds>,
  @ocaml.doc("<p> The number of open reactive insights. </p>") @as("OpenReactiveInsights")
  openReactiveInsights: option<numOpenReactiveInsights>,
  @ocaml.doc("<p> The number of open proactive insights. </p>") @as("OpenProactiveInsights")
  openProactiveInsights: option<numOpenProactiveInsights>,
}
@ocaml.doc("<p> Information about insight feedback received from a customer. </p>")
type insightFeedback = {
  @ocaml.doc("<p> The feedback provided by the customer. </p>") @as("Feedback")
  feedback: option<insightFeedbackOption>,
  @ocaml.doc("<p> The insight feedback ID. </p>") @as("Id") id: option<insightId>,
}
@ocaml.doc("<p> The time range during which an Amazon Web Services event occurred. Amazon Web Services resource events and
			metrics are analyzed by DevOps Guru to find anomalous behavior and provide recommendations to
			improve your operational solutions. </p>")
type eventTimeRange = {
  @ocaml.doc("<p> The time when the event ended. </p>") @as("ToTime") toTime: timestamp_,
  @ocaml.doc("<p> The time when the event started. </p>") @as("FromTime") fromTime: timestamp_,
}
@ocaml.doc("<p> The Amazon Web Services resource that emitted an event. Amazon Web Services resource events and metrics are
			analyzed by DevOps Guru to find anomalous behavior and provide recommendations to improve your
			operational solutions. </p>")
type eventResource = {
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the resource that emitted an event. </p>")
  @as("Arn")
  arn: option<eventResourceArn>,
  @ocaml.doc("<p> The name of the resource that emitted an event. </p>") @as("Name")
  name: option<eventResourceName>,
  @ocaml.doc("<p> The type of resource that emitted an event. </p>") @as("Type")
  type_: option<eventResourceType>,
}
@ocaml.doc("<p> A range of time that specifies when anomalous behavior in an anomaly or insight
			ended. </p>")
type endTimeRange = {
  @ocaml.doc("<p> The latest end time in the time range. </p>") @as("ToTime")
  toTime: option<timestamp_>,
  @ocaml.doc("<p> The earliest end time in the time range. </p>") @as("FromTime")
  fromTime: option<timestamp_>,
}
@ocaml.doc("<p>The time range of a cost estimation.</p>")
type costEstimationTimeRange = {
  @ocaml.doc("<p>The end time of the cost estimation.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The start time of the cost estimation.</p>") @as("StartTime")
  startTime: option<timestamp_>,
}
type costEstimationTagValues = array<tagValue>
type costEstimationStackNames = array<stackName>
@ocaml.doc("<p> The dimension of am Amazon CloudWatch metric that is used when DevOps Guru analyzes the resources in
			your account for operational problems and anomalous behavior. A dimension is a
			name/value pair that is part of the identity of a metric. A metric can have up to 10
			dimensions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension\">Dimensions</a> in the <i>Amazon CloudWatch User Guide</i>. </p>")
type cloudWatchMetricsDimension = {
  @ocaml.doc("<p> The value of the CloudWatch dimension. </p>") @as("Value")
  value: option<cloudWatchMetricsDimensionValue>,
  @ocaml.doc("<p> The name of the CloudWatch dimension. </p>") @as("Name")
  name: option<cloudWatchMetricsDimensionName>,
}
type associatedResourceArns = array<resourceArn>
@ocaml.doc("<p> A time range that specifies when the observed unusual behavior in an anomaly started
			and ended. This is different from <code>AnomalyReportedTimeRange</code>, which specifies
			the time range when DevOps Guru opens and then closes an anomaly. </p>")
type anomalyTimeRange = {
  @ocaml.doc("<p> The time when the anomalous behavior ended. </p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p> The time when the anomalous behavior started. </p>") @as("StartTime")
  startTime: timestamp_,
}
@ocaml.doc(
  "<p>Metadata about an anomaly. The anomaly is detected using analysis of the metric data  over a period of time</p>"
)
type anomalySourceMetadata = {
  @ocaml.doc("<p>The anomaly's resource type.</p>") @as("SourceResourceType")
  sourceResourceType: option<resourceType>,
  @ocaml.doc("<p>The name of the anomaly's resource.</p>") @as("SourceResourceName")
  sourceResourceName: option<resourceName>,
  @ocaml.doc("<p>The source of the anomaly.</p>") @as("Source") source: option<anomalySource>,
}
@ocaml.doc("<p>The Amazon Web Services resources in which DevOps Guru detected unusual behavior that resulted in the
			generation of an anomaly. When DevOps Guru detects multiple related anomalies, it creates and
			insight with details about the anomalous behavior and suggestions about how to correct
			the problem.</p>")
type anomalyResource = {
  @ocaml.doc("<p>The type of the Amazon Web Services resource.</p>") @as("Type")
  type_: option<resourceType>,
  @ocaml.doc("<p>The name of the Amazon Web Services resource.</p>") @as("Name")
  name: option<resourceName>,
}
@ocaml.doc("<p> A time range that specifies when DevOps Guru opens and then closes an anomaly. This
			is different from <code>AnomalyTimeRange</code>, which specifies the time range when
			DevOps Guru actually observes the anomalous behavior. </p>")
type anomalyReportedTimeRange = {
  @ocaml.doc("<p> The time when an anomaly is closed. </p>") @as("CloseTime")
  closeTime: option<timestamp_>,
  @ocaml.doc("<p> The time when an anomaly is opened. </p>") @as("OpenTime") openTime: timestamp_,
}
@ocaml.doc("<p>Information about your account's integration with Amazon CodeGuru Profiler.</p>")
type amazonCodeGuruProfilerIntegration = {
  @ocaml.doc("<p>The status of the CodeGuru Profiler integration.</p>") @as("Status")
  status: option<eventSourceOptInStatus>,
}
@ocaml.doc("<p> Information about the number of open reactive and proactive insights that can be used
			to gauge the health of your system. </p>")
type accountInsightHealth = {
  @ocaml.doc("<p>An integer that specifies the number of open reactive insights in your Amazon Web Services
			account.</p>")
  @as("OpenReactiveInsights")
  openReactiveInsights: option<numOpenReactiveInsights>,
  @ocaml.doc("<p>An integer that specifies the number of open proactive insights in your Amazon Web Services
			account.</p>")
  @as("OpenProactiveInsights")
  openProactiveInsights: option<numOpenProactiveInsights>,
}
type accountIdList = array<awsAccountId>
@ocaml.doc("<p> An array of fields that are associated with the validation exception. </p>")
type validationExceptionFields = array<validationExceptionField>
@ocaml.doc("<p>A new collection of Amazon Web Services resources that are defined by an Amazon Web Services tag or tag
			<i>key</i>/<i>value</i> pair.</p>")
type updateTagCollectionFilter = {
  @ocaml.doc("<p>The values in an Amazon Web Services tag collection.</p> 
         <p>The tag's <i>value</i> is an optional field used to associate a string with 
					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
   				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. 
   				Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>")
  @as("TagValues")
  tagValues: updateTagValues,
  @ocaml.doc("<p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that 
      	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make 
      up your DevOps Guru application and analysis boundary.</p>
         <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
  @as("AppBoundaryKey")
  appBoundaryKey: appBoundaryKey,
}
@ocaml.doc("<p> Information about updating the integration status of an Amazon Web Services service, such as
			Amazon Web Services Systems Manager, with DevOps Guru. </p>")
type updateServiceIntegrationConfig = {
  @as("OpsCenter") opsCenter: option<opsCenterIntegrationConfig>,
}
@ocaml.doc("<p> Contains the names of Amazon Web Services CloudFormation stacks used to update a collection of stacks.
			You can specify up to 500 Amazon Web Services CloudFormation stacks.</p>")
type updateCloudFormationCollectionFilter = {
  @ocaml.doc("<p> An array of the names of the Amazon Web Services CloudFormation stacks to update. You can specify up to 500 Amazon Web Services CloudFormation stacks.
		</p>")
  @as("StackNames")
  stackNames: option<updateStackNames>,
}
type timestampMetricValuePairList = array<timestampMetricValuePair>
@ocaml.doc("<p> Information about the health of Amazon Web Services resources in your account that are specified by
			an Amazon Web Services tag <i>key</i>. </p>")
type tagHealth = {
  @ocaml.doc("<p>Information about the health of the Amazon Web Services resources in your account that are specified
			by an Amazon Web Services tag, including the number of open proactive, open reactive insights, and the
			Mean Time to Recover (MTTR) of closed insights. </p>")
  @as("Insight")
  insight: option<insightHealth>,
  @ocaml.doc("<p>The value in an Amazon Web Services tag.</p> 
         <p>The tag's <i>value</i> is an optional field used to associate a string with 
					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
   				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. 
   				Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>")
  @as("TagValue")
  tagValue: option<tagValue>,
  @ocaml.doc("<p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that 
      	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make 
      up your DevOps Guru application and analysis boundary.</p>
         <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
  @as("AppBoundaryKey")
  appBoundaryKey: option<appBoundaryKey>,
}
@ocaml.doc("<p>Information about a collection of Amazon Web Services resources that are identified by an Amazon Web Services tag.
			This collection of resources is used to create a monthly cost estimate for DevOps Guru to
			analyze Amazon Web Services resources. The maximum number of tags you can specify for a cost estimate
			is one. The estimate created is for the cost to analyze the Amazon Web Services resources defined by
			the tag. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html\">Stacks</a> in the
				<i>Amazon Web Services CloudFormation User Guide</i>.</p>")
type tagCostEstimationResourceCollectionFilter = {
  @ocaml.doc("<p>The values in an Amazon Web Services tag collection.</p> 
         <p>The tag's <i>value</i> is an optional field used to associate a string with 
					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
   				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. 
   				Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>")
  @as("TagValues")
  tagValues: costEstimationTagValues,
  @ocaml.doc("<p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that 
      	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make 
      up your DevOps Guru application and analysis boundary.</p>
         <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
  @as("AppBoundaryKey")
  appBoundaryKey: appBoundaryKey,
}
@ocaml.doc("<p>A collection of Amazon Web Services tags used to filter insights. This is used to return insights
			generated from only resources that contain the tags in the tag collection.</p>")
type tagCollectionFilter = {
  @ocaml.doc("<p>The values in an Amazon Web Services tag collection.</p> 
         <p>The tag's <i>value</i> is an optional field used to associate a string with 
					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
   				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. 
   				Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>")
  @as("TagValues")
  tagValues: tagValues,
  @ocaml.doc("<p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that 
      	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make 
      up your DevOps Guru application and analysis boundary.</p>
         <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
  @as("AppBoundaryKey")
  appBoundaryKey: appBoundaryKey,
}
@ocaml.doc("<p>A collection of Amazon Web Services stags.</p> 
         <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
   		tagging, so you can assign the same tag to resources from different services to indicate
   		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
   		table resource that you assign to an Lambda function. For more information about
   		using tags, see the <a href=\"https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf\">Tagging
   			best practices</a> whitepaper. </p>
   	     <p>Each Amazon Web Services tag has two parts. </p>
   	     <ul>
            <li>
   			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
   				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
   				<i>keys</i> are case-sensitive.</p>
   		       </li>
            <li>
   			         <p>An optional field known as a tag <i>value</i> (for example,
   				<code>111122223333</code>, <code>Production</code>, or a team
   				name). Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive.</p>
   		       </li>
         </ul>
   	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
   	     <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
type tagCollection = {
  @ocaml.doc("<p>The values in an Amazon Web Services tag collection.</p> 
         <p>The tag's <i>value</i> is an optional field used to associate a string with 
					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
   				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair. 
   				Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>")
  @as("TagValues")
  tagValues: tagValues,
  @ocaml.doc("<p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that 
      	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make 
      up your DevOps Guru application and analysis boundary.</p>
         <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
  @as("AppBoundaryKey")
  appBoundaryKey: appBoundaryKey,
}
type serviceResourceCosts = array<serviceResourceCost>
@ocaml.doc("<p> Information about the integration of DevOps Guru with another Amazon Web Services service, such as
			Amazon Web Services Systems Manager. </p>")
type serviceIntegrationConfig = {
  @ocaml.doc("<p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager
			OpsCenter for each created insight. </p>")
  @as("OpsCenter")
  opsCenter: option<opsCenterIntegration>,
}
@ocaml.doc("<p>Represents the health of an Amazon Web Services service.</p>")
type serviceHealth = {
  @ocaml.doc("<p>Represents the health of an Amazon Web Services service. This is a <code>ServiceInsightHealth</code>
			that contains the number of open proactive and reactive insights for this
			service.</p>")
  @as("Insight")
  insight: option<serviceInsightHealth>,
  @ocaml.doc("<p>The name of the Amazon Web Services service.</p>") @as("ServiceName")
  serviceName: option<serviceName>,
}
@ocaml.doc("<p>A collection of the names of Amazon Web Services services.</p>")
type serviceCollection = {
  @ocaml.doc(
    "<p>An array of strings that each specifies the name of an Amazon Web Services service.</p>"
  )
  @as("ServiceNames")
  serviceNames: option<serviceNames>,
}
type recommendationRelatedEventResources = array<recommendationRelatedEventResource>
type recommendationRelatedCloudWatchMetricsSourceDetails = array<
  recommendationRelatedCloudWatchMetricsSourceDetail,
>
type recommendationRelatedAnomalyResources = array<recommendationRelatedAnomalyResource>
type performanceInsightsStats = array<performanceInsightsStat>
@ocaml.doc("<p>A logical grouping of Performance Insights metrics for a related subject area. For example, the
				<code>db.sql</code> dimension group consists of the following dimensions:
				<code>db.sql.id</code>, <code>db.sql.db_id</code>, <code>db.sql.statement</code>,
			and <code>db.sql.tokenized_id</code>.</p>
		       <note>
			         <p>Each response element returns a maximum of 500 bytes. For larger elements, such as
				SQL statements, only the first 500 bytes are returned.</p>
		       </note> 
         <p>Amazon RDS Performance Insights enables you to monitor and explore different 
   		dimensions of database load based on data captured from a running DB instance. 
   		DB load is measured as average active sessions. Performance Insights provides the 
   		data to API consumers as a two-dimensional time-series dataset. The time dimension 
   		provides DB load data for each time point in the queried time range. Each time point 
   		decomposes overall load in relation to the requested dimensions, measured at that 
   		time point. Examples include SQL, Wait event, User, and Host. </p>
   	
   	     <ul>
            <li>
   			         <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html\"> Amazon Aurora User Guide</a>.
   			</p>
   		       </li>
            <li>
   			         <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\"> Amazon RDS User Guide</a>.
   			</p>
   		       </li>
         </ul>")
type performanceInsightsMetricDimensionGroup = {
  @ocaml.doc("<p>The maximum number of items to fetch for this dimension group.</p>") @as("Limit")
  limit: option<performanceInsightsMetricLimitInteger>,
  @ocaml.doc("<p>A list of specific dimensions from a dimension group. If this parameter is not
			present, then it signifies that all of the dimensions in the group were requested or are
			present in the response.</p>
		       <p>Valid values for elements in the <code>Dimensions</code> array are:</p>

		       <ul>
            <li>
				           <p>
					             <code>db.application.name</code> - The name of the application that is connected
					to the database (only Aurora PostgreSQL and RDS PostgreSQL)</p>
			         </li>
            <li>
				           <p>
					             <code>db.host.id</code> - The host ID of the connected client (all
					engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.host.name</code> - The host name of the connected client (all
					engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.name</code> - The name of the database to which the client is connected
					(only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora MySQL, Amazon RDS MySQL, and MariaDB)</p>
			         </li>
            <li>
				           <p>
					             <code>db.session_type.name</code> - The type of the current session (only Aurora
					PostgreSQL and RDS PostgreSQL)</p>
			         </li>
            <li>
				           <p>
					             <code>db.sql.id</code> - The SQL ID generated by Performance Insights (all engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.sql.db_id</code> - The SQL ID generated by the database (all
					engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.sql.statement</code> - The SQL text that is being executed (all
					engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.sql.tokenized_id</code>
				           </p>
			         </li>
            <li>
				           <p>
					             <code>db.sql_tokenized.id</code> - The SQL digest ID generated by Performance Insights (all
					engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.sql_tokenized.db_id</code> - SQL digest ID generated by the database
					(all engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.sql_tokenized.statement</code> - The SQL digest text (all
					engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.user.id</code> - The ID of the user logged in to the database (all
					engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.user.name</code> - The name of the user logged in to the database (all
					engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.wait_event.name</code> - The event for which the backend is waiting
					(all engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.wait_event.type</code> - The type of event for which the backend is
					waiting (all engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.wait_event_type.name</code> - The name of the event type for which the
					backend is waiting (all engines)</p>
			         </li>
         </ul>")
  @as("Dimensions")
  dimensions: option<performanceInsightsMetricDimensions>,
  @ocaml.doc("<p>The name of the dimension group. Its valid values are:</p>

		       <ul>
            <li>
				           <p>
					             <code>db</code> - The name of the database to which the client is connected
					(only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora MySQL, Amazon RDS MySQL, and MariaDB)</p>
			         </li>
            <li>
				           <p>
					             <code>db.application</code> - The name of the application that is connected to
					the database (only Aurora PostgreSQL and RDS PostgreSQL)</p>
			         </li>
            <li>
				           <p>
					             <code>db.host</code> - The host name of the connected client (all
					engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.session_type</code> - The type of the current session (only Aurora PostgreSQL
					and RDS PostgreSQL)</p>
			         </li>
            <li>
				           <p>
					             <code>db.sql</code> - The SQL that is currently executing (all engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.sql_tokenized</code> - The SQL digest (all engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.wait_event</code> - The event for which the database backend is waiting
					(all engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.wait_event_type</code> - The type of event for which the database
					backend is waiting (all engines)</p>
			         </li>
            <li>
				           <p>
					             <code>db.user</code> - The user logged in to the database (all engines)</p>
			         </li>
         </ul>")
  @as("Group")
  group: option<performanceInsightsMetricGroup>,
}
@ocaml.doc("<p> Information about notification channels you have configured with DevOps Guru.
			The one 
      	supported notification channel is Amazon Simple Notification Service (Amazon SNS).</p>")
type notificationChannelConfig = {
  @ocaml.doc("<p> Information about a notification channel configured in DevOps Guru to send notifications
			when insights are created. </p> 
         <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission 
				to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. 
				For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html\">Permissions 
				for cross account Amazon SNS topics</a>.</p>
				     <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions 
				to the CMK. For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html\">Permissions for 
				Amazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>")
  @as("Sns")
  sns: snsChannelConfig,
}
@ocaml.doc("<p> Used to filter for insights that have the status <code>CLOSED</code>. </p>")
type listInsightsClosedStatusFilter = {
  @ocaml.doc("<p> A time range used to specify when the behavior of the filtered insights ended.
		</p>")
  @as("EndTimeRange")
  endTimeRange: endTimeRange,
  @ocaml.doc("<p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
		</p>")
  @as("Type")
  type_: insightType,
}
@ocaml.doc("<p> Used to filter for insights that have any status. </p>")
type listInsightsAnyStatusFilter = {
  @ocaml.doc("<p> A time range used to specify when the behavior of the filtered insights started.
		</p>")
  @as("StartTimeRange")
  startTimeRange: startTimeRange,
  @ocaml.doc("<p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
		</p>")
  @as("Type")
  type_: insightType,
}
@ocaml.doc("<p>Describes the event sources.</p>")
type eventSourcesConfig = {
  @ocaml.doc("<p></p>") @as("AmazonCodeGuruProfiler")
  amazonCodeGuruProfiler: option<amazonCodeGuruProfilerIntegration>,
}
type eventResources = array<eventResource>
type cloudWatchMetricsDimensions = array<cloudWatchMetricsDimension>
@ocaml.doc("<p> Information about the health of Amazon Web Services resources in your account that are specified by
			an Amazon Web Services CloudFormation stack. </p>")
type cloudFormationHealth = {
  @ocaml.doc("<p> Information about the health of the Amazon Web Services resources in your account that are
			specified by an Amazon Web Services CloudFormation stack, including the number of open proactive, open reactive
			insights, and the Mean Time to Recover (MTTR) of closed insights. </p>")
  @as("Insight")
  insight: option<insightHealth>,
  @ocaml.doc("<p> The name of the CloudFormation stack. </p>") @as("StackName")
  stackName: option<stackName>,
}
@ocaml.doc("<p>Information about an Amazon Web Services CloudFormation stack used to create a monthly cost estimate
			for DevOps Guru to analyze Amazon Web Services resources. The maximum number of stacks you can specify for a
			cost estimate is one. The estimate created is for the cost to analyze the Amazon Web Services
			resources defined by the stack. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html\">Stacks</a> in the
				<i>Amazon Web Services CloudFormation User Guide</i>.</p>")
type cloudFormationCostEstimationResourceCollectionFilter = {
  @ocaml.doc("<p>An array of CloudFormation stack names. Its size is fixed at 1 item.</p>")
  @as("StackNames")
  stackNames: option<costEstimationStackNames>,
}
@ocaml.doc("<p> Information about Amazon Web Services CloudFormation stacks. You can use up to 500
			stacks to specify which Amazon Web Services resources in your account to analyze. For more
			information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html\">Stacks</a> in the
				<i>Amazon Web Services CloudFormation User Guide</i>. </p>")
type cloudFormationCollectionFilter = {
  @ocaml.doc("<p> An array of CloudFormation stack names. </p>") @as("StackNames")
  stackNames: option<stackNames>,
}
@ocaml.doc("<p> Information about Amazon Web Services CloudFormation stacks. You can use up to 500
			stacks to specify which Amazon Web Services resources in your account to analyze. For more
			information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html\">Stacks</a> in the
				<i>Amazon Web Services CloudFormation User Guide</i>. </p>")
type cloudFormationCollection = {
  @ocaml.doc("<p> An array of CloudFormation stack names. </p>") @as("StackNames")
  stackNames: option<stackNames>,
}
type anomalyResources = array<anomalyResource>
@ocaml.doc("<p> Returns the number of open reactive insights, the number of open proactive insights,
			and the number of metrics analyzed in your Amazon Web Services account. Use these numbers to gauge the
			health of operations in your Amazon Web Services account. </p>")
type accountHealth = {
  @ocaml.doc("<p> Information about the health of the Amazon Web Services resources in your account, including the
			number of open proactive, open reactive insights, and the Mean Time to Recover (MTTR) of closed insights.
		</p>")
  @as("Insight")
  insight: option<accountInsightHealth>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account. </p>") @as("AccountId")
  accountId: option<awsAccountId>,
}
type updateTagCollectionFilters = array<updateTagCollectionFilter>
type tagHealths = array<tagHealth>
type tagCostEstimationResourceCollectionFilters = array<tagCostEstimationResourceCollectionFilter>
type tagCollections = array<tagCollection>
type tagCollectionFilters = array<tagCollectionFilter>
type serviceHealths = array<serviceHealth>
@ocaml.doc("<p> Information about an event that is related to a recommendation. </p>")
type recommendationRelatedEvent = {
  @ocaml.doc("<p> A <code>ResourceCollection</code> object that contains arrays of the names of Amazon Web Services
			CloudFormation stacks. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>")
  @as("Resources")
  resources: option<recommendationRelatedEventResources>,
  @ocaml.doc("<p> The name of the event. This corresponds to the <code>Name</code> field in an
				<code>Event</code> object. </p>")
  @as("Name")
  name: option<recommendationRelatedEventName>,
}
@ocaml.doc("<p> Contains an array of <code>RecommendationRelatedCloudWatchMetricsSourceDetail</code>
			objects that contain the name and namespace of an Amazon CloudWatch metric. </p>")
type recommendationRelatedAnomalySourceDetail = {
  @ocaml.doc("<p> An array of <code>CloudWatchMetricsDetail</code> objects that contains information
			about the analyzed metrics that displayed anomalous behavior. </p>")
  @as("CloudWatchMetrics")
  cloudWatchMetrics: option<recommendationRelatedCloudWatchMetricsSourceDetails>,
}
@ocaml.doc("<p>A single query to be processed. Use these parameters to query the Performance Insights
				<code>GetResourceMetrics</code> API to retrieve the metrics for an anomaly. For more
			information, see <code>
               <a href=\"https://docs.aws.amazon.com/performance-insights/latest/APIReference/API_GetResourceMetrics.html\">GetResourceMetrics</a>
            </code> in the <i>Amazon RDS Performance Insights API
				Reference</i>.</p> 
         <p>Amazon RDS Performance Insights enables you to monitor and explore different 
   		dimensions of database load based on data captured from a running DB instance. 
   		DB load is measured as average active sessions. Performance Insights provides the 
   		data to API consumers as a two-dimensional time-series dataset. The time dimension 
   		provides DB load data for each time point in the queried time range. Each time point 
   		decomposes overall load in relation to the requested dimensions, measured at that 
   		time point. Examples include SQL, Wait event, User, and Host. </p>
   	
   	     <ul>
            <li>
   			         <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html\"> Amazon Aurora User Guide</a>.
   			</p>
   		       </li>
            <li>
   			         <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\"> Amazon RDS User Guide</a>.
   			</p>
   		       </li>
         </ul>")
type performanceInsightsMetricQuery = {
  @ocaml.doc("<p>One or more filters to apply to a Performance Insights <code>GetResourceMetrics</code> API query.
			Restrictions:</p>
		       <ul>
            <li>
				           <p>Any number of filters by the same dimension, as specified in the
						<code>GroupBy</code> parameter.</p>
			         </li>
            <li>
				           <p>A single filter for any other dimension in this dimension group.</p>
			         </li>
         </ul>")
  @as("Filter")
  filter: option<performanceInsightsMetricFilterMap>,
  @ocaml.doc("<p>The specification for how to aggregate the data points from a Performance Insights
				<code>GetResourceMetrics</code> API query. The Performance Insights query returns all of the
			dimensions within that group, unless you provide the names of specific dimensions within
			that group. You can also request that Performance Insights return a limited number of values for a
			dimension.</p>")
  @as("GroupBy")
  groupBy: option<performanceInsightsMetricDimensionGroup>,
  @ocaml.doc("<p>The name of the meteric used used when querying an Performance Insights
				<code>GetResourceMetrics</code> API for anomaly metrics.</p>

		       <p>Valid values for <code>Metric</code> are:</p>

		       <ul>
            <li>
				           <p>
					             <code>db.load.avg</code> - a scaled representation of the number of active sessions for the
					database engine.</p>
			         </li>
            <li>
				           <p>
					             <code>db.sampledload.avg</code> - the raw number of active sessions for the database
					engine.</p>
			         </li>
         </ul>
		       <p>If the number of active sessions is less than an internal Performance Insights threshold,
				<code>db.load.avg</code> and <code>db.sampledload.avg</code> are the same value. If
			the number of active sessions is greater than the internal threshold, Performance Insights samples the active sessions, with
				<code>db.load.avg</code> showing the scaled values, <code>db.sampledload.avg</code>
			showing the raw values, and <code>db.sampledload.avg</code> less than
				<code>db.load.avg</code>. For most use cases, you can query <code>db.load.avg</code>
			only. </p>")
  @as("Metric")
  metric: option<performanceInsightsMetricName>,
}
@ocaml.doc("<p> Information about a notification channel. A notification channel is used to notify
			you when DevOps Guru creates an insight. The one 
      	supported notification channel is Amazon Simple Notification Service (Amazon SNS). </p>
		       <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission 
				to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. 
				For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html\">Permissions 
				for cross account Amazon SNS topics</a>.</p>
				     <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions 
				to the CMK. For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html\">Permissions for 
				Amazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>")
type notificationChannel = {
  @ocaml.doc("<p> A <code>NotificationChannelConfig</code> object that contains information about
			configured notification channels. </p>")
  @as("Config")
  config: option<notificationChannelConfig>,
  @ocaml.doc("<p> The ID of a notification channel. </p>") @as("Id")
  id: option<notificationChannelId>,
}
@ocaml.doc("<p> A filter used by <code>ListInsights</code> to specify which insights to return.
		</p>")
type listInsightsStatusFilter = {
  @ocaml.doc("<p> A <code>ListInsightsAnyStatusFilter</code> that specifies insights of any status that
			are either <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>")
  @as("Any")
  any: option<listInsightsAnyStatusFilter>,
  @ocaml.doc("<p> A <code>ListInsightsClosedStatusFilter</code> that specifies closed insights that are
			either <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>")
  @as("Closed")
  closed: option<listInsightsClosedStatusFilter>,
  @ocaml.doc("<p> A <code>ListInsightsAnyStatusFilter</code> that specifies ongoing insights that are
			either <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>")
  @as("Ongoing")
  ongoing: option<listInsightsOngoingStatusFilter>,
}
@ocaml.doc("<p>Contains information about the analyzed metrics that displayed anomalous behavior.
		</p>")
type cloudWatchMetricsDataSummary = {
  @ocaml.doc("<p>This is an enum of the status showing whether the metric value pair list has partial
			or complete data, or if there was an error.</p>")
  @as("StatusCode")
  statusCode: option<cloudWatchMetricDataStatusCode>,
  @ocaml.doc("<p>This is a list of Amazon CloudWatch metric values at given timestamp.</p>")
  @as("TimestampMetricValuePairList")
  timestampMetricValuePairList: option<timestampMetricValuePairList>,
}
type cloudFormationHealths = array<cloudFormationHealth>
type accountHealths = array<accountHealth>
@ocaml.doc(
  "<p> Contains information used to update a collection of Amazon Web Services resources. </p>"
)
type updateResourceCollectionFilter = {
  @ocaml.doc("<p>The updated Amazon Web Services tags used to filter the resources in the resource collection.</p>
		       <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
   		tagging, so you can assign the same tag to resources from different services to indicate
   		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
   		table resource that you assign to an Lambda function. For more information about
   		using tags, see the <a href=\"https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf\">Tagging
   			best practices</a> whitepaper. </p>
   	     <p>Each Amazon Web Services tag has two parts. </p>
   	     <ul>
            <li>
   			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
   				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
   				<i>keys</i> are case-sensitive.</p>
   		       </li>
            <li>
   			         <p>An optional field known as a tag <i>value</i> (for example,
   				<code>111122223333</code>, <code>Production</code>, or a team
   				name). Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive.</p>
   		       </li>
         </ul>
   	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
   	     <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
  @as("Tags")
  tags: option<updateTagCollectionFilters>,
  @ocaml.doc(
    "<p> A collection of Amazon Web Services CloudFormation stacks. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>"
  )
  @as("CloudFormation")
  cloudFormation: option<updateCloudFormationCollectionFilter>,
}
@ocaml.doc("<p> Information about a filter used to specify which Amazon Web Services resources are analyzed for
			anomalous behavior by DevOps Guru. </p>")
type resourceCollectionFilter = {
  @ocaml.doc("<p>The Amazon Web Services tags used to filter the resources in the resource collection.</p>
		       <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
   		tagging, so you can assign the same tag to resources from different services to indicate
   		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
   		table resource that you assign to an Lambda function. For more information about
   		using tags, see the <a href=\"https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf\">Tagging
   			best practices</a> whitepaper. </p>
   	     <p>Each Amazon Web Services tag has two parts. </p>
   	     <ul>
            <li>
   			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
   				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
   				<i>keys</i> are case-sensitive.</p>
   		       </li>
            <li>
   			         <p>An optional field known as a tag <i>value</i> (for example,
   				<code>111122223333</code>, <code>Production</code>, or a team
   				name). Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive.</p>
   		       </li>
         </ul>
   	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
   	     <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
  @as("Tags")
  tags: option<tagCollectionFilters>,
  @ocaml.doc("<p> Information about Amazon Web Services CloudFormation stacks. You can use up to 500
			stacks to specify which Amazon Web Services resources in your account to analyze. For more
			information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html\">Stacks</a> in the
				<i>Amazon Web Services CloudFormation User Guide</i>. </p>")
  @as("CloudFormation")
  cloudFormation: option<cloudFormationCollectionFilter>,
}
@ocaml.doc("<p> A collection of Amazon Web Services resources supported by DevOps Guru.
			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
          Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
      	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>")
type resourceCollection = {
  @ocaml.doc("<p>The Amazon Web Services tags that are used by resources in the resource collection.</p>
		       <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
   		tagging, so you can assign the same tag to resources from different services to indicate
   		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
   		table resource that you assign to an Lambda function. For more information about
   		using tags, see the <a href=\"https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf\">Tagging
   			best practices</a> whitepaper. </p>
   	     <p>Each Amazon Web Services tag has two parts. </p>
   	     <ul>
            <li>
   			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
   				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
   				<i>keys</i> are case-sensitive.</p>
   		       </li>
            <li>
   			         <p>An optional field known as a tag <i>value</i> (for example,
   				<code>111122223333</code>, <code>Production</code>, or a team
   				name). Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive.</p>
   		       </li>
         </ul>
   	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
   	     <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
  @as("Tags")
  tags: option<tagCollections>,
  @ocaml.doc("<p> An array of the names of Amazon Web Services CloudFormation stacks. The stacks define Amazon Web Services resources that
			DevOps Guru analyzes. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>")
  @as("CloudFormation")
  cloudFormation: option<cloudFormationCollection>,
}
type relatedAnomalySourceDetails = array<recommendationRelatedAnomalySourceDetail>
type recommendationRelatedEvents = array<recommendationRelatedEvent>
@ocaml.doc("<p>Information about a reference metric used to evaluate Performance Insights.</p>")
type performanceInsightsReferenceMetric = {
  @ocaml.doc("<p>A query to be processed on the metric.</p>") @as("MetricQuery")
  metricQuery: option<performanceInsightsMetricQuery>,
}
@ocaml.doc("<p>Information about a filter used to specify which Amazon Web Services resources are analyzed to
			create a monthly DevOps Guru cost estimate. For more information, 
			see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html\">Estimate your 
			Amazon DevOps Guru costs</a> and 
			<a href=\"http://aws.amazon.com/devops-guru/pricing/\">Amazon DevOps Guru pricing</a>. </p>")
type costEstimationResourceCollectionFilter = {
  @ocaml.doc("<p>The Amazon Web Services tags used to filter the resource collection that is used for a cost
			estimate.</p> 
         <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
   		tagging, so you can assign the same tag to resources from different services to indicate
   		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
   		table resource that you assign to an Lambda function. For more information about
   		using tags, see the <a href=\"https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf\">Tagging
   			best practices</a> whitepaper. </p>
   	     <p>Each Amazon Web Services tag has two parts. </p>
   	     <ul>
            <li>
   			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
   				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
   				<i>keys</i> are case-sensitive.</p>
   		       </li>
            <li>
   			         <p>An optional field known as a tag <i>value</i> (for example,
   				<code>111122223333</code>, <code>Production</code>, or a team
   				name). Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive.</p>
   		       </li>
         </ul>
   	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
   	     <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
  @as("Tags")
  tags: option<tagCostEstimationResourceCollectionFilters>,
  @ocaml.doc("<p>An object that specifies the CloudFormation stack that defines the Amazon Web Services resources
			used to create a monthly estimate for DevOps Guru.</p>")
  @as("CloudFormation")
  cloudFormation: option<cloudFormationCostEstimationResourceCollectionFilter>,
}
@ocaml.doc("<p> Information about an Amazon CloudWatch metric. </p>")
type cloudWatchMetricsDetail = {
  @ocaml.doc("<p>This object returns anomaly metric data.</p>") @as("MetricDataSummary")
  metricDataSummary: option<cloudWatchMetricsDataSummary>,
  @ocaml.doc(
    "<p> The length of time associated with the CloudWatch metric in number of seconds. </p>"
  )
  @as("Period")
  period: option<cloudWatchMetricsPeriod>,
  @ocaml.doc("<p> The unit of measure used for the CloudWatch metric. For example, <code>Bytes</code>,
				<code>Seconds</code>, <code>Count</code>, and <code>Percent</code>. </p>")
  @as("Unit")
  unit_: option<cloudWatchMetricsUnit>,
  @ocaml.doc("<p> The type of statistic associated with the CloudWatch metric. For more information, see
				<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic\">Statistics</a> in the <i>Amazon CloudWatch User Guide</i>. </p>")
  @as("Stat")
  stat: option<cloudWatchMetricsStat>,
  @ocaml.doc("<p> An array of CloudWatch dimensions associated with </p>") @as("Dimensions")
  dimensions: option<cloudWatchMetricsDimensions>,
  @ocaml.doc("<p> The namespace of the CloudWatch metric. A namespace is a container for CloudWatch metrics.
		</p>")
  @as("Namespace")
  namespace: option<cloudWatchMetricsNamespace>,
  @ocaml.doc("<p> The name of the CloudWatch metric. </p>") @as("MetricName")
  metricName: option<cloudWatchMetricsMetricName>,
}
type channels = array<notificationChannel>
@ocaml.doc("<p> Filters you can use to specify which events are returned when <code>ListEvents</code>
			is called. </p>")
type searchOrganizationInsightsFilters = {
  @as("ServiceCollection") serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p> An array of status values used to search for insights. </p>") @as("Statuses")
  statuses: option<insightStatuses>,
  @ocaml.doc("<p> An array of severity values used to search for insights. </p>") @as("Severities")
  severities: option<insightSeverities>,
}
@ocaml.doc("<p> Specifies one or more severity values and one or more status values that are used to
			search for insights. </p>")
type searchInsightsFilters = {
  @ocaml.doc("<p>A collection of the names of Amazon Web Services services.</p>")
  @as("ServiceCollection")
  serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p> An array of status values used to search for insights. </p>") @as("Statuses")
  statuses: option<insightStatuses>,
  @ocaml.doc("<p> An array of severity values used to search for insights. </p>") @as("Severities")
  severities: option<insightSeverities>,
}
@ocaml.doc("<p> Information about an anomaly that is related to a recommendation. </p>")
type recommendationRelatedAnomaly = {
  @ocaml.doc("<p>The ID of an anomaly that generated the insight with this recommendation.</p>")
  @as("AnomalyId")
  anomalyId: option<anomalyId>,
  @ocaml.doc("<p> Information about where the anomalous behavior related the recommendation was found.
			For example, details in Amazon CloudWatch metrics. </p>")
  @as("SourceDetails")
  sourceDetails: option<relatedAnomalySourceDetails>,
  @ocaml.doc("<p> An array of objects that represent resources in which DevOps Guru detected anomalous
			behavior. Each object contains the name and type of the resource. </p>")
  @as("Resources")
  resources: option<recommendationRelatedAnomalyResources>,
}
@ocaml.doc("<p>Information about a reactive insight. This object is returned by
				<code>DescribeInsight</code>.</p>")
type reactiveOrganizationInsightSummary = {
  @as("ServiceCollection") serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @ocaml.doc("<p> An array of status values used to search for insights. </p>") @as("Status")
  status: option<insightStatus>,
  @ocaml.doc("<p> An array of severity values used to search for insights.
			For more information, see 
	<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding 
	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>")
  @as("Severity")
  severity: option<insightSeverity>,
  @ocaml.doc("<p>The name of the insight summary.</p>") @as("Name") name: option<insightName>,
  @ocaml.doc("<p>The ID of the organizational unit.</p>") @as("OrganizationalUnitId")
  organizationalUnitId: option<organizationalUnitId>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account. </p>") @as("AccountId")
  accountId: option<awsAccountId>,
  @ocaml.doc("<p>The ID of the insight summary.</p>") @as("Id") id: option<insightId>,
}
@ocaml.doc("<p> Information about a reactive insight. This object is returned by
				<code>DescribeInsight.</code>
         </p>")
type reactiveInsightSummary = {
  @ocaml.doc("<p>The Amazon Resource Names (ARNs) 
	of the Amazon Web Services resources that generated this insight.</p>")
  @as("AssociatedResourceArns")
  associatedResourceArns: option<associatedResourceArns>,
  @ocaml.doc("<p>A collection of the names of Amazon Web Services services.</p>")
  @as("ServiceCollection")
  serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @ocaml.doc("<p> The status of a reactive insight. </p>") @as("Status")
  status: option<insightStatus>,
  @ocaml.doc("<p>The severity of the insight. For more information, see 
	<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding 
	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>")
  @as("Severity")
  severity: option<insightSeverity>,
  @ocaml.doc("<p> The name of a reactive insight. </p>") @as("Name") name: option<insightName>,
  @ocaml.doc("<p> The ID of a reactive summary. </p>") @as("Id") id: option<insightId>,
}
@ocaml.doc("<p> Information about a reactive insight. This object is returned by
				<code>ListInsights</code>. </p>")
type reactiveInsight = {
  @ocaml.doc("<p>Describes the reactive insight.</p>") @as("Description")
  description: option<insightDescription>,
  @ocaml.doc("<p> The ID of the Amazon Web Services System Manager OpsItem created for this insight. You must enable
			the creation of OpstItems insights before they are created for each insight. </p>")
  @as("SsmOpsItemId")
  ssmOpsItemId: option<ssmOpsItemId>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @ocaml.doc("<p> The status of a reactive insight. </p>") @as("Status")
  status: option<insightStatus>,
  @ocaml.doc("<p>The severity of the insight. For more information, see 
	<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding 
	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>")
  @as("Severity")
  severity: option<insightSeverity>,
  @ocaml.doc("<p> The name of a reactive insight. </p>") @as("Name") name: option<insightName>,
  @ocaml.doc("<p> The ID of a reactive insight. </p>") @as("Id") id: option<insightId>,
}
@ocaml.doc("<p>Details about a proactive insight. This object is returned by
				<code>DescribeInsight</code>.</p>")
type proactiveOrganizationInsightSummary = {
  @as("ServiceCollection") serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @ocaml.doc("<p> An array of status values used to search for insights. </p>") @as("Status")
  status: option<insightStatus>,
  @ocaml.doc("<p> An array of severity values used to search for insights.
			For more information, see 
	<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding 
	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>")
  @as("Severity")
  severity: option<insightSeverity>,
  @ocaml.doc("<p>The name of the insight summary.</p>") @as("Name") name: option<insightName>,
  @ocaml.doc("<p>The ID of the organizational unit.</p>") @as("OrganizationalUnitId")
  organizationalUnitId: option<organizationalUnitId>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account.</p>") @as("AccountId")
  accountId: option<awsAccountId>,
  @ocaml.doc("<p>The ID of the insight summary.</p>") @as("Id") id: option<insightId>,
}
@ocaml.doc("<p>Details about a proactive insight. This object is returned by
				<code>DescribeInsight.</code>
         </p>")
type proactiveInsightSummary = {
  @ocaml.doc("<p>The Amazon Resource Names (ARNs) 
	of the Amazon Web Services resources that generated this insight.</p>")
  @as("AssociatedResourceArns")
  associatedResourceArns: option<associatedResourceArns>,
  @ocaml.doc("<p>A collection of the names of Amazon Web Services services.</p>")
  @as("ServiceCollection")
  serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @ocaml.doc("<p>The status of the proactive insight. </p>") @as("Status")
  status: option<insightStatus>,
  @ocaml.doc("<p>The severity of the insight. For more information, see 
	<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding 
	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>")
  @as("Severity")
  severity: option<insightSeverity>,
  @ocaml.doc("<p>The name of the proactive insight. </p>") @as("Name") name: option<insightName>,
  @ocaml.doc("<p>The ID of the proactive insight. </p>") @as("Id") id: option<insightId>,
}
@ocaml.doc("<p>Details about a proactive insight. This object is returned by
				<code>ListInsights</code>.</p>")
type proactiveInsight = {
  @ocaml.doc("<p>Describes the proactive insight.</p>") @as("Description")
  description: option<insightDescription>,
  @ocaml.doc("<p> The ID of the Amazon Web Services System Manager OpsItem created for this insight. You must enable
			the creation of OpstItems insights before they are created for each insight. </p>")
  @as("SsmOpsItemId")
  ssmOpsItemId: option<ssmOpsItemId>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @ocaml.doc("<p>The status of the proactive insight. </p>") @as("Status")
  status: option<insightStatus>,
  @ocaml.doc("<p>The severity of the insight. For more information, see 
	<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding 
	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>")
  @as("Severity")
  severity: option<insightSeverity>,
  @ocaml.doc("<p>The name of the proactive insight. </p>") @as("Name") name: option<insightName>,
  @ocaml.doc("<p>The ID of the proactive insight. </p>") @as("Id") id: option<insightId>,
}
@ocaml.doc("<p>Reference scalar values and other metrics that DevOps Guru displays on a graph in its
			console along with the actual metrics it analyzed. Compare these reference values to
			your actual metrics to help you understand anomalous behavior that DevOps Guru
			detected.</p>")
type performanceInsightsReferenceComparisonValues = {
  @ocaml.doc("<p>A metric that DevOps Guru compares to actual metric values. This reference metric is used to
			determine if an actual metric should be considered anomalous.</p>")
  @as("ReferenceMetric")
  referenceMetric: option<performanceInsightsReferenceMetric>,
  @ocaml.doc("<p>A scalar value DevOps Guru for a metric that DevOps Guru compares to actual metric values. This
			reference value is used to determine if an actual metric value should be considered
			anomalous.</p>")
  @as("ReferenceScalar")
  referenceScalar: option<performanceInsightsReferenceScalar>,
}
@ocaml.doc("<p> Filters you can use to specify which events are returned when <code>ListEvents</code>
			is called. </p>")
type listEventsFilters = {
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p> The source, <code>AWS_CLOUD_TRAIL</code> or <code>AWS_CODE_DEPLOY</code>, of the
			events you want returned. </p>")
  @as("DataSource")
  dataSource: option<eventDataSource>,
  @ocaml.doc(
    "<p> The Amazon Web Services source that emitted the events you want to filter for. </p>"
  )
  @as("EventSource")
  eventSource: option<eventSource>,
  @ocaml.doc("<p> The class of the events you want to filter for, such as an infrastructure change, a
			deployment, or a schema change. </p>")
  @as("EventClass")
  eventClass: option<eventClass>,
  @ocaml.doc("<p> A time range during which you want the filtered events to have occurred. </p>")
  @as("EventTimeRange")
  eventTimeRange: option<eventTimeRange>,
  @ocaml.doc("<p> An ID of an insight that is related to the events you want to filter for. </p>")
  @as("InsightId")
  insightId: option<insightId>,
}
@ocaml.doc("<p> An Amazon Web Services resource event. Amazon Web Services resource events and metrics are analyzed by DevOps Guru to
			find anomalous behavior and provide recommendations to improve your operational
			solutions. </p>")
type event = {
  @ocaml.doc("<p> An <code>EventResource</code> object that contains information about the resource
			that emitted the event. </p>")
  @as("Resources")
  resources: option<eventResources>,
  @ocaml.doc("<p> The class of the event. The class specifies what the event is related to, such as an
			infrastructure change, a deployment, or a schema change. </p>")
  @as("EventClass")
  eventClass: option<eventClass>,
  @ocaml.doc("<p> The source, <code>AWS_CLOUD_TRAIL</code> or <code>AWS_CODE_DEPLOY</code>, where DevOps Guru
			analysis found the event. </p>")
  @as("DataSource")
  dataSource: option<eventDataSource>,
  @ocaml.doc("<p> The name of the event. </p>") @as("Name") name: option<eventName>,
  @ocaml.doc("<p> The Amazon Web Services source that emitted the event. </p>") @as("EventSource")
  eventSource: option<eventSource>,
  @ocaml.doc("<p> A <code>Timestamp</code> that specifies the time the event occurred. </p>")
  @as("Time")
  time: option<timestamp_>,
  @ocaml.doc("<p> The ID of the event. </p>") @as("Id") id: option<eventId>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
}
type cloudWatchMetricsDetails = array<cloudWatchMetricsDetail>
type recommendationRelatedAnomalies = array<recommendationRelatedAnomaly>
type reactiveOrganizationInsights = array<reactiveOrganizationInsightSummary>
type reactiveInsights = array<reactiveInsightSummary>
type proactiveOrganizationInsights = array<proactiveOrganizationInsightSummary>
type proactiveInsights = array<proactiveInsightSummary>
@ocaml.doc("<p>Reference data used to evaluate Performance Insights to determine if its performance is anomalous or
			not.</p>")
type performanceInsightsReferenceData = {
  @ocaml.doc("<p>The specific reference values used to evaluate the Performance Insights. For more information, see
					<code>
               <a href=\"https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsReferenceComparisonValues.html\">PerformanceInsightsReferenceComparisonValues</a>
            </code>. </p>")
  @as("ComparisonValues")
  comparisonValues: option<performanceInsightsReferenceComparisonValues>,
  @ocaml.doc("<p>The name of the reference data.</p>") @as("Name")
  name: option<performanceInsightsReferenceName>,
}
type events = array<event>
@ocaml.doc("<p> Recommendation information to help you remediate detected anomalous behavior that
			generated an insight. </p>")
type recommendation = {
  @ocaml.doc("<p>The category type of the recommendation.</p>") @as("Category")
  category: option<recommendationCategory>,
  @ocaml.doc("<p> Anomalies that are related to the problem. Use these Anomalies to learn more about
			what's happening and to help address the issue. </p>")
  @as("RelatedAnomalies")
  relatedAnomalies: option<recommendationRelatedAnomalies>,
  @ocaml.doc("<p> Events that are related to the problem. Use these events to learn more about what's
			happening and to help address the issue. </p>")
  @as("RelatedEvents")
  relatedEvents: option<recommendationRelatedEvents>,
  @ocaml.doc("<p> The reason DevOps Guru flagged the anomalous behavior as a problem. </p>")
  @as("Reason")
  reason: option<recommendationReason>,
  @ocaml.doc("<p> The name of the recommendation. </p>") @as("Name")
  name: option<recommendationName>,
  @ocaml.doc("<p> A hyperlink to information to help you address the problem. </p>") @as("Link")
  link: option<recommendationLink>,
  @ocaml.doc("<p> A description of the problem. </p>") @as("Description")
  description: option<recommendationDescription>,
}
type performanceInsightsReferenceDataList = array<performanceInsightsReferenceData>
type recommendations = array<recommendation>
@ocaml.doc("<p>Details about Performance Insights metrics.</p> 
         <p>Amazon RDS Performance Insights enables you to monitor and explore different 
   		dimensions of database load based on data captured from a running DB instance. 
   		DB load is measured as average active sessions. Performance Insights provides the 
   		data to API consumers as a two-dimensional time-series dataset. The time dimension 
   		provides DB load data for each time point in the queried time range. Each time point 
   		decomposes overall load in relation to the requested dimensions, measured at that 
   		time point. Examples include SQL, Wait event, User, and Host. </p>
   	
   	     <ul>
            <li>
   			         <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html\"> Amazon Aurora User Guide</a>.
   			</p>
   		       </li>
            <li>
   			         <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\"> Amazon RDS User Guide</a>.
   			</p>
   		       </li>
         </ul>")
type performanceInsightsMetricsDetail = {
  @ocaml.doc("<p>Typical metric statistics that are not considered anomalous. When DevOps Guru analyzes
			metrics, it compares them to <code>StatsAtBaseline</code> to help determine if they are
			anomalous.</p>")
  @as("StatsAtBaseline")
  statsAtBaseline: option<performanceInsightsStats>,
  @ocaml.doc("<p>The metric statistics during the anomalous period detected by DevOps Guru;</p>")
  @as("StatsAtAnomaly")
  statsAtAnomaly: option<performanceInsightsStats>,
  @ocaml.doc("<p> For more information, see <code>
               <a href=\"https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsReferenceData.html\">PerformanceInsightsReferenceData</a>
            </code>. </p>")
  @as("ReferenceData")
  referenceData: option<performanceInsightsReferenceDataList>,
  @ocaml.doc("<p>A single query to be processed for the metric. For more information, see <code>
               <a href=\"https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsMetricQuery.html\">PerformanceInsightsMetricQuery</a>
            </code>.</p>")
  @as("MetricQuery")
  metricQuery: option<performanceInsightsMetricQuery>,
  @ocaml.doc("<p>The unit of measure for a metric. For example, a session or a process.</p>")
  @as("Unit")
  unit_: option<performanceInsightsMetricUnit>,
  @ocaml.doc("<p>The name used for a specific Performance Insights metric.</p>")
  @as("MetricDisplayName")
  metricDisplayName: option<performanceInsightsMetricDisplayName>,
}
type performanceInsightsMetricsDetails = array<performanceInsightsMetricsDetail>
@ocaml.doc("<p> Details about the source of the anomalous operational data that triggered the
			anomaly.</p>")
type anomalySourceDetails = {
  @ocaml.doc("<p>An array of <code>PerformanceInsightsMetricsDetail</code> objects that contain
			information about analyzed Performance Insights metrics that show anomalous behavior.</p>")
  @as("PerformanceInsightsMetrics")
  performanceInsightsMetrics: option<performanceInsightsMetricsDetails>,
  @ocaml.doc("<p>An array of <code>CloudWatchMetricsDetail</code> objects that contain information
			about analyzed CloudWatch metrics that show anomalous behavior. </p>")
  @as("CloudWatchMetrics")
  cloudWatchMetrics: option<cloudWatchMetricsDetails>,
}
@ocaml.doc("<p>Details about a reactive anomaly. This object is returned by
				<code>DescribeAnomaly.</code>
         </p>")
type reactiveAnomalySummary = {
  @ocaml.doc(
    "<p>The Amazon Web Services resources in which anomalous behavior was detected by DevOps Guru.</p>"
  )
  @as("AnomalyResources")
  anomalyResources: option<anomalyResources>,
  @ocaml.doc("<p>The ID of the causal anomaly that is associated with this 
      reactive anomaly. The ID of a `CAUSAL` anomaly is always `NULL`.</p>")
  @as("CausalAnomalyId")
  causalAnomalyId: option<anomalyId>,
  @ocaml.doc("<p>A description of the reactive anomaly.</p>") @as("Description")
  description: option<anomalyDescription>,
  @ocaml.doc("<p>The name of the reactive anomaly.</p>") @as("Name") name: option<anomalyName>,
  @ocaml.doc("<p>The type of the reactive anomaly. It can be one of the following types.</p>
	        <ul>
            <li>
	   	          <p>
	   		            <code>CAUSAL</code> - the anomaly can cause a new insight.</p>
	           </li>
            <li>
	   	          <p>
	   		            <code>CONTEXTUAL</code> - the anomaly contains additional information about an insight or its causal anomaly.</p>
	           </li>
         </ul>")
  @as("Type")
  type_: option<anomalyType>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p> The ID of the insight that contains this anomaly. An insight is composed of related
			anomalies. </p>")
  @as("AssociatedInsightId")
  associatedInsightId: option<insightId>,
  @ocaml.doc("<p> Details about the source of the analyzed operational data that triggered the anomaly.
			The one supported source is Amazon CloudWatch metrics. </p>")
  @as("SourceDetails")
  sourceDetails: option<anomalySourceDetails>,
  @ocaml.doc("<p>
			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
		</p>")
  @as("AnomalyReportedTimeRange")
  anomalyReportedTimeRange: option<anomalyReportedTimeRange>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @ocaml.doc("<p> The status of the reactive anomaly. </p>") @as("Status")
  status: option<anomalyStatus>,
  @ocaml.doc("<p>The severity of the anomaly. The severity of anomalies that generate 
	an insight determine that insight's severity. For more information, see 
	<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding 
	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>")
  @as("Severity")
  severity: option<anomalySeverity>,
  @ocaml.doc("<p> The ID of the reactive anomaly. </p>") @as("Id") id: option<anomalyId>,
}
@ocaml.doc("<p>Details about a reactive anomaly. This object is returned by
				<code>ListAnomalies</code>.</p>")
type reactiveAnomaly = {
  @ocaml.doc(
    "<p>The Amazon Web Services resources in which anomalous behavior was detected by DevOps Guru.</p>"
  )
  @as("AnomalyResources")
  anomalyResources: option<anomalyResources>,
  @ocaml.doc("<p>The ID of the causal anomaly that is associated with this 
      reactive anomaly. The ID of a `CAUSAL` anomaly is always `NULL`.</p>")
  @as("CausalAnomalyId")
  causalAnomalyId: option<anomalyId>,
  @ocaml.doc("<p>A description of the reactive anomaly.</p>") @as("Description")
  description: option<anomalyDescription>,
  @ocaml.doc("<p>The name of the reactive anomaly.</p>") @as("Name") name: option<anomalyName>,
  @ocaml.doc("<p>The type of the reactive anomaly. It can be one of the following types.</p>
	        <ul>
            <li>
	   	          <p>
	   		            <code>CAUSAL</code> - the anomaly can cause a new insight.</p>
	           </li>
            <li>
	   	          <p>
	   		            <code>CONTEXTUAL</code> - the anomaly contains additional information about an insight or its causal anomaly.</p>
	           </li>
         </ul>")
  @as("Type")
  type_: option<anomalyType>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p> The ID of the insight that contains this anomaly. An insight is composed of related
			anomalies. </p>")
  @as("AssociatedInsightId")
  associatedInsightId: option<insightId>,
  @ocaml.doc("<p> Details about the source of the analyzed operational data that triggered the anomaly.
			The one supported source is Amazon CloudWatch metrics. </p>")
  @as("SourceDetails")
  sourceDetails: option<anomalySourceDetails>,
  @ocaml.doc("<p>
			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
		</p>")
  @as("AnomalyReportedTimeRange")
  anomalyReportedTimeRange: option<anomalyReportedTimeRange>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @ocaml.doc("<p> The status of the anomaly. </p>") @as("Status") status: option<anomalyStatus>,
  @ocaml.doc("<p>The severity of the anomaly. The severity of anomalies that generate 
	an insight determine that insight's severity. For more information, see 
	<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding 
	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>")
  @as("Severity")
  severity: option<anomalySeverity>,
  @ocaml.doc("<p>The ID of the reactive anomaly. </p>") @as("Id") id: option<anomalyId>,
}
@ocaml.doc("<p>Details about a proactive anomaly. This object is returned by
				<code>DescribeAnomaly.</code>
         </p>")
type proactiveAnomalySummary = {
  @ocaml.doc(
    "<p>Information about a resource in which DevOps Guru detected anomalous behavior.</p>"
  )
  @as("AnomalyResources")
  anomalyResources: option<anomalyResources>,
  @ocaml.doc("<p>Returns the metadata of the source.</p>") @as("SourceMetadata")
  sourceMetadata: option<anomalySourceMetadata>,
  @ocaml.doc("<p> A threshold that was exceeded by behavior in analyzed resources. Exceeding this
			threshold is related to the anomalous behavior that generated this anomaly. </p>")
  @as("Limit")
  limit: option<anomalyLimit>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p> The ID of the insight that contains this anomaly. An insight is composed of related
			anomalies. </p>")
  @as("AssociatedInsightId")
  associatedInsightId: option<insightId>,
  @ocaml.doc("<p> Details about the source of the analyzed operational data that triggered the anomaly.
			The one supported source is Amazon CloudWatch metrics. </p>")
  @as("SourceDetails")
  sourceDetails: option<anomalySourceDetails>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @ocaml.doc("<p>
			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
		</p>")
  @as("AnomalyReportedTimeRange")
  anomalyReportedTimeRange: option<anomalyReportedTimeRange>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @ocaml.doc("<p> The time of the anomaly's most recent update. </p>") @as("UpdateTime")
  updateTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the anomaly.</p>") @as("Status") status: option<anomalyStatus>,
  @ocaml.doc("<p>The severity of the anomaly. The severity of anomalies that generate 
	an insight determine that insight's severity. For more information, see 
	<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding 
	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>")
  @as("Severity")
  severity: option<anomalySeverity>,
  @ocaml.doc("<p>The ID of the anomaly.</p>") @as("Id") id: option<anomalyId>,
}
@ocaml.doc("<p>Information about an anomaly. This object is returned by
			<code>ListAnomalies</code>.</p>")
type proactiveAnomaly = {
  @ocaml.doc(
    "<p>Information about a resource in which DevOps Guru detected anomalous behavior.</p>"
  )
  @as("AnomalyResources")
  anomalyResources: option<anomalyResources>,
  @ocaml.doc("<p>The metadata for the anomaly.</p>") @as("SourceMetadata")
  sourceMetadata: option<anomalySourceMetadata>,
  @ocaml.doc("<p> A threshold that was exceeded by behavior in analyzed resources. Exceeding this
			threshold is related to the anomalous behavior that generated this anomaly. </p>")
  @as("Limit")
  limit: option<anomalyLimit>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p> The ID of the insight that contains this anomaly. An insight is composed of related
			anomalies. </p>")
  @as("AssociatedInsightId")
  associatedInsightId: option<insightId>,
  @ocaml.doc("<p> Details about the source of the analyzed operational data that triggered the anomaly.
			The one supported source is Amazon CloudWatch metrics. </p>")
  @as("SourceDetails")
  sourceDetails: option<anomalySourceDetails>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @ocaml.doc("<p>
			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
		</p>")
  @as("AnomalyReportedTimeRange")
  anomalyReportedTimeRange: option<anomalyReportedTimeRange>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @ocaml.doc("<p> The time of the anomaly's most recent update. </p>") @as("UpdateTime")
  updateTime: option<timestamp_>,
  @ocaml.doc("<p> The status of a proactive anomaly. </p>") @as("Status")
  status: option<anomalyStatus>,
  @ocaml.doc("<p>The severity of the anomaly. The severity of anomalies that generate 
	an insight determine that insight's severity. For more information, see 
	<a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html#understanding-insights-severities\">Understanding 
	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>")
  @as("Severity")
  severity: option<anomalySeverity>,
  @ocaml.doc("<p> The ID of a proactive anomaly. </p>") @as("Id") id: option<anomalyId>,
}
type reactiveAnomalies = array<reactiveAnomalySummary>
type proactiveAnomalies = array<proactiveAnomalySummary>
@ocaml.doc("<p> Amazon DevOps Guru is a fully managed service that helps you identify anomalous behavior in
			business critical operational applications. You specify the Amazon Web Services resources that you
			want DevOps Guru to cover, then the Amazon CloudWatch metrics and Amazon Web Services CloudTrail events related to those
			resources are analyzed. When anomalous behavior is detected, DevOps Guru creates an
				<i>insight</i> that includes recommendations, related events, and
			related metrics that can help you improve your operational applications. For more
			information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html\">What is Amazon DevOps Guru</a>. </p>

		       <p> You can specify 1 or 2 Amazon Simple Notification Service topics so you are notified every time a new insight
			is created. You can also enable DevOps Guru to generate an OpsItem in Amazon Web Services Systems Manager for each
			insight to help you manage and track your work addressing insights. </p>

		       <p> To learn about the DevOps Guru workflow, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html#how-it-works\">How DevOps Guru works</a>. To
			learn about DevOps Guru concepts, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/concepts.html\">Concepts in DevOps Guru</a>. </p>")
module UpdateServiceIntegration = {
  type t
  type request = {
    @ocaml.doc("<p> An <code>IntegratedServiceConfig</code> object used to specify the integrated service
			you want to update, and whether you want to update it to enabled or disabled. </p>")
    @as("ServiceIntegration")
    serviceIntegration: updateServiceIntegrationConfig,
  }
  type response = {.}
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "UpdateServiceIntegrationCommand"
  let make = (~serviceIntegration, ()) => new({serviceIntegration: serviceIntegration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateEventSourcesConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the event source.</p>") @as("EventSources")
    eventSources: option<eventSourcesConfig>,
  }
  type response = {.}
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "UpdateEventSourcesConfigCommand"
  let make = (~eventSources=?, ()) => new({eventSources: eventSources})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RemoveNotificationChannel = {
  type t
  type request = {
    @ocaml.doc("<p> The ID of the notification channel to be removed. </p>") @as("Id")
    id: notificationChannelId,
  }
  type response = {.}
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "RemoveNotificationChannelCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutFeedback = {
  type t
  type request = {
    @ocaml.doc("<p> The feedback from customers is about the recommendations in this insight. </p>")
    @as("InsightFeedback")
    insightFeedback: option<insightFeedback>,
  }
  type response = {.}
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "PutFeedbackCommand"
  let make = (~insightFeedback=?, ()) => new({insightFeedback: insightFeedback})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeServiceIntegration = {
  type t
  type request = {.}
  type response = {@as("ServiceIntegration") serviceIntegration: option<serviceIntegrationConfig>}
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "DescribeServiceIntegrationCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeOrganizationOverview = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the organizational unit.</p>") @as("OrganizationalUnitIds")
    organizationalUnitIds: option<organizationalUnitIdList>,
    @ocaml.doc("<p>The ID of the Amazon Web Services account.</p>") @as("AccountIds")
    accountIds: option<accountIdList>,
    @ocaml.doc("<p> The end of the time range passed in. The start time granularity is at the day level.
			The floor of the start time is used. Returned information occurred before this day. If
			this is not specified, then the current day is used. </p>")
    @as("ToTime")
    toTime: option<timestamp_>,
    @ocaml.doc("<p> The start of the time range passed in. The start time granularity is at the day
			level. The floor of the start time is used. Returned information occurred after this
			day. </p>")
    @as("FromTime")
    fromTime: timestamp_,
  }
  type response = {
    @ocaml.doc("<p>An integer that specifies the number of open proactive insights in your Amazon Web Services
			account.</p>")
    @as("ProactiveInsights")
    proactiveInsights: numProactiveInsights,
    @ocaml.doc("<p>An integer that specifies the number of open reactive insights in your Amazon Web Services
			account.</p>")
    @as("ReactiveInsights")
    reactiveInsights: numReactiveInsights,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "DescribeOrganizationOverviewCommand"
  let make = (~fromTime, ~organizationalUnitIds=?, ~accountIds=?, ~toTime=?, ()) =>
    new({organizationalUnitIds, accountIds, toTime, fromTime})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeOrganizationHealth = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the organizational unit.</p>") @as("OrganizationalUnitIds")
    organizationalUnitIds: option<organizationalUnitIdList>,
    @ocaml.doc("<p>The ID of the Amazon Web Services account.</p>") @as("AccountIds")
    accountIds: option<accountIdList>,
  }
  type response = {
    @ocaml.doc("<p>The number of Amazon DevOps Guru resource analysis hours billed to the current Amazon Web Services account in
			the last hour. </p>")
    @as("ResourceHours")
    resourceHours: resourceHours,
    @ocaml.doc("<p>An integer that specifies the number of metrics that have been analyzed in your
			organization.</p>")
    @as("MetricsAnalyzed")
    metricsAnalyzed: numMetricsAnalyzed,
    @ocaml.doc("<p>An integer that specifies the number of open proactive insights in your Amazon Web Services
			account.</p>")
    @as("OpenProactiveInsights")
    openProactiveInsights: numOpenProactiveInsights,
    @ocaml.doc("<p>An integer that specifies the number of open reactive insights in your Amazon Web Services
			account.</p>")
    @as("OpenReactiveInsights")
    openReactiveInsights: numOpenReactiveInsights,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "DescribeOrganizationHealthCommand"
  let make = (~organizationalUnitIds=?, ~accountIds=?, ()) =>
    new({organizationalUnitIds, accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeFeedback = {
  type t
  type request = {
    @ocaml.doc("<p> The ID of the insight for which the feedback was provided. </p>")
    @as("InsightId")
    insightId: option<insightId>,
  }
  type response = {@as("InsightFeedback") insightFeedback: option<insightFeedback>}
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "DescribeFeedbackCommand"
  let make = (~insightId=?, ()) => new({insightId: insightId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEventSourcesConfig = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The name of the event source.</p>") @as("EventSources")
    eventSources: option<eventSourcesConfig>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "DescribeEventSourcesConfigCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAccountOverview = {
  type t
  type request = {
    @ocaml.doc("<p> The end of the time range passed in. The start time granularity is at the day level.
			The floor of the start time is used. Returned information occurred before this day. If
			this is not specified, then the current day is used. </p>")
    @as("ToTime")
    toTime: option<timestamp_>,
    @ocaml.doc("<p> The start of the time range passed in. The start time granularity is at the day
			level. The floor of the start time is used. Returned information occurred after this
			day. </p>")
    @as("FromTime")
    fromTime: timestamp_,
  }
  type response = {
    @ocaml.doc("<p> The Mean Time to Recover (MTTR) for all closed insights that were created during the time range passed in.
		</p>")
    @as("MeanTimeToRecoverInMilliseconds")
    meanTimeToRecoverInMilliseconds: meanTimeToRecoverInMilliseconds,
    @ocaml.doc("<p> An integer that specifies the number of open proactive insights in your Amazon Web Services account
			that were created during the time range passed in. </p>")
    @as("ProactiveInsights")
    proactiveInsights: numProactiveInsights,
    @ocaml.doc("<p> An integer that specifies the number of open reactive insights in your Amazon Web Services account
			that were created during the time range passed in. </p>")
    @as("ReactiveInsights")
    reactiveInsights: numReactiveInsights,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "DescribeAccountOverviewCommand"
  let make = (~fromTime, ~toTime=?, ()) => new({toTime, fromTime})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAccountHealth = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The number of Amazon DevOps Guru resource analysis hours billed to the current Amazon Web Services account in
			the last hour. </p>")
    @as("ResourceHours")
    resourceHours: resourceHours,
    @ocaml.doc("<p> An integer that specifies the number of metrics that have been analyzed in your Amazon Web Services
			account. </p>")
    @as("MetricsAnalyzed")
    metricsAnalyzed: numMetricsAnalyzed,
    @ocaml.doc("<p> An integer that specifies the number of open proactive insights in your Amazon Web Services
			account. </p>")
    @as("OpenProactiveInsights")
    openProactiveInsights: numOpenProactiveInsights,
    @ocaml.doc("<p> An integer that specifies the number of open reactive insights in your Amazon Web Services account.
		</p>")
    @as("OpenReactiveInsights")
    openReactiveInsights: numOpenReactiveInsights,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "DescribeAccountHealthCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddNotificationChannel = {
  type t
  type request = {
    @ocaml.doc("<p> A <code>NotificationChannelConfig</code> object that specifies what type of
			notification channel to add. The one 
      	supported notification channel is Amazon Simple Notification Service (Amazon SNS). </p>")
    @as("Config")
    config: notificationChannelConfig,
  }
  type response = {
    @ocaml.doc("<p> The ID of the added notification channel. </p>") @as("Id")
    id: notificationChannelId,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "AddNotificationChannelCommand"
  let make = (~config, ()) => new({config: config})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeResourceCollectionHealth = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources
			are defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
          Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
      	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>")
    @as("ResourceCollectionType")
    resourceCollectionType: resourceCollectionType,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Web Services tags that are used by resources in the resource collection.</p>
		       <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
   		tagging, so you can assign the same tag to resources from different services to indicate
   		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
   		table resource that you assign to an Lambda function. For more information about
   		using tags, see the <a href=\"https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf\">Tagging
   			best practices</a> whitepaper. </p>
   	     <p>Each Amazon Web Services tag has two parts. </p>
   	     <ul>
            <li>
   			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
   				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
   				<i>keys</i> are case-sensitive.</p>
   		       </li>
            <li>
   			         <p>An optional field known as a tag <i>value</i> (for example,
   				<code>111122223333</code>, <code>Production</code>, or a team
   				name). Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive.</p>
   		       </li>
         </ul>
   	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
   	     <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
    @as("Tags")
    tags: option<tagHealths>,
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>An array of <code>ServiceHealth</code> objects that describes the health of the Amazon Web Services
			services associated with the resources in the collection.</p>")
    @as("Service")
    service: option<serviceHealths>,
    @ocaml.doc("<p> The returned <code>CloudFormationHealthOverview</code> object that contains an
				<code>InsightHealthOverview</code> object with the requested system health
			information. </p>")
    @as("CloudFormation")
    cloudFormation: option<cloudFormationHealths>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "DescribeResourceCollectionHealthCommand"
  let make = (~resourceCollectionType, ~nextToken=?, ()) => new({nextToken, resourceCollectionType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeOrganizationResourceCollectionHealth = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<organizationResourceCollectionMaxResults>,
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>The ID of the organizational unit.</p>") @as("OrganizationalUnitIds")
    organizationalUnitIds: option<organizationalUnitIdList>,
    @ocaml.doc("<p>The ID of the Amazon Web Services account.</p>") @as("AccountIds")
    accountIds: option<accountIdList>,
    @ocaml.doc("<p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources
			are defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
          Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
      	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>")
    @as("OrganizationResourceCollectionType")
    organizationResourceCollectionType: organizationResourceCollectionType,
  }
  type response = {
    @ocaml.doc("<p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
   		tagging, so you can assign the same tag to resources from different services to indicate
   		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
   		table resource that you assign to an Lambda function. For more information about
   		using tags, see the <a href=\"https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf\">Tagging
   			best practices</a> whitepaper. </p>
   	     <p>Each Amazon Web Services tag has two parts. </p>
   	     <ul>
            <li>
   			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
   				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
   				<i>keys</i> are case-sensitive.</p>
   		       </li>
            <li>
   			         <p>An optional field known as a tag <i>value</i> (for example,
   				<code>111122223333</code>, <code>Production</code>, or a team
   				name). Omitting the tag <i>value</i> is the same as using an empty
   				string. Like tag <i>keys</i>, tag <i>values</i> are
   				case-sensitive.</p>
   		       </li>
         </ul>
   	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
   	     <important>
		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
			<code>Devops-guru-deployment-application</code> or
			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
			application might be <code>Devops-Guru-production-application/RDS</code> or
			<code>Devops-Guru-production-application/containers</code>.</p>
	        </important>")
    @as("Tags")
    tags: option<tagHealths>,
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>The name of the organization's account.</p>") @as("Account")
    account: option<accountHealths>,
    @ocaml.doc("<p>An array of <code>ServiceHealth</code> objects that describes the health of the Amazon Web Services
			services associated with the resources in the collection.</p>")
    @as("Service")
    service: option<serviceHealths>,
    @ocaml.doc("<p>The returned <code>CloudFormationHealthOverview</code> object that contains an
				<code>InsightHealthOverview</code> object with the requested system health
			information.</p>")
    @as("CloudFormation")
    cloudFormation: option<cloudFormationHealths>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "DescribeOrganizationResourceCollectionHealthCommand"
  let make = (
    ~organizationResourceCollectionType,
    ~maxResults=?,
    ~nextToken=?,
    ~organizationalUnitIds=?,
    ~accountIds=?,
    (),
  ) =>
    new({
      maxResults,
      nextToken,
      organizationalUnitIds,
      accountIds,
      organizationResourceCollectionType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateResourceCollection = {
  type t
  type request = {
    @as("ResourceCollection") resourceCollection: updateResourceCollectionFilter,
    @ocaml.doc("<p> Specifies if the resource collection in the request is added or deleted to the
			resource collection. </p>")
    @as("Action")
    action: updateResourceCollectionAction,
  }
  type response = {.}
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "UpdateResourceCollectionCommand"
  let make = (~resourceCollection, ~action, ()) => new({resourceCollection, action})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartCostEstimation = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token used to identify each cost estimate request.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The collection of Amazon Web Services resources used to create a monthly DevOps Guru cost estimate.</p>"
    )
    @as("ResourceCollection")
    resourceCollection: costEstimationResourceCollectionFilter,
  }
  type response = {.}
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "StartCostEstimationCommand"
  let make = (~resourceCollection, ~clientToken=?, ()) => new({clientToken, resourceCollection})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListNotificationChannels = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p> An array that contains the requested notification channels. </p>")
    @as("Channels")
    channels: option<channels>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "ListNotificationChannelsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResourceCollection = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p> The type of Amazon Web Services resource collections to return. The one valid value is
				<code>CLOUD_FORMATION</code> for Amazon Web Services CloudFormation stacks. </p>")
    @as("ResourceCollectionType")
    resourceCollectionType: resourceCollectionType,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p> The requested list of Amazon Web Services resource collections.
			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
          Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
      	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>")
    @as("ResourceCollection")
    resourceCollection: option<resourceCollectionFilter>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "GetResourceCollectionCommand"
  let make = (~resourceCollectionType, ~nextToken=?, ()) => new({nextToken, resourceCollectionType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCostEstimation = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>The estimated monthly cost to analyze the Amazon Web Services resources. This value is the sum of
			the estimated costs to analyze each resource in the <code>Costs</code> object in this
			response.</p>")
    @as("TotalCost")
    totalCost: option<cost>,
    @ocaml.doc("<p>The start and end time of the cost estimation.</p>") @as("TimeRange")
    timeRange: option<costEstimationTimeRange>,
    @ocaml.doc("<p>An array of <code>ResourceCost</code> objects that each contains details about the
			monthly cost estimate to analyze one of your Amazon Web Services resources.</p>")
    @as("Costs")
    costs: option<serviceResourceCosts>,
    @ocaml.doc("<p>The status of creating this cost estimate. If it's still in progress, the status
				<code>ONGOING</code> is returned. If it is finished, the status
				<code>COMPLETED</code> is returned.</p>")
    @as("Status")
    status: option<costEstimationStatus>,
    @ocaml.doc("<p>The collection of the Amazon Web Services resources used to create your monthly DevOps Guru cost
			estimate.</p>")
    @as("ResourceCollection")
    resourceCollection: option<costEstimationResourceCollectionFilter>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "GetCostEstimationCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeInsight = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the member account in the organization.</p>") @as("AccountId")
    accountId: option<awsAccountId>,
    @ocaml.doc("<p> The ID of the insight. </p>") @as("Id") id: insightId,
  }
  type response = {
    @ocaml.doc(
      "<p> A <code>ReactiveInsight</code> object that represents the requested insight. </p>"
    )
    @as("ReactiveInsight")
    reactiveInsight: option<reactiveInsight>,
    @ocaml.doc(
      "<p> A <code>ProactiveInsight</code> object that represents the requested insight. </p>"
    )
    @as("ProactiveInsight")
    proactiveInsight: option<proactiveInsight>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "DescribeInsightCommand"
  let make = (~id, ~accountId=?, ()) => new({accountId, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SearchOrganizationInsights = {
  type t
  type request = {
    @ocaml.doc("<p> The type of insights you are searching for (<code>REACTIVE</code> or
				<code>PROACTIVE</code>). </p>")
    @as("Type")
    type_: insightType,
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<searchOrganizationInsightsMaxResults>,
    @ocaml.doc("<p> A <code>SearchOrganizationInsightsFilters</code> object that is used to set the
			severity and status filters on your insight search. </p>")
    @as("Filters")
    filters: option<searchOrganizationInsightsFilters>,
    @as("StartTimeRange") startTimeRange: startTimeRange,
    @ocaml.doc("<p>The ID of the Amazon Web Services account. </p>") @as("AccountIds")
    accountIds: searchInsightsAccountIdList,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>An integer that specifies the number of open reactive insights in your Amazon Web Services
			account.</p>")
    @as("ReactiveInsights")
    reactiveInsights: option<reactiveInsights>,
    @ocaml.doc("<p>An integer that specifies the number of open proactive insights in your Amazon Web Services
			account.</p>")
    @as("ProactiveInsights")
    proactiveInsights: option<proactiveInsights>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "SearchOrganizationInsightsCommand"
  let make = (~type_, ~startTimeRange, ~accountIds, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({type_, nextToken, maxResults, filters, startTimeRange, accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SearchInsights = {
  type t
  type request = {
    @ocaml.doc("<p> The type of insights you are searching for (<code>REACTIVE</code> or
				<code>PROACTIVE</code>). </p>")
    @as("Type")
    type_: insightType,
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<searchInsightsMaxResults>,
    @ocaml.doc("<p> A <code>SearchInsightsFilters</code> object that is used to set the severity and
			status filters on your insight search. </p>")
    @as("Filters")
    filters: option<searchInsightsFilters>,
    @ocaml.doc("<p> The start of the time range passed in. Returned insights occurred after this time.
		</p>")
    @as("StartTimeRange")
    startTimeRange: startTimeRange,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p> The returned reactive insights. </p>") @as("ReactiveInsights")
    reactiveInsights: option<reactiveInsights>,
    @ocaml.doc("<p> The returned proactive insights. </p>") @as("ProactiveInsights")
    proactiveInsights: option<proactiveInsights>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "SearchInsightsCommand"
  let make = (~type_, ~startTimeRange, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({type_, nextToken, maxResults, filters, startTimeRange})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListOrganizationInsights = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>The ID of the organizational unit.</p>") @as("OrganizationalUnitIds")
    organizationalUnitIds: option<listInsightsOrganizationalUnitIdList>,
    @ocaml.doc("<p>The ID of the Amazon Web Services account. </p>") @as("AccountIds")
    accountIds: option<listInsightsAccountIdList>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<listInsightsMaxResults>,
    @as("StatusFilter") statusFilter: listInsightsStatusFilter,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>An integer that specifies the number of open reactive insights in your Amazon Web Services
			account.</p>")
    @as("ReactiveInsights")
    reactiveInsights: option<reactiveOrganizationInsights>,
    @ocaml.doc("<p>An integer that specifies the number of open proactive insights in your Amazon Web Services
			account.</p>")
    @as("ProactiveInsights")
    proactiveInsights: option<proactiveOrganizationInsights>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "ListOrganizationInsightsCommand"
  let make = (
    ~statusFilter,
    ~nextToken=?,
    ~organizationalUnitIds=?,
    ~accountIds=?,
    ~maxResults=?,
    (),
  ) => new({nextToken, organizationalUnitIds, accountIds, maxResults, statusFilter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListInsights = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<listInsightsMaxResults>,
    @ocaml.doc("<p> A filter used to filter the returned insights by their status. You can specify one
			status filter. </p>")
    @as("StatusFilter")
    statusFilter: listInsightsStatusFilter,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p> The returned list of reactive insights. </p>") @as("ReactiveInsights")
    reactiveInsights: option<reactiveInsights>,
    @ocaml.doc("<p> The returned list of proactive insights. </p>") @as("ProactiveInsights")
    proactiveInsights: option<proactiveInsights>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "ListInsightsCommand"
  let make = (~statusFilter, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, statusFilter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEvents = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Amazon Web Services account. </p>") @as("AccountId")
    accountId: option<awsAccountId>,
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<listEventsMaxResults>,
    @ocaml.doc("<p> A <code>ListEventsFilters</code> object used to specify which events to return.
		</p>")
    @as("Filters")
    filters: listEventsFilters,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p> A list of the requested events. </p>") @as("Events") events: events,
  }
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "ListEventsCommand"
  let make = (~filters, ~accountId=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({accountId, nextToken, maxResults, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Amazon Web Services account. </p>") @as("AccountId")
    accountId: option<awsAccountId>,
    @ocaml.doc("<p>A locale that specifies the language to use for recommendations.</p>")
    @as("Locale")
    locale: option<locale>,
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p> The ID of the requested insight. </p>") @as("InsightId") insightId: insightId,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p> An array of the requested recommendations. </p>") @as("Recommendations")
    recommendations: option<recommendations>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "ListRecommendationsCommand"
  let make = (~insightId, ~accountId=?, ~locale=?, ~nextToken=?, ()) =>
    new({accountId, locale, nextToken, insightId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAnomaly = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the member account.</p>") @as("AccountId")
    accountId: option<awsAccountId>,
    @ocaml.doc("<p> The ID of the anomaly. </p>") @as("Id") id: anomalyId,
  }
  type response = {
    @ocaml.doc(
      "<p> A <code>ReactiveAnomaly</code> object that represents the requested anomaly. </p>"
    )
    @as("ReactiveAnomaly")
    reactiveAnomaly: option<reactiveAnomaly>,
    @ocaml.doc(
      "<p> A <code>ProactiveAnomaly</code> object that represents the requested anomaly. </p>"
    )
    @as("ProactiveAnomaly")
    proactiveAnomaly: option<proactiveAnomaly>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "DescribeAnomalyCommand"
  let make = (~id, ~accountId=?, ()) => new({accountId, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAnomaliesForInsight = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Amazon Web Services account. </p>") @as("AccountId")
    accountId: option<awsAccountId>,
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<listAnomaliesForInsightMaxResults>,
    @ocaml.doc("<p> A time range used to specify when the requested anomalies started. All returned
			anomalies started during this time range. </p>")
    @as("StartTimeRange")
    startTimeRange: option<startTimeRange>,
    @ocaml.doc("<p> The ID of the insight. The returned anomalies belong to this insight. </p>")
    @as("InsightId")
    insightId: insightId,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p> An array of <code>ReactiveAnomalySummary</code> objects that represent the requested
			anomalies </p>")
    @as("ReactiveAnomalies")
    reactiveAnomalies: option<reactiveAnomalies>,
    @ocaml.doc("<p> An array of <code>ProactiveAnomalySummary</code> objects that represent the requested
			anomalies </p>")
    @as("ProactiveAnomalies")
    proactiveAnomalies: option<proactiveAnomalies>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "ListAnomaliesForInsightCommand"
  let make = (~insightId, ~accountId=?, ~nextToken=?, ~maxResults=?, ~startTimeRange=?, ()) =>
    new({accountId, nextToken, maxResults, startTimeRange, insightId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
