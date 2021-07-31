type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type xmlStringMaxLen256 = string
type xmlStringMaxLen128 = string
type xmlString = string
type timestampType = Js.Date.t;
type serviceNamespace = [@as("dynamodb") #dynamodb | @as("rds") #rds | @as("ec2") #ec2 | @as("ecs") #ecs | @as("autoscaling") #autoscaling]
type scheduledActionBufferTime = int;
type scalingStatusCode = [@as("Active") #Active | @as("PartiallyActive") #PartiallyActive | @as("Inactive") #Inactive]
type scalingPolicyUpdateBehavior = [@as("ReplaceExternalPolicies") #ReplaceExternalPolicies | @as("KeepExternalPolicies") #KeepExternalPolicies]
type scalingPlanVersion = float;
type scalingPlanStatusCode = [@as("UpdateFailed") #UpdateFailed | @as("UpdateInProgress") #UpdateInProgress | @as("DeletionFailed") #DeletionFailed | @as("DeletionInProgress") #DeletionInProgress | @as("CreationFailed") #CreationFailed | @as("CreationInProgress") #CreationInProgress | @as("ActiveWithProblems") #ActiveWithProblems | @as("Active") #Active]
type scalingPlanName = string
type scalingMetricType = [@as("EC2SpotFleetRequestAverageNetworkOut") #EC2SpotFleetRequestAverageNetworkOut | @as("EC2SpotFleetRequestAverageNetworkIn") #EC2SpotFleetRequestAverageNetworkIn | @as("EC2SpotFleetRequestAverageCPUUtilization") #EC2SpotFleetRequestAverageCPUUtilization | @as("RDSReaderAverageDatabaseConnections") #RDSReaderAverageDatabaseConnections | @as("RDSReaderAverageCPUUtilization") #RDSReaderAverageCPUUtilization | @as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget | @as("ECSServiceAverageMemoryUtilization") #ECSServiceAverageMemoryUtilization | @as("ECSServiceAverageCPUUtilization") #ECSServiceAverageCPUUtilization | @as("DynamoDBWriteCapacityUtilization") #DynamoDBWriteCapacityUtilization | @as("DynamoDBReadCapacityUtilization") #DynamoDBReadCapacityUtilization | @as("ASGAverageNetworkOut") #ASGAverageNetworkOut | @as("ASGAverageNetworkIn") #ASGAverageNetworkIn | @as("ASGAverageCPUUtilization") #ASGAverageCPUUtilization]
type scalableDimension = [@as("dynamodb:index:WriteCapacityUnits") #dynamodb_index_WriteCapacityUnits | @as("dynamodb:index:ReadCapacityUnits") #dynamodb_index_ReadCapacityUnits | @as("dynamodb:table:WriteCapacityUnits") #dynamodb_table_WriteCapacityUnits | @as("dynamodb:table:ReadCapacityUnits") #dynamodb_table_ReadCapacityUnits | @as("rds:cluster:ReadReplicaCount") #rds_cluster_ReadReplicaCount | @as("ec2:spot-fleet-request:TargetCapacity") #ec2_spot_fleet_request_TargetCapacity | @as("ecs:service:DesiredCount") #ecs_service_DesiredCount | @as("autoscaling:autoScalingGroup:DesiredCapacity") #autoscaling_autoScalingGroup_DesiredCapacity]
type resourceLabel = string
type resourceIdMaxLen1600 = string
type resourceCapacity = int;
type predictiveScalingMode = [@as("ForecastOnly") #ForecastOnly | @as("ForecastAndScale") #ForecastAndScale]
type predictiveScalingMaxCapacityBehavior = [@as("SetMaxCapacityAboveForecastCapacity") #SetMaxCapacityAboveForecastCapacity | @as("SetMaxCapacityToForecastCapacity") #SetMaxCapacityToForecastCapacity | @as("SetForecastCapacityToMaxCapacity") #SetForecastCapacityToMaxCapacity]
type policyType = [@as("TargetTrackingScaling") #TargetTrackingScaling]
type policyName = string
type nextToken = string
type metricUnit = string
type metricStatistic = [@as("Sum") #Sum | @as("SampleCount") #SampleCount | @as("Maximum") #Maximum | @as("Minimum") #Minimum | @as("Average") #Average]
type metricScale = float;
type metricNamespace = string
type metricName = string
type metricDimensionValue = string
type metricDimensionName = string
type maxResults = int;
type loadMetricType = [@as("ALBTargetGroupRequestCount") #ALBTargetGroupRequestCount | @as("ASGTotalNetworkOut") #ASGTotalNetworkOut | @as("ASGTotalNetworkIn") #ASGTotalNetworkIn | @as("ASGTotalCPUUtilization") #ASGTotalCPUUtilization]
type forecastDataType = [@as("ScheduledActionMaxCapacity") #ScheduledActionMaxCapacity | @as("ScheduledActionMinCapacity") #ScheduledActionMinCapacity | @as("LoadForecast") #LoadForecast | @as("CapacityForecast") #CapacityForecast]
type errorMessage = string
type disableScaleIn = bool;
type disableDynamicScaling = bool;
type cooldown = int;
type tagValues = array<xmlStringMaxLen256>
type scalingPlanNames = array<scalingPlanName>
type predefinedScalingMetricSpecification = {
@as("ResourceLabel") resourceLabel: resourceLabel,
@as("PredefinedScalingMetricType") predefinedScalingMetricType: option<scalingMetricType>
}
type predefinedLoadMetricSpecification = {
@as("ResourceLabel") resourceLabel: resourceLabel,
@as("PredefinedLoadMetricType") predefinedLoadMetricType: option<loadMetricType>
}
type metricDimension = {
@as("Value") value: option<metricDimensionValue>,
@as("Name") name: option<metricDimensionName>
}
type datapoint = {
@as("Value") value: metricScale,
@as("Timestamp") timestamp: timestampType
}
type tagFilter = {
@as("Values") values: tagValues,
@as("Key") key: xmlStringMaxLen128
}
type metricDimensions = array<metricDimension>
type datapoints = array<datapoint>
type tagFilters = array<tagFilter>
type customizedScalingMetricSpecification = {
@as("Unit") unit: metricUnit,
@as("Statistic") statistic: option<metricStatistic>,
@as("Dimensions") dimensions: metricDimensions,
@as("Namespace") namespace: option<metricNamespace>,
@as("MetricName") metricName: option<metricName>
}
type customizedLoadMetricSpecification = {
@as("Unit") unit: metricUnit,
@as("Statistic") statistic: option<metricStatistic>,
@as("Dimensions") dimensions: metricDimensions,
@as("Namespace") namespace: option<metricNamespace>,
@as("MetricName") metricName: option<metricName>
}
type targetTrackingConfiguration = {
@as("EstimatedInstanceWarmup") estimatedInstanceWarmup: cooldown,
@as("ScaleInCooldown") scaleInCooldown: cooldown,
@as("ScaleOutCooldown") scaleOutCooldown: cooldown,
@as("DisableScaleIn") disableScaleIn: disableScaleIn,
@as("TargetValue") targetValue: option<metricScale>,
@as("CustomizedScalingMetricSpecification") customizedScalingMetricSpecification: customizedScalingMetricSpecification,
@as("PredefinedScalingMetricSpecification") predefinedScalingMetricSpecification: predefinedScalingMetricSpecification
}
type applicationSource = {
@as("TagFilters") tagFilters: tagFilters,
@as("CloudFormationStackARN") cloudFormationStackARN: xmlString
}
type targetTrackingConfigurations = array<targetTrackingConfiguration>
type scalingPolicy = {
@as("TargetTrackingConfiguration") targetTrackingConfiguration: targetTrackingConfiguration,
@as("PolicyType") policyType: option<policyType>,
@as("PolicyName") policyName: option<policyName>
}
type applicationSources = array<applicationSource>
type scalingPolicies = array<scalingPolicy>
type scalingInstruction = {
@as("DisableDynamicScaling") disableDynamicScaling: disableDynamicScaling,
@as("ScalingPolicyUpdateBehavior") scalingPolicyUpdateBehavior: scalingPolicyUpdateBehavior,
@as("PredictiveScalingMode") predictiveScalingMode: predictiveScalingMode,
@as("PredictiveScalingMaxCapacityBuffer") predictiveScalingMaxCapacityBuffer: resourceCapacity,
@as("PredictiveScalingMaxCapacityBehavior") predictiveScalingMaxCapacityBehavior: predictiveScalingMaxCapacityBehavior,
@as("ScheduledActionBufferTime") scheduledActionBufferTime: scheduledActionBufferTime,
@as("CustomizedLoadMetricSpecification") customizedLoadMetricSpecification: customizedLoadMetricSpecification,
@as("PredefinedLoadMetricSpecification") predefinedLoadMetricSpecification: predefinedLoadMetricSpecification,
@as("TargetTrackingConfigurations") targetTrackingConfigurations: option<targetTrackingConfigurations>,
@as("MaxCapacity") maxCapacity: option<resourceCapacity>,
@as("MinCapacity") minCapacity: option<resourceCapacity>,
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>
}
type scalingPlanResource = {
@as("ScalingStatusMessage") scalingStatusMessage: xmlString,
@as("ScalingStatusCode") scalingStatusCode: option<scalingStatusCode>,
@as("ScalingPolicies") scalingPolicies: scalingPolicies,
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>,
@as("ScalingPlanVersion") scalingPlanVersion: option<scalingPlanVersion>,
@as("ScalingPlanName") scalingPlanName: option<scalingPlanName>
}
type scalingInstructions = array<scalingInstruction>
type scalingPlanResources = array<scalingPlanResource>
type scalingPlan = {
@as("CreationTime") creationTime: timestampType,
@as("StatusStartTime") statusStartTime: timestampType,
@as("StatusMessage") statusMessage: xmlString,
@as("StatusCode") statusCode: option<scalingPlanStatusCode>,
@as("ScalingInstructions") scalingInstructions: option<scalingInstructions>,
@as("ApplicationSource") applicationSource: option<applicationSource>,
@as("ScalingPlanVersion") scalingPlanVersion: option<scalingPlanVersion>,
@as("ScalingPlanName") scalingPlanName: option<scalingPlanName>
}
type scalingPlans = array<scalingPlan>
type clientType;
@module("@aws-sdk/client-autoscaling-plans") @new external createClient: unit => clientType = "AutoScalingPlansClient";
module DeleteScalingPlan = {
  type t;
  type request = {
@as("ScalingPlanVersion") scalingPlanVersion: option<scalingPlanVersion>,
@as("ScalingPlanName") scalingPlanName: option<scalingPlanName>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "DeleteScalingPlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetScalingPlanResourceForecastData = {
  type t;
  type request = {
@as("EndTime") endTime: option<timestampType>,
@as("StartTime") startTime: option<timestampType>,
@as("ForecastDataType") forecastDataType: option<forecastDataType>,
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<xmlString>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>,
@as("ScalingPlanVersion") scalingPlanVersion: option<scalingPlanVersion>,
@as("ScalingPlanName") scalingPlanName: option<scalingPlanName>
}
  type response = {
@as("Datapoints") datapoints: option<datapoints>
}
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "GetScalingPlanResourceForecastDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateScalingPlan = {
  type t;
  type request = {
@as("ScalingInstructions") scalingInstructions: scalingInstructions,
@as("ApplicationSource") applicationSource: applicationSource,
@as("ScalingPlanVersion") scalingPlanVersion: option<scalingPlanVersion>,
@as("ScalingPlanName") scalingPlanName: option<scalingPlanName>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "UpdateScalingPlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateScalingPlan = {
  type t;
  type request = {
@as("ScalingInstructions") scalingInstructions: option<scalingInstructions>,
@as("ApplicationSource") applicationSource: option<applicationSource>,
@as("ScalingPlanName") scalingPlanName: option<scalingPlanName>
}
  type response = {
@as("ScalingPlanVersion") scalingPlanVersion: option<scalingPlanVersion>
}
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "CreateScalingPlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingPlanResources = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ScalingPlanVersion") scalingPlanVersion: option<scalingPlanVersion>,
@as("ScalingPlanName") scalingPlanName: option<scalingPlanName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ScalingPlanResources") scalingPlanResources: scalingPlanResources
}
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "DescribeScalingPlanResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingPlans = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ApplicationSources") applicationSources: applicationSources,
@as("ScalingPlanVersion") scalingPlanVersion: scalingPlanVersion,
@as("ScalingPlanNames") scalingPlanNames: scalingPlanNames
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ScalingPlans") scalingPlans: scalingPlans
}
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "DescribeScalingPlansCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
