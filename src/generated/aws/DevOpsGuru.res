type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validationExceptionReason = [@as("OTHER") #OTHER | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED | @as("CANNOT_PARSE") #CANNOT_PARSE | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION]
type uuidNextToken = string
type updateResourceCollectionAction = [@as("REMOVE") #REMOVE | @as("ADD") #ADD]
type topicArn = string
type amazonawsTimestamp = Js.Date.t;
type stackName = string
type ssmOpsItemId = string
type serviceName = [@as("SWF") #SWF | @as("STEP_FUNCTIONS") #STEP_FUNCTIONS | @as("SQS") #SQS | @as("SNS") #SNS | @as("SAGE_MAKER") #SAGE_MAKER | @as("S3") #S3 | @as("ROUTE_53") #ROUTE_53 | @as("REDSHIFT") #REDSHIFT | @as("RDS") #RDS | @as("NETWORK_ELB") #NETWORK_ELB | @as("NAT_GATEWAY") #NAT_GATEWAY | @as("LAMBDA") #LAMBDA | @as("KINESIS") #KINESIS | @as("ES") #ES | @as("ELB") #ELB | @as("ELASTI_CACHE") #ELASTI_CACHE | @as("ELASTIC_BEANSTALK") #ELASTIC_BEANSTALK | @as("EKS") #EKS | @as("ECS") #ECS | @as("EC2") #EC2 | @as("DYNAMO_DB") #DYNAMO_DB | @as("CLOUD_FRONT") #CLOUD_FRONT | @as("AUTO_SCALING_GROUP") #AUTO_SCALING_GROUP | @as("APPLICATION_ELB") #APPLICATION_ELB | @as("API_GATEWAY") #API_GATEWAY]
type searchInsightsMaxResults = int;
type retryAfterSeconds = int;
type resourceType = string
type resourceIdType = string
type resourceIdString = string
type resourceHours = float;
type resourceCollectionType = [@as("AWS_SERVICE") #AWS_SERVICE | @as("AWS_CLOUD_FORMATION") #AWS_CLOUD_FORMATION]
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
type numReactiveInsights = int;
type numProactiveInsights = int;
type numOpenReactiveInsights = int;
type numOpenProactiveInsights = int;
type numMetricsAnalyzed = int;
type notificationChannelId = string
type meanTimeToRecoverInMilliseconds = float;
type locale = [@as("ZH_TW") #ZH_TW | @as("ZH_CN") #ZH_CN | @as("PT_BR") #PT_BR | @as("KO_KR") #KO_KR | @as("JA_JP") #JA_JP | @as("IT_IT") #IT_IT | @as("FR_FR") #FR_FR | @as("ES_ES") #ES_ES | @as("EN_GB") #EN_GB | @as("EN_US") #EN_US | @as("DE_DE") #DE_DE]
type listInsightsMaxResults = int;
type listEventsMaxResults = int;
type listAnomaliesForInsightMaxResults = int;
type insightType = [@as("PROACTIVE") #PROACTIVE | @as("REACTIVE") #REACTIVE]
type insightStatus = [@as("CLOSED") #CLOSED | @as("ONGOING") #ONGOING]
type insightSeverity = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type insightName = string
type insightId = string
type insightFeedbackOption = [@as("DATA_INCORRECT") #DATA_INCORRECT | @as("DATA_NOISY_ANOMALY") #DATA_NOISY_ANOMALY | @as("ALERT_TOO_SENSITIVE") #ALERT_TOO_SENSITIVE | @as("RECOMMENDATION_USEFUL") #RECOMMENDATION_USEFUL | @as("VALID_COLLECTION") #VALID_COLLECTION]
type eventSource = string
type eventResourceType = string
type eventResourceName = string
type eventResourceArn = string
type eventName = string
type eventId = string
type eventDataSource = [@as("AWS_CODE_DEPLOY") #AWS_CODE_DEPLOY | @as("AWS_CLOUD_TRAIL") #AWS_CLOUD_TRAIL]
type eventClass = [@as("SCHEMA_CHANGE") #SCHEMA_CHANGE | @as("CONFIG_CHANGE") #CONFIG_CHANGE | @as("SECURITY_CHANGE") #SECURITY_CHANGE | @as("DEPLOYMENT") #DEPLOYMENT | @as("INFRASTRUCTURE") #INFRASTRUCTURE]
type errorServiceCodeString = string
type errorQuotaCodeString = string
type errorNameString = string
type errorMessageString = string
type costEstimationStatus = [@as("COMPLETED") #COMPLETED | @as("ONGOING") #ONGOING]
type costEstimationServiceResourceState = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type costEstimationServiceResourceCount = int;
type cost = float;
type cloudWatchMetricsUnit = string
type cloudWatchMetricsStat = [@as("p50") #p50 | @as("p90") #p90 | @as("p99") #p99 | @as("Maximum") #Maximum | @as("Minimum") #Minimum | @as("SampleCount") #SampleCount | @as("Average") #Average | @as("Sum") #Sum]
type cloudWatchMetricsPeriod = int;
type cloudWatchMetricsNamespace = string
type cloudWatchMetricsMetricName = string
type cloudWatchMetricsDimensionValue = string
type cloudWatchMetricsDimensionName = string
type clientToken = string
type anomalyStatus = [@as("CLOSED") #CLOSED | @as("ONGOING") #ONGOING]
type anomalySeverity = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type anomalyLimit = float;
type anomalyId = string
type validationExceptionField = {
@as("Message") message: option<errorMessageString>,
@as("Name") name: option<errorNameString>
}
type updateStackNames = array<stackName>
type startTimeRange = {
@as("ToTime") toTime: amazonawsTimestamp,
@as("FromTime") fromTime: amazonawsTimestamp
}
type stackNames = array<stackName>
type snsChannelConfig = {
@as("TopicArn") topicArn: topicArn
}
type serviceResourceCost = {
@as("Cost") cost: cost,
@as("UnitCost") unitCost: cost,
@as("Count") count: costEstimationServiceResourceCount,
@as("State") state: costEstimationServiceResourceState,
@as("Type") type_: resourceType
}
type serviceNames = array<serviceName>
type serviceInsightHealth = {
@as("OpenReactiveInsights") openReactiveInsights: numOpenReactiveInsights,
@as("OpenProactiveInsights") openProactiveInsights: numOpenProactiveInsights
}
type recommendationRelatedEventResource = {
@as("Type") type_: recommendationRelatedEventResourceType,
@as("Name") name: recommendationRelatedEventResourceName
}
type recommendationRelatedCloudWatchMetricsSourceDetail = {
@as("Namespace") namespace: recommendationRelatedCloudWatchMetricsSourceNamespace,
@as("MetricName") metricName: recommendationRelatedCloudWatchMetricsSourceMetricName
}
type recommendationRelatedAnomalyResource = {
@as("Type") type_: recommendationRelatedAnomalyResourceType,
@as("Name") name: recommendationRelatedAnomalyResourceName
}
type predictionTimeRange = {
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: option<amazonawsTimestamp>
}
type opsCenterIntegrationConfig = {
@as("OptInStatus") optInStatus: optInStatus
}
type opsCenterIntegration = {
@as("OptInStatus") optInStatus: optInStatus
}
type listInsightsOngoingStatusFilter = {
@as("Type") type_: option<insightType>
}
type insightTimeRange = {
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: option<amazonawsTimestamp>
}
type insightStatuses = array<insightStatus>
type insightSeverities = array<insightSeverity>
type insightHealth = {
@as("MeanTimeToRecoverInMilliseconds") meanTimeToRecoverInMilliseconds: meanTimeToRecoverInMilliseconds,
@as("OpenReactiveInsights") openReactiveInsights: numOpenReactiveInsights,
@as("OpenProactiveInsights") openProactiveInsights: numOpenProactiveInsights
}
type insightFeedback = {
@as("Feedback") feedback: insightFeedbackOption,
@as("Id") id: insightId
}
type eventTimeRange = {
@as("ToTime") toTime: option<amazonawsTimestamp>,
@as("FromTime") fromTime: option<amazonawsTimestamp>
}
type eventResource = {
@as("Arn") arn: eventResourceArn,
@as("Name") name: eventResourceName,
@as("Type") type_: eventResourceType
}
type endTimeRange = {
@as("ToTime") toTime: amazonawsTimestamp,
@as("FromTime") fromTime: amazonawsTimestamp
}
type costEstimationTimeRange = {
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp
}
type costEstimationStackNames = array<stackName>
type cloudWatchMetricsDimension = {
@as("Value") value: cloudWatchMetricsDimensionValue,
@as("Name") name: cloudWatchMetricsDimensionName
}
type anomalyTimeRange = {
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: option<amazonawsTimestamp>
}
type validationExceptionFields = array<validationExceptionField>
type updateServiceIntegrationConfig = {
@as("OpsCenter") opsCenter: opsCenterIntegrationConfig
}
type updateCloudFormationCollectionFilter = {
@as("StackNames") stackNames: updateStackNames
}
type serviceResourceCosts = array<serviceResourceCost>
type serviceIntegrationConfig = {
@as("OpsCenter") opsCenter: opsCenterIntegration
}
type serviceHealth = {
@as("Insight") insight: serviceInsightHealth,
@as("ServiceName") serviceName: serviceName
}
type serviceCollection = {
@as("ServiceNames") serviceNames: serviceNames
}
type recommendationRelatedEventResources = array<recommendationRelatedEventResource>
type recommendationRelatedCloudWatchMetricsSourceDetails = array<recommendationRelatedCloudWatchMetricsSourceDetail>
type recommendationRelatedAnomalyResources = array<recommendationRelatedAnomalyResource>
type notificationChannelConfig = {
@as("Sns") sns: option<snsChannelConfig>
}
type listInsightsClosedStatusFilter = {
@as("EndTimeRange") endTimeRange: option<endTimeRange>,
@as("Type") type_: option<insightType>
}
type listInsightsAnyStatusFilter = {
@as("StartTimeRange") startTimeRange: option<startTimeRange>,
@as("Type") type_: option<insightType>
}
type eventResources = array<eventResource>
type cloudWatchMetricsDimensions = array<cloudWatchMetricsDimension>
type cloudFormationHealth = {
@as("Insight") insight: insightHealth,
@as("StackName") stackName: stackName
}
type cloudFormationCostEstimationResourceCollectionFilter = {
@as("StackNames") stackNames: costEstimationStackNames
}
type cloudFormationCollectionFilter = {
@as("StackNames") stackNames: stackNames
}
type cloudFormationCollection = {
@as("StackNames") stackNames: stackNames
}
type updateResourceCollectionFilter = {
@as("CloudFormation") cloudFormation: updateCloudFormationCollectionFilter
}
type serviceHealths = array<serviceHealth>
type resourceCollectionFilter = {
@as("CloudFormation") cloudFormation: cloudFormationCollectionFilter
}
type resourceCollection = {
@as("CloudFormation") cloudFormation: cloudFormationCollection
}
type recommendationRelatedEvent = {
@as("Resources") resources: recommendationRelatedEventResources,
@as("Name") name: recommendationRelatedEventName
}
type recommendationRelatedAnomalySourceDetail = {
@as("CloudWatchMetrics") cloudWatchMetrics: recommendationRelatedCloudWatchMetricsSourceDetails
}
type notificationChannel = {
@as("Config") config: notificationChannelConfig,
@as("Id") id: notificationChannelId
}
type listInsightsStatusFilter = {
@as("Any") any: listInsightsAnyStatusFilter,
@as("Closed") closed: listInsightsClosedStatusFilter,
@as("Ongoing") ongoing: listInsightsOngoingStatusFilter
}
type costEstimationResourceCollectionFilter = {
@as("CloudFormation") cloudFormation: cloudFormationCostEstimationResourceCollectionFilter
}
type cloudWatchMetricsDetail = {
@as("Period") period: cloudWatchMetricsPeriod,
@as("Unit") unit: cloudWatchMetricsUnit,
@as("Stat") stat: cloudWatchMetricsStat,
@as("Dimensions") dimensions: cloudWatchMetricsDimensions,
@as("Namespace") namespace: cloudWatchMetricsNamespace,
@as("MetricName") metricName: cloudWatchMetricsMetricName
}
type cloudFormationHealths = array<cloudFormationHealth>
type searchInsightsFilters = {
@as("ServiceCollection") serviceCollection: serviceCollection,
@as("ResourceCollection") resourceCollection: resourceCollection,
@as("Statuses") statuses: insightStatuses,
@as("Severities") severities: insightSeverities
}
type relatedAnomalySourceDetails = array<recommendationRelatedAnomalySourceDetail>
type recommendationRelatedEvents = array<recommendationRelatedEvent>
type reactiveInsightSummary = {
@as("ServiceCollection") serviceCollection: serviceCollection,
@as("ResourceCollection") resourceCollection: resourceCollection,
@as("InsightTimeRange") insightTimeRange: insightTimeRange,
@as("Status") status: insightStatus,
@as("Severity") severity: insightSeverity,
@as("Name") name: insightName,
@as("Id") id: insightId
}
type reactiveInsight = {
@as("SsmOpsItemId") ssmOpsItemId: ssmOpsItemId,
@as("ResourceCollection") resourceCollection: resourceCollection,
@as("InsightTimeRange") insightTimeRange: insightTimeRange,
@as("Status") status: insightStatus,
@as("Severity") severity: insightSeverity,
@as("Name") name: insightName,
@as("Id") id: insightId
}
type proactiveInsightSummary = {
@as("ServiceCollection") serviceCollection: serviceCollection,
@as("ResourceCollection") resourceCollection: resourceCollection,
@as("PredictionTimeRange") predictionTimeRange: predictionTimeRange,
@as("InsightTimeRange") insightTimeRange: insightTimeRange,
@as("Status") status: insightStatus,
@as("Severity") severity: insightSeverity,
@as("Name") name: insightName,
@as("Id") id: insightId
}
type proactiveInsight = {
@as("SsmOpsItemId") ssmOpsItemId: ssmOpsItemId,
@as("ResourceCollection") resourceCollection: resourceCollection,
@as("PredictionTimeRange") predictionTimeRange: predictionTimeRange,
@as("InsightTimeRange") insightTimeRange: insightTimeRange,
@as("Status") status: insightStatus,
@as("Severity") severity: insightSeverity,
@as("Name") name: insightName,
@as("Id") id: insightId
}
type listEventsFilters = {
@as("ResourceCollection") resourceCollection: resourceCollection,
@as("DataSource") dataSource: eventDataSource,
@as("EventSource") eventSource: eventSource,
@as("EventClass") eventClass: eventClass,
@as("EventTimeRange") eventTimeRange: eventTimeRange,
@as("InsightId") insightId: insightId
}
type event = {
@as("Resources") resources: eventResources,
@as("EventClass") eventClass: eventClass,
@as("DataSource") dataSource: eventDataSource,
@as("Name") name: eventName,
@as("EventSource") eventSource: eventSource,
@as("Time") time: amazonawsTimestamp,
@as("Id") id: eventId,
@as("ResourceCollection") resourceCollection: resourceCollection
}
type cloudWatchMetricsDetails = array<cloudWatchMetricsDetail>
type channels = array<notificationChannel>
type recommendationRelatedAnomaly = {
@as("SourceDetails") sourceDetails: relatedAnomalySourceDetails,
@as("Resources") resources: recommendationRelatedAnomalyResources
}
type reactiveInsights = array<reactiveInsightSummary>
type proactiveInsights = array<proactiveInsightSummary>
type events = array<event>
type anomalySourceDetails = {
@as("CloudWatchMetrics") cloudWatchMetrics: cloudWatchMetricsDetails
}
type recommendationRelatedAnomalies = array<recommendationRelatedAnomaly>
type reactiveAnomalySummary = {
@as("ResourceCollection") resourceCollection: resourceCollection,
@as("AssociatedInsightId") associatedInsightId: insightId,
@as("SourceDetails") sourceDetails: anomalySourceDetails,
@as("AnomalyTimeRange") anomalyTimeRange: anomalyTimeRange,
@as("Status") status: anomalyStatus,
@as("Severity") severity: anomalySeverity,
@as("Id") id: anomalyId
}
type reactiveAnomaly = {
@as("ResourceCollection") resourceCollection: resourceCollection,
@as("AssociatedInsightId") associatedInsightId: insightId,
@as("SourceDetails") sourceDetails: anomalySourceDetails,
@as("AnomalyTimeRange") anomalyTimeRange: anomalyTimeRange,
@as("Status") status: anomalyStatus,
@as("Severity") severity: anomalySeverity,
@as("Id") id: anomalyId
}
type proactiveAnomalySummary = {
@as("Limit") limit: anomalyLimit,
@as("ResourceCollection") resourceCollection: resourceCollection,
@as("AssociatedInsightId") associatedInsightId: insightId,
@as("SourceDetails") sourceDetails: anomalySourceDetails,
@as("PredictionTimeRange") predictionTimeRange: predictionTimeRange,
@as("AnomalyTimeRange") anomalyTimeRange: anomalyTimeRange,
@as("UpdateTime") updateTime: amazonawsTimestamp,
@as("Status") status: anomalyStatus,
@as("Severity") severity: anomalySeverity,
@as("Id") id: anomalyId
}
type proactiveAnomaly = {
@as("Limit") limit: anomalyLimit,
@as("ResourceCollection") resourceCollection: resourceCollection,
@as("AssociatedInsightId") associatedInsightId: insightId,
@as("SourceDetails") sourceDetails: anomalySourceDetails,
@as("PredictionTimeRange") predictionTimeRange: predictionTimeRange,
@as("AnomalyTimeRange") anomalyTimeRange: anomalyTimeRange,
@as("UpdateTime") updateTime: amazonawsTimestamp,
@as("Status") status: anomalyStatus,
@as("Severity") severity: anomalySeverity,
@as("Id") id: anomalyId
}
type recommendation = {
@as("RelatedAnomalies") relatedAnomalies: recommendationRelatedAnomalies,
@as("RelatedEvents") relatedEvents: recommendationRelatedEvents,
@as("Reason") reason: recommendationReason,
@as("Name") name: recommendationName,
@as("Link") link: recommendationLink,
@as("Description") description: recommendationDescription
}
type reactiveAnomalies = array<reactiveAnomalySummary>
type proactiveAnomalies = array<proactiveAnomalySummary>
type recommendations = array<recommendation>
type clientType;
@module("@aws-sdk/client-devops-guru") @new external createClient: unit => clientType = "DevOpsGuruClient";
module UpdateServiceIntegration = {
  type t;
  type request = {
@as("ServiceIntegration") serviceIntegration: option<updateServiceIntegrationConfig>
}
  type response = unit
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "UpdateServiceIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveNotificationChannel = {
  type t;
  type request = {
@as("Id") id: option<notificationChannelId>
}
  type response = unit
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "RemoveNotificationChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutFeedback = {
  type t;
  type request = {
@as("InsightFeedback") insightFeedback: insightFeedback
}
  type response = unit
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "PutFeedbackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeServiceIntegration = {
  type t;
  type request = unit
  type response = {
@as("ServiceIntegration") serviceIntegration: serviceIntegrationConfig
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "DescribeServiceIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFeedback = {
  type t;
  type request = {
@as("InsightId") insightId: insightId
}
  type response = {
@as("InsightFeedback") insightFeedback: insightFeedback
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "DescribeFeedbackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountOverview = {
  type t;
  type request = {
@as("ToTime") toTime: amazonawsTimestamp,
@as("FromTime") fromTime: option<amazonawsTimestamp>
}
  type response = {
@as("MeanTimeToRecoverInMilliseconds") meanTimeToRecoverInMilliseconds: option<meanTimeToRecoverInMilliseconds>,
@as("ProactiveInsights") proactiveInsights: option<numProactiveInsights>,
@as("ReactiveInsights") reactiveInsights: option<numReactiveInsights>
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccountOverviewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountHealth = {
  type t;
  type request = unit
  type response = {
@as("ResourceHours") resourceHours: option<resourceHours>,
@as("MetricsAnalyzed") metricsAnalyzed: option<numMetricsAnalyzed>,
@as("OpenProactiveInsights") openProactiveInsights: option<numOpenProactiveInsights>,
@as("OpenReactiveInsights") openReactiveInsights: option<numOpenReactiveInsights>
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccountHealthCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddNotificationChannel = {
  type t;
  type request = {
@as("Config") config: option<notificationChannelConfig>
}
  type response = {
@as("Id") id: option<notificationChannelId>
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "AddNotificationChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateResourceCollection = {
  type t;
  type request = {
@as("ResourceCollection") resourceCollection: option<updateResourceCollectionFilter>,
@as("Action") action: option<updateResourceCollectionAction>
}
  type response = unit
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "UpdateResourceCollectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartCostEstimation = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("ResourceCollection") resourceCollection: option<costEstimationResourceCollectionFilter>
}
  type response = unit
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "StartCostEstimationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourceCollection = {
  type t;
  type request = {
@as("NextToken") nextToken: uuidNextToken,
@as("ResourceCollectionType") resourceCollectionType: option<resourceCollectionType>
}
  type response = {
@as("NextToken") nextToken: uuidNextToken,
@as("ResourceCollection") resourceCollection: resourceCollectionFilter
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "GetResourceCollectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCostEstimation = {
  type t;
  type request = {
@as("NextToken") nextToken: uuidNextToken
}
  type response = {
@as("NextToken") nextToken: uuidNextToken,
@as("TotalCost") totalCost: cost,
@as("TimeRange") timeRange: costEstimationTimeRange,
@as("Costs") costs: serviceResourceCosts,
@as("Status") status: costEstimationStatus,
@as("ResourceCollection") resourceCollection: costEstimationResourceCollectionFilter
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "GetCostEstimationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeResourceCollectionHealth = {
  type t;
  type request = {
@as("NextToken") nextToken: uuidNextToken,
@as("ResourceCollectionType") resourceCollectionType: option<resourceCollectionType>
}
  type response = {
@as("NextToken") nextToken: uuidNextToken,
@as("Service") service: serviceHealths,
@as("CloudFormation") cloudFormation: option<cloudFormationHealths>
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "DescribeResourceCollectionHealthCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNotificationChannels = {
  type t;
  type request = {
@as("NextToken") nextToken: uuidNextToken
}
  type response = {
@as("NextToken") nextToken: uuidNextToken,
@as("Channels") channels: channels
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "ListNotificationChannelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInsight = {
  type t;
  type request = {
@as("Id") id: option<insightId>
}
  type response = {
@as("ReactiveInsight") reactiveInsight: reactiveInsight,
@as("ProactiveInsight") proactiveInsight: proactiveInsight
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "DescribeInsightCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchInsights = {
  type t;
  type request = {
@as("Type") type_: option<insightType>,
@as("NextToken") nextToken: uuidNextToken,
@as("MaxResults") maxResults: searchInsightsMaxResults,
@as("Filters") filters: searchInsightsFilters,
@as("StartTimeRange") startTimeRange: option<startTimeRange>
}
  type response = {
@as("NextToken") nextToken: uuidNextToken,
@as("ReactiveInsights") reactiveInsights: reactiveInsights,
@as("ProactiveInsights") proactiveInsights: proactiveInsights
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "SearchInsightsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInsights = {
  type t;
  type request = {
@as("NextToken") nextToken: uuidNextToken,
@as("MaxResults") maxResults: listInsightsMaxResults,
@as("StatusFilter") statusFilter: option<listInsightsStatusFilter>
}
  type response = {
@as("NextToken") nextToken: uuidNextToken,
@as("ReactiveInsights") reactiveInsights: reactiveInsights,
@as("ProactiveInsights") proactiveInsights: proactiveInsights
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "ListInsightsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEvents = {
  type t;
  type request = {
@as("NextToken") nextToken: uuidNextToken,
@as("MaxResults") maxResults: listEventsMaxResults,
@as("Filters") filters: option<listEventsFilters>
}
  type response = {
@as("NextToken") nextToken: uuidNextToken,
@as("Events") events: option<events>
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "ListEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAnomaly = {
  type t;
  type request = {
@as("Id") id: option<anomalyId>
}
  type response = {
@as("ReactiveAnomaly") reactiveAnomaly: reactiveAnomaly,
@as("ProactiveAnomaly") proactiveAnomaly: proactiveAnomaly
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "DescribeAnomalyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAnomaliesForInsight = {
  type t;
  type request = {
@as("NextToken") nextToken: uuidNextToken,
@as("MaxResults") maxResults: listAnomaliesForInsightMaxResults,
@as("StartTimeRange") startTimeRange: startTimeRange,
@as("InsightId") insightId: option<insightId>
}
  type response = {
@as("NextToken") nextToken: uuidNextToken,
@as("ReactiveAnomalies") reactiveAnomalies: reactiveAnomalies,
@as("ProactiveAnomalies") proactiveAnomalies: proactiveAnomalies
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "ListAnomaliesForInsightCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRecommendations = {
  type t;
  type request = {
@as("Locale") locale: locale,
@as("NextToken") nextToken: uuidNextToken,
@as("InsightId") insightId: option<insightId>
}
  type response = {
@as("NextToken") nextToken: uuidNextToken,
@as("Recommendations") recommendations: recommendations
}
  @module("@aws-sdk/client-devops-guru") @new external new_: (Js.Promise.t<request>) => t = "ListRecommendationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
