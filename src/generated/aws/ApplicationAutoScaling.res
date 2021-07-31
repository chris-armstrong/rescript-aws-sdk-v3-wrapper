type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type xmlString = string
type timestampType = Js.Date.t;
type serviceNamespace = [@as("kafka") #kafka | @as("cassandra") #cassandra | @as("lambda") #lambda | @as("comprehend") #comprehend | @as("custom-resource") #custom_resource | @as("sagemaker") #sagemaker | @as("rds") #rds | @as("dynamodb") #dynamodb | @as("appstream") #appstream | @as("ec2") #ec2 | @as("elasticmapreduce") #elasticmapreduce | @as("ecs") #ecs]
type scheduledActionName = string
type scalingSuspended = bool;
type scalingAdjustment = int;
type scalingActivityStatusCode = [@as("Failed") #Failed | @as("Unfulfilled") #Unfulfilled | @as("Overridden") #Overridden | @as("Successful") #Successful | @as("InProgress") #InProgress | @as("Pending") #Pending]
type scalableDimension = [@as("kafka:broker-storage:VolumeSize") #kafka_broker_storage_VolumeSize | @as("cassandra:table:WriteCapacityUnits") #cassandra_table_WriteCapacityUnits | @as("cassandra:table:ReadCapacityUnits") #cassandra_table_ReadCapacityUnits | @as("lambda:function:ProvisionedConcurrency") #lambda_function_ProvisionedConcurrency | @as("comprehend:entity-recognizer-endpoint:DesiredInferenceUnits") #comprehend_entity_recognizer_endpoint_DesiredInferenceUnits | @as("comprehend:document-classifier-endpoint:DesiredInferenceUnits") #comprehend_document_classifier_endpoint_DesiredInferenceUnits | @as("custom-resource:ResourceType:Property") #custom_resource_ResourceType_Property | @as("sagemaker:variant:DesiredInstanceCount") #sagemaker_variant_DesiredInstanceCount | @as("rds:cluster:ReadReplicaCount") #rds_cluster_ReadReplicaCount | @as("dynamodb:index:WriteCapacityUnits") #dynamodb_index_WriteCapacityUnits | @as("dynamodb:index:ReadCapacityUnits") #dynamodb_index_ReadCapacityUnits | @as("dynamodb:table:WriteCapacityUnits") #dynamodb_table_WriteCapacityUnits | @as("dynamodb:table:ReadCapacityUnits") #dynamodb_table_ReadCapacityUnits | @as("appstream:fleet:DesiredCapacity") #appstream_fleet_DesiredCapacity | @as("elasticmapreduce:instancegroup:InstanceCount") #elasticmapreduce_instancegroup_InstanceCount | @as("ec2:spot-fleet-request:TargetCapacity") #ec2_spot_fleet_request_TargetCapacity | @as("ecs:service:DesiredCount") #ecs_service_DesiredCount]
type resourceLabel = string
type resourceIdMaxLen1600 = string
type resourceId = string
type resourceCapacity = int;
type policyType = [@as("TargetTrackingScaling") #TargetTrackingScaling | @as("StepScaling") #StepScaling]
type policyName = string
type minAdjustmentMagnitude = int;
type metricUnit = string
type metricType = [@as("KafkaBrokerStorageUtilization") #KafkaBrokerStorageUtilization | @as("CassandraWriteCapacityUtilization") #CassandraWriteCapacityUtilization | @as("CassandraReadCapacityUtilization") #CassandraReadCapacityUtilization | @as("LambdaProvisionedConcurrencyUtilization") #LambdaProvisionedConcurrencyUtilization | @as("ComprehendInferenceUtilization") #ComprehendInferenceUtilization | @as("AppStreamAverageCapacityUtilization") #AppStreamAverageCapacityUtilization | @as("ECSServiceAverageMemoryUtilization") #ECSServiceAverageMemoryUtilization | @as("ECSServiceAverageCPUUtilization") #ECSServiceAverageCPUUtilization | @as("SageMakerVariantInvocationsPerInstance") #SageMakerVariantInvocationsPerInstance | @as("EC2SpotFleetRequestAverageNetworkOut") #EC2SpotFleetRequestAverageNetworkOut | @as("EC2SpotFleetRequestAverageNetworkIn") #EC2SpotFleetRequestAverageNetworkIn | @as("EC2SpotFleetRequestAverageCPUUtilization") #EC2SpotFleetRequestAverageCPUUtilization | @as("RDSReaderAverageDatabaseConnections") #RDSReaderAverageDatabaseConnections | @as("RDSReaderAverageCPUUtilization") #RDSReaderAverageCPUUtilization | @as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget | @as("DynamoDBWriteCapacityUtilization") #DynamoDBWriteCapacityUtilization | @as("DynamoDBReadCapacityUtilization") #DynamoDBReadCapacityUtilization]
type metricStatistic = [@as("Sum") #Sum | @as("SampleCount") #SampleCount | @as("Maximum") #Maximum | @as("Minimum") #Minimum | @as("Average") #Average]
type metricScale = float;
type metricNamespace = string
type metricName = string
type metricDimensionValue = string
type metricDimensionName = string
type metricAggregationType = [@as("Maximum") #Maximum | @as("Minimum") #Minimum | @as("Average") #Average]
type maxResults = int;
type errorMessage = string
type disableScaleIn = bool;
type cooldown = int;
type adjustmentType = [@as("ExactCapacity") #ExactCapacity | @as("PercentChangeInCapacity") #PercentChangeInCapacity | @as("ChangeInCapacity") #ChangeInCapacity]
type suspendedState = {
@as("ScheduledScalingSuspended") scheduledScalingSuspended: scalingSuspended,
@as("DynamicScalingOutSuspended") dynamicScalingOutSuspended: scalingSuspended,
@as("DynamicScalingInSuspended") dynamicScalingInSuspended: scalingSuspended
}
type stepAdjustment = {
@as("ScalingAdjustment") scalingAdjustment: option<scalingAdjustment>,
@as("MetricIntervalUpperBound") metricIntervalUpperBound: metricScale,
@as("MetricIntervalLowerBound") metricIntervalLowerBound: metricScale
}
type scalingActivity = {
@as("Details") details: xmlString,
@as("StatusMessage") statusMessage: xmlString,
@as("StatusCode") statusCode: option<scalingActivityStatusCode>,
@as("EndTime") endTime: timestampType,
@as("StartTime") startTime: option<timestampType>,
@as("Cause") cause: option<xmlString>,
@as("Description") description: option<xmlString>,
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>,
@as("ActivityId") activityId: option<resourceId>
}
type scalableTargetAction = {
@as("MaxCapacity") maxCapacity: resourceCapacity,
@as("MinCapacity") minCapacity: resourceCapacity
}
type resourceIdsMaxLen1600 = array<resourceIdMaxLen1600>
type predefinedMetricSpecification = {
@as("ResourceLabel") resourceLabel: resourceLabel,
@as("PredefinedMetricType") predefinedMetricType: option<metricType>
}
type metricDimension = {
@as("Value") value: option<metricDimensionValue>,
@as("Name") name: option<metricDimensionName>
}
type alarm = {
@as("AlarmARN") alarmARN: option<resourceId>,
@as("AlarmName") alarmName: option<resourceId>
}
type stepAdjustments = array<stepAdjustment>
type scheduledAction = {
@as("CreationTime") creationTime: option<timestampType>,
@as("ScalableTargetAction") scalableTargetAction: scalableTargetAction,
@as("EndTime") endTime: timestampType,
@as("StartTime") startTime: timestampType,
@as("ScalableDimension") scalableDimension: scalableDimension,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("Timezone") timezone: resourceIdMaxLen1600,
@as("Schedule") schedule: option<resourceIdMaxLen1600>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>,
@as("ScheduledActionARN") scheduledActionARN: option<resourceIdMaxLen1600>,
@as("ScheduledActionName") scheduledActionName: option<scheduledActionName>
}
type scalingActivities = array<scalingActivity>
type scalableTarget = {
@as("SuspendedState") suspendedState: suspendedState,
@as("CreationTime") creationTime: option<timestampType>,
@as("RoleARN") roleARN: option<resourceIdMaxLen1600>,
@as("MaxCapacity") maxCapacity: option<resourceCapacity>,
@as("MinCapacity") minCapacity: option<resourceCapacity>,
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>
}
type metricDimensions = array<metricDimension>
type alarms = array<alarm>
type stepScalingPolicyConfiguration = {
@as("MetricAggregationType") metricAggregationType: metricAggregationType,
@as("Cooldown") cooldown: cooldown,
@as("MinAdjustmentMagnitude") minAdjustmentMagnitude: minAdjustmentMagnitude,
@as("StepAdjustments") stepAdjustments: stepAdjustments,
@as("AdjustmentType") adjustmentType: adjustmentType
}
type scheduledActions = array<scheduledAction>
type scalableTargets = array<scalableTarget>
type customizedMetricSpecification = {
@as("Unit") unit: metricUnit,
@as("Statistic") statistic: option<metricStatistic>,
@as("Dimensions") dimensions: metricDimensions,
@as("Namespace") namespace: option<metricNamespace>,
@as("MetricName") metricName: option<metricName>
}
type targetTrackingScalingPolicyConfiguration = {
@as("DisableScaleIn") disableScaleIn: disableScaleIn,
@as("ScaleInCooldown") scaleInCooldown: cooldown,
@as("ScaleOutCooldown") scaleOutCooldown: cooldown,
@as("CustomizedMetricSpecification") customizedMetricSpecification: customizedMetricSpecification,
@as("PredefinedMetricSpecification") predefinedMetricSpecification: predefinedMetricSpecification,
@as("TargetValue") targetValue: option<metricScale>
}
type scalingPolicy = {
@as("CreationTime") creationTime: option<timestampType>,
@as("Alarms") alarms: alarms,
@as("TargetTrackingScalingPolicyConfiguration") targetTrackingScalingPolicyConfiguration: targetTrackingScalingPolicyConfiguration,
@as("StepScalingPolicyConfiguration") stepScalingPolicyConfiguration: stepScalingPolicyConfiguration,
@as("PolicyType") policyType: option<policyType>,
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>,
@as("PolicyName") policyName: option<policyName>,
@as("PolicyARN") policyARN: option<resourceIdMaxLen1600>
}
type scalingPolicies = array<scalingPolicy>
type clientType;
@module("@aws-sdk/client-application-autoscaling") @new external createClient: unit => clientType = "ApplicationAutoScalingClient";
module DeregisterScalableTarget = {
  type t;
  type request = {
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>
}
  type response = unit
  @module("@aws-sdk/client-application-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DeregisterScalableTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteScheduledAction = {
  type t;
  type request = {
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("ScheduledActionName") scheduledActionName: option<resourceIdMaxLen1600>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>
}
  type response = unit
  @module("@aws-sdk/client-application-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DeleteScheduledActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteScalingPolicy = {
  type t;
  type request = {
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>,
@as("PolicyName") policyName: option<resourceIdMaxLen1600>
}
  type response = unit
  @module("@aws-sdk/client-application-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DeleteScalingPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterScalableTarget = {
  type t;
  type request = {
@as("SuspendedState") suspendedState: suspendedState,
@as("RoleARN") roleARN: resourceIdMaxLen1600,
@as("MaxCapacity") maxCapacity: resourceCapacity,
@as("MinCapacity") minCapacity: resourceCapacity,
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>
}
  type response = unit
  @module("@aws-sdk/client-application-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "RegisterScalableTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutScheduledAction = {
  type t;
  type request = {
@as("ScalableTargetAction") scalableTargetAction: scalableTargetAction,
@as("EndTime") endTime: timestampType,
@as("StartTime") startTime: timestampType,
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("ScheduledActionName") scheduledActionName: option<scheduledActionName>,
@as("Timezone") timezone: resourceIdMaxLen1600,
@as("Schedule") schedule: resourceIdMaxLen1600,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>
}
  type response = unit
  @module("@aws-sdk/client-application-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "PutScheduledActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingActivities = {
  type t;
  type request = {
@as("NextToken") nextToken: xmlString,
@as("MaxResults") maxResults: maxResults,
@as("ScalableDimension") scalableDimension: scalableDimension,
@as("ResourceId") resourceId: resourceIdMaxLen1600,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("ScalingActivities") scalingActivities: scalingActivities
}
  @module("@aws-sdk/client-application-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeScalingActivitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScheduledActions = {
  type t;
  type request = {
@as("NextToken") nextToken: xmlString,
@as("MaxResults") maxResults: maxResults,
@as("ScalableDimension") scalableDimension: scalableDimension,
@as("ResourceId") resourceId: resourceIdMaxLen1600,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>,
@as("ScheduledActionNames") scheduledActionNames: resourceIdsMaxLen1600
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("ScheduledActions") scheduledActions: scheduledActions
}
  @module("@aws-sdk/client-application-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeScheduledActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScalableTargets = {
  type t;
  type request = {
@as("NextToken") nextToken: xmlString,
@as("MaxResults") maxResults: maxResults,
@as("ScalableDimension") scalableDimension: scalableDimension,
@as("ResourceIds") resourceIds: resourceIdsMaxLen1600,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("ScalableTargets") scalableTargets: scalableTargets
}
  @module("@aws-sdk/client-application-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeScalableTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutScalingPolicy = {
  type t;
  type request = {
@as("TargetTrackingScalingPolicyConfiguration") targetTrackingScalingPolicyConfiguration: targetTrackingScalingPolicyConfiguration,
@as("StepScalingPolicyConfiguration") stepScalingPolicyConfiguration: stepScalingPolicyConfiguration,
@as("PolicyType") policyType: policyType,
@as("ScalableDimension") scalableDimension: option<scalableDimension>,
@as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>,
@as("PolicyName") policyName: option<policyName>
}
  type response = {
@as("Alarms") alarms: alarms,
@as("PolicyARN") policyARN: option<resourceIdMaxLen1600>
}
  @module("@aws-sdk/client-application-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "PutScalingPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingPolicies = {
  type t;
  type request = {
@as("NextToken") nextToken: xmlString,
@as("MaxResults") maxResults: maxResults,
@as("ScalableDimension") scalableDimension: scalableDimension,
@as("ResourceId") resourceId: resourceIdMaxLen1600,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespace>,
@as("PolicyNames") policyNames: resourceIdsMaxLen1600
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("ScalingPolicies") scalingPolicies: scalingPolicies
}
  @module("@aws-sdk/client-application-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeScalingPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
