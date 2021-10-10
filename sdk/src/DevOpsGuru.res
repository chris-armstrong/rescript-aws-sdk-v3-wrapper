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
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
  | @as("CANNOT_PARSE") #CANNOT_PARSE
  | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION
]
type uuidNextToken = string
type updateResourceCollectionAction = [@as("REMOVE") #REMOVE | @as("ADD") #ADD]
type topicArn = string
type timestamp_ = Js.Date.t
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
type searchInsightsMaxResults = int
type retryAfterSeconds = int
type resourceType = string
type resourceIdType = string
type resourceIdString = string
type resourceHours = float
type resourceCollectionType = [
  | @as("AWS_SERVICE") #AWS_SERVICE
  | @as("AWS_CLOUD_FORMATION") #AWS_CLOUD_FORMATION
]
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
@ocaml.doc("<p>
			Specifies if DevOps Guru is enabled to create an AWS Systems Manager OpsItem for each created insight.
		</p>")
type optInStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type numReactiveInsights = int
type numProactiveInsights = int
type numOpenReactiveInsights = int
type numOpenProactiveInsights = int
type numMetricsAnalyzed = int
type notificationChannelId = string
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
type clientToken = string
type anomalyStatus = [@as("CLOSED") #CLOSED | @as("ONGOING") #ONGOING]
type anomalySeverity = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type anomalyLimit = float
type anomalyId = string
@ocaml.doc("<p>
			The field associated with the validation exception.
		</p>")
type validationExceptionField = {
  @ocaml.doc("<p>
			The message associated with the validation exception with information to help 
			determine its cause.
		</p>")
  @as("Message")
  message: errorMessageString,
  @ocaml.doc("<p>
			The name of the field.
		</p>")
  @as("Name")
  name: errorNameString,
}
type updateStackNames = array<stackName>
@ocaml.doc("<p>
			A time range used to specify when the behavior of an insight or anomaly started. 
		</p>")
type startTimeRange = {
  @ocaml.doc("<p>
			The end time of the time range.
		</p>")
  @as("ToTime")
  toTime: option<timestamp_>,
  @ocaml.doc("<p>
			The start time of the time range.
		</p>")
  @as("FromTime")
  fromTime: option<timestamp_>,
}
type stackNames = array<stackName>
@ocaml.doc("<p> Contains the Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic. </p>
		
		       <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission 
				to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. 
				For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html\">Permissions 
				for cross account Amazon SNS topics</a>.</p>
				     <p>If you use an Amazon SNS topic that is encrypted by an AWS Key Management Service customer-managed key (CMK), then you must add permissions 
				to the CMK. For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html\">Permissions for 
				AWS KMS–encrypted Amazon SNS topics</a>.</p>")
type snsChannelConfig = {
  @ocaml.doc(
    "<p> The Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic. </p>"
  )
  @as("TopicArn")
  topicArn: option<topicArn>,
}
@ocaml.doc("<p>An object that contains information about the estimated monthly cost to 
			analyze an AWS resource. For more information, 
			see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html\">Estimate your 
			Amazon DevOps Guru costs</a> and 
			<a href=\"http://aws.amazon.com/devops-guru/pricing/\">Amazon DevOps Guru pricing</a>.</p>")
type serviceResourceCost = {
  @ocaml.doc(
    "<p>The total estimated monthly cost to analyze the active resources for this resource.</p>"
  )
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
			events, or logs within an hour, otherwise it is <code>INACTIVE</code>. You pay for 
			the number of active AWS resource hours analyzed for each resource. Inactive resources are 
			not charged.
		</p>")
  @as("State")
  state: option<costEstimationServiceResourceState>,
  @ocaml.doc("<p>The type of the AWS resource.</p>") @as("Type") type_: option<resourceType>,
}
type serviceNames = array<serviceName>
@ocaml.doc(
  "<p>Contains the number of open proactive and reactive insights in an analyzed AWS service.</p>"
)
type serviceInsightHealth = {
  @ocaml.doc("<p>The number of open reactive insights in the AWS service</p>")
  @as("OpenReactiveInsights")
  openReactiveInsights: option<numOpenReactiveInsights>,
  @ocaml.doc("<p>The number of open proactive insights in the AWS service</p>")
  @as("OpenProactiveInsights")
  openProactiveInsights: option<numOpenProactiveInsights>,
}
@ocaml.doc("<p>
			Information about an AWS resource that emitted and event that is related to a recommendation in an insight. 
		</p>")
type recommendationRelatedEventResource = {
  @ocaml.doc("<p>
			The type of the resource that emitted the event. This corresponds to the <code>Type</code> field in an 
			<code>EventResource</code> object.
		</p>")
  @as("Type")
  type_: option<recommendationRelatedEventResourceType>,
  @ocaml.doc("<p>
			The name of the resource that emitted the event. This corresponds to the <code>Name</code> field in an 
			<code>EventResource</code> object.
		</p>")
  @as("Name")
  name: option<recommendationRelatedEventResourceName>,
}
@ocaml.doc("<p>
			Information about an Amazon CloudWatch metric that is analyzed by DevOps Guru. It is one of many analyzed metrics 
			that are used to generate insights.
		</p>")
type recommendationRelatedCloudWatchMetricsSourceDetail = {
  @ocaml.doc(
    "<p>The namespace of the CloudWatch metric. A namespace is a container for CloudWatch metrics.</p>"
  )
  @as("Namespace")
  namespace: option<recommendationRelatedCloudWatchMetricsSourceNamespace>,
  @ocaml.doc("<p>The name of the CloudWatch metric.</p>") @as("MetricName")
  metricName: option<recommendationRelatedCloudWatchMetricsSourceMetricName>,
}
@ocaml.doc("<p>
			Information about a resource in which DevOps Guru detected anomalous behavior.
		</p>")
type recommendationRelatedAnomalyResource = {
  @ocaml.doc("<p>
			The type of the resource.
		</p>")
  @as("Type")
  type_: option<recommendationRelatedAnomalyResourceType>,
  @ocaml.doc("<p>
			The name of the resource.
		</p>")
  @as("Name")
  name: option<recommendationRelatedAnomalyResourceName>,
}
@ocaml.doc("<p>
			The time range during which anomalous behavior in a proactive anomaly or an insight is expected to occur. 
		</p>")
type predictionTimeRange = {
  @ocaml.doc("<p>
			The time when the behavior in a proactive insight is expected to end.
		</p>")
  @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>
			The time range during which a metric limit is expected to be exceeded. This applies to proactive insights only.
		</p>")
  @as("StartTime")
  startTime: timestamp_,
}
@ocaml.doc("<p>
			Information about whether DevOps Guru is configured to create an OpsItem in AWS Systems Manager OpsCenter for each created insight.
		</p>")
type opsCenterIntegrationConfig = {
  @ocaml.doc("<p>
			Specifies if DevOps Guru is enabled to create an AWS Systems Manager OpsItem for each created insight.
		</p>")
  @as("OptInStatus")
  optInStatus: option<optInStatus>,
}
@ocaml.doc("<p>
			Information about whether DevOps Guru is configured to create an OpsItem in AWS Systems Manager OpsCenter for each created insight.
		</p>")
type opsCenterIntegration = {
  @ocaml.doc("<p>
			Specifies if DevOps Guru is enabled to create an AWS Systems Manager OpsItem for each created insight.
		</p>")
  @as("OptInStatus")
  optInStatus: option<optInStatus>,
}
@ocaml.doc("<p>
      	Used to filter for insights that have the status <code>ONGOING</code>.
      </p>")
type listInsightsOngoingStatusFilter = {
  @ocaml.doc("<p>
   		Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
   	</p>")
  @as("Type")
  type_: insightType,
}
@ocaml.doc("<p> A time ranged that specifies when the observed behavior in an insight started and
			ended. </p>")
type insightTimeRange = {
  @ocaml.doc("<p>
			The time when the behavior described in an insight ended.
		</p>")
  @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>
			The time when the behavior described in an insight started.
		</p>")
  @as("StartTime")
  startTime: timestamp_,
}
type insightStatuses = array<insightStatus>
type insightSeverities = array<insightSeverity>
@ocaml.doc("<p>
      	Information about the number of open reactive and proactive insights that can be 
      	used to gauge the health of your system.
      </p>")
type insightHealth = {
  @ocaml.doc("<p>
      	The Meant Time to Recover (MTTR) for the insight.	
      </p>")
  @as("MeanTimeToRecoverInMilliseconds")
  meanTimeToRecoverInMilliseconds: option<meanTimeToRecoverInMilliseconds>,
  @ocaml.doc("<p>
      	The number of open reactive insights.
      </p>")
  @as("OpenReactiveInsights")
  openReactiveInsights: option<numOpenReactiveInsights>,
  @ocaml.doc("<p>
      	The number of open proactive insights.
      </p>")
  @as("OpenProactiveInsights")
  openProactiveInsights: option<numOpenProactiveInsights>,
}
@ocaml.doc("<p>
      	Information about insight feedback received from a customer.
      </p>")
type insightFeedback = {
  @ocaml.doc("<p>
      	The feedback provided by the customer.
      </p>")
  @as("Feedback")
  feedback: option<insightFeedbackOption>,
  @ocaml.doc("<p>
      	The insight feedback ID.
      </p>")
  @as("Id")
  id: option<insightId>,
}
@ocaml.doc("<p>
			The time range during which an AWS event occurred. AWS resource events and metrics are analyzed by DevOps Guru to find anomalous behavior and 
			provide recommendations to improve your operational solutions.
		</p>")
type eventTimeRange = {
  @ocaml.doc("<p>
			The time when the event ended.
		</p>")
  @as("ToTime")
  toTime: timestamp_,
  @ocaml.doc("<p>
			The time when the event started.
		</p>")
  @as("FromTime")
  fromTime: timestamp_,
}
@ocaml.doc("<p>
			The AWS resource that emitted an event. AWS resource events and metrics are analyzed by DevOps Guru to find anomalous behavior and 
			provide recommendations to improve your operational solutions.
		</p>")
type eventResource = {
  @ocaml.doc("<p>
			The Amazon Resource Name (ARN) of the resource that emitted an event.
		</p>")
  @as("Arn")
  arn: option<eventResourceArn>,
  @ocaml.doc("<p>
			The name of the resource that emitted an event.
		</p>")
  @as("Name")
  name: option<eventResourceName>,
  @ocaml.doc("<p>
			The type of resource that emitted an event.
		</p>")
  @as("Type")
  type_: option<eventResourceType>,
}
@ocaml.doc("<p>
      	A range of time that specifies when anomalous behavior in an anomaly or insight ended.
      </p>")
type endTimeRange = {
  @ocaml.doc("<p>
      	The latest end time in the time range.
      </p>")
  @as("ToTime")
  toTime: option<timestamp_>,
  @ocaml.doc("<p>
      	The earliest end time in the time range.
      </p>")
  @as("FromTime")
  fromTime: option<timestamp_>,
}
@ocaml.doc("<p>The time range of a cost estimation.</p>")
type costEstimationTimeRange = {
  @ocaml.doc("<p>The end time of the cost estimation.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The start time of the cost estimation.</p>") @as("StartTime")
  startTime: option<timestamp_>,
}
type costEstimationStackNames = array<stackName>
@ocaml.doc("<p> The dimension of a Amazon CloudWatch metric that is used when DevOps Guru analyzes the resources in your
			account for operational problems and anomalous behavior. A dimension is a name/value pair
			that is part of the identity of a metric. A metric can have up to 10 dimensions. For more
			information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension\">Dimensions</a> in the <i>Amazon CloudWatch User Guide</i>. </p>")
type cloudWatchMetricsDimension = {
  @ocaml.doc("<p>
			The value of the CloudWatch dimension.
		</p>")
  @as("Value")
  value: option<cloudWatchMetricsDimensionValue>,
  @ocaml.doc("<p>
			The name of the CloudWatch dimension.
		</p>")
  @as("Name")
  name: option<cloudWatchMetricsDimensionName>,
}
@ocaml.doc("<p>
			A time range that specifies when the observed unusual behavior in an anomaly started and ended.
		</p>")
type anomalyTimeRange = {
  @ocaml.doc("<p> The time when the anomalous behavior ended. </p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>
			The time when the anomalous behavior started.
		</p>")
  @as("StartTime")
  startTime: timestamp_,
}
@ocaml.doc("<p>
			An array of fields that are associated with the validation exception.
		</p>")
type validationExceptionFields = array<validationExceptionField>
@ocaml.doc("<p>
			Information about updating the integration status of an AWS service, such as AWS Systems Manager, with DevOps Guru. 
		</p>")
type updateServiceIntegrationConfig = {
  @as("OpsCenter") opsCenter: option<opsCenterIntegrationConfig>,
}
@ocaml.doc(
  "<p> Contains the names of AWS CloudFormation stacks used to update a collection of stacks. You can specify up to 500 AWS CloudFormation stacks.</p>"
)
type updateCloudFormationCollectionFilter = {
  @ocaml.doc("<p>
			An array of the names of the AWS CloudFormation stacks to update. You can specify up to 500 AWS CloudFormation stacks.
		</p>")
  @as("StackNames")
  stackNames: option<updateStackNames>,
}
type serviceResourceCosts = array<serviceResourceCost>
@ocaml.doc("<p>
			Information about the integration of DevOps Guru with another AWS service, such as AWS Systems Manager.
		</p>")
type serviceIntegrationConfig = {
  @ocaml.doc("<p>
			Information about whether DevOps Guru is configured to create an OpsItem in AWS Systems Manager OpsCenter for each created insight. 
		</p>")
  @as("OpsCenter")
  opsCenter: option<opsCenterIntegration>,
}
@ocaml.doc("<p>Represents the health of an AWS service.</p>")
type serviceHealth = {
  @ocaml.doc("<p>Represents the health of an AWS service. This is a <code>ServiceInsightHealth</code> that 
		contains the number of open proactive and reactive insights for this service.</p>")
  @as("Insight")
  insight: option<serviceInsightHealth>,
  @ocaml.doc("<p>The name of the AWS service.</p>") @as("ServiceName")
  serviceName: option<serviceName>,
}
@ocaml.doc("<p>A collection of the names of AWS services.</p>")
type serviceCollection = {
  @ocaml.doc("<p>An array of strings that each specifies the name of an AWS service.</p>")
  @as("ServiceNames")
  serviceNames: option<serviceNames>,
}
type recommendationRelatedEventResources = array<recommendationRelatedEventResource>
type recommendationRelatedCloudWatchMetricsSourceDetails = array<
  recommendationRelatedCloudWatchMetricsSourceDetail,
>
type recommendationRelatedAnomalyResources = array<recommendationRelatedAnomalyResource>
@ocaml.doc("<p> Information about notification channels you have configured with DevOps Guru.
			The one 
      	supported notification channel is Amazon Simple Notification Service (Amazon SNS).</p>")
type notificationChannelConfig = {
  @ocaml.doc("<p>
			Information about a notification channel configured in DevOps Guru to send notifications when insights are created.
		</p>
		
		       <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission 
				to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. 
				For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html\">Permissions 
				for cross account Amazon SNS topics</a>.</p>
				     <p>If you use an Amazon SNS topic that is encrypted by an AWS Key Management Service customer-managed key (CMK), then you must add permissions 
				to the CMK. For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html\">Permissions for 
				AWS KMS–encrypted Amazon SNS topics</a>.</p>")
  @as("Sns")
  sns: snsChannelConfig,
}
@ocaml.doc("<p>
   		Used to filter for insights that have the status <code>CLOSED</code>.
   	</p>")
type listInsightsClosedStatusFilter = {
  @ocaml.doc("<p>
   		A time range used to specify when the behavior of the filtered insights ended.
   	</p>")
  @as("EndTimeRange")
  endTimeRange: endTimeRange,
  @ocaml.doc("<p>
      	Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
      </p>")
  @as("Type")
  type_: insightType,
}
@ocaml.doc("<p>
   		Used to filter for insights that have any status.
   	</p>")
type listInsightsAnyStatusFilter = {
  @ocaml.doc("<p>
   		A time range used to specify when the behavior of the filtered insights started.
   	</p>")
  @as("StartTimeRange")
  startTimeRange: startTimeRange,
  @ocaml.doc("<p>
   		Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
   	</p>")
  @as("Type")
  type_: insightType,
}
type eventResources = array<eventResource>
type cloudWatchMetricsDimensions = array<cloudWatchMetricsDimension>
@ocaml.doc("<p>
   		Information about the health of AWS resources in your account that are specified by an AWS CloudFormation stack.
   	</p>")
type cloudFormationHealth = {
  @ocaml.doc("<p>
   		Information about the health of the AWS resources in your account that are specified by an AWS CloudFormation stack, including 
   		the number of open proactive, open reactive insights, and the Mean Time to Recover (MTTR) of closed insights.
   	</p>")
  @as("Insight")
  insight: option<insightHealth>,
  @ocaml.doc("<p>
   		The name of the CloudFormation stack.
   	</p>")
  @as("StackName")
  stackName: option<stackName>,
}
@ocaml.doc("<p>Information about an AWS CloudFormation stack used to create a monthly cost estimate for DevOps Guru to analyze 
		AWS resources. The maximum number of stacks you can specify for a cost estimate is one. The estimate created is for the cost 
		to analyze the AWS resources defined by the stack. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html\">Stacks</a> 
			in the <i>AWS CloudFormation User Guide</i>.</p>")
type cloudFormationCostEstimationResourceCollectionFilter = {
  @ocaml.doc("<p>An array of CloudFormation stack names. Its size is fixed at 1 item.</p>")
  @as("StackNames")
  stackNames: option<costEstimationStackNames>,
}
@ocaml.doc("<p>
			Information about AWS CloudFormation stacks. You can use up to 500 stacks to specify which AWS resources in your account to analyze. 
			For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html\">Stacks</a> 
			in the <i>AWS CloudFormation User Guide</i>.
		</p>")
type cloudFormationCollectionFilter = {
  @ocaml.doc("<p>
			An array of CloudFormation stack names.
		</p>")
  @as("StackNames")
  stackNames: option<stackNames>,
}
@ocaml.doc("<p>
			Information about AWS CloudFormation stacks. You can use up to 500 stacks to specify which AWS resources in your account to analyze. 
			For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html\">Stacks</a> 
			in the <i>AWS CloudFormation User Guide</i>.
		</p>")
type cloudFormationCollection = {
  @ocaml.doc("<p>
			An array of CloudFormation stack names.
		</p>")
  @as("StackNames")
  stackNames: option<stackNames>,
}
@ocaml.doc("<p>
			Contains information used to update a collection of AWS resources.
		</p>")
type updateResourceCollectionFilter = {
  @ocaml.doc("<p>
			An collection of AWS CloudFormation stacks. You can specify up to 500 AWS CloudFormation stacks.
		</p>")
  @as("CloudFormation")
  cloudFormation: option<updateCloudFormationCollectionFilter>,
}
type serviceHealths = array<serviceHealth>
@ocaml.doc("<p>
			Information about a filter used to specify which AWS resources are analyzed for anomalous behavior by DevOps Guru.
		</p>")
type resourceCollectionFilter = {
  @ocaml.doc("<p>
			Information about AWS CloudFormation stacks. You can use up to 500 stacks to specify which AWS resources in your account to analyze. 
			For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html\">Stacks</a> 
			in the <i>AWS CloudFormation User Guide</i>.
		</p>")
  @as("CloudFormation")
  cloudFormation: option<cloudFormationCollectionFilter>,
}
@ocaml.doc("<p>
			A collection of AWS resources supported by DevOps Guru. The one type of AWS resource collection supported is AWS CloudFormation stacks. DevOps Guru can be configured to analyze 
      	only the AWS resources that are defined in the stacks. You can specify up to 500 AWS CloudFormation stacks.
		</p>")
type resourceCollection = {
  @ocaml.doc("<p> An array of the names of AWS CloudFormation stacks. The stacks define AWS resources
   		that DevOps Guru analyzes. You can specify up to 500 AWS CloudFormation stacks.
   	</p>")
  @as("CloudFormation")
  cloudFormation: option<cloudFormationCollection>,
}
@ocaml.doc("<p>
			Information about an event that is related to a recommendation.
		</p>")
type recommendationRelatedEvent = {
  @ocaml.doc("<p>
			A <code>ResourceCollection</code> object that contains arrays of the names of AWS 
			CloudFormation stacks. You can specify up to 500 AWS CloudFormation stacks.
		</p>")
  @as("Resources")
  resources: option<recommendationRelatedEventResources>,
  @ocaml.doc("<p>
			The name of the event. This corresponds to the <code>Name</code> field in an 
			<code>Event</code> object.
		</p>")
  @as("Name")
  name: option<recommendationRelatedEventName>,
}
@ocaml.doc("<p>
			Contains an array of <code>RecommendationRelatedCloudWatchMetricsSourceDetail</code> objects that contain the name 
			and namespace of an Amazon CloudWatch metric.
		</p>")
type recommendationRelatedAnomalySourceDetail = {
  @ocaml.doc("<p> An array of <code>CloudWatchMetricsDetail</code> objects that contains information
			about the analyzed metrics that displayed anomalous behavior. </p>")
  @as("CloudWatchMetrics")
  cloudWatchMetrics: option<recommendationRelatedCloudWatchMetricsSourceDetails>,
}
@ocaml.doc("<p>
			Information about a notification channel. A notification channel is used to notify you when DevOps Guru creates an insight. 
			The one 
      	supported notification channel is Amazon Simple Notification Service (Amazon SNS).
		</p>
		
		       <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission 
				to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. 
				For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html\">Permissions 
				for cross account Amazon SNS topics</a>.</p>
				     <p>If you use an Amazon SNS topic that is encrypted by an AWS Key Management Service customer-managed key (CMK), then you must add permissions 
				to the CMK. For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html\">Permissions for 
				AWS KMS–encrypted Amazon SNS topics</a>.</p>")
type notificationChannel = {
  @ocaml.doc("<p>
			A <code>NotificationChannelConfig</code> object that contains information about configured notification channels.
		</p>")
  @as("Config")
  config: option<notificationChannelConfig>,
  @ocaml.doc("<p>
			The ID of a notification channel.
		</p>")
  @as("Id")
  id: option<notificationChannelId>,
}
@ocaml.doc("<p>
      	A filter used by <code>ListInsights</code> to specify which insights to return.
      </p>")
type listInsightsStatusFilter = {
  @ocaml.doc("<p>
   		A <code>ListInsightsAnyStatusFilter</code> that specifies insights of any status 
   		that are either <code>REACTIVE</code> or <code>PROACTIVE</code>.
   	</p>")
  @as("Any")
  any: option<listInsightsAnyStatusFilter>,
  @ocaml.doc("<p>
   		A <code>ListInsightsClosedStatusFilter</code> that specifies closed insights that are 
   		either <code>REACTIVE</code> or <code>PROACTIVE</code>.
   	</p>")
  @as("Closed")
  closed: option<listInsightsClosedStatusFilter>,
  @ocaml.doc("<p>
      	A <code>ListInsightsAnyStatusFilter</code> that specifies ongoing insights 
      	that are either <code>REACTIVE</code> or <code>PROACTIVE</code>.
      </p>")
  @as("Ongoing")
  ongoing: option<listInsightsOngoingStatusFilter>,
}
@ocaml.doc("<p>Information about a filter used to specify which AWS resources are analyzed to create 
			a monthly DevOps Guru cost estimate. For more information, 
			see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html\">Estimate your 
			Amazon DevOps Guru costs</a> and 
			<a href=\"http://aws.amazon.com/devops-guru/pricing/\">Amazon DevOps Guru pricing</a>.
		</p>")
type costEstimationResourceCollectionFilter = {
  @ocaml.doc("<p>An object that specifies the CloudFormation stack that defines the AWS resources 
			used to create a monthly estimate for DevOps Guru.</p>")
  @as("CloudFormation")
  cloudFormation: option<cloudFormationCostEstimationResourceCollectionFilter>,
}
@ocaml.doc("<p>
			Information about an Amazon CloudWatch metric.
		</p>")
type cloudWatchMetricsDetail = {
  @ocaml.doc("<p>
			The length of time associated with the CloudWatch metric in number of seconds.
		</p>")
  @as("Period")
  period: option<cloudWatchMetricsPeriod>,
  @ocaml.doc("<p>
			The unit of measure used for the CloudWatch metric. For example, <code>Bytes</code>, <code>Seconds</code>, 
			<code>Count</code>, and <code>Percent</code>.
		</p>")
  @as("Unit")
  unit_: option<cloudWatchMetricsUnit>,
  @ocaml.doc("<p>
			The type of statistic associated with the CloudWatch metric. For more information, see 
			<a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic\">Statistics</a> in the 
			<i>Amazon CloudWatch User Guide</i>.
		</p>")
  @as("Stat")
  stat: option<cloudWatchMetricsStat>,
  @ocaml.doc("<p>
			An array of CloudWatch dimensions associated with 
		</p>")
  @as("Dimensions")
  dimensions: option<cloudWatchMetricsDimensions>,
  @ocaml.doc("<p>
			The namespace of the CloudWatch metric. A namespace is a container for CloudWatch metrics.
		</p>")
  @as("Namespace")
  namespace: option<cloudWatchMetricsNamespace>,
  @ocaml.doc("<p>
			The name of the CloudWatch metric.
		</p>")
  @as("MetricName")
  metricName: option<cloudWatchMetricsMetricName>,
}
type cloudFormationHealths = array<cloudFormationHealth>
@ocaml.doc("<p>
   		Specifies one or more severity values and one or more status values that are used to search 
   		for insights. 
   	</p>")
type searchInsightsFilters = {
  @ocaml.doc("<p>A collection of the names of AWS services.</p>") @as("ServiceCollection")
  serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p>
   		An array of status values used to search for insights.
   	</p>")
  @as("Statuses")
  statuses: option<insightStatuses>,
  @ocaml.doc("<p>
   		An array of severity values used to search for insights.
   	</p>")
  @as("Severities")
  severities: option<insightSeverities>,
}
type relatedAnomalySourceDetails = array<recommendationRelatedAnomalySourceDetail>
type recommendationRelatedEvents = array<recommendationRelatedEvent>
@ocaml.doc("<p> Information about a reactive insight. This object is returned by
				<code>DescribeInsight.</code>
         </p>")
type reactiveInsightSummary = {
  @ocaml.doc("<p>A collection of the names of AWS services.</p>") @as("ServiceCollection")
  serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @ocaml.doc("<p>
			The status of a reactive insight.
		</p>")
  @as("Status")
  status: option<insightStatus>,
  @ocaml.doc("<p>
			The severity of a reactive insight.
		</p>")
  @as("Severity")
  severity: option<insightSeverity>,
  @ocaml.doc("<p>
			The name of a reactive insight.
		</p>")
  @as("Name")
  name: option<insightName>,
  @ocaml.doc("<p>
			The ID of a reactive summary.
		</p>")
  @as("Id")
  id: option<insightId>,
}
@ocaml.doc("<p>
			Information about a reactive insight. This object is returned by <code>ListInsights</code>.
		</p>")
type reactiveInsight = {
  @ocaml.doc("<p>
			The ID of the AWS System Manager OpsItem created for this insight. You must enable 
			the creation of OpstItems insights before they are created for each insight.
		</p>")
  @as("SsmOpsItemId")
  ssmOpsItemId: option<ssmOpsItemId>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @ocaml.doc("<p>
			The status of a reactive insight.
		</p>")
  @as("Status")
  status: option<insightStatus>,
  @ocaml.doc("<p>
			The severity of a reactive insight.
		</p>")
  @as("Severity")
  severity: option<insightSeverity>,
  @ocaml.doc("<p>
			The name of a reactive insight.
		</p>")
  @as("Name")
  name: option<insightName>,
  @ocaml.doc("<p>
			The ID of a reactive insight.
		</p>")
  @as("Id")
  id: option<insightId>,
}
@ocaml.doc("<p>Details about a proactive insight. This object is returned by
			<code>DescribeInsight.</code>
         </p>")
type proactiveInsightSummary = {
  @ocaml.doc("<p>A collection of the names of AWS services.</p>") @as("ServiceCollection")
  serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @ocaml.doc("<p>The status of the proactive insight. </p>") @as("Status")
  status: option<insightStatus>,
  @ocaml.doc("<p>The severity of the proactive insight. </p>") @as("Severity")
  severity: option<insightSeverity>,
  @ocaml.doc("<p>The name of the proactive insight. </p>") @as("Name") name: option<insightName>,
  @ocaml.doc("<p>The ID of the proactive insight. </p>") @as("Id") id: option<insightId>,
}
@ocaml.doc(
  "<p>Details about a proactive insight. This object is returned by <code>ListInsights</code>.</p>"
)
type proactiveInsight = {
  @ocaml.doc("<p>
			The ID of the AWS System Manager OpsItem created for this insight. You must enable 
			the creation of OpstItems insights before they are created for each insight.
		</p>")
  @as("SsmOpsItemId")
  ssmOpsItemId: option<ssmOpsItemId>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @ocaml.doc("<p>The status of the proactive insight. </p>") @as("Status")
  status: option<insightStatus>,
  @ocaml.doc("<p>The severity of the proactive insight. </p>") @as("Severity")
  severity: option<insightSeverity>,
  @ocaml.doc("<p>The name of the proactive insight. </p>") @as("Name") name: option<insightName>,
  @ocaml.doc("<p>The ID of the proactive insight. </p>") @as("Id") id: option<insightId>,
}
@ocaml.doc("<p>
			Filters you can use to specify which events are returned when <code>ListEvents</code> is called.
		</p>")
type listEventsFilters = {
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p>
			The source, <code>AWS_CLOUD_TRAIL</code> or <code>AWS_CODE_DEPLOY</code>, of the events you want returned.
		</p>")
  @as("DataSource")
  dataSource: option<eventDataSource>,
  @ocaml.doc("<p>
			The AWS source that emitted the events you want to filter for.
		</p>")
  @as("EventSource")
  eventSource: option<eventSource>,
  @ocaml.doc("<p>
			The class of the events you want to filter for, such as an infrastructure change, a deployment, or a schema change.      	
		</p>")
  @as("EventClass")
  eventClass: option<eventClass>,
  @ocaml.doc("<p> A time range during which you want the filtered events to have occurred. </p>")
  @as("EventTimeRange")
  eventTimeRange: option<eventTimeRange>,
  @ocaml.doc("<p>
			An ID of an insight that is related to the events you want to filter for.
		</p>")
  @as("InsightId")
  insightId: option<insightId>,
}
@ocaml.doc("<p>
			An AWS resource event. AWS resource events and metrics are analyzed by DevOps Guru to find anomalous behavior and 
			provide recommendations to improve your operational solutions.
		</p>")
type event = {
  @ocaml.doc("<p>
			An <code>EventResource</code> object that contains information about the resource that emitted the event.
		</p>")
  @as("Resources")
  resources: option<eventResources>,
  @ocaml.doc("<p>
			The class of the event. The class specifies what the event is related to, such as an infrastructure change, a deployment, or a schema change.
		</p>")
  @as("EventClass")
  eventClass: option<eventClass>,
  @ocaml.doc("<p>
			The source, <code>AWS_CLOUD_TRAIL</code> or <code>AWS_CODE_DEPLOY</code>, where DevOps Guru analysis found the event.
		</p>")
  @as("DataSource")
  dataSource: option<eventDataSource>,
  @ocaml.doc("<p>
			The name of the event.
		</p>")
  @as("Name")
  name: option<eventName>,
  @ocaml.doc("<p>
			The AWS source that emitted the event.
		</p>")
  @as("EventSource")
  eventSource: option<eventSource>,
  @ocaml.doc("<p> A <code>Timestamp</code> that specifies the time the event occurred. </p>")
  @as("Time")
  time: option<timestamp_>,
  @ocaml.doc("<p>
			The ID of the event.
		</p>")
  @as("Id")
  id: option<eventId>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
}
type cloudWatchMetricsDetails = array<cloudWatchMetricsDetail>
type channels = array<notificationChannel>
@ocaml.doc("<p>
			Information about an anomaly that is related to a recommendation.
		</p>")
type recommendationRelatedAnomaly = {
  @ocaml.doc("<p>
			Information about where the anomalous behavior related the recommendation was found. For example, details in Amazon CloudWatch metrics.
		</p>")
  @as("SourceDetails")
  sourceDetails: option<relatedAnomalySourceDetails>,
  @ocaml.doc("<p>
			An array of objects that represent resources in which DevOps Guru detected anomalous behavior. Each object contains the name 
			and type of the resource.
		</p>")
  @as("Resources")
  resources: option<recommendationRelatedAnomalyResources>,
}
type reactiveInsights = array<reactiveInsightSummary>
type proactiveInsights = array<proactiveInsightSummary>
type events = array<event>
@ocaml.doc("<p> Details about the source of the anomalous operational data that triggered the anomaly. The
			one supported source is Amazon CloudWatch metrics. </p>")
type anomalySourceDetails = {
  @ocaml.doc("<p> An array of <code>CloudWatchMetricsDetail</code> object that contains information
			about the analyzed metrics that displayed anomalous behavior. </p>")
  @as("CloudWatchMetrics")
  cloudWatchMetrics: option<cloudWatchMetricsDetails>,
}
type recommendationRelatedAnomalies = array<recommendationRelatedAnomaly>
@ocaml.doc("<p>Details about a reactive anomaly. This object is returned by
			<code>DescribeAnomaly.</code>
         </p>")
type reactiveAnomalySummary = {
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p>
			The ID of the insight that contains this anomaly. An insight is composed of related anomalies.
		</p>")
  @as("AssociatedInsightId")
  associatedInsightId: option<insightId>,
  @ocaml.doc("<p>
			Details about the source of the analyzed operational data that triggered the anomaly. The one supported source is Amazon CloudWatch metrics. 
		</p>")
  @as("SourceDetails")
  sourceDetails: option<anomalySourceDetails>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @ocaml.doc("<p>
			The status of the reactive anomaly.
		</p>")
  @as("Status")
  status: option<anomalyStatus>,
  @ocaml.doc("<p>
			The severity of the reactive anomaly.			
		</p>")
  @as("Severity")
  severity: option<anomalySeverity>,
  @ocaml.doc("<p>
			The ID of the reactive anomaly.
		</p>")
  @as("Id")
  id: option<anomalyId>,
}
@ocaml.doc(
  "<p>Details about a reactive anomaly.  This object is returned by <code>ListAnomalies</code>.</p>"
)
type reactiveAnomaly = {
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p>
			The ID of the insight that contains this anomaly. An insight is composed of related anomalies.
		</p>")
  @as("AssociatedInsightId")
  associatedInsightId: option<insightId>,
  @ocaml.doc("<p>
			Details about the source of the analyzed operational data that triggered the anomaly. The one supported source is Amazon CloudWatch metrics. 
		</p>")
  @as("SourceDetails")
  sourceDetails: option<anomalySourceDetails>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @ocaml.doc("<p>
			The status of the anomaly.
		</p>")
  @as("Status")
  status: option<anomalyStatus>,
  @ocaml.doc("<p>The severity of the anomaly. </p>") @as("Severity")
  severity: option<anomalySeverity>,
  @ocaml.doc("<p>The ID of the reactive anomaly. </p>") @as("Id") id: option<anomalyId>,
}
@ocaml.doc("<p>Details about a proactive anomaly. This object is returned by
			<code>DescribeAnomaly.</code>
         </p>")
type proactiveAnomalySummary = {
  @ocaml.doc("<p>
			A threshold that was exceeded by behavior in analyzed resources. Exceeding this
			threshold is related to the anomalous behavior that generated this anomaly.
		</p>")
  @as("Limit")
  limit: option<anomalyLimit>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p>
			The ID of the insight that contains this anomaly. An insight is composed of related anomalies.
		</p>")
  @as("AssociatedInsightId")
  associatedInsightId: option<insightId>,
  @ocaml.doc("<p>
			Details about the source of the analyzed operational data that triggered the anomaly. The one supported source is Amazon CloudWatch metrics. 
		</p>")
  @as("SourceDetails")
  sourceDetails: option<anomalySourceDetails>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @ocaml.doc("<p>
			The time of the anomaly's most recent update.
		</p>")
  @as("UpdateTime")
  updateTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the anomaly.</p>") @as("Status") status: option<anomalyStatus>,
  @ocaml.doc("<p>The severity of the anomaly.</p>") @as("Severity")
  severity: option<anomalySeverity>,
  @ocaml.doc("<p>The ID of the anomaly.</p>") @as("Id") id: option<anomalyId>,
}
@ocaml.doc(
  "<p>Information about an anomaly. This object is returned by <code>ListAnomalies</code>.</p>"
)
type proactiveAnomaly = {
  @ocaml.doc("<p>
			A threshold that was exceeded by behavior in analyzed resources. Exceeding this
			threshold is related to the anomalous behavior that generated this anomaly.
		</p>")
  @as("Limit")
  limit: option<anomalyLimit>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @ocaml.doc("<p>
			The ID of the insight that contains this anomaly. An insight is composed of related anomalies.
		</p>")
  @as("AssociatedInsightId")
  associatedInsightId: option<insightId>,
  @ocaml.doc("<p>
			Details about the source of the analyzed operational data that triggered the anomaly. The one supported source is Amazon CloudWatch metrics. 
		</p>")
  @as("SourceDetails")
  sourceDetails: option<anomalySourceDetails>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @ocaml.doc("<p>
			The time of the anomaly's most recent update.
		</p>")
  @as("UpdateTime")
  updateTime: option<timestamp_>,
  @ocaml.doc("<p>
			The status of a proactive anomaly.
		</p>")
  @as("Status")
  status: option<anomalyStatus>,
  @ocaml.doc("<p>
			The severity of a proactive anomaly.
		</p>")
  @as("Severity")
  severity: option<anomalySeverity>,
  @ocaml.doc("<p>
			The ID of a proactive anomaly.
		</p>")
  @as("Id")
  id: option<anomalyId>,
}
@ocaml.doc("<p> Recommendation information to help you remediate detected anomalous behavior that
			generated an insight. </p>")
type recommendation = {
  @ocaml.doc("<p>
			Anomalies that are related to the problem. Use these Anomalies to learn more about what's happening and to help address the issue.
		</p>")
  @as("RelatedAnomalies")
  relatedAnomalies: option<recommendationRelatedAnomalies>,
  @ocaml.doc("<p>
			Events that are related to the problem. Use these events to learn more about what's happening and to help address the issue.
		</p>")
  @as("RelatedEvents")
  relatedEvents: option<recommendationRelatedEvents>,
  @ocaml.doc("<p>
			The reason DevOps Guru flagged the anomalous behavior as a problem.
		</p>")
  @as("Reason")
  reason: option<recommendationReason>,
  @ocaml.doc("<p>
			The name of the recommendation.
		</p>")
  @as("Name")
  name: option<recommendationName>,
  @ocaml.doc("<p>
			A hyperlink to information to help you address the problem.
		</p>")
  @as("Link")
  link: option<recommendationLink>,
  @ocaml.doc("<p>
			A description of the problem.
		</p>")
  @as("Description")
  description: option<recommendationDescription>,
}
type reactiveAnomalies = array<reactiveAnomalySummary>
type proactiveAnomalies = array<proactiveAnomalySummary>
type recommendations = array<recommendation>
@ocaml.doc("<p> Amazon DevOps Guru is a fully managed service that helps you identify anomalous behavior in business
			critical operational applications. You specify the AWS resources that you want DevOps Guru to cover,
			then the Amazon CloudWatch metrics and AWS CloudTrail events related to those resources are analyzed. When
			anomalous behavior is detected, DevOps Guru creates an <i>insight</i> that includes
			recommendations, related events, and related metrics that can help you improve your
			operational applications. For more information, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html\">What is Amazon DevOps Guru</a>. </p>
		
		       <p>
			You can specify 1 or 2 Amazon Simple Notification Service topics so you are notified every time a new insight is created. You can also enable DevOps Guru to generate 
			an OpsItem in AWS Systems Manager for each insight to help you manage and track your work addressing insights.
		</p>
		
		       <p>
			To learn about the DevOps Guru workflow, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html#how-it-works\">How DevOps Guru works</a>. To 
			learn about DevOps Guru concepts, see <a href=\"https://docs.aws.amazon.com/devops-guru/latest/userguide/concepts.html\">Concepts in DevOps Guru</a>.
		</p>")
module UpdateServiceIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>
			An <code>IntegratedServiceConfig</code> object used to specify the integrated service you want to update, and whether you 
			want to update it to enabled or disabled.
		</p>")
    @as("ServiceIntegration")
    serviceIntegration: updateServiceIntegrationConfig,
  }

  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "UpdateServiceIntegrationCommand"
  let make = (~serviceIntegration, ()) => new({serviceIntegration: serviceIntegration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveNotificationChannel = {
  type t
  type request = {
    @ocaml.doc("<p>
   		The ID of the notification channel to be removed.
   	</p>")
    @as("Id")
    id: notificationChannelId,
  }

  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "RemoveNotificationChannelCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutFeedback = {
  type t
  type request = {
    @ocaml.doc("<p>
   		The feedback from customers is about the recommendations in this insight.
   	</p>")
    @as("InsightFeedback")
    insightFeedback: option<insightFeedback>,
  }

  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "PutFeedbackCommand"
  let make = (~insightFeedback=?, ()) => new({insightFeedback: insightFeedback})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeServiceIntegration = {
  type t

  type response = {@as("ServiceIntegration") serviceIntegration: option<serviceIntegrationConfig>}
  @module("@aws-sdk/client-devops-guru") @new
  external new: unit => t = "DescribeServiceIntegrationCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFeedback = {
  type t
  type request = {
    @ocaml.doc("<p>
			The ID of the insight for which the feedback was provided.
		</p>")
    @as("InsightId")
    insightId: option<insightId>,
  }
  type response = {@as("InsightFeedback") insightFeedback: option<insightFeedback>}
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "DescribeFeedbackCommand"
  let make = (~insightId=?, ()) => new({insightId: insightId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountOverview = {
  type t
  type request = {
    @ocaml.doc("<p>
   		The end of the time range passed in. The start time granularity is at the 
   		day level. The floor of the start time is used. Returned information occurred before this day. If this is not specified, then the current day is used.
   	</p>")
    @as("ToTime")
    toTime: option<timestamp_>,
    @ocaml.doc("<p>
   		The start of the time range passed in. The start time granularity is at the 
   		day level. The floor of the start time is used. Returned information occurred after this day. 
   	</p>")
    @as("FromTime")
    fromTime: timestamp_,
  }
  type response = {
    @ocaml.doc("<p>
   		The Mean Time to Recover (MTTR) for all closed insights that were created during the 
   		time range passed in.
   	</p>")
    @as("MeanTimeToRecoverInMilliseconds")
    meanTimeToRecoverInMilliseconds: meanTimeToRecoverInMilliseconds,
    @ocaml.doc("<p>
   		An integer that specifies the number of open proactive insights in your AWS account that were created during the 
   		time range passed in.
   	</p>")
    @as("ProactiveInsights")
    proactiveInsights: numProactiveInsights,
    @ocaml.doc("<p>
   		An integer that specifies the number of open reactive insights in your AWS account that were created during the 
   		time range passed in.
   	</p>")
    @as("ReactiveInsights")
    reactiveInsights: numReactiveInsights,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "DescribeAccountOverviewCommand"
  let make = (~fromTime, ~toTime=?, ()) => new({toTime: toTime, fromTime: fromTime})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountHealth = {
  type t

  type response = {
    @ocaml.doc("<p>The number of Amazon DevOps Guru resource analysis hours billed to the current AWS account in the last hour.
 		</p>")
    @as("ResourceHours")
    resourceHours: resourceHours,
    @ocaml.doc("<p>
   		An integer that specifies the number of metrics that have been analyzed in your AWS account.
   	</p>")
    @as("MetricsAnalyzed")
    metricsAnalyzed: numMetricsAnalyzed,
    @ocaml.doc("<p>
   		An integer that specifies the number of open proactive insights in your AWS account.
   	</p>")
    @as("OpenProactiveInsights")
    openProactiveInsights: numOpenProactiveInsights,
    @ocaml.doc("<p>
   		An integer that specifies the number of open reactive insights in your AWS account. 
   	</p>")
    @as("OpenReactiveInsights")
    openReactiveInsights: numOpenReactiveInsights,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: unit => t = "DescribeAccountHealthCommand"
  let make = () => new()
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
    @ocaml.doc("<p>
   		The ID of the added notification channel.
   	</p>")
    @as("Id")
    id: notificationChannelId,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "AddNotificationChannelCommand"
  let make = (~config, ()) => new({config: config})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResourceCollection = {
  type t
  type request = {
    @as("ResourceCollection") resourceCollection: updateResourceCollectionFilter,
    @ocaml.doc("<p>
			Specifies if the resource collection in the request is added or deleted to the resource collection. 
		</p>")
    @as("Action")
    action: updateResourceCollectionAction,
  }

  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "UpdateResourceCollectionCommand"
  let make = (~resourceCollection, ~action, ()) =>
    new({resourceCollection: resourceCollection, action: action})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartCostEstimation = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token used to identify each cost estimate request.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The collection of AWS resources used to create a monthly DevOps Guru cost estimate.</p>"
    )
    @as("ResourceCollection")
    resourceCollection: costEstimationResourceCollectionFilter,
  }

  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "StartCostEstimationCommand"
  let make = (~resourceCollection, ~clientToken=?, ()) =>
    new({clientToken: clientToken, resourceCollection: resourceCollection})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetResourceCollection = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>
   		The type of AWS resource collections to return. The one valid value is <code>CLOUD_FORMATION</code> for 
   		AWS CloudFormation stacks.
   	</p>")
    @as("ResourceCollectionType")
    resourceCollectionType: resourceCollectionType,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>
   		The requested list of AWS resource collections. The one type of AWS resource collection supported is AWS CloudFormation stacks. DevOps Guru can be configured to analyze 
      	only the AWS resources that are defined in the stacks. You can specify up to 500 AWS CloudFormation stacks.
   	</p>")
    @as("ResourceCollection")
    resourceCollection: option<resourceCollectionFilter>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "GetResourceCollectionCommand"
  let make = (~resourceCollectionType, ~nextToken=?, ()) =>
    new({nextToken: nextToken, resourceCollectionType: resourceCollectionType})
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
    @ocaml.doc("<p>The estimated monthly cost to analyze the AWS resources. 
			This value is the sum of the estimated costs to analyze each resource in the <code>Costs</code> 
			object in this response.</p>")
    @as("TotalCost")
    totalCost: option<cost>,
    @ocaml.doc("<p>The start and end time of the cost estimation.</p>") @as("TimeRange")
    timeRange: option<costEstimationTimeRange>,
    @ocaml.doc("<p>An array of <code>ResourceCost</code> objects that each contains details 
			about the monthly cost estimate to analyze one of your AWS resources.</p>")
    @as("Costs")
    costs: option<serviceResourceCosts>,
    @ocaml.doc("<p>The status of creating this cost estimate. If it's still in progress, the status 
			<code>ONGOING</code> is returned. If it is finished, the status <code>COMPLETED</code> is returned.</p>")
    @as("Status")
    status: option<costEstimationStatus>,
    @ocaml.doc(
      "<p>The collection of the AWS resources used to create your monthly DevOps Guru cost estimate.</p>"
    )
    @as("ResourceCollection")
    resourceCollection: option<costEstimationResourceCollectionFilter>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "GetCostEstimationCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResourceCollectionHealth = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>
   		An AWS resource collection type. This type specifies how analyzed AWS resources are defined. The one type of AWS resource collection supported is AWS CloudFormation stacks. DevOps Guru can be configured to analyze 
      	only the AWS resources that are defined in the stacks. You can specify up to 500 AWS CloudFormation stacks.       
   	</p>")
    @as("ResourceCollectionType")
    resourceCollectionType: resourceCollectionType,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>An array of <code>ServiceHealth</code> objects that describes the health of the AWS services 
		associated with the resources in the collection.</p>")
    @as("Service")
    service: option<serviceHealths>,
    @ocaml.doc("<p>
   		The returned <code>CloudFormationHealthOverview</code> object that contains an <code>InsightHealthOverview</code> object with 
   		the requested system health information.
   	</p>")
    @as("CloudFormation")
    cloudFormation: cloudFormationHealths,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "DescribeResourceCollectionHealthCommand"
  let make = (~resourceCollectionType, ~nextToken=?, ()) =>
    new({nextToken: nextToken, resourceCollectionType: resourceCollectionType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
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
    @ocaml.doc("<p>
   		An array that contains the requested notification channels.
   	</p>")
    @as("Channels")
    channels: option<channels>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "ListNotificationChannelsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInsight = {
  type t
  type request = {
    @ocaml.doc("<p>
   		The ID of the insight.
   	</p>")
    @as("Id")
    id: insightId,
  }
  type response = {
    @ocaml.doc("<p>
			A <code>ReactiveInsight</code> object that represents the requested insight.
		</p>")
    @as("ReactiveInsight")
    reactiveInsight: option<reactiveInsight>,
    @ocaml.doc("<p>
			A <code>ProactiveInsight</code> object that represents the requested insight.
		</p>")
    @as("ProactiveInsight")
    proactiveInsight: option<proactiveInsight>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "DescribeInsightCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchInsights = {
  type t
  type request = {
    @ocaml.doc("<p>
   		The type of insights you are searching for (<code>REACTIVE</code> or <code>PROACTIVE</code>).
   	</p>")
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
    @ocaml.doc("<p>
   		A <code>SearchInsightsFilters</code> object that is used to set the severity and status filters on your insight search.
   	</p>")
    @as("Filters")
    filters: option<searchInsightsFilters>,
    @ocaml.doc("<p>
   		The start of the time range passed in. Returned insights occurred after this time.
   	</p>")
    @as("StartTimeRange")
    startTimeRange: startTimeRange,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>
			The returned reactive insights.
		</p>")
    @as("ReactiveInsights")
    reactiveInsights: option<reactiveInsights>,
    @ocaml.doc("<p>
			The returned proactive insights.
		</p>")
    @as("ProactiveInsights")
    proactiveInsights: option<proactiveInsights>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "SearchInsightsCommand"
  let make = (~type_, ~startTimeRange, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({
      type_: type_,
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      startTimeRange: startTimeRange,
    })
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
    @ocaml.doc("<p>
      	A filter used to filter the returned insights by their status. You can specify one status filter.
      </p>")
    @as("StatusFilter")
    statusFilter: listInsightsStatusFilter,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>
			The returned list of reactive insights.	
		</p>")
    @as("ReactiveInsights")
    reactiveInsights: option<reactiveInsights>,
    @ocaml.doc("<p>
			The returned list of proactive insights.
		</p>")
    @as("ProactiveInsights")
    proactiveInsights: option<proactiveInsights>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "ListInsightsCommand"
  let make = (~statusFilter, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, statusFilter: statusFilter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEvents = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<listEventsMaxResults>,
    @ocaml.doc("<p>
   		A <code>ListEventsFilters</code> object used to specify which events to return.
   	</p>")
    @as("Filters")
    filters: listEventsFilters,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>
   		A list of the requested events.
   	</p>")
    @as("Events")
    events: events,
  }
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "ListEventsCommand"
  let make = (~filters, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAnomaly = {
  type t
  type request = {
    @ocaml.doc("<p>
   		The ID of the anomaly.
   	</p>")
    @as("Id")
    id: anomalyId,
  }
  type response = {
    @ocaml.doc("<p>
			A <code>ProactiveAnomaly</code> object that represents the requested anomaly.
		</p>")
    @as("ReactiveAnomaly")
    reactiveAnomaly: option<reactiveAnomaly>,
    @ocaml.doc("<p>
			A <code>ReactiveAnomaly</code> object that represents the requested anomaly.
		</p>")
    @as("ProactiveAnomaly")
    proactiveAnomaly: option<proactiveAnomaly>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new: request => t = "DescribeAnomalyCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnomaliesForInsight = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<listAnomaliesForInsightMaxResults>,
    @ocaml.doc("<p>
   		A time range used to specify when the requested anomalies started. All returned anomalies started 
   		during this time range.
   	</p>")
    @as("StartTimeRange")
    startTimeRange: option<startTimeRange>,
    @ocaml.doc("<p>
			The ID of the insight. The returned anomalies belong to this insight.
		</p>")
    @as("InsightId")
    insightId: insightId,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>
			An array of <code>ReactiveAnomalySummary</code> objects that represent the requested anomalies
		</p>")
    @as("ReactiveAnomalies")
    reactiveAnomalies: option<reactiveAnomalies>,
    @ocaml.doc("<p>
			An array of <code>ProactiveAnomalySummary</code> objects that represent the requested anomalies
		</p>")
    @as("ProactiveAnomalies")
    proactiveAnomalies: option<proactiveAnomalies>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "ListAnomaliesForInsightCommand"
  let make = (~insightId, ~nextToken=?, ~maxResults=?, ~startTimeRange=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      startTimeRange: startTimeRange,
      insightId: insightId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>A locale that specifies the language to use for recommendations.</p>")
    @as("Locale")
    locale: option<locale>,
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>
			The ID of the requested insight.
		</p>")
    @as("InsightId")
    insightId: insightId,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to retrieve 
   the next page of results for this operation. If there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<uuidNextToken>,
    @ocaml.doc("<p>
   		An array of the requested recommendations.
   	</p>")
    @as("Recommendations")
    recommendations: option<recommendations>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new: request => t = "ListRecommendationsCommand"
  let make = (~insightId, ~locale=?, ~nextToken=?, ()) =>
    new({locale: locale, nextToken: nextToken, insightId: insightId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
