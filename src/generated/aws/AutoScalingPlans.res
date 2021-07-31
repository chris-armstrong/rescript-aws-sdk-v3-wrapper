type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-autoscaling-plans") @new external createClient: unit => awsServiceClient = "AutoScalingPlansClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type xmlStringMaxLen256 = string
type xmlStringMaxLen128 = string
type xmlString = string
type timestampType = Js.Date.t;
type serviceNamespace = [@as("dynamodb") #Dynamodb | @as("rds") #Rds | @as("ec2") #Ec2 | @as("ecs") #Ecs | @as("autoscaling") #Autoscaling]
type scheduledActionBufferTime = int
type scalingStatusCode = [@as("Active") #Active | @as("PartiallyActive") #PartiallyActive | @as("Inactive") #Inactive]
type scalingPolicyUpdateBehavior = [@as("ReplaceExternalPolicies") #ReplaceExternalPolicies | @as("KeepExternalPolicies") #KeepExternalPolicies]
type scalingPlanVersion = float
type scalingPlanStatusCode = [@as("UpdateFailed") #UpdateFailed | @as("UpdateInProgress") #UpdateInProgress | @as("DeletionFailed") #DeletionFailed | @as("DeletionInProgress") #DeletionInProgress | @as("CreationFailed") #CreationFailed | @as("CreationInProgress") #CreationInProgress | @as("ActiveWithProblems") #ActiveWithProblems | @as("Active") #Active]
type scalingPlanName = string
type scalingMetricType = [@as("EC2SpotFleetRequestAverageNetworkOut") #EC2SpotFleetRequestAverageNetworkOut | @as("EC2SpotFleetRequestAverageNetworkIn") #EC2SpotFleetRequestAverageNetworkIn | @as("EC2SpotFleetRequestAverageCPUUtilization") #EC2SpotFleetRequestAverageCPUUtilization | @as("RDSReaderAverageDatabaseConnections") #RDSReaderAverageDatabaseConnections | @as("RDSReaderAverageCPUUtilization") #RDSReaderAverageCPUUtilization | @as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget | @as("ECSServiceAverageMemoryUtilization") #ECSServiceAverageMemoryUtilization | @as("ECSServiceAverageCPUUtilization") #ECSServiceAverageCPUUtilization | @as("DynamoDBWriteCapacityUtilization") #DynamoDBWriteCapacityUtilization | @as("DynamoDBReadCapacityUtilization") #DynamoDBReadCapacityUtilization | @as("ASGAverageNetworkOut") #ASGAverageNetworkOut | @as("ASGAverageNetworkIn") #ASGAverageNetworkIn | @as("ASGAverageCPUUtilization") #ASGAverageCPUUtilization]
type scalableDimension = [@as("dynamodb:index:WriteCapacityUnits") #Dynamodb_Index_WriteCapacityUnits | @as("dynamodb:index:ReadCapacityUnits") #Dynamodb_Index_ReadCapacityUnits | @as("dynamodb:table:WriteCapacityUnits") #Dynamodb_Table_WriteCapacityUnits | @as("dynamodb:table:ReadCapacityUnits") #Dynamodb_Table_ReadCapacityUnits | @as("rds:cluster:ReadReplicaCount") #Rds_Cluster_ReadReplicaCount | @as("ec2:spot-fleet-request:TargetCapacity") #Ec2_Spot_Fleet_Request_TargetCapacity | @as("ecs:service:DesiredCount") #Ecs_Service_DesiredCount | @as("autoscaling:autoScalingGroup:DesiredCapacity") #Autoscaling_AutoScalingGroup_DesiredCapacity]
type resourceLabel = string
type resourceIdMaxLen1600 = string
type resourceCapacity = int
type predictiveScalingMode = [@as("ForecastOnly") #ForecastOnly | @as("ForecastAndScale") #ForecastAndScale]
type predictiveScalingMaxCapacityBehavior = [@as("SetMaxCapacityAboveForecastCapacity") #SetMaxCapacityAboveForecastCapacity | @as("SetMaxCapacityToForecastCapacity") #SetMaxCapacityToForecastCapacity | @as("SetForecastCapacityToMaxCapacity") #SetForecastCapacityToMaxCapacity]
type policyType = [@as("TargetTrackingScaling") #TargetTrackingScaling]
type policyName = string
type nextToken = string
type metricUnit = string
type metricStatistic = [@as("Sum") #Sum | @as("SampleCount") #SampleCount | @as("Maximum") #Maximum | @as("Minimum") #Minimum | @as("Average") #Average]
type metricScale = float
type metricNamespace = string
type metricName = string
type metricDimensionValue = string
type metricDimensionName = string
type maxResults = int
type loadMetricType = [@as("ALBTargetGroupRequestCount") #ALBTargetGroupRequestCount | @as("ASGTotalNetworkOut") #ASGTotalNetworkOut | @as("ASGTotalNetworkIn") #ASGTotalNetworkIn | @as("ASGTotalCPUUtilization") #ASGTotalCPUUtilization]
type forecastDataType = [@as("ScheduledActionMaxCapacity") #ScheduledActionMaxCapacity | @as("ScheduledActionMinCapacity") #ScheduledActionMinCapacity | @as("LoadForecast") #LoadForecast | @as("CapacityForecast") #CapacityForecast]
type errorMessage = string
type disableScaleIn = bool
type disableDynamicScaling = bool
type cooldown = int
type tagValues = array<xmlStringMaxLen256>
type scalingPlanNames = array<scalingPlanName>
type predefinedScalingMetricSpecification = {
@as("ResourceLabel") resourceLabel: option<resourceLabel>,
  @as("PredefinedScalingMetricType") predefinedScalingMetricType: scalingMetricType
}
type predefinedLoadMetricSpecification = {
@as("ResourceLabel") resourceLabel: option<resourceLabel>,
  @as("PredefinedLoadMetricType") predefinedLoadMetricType: loadMetricType
}
type metricDimension = {
@as("Value") value: metricDimensionValue,
  @as("Name") name: metricDimensionName
}
type datapoint = {
@as("Value") value: option<metricScale>,
  @as("Timestamp") timestamp_: option<timestampType>
}
type tagFilter = {
@as("Values") values: option<tagValues>,
  @as("Key") key: option<xmlStringMaxLen128>
}
type metricDimensions = array<metricDimension>
type datapoints = array<datapoint>
type tagFilters = array<tagFilter>
type customizedScalingMetricSpecification = {
@as("Unit") unit_: option<metricUnit>,
  @as("Statistic") statistic: metricStatistic,
  @as("Dimensions") dimensions: option<metricDimensions>,
  @as("Namespace") namespace: metricNamespace,
  @as("MetricName") metricName: metricName
}
type customizedLoadMetricSpecification = {
@as("Unit") unit_: option<metricUnit>,
  @as("Statistic") statistic: metricStatistic,
  @as("Dimensions") dimensions: option<metricDimensions>,
  @as("Namespace") namespace: metricNamespace,
  @as("MetricName") metricName: metricName
}
type targetTrackingConfiguration = {
@as("EstimatedInstanceWarmup") estimatedInstanceWarmup: option<cooldown>,
  @as("ScaleInCooldown") scaleInCooldown: option<cooldown>,
  @as("ScaleOutCooldown") scaleOutCooldown: option<cooldown>,
  @as("DisableScaleIn") disableScaleIn: option<disableScaleIn>,
  @as("TargetValue") targetValue: metricScale,
  @as("CustomizedScalingMetricSpecification") customizedScalingMetricSpecification: option<customizedScalingMetricSpecification>,
  @as("PredefinedScalingMetricSpecification") predefinedScalingMetricSpecification: option<predefinedScalingMetricSpecification>
}
type applicationSource = {
@as("TagFilters") tagFilters: option<tagFilters>,
  @as("CloudFormationStackARN") cloudFormationStackARN: option<xmlString>
}
type targetTrackingConfigurations = array<targetTrackingConfiguration>
type scalingPolicy = {
@as("TargetTrackingConfiguration") targetTrackingConfiguration: option<targetTrackingConfiguration>,
  @as("PolicyType") policyType: policyType,
  @as("PolicyName") policyName: policyName
}
type applicationSources = array<applicationSource>
type scalingPolicies = array<scalingPolicy>
type scalingInstruction = {
@as("DisableDynamicScaling") disableDynamicScaling: option<disableDynamicScaling>,
  @as("ScalingPolicyUpdateBehavior") scalingPolicyUpdateBehavior: option<scalingPolicyUpdateBehavior>,
  @as("PredictiveScalingMode") predictiveScalingMode: option<predictiveScalingMode>,
  @as("PredictiveScalingMaxCapacityBuffer") predictiveScalingMaxCapacityBuffer: option<resourceCapacity>,
  @as("PredictiveScalingMaxCapacityBehavior") predictiveScalingMaxCapacityBehavior: option<predictiveScalingMaxCapacityBehavior>,
  @as("ScheduledActionBufferTime") scheduledActionBufferTime: option<scheduledActionBufferTime>,
  @as("CustomizedLoadMetricSpecification") customizedLoadMetricSpecification: option<customizedLoadMetricSpecification>,
  @as("PredefinedLoadMetricSpecification") predefinedLoadMetricSpecification: option<predefinedLoadMetricSpecification>,
  @as("TargetTrackingConfigurations") targetTrackingConfigurations: targetTrackingConfigurations,
  @as("MaxCapacity") maxCapacity: resourceCapacity,
  @as("MinCapacity") minCapacity: resourceCapacity,
  @as("ScalableDimension") scalableDimension: scalableDimension,
  @as("ResourceId") resourceId: resourceIdMaxLen1600,
  @as("ServiceNamespace") serviceNamespace: serviceNamespace
}
type scalingPlanResource = {
@as("ScalingStatusMessage") scalingStatusMessage: option<xmlString>,
  @as("ScalingStatusCode") scalingStatusCode: scalingStatusCode,
  @as("ScalingPolicies") scalingPolicies: option<scalingPolicies>,
  @as("ScalableDimension") scalableDimension: scalableDimension,
  @as("ResourceId") resourceId: resourceIdMaxLen1600,
  @as("ServiceNamespace") serviceNamespace: serviceNamespace,
  @as("ScalingPlanVersion") scalingPlanVersion: scalingPlanVersion,
  @as("ScalingPlanName") scalingPlanName: scalingPlanName
}
type scalingInstructions = array<scalingInstruction>
type scalingPlanResources = array<scalingPlanResource>
type scalingPlan = {
@as("CreationTime") creationTime: option<timestampType>,
  @as("StatusStartTime") statusStartTime: option<timestampType>,
  @as("StatusMessage") statusMessage: option<xmlString>,
  @as("StatusCode") statusCode: scalingPlanStatusCode,
  @as("ScalingInstructions") scalingInstructions: scalingInstructions,
  @as("ApplicationSource") applicationSource: applicationSource,
  @as("ScalingPlanVersion") scalingPlanVersion: scalingPlanVersion,
  @as("ScalingPlanName") scalingPlanName: scalingPlanName
}
type scalingPlans = array<scalingPlan>

module DeleteScalingPlan = {
  type t;
  type request = {
@as("ScalingPlanVersion") scalingPlanVersion: scalingPlanVersion,
  @as("ScalingPlanName") scalingPlanName: scalingPlanName
}
  type response = unit
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "DeleteScalingPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetScalingPlanResourceForecastData = {
  type t;
  type request = {
@as("EndTime") endTime: timestampType,
  @as("StartTime") startTime: timestampType,
  @as("ForecastDataType") forecastDataType: forecastDataType,
  @as("ScalableDimension") scalableDimension: scalableDimension,
  @as("ResourceId") resourceId: xmlString,
  @as("ServiceNamespace") serviceNamespace: serviceNamespace,
  @as("ScalingPlanVersion") scalingPlanVersion: scalingPlanVersion,
  @as("ScalingPlanName") scalingPlanName: scalingPlanName
}
  type response = {
@as("Datapoints") datapoints: datapoints
}
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "GetScalingPlanResourceForecastDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateScalingPlan = {
  type t;
  type request = {
@as("ScalingInstructions") scalingInstructions: option<scalingInstructions>,
  @as("ApplicationSource") applicationSource: option<applicationSource>,
  @as("ScalingPlanVersion") scalingPlanVersion: scalingPlanVersion,
  @as("ScalingPlanName") scalingPlanName: scalingPlanName
}
  type response = unit
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "UpdateScalingPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateScalingPlan = {
  type t;
  type request = {
@as("ScalingInstructions") scalingInstructions: scalingInstructions,
  @as("ApplicationSource") applicationSource: applicationSource,
  @as("ScalingPlanName") scalingPlanName: scalingPlanName
}
  type response = {
@as("ScalingPlanVersion") scalingPlanVersion: scalingPlanVersion
}
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "CreateScalingPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingPlanResources = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("ScalingPlanVersion") scalingPlanVersion: scalingPlanVersion,
  @as("ScalingPlanName") scalingPlanName: scalingPlanName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ScalingPlanResources") scalingPlanResources: option<scalingPlanResources>
}
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "DescribeScalingPlanResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingPlans = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("ApplicationSources") applicationSources: option<applicationSources>,
  @as("ScalingPlanVersion") scalingPlanVersion: option<scalingPlanVersion>,
  @as("ScalingPlanNames") scalingPlanNames: option<scalingPlanNames>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ScalingPlans") scalingPlans: option<scalingPlans>
}
  @module("@aws-sdk/client-autoscaling-plans") @new external new_: (request) => t = "DescribeScalingPlansCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
