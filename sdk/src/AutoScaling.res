type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-autoscaling") @new
external createClient: unit => awsServiceClient = "AutoScalingClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type xmlStringUserData = string
type xmlStringMaxLen64 = string
type xmlStringMaxLen511 = string
type xmlStringMaxLen32 = string
type xmlStringMaxLen255 = string
type xmlStringMaxLen2047 = string
type xmlStringMaxLen19 = string
type xmlStringMaxLen1600 = string
type xmlStringMaxLen1023 = string
type xmlString = string
type warmPoolStatus = [@as("PendingDelete") #PendingDelete]
type warmPoolState = [@as("Running") #Running | @as("Stopped") #Stopped]
type warmPoolSize = int
type warmPoolMinSize = int
type timestampType = Js.Date.t
type tagValue = string
type tagKey = string
type spotPrice = string
type spotInstancePools = int
type shouldRespectGracePeriod = bool
type shouldDecrementDesiredCapacity = bool
type scalingPolicyEnabled = bool
type scalingActivityStatusCode = [
  | @as("Cancelled") #Cancelled
  | @as("Failed") #Failed
  | @as("Successful") #Successful
  | @as("WaitingForInstanceWarmup") #WaitingForInstanceWarmup
  | @as("MidLifecycleAction") #MidLifecycleAction
  | @as("WaitingForELBConnectionDraining") #WaitingForELBConnectionDraining
  | @as("InProgress") #InProgress
  | @as("PreInService") #PreInService
  | @as("WaitingForInstanceId") #WaitingForInstanceId
  | @as("WaitingForSpotInstanceId") #WaitingForSpotInstanceId
  | @as("WaitingForSpotInstanceRequestId") #WaitingForSpotInstanceRequestId
  | @as("PendingSpotBidPlacement") #PendingSpotBidPlacement
]
type resourceName = string
type refreshStrategy = [@as("Rolling") #Rolling]
type refreshInstanceWarmup = int
type protectedFromScaleIn = bool
type propagateAtLaunch = bool
type progress = int
type predictiveScalingSchedulingBufferTime = int
type predictiveScalingMode = [
  | @as("ForecastOnly") #ForecastOnly
  | @as("ForecastAndScale") #ForecastAndScale
]
type predictiveScalingMaxCapacityBuffer = int
type predictiveScalingMaxCapacityBreachBehavior = [
  | @as("IncreaseMaxCapacity") #IncreaseMaxCapacity
  | @as("HonorMaxCapacity") #HonorMaxCapacity
]
type predefinedScalingMetricType = [
  | @as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget
  | @as("ASGAverageNetworkOut") #ASGAverageNetworkOut
  | @as("ASGAverageNetworkIn") #ASGAverageNetworkIn
  | @as("ASGAverageCPUUtilization") #ASGAverageCPUUtilization
]
type predefinedMetricPairType = [
  | @as("ALBRequestCount") #ALBRequestCount
  | @as("ASGNetworkOut") #ASGNetworkOut
  | @as("ASGNetworkIn") #ASGNetworkIn
  | @as("ASGCPUUtilization") #ASGCPUUtilization
]
type predefinedLoadMetricType = [
  | @as("ALBTargetGroupRequestCount") #ALBTargetGroupRequestCount
  | @as("ASGTotalNetworkOut") #ASGTotalNetworkOut
  | @as("ASGTotalNetworkIn") #ASGTotalNetworkIn
  | @as("ASGTotalCPUUtilization") #ASGTotalCPUUtilization
]
type policyIncrement = int
type onDemandPercentageAboveBaseCapacity = int
type onDemandBaseCapacity = int
type numberOfLaunchConfigurations = int
type numberOfAutoScalingGroups = int
type notificationTargetResourceName = string
type nonZeroIntPercent = int
type noDevice = bool
type monitoringEnabled = bool
type mixedInstanceSpotPrice = string
type minAdjustmentStep = int
type minAdjustmentMagnitude = int
type metricUnit = string
type metricType = [
  | @as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget
  | @as("ASGAverageNetworkOut") #ASGAverageNetworkOut
  | @as("ASGAverageNetworkIn") #ASGAverageNetworkIn
  | @as("ASGAverageCPUUtilization") #ASGAverageCPUUtilization
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
type maxRecords = int
type maxNumberOfLaunchConfigurations = int
type maxNumberOfAutoScalingGroups = int
type maxInstanceLifetime = int
type maxGroupPreparedCapacity = int
type lifecycleTransition = string
type lifecycleState = [
  | @as("Warmed:Running") #Warmed_Running
  | @as("Warmed:Stopped") #Warmed_Stopped
  | @as("Warmed:Terminated") #Warmed_Terminated
  | @as("Warmed:Terminating:Proceed") #Warmed_Terminating_Proceed
  | @as("Warmed:Terminating:Wait") #Warmed_Terminating_Wait
  | @as("Warmed:Terminating") #Warmed_Terminating
  | @as("Warmed:Pending:Proceed") #Warmed_Pending_Proceed
  | @as("Warmed:Pending:Wait") #Warmed_Pending_Wait
  | @as("Warmed:Pending") #Warmed_Pending
  | @as("Standby") #Standby
  | @as("EnteringStandby") #EnteringStandby
  | @as("Detached") #Detached
  | @as("Detaching") #Detaching
  | @as("Terminated") #Terminated
  | @as("Terminating:Proceed") #Terminating_Proceed
  | @as("Terminating:Wait") #Terminating_Wait
  | @as("Terminating") #Terminating
  | @as("InService") #InService
  | @as("Quarantined") #Quarantined
  | @as("Pending:Proceed") #Pending_Proceed
  | @as("Pending:Wait") #Pending_Wait
  | @as("Pending") #Pending
]
type lifecycleActionToken = string
type lifecycleActionResult = string
type launchTemplateName = string
type intPercent = int
type instancesToUpdate = int
type instanceRefreshStatus = [
  | @as("Cancelled") #Cancelled
  | @as("Cancelling") #Cancelling
  | @as("Failed") #Failed
  | @as("Successful") #Successful
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type instanceProtected = bool
type instanceMetadataHttpTokensState = [@as("required") #Required | @as("optional") #Optional]
type instanceMetadataHttpPutResponseHopLimit = int
type instanceMetadataEndpointState = [@as("enabled") #Enabled | @as("disabled") #Disabled]
type includeDeletedGroups = bool
type honorCooldown = bool
type heartbeatTimeout = int
type healthCheckGracePeriod = int
type globalTimeout = int
type forceDelete = bool
type estimatedInstanceWarmup = int
type ebsOptimized = bool
type disableScaleIn = bool
type cooldown = int
type checkpointDelay = int
type capacityRebalanceEnabled = bool
type blockDeviceEbsVolumeType = string
type blockDeviceEbsVolumeSize = int
type blockDeviceEbsThroughput = int
type blockDeviceEbsIops = int
type blockDeviceEbsEncrypted = bool
type blockDeviceEbsDeleteOnTermination = bool
type autoScalingGroupState = string
type autoScalingGroupPredictedCapacity = int
type autoScalingGroupMinSize = int
type autoScalingGroupMaxSize = int
type autoScalingGroupDesiredCapacity = int
type associatePublicIpAddress = bool
type asciiStringMaxLen255 = string
@ocaml.doc("<p>Describes a warm pool configuration. </p>")
type warmPoolConfiguration = {
  @ocaml.doc("<p>The status of a warm pool that is marked for deletion.</p>") @as("Status")
  status: option<warmPoolStatus>,
  @ocaml.doc("<p>The instance state to transition to after the lifecycle actions are complete.</p>")
  @as("PoolState")
  poolState: option<warmPoolState>,
  @ocaml.doc("<p>The minimum number of instances to maintain in the warm pool.</p>") @as("MinSize")
  minSize: option<warmPoolMinSize>,
  @ocaml.doc("<p>The maximum number of instances that are allowed to be in the warm pool or in any
            state except <code>Terminated</code> for the Auto Scaling group.</p>")
  @as("MaxGroupPreparedCapacity")
  maxGroupPreparedCapacity: option<maxGroupPreparedCapacity>,
}
type values = array<xmlString>
type terminationPolicies = array<xmlStringMaxLen1600>
type targetGroupARNs = array<xmlStringMaxLen511>
@ocaml.doc("<p>Describes a tag for an Auto Scaling group.</p>")
type tagDescription = {
  @ocaml.doc("<p>Determines whether the tag is added to new instances as they are launched in the
            group.</p>")
  @as("PropagateAtLaunch")
  propagateAtLaunch: option<propagateAtLaunch>,
  @ocaml.doc("<p>The tag value.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>The tag key.</p>") @as("Key") key: option<tagKey>,
  @ocaml.doc("<p>The type of resource. The only supported value is
            <code>auto-scaling-group</code>.</p>")
  @as("ResourceType")
  resourceType: option<xmlString>,
  @ocaml.doc("<p>The name of the group.</p>") @as("ResourceId") resourceId: option<xmlString>,
}
@ocaml.doc("<p>Describes a tag for an Auto Scaling group.</p>")
type tag = {
  @ocaml.doc("<p>Determines whether the tag is added to new instances as they are launched in the
            group.</p>")
  @as("PropagateAtLaunch")
  propagateAtLaunch: option<propagateAtLaunch>,
  @ocaml.doc("<p>The tag value.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>The tag key.</p>") @as("Key") key: tagKey,
  @ocaml.doc("<p>The type of resource. The only supported value is
            <code>auto-scaling-group</code>.</p>")
  @as("ResourceType")
  resourceType: option<xmlString>,
  @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("ResourceId")
  resourceId: option<xmlString>,
}
@ocaml.doc("<p>Describes an auto scaling process that has been suspended.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types\">Scaling processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
type suspendedProcess = {
  @ocaml.doc("<p>The reason that the process was suspended.</p>") @as("SuspensionReason")
  suspensionReason: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The name of the suspended process.</p>") @as("ProcessName")
  processName: option<xmlStringMaxLen255>,
}
@ocaml.doc("<p>Describes information used to create a step adjustment for a step scaling
            policy.</p>
        <p>For the following examples, suppose that you have an alarm with a breach threshold of
            50:</p>
        <ul>
            <li>
                <p>To trigger the adjustment when the metric is greater than or equal to 50 and
                    less than 60, specify a lower bound of 0 and an upper bound of 10.</p>
            </li>
            <li>
                <p>To trigger the adjustment when the metric is greater than 40 and less than or
                    equal to 50, specify a lower bound of -10 and an upper bound of 0.</p>
            </li>
         </ul>
        <p>There are a few rules for the step adjustments for your step policy:</p>
        <ul>
            <li>
                <p>The ranges of your step adjustments can't overlap or have a gap.</p>
            </li>
            <li>
                <p>At most, one step adjustment can have a null lower bound. If one step
                    adjustment has a negative lower bound, then there must be a step adjustment with
                    a null lower bound.</p>
            </li>
            <li>
                <p>At most, one step adjustment can have a null upper bound. If one step
                    adjustment has a positive upper bound, then there must be a step adjustment with
                    a null upper bound.</p>
            </li>
            <li>
                <p>The upper and lower bound can't be null in the same step adjustment.</p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-steps\">Step
                adjustments</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
type stepAdjustment = {
  @ocaml.doc("<p>The amount by which to scale, based on the specified adjustment type. A positive value
            adds to the current capacity while a negative number removes from the current
            capacity.</p>")
  @as("ScalingAdjustment")
  scalingAdjustment: policyIncrement,
  @ocaml.doc("<p>The upper bound for the difference between the alarm threshold and the CloudWatch metric. If
            the metric value is above the breach threshold, the upper bound is exclusive (the metric
            must be less than the threshold plus the upper bound). Otherwise, it is inclusive (the
            metric must be less than or equal to the threshold plus the upper bound). A null value
            indicates positive infinity.</p>
        <p>The upper bound must be greater than the lower bound.</p>")
  @as("MetricIntervalUpperBound")
  metricIntervalUpperBound: option<metricScale>,
  @ocaml.doc("<p>The lower bound for the difference between the alarm threshold and the CloudWatch metric. If
            the metric value is above the breach threshold, the lower bound is inclusive (the metric
            must be greater than or equal to the threshold plus the lower bound). Otherwise, it is
            exclusive (the metric must be greater than the threshold plus the lower bound). A null
            value indicates negative infinity.</p>")
  @as("MetricIntervalLowerBound")
  metricIntervalLowerBound: option<metricScale>,
}
type securityGroups = array<xmlString>
@ocaml.doc(
  "<p>Describes information used for one or more scheduled scaling action updates in a <a>BatchPutScheduledUpdateGroupAction</a> operation.</p>"
)
type scheduledUpdateGroupActionRequest = {
  @ocaml.doc("<p>Specifies the time zone for a cron expression. If a time zone is not provided, UTC is
            used by default. </p>
        <p>Valid values are the canonical names of the IANA time zones, derived from the IANA
            Time Zone Database (such as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For
            more information, see <a href=\"https://en.wikipedia.org/wiki/List_of_tz_database_time_zones\">https://en.wikipedia.org/wiki/List_of_tz_database_time_zones</a>.</p>")
  @as("TimeZone")
  timeZone: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
            action runs and the capacity it attempts to maintain.</p>")
  @as("DesiredCapacity")
  desiredCapacity: option<autoScalingGroupDesiredCapacity>,
  @ocaml.doc("<p>The maximum size of the Auto Scaling group.</p>") @as("MaxSize")
  maxSize: option<autoScalingGroupMaxSize>,
  @ocaml.doc("<p>The minimum size of the Auto Scaling group.</p>") @as("MinSize")
  minSize: option<autoScalingGroupMinSize>,
  @ocaml.doc("<p>The recurring schedule for the action, in Unix cron syntax format. This format
            consists of five fields separated by white spaces: [Minute] [Hour] [Day_of_Month]
            [Month_of_Year] [Day_of_Week]. The value must be in quotes (for example, <code>\"30 0 1
                1,6,12 *\"</code>). For more information about this format, see <a href=\"http://crontab.org\">Crontab</a>.</p>
        <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
                <code>Recurrence</code>, they form the boundaries of when the recurring action
            starts and stops.</p>
        <p>Cron expressions use Universal Coordinated Time (UTC) by default.</p>")
  @as("Recurrence")
  recurrence: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The date and time for the recurring schedule to end, in UTC.</p>") @as("EndTime")
  endTime: option<timestampType>,
  @ocaml.doc("<p>The date and time for the action to start, in YYYY-MM-DDThh:mm:ssZ format in UTC/GMT
            only and in quotes (for example, <code>\"2019-06-01T00:00:00Z\"</code>).</p>
        <p>If you specify <code>Recurrence</code> and <code>StartTime</code>, Amazon EC2 Auto Scaling performs
            the action at this time, and then performs the action based on the specified
            recurrence.</p>
        <p>If you try to schedule the action in the past, Amazon EC2 Auto Scaling returns an error
            message.</p>")
  @as("StartTime")
  startTime: option<timestampType>,
  @ocaml.doc("<p>The name of the scaling action.</p>") @as("ScheduledActionName")
  scheduledActionName: xmlStringMaxLen255,
}
@ocaml.doc("<p>Describes a scheduled scaling
            action.</p>")
type scheduledUpdateGroupAction = {
  @ocaml.doc("<p>The time zone for the cron expression.</p>") @as("TimeZone")
  timeZone: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
            action runs and the capacity it attempts to maintain.</p>")
  @as("DesiredCapacity")
  desiredCapacity: option<autoScalingGroupDesiredCapacity>,
  @ocaml.doc("<p>The maximum size of the Auto Scaling group.</p>") @as("MaxSize")
  maxSize: option<autoScalingGroupMaxSize>,
  @ocaml.doc("<p>The minimum size of the Auto Scaling group.</p>") @as("MinSize")
  minSize: option<autoScalingGroupMinSize>,
  @ocaml.doc("<p>The recurring schedule for the action, in Unix cron syntax format.</p>
        <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
                <code>Recurrence</code>, they form the boundaries of when the recurring action
            starts and stops.</p>")
  @as("Recurrence")
  recurrence: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The date and time in UTC for the recurring schedule to end. For example,
                <code>\"2019-06-01T00:00:00Z\"</code>.
            </p>")
  @as("EndTime")
  endTime: option<timestampType>,
  @ocaml.doc("<p>The date and time in UTC for this action to start. For example,
                <code>\"2019-06-01T00:00:00Z\"</code>.
            </p>")
  @as("StartTime")
  startTime: option<timestampType>,
  @ocaml.doc("<p>This parameter is no longer used.</p>") @as("Time") time: option<timestampType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the scheduled action.</p>")
  @as("ScheduledActionARN")
  scheduledActionARN: option<resourceName>,
  @ocaml.doc("<p>The name of the scheduled action.</p>") @as("ScheduledActionName")
  scheduledActionName: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
  autoScalingGroupName: option<xmlStringMaxLen255>,
}
type scheduledActionNames = array<xmlStringMaxLen255>
@ocaml.doc("<p>Describes a process type.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types\">Scaling processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
type processType = {
  @ocaml.doc("<p>One of the following processes:</p>
        <ul>
            <li>
                <p>
                    <code>Launch</code>
                </p>
            </li>
            <li>
                <p>
                    <code>Terminate</code>
                </p>
            </li>
            <li>
                <p>
                    <code>AddToLoadBalancer</code>
                </p>
            </li>
            <li>
                <p>
                    <code>AlarmNotification</code>
                </p>
            </li>
            <li>
                <p>
                    <code>AZRebalance</code>
                </p>
            </li>
            <li>
                <p>
                    <code>HealthCheck</code>
                </p>
            </li>
            <li>
                <p>
                    <code>InstanceRefresh</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ReplaceUnhealthy</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ScheduledActions</code>
                </p>
            </li>
         </ul>")
  @as("ProcessName")
  processName: xmlStringMaxLen255,
}
type processNames = array<xmlStringMaxLen255>
@ocaml.doc("<p>Describes a scaling metric for a predictive scaling policy.</p>
        <p>When returned in the output of <code>DescribePolicies</code>, it indicates that a
            predictive scaling policy uses individually specified load and scaling metrics instead
            of a metric pair.</p>")
type predictiveScalingPredefinedScalingMetric = {
  @ocaml.doc("<p>A label that uniquely identifies a specific Application Load Balancer target 
            group from which to determine the request count served by your Auto Scaling group. You can't specify a resource label 
            unless the target group is attached to the Auto Scaling group.</p>
        <p>You create the resource label by appending the final portion of the load balancer ARN
            and the final portion of the target group ARN into a single value, separated by a forward
            slash (/). The format of the resource label is:</p>
        <p>
            <code>app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d</code>.</p>
        <p>Where:</p>
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
        <p>To find the ARN for an Application Load Balancer, use the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html\">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
            the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html\">DescribeTargetGroups</a> API operation.</p>")
  @as("ResourceLabel")
  resourceLabel: option<xmlStringMaxLen1023>,
  @ocaml.doc("<p>The metric type.</p>") @as("PredefinedMetricType")
  predefinedMetricType: predefinedScalingMetricType,
}
@ocaml.doc("<p>Represents a metric pair for a predictive scaling policy. </p>")
type predictiveScalingPredefinedMetricPair = {
  @ocaml.doc("<p>A label that uniquely identifies a specific Application Load Balancer target 
            group from which to determine the request count served by your Auto Scaling group. You can't specify a resource label 
            unless the target group is attached to the Auto Scaling group.</p>
        <p>You create the resource label by appending the final portion of the load balancer ARN
            and the final portion of the target group ARN into a single value, separated by a forward
            slash (/). The format of the resource label is:</p>
        <p>
            <code>app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d</code>.</p>
        <p>Where:</p>
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
        <p>To find the ARN for an Application Load Balancer, use the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html\">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
            the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html\">DescribeTargetGroups</a> API operation.</p>")
  @as("ResourceLabel")
  resourceLabel: option<xmlStringMaxLen1023>,
  @ocaml.doc("<p>Indicates which metrics to use. There are two different types of metrics for each
            metric type: one is a load metric and one is a scaling metric. For example, if the
            metric type is <code>ASGCPUUtilization</code>, the Auto Scaling group's total CPU metric is used
            as the load metric, and the average CPU metric is used for the scaling metric.</p>")
  @as("PredefinedMetricType")
  predefinedMetricType: predefinedMetricPairType,
}
@ocaml.doc("<p>Describes a load metric for a predictive scaling policy.</p>
        <p>When returned in the output of <code>DescribePolicies</code>, it indicates that a
            predictive scaling policy uses individually specified load and scaling metrics instead
            of a metric pair.</p>")
type predictiveScalingPredefinedLoadMetric = {
  @ocaml.doc("<p>A label that uniquely identifies a specific Application Load Balancer target 
            group from which to determine the request count served by your Auto Scaling group. You can't specify a resource label 
            unless the target group is attached to the Auto Scaling group.</p>
        <p>You create the resource label by appending the final portion of the load balancer ARN
            and the final portion of the target group ARN into a single value, separated by a forward
            slash (/). The format of the resource label is:</p>
        <p>
            <code>app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d</code>.</p>
        <p>Where:</p>
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
        <p>To find the ARN for an Application Load Balancer, use the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html\">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
            the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html\">DescribeTargetGroups</a> API operation.</p>")
  @as("ResourceLabel")
  resourceLabel: option<xmlStringMaxLen1023>,
  @ocaml.doc("<p>The metric type.</p>") @as("PredefinedMetricType")
  predefinedMetricType: predefinedLoadMetricType,
}
type predictiveScalingForecastValues = array<metricScale>
type predictiveScalingForecastTimestamps = array<timestampType>
@ocaml.doc("<p>Represents a predefined metric for a target tracking scaling policy to use with
            Amazon EC2 Auto Scaling.</p>")
type predefinedMetricSpecification = {
  @ocaml.doc("<p>Identifies the resource associated with the metric type. You can't specify a resource
            label unless the metric type is <code>ALBRequestCountPerTarget</code> and there is a
            target group attached to the Auto Scaling group.</p>
        <p>You create the resource label by appending the final portion of the load balancer ARN
            and the final portion of the target group ARN into a single value, separated by a
            forward slash (/). The format is
            app/<load-balancer-name>/<load-balancer-id>/targetgroup/<target-group-name>/<target-group-id>,
            where:</p>
        <ul>
            <li>
                <p>app/<load-balancer-name>/<load-balancer-id> is the final portion
                    of the load balancer ARN</p>
            </li>
            <li>
                <p>targetgroup/<target-group-name>/<target-group-id> is the final
                    portion of the target group ARN.</p>
            </li>
         </ul>
        <p>This is an example:
            app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d.</p>
        <p>To find the ARN for an Application Load Balancer, use the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html\">DescribeLoadBalancers</a> API operation. To find the ARN for the target group,
            use the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html\">DescribeTargetGroups</a> API operation.</p>")
  @as("ResourceLabel")
  resourceLabel: option<xmlStringMaxLen1023>,
  @ocaml.doc("<p>The metric type. The following predefined metrics are available:</p>
        <ul>
            <li>
                <p>
                  <code>ASGAverageCPUUtilization</code> - Average CPU utilization of the Auto Scaling
                    group.</p>
            </li>
            <li>
                <p>
                  <code>ASGAverageNetworkIn</code> - Average number of bytes received on all
                    network interfaces by the Auto Scaling group.</p>
            </li>
            <li>
                <p>
                  <code>ASGAverageNetworkOut</code> - Average number of bytes sent out on all
                    network interfaces by the Auto Scaling group.</p>
            </li>
            <li>
                <p>
                  <code>ALBRequestCountPerTarget</code> - Number of requests completed per
                    target in an Application Load Balancer target group.</p>
            </li>
         </ul>")
  @as("PredefinedMetricType")
  predefinedMetricType: metricType,
}
type policyTypes = array<xmlStringMaxLen64>
type policyNames = array<resourceName>
@ocaml.doc("<p>Describes a notification.</p>")
type notificationConfiguration = {
  @ocaml.doc("<p>One of the following event notification types:</p>
        <ul>
            <li>
                <p>
                    <code>autoscaling:EC2_INSTANCE_LAUNCH</code>
                </p>
            </li>
            <li>
                <p>
                    <code>autoscaling:EC2_INSTANCE_LAUNCH_ERROR</code>
                </p>
            </li>
            <li>
                <p>
                    <code>autoscaling:EC2_INSTANCE_TERMINATE</code>
                </p>
            </li>
            <li>
                <p>
                    <code>autoscaling:EC2_INSTANCE_TERMINATE_ERROR</code>
                </p>
            </li>
            <li>
                <p>
                    <code>autoscaling:TEST_NOTIFICATION</code>
                </p>
            </li>
         </ul>")
  @as("NotificationType")
  notificationType: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (Amazon SNS)
            topic.</p>")
  @as("TopicARN")
  topicARN: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
  autoScalingGroupName: option<xmlStringMaxLen255>,
}
type metrics = array<xmlStringMaxLen255>
@ocaml.doc("<p>Describes a granularity of a metric.</p>")
type metricGranularityType = {
  @ocaml.doc("<p>The granularity. The only valid value is <code>1Minute</code>.</p>")
  @as("Granularity")
  granularity: option<xmlStringMaxLen255>,
}
@ocaml.doc("<p>Describes the dimension of a metric.</p>")
type metricDimension = {
  @ocaml.doc("<p>The value of the dimension.</p>") @as("Value") value: metricDimensionValue,
  @ocaml.doc("<p>The name of the dimension.</p>") @as("Name") name: metricDimensionName,
}
@ocaml.doc("<p>Describes a metric.</p>")
type metricCollectionType = {
  @ocaml.doc("<p>One of the following metrics:</p>
        <ul>
            <li>
                <p>
                    <code>GroupMinSize</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupMaxSize</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupInServiceInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupPendingInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupStandbyInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTerminatingInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTotalInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupInServiceCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupPendingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupStandbyCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTerminatingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTotalCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolWarmedCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolPendingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolTerminatingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolTotalCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupAndWarmPoolDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupAndWarmPoolTotalCapacity</code>
                </p>
            </li>
         </ul>")
  @as("Metric")
  metric: option<xmlStringMaxLen255>,
}
@ocaml.doc("<p>Describes the state of a target group.</p>")
type loadBalancerTargetGroupState = {
  @ocaml.doc("<p>The state of the target group.</p>
        <ul>
            <li>
                <p>
                  <code>Adding</code> - The Auto Scaling instances are being registered with the target
                    group.</p>
            </li>
            <li>
                <p>
                  <code>Added</code> - All Auto Scaling instances are registered with the target
                    group.</p>
            </li>
            <li>
                <p>
                  <code>InService</code> - At least one Auto Scaling instance passed an <code>ELB</code>
                    health check.</p>
            </li>
            <li>
                <p>
                  <code>Removing</code> - The Auto Scaling instances are being deregistered from the
                    target group. If connection draining is enabled, Elastic Load Balancing waits for in-flight
                    requests to complete before deregistering the instances.</p>
            </li>
            <li>
                <p>
                  <code>Removed</code> - All Auto Scaling instances are deregistered from the target
                    group.</p>
            </li>
         </ul>")
  @as("State")
  state: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target group.</p>")
  @as("LoadBalancerTargetGroupARN")
  loadBalancerTargetGroupARN: option<xmlStringMaxLen511>,
}
@ocaml.doc("<p>Describes the state of a Classic Load Balancer.</p>")
type loadBalancerState = {
  @ocaml.doc("<p>One of the following load balancer states:</p>
        <ul>
            <li>
                <p>
                  <code>Adding</code> - The Auto Scaling instances are being registered with the load
                    balancer.</p>
            </li>
            <li>
                <p>
                    <code>Added</code> - All Auto Scaling instances are registered with the load
                    balancer.</p>
            </li>
            <li>
                <p>
                  <code>InService</code> - At least one Auto Scaling instance passed an <code>ELB</code>
                    health check.</p>
            </li>
            <li>
                <p>
                  <code>Removing</code> - The Auto Scaling instances are being deregistered from the
                    load balancer. If connection draining is enabled, Elastic Load Balancing waits for in-flight
                    requests to complete before deregistering the instances.</p>
            </li>
            <li>
                <p>
                  <code>Removed</code> - All Auto Scaling instances are deregistered from the load
                    balancer.</p>
            </li>
         </ul>")
  @as("State")
  state: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
  loadBalancerName: option<xmlStringMaxLen255>,
}
type loadBalancerNames = array<xmlStringMaxLen255>
@ocaml.doc("<p>Describes information used to specify a lifecycle hook for an Auto Scaling
            group.</p>
        <p>A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on an instance when the instance
            launches (before it is put into service) or as the instance terminates (before it is
            fully terminated).</p>
        <p>This step is a part of the procedure for creating a lifecycle hook for an Auto Scaling
            group:</p>
        <ol>
            <li>
                <p>(Optional) Create a Lambda function and a rule that allows CloudWatch Events to
                    invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates
                    instances.</p>
            </li>
            <li>
                <p>(Optional) Create a notification target and an IAM role. The target can be
                    either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to
                    publish lifecycle notifications to the target.</p>
            </li>
            <li>
                <p>
                    <b>Create the lifecycle hook. Specify whether the hook is
                        used when the instances launch or terminate.</b>
                </p>
            </li>
            <li>
                <p>If you need more time, record the lifecycle action heartbeat to keep the
                    instance in a pending state.</p>
            </li>
            <li>
                <p>If you finish before the timeout period ends, complete the lifecycle
                    action.</p>
            </li>
         </ol>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html\">Amazon EC2 Auto Scaling lifecycle
                hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
type lifecycleHookSpecification = {
  @ocaml.doc("<p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified
            notification target, for example, an Amazon SNS topic or an Amazon SQS queue.</p>")
  @as("RoleARN")
  roleARN: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The ARN of the target that Amazon EC2 Auto Scaling sends notifications to when an instance is in the
            transition state for the lifecycle hook. The notification target can be either an SQS
            queue or an SNS topic.</p>")
  @as("NotificationTargetARN")
  notificationTargetARN: option<notificationTargetResourceName>,
  @ocaml.doc("<p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses
            or if an unexpected failure occurs. The valid values are <code>CONTINUE</code> and
                <code>ABANDON</code>. The default value is <code>ABANDON</code>.</p>")
  @as("DefaultResult")
  defaultResult: option<lifecycleActionResult>,
  @ocaml.doc("<p>The maximum time, in seconds, that can elapse before the lifecycle hook times
            out.</p>
        <p>If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the action that you specified in
            the <code>DefaultResult</code> parameter. You can prevent the lifecycle hook from timing
            out by calling <a>RecordLifecycleActionHeartbeat</a>.</p>")
  @as("HeartbeatTimeout")
  heartbeatTimeout: option<heartbeatTimeout>,
  @ocaml.doc("<p>Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to
            the notification target.</p>")
  @as("NotificationMetadata")
  notificationMetadata: option<xmlStringMaxLen1023>,
  @ocaml.doc("<p>The state of the EC2 instance to which you want to attach the lifecycle hook. The
            valid values are:</p>
        <ul>
            <li>
                <p>autoscaling:EC2_INSTANCE_LAUNCHING</p>
            </li>
            <li>
                <p>autoscaling:EC2_INSTANCE_TERMINATING</p>
            </li>
         </ul>")
  @as("LifecycleTransition")
  lifecycleTransition: lifecycleTransition,
  @ocaml.doc("<p>The name of the lifecycle hook.</p>") @as("LifecycleHookName")
  lifecycleHookName: asciiStringMaxLen255,
}
type lifecycleHookNames = array<asciiStringMaxLen255>
@ocaml.doc("<p>Describes a lifecycle hook, which tells Amazon EC2 Auto Scaling that you want to perform an action
            whenever it launches instances or terminates
            instances.</p>")
type lifecycleHook = {
  @ocaml.doc("<p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses
            or if an unexpected failure occurs. The possible values are <code>CONTINUE</code> and
                <code>ABANDON</code>.</p>")
  @as("DefaultResult")
  defaultResult: option<lifecycleActionResult>,
  @ocaml.doc("<p>The maximum time, in seconds, that an instance can remain in a
                <code>Pending:Wait</code> or <code>Terminating:Wait</code> state. The maximum is
            172800 seconds (48 hours) or 100 times <code>HeartbeatTimeout</code>, whichever is
            smaller.</p>")
  @as("GlobalTimeout")
  globalTimeout: option<globalTimeout>,
  @ocaml.doc("<p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. If
            the lifecycle hook times out, Amazon EC2 Auto Scaling performs the action that you specified in the
                <code>DefaultResult</code> parameter.</p>")
  @as("HeartbeatTimeout")
  heartbeatTimeout: option<heartbeatTimeout>,
  @ocaml.doc("<p>Additional information that is included any time Amazon EC2 Auto Scaling sends a message to the
            notification target.</p>")
  @as("NotificationMetadata")
  notificationMetadata: option<xmlStringMaxLen1023>,
  @ocaml.doc("<p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified
            notification target.</p>")
  @as("RoleARN")
  roleARN: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The ARN of the target that Amazon EC2 Auto Scaling sends notifications to when an instance is in the
            transition state for the lifecycle hook. The notification target can be either an SQS
            queue or an SNS topic.</p>")
  @as("NotificationTargetARN")
  notificationTargetARN: option<notificationTargetResourceName>,
  @ocaml.doc("<p>The state of the EC2 instance to which to attach the lifecycle hook. The following are
            possible values:</p>
        <ul>
            <li>
                <p>autoscaling:EC2_INSTANCE_LAUNCHING</p>
            </li>
            <li>
                <p>autoscaling:EC2_INSTANCE_TERMINATING</p>
            </li>
         </ul>")
  @as("LifecycleTransition")
  lifecycleTransition: option<lifecycleTransition>,
  @ocaml.doc("<p>The name of the Auto Scaling group for the lifecycle hook.</p>")
  @as("AutoScalingGroupName")
  autoScalingGroupName: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The name of the lifecycle hook.</p>") @as("LifecycleHookName")
  lifecycleHookName: option<asciiStringMaxLen255>,
}
@ocaml.doc("<p>Describes the Amazon EC2 launch template and the launch template version that can be used
            by an Auto Scaling group to configure Amazon EC2 instances.</p>
        <p>The launch template that is specified must be configured for use with an Auto Scaling group.
            For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html\">Creating a launch
                template for an Auto Scaling group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
type launchTemplateSpecification = {
  @ocaml.doc("<p>The version number, <code>$Latest</code>, or <code>$Default</code>. To get the version
            number, use the Amazon EC2 <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplateVersions.html\">DescribeLaunchTemplateVersions</a> API operation. New launch template versions
            can be created using the Amazon EC2 <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplateVersion.html\">CreateLaunchTemplateVersion</a> API. If the value is <code>$Latest</code>,
            Amazon EC2 Auto Scaling selects the latest version of the launch template when launching instances. If
            the value is <code>$Default</code>, Amazon EC2 Auto Scaling selects the default version of the launch
            template when launching instances. The default value is <code>$Default</code>.</p>")
  @as("Version")
  version: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The name of the launch template. To get the template name, use the Amazon EC2 <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplates.html\">DescribeLaunchTemplates</a> API operation. New launch templates can be created
            using the Amazon EC2 <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html\">CreateLaunchTemplate</a> API. </p>
        <p>Conditional: You must specify either a <code>LaunchTemplateId</code> or a
                <code>LaunchTemplateName</code>.</p>")
  @as("LaunchTemplateName")
  launchTemplateName: option<launchTemplateName>,
  @ocaml.doc("<p>The ID of the launch template. To get the template ID, use the Amazon EC2 <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplates.html\">DescribeLaunchTemplates</a> API operation. New launch templates can be created
            using the Amazon EC2 <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html\">CreateLaunchTemplate</a> API. </p>
        <p>Conditional: You must specify either a <code>LaunchTemplateId</code> or a
                <code>LaunchTemplateName</code>.</p>")
  @as("LaunchTemplateId")
  launchTemplateId: option<xmlStringMaxLen255>,
}
type launchConfigurationNames = array<xmlStringMaxLen255>
@ocaml.doc("<p>Describes an instances distribution for an Auto Scaling group with a <a>MixedInstancesPolicy</a>.</p>
        <p>The instances distribution specifies the distribution of On-Demand Instances and Spot
            Instances, the maximum price to pay for Spot Instances, and how the Auto Scaling group allocates
            instance types to fulfill On-Demand and Spot capacities.</p>
        <p>When you update <code>SpotAllocationStrategy</code>, <code>SpotInstancePools</code>,
            or <code>SpotMaxPrice</code>, this update action does not deploy any changes across the
            running Amazon EC2 instances in the group. Your existing Spot Instances continue to run
            as long as the maximum price for those instances is higher than the current Spot price.
            When scale out occurs, Amazon EC2 Auto Scaling launches instances based on the new settings. When scale
            in occurs, Amazon EC2 Auto Scaling terminates instances according to the group's termination
            policies.</p>")
type instancesDistribution = {
  @ocaml.doc("<p>The maximum price per unit hour that you are willing to pay for a Spot Instance. If
            you leave the value at its default (empty), Amazon EC2 Auto Scaling uses the On-Demand price as the
            maximum Spot price. To remove a value that you previously set, include the property but
            specify an empty string (\"\") for the value.</p>")
  @as("SpotMaxPrice")
  spotMaxPrice: option<mixedInstanceSpotPrice>,
  @ocaml.doc("<p>The number of Spot Instance pools across which to allocate your Spot Instances. The
            Spot pools are determined from the different instance types in the overrides. Valid only
            when the Spot allocation strategy is <code>lowest-price</code>. Value must be in the
            range of 1 to 20. Defaults to 2 if not specified.</p>")
  @as("SpotInstancePools")
  spotInstancePools: option<spotInstancePools>,
  @ocaml.doc("<p>Indicates how to allocate instances across Spot Instance pools. </p>
        <p>If the allocation strategy is <code>lowest-price</code>, the Auto Scaling group launches
            instances using the Spot pools with the lowest price, and evenly allocates your
            instances across the number of Spot pools that you specify. Defaults to
                <code>lowest-price</code> if not specified.</p>
        <p>If the allocation strategy is <code>capacity-optimized</code> (recommended), the Auto Scaling
            group launches instances using Spot pools that are optimally chosen based on the
            available Spot capacity. Alternatively, you can use
                <code>capacity-optimized-prioritized</code> and set the order of instance types in
            the list of launch template overrides from highest to lowest priority (from first to
            last in the list). Amazon EC2 Auto Scaling honors the instance type priorities on a best-effort basis
            but optimizes for capacity first. </p>")
  @as("SpotAllocationStrategy")
  spotAllocationStrategy: option<xmlString>,
  @ocaml.doc("<p>Controls the percentages of On-Demand Instances and Spot Instances for your additional
            capacity beyond <code>OnDemandBaseCapacity</code>. Expressed as a number (for example,
            20 specifies 20% On-Demand Instances, 80% Spot Instances). Defaults to 100 if not
            specified. If set to 100, only On-Demand Instances are provisioned.</p>")
  @as("OnDemandPercentageAboveBaseCapacity")
  onDemandPercentageAboveBaseCapacity: option<onDemandPercentageAboveBaseCapacity>,
  @ocaml.doc("<p>The minimum amount of the Auto Scaling group's capacity that must be fulfilled by On-Demand
            Instances. This base portion is provisioned first as your group scales. Defaults to 0 if
            not specified. If you specify weights for the instance types in the overrides, set the
            value of <code>OnDemandBaseCapacity</code> in terms of the number of capacity units, and
            not the number of instances.</p>")
  @as("OnDemandBaseCapacity")
  onDemandBaseCapacity: option<onDemandBaseCapacity>,
  @ocaml.doc("<p>Indicates how to allocate instance types to fulfill On-Demand capacity. The only valid
            value is <code>prioritized</code>, which is also the default value. This strategy uses
            the order of instance types in the <code>LaunchTemplateOverrides</code> to define the
            launch priority of each instance type. The first instance type in the array is
            prioritized higher than the last. If all your On-Demand capacity cannot be fulfilled
            using your highest priority instance, then the Auto Scaling groups launches the remaining
            capacity using the second priority instance type, and so on.</p>")
  @as("OnDemandAllocationStrategy")
  onDemandAllocationStrategy: option<xmlString>,
}
@ocaml.doc("<p>Reports the progress of an instance refresh on instances that are in the warm
            pool.</p>")
type instanceRefreshWarmPoolProgress = {
  @ocaml.doc("<p>The number of instances remaining to update.</p>") @as("InstancesToUpdate")
  instancesToUpdate: option<instancesToUpdate>,
  @ocaml.doc("<p>The percentage of instances in the warm pool that have been replaced. For each
            instance replacement, Amazon EC2 Auto Scaling tracks the instance's health status and warm-up time.
            When the instance's health status changes to healthy and the specified warm-up time
            passes, the instance is considered updated and is added to the percentage
            complete.</p>")
  @as("PercentageComplete")
  percentageComplete: option<intPercent>,
}
@ocaml.doc("<p>Reports the progress of an instance refresh on instances that are in the Auto Scaling
            group.</p>")
type instanceRefreshLivePoolProgress = {
  @ocaml.doc("<p>The number of instances remaining to update.</p>") @as("InstancesToUpdate")
  instancesToUpdate: option<instancesToUpdate>,
  @ocaml.doc("<p>The percentage of instances in the Auto Scaling group that have been replaced. For each
            instance replacement, Amazon EC2 Auto Scaling tracks the instance's health status and warm-up time.
            When the instance's health status changes to healthy and the specified warm-up time
            passes, the instance is considered updated and is added to the percentage
            complete.</p>")
  @as("PercentageComplete")
  percentageComplete: option<intPercent>,
}
type instanceRefreshIds = array<xmlStringMaxLen255>
@ocaml.doc(
  "<p>Describes whether detailed monitoring is enabled for the Auto Scaling instances.</p>"
)
type instanceMonitoring = {
  @ocaml.doc("<p>If <code>true</code>, detailed monitoring is enabled. Otherwise, basic monitoring is
            enabled.</p>")
  @as("Enabled")
  enabled: option<monitoringEnabled>,
}
@ocaml.doc("<p>The metadata options for the instances. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds\">Configuring the Instance Metadata Options</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
type instanceMetadataOptions = {
  @ocaml.doc("<p>This parameter enables or disables the HTTP metadata endpoint on your instances. If
            the parameter is not specified, the default state is <code>enabled</code>.</p>
        <note>
            <p>If you specify a value of <code>disabled</code>, you will not be able to access
                your instance metadata. </p>
        </note>")
  @as("HttpEndpoint")
  httpEndpoint: option<instanceMetadataEndpointState>,
  @ocaml.doc("<p>The desired HTTP PUT response hop limit for instance metadata requests. The larger the
            number, the further instance metadata requests can travel.</p>
        <p>Default: 1</p>")
  @as("HttpPutResponseHopLimit")
  httpPutResponseHopLimit: option<instanceMetadataHttpPutResponseHopLimit>,
  @ocaml.doc("<p>The state of token usage for your instance metadata requests. If the parameter is not
            specified in the request, the default state is <code>optional</code>.</p>
        <p>If the state is <code>optional</code>, you can choose to retrieve instance metadata
            with or without a signed token header on your request. If you retrieve the IAM role
            credentials without a token, the version 1.0 role credentials are returned. If you
            retrieve the IAM role credentials using a valid signed token, the version 2.0 role
            credentials are returned.</p>
        <p>If the state is <code>required</code>, you must send a signed token header with any
            instance metadata retrieval requests. In this state, retrieving the IAM role credentials
            always returns the version 2.0 credentials; the version 1.0 credentials are not
            available.</p>")
  @as("HttpTokens")
  httpTokens: option<instanceMetadataHttpTokensState>,
}
type instanceIds = array<xmlStringMaxLen19>
@ocaml.doc("<p>Describes a scheduled action that could not be created, updated, or deleted.</p>")
type failedScheduledUpdateGroupActionRequest = {
  @ocaml.doc("<p>The error message accompanying the error code.</p>") @as("ErrorMessage")
  errorMessage: option<xmlString>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<xmlStringMaxLen64>,
  @ocaml.doc("<p>The name of the scheduled action.</p>") @as("ScheduledActionName")
  scheduledActionName: xmlStringMaxLen255,
}
@ocaml.doc("<p>Describes an enabled metric.</p>")
type enabledMetric = {
  @ocaml.doc("<p>The granularity of the metric. The only valid value is <code>1Minute</code>.</p>")
  @as("Granularity")
  granularity: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>One of the following metrics:</p>
        <ul>
            <li>
                <p>
                    <code>GroupMinSize</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupMaxSize</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupInServiceInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupPendingInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupStandbyInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTerminatingInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTotalInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupInServiceCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupPendingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupStandbyCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTerminatingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTotalCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolWarmedCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolPendingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolTerminatingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolTotalCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupAndWarmPoolDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupAndWarmPoolTotalCapacity</code>
                </p>
            </li>
         </ul>")
  @as("Metric")
  metric: option<xmlStringMaxLen255>,
}
@ocaml.doc("<p>Describes information used to set up an Amazon EBS volume specified in a block device
            mapping.</p>")
type ebs = {
  @ocaml.doc("<p>The throughput to provision for a <code>gp3</code> volume.</p>
        <p>Valid Range: Minimum value of 125. Maximum value of 1000.</p>")
  @as("Throughput")
  throughput: option<blockDeviceEbsThroughput>,
  @ocaml.doc("<p>Specifies whether the volume should be encrypted. Encrypted EBS volumes can only be
            attached to instances that support Amazon EBS encryption. For more information, see
                <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances\">Supported Instance Types</a>. If your AMI uses encrypted volumes, you can also
            only launch it on supported instance types.</p>
        <note>
            <p>If you are creating a volume from a snapshot, you cannot specify an encryption
                value. Volumes that are created from encrypted snapshots are automatically
                encrypted, and volumes that are created from unencrypted snapshots are automatically
                unencrypted. By default, encrypted snapshots use the AWS managed CMK that is used
                for EBS encryption, but you can specify a custom CMK when you create the snapshot.
                The ability to encrypt a snapshot during copying also allows you to apply a new CMK
                to an already-encrypted snapshot. Volumes restored from the
                resulting copy are only accessible using the new CMK.</p>
            <p>Enabling <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default\">encryption by default</a> results in all EBS volumes being encrypted with
                the AWS managed CMK or a customer managed CMK, whether or not the snapshot was
                encrypted.</p>
        </note>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html\">Using Encryption with EBS-Backed
                AMIs</a> in the <i>Amazon EC2 User Guide for Linux Instances</i> and <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/key-policy-requirements-EBS-encryption.html\">Required
                CMK key policy for use with encrypted volumes</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
  @as("Encrypted")
  encrypted: option<blockDeviceEbsEncrypted>,
  @ocaml.doc("<p>The number of input/output (I/O) operations per second (IOPS) to provision for the
            volume. For <code>gp3</code> and <code>io1</code> volumes, this represents the number of
            IOPS that are provisioned for the volume. For <code>gp2</code> volumes, this represents
            the baseline performance of the volume and the rate at which the volume accumulates I/O
            credits for bursting. </p>
        <p>The following are the supported values for each volume type: </p>
        <ul>
            <li>
                <p>
                  <code>gp3</code>: 3,000-16,000 IOPS</p>
            </li>
            <li>
                <p>
                  <code>io1</code>: 100-64,000 IOPS</p>
            </li>
         </ul>

        <p>For <code>io1</code> volumes, we guarantee 64,000 IOPS only for <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances\">Instances
                built on the Nitro System</a>. Other instance families guarantee performance up
            to 32,000 IOPS. </p>
        <p>
            <code>Iops</code> is supported when the volume type is <code>gp3</code> or
                <code>io1</code> and required only when the volume type is <code>io1</code>. (Not
            used with <code>standard</code>, <code>gp2</code>, <code>st1</code>, or <code>sc1</code>
            volumes.)  </p>")
  @as("Iops")
  iops: option<blockDeviceEbsIops>,
  @ocaml.doc("<p>Indicates whether the volume is deleted on instance termination. For Amazon EC2 Auto Scaling, the
            default value is <code>true</code>.</p>")
  @as("DeleteOnTermination")
  deleteOnTermination: option<blockDeviceEbsDeleteOnTermination>,
  @ocaml.doc("<p>The volume type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html\">Amazon EBS Volume Types</a> in
            the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
        <p>Valid Values: <code>standard</code> | <code>io1</code> | <code>gp2</code> |
                <code>st1</code> | <code>sc1</code> | <code>gp3</code>
         </p>")
  @as("VolumeType")
  volumeType: option<blockDeviceEbsVolumeType>,
  @ocaml.doc("<p>The volume size, in GiBs. The following are the supported volumes sizes for each
            volume type: </p>
        <ul>
            <li>
                <p>
                  <code>gp2</code> and <code>gp3</code>: 1-16,384</p>
            </li>
            <li>
                <p>
                  <code>io1</code>: 4-16,384</p>
            </li>
            <li>
                <p>
                  <code>st1</code> and <code>sc1</code>: 125-16,384</p>
            </li>
            <li>
                <p>
                  <code>standard</code>: 1-1,024</p>
            </li>
         </ul>
        <p>You must specify either a <code>SnapshotId</code> or a <code>VolumeSize</code>. If you
            specify both <code>SnapshotId</code> and <code>VolumeSize</code>, the volume size must
            be equal or greater than the size of the snapshot.</p>")
  @as("VolumeSize")
  volumeSize: option<blockDeviceEbsVolumeSize>,
  @ocaml.doc("<p>The snapshot ID of the volume to use.</p>
        <p>You must specify either a <code>VolumeSize</code> or a <code>SnapshotId</code>.</p>")
  @as("SnapshotId")
  snapshotId: option<xmlStringMaxLen255>,
}
type classicLinkVPCSecurityGroups = array<xmlStringMaxLen255>
type checkpointPercentages = array<nonZeroIntPercent>
type availabilityZones = array<xmlStringMaxLen255>
type autoScalingNotificationTypes = array<xmlStringMaxLen255>
type autoScalingGroupNames = array<xmlStringMaxLen255>
@ocaml.doc("<p>Describes an alarm.</p>")
type alarm = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the alarm.</p>") @as("AlarmARN")
  alarmARN: option<resourceName>,
  @ocaml.doc("<p>The name of the alarm.</p>") @as("AlarmName")
  alarmName: option<xmlStringMaxLen255>,
}
@ocaml.doc("<p>Describes a policy adjustment type.</p>")
type adjustmentType = {
  @ocaml.doc("<p>The policy adjustment type. The valid values are <code>ChangeInCapacity</code>,
                <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>")
  @as("AdjustmentType")
  adjustmentType: option<xmlStringMaxLen255>,
}
type activityIds = array<xmlString>
@ocaml.doc("<p>Describes scaling activity, which is a long-running process that represents a change
            to your Auto Scaling group, such as changing its size or replacing an instance.</p>")
type activity = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Auto Scaling group.</p>")
  @as("AutoScalingGroupARN")
  autoScalingGroupARN: option<resourceName>,
  @ocaml.doc("<p>The state of the Auto Scaling group, which is either <code>InService</code> or
                <code>Deleted</code>.</p>")
  @as("AutoScalingGroupState")
  autoScalingGroupState: option<autoScalingGroupState>,
  @ocaml.doc("<p>The details about the activity.</p>") @as("Details") details: option<xmlString>,
  @ocaml.doc("<p>A value between 0 and 100 that indicates the progress of the activity.</p>")
  @as("Progress")
  progress: option<progress>,
  @ocaml.doc("<p>A friendly, more verbose description of the activity status.</p>")
  @as("StatusMessage")
  statusMessage: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The current status of the activity.</p>") @as("StatusCode")
  statusCode: scalingActivityStatusCode,
  @ocaml.doc("<p>The end time of the activity.</p>") @as("EndTime") endTime: option<timestampType>,
  @ocaml.doc("<p>The start time of the activity.</p>") @as("StartTime") startTime: timestampType,
  @ocaml.doc("<p>The reason the activity began.</p>") @as("Cause") cause: xmlStringMaxLen1023,
  @ocaml.doc("<p>A friendly, more verbose description of the activity.</p>") @as("Description")
  description: option<xmlString>,
  @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
  autoScalingGroupName: xmlStringMaxLen255,
  @ocaml.doc("<p>The ID of the activity.</p>") @as("ActivityId") activityId: xmlString,
}
type tags = array<tag>
type tagDescriptionList = array<tagDescription>
type suspendedProcesses = array<suspendedProcess>
type stepAdjustments = array<stepAdjustment>
type scheduledUpdateGroupActions = array<scheduledUpdateGroupAction>
type scheduledUpdateGroupActionRequests = array<scheduledUpdateGroupActionRequest>
@ocaml.doc("<p>Describes information used to start an instance refresh. </p>
        <p>All properties are optional. However, if you specify a value for
                <code>CheckpointDelay</code>, you must also provide a value for
                <code>CheckpointPercentages</code>. </p>")
type refreshPreferences = {
  @ocaml.doc("<p>The amount of time, in seconds, to wait after a checkpoint before continuing. This
            property is optional, but if you specify a value for it, you must also specify a value
            for <code>CheckpointPercentages</code>. If you specify a value for
                <code>CheckpointPercentages</code> and not for <code>CheckpointDelay</code>, the
                <code>CheckpointDelay</code> defaults to <code>3600</code> (1 hour). </p>")
  @as("CheckpointDelay")
  checkpointDelay: option<checkpointDelay>,
  @ocaml.doc("<p>Threshold values for each checkpoint in ascending order. Each number must be unique.
            To replace all instances in the Auto Scaling group, the last number in the array must be
                <code>100</code>.</p>
        <p>For usage examples, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-adding-checkpoints-instance-refresh.html\">Adding
                checkpoints to an instance refresh</a> in the
            <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
  @as("CheckpointPercentages")
  checkpointPercentages: option<checkpointPercentages>,
  @ocaml.doc("<p>The number of seconds until a newly launched instance is configured and ready to use.
            During this time, Amazon EC2 Auto Scaling does not immediately move on to the next replacement. The
            default is to use the value for the health check grace period defined for the
            group.</p>")
  @as("InstanceWarmup")
  instanceWarmup: option<refreshInstanceWarmup>,
  @ocaml.doc("<p>The amount of capacity in the Auto Scaling group that must remain healthy during an instance
            refresh to allow the operation to continue, as a percentage of the desired capacity of
            the Auto Scaling group (rounded up to the nearest integer). The default is <code>90</code>.
        </p>")
  @as("MinHealthyPercentage")
  minHealthyPercentage: option<intPercent>,
}
type processes = array<processType>
@ocaml.doc("<p>This structure specifies the metrics and target utilization settings for a predictive
            scaling policy. </p>
        <p>You must specify either a metric pair, or a load metric and a scaling metric
            individually. Specifying a metric pair instead of individual metrics provides a simpler
            way to configure metrics for a scaling policy. You choose the metric pair, and the
            policy automatically knows the correct sum and average statistics to use for the load
            metric and the scaling metric.</p>
        <p>Example</p>
        <ul>
            <li>
                <p>You create a predictive scaling policy and specify
                        <code>ALBRequestCount</code> as the value for the metric pair and
                        <code>1000.0</code> as the target value. For this type of metric, you must
                    provide the metric dimension for the corresponding target group, so you also
                    provide a resource label for the Application Load Balancer target group that is
                    attached to your Auto Scaling group.</p>
            </li>
            <li>
                <p>The number of requests the target group receives per minute provides the load
                    metric, and the request count averaged between the members of the target group
                    provides the scaling metric. In CloudWatch, this refers to the
                        <code>RequestCount</code> and <code>RequestCountPerTarget</code> metrics,
                    respectively.</p>
            </li>
            <li>
                <p>For optimal use of predictive scaling, you adhere to the best practice of
                    using a dynamic scaling policy to automatically scale between the minimum
                    capacity and maximum capacity in response to real-time changes in resource
                    utilization.</p>
            </li>
            <li>
                <p>Amazon EC2 Auto Scaling consumes data points for the load metric over the last 14 days and
                    creates an hourly load forecast for predictive scaling. (A minimum of 24 hours
                    of data is required.)</p>
            </li>
            <li>
                <p>After creating the load forecast, Amazon EC2 Auto Scaling determines when to reduce or
                    increase the capacity of your Auto Scaling group in each hour of the forecast period so
                    that the average number of requests received by each instance is as close to
                    1000 requests per minute as possible at all times.</p>
            </li>
         </ul>")
type predictiveScalingMetricSpecification = {
  @ocaml.doc("<p>The load metric specification.</p>") @as("PredefinedLoadMetricSpecification")
  predefinedLoadMetricSpecification: option<predictiveScalingPredefinedLoadMetric>,
  @ocaml.doc("<p>The scaling metric specification.</p>") @as("PredefinedScalingMetricSpecification")
  predefinedScalingMetricSpecification: option<predictiveScalingPredefinedScalingMetric>,
  @ocaml.doc("<p>The metric pair specification from which Amazon EC2 Auto Scaling determines the appropriate scaling
            metric and load metric to use.</p>")
  @as("PredefinedMetricPairSpecification")
  predefinedMetricPairSpecification: option<predictiveScalingPredefinedMetricPair>,
  @ocaml.doc("<p>Specifies the target utilization.</p>") @as("TargetValue")
  targetValue: metricScale,
}
type notificationConfigurations = array<notificationConfiguration>
type metricGranularityTypes = array<metricGranularityType>
type metricDimensions = array<metricDimension>
type metricCollectionTypes = array<metricCollectionType>
type loadBalancerTargetGroupStates = array<loadBalancerTargetGroupState>
type loadBalancerStates = array<loadBalancerState>
type lifecycleHooks = array<lifecycleHook>
type lifecycleHookSpecifications = array<lifecycleHookSpecification>
@ocaml.doc("<p>Describes an override for a launch template. The maximum number of instance types that
            can be associated with an Auto Scaling group is 40. The maximum number of distinct launch
            templates you can define for an Auto Scaling group is 20. For more information about configuring
            overrides, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-override-options.html\">Configuring
                overrides</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>")
type launchTemplateOverrides = {
  @ocaml.doc("<p>Provides the launch template to be used when launching the instance type. For example,
            some instance types might require a launch template with a different AMI. If not
            provided, Amazon EC2 Auto Scaling uses the launch template that's defined for your mixed instances
            policy. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-template-overrides.html\">Specifying a
                different launch template for an instance type</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>. </p>")
  @as("LaunchTemplateSpecification")
  launchTemplateSpecification: option<launchTemplateSpecification>,
  @ocaml.doc("<p>The number of capacity units provided by the specified instance type in terms of
            virtual CPUs, memory, storage, throughput, or other relative performance characteristic.
            When a Spot or On-Demand Instance is provisioned, the capacity units count toward the
            desired capacity. Amazon EC2 Auto Scaling provisions instances until the desired capacity is totally
            fulfilled, even if this results in an overage. For example, if there are 2 units
            remaining to fulfill capacity, and Amazon EC2 Auto Scaling can only provision an instance with a
                <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the
            desired capacity is exceeded by 3 units. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html\">Instance weighting for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.
            Value must be in the range of 1 to 999.</p>")
  @as("WeightedCapacity")
  weightedCapacity: option<xmlStringMaxLen32>,
  @ocaml.doc("<p>The instance type, such as <code>m3.xlarge</code>. You must use an instance type that
            is supported in your requested Region and Availability Zones. For more information, see
                <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance types</a> in the <i>Amazon Elastic Compute Cloud User
                Guide</i>.</p>")
  @as("InstanceType")
  instanceType: option<xmlStringMaxLen255>,
}
@ocaml.doc("<p>Reports the progress of an instance refresh on an Auto Scaling group that has a warm pool.
            This includes separate details for instances in the warm pool and instances in the Auto Scaling
            group (the live pool).</p>")
type instanceRefreshProgressDetails = {
  @ocaml.doc("<p>Indicates the progress of an instance refresh on instances that are in the warm
            pool.</p>")
  @as("WarmPoolProgress")
  warmPoolProgress: option<instanceRefreshWarmPoolProgress>,
  @ocaml.doc("<p>Indicates the progress of an instance refresh on instances that are in the Auto Scaling
            group.</p>")
  @as("LivePoolProgress")
  livePoolProgress: option<instanceRefreshLivePoolProgress>,
}
@ocaml.doc("<p>Describes an EC2 instance.</p>")
type instance = {
  @ocaml.doc("<p>The number of capacity units contributed by the instance based on its instance
            type.</p>
        <p>Valid Range: Minimum value of 1. Maximum value of 999.</p>")
  @as("WeightedCapacity")
  weightedCapacity: option<xmlStringMaxLen32>,
  @ocaml.doc("<p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling
            in.</p>")
  @as("ProtectedFromScaleIn")
  protectedFromScaleIn: instanceProtected,
  @ocaml.doc("<p>The launch template for the instance.</p>") @as("LaunchTemplate")
  launchTemplate: option<launchTemplateSpecification>,
  @ocaml.doc("<p>The launch configuration associated with the instance.</p>")
  @as("LaunchConfigurationName")
  launchConfigurationName: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The last reported health status of the instance. \"Healthy\" means that the instance is
            healthy and should remain in service. \"Unhealthy\" means that the instance is unhealthy
            and that Amazon EC2 Auto Scaling should terminate and replace it.</p>")
  @as("HealthStatus")
  healthStatus: xmlStringMaxLen32,
  @ocaml.doc("<p>A description of the current lifecycle state. The <code>Quarantined</code> state is
            not used. For information about lifecycle states, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html\">Instance
                lifecycle</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>")
  @as("LifecycleState")
  lifecycleState: lifecycleState,
  @ocaml.doc("<p>The Availability Zone in which the instance is running.</p>")
  @as("AvailabilityZone")
  availabilityZone: xmlStringMaxLen255,
  @ocaml.doc("<p>The instance type of the EC2 instance.</p>") @as("InstanceType")
  instanceType: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The ID of the instance.</p>") @as("InstanceId") instanceId: xmlStringMaxLen19,
}
@ocaml.doc("<p>Describes a filter that is used to return a more specific list of results when
            describing tags.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html\">Tagging Auto Scaling groups and
                instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
type filter = {
  @ocaml.doc("<p>One or more filter values. Filter values are case-sensitive.</p>") @as("Values")
  values: option<values>,
  @ocaml.doc("<p>The name of the filter. The valid values are: <code>auto-scaling-group</code>,
                <code>key</code>, <code>value</code>, and <code>propagate-at-launch</code>.</p>")
  @as("Name")
  name: option<xmlString>,
}
type failedScheduledUpdateGroupActionRequests = array<failedScheduledUpdateGroupActionRequest>
type enabledMetrics = array<enabledMetric>
@ocaml.doc("<p>A <code>GetPredictiveScalingForecast</code> call returns the capacity forecast for a
            predictive scaling policy. This structure includes the data points for that capacity
            forecast, along with the timestamps of those data points. </p>")
type capacityForecast = {
  @ocaml.doc("<p>The values of the data points.</p>") @as("Values")
  values: predictiveScalingForecastValues,
  @ocaml.doc("<p>The time stamps for the data points, in UTC format.</p>") @as("Timestamps")
  timestamps: predictiveScalingForecastTimestamps,
}
@ocaml.doc("<p>Describes a block device mapping.</p>")
type blockDeviceMapping = {
  @ocaml.doc("<p>Setting this value to <code>true</code> suppresses the specified device included in
            the block device mapping of the AMI.</p>
        <p>If <code>NoDevice</code> is <code>true</code> for the root device, instances might
            fail the EC2 health check. In that case, Amazon EC2 Auto Scaling launches replacement instances.</p>
        <p>If you specify <code>NoDevice</code>, you cannot specify <code>Ebs</code>.</p>")
  @as("NoDevice")
  noDevice: option<noDevice>,
  @ocaml.doc("<p>Parameters used to automatically set up EBS volumes when an instance is
            launched.</p>
        <p>You can specify either <code>VirtualName</code> or <code>Ebs</code>, but not
            both.</p>")
  @as("Ebs")
  ebs: option<ebs>,
  @ocaml.doc("<p>The device name exposed to the EC2 instance (for example, <code>/dev/sdh</code> or
                <code>xvdh</code>). For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html\">Device Naming on Linux
                Instances</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
  @as("DeviceName")
  deviceName: xmlStringMaxLen255,
  @ocaml.doc("<p>The name of the virtual device (for example, <code>ephemeral0</code>).</p>
        <p>You can specify either <code>VirtualName</code> or <code>Ebs</code>, but not
            both.</p>")
  @as("VirtualName")
  virtualName: option<xmlStringMaxLen255>,
}
@ocaml.doc("<p>Describes an EC2 instance associated with an Auto Scaling group.</p>")
type autoScalingInstanceDetails = {
  @ocaml.doc("<p>The number of capacity units contributed by the instance based on its instance
            type.</p>
        <p>Valid Range: Minimum value of 1. Maximum value of 999.</p>")
  @as("WeightedCapacity")
  weightedCapacity: option<xmlStringMaxLen32>,
  @ocaml.doc("<p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling
            in.</p>")
  @as("ProtectedFromScaleIn")
  protectedFromScaleIn: instanceProtected,
  @ocaml.doc("<p>The launch template for the instance.</p>") @as("LaunchTemplate")
  launchTemplate: option<launchTemplateSpecification>,
  @ocaml.doc("<p>The launch configuration used to launch the instance. This value is not available if
            you attached the instance to the Auto Scaling group.</p>")
  @as("LaunchConfigurationName")
  launchConfigurationName: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The last reported health status of this instance. \"Healthy\" means that the instance is
            healthy and should remain in service. \"Unhealthy\" means that the instance is unhealthy
            and Amazon EC2 Auto Scaling should terminate and replace it.</p>")
  @as("HealthStatus")
  healthStatus: xmlStringMaxLen32,
  @ocaml.doc("<p>The lifecycle state for the instance. The <code>Quarantined</code> state is not used.
            For information about lifecycle states, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html\">Instance
                lifecycle</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
        <p>Valid Values: <code>Pending</code> | <code>Pending:Wait</code> |
                <code>Pending:Proceed</code> | <code>Quarantined</code> | <code>InService</code> |
                <code>Terminating</code> | <code>Terminating:Wait</code> |
                <code>Terminating:Proceed</code> | <code>Terminated</code> | <code>Detaching</code>
            | <code>Detached</code> | <code>EnteringStandby</code> | <code>Standby</code> |
                <code>Warmed:Pending</code> | <code>Warmed:Pending:Wait</code> |
                <code>Warmed:Pending:Proceed</code> | <code>Warmed:Terminating</code> |
                <code>Warmed:Terminating:Wait</code> | <code>Warmed:Terminating:Proceed</code> |
                <code>Warmed:Terminated</code> | <code>Warmed:Stopped</code> |
                <code>Warmed:Running</code>
         </p>")
  @as("LifecycleState")
  lifecycleState: xmlStringMaxLen32,
  @ocaml.doc("<p>The Availability Zone for the instance.</p>") @as("AvailabilityZone")
  availabilityZone: xmlStringMaxLen255,
  @ocaml.doc("<p>The name of the Auto Scaling group for the instance.</p>")
  @as("AutoScalingGroupName")
  autoScalingGroupName: xmlStringMaxLen255,
  @ocaml.doc("<p>The instance type of the EC2 instance.</p>") @as("InstanceType")
  instanceType: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The ID of the instance.</p>") @as("InstanceId") instanceId: xmlStringMaxLen19,
}
type alarms = array<alarm>
type adjustmentTypes = array<adjustmentType>
type activities = array<activity>
type predictiveScalingMetricSpecifications = array<predictiveScalingMetricSpecification>
type overrides = array<launchTemplateOverrides>
@ocaml.doc("<p>A <code>GetPredictiveScalingForecast</code> call returns the load forecast for a
            predictive scaling policy. This structure includes the data points for that load
            forecast, along with the timestamps of those data points and the metric specification.
        </p>")
type loadForecast = {
  @ocaml.doc("<p>The metric specification for the load forecast.</p>") @as("MetricSpecification")
  metricSpecification: predictiveScalingMetricSpecification,
  @ocaml.doc("<p>The values of the data points.</p>") @as("Values")
  values: predictiveScalingForecastValues,
  @ocaml.doc("<p>The time stamps for the data points, in UTC format.</p>") @as("Timestamps")
  timestamps: predictiveScalingForecastTimestamps,
}
type instances = array<instance>
@ocaml.doc("<p>Describes an instance refresh for an Auto Scaling group. </p>")
type instanceRefresh = {
  @ocaml.doc("<p>Additional progress details for an Auto Scaling group that has a warm pool.</p>")
  @as("ProgressDetails")
  progressDetails: option<instanceRefreshProgressDetails>,
  @ocaml.doc("<p>The number of instances remaining to update before the instance refresh is
            complete.</p>")
  @as("InstancesToUpdate")
  instancesToUpdate: option<instancesToUpdate>,
  @ocaml.doc("<p>The percentage of the instance refresh that is complete. For each instance
            replacement, Amazon EC2 Auto Scaling tracks the instance's health status and warm-up time. When the
            instance's health status changes to healthy and the specified warm-up time passes, the
            instance is considered updated and is added to the percentage complete.</p>")
  @as("PercentageComplete")
  percentageComplete: option<intPercent>,
  @ocaml.doc("<p>The date and time at which the instance refresh ended.</p>") @as("EndTime")
  endTime: option<timestampType>,
  @ocaml.doc("<p>The date and time at which the instance refresh began.</p>") @as("StartTime")
  startTime: option<timestampType>,
  @ocaml.doc("<p>Provides more details about the current status of the instance refresh. </p>")
  @as("StatusReason")
  statusReason: option<xmlStringMaxLen1023>,
  @ocaml.doc("<p>The current status for the instance refresh operation:</p>
        <ul>
            <li>
                <p>
                  <code>Pending</code> - The request was created, but the operation has not
                    started.</p>
            </li>
            <li>
                <p>
                  <code>InProgress</code> - The operation is in progress.</p>
            </li>
            <li>
                <p>
                  <code>Successful</code> - The operation completed successfully.</p>
            </li>
            <li>
                <p>
                  <code>Failed</code> - The operation failed to complete. You can troubleshoot
                    using the status reason and the scaling activities. </p>
            </li>
            <li>
                <p>
                  <code>Cancelling</code> - An ongoing operation is being cancelled.
                    Cancellation does not roll back any replacements that have already been
                    completed, but it prevents new replacements from being started. </p>
            </li>
            <li>
                <p>
                  <code>Cancelled</code> - The operation is cancelled. </p>
            </li>
         </ul>")
  @as("Status")
  status: option<instanceRefreshStatus>,
  @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
  autoScalingGroupName: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The instance refresh ID.</p>") @as("InstanceRefreshId")
  instanceRefreshId: option<xmlStringMaxLen255>,
}
type filters = array<filter>
@ocaml.doc("<p>Represents a CloudWatch metric of your choosing for a target tracking scaling policy to use
            with Amazon EC2 Auto Scaling.</p>
        <p>To create your customized metric specification:</p>
        <ul>
            <li>
                <p>Add values for each required parameter from CloudWatch. You can use an existing
                    metric, or a new metric that you create. To use your own metric, you must first
                    publish the metric to CloudWatch. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html\">Publish
                        Custom Metrics</a> in the <i>Amazon CloudWatch User
                    Guide</i>.</p>
            </li>
            <li>
                <p>Choose a metric that changes proportionally with capacity. The value of the
                    metric should increase or decrease in inverse proportion to the number of
                    capacity units. That is, the value of the metric should decrease when capacity
                    increases.</p>
            </li>
         </ul>
        <p>For more information about CloudWatch, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html\">Amazon CloudWatch
                Concepts</a>.</p>")
type customizedMetricSpecification = {
  @ocaml.doc("<p>The unit of the metric.</p>") @as("Unit") unit_: option<metricUnit>,
  @ocaml.doc("<p>The statistic of the metric.</p>") @as("Statistic") statistic: metricStatistic,
  @ocaml.doc("<p>The dimensions of the metric.</p>
        <p>Conditional: If you published your metric with dimensions, you must specify the same
            dimensions in your scaling policy.</p>")
  @as("Dimensions")
  dimensions: option<metricDimensions>,
  @ocaml.doc("<p>The namespace of the metric.</p>") @as("Namespace") namespace: metricNamespace,
  @ocaml.doc("<p>The name of the metric.</p>") @as("MetricName") metricName: metricName,
}
type blockDeviceMappings = array<blockDeviceMapping>
type autoScalingInstances = array<autoScalingInstanceDetails>
@ocaml.doc(
  "<p>Represents a target tracking scaling policy configuration to use with Amazon EC2 Auto Scaling.</p>"
)
type targetTrackingConfiguration = {
  @ocaml.doc("<p>Indicates whether scaling in by the target tracking scaling policy is disabled. If
            scaling in is disabled, the target tracking scaling policy doesn't remove instances from
            the Auto Scaling group. Otherwise, the target tracking scaling policy can remove instances from
            the Auto Scaling group. The default is <code>false</code>.</p>")
  @as("DisableScaleIn")
  disableScaleIn: option<disableScaleIn>,
  @ocaml.doc("<p>The target value for the metric.</p>") @as("TargetValue") targetValue: metricScale,
  @ocaml.doc("<p>A customized metric. You must specify either a predefined metric or a customized
            metric.</p>")
  @as("CustomizedMetricSpecification")
  customizedMetricSpecification: option<customizedMetricSpecification>,
  @ocaml.doc("<p>A predefined metric. You must specify either a predefined metric or a customized
            metric.</p>")
  @as("PredefinedMetricSpecification")
  predefinedMetricSpecification: option<predefinedMetricSpecification>,
}
@ocaml.doc(
  "<p>Represents a predictive scaling policy configuration to use with Amazon EC2 Auto Scaling.</p>"
)
type predictiveScalingConfiguration = {
  @ocaml.doc("<p>The size of the capacity buffer to use when the forecast capacity is close to or
            exceeds the maximum capacity. The value is specified as a percentage relative to the
            forecast capacity. For example, if the buffer is 10, this means a 10 percent buffer,
            such that if the forecast capacity is 50, and the maximum capacity is 40, then the
            effective maximum capacity is 55.</p>
        <p>If set to 0, Amazon EC2 Auto Scaling may scale capacity higher than the maximum capacity to equal but
            not exceed forecast capacity. </p>
        <p>Required if the <code>MaxCapacityBreachBehavior</code> property is set to
                <code>IncreaseMaxCapacity</code>, and cannot be used otherwise.</p>")
  @as("MaxCapacityBuffer")
  maxCapacityBuffer: option<predictiveScalingMaxCapacityBuffer>,
  @ocaml.doc("<p>Defines the behavior that should be applied if the forecast capacity approaches or
            exceeds the maximum capacity of the Auto Scaling group. Defaults to
                <code>HonorMaxCapacity</code> if not specified.</p>
        <p>The following are possible values:</p>
        <ul>
            <li>
                <p>
                  <code>HonorMaxCapacity</code> - Amazon EC2 Auto Scaling cannot scale out capacity higher than
                    the maximum capacity. The maximum capacity is enforced as a hard limit. </p>
            </li>
            <li>
                <p>
                  <code>IncreaseMaxCapacity</code> - Amazon EC2 Auto Scaling can scale out capacity higher than
                    the maximum capacity when the forecast capacity is close to or exceeds the
                    maximum capacity. The upper limit is determined by the forecasted capacity and
                    the value for <code>MaxCapacityBuffer</code>.</p>
            </li>
         </ul>")
  @as("MaxCapacityBreachBehavior")
  maxCapacityBreachBehavior: option<predictiveScalingMaxCapacityBreachBehavior>,
  @ocaml.doc("<p>The amount of time, in seconds, by which the instance launch time can be advanced. For
            example, the forecast says to add capacity at 10:00 AM, and you choose to pre-launch
            instances by 5 minutes. In that case, the instances will be launched at 9:55 AM. The
            intention is to give resources time to be provisioned. It can take a few minutes to
            launch an EC2 instance. The actual amount of time required depends on several factors,
            such as the size of the instance and whether there are startup scripts to complete. </p>
        <p>The value must be less than the forecast interval duration of 3600 seconds (60
            minutes). Defaults to 300 seconds if not specified. </p>")
  @as("SchedulingBufferTime")
  schedulingBufferTime: option<predictiveScalingSchedulingBufferTime>,
  @ocaml.doc("<p>The predictive scaling mode. Defaults to <code>ForecastOnly</code> if not
            specified.</p>")
  @as("Mode")
  mode: option<predictiveScalingMode>,
  @ocaml.doc("<p>This structure includes the metrics and target utilization to use for predictive
            scaling. </p>
        <p>This is an array, but we currently only support a single metric specification. That
            is, you can specify a target value and a single metric pair, or a target value and one
            scaling metric and one load metric.</p>")
  @as("MetricSpecifications")
  metricSpecifications: predictiveScalingMetricSpecifications,
}
type loadForecasts = array<loadForecast>
@ocaml.doc("<p>Describes a launch template and overrides. </p>
        <p>You specify these properties as part of a mixed instances policy. </p>
        <p>When you update the launch template or overrides, existing Amazon EC2 instances continue to
            run. When scale out occurs, Amazon EC2 Auto Scaling launches instances to match the new settings. When
            scale in occurs, Amazon EC2 Auto Scaling terminates instances according to the group's termination
            policies.</p>")
type launchTemplate = {
  @ocaml.doc("<p>Any properties that you specify override the same properties in the launch template.
            If not provided, Amazon EC2 Auto Scaling uses the instance type specified in the launch template when
            it launches an instance. </p>")
  @as("Overrides")
  overrides: option<overrides>,
  @ocaml.doc("<p>The launch template to use.</p>") @as("LaunchTemplateSpecification")
  launchTemplateSpecification: option<launchTemplateSpecification>,
}
@ocaml.doc("<p>Describes a launch configuration.</p>")
type launchConfiguration = {
  @ocaml.doc("<p>The metadata options for the instances. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds\">Configuring the Instance Metadata Options</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
  @as("MetadataOptions")
  metadataOptions: option<instanceMetadataOptions>,
  @ocaml.doc("<p>The tenancy of the instance, either <code>default</code> or <code>dedicated</code>. An
            instance with <code>dedicated</code> tenancy runs on isolated, single-tenant hardware
            and can only be launched into a VPC.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html\">Configuring
                instance tenancy with Amazon EC2 Auto Scaling</a> in the
            <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
  @as("PlacementTenancy")
  placementTenancy: option<xmlStringMaxLen64>,
  @ocaml.doc("<p>For Auto Scaling groups that are running in a VPC, specifies whether to assign a public IP
            address to the group's instances. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html\">Launching Auto Scaling instances in a
                VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
  @as("AssociatePublicIpAddress")
  associatePublicIpAddress: option<associatePublicIpAddress>,
  @ocaml.doc("<p>Specifies whether the launch configuration is optimized for EBS I/O
            (<code>true</code>) or not (<code>false</code>). For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html\">Amazon
                EBS-Optimized Instances</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
  @as("EbsOptimized")
  ebsOptimized: option<ebsOptimized>,
  @ocaml.doc("<p>The creation date and time for the launch configuration.</p>") @as("CreatedTime")
  createdTime: timestampType,
  @ocaml.doc("<p>The name or the Amazon Resource Name (ARN) of the instance profile associated with the
            IAM role for the instance. The instance profile contains the IAM role. For more
            information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html\">IAM role for applications that run
                on Amazon EC2 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
  @as("IamInstanceProfile")
  iamInstanceProfile: option<xmlStringMaxLen1600>,
  @ocaml.doc("<p>The maximum hourly price to be paid for any Spot Instance launched to fulfill the
            request. Spot Instances are launched when the price you specify exceeds the current Spot
            price. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html\">Requesting Spot
                Instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
  @as("SpotPrice")
  spotPrice: option<spotPrice>,
  @ocaml.doc("<p>Controls whether instances in this group are launched with detailed
            (<code>true</code>) or basic (<code>false</code>) monitoring.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html\">Configure
                Monitoring for Auto Scaling Instances</a> in the
            <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
  @as("InstanceMonitoring")
  instanceMonitoring: option<instanceMonitoring>,
  @ocaml.doc("<p>A block device mapping, which specifies the block devices for the instance. For more
            information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html\">Block Device
                Mapping</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
  @as("BlockDeviceMappings")
  blockDeviceMappings: option<blockDeviceMappings>,
  @ocaml.doc("<p>The ID of the RAM disk associated with the AMI.</p>") @as("RamdiskId")
  ramdiskId: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The ID of the kernel associated with the AMI.</p>") @as("KernelId")
  kernelId: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The instance type for the instances.</p>
        <p>For information about available instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes\">Available
                Instance Types</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
  @as("InstanceType")
  instanceType: xmlStringMaxLen255,
  @ocaml.doc("<p>The user data to make available to the launched EC2 instances. For more information,
            see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html\">Instance metadata and user data</a> (Linux) and <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html\">Instance metadata and
                user data</a> (Windows). If you are using a command line tool, base64-encoding
            is performed for you, and you can load the text from a file. Otherwise, you must provide
            base64-encoded text. User data is limited to 16 KB.</p>")
  @as("UserData")
  userData: option<xmlStringUserData>,
  @ocaml.doc("<p>The IDs of one or more security groups for the VPC specified in
                <code>ClassicLinkVPCId</code>.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html\">ClassicLink</a> in the
                <i>Amazon EC2 User Guide for Linux Instances</i> and <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink\">Linking EC2-Classic
                instances to a VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
  @as("ClassicLinkVPCSecurityGroups")
  classicLinkVPCSecurityGroups: option<classicLinkVPCSecurityGroups>,
  @ocaml.doc("<p>The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. For more
            information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html\">ClassicLink</a> in the
                <i>Amazon EC2 User Guide for Linux Instances</i> and <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink\">Linking EC2-Classic
                instances to a VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
  @as("ClassicLinkVPCId")
  classicLinkVPCId: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>A list that contains the security groups to assign to the instances in the Auto Scaling group.
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html\">Security Groups for Your
                VPC</a> in the <i>Amazon Virtual Private Cloud User
            Guide</i>.</p>")
  @as("SecurityGroups")
  securityGroups: option<securityGroups>,
  @ocaml.doc("<p>The name of the key pair.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html\">Amazon EC2 Key Pairs</a> in the
                <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
  @as("KeyName")
  keyName: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The ID of the Amazon Machine Image (AMI) to use to launch your EC2 instances. For more
            information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html\">Finding an AMI</a> in the
                <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
  @as("ImageId")
  imageId: xmlStringMaxLen255,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the launch configuration.</p>")
  @as("LaunchConfigurationARN")
  launchConfigurationARN: option<resourceName>,
  @ocaml.doc("<p>The name of the launch configuration.</p>") @as("LaunchConfigurationName")
  launchConfigurationName: xmlStringMaxLen255,
}
type instanceRefreshes = array<instanceRefresh>
@ocaml.doc("<p>Describes a scaling policy.</p>")
type scalingPolicy = {
  @ocaml.doc("<p>A predictive scaling policy.</p>") @as("PredictiveScalingConfiguration")
  predictiveScalingConfiguration: option<predictiveScalingConfiguration>,
  @ocaml.doc("<p>Indicates whether the policy is enabled (<code>true</code>) or disabled
                (<code>false</code>).</p>")
  @as("Enabled")
  enabled: option<scalingPolicyEnabled>,
  @ocaml.doc("<p>A target tracking scaling policy.</p>") @as("TargetTrackingConfiguration")
  targetTrackingConfiguration: option<targetTrackingConfiguration>,
  @ocaml.doc("<p>The CloudWatch alarms related to the policy.</p>") @as("Alarms")
  alarms: option<alarms>,
  @ocaml.doc("<p>The estimated time, in seconds, until a newly launched instance can contribute to the
            CloudWatch metrics.</p>")
  @as("EstimatedInstanceWarmup")
  estimatedInstanceWarmup: option<estimatedInstanceWarmup>,
  @ocaml.doc("<p>The aggregation type for the CloudWatch metrics. The valid values are <code>Minimum</code>,
                <code>Maximum</code>, and <code>Average</code>.</p>")
  @as("MetricAggregationType")
  metricAggregationType: option<xmlStringMaxLen32>,
  @ocaml.doc("<p>A set of adjustments that enable you to scale based on the size of the alarm
            breach.</p>")
  @as("StepAdjustments")
  stepAdjustments: option<stepAdjustments>,
  @ocaml.doc("<p>The duration of the policy's cooldown period, in seconds.</p>") @as("Cooldown")
  cooldown: option<cooldown>,
  @ocaml.doc("<p>The amount by which to scale, based on the specified adjustment type. A positive value
            adds to the current capacity while a negative number removes from the current
            capacity.</p>")
  @as("ScalingAdjustment")
  scalingAdjustment: option<policyIncrement>,
  @ocaml.doc("<p>The minimum value to scale by when the adjustment type is
                <code>PercentChangeInCapacity</code>. </p>")
  @as("MinAdjustmentMagnitude")
  minAdjustmentMagnitude: option<minAdjustmentMagnitude>,
  @ocaml.doc("<p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code>
            instead.</p>")
  @as("MinAdjustmentStep")
  minAdjustmentStep: option<minAdjustmentStep>,
  @ocaml.doc("<p>Specifies how the scaling adjustment is interpreted (for example, an absolute number
            or a percentage). The valid values are <code>ChangeInCapacity</code>,
                <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>")
  @as("AdjustmentType")
  adjustmentType: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>One of the following policy types: </p>
        <ul>
            <li>
                <p>
                    <code>TargetTrackingScaling</code>
                </p>
            </li>
            <li>
                <p>
                    <code>StepScaling</code>
                </p>
            </li>
            <li>
                <p>
                  <code>SimpleScaling</code> (default)</p>
            </li>
            <li>
                <p>
                    <code>PredictiveScaling</code>
                </p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html\">Target tracking
                scaling policies</a> and <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html\">Step and simple scaling
                policies</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
  @as("PolicyType")
  policyType: option<xmlStringMaxLen64>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the policy.</p>") @as("PolicyARN")
  policyARN: option<resourceName>,
  @ocaml.doc("<p>The name of the scaling policy.</p>") @as("PolicyName")
  policyName: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
  autoScalingGroupName: option<xmlStringMaxLen255>,
}
@ocaml.doc("<p>Describes a mixed instances policy for an Auto Scaling group. With mixed instances, your Auto Scaling
            group can provision a combination of On-Demand Instances and Spot Instances across
            multiple instance types. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html\">Auto Scaling groups with multiple
                instance types and purchase options</a> in the <i>Amazon EC2 Auto Scaling User
                Guide</i>.</p>
        <p>You can create a mixed instances policy for a new Auto Scaling group, or you can create it for
            an existing group by updating the group to specify <code>MixedInstancesPolicy</code> as
            the top-level property instead of a launch configuration or launch template.</p>")
type mixedInstancesPolicy = {
  @ocaml.doc("<p>Specifies the instances distribution. If not provided, the value for each property in
                <code>InstancesDistribution</code> uses a default value.</p>")
  @as("InstancesDistribution")
  instancesDistribution: option<instancesDistribution>,
  @ocaml.doc("<p>Specifies the launch template to use and optionally the instance types (overrides)
            that are used to provision EC2 instances to fulfill On-Demand and Spot capacities.
            Required when creating a mixed instances policy.</p>")
  @as("LaunchTemplate")
  launchTemplate: option<launchTemplate>,
}
type launchConfigurations = array<launchConfiguration>
type scalingPolicies = array<scalingPolicy>
@ocaml.doc("<p>Describes an Auto Scaling group.</p>")
type autoScalingGroup = {
  @ocaml.doc("<p>The current size of the warm pool.</p>") @as("WarmPoolSize")
  warmPoolSize: option<warmPoolSize>,
  @ocaml.doc("<p>The warm pool for the group.</p>") @as("WarmPoolConfiguration")
  warmPoolConfiguration: option<warmPoolConfiguration>,
  @ocaml.doc("<p>Indicates whether Capacity Rebalancing is enabled.</p>") @as("CapacityRebalance")
  capacityRebalance: option<capacityRebalanceEnabled>,
  @ocaml.doc("<p>The maximum amount of time, in seconds, that an instance can be in service.</p>
        <p>Valid Range: Minimum value of 0.</p>")
  @as("MaxInstanceLifetime")
  maxInstanceLifetime: option<maxInstanceLifetime>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
            call other Amazon Web Services on your behalf.</p>")
  @as("ServiceLinkedRoleARN")
  serviceLinkedRoleARN: option<resourceName>,
  @ocaml.doc("<p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
            when scaling in.</p>")
  @as("NewInstancesProtectedFromScaleIn")
  newInstancesProtectedFromScaleIn: option<instanceProtected>,
  @ocaml.doc("<p>The termination policies for the group.</p>") @as("TerminationPolicies")
  terminationPolicies: option<terminationPolicies>,
  @ocaml.doc("<p>The tags for the group.</p>") @as("Tags") tags: option<tagDescriptionList>,
  @ocaml.doc("<p>The current state of the group when the <a>DeleteAutoScalingGroup</a>
            operation is in progress.</p>")
  @as("Status")
  status: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The metrics enabled for the group.</p>") @as("EnabledMetrics")
  enabledMetrics: option<enabledMetrics>,
  @ocaml.doc("<p>One or more subnet IDs, if applicable, separated by commas.</p>")
  @as("VPCZoneIdentifier")
  vpczoneIdentifier: option<xmlStringMaxLen2047>,
  @ocaml.doc("<p>The name of the placement group into which to launch your instances, if any.</p>")
  @as("PlacementGroup")
  placementGroup: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The suspended processes associated with the group.</p>") @as("SuspendedProcesses")
  suspendedProcesses: option<suspendedProcesses>,
  @ocaml.doc("<p>The date and time the group was created.</p>") @as("CreatedTime")
  createdTime: timestampType,
  @ocaml.doc("<p>The EC2 instances associated with the group.</p>") @as("Instances")
  instances: option<instances>,
  @ocaml.doc("<p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
            of an EC2 instance that has come into service.</p>")
  @as("HealthCheckGracePeriod")
  healthCheckGracePeriod: option<healthCheckGracePeriod>,
  @ocaml.doc("<p>The service to use for the health checks. The valid values are <code>EC2</code> and
                <code>ELB</code>. If you configure an Auto Scaling group to use <code>ELB</code> health
            checks, it considers the instance unhealthy if it fails either the EC2 status checks or
            the load balancer health checks.</p>")
  @as("HealthCheckType")
  healthCheckType: xmlStringMaxLen32,
  @ocaml.doc("<p>The Amazon Resource Names (ARN) of the target groups for your load balancer.</p>")
  @as("TargetGroupARNs")
  targetGroupARNs: option<targetGroupARNs>,
  @ocaml.doc("<p>One or more load balancers associated with the group.</p>")
  @as("LoadBalancerNames")
  loadBalancerNames: option<loadBalancerNames>,
  @ocaml.doc("<p>One or more Availability Zones for the group.</p>") @as("AvailabilityZones")
  availabilityZones: availabilityZones,
  @ocaml.doc("<p>The duration of the default cooldown period, in seconds.</p>")
  @as("DefaultCooldown")
  defaultCooldown: cooldown,
  @ocaml.doc("<p>The predicted capacity of the group when it has a predictive scaling policy.</p>")
  @as("PredictedCapacity")
  predictedCapacity: option<autoScalingGroupPredictedCapacity>,
  @ocaml.doc("<p>The desired size of the group.</p>") @as("DesiredCapacity")
  desiredCapacity: autoScalingGroupDesiredCapacity,
  @ocaml.doc("<p>The maximum size of the group.</p>") @as("MaxSize")
  maxSize: autoScalingGroupMaxSize,
  @ocaml.doc("<p>The minimum size of the group.</p>") @as("MinSize")
  minSize: autoScalingGroupMinSize,
  @ocaml.doc("<p>The mixed instances policy for the group.</p>") @as("MixedInstancesPolicy")
  mixedInstancesPolicy: option<mixedInstancesPolicy>,
  @ocaml.doc("<p>The launch template for the group.</p>") @as("LaunchTemplate")
  launchTemplate: option<launchTemplateSpecification>,
  @ocaml.doc("<p>The name of the associated launch configuration.</p>")
  @as("LaunchConfigurationName")
  launchConfigurationName: option<xmlStringMaxLen255>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Auto Scaling group.</p>")
  @as("AutoScalingGroupARN")
  autoScalingGroupARN: option<resourceName>,
  @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
  autoScalingGroupName: xmlStringMaxLen255,
}
type autoScalingGroups = array<autoScalingGroup>
@ocaml.doc("<fullname>Amazon EC2 Auto Scaling</fullname>
        
        
        
        
        
        
        <p>Amazon EC2 Auto Scaling is designed to automatically launch or terminate EC2 instances
            based on user-defined scaling policies, scheduled actions, and health checks.</p>
        <p>For more information about Amazon EC2 Auto Scaling, see the <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html\">Amazon EC2 Auto Scaling User Guide</a>. For information about granting IAM users required
            permissions for calls to Amazon EC2 Auto Scaling, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/APIReference/ec2-auto-scaling-api-permissions.html\">Granting
                IAM users required permissions for Amazon EC2 Auto Scaling resources</a> in the
                <i>Amazon EC2 Auto Scaling API Reference</i>.</p>")
module SetInstanceHealth = {
  type t
  type request = {
    @ocaml.doc("<p>If the Auto Scaling group of the specified instance has a <code>HealthCheckGracePeriod</code>
            specified for the group, by default, this call respects the grace period. Set this to
                <code>False</code>, to have the call not respect the grace period associated with
            the group.</p>
        
        <p>For more information about the health check grace
            period, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html\">CreateAutoScalingGroup</a> in the <i>Amazon EC2 Auto Scaling API
            Reference</i>.</p>")
    @as("ShouldRespectGracePeriod")
    shouldRespectGracePeriod: option<shouldRespectGracePeriod>,
    @ocaml.doc("<p>The health status of the instance. Set to <code>Healthy</code> to have the instance
            remain in service. Set to <code>Unhealthy</code> to have the instance be out of service.
            Amazon EC2 Auto Scaling terminates and replaces the unhealthy instance.</p>")
    @as("HealthStatus")
    healthStatus: xmlStringMaxLen32,
    @ocaml.doc("<p>The ID of the instance.</p>") @as("InstanceId") instanceId: xmlStringMaxLen19,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "SetInstanceHealthCommand"
  let make = (~healthStatus, ~instanceId, ~shouldRespectGracePeriod=?, ()) =>
    new({
      shouldRespectGracePeriod: shouldRespectGracePeriod,
      healthStatus: healthStatus,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetDesiredCapacity = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before initiating
            a scaling activity to set your Auto Scaling group to its new capacity. By default, Amazon EC2 Auto Scaling does
            not honor the cooldown period during manual scaling activities.</p>")
    @as("HonorCooldown")
    honorCooldown: option<honorCooldown>,
    @ocaml.doc("<p>The desired capacity is the initial capacity of the Auto Scaling group after this operation
            completes and the capacity it attempts to maintain.</p>")
    @as("DesiredCapacity")
    desiredCapacity: autoScalingGroupDesiredCapacity,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "SetDesiredCapacityCommand"
  let make = (~desiredCapacity, ~autoScalingGroupName, ~honorCooldown=?, ()) =>
    new({
      honorCooldown: honorCooldown,
      desiredCapacity: desiredCapacity,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RecordLifecycleActionHeartbeat = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the instance.</p>") @as("InstanceId")
    instanceId: option<xmlStringMaxLen19>,
    @ocaml.doc("<p>A token that uniquely identifies a specific lifecycle action associated with an
            instance. Amazon EC2 Auto Scaling sends this token to the notification target that you specified when
            you created the lifecycle hook.</p>")
    @as("LifecycleActionToken")
    lifecycleActionToken: option<lifecycleActionToken>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: resourceName,
    @ocaml.doc("<p>The name of the lifecycle hook.</p>") @as("LifecycleHookName")
    lifecycleHookName: asciiStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "RecordLifecycleActionHeartbeatCommand"
  let make = (
    ~autoScalingGroupName,
    ~lifecycleHookName,
    ~instanceId=?,
    ~lifecycleActionToken=?,
    (),
  ) =>
    new({
      instanceId: instanceId,
      lifecycleActionToken: lifecycleActionToken,
      autoScalingGroupName: autoScalingGroupName,
      lifecycleHookName: lifecycleHookName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutWarmPool = {
  type t
  type request = {
    @ocaml.doc("<p>Sets the instance state to transition to after the lifecycle actions are complete.
            Default is <code>Stopped</code>.</p>")
    @as("PoolState")
    poolState: option<warmPoolState>,
    @ocaml.doc("<p>Specifies the minimum number of instances to maintain in the warm pool. This helps you
            to ensure that there is always a certain number of warmed instances available to handle
            traffic spikes. Defaults to 0 if not specified.</p>")
    @as("MinSize")
    minSize: option<warmPoolMinSize>,
    @ocaml.doc("<p>Specifies the maximum number of instances that are allowed to be in the warm pool or
            in any state except <code>Terminated</code> for the Auto Scaling group. This is an optional
            property. Specify it only if you do not want the warm pool size to be determined by the
            difference between the group's maximum capacity and its desired capacity. </p>
        <important>
            <p>If a value for <code>MaxGroupPreparedCapacity</code> is not specified, Amazon EC2 Auto Scaling
                launches and maintains the difference between the group's maximum capacity and its
                desired capacity. If you specify a value for <code>MaxGroupPreparedCapacity</code>,
                Amazon EC2 Auto Scaling uses the difference between the <code>MaxGroupPreparedCapacity</code> and
                the desired capacity instead. </p>
            <p>The size of the warm pool is dynamic. Only when
                    <code>MaxGroupPreparedCapacity</code> and <code>MinSize</code> are set to the
                same value does the warm pool have an absolute size.</p>
        </important>
        <p>If the desired capacity of the Auto Scaling group is higher than the
                <code>MaxGroupPreparedCapacity</code>, the capacity of the warm pool is 0, unless
            you specify a value for <code>MinSize</code>. To remove a value that you previously set,
            include the property but specify -1 for the value. </p>")
    @as("MaxGroupPreparedCapacity")
    maxGroupPreparedCapacity: option<maxGroupPreparedCapacity>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "PutWarmPoolCommand"
  let make = (~autoScalingGroupName, ~poolState=?, ~minSize=?, ~maxGroupPreparedCapacity=?, ()) =>
    new({
      poolState: poolState,
      minSize: minSize,
      maxGroupPreparedCapacity: maxGroupPreparedCapacity,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutScheduledUpdateGroupAction = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the time zone for a cron expression. If a time zone is not provided, UTC is
            used by default. </p>
        <p>Valid values are the canonical names of the IANA time zones, derived from the IANA
            Time Zone Database (such as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For
            more information, see <a href=\"https://en.wikipedia.org/wiki/List_of_tz_database_time_zones\">https://en.wikipedia.org/wiki/List_of_tz_database_time_zones</a>.</p>")
    @as("TimeZone")
    timeZone: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
            action runs and the capacity it attempts to maintain. It can scale beyond this capacity
            if you add more scaling conditions. </p>")
    @as("DesiredCapacity")
    desiredCapacity: option<autoScalingGroupDesiredCapacity>,
    @ocaml.doc("<p>The maximum size of the Auto Scaling group.</p>") @as("MaxSize")
    maxSize: option<autoScalingGroupMaxSize>,
    @ocaml.doc("<p>The minimum size of the Auto Scaling group.</p>") @as("MinSize")
    minSize: option<autoScalingGroupMinSize>,
    @ocaml.doc("<p>The recurring schedule for this action. This format consists of five fields separated
            by white spaces: [Minute] [Hour] [Day_of_Month] [Month_of_Year] [Day_of_Week]. The value
            must be in quotes (for example, <code>\"30 0 1 1,6,12 *\"</code>). For more information
            about this format, see <a href=\"http://crontab.org\">Crontab</a>.</p>
        <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
                <code>Recurrence</code>, they form the boundaries of when the recurring action
            starts and stops.</p>
        <p>Cron expressions use Universal Coordinated Time (UTC) by default.</p>")
    @as("Recurrence")
    recurrence: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>The date and time for the recurring schedule to end, in UTC.</p>") @as("EndTime")
    endTime: option<timestampType>,
    @ocaml.doc("<p>The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ format in UTC/GMT
            only and in quotes (for example, <code>\"2019-06-01T00:00:00Z\"</code>).</p>
        <p>If you specify <code>Recurrence</code> and <code>StartTime</code>, Amazon EC2 Auto Scaling performs
            the action at this time, and then performs the action based on the specified
            recurrence.</p>
        <p>If you try to schedule your action in the past, Amazon EC2 Auto Scaling returns an error
            message.</p>")
    @as("StartTime")
    startTime: option<timestampType>,
    @ocaml.doc("<p>This parameter is no longer used.</p>") @as("Time") time: option<timestampType>,
    @ocaml.doc("<p>The name of this scaling action.</p>") @as("ScheduledActionName")
    scheduledActionName: xmlStringMaxLen255,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "PutScheduledUpdateGroupActionCommand"
  let make = (
    ~scheduledActionName,
    ~autoScalingGroupName,
    ~timeZone=?,
    ~desiredCapacity=?,
    ~maxSize=?,
    ~minSize=?,
    ~recurrence=?,
    ~endTime=?,
    ~startTime=?,
    ~time=?,
    (),
  ) =>
    new({
      timeZone: timeZone,
      desiredCapacity: desiredCapacity,
      maxSize: maxSize,
      minSize: minSize,
      recurrence: recurrence,
      endTime: endTime,
      startTime: startTime,
      time: time,
      scheduledActionName: scheduledActionName,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutLifecycleHook = {
  type t
  type request = {
    @ocaml.doc("<p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses
            or if an unexpected failure occurs. This parameter can be either <code>CONTINUE</code>
            or <code>ABANDON</code>. The default value is <code>ABANDON</code>.</p>")
    @as("DefaultResult")
    defaultResult: option<lifecycleActionResult>,
    @ocaml.doc("<p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. The
            range is from <code>30</code> to <code>7200</code> seconds. The default value is
                <code>3600</code> seconds (1 hour).</p>
        <p>If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the action that you specified in
            the <code>DefaultResult</code> parameter. You can prevent the lifecycle hook from timing
            out by calling the <a>RecordLifecycleActionHeartbeat</a> API.</p>")
    @as("HeartbeatTimeout")
    heartbeatTimeout: option<heartbeatTimeout>,
    @ocaml.doc("<p>Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to
            the notification target.</p>")
    @as("NotificationMetadata")
    notificationMetadata: option<xmlStringMaxLen1023>,
    @ocaml.doc("<p>The ARN of the notification target that Amazon EC2 Auto Scaling uses to notify you when an instance
            is in the transition state for the lifecycle hook. This target can be either an SQS
            queue or an SNS topic.</p>
        <p>If you specify an empty string, this overrides the current ARN.</p>
        <p>This operation uses the JSON format when sending notifications to an Amazon SQS queue,
            and an email key-value pair format when sending notifications to an Amazon SNS
            topic.</p>
        <p>When you specify a notification target, Amazon EC2 Auto Scaling sends it a test message. Test
            messages contain the following additional key-value pair: <code>\"Event\":
                \"autoscaling:TEST_NOTIFICATION\"</code>.</p>")
    @as("NotificationTargetARN")
    notificationTargetARN: option<notificationTargetResourceName>,
    @ocaml.doc("<p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified
            notification target, for example, an Amazon SNS topic or an Amazon SQS queue.</p>
        <p>Required for new lifecycle hooks, but optional when updating existing hooks.</p>")
    @as("RoleARN")
    roleARN: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>The instance state to which you want to attach the lifecycle hook. The valid values
            are:</p>
        <ul>
            <li>
                <p>autoscaling:EC2_INSTANCE_LAUNCHING</p>
            </li>
            <li>
                <p>autoscaling:EC2_INSTANCE_TERMINATING</p>
            </li>
         </ul>
        <p>Required for new lifecycle hooks, but optional when updating existing hooks.</p>")
    @as("LifecycleTransition")
    lifecycleTransition: option<lifecycleTransition>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
    @ocaml.doc("<p>The name of the lifecycle hook.</p>") @as("LifecycleHookName")
    lifecycleHookName: asciiStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "PutLifecycleHookCommand"
  let make = (
    ~autoScalingGroupName,
    ~lifecycleHookName,
    ~defaultResult=?,
    ~heartbeatTimeout=?,
    ~notificationMetadata=?,
    ~notificationTargetARN=?,
    ~roleARN=?,
    ~lifecycleTransition=?,
    (),
  ) =>
    new({
      defaultResult: defaultResult,
      heartbeatTimeout: heartbeatTimeout,
      notificationMetadata: notificationMetadata,
      notificationTargetARN: notificationTargetARN,
      roleARN: roleARN,
      lifecycleTransition: lifecycleTransition,
      autoScalingGroupName: autoScalingGroupName,
      lifecycleHookName: lifecycleHookName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ExecutePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The breach threshold for the alarm.</p>
        <p>Required if the policy type is <code>StepScaling</code> and not supported
            otherwise.</p>")
    @as("BreachThreshold")
    breachThreshold: option<metricScale>,
    @ocaml.doc("<p>The metric value to compare to <code>BreachThreshold</code>. This enables you to
            execute a policy of type <code>StepScaling</code> and determine which step adjustment to
            use. For example, if the breach threshold is 50 and you want to use a step adjustment
            with a lower bound of 0 and an upper bound of 10, you can set the metric value to
            59.</p>
        <p>If you specify a metric value that doesn't correspond to a step adjustment for the
            policy, the call returns an error.</p>
        <p>Required if the policy type is <code>StepScaling</code> and not supported
            otherwise.</p>")
    @as("MetricValue")
    metricValue: option<metricScale>,
    @ocaml.doc("<p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before executing
            the policy.</p>
        <p>Valid only if the policy type is <code>SimpleScaling</code>. For more information, see
                <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html\">Scaling
                cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("HonorCooldown")
    honorCooldown: option<honorCooldown>,
    @ocaml.doc("<p>The name or ARN of the policy.</p>") @as("PolicyName") policyName: resourceName,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: option<xmlStringMaxLen255>,
  }

  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "ExecutePolicyCommand"
  let make = (
    ~policyName,
    ~breachThreshold=?,
    ~metricValue=?,
    ~honorCooldown=?,
    ~autoScalingGroupName=?,
    (),
  ) =>
    new({
      breachThreshold: breachThreshold,
      metricValue: metricValue,
      honorCooldown: honorCooldown,
      policyName: policyName,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeAccountLimits = {
  type t

  type response = {
    @ocaml.doc("<p>The current number of launch configurations for your account.</p>")
    @as("NumberOfLaunchConfigurations")
    numberOfLaunchConfigurations: option<numberOfLaunchConfigurations>,
    @ocaml.doc("<p>The current number of groups for your account.</p>")
    @as("NumberOfAutoScalingGroups")
    numberOfAutoScalingGroups: option<numberOfAutoScalingGroups>,
    @ocaml.doc("<p>The maximum number of launch configurations allowed for your account. The default is
            200 launch configurations per Region.</p>")
    @as("MaxNumberOfLaunchConfigurations")
    maxNumberOfLaunchConfigurations: option<maxNumberOfLaunchConfigurations>,
    @ocaml.doc("<p>The maximum number of groups allowed for your account. The default is 200 groups per
            Region.</p>")
    @as("MaxNumberOfAutoScalingGroups")
    maxNumberOfAutoScalingGroups: option<maxNumberOfAutoScalingGroups>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: unit => t = "DescribeAccountLimitsCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWarmPool = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies that the warm pool is to be deleted along with all of its associated
            instances, without waiting for all instances to be terminated. This parameter also
            deletes any outstanding lifecycle actions associated with the warm pool
            instances.</p>")
    @as("ForceDelete")
    forceDelete: option<forceDelete>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "DeleteWarmPoolCommand"
  let make = (~autoScalingGroupName, ~forceDelete=?, ()) =>
    new({forceDelete: forceDelete, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteScheduledAction = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the action to delete.</p>") @as("ScheduledActionName")
    scheduledActionName: xmlStringMaxLen255,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DeleteScheduledActionCommand"
  let make = (~scheduledActionName, ~autoScalingGroupName, ()) =>
    new({scheduledActionName: scheduledActionName, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the policy.</p>") @as("PolicyName")
    policyName: resourceName,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: option<xmlStringMaxLen255>,
  }

  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "DeletePolicyCommand"
  let make = (~policyName, ~autoScalingGroupName=?, ()) =>
    new({policyName: policyName, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNotificationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (Amazon SNS)
            topic.</p>")
    @as("TopicARN")
    topicARN: xmlStringMaxLen255,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DeleteNotificationConfigurationCommand"
  let make = (~topicARN, ~autoScalingGroupName, ()) =>
    new({topicARN: topicARN, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLifecycleHook = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
    @ocaml.doc("<p>The name of the lifecycle hook.</p>") @as("LifecycleHookName")
    lifecycleHookName: asciiStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DeleteLifecycleHookCommand"
  let make = (~autoScalingGroupName, ~lifecycleHookName, ()) =>
    new({autoScalingGroupName: autoScalingGroupName, lifecycleHookName: lifecycleHookName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLaunchConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the launch configuration.</p>") @as("LaunchConfigurationName")
    launchConfigurationName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DeleteLaunchConfigurationCommand"
  let make = (~launchConfigurationName, ()) =>
    new({launchConfigurationName: launchConfigurationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAutoScalingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies that the group is to be deleted along with all instances associated with the
            group, without waiting for all instances to be terminated. This parameter also deletes
            any outstanding lifecycle actions associated with the group.</p>")
    @as("ForceDelete")
    forceDelete: option<forceDelete>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DeleteAutoScalingGroupCommand"
  let make = (~autoScalingGroupName, ~forceDelete=?, ()) =>
    new({forceDelete: forceDelete, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CompleteLifecycleAction = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the instance.</p>") @as("InstanceId")
    instanceId: option<xmlStringMaxLen19>,
    @ocaml.doc("<p>The action for the group to take. This parameter can be either <code>CONTINUE</code>
            or <code>ABANDON</code>.</p>")
    @as("LifecycleActionResult")
    lifecycleActionResult: lifecycleActionResult,
    @ocaml.doc("<p>A universally unique identifier (UUID) that identifies a specific lifecycle action
            associated with an instance. Amazon EC2 Auto Scaling sends this token to the notification target you
            specified when you created the lifecycle hook.</p>")
    @as("LifecycleActionToken")
    lifecycleActionToken: option<lifecycleActionToken>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: resourceName,
    @ocaml.doc("<p>The name of the lifecycle hook.</p>") @as("LifecycleHookName")
    lifecycleHookName: asciiStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "CompleteLifecycleActionCommand"
  let make = (
    ~lifecycleActionResult,
    ~autoScalingGroupName,
    ~lifecycleHookName,
    ~instanceId=?,
    ~lifecycleActionToken=?,
    (),
  ) =>
    new({
      instanceId: instanceId,
      lifecycleActionResult: lifecycleActionResult,
      lifecycleActionToken: lifecycleActionToken,
      autoScalingGroupName: autoScalingGroupName,
      lifecycleHookName: lifecycleHookName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelInstanceRefresh = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }
  type response = {
    @ocaml.doc("<p>The instance refresh ID.</p>") @as("InstanceRefreshId")
    instanceRefreshId: option<xmlStringMaxLen255>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "CancelInstanceRefreshCommand"
  let make = (~autoScalingGroupName, ()) => new({autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TerminateInstanceInAutoScalingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether terminating the instance also decrements the size of the Auto Scaling
            group.</p>")
    @as("ShouldDecrementDesiredCapacity")
    shouldDecrementDesiredCapacity: shouldDecrementDesiredCapacity,
    @ocaml.doc("<p>The ID of the instance.</p>") @as("InstanceId") instanceId: xmlStringMaxLen19,
  }
  type response = {
    @ocaml.doc("<p>A scaling activity.</p>") @as("Activity") activity: option<activity>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "TerminateInstanceInAutoScalingGroupCommand"
  let make = (~shouldDecrementDesiredCapacity, ~instanceId, ()) =>
    new({shouldDecrementDesiredCapacity: shouldDecrementDesiredCapacity, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SuspendProcesses = {
  type t
  type request = {
    @ocaml.doc("<p>One or more of the following processes:</p>
        <ul>
            <li>
                <p>
                    <code>Launch</code>
                </p>
            </li>
            <li>
                <p>
                    <code>Terminate</code>
                </p>
            </li>
            <li>
                <p>
                    <code>AddToLoadBalancer</code>
                </p>
            </li>
            <li>
                <p>
                    <code>AlarmNotification</code>
                </p>
            </li>
            <li>
                <p>
                    <code>AZRebalance</code>
                </p>
            </li>
            <li>
                <p>
                    <code>HealthCheck</code>
                </p>
            </li>
            <li>
                <p>
                    <code>InstanceRefresh</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ReplaceUnhealthy</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ScheduledActions</code>
                </p>
            </li>
         </ul>
        <p>If you omit this parameter, all processes are specified.</p>")
    @as("ScalingProcesses")
    scalingProcesses: option<processNames>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "SuspendProcessesCommand"
  let make = (~autoScalingGroupName, ~scalingProcesses=?, ()) =>
    new({scalingProcesses: scalingProcesses, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetInstanceProtection = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling
            in.</p>")
    @as("ProtectedFromScaleIn")
    protectedFromScaleIn: protectedFromScaleIn,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
    @ocaml.doc("<p>One or more instance IDs. You can specify up to 50 instances.</p>")
    @as("InstanceIds")
    instanceIds: instanceIds,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "SetInstanceProtectionCommand"
  let make = (~protectedFromScaleIn, ~autoScalingGroupName, ~instanceIds, ()) =>
    new({
      protectedFromScaleIn: protectedFromScaleIn,
      autoScalingGroupName: autoScalingGroupName,
      instanceIds: instanceIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResumeProcesses = {
  type t
  type request = {
    @ocaml.doc("<p>One or more of the following processes:</p>
        <ul>
            <li>
                <p>
                    <code>Launch</code>
                </p>
            </li>
            <li>
                <p>
                    <code>Terminate</code>
                </p>
            </li>
            <li>
                <p>
                    <code>AddToLoadBalancer</code>
                </p>
            </li>
            <li>
                <p>
                    <code>AlarmNotification</code>
                </p>
            </li>
            <li>
                <p>
                    <code>AZRebalance</code>
                </p>
            </li>
            <li>
                <p>
                    <code>HealthCheck</code>
                </p>
            </li>
            <li>
                <p>
                    <code>InstanceRefresh</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ReplaceUnhealthy</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ScheduledActions</code>
                </p>
            </li>
         </ul>
        <p>If you omit this parameter, all processes are specified.</p>")
    @as("ScalingProcesses")
    scalingProcesses: option<processNames>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "ResumeProcessesCommand"
  let make = (~autoScalingGroupName, ~scalingProcesses=?, ()) =>
    new({scalingProcesses: scalingProcesses, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutNotificationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The type of event that causes the notification to be sent. To query the notification
            types supported by Amazon EC2 Auto Scaling, call the <a>DescribeAutoScalingNotificationTypes</a> API.</p>")
    @as("NotificationTypes")
    notificationTypes: autoScalingNotificationTypes,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (Amazon SNS)
            topic.</p>")
    @as("TopicARN")
    topicARN: xmlStringMaxLen255,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "PutNotificationConfigurationCommand"
  let make = (~notificationTypes, ~topicARN, ~autoScalingGroupName, ()) =>
    new({
      notificationTypes: notificationTypes,
      topicARN: topicARN,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableMetricsCollection = {
  type t
  type request = {
    @ocaml.doc("<p>The granularity to associate with the metrics to collect. The only valid value is
                <code>1Minute</code>.</p>")
    @as("Granularity")
    granularity: xmlStringMaxLen255,
    @ocaml.doc("<p>Specifies which group-level metrics to start collecting. You can specify one or more
            of the following metrics:</p>
        <ul>
            <li>
                <p>
                    <code>GroupMinSize</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupMaxSize</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupInServiceInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupPendingInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupStandbyInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTerminatingInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTotalInstances</code>
                </p>
            </li>
         </ul>
        <p>The instance weighting feature supports the following additional metrics: </p>
        <ul>
            <li>
                <p>
                    <code>GroupInServiceCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupPendingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupStandbyCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTerminatingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTotalCapacity</code>
                </p>
            </li>
         </ul>
        <p>The warm pools feature supports the following additional metrics: </p>
        <ul>
            <li>
                <p>
                    <code>WarmPoolDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolWarmedCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolPendingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolTerminatingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolTotalCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupAndWarmPoolDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupAndWarmPoolTotalCapacity</code>
                </p>
            </li>
         </ul>
        <p>If you omit this parameter, all metrics are enabled. </p>")
    @as("Metrics")
    metrics: option<metrics>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "EnableMetricsCollectionCommand"
  let make = (~granularity, ~autoScalingGroupName, ~metrics=?, ()) =>
    new({granularity: granularity, metrics: metrics, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableMetricsCollection = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies one or more of the following metrics:</p>
        <ul>
            <li>
                <p>
                    <code>GroupMinSize</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupMaxSize</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupInServiceInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupPendingInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupStandbyInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTerminatingInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTotalInstances</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupInServiceCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupPendingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupStandbyCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTerminatingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupTotalCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolWarmedCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolPendingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolTerminatingCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>WarmPoolTotalCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupAndWarmPoolDesiredCapacity</code>
                </p>
            </li>
            <li>
                <p>
                    <code>GroupAndWarmPoolTotalCapacity</code>
                </p>
            </li>
         </ul>
        <p>If you omit this parameter, all metrics are disabled. </p>")
    @as("Metrics")
    metrics: option<metrics>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DisableMetricsCollectionCommand"
  let make = (~autoScalingGroupName, ~metrics=?, ()) =>
    new({metrics: metrics, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachLoadBalancers = {
  type t
  type request = {
    @ocaml.doc("<p>The names of the load balancers. You can specify up to 10 load balancers.</p>")
    @as("LoadBalancerNames")
    loadBalancerNames: loadBalancerNames,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DetachLoadBalancersCommand"
  let make = (~loadBalancerNames, ~autoScalingGroupName, ()) =>
    new({loadBalancerNames: loadBalancerNames, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachLoadBalancerTargetGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target
            groups.</p>")
    @as("TargetGroupARNs")
    targetGroupARNs: targetGroupARNs,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DetachLoadBalancerTargetGroupsCommand"
  let make = (~targetGroupARNs, ~autoScalingGroupName, ()) =>
    new({targetGroupARNs: targetGroupARNs, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeTerminationPolicyTypes = {
  type t

  type response = {
    @ocaml.doc("<p>The termination policies supported by Amazon EC2 Auto Scaling: <code>OldestInstance</code>,
                <code>OldestLaunchConfiguration</code>, <code>NewestInstance</code>,
                <code>ClosestToNextInstanceHour</code>, <code>Default</code>,
                <code>OldestLaunchTemplate</code>, and <code>AllocationStrategy</code>.</p>")
    @as("TerminationPolicyTypes")
    terminationPolicyTypes: option<terminationPolicies>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: unit => t = "DescribeTerminationPolicyTypesCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLifecycleHookTypes = {
  type t

  type response = {
    @ocaml.doc("<p>The lifecycle hook types.</p>") @as("LifecycleHookTypes")
    lifecycleHookTypes: option<autoScalingNotificationTypes>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: unit => t = "DescribeLifecycleHookTypesCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAutoScalingNotificationTypes = {
  type t

  type response = {
    @ocaml.doc("<p>The notification types.</p>") @as("AutoScalingNotificationTypes")
    autoScalingNotificationTypes: option<autoScalingNotificationTypes>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: unit => t = "DescribeAutoScalingNotificationTypesCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachLoadBalancers = {
  type t
  type request = {
    @ocaml.doc("<p>The names of the load balancers. You can specify up to 10 load balancers.</p>")
    @as("LoadBalancerNames")
    loadBalancerNames: loadBalancerNames,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "AttachLoadBalancersCommand"
  let make = (~loadBalancerNames, ~autoScalingGroupName, ()) =>
    new({loadBalancerNames: loadBalancerNames, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AttachLoadBalancerTargetGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target
            groups. To get the ARN of a target group, use the Elastic Load Balancing <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html\">DescribeTargetGroups</a> API operation.</p>")
    @as("TargetGroupARNs")
    targetGroupARNs: targetGroupARNs,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "AttachLoadBalancerTargetGroupsCommand"
  let make = (~targetGroupARNs, ~autoScalingGroupName, ()) =>
    new({targetGroupARNs: targetGroupARNs, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AttachInstances = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
    @ocaml.doc("<p>The IDs of the instances. You can specify up to 20 instances.</p>")
    @as("InstanceIds")
    instanceIds: option<instanceIds>,
  }

  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "AttachInstancesCommand"
  let make = (~autoScalingGroupName, ~instanceIds=?, ()) =>
    new({autoScalingGroupName: autoScalingGroupName, instanceIds: instanceIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartInstanceRefresh = {
  type t
  type request = {
    @ocaml.doc("<p>Set of preferences associated with the instance refresh request.</p>
        <p>If not provided, the default values are used. For <code>MinHealthyPercentage</code>,
            the default value is <code>90</code>. For <code>InstanceWarmup</code>, the default is to
            use the value specified for the health check grace period for the Auto Scaling group.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_RefreshPreferences.html\">RefreshPreferences</a> in the <i>Amazon EC2 Auto Scaling API
            Reference</i>.</p>")
    @as("Preferences")
    preferences: option<refreshPreferences>,
    @ocaml.doc("<p>The strategy to use for the instance refresh. The only valid value is
                <code>Rolling</code>.</p>
        <p>A rolling update is an update that is applied to all instances in an Auto Scaling group until
            all instances have been updated. A rolling update can fail due to failed health checks
            or if instances are on standby or are protected from scale in. If the rolling update
            process fails, any instances that were already replaced are not rolled back to their
            previous configuration. </p>")
    @as("Strategy")
    strategy: option<refreshStrategy>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }
  type response = {
    @ocaml.doc("<p>A unique ID for tracking the progress of the request.</p>")
    @as("InstanceRefreshId")
    instanceRefreshId: option<xmlStringMaxLen255>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "StartInstanceRefreshCommand"
  let make = (~autoScalingGroupName, ~preferences=?, ~strategy=?, ()) =>
    new({preferences: preferences, strategy: strategy, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExitStandby = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
    @ocaml.doc("<p>The IDs of the instances. You can specify up to 20 instances.</p>")
    @as("InstanceIds")
    instanceIds: option<instanceIds>,
  }
  type response = {
    @ocaml.doc(
      "<p>The activities related to moving instances out of <code>Standby</code> mode.</p>"
    )
    @as("Activities")
    activities: option<activities>,
  }
  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "ExitStandbyCommand"
  let make = (~autoScalingGroupName, ~instanceIds=?, ()) =>
    new({autoScalingGroupName: autoScalingGroupName, instanceIds: instanceIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnterStandby = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to decrement the desired capacity of the Auto Scaling group by the number of
            instances moved to <code>Standby</code> mode.</p>")
    @as("ShouldDecrementDesiredCapacity")
    shouldDecrementDesiredCapacity: shouldDecrementDesiredCapacity,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
    @ocaml.doc("<p>The IDs of the instances. You can specify up to 20 instances.</p>")
    @as("InstanceIds")
    instanceIds: option<instanceIds>,
  }
  type response = {
    @ocaml.doc("<p>The activities related to moving instances into <code>Standby</code> mode.</p>")
    @as("Activities")
    activities: option<activities>,
  }
  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "EnterStandbyCommand"
  let make = (~shouldDecrementDesiredCapacity, ~autoScalingGroupName, ~instanceIds=?, ()) =>
    new({
      shouldDecrementDesiredCapacity: shouldDecrementDesiredCapacity,
      autoScalingGroupName: autoScalingGroupName,
      instanceIds: instanceIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachInstances = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether the Auto Scaling group decrements the desired capacity value by the number
            of instances detached.</p>")
    @as("ShouldDecrementDesiredCapacity")
    shouldDecrementDesiredCapacity: shouldDecrementDesiredCapacity,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
    @ocaml.doc("<p>The IDs of the instances. You can specify up to 20 instances.</p>")
    @as("InstanceIds")
    instanceIds: option<instanceIds>,
  }
  type response = {
    @ocaml.doc(
      "<p>The activities related to detaching the instances from the Auto Scaling group.</p>"
    )
    @as("Activities")
    activities: option<activities>,
  }
  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "DetachInstancesCommand"
  let make = (~shouldDecrementDesiredCapacity, ~autoScalingGroupName, ~instanceIds=?, ()) =>
    new({
      shouldDecrementDesiredCapacity: shouldDecrementDesiredCapacity,
      autoScalingGroupName: autoScalingGroupName,
      instanceIds: instanceIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScheduledActions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call. The default value is
                <code>50</code> and the maximum value is <code>100</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The latest scheduled start time to return. If scheduled action names are provided,
            this parameter is ignored.</p>")
    @as("EndTime")
    endTime: option<timestampType>,
    @ocaml.doc("<p>The earliest scheduled start time to return. If scheduled action names are provided,
            this parameter is ignored.</p>")
    @as("StartTime")
    startTime: option<timestampType>,
    @ocaml.doc("<p>The names of one or more scheduled actions. If you omit this parameter, all scheduled
            actions are described. If you specify an unknown scheduled action, it is ignored with no
            error.</p>
        <p>Array Members: Maximum number of 50 actions.</p>")
    @as("ScheduledActionNames")
    scheduledActionNames: option<scheduledActionNames>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: option<xmlStringMaxLen255>,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that the response contains more items than can be returned in
            a single response. To receive additional items, specify this string for the
                <code>NextToken</code> value when requesting the next set of items. This value is
            null when there are no more items to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The scheduled actions.</p>") @as("ScheduledUpdateGroupActions")
    scheduledUpdateGroupActions: option<scheduledUpdateGroupActions>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DescribeScheduledActionsCommand"
  let make = (
    ~maxRecords=?,
    ~nextToken=?,
    ~endTime=?,
    ~startTime=?,
    ~scheduledActionNames=?,
    ~autoScalingGroupName=?,
    (),
  ) =>
    new({
      maxRecords: maxRecords,
      nextToken: nextToken,
      endTime: endTime,
      startTime: startTime,
      scheduledActionNames: scheduledActionNames,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScalingProcessTypes = {
  type t

  type response = {
    @ocaml.doc("<p>The names of the process types.</p>") @as("Processes")
    processes: option<processes>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: unit => t = "DescribeScalingProcessTypesCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScalingActivities = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The maximum number of items to return with this call. The default value is
                <code>100</code> and the maximum value is <code>100</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc(
      "<p>Indicates whether to include scaling activity from deleted Auto Scaling groups.</p>"
    )
    @as("IncludeDeletedGroups")
    includeDeletedGroups: option<includeDeletedGroups>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>The activity IDs of the desired scaling activities. If you omit this parameter, all
            activities for the past six weeks are described. If unknown activities are requested,
            they are ignored with no error. If you specify an Auto Scaling group, the results are limited to
            that group.</p>
        <p>Array Members: Maximum number of 50 IDs.</p>")
    @as("ActivityIds")
    activityIds: option<activityIds>,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that the response contains more items than can be returned in
            a single response. To receive additional items, specify this string for the
                <code>NextToken</code> value when requesting the next set of items. This value is
            null when there are no more items to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The scaling activities. Activities are sorted by start time. Activities still in
            progress are described first.</p>")
    @as("Activities")
    activities: activities,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DescribeScalingActivitiesCommand"
  let make = (
    ~nextToken=?,
    ~maxRecords=?,
    ~includeDeletedGroups=?,
    ~autoScalingGroupName=?,
    ~activityIds=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxRecords: maxRecords,
      includeDeletedGroups: includeDeletedGroups,
      autoScalingGroupName: autoScalingGroupName,
      activityIds: activityIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNotificationConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call. The default value is
                <code>50</code> and the maximum value is <code>100</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupNames")
    autoScalingGroupNames: option<autoScalingGroupNames>,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that the response contains more items than can be returned in
            a single response. To receive additional items, specify this string for the
                <code>NextToken</code> value when requesting the next set of items. This value is
            null when there are no more items to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The notification configurations.</p>") @as("NotificationConfigurations")
    notificationConfigurations: notificationConfigurations,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DescribeNotificationConfigurationsCommand"
  let make = (~maxRecords=?, ~nextToken=?, ~autoScalingGroupNames=?, ()) =>
    new({
      maxRecords: maxRecords,
      nextToken: nextToken,
      autoScalingGroupNames: autoScalingGroupNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMetricCollectionTypes = {
  type t

  type response = {
    @ocaml.doc("<p>The granularities for the metrics.</p>") @as("Granularities")
    granularities: option<metricGranularityTypes>,
    @ocaml.doc("<p>One or more metrics.</p>") @as("Metrics") metrics: option<metricCollectionTypes>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: unit => t = "DescribeMetricCollectionTypesCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoadBalancers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call. The default value is
                <code>100</code> and the maximum value is <code>100</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that the response contains more items than can be returned in
            a single response. To receive additional items, specify this string for the
                <code>NextToken</code> value when requesting the next set of items. This value is
            null when there are no more items to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The load balancers.</p>") @as("LoadBalancers")
    loadBalancers: option<loadBalancerStates>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DescribeLoadBalancersCommand"
  let make = (~autoScalingGroupName, ~maxRecords=?, ~nextToken=?, ()) =>
    new({maxRecords: maxRecords, nextToken: nextToken, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoadBalancerTargetGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call. The default value is
                <code>100</code> and the maximum value is <code>100</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that the response contains more items than can be returned in
            a single response. To receive additional items, specify this string for the
                <code>NextToken</code> value when requesting the next set of items. This value is
            null when there are no more items to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>Information about the target groups.</p>") @as("LoadBalancerTargetGroups")
    loadBalancerTargetGroups: option<loadBalancerTargetGroupStates>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DescribeLoadBalancerTargetGroupsCommand"
  let make = (~autoScalingGroupName, ~maxRecords=?, ~nextToken=?, ()) =>
    new({maxRecords: maxRecords, nextToken: nextToken, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLifecycleHooks = {
  type t
  type request = {
    @ocaml.doc("<p>The names of one or more lifecycle hooks. If you omit this parameter, all lifecycle
            hooks are described.</p>")
    @as("LifecycleHookNames")
    lifecycleHookNames: option<lifecycleHookNames>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }
  type response = {
    @ocaml.doc("<p>The lifecycle hooks for the specified group.</p>") @as("LifecycleHooks")
    lifecycleHooks: option<lifecycleHooks>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DescribeLifecycleHooksCommand"
  let make = (~autoScalingGroupName, ~lifecycleHookNames=?, ()) =>
    new({lifecycleHookNames: lifecycleHookNames, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAdjustmentTypes = {
  type t

  type response = {
    @ocaml.doc("<p>The policy adjustment types.</p>") @as("AdjustmentTypes")
    adjustmentTypes: option<adjustmentTypes>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: unit => t = "DescribeAdjustmentTypesCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTags = {
  type t
  type request = {@ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: tags}

  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "DeleteTagsCommand"
  let make = (~tags, ()) => new({tags: tags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateOrUpdateTags = {
  type t
  type request = {@ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: tags}

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "CreateOrUpdateTagsCommand"
  let make = (~tags, ()) => new({tags: tags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module BatchPutScheduledUpdateGroupAction = {
  type t
  type request = {
    @ocaml.doc("<p>One or more scheduled actions. The maximum number allowed is 50.</p>")
    @as("ScheduledUpdateGroupActions")
    scheduledUpdateGroupActions: scheduledUpdateGroupActionRequests,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }
  type response = {
    @ocaml.doc("<p>The names of the scheduled actions that could not be created or updated, including an
            error message.</p>")
    @as("FailedScheduledUpdateGroupActions")
    failedScheduledUpdateGroupActions: option<failedScheduledUpdateGroupActionRequests>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "BatchPutScheduledUpdateGroupActionCommand"
  let make = (~scheduledUpdateGroupActions, ~autoScalingGroupName, ()) =>
    new({
      scheduledUpdateGroupActions: scheduledUpdateGroupActions,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteScheduledAction = {
  type t
  type request = {
    @ocaml.doc("<p>The names of the scheduled actions to delete. The maximum number allowed is 50.
        </p>")
    @as("ScheduledActionNames")
    scheduledActionNames: scheduledActionNames,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }
  type response = {
    @ocaml.doc("<p>The names of the scheduled actions that could not be deleted, including an error
            message.</p>")
    @as("FailedScheduledActions")
    failedScheduledActions: option<failedScheduledUpdateGroupActionRequests>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "BatchDeleteScheduledActionCommand"
  let make = (~scheduledActionNames, ~autoScalingGroupName, ()) =>
    new({scheduledActionNames: scheduledActionNames, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWarmPool = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of instances to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The maximum number of instances to return with this call. The maximum value is
                <code>50</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The instances that are currently in the warm pool.</p>") @as("Instances")
    instances: option<instances>,
    @ocaml.doc("<p>The warm pool configuration details. </p>") @as("WarmPoolConfiguration")
    warmPoolConfiguration: option<warmPoolConfiguration>,
  }
  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "DescribeWarmPoolCommand"
  let make = (~autoScalingGroupName, ~nextToken=?, ~maxRecords=?, ()) =>
    new({nextToken: nextToken, maxRecords: maxRecords, autoScalingGroupName: autoScalingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTags = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call. The default value is
                <code>50</code> and the maximum value is <code>100</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>One or more filters to scope the tags to return. The maximum number of filters per
            filter type (for example, <code>auto-scaling-group</code>) is 1000.</p>")
    @as("Filters")
    filters: option<filters>,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that the response contains more items than can be returned in
            a single response. To receive additional items, specify this string for the
                <code>NextToken</code> value when requesting the next set of items. This value is
            null when there are no more items to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagDescriptionList>,
  }
  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "DescribeTagsCommand"
  let make = (~maxRecords=?, ~nextToken=?, ~filters=?, ()) =>
    new({maxRecords: maxRecords, nextToken: nextToken, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAutoScalingInstances = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The maximum number of items to return with this call. The default value is
                <code>50</code> and the maximum value is <code>50</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The IDs of the instances. If you omit this parameter, all Auto Scaling instances are
            described. If you specify an ID that does not exist, it is ignored with no error.</p>
        <p>Array Members: Maximum number of 50 items.</p>")
    @as("InstanceIds")
    instanceIds: option<instanceIds>,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that the response contains more items than can be returned in
            a single response. To receive additional items, specify this string for the
                <code>NextToken</code> value when requesting the next set of items. This value is
            null when there are no more items to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The instances.</p>") @as("AutoScalingInstances")
    autoScalingInstances: option<autoScalingInstances>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DescribeAutoScalingInstancesCommand"
  let make = (~nextToken=?, ~maxRecords=?, ~instanceIds=?, ()) =>
    new({nextToken: nextToken, maxRecords: maxRecords, instanceIds: instanceIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLaunchConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata options for the instances. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds\">Configuring the Instance Metadata Options</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("MetadataOptions")
    metadataOptions: option<instanceMetadataOptions>,
    @ocaml.doc("<p>The tenancy of the instance. An instance with <code>dedicated</code> tenancy runs on
            isolated, single-tenant hardware and can only be launched into a VPC.</p>
        <p>To launch dedicated instances into a shared tenancy VPC (a VPC with the instance
            placement tenancy attribute set to <code>default</code>), you must set the value of this
            parameter to <code>dedicated</code>.</p>
        <p>If you specify <code>PlacementTenancy</code>, you must specify at least one subnet for
                <code>VPCZoneIdentifier</code> when you create your group.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html\">Configuring
                instance tenancy with Amazon EC2 Auto Scaling</a> in the
            <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
        <p>Valid Values: <code>default</code> | <code>dedicated</code>
        </p>")
    @as("PlacementTenancy")
    placementTenancy: option<xmlStringMaxLen64>,
    @ocaml.doc("<p>For Auto Scaling groups that are running in a virtual private cloud (VPC), specifies whether
            to assign a public IP address to the group's instances. If you specify
            <code>true</code>, each instance in the Auto Scaling group receives a unique public IP address.
            For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html\">Launching Auto Scaling instances in a
                VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
        <p>If you specify this parameter, you must specify at least one subnet for
                <code>VPCZoneIdentifier</code> when you create your group.</p>
        <note>
            <p>If the instance is launched into a default subnet, the default is to assign a
                public IP address, unless you disabled the option to assign a public IP address on
                the subnet. If the instance is launched into a nondefault subnet, the default is not
                to assign a public IP address, unless you enabled the option to assign a public IP
                address on the subnet.</p>
        </note>")
    @as("AssociatePublicIpAddress")
    associatePublicIpAddress: option<associatePublicIpAddress>,
    @ocaml.doc("<p>Specifies whether the launch configuration is optimized for EBS I/O
            (<code>true</code>) or not (<code>false</code>). The optimization provides dedicated
            throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O
            performance. This optimization is not available with all instance types. Additional fees
            are incurred when you enable EBS optimization for an instance type that is not
            EBS-optimized by default. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html\">Amazon EBS-Optimized
                Instances</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
        <p>The default value is <code>false</code>.</p>")
    @as("EbsOptimized")
    ebsOptimized: option<ebsOptimized>,
    @ocaml.doc("<p>The name or the Amazon Resource Name (ARN) of the instance profile associated with the
            IAM role for the instance. The instance profile contains the IAM role.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html\">IAM role for applications that run
                on Amazon EC2 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("IamInstanceProfile")
    iamInstanceProfile: option<xmlStringMaxLen1600>,
    @ocaml.doc("<p>The maximum hourly price to be paid for any Spot Instance launched to fulfill the
            request. Spot Instances are launched when the price you specify exceeds the current Spot
            price. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html\">Requesting Spot
                Instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
        <note>
            <p>When you change your maximum price by creating a new launch configuration, running
                instances will continue to run as long as the maximum price for those running
                instances is higher than the current Spot price.</p>
        </note>")
    @as("SpotPrice")
    spotPrice: option<spotPrice>,
    @ocaml.doc("<p>Controls whether instances in this group are launched with detailed
            (<code>true</code>) or basic (<code>false</code>) monitoring.</p>
        <p>The default value is <code>true</code> (enabled).</p>
        <important>
            <p>When detailed monitoring is enabled, Amazon CloudWatch generates metrics every minute and
                your account is charged a fee. When you disable detailed monitoring, CloudWatch generates
                metrics every 5 minutes. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html\">Configure
                    Monitoring for Auto Scaling Instances</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
        </important>")
    @as("InstanceMonitoring")
    instanceMonitoring: option<instanceMonitoring>,
    @ocaml.doc("<p>A block device mapping, which specifies the block devices for the instance. You can
            specify virtual devices and EBS volumes. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html\">Block Device
                Mapping</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
    @as("BlockDeviceMappings")
    blockDeviceMappings: option<blockDeviceMappings>,
    @ocaml.doc("<p>The ID of the RAM disk to select.</p>") @as("RamdiskId")
    ramdiskId: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>The ID of the kernel associated with the AMI.</p>") @as("KernelId")
    kernelId: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>Specifies the instance type of the EC2 instance.</p>
        <p>For information about available instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes\">Available
                Instance Types</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
        <p>If you do not specify <code>InstanceId</code>, you must specify
                <code>InstanceType</code>.</p>")
    @as("InstanceType")
    instanceType: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>The ID of the instance to use to create the launch configuration. The new launch
            configuration derives attributes from the instance, except for the block device
            mapping.</p>
        <p>To create a launch configuration with a block device mapping or override any other
            instance attributes, specify them as part of the same request.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html\">Creating a launch
                configuration using an EC2 instance</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
        <p>If you do not specify <code>InstanceId</code>, you must specify both
                <code>ImageId</code> and <code>InstanceType</code>.</p>")
    @as("InstanceId")
    instanceId: option<xmlStringMaxLen19>,
    @ocaml.doc("<p>The user data to make available to the launched EC2 instances. For more information,
            see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html\">Instance metadata and user data</a> (Linux) and <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html\">Instance metadata and
                user data</a> (Windows). If you are using a command line tool, base64-encoding
            is performed for you, and you can load the text from a file. Otherwise, you must provide
            base64-encoded text. User data is limited to 16 KB.</p>")
    @as("UserData")
    userData: option<xmlStringUserData>,
    @ocaml.doc("<p>The IDs of one or more security groups for the specified ClassicLink-enabled VPC. For
            more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html\">ClassicLink</a> in the
                <i>Amazon EC2 User Guide for Linux Instances</i> and <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink\">Linking EC2-Classic
                instances to a VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
        <p>If you specify the <code>ClassicLinkVPCId</code> parameter, you must specify this
            parameter.</p>")
    @as("ClassicLinkVPCSecurityGroups")
    classicLinkVPCSecurityGroups: option<classicLinkVPCSecurityGroups>,
    @ocaml.doc("<p>The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. For more
            information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html\">ClassicLink</a> in the
                <i>Amazon EC2 User Guide for Linux Instances</i> and <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink\">Linking EC2-Classic
                instances to a VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
        <p>This parameter can only be used if you are launching EC2-Classic instances.</p>")
    @as("ClassicLinkVPCId")
    classicLinkVPCId: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>A list that contains the security groups to assign to the instances in the Auto Scaling
            group.</p>
        <p>[EC2-VPC] Specify the security group IDs. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html\">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud
                User Guide</i>.</p>
        <p>[EC2-Classic] Specify either the security group names or the security group IDs. For
            more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html\">Amazon EC2 Security
                Groups</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
    @as("SecurityGroups")
    securityGroups: option<securityGroups>,
    @ocaml.doc("<p>The name of the key pair. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html\">Amazon EC2 Key Pairs</a> in the
                <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
    @as("KeyName")
    keyName: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>The ID of the Amazon Machine Image (AMI) that was assigned during registration. For
            more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html\">Finding an AMI</a> in the
                <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
        <p>If you do not specify <code>InstanceId</code>, you must specify
            <code>ImageId</code>.</p>")
    @as("ImageId")
    imageId: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>The name of the launch configuration. This name must be unique per Region per
            account.</p>")
    @as("LaunchConfigurationName")
    launchConfigurationName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "CreateLaunchConfigurationCommand"
  let make = (
    ~launchConfigurationName,
    ~metadataOptions=?,
    ~placementTenancy=?,
    ~associatePublicIpAddress=?,
    ~ebsOptimized=?,
    ~iamInstanceProfile=?,
    ~spotPrice=?,
    ~instanceMonitoring=?,
    ~blockDeviceMappings=?,
    ~ramdiskId=?,
    ~kernelId=?,
    ~instanceType=?,
    ~instanceId=?,
    ~userData=?,
    ~classicLinkVPCSecurityGroups=?,
    ~classicLinkVPCId=?,
    ~securityGroups=?,
    ~keyName=?,
    ~imageId=?,
    (),
  ) =>
    new({
      metadataOptions: metadataOptions,
      placementTenancy: placementTenancy,
      associatePublicIpAddress: associatePublicIpAddress,
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      spotPrice: spotPrice,
      instanceMonitoring: instanceMonitoring,
      blockDeviceMappings: blockDeviceMappings,
      ramdiskId: ramdiskId,
      kernelId: kernelId,
      instanceType: instanceType,
      instanceId: instanceId,
      userData: userData,
      classicLinkVPCSecurityGroups: classicLinkVPCSecurityGroups,
      classicLinkVPCId: classicLinkVPCId,
      securityGroups: securityGroups,
      keyName: keyName,
      imageId: imageId,
      launchConfigurationName: launchConfigurationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutScalingPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>A predictive scaling policy. Provides support for only predefined metrics.</p>
        <p>Predictive scaling works with CPU utilization, network in/out, and the Application
            Load Balancer request count.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredictiveScalingConfiguration.html\">PredictiveScalingConfiguration</a> in the <i>Amazon EC2 Auto Scaling API
                Reference</i>.</p>
        <p>Required if the policy type is <code>PredictiveScaling</code>.</p>")
    @as("PredictiveScalingConfiguration")
    predictiveScalingConfiguration: option<predictiveScalingConfiguration>,
    @ocaml.doc("<p>Indicates whether the scaling policy is enabled or disabled. The default is enabled.
            For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enable-disable-scaling-policy.html\">Disabling a
                scaling policy for an Auto Scaling group</a> in the
            <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("Enabled")
    enabled: option<scalingPolicyEnabled>,
    @ocaml.doc("<p>A target tracking scaling policy. Provides support for predefined or customized
            metrics.</p>
        <p>The following predefined metrics are available:</p>
        <ul>
            <li>
                <p>
                    <code>ASGAverageCPUUtilization</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ASGAverageNetworkIn</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ASGAverageNetworkOut</code>
                </p>
            </li>
            <li>
                <p>
                    <code>ALBRequestCountPerTarget</code>
                </p>
            </li>
         </ul>
        <p>If you specify <code>ALBRequestCountPerTarget</code> for the metric, you must specify
            the <code>ResourceLabel</code> parameter with the
                <code>PredefinedMetricSpecification</code>.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html\">TargetTrackingConfiguration</a> in the <i>Amazon EC2 Auto Scaling API
                Reference</i>.</p>
        <p>Required if the policy type is <code>TargetTrackingScaling</code>.</p>")
    @as("TargetTrackingConfiguration")
    targetTrackingConfiguration: option<targetTrackingConfiguration>,
    @ocaml.doc("<p>The estimated time, in seconds, until a newly launched instance can contribute to the
            CloudWatch metrics. If not provided, the default is to use the value from the default cooldown
            period for the Auto Scaling group.</p>
        <p>Valid only if the policy type is <code>TargetTrackingScaling</code> or
                <code>StepScaling</code>.</p>")
    @as("EstimatedInstanceWarmup")
    estimatedInstanceWarmup: option<estimatedInstanceWarmup>,
    @ocaml.doc("<p>A set of adjustments that enable you to scale based on the size of the alarm
            breach.</p>
        <p>Required if the policy type is <code>StepScaling</code>. (Not used with any other
            policy type.) </p>")
    @as("StepAdjustments")
    stepAdjustments: option<stepAdjustments>,
    @ocaml.doc("<p>The aggregation type for the CloudWatch metrics. The valid values are <code>Minimum</code>,
                <code>Maximum</code>, and <code>Average</code>. If the aggregation type is null, the
            value is treated as <code>Average</code>.</p>
        <p>Valid only if the policy type is <code>StepScaling</code>.</p>")
    @as("MetricAggregationType")
    metricAggregationType: option<xmlStringMaxLen32>,
    @ocaml.doc("<p>The duration of the policy's cooldown period, in seconds. When a cooldown period is
            specified here, it overrides the default cooldown period defined for the Auto Scaling
            group.</p>
        <p>Valid only if the policy type is <code>SimpleScaling</code>. For more information, see
                <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html\">Scaling
                cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("Cooldown")
    cooldown: option<cooldown>,
    @ocaml.doc("<p>The amount by which to scale, based on the specified adjustment type. A positive value
            adds to the current capacity while a negative number removes from the current capacity.
            For exact capacity, you must specify a positive value.</p>
        <p>Required if the policy type is <code>SimpleScaling</code>. (Not used with any other
            policy type.) </p>")
    @as("ScalingAdjustment")
    scalingAdjustment: option<policyIncrement>,
    @ocaml.doc("<p>The minimum value to scale by when the adjustment type is
                <code>PercentChangeInCapacity</code>. For example, suppose that you create a step
            scaling policy to scale out an Auto Scaling group by 25 percent and you specify a
                <code>MinAdjustmentMagnitude</code> of 2. If the group has 4 instances and the
            scaling policy is performed, 25 percent of 4 is 1. However, because you specified a
                <code>MinAdjustmentMagnitude</code> of 2, Amazon EC2 Auto Scaling scales out the group by 2
            instances.</p>
        <p>Valid only if the policy type is <code>StepScaling</code> or
                <code>SimpleScaling</code>. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment\">Scaling adjustment types</a> in the <i>Amazon EC2 Auto Scaling User
            Guide</i>.</p>
        <note>
            <p>Some Auto Scaling groups use instance weights. In this case, set the
                    <code>MinAdjustmentMagnitude</code> to a value that is at least as large as your
                largest instance weight.</p>
        </note>")
    @as("MinAdjustmentMagnitude")
    minAdjustmentMagnitude: option<minAdjustmentMagnitude>,
    @ocaml.doc("<p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code>
            instead.</p>")
    @as("MinAdjustmentStep")
    minAdjustmentStep: option<minAdjustmentStep>,
    @ocaml.doc("<p>Specifies how the scaling adjustment is interpreted (for example, an absolute number
            or a percentage). The valid values are <code>ChangeInCapacity</code>,
                <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
        <p>Required if the policy type is <code>StepScaling</code> or <code>SimpleScaling</code>.
            For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment\">Scaling adjustment types</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("AdjustmentType")
    adjustmentType: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>One of the following policy types: </p>
        <ul>
            <li>
                <p>
                    <code>TargetTrackingScaling</code>
                </p>
            </li>
            <li>
                <p>
                    <code>StepScaling</code>
                </p>
            </li>
            <li>
                <p>
                  <code>SimpleScaling</code> (default)</p>
            </li>
            <li>
                <p>
                    <code>PredictiveScaling</code>
                </p>
            </li>
         </ul>")
    @as("PolicyType")
    policyType: option<xmlStringMaxLen64>,
    @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: xmlStringMaxLen255,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }
  @ocaml.doc("<p>Contains the output of PutScalingPolicy.</p>")
  type response = {
    @ocaml.doc("<p>The CloudWatch alarms created for the target tracking scaling policy.</p>")
    @as("Alarms")
    alarms: option<alarms>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the policy.</p>") @as("PolicyARN")
    policyARN: option<resourceName>,
  }
  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "PutScalingPolicyCommand"
  let make = (
    ~policyName,
    ~autoScalingGroupName,
    ~predictiveScalingConfiguration=?,
    ~enabled=?,
    ~targetTrackingConfiguration=?,
    ~estimatedInstanceWarmup=?,
    ~stepAdjustments=?,
    ~metricAggregationType=?,
    ~cooldown=?,
    ~scalingAdjustment=?,
    ~minAdjustmentMagnitude=?,
    ~minAdjustmentStep=?,
    ~adjustmentType=?,
    ~policyType=?,
    (),
  ) =>
    new({
      predictiveScalingConfiguration: predictiveScalingConfiguration,
      enabled: enabled,
      targetTrackingConfiguration: targetTrackingConfiguration,
      estimatedInstanceWarmup: estimatedInstanceWarmup,
      stepAdjustments: stepAdjustments,
      metricAggregationType: metricAggregationType,
      cooldown: cooldown,
      scalingAdjustment: scalingAdjustment,
      minAdjustmentMagnitude: minAdjustmentMagnitude,
      minAdjustmentStep: minAdjustmentStep,
      adjustmentType: adjustmentType,
      policyType: policyType,
      policyName: policyName,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPredictiveScalingForecast = {
  type t
  type request = {
    @ocaml.doc("<p>The exclusive end time of the time range for the forecast data to get. The maximum
            time duration between the start and end time is 30 days. </p>
        <p>Although this parameter can accept a date and time that is more than two days in the
            future, the availability of forecast data has limits. Amazon EC2 Auto Scaling only issues forecasts for
            periods of two days in advance.</p>")
    @as("EndTime")
    endTime: timestampType,
    @ocaml.doc("<p>The inclusive start time of the time range for the forecast data to get. At most, the
            date and time can be one year before the current date and time.</p>")
    @as("StartTime")
    startTime: timestampType,
    @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: xmlStringMaxLen255,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }
  type response = {
    @ocaml.doc("<p>The time the forecast was made.</p>") @as("UpdateTime")
    updateTime: timestampType,
    @ocaml.doc("<p>The capacity forecast.</p>") @as("CapacityForecast")
    capacityForecast: capacityForecast,
    @ocaml.doc("<p>The load forecast.</p>") @as("LoadForecast") loadForecast: loadForecasts,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "GetPredictiveScalingForecastCommand"
  let make = (~endTime, ~startTime, ~policyName, ~autoScalingGroupName, ()) =>
    new({
      endTime: endTime,
      startTime: startTime,
      policyName: policyName,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceRefreshes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call. The default value is
                <code>50</code> and the maximum value is <code>100</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>One or more instance refresh IDs.</p>") @as("InstanceRefreshIds")
    instanceRefreshIds: option<instanceRefreshIds>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that the response contains more items than can be returned in
            a single response. To receive additional items, specify this string for the
                <code>NextToken</code> value when requesting the next set of items. This value is
            null when there are no more items to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The instance refreshes for the specified group.</p>") @as("InstanceRefreshes")
    instanceRefreshes: option<instanceRefreshes>,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DescribeInstanceRefreshesCommand"
  let make = (~autoScalingGroupName, ~maxRecords=?, ~nextToken=?, ~instanceRefreshIds=?, ()) =>
    new({
      maxRecords: maxRecords,
      nextToken: nextToken,
      instanceRefreshIds: instanceRefreshIds,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAutoScalingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Enables or disables Capacity Rebalancing. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/capacity-rebalance.html\">Amazon EC2 Auto Scaling Capacity Rebalancing</a> in the
            <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("CapacityRebalance")
    capacityRebalance: option<capacityRebalanceEnabled>,
    @ocaml.doc("<p>The maximum amount of time, in seconds, that an instance can be in service. The
            default is null. If specified, the value must be either 0 or a number equal to or
            greater than 86,400 seconds (1 day). To clear a previously set value, specify a new
            value of 0. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html\">Replacing Auto Scaling
                instances based on maximum instance lifetime</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("MaxInstanceLifetime")
    maxInstanceLifetime: option<maxInstanceLifetime>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
            call other Amazon Web Services on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html\">Service-linked
                roles</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("ServiceLinkedRoleARN")
    serviceLinkedRoleARN: option<resourceName>,
    @ocaml.doc("<p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
            when scaling in. For more information about preventing instances from terminating on
            scale in, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection\">Instance scale-in protection</a> in the
            <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("NewInstancesProtectedFromScaleIn")
    newInstancesProtectedFromScaleIn: option<instanceProtected>,
    @ocaml.doc("<p>A policy or a list of policies that are used to select the instances to terminate. The
            policies are executed in the order that you list them. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html\">Controlling which Auto Scaling instances terminate during scale in</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("TerminationPolicies")
    terminationPolicies: option<terminationPolicies>,
    @ocaml.doc("<p>A comma-separated list of subnet IDs for a virtual private cloud (VPC). If you specify
                <code>VPCZoneIdentifier</code> with <code>AvailabilityZones</code>, the subnets that
            you specify for this parameter must reside in those Availability Zones.</p>")
    @as("VPCZoneIdentifier")
    vpczoneIdentifier: option<xmlStringMaxLen2047>,
    @ocaml.doc("<p>The name of an existing placement group into which to launch your instances, if any. A
            placement group is a logical grouping of instances within a single Availability Zone.
            You cannot specify multiple Availability Zones and a placement group. For more
            information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html\">Placement Groups</a> in the
                <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
    @as("PlacementGroup")
    placementGroup: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
            of an EC2 instance that has come into service. The default value is <code>0</code>. For
            more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period\">Health
                check grace period</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
        <p>Conditional: Required if you are adding an <code>ELB</code> health check.</p>")
    @as("HealthCheckGracePeriod")
    healthCheckGracePeriod: option<healthCheckGracePeriod>,
    @ocaml.doc("<p>The service to use for the health checks. The valid values are <code>EC2</code> and
                <code>ELB</code>. If you configure an Auto Scaling group to use <code>ELB</code> health
            checks, it considers the instance unhealthy if it fails either the EC2 status checks or
            the load balancer health checks.</p>")
    @as("HealthCheckType")
    healthCheckType: option<xmlStringMaxLen32>,
    @ocaml.doc("<p>One or more Availability Zones for the group.</p>") @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
    @ocaml.doc("<p>The amount of time, in seconds, after a scaling activity completes before another
            scaling activity can start. The default value is <code>300</code>. This setting applies
            when using simple scaling policies, but not when using other scaling policies or
            scheduled scaling. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html\">Scaling cooldowns for Amazon EC2 Auto Scaling</a>
            in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("DefaultCooldown")
    defaultCooldown: option<cooldown>,
    @ocaml.doc("<p>The desired capacity is the initial capacity of the Auto Scaling group after this operation
            completes and the capacity it attempts to maintain. This number must be greater than or
            equal to the minimum size of the group and less than or equal to the maximum size of the
            group.</p>")
    @as("DesiredCapacity")
    desiredCapacity: option<autoScalingGroupDesiredCapacity>,
    @ocaml.doc("<p>The maximum size of the Auto Scaling group.</p>
        <note>
            <p>With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to
                go above <code>MaxSize</code> to meet your capacity requirements. In this event,
                Amazon EC2 Auto Scaling will never go above <code>MaxSize</code> by more than your largest instance
                weight (weights that define how many units each instance contributes to the desired
                capacity of the group).</p>
        </note>")
    @as("MaxSize")
    maxSize: option<autoScalingGroupMaxSize>,
    @ocaml.doc("<p>The minimum size of the Auto Scaling group.</p>") @as("MinSize")
    minSize: option<autoScalingGroupMinSize>,
    @ocaml.doc("<p>An embedded object that specifies a mixed instances policy. When you make changes to
            an existing policy, all optional properties are left unchanged if not specified. For
            more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html\">Auto Scaling groups with multiple
                instance types and purchase options</a> in the <i>Amazon EC2 Auto Scaling User
                Guide</i>.</p>")
    @as("MixedInstancesPolicy")
    mixedInstancesPolicy: option<mixedInstancesPolicy>,
    @ocaml.doc("<p>The launch template and version to use to specify the updates. If you specify
                <code>LaunchTemplate</code> in your update request, you can't specify
                <code>LaunchConfigurationName</code> or <code>MixedInstancesPolicy</code>.</p>")
    @as("LaunchTemplate")
    launchTemplate: option<launchTemplateSpecification>,
    @ocaml.doc("<p>The name of the launch configuration. If you specify
                <code>LaunchConfigurationName</code> in your update request, you can't specify
                <code>LaunchTemplate</code> or <code>MixedInstancesPolicy</code>.</p>")
    @as("LaunchConfigurationName")
    launchConfigurationName: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "UpdateAutoScalingGroupCommand"
  let make = (
    ~autoScalingGroupName,
    ~capacityRebalance=?,
    ~maxInstanceLifetime=?,
    ~serviceLinkedRoleARN=?,
    ~newInstancesProtectedFromScaleIn=?,
    ~terminationPolicies=?,
    ~vpczoneIdentifier=?,
    ~placementGroup=?,
    ~healthCheckGracePeriod=?,
    ~healthCheckType=?,
    ~availabilityZones=?,
    ~defaultCooldown=?,
    ~desiredCapacity=?,
    ~maxSize=?,
    ~minSize=?,
    ~mixedInstancesPolicy=?,
    ~launchTemplate=?,
    ~launchConfigurationName=?,
    (),
  ) =>
    new({
      capacityRebalance: capacityRebalance,
      maxInstanceLifetime: maxInstanceLifetime,
      serviceLinkedRoleARN: serviceLinkedRoleARN,
      newInstancesProtectedFromScaleIn: newInstancesProtectedFromScaleIn,
      terminationPolicies: terminationPolicies,
      vpczoneIdentifier: vpczoneIdentifier,
      placementGroup: placementGroup,
      healthCheckGracePeriod: healthCheckGracePeriod,
      healthCheckType: healthCheckType,
      availabilityZones: availabilityZones,
      defaultCooldown: defaultCooldown,
      desiredCapacity: desiredCapacity,
      maxSize: maxSize,
      minSize: minSize,
      mixedInstancesPolicy: mixedInstancesPolicy,
      launchTemplate: launchTemplate,
      launchConfigurationName: launchConfigurationName,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeLaunchConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call. The default value is
                <code>50</code> and the maximum value is <code>100</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The launch configuration names. If you omit this parameter, all launch configurations
            are described.</p>
        <p>Array Members: Maximum number of 50 items.</p>")
    @as("LaunchConfigurationNames")
    launchConfigurationNames: option<launchConfigurationNames>,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that the response contains more items than can be returned in
            a single response. To receive additional items, specify this string for the
                <code>NextToken</code> value when requesting the next set of items. This value is
            null when there are no more items to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The launch configurations.</p>") @as("LaunchConfigurations")
    launchConfigurations: launchConfigurations,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DescribeLaunchConfigurationsCommand"
  let make = (~maxRecords=?, ~nextToken=?, ~launchConfigurationNames=?, ()) =>
    new({
      maxRecords: maxRecords,
      nextToken: nextToken,
      launchConfigurationNames: launchConfigurationNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAutoScalingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum amount of time, in seconds, that an instance can be in service. The
            default is null. If specified, the value must be either 0 or a number equal to or
            greater than 86,400 seconds (1 day). For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html\">Replacing Auto Scaling instances based on maximum instance lifetime</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("MaxInstanceLifetime")
    maxInstanceLifetime: option<maxInstanceLifetime>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
            call other Amazon Web Services on your behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role
            named AWSServiceRoleForAutoScaling, which it creates if it does not exist. For more
            information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html\">Service-linked
                roles</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("ServiceLinkedRoleARN")
    serviceLinkedRoleARN: option<resourceName>,
    @ocaml.doc("<p>One or more tags. You can tag your Auto Scaling group and propagate the tags to the Amazon EC2
            instances it launches. Tags are not propagated to Amazon EBS volumes. To add tags to Amazon EBS
            volumes, specify the tags in a launch template but use caution. If the launch template
            specifies an instance tag with a key that is also specified for the Auto Scaling group, Amazon EC2 Auto Scaling
            overrides the value of that instance tag with the value specified by the Auto Scaling group. For
            more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html\">Tagging Auto Scaling groups and
                instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>One or more lifecycle hooks for the group, which specify actions to perform when
            Amazon EC2 Auto Scaling launches or terminates instances.</p>")
    @as("LifecycleHookSpecificationList")
    lifecycleHookSpecificationList: option<lifecycleHookSpecifications>,
    @ocaml.doc("<p>Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity Rebalancing is
            disabled. When you turn on Capacity Rebalancing, Amazon EC2 Auto Scaling attempts to launch a Spot
            Instance whenever Amazon EC2 notifies that a Spot Instance is at an elevated risk of
            interruption. After launching a new instance, it then terminates an old instance. For
            more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/capacity-rebalance.html\">Amazon EC2 Auto Scaling Capacity
                Rebalancing</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("CapacityRebalance")
    capacityRebalance: option<capacityRebalanceEnabled>,
    @ocaml.doc("<p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
            when scaling in. For more information about preventing instances from terminating on
            scale in, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection\">Instance scale-in protection</a> in the
            <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("NewInstancesProtectedFromScaleIn")
    newInstancesProtectedFromScaleIn: option<instanceProtected>,
    @ocaml.doc("<p>A policy or a list of policies that are used to select the instance to terminate.
            These policies are executed in the order that you list them. For more information, see
                <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html\">Controlling which Auto Scaling
                instances terminate during scale in</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("TerminationPolicies")
    terminationPolicies: option<terminationPolicies>,
    @ocaml.doc("<p>A comma-separated list of subnet IDs for a virtual private cloud (VPC) where instances
            in the Auto Scaling group can be created. If you specify <code>VPCZoneIdentifier</code> with
                <code>AvailabilityZones</code>, the subnets that you specify for this parameter must
            reside in those Availability Zones.</p>
        <p>Conditional: If your account supports EC2-Classic and VPC, this parameter is required
            to launch instances into a VPC.</p>")
    @as("VPCZoneIdentifier")
    vpczoneIdentifier: option<xmlStringMaxLen2047>,
    @ocaml.doc("<p>The name of an existing placement group into which to launch your instances, if any. A
            placement group is a logical grouping of instances within a single Availability Zone.
            You cannot specify multiple Availability Zones and a placement group. For more
            information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html\">Placement Groups</a> in the
                <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
    @as("PlacementGroup")
    placementGroup: option<xmlStringMaxLen255>,
    @ocaml.doc("<p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
            of an EC2 instance that has come into service. During this time, any health check
            failures for the instance are ignored. The default value is <code>0</code>. For more
            information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period\">Health
                check grace period</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
        <p>Conditional: Required if you are adding an <code>ELB</code> health check.</p>")
    @as("HealthCheckGracePeriod")
    healthCheckGracePeriod: option<healthCheckGracePeriod>,
    @ocaml.doc("<p>The service to use for the health checks. The valid values are <code>EC2</code>
            (default) and <code>ELB</code>. If you configure an Auto Scaling group to use load balancer
            (ELB) health checks, it considers the instance unhealthy if it fails either the EC2
            status checks or the load balancer health checks. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html\">Health checks
                for Auto Scaling instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("HealthCheckType")
    healthCheckType: option<xmlStringMaxLen32>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the target groups to associate with the Auto Scaling group.
            Instances are registered as targets in a target group, and traffic is routed to the
            target group. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html\">Elastic Load Balancing and
                Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("TargetGroupARNs")
    targetGroupARNs: option<targetGroupARNs>,
    @ocaml.doc("<p>A list of Classic Load Balancers associated with this Auto Scaling group. For
            Application Load Balancers, Network Load Balancers, and Gateway Load Balancers, specify
            the <code>TargetGroupARNs</code> property instead.</p>")
    @as("LoadBalancerNames")
    loadBalancerNames: option<loadBalancerNames>,
    @ocaml.doc("<p>A list of Availability Zones where instances in the Auto Scaling group can be created. This
            parameter is optional if you specify one or more subnets for
                <code>VPCZoneIdentifier</code>.</p>
        <p>Conditional: If your account supports EC2-Classic and VPC, this parameter is required
            to launch instances into EC2-Classic.</p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
    @ocaml.doc("<p>The amount of time, in seconds, after a scaling activity completes before another
            scaling activity can start. The default value is <code>300</code>. This setting applies
            when using simple scaling policies, but not when using other scaling policies or
            scheduled scaling. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html\">Scaling cooldowns for Amazon EC2 Auto Scaling</a>
            in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("DefaultCooldown")
    defaultCooldown: option<cooldown>,
    @ocaml.doc("<p>The desired capacity is the initial capacity of the Auto Scaling group at the time of its
            creation and the capacity it attempts to maintain. It can scale beyond this capacity if
            you configure auto scaling. This number must be greater than or equal to the minimum
            size of the group and less than or equal to the maximum size of the group. If you do not
            specify a desired capacity, the default is the minimum size of the group.</p>")
    @as("DesiredCapacity")
    desiredCapacity: option<autoScalingGroupDesiredCapacity>,
    @ocaml.doc("<p>The maximum size of the group.</p>
        <note>
            <p>With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to
                go above <code>MaxSize</code> to meet your capacity requirements. In this event,
                Amazon EC2 Auto Scaling will never go above <code>MaxSize</code> by more than your largest instance
                weight (weights that define how many units each instance contributes to the desired
                capacity of the group).</p>
        </note>")
    @as("MaxSize")
    maxSize: autoScalingGroupMaxSize,
    @ocaml.doc("<p>The minimum size of the group.</p>") @as("MinSize")
    minSize: autoScalingGroupMinSize,
    @ocaml.doc("<p>The ID of the instance used to base the launch configuration on. If specified, Amazon
            EC2 Auto Scaling uses the configuration values from the specified instance to create a
            new launch configuration. To get the instance ID, use the Amazon EC2 <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html\">DescribeInstances</a> API operation. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html\">Creating an Auto Scaling group using an EC2 instance</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>")
    @as("InstanceId")
    instanceId: option<xmlStringMaxLen19>,
    @ocaml.doc("<p>An embedded object that specifies a mixed instances policy. The required properties
            must be specified. If optional properties are unspecified, their default values are
            used.</p>
        <p>The policy includes properties that not only define the distribution of On-Demand
            Instances and Spot Instances, the maximum price to pay for Spot Instances, and how the
            Auto Scaling group allocates instance types to fulfill On-Demand and Spot capacities, but also
            the properties that specify the instance configuration information—the launch template
            and instance types. The policy can also include a weight for each instance type and
            different launch templates for individual instance types. For more information, see
                <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html\">Auto Scaling groups with multiple
                instance types and purchase options</a> in the <i>Amazon EC2 Auto Scaling User
                Guide</i>.</p>")
    @as("MixedInstancesPolicy")
    mixedInstancesPolicy: option<mixedInstancesPolicy>,
    @ocaml.doc("<p>Parameters used to specify the launch template and version to use to launch instances. </p>
        <p>Conditional: You must specify either a launch template (<code>LaunchTemplate</code> or
                <code>MixedInstancesPolicy</code>) or a launch configuration
                (<code>LaunchConfigurationName</code> or <code>InstanceId</code>).</p>
        <note>
            <p>The launch template that is specified must be configured for use with an Auto Scaling
                group. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html\">Creating a launch
                    template for an Auto Scaling group</a> in the
                <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
        </note>")
    @as("LaunchTemplate")
    launchTemplate: option<launchTemplateSpecification>,
    @ocaml.doc("<p>The name of the launch configuration to use to launch instances. </p>
        <p>Conditional: You must specify either a launch template (<code>LaunchTemplate</code> or
                <code>MixedInstancesPolicy</code>) or a launch configuration
                (<code>LaunchConfigurationName</code> or <code>InstanceId</code>).</p>")
    @as("LaunchConfigurationName")
    launchConfigurationName: option<xmlStringMaxLen255>,
    @ocaml.doc(
      "<p>The name of the Auto Scaling group. This name must be unique per Region per account.</p>"
    )
    @as("AutoScalingGroupName")
    autoScalingGroupName: xmlStringMaxLen255,
  }

  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "CreateAutoScalingGroupCommand"
  let make = (
    ~maxSize,
    ~minSize,
    ~autoScalingGroupName,
    ~maxInstanceLifetime=?,
    ~serviceLinkedRoleARN=?,
    ~tags=?,
    ~lifecycleHookSpecificationList=?,
    ~capacityRebalance=?,
    ~newInstancesProtectedFromScaleIn=?,
    ~terminationPolicies=?,
    ~vpczoneIdentifier=?,
    ~placementGroup=?,
    ~healthCheckGracePeriod=?,
    ~healthCheckType=?,
    ~targetGroupARNs=?,
    ~loadBalancerNames=?,
    ~availabilityZones=?,
    ~defaultCooldown=?,
    ~desiredCapacity=?,
    ~instanceId=?,
    ~mixedInstancesPolicy=?,
    ~launchTemplate=?,
    ~launchConfigurationName=?,
    (),
  ) =>
    new({
      maxInstanceLifetime: maxInstanceLifetime,
      serviceLinkedRoleARN: serviceLinkedRoleARN,
      tags: tags,
      lifecycleHookSpecificationList: lifecycleHookSpecificationList,
      capacityRebalance: capacityRebalance,
      newInstancesProtectedFromScaleIn: newInstancesProtectedFromScaleIn,
      terminationPolicies: terminationPolicies,
      vpczoneIdentifier: vpczoneIdentifier,
      placementGroup: placementGroup,
      healthCheckGracePeriod: healthCheckGracePeriod,
      healthCheckType: healthCheckType,
      targetGroupARNs: targetGroupARNs,
      loadBalancerNames: loadBalancerNames,
      availabilityZones: availabilityZones,
      defaultCooldown: defaultCooldown,
      desiredCapacity: desiredCapacity,
      maxSize: maxSize,
      minSize: minSize,
      instanceId: instanceId,
      mixedInstancesPolicy: mixedInstancesPolicy,
      launchTemplate: launchTemplate,
      launchConfigurationName: launchConfigurationName,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribePolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to be returned with each call. The default value is
                <code>50</code> and the maximum value is <code>100</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>One or more policy types. The valid values are <code>SimpleScaling</code>,
                <code>StepScaling</code>, <code>TargetTrackingScaling</code>, and
                <code>PredictiveScaling</code>.</p>")
    @as("PolicyTypes")
    policyTypes: option<policyTypes>,
    @ocaml.doc("<p>The names of one or more policies. If you omit this parameter, all policies are
            described. If a group name is provided, the results are limited to that group. If you
            specify an unknown policy name, it is ignored with no error.</p>
        <p>Array Members: Maximum number of 50 items.</p>")
    @as("PolicyNames")
    policyNames: option<policyNames>,
    @ocaml.doc("<p>The name of the Auto Scaling group.</p>") @as("AutoScalingGroupName")
    autoScalingGroupName: option<xmlStringMaxLen255>,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that the response contains more items than can be returned in
            a single response. To receive additional items, specify this string for the
                <code>NextToken</code> value when requesting the next set of items. This value is
            null when there are no more items to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The scaling policies.</p>") @as("ScalingPolicies")
    scalingPolicies: option<scalingPolicies>,
  }
  @module("@aws-sdk/client-autoscaling") @new external new: request => t = "DescribePoliciesCommand"
  let make = (
    ~maxRecords=?,
    ~nextToken=?,
    ~policyTypes=?,
    ~policyNames=?,
    ~autoScalingGroupName=?,
    (),
  ) =>
    new({
      maxRecords: maxRecords,
      nextToken: nextToken,
      policyTypes: policyTypes,
      policyNames: policyNames,
      autoScalingGroupName: autoScalingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAutoScalingGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call. The default value is
                <code>50</code> and the maximum value is <code>100</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a
            previous call.)</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The names of the Auto Scaling groups. By default, you can only specify up to 50 names. You can
            optionally increase this limit using the <code>MaxRecords</code> parameter.</p>
        <p>If you omit this parameter, all Auto Scaling groups are described.</p>")
    @as("AutoScalingGroupNames")
    autoScalingGroupNames: option<autoScalingGroupNames>,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that the response contains more items than can be returned in
            a single response. To receive additional items, specify this string for the
                <code>NextToken</code> value when requesting the next set of items. This value is
            null when there are no more items to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The groups.</p>") @as("AutoScalingGroups") autoScalingGroups: autoScalingGroups,
  }
  @module("@aws-sdk/client-autoscaling") @new
  external new: request => t = "DescribeAutoScalingGroupsCommand"
  let make = (~maxRecords=?, ~nextToken=?, ~autoScalingGroupNames=?, ()) =>
    new({
      maxRecords: maxRecords,
      nextToken: nextToken,
      autoScalingGroupNames: autoScalingGroupNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
