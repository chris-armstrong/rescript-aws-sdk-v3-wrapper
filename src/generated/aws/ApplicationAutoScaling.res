type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-application-autoscaling") @new
external createClient: unit => awsServiceClient = "ApplicationAutoScalingClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type xmlString = string
type timestampType = Js.Date.t
type serviceNamespace = [
  | @as("kafka") #Kafka
  | @as("cassandra") #Cassandra
  | @as("lambda") #Lambda
  | @as("comprehend") #Comprehend
  | @as("custom-resource") #Custom_Resource
  | @as("sagemaker") #Sagemaker
  | @as("rds") #Rds
  | @as("dynamodb") #Dynamodb
  | @as("appstream") #Appstream
  | @as("ec2") #Ec2
  | @as("elasticmapreduce") #Elasticmapreduce
  | @as("ecs") #Ecs
]
type scheduledActionName = string
type scalingSuspended = bool
type scalingAdjustment = int
type scalingActivityStatusCode = [
  | @as("Failed") #Failed
  | @as("Unfulfilled") #Unfulfilled
  | @as("Overridden") #Overridden
  | @as("Successful") #Successful
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type scalableDimension = [
  | @as("kafka:broker-storage:VolumeSize") #Kafka_Broker_Storage_VolumeSize
  | @as("cassandra:table:WriteCapacityUnits") #Cassandra_Table_WriteCapacityUnits
  | @as("cassandra:table:ReadCapacityUnits") #Cassandra_Table_ReadCapacityUnits
  | @as("lambda:function:ProvisionedConcurrency") #Lambda_Function_ProvisionedConcurrency
  | @as("comprehend:entity-recognizer-endpoint:DesiredInferenceUnits")
  #Comprehend_Entity_Recognizer_Endpoint_DesiredInferenceUnits
  | @as("comprehend:document-classifier-endpoint:DesiredInferenceUnits")
  #Comprehend_Document_Classifier_Endpoint_DesiredInferenceUnits
  | @as("custom-resource:ResourceType:Property") #Custom_Resource_ResourceType_Property
  | @as("sagemaker:variant:DesiredInstanceCount") #Sagemaker_Variant_DesiredInstanceCount
  | @as("rds:cluster:ReadReplicaCount") #Rds_Cluster_ReadReplicaCount
  | @as("dynamodb:index:WriteCapacityUnits") #Dynamodb_Index_WriteCapacityUnits
  | @as("dynamodb:index:ReadCapacityUnits") #Dynamodb_Index_ReadCapacityUnits
  | @as("dynamodb:table:WriteCapacityUnits") #Dynamodb_Table_WriteCapacityUnits
  | @as("dynamodb:table:ReadCapacityUnits") #Dynamodb_Table_ReadCapacityUnits
  | @as("appstream:fleet:DesiredCapacity") #Appstream_Fleet_DesiredCapacity
  | @as("elasticmapreduce:instancegroup:InstanceCount")
  #Elasticmapreduce_Instancegroup_InstanceCount
  | @as("ec2:spot-fleet-request:TargetCapacity") #Ec2_Spot_Fleet_Request_TargetCapacity
  | @as("ecs:service:DesiredCount") #Ecs_Service_DesiredCount
]
type resourceLabel = string
type resourceIdMaxLen1600 = string
type resourceId = string
type resourceCapacity = int
type policyType = [
  | @as("TargetTrackingScaling") #TargetTrackingScaling
  | @as("StepScaling") #StepScaling
]
type policyName = string
type minAdjustmentMagnitude = int
type metricUnit = string
type metricType = [
  | @as("KafkaBrokerStorageUtilization") #KafkaBrokerStorageUtilization
  | @as("CassandraWriteCapacityUtilization") #CassandraWriteCapacityUtilization
  | @as("CassandraReadCapacityUtilization") #CassandraReadCapacityUtilization
  | @as("LambdaProvisionedConcurrencyUtilization") #LambdaProvisionedConcurrencyUtilization
  | @as("ComprehendInferenceUtilization") #ComprehendInferenceUtilization
  | @as("AppStreamAverageCapacityUtilization") #AppStreamAverageCapacityUtilization
  | @as("ECSServiceAverageMemoryUtilization") #ECSServiceAverageMemoryUtilization
  | @as("ECSServiceAverageCPUUtilization") #ECSServiceAverageCPUUtilization
  | @as("SageMakerVariantInvocationsPerInstance") #SageMakerVariantInvocationsPerInstance
  | @as("EC2SpotFleetRequestAverageNetworkOut") #EC2SpotFleetRequestAverageNetworkOut
  | @as("EC2SpotFleetRequestAverageNetworkIn") #EC2SpotFleetRequestAverageNetworkIn
  | @as("EC2SpotFleetRequestAverageCPUUtilization") #EC2SpotFleetRequestAverageCPUUtilization
  | @as("RDSReaderAverageDatabaseConnections") #RDSReaderAverageDatabaseConnections
  | @as("RDSReaderAverageCPUUtilization") #RDSReaderAverageCPUUtilization
  | @as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget
  | @as("DynamoDBWriteCapacityUtilization") #DynamoDBWriteCapacityUtilization
  | @as("DynamoDBReadCapacityUtilization") #DynamoDBReadCapacityUtilization
]
type metricStatistic = [
  | @as("Sum") #Sum
  | @as("SampleCount") #SampleCount
  | @as("Maximum") #Maximum
  | @as("Minimum") #Minimum
  | @as("Average") #Average
]
type metricScale = float
type metricNamespace = string
type metricName = string
type metricDimensionValue = string
type metricDimensionName = string
type metricAggregationType = [
  | @as("Maximum") #Maximum
  | @as("Minimum") #Minimum
  | @as("Average") #Average
]
type maxResults = int
type errorMessage = string
type disableScaleIn = bool
type cooldown = int
type adjustmentType = [
  | @as("ExactCapacity") #ExactCapacity
  | @as("PercentChangeInCapacity") #PercentChangeInCapacity
  | @as("ChangeInCapacity") #ChangeInCapacity
]
type suspendedState = {
  @as("ScheduledScalingSuspended") scheduledScalingSuspended: option<scalingSuspended>,
  @as("DynamicScalingOutSuspended") dynamicScalingOutSuspended: option<scalingSuspended>,
  @as("DynamicScalingInSuspended") dynamicScalingInSuspended: option<scalingSuspended>,
}
type stepAdjustment = {
  @as("ScalingAdjustment") scalingAdjustment: scalingAdjustment,
  @as("MetricIntervalUpperBound") metricIntervalUpperBound: option<metricScale>,
  @as("MetricIntervalLowerBound") metricIntervalLowerBound: option<metricScale>,
}
type scalingActivity = {
  @as("Details") details: option<xmlString>,
  @as("StatusMessage") statusMessage: option<xmlString>,
  @as("StatusCode") statusCode: scalingActivityStatusCode,
  @as("EndTime") endTime: option<timestampType>,
  @as("StartTime") startTime: timestampType,
  @as("Cause") cause: xmlString,
  @as("Description") description: xmlString,
  @as("ScalableDimension") scalableDimension: scalableDimension,
  @as("ResourceId") resourceId: resourceIdMaxLen1600,
  @as("ServiceNamespace") serviceNamespace: serviceNamespace,
  @as("ActivityId") activityId: resourceId,
}
type scalableTargetAction = {
  @as("MaxCapacity") maxCapacity: option<resourceCapacity>,
  @as("MinCapacity") minCapacity: option<resourceCapacity>,
}
type resourceIdsMaxLen1600 = array<resourceIdMaxLen1600>
type predefinedMetricSpecification = {
  @as("ResourceLabel") resourceLabel: option<resourceLabel>,
  @as("PredefinedMetricType") predefinedMetricType: metricType,
}
type metricDimension = {
  @as("Value") value: metricDimensionValue,
  @as("Name") name: metricDimensionName,
}
type alarm = {
  @as("AlarmARN") alarmARN: resourceId,
  @as("AlarmName") alarmName: resourceId,
}
type stepAdjustments = array<stepAdjustment>
type scheduledAction = {
  @as("CreationTime") creationTime: timestampType,
  @as("ScalableTargetAction") scalableTargetAction: option<scalableTargetAction>,
  @as("EndTime") endTime: option<timestampType>,
  @as("StartTime") startTime: option<timestampType>,
  @as("ScalableDimension") scalableDimension: option<scalableDimension>,
  @as("ResourceId") resourceId: resourceIdMaxLen1600,
  @as("Timezone") timezone: option<resourceIdMaxLen1600>,
  @as("Schedule") schedule: resourceIdMaxLen1600,
  @as("ServiceNamespace") serviceNamespace: serviceNamespace,
  @as("ScheduledActionARN") scheduledActionARN: resourceIdMaxLen1600,
  @as("ScheduledActionName") scheduledActionName: scheduledActionName,
}
type scalingActivities = array<scalingActivity>
type scalableTarget = {
  @as("SuspendedState") suspendedState: option<suspendedState>,
  @as("CreationTime") creationTime: timestampType,
  @as("RoleARN") roleARN: resourceIdMaxLen1600,
  @as("MaxCapacity") maxCapacity: resourceCapacity,
  @as("MinCapacity") minCapacity: resourceCapacity,
  @as("ScalableDimension") scalableDimension: scalableDimension,
  @as("ResourceId") resourceId: resourceIdMaxLen1600,
  @as("ServiceNamespace") serviceNamespace: serviceNamespace,
}
type metricDimensions = array<metricDimension>
type alarms = array<alarm>
type stepScalingPolicyConfiguration = {
  @as("MetricAggregationType") metricAggregationType: option<metricAggregationType>,
  @as("Cooldown") cooldown: option<cooldown>,
  @as("MinAdjustmentMagnitude") minAdjustmentMagnitude: option<minAdjustmentMagnitude>,
  @as("StepAdjustments") stepAdjustments: option<stepAdjustments>,
  @as("AdjustmentType") adjustmentType: option<adjustmentType>,
}
type scheduledActions = array<scheduledAction>
type scalableTargets = array<scalableTarget>
type customizedMetricSpecification = {
  @as("Unit") unit_: option<metricUnit>,
  @as("Statistic") statistic: metricStatistic,
  @as("Dimensions") dimensions: option<metricDimensions>,
  @as("Namespace") namespace: metricNamespace,
  @as("MetricName") metricName: metricName,
}
type targetTrackingScalingPolicyConfiguration = {
  @as("DisableScaleIn") disableScaleIn: option<disableScaleIn>,
  @as("ScaleInCooldown") scaleInCooldown: option<cooldown>,
  @as("ScaleOutCooldown") scaleOutCooldown: option<cooldown>,
  @as("CustomizedMetricSpecification")
  customizedMetricSpecification: option<customizedMetricSpecification>,
  @as("PredefinedMetricSpecification")
  predefinedMetricSpecification: option<predefinedMetricSpecification>,
  @as("TargetValue") targetValue: metricScale,
}
type scalingPolicy = {
  @as("CreationTime") creationTime: timestampType,
  @as("Alarms") alarms: option<alarms>,
  @as("TargetTrackingScalingPolicyConfiguration")
  targetTrackingScalingPolicyConfiguration: option<targetTrackingScalingPolicyConfiguration>,
  @as("StepScalingPolicyConfiguration")
  stepScalingPolicyConfiguration: option<stepScalingPolicyConfiguration>,
  @as("PolicyType") policyType: policyType,
  @as("ScalableDimension") scalableDimension: scalableDimension,
  @as("ResourceId") resourceId: resourceIdMaxLen1600,
  @as("ServiceNamespace") serviceNamespace: serviceNamespace,
  @as("PolicyName") policyName: policyName,
  @as("PolicyARN") policyARN: resourceIdMaxLen1600,
}
type scalingPolicies = array<scalingPolicy>

module DeregisterScalableTarget = {
  type t
  type request = {
    @as("ScalableDimension") scalableDimension: scalableDimension,
    @as("ResourceId") resourceId: resourceIdMaxLen1600,
    @as("ServiceNamespace") serviceNamespace: serviceNamespace,
  }
  type response = unit
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DeregisterScalableTargetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteScheduledAction = {
  type t
  type request = {
    @as("ScalableDimension") scalableDimension: scalableDimension,
    @as("ResourceId") resourceId: resourceIdMaxLen1600,
    @as("ScheduledActionName") scheduledActionName: resourceIdMaxLen1600,
    @as("ServiceNamespace") serviceNamespace: serviceNamespace,
  }
  type response = unit
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DeleteScheduledActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteScalingPolicy = {
  type t
  type request = {
    @as("ScalableDimension") scalableDimension: scalableDimension,
    @as("ResourceId") resourceId: resourceIdMaxLen1600,
    @as("ServiceNamespace") serviceNamespace: serviceNamespace,
    @as("PolicyName") policyName: resourceIdMaxLen1600,
  }
  type response = unit
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DeleteScalingPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterScalableTarget = {
  type t
  type request = {
    @as("SuspendedState") suspendedState: option<suspendedState>,
    @as("RoleARN") roleARN: option<resourceIdMaxLen1600>,
    @as("MaxCapacity") maxCapacity: option<resourceCapacity>,
    @as("MinCapacity") minCapacity: option<resourceCapacity>,
    @as("ScalableDimension") scalableDimension: scalableDimension,
    @as("ResourceId") resourceId: resourceIdMaxLen1600,
    @as("ServiceNamespace") serviceNamespace: serviceNamespace,
  }
  type response = unit
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "RegisterScalableTargetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutScheduledAction = {
  type t
  type request = {
    @as("ScalableTargetAction") scalableTargetAction: option<scalableTargetAction>,
    @as("EndTime") endTime: option<timestampType>,
    @as("StartTime") startTime: option<timestampType>,
    @as("ScalableDimension") scalableDimension: scalableDimension,
    @as("ResourceId") resourceId: resourceIdMaxLen1600,
    @as("ScheduledActionName") scheduledActionName: scheduledActionName,
    @as("Timezone") timezone: option<resourceIdMaxLen1600>,
    @as("Schedule") schedule: option<resourceIdMaxLen1600>,
    @as("ServiceNamespace") serviceNamespace: serviceNamespace,
  }
  type response = unit
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "PutScheduledActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScalingActivities = {
  type t
  type request = {
    @as("NextToken") nextToken: option<xmlString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ScalableDimension") scalableDimension: option<scalableDimension>,
    @as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
    @as("ServiceNamespace") serviceNamespace: serviceNamespace,
  }
  type response = {
    @as("NextToken") nextToken: option<xmlString>,
    @as("ScalingActivities") scalingActivities: option<scalingActivities>,
  }
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DescribeScalingActivitiesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScheduledActions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<xmlString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ScalableDimension") scalableDimension: option<scalableDimension>,
    @as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
    @as("ServiceNamespace") serviceNamespace: serviceNamespace,
    @as("ScheduledActionNames") scheduledActionNames: option<resourceIdsMaxLen1600>,
  }
  type response = {
    @as("NextToken") nextToken: option<xmlString>,
    @as("ScheduledActions") scheduledActions: option<scheduledActions>,
  }
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DescribeScheduledActionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScalableTargets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<xmlString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ScalableDimension") scalableDimension: option<scalableDimension>,
    @as("ResourceIds") resourceIds: option<resourceIdsMaxLen1600>,
    @as("ServiceNamespace") serviceNamespace: serviceNamespace,
  }
  type response = {
    @as("NextToken") nextToken: option<xmlString>,
    @as("ScalableTargets") scalableTargets: option<scalableTargets>,
  }
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DescribeScalableTargetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutScalingPolicy = {
  type t
  type request = {
    @as("TargetTrackingScalingPolicyConfiguration")
    targetTrackingScalingPolicyConfiguration: option<targetTrackingScalingPolicyConfiguration>,
    @as("StepScalingPolicyConfiguration")
    stepScalingPolicyConfiguration: option<stepScalingPolicyConfiguration>,
    @as("PolicyType") policyType: option<policyType>,
    @as("ScalableDimension") scalableDimension: scalableDimension,
    @as("ResourceId") resourceId: resourceIdMaxLen1600,
    @as("ServiceNamespace") serviceNamespace: serviceNamespace,
    @as("PolicyName") policyName: policyName,
  }
  type response = {
    @as("Alarms") alarms: option<alarms>,
    @as("PolicyARN") policyARN: resourceIdMaxLen1600,
  }
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "PutScalingPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScalingPolicies = {
  type t
  type request = {
    @as("NextToken") nextToken: option<xmlString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ScalableDimension") scalableDimension: option<scalableDimension>,
    @as("ResourceId") resourceId: option<resourceIdMaxLen1600>,
    @as("ServiceNamespace") serviceNamespace: serviceNamespace,
    @as("PolicyNames") policyNames: option<resourceIdsMaxLen1600>,
  }
  type response = {
    @as("NextToken") nextToken: option<xmlString>,
    @as("ScalingPolicies") scalingPolicies: option<scalingPolicies>,
  }
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DescribeScalingPoliciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
