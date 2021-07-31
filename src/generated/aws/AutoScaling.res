type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-autoscaling") @new external createClient: unit => awsServiceClient = "AutoScalingClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
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
type timestampType = Js.Date.t;
type tagValue = string
type tagKey = string
type spotPrice = string
type spotInstancePools = int
type shouldRespectGracePeriod = bool
type shouldDecrementDesiredCapacity = bool
type scalingPolicyEnabled = bool
type scalingActivityStatusCode = [@as("Cancelled") #Cancelled | @as("Failed") #Failed | @as("Successful") #Successful | @as("WaitingForInstanceWarmup") #WaitingForInstanceWarmup | @as("MidLifecycleAction") #MidLifecycleAction | @as("WaitingForELBConnectionDraining") #WaitingForELBConnectionDraining | @as("InProgress") #InProgress | @as("PreInService") #PreInService | @as("WaitingForInstanceId") #WaitingForInstanceId | @as("WaitingForSpotInstanceId") #WaitingForSpotInstanceId | @as("WaitingForSpotInstanceRequestId") #WaitingForSpotInstanceRequestId | @as("PendingSpotBidPlacement") #PendingSpotBidPlacement]
type resourceName = string
type refreshStrategy = [@as("Rolling") #Rolling]
type refreshInstanceWarmup = int
type protectedFromScaleIn = bool
type propagateAtLaunch = bool
type progress = int
type predictiveScalingSchedulingBufferTime = int
type predictiveScalingMode = [@as("ForecastOnly") #ForecastOnly | @as("ForecastAndScale") #ForecastAndScale]
type predictiveScalingMaxCapacityBuffer = int
type predictiveScalingMaxCapacityBreachBehavior = [@as("IncreaseMaxCapacity") #IncreaseMaxCapacity | @as("HonorMaxCapacity") #HonorMaxCapacity]
type predefinedScalingMetricType = [@as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget | @as("ASGAverageNetworkOut") #ASGAverageNetworkOut | @as("ASGAverageNetworkIn") #ASGAverageNetworkIn | @as("ASGAverageCPUUtilization") #ASGAverageCPUUtilization]
type predefinedMetricPairType = [@as("ALBRequestCount") #ALBRequestCount | @as("ASGNetworkOut") #ASGNetworkOut | @as("ASGNetworkIn") #ASGNetworkIn | @as("ASGCPUUtilization") #ASGCPUUtilization]
type predefinedLoadMetricType = [@as("ALBTargetGroupRequestCount") #ALBTargetGroupRequestCount | @as("ASGTotalNetworkOut") #ASGTotalNetworkOut | @as("ASGTotalNetworkIn") #ASGTotalNetworkIn | @as("ASGTotalCPUUtilization") #ASGTotalCPUUtilization]
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
type metricType = [@as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget | @as("ASGAverageNetworkOut") #ASGAverageNetworkOut | @as("ASGAverageNetworkIn") #ASGAverageNetworkIn | @as("ASGAverageCPUUtilization") #ASGAverageCPUUtilization]
type metricStatistic = [@as("Sum") #Sum | @as("SampleCount") #SampleCount | @as("Maximum") #Maximum | @as("Minimum") #Minimum | @as("Average") #Average]
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
type lifecycleState = [@as("Warmed:Running") #Warmed_Running | @as("Warmed:Stopped") #Warmed_Stopped | @as("Warmed:Terminated") #Warmed_Terminated | @as("Warmed:Terminating:Proceed") #Warmed_Terminating_Proceed | @as("Warmed:Terminating:Wait") #Warmed_Terminating_Wait | @as("Warmed:Terminating") #Warmed_Terminating | @as("Warmed:Pending:Proceed") #Warmed_Pending_Proceed | @as("Warmed:Pending:Wait") #Warmed_Pending_Wait | @as("Warmed:Pending") #Warmed_Pending | @as("Standby") #Standby | @as("EnteringStandby") #EnteringStandby | @as("Detached") #Detached | @as("Detaching") #Detaching | @as("Terminated") #Terminated | @as("Terminating:Proceed") #Terminating_Proceed | @as("Terminating:Wait") #Terminating_Wait | @as("Terminating") #Terminating | @as("InService") #InService | @as("Quarantined") #Quarantined | @as("Pending:Proceed") #Pending_Proceed | @as("Pending:Wait") #Pending_Wait | @as("Pending") #Pending]
type lifecycleActionToken = string
type lifecycleActionResult = string
type launchTemplateName = string
type intPercent = int
type instancesToUpdate = int
type instanceRefreshStatus = [@as("Cancelled") #Cancelled | @as("Cancelling") #Cancelling | @as("Failed") #Failed | @as("Successful") #Successful | @as("InProgress") #InProgress | @as("Pending") #Pending]
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
type warmPoolConfiguration = {
@as("Status") status: option<warmPoolStatus>,
  @as("PoolState") poolState: option<warmPoolState>,
  @as("MinSize") minSize: option<warmPoolMinSize>,
  @as("MaxGroupPreparedCapacity") maxGroupPreparedCapacity: option<maxGroupPreparedCapacity>
}
type values = array<xmlString>
type terminationPolicies = array<xmlStringMaxLen1600>
type targetGroupARNs = array<xmlStringMaxLen511>
type tagDescription = {
@as("PropagateAtLaunch") propagateAtLaunch: option<propagateAtLaunch>,
  @as("Value") value: option<tagValue>,
  @as("Key") key: option<tagKey>,
  @as("ResourceType") resourceType: option<xmlString>,
  @as("ResourceId") resourceId: option<xmlString>
}
type tag = {
@as("PropagateAtLaunch") propagateAtLaunch: option<propagateAtLaunch>,
  @as("Value") value: option<tagValue>,
  @as("Key") key: tagKey,
  @as("ResourceType") resourceType: option<xmlString>,
  @as("ResourceId") resourceId: option<xmlString>
}
type suspendedProcess = {
@as("SuspensionReason") suspensionReason: option<xmlStringMaxLen255>,
  @as("ProcessName") processName: option<xmlStringMaxLen255>
}
type stepAdjustment = {
@as("ScalingAdjustment") scalingAdjustment: policyIncrement,
  @as("MetricIntervalUpperBound") metricIntervalUpperBound: option<metricScale>,
  @as("MetricIntervalLowerBound") metricIntervalLowerBound: option<metricScale>
}
type securityGroups = array<xmlString>
type scheduledUpdateGroupActionRequest = {
@as("TimeZone") timeZone: option<xmlStringMaxLen255>,
  @as("DesiredCapacity") desiredCapacity: option<autoScalingGroupDesiredCapacity>,
  @as("MaxSize") maxSize: option<autoScalingGroupMaxSize>,
  @as("MinSize") minSize: option<autoScalingGroupMinSize>,
  @as("Recurrence") recurrence: option<xmlStringMaxLen255>,
  @as("EndTime") endTime: option<timestampType>,
  @as("StartTime") startTime: option<timestampType>,
  @as("ScheduledActionName") scheduledActionName: xmlStringMaxLen255
}
type scheduledUpdateGroupAction = {
@as("TimeZone") timeZone: option<xmlStringMaxLen255>,
  @as("DesiredCapacity") desiredCapacity: option<autoScalingGroupDesiredCapacity>,
  @as("MaxSize") maxSize: option<autoScalingGroupMaxSize>,
  @as("MinSize") minSize: option<autoScalingGroupMinSize>,
  @as("Recurrence") recurrence: option<xmlStringMaxLen255>,
  @as("EndTime") endTime: option<timestampType>,
  @as("StartTime") startTime: option<timestampType>,
  @as("Time") time: option<timestampType>,
  @as("ScheduledActionARN") scheduledActionARN: option<resourceName>,
  @as("ScheduledActionName") scheduledActionName: option<xmlStringMaxLen255>,
  @as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
type scheduledActionNames = array<xmlStringMaxLen255>
type processType = {
@as("ProcessName") processName: xmlStringMaxLen255
}
type processNames = array<xmlStringMaxLen255>
type predictiveScalingPredefinedScalingMetric = {
@as("ResourceLabel") resourceLabel: option<xmlStringMaxLen1023>,
  @as("PredefinedMetricType") predefinedMetricType: predefinedScalingMetricType
}
type predictiveScalingPredefinedMetricPair = {
@as("ResourceLabel") resourceLabel: option<xmlStringMaxLen1023>,
  @as("PredefinedMetricType") predefinedMetricType: predefinedMetricPairType
}
type predictiveScalingPredefinedLoadMetric = {
@as("ResourceLabel") resourceLabel: option<xmlStringMaxLen1023>,
  @as("PredefinedMetricType") predefinedMetricType: predefinedLoadMetricType
}
type predictiveScalingForecastValues = array<metricScale>
type predictiveScalingForecastTimestamps = array<timestampType>
type predefinedMetricSpecification = {
@as("ResourceLabel") resourceLabel: option<xmlStringMaxLen1023>,
  @as("PredefinedMetricType") predefinedMetricType: metricType
}
type policyTypes = array<xmlStringMaxLen64>
type policyNames = array<resourceName>
type notificationConfiguration = {
@as("NotificationType") notificationType: option<xmlStringMaxLen255>,
  @as("TopicARN") topicARN: option<xmlStringMaxLen255>,
  @as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
type metrics = array<xmlStringMaxLen255>
type metricGranularityType = {
@as("Granularity") granularity: option<xmlStringMaxLen255>
}
type metricDimension = {
@as("Value") value: metricDimensionValue,
  @as("Name") name: metricDimensionName
}
type metricCollectionType = {
@as("Metric") metric: option<xmlStringMaxLen255>
}
type loadBalancerTargetGroupState = {
@as("State") state: option<xmlStringMaxLen255>,
  @as("LoadBalancerTargetGroupARN") loadBalancerTargetGroupARN: option<xmlStringMaxLen511>
}
type loadBalancerState = {
@as("State") state: option<xmlStringMaxLen255>,
  @as("LoadBalancerName") loadBalancerName: option<xmlStringMaxLen255>
}
type loadBalancerNames = array<xmlStringMaxLen255>
type lifecycleHookSpecification = {
@as("RoleARN") roleARN: option<xmlStringMaxLen255>,
  @as("NotificationTargetARN") notificationTargetARN: option<notificationTargetResourceName>,
  @as("DefaultResult") defaultResult: option<lifecycleActionResult>,
  @as("HeartbeatTimeout") heartbeatTimeout: option<heartbeatTimeout>,
  @as("NotificationMetadata") notificationMetadata: option<xmlStringMaxLen1023>,
  @as("LifecycleTransition") lifecycleTransition: lifecycleTransition,
  @as("LifecycleHookName") lifecycleHookName: asciiStringMaxLen255
}
type lifecycleHookNames = array<asciiStringMaxLen255>
type lifecycleHook = {
@as("DefaultResult") defaultResult: option<lifecycleActionResult>,
  @as("GlobalTimeout") globalTimeout: option<globalTimeout>,
  @as("HeartbeatTimeout") heartbeatTimeout: option<heartbeatTimeout>,
  @as("NotificationMetadata") notificationMetadata: option<xmlStringMaxLen1023>,
  @as("RoleARN") roleARN: option<xmlStringMaxLen255>,
  @as("NotificationTargetARN") notificationTargetARN: option<notificationTargetResourceName>,
  @as("LifecycleTransition") lifecycleTransition: option<lifecycleTransition>,
  @as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
  @as("LifecycleHookName") lifecycleHookName: option<asciiStringMaxLen255>
}
type launchTemplateSpecification = {
@as("Version") version: option<xmlStringMaxLen255>,
  @as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
  @as("LaunchTemplateId") launchTemplateId: option<xmlStringMaxLen255>
}
type launchConfigurationNames = array<xmlStringMaxLen255>
type instancesDistribution = {
@as("SpotMaxPrice") spotMaxPrice: option<mixedInstanceSpotPrice>,
  @as("SpotInstancePools") spotInstancePools: option<spotInstancePools>,
  @as("SpotAllocationStrategy") spotAllocationStrategy: option<xmlString>,
  @as("OnDemandPercentageAboveBaseCapacity") onDemandPercentageAboveBaseCapacity: option<onDemandPercentageAboveBaseCapacity>,
  @as("OnDemandBaseCapacity") onDemandBaseCapacity: option<onDemandBaseCapacity>,
  @as("OnDemandAllocationStrategy") onDemandAllocationStrategy: option<xmlString>
}
type instanceRefreshWarmPoolProgress = {
@as("InstancesToUpdate") instancesToUpdate: option<instancesToUpdate>,
  @as("PercentageComplete") percentageComplete: option<intPercent>
}
type instanceRefreshLivePoolProgress = {
@as("InstancesToUpdate") instancesToUpdate: option<instancesToUpdate>,
  @as("PercentageComplete") percentageComplete: option<intPercent>
}
type instanceRefreshIds = array<xmlStringMaxLen255>
type instanceMonitoring = {
@as("Enabled") enabled: option<monitoringEnabled>
}
type instanceMetadataOptions = {
@as("HttpEndpoint") httpEndpoint: option<instanceMetadataEndpointState>,
  @as("HttpPutResponseHopLimit") httpPutResponseHopLimit: option<instanceMetadataHttpPutResponseHopLimit>,
  @as("HttpTokens") httpTokens: option<instanceMetadataHttpTokensState>
}
type instanceIds = array<xmlStringMaxLen19>
type failedScheduledUpdateGroupActionRequest = {
@as("ErrorMessage") errorMessage: option<xmlString>,
  @as("ErrorCode") errorCode: option<xmlStringMaxLen64>,
  @as("ScheduledActionName") scheduledActionName: xmlStringMaxLen255
}
type enabledMetric = {
@as("Granularity") granularity: option<xmlStringMaxLen255>,
  @as("Metric") metric: option<xmlStringMaxLen255>
}
type ebs = {
@as("Throughput") throughput: option<blockDeviceEbsThroughput>,
  @as("Encrypted") encrypted: option<blockDeviceEbsEncrypted>,
  @as("Iops") iops: option<blockDeviceEbsIops>,
  @as("DeleteOnTermination") deleteOnTermination: option<blockDeviceEbsDeleteOnTermination>,
  @as("VolumeType") volumeType: option<blockDeviceEbsVolumeType>,
  @as("VolumeSize") volumeSize: option<blockDeviceEbsVolumeSize>,
  @as("SnapshotId") snapshotId: option<xmlStringMaxLen255>
}
type classicLinkVPCSecurityGroups = array<xmlStringMaxLen255>
type checkpointPercentages = array<nonZeroIntPercent>
type availabilityZones = array<xmlStringMaxLen255>
type autoScalingNotificationTypes = array<xmlStringMaxLen255>
type autoScalingGroupNames = array<xmlStringMaxLen255>
type alarm = {
@as("AlarmARN") alarmARN: option<resourceName>,
  @as("AlarmName") alarmName: option<xmlStringMaxLen255>
}
type adjustmentType = {
@as("AdjustmentType") adjustmentType: option<xmlStringMaxLen255>
}
type activityIds = array<xmlString>
type activity = {
@as("AutoScalingGroupARN") autoScalingGroupARN: option<resourceName>,
  @as("AutoScalingGroupState") autoScalingGroupState: option<autoScalingGroupState>,
  @as("Details") details: option<xmlString>,
  @as("Progress") progress: option<progress>,
  @as("StatusMessage") statusMessage: option<xmlStringMaxLen255>,
  @as("StatusCode") statusCode: scalingActivityStatusCode,
  @as("EndTime") endTime: option<timestampType>,
  @as("StartTime") startTime: timestampType,
  @as("Cause") cause: xmlStringMaxLen1023,
  @as("Description") description: option<xmlString>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
  @as("ActivityId") activityId: xmlString
}
type tags = array<tag>
type tagDescriptionList = array<tagDescription>
type suspendedProcesses = array<suspendedProcess>
type stepAdjustments = array<stepAdjustment>
type scheduledUpdateGroupActions = array<scheduledUpdateGroupAction>
type scheduledUpdateGroupActionRequests = array<scheduledUpdateGroupActionRequest>
type refreshPreferences = {
@as("CheckpointDelay") checkpointDelay: option<checkpointDelay>,
  @as("CheckpointPercentages") checkpointPercentages: option<checkpointPercentages>,
  @as("InstanceWarmup") instanceWarmup: option<refreshInstanceWarmup>,
  @as("MinHealthyPercentage") minHealthyPercentage: option<intPercent>
}
type processes = array<processType>
type predictiveScalingMetricSpecification = {
@as("PredefinedLoadMetricSpecification") predefinedLoadMetricSpecification: option<predictiveScalingPredefinedLoadMetric>,
  @as("PredefinedScalingMetricSpecification") predefinedScalingMetricSpecification: option<predictiveScalingPredefinedScalingMetric>,
  @as("PredefinedMetricPairSpecification") predefinedMetricPairSpecification: option<predictiveScalingPredefinedMetricPair>,
  @as("TargetValue") targetValue: metricScale
}
type notificationConfigurations = array<notificationConfiguration>
type metricGranularityTypes = array<metricGranularityType>
type metricDimensions = array<metricDimension>
type metricCollectionTypes = array<metricCollectionType>
type loadBalancerTargetGroupStates = array<loadBalancerTargetGroupState>
type loadBalancerStates = array<loadBalancerState>
type lifecycleHooks = array<lifecycleHook>
type lifecycleHookSpecifications = array<lifecycleHookSpecification>
type launchTemplateOverrides = {
@as("LaunchTemplateSpecification") launchTemplateSpecification: option<launchTemplateSpecification>,
  @as("WeightedCapacity") weightedCapacity: option<xmlStringMaxLen32>,
  @as("InstanceType") instanceType: option<xmlStringMaxLen255>
}
type instanceRefreshProgressDetails = {
@as("WarmPoolProgress") warmPoolProgress: option<instanceRefreshWarmPoolProgress>,
  @as("LivePoolProgress") livePoolProgress: option<instanceRefreshLivePoolProgress>
}
type instance = {
@as("WeightedCapacity") weightedCapacity: option<xmlStringMaxLen32>,
  @as("ProtectedFromScaleIn") protectedFromScaleIn: instanceProtected,
  @as("LaunchTemplate") launchTemplate: option<launchTemplateSpecification>,
  @as("LaunchConfigurationName") launchConfigurationName: option<xmlStringMaxLen255>,
  @as("HealthStatus") healthStatus: xmlStringMaxLen32,
  @as("LifecycleState") lifecycleState: lifecycleState,
  @as("AvailabilityZone") availabilityZone: xmlStringMaxLen255,
  @as("InstanceType") instanceType: option<xmlStringMaxLen255>,
  @as("InstanceId") instanceId: xmlStringMaxLen19
}
type filter = {
@as("Values") values: option<values>,
  @as("Name") name: option<xmlString>
}
type failedScheduledUpdateGroupActionRequests = array<failedScheduledUpdateGroupActionRequest>
type enabledMetrics = array<enabledMetric>
type capacityForecast = {
@as("Values") values: predictiveScalingForecastValues,
  @as("Timestamps") timestamps: predictiveScalingForecastTimestamps
}
type blockDeviceMapping = {
@as("NoDevice") noDevice: option<noDevice>,
  @as("Ebs") ebs: option<ebs>,
  @as("DeviceName") deviceName: xmlStringMaxLen255,
  @as("VirtualName") virtualName: option<xmlStringMaxLen255>
}
type autoScalingInstanceDetails = {
@as("WeightedCapacity") weightedCapacity: option<xmlStringMaxLen32>,
  @as("ProtectedFromScaleIn") protectedFromScaleIn: instanceProtected,
  @as("LaunchTemplate") launchTemplate: option<launchTemplateSpecification>,
  @as("LaunchConfigurationName") launchConfigurationName: option<xmlStringMaxLen255>,
  @as("HealthStatus") healthStatus: xmlStringMaxLen32,
  @as("LifecycleState") lifecycleState: xmlStringMaxLen32,
  @as("AvailabilityZone") availabilityZone: xmlStringMaxLen255,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
  @as("InstanceType") instanceType: option<xmlStringMaxLen255>,
  @as("InstanceId") instanceId: xmlStringMaxLen19
}
type alarms = array<alarm>
type adjustmentTypes = array<adjustmentType>
type activities = array<activity>
type predictiveScalingMetricSpecifications = array<predictiveScalingMetricSpecification>
type overrides = array<launchTemplateOverrides>
type loadForecast = {
@as("MetricSpecification") metricSpecification: predictiveScalingMetricSpecification,
  @as("Values") values: predictiveScalingForecastValues,
  @as("Timestamps") timestamps: predictiveScalingForecastTimestamps
}
type instances = array<instance>
type instanceRefresh = {
@as("ProgressDetails") progressDetails: option<instanceRefreshProgressDetails>,
  @as("InstancesToUpdate") instancesToUpdate: option<instancesToUpdate>,
  @as("PercentageComplete") percentageComplete: option<intPercent>,
  @as("EndTime") endTime: option<timestampType>,
  @as("StartTime") startTime: option<timestampType>,
  @as("StatusReason") statusReason: option<xmlStringMaxLen1023>,
  @as("Status") status: option<instanceRefreshStatus>,
  @as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
  @as("InstanceRefreshId") instanceRefreshId: option<xmlStringMaxLen255>
}
type filters = array<filter>
type customizedMetricSpecification = {
@as("Unit") unit_: option<metricUnit>,
  @as("Statistic") statistic: metricStatistic,
  @as("Dimensions") dimensions: option<metricDimensions>,
  @as("Namespace") namespace: metricNamespace,
  @as("MetricName") metricName: metricName
}
type blockDeviceMappings = array<blockDeviceMapping>
type autoScalingInstances = array<autoScalingInstanceDetails>
type targetTrackingConfiguration = {
@as("DisableScaleIn") disableScaleIn: option<disableScaleIn>,
  @as("TargetValue") targetValue: metricScale,
  @as("CustomizedMetricSpecification") customizedMetricSpecification: option<customizedMetricSpecification>,
  @as("PredefinedMetricSpecification") predefinedMetricSpecification: option<predefinedMetricSpecification>
}
type predictiveScalingConfiguration = {
@as("MaxCapacityBuffer") maxCapacityBuffer: option<predictiveScalingMaxCapacityBuffer>,
  @as("MaxCapacityBreachBehavior") maxCapacityBreachBehavior: option<predictiveScalingMaxCapacityBreachBehavior>,
  @as("SchedulingBufferTime") schedulingBufferTime: option<predictiveScalingSchedulingBufferTime>,
  @as("Mode") mode: option<predictiveScalingMode>,
  @as("MetricSpecifications") metricSpecifications: predictiveScalingMetricSpecifications
}
type loadForecasts = array<loadForecast>
type launchTemplate = {
@as("Overrides") overrides: option<overrides>,
  @as("LaunchTemplateSpecification") launchTemplateSpecification: option<launchTemplateSpecification>
}
type launchConfiguration = {
@as("MetadataOptions") metadataOptions: option<instanceMetadataOptions>,
  @as("PlacementTenancy") placementTenancy: option<xmlStringMaxLen64>,
  @as("AssociatePublicIpAddress") associatePublicIpAddress: option<associatePublicIpAddress>,
  @as("EbsOptimized") ebsOptimized: option<ebsOptimized>,
  @as("CreatedTime") createdTime: timestampType,
  @as("IamInstanceProfile") iamInstanceProfile: option<xmlStringMaxLen1600>,
  @as("SpotPrice") spotPrice: option<spotPrice>,
  @as("InstanceMonitoring") instanceMonitoring: option<instanceMonitoring>,
  @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappings>,
  @as("RamdiskId") ramdiskId: option<xmlStringMaxLen255>,
  @as("KernelId") kernelId: option<xmlStringMaxLen255>,
  @as("InstanceType") instanceType: xmlStringMaxLen255,
  @as("UserData") userData: option<xmlStringUserData>,
  @as("ClassicLinkVPCSecurityGroups") classicLinkVPCSecurityGroups: option<classicLinkVPCSecurityGroups>,
  @as("ClassicLinkVPCId") classicLinkVPCId: option<xmlStringMaxLen255>,
  @as("SecurityGroups") securityGroups: option<securityGroups>,
  @as("KeyName") keyName: option<xmlStringMaxLen255>,
  @as("ImageId") imageId: xmlStringMaxLen255,
  @as("LaunchConfigurationARN") launchConfigurationARN: option<resourceName>,
  @as("LaunchConfigurationName") launchConfigurationName: xmlStringMaxLen255
}
type instanceRefreshes = array<instanceRefresh>
type scalingPolicy = {
@as("PredictiveScalingConfiguration") predictiveScalingConfiguration: option<predictiveScalingConfiguration>,
  @as("Enabled") enabled: option<scalingPolicyEnabled>,
  @as("TargetTrackingConfiguration") targetTrackingConfiguration: option<targetTrackingConfiguration>,
  @as("Alarms") alarms: option<alarms>,
  @as("EstimatedInstanceWarmup") estimatedInstanceWarmup: option<estimatedInstanceWarmup>,
  @as("MetricAggregationType") metricAggregationType: option<xmlStringMaxLen32>,
  @as("StepAdjustments") stepAdjustments: option<stepAdjustments>,
  @as("Cooldown") cooldown: option<cooldown>,
  @as("ScalingAdjustment") scalingAdjustment: option<policyIncrement>,
  @as("MinAdjustmentMagnitude") minAdjustmentMagnitude: option<minAdjustmentMagnitude>,
  @as("MinAdjustmentStep") minAdjustmentStep: option<minAdjustmentStep>,
  @as("AdjustmentType") adjustmentType: option<xmlStringMaxLen255>,
  @as("PolicyType") policyType: option<xmlStringMaxLen64>,
  @as("PolicyARN") policyARN: option<resourceName>,
  @as("PolicyName") policyName: option<xmlStringMaxLen255>,
  @as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
type mixedInstancesPolicy = {
@as("InstancesDistribution") instancesDistribution: option<instancesDistribution>,
  @as("LaunchTemplate") launchTemplate: option<launchTemplate>
}
type launchConfigurations = array<launchConfiguration>
type scalingPolicies = array<scalingPolicy>
type autoScalingGroup = {
@as("WarmPoolSize") warmPoolSize: option<warmPoolSize>,
  @as("WarmPoolConfiguration") warmPoolConfiguration: option<warmPoolConfiguration>,
  @as("CapacityRebalance") capacityRebalance: option<capacityRebalanceEnabled>,
  @as("MaxInstanceLifetime") maxInstanceLifetime: option<maxInstanceLifetime>,
  @as("ServiceLinkedRoleARN") serviceLinkedRoleARN: option<resourceName>,
  @as("NewInstancesProtectedFromScaleIn") newInstancesProtectedFromScaleIn: option<instanceProtected>,
  @as("TerminationPolicies") terminationPolicies: option<terminationPolicies>,
  @as("Tags") tags: option<tagDescriptionList>,
  @as("Status") status: option<xmlStringMaxLen255>,
  @as("EnabledMetrics") enabledMetrics: option<enabledMetrics>,
  @as("VPCZoneIdentifier") vpczoneIdentifier: option<xmlStringMaxLen2047>,
  @as("PlacementGroup") placementGroup: option<xmlStringMaxLen255>,
  @as("SuspendedProcesses") suspendedProcesses: option<suspendedProcesses>,
  @as("CreatedTime") createdTime: timestampType,
  @as("Instances") instances: option<instances>,
  @as("HealthCheckGracePeriod") healthCheckGracePeriod: option<healthCheckGracePeriod>,
  @as("HealthCheckType") healthCheckType: xmlStringMaxLen32,
  @as("TargetGroupARNs") targetGroupARNs: option<targetGroupARNs>,
  @as("LoadBalancerNames") loadBalancerNames: option<loadBalancerNames>,
  @as("AvailabilityZones") availabilityZones: availabilityZones,
  @as("DefaultCooldown") defaultCooldown: cooldown,
  @as("PredictedCapacity") predictedCapacity: option<autoScalingGroupPredictedCapacity>,
  @as("DesiredCapacity") desiredCapacity: autoScalingGroupDesiredCapacity,
  @as("MaxSize") maxSize: autoScalingGroupMaxSize,
  @as("MinSize") minSize: autoScalingGroupMinSize,
  @as("MixedInstancesPolicy") mixedInstancesPolicy: option<mixedInstancesPolicy>,
  @as("LaunchTemplate") launchTemplate: option<launchTemplateSpecification>,
  @as("LaunchConfigurationName") launchConfigurationName: option<xmlStringMaxLen255>,
  @as("AutoScalingGroupARN") autoScalingGroupARN: option<resourceName>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
type autoScalingGroups = array<autoScalingGroup>

module SetInstanceHealth = {
  type t;
  type request = {
@as("ShouldRespectGracePeriod") shouldRespectGracePeriod: option<shouldRespectGracePeriod>,
  @as("HealthStatus") healthStatus: xmlStringMaxLen32,
  @as("InstanceId") instanceId: xmlStringMaxLen19
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "SetInstanceHealthCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SetDesiredCapacity = {
  type t;
  type request = {
@as("HonorCooldown") honorCooldown: option<honorCooldown>,
  @as("DesiredCapacity") desiredCapacity: autoScalingGroupDesiredCapacity,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "SetDesiredCapacityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RecordLifecycleActionHeartbeat = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<xmlStringMaxLen19>,
  @as("LifecycleActionToken") lifecycleActionToken: option<lifecycleActionToken>,
  @as("AutoScalingGroupName") autoScalingGroupName: resourceName,
  @as("LifecycleHookName") lifecycleHookName: asciiStringMaxLen255
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "RecordLifecycleActionHeartbeatCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutWarmPool = {
  type t;
  type request = {
@as("PoolState") poolState: option<warmPoolState>,
  @as("MinSize") minSize: option<warmPoolMinSize>,
  @as("MaxGroupPreparedCapacity") maxGroupPreparedCapacity: option<maxGroupPreparedCapacity>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "PutWarmPoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutScheduledUpdateGroupAction = {
  type t;
  type request = {
@as("TimeZone") timeZone: option<xmlStringMaxLen255>,
  @as("DesiredCapacity") desiredCapacity: option<autoScalingGroupDesiredCapacity>,
  @as("MaxSize") maxSize: option<autoScalingGroupMaxSize>,
  @as("MinSize") minSize: option<autoScalingGroupMinSize>,
  @as("Recurrence") recurrence: option<xmlStringMaxLen255>,
  @as("EndTime") endTime: option<timestampType>,
  @as("StartTime") startTime: option<timestampType>,
  @as("Time") time: option<timestampType>,
  @as("ScheduledActionName") scheduledActionName: xmlStringMaxLen255,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "PutScheduledUpdateGroupActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutLifecycleHook = {
  type t;
  type request = {
@as("DefaultResult") defaultResult: option<lifecycleActionResult>,
  @as("HeartbeatTimeout") heartbeatTimeout: option<heartbeatTimeout>,
  @as("NotificationMetadata") notificationMetadata: option<xmlStringMaxLen1023>,
  @as("NotificationTargetARN") notificationTargetARN: option<notificationTargetResourceName>,
  @as("RoleARN") roleARN: option<xmlStringMaxLen255>,
  @as("LifecycleTransition") lifecycleTransition: option<lifecycleTransition>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
  @as("LifecycleHookName") lifecycleHookName: asciiStringMaxLen255
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "PutLifecycleHookCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExecutePolicy = {
  type t;
  type request = {
@as("BreachThreshold") breachThreshold: option<metricScale>,
  @as("MetricValue") metricValue: option<metricScale>,
  @as("HonorCooldown") honorCooldown: option<honorCooldown>,
  @as("PolicyName") policyName: resourceName,
  @as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "ExecutePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeAccountLimits = {
  type t;
  
  type response = {
@as("NumberOfLaunchConfigurations") numberOfLaunchConfigurations: option<numberOfLaunchConfigurations>,
  @as("NumberOfAutoScalingGroups") numberOfAutoScalingGroups: option<numberOfAutoScalingGroups>,
  @as("MaxNumberOfLaunchConfigurations") maxNumberOfLaunchConfigurations: option<maxNumberOfLaunchConfigurations>,
  @as("MaxNumberOfAutoScalingGroups") maxNumberOfAutoScalingGroups: option<maxNumberOfAutoScalingGroups>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (unit) => t = "DescribeAccountLimitsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteWarmPool = {
  type t;
  type request = {
@as("ForceDelete") forceDelete: option<forceDelete>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DeleteWarmPoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteScheduledAction = {
  type t;
  type request = {
@as("ScheduledActionName") scheduledActionName: xmlStringMaxLen255,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DeleteScheduledActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeletePolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: resourceName,
  @as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DeletePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteNotificationConfiguration = {
  type t;
  type request = {
@as("TopicARN") topicARN: xmlStringMaxLen255,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DeleteNotificationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteLifecycleHook = {
  type t;
  type request = {
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
  @as("LifecycleHookName") lifecycleHookName: asciiStringMaxLen255
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DeleteLifecycleHookCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLaunchConfiguration = {
  type t;
  type request = {
@as("LaunchConfigurationName") launchConfigurationName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DeleteLaunchConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteAutoScalingGroup = {
  type t;
  type request = {
@as("ForceDelete") forceDelete: option<forceDelete>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DeleteAutoScalingGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CompleteLifecycleAction = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<xmlStringMaxLen19>,
  @as("LifecycleActionResult") lifecycleActionResult: lifecycleActionResult,
  @as("LifecycleActionToken") lifecycleActionToken: option<lifecycleActionToken>,
  @as("AutoScalingGroupName") autoScalingGroupName: resourceName,
  @as("LifecycleHookName") lifecycleHookName: asciiStringMaxLen255
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "CompleteLifecycleActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelInstanceRefresh = {
  type t;
  type request = {
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("InstanceRefreshId") instanceRefreshId: option<xmlStringMaxLen255>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "CancelInstanceRefreshCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TerminateInstanceInAutoScalingGroup = {
  type t;
  type request = {
@as("ShouldDecrementDesiredCapacity") shouldDecrementDesiredCapacity: shouldDecrementDesiredCapacity,
  @as("InstanceId") instanceId: xmlStringMaxLen19
}
  type response = {
@as("Activity") activity: option<activity>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "TerminateInstanceInAutoScalingGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SuspendProcesses = {
  type t;
  type request = {
@as("ScalingProcesses") scalingProcesses: option<processNames>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "SuspendProcessesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SetInstanceProtection = {
  type t;
  type request = {
@as("ProtectedFromScaleIn") protectedFromScaleIn: protectedFromScaleIn,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
  @as("InstanceIds") instanceIds: instanceIds
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "SetInstanceProtectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ResumeProcesses = {
  type t;
  type request = {
@as("ScalingProcesses") scalingProcesses: option<processNames>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "ResumeProcessesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutNotificationConfiguration = {
  type t;
  type request = {
@as("NotificationTypes") notificationTypes: autoScalingNotificationTypes,
  @as("TopicARN") topicARN: xmlStringMaxLen255,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "PutNotificationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module EnableMetricsCollection = {
  type t;
  type request = {
@as("Granularity") granularity: xmlStringMaxLen255,
  @as("Metrics") metrics: option<metrics>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "EnableMetricsCollectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DisableMetricsCollection = {
  type t;
  type request = {
@as("Metrics") metrics: option<metrics>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DisableMetricsCollectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DetachLoadBalancers = {
  type t;
  type request = {
@as("LoadBalancerNames") loadBalancerNames: loadBalancerNames,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DetachLoadBalancersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachLoadBalancerTargetGroups = {
  type t;
  type request = {
@as("TargetGroupARNs") targetGroupARNs: targetGroupARNs,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DetachLoadBalancerTargetGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTerminationPolicyTypes = {
  type t;
  
  type response = {
@as("TerminationPolicyTypes") terminationPolicyTypes: option<terminationPolicies>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (unit) => t = "DescribeTerminationPolicyTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLifecycleHookTypes = {
  type t;
  
  type response = {
@as("LifecycleHookTypes") lifecycleHookTypes: option<autoScalingNotificationTypes>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (unit) => t = "DescribeLifecycleHookTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAutoScalingNotificationTypes = {
  type t;
  
  type response = {
@as("AutoScalingNotificationTypes") autoScalingNotificationTypes: option<autoScalingNotificationTypes>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (unit) => t = "DescribeAutoScalingNotificationTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachLoadBalancers = {
  type t;
  type request = {
@as("LoadBalancerNames") loadBalancerNames: loadBalancerNames,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "AttachLoadBalancersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachLoadBalancerTargetGroups = {
  type t;
  type request = {
@as("TargetGroupARNs") targetGroupARNs: targetGroupARNs,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "AttachLoadBalancerTargetGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachInstances = {
  type t;
  type request = {
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
  @as("InstanceIds") instanceIds: option<instanceIds>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "AttachInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartInstanceRefresh = {
  type t;
  type request = {
@as("Preferences") preferences: option<refreshPreferences>,
  @as("Strategy") strategy: option<refreshStrategy>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("InstanceRefreshId") instanceRefreshId: option<xmlStringMaxLen255>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "StartInstanceRefreshCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExitStandby = {
  type t;
  type request = {
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
  @as("InstanceIds") instanceIds: option<instanceIds>
}
  type response = {
@as("Activities") activities: option<activities>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "ExitStandbyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnterStandby = {
  type t;
  type request = {
@as("ShouldDecrementDesiredCapacity") shouldDecrementDesiredCapacity: shouldDecrementDesiredCapacity,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
  @as("InstanceIds") instanceIds: option<instanceIds>
}
  type response = {
@as("Activities") activities: option<activities>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "EnterStandbyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachInstances = {
  type t;
  type request = {
@as("ShouldDecrementDesiredCapacity") shouldDecrementDesiredCapacity: shouldDecrementDesiredCapacity,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
  @as("InstanceIds") instanceIds: option<instanceIds>
}
  type response = {
@as("Activities") activities: option<activities>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DetachInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeScheduledActions = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: option<maxRecords>,
  @as("NextToken") nextToken: option<xmlString>,
  @as("EndTime") endTime: option<timestampType>,
  @as("StartTime") startTime: option<timestampType>,
  @as("ScheduledActionNames") scheduledActionNames: option<scheduledActionNames>,
  @as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("ScheduledUpdateGroupActions") scheduledUpdateGroupActions: option<scheduledUpdateGroupActions>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeScheduledActionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingProcessTypes = {
  type t;
  
  type response = {
@as("Processes") processes: option<processes>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (unit) => t = "DescribeScalingProcessTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingActivities = {
  type t;
  type request = {
@as("NextToken") nextToken: option<xmlString>,
  @as("MaxRecords") maxRecords: option<maxRecords>,
  @as("IncludeDeletedGroups") includeDeletedGroups: option<includeDeletedGroups>,
  @as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
  @as("ActivityIds") activityIds: option<activityIds>
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("Activities") activities: activities
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeScalingActivitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeNotificationConfigurations = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: option<maxRecords>,
  @as("NextToken") nextToken: option<xmlString>,
  @as("AutoScalingGroupNames") autoScalingGroupNames: option<autoScalingGroupNames>
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("NotificationConfigurations") notificationConfigurations: notificationConfigurations
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeNotificationConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeMetricCollectionTypes = {
  type t;
  
  type response = {
@as("Granularities") granularities: option<metricGranularityTypes>,
  @as("Metrics") metrics: option<metricCollectionTypes>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (unit) => t = "DescribeMetricCollectionTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancers = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: option<maxRecords>,
  @as("NextToken") nextToken: option<xmlString>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("LoadBalancers") loadBalancers: option<loadBalancerStates>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeLoadBalancersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancerTargetGroups = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: option<maxRecords>,
  @as("NextToken") nextToken: option<xmlString>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("LoadBalancerTargetGroups") loadBalancerTargetGroups: option<loadBalancerTargetGroupStates>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeLoadBalancerTargetGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLifecycleHooks = {
  type t;
  type request = {
@as("LifecycleHookNames") lifecycleHookNames: option<lifecycleHookNames>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("LifecycleHooks") lifecycleHooks: option<lifecycleHooks>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeLifecycleHooksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAdjustmentTypes = {
  type t;
  
  type response = {
@as("AdjustmentTypes") adjustmentTypes: option<adjustmentTypes>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (unit) => t = "DescribeAdjustmentTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("Tags") tags: tags
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DeleteTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateOrUpdateTags = {
  type t;
  type request = {
@as("Tags") tags: tags
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "CreateOrUpdateTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module BatchPutScheduledUpdateGroupAction = {
  type t;
  type request = {
@as("ScheduledUpdateGroupActions") scheduledUpdateGroupActions: scheduledUpdateGroupActionRequests,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("FailedScheduledUpdateGroupActions") failedScheduledUpdateGroupActions: option<failedScheduledUpdateGroupActionRequests>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "BatchPutScheduledUpdateGroupActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteScheduledAction = {
  type t;
  type request = {
@as("ScheduledActionNames") scheduledActionNames: scheduledActionNames,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("FailedScheduledActions") failedScheduledActions: option<failedScheduledUpdateGroupActionRequests>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "BatchDeleteScheduledActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWarmPool = {
  type t;
  type request = {
@as("NextToken") nextToken: option<xmlString>,
  @as("MaxRecords") maxRecords: option<maxRecords>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("Instances") instances: option<instances>,
  @as("WarmPoolConfiguration") warmPoolConfiguration: option<warmPoolConfiguration>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeWarmPoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: option<maxRecords>,
  @as("NextToken") nextToken: option<xmlString>,
  @as("Filters") filters: option<filters>
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("Tags") tags: option<tagDescriptionList>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAutoScalingInstances = {
  type t;
  type request = {
@as("NextToken") nextToken: option<xmlString>,
  @as("MaxRecords") maxRecords: option<maxRecords>,
  @as("InstanceIds") instanceIds: option<instanceIds>
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("AutoScalingInstances") autoScalingInstances: option<autoScalingInstances>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeAutoScalingInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLaunchConfiguration = {
  type t;
  type request = {
@as("MetadataOptions") metadataOptions: option<instanceMetadataOptions>,
  @as("PlacementTenancy") placementTenancy: option<xmlStringMaxLen64>,
  @as("AssociatePublicIpAddress") associatePublicIpAddress: option<associatePublicIpAddress>,
  @as("EbsOptimized") ebsOptimized: option<ebsOptimized>,
  @as("IamInstanceProfile") iamInstanceProfile: option<xmlStringMaxLen1600>,
  @as("SpotPrice") spotPrice: option<spotPrice>,
  @as("InstanceMonitoring") instanceMonitoring: option<instanceMonitoring>,
  @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappings>,
  @as("RamdiskId") ramdiskId: option<xmlStringMaxLen255>,
  @as("KernelId") kernelId: option<xmlStringMaxLen255>,
  @as("InstanceType") instanceType: option<xmlStringMaxLen255>,
  @as("InstanceId") instanceId: option<xmlStringMaxLen19>,
  @as("UserData") userData: option<xmlStringUserData>,
  @as("ClassicLinkVPCSecurityGroups") classicLinkVPCSecurityGroups: option<classicLinkVPCSecurityGroups>,
  @as("ClassicLinkVPCId") classicLinkVPCId: option<xmlStringMaxLen255>,
  @as("SecurityGroups") securityGroups: option<securityGroups>,
  @as("KeyName") keyName: option<xmlStringMaxLen255>,
  @as("ImageId") imageId: option<xmlStringMaxLen255>,
  @as("LaunchConfigurationName") launchConfigurationName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "CreateLaunchConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutScalingPolicy = {
  type t;
  type request = {
@as("PredictiveScalingConfiguration") predictiveScalingConfiguration: option<predictiveScalingConfiguration>,
  @as("Enabled") enabled: option<scalingPolicyEnabled>,
  @as("TargetTrackingConfiguration") targetTrackingConfiguration: option<targetTrackingConfiguration>,
  @as("EstimatedInstanceWarmup") estimatedInstanceWarmup: option<estimatedInstanceWarmup>,
  @as("StepAdjustments") stepAdjustments: option<stepAdjustments>,
  @as("MetricAggregationType") metricAggregationType: option<xmlStringMaxLen32>,
  @as("Cooldown") cooldown: option<cooldown>,
  @as("ScalingAdjustment") scalingAdjustment: option<policyIncrement>,
  @as("MinAdjustmentMagnitude") minAdjustmentMagnitude: option<minAdjustmentMagnitude>,
  @as("MinAdjustmentStep") minAdjustmentStep: option<minAdjustmentStep>,
  @as("AdjustmentType") adjustmentType: option<xmlStringMaxLen255>,
  @as("PolicyType") policyType: option<xmlStringMaxLen64>,
  @as("PolicyName") policyName: xmlStringMaxLen255,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("Alarms") alarms: option<alarms>,
  @as("PolicyARN") policyARN: option<resourceName>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "PutScalingPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPredictiveScalingForecast = {
  type t;
  type request = {
@as("EndTime") endTime: timestampType,
  @as("StartTime") startTime: timestampType,
  @as("PolicyName") policyName: xmlStringMaxLen255,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("UpdateTime") updateTime: timestampType,
  @as("CapacityForecast") capacityForecast: capacityForecast,
  @as("LoadForecast") loadForecast: loadForecasts
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "GetPredictiveScalingForecastCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceRefreshes = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: option<maxRecords>,
  @as("NextToken") nextToken: option<xmlString>,
  @as("InstanceRefreshIds") instanceRefreshIds: option<instanceRefreshIds>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("InstanceRefreshes") instanceRefreshes: option<instanceRefreshes>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeInstanceRefreshesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAutoScalingGroup = {
  type t;
  type request = {
@as("CapacityRebalance") capacityRebalance: option<capacityRebalanceEnabled>,
  @as("MaxInstanceLifetime") maxInstanceLifetime: option<maxInstanceLifetime>,
  @as("ServiceLinkedRoleARN") serviceLinkedRoleARN: option<resourceName>,
  @as("NewInstancesProtectedFromScaleIn") newInstancesProtectedFromScaleIn: option<instanceProtected>,
  @as("TerminationPolicies") terminationPolicies: option<terminationPolicies>,
  @as("VPCZoneIdentifier") vpczoneIdentifier: option<xmlStringMaxLen2047>,
  @as("PlacementGroup") placementGroup: option<xmlStringMaxLen255>,
  @as("HealthCheckGracePeriod") healthCheckGracePeriod: option<healthCheckGracePeriod>,
  @as("HealthCheckType") healthCheckType: option<xmlStringMaxLen32>,
  @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
  @as("DefaultCooldown") defaultCooldown: option<cooldown>,
  @as("DesiredCapacity") desiredCapacity: option<autoScalingGroupDesiredCapacity>,
  @as("MaxSize") maxSize: option<autoScalingGroupMaxSize>,
  @as("MinSize") minSize: option<autoScalingGroupMinSize>,
  @as("MixedInstancesPolicy") mixedInstancesPolicy: option<mixedInstancesPolicy>,
  @as("LaunchTemplate") launchTemplate: option<launchTemplateSpecification>,
  @as("LaunchConfigurationName") launchConfigurationName: option<xmlStringMaxLen255>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "UpdateAutoScalingGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeLaunchConfigurations = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: option<maxRecords>,
  @as("NextToken") nextToken: option<xmlString>,
  @as("LaunchConfigurationNames") launchConfigurationNames: option<launchConfigurationNames>
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("LaunchConfigurations") launchConfigurations: launchConfigurations
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeLaunchConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAutoScalingGroup = {
  type t;
  type request = {
@as("MaxInstanceLifetime") maxInstanceLifetime: option<maxInstanceLifetime>,
  @as("ServiceLinkedRoleARN") serviceLinkedRoleARN: option<resourceName>,
  @as("Tags") tags: option<tags>,
  @as("LifecycleHookSpecificationList") lifecycleHookSpecificationList: option<lifecycleHookSpecifications>,
  @as("CapacityRebalance") capacityRebalance: option<capacityRebalanceEnabled>,
  @as("NewInstancesProtectedFromScaleIn") newInstancesProtectedFromScaleIn: option<instanceProtected>,
  @as("TerminationPolicies") terminationPolicies: option<terminationPolicies>,
  @as("VPCZoneIdentifier") vpczoneIdentifier: option<xmlStringMaxLen2047>,
  @as("PlacementGroup") placementGroup: option<xmlStringMaxLen255>,
  @as("HealthCheckGracePeriod") healthCheckGracePeriod: option<healthCheckGracePeriod>,
  @as("HealthCheckType") healthCheckType: option<xmlStringMaxLen32>,
  @as("TargetGroupARNs") targetGroupARNs: option<targetGroupARNs>,
  @as("LoadBalancerNames") loadBalancerNames: option<loadBalancerNames>,
  @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
  @as("DefaultCooldown") defaultCooldown: option<cooldown>,
  @as("DesiredCapacity") desiredCapacity: option<autoScalingGroupDesiredCapacity>,
  @as("MaxSize") maxSize: autoScalingGroupMaxSize,
  @as("MinSize") minSize: autoScalingGroupMinSize,
  @as("InstanceId") instanceId: option<xmlStringMaxLen19>,
  @as("MixedInstancesPolicy") mixedInstancesPolicy: option<mixedInstancesPolicy>,
  @as("LaunchTemplate") launchTemplate: option<launchTemplateSpecification>,
  @as("LaunchConfigurationName") launchConfigurationName: option<xmlStringMaxLen255>,
  @as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "CreateAutoScalingGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribePolicies = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: option<maxRecords>,
  @as("NextToken") nextToken: option<xmlString>,
  @as("PolicyTypes") policyTypes: option<policyTypes>,
  @as("PolicyNames") policyNames: option<policyNames>,
  @as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("ScalingPolicies") scalingPolicies: option<scalingPolicies>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribePoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAutoScalingGroups = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: option<maxRecords>,
  @as("NextToken") nextToken: option<xmlString>,
  @as("AutoScalingGroupNames") autoScalingGroupNames: option<autoScalingGroupNames>
}
  type response = {
@as("NextToken") nextToken: option<xmlString>,
  @as("AutoScalingGroups") autoScalingGroups: autoScalingGroups
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (request) => t = "DescribeAutoScalingGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
