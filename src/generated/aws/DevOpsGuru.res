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
type validationExceptionField = {
  @as("Message") message: errorMessageString,
  @as("Name") name: errorNameString,
}
type updateStackNames = array<stackName>
type startTimeRange = {
  @as("ToTime") toTime: option<timestamp_>,
  @as("FromTime") fromTime: option<timestamp_>,
}
type stackNames = array<stackName>
type snsChannelConfig = {@as("TopicArn") topicArn: option<topicArn>}
type serviceResourceCost = {
  @as("Cost") cost: option<cost>,
  @as("UnitCost") unitCost: option<cost>,
  @as("Count") count: option<costEstimationServiceResourceCount>,
  @as("State") state: option<costEstimationServiceResourceState>,
  @as("Type") type_: option<resourceType>,
}
type serviceNames = array<serviceName>
type serviceInsightHealth = {
  @as("OpenReactiveInsights") openReactiveInsights: option<numOpenReactiveInsights>,
  @as("OpenProactiveInsights") openProactiveInsights: option<numOpenProactiveInsights>,
}
type recommendationRelatedEventResource = {
  @as("Type") type_: option<recommendationRelatedEventResourceType>,
  @as("Name") name: option<recommendationRelatedEventResourceName>,
}
type recommendationRelatedCloudWatchMetricsSourceDetail = {
  @as("Namespace") namespace: option<recommendationRelatedCloudWatchMetricsSourceNamespace>,
  @as("MetricName") metricName: option<recommendationRelatedCloudWatchMetricsSourceMetricName>,
}
type recommendationRelatedAnomalyResource = {
  @as("Type") type_: option<recommendationRelatedAnomalyResourceType>,
  @as("Name") name: option<recommendationRelatedAnomalyResourceName>,
}
type predictionTimeRange = {
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: timestamp_,
}
type opsCenterIntegrationConfig = {@as("OptInStatus") optInStatus: option<optInStatus>}
type opsCenterIntegration = {@as("OptInStatus") optInStatus: option<optInStatus>}
type listInsightsOngoingStatusFilter = {@as("Type") type_: insightType}
type insightTimeRange = {
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: timestamp_,
}
type insightStatuses = array<insightStatus>
type insightSeverities = array<insightSeverity>
type insightHealth = {
  @as("MeanTimeToRecoverInMilliseconds")
  meanTimeToRecoverInMilliseconds: option<meanTimeToRecoverInMilliseconds>,
  @as("OpenReactiveInsights") openReactiveInsights: option<numOpenReactiveInsights>,
  @as("OpenProactiveInsights") openProactiveInsights: option<numOpenProactiveInsights>,
}
type insightFeedback = {
  @as("Feedback") feedback: option<insightFeedbackOption>,
  @as("Id") id: option<insightId>,
}
type eventTimeRange = {
  @as("ToTime") toTime: timestamp_,
  @as("FromTime") fromTime: timestamp_,
}
type eventResource = {
  @as("Arn") arn: option<eventResourceArn>,
  @as("Name") name: option<eventResourceName>,
  @as("Type") type_: option<eventResourceType>,
}
type endTimeRange = {
  @as("ToTime") toTime: option<timestamp_>,
  @as("FromTime") fromTime: option<timestamp_>,
}
type costEstimationTimeRange = {
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
}
type costEstimationStackNames = array<stackName>
type cloudWatchMetricsDimension = {
  @as("Value") value: option<cloudWatchMetricsDimensionValue>,
  @as("Name") name: option<cloudWatchMetricsDimensionName>,
}
type anomalyTimeRange = {
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: timestamp_,
}
type validationExceptionFields = array<validationExceptionField>
type updateServiceIntegrationConfig = {
  @as("OpsCenter") opsCenter: option<opsCenterIntegrationConfig>,
}
type updateCloudFormationCollectionFilter = {@as("StackNames") stackNames: option<updateStackNames>}
type serviceResourceCosts = array<serviceResourceCost>
type serviceIntegrationConfig = {@as("OpsCenter") opsCenter: option<opsCenterIntegration>}
type serviceHealth = {
  @as("Insight") insight: option<serviceInsightHealth>,
  @as("ServiceName") serviceName: option<serviceName>,
}
type serviceCollection = {@as("ServiceNames") serviceNames: option<serviceNames>}
type recommendationRelatedEventResources = array<recommendationRelatedEventResource>
type recommendationRelatedCloudWatchMetricsSourceDetails = array<
  recommendationRelatedCloudWatchMetricsSourceDetail,
>
type recommendationRelatedAnomalyResources = array<recommendationRelatedAnomalyResource>
type notificationChannelConfig = {@as("Sns") sns: snsChannelConfig}
type listInsightsClosedStatusFilter = {
  @as("EndTimeRange") endTimeRange: endTimeRange,
  @as("Type") type_: insightType,
}
type listInsightsAnyStatusFilter = {
  @as("StartTimeRange") startTimeRange: startTimeRange,
  @as("Type") type_: insightType,
}
type eventResources = array<eventResource>
type cloudWatchMetricsDimensions = array<cloudWatchMetricsDimension>
type cloudFormationHealth = {
  @as("Insight") insight: option<insightHealth>,
  @as("StackName") stackName: option<stackName>,
}
type cloudFormationCostEstimationResourceCollectionFilter = {
  @as("StackNames") stackNames: option<costEstimationStackNames>,
}
type cloudFormationCollectionFilter = {@as("StackNames") stackNames: option<stackNames>}
type cloudFormationCollection = {@as("StackNames") stackNames: option<stackNames>}
type updateResourceCollectionFilter = {
  @as("CloudFormation") cloudFormation: option<updateCloudFormationCollectionFilter>,
}
type serviceHealths = array<serviceHealth>
type resourceCollectionFilter = {
  @as("CloudFormation") cloudFormation: option<cloudFormationCollectionFilter>,
}
type resourceCollection = {@as("CloudFormation") cloudFormation: option<cloudFormationCollection>}
type recommendationRelatedEvent = {
  @as("Resources") resources: option<recommendationRelatedEventResources>,
  @as("Name") name: option<recommendationRelatedEventName>,
}
type recommendationRelatedAnomalySourceDetail = {
  @as("CloudWatchMetrics")
  cloudWatchMetrics: option<recommendationRelatedCloudWatchMetricsSourceDetails>,
}
type notificationChannel = {
  @as("Config") config: option<notificationChannelConfig>,
  @as("Id") id: option<notificationChannelId>,
}
type listInsightsStatusFilter = {
  @as("Any") any: option<listInsightsAnyStatusFilter>,
  @as("Closed") closed: option<listInsightsClosedStatusFilter>,
  @as("Ongoing") ongoing: option<listInsightsOngoingStatusFilter>,
}
type costEstimationResourceCollectionFilter = {
  @as("CloudFormation")
  cloudFormation: option<cloudFormationCostEstimationResourceCollectionFilter>,
}
type cloudWatchMetricsDetail = {
  @as("Period") period: option<cloudWatchMetricsPeriod>,
  @as("Unit") unit_: option<cloudWatchMetricsUnit>,
  @as("Stat") stat: option<cloudWatchMetricsStat>,
  @as("Dimensions") dimensions: option<cloudWatchMetricsDimensions>,
  @as("Namespace") namespace: option<cloudWatchMetricsNamespace>,
  @as("MetricName") metricName: option<cloudWatchMetricsMetricName>,
}
type cloudFormationHealths = array<cloudFormationHealth>
type searchInsightsFilters = {
  @as("ServiceCollection") serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("Statuses") statuses: option<insightStatuses>,
  @as("Severities") severities: option<insightSeverities>,
}
type relatedAnomalySourceDetails = array<recommendationRelatedAnomalySourceDetail>
type recommendationRelatedEvents = array<recommendationRelatedEvent>
type reactiveInsightSummary = {
  @as("ServiceCollection") serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @as("Status") status: option<insightStatus>,
  @as("Severity") severity: option<insightSeverity>,
  @as("Name") name: option<insightName>,
  @as("Id") id: option<insightId>,
}
type reactiveInsight = {
  @as("SsmOpsItemId") ssmOpsItemId: option<ssmOpsItemId>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @as("Status") status: option<insightStatus>,
  @as("Severity") severity: option<insightSeverity>,
  @as("Name") name: option<insightName>,
  @as("Id") id: option<insightId>,
}
type proactiveInsightSummary = {
  @as("ServiceCollection") serviceCollection: option<serviceCollection>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @as("Status") status: option<insightStatus>,
  @as("Severity") severity: option<insightSeverity>,
  @as("Name") name: option<insightName>,
  @as("Id") id: option<insightId>,
}
type proactiveInsight = {
  @as("SsmOpsItemId") ssmOpsItemId: option<ssmOpsItemId>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @as("InsightTimeRange") insightTimeRange: option<insightTimeRange>,
  @as("Status") status: option<insightStatus>,
  @as("Severity") severity: option<insightSeverity>,
  @as("Name") name: option<insightName>,
  @as("Id") id: option<insightId>,
}
type listEventsFilters = {
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("DataSource") dataSource: option<eventDataSource>,
  @as("EventSource") eventSource: option<eventSource>,
  @as("EventClass") eventClass: option<eventClass>,
  @as("EventTimeRange") eventTimeRange: option<eventTimeRange>,
  @as("InsightId") insightId: option<insightId>,
}
type event = {
  @as("Resources") resources: option<eventResources>,
  @as("EventClass") eventClass: option<eventClass>,
  @as("DataSource") dataSource: option<eventDataSource>,
  @as("Name") name: option<eventName>,
  @as("EventSource") eventSource: option<eventSource>,
  @as("Time") time: option<timestamp_>,
  @as("Id") id: option<eventId>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
}
type cloudWatchMetricsDetails = array<cloudWatchMetricsDetail>
type channels = array<notificationChannel>
type recommendationRelatedAnomaly = {
  @as("SourceDetails") sourceDetails: option<relatedAnomalySourceDetails>,
  @as("Resources") resources: option<recommendationRelatedAnomalyResources>,
}
type reactiveInsights = array<reactiveInsightSummary>
type proactiveInsights = array<proactiveInsightSummary>
type events = array<event>
type anomalySourceDetails = {
  @as("CloudWatchMetrics") cloudWatchMetrics: option<cloudWatchMetricsDetails>,
}
type recommendationRelatedAnomalies = array<recommendationRelatedAnomaly>
type reactiveAnomalySummary = {
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("AssociatedInsightId") associatedInsightId: option<insightId>,
  @as("SourceDetails") sourceDetails: option<anomalySourceDetails>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @as("Status") status: option<anomalyStatus>,
  @as("Severity") severity: option<anomalySeverity>,
  @as("Id") id: option<anomalyId>,
}
type reactiveAnomaly = {
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("AssociatedInsightId") associatedInsightId: option<insightId>,
  @as("SourceDetails") sourceDetails: option<anomalySourceDetails>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @as("Status") status: option<anomalyStatus>,
  @as("Severity") severity: option<anomalySeverity>,
  @as("Id") id: option<anomalyId>,
}
type proactiveAnomalySummary = {
  @as("Limit") limit: option<anomalyLimit>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("AssociatedInsightId") associatedInsightId: option<insightId>,
  @as("SourceDetails") sourceDetails: option<anomalySourceDetails>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @as("UpdateTime") updateTime: option<timestamp_>,
  @as("Status") status: option<anomalyStatus>,
  @as("Severity") severity: option<anomalySeverity>,
  @as("Id") id: option<anomalyId>,
}
type proactiveAnomaly = {
  @as("Limit") limit: option<anomalyLimit>,
  @as("ResourceCollection") resourceCollection: option<resourceCollection>,
  @as("AssociatedInsightId") associatedInsightId: option<insightId>,
  @as("SourceDetails") sourceDetails: option<anomalySourceDetails>,
  @as("PredictionTimeRange") predictionTimeRange: option<predictionTimeRange>,
  @as("AnomalyTimeRange") anomalyTimeRange: option<anomalyTimeRange>,
  @as("UpdateTime") updateTime: option<timestamp_>,
  @as("Status") status: option<anomalyStatus>,
  @as("Severity") severity: option<anomalySeverity>,
  @as("Id") id: option<anomalyId>,
}
type recommendation = {
  @as("RelatedAnomalies") relatedAnomalies: option<recommendationRelatedAnomalies>,
  @as("RelatedEvents") relatedEvents: option<recommendationRelatedEvents>,
  @as("Reason") reason: option<recommendationReason>,
  @as("Name") name: option<recommendationName>,
  @as("Link") link: option<recommendationLink>,
  @as("Description") description: option<recommendationDescription>,
}
type reactiveAnomalies = array<reactiveAnomalySummary>
type proactiveAnomalies = array<proactiveAnomalySummary>
type recommendations = array<recommendation>

module UpdateServiceIntegration = {
  type t
  type request = {@as("ServiceIntegration") serviceIntegration: updateServiceIntegrationConfig}
  type response = unit
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "UpdateServiceIntegrationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveNotificationChannel = {
  type t
  type request = {@as("Id") id: notificationChannelId}
  type response = unit
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "RemoveNotificationChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutFeedback = {
  type t
  type request = {@as("InsightFeedback") insightFeedback: option<insightFeedback>}
  type response = unit
  @module("@aws-sdk/client-devops-guru") @new external new_: request => t = "PutFeedbackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeServiceIntegration = {
  type t
  type request = unit
  type response = {@as("ServiceIntegration") serviceIntegration: option<serviceIntegrationConfig>}
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "DescribeServiceIntegrationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFeedback = {
  type t
  type request = {@as("InsightId") insightId: option<insightId>}
  type response = {@as("InsightFeedback") insightFeedback: option<insightFeedback>}
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "DescribeFeedbackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountOverview = {
  type t
  type request = {
    @as("ToTime") toTime: option<timestamp_>,
    @as("FromTime") fromTime: timestamp_,
  }
  type response = {
    @as("MeanTimeToRecoverInMilliseconds")
    meanTimeToRecoverInMilliseconds: meanTimeToRecoverInMilliseconds,
    @as("ProactiveInsights") proactiveInsights: numProactiveInsights,
    @as("ReactiveInsights") reactiveInsights: numReactiveInsights,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "DescribeAccountOverviewCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountHealth = {
  type t
  type request = unit
  type response = {
    @as("ResourceHours") resourceHours: resourceHours,
    @as("MetricsAnalyzed") metricsAnalyzed: numMetricsAnalyzed,
    @as("OpenProactiveInsights") openProactiveInsights: numOpenProactiveInsights,
    @as("OpenReactiveInsights") openReactiveInsights: numOpenReactiveInsights,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "DescribeAccountHealthCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddNotificationChannel = {
  type t
  type request = {@as("Config") config: notificationChannelConfig}
  type response = {@as("Id") id: notificationChannelId}
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "AddNotificationChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResourceCollection = {
  type t
  type request = {
    @as("ResourceCollection") resourceCollection: updateResourceCollectionFilter,
    @as("Action") action: updateResourceCollectionAction,
  }
  type response = unit
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "UpdateResourceCollectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartCostEstimation = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("ResourceCollection") resourceCollection: costEstimationResourceCollectionFilter,
  }
  type response = unit
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "StartCostEstimationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceCollection = {
  type t
  type request = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("ResourceCollectionType") resourceCollectionType: resourceCollectionType,
  }
  type response = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("ResourceCollection") resourceCollection: option<resourceCollectionFilter>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "GetResourceCollectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCostEstimation = {
  type t
  type request = {@as("NextToken") nextToken: option<uuidNextToken>}
  type response = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("TotalCost") totalCost: option<cost>,
    @as("TimeRange") timeRange: option<costEstimationTimeRange>,
    @as("Costs") costs: option<serviceResourceCosts>,
    @as("Status") status: option<costEstimationStatus>,
    @as("ResourceCollection") resourceCollection: option<costEstimationResourceCollectionFilter>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "GetCostEstimationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResourceCollectionHealth = {
  type t
  type request = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("ResourceCollectionType") resourceCollectionType: resourceCollectionType,
  }
  type response = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("Service") service: option<serviceHealths>,
    @as("CloudFormation") cloudFormation: cloudFormationHealths,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "DescribeResourceCollectionHealthCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNotificationChannels = {
  type t
  type request = {@as("NextToken") nextToken: option<uuidNextToken>}
  type response = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("Channels") channels: option<channels>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "ListNotificationChannelsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInsight = {
  type t
  type request = {@as("Id") id: insightId}
  type response = {
    @as("ReactiveInsight") reactiveInsight: option<reactiveInsight>,
    @as("ProactiveInsight") proactiveInsight: option<proactiveInsight>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new_: request => t = "DescribeInsightCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchInsights = {
  type t
  type request = {
    @as("Type") type_: insightType,
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("MaxResults") maxResults: option<searchInsightsMaxResults>,
    @as("Filters") filters: option<searchInsightsFilters>,
    @as("StartTimeRange") startTimeRange: startTimeRange,
  }
  type response = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("ReactiveInsights") reactiveInsights: option<reactiveInsights>,
    @as("ProactiveInsights") proactiveInsights: option<proactiveInsights>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new_: request => t = "SearchInsightsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInsights = {
  type t
  type request = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("MaxResults") maxResults: option<listInsightsMaxResults>,
    @as("StatusFilter") statusFilter: listInsightsStatusFilter,
  }
  type response = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("ReactiveInsights") reactiveInsights: option<reactiveInsights>,
    @as("ProactiveInsights") proactiveInsights: option<proactiveInsights>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new_: request => t = "ListInsightsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEvents = {
  type t
  type request = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("MaxResults") maxResults: option<listEventsMaxResults>,
    @as("Filters") filters: listEventsFilters,
  }
  type response = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("Events") events: events,
  }
  @module("@aws-sdk/client-devops-guru") @new external new_: request => t = "ListEventsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAnomaly = {
  type t
  type request = {@as("Id") id: anomalyId}
  type response = {
    @as("ReactiveAnomaly") reactiveAnomaly: option<reactiveAnomaly>,
    @as("ProactiveAnomaly") proactiveAnomaly: option<proactiveAnomaly>,
  }
  @module("@aws-sdk/client-devops-guru") @new external new_: request => t = "DescribeAnomalyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnomaliesForInsight = {
  type t
  type request = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("MaxResults") maxResults: option<listAnomaliesForInsightMaxResults>,
    @as("StartTimeRange") startTimeRange: option<startTimeRange>,
    @as("InsightId") insightId: insightId,
  }
  type response = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("ReactiveAnomalies") reactiveAnomalies: option<reactiveAnomalies>,
    @as("ProactiveAnomalies") proactiveAnomalies: option<proactiveAnomalies>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "ListAnomaliesForInsightCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecommendations = {
  type t
  type request = {
    @as("Locale") locale: option<locale>,
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("InsightId") insightId: insightId,
  }
  type response = {
    @as("NextToken") nextToken: option<uuidNextToken>,
    @as("Recommendations") recommendations: option<recommendations>,
  }
  @module("@aws-sdk/client-devops-guru") @new
  external new_: request => t = "ListRecommendationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
