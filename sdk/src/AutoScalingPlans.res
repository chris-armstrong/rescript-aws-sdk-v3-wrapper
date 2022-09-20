type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-autoscaling-plans") @new
external createClient: unit => awsServiceClient = "AutoScalingPlansClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type xmlStringMaxLen256 = string
type xmlStringMaxLen128 = string
type xmlString = string
type timestampType = Js.Date.t
type serviceNamespace = [
  | @as("dynamodb") #Dynamodb
  | @as("rds") #Rds
  | @as("ec2") #Ec2
  | @as("ecs") #Ecs
  | @as("autoscaling") #Autoscaling
]
type scheduledActionBufferTime = int
type scalingStatusCode = [
  | @as("Active") #Active
  | @as("PartiallyActive") #PartiallyActive
  | @as("Inactive") #Inactive
]
type scalingPolicyUpdateBehavior = [
  | @as("ReplaceExternalPolicies") #ReplaceExternalPolicies
  | @as("KeepExternalPolicies") #KeepExternalPolicies
]
type scalingPlanVersion = float
type scalingPlanStatusCode = [
  | @as("UpdateFailed") #UpdateFailed
  | @as("UpdateInProgress") #UpdateInProgress
  | @as("DeletionFailed") #DeletionFailed
  | @as("DeletionInProgress") #DeletionInProgress
  | @as("CreationFailed") #CreationFailed
  | @as("CreationInProgress") #CreationInProgress
  | @as("ActiveWithProblems") #ActiveWithProblems
  | @as("Active") #Active
]
type scalingPlanName = string
type scalingMetricType = [
  | @as("EC2SpotFleetRequestAverageNetworkOut") #EC2SpotFleetRequestAverageNetworkOut
  | @as("EC2SpotFleetRequestAverageNetworkIn") #EC2SpotFleetRequestAverageNetworkIn
  | @as("EC2SpotFleetRequestAverageCPUUtilization") #EC2SpotFleetRequestAverageCPUUtilization
  | @as("RDSReaderAverageDatabaseConnections") #RDSReaderAverageDatabaseConnections
  | @as("RDSReaderAverageCPUUtilization") #RDSReaderAverageCPUUtilization
  | @as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget
  | @as("ECSServiceAverageMemoryUtilization") #ECSServiceAverageMemoryUtilization
  | @as("ECSServiceAverageCPUUtilization") #ECSServiceAverageCPUUtilization
  | @as("DynamoDBWriteCapacityUtilization") #DynamoDBWriteCapacityUtilization
  | @as("DynamoDBReadCapacityUtilization") #DynamoDBReadCapacityUtilization
  | @as("ASGAverageNetworkOut") #ASGAverageNetworkOut
  | @as("ASGAverageNetworkIn") #ASGAverageNetworkIn
  | @as("ASGAverageCPUUtilization") #ASGAverageCPUUtilization
]
type scalableDimension = [
  | @as("dynamodb:index:WriteCapacityUnits") #Dynamodb_Index_WriteCapacityUnits
  | @as("dynamodb:index:ReadCapacityUnits") #Dynamodb_Index_ReadCapacityUnits
  | @as("dynamodb:table:WriteCapacityUnits") #Dynamodb_Table_WriteCapacityUnits
  | @as("dynamodb:table:ReadCapacityUnits") #Dynamodb_Table_ReadCapacityUnits
  | @as("rds:cluster:ReadReplicaCount") #Rds_Cluster_ReadReplicaCount
  | @as("ec2:spot-fleet-request:TargetCapacity") #Ec2_Spot_Fleet_Request_TargetCapacity
  | @as("ecs:service:DesiredCount") #Ecs_Service_DesiredCount
  | @as("autoscaling:autoScalingGroup:DesiredCapacity")
  #Autoscaling_AutoScalingGroup_DesiredCapacity
]
type resourceLabel = string
type resourceIdMaxLen1600 = string
type resourceCapacity = int
type predictiveScalingMode = [
  | @as("ForecastOnly") #ForecastOnly
  | @as("ForecastAndScale") #ForecastAndScale
]
type predictiveScalingMaxCapacityBehavior = [
  | @as("SetMaxCapacityAboveForecastCapacity") #SetMaxCapacityAboveForecastCapacity
  | @as("SetMaxCapacityToForecastCapacity") #SetMaxCapacityToForecastCapacity
  | @as("SetForecastCapacityToMaxCapacity") #SetForecastCapacityToMaxCapacity
]
type policyType = [@as("TargetTrackingScaling") #TargetTrackingScaling]
type policyName = string
type nextToken = string
type metricUnit = string
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
type maxResults = int
type loadMetricType = [
  | @as("ALBTargetGroupRequestCount") #ALBTargetGroupRequestCount
  | @as("ASGTotalNetworkOut") #ASGTotalNetworkOut
  | @as("ASGTotalNetworkIn") #ASGTotalNetworkIn
  | @as("ASGTotalCPUUtilization") #ASGTotalCPUUtilization
]
type forecastDataType = [
  | @as("ScheduledActionMaxCapacity") #ScheduledActionMaxCapacity
  | @as("ScheduledActionMinCapacity") #ScheduledActionMinCapacity
  | @as("LoadForecast") #LoadForecast
  | @as("CapacityForecast") #CapacityForecast
]
type errorMessage = string
type disableScaleIn = bool
type disableDynamicScaling = bool
type cooldown = int
type tagValues = array<xmlStringMaxLen256>
type scalingPlanNames = array<scalingPlanName>
@ocaml.doc("<p>Represents a predefined metric that can be used for dynamic scaling as part of a target
         tracking scaling policy.</p>")
type predefinedScalingMetricSpecification = {
  @ocaml.doc("<p>Identifies the resource associated with the metric type. You can't specify a resource
         label unless the metric type is <code>ALBRequestCountPerTarget</code> and there is a target
         group for an Application Load Balancer attached to the Auto Scaling group, Spot Fleet request, or
         ECS service.</p>
         <p>You create the resource label by appending the final portion of the load balancer ARN
         and the final portion of the target group ARN into a single value, separated by a forward
         slash (/). The format is
         app/<load-balancer-name>/<load-balancer-id>/targetgroup/<target-group-name>/<target-group-id>,
         where:</p>
         <ul>
            <li>
               <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
               the load balancer ARN</p>
            </li>
            <li>
               <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
               of the target group ARN.</p>
            </li>
         </ul>
         <p>This is an example:
         app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d.</p>
         <p>To find the ARN for an Application Load Balancer, use the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html\">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
         the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html\">DescribeTargetGroups</a> API operation.</p>")
  @as("ResourceLabel")
  resourceLabel: option<resourceLabel>,
  @ocaml.doc("<p>The metric type. The <code>ALBRequestCountPerTarget</code> metric type applies only to
         Auto Scaling groups, Spot Fleet requests, and ECS services.</p>")
  @as("PredefinedScalingMetricType")
  predefinedScalingMetricType: scalingMetricType,
}
@ocaml.doc("<p>Represents a predefined metric that can be used for predictive scaling.</p>
         <p>After creating your scaling plan, you can use the AWS Auto Scaling console to visualize
         forecasts for the specified metric. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-create-scaling-plan.html#gs-view-resource\">View
            Scaling Information for a Resource</a> in the
         <i>AWS Auto Scaling User Guide</i>.</p>")
type predefinedLoadMetricSpecification = {
  @ocaml.doc("<p>Identifies the resource associated with the metric type. You can't specify a resource
         label unless the metric type is <code>ALBTargetGroupRequestCount</code> and there is a
         target group for an Application Load Balancer attached to the Auto Scaling group.</p>
         <p>You create the resource label by appending the final portion of the load balancer ARN
         and the final portion of the target group ARN into a single value, separated by a forward
         slash (/). The format is
         app/<load-balancer-name>/<load-balancer-id>/targetgroup/<target-group-name>/<target-group-id>,
         where:</p>
         <ul>
            <li>
               <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
               the load balancer ARN</p>
            </li>
            <li>
               <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
               of the target group ARN.</p>
            </li>
         </ul>
         <p>This is an example:
         app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d.</p>
         <p>To find the ARN for an Application Load Balancer, use the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html\">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
         the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html\">DescribeTargetGroups</a> API operation.</p>")
  @as("ResourceLabel")
  resourceLabel: option<resourceLabel>,
  @ocaml.doc("<p>The metric type.</p>") @as("PredefinedLoadMetricType")
  predefinedLoadMetricType: loadMetricType,
}
@ocaml.doc("<p>Represents a dimension for a customized metric.</p>")
type metricDimension = {
  @ocaml.doc("<p>The value of the dimension.</p>") @as("Value") value: metricDimensionValue,
  @ocaml.doc("<p>The name of the dimension.</p>") @as("Name") name: metricDimensionName,
}
@ocaml.doc("<p>Represents a single value in the forecast data used for predictive scaling.</p>")
type datapoint = {
  @ocaml.doc("<p>The value of the data point.</p>") @as("Value") value: option<metricScale>,
  @ocaml.doc("<p>The time stamp for the data point in UTC format.</p>") @as("Timestamp")
  timestamp_: option<timestampType>,
}
@ocaml.doc("<p>Represents a tag.</p>")
type tagFilter = {
  @ocaml.doc("<p>The tag values (0 to 20).</p>") @as("Values") values: option<tagValues>,
  @ocaml.doc("<p>The tag key.</p>") @as("Key") key: option<xmlStringMaxLen128>,
}
type metricDimensions = array<metricDimension>
type datapoints = array<datapoint>
type tagFilters = array<tagFilter>
@ocaml.doc("<p>Represents a CloudWatch metric of your choosing that can be used for dynamic scaling as part
         of a target tracking scaling policy. </p>
         <p>To create your customized scaling metric specification:</p>
         <ul>
            <li>
               <p>Add values for each required parameter from CloudWatch. You can use an existing metric,
               or a new metric that you create. To use your own metric, you must first publish the
               metric to CloudWatch. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html\">Publish Custom
                  Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
            </li>
            <li>
               <p>Choose a metric that changes proportionally with capacity. The value of the metric
               should increase or decrease in inverse proportion to the number of capacity units.
               That is, the value of the metric should decrease when capacity increases. </p>
            </li>
         </ul>
         <p>For information about terminology, available metrics, or how to publish new metrics, see
            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html\">Amazon CloudWatch
            Concepts</a> in the <i>Amazon CloudWatch User Guide</i>. </p>")
type customizedScalingMetricSpecification = {
  @ocaml.doc("<p>The unit of the metric. </p>") @as("Unit") unit_: option<metricUnit>,
  @ocaml.doc("<p>The statistic of the metric.</p>") @as("Statistic") statistic: metricStatistic,
  @ocaml.doc("<p>The dimensions of the metric.</p>
         <p>Conditional: If you published your metric with dimensions, you must specify the same
         dimensions in your customized scaling metric specification.</p>")
  @as("Dimensions")
  dimensions: option<metricDimensions>,
  @ocaml.doc("<p>The namespace of the metric.</p>") @as("Namespace") namespace: metricNamespace,
  @ocaml.doc("<p>The name of the metric.</p>") @as("MetricName") metricName: metricName,
}
@ocaml.doc("<p>Represents a CloudWatch metric of your choosing that can be used for predictive scaling. </p>
         <p>For predictive scaling to work with a customized load metric specification, AWS Auto Scaling
         needs access to the <code>Sum</code> and <code>Average</code> statistics that CloudWatch computes
         from metric data.</p>
         <p>When you choose a load metric, make sure that the required <code>Sum</code> and
            <code>Average</code> statistics for your metric are available in CloudWatch and that they
         provide relevant data for predictive scaling. The <code>Sum</code> statistic must represent
         the total load on the resource, and the <code>Average</code> statistic must represent the
         average load per capacity unit of the resource. For example, there is a metric that counts
         the number of requests processed by your Auto Scaling group. If the <code>Sum</code> statistic
         represents the total request count processed by the group, then the <code>Average</code>
         statistic for the specified metric must represent the average request count processed by
         each instance of the group. </p>
         <p>If you publish your own metrics, you can aggregate the data points at a given interval
         and then publish the aggregated data points to CloudWatch. Before AWS Auto Scaling generates the
         forecast, it sums up all the metric data points that occurred within each hour to match the
         granularity period that is used in the forecast (60 minutes).</p>
         <p>For information about terminology, available metrics, or how to publish new metrics, see
            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html\">Amazon CloudWatch
            Concepts</a> in the <i>Amazon CloudWatch User Guide</i>. </p>
         <p>After creating your scaling plan, you can use the AWS Auto Scaling console to visualize
         forecasts for the specified metric. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-create-scaling-plan.html#gs-view-resource\">View
            Scaling Information for a Resource</a> in the
         <i>AWS Auto Scaling User Guide</i>.</p>")
type customizedLoadMetricSpecification = {
  @ocaml.doc("<p>The unit of the metric.</p>") @as("Unit") unit_: option<metricUnit>,
  @ocaml.doc("<p>The statistic of the metric. The only valid value is <code>Sum</code>.</p>")
  @as("Statistic")
  statistic: metricStatistic,
  @ocaml.doc("<p>The dimensions of the metric.</p>
         <p>Conditional: If you published your metric with dimensions, you must specify the same
         dimensions in your customized load metric specification.</p>")
  @as("Dimensions")
  dimensions: option<metricDimensions>,
  @ocaml.doc("<p>The namespace of the metric.</p>") @as("Namespace") namespace: metricNamespace,
  @ocaml.doc("<p>The name of the metric.</p>") @as("MetricName") metricName: metricName,
}
@ocaml.doc(
  "<p>Describes a target tracking configuration to use with AWS Auto Scaling. Used with <a>ScalingInstruction</a> and <a>ScalingPolicy</a>.</p>"
)
type targetTrackingConfiguration = {
  @ocaml.doc("<p>The estimated time, in seconds, until a newly launched instance can contribute to the
         CloudWatch metrics. This value is used only if the resource is an Auto Scaling group.</p>")
  @as("EstimatedInstanceWarmup")
  estimatedInstanceWarmup: option<cooldown>,
  @ocaml.doc("<p>The amount of time, in seconds, after a scale-in activity completes before another
         scale-in activity can start. This property is not used if the scalable resource is an Auto Scaling
         group.</p>
         <p>With the <i>scale-in cooldown period</i>, the intention is to scale in
         conservatively to protect your application’s availability, so scale-in activities are blocked
         until the cooldown period has expired. However, if another alarm triggers a scale-out activity
         during the scale-in cooldown period, Auto Scaling scales out the target immediately. In this case,
         the scale-in cooldown period stops and doesn't complete.</p>")
  @as("ScaleInCooldown")
  scaleInCooldown: option<cooldown>,
  @ocaml.doc("<p>The amount of time, in seconds, to wait for a previous scale-out activity to take
         effect. This property is not used if the scalable resource is an Auto Scaling
         group.</p>
         <p>With the <i>scale-out cooldown period</i>, the intention is to continuously
         (but not excessively) scale out. After Auto Scaling successfully scales out using a target
         tracking scaling policy, it starts to calculate the cooldown time. The scaling policy won't
         increase the desired capacity again unless either a larger scale out is triggered or the
         cooldown period ends.</p>")
  @as("ScaleOutCooldown")
  scaleOutCooldown: option<cooldown>,
  @ocaml.doc("<p>Indicates whether scale in by the target tracking scaling policy is disabled. If the
         value is <code>true</code>, scale in is disabled and the target tracking scaling policy
         doesn't remove capacity from the scalable resource. Otherwise, scale in is enabled and the
         target tracking scaling policy can remove capacity from the scalable resource. </p>
         <p>The default value is <code>false</code>.</p>")
  @as("DisableScaleIn")
  disableScaleIn: option<disableScaleIn>,
  @ocaml.doc("<p>The target value for the metric. Although this property accepts numbers of type Double,
         it won't accept values that are either too small or too large. Values must be in the range
         of -2^360 to 2^360.</p>")
  @as("TargetValue")
  targetValue: metricScale,
  @ocaml.doc("<p>A customized metric. You can specify either a predefined metric or a customized metric.
      </p>")
  @as("CustomizedScalingMetricSpecification")
  customizedScalingMetricSpecification: option<customizedScalingMetricSpecification>,
  @ocaml.doc("<p>A predefined metric. You can specify either a predefined metric or a customized
         metric.</p>")
  @as("PredefinedScalingMetricSpecification")
  predefinedScalingMetricSpecification: option<predefinedScalingMetricSpecification>,
}
@ocaml.doc("<p>Represents an application source.</p>")
type applicationSource = {
  @ocaml.doc("<p>A set of tags (up to 50).</p>") @as("TagFilters") tagFilters: option<tagFilters>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a AWS CloudFormation stack.</p>")
  @as("CloudFormationStackARN")
  cloudFormationStackARN: option<xmlString>,
}
type targetTrackingConfigurations = array<targetTrackingConfiguration>
@ocaml.doc("<p>Represents a scaling policy.</p>")
type scalingPolicy = {
  @ocaml.doc("<p>The target tracking scaling policy. Includes support for predefined or customized
         metrics.</p>")
  @as("TargetTrackingConfiguration")
  targetTrackingConfiguration: option<targetTrackingConfiguration>,
  @ocaml.doc("<p>The type of scaling policy.</p>") @as("PolicyType") policyType: policyType,
  @ocaml.doc("<p>The name of the scaling policy.</p>") @as("PolicyName") policyName: policyName,
}
type applicationSources = array<applicationSource>
type scalingPolicies = array<scalingPolicy>
@ocaml.doc("<p>Describes a scaling instruction for a scalable resource in a scaling plan. Each scaling
         instruction applies to one resource.</p>
         <p>AWS Auto Scaling creates target tracking scaling policies based on the scaling instructions.
         Target tracking scaling policies adjust the capacity of your scalable resource as required
         to maintain resource utilization at the target value that you specified. </p>
         <p>AWS Auto Scaling also configures predictive scaling for your Amazon EC2 Auto Scaling groups using a subset of
         parameters, including the load metric, the scaling metric, the target value for the scaling
         metric, the predictive scaling mode (forecast and scale or forecast only), and the desired
         behavior when the forecast capacity exceeds the maximum capacity of the resource. With
         predictive scaling, AWS Auto Scaling generates forecasts with traffic predictions for the two days
         ahead and schedules scaling actions that proactively add and remove resource capacity to
         match the forecast. </p>
         <important>
            <p>We recommend waiting a minimum of 24 hours after creating an Auto Scaling group to configure
            predictive scaling. At minimum, there must be 24 hours of historical data to generate a
            forecast. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-best-practices.html\">Best Practices for
               AWS Auto Scaling</a> in the <i>AWS Auto Scaling User Guide</i>.</p>
         </important>")
type scalingInstruction = {
  @ocaml.doc("<p>Controls whether dynamic scaling by AWS Auto Scaling is disabled. When dynamic scaling is
         enabled, AWS Auto Scaling creates target tracking scaling policies based on the specified target
         tracking configurations. </p>
         <p>The default is enabled (<code>false</code>). </p>")
  @as("DisableDynamicScaling")
  disableDynamicScaling: option<disableDynamicScaling>,
  @ocaml.doc("<p>Controls whether a resource's externally created scaling policies are kept or replaced. </p>
         <p>The default value is <code>KeepExternalPolicies</code>. If the parameter is set to
            <code>ReplaceExternalPolicies</code>, any scaling policies that are external to AWS Auto Scaling
         are deleted and new target tracking scaling policies created. </p>
         <p>Only valid when configuring dynamic scaling. </p>
         <p>Condition: The number of existing policies to be replaced must be less than or equal to
         50. If there are more than 50 policies to be replaced, AWS Auto Scaling keeps all existing policies
         and does not create new ones.</p>")
  @as("ScalingPolicyUpdateBehavior")
  scalingPolicyUpdateBehavior: option<scalingPolicyUpdateBehavior>,
  @ocaml.doc("<p>The predictive scaling mode. The default value is <code>ForecastAndScale</code>.
         Otherwise, AWS Auto Scaling forecasts capacity but does not create any scheduled scaling actions
         based on the capacity forecast. </p>")
  @as("PredictiveScalingMode")
  predictiveScalingMode: option<predictiveScalingMode>,
  @ocaml.doc("<p>The size of the capacity buffer to use when the forecast capacity is close to or exceeds
         the maximum capacity. The value is specified as a percentage relative to the forecast
         capacity. For example, if the buffer is 10, this means a 10 percent buffer, such that if
         the forecast capacity is 50, and the maximum capacity is 40, then the effective maximum
         capacity is 55.</p>
         <p>Only valid when configuring predictive scaling. Required if the <b>PredictiveScalingMaxCapacityBehavior</b> is set to
            <code>SetMaxCapacityAboveForecastCapacity</code>, and cannot be used otherwise.</p>
         <p>The range is 1-100.</p>")
  @as("PredictiveScalingMaxCapacityBuffer")
  predictiveScalingMaxCapacityBuffer: option<resourceCapacity>,
  @ocaml.doc("<p>Defines the behavior that should be applied if the forecast capacity approaches or
         exceeds the maximum capacity specified for the resource. The default value is
            <code>SetForecastCapacityToMaxCapacity</code>.</p>
         <p>The following are possible values:</p>
         <ul>
            <li>
               <p>
                  <code>SetForecastCapacityToMaxCapacity</code> - AWS Auto Scaling cannot scale resource
               capacity higher than the maximum capacity. The maximum capacity is enforced as a hard
               limit. </p>
            </li>
            <li>
               <p>
                  <code>SetMaxCapacityToForecastCapacity</code> - AWS Auto Scaling may scale resource
               capacity higher than the maximum capacity to equal but not exceed forecast
               capacity.</p>
            </li>
            <li>
               <p>
                  <code>SetMaxCapacityAboveForecastCapacity</code> - AWS Auto Scaling may scale resource
               capacity higher than the maximum capacity by a specified buffer value. The intention
               is to give the target tracking scaling policy extra capacity if unexpected traffic
               occurs. </p>
            </li>
         </ul>
         <p>Only valid when configuring predictive scaling.</p>")
  @as("PredictiveScalingMaxCapacityBehavior")
  predictiveScalingMaxCapacityBehavior: option<predictiveScalingMaxCapacityBehavior>,
  @ocaml.doc("<p>The amount of time, in seconds, to buffer the run time of scheduled scaling actions when
         scaling out. For example, if the forecast says to add capacity at 10:00 AM, and the buffer
         time is 5 minutes, then the run time of the corresponding scheduled scaling action will be
         9:55 AM. The intention is to give resources time to be provisioned. For example, it can
         take a few minutes to launch an EC2 instance. The actual amount of time required depends on
         several factors, such as the size of the instance and whether there are startup scripts to
         complete. </p>
         <p>The value must be less than the forecast interval duration of 3600 seconds (60 minutes).
         The default is 300 seconds. </p>
         <p>Only valid when configuring predictive scaling. </p>")
  @as("ScheduledActionBufferTime")
  scheduledActionBufferTime: option<scheduledActionBufferTime>,
  @ocaml.doc("<p>The customized load metric to use for predictive scaling. This parameter or a <b>PredefinedLoadMetricSpecification</b> is required when configuring
         predictive scaling, and cannot be used otherwise. </p>")
  @as("CustomizedLoadMetricSpecification")
  customizedLoadMetricSpecification: option<customizedLoadMetricSpecification>,
  @ocaml.doc("<p>The predefined load metric to use for predictive scaling. This parameter or a <b>CustomizedLoadMetricSpecification</b> is required when configuring
         predictive scaling, and cannot be used otherwise. </p>")
  @as("PredefinedLoadMetricSpecification")
  predefinedLoadMetricSpecification: option<predefinedLoadMetricSpecification>,
  @ocaml.doc("<p>The target tracking configurations (up to 10). Each of these structures must specify a
         unique scaling metric and a target value for the metric. </p>")
  @as("TargetTrackingConfigurations")
  targetTrackingConfigurations: targetTrackingConfigurations,
  @ocaml.doc("<p>The maximum capacity of the resource. The exception to this upper limit is if you
         specify a non-default setting for <b>PredictiveScalingMaxCapacityBehavior</b>. </p>")
  @as("MaxCapacity")
  maxCapacity: resourceCapacity,
  @ocaml.doc("<p>The minimum capacity of the resource. </p>") @as("MinCapacity")
  minCapacity: resourceCapacity,
  @ocaml.doc("<p>The scalable dimension associated with the resource.</p> 
         <ul>
            <li>
               <p>
                  <code>autoscaling:autoScalingGroup:DesiredCapacity</code> - The desired capacity of an Auto Scaling group.</p>
           </li>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet request.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
         </ul>")
  @as("ScalableDimension")
  scalableDimension: scalableDimension,
  @ocaml.doc("<p>The ID of the resource. This string consists of the resource type and unique
         identifier.</p> 
         <ul>
            <li>
               <p>Auto Scaling group - The resource type is <code>autoScalingGroup</code> and the unique identifier is the
               name of the Auto Scaling group. Example: <code>autoScalingGroup/my-asg</code>.</p>
           </li>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
         </ul>")
  @as("ResourceId")
  resourceId: resourceIdMaxLen1600,
  @ocaml.doc("<p>The namespace of the AWS service.</p>") @as("ServiceNamespace")
  serviceNamespace: serviceNamespace,
}
@ocaml.doc("<p>Represents a scalable resource.</p>")
type scalingPlanResource = {
  @ocaml.doc("<p>A simple message about the current scaling status of the resource.</p>")
  @as("ScalingStatusMessage")
  scalingStatusMessage: option<xmlString>,
  @ocaml.doc("<p>The scaling status of the resource.</p>
         <ul>
            <li>
               <p>
                  <code>Active</code> - The scaling configuration is active.</p>
            </li>
            <li>
               <p>
                  <code>Inactive</code> - The scaling configuration is not active because the
               scaling plan is being created or the scaling configuration could not be applied.
               Check the status message for more information.</p>
            </li>
            <li>
               <p>
                  <code>PartiallyActive</code> - The scaling configuration is partially active
               because the scaling plan is being created or deleted or the scaling configuration
               could not be fully applied. Check the status message for more information.</p>
            </li>
         </ul>")
  @as("ScalingStatusCode")
  scalingStatusCode: scalingStatusCode,
  @ocaml.doc("<p>The scaling policies.</p>") @as("ScalingPolicies")
  scalingPolicies: option<scalingPolicies>,
  @ocaml.doc("<p>The scalable dimension for the resource.</p> 
         <ul>
            <li>
               <p>
                  <code>autoscaling:autoScalingGroup:DesiredCapacity</code> - The desired capacity of an Auto Scaling group.</p>
           </li>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet request.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
         </ul>")
  @as("ScalableDimension")
  scalableDimension: scalableDimension,
  @ocaml.doc("<p>The ID of the resource. This string consists of the resource type and unique
         identifier.</p> 
         <ul>
            <li>
               <p>Auto Scaling group - The resource type is <code>autoScalingGroup</code> and the unique identifier is the
               name of the Auto Scaling group. Example: <code>autoScalingGroup/my-asg</code>.</p>
           </li>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
         </ul>")
  @as("ResourceId")
  resourceId: resourceIdMaxLen1600,
  @ocaml.doc("<p>The namespace of the AWS service.</p>") @as("ServiceNamespace")
  serviceNamespace: serviceNamespace,
  @ocaml.doc("<p>The version number of the scaling plan.</p>") @as("ScalingPlanVersion")
  scalingPlanVersion: scalingPlanVersion,
  @ocaml.doc("<p>The name of the scaling plan.</p>") @as("ScalingPlanName")
  scalingPlanName: scalingPlanName,
}
type scalingInstructions = array<scalingInstruction>
type scalingPlanResources = array<scalingPlanResource>
@ocaml.doc("<p>Represents a scaling plan.</p>")
type scalingPlan = {
  @ocaml.doc("<p>The Unix time stamp when the scaling plan was created.</p>") @as("CreationTime")
  creationTime: option<timestampType>,
  @ocaml.doc("<p>The Unix time stamp when the scaling plan entered the current status.</p>")
  @as("StatusStartTime")
  statusStartTime: option<timestampType>,
  @ocaml.doc("<p>A simple message about the current status of the scaling plan.</p>")
  @as("StatusMessage")
  statusMessage: option<xmlString>,
  @ocaml.doc("<p>The status of the scaling plan.</p>
         <ul>
            <li>
               <p>
                  <code>Active</code> - The scaling plan is active.</p>
            </li>
            <li>
               <p>
                  <code>ActiveWithProblems</code> - The scaling plan is active, but the scaling
               configuration for one or more resources could not be applied.</p>
            </li>
            <li>
               <p>
                  <code>CreationInProgress</code> - The scaling plan is being created.</p>
            </li>
            <li>
               <p>
                  <code>CreationFailed</code> - The scaling plan could not be created.</p>
            </li>
            <li>
               <p>
                  <code>DeletionInProgress</code> - The scaling plan is being deleted.</p>
            </li>
            <li>
               <p>
                  <code>DeletionFailed</code> - The scaling plan could not be deleted.</p>
            </li>
            <li>
               <p>
                  <code>UpdateInProgress</code> - The scaling plan is being updated.</p>
            </li>
            <li>
               <p>
                  <code>UpdateFailed</code> - The scaling plan could not be updated.</p>
            </li>
         </ul>")
  @as("StatusCode")
  statusCode: scalingPlanStatusCode,
  @ocaml.doc("<p>The scaling instructions.</p>") @as("ScalingInstructions")
  scalingInstructions: scalingInstructions,
  @ocaml.doc("<p>A CloudFormation stack or a set of tags. You can create one scaling plan per application
         source.</p>")
  @as("ApplicationSource")
  applicationSource: applicationSource,
  @ocaml.doc("<p>The version number of the scaling plan.</p>") @as("ScalingPlanVersion")
  scalingPlanVersion: scalingPlanVersion,
  @ocaml.doc("<p>The name of the scaling plan.</p>") @as("ScalingPlanName")
  scalingPlanName: scalingPlanName,
}
type scalingPlans = array<scalingPlan>
@ocaml.doc("<fullname>AWS Auto Scaling</fullname>

      
         <p>Use AWS Auto Scaling to create scaling plans for your applications to
         automatically scale your scalable AWS resources. </p>
         <p>
            <b>API Summary</b>
         </p>
         <p>You can use the AWS Auto Scaling service API to accomplish the following tasks:</p>
         <ul>
            <li>
               <p>Create and manage scaling plans</p>
            </li>
            <li>
               <p>Define target tracking scaling policies to dynamically scale your resources based
               on utilization</p>
            </li>
            <li>
               <p>Scale Amazon EC2 Auto Scaling groups using predictive scaling and dynamic scaling to scale your
               Amazon EC2 capacity faster</p>
            </li>
            <li>
               <p>Set minimum and maximum capacity limits</p>
            </li>
            <li>
               <p>Retrieve information on existing scaling plans</p>
            </li>
            <li>
               <p>Access current forecast data and historical forecast data for up to 56 days
               previous</p>
            </li>
         </ul>
      
         <p>To learn more about AWS Auto Scaling, including information about granting IAM users required
         permissions for AWS Auto Scaling actions, see the <a href=\"https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html\">AWS Auto Scaling User Guide</a>. </p>")
module DeleteScalingPlan = {
  type t
  type request = {
    @ocaml.doc("<p>The version number of the scaling plan. Currently, the only valid value is
            <code>1</code>.</p>")
    @as("ScalingPlanVersion")
    scalingPlanVersion: scalingPlanVersion,
    @ocaml.doc("<p>The name of the scaling plan.</p>") @as("ScalingPlanName")
    scalingPlanName: scalingPlanName,
  }
  type response = {.}
  @module("@aws-sdk/client-autoscaling-plans") @new
  external new: request => t = "DeleteScalingPlanCommand"
  let make = (~scalingPlanVersion, ~scalingPlanName, ()) =>
    new({scalingPlanVersion, scalingPlanName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetScalingPlanResourceForecastData = {
  type t
  type request = {
    @ocaml.doc("<p>The exclusive end time of the time range for the forecast data to get. The maximum time
         duration between the start and end time is seven days. </p>
         <p>Although this parameter can accept a date and time that is more than two days in the
         future, the availability of forecast data has limits. AWS Auto Scaling only issues forecasts for
         periods of two days in advance.</p>")
    @as("EndTime")
    endTime: timestampType,
    @ocaml.doc("<p>The inclusive start time of the time range for the forecast data to get. The date and
         time can be at most 56 days before the current date and time. </p>")
    @as("StartTime")
    startTime: timestampType,
    @ocaml.doc("<p>The type of forecast data to get.</p>
         <ul>
            <li>
               <p>
                  <code>LoadForecast</code>: The load metric forecast. </p>
            </li>
            <li>
               <p>
                  <code>CapacityForecast</code>: The capacity forecast. </p>
            </li>
            <li>
               <p>
                  <code>ScheduledActionMinCapacity</code>: The minimum capacity for each scheduled
               scaling action. This data is calculated as the larger of two values: the capacity
               forecast or the minimum capacity in the scaling instruction.</p>
            </li>
            <li>
               <p>
                  <code>ScheduledActionMaxCapacity</code>: The maximum capacity for each scheduled
               scaling action. The calculation used is determined by the predictive scaling maximum
               capacity behavior setting in the scaling instruction.</p>
            </li>
         </ul>")
    @as("ForecastDataType")
    forecastDataType: forecastDataType,
    @ocaml.doc("<p>The scalable dimension for the resource. The only valid value is
            <code>autoscaling:autoScalingGroup:DesiredCapacity</code>. </p>")
    @as("ScalableDimension")
    scalableDimension: scalableDimension,
    @ocaml.doc("<p>The ID of the resource. This string consists of a prefix (<code>autoScalingGroup</code>)
         followed by the name of a specified Auto Scaling group (<code>my-asg</code>). Example:
            <code>autoScalingGroup/my-asg</code>. </p>")
    @as("ResourceId")
    resourceId: xmlString,
    @ocaml.doc("<p>The namespace of the AWS service. The only valid value is <code>autoscaling</code>.
      </p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespace,
    @ocaml.doc("<p>The version number of the scaling plan. Currently, the only valid value is
            <code>1</code>.</p>")
    @as("ScalingPlanVersion")
    scalingPlanVersion: scalingPlanVersion,
    @ocaml.doc("<p>The name of the scaling plan.</p>") @as("ScalingPlanName")
    scalingPlanName: scalingPlanName,
  }
  type response = {
    @ocaml.doc("<p>The data points to return.</p>") @as("Datapoints") datapoints: datapoints,
  }
  @module("@aws-sdk/client-autoscaling-plans") @new
  external new: request => t = "GetScalingPlanResourceForecastDataCommand"
  let make = (
    ~endTime,
    ~startTime,
    ~forecastDataType,
    ~scalableDimension,
    ~resourceId,
    ~serviceNamespace,
    ~scalingPlanVersion,
    ~scalingPlanName,
    (),
  ) =>
    new({
      endTime,
      startTime,
      forecastDataType,
      scalableDimension,
      resourceId,
      serviceNamespace,
      scalingPlanVersion,
      scalingPlanName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateScalingPlan = {
  type t
  type request = {
    @ocaml.doc("<p>The scaling instructions.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html\">ScalingInstruction</a> in the <i>AWS Auto Scaling API Reference</i>.</p>")
    @as("ScalingInstructions")
    scalingInstructions: option<scalingInstructions>,
    @ocaml.doc("<p>A CloudFormation stack or set of tags.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ApplicationSource.html\">ApplicationSource</a> in the <i>AWS Auto Scaling API Reference</i>.</p>")
    @as("ApplicationSource")
    applicationSource: option<applicationSource>,
    @ocaml.doc("<p>The version number of the scaling plan. The only valid value is <code>1</code>.
         Currently, you cannot have multiple scaling plan versions.</p>")
    @as("ScalingPlanVersion")
    scalingPlanVersion: scalingPlanVersion,
    @ocaml.doc("<p>The name of the scaling plan.</p>") @as("ScalingPlanName")
    scalingPlanName: scalingPlanName,
  }
  type response = {.}
  @module("@aws-sdk/client-autoscaling-plans") @new
  external new: request => t = "UpdateScalingPlanCommand"
  let make = (
    ~scalingPlanVersion,
    ~scalingPlanName,
    ~scalingInstructions=?,
    ~applicationSource=?,
    (),
  ) => new({scalingInstructions, applicationSource, scalingPlanVersion, scalingPlanName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateScalingPlan = {
  type t
  type request = {
    @ocaml.doc("<p>The scaling instructions.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html\">ScalingInstruction</a> in the <i>AWS Auto Scaling API Reference</i>.</p>")
    @as("ScalingInstructions")
    scalingInstructions: scalingInstructions,
    @ocaml.doc("<p>A CloudFormation stack or set of tags. You can create one scaling plan per application
         source.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ApplicationSource.html\">ApplicationSource</a> in the <i>AWS Auto Scaling API Reference</i>.</p>")
    @as("ApplicationSource")
    applicationSource: applicationSource,
    @ocaml.doc("<p>The name of the scaling plan. Names cannot contain vertical bars, colons, or forward
         slashes.</p>")
    @as("ScalingPlanName")
    scalingPlanName: scalingPlanName,
  }
  type response = {
    @ocaml.doc("<p>The version number of the scaling plan. This value is always <code>1</code>. Currently,
         you cannot have multiple scaling plan versions.</p>")
    @as("ScalingPlanVersion")
    scalingPlanVersion: scalingPlanVersion,
  }
  @module("@aws-sdk/client-autoscaling-plans") @new
  external new: request => t = "CreateScalingPlanCommand"
  let make = (~scalingInstructions, ~applicationSource, ~scalingPlanName, ()) =>
    new({scalingInstructions, applicationSource, scalingPlanName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeScalingPlanResources = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of scalable resources to return. The value must be between
         1 and 50. The default value is 50.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The version number of the scaling plan. Currently, the only valid value is
            <code>1</code>.</p>")
    @as("ScalingPlanVersion")
    scalingPlanVersion: scalingPlanVersion,
    @ocaml.doc("<p>The name of the scaling plan.</p>") @as("ScalingPlanName")
    scalingPlanName: scalingPlanName,
  }
  type response = {
    @ocaml.doc("<p>The token required to get the next set of results. This value is <code>null</code> if
         there are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the scalable resources.</p>") @as("ScalingPlanResources")
    scalingPlanResources: option<scalingPlanResources>,
  }
  @module("@aws-sdk/client-autoscaling-plans") @new
  external new: request => t = "DescribeScalingPlanResourcesCommand"
  let make = (~scalingPlanVersion, ~scalingPlanName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, scalingPlanVersion, scalingPlanName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeScalingPlans = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of scalable resources to return. This value can be between
         1 and 50. The default value is 50.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The sources for the applications (up to 10). If you specify scaling plan names, you
         cannot specify application sources.</p>")
    @as("ApplicationSources")
    applicationSources: option<applicationSources>,
    @ocaml.doc("<p>The version number of the scaling plan. Currently, the only valid value is
            <code>1</code>.</p>
         <note>
            <p>If you specify a scaling plan version, you must also specify a scaling plan
            name.</p>
         </note>")
    @as("ScalingPlanVersion")
    scalingPlanVersion: option<scalingPlanVersion>,
    @ocaml.doc("<p>The names of the scaling plans (up to 10). If you specify application sources, you
         cannot specify scaling plan names.</p>")
    @as("ScalingPlanNames")
    scalingPlanNames: option<scalingPlanNames>,
  }
  type response = {
    @ocaml.doc("<p>The token required to get the next set of results. This value is <code>null</code> if
         there are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the scaling plans.</p>") @as("ScalingPlans")
    scalingPlans: option<scalingPlans>,
  }
  @module("@aws-sdk/client-autoscaling-plans") @new
  external new: request => t = "DescribeScalingPlansCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~applicationSources=?,
    ~scalingPlanVersion=?,
    ~scalingPlanNames=?,
    (),
  ) => new({nextToken, maxResults, applicationSources, scalingPlanVersion, scalingPlanNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
