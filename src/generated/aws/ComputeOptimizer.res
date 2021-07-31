type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type volumeType = string
type volumeSize = int;
type volumeBurstThroughput = int;
type volumeBurstIOPS = int;
type volumeBaselineThroughput = int;
type volumeBaselineIOPS = int;
type volumeArn = string
type amazonawsTimestamp = Js.Date.t;
type summaryValue = float;
type statusReason = string
type status = [@as("Failed") #Failed | @as("Pending") #Pending | @as("Inactive") #Inactive | @as("Active") #Active]
type resourceType = [@as("LambdaFunction") #LambdaFunction | @as("EbsVolume") #EbsVolume | @as("AutoScalingGroup") #AutoScalingGroup | @as("Ec2Instance") #Ec2Instance]
type recommendedInstanceType = string
type recommendationSourceType = [@as("LambdaFunction") #LambdaFunction | @as("EbsVolume") #EbsVolume | @as("AutoScalingGroup") #AutoScalingGroup | @as("Ec2Instance") #Ec2Instance]
type recommendationSourceArn = string
type rank = int;
type platformDifference = [@as("VirtualizationType") #VirtualizationType | @as("InstanceStoreAvailability") #InstanceStoreAvailability | @as("StorageInterface") #StorageInterface | @as("NetworkInterface") #NetworkInterface | @as("Hypervisor") #Hypervisor]
type period = int;
type performanceRisk = float;
type numberOfInvocations = float;
type nextToken = string
type minSize = int;
type metricValue = float;
type metricStatistic = [@as("Average") #Average | @as("Maximum") #Maximum]
type metricName = [@as("NETWORK_PACKETS_OUT_PER_SECOND") #NETWORK_PACKETS_OUT_PER_SECOND | @as("NETWORK_PACKETS_IN_PER_SECOND") #NETWORK_PACKETS_IN_PER_SECOND | @as("NETWORK_OUT_BYTES_PER_SECOND") #NETWORK_OUT_BYTES_PER_SECOND | @as("NETWORK_IN_BYTES_PER_SECOND") #NETWORK_IN_BYTES_PER_SECOND | @as("DISK_WRITE_BYTES_PER_SECOND") #DISK_WRITE_BYTES_PER_SECOND | @as("DISK_READ_BYTES_PER_SECOND") #DISK_READ_BYTES_PER_SECOND | @as("DISK_WRITE_OPS_PER_SECOND") #DISK_WRITE_OPS_PER_SECOND | @as("DISK_READ_OPS_PER_SECOND") #DISK_READ_OPS_PER_SECOND | @as("EBS_WRITE_BYTES_PER_SECOND") #EBS_WRITE_BYTES_PER_SECOND | @as("EBS_READ_BYTES_PER_SECOND") #EBS_READ_BYTES_PER_SECOND | @as("EBS_WRITE_OPS_PER_SECOND") #EBS_WRITE_OPS_PER_SECOND | @as("EBS_READ_OPS_PER_SECOND") #EBS_READ_OPS_PER_SECOND | @as("Memory") #Memory | @as("Cpu") #Cpu]
type metadataKey = string
type message = string
type memorySize = int;
type memberAccountsEnrolled = bool;
type maxSize = int;
type maxResults = int;
type lookBackPeriodInDays = float;
type lastUpdatedTimestamp = Js.Date.t;
type lastRefreshTimestamp = Js.Date.t;
type lambdaFunctionRecommendationFindingReasonCode = [@as("Inconclusive") #Inconclusive | @as("InsufficientData") #InsufficientData | @as("MemoryUnderprovisioned") #MemoryUnderprovisioned | @as("MemoryOverprovisioned") #MemoryOverprovisioned]
type lambdaFunctionRecommendationFinding = [@as("Unavailable") #Unavailable | @as("NotOptimized") #NotOptimized | @as("Optimized") #Optimized]
type lambdaFunctionRecommendationFilterName = [@as("FindingReasonCode") #FindingReasonCode | @as("Finding") #Finding]
type lambdaFunctionMetricStatistic = [@as("Average") #Average | @as("Maximum") #Maximum]
type lambdaFunctionMetricName = [@as("Memory") #Memory | @as("Duration") #Duration]
type lambdaFunctionMemoryMetricStatistic = [@as("Expected") #Expected | @as("UpperBound") #UpperBound | @as("LowerBound") #LowerBound]
type lambdaFunctionMemoryMetricName = [@as("Duration") #Duration]
type jobStatus = [@as("Failed") #Failed | @as("Complete") #Complete | @as("InProgress") #InProgress | @as("Queued") #Queued]
type jobId = string
type jobFilterName = [@as("JobStatus") #JobStatus | @as("ResourceType") #ResourceType]
type instanceType = string
type instanceRecommendationFindingReasonCode = [@as("DiskThroughputUnderprovisioned") #DiskThroughputUnderprovisioned | @as("DiskThroughputOverprovisioned") #DiskThroughputOverprovisioned | @as("DiskIOPSUnderprovisioned") #DiskIOPSUnderprovisioned | @as("DiskIOPSOverprovisioned") #DiskIOPSOverprovisioned | @as("NetworkPPSUnderprovisioned") #NetworkPPSUnderprovisioned | @as("NetworkPPSOverprovisioned") #NetworkPPSOverprovisioned | @as("NetworkBandwidthUnderprovisioned") #NetworkBandwidthUnderprovisioned | @as("NetworkBandwidthOverprovisioned") #NetworkBandwidthOverprovisioned | @as("EBSIOPSUnderprovisioned") #EBSIOPSUnderprovisioned | @as("EBSIOPSOverprovisioned") #EBSIOPSOverprovisioned | @as("EBSThroughputUnderprovisioned") #EBSThroughputUnderprovisioned | @as("EBSThroughputOverprovisioned") #EBSThroughputOverprovisioned | @as("MemoryUnderprovisioned") #MemoryUnderprovisioned | @as("MemoryOverprovisioned") #MemoryOverprovisioned | @as("CPUUnderprovisioned") #CPUUnderprovisioned | @as("CPUOverprovisioned") #CPUOverprovisioned]
type instanceName = string
type instanceArn = string
type includeMemberAccounts = bool;
type identifier = string
type functionVersion = string
type functionArn = string
type findingReasonCode = [@as("MemoryUnderprovisioned") #MemoryUnderprovisioned | @as("MemoryOverprovisioned") #MemoryOverprovisioned]
type finding = [@as("NotOptimized") #NotOptimized | @as("Optimized") #Optimized | @as("Overprovisioned") #Overprovisioned | @as("Underprovisioned") #Underprovisioned]
type filterValue = string
type filterName = [@as("RecommendationSourceType") #RecommendationSourceType | @as("FindingReasonCodes") #FindingReasonCodes | @as("Finding") #Finding]
type fileFormat = [@as("Csv") #Csv]
type failureReason = string
type exportableVolumeField = [@as("LastRefreshTimestamp") #LastRefreshTimestamp | @as("RecommendationOptionsPerformanceRisk") #RecommendationOptionsPerformanceRisk | @as("RecommendationOptionsMonthlyPrice") #RecommendationOptionsMonthlyPrice | @as("RecommendationOptionsConfigurationVolumeSize") #RecommendationOptionsConfigurationVolumeSize | @as("RecommendationOptionsConfigurationVolumeBurstThroughput") #RecommendationOptionsConfigurationVolumeBurstThroughput | @as("RecommendationOptionsConfigurationVolumeBurstIOPS") #RecommendationOptionsConfigurationVolumeBurstIOPS | @as("RecommendationOptionsConfigurationVolumeBaselineThroughput") #RecommendationOptionsConfigurationVolumeBaselineThroughput | @as("RecommendationOptionsConfigurationVolumeBaselineIOPS") #RecommendationOptionsConfigurationVolumeBaselineIOPS | @as("RecommendationOptionsConfigurationVolumeType") #RecommendationOptionsConfigurationVolumeType | @as("CurrentMonthlyPrice") #CurrentMonthlyPrice | @as("CurrentConfigurationVolumeSize") #CurrentConfigurationVolumeSize | @as("CurrentConfigurationVolumeBurstThroughput") #CurrentConfigurationVolumeBurstThroughput | @as("CurrentConfigurationVolumeBurstIOPS") #CurrentConfigurationVolumeBurstIOPS | @as("CurrentConfigurationVolumeBaselineThroughput") #CurrentConfigurationVolumeBaselineThroughput | @as("CurrentConfigurationVolumeBaselineIOPS") #CurrentConfigurationVolumeBaselineIOPS | @as("CurrentConfigurationVolumeType") #CurrentConfigurationVolumeType | @as("LookbackPeriodInDays") #LookbackPeriodInDays | @as("UtilizationMetricsVolumeWriteBytesPerSecondMaximum") #UtilizationMetricsVolumeWriteBytesPerSecondMaximum | @as("UtilizationMetricsVolumeReadBytesPerSecondMaximum") #UtilizationMetricsVolumeReadBytesPerSecondMaximum | @as("UtilizationMetricsVolumeWriteOpsPerSecondMaximum") #UtilizationMetricsVolumeWriteOpsPerSecondMaximum | @as("UtilizationMetricsVolumeReadOpsPerSecondMaximum") #UtilizationMetricsVolumeReadOpsPerSecondMaximum | @as("Finding") #Finding | @as("VolumeArn") #VolumeArn | @as("AccountId") #AccountId]
type exportableLambdaFunctionField = [@as("LastRefreshTimestamp") #LastRefreshTimestamp | @as("RecommendationOptionsProjectedUtilizationMetricsDurationExpected") #RecommendationOptionsProjectedUtilizationMetricsDurationExpected | @as("RecommendationOptionsProjectedUtilizationMetricsDurationUpperBound") #RecommendationOptionsProjectedUtilizationMetricsDurationUpperBound | @as("RecommendationOptionsProjectedUtilizationMetricsDurationLowerBound") #RecommendationOptionsProjectedUtilizationMetricsDurationLowerBound | @as("RecommendationOptionsCostHigh") #RecommendationOptionsCostHigh | @as("RecommendationOptionsCostLow") #RecommendationOptionsCostLow | @as("RecommendationOptionsConfigurationMemorySize") #RecommendationOptionsConfigurationMemorySize | @as("CurrentCostAverage") #CurrentCostAverage | @as("CurrentCostTotal") #CurrentCostTotal | @as("CurrentConfigurationTimeout") #CurrentConfigurationTimeout | @as("CurrentConfigurationMemorySize") #CurrentConfigurationMemorySize | @as("LookbackPeriodInDays") #LookbackPeriodInDays | @as("UtilizationMetricsMemoryAverage") #UtilizationMetricsMemoryAverage | @as("UtilizationMetricsMemoryMaximum") #UtilizationMetricsMemoryMaximum | @as("UtilizationMetricsDurationAverage") #UtilizationMetricsDurationAverage | @as("UtilizationMetricsDurationMaximum") #UtilizationMetricsDurationMaximum | @as("NumberOfInvocations") #NumberOfInvocations | @as("FindingReasonCodes") #FindingReasonCodes | @as("Finding") #Finding | @as("FunctionVersion") #FunctionVersion | @as("FunctionArn") #FunctionArn | @as("AccountId") #AccountId]
type exportableInstanceField = [@as("LastRefreshTimestamp") #LastRefreshTimestamp | @as("RecommendationsSourcesRecommendationSourceType") #RecommendationsSourcesRecommendationSourceType | @as("RecommendationsSourcesRecommendationSourceArn") #RecommendationsSourcesRecommendationSourceArn | @as("RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice") #RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice | @as("RecommendationOptionsStandardOneYearNoUpfrontReservedPrice") #RecommendationOptionsStandardOneYearNoUpfrontReservedPrice | @as("RecommendationOptionsOnDemandPrice") #RecommendationOptionsOnDemandPrice | @as("RecommendationOptionsNetwork") #RecommendationOptionsNetwork | @as("RecommendationOptionsStorage") #RecommendationOptionsStorage | @as("RecommendationOptionsMemory") #RecommendationOptionsMemory | @as("RecommendationOptionsVcpus") #RecommendationOptionsVcpus | @as("RecommendationOptionsPerformanceRisk") #RecommendationOptionsPerformanceRisk | @as("RecommendationOptionsPlatformDifferences") #RecommendationOptionsPlatformDifferences | @as("RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum") #RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum | @as("RecommendationOptionsProjectedUtilizationMetricsCpuMaximum") #RecommendationOptionsProjectedUtilizationMetricsCpuMaximum | @as("RecommendationOptionsInstanceType") #RecommendationOptionsInstanceType | @as("CurrentNetwork") #CurrentNetwork | @as("CurrentStorage") #CurrentStorage | @as("CurrentMemory") #CurrentMemory | @as("CurrentVCpus") #CurrentVCpus | @as("CurrentStandardThreeYearNoUpfrontReservedPrice") #CurrentStandardThreeYearNoUpfrontReservedPrice | @as("CurrentStandardOneYearNoUpfrontReservedPrice") #CurrentStandardOneYearNoUpfrontReservedPrice | @as("CurrentOnDemandPrice") #CurrentOnDemandPrice | @as("UtilizationMetricsNetworkPacketsOutPerSecondMaximum") #UtilizationMetricsNetworkPacketsOutPerSecondMaximum | @as("UtilizationMetricsNetworkPacketsInPerSecondMaximum") #UtilizationMetricsNetworkPacketsInPerSecondMaximum | @as("UtilizationMetricsNetworkOutBytesPerSecondMaximum") #UtilizationMetricsNetworkOutBytesPerSecondMaximum | @as("UtilizationMetricsNetworkInBytesPerSecondMaximum") #UtilizationMetricsNetworkInBytesPerSecondMaximum | @as("UtilizationMetricsDiskWriteBytesPerSecondMaximum") #UtilizationMetricsDiskWriteBytesPerSecondMaximum | @as("UtilizationMetricsDiskReadBytesPerSecondMaximum") #UtilizationMetricsDiskReadBytesPerSecondMaximum | @as("UtilizationMetricsDiskWriteOpsPerSecondMaximum") #UtilizationMetricsDiskWriteOpsPerSecondMaximum | @as("UtilizationMetricsDiskReadOpsPerSecondMaximum") #UtilizationMetricsDiskReadOpsPerSecondMaximum | @as("UtilizationMetricsEbsWriteBytesPerSecondMaximum") #UtilizationMetricsEbsWriteBytesPerSecondMaximum | @as("UtilizationMetricsEbsReadBytesPerSecondMaximum") #UtilizationMetricsEbsReadBytesPerSecondMaximum | @as("UtilizationMetricsEbsWriteOpsPerSecondMaximum") #UtilizationMetricsEbsWriteOpsPerSecondMaximum | @as("UtilizationMetricsEbsReadOpsPerSecondMaximum") #UtilizationMetricsEbsReadOpsPerSecondMaximum | @as("UtilizationMetricsMemoryMaximum") #UtilizationMetricsMemoryMaximum | @as("UtilizationMetricsCpuMaximum") #UtilizationMetricsCpuMaximum | @as("CurrentInstanceType") #CurrentInstanceType | @as("LookbackPeriodInDays") #LookbackPeriodInDays | @as("FindingReasonCodes") #FindingReasonCodes | @as("Finding") #Finding | @as("InstanceName") #InstanceName | @as("InstanceArn") #InstanceArn | @as("AccountId") #AccountId]
type exportableAutoScalingGroupField = [@as("LastRefreshTimestamp") #LastRefreshTimestamp | @as("RecommendationOptionsNetwork") #RecommendationOptionsNetwork | @as("RecommendationOptionsStorage") #RecommendationOptionsStorage | @as("RecommendationOptionsMemory") #RecommendationOptionsMemory | @as("RecommendationOptionsVcpus") #RecommendationOptionsVcpus | @as("RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice") #RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice | @as("RecommendationOptionsStandardOneYearNoUpfrontReservedPrice") #RecommendationOptionsStandardOneYearNoUpfrontReservedPrice | @as("RecommendationOptionsOnDemandPrice") #RecommendationOptionsOnDemandPrice | @as("RecommendationOptionsPerformanceRisk") #RecommendationOptionsPerformanceRisk | @as("RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum") #RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum | @as("RecommendationOptionsProjectedUtilizationMetricsCpuMaximum") #RecommendationOptionsProjectedUtilizationMetricsCpuMaximum | @as("RecommendationOptionsConfigurationMaxSize") #RecommendationOptionsConfigurationMaxSize | @as("RecommendationOptionsConfigurationMinSize") #RecommendationOptionsConfigurationMinSize | @as("RecommendationOptionsConfigurationDesiredCapacity") #RecommendationOptionsConfigurationDesiredCapacity | @as("RecommendationOptionsConfigurationInstanceType") #RecommendationOptionsConfigurationInstanceType | @as("CurrentNetwork") #CurrentNetwork | @as("CurrentStorage") #CurrentStorage | @as("CurrentMemory") #CurrentMemory | @as("CurrentVCpus") #CurrentVCpus | @as("CurrentStandardThreeYearNoUpfrontReservedPrice") #CurrentStandardThreeYearNoUpfrontReservedPrice | @as("CurrentStandardOneYearNoUpfrontReservedPrice") #CurrentStandardOneYearNoUpfrontReservedPrice | @as("CurrentOnDemandPrice") #CurrentOnDemandPrice | @as("CurrentConfigurationMaxSize") #CurrentConfigurationMaxSize | @as("CurrentConfigurationMinSize") #CurrentConfigurationMinSize | @as("CurrentConfigurationDesiredCapacity") #CurrentConfigurationDesiredCapacity | @as("CurrentConfigurationInstanceType") #CurrentConfigurationInstanceType | @as("LookbackPeriodInDays") #LookbackPeriodInDays | @as("UtilizationMetricsNetworkPacketsOutPerSecondMaximum") #UtilizationMetricsNetworkPacketsOutPerSecondMaximum | @as("UtilizationMetricsNetworkPacketsInPerSecondMaximum") #UtilizationMetricsNetworkPacketsInPerSecondMaximum | @as("UtilizationMetricsNetworkOutBytesPerSecondMaximum") #UtilizationMetricsNetworkOutBytesPerSecondMaximum | @as("UtilizationMetricsNetworkInBytesPerSecondMaximum") #UtilizationMetricsNetworkInBytesPerSecondMaximum | @as("UtilizationMetricsDiskWriteBytesPerSecondMaximum") #UtilizationMetricsDiskWriteBytesPerSecondMaximum | @as("UtilizationMetricsDiskReadBytesPerSecondMaximum") #UtilizationMetricsDiskReadBytesPerSecondMaximum | @as("UtilizationMetricsDiskWriteOpsPerSecondMaximum") #UtilizationMetricsDiskWriteOpsPerSecondMaximum | @as("UtilizationMetricsDiskReadOpsPerSecondMaximum") #UtilizationMetricsDiskReadOpsPerSecondMaximum | @as("UtilizationMetricsEbsWriteBytesPerSecondMaximum") #UtilizationMetricsEbsWriteBytesPerSecondMaximum | @as("UtilizationMetricsEbsReadBytesPerSecondMaximum") #UtilizationMetricsEbsReadBytesPerSecondMaximum | @as("UtilizationMetricsEbsWriteOpsPerSecondMaximum") #UtilizationMetricsEbsWriteOpsPerSecondMaximum | @as("UtilizationMetricsEbsReadOpsPerSecondMaximum") #UtilizationMetricsEbsReadOpsPerSecondMaximum | @as("UtilizationMetricsMemoryMaximum") #UtilizationMetricsMemoryMaximum | @as("UtilizationMetricsCpuMaximum") #UtilizationMetricsCpuMaximum | @as("Finding") #Finding | @as("AutoScalingGroupName") #AutoScalingGroupName | @as("AutoScalingGroupArn") #AutoScalingGroupArn | @as("AccountId") #AccountId]
type errorMessage = string
type eBSMetricName = [@as("VolumeWriteBytesPerSecond") #VolumeWriteBytesPerSecond | @as("VolumeReadBytesPerSecond") #VolumeReadBytesPerSecond | @as("VolumeWriteOpsPerSecond") #VolumeWriteOpsPerSecond | @as("VolumeReadOpsPerSecond") #VolumeReadOpsPerSecond]
type eBSFinding = [@as("NotOptimized") #NotOptimized | @as("Optimized") #Optimized]
type eBSFilterName = [@as("Finding") #Finding]
type destinationKeyPrefix = string
type destinationKey = string
type destinationBucket = string
type desiredCapacity = int;
type currentInstanceType = string
type creationTimestamp = Js.Date.t;
type code = string
type autoScalingGroupName = string
type autoScalingGroupArn = string
type accountId = string
type volumeConfiguration = {
@as("volumeBurstThroughput") volumeBurstThroughput: volumeBurstThroughput,
@as("volumeBaselineThroughput") volumeBaselineThroughput: volumeBaselineThroughput,
@as("volumeBurstIOPS") volumeBurstIOPS: volumeBurstIOPS,
@as("volumeBaselineIOPS") volumeBaselineIOPS: volumeBaselineIOPS,
@as("volumeSize") volumeSize: volumeSize,
@as("volumeType") volumeType: volumeType
}
type volumeArns = array<volumeArn>
type utilizationMetric = {
@as("value") value: metricValue,
@as("statistic") statistic: metricStatistic,
@as("name") name: metricName
}
type timestamps = array<amazonawsTimestamp>
type s3DestinationConfig = {
@as("keyPrefix") keyPrefix: destinationKeyPrefix,
@as("bucket") bucket: destinationBucket
}
type s3Destination = {
@as("metadataKey") metadataKey: metadataKey,
@as("key") key: destinationKey,
@as("bucket") bucket: destinationBucket
}
type recommendationSource = {
@as("recommendationSourceType") recommendationSourceType: recommendationSourceType,
@as("recommendationSourceArn") recommendationSourceArn: recommendationSourceArn
}
type reasonCodeSummary = {
@as("value") value: summaryValue,
@as("name") name: findingReasonCode
}
type platformDifferences = array<platformDifference>
type metricValues = array<metricValue>
type lambdaFunctionUtilizationMetric = {
@as("value") value: metricValue,
@as("statistic") statistic: lambdaFunctionMetricStatistic,
@as("name") name: lambdaFunctionMetricName
}
type lambdaFunctionRecommendationFindingReasonCodes = array<lambdaFunctionRecommendationFindingReasonCode>
type lambdaFunctionMemoryProjectedMetric = {
@as("value") value: metricValue,
@as("statistic") statistic: lambdaFunctionMemoryMetricStatistic,
@as("name") name: lambdaFunctionMemoryMetricName
}
type jobIds = array<jobId>
type instanceRecommendationFindingReasonCodes = array<instanceRecommendationFindingReasonCode>
type instanceArns = array<instanceArn>
type getRecommendationError = {
@as("message") message: message,
@as("code") code: code,
@as("identifier") identifier: identifier
}
type functionArns = array<functionArn>
type filterValues = array<filterValue>
type exportableVolumeFields = array<exportableVolumeField>
type exportableLambdaFunctionFields = array<exportableLambdaFunctionField>
type exportableInstanceFields = array<exportableInstanceField>
type exportableAutoScalingGroupFields = array<exportableAutoScalingGroupField>
type eBSUtilizationMetric = {
@as("value") value: metricValue,
@as("statistic") statistic: metricStatistic,
@as("name") name: eBSMetricName
}
type autoScalingGroupConfiguration = {
@as("instanceType") instanceType: instanceType,
@as("maxSize") maxSize: maxSize,
@as("minSize") minSize: minSize,
@as("desiredCapacity") desiredCapacity: desiredCapacity
}
type autoScalingGroupArns = array<autoScalingGroupArn>
type accountIds = array<accountId>
type volumeRecommendationOption = {
@as("rank") rank: rank,
@as("performanceRisk") performanceRisk: performanceRisk,
@as("configuration") configuration: volumeConfiguration
}
type utilizationMetrics = array<utilizationMetric>
type recommendationSources = array<recommendationSource>
type reasonCodeSummaries = array<reasonCodeSummary>
type projectedUtilizationMetrics = array<utilizationMetric>
type projectedMetric = {
@as("values") values: metricValues,
@as("timestamps") timestamps: timestamps,
@as("name") name: metricName
}
type lambdaFunctionUtilizationMetrics = array<lambdaFunctionUtilizationMetric>
type lambdaFunctionRecommendationFilter = {
@as("values") values: filterValues,
@as("name") name: lambdaFunctionRecommendationFilterName
}
type lambdaFunctionMemoryProjectedMetrics = array<lambdaFunctionMemoryProjectedMetric>
type jobFilter = {
@as("values") values: filterValues,
@as("name") name: jobFilterName
}
type getRecommendationErrors = array<getRecommendationError>
type filter = {
@as("values") values: filterValues,
@as("name") name: filterName
}
type exportDestination = {
@as("s3") s3: s3Destination
}
type eBSUtilizationMetrics = array<eBSUtilizationMetric>
type eBSFilter = {
@as("values") values: filterValues,
@as("name") name: eBSFilterName
}
type volumeRecommendationOptions = array<volumeRecommendationOption>
type summary = {
@as("reasonCodeSummaries") reasonCodeSummaries: reasonCodeSummaries,
@as("value") value: summaryValue,
@as("name") name: finding
}
type recommendationExportJob = {
@as("failureReason") failureReason: failureReason,
@as("lastUpdatedTimestamp") lastUpdatedTimestamp: lastUpdatedTimestamp,
@as("creationTimestamp") creationTimestamp: creationTimestamp,
@as("status") status: jobStatus,
@as("resourceType") resourceType: resourceType,
@as("destination") destination: exportDestination,
@as("jobId") jobId: jobId
}
type projectedMetrics = array<projectedMetric>
type lambdaFunctionRecommendationFilters = array<lambdaFunctionRecommendationFilter>
type lambdaFunctionMemoryRecommendationOption = {
@as("projectedUtilizationMetrics") projectedUtilizationMetrics: lambdaFunctionMemoryProjectedMetrics,
@as("memorySize") memorySize: memorySize,
@as("rank") rank: rank
}
type jobFilters = array<jobFilter>
type instanceRecommendationOption = {
@as("rank") rank: rank,
@as("performanceRisk") performanceRisk: performanceRisk,
@as("platformDifferences") platformDifferences: platformDifferences,
@as("projectedUtilizationMetrics") projectedUtilizationMetrics: projectedUtilizationMetrics,
@as("instanceType") instanceType: instanceType
}
type filters = array<filter>
type eBSFilters = array<eBSFilter>
type autoScalingGroupRecommendationOption = {
@as("rank") rank: rank,
@as("performanceRisk") performanceRisk: performanceRisk,
@as("projectedUtilizationMetrics") projectedUtilizationMetrics: projectedUtilizationMetrics,
@as("configuration") configuration: autoScalingGroupConfiguration
}
type volumeRecommendation = {
@as("lastRefreshTimestamp") lastRefreshTimestamp: lastRefreshTimestamp,
@as("volumeRecommendationOptions") volumeRecommendationOptions: volumeRecommendationOptions,
@as("lookBackPeriodInDays") lookBackPeriodInDays: lookBackPeriodInDays,
@as("utilizationMetrics") utilizationMetrics: eBSUtilizationMetrics,
@as("finding") finding: eBSFinding,
@as("currentConfiguration") currentConfiguration: volumeConfiguration,
@as("accountId") accountId: accountId,
@as("volumeArn") volumeArn: volumeArn
}
type summaries = array<summary>
type recommendedOptionProjectedMetric = {
@as("projectedMetrics") projectedMetrics: projectedMetrics,
@as("rank") rank: rank,
@as("recommendedInstanceType") recommendedInstanceType: recommendedInstanceType
}
type recommendationOptions = array<instanceRecommendationOption>
type recommendationExportJobs = array<recommendationExportJob>
type lambdaFunctionMemoryRecommendationOptions = array<lambdaFunctionMemoryRecommendationOption>
type autoScalingGroupRecommendationOptions = array<autoScalingGroupRecommendationOption>
type volumeRecommendations = array<volumeRecommendation>
type recommendedOptionProjectedMetrics = array<recommendedOptionProjectedMetric>
type recommendationSummary = {
@as("accountId") accountId: accountId,
@as("recommendationResourceType") recommendationResourceType: recommendationSourceType,
@as("summaries") summaries: summaries
}
type lambdaFunctionRecommendation = {
@as("memorySizeRecommendationOptions") memorySizeRecommendationOptions: lambdaFunctionMemoryRecommendationOptions,
@as("findingReasonCodes") findingReasonCodes: lambdaFunctionRecommendationFindingReasonCodes,
@as("finding") finding: lambdaFunctionRecommendationFinding,
@as("lastRefreshTimestamp") lastRefreshTimestamp: lastRefreshTimestamp,
@as("lookbackPeriodInDays") lookbackPeriodInDays: lookBackPeriodInDays,
@as("utilizationMetrics") utilizationMetrics: lambdaFunctionUtilizationMetrics,
@as("numberOfInvocations") numberOfInvocations: numberOfInvocations,
@as("currentMemorySize") currentMemorySize: memorySize,
@as("accountId") accountId: accountId,
@as("functionVersion") functionVersion: functionVersion,
@as("functionArn") functionArn: functionArn
}
type instanceRecommendation = {
@as("lastRefreshTimestamp") lastRefreshTimestamp: lastRefreshTimestamp,
@as("recommendationSources") recommendationSources: recommendationSources,
@as("recommendationOptions") recommendationOptions: recommendationOptions,
@as("lookBackPeriodInDays") lookBackPeriodInDays: lookBackPeriodInDays,
@as("utilizationMetrics") utilizationMetrics: utilizationMetrics,
@as("findingReasonCodes") findingReasonCodes: instanceRecommendationFindingReasonCodes,
@as("finding") finding: finding,
@as("currentInstanceType") currentInstanceType: currentInstanceType,
@as("instanceName") instanceName: instanceName,
@as("accountId") accountId: accountId,
@as("instanceArn") instanceArn: instanceArn
}
type autoScalingGroupRecommendation = {
@as("lastRefreshTimestamp") lastRefreshTimestamp: lastRefreshTimestamp,
@as("recommendationOptions") recommendationOptions: autoScalingGroupRecommendationOptions,
@as("currentConfiguration") currentConfiguration: autoScalingGroupConfiguration,
@as("lookBackPeriodInDays") lookBackPeriodInDays: lookBackPeriodInDays,
@as("utilizationMetrics") utilizationMetrics: utilizationMetrics,
@as("finding") finding: finding,
@as("autoScalingGroupName") autoScalingGroupName: autoScalingGroupName,
@as("autoScalingGroupArn") autoScalingGroupArn: autoScalingGroupArn,
@as("accountId") accountId: accountId
}
type recommendationSummaries = array<recommendationSummary>
type lambdaFunctionRecommendations = array<lambdaFunctionRecommendation>
type instanceRecommendations = array<instanceRecommendation>
type autoScalingGroupRecommendations = array<autoScalingGroupRecommendation>
type clientType;
@module("@aws-sdk/client-compute-optimizer") @new external createClient: unit => clientType = "ComputeOptimizerClient";
module UpdateEnrollmentStatus = {
  type t;
  type request = {
@as("includeMemberAccounts") includeMemberAccounts: includeMemberAccounts,
@as("status") status: option<status>
}
  type response = {
@as("statusReason") statusReason: statusReason,
@as("status") status: status
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "UpdateEnrollmentStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEnrollmentStatus = {
  type t;
  type request = unit
  type response = {
@as("memberAccountsEnrolled") memberAccountsEnrolled: memberAccountsEnrolled,
@as("statusReason") statusReason: statusReason,
@as("status") status: status
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "GetEnrollmentStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportLambdaFunctionRecommendations = {
  type t;
  type request = {
@as("includeMemberAccounts") includeMemberAccounts: includeMemberAccounts,
@as("fileFormat") fileFormat: fileFormat,
@as("s3DestinationConfig") s3DestinationConfig: option<s3DestinationConfig>,
@as("fieldsToExport") fieldsToExport: exportableLambdaFunctionFields,
@as("filters") filters: lambdaFunctionRecommendationFilters,
@as("accountIds") accountIds: accountIds
}
  type response = {
@as("s3Destination") s3Destination: s3Destination,
@as("jobId") jobId: jobId
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "ExportLambdaFunctionRecommendationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportEC2InstanceRecommendations = {
  type t;
  type request = {
@as("includeMemberAccounts") includeMemberAccounts: includeMemberAccounts,
@as("fileFormat") fileFormat: fileFormat,
@as("s3DestinationConfig") s3DestinationConfig: option<s3DestinationConfig>,
@as("fieldsToExport") fieldsToExport: exportableInstanceFields,
@as("filters") filters: filters,
@as("accountIds") accountIds: accountIds
}
  type response = {
@as("s3Destination") s3Destination: s3Destination,
@as("jobId") jobId: jobId
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "ExportEC2InstanceRecommendationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportEBSVolumeRecommendations = {
  type t;
  type request = {
@as("includeMemberAccounts") includeMemberAccounts: includeMemberAccounts,
@as("fileFormat") fileFormat: fileFormat,
@as("s3DestinationConfig") s3DestinationConfig: option<s3DestinationConfig>,
@as("fieldsToExport") fieldsToExport: exportableVolumeFields,
@as("filters") filters: eBSFilters,
@as("accountIds") accountIds: accountIds
}
  type response = {
@as("s3Destination") s3Destination: s3Destination,
@as("jobId") jobId: jobId
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "ExportEBSVolumeRecommendationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportAutoScalingGroupRecommendations = {
  type t;
  type request = {
@as("includeMemberAccounts") includeMemberAccounts: includeMemberAccounts,
@as("fileFormat") fileFormat: fileFormat,
@as("s3DestinationConfig") s3DestinationConfig: option<s3DestinationConfig>,
@as("fieldsToExport") fieldsToExport: exportableAutoScalingGroupFields,
@as("filters") filters: filters,
@as("accountIds") accountIds: accountIds
}
  type response = {
@as("s3Destination") s3Destination: s3Destination,
@as("jobId") jobId: jobId
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "ExportAutoScalingGroupRecommendationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRecommendationExportJobs = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("filters") filters: jobFilters,
@as("jobIds") jobIds: jobIds
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("recommendationExportJobs") recommendationExportJobs: recommendationExportJobs
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "DescribeRecommendationExportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEC2RecommendationProjectedMetrics = {
  type t;
  type request = {
@as("endTime") endTime: option<amazonawsTimestamp>,
@as("startTime") startTime: option<amazonawsTimestamp>,
@as("period") period: option<period>,
@as("stat") stat: option<metricStatistic>,
@as("instanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("recommendedOptionProjectedMetrics") recommendedOptionProjectedMetrics: recommendedOptionProjectedMetrics
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "GetEC2RecommendationProjectedMetricsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEBSVolumeRecommendations = {
  type t;
  type request = {
@as("accountIds") accountIds: accountIds,
@as("filters") filters: eBSFilters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("volumeArns") volumeArns: volumeArns
}
  type response = {
@as("errors") errors: getRecommendationErrors,
@as("volumeRecommendations") volumeRecommendations: volumeRecommendations,
@as("nextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "GetEBSVolumeRecommendationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRecommendationSummaries = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("accountIds") accountIds: accountIds
}
  type response = {
@as("recommendationSummaries") recommendationSummaries: recommendationSummaries,
@as("nextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "GetRecommendationSummariesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLambdaFunctionRecommendations = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("filters") filters: lambdaFunctionRecommendationFilters,
@as("accountIds") accountIds: accountIds,
@as("functionArns") functionArns: functionArns
}
  type response = {
@as("lambdaFunctionRecommendations") lambdaFunctionRecommendations: lambdaFunctionRecommendations,
@as("nextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "GetLambdaFunctionRecommendationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEC2InstanceRecommendations = {
  type t;
  type request = {
@as("accountIds") accountIds: accountIds,
@as("filters") filters: filters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("instanceArns") instanceArns: instanceArns
}
  type response = {
@as("errors") errors: getRecommendationErrors,
@as("instanceRecommendations") instanceRecommendations: instanceRecommendations,
@as("nextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "GetEC2InstanceRecommendationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAutoScalingGroupRecommendations = {
  type t;
  type request = {
@as("filters") filters: filters,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("autoScalingGroupArns") autoScalingGroupArns: autoScalingGroupArns,
@as("accountIds") accountIds: accountIds
}
  type response = {
@as("errors") errors: getRecommendationErrors,
@as("autoScalingGroupRecommendations") autoScalingGroupRecommendations: autoScalingGroupRecommendations,
@as("nextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-compute-optimizer") @new external new_: (Js.Promise.t<request>) => t = "GetAutoScalingGroupRecommendationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
