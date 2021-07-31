type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
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
type warmPoolSize = int;
type warmPoolMinSize = int;
type timestampType = Js.Date.t;
type tagValue = string
type tagKey = string
type spotPrice = string
type spotInstancePools = int;
type shouldRespectGracePeriod = bool;
type shouldDecrementDesiredCapacity = bool;
type scalingPolicyEnabled = bool;
type scalingActivityStatusCode = [@as("Cancelled") #Cancelled | @as("Failed") #Failed | @as("Successful") #Successful | @as("WaitingForInstanceWarmup") #WaitingForInstanceWarmup | @as("MidLifecycleAction") #MidLifecycleAction | @as("WaitingForELBConnectionDraining") #WaitingForELBConnectionDraining | @as("InProgress") #InProgress | @as("PreInService") #PreInService | @as("WaitingForInstanceId") #WaitingForInstanceId | @as("WaitingForSpotInstanceId") #WaitingForSpotInstanceId | @as("WaitingForSpotInstanceRequestId") #WaitingForSpotInstanceRequestId | @as("PendingSpotBidPlacement") #PendingSpotBidPlacement]
type resourceName = string
type refreshStrategy = [@as("Rolling") #Rolling]
type refreshInstanceWarmup = int;
type protectedFromScaleIn = bool;
type propagateAtLaunch = bool;
type progress = int;
type predictiveScalingSchedulingBufferTime = int;
type predictiveScalingMode = [@as("ForecastOnly") #ForecastOnly | @as("ForecastAndScale") #ForecastAndScale]
type predictiveScalingMaxCapacityBuffer = int;
type predictiveScalingMaxCapacityBreachBehavior = [@as("IncreaseMaxCapacity") #IncreaseMaxCapacity | @as("HonorMaxCapacity") #HonorMaxCapacity]
type predefinedScalingMetricType = [@as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget | @as("ASGAverageNetworkOut") #ASGAverageNetworkOut | @as("ASGAverageNetworkIn") #ASGAverageNetworkIn | @as("ASGAverageCPUUtilization") #ASGAverageCPUUtilization]
type predefinedMetricPairType = [@as("ALBRequestCount") #ALBRequestCount | @as("ASGNetworkOut") #ASGNetworkOut | @as("ASGNetworkIn") #ASGNetworkIn | @as("ASGCPUUtilization") #ASGCPUUtilization]
type predefinedLoadMetricType = [@as("ALBTargetGroupRequestCount") #ALBTargetGroupRequestCount | @as("ASGTotalNetworkOut") #ASGTotalNetworkOut | @as("ASGTotalNetworkIn") #ASGTotalNetworkIn | @as("ASGTotalCPUUtilization") #ASGTotalCPUUtilization]
type policyIncrement = int;
type onDemandPercentageAboveBaseCapacity = int;
type onDemandBaseCapacity = int;
type numberOfLaunchConfigurations = int;
type numberOfAutoScalingGroups = int;
type notificationTargetResourceName = string
type nonZeroIntPercent = int;
type noDevice = bool;
type monitoringEnabled = bool;
type mixedInstanceSpotPrice = string
type minAdjustmentStep = int;
type minAdjustmentMagnitude = int;
type metricUnit = string
type metricType = [@as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget | @as("ASGAverageNetworkOut") #ASGAverageNetworkOut | @as("ASGAverageNetworkIn") #ASGAverageNetworkIn | @as("ASGAverageCPUUtilization") #ASGAverageCPUUtilization]
type metricStatistic = [@as("Sum") #Sum | @as("SampleCount") #SampleCount | @as("Maximum") #Maximum | @as("Minimum") #Minimum | @as("Average") #Average]
type metricScale = float;
type metricNamespace = string
type metricName = string
type metricDimensionValue = string
type metricDimensionName = string
type maxRecords = int;
type maxNumberOfLaunchConfigurations = int;
type maxNumberOfAutoScalingGroups = int;
type maxInstanceLifetime = int;
type maxGroupPreparedCapacity = int;
type lifecycleTransition = string
type lifecycleState = [@as("Warmed:Running") #Warmed_Running | @as("Warmed:Stopped") #Warmed_Stopped | @as("Warmed:Terminated") #Warmed_Terminated | @as("Warmed:Terminating:Proceed") #Warmed_Terminating_Proceed | @as("Warmed:Terminating:Wait") #Warmed_Terminating_Wait | @as("Warmed:Terminating") #Warmed_Terminating | @as("Warmed:Pending:Proceed") #Warmed_Pending_Proceed | @as("Warmed:Pending:Wait") #Warmed_Pending_Wait | @as("Warmed:Pending") #Warmed_Pending | @as("Standby") #Standby | @as("EnteringStandby") #EnteringStandby | @as("Detached") #Detached | @as("Detaching") #Detaching | @as("Terminated") #Terminated | @as("Terminating:Proceed") #Terminating_Proceed | @as("Terminating:Wait") #Terminating_Wait | @as("Terminating") #Terminating | @as("InService") #InService | @as("Quarantined") #Quarantined | @as("Pending:Proceed") #Pending_Proceed | @as("Pending:Wait") #Pending_Wait | @as("Pending") #Pending]
type lifecycleActionToken = string
type lifecycleActionResult = string
type launchTemplateName = string
type intPercent = int;
type instancesToUpdate = int;
type instanceRefreshStatus = [@as("Cancelled") #Cancelled | @as("Cancelling") #Cancelling | @as("Failed") #Failed | @as("Successful") #Successful | @as("InProgress") #InProgress | @as("Pending") #Pending]
type instanceProtected = bool;
type instanceMetadataHttpTokensState = [@as("required") #required | @as("optional") #optional]
type instanceMetadataHttpPutResponseHopLimit = int;
type instanceMetadataEndpointState = [@as("enabled") #enabled | @as("disabled") #disabled]
type includeDeletedGroups = bool;
type honorCooldown = bool;
type heartbeatTimeout = int;
type healthCheckGracePeriod = int;
type globalTimeout = int;
type forceDelete = bool;
type estimatedInstanceWarmup = int;
type ebsOptimized = bool;
type disableScaleIn = bool;
type cooldown = int;
type checkpointDelay = int;
type capacityRebalanceEnabled = bool;
type blockDeviceEbsVolumeType = string
type blockDeviceEbsVolumeSize = int;
type blockDeviceEbsThroughput = int;
type blockDeviceEbsIops = int;
type blockDeviceEbsEncrypted = bool;
type blockDeviceEbsDeleteOnTermination = bool;
type autoScalingGroupState = string
type autoScalingGroupPredictedCapacity = int;
type autoScalingGroupMinSize = int;
type autoScalingGroupMaxSize = int;
type autoScalingGroupDesiredCapacity = int;
type associatePublicIpAddress = bool;
type asciiStringMaxLen255 = string
type warmPoolConfiguration = {
@as("Status") status: warmPoolStatus,
@as("PoolState") poolState: warmPoolState,
@as("MinSize") minSize: warmPoolMinSize,
@as("MaxGroupPreparedCapacity") maxGroupPreparedCapacity: maxGroupPreparedCapacity
}
type values = array<xmlString>
type terminationPolicies = array<xmlStringMaxLen1600>
type targetGroupARNs = array<xmlStringMaxLen511>
type tagDescription = {
@as("PropagateAtLaunch") propagateAtLaunch: propagateAtLaunch,
@as("Value") value: tagValue,
@as("Key") key: tagKey,
@as("ResourceType") resourceType: xmlString,
@as("ResourceId") resourceId: xmlString
}
type tag = {
@as("PropagateAtLaunch") propagateAtLaunch: propagateAtLaunch,
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>,
@as("ResourceType") resourceType: xmlString,
@as("ResourceId") resourceId: xmlString
}
type suspendedProcess = {
@as("SuspensionReason") suspensionReason: xmlStringMaxLen255,
@as("ProcessName") processName: xmlStringMaxLen255
}
type stepAdjustment = {
@as("ScalingAdjustment") scalingAdjustment: option<policyIncrement>,
@as("MetricIntervalUpperBound") metricIntervalUpperBound: metricScale,
@as("MetricIntervalLowerBound") metricIntervalLowerBound: metricScale
}
type securityGroups = array<xmlString>
type scheduledUpdateGroupActionRequest = {
@as("TimeZone") timeZone: xmlStringMaxLen255,
@as("DesiredCapacity") desiredCapacity: autoScalingGroupDesiredCapacity,
@as("MaxSize") maxSize: autoScalingGroupMaxSize,
@as("MinSize") minSize: autoScalingGroupMinSize,
@as("Recurrence") recurrence: xmlStringMaxLen255,
@as("EndTime") endTime: timestampType,
@as("StartTime") startTime: timestampType,
@as("ScheduledActionName") scheduledActionName: option<xmlStringMaxLen255>
}
type scheduledUpdateGroupAction = {
@as("TimeZone") timeZone: xmlStringMaxLen255,
@as("DesiredCapacity") desiredCapacity: autoScalingGroupDesiredCapacity,
@as("MaxSize") maxSize: autoScalingGroupMaxSize,
@as("MinSize") minSize: autoScalingGroupMinSize,
@as("Recurrence") recurrence: xmlStringMaxLen255,
@as("EndTime") endTime: timestampType,
@as("StartTime") startTime: timestampType,
@as("Time") time: timestampType,
@as("ScheduledActionARN") scheduledActionARN: resourceName,
@as("ScheduledActionName") scheduledActionName: xmlStringMaxLen255,
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
type scheduledActionNames = array<xmlStringMaxLen255>
type processType = {
@as("ProcessName") processName: option<xmlStringMaxLen255>
}
type processNames = array<xmlStringMaxLen255>
type predictiveScalingPredefinedScalingMetric = {
@as("ResourceLabel") resourceLabel: xmlStringMaxLen1023,
@as("PredefinedMetricType") predefinedMetricType: option<predefinedScalingMetricType>
}
type predictiveScalingPredefinedMetricPair = {
@as("ResourceLabel") resourceLabel: xmlStringMaxLen1023,
@as("PredefinedMetricType") predefinedMetricType: option<predefinedMetricPairType>
}
type predictiveScalingPredefinedLoadMetric = {
@as("ResourceLabel") resourceLabel: xmlStringMaxLen1023,
@as("PredefinedMetricType") predefinedMetricType: option<predefinedLoadMetricType>
}
type predictiveScalingForecastValues = array<metricScale>
type predictiveScalingForecastTimestamps = array<timestampType>
type predefinedMetricSpecification = {
@as("ResourceLabel") resourceLabel: xmlStringMaxLen1023,
@as("PredefinedMetricType") predefinedMetricType: option<metricType>
}
type policyTypes = array<xmlStringMaxLen64>
type policyNames = array<resourceName>
type notificationConfiguration = {
@as("NotificationType") notificationType: xmlStringMaxLen255,
@as("TopicARN") topicARN: xmlStringMaxLen255,
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
type metrics = array<xmlStringMaxLen255>
type metricGranularityType = {
@as("Granularity") granularity: xmlStringMaxLen255
}
type metricDimension = {
@as("Value") value: option<metricDimensionValue>,
@as("Name") name: option<metricDimensionName>
}
type metricCollectionType = {
@as("Metric") metric: xmlStringMaxLen255
}
type loadBalancerTargetGroupState = {
@as("State") state: xmlStringMaxLen255,
@as("LoadBalancerTargetGroupARN") loadBalancerTargetGroupARN: xmlStringMaxLen511
}
type loadBalancerState = {
@as("State") state: xmlStringMaxLen255,
@as("LoadBalancerName") loadBalancerName: xmlStringMaxLen255
}
type loadBalancerNames = array<xmlStringMaxLen255>
type lifecycleHookSpecification = {
@as("RoleARN") roleARN: xmlStringMaxLen255,
@as("NotificationTargetARN") notificationTargetARN: notificationTargetResourceName,
@as("DefaultResult") defaultResult: lifecycleActionResult,
@as("HeartbeatTimeout") heartbeatTimeout: heartbeatTimeout,
@as("NotificationMetadata") notificationMetadata: xmlStringMaxLen1023,
@as("LifecycleTransition") lifecycleTransition: option<lifecycleTransition>,
@as("LifecycleHookName") lifecycleHookName: option<asciiStringMaxLen255>
}
type lifecycleHookNames = array<asciiStringMaxLen255>
type lifecycleHook = {
@as("DefaultResult") defaultResult: lifecycleActionResult,
@as("GlobalTimeout") globalTimeout: globalTimeout,
@as("HeartbeatTimeout") heartbeatTimeout: heartbeatTimeout,
@as("NotificationMetadata") notificationMetadata: xmlStringMaxLen1023,
@as("RoleARN") roleARN: xmlStringMaxLen255,
@as("NotificationTargetARN") notificationTargetARN: notificationTargetResourceName,
@as("LifecycleTransition") lifecycleTransition: lifecycleTransition,
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
@as("LifecycleHookName") lifecycleHookName: asciiStringMaxLen255
}
type launchTemplateSpecification = {
@as("Version") version: xmlStringMaxLen255,
@as("LaunchTemplateName") launchTemplateName: launchTemplateName,
@as("LaunchTemplateId") launchTemplateId: xmlStringMaxLen255
}
type launchConfigurationNames = array<xmlStringMaxLen255>
type instancesDistribution = {
@as("SpotMaxPrice") spotMaxPrice: mixedInstanceSpotPrice,
@as("SpotInstancePools") spotInstancePools: spotInstancePools,
@as("SpotAllocationStrategy") spotAllocationStrategy: xmlString,
@as("OnDemandPercentageAboveBaseCapacity") onDemandPercentageAboveBaseCapacity: onDemandPercentageAboveBaseCapacity,
@as("OnDemandBaseCapacity") onDemandBaseCapacity: onDemandBaseCapacity,
@as("OnDemandAllocationStrategy") onDemandAllocationStrategy: xmlString
}
type instanceRefreshWarmPoolProgress = {
@as("InstancesToUpdate") instancesToUpdate: instancesToUpdate,
@as("PercentageComplete") percentageComplete: intPercent
}
type instanceRefreshLivePoolProgress = {
@as("InstancesToUpdate") instancesToUpdate: instancesToUpdate,
@as("PercentageComplete") percentageComplete: intPercent
}
type instanceRefreshIds = array<xmlStringMaxLen255>
type instanceMonitoring = {
@as("Enabled") enabled: monitoringEnabled
}
type instanceMetadataOptions = {
@as("HttpEndpoint") httpEndpoint: instanceMetadataEndpointState,
@as("HttpPutResponseHopLimit") httpPutResponseHopLimit: instanceMetadataHttpPutResponseHopLimit,
@as("HttpTokens") httpTokens: instanceMetadataHttpTokensState
}
type instanceIds = array<xmlStringMaxLen19>
type failedScheduledUpdateGroupActionRequest = {
@as("ErrorMessage") errorMessage: xmlString,
@as("ErrorCode") errorCode: xmlStringMaxLen64,
@as("ScheduledActionName") scheduledActionName: option<xmlStringMaxLen255>
}
type enabledMetric = {
@as("Granularity") granularity: xmlStringMaxLen255,
@as("Metric") metric: xmlStringMaxLen255
}
type ebs = {
@as("Throughput") throughput: blockDeviceEbsThroughput,
@as("Encrypted") encrypted: blockDeviceEbsEncrypted,
@as("Iops") iops: blockDeviceEbsIops,
@as("DeleteOnTermination") deleteOnTermination: blockDeviceEbsDeleteOnTermination,
@as("VolumeType") volumeType: blockDeviceEbsVolumeType,
@as("VolumeSize") volumeSize: blockDeviceEbsVolumeSize,
@as("SnapshotId") snapshotId: xmlStringMaxLen255
}
type classicLinkVPCSecurityGroups = array<xmlStringMaxLen255>
type checkpointPercentages = array<nonZeroIntPercent>
type availabilityZones = array<xmlStringMaxLen255>
type autoScalingNotificationTypes = array<xmlStringMaxLen255>
type autoScalingGroupNames = array<xmlStringMaxLen255>
type alarm = {
@as("AlarmARN") alarmARN: resourceName,
@as("AlarmName") alarmName: xmlStringMaxLen255
}
type adjustmentType = {
@as("AdjustmentType") adjustmentType: xmlStringMaxLen255
}
type activityIds = array<xmlString>
type activity = {
@as("AutoScalingGroupARN") autoScalingGroupARN: resourceName,
@as("AutoScalingGroupState") autoScalingGroupState: autoScalingGroupState,
@as("Details") details: xmlString,
@as("Progress") progress: progress,
@as("StatusMessage") statusMessage: xmlStringMaxLen255,
@as("StatusCode") statusCode: option<scalingActivityStatusCode>,
@as("EndTime") endTime: timestampType,
@as("StartTime") startTime: option<timestampType>,
@as("Cause") cause: option<xmlStringMaxLen1023>,
@as("Description") description: xmlString,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
@as("ActivityId") activityId: option<xmlString>
}
type tags = array<tag>
type tagDescriptionList = array<tagDescription>
type suspendedProcesses = array<suspendedProcess>
type stepAdjustments = array<stepAdjustment>
type scheduledUpdateGroupActions = array<scheduledUpdateGroupAction>
type scheduledUpdateGroupActionRequests = array<scheduledUpdateGroupActionRequest>
type refreshPreferences = {
@as("CheckpointDelay") checkpointDelay: checkpointDelay,
@as("CheckpointPercentages") checkpointPercentages: checkpointPercentages,
@as("InstanceWarmup") instanceWarmup: refreshInstanceWarmup,
@as("MinHealthyPercentage") minHealthyPercentage: intPercent
}
type processes = array<processType>
type predictiveScalingMetricSpecification = {
@as("PredefinedLoadMetricSpecification") predefinedLoadMetricSpecification: predictiveScalingPredefinedLoadMetric,
@as("PredefinedScalingMetricSpecification") predefinedScalingMetricSpecification: predictiveScalingPredefinedScalingMetric,
@as("PredefinedMetricPairSpecification") predefinedMetricPairSpecification: predictiveScalingPredefinedMetricPair,
@as("TargetValue") targetValue: option<metricScale>
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
@as("LaunchTemplateSpecification") launchTemplateSpecification: launchTemplateSpecification,
@as("WeightedCapacity") weightedCapacity: xmlStringMaxLen32,
@as("InstanceType") instanceType: xmlStringMaxLen255
}
type instanceRefreshProgressDetails = {
@as("WarmPoolProgress") warmPoolProgress: instanceRefreshWarmPoolProgress,
@as("LivePoolProgress") livePoolProgress: instanceRefreshLivePoolProgress
}
type instance = {
@as("WeightedCapacity") weightedCapacity: xmlStringMaxLen32,
@as("ProtectedFromScaleIn") protectedFromScaleIn: option<instanceProtected>,
@as("LaunchTemplate") launchTemplate: launchTemplateSpecification,
@as("LaunchConfigurationName") launchConfigurationName: xmlStringMaxLen255,
@as("HealthStatus") healthStatus: option<xmlStringMaxLen32>,
@as("LifecycleState") lifecycleState: option<lifecycleState>,
@as("AvailabilityZone") availabilityZone: option<xmlStringMaxLen255>,
@as("InstanceType") instanceType: xmlStringMaxLen255,
@as("InstanceId") instanceId: option<xmlStringMaxLen19>
}
type filter = {
@as("Values") values: values,
@as("Name") name: xmlString
}
type failedScheduledUpdateGroupActionRequests = array<failedScheduledUpdateGroupActionRequest>
type enabledMetrics = array<enabledMetric>
type capacityForecast = {
@as("Values") values: option<predictiveScalingForecastValues>,
@as("Timestamps") timestamps: option<predictiveScalingForecastTimestamps>
}
type blockDeviceMapping = {
@as("NoDevice") noDevice: noDevice,
@as("Ebs") ebs: ebs,
@as("DeviceName") deviceName: option<xmlStringMaxLen255>,
@as("VirtualName") virtualName: xmlStringMaxLen255
}
type autoScalingInstanceDetails = {
@as("WeightedCapacity") weightedCapacity: xmlStringMaxLen32,
@as("ProtectedFromScaleIn") protectedFromScaleIn: option<instanceProtected>,
@as("LaunchTemplate") launchTemplate: launchTemplateSpecification,
@as("LaunchConfigurationName") launchConfigurationName: xmlStringMaxLen255,
@as("HealthStatus") healthStatus: option<xmlStringMaxLen32>,
@as("LifecycleState") lifecycleState: option<xmlStringMaxLen32>,
@as("AvailabilityZone") availabilityZone: option<xmlStringMaxLen255>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
@as("InstanceType") instanceType: xmlStringMaxLen255,
@as("InstanceId") instanceId: option<xmlStringMaxLen19>
}
type alarms = array<alarm>
type adjustmentTypes = array<adjustmentType>
type activities = array<activity>
type predictiveScalingMetricSpecifications = array<predictiveScalingMetricSpecification>
type overrides = array<launchTemplateOverrides>
type loadForecast = {
@as("MetricSpecification") metricSpecification: option<predictiveScalingMetricSpecification>,
@as("Values") values: option<predictiveScalingForecastValues>,
@as("Timestamps") timestamps: option<predictiveScalingForecastTimestamps>
}
type instances = array<instance>
type instanceRefresh = {
@as("ProgressDetails") progressDetails: instanceRefreshProgressDetails,
@as("InstancesToUpdate") instancesToUpdate: instancesToUpdate,
@as("PercentageComplete") percentageComplete: intPercent,
@as("EndTime") endTime: timestampType,
@as("StartTime") startTime: timestampType,
@as("StatusReason") statusReason: xmlStringMaxLen1023,
@as("Status") status: instanceRefreshStatus,
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
@as("InstanceRefreshId") instanceRefreshId: xmlStringMaxLen255
}
type filters = array<filter>
type customizedMetricSpecification = {
@as("Unit") unit: metricUnit,
@as("Statistic") statistic: option<metricStatistic>,
@as("Dimensions") dimensions: metricDimensions,
@as("Namespace") namespace: option<metricNamespace>,
@as("MetricName") metricName: option<metricName>
}
type blockDeviceMappings = array<blockDeviceMapping>
type autoScalingInstances = array<autoScalingInstanceDetails>
type targetTrackingConfiguration = {
@as("DisableScaleIn") disableScaleIn: disableScaleIn,
@as("TargetValue") targetValue: option<metricScale>,
@as("CustomizedMetricSpecification") customizedMetricSpecification: customizedMetricSpecification,
@as("PredefinedMetricSpecification") predefinedMetricSpecification: predefinedMetricSpecification
}
type predictiveScalingConfiguration = {
@as("MaxCapacityBuffer") maxCapacityBuffer: predictiveScalingMaxCapacityBuffer,
@as("MaxCapacityBreachBehavior") maxCapacityBreachBehavior: predictiveScalingMaxCapacityBreachBehavior,
@as("SchedulingBufferTime") schedulingBufferTime: predictiveScalingSchedulingBufferTime,
@as("Mode") mode: predictiveScalingMode,
@as("MetricSpecifications") metricSpecifications: option<predictiveScalingMetricSpecifications>
}
type loadForecasts = array<loadForecast>
type launchTemplate = {
@as("Overrides") overrides: overrides,
@as("LaunchTemplateSpecification") launchTemplateSpecification: launchTemplateSpecification
}
type launchConfiguration = {
@as("MetadataOptions") metadataOptions: instanceMetadataOptions,
@as("PlacementTenancy") placementTenancy: xmlStringMaxLen64,
@as("AssociatePublicIpAddress") associatePublicIpAddress: associatePublicIpAddress,
@as("EbsOptimized") ebsOptimized: ebsOptimized,
@as("CreatedTime") createdTime: option<timestampType>,
@as("IamInstanceProfile") iamInstanceProfile: xmlStringMaxLen1600,
@as("SpotPrice") spotPrice: spotPrice,
@as("InstanceMonitoring") instanceMonitoring: instanceMonitoring,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappings,
@as("RamdiskId") ramdiskId: xmlStringMaxLen255,
@as("KernelId") kernelId: xmlStringMaxLen255,
@as("InstanceType") instanceType: option<xmlStringMaxLen255>,
@as("UserData") userData: xmlStringUserData,
@as("ClassicLinkVPCSecurityGroups") classicLinkVPCSecurityGroups: classicLinkVPCSecurityGroups,
@as("ClassicLinkVPCId") classicLinkVPCId: xmlStringMaxLen255,
@as("SecurityGroups") securityGroups: securityGroups,
@as("KeyName") keyName: xmlStringMaxLen255,
@as("ImageId") imageId: option<xmlStringMaxLen255>,
@as("LaunchConfigurationARN") launchConfigurationARN: resourceName,
@as("LaunchConfigurationName") launchConfigurationName: option<xmlStringMaxLen255>
}
type instanceRefreshes = array<instanceRefresh>
type scalingPolicy = {
@as("PredictiveScalingConfiguration") predictiveScalingConfiguration: predictiveScalingConfiguration,
@as("Enabled") enabled: scalingPolicyEnabled,
@as("TargetTrackingConfiguration") targetTrackingConfiguration: targetTrackingConfiguration,
@as("Alarms") alarms: alarms,
@as("EstimatedInstanceWarmup") estimatedInstanceWarmup: estimatedInstanceWarmup,
@as("MetricAggregationType") metricAggregationType: xmlStringMaxLen32,
@as("StepAdjustments") stepAdjustments: stepAdjustments,
@as("Cooldown") cooldown: cooldown,
@as("ScalingAdjustment") scalingAdjustment: policyIncrement,
@as("MinAdjustmentMagnitude") minAdjustmentMagnitude: minAdjustmentMagnitude,
@as("MinAdjustmentStep") minAdjustmentStep: minAdjustmentStep,
@as("AdjustmentType") adjustmentType: xmlStringMaxLen255,
@as("PolicyType") policyType: xmlStringMaxLen64,
@as("PolicyARN") policyARN: resourceName,
@as("PolicyName") policyName: xmlStringMaxLen255,
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
type mixedInstancesPolicy = {
@as("InstancesDistribution") instancesDistribution: instancesDistribution,
@as("LaunchTemplate") launchTemplate: launchTemplate
}
type launchConfigurations = array<launchConfiguration>
type scalingPolicies = array<scalingPolicy>
type autoScalingGroup = {
@as("WarmPoolSize") warmPoolSize: warmPoolSize,
@as("WarmPoolConfiguration") warmPoolConfiguration: warmPoolConfiguration,
@as("CapacityRebalance") capacityRebalance: capacityRebalanceEnabled,
@as("MaxInstanceLifetime") maxInstanceLifetime: maxInstanceLifetime,
@as("ServiceLinkedRoleARN") serviceLinkedRoleARN: resourceName,
@as("NewInstancesProtectedFromScaleIn") newInstancesProtectedFromScaleIn: instanceProtected,
@as("TerminationPolicies") terminationPolicies: terminationPolicies,
@as("Tags") tags: tagDescriptionList,
@as("Status") status: xmlStringMaxLen255,
@as("EnabledMetrics") enabledMetrics: enabledMetrics,
@as("VPCZoneIdentifier") vPCZoneIdentifier: xmlStringMaxLen2047,
@as("PlacementGroup") placementGroup: xmlStringMaxLen255,
@as("SuspendedProcesses") suspendedProcesses: suspendedProcesses,
@as("CreatedTime") createdTime: option<timestampType>,
@as("Instances") instances: instances,
@as("HealthCheckGracePeriod") healthCheckGracePeriod: healthCheckGracePeriod,
@as("HealthCheckType") healthCheckType: option<xmlStringMaxLen32>,
@as("TargetGroupARNs") targetGroupARNs: targetGroupARNs,
@as("LoadBalancerNames") loadBalancerNames: loadBalancerNames,
@as("AvailabilityZones") availabilityZones: option<availabilityZones>,
@as("DefaultCooldown") defaultCooldown: option<cooldown>,
@as("PredictedCapacity") predictedCapacity: autoScalingGroupPredictedCapacity,
@as("DesiredCapacity") desiredCapacity: option<autoScalingGroupDesiredCapacity>,
@as("MaxSize") maxSize: option<autoScalingGroupMaxSize>,
@as("MinSize") minSize: option<autoScalingGroupMinSize>,
@as("MixedInstancesPolicy") mixedInstancesPolicy: mixedInstancesPolicy,
@as("LaunchTemplate") launchTemplate: launchTemplateSpecification,
@as("LaunchConfigurationName") launchConfigurationName: xmlStringMaxLen255,
@as("AutoScalingGroupARN") autoScalingGroupARN: resourceName,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
type autoScalingGroups = array<autoScalingGroup>
type clientType;
@module("@aws-sdk/client-autoscaling") @new external createClient: unit => clientType = "AutoScalingClient";
module SetInstanceHealth = {
  type t;
  type request = {
@as("ShouldRespectGracePeriod") shouldRespectGracePeriod: shouldRespectGracePeriod,
@as("HealthStatus") healthStatus: option<xmlStringMaxLen32>,
@as("InstanceId") instanceId: option<xmlStringMaxLen19>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "SetInstanceHealthCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetDesiredCapacity = {
  type t;
  type request = {
@as("HonorCooldown") honorCooldown: honorCooldown,
@as("DesiredCapacity") desiredCapacity: option<autoScalingGroupDesiredCapacity>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "SetDesiredCapacityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RecordLifecycleActionHeartbeat = {
  type t;
  type request = {
@as("InstanceId") instanceId: xmlStringMaxLen19,
@as("LifecycleActionToken") lifecycleActionToken: lifecycleActionToken,
@as("AutoScalingGroupName") autoScalingGroupName: option<resourceName>,
@as("LifecycleHookName") lifecycleHookName: option<asciiStringMaxLen255>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "RecordLifecycleActionHeartbeatCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutWarmPool = {
  type t;
  type request = {
@as("PoolState") poolState: warmPoolState,
@as("MinSize") minSize: warmPoolMinSize,
@as("MaxGroupPreparedCapacity") maxGroupPreparedCapacity: maxGroupPreparedCapacity,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "PutWarmPoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutScheduledUpdateGroupAction = {
  type t;
  type request = {
@as("TimeZone") timeZone: xmlStringMaxLen255,
@as("DesiredCapacity") desiredCapacity: autoScalingGroupDesiredCapacity,
@as("MaxSize") maxSize: autoScalingGroupMaxSize,
@as("MinSize") minSize: autoScalingGroupMinSize,
@as("Recurrence") recurrence: xmlStringMaxLen255,
@as("EndTime") endTime: timestampType,
@as("StartTime") startTime: timestampType,
@as("Time") time: timestampType,
@as("ScheduledActionName") scheduledActionName: option<xmlStringMaxLen255>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "PutScheduledUpdateGroupActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutLifecycleHook = {
  type t;
  type request = {
@as("DefaultResult") defaultResult: lifecycleActionResult,
@as("HeartbeatTimeout") heartbeatTimeout: heartbeatTimeout,
@as("NotificationMetadata") notificationMetadata: xmlStringMaxLen1023,
@as("NotificationTargetARN") notificationTargetARN: notificationTargetResourceName,
@as("RoleARN") roleARN: xmlStringMaxLen255,
@as("LifecycleTransition") lifecycleTransition: lifecycleTransition,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
@as("LifecycleHookName") lifecycleHookName: option<asciiStringMaxLen255>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "PutLifecycleHookCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExecutePolicy = {
  type t;
  type request = {
@as("BreachThreshold") breachThreshold: metricScale,
@as("MetricValue") metricValue: metricScale,
@as("HonorCooldown") honorCooldown: honorCooldown,
@as("PolicyName") policyName: option<resourceName>,
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "ExecutePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeAccountLimits = {
  type t;
  
  type response = {
@as("NumberOfLaunchConfigurations") numberOfLaunchConfigurations: numberOfLaunchConfigurations,
@as("NumberOfAutoScalingGroups") numberOfAutoScalingGroups: numberOfAutoScalingGroups,
@as("MaxNumberOfLaunchConfigurations") maxNumberOfLaunchConfigurations: maxNumberOfLaunchConfigurations,
@as("MaxNumberOfAutoScalingGroups") maxNumberOfAutoScalingGroups: maxNumberOfAutoScalingGroups
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<unit>) => t = "DescribeAccountLimitsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWarmPool = {
  type t;
  type request = {
@as("ForceDelete") forceDelete: forceDelete,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DeleteWarmPoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteScheduledAction = {
  type t;
  type request = {
@as("ScheduledActionName") scheduledActionName: option<xmlStringMaxLen255>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DeleteScheduledActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: option<resourceName>,
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DeletePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteNotificationConfiguration = {
  type t;
  type request = {
@as("TopicARN") topicARN: option<xmlStringMaxLen255>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DeleteNotificationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteLifecycleHook = {
  type t;
  type request = {
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
@as("LifecycleHookName") lifecycleHookName: option<asciiStringMaxLen255>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DeleteLifecycleHookCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLaunchConfiguration = {
  type t;
  type request = {
@as("LaunchConfigurationName") launchConfigurationName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DeleteLaunchConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAutoScalingGroup = {
  type t;
  type request = {
@as("ForceDelete") forceDelete: forceDelete,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DeleteAutoScalingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CompleteLifecycleAction = {
  type t;
  type request = {
@as("InstanceId") instanceId: xmlStringMaxLen19,
@as("LifecycleActionResult") lifecycleActionResult: option<lifecycleActionResult>,
@as("LifecycleActionToken") lifecycleActionToken: lifecycleActionToken,
@as("AutoScalingGroupName") autoScalingGroupName: option<resourceName>,
@as("LifecycleHookName") lifecycleHookName: option<asciiStringMaxLen255>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "CompleteLifecycleActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelInstanceRefresh = {
  type t;
  type request = {
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("InstanceRefreshId") instanceRefreshId: xmlStringMaxLen255
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "CancelInstanceRefreshCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TerminateInstanceInAutoScalingGroup = {
  type t;
  type request = {
@as("ShouldDecrementDesiredCapacity") shouldDecrementDesiredCapacity: option<shouldDecrementDesiredCapacity>,
@as("InstanceId") instanceId: option<xmlStringMaxLen19>
}
  type response = {
@as("Activity") activity: activity
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "TerminateInstanceInAutoScalingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SuspendProcesses = {
  type t;
  type request = {
@as("ScalingProcesses") scalingProcesses: processNames,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "SuspendProcessesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetInstanceProtection = {
  type t;
  type request = {
@as("ProtectedFromScaleIn") protectedFromScaleIn: option<protectedFromScaleIn>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
@as("InstanceIds") instanceIds: option<instanceIds>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "SetInstanceProtectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResumeProcesses = {
  type t;
  type request = {
@as("ScalingProcesses") scalingProcesses: processNames,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "ResumeProcessesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutNotificationConfiguration = {
  type t;
  type request = {
@as("NotificationTypes") notificationTypes: option<autoScalingNotificationTypes>,
@as("TopicARN") topicARN: option<xmlStringMaxLen255>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "PutNotificationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module EnableMetricsCollection = {
  type t;
  type request = {
@as("Granularity") granularity: option<xmlStringMaxLen255>,
@as("Metrics") metrics: metrics,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "EnableMetricsCollectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisableMetricsCollection = {
  type t;
  type request = {
@as("Metrics") metrics: metrics,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DisableMetricsCollectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DetachLoadBalancers = {
  type t;
  type request = {
@as("LoadBalancerNames") loadBalancerNames: option<loadBalancerNames>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DetachLoadBalancersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachLoadBalancerTargetGroups = {
  type t;
  type request = {
@as("TargetGroupARNs") targetGroupARNs: option<targetGroupARNs>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DetachLoadBalancerTargetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTerminationPolicyTypes = {
  type t;
  
  type response = {
@as("TerminationPolicyTypes") terminationPolicyTypes: terminationPolicies
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<unit>) => t = "DescribeTerminationPolicyTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLifecycleHookTypes = {
  type t;
  
  type response = {
@as("LifecycleHookTypes") lifecycleHookTypes: autoScalingNotificationTypes
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<unit>) => t = "DescribeLifecycleHookTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAutoScalingNotificationTypes = {
  type t;
  
  type response = {
@as("AutoScalingNotificationTypes") autoScalingNotificationTypes: autoScalingNotificationTypes
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<unit>) => t = "DescribeAutoScalingNotificationTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachLoadBalancers = {
  type t;
  type request = {
@as("LoadBalancerNames") loadBalancerNames: option<loadBalancerNames>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "AttachLoadBalancersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachLoadBalancerTargetGroups = {
  type t;
  type request = {
@as("TargetGroupARNs") targetGroupARNs: option<targetGroupARNs>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = unit
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "AttachLoadBalancerTargetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachInstances = {
  type t;
  type request = {
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
@as("InstanceIds") instanceIds: instanceIds
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "AttachInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartInstanceRefresh = {
  type t;
  type request = {
@as("Preferences") preferences: refreshPreferences,
@as("Strategy") strategy: refreshStrategy,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("InstanceRefreshId") instanceRefreshId: xmlStringMaxLen255
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "StartInstanceRefreshCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExitStandby = {
  type t;
  type request = {
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
@as("InstanceIds") instanceIds: instanceIds
}
  type response = {
@as("Activities") activities: activities
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "ExitStandbyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnterStandby = {
  type t;
  type request = {
@as("ShouldDecrementDesiredCapacity") shouldDecrementDesiredCapacity: option<shouldDecrementDesiredCapacity>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
@as("InstanceIds") instanceIds: instanceIds
}
  type response = {
@as("Activities") activities: activities
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "EnterStandbyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachInstances = {
  type t;
  type request = {
@as("ShouldDecrementDesiredCapacity") shouldDecrementDesiredCapacity: option<shouldDecrementDesiredCapacity>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>,
@as("InstanceIds") instanceIds: instanceIds
}
  type response = {
@as("Activities") activities: activities
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DetachInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScheduledActions = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("NextToken") nextToken: xmlString,
@as("EndTime") endTime: timestampType,
@as("StartTime") startTime: timestampType,
@as("ScheduledActionNames") scheduledActionNames: scheduledActionNames,
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("ScheduledUpdateGroupActions") scheduledUpdateGroupActions: scheduledUpdateGroupActions
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeScheduledActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingProcessTypes = {
  type t;
  
  type response = {
@as("Processes") processes: processes
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<unit>) => t = "DescribeScalingProcessTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingActivities = {
  type t;
  type request = {
@as("NextToken") nextToken: xmlString,
@as("MaxRecords") maxRecords: maxRecords,
@as("IncludeDeletedGroups") includeDeletedGroups: includeDeletedGroups,
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255,
@as("ActivityIds") activityIds: activityIds
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("Activities") activities: option<activities>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeScalingActivitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNotificationConfigurations = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("NextToken") nextToken: xmlString,
@as("AutoScalingGroupNames") autoScalingGroupNames: autoScalingGroupNames
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("NotificationConfigurations") notificationConfigurations: option<notificationConfigurations>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeNotificationConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMetricCollectionTypes = {
  type t;
  
  type response = {
@as("Granularities") granularities: metricGranularityTypes,
@as("Metrics") metrics: metricCollectionTypes
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<unit>) => t = "DescribeMetricCollectionTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancers = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("NextToken") nextToken: xmlString,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("LoadBalancers") loadBalancers: loadBalancerStates
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoadBalancersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancerTargetGroups = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("NextToken") nextToken: xmlString,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("LoadBalancerTargetGroups") loadBalancerTargetGroups: loadBalancerTargetGroupStates
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoadBalancerTargetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLifecycleHooks = {
  type t;
  type request = {
@as("LifecycleHookNames") lifecycleHookNames: lifecycleHookNames,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("LifecycleHooks") lifecycleHooks: lifecycleHooks
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeLifecycleHooksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAdjustmentTypes = {
  type t;
  
  type response = {
@as("AdjustmentTypes") adjustmentTypes: adjustmentTypes
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<unit>) => t = "DescribeAdjustmentTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("Tags") tags: option<tags>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DeleteTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateOrUpdateTags = {
  type t;
  type request = {
@as("Tags") tags: option<tags>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "CreateOrUpdateTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module BatchPutScheduledUpdateGroupAction = {
  type t;
  type request = {
@as("ScheduledUpdateGroupActions") scheduledUpdateGroupActions: option<scheduledUpdateGroupActionRequests>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("FailedScheduledUpdateGroupActions") failedScheduledUpdateGroupActions: failedScheduledUpdateGroupActionRequests
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "BatchPutScheduledUpdateGroupActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteScheduledAction = {
  type t;
  type request = {
@as("ScheduledActionNames") scheduledActionNames: option<scheduledActionNames>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("FailedScheduledActions") failedScheduledActions: failedScheduledUpdateGroupActionRequests
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "BatchDeleteScheduledActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWarmPool = {
  type t;
  type request = {
@as("NextToken") nextToken: xmlString,
@as("MaxRecords") maxRecords: maxRecords,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("Instances") instances: instances,
@as("WarmPoolConfiguration") warmPoolConfiguration: warmPoolConfiguration
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeWarmPoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("NextToken") nextToken: xmlString,
@as("Filters") filters: filters
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("Tags") tags: tagDescriptionList
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAutoScalingInstances = {
  type t;
  type request = {
@as("NextToken") nextToken: xmlString,
@as("MaxRecords") maxRecords: maxRecords,
@as("InstanceIds") instanceIds: instanceIds
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("AutoScalingInstances") autoScalingInstances: autoScalingInstances
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeAutoScalingInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLaunchConfiguration = {
  type t;
  type request = {
@as("MetadataOptions") metadataOptions: instanceMetadataOptions,
@as("PlacementTenancy") placementTenancy: xmlStringMaxLen64,
@as("AssociatePublicIpAddress") associatePublicIpAddress: associatePublicIpAddress,
@as("EbsOptimized") ebsOptimized: ebsOptimized,
@as("IamInstanceProfile") iamInstanceProfile: xmlStringMaxLen1600,
@as("SpotPrice") spotPrice: spotPrice,
@as("InstanceMonitoring") instanceMonitoring: instanceMonitoring,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappings,
@as("RamdiskId") ramdiskId: xmlStringMaxLen255,
@as("KernelId") kernelId: xmlStringMaxLen255,
@as("InstanceType") instanceType: xmlStringMaxLen255,
@as("InstanceId") instanceId: xmlStringMaxLen19,
@as("UserData") userData: xmlStringUserData,
@as("ClassicLinkVPCSecurityGroups") classicLinkVPCSecurityGroups: classicLinkVPCSecurityGroups,
@as("ClassicLinkVPCId") classicLinkVPCId: xmlStringMaxLen255,
@as("SecurityGroups") securityGroups: securityGroups,
@as("KeyName") keyName: xmlStringMaxLen255,
@as("ImageId") imageId: xmlStringMaxLen255,
@as("LaunchConfigurationName") launchConfigurationName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "CreateLaunchConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutScalingPolicy = {
  type t;
  type request = {
@as("PredictiveScalingConfiguration") predictiveScalingConfiguration: predictiveScalingConfiguration,
@as("Enabled") enabled: scalingPolicyEnabled,
@as("TargetTrackingConfiguration") targetTrackingConfiguration: targetTrackingConfiguration,
@as("EstimatedInstanceWarmup") estimatedInstanceWarmup: estimatedInstanceWarmup,
@as("StepAdjustments") stepAdjustments: stepAdjustments,
@as("MetricAggregationType") metricAggregationType: xmlStringMaxLen32,
@as("Cooldown") cooldown: cooldown,
@as("ScalingAdjustment") scalingAdjustment: policyIncrement,
@as("MinAdjustmentMagnitude") minAdjustmentMagnitude: minAdjustmentMagnitude,
@as("MinAdjustmentStep") minAdjustmentStep: minAdjustmentStep,
@as("AdjustmentType") adjustmentType: xmlStringMaxLen255,
@as("PolicyType") policyType: xmlStringMaxLen64,
@as("PolicyName") policyName: option<xmlStringMaxLen255>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("Alarms") alarms: alarms,
@as("PolicyARN") policyARN: resourceName
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "PutScalingPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPredictiveScalingForecast = {
  type t;
  type request = {
@as("EndTime") endTime: option<timestampType>,
@as("StartTime") startTime: option<timestampType>,
@as("PolicyName") policyName: option<xmlStringMaxLen255>,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("UpdateTime") updateTime: option<timestampType>,
@as("CapacityForecast") capacityForecast: option<capacityForecast>,
@as("LoadForecast") loadForecast: option<loadForecasts>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "GetPredictiveScalingForecastCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceRefreshes = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("NextToken") nextToken: xmlString,
@as("InstanceRefreshIds") instanceRefreshIds: instanceRefreshIds,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("InstanceRefreshes") instanceRefreshes: instanceRefreshes
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstanceRefreshesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAutoScalingGroup = {
  type t;
  type request = {
@as("CapacityRebalance") capacityRebalance: capacityRebalanceEnabled,
@as("MaxInstanceLifetime") maxInstanceLifetime: maxInstanceLifetime,
@as("ServiceLinkedRoleARN") serviceLinkedRoleARN: resourceName,
@as("NewInstancesProtectedFromScaleIn") newInstancesProtectedFromScaleIn: instanceProtected,
@as("TerminationPolicies") terminationPolicies: terminationPolicies,
@as("VPCZoneIdentifier") vPCZoneIdentifier: xmlStringMaxLen2047,
@as("PlacementGroup") placementGroup: xmlStringMaxLen255,
@as("HealthCheckGracePeriod") healthCheckGracePeriod: healthCheckGracePeriod,
@as("HealthCheckType") healthCheckType: xmlStringMaxLen32,
@as("AvailabilityZones") availabilityZones: availabilityZones,
@as("DefaultCooldown") defaultCooldown: cooldown,
@as("DesiredCapacity") desiredCapacity: autoScalingGroupDesiredCapacity,
@as("MaxSize") maxSize: autoScalingGroupMaxSize,
@as("MinSize") minSize: autoScalingGroupMinSize,
@as("MixedInstancesPolicy") mixedInstancesPolicy: mixedInstancesPolicy,
@as("LaunchTemplate") launchTemplate: launchTemplateSpecification,
@as("LaunchConfigurationName") launchConfigurationName: xmlStringMaxLen255,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "UpdateAutoScalingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeLaunchConfigurations = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("NextToken") nextToken: xmlString,
@as("LaunchConfigurationNames") launchConfigurationNames: launchConfigurationNames
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("LaunchConfigurations") launchConfigurations: option<launchConfigurations>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeLaunchConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAutoScalingGroup = {
  type t;
  type request = {
@as("MaxInstanceLifetime") maxInstanceLifetime: maxInstanceLifetime,
@as("ServiceLinkedRoleARN") serviceLinkedRoleARN: resourceName,
@as("Tags") tags: tags,
@as("LifecycleHookSpecificationList") lifecycleHookSpecificationList: lifecycleHookSpecifications,
@as("CapacityRebalance") capacityRebalance: capacityRebalanceEnabled,
@as("NewInstancesProtectedFromScaleIn") newInstancesProtectedFromScaleIn: instanceProtected,
@as("TerminationPolicies") terminationPolicies: terminationPolicies,
@as("VPCZoneIdentifier") vPCZoneIdentifier: xmlStringMaxLen2047,
@as("PlacementGroup") placementGroup: xmlStringMaxLen255,
@as("HealthCheckGracePeriod") healthCheckGracePeriod: healthCheckGracePeriod,
@as("HealthCheckType") healthCheckType: xmlStringMaxLen32,
@as("TargetGroupARNs") targetGroupARNs: targetGroupARNs,
@as("LoadBalancerNames") loadBalancerNames: loadBalancerNames,
@as("AvailabilityZones") availabilityZones: availabilityZones,
@as("DefaultCooldown") defaultCooldown: cooldown,
@as("DesiredCapacity") desiredCapacity: autoScalingGroupDesiredCapacity,
@as("MaxSize") maxSize: option<autoScalingGroupMaxSize>,
@as("MinSize") minSize: option<autoScalingGroupMinSize>,
@as("InstanceId") instanceId: xmlStringMaxLen19,
@as("MixedInstancesPolicy") mixedInstancesPolicy: mixedInstancesPolicy,
@as("LaunchTemplate") launchTemplate: launchTemplateSpecification,
@as("LaunchConfigurationName") launchConfigurationName: xmlStringMaxLen255,
@as("AutoScalingGroupName") autoScalingGroupName: option<xmlStringMaxLen255>
}
  
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "CreateAutoScalingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribePolicies = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("NextToken") nextToken: xmlString,
@as("PolicyTypes") policyTypes: policyTypes,
@as("PolicyNames") policyNames: policyNames,
@as("AutoScalingGroupName") autoScalingGroupName: xmlStringMaxLen255
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("ScalingPolicies") scalingPolicies: scalingPolicies
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribePoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAutoScalingGroups = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("NextToken") nextToken: xmlString,
@as("AutoScalingGroupNames") autoScalingGroupNames: autoScalingGroupNames
}
  type response = {
@as("NextToken") nextToken: xmlString,
@as("AutoScalingGroups") autoScalingGroups: option<autoScalingGroups>
}
  @module("@aws-sdk/client-autoscaling") @new external new_: (Js.Promise.t<request>) => t = "DescribeAutoScalingGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
