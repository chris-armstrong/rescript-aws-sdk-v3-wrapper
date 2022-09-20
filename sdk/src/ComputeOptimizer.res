type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-compute-optimizer") @new
external createClient: unit => awsServiceClient = "ComputeOptimizerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type volumeType = string
type volumeSize = int
type volumeBurstThroughput = int
type volumeBurstIOPS = int
type volumeBaselineThroughput = int
type volumeBaselineIOPS = int
type volumeArn = string
type veryLow = float
type value = float
type timestamp_ = Js.Date.t
type summaryValue = float
type statusReason = string
type status = [
  | @as("Failed") #Failed
  | @as("Pending") #Pending
  | @as("Inactive") #Inactive
  | @as("Active") #Active
]
type scopeValue = string
type scopeName = [
  | @as("ResourceArn") #ResourceArn
  | @as("AccountId") #AccountId
  | @as("Organization") #Organization
]
type savingsOpportunityPercentage = float
type resourceType = [
  | @as("NotApplicable") #NotApplicable
  | @as("LambdaFunction") #LambdaFunction
  | @as("EbsVolume") #EbsVolume
  | @as("AutoScalingGroup") #AutoScalingGroup
  | @as("Ec2Instance") #Ec2Instance
]
type resourceArn = string
type recommendedInstanceType = string
type recommendationSourceType = [
  | @as("LambdaFunction") #LambdaFunction
  | @as("EbsVolume") #EbsVolume
  | @as("AutoScalingGroup") #AutoScalingGroup
  | @as("Ec2Instance") #Ec2Instance
]
type recommendationSourceArn = string
type recommendationPreferenceName = [
  | @as("InferredWorkloadTypes") #InferredWorkloadTypes
  | @as("EnhancedInfrastructureMetrics") #EnhancedInfrastructureMetrics
]
type rank = int
type platformDifference = [
  | @as("Architecture") #Architecture
  | @as("VirtualizationType") #VirtualizationType
  | @as("InstanceStoreAvailability") #InstanceStoreAvailability
  | @as("StorageInterface") #StorageInterface
  | @as("NetworkInterface") #NetworkInterface
  | @as("Hypervisor") #Hypervisor
]
type period = int
type performanceRisk = float
type numberOfMemberAccountsOptedIn = int
type numberOfInvocations = float
type nextToken = string
type minSize = int
type migrationEffort = [
  | @as("High") #High
  | @as("Medium") #Medium
  | @as("Low") #Low
  | @as("VeryLow") #VeryLow
]
type metricValue = float
type metricStatistic = [@as("Average") #Average | @as("Maximum") #Maximum]
type metricName = [
  | @as("NETWORK_PACKETS_OUT_PER_SECOND") #NETWORK_PACKETS_OUT_PER_SECOND
  | @as("NETWORK_PACKETS_IN_PER_SECOND") #NETWORK_PACKETS_IN_PER_SECOND
  | @as("NETWORK_OUT_BYTES_PER_SECOND") #NETWORK_OUT_BYTES_PER_SECOND
  | @as("NETWORK_IN_BYTES_PER_SECOND") #NETWORK_IN_BYTES_PER_SECOND
  | @as("DISK_WRITE_BYTES_PER_SECOND") #DISK_WRITE_BYTES_PER_SECOND
  | @as("DISK_READ_BYTES_PER_SECOND") #DISK_READ_BYTES_PER_SECOND
  | @as("DISK_WRITE_OPS_PER_SECOND") #DISK_WRITE_OPS_PER_SECOND
  | @as("DISK_READ_OPS_PER_SECOND") #DISK_READ_OPS_PER_SECOND
  | @as("EBS_WRITE_BYTES_PER_SECOND") #EBS_WRITE_BYTES_PER_SECOND
  | @as("EBS_READ_BYTES_PER_SECOND") #EBS_READ_BYTES_PER_SECOND
  | @as("EBS_WRITE_OPS_PER_SECOND") #EBS_WRITE_OPS_PER_SECOND
  | @as("EBS_READ_OPS_PER_SECOND") #EBS_READ_OPS_PER_SECOND
  | @as("Memory") #Memory
  | @as("Cpu") #Cpu
]
type metadataKey = string
type message = string
type memorySize = int
type memberAccountsEnrolled = bool
type medium = float
type maxSize = int
type maxResults = int
type low = float
type lookBackPeriodInDays = float
type lastUpdatedTimestamp = Js.Date.t
type lastRefreshTimestamp = Js.Date.t
type lambdaFunctionRecommendationFindingReasonCode = [
  | @as("Inconclusive") #Inconclusive
  | @as("InsufficientData") #InsufficientData
  | @as("MemoryUnderprovisioned") #MemoryUnderprovisioned
  | @as("MemoryOverprovisioned") #MemoryOverprovisioned
]
type lambdaFunctionRecommendationFinding = [
  | @as("Unavailable") #Unavailable
  | @as("NotOptimized") #NotOptimized
  | @as("Optimized") #Optimized
]
type lambdaFunctionRecommendationFilterName = [
  | @as("FindingReasonCode") #FindingReasonCode
  | @as("Finding") #Finding
]
type lambdaFunctionMetricStatistic = [@as("Average") #Average | @as("Maximum") #Maximum]
type lambdaFunctionMetricName = [@as("Memory") #Memory | @as("Duration") #Duration]
type lambdaFunctionMemoryMetricStatistic = [
  | @as("Expected") #Expected
  | @as("UpperBound") #UpperBound
  | @as("LowerBound") #LowerBound
]
type lambdaFunctionMemoryMetricName = [@as("Duration") #Duration]
type jobStatus = [
  | @as("Failed") #Failed
  | @as("Complete") #Complete
  | @as("InProgress") #InProgress
  | @as("Queued") #Queued
]
type jobId = string
type jobFilterName = [@as("JobStatus") #JobStatus | @as("ResourceType") #ResourceType]
type instanceType = string
type instanceRecommendationFindingReasonCode = [
  | @as("DiskThroughputUnderprovisioned") #DiskThroughputUnderprovisioned
  | @as("DiskThroughputOverprovisioned") #DiskThroughputOverprovisioned
  | @as("DiskIOPSUnderprovisioned") #DiskIOPSUnderprovisioned
  | @as("DiskIOPSOverprovisioned") #DiskIOPSOverprovisioned
  | @as("NetworkPPSUnderprovisioned") #NetworkPPSUnderprovisioned
  | @as("NetworkPPSOverprovisioned") #NetworkPPSOverprovisioned
  | @as("NetworkBandwidthUnderprovisioned") #NetworkBandwidthUnderprovisioned
  | @as("NetworkBandwidthOverprovisioned") #NetworkBandwidthOverprovisioned
  | @as("EBSIOPSUnderprovisioned") #EBSIOPSUnderprovisioned
  | @as("EBSIOPSOverprovisioned") #EBSIOPSOverprovisioned
  | @as("EBSThroughputUnderprovisioned") #EBSThroughputUnderprovisioned
  | @as("EBSThroughputOverprovisioned") #EBSThroughputOverprovisioned
  | @as("MemoryUnderprovisioned") #MemoryUnderprovisioned
  | @as("MemoryOverprovisioned") #MemoryOverprovisioned
  | @as("CPUUnderprovisioned") #CPUUnderprovisioned
  | @as("CPUOverprovisioned") #CPUOverprovisioned
]
type instanceName = string
type instanceArn = string
type inferredWorkloadTypesPreference = [@as("Inactive") #Inactive | @as("Active") #Active]
type inferredWorkloadType = [
  | @as("Redis") #Redis
  | @as("PostgreSql") #PostgreSql
  | @as("Nginx") #Nginx
  | @as("Memcached") #Memcached
  | @as("ApacheHadoop") #ApacheHadoop
  | @as("ApacheCassandra") #ApacheCassandra
  | @as("AmazonEmr") #AmazonEmr
]
type includeMemberAccounts = bool
type identifier = string
type high = float
type functionVersion = string
type functionArn = string
type findingReasonCode = [
  | @as("MemoryUnderprovisioned") #MemoryUnderprovisioned
  | @as("MemoryOverprovisioned") #MemoryOverprovisioned
]
type finding = [
  | @as("NotOptimized") #NotOptimized
  | @as("Optimized") #Optimized
  | @as("Overprovisioned") #Overprovisioned
  | @as("Underprovisioned") #Underprovisioned
]
type filterValue = string
type filterName = [
  | @as("RecommendationSourceType") #RecommendationSourceType
  | @as("FindingReasonCodes") #FindingReasonCodes
  | @as("Finding") #Finding
]
type fileFormat = [@as("Csv") #Csv]
type failureReason = string
type exportableVolumeField = [
  | @as("RecommendationOptionsEstimatedMonthlySavingsValue")
  #RecommendationOptionsEstimatedMonthlySavingsValue
  | @as("RecommendationOptionsEstimatedMonthlySavingsCurrency")
  #RecommendationOptionsEstimatedMonthlySavingsCurrency
  | @as("RecommendationOptionsSavingsOpportunityPercentage")
  #RecommendationOptionsSavingsOpportunityPercentage
  | @as("CurrentPerformanceRisk") #CurrentPerformanceRisk
  | @as("LastRefreshTimestamp") #LastRefreshTimestamp
  | @as("RecommendationOptionsPerformanceRisk") #RecommendationOptionsPerformanceRisk
  | @as("RecommendationOptionsMonthlyPrice") #RecommendationOptionsMonthlyPrice
  | @as("RecommendationOptionsConfigurationVolumeSize")
  #RecommendationOptionsConfigurationVolumeSize
  | @as("RecommendationOptionsConfigurationVolumeBurstThroughput")
  #RecommendationOptionsConfigurationVolumeBurstThroughput
  | @as("RecommendationOptionsConfigurationVolumeBurstIOPS")
  #RecommendationOptionsConfigurationVolumeBurstIOPS
  | @as("RecommendationOptionsConfigurationVolumeBaselineThroughput")
  #RecommendationOptionsConfigurationVolumeBaselineThroughput
  | @as("RecommendationOptionsConfigurationVolumeBaselineIOPS")
  #RecommendationOptionsConfigurationVolumeBaselineIOPS
  | @as("RecommendationOptionsConfigurationVolumeType")
  #RecommendationOptionsConfigurationVolumeType
  | @as("CurrentMonthlyPrice") #CurrentMonthlyPrice
  | @as("CurrentConfigurationVolumeSize") #CurrentConfigurationVolumeSize
  | @as("CurrentConfigurationVolumeBurstThroughput") #CurrentConfigurationVolumeBurstThroughput
  | @as("CurrentConfigurationVolumeBurstIOPS") #CurrentConfigurationVolumeBurstIOPS
  | @as("CurrentConfigurationVolumeBaselineThroughput")
  #CurrentConfigurationVolumeBaselineThroughput
  | @as("CurrentConfigurationVolumeBaselineIOPS") #CurrentConfigurationVolumeBaselineIOPS
  | @as("CurrentConfigurationVolumeType") #CurrentConfigurationVolumeType
  | @as("LookbackPeriodInDays") #LookbackPeriodInDays
  | @as("UtilizationMetricsVolumeWriteBytesPerSecondMaximum")
  #UtilizationMetricsVolumeWriteBytesPerSecondMaximum
  | @as("UtilizationMetricsVolumeReadBytesPerSecondMaximum")
  #UtilizationMetricsVolumeReadBytesPerSecondMaximum
  | @as("UtilizationMetricsVolumeWriteOpsPerSecondMaximum")
  #UtilizationMetricsVolumeWriteOpsPerSecondMaximum
  | @as("UtilizationMetricsVolumeReadOpsPerSecondMaximum")
  #UtilizationMetricsVolumeReadOpsPerSecondMaximum
  | @as("Finding") #Finding
  | @as("VolumeArn") #VolumeArn
  | @as("AccountId") #AccountId
]
type exportableLambdaFunctionField = [
  | @as("RecommendationOptionsEstimatedMonthlySavingsValue")
  #RecommendationOptionsEstimatedMonthlySavingsValue
  | @as("RecommendationOptionsEstimatedMonthlySavingsCurrency")
  #RecommendationOptionsEstimatedMonthlySavingsCurrency
  | @as("RecommendationOptionsSavingsOpportunityPercentage")
  #RecommendationOptionsSavingsOpportunityPercentage
  | @as("CurrentPerformanceRisk") #CurrentPerformanceRisk
  | @as("LastRefreshTimestamp") #LastRefreshTimestamp
  | @as("RecommendationOptionsProjectedUtilizationMetricsDurationExpected")
  #RecommendationOptionsProjectedUtilizationMetricsDurationExpected
  | @as("RecommendationOptionsProjectedUtilizationMetricsDurationUpperBound")
  #RecommendationOptionsProjectedUtilizationMetricsDurationUpperBound
  | @as("RecommendationOptionsProjectedUtilizationMetricsDurationLowerBound")
  #RecommendationOptionsProjectedUtilizationMetricsDurationLowerBound
  | @as("RecommendationOptionsCostHigh") #RecommendationOptionsCostHigh
  | @as("RecommendationOptionsCostLow") #RecommendationOptionsCostLow
  | @as("RecommendationOptionsConfigurationMemorySize")
  #RecommendationOptionsConfigurationMemorySize
  | @as("CurrentCostAverage") #CurrentCostAverage
  | @as("CurrentCostTotal") #CurrentCostTotal
  | @as("CurrentConfigurationTimeout") #CurrentConfigurationTimeout
  | @as("CurrentConfigurationMemorySize") #CurrentConfigurationMemorySize
  | @as("LookbackPeriodInDays") #LookbackPeriodInDays
  | @as("UtilizationMetricsMemoryAverage") #UtilizationMetricsMemoryAverage
  | @as("UtilizationMetricsMemoryMaximum") #UtilizationMetricsMemoryMaximum
  | @as("UtilizationMetricsDurationAverage") #UtilizationMetricsDurationAverage
  | @as("UtilizationMetricsDurationMaximum") #UtilizationMetricsDurationMaximum
  | @as("NumberOfInvocations") #NumberOfInvocations
  | @as("FindingReasonCodes") #FindingReasonCodes
  | @as("Finding") #Finding
  | @as("FunctionVersion") #FunctionVersion
  | @as("FunctionArn") #FunctionArn
  | @as("AccountId") #AccountId
]
type exportableInstanceField = [
  | @as("RecommendationOptionsMigrationEffort") #RecommendationOptionsMigrationEffort
  | @as("InferredWorkloadTypes") #InferredWorkloadTypes
  | @as("EffectiveRecommendationPreferencesInferredWorkloadTypes")
  #EffectiveRecommendationPreferencesInferredWorkloadTypes
  | @as("EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics")
  #EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics
  | @as("EffectiveRecommendationPreferencesCpuVendorArchitectures")
  #EffectiveRecommendationPreferencesCpuVendorArchitectures
  | @as("RecommendationOptionsEstimatedMonthlySavingsValue")
  #RecommendationOptionsEstimatedMonthlySavingsValue
  | @as("RecommendationOptionsEstimatedMonthlySavingsCurrency")
  #RecommendationOptionsEstimatedMonthlySavingsCurrency
  | @as("RecommendationOptionsSavingsOpportunityPercentage")
  #RecommendationOptionsSavingsOpportunityPercentage
  | @as("CurrentPerformanceRisk") #CurrentPerformanceRisk
  | @as("LastRefreshTimestamp") #LastRefreshTimestamp
  | @as("RecommendationsSourcesRecommendationSourceType")
  #RecommendationsSourcesRecommendationSourceType
  | @as("RecommendationsSourcesRecommendationSourceArn")
  #RecommendationsSourcesRecommendationSourceArn
  | @as("RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice")
  #RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice
  | @as("RecommendationOptionsStandardOneYearNoUpfrontReservedPrice")
  #RecommendationOptionsStandardOneYearNoUpfrontReservedPrice
  | @as("RecommendationOptionsOnDemandPrice") #RecommendationOptionsOnDemandPrice
  | @as("RecommendationOptionsNetwork") #RecommendationOptionsNetwork
  | @as("RecommendationOptionsStorage") #RecommendationOptionsStorage
  | @as("RecommendationOptionsMemory") #RecommendationOptionsMemory
  | @as("RecommendationOptionsVcpus") #RecommendationOptionsVcpus
  | @as("RecommendationOptionsPerformanceRisk") #RecommendationOptionsPerformanceRisk
  | @as("RecommendationOptionsPlatformDifferences") #RecommendationOptionsPlatformDifferences
  | @as("RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum")
  #RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum
  | @as("RecommendationOptionsProjectedUtilizationMetricsCpuMaximum")
  #RecommendationOptionsProjectedUtilizationMetricsCpuMaximum
  | @as("RecommendationOptionsInstanceType") #RecommendationOptionsInstanceType
  | @as("CurrentNetwork") #CurrentNetwork
  | @as("CurrentStorage") #CurrentStorage
  | @as("CurrentMemory") #CurrentMemory
  | @as("CurrentVCpus") #CurrentVCpus
  | @as("CurrentStandardThreeYearNoUpfrontReservedPrice")
  #CurrentStandardThreeYearNoUpfrontReservedPrice
  | @as("CurrentStandardOneYearNoUpfrontReservedPrice")
  #CurrentStandardOneYearNoUpfrontReservedPrice
  | @as("CurrentOnDemandPrice") #CurrentOnDemandPrice
  | @as("UtilizationMetricsNetworkPacketsOutPerSecondMaximum")
  #UtilizationMetricsNetworkPacketsOutPerSecondMaximum
  | @as("UtilizationMetricsNetworkPacketsInPerSecondMaximum")
  #UtilizationMetricsNetworkPacketsInPerSecondMaximum
  | @as("UtilizationMetricsNetworkOutBytesPerSecondMaximum")
  #UtilizationMetricsNetworkOutBytesPerSecondMaximum
  | @as("UtilizationMetricsNetworkInBytesPerSecondMaximum")
  #UtilizationMetricsNetworkInBytesPerSecondMaximum
  | @as("UtilizationMetricsDiskWriteBytesPerSecondMaximum")
  #UtilizationMetricsDiskWriteBytesPerSecondMaximum
  | @as("UtilizationMetricsDiskReadBytesPerSecondMaximum")
  #UtilizationMetricsDiskReadBytesPerSecondMaximum
  | @as("UtilizationMetricsDiskWriteOpsPerSecondMaximum")
  #UtilizationMetricsDiskWriteOpsPerSecondMaximum
  | @as("UtilizationMetricsDiskReadOpsPerSecondMaximum")
  #UtilizationMetricsDiskReadOpsPerSecondMaximum
  | @as("UtilizationMetricsEbsWriteBytesPerSecondMaximum")
  #UtilizationMetricsEbsWriteBytesPerSecondMaximum
  | @as("UtilizationMetricsEbsReadBytesPerSecondMaximum")
  #UtilizationMetricsEbsReadBytesPerSecondMaximum
  | @as("UtilizationMetricsEbsWriteOpsPerSecondMaximum")
  #UtilizationMetricsEbsWriteOpsPerSecondMaximum
  | @as("UtilizationMetricsEbsReadOpsPerSecondMaximum")
  #UtilizationMetricsEbsReadOpsPerSecondMaximum
  | @as("UtilizationMetricsMemoryMaximum") #UtilizationMetricsMemoryMaximum
  | @as("UtilizationMetricsCpuMaximum") #UtilizationMetricsCpuMaximum
  | @as("CurrentInstanceType") #CurrentInstanceType
  | @as("LookbackPeriodInDays") #LookbackPeriodInDays
  | @as("FindingReasonCodes") #FindingReasonCodes
  | @as("Finding") #Finding
  | @as("InstanceName") #InstanceName
  | @as("InstanceArn") #InstanceArn
  | @as("AccountId") #AccountId
]
type exportableAutoScalingGroupField = [
  | @as("RecommendationOptionsMigrationEffort") #RecommendationOptionsMigrationEffort
  | @as("InferredWorkloadTypes") #InferredWorkloadTypes
  | @as("EffectiveRecommendationPreferencesInferredWorkloadTypes")
  #EffectiveRecommendationPreferencesInferredWorkloadTypes
  | @as("EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics")
  #EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics
  | @as("EffectiveRecommendationPreferencesCpuVendorArchitectures")
  #EffectiveRecommendationPreferencesCpuVendorArchitectures
  | @as("RecommendationOptionsEstimatedMonthlySavingsValue")
  #RecommendationOptionsEstimatedMonthlySavingsValue
  | @as("RecommendationOptionsEstimatedMonthlySavingsCurrency")
  #RecommendationOptionsEstimatedMonthlySavingsCurrency
  | @as("RecommendationOptionsSavingsOpportunityPercentage")
  #RecommendationOptionsSavingsOpportunityPercentage
  | @as("CurrentPerformanceRisk") #CurrentPerformanceRisk
  | @as("LastRefreshTimestamp") #LastRefreshTimestamp
  | @as("RecommendationOptionsNetwork") #RecommendationOptionsNetwork
  | @as("RecommendationOptionsStorage") #RecommendationOptionsStorage
  | @as("RecommendationOptionsMemory") #RecommendationOptionsMemory
  | @as("RecommendationOptionsVcpus") #RecommendationOptionsVcpus
  | @as("RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice")
  #RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice
  | @as("RecommendationOptionsStandardOneYearNoUpfrontReservedPrice")
  #RecommendationOptionsStandardOneYearNoUpfrontReservedPrice
  | @as("RecommendationOptionsOnDemandPrice") #RecommendationOptionsOnDemandPrice
  | @as("RecommendationOptionsPerformanceRisk") #RecommendationOptionsPerformanceRisk
  | @as("RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum")
  #RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum
  | @as("RecommendationOptionsProjectedUtilizationMetricsCpuMaximum")
  #RecommendationOptionsProjectedUtilizationMetricsCpuMaximum
  | @as("RecommendationOptionsConfigurationMaxSize") #RecommendationOptionsConfigurationMaxSize
  | @as("RecommendationOptionsConfigurationMinSize") #RecommendationOptionsConfigurationMinSize
  | @as("RecommendationOptionsConfigurationDesiredCapacity")
  #RecommendationOptionsConfigurationDesiredCapacity
  | @as("RecommendationOptionsConfigurationInstanceType")
  #RecommendationOptionsConfigurationInstanceType
  | @as("CurrentNetwork") #CurrentNetwork
  | @as("CurrentStorage") #CurrentStorage
  | @as("CurrentMemory") #CurrentMemory
  | @as("CurrentVCpus") #CurrentVCpus
  | @as("CurrentStandardThreeYearNoUpfrontReservedPrice")
  #CurrentStandardThreeYearNoUpfrontReservedPrice
  | @as("CurrentStandardOneYearNoUpfrontReservedPrice")
  #CurrentStandardOneYearNoUpfrontReservedPrice
  | @as("CurrentOnDemandPrice") #CurrentOnDemandPrice
  | @as("CurrentConfigurationMaxSize") #CurrentConfigurationMaxSize
  | @as("CurrentConfigurationMinSize") #CurrentConfigurationMinSize
  | @as("CurrentConfigurationDesiredCapacity") #CurrentConfigurationDesiredCapacity
  | @as("CurrentConfigurationInstanceType") #CurrentConfigurationInstanceType
  | @as("LookbackPeriodInDays") #LookbackPeriodInDays
  | @as("UtilizationMetricsNetworkPacketsOutPerSecondMaximum")
  #UtilizationMetricsNetworkPacketsOutPerSecondMaximum
  | @as("UtilizationMetricsNetworkPacketsInPerSecondMaximum")
  #UtilizationMetricsNetworkPacketsInPerSecondMaximum
  | @as("UtilizationMetricsNetworkOutBytesPerSecondMaximum")
  #UtilizationMetricsNetworkOutBytesPerSecondMaximum
  | @as("UtilizationMetricsNetworkInBytesPerSecondMaximum")
  #UtilizationMetricsNetworkInBytesPerSecondMaximum
  | @as("UtilizationMetricsDiskWriteBytesPerSecondMaximum")
  #UtilizationMetricsDiskWriteBytesPerSecondMaximum
  | @as("UtilizationMetricsDiskReadBytesPerSecondMaximum")
  #UtilizationMetricsDiskReadBytesPerSecondMaximum
  | @as("UtilizationMetricsDiskWriteOpsPerSecondMaximum")
  #UtilizationMetricsDiskWriteOpsPerSecondMaximum
  | @as("UtilizationMetricsDiskReadOpsPerSecondMaximum")
  #UtilizationMetricsDiskReadOpsPerSecondMaximum
  | @as("UtilizationMetricsEbsWriteBytesPerSecondMaximum")
  #UtilizationMetricsEbsWriteBytesPerSecondMaximum
  | @as("UtilizationMetricsEbsReadBytesPerSecondMaximum")
  #UtilizationMetricsEbsReadBytesPerSecondMaximum
  | @as("UtilizationMetricsEbsWriteOpsPerSecondMaximum")
  #UtilizationMetricsEbsWriteOpsPerSecondMaximum
  | @as("UtilizationMetricsEbsReadOpsPerSecondMaximum")
  #UtilizationMetricsEbsReadOpsPerSecondMaximum
  | @as("UtilizationMetricsMemoryMaximum") #UtilizationMetricsMemoryMaximum
  | @as("UtilizationMetricsCpuMaximum") #UtilizationMetricsCpuMaximum
  | @as("Finding") #Finding
  | @as("AutoScalingGroupName") #AutoScalingGroupName
  | @as("AutoScalingGroupArn") #AutoScalingGroupArn
  | @as("AccountId") #AccountId
]
type errorMessage = string
type enrollmentFilterName = [@as("Status") #Status]
type enhancedInfrastructureMetrics = [@as("Inactive") #Inactive | @as("Active") #Active]
type ebsmetricName = [
  | @as("VolumeWriteBytesPerSecond") #VolumeWriteBytesPerSecond
  | @as("VolumeReadBytesPerSecond") #VolumeReadBytesPerSecond
  | @as("VolumeWriteOpsPerSecond") #VolumeWriteOpsPerSecond
  | @as("VolumeReadOpsPerSecond") #VolumeReadOpsPerSecond
]
type ebsfinding = [@as("NotOptimized") #NotOptimized | @as("Optimized") #Optimized]
type ebsfilterName = [@as("Finding") #Finding]
type destinationKeyPrefix = string
type destinationKey = string
type destinationBucket = string
type desiredCapacity = int
type currentPerformanceRisk = [
  | @as("High") #High
  | @as("Medium") #Medium
  | @as("Low") #Low
  | @as("VeryLow") #VeryLow
]
type currentInstanceType = string
type currency = [@as("CNY") #CNY | @as("USD") #USD]
type creationTimestamp = Js.Date.t
type cpuVendorArchitecture = [@as("CURRENT") #CURRENT | @as("AWS_ARM64") #AWS_ARM64]
type code = string
type autoScalingGroupName = string
type autoScalingGroupArn = string
type accountId = string
@ocaml.doc("<p>Describes the configuration of an Amazon Elastic Block Store (Amazon EBS)
            volume.</p>")
type volumeConfiguration = {
  @ocaml.doc("<p>The burst throughput of the volume.</p>")
  volumeBurstThroughput: option<volumeBurstThroughput>,
  @ocaml.doc("<p>The baseline throughput of the volume.</p>")
  volumeBaselineThroughput: option<volumeBaselineThroughput>,
  @ocaml.doc("<p>The burst IOPS of the volume.</p>") volumeBurstIOPS: option<volumeBurstIOPS>,
  @ocaml.doc("<p>The baseline IOPS of the volume.</p>")
  volumeBaselineIOPS: option<volumeBaselineIOPS>,
  @ocaml.doc("<p>The size of the volume, in GiB.</p>") volumeSize: option<volumeSize>,
  @ocaml.doc("<p>The volume type.</p>
        <p>This can be <code>gp2</code> for General Purpose SSD, <code>io1</code> or
                <code>io2</code> for Provisioned IOPS SSD, <code>st1</code> for Throughput Optimized
            HDD, <code>sc1</code> for Cold HDD, or <code>standard</code> for Magnetic
            volumes.</p>")
  volumeType: option<volumeType>,
}
type volumeArns = array<volumeArn>
@ocaml.doc("<p>Describes a utilization metric of a resource, such as an Amazon EC2
            instance.</p>
        <p>Compare the utilization metric data of your resource against its projected utilization
            metric data to determine the performance difference between your current resource and
            the recommended option.</p>")
type utilizationMetric = {
  @ocaml.doc("<p>The value of the utilization metric.</p>") value: option<metricValue>,
  @ocaml.doc("<p>The statistic of the utilization metric.</p>
        <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
            return utilization metrics using only the <code>Maximum</code> statistic, which is the
            highest value observed during the specified period.</p>
        <p>The Compute Optimizer console displays graphs for some utilization metrics using the
                <code>Average</code> statistic, which is the value of <code>Sum</code> /
                <code>SampleCount</code> during the specified period. For more information, see
                <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html\">Viewing resource
                recommendations</a> in the <i>Compute Optimizer User
            Guide</i>. You can also get averaged utilization metric data for your resources
            using Amazon CloudWatch. For more information, see the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html\">Amazon CloudWatch
                User Guide</a>.</p>")
  statistic: option<metricStatistic>,
  @ocaml.doc("<p>The name of the utilization metric.</p>
        <p>The following utilization metrics are available:</p>
        <ul>
            <li>
                <p>
                  <code>Cpu</code> - The percentage of allocated EC2 compute units that are
                    currently in use on the instance. This metric identifies the processing power
                    required to run an application on the instance.</p>
                <p>Depending on the instance type, tools in your operating system can show a
                    lower percentage than CloudWatch when the instance is not allocated a full
                    processor core.</p>
                <p>Units: Percent</p>
            </li>
            <li>
                <p>
                  <code>Memory</code> - The percentage of memory that is currently in use on the
                    instance. This metric identifies the amount of memory required to run an
                    application on the instance.</p>
                <p>Units: Percent</p>
                <note>
                    <p>The <code>Memory</code> metric is returned only for resources that have
                        the unified CloudWatch agent installed on them. For more information,
                        see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent\">Enabling Memory
                            Utilization with the CloudWatch Agent</a>.</p>
                </note>
            </li>
            <li>
                <p>
                  <code>EBS_READ_OPS_PER_SECOND</code> - The completed read operations from all
                    EBS volumes attached to the instance in a specified period of time.</p>
                <p>Unit: Count</p>
            </li>
            <li>
                <p>
                  <code>EBS_WRITE_OPS_PER_SECOND</code> - The completed write operations to all
                    EBS volumes attached to the instance in a specified period of time.</p>
                <p>Unit: Count</p>
            </li>
            <li>
                <p>
                  <code>EBS_READ_BYTES_PER_SECOND</code> - The bytes read from all EBS volumes
                    attached to the instance in a specified period of time.</p>
                <p>Unit: Bytes</p>
            </li>
            <li>
                <p>
                  <code>EBS_WRITE_BYTES_PER_SECOND</code> - The bytes written to all EBS volumes
                    attached to the instance in a specified period of time.</p>
                <p>Unit: Bytes</p>
            </li>
            <li>
                <p>
                  <code>DISK_READ_OPS_PER_SECOND</code> - The completed read operations from all
                    instance store volumes available to the instance in a specified period of
                    time.</p>
                <p>If there are no instance store volumes, either the value is <code>0</code> or
                    the metric is not reported.</p>
            </li>
            <li>
                <p>
                  <code>DISK_WRITE_OPS_PER_SECOND</code> - The completed write operations from
                    all instance store volumes available to the instance in a specified period of
                    time.</p>
                <p>If there are no instance store volumes, either the value is <code>0</code> or
                    the metric is not reported.</p>
            </li>
            <li>
                <p>
                  <code>DISK_READ_BYTES_PER_SECOND</code> - The bytes read from all instance
                    store volumes available to the instance. This metric is used to determine the
                    volume of the data the application reads from the disk of the instance. This can
                    be used to determine the speed of the application.</p>
                <p>If there are no instance store volumes, either the value is <code>0</code> or
                    the metric is not reported.</p>
            </li>
            <li>
                <p>
                  <code>DISK_WRITE_BYTES_PER_SECOND</code> - The bytes written to all instance
                    store volumes available to the instance. This metric is used to determine the
                    volume of the data the application writes onto the disk of the instance. This
                    can be used to determine the speed of the application.</p>
                <p>If there are no instance store volumes, either the value is <code>0</code> or
                    the metric is not reported.</p>
            </li>
            <li>
                <p>
                  <code>NETWORK_IN_BYTES_PER_SECOND</code> - The number of bytes received by the
                    instance on all network interfaces. This metric identifies the volume of
                    incoming network traffic to a single instance.</p>
            </li>
            <li>
                <p>
                  <code>NETWORK_OUT_BYTES_PER_SECOND</code> - The number of bytes sent out by
                    the instance on all network interfaces. This metric identifies the volume of
                    outgoing network traffic from a single instance.</p>
            </li>
            <li>
                <p>
                  <code>NETWORK_PACKETS_IN_PER_SECOND</code> - The number of packets received by
                    the instance on all network interfaces. This metric identifies the volume of
                    incoming traffic in terms of the number of packets on a single instance.</p>
            </li>
            <li>
                <p>
                  <code>NETWORK_PACKETS_OUT_PER_SECOND</code> - The number of packets sent out
                    by the instance on all network interfaces. This metric identifies the volume of
                    outgoing traffic in terms of the number of packets on a single instance.</p>
            </li>
         </ul>")
  name: option<metricName>,
}
type timestamps = array<timestamp_>
@ocaml.doc("<p>Describes the scope of a recommendation preference.</p>
        <p>Recommendation preferences can be created at the organization level (for management
            accounts of an organization only), account level, and resource level. For more
            information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html\">Activating
                enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
                Guide</i>.</p>
        <note>
            <p>You cannot create recommendation preferences for Auto Scaling groups at the
                organization and account levels. You can create recommendation preferences for
                    Auto Scaling groups only at the resource level by specifying a scope name
                of <code>ResourceArn</code> and a scope value of the Auto Scaling group Amazon
                Resource Name (ARN). This will configure the preference for all instances that are
                part of the specified Auto Scaling group. You also cannot create recommendation
                preferences at the resource level for instances that are part of an Auto Scaling group. You can create recommendation preferences at the resource level only for
                standalone instances.</p>
        </note>")
type scope = {
  @ocaml.doc("<p>The value of the scope.</p>
        <p>If you specified the <code>name</code> of the scope as:</p>
        <ul>
            <li>
                <p>
                  <code>Organization</code> - The <code>value</code> must be
                        <code>ALL_ACCOUNTS</code>.</p>
            </li>
            <li>
                <p>
                  <code>AccountId</code> - The <code>value</code> must be a 12-digit Amazon Web Services account ID.</p>
            </li>
            <li>
                <p>
                  <code>ResourceArn</code> - The <code>value</code> must be the Amazon Resource
                    Name (ARN) of an EC2 instance or an Auto Scaling group.</p>
            </li>
         </ul>
        <p>Only EC2 instance and Auto Scaling group ARNs are currently supported.</p>")
  value: option<scopeValue>,
  @ocaml.doc("<p>The name of the scope.</p>
        <p>The following scopes are possible:</p>
        <ul>
            <li>
                <p>
                  <code>Organization</code> - Specifies that the recommendation preference
                    applies at the organization level, for all member accounts of an
                    organization.</p>
            </li>
            <li>
                <p>
                  <code>AccountId</code> - Specifies that the recommendation preference applies
                    at the account level, for all resources of a given resource type in an
                    account.</p>
            </li>
            <li>
                <p>
                  <code>ResourceArn</code> - Specifies that the recommendation preference
                    applies at the individual resource level.</p>
            </li>
         </ul>")
  name: option<scopeName>,
}
@ocaml.doc("<p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
            key prefix for a recommendations export job.</p>
        <p>You must create the destination Amazon S3 bucket for your recommendations
            export before you create the export job. Compute Optimizer does not create the S3 bucket
            for you. After you create the S3 bucket, ensure that it has the required permission
            policy to allow Compute Optimizer to write the export file to it. If you plan to specify
            an object prefix when you create the export job, you must include the object prefix in
            the policy that you add to the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html\">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
                    <i>Compute Optimizer User Guide</i>.</p>")
type s3DestinationConfig = {
  @ocaml.doc("<p>The Amazon S3 bucket prefix for an export job.</p>")
  keyPrefix: option<destinationKeyPrefix>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket to use as the destination for an export
            job.</p>")
  bucket: option<destinationBucket>,
}
@ocaml.doc("<p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and
            object keys of a recommendations export file, and its associated metadata file.</p>")
type s3Destination = {
  @ocaml.doc("<p>The Amazon S3 bucket key of a metadata file.</p>
        <p>The key uniquely identifies the object, or metadata file, in the S3 bucket.</p>")
  metadataKey: option<metadataKey>,
  @ocaml.doc("<p>The Amazon S3 bucket key of an export file.</p>
        <p>The key uniquely identifies the object, or export file, in the S3 bucket.</p>")
  key: option<destinationKey>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket used as the destination of an export
            file.</p>")
  bucket: option<destinationBucket>,
}
@ocaml.doc("<p>Describes the source of a recommendation, such as an Amazon EC2 instance or
                Auto Scaling group.</p>")
type recommendationSource = {
  @ocaml.doc("<p>The resource type of the recommendation source.</p>")
  recommendationSourceType: option<recommendationSourceType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the recommendation source.</p>")
  recommendationSourceArn: option<recommendationSourceArn>,
}
type recommendationPreferenceNames = array<recommendationPreferenceName>
@ocaml.doc("<p>A summary of a finding reason code.</p>")
type reasonCodeSummary = {
  @ocaml.doc("<p>The value of the finding reason code summary.</p>") value: option<summaryValue>,
  @ocaml.doc("<p>The name of the finding reason code.</p>") name: option<findingReasonCode>,
}
type platformDifferences = array<platformDifference>
type metricValues = array<metricValue>
@ocaml.doc("<p>Describes a utilization metric of an Lambda function.</p>")
type lambdaFunctionUtilizationMetric = {
  @ocaml.doc("<p>The value of the utilization metric.</p>") value: option<metricValue>,
  @ocaml.doc("<p>The statistic of the utilization metric.</p>
        <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
            return utilization metrics using only the <code>Maximum</code> statistic, which is the
            highest value observed during the specified period.</p>
        <p>The Compute Optimizer console displays graphs for some utilization metrics using the
                <code>Average</code> statistic, which is the value of <code>Sum</code> /
                <code>SampleCount</code> during the specified period. For more information, see
                <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html\">Viewing resource
                recommendations</a> in the <i>Compute Optimizer User
            Guide</i>. You can also get averaged utilization metric data for your resources
            using Amazon CloudWatch. For more information, see the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html\">Amazon CloudWatch
                User Guide</a>.</p>")
  statistic: option<lambdaFunctionMetricStatistic>,
  @ocaml.doc("<p>The name of the utilization metric.</p>
        <p>The following utilization metrics are available:</p>
        <ul>
            <li>
                <p>
                  <code>Duration</code> - The amount of time that your function code spends
                    processing an event.</p>
            </li>
            <li>
                <p>
                  <code>Memory</code> - The amount of memory used per invocation.</p>
            </li>
         </ul>")
  name: option<lambdaFunctionMetricName>,
}
type lambdaFunctionRecommendationFindingReasonCodes = array<
  lambdaFunctionRecommendationFindingReasonCode,
>
@ocaml.doc("<p>Describes a projected utilization metric of an Lambda function
            recommendation option.</p>")
type lambdaFunctionMemoryProjectedMetric = {
  @ocaml.doc("<p>The values of the projected utilization metrics.</p>") value: option<metricValue>,
  @ocaml.doc("<p>The statistic of the projected utilization metric.</p>")
  statistic: option<lambdaFunctionMemoryMetricStatistic>,
  @ocaml.doc("<p>The name of the projected utilization metric.</p>")
  name: option<lambdaFunctionMemoryMetricName>,
}
type jobIds = array<jobId>
type instanceRecommendationFindingReasonCodes = array<instanceRecommendationFindingReasonCode>
type instanceArns = array<instanceArn>
type inferredWorkloadTypes = array<inferredWorkloadType>
@ocaml.doc("<p>Describes an error experienced when getting recommendations.</p>
        <p>For example, an error is returned if you request recommendations for an unsupported
                Auto Scaling group, or if you request recommendations for an instance of an
            unsupported instance family.</p>")
type getRecommendationError = {
  @ocaml.doc("<p>The message, or reason, for the error.</p>") message: option<message>,
  @ocaml.doc("<p>The error code.</p>") code: option<code>,
  @ocaml.doc("<p>The ID of the error.</p>") identifier: option<identifier>,
}
type functionArns = array<functionArn>
type filterValues = array<filterValue>
type exportableVolumeFields = array<exportableVolumeField>
type exportableLambdaFunctionFields = array<exportableLambdaFunctionField>
type exportableInstanceFields = array<exportableInstanceField>
type exportableAutoScalingGroupFields = array<exportableAutoScalingGroupField>
@ocaml.doc("<p>Describes the estimated monthly savings amount possible, based on On-Demand instance
            pricing, by adopting Compute Optimizer recommendations for a given resource.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/view-ec2-recommendations.html#ec2-savings-calculation\">Estimated monthly savings and savings opportunities</a> in the
                    <i>Compute Optimizer User Guide</i>.</p>")
type estimatedMonthlySavings = {
  @ocaml.doc("<p>The value of the estimated monthly savings.</p>") value: option<value>,
  @ocaml.doc("<p>The currency of the estimated monthly
            savings.</p>")
  currency: option<currency>,
}
@ocaml.doc("<p>Describes a utilization metric of an Amazon Elastic Block Store (Amazon EBS)
            volume.</p>
        <p>Compare the utilization metric data of your resource against its projected utilization
            metric data to determine the performance difference between your current resource and
            the recommended option.</p>")
type ebsutilizationMetric = {
  @ocaml.doc("<p>The value of the utilization metric.</p>") value: option<metricValue>,
  @ocaml.doc("<p>The statistic of the utilization metric.</p>
        <p>The Compute Optimizer API, Command Line Interface (CLI), and SDKs
            return utilization metrics using only the <code>Maximum</code> statistic, which is the
            highest value observed during the specified period.</p>
        <p>The Compute Optimizer console displays graphs for some utilization metrics using the
                <code>Average</code> statistic, which is the value of <code>Sum</code> /
                <code>SampleCount</code> during the specified period. For more information, see
                <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html\">Viewing resource
                recommendations</a> in the <i>Compute Optimizer User
            Guide</i>. You can also get averaged utilization metric data for your resources
            using Amazon CloudWatch. For more information, see the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html\">Amazon CloudWatch
                User Guide</a>.</p>")
  statistic: option<metricStatistic>,
  @ocaml.doc("<p>The name of the utilization metric.</p>
        <p>The following utilization metrics are available:</p>
        <ul>
            <li>
                <p>
                  <code>VolumeReadOpsPerSecond</code> - The completed read operations per second
                    from the volume in a specified period of time.</p>
                <p>Unit: Count</p>
            </li>
            <li>
                <p>
                  <code>VolumeWriteOpsPerSecond</code> - The completed write operations per
                    second to the volume in a specified period of time.</p>
                <p>Unit: Count</p>
            </li>
            <li>
                <p>
                  <code>VolumeReadBytesPerSecond</code> - The bytes read per second from the
                    volume in a specified period of time.</p>
                <p>Unit: Bytes</p>
            </li>
            <li>
                <p>
                  <code>VolumeWriteBytesPerSecond</code> - The bytes written to the volume in a
                    specified period of time.</p>
                <p>Unit: Bytes</p>
            </li>
         </ul>")
  name: option<ebsmetricName>,
}
@ocaml.doc("<p>Describes the performance risk ratings for a given resource type.</p>
        <p>Resources with a <code>high</code> or <code>medium</code> rating are at risk of not
            meeting the performance needs of their workloads, while resources with a
                <code>low</code> rating are performing well in their workloads.</p>")
type currentPerformanceRiskRatings = {
  @ocaml.doc("<p>A count of the applicable resource types with a very low performance risk
            rating.</p>")
  veryLow: option<veryLow>,
  @ocaml.doc("<p>A count of the applicable resource types with a low performance risk rating.</p>")
  low: option<low>,
  @ocaml.doc(
    "<p>A count of the applicable resource types with a medium performance risk rating.</p>"
  )
  medium: option<medium>,
  @ocaml.doc("<p>A count of the applicable resource types with a high performance risk rating.</p>")
  high: option<high>,
}
type cpuVendorArchitectures = array<cpuVendorArchitecture>
@ocaml.doc("<p>Describes the configuration of an Auto Scaling group.</p>")
type autoScalingGroupConfiguration = {
  @ocaml.doc("<p>The instance type for the Auto Scaling group.</p>")
  instanceType: option<instanceType>,
  @ocaml.doc("<p>The maximum size, or maximum number of instances, for the Auto Scaling
            group.</p>")
  maxSize: option<maxSize>,
  @ocaml.doc("<p>The minimum size, or minimum number of instances, for the Auto Scaling
            group.</p>")
  minSize: option<minSize>,
  @ocaml.doc("<p>The desired capacity, or number of instances, for the Auto Scaling group.</p>")
  desiredCapacity: option<desiredCapacity>,
}
type autoScalingGroupArns = array<autoScalingGroupArn>
type accountIds = array<accountId>
@ocaml.doc(
  "<p>Describes the enrollment status of an organization's member accounts in Compute Optimizer.</p>"
)
type accountEnrollmentStatus = {
  @ocaml.doc("<p>The Unix epoch timestamp, in seconds, of when the account enrollment status was last
            updated.</p>")
  lastUpdatedTimestamp: option<lastUpdatedTimestamp>,
  @ocaml.doc("<p>The reason for the account enrollment status.</p>
        <p>For example, an account might show a status of <code>Pending</code> because member
            accounts of an organization require more time to be enrolled in the service.</p>")
  statusReason: option<statusReason>,
  @ocaml.doc("<p>The account enrollment status.</p>") status: option<status>,
  @ocaml.doc("<p>The Amazon Web Services account ID.</p>") accountId: option<accountId>,
}
type utilizationMetrics = array<utilizationMetric>
@ocaml.doc("<p>Describes the savings opportunity for recommendations of a given resource type or for
            the recommendation option of an individual resource.</p>
        <p>Savings opportunity represents the estimated monthly savings you can achieve by
            implementing a given Compute Optimizer recommendation.</p>
        <important>
            <p>Savings opportunity data requires that you opt in to Cost Explorer, as well as
                activate <b>Receive Amazon EC2 resource
                    recommendations</b> in the Cost Explorer preferences page. That
                creates a connection between Cost Explorer and Compute Optimizer. With this
                connection, Cost Explorer generates savings estimates considering the price of
                existing resources, the price of recommended resources, and historical usage data.
                Estimated monthly savings reflects the projected dollar savings associated with each
                of the recommendations generated. For more information, see <a href=\"https://docs.aws.amazon.com/cost-management/latest/userguide/ce-enable.html\">Enabling Cost Explorer</a> and <a href=\"https://docs.aws.amazon.com/cost-management/latest/userguide/ce-rightsizing.html\">Optimizing your cost
                    with Rightsizing Recommendations</a> in the <i>Cost Management User
                    Guide</i>.</p>
        </important>")
type savingsOpportunity = {
  @ocaml.doc("<p>An object that describes the estimated monthly savings amount possible, based on
            On-Demand instance pricing, by adopting Compute Optimizer recommendations for a given
            resource.</p>")
  estimatedMonthlySavings: option<estimatedMonthlySavings>,
  @ocaml.doc("<p>The estimated monthly savings possible as a percentage of monthly cost by adopting
                Compute Optimizer recommendations for a given resource.</p>")
  savingsOpportunityPercentage: option<savingsOpportunityPercentage>,
}
type recommendationSources = array<recommendationSource>
@ocaml.doc("<p>Describes a recommendation preference.</p>")
type recommendationPreferencesDetail = {
  @ocaml.doc("<p>The status of the inferred workload types recommendation preference.</p>

        <p>A status of <code>Active</code> confirms that the preference is applied in the latest
            recommendation refresh. A status of <code>Inactive</code> confirms that it's not yet
            applied to recommendations.</p>")
  inferredWorkloadTypes: option<inferredWorkloadTypesPreference>,
  @ocaml.doc("<p>The status of the enhanced infrastructure metrics recommendation preference.</p>
        <p>A status of <code>Active</code> confirms that the preference is applied in the latest
            recommendation refresh, and a status of <code>Inactive</code> confirms that it's not yet
            applied to recommendations.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html\">Enhanced
                infrastructure metrics</a> in the <i>Compute Optimizer User
                Guide</i>.</p>")
  enhancedInfrastructureMetrics: option<enhancedInfrastructureMetrics>,
  @ocaml.doc("<p>The target resource type of the recommendation preference to create.</p>
        <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
            that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
            encompasses only instances that are part of an Auto Scaling group.</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>An object that describes the scope of the recommendation preference.</p>
        <p>Recommendation preferences can be created at the organization level (for management
            accounts of an organization only), account level, and resource level. For more
            information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html\">Activating
                enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
                Guide</i>.</p>")
  scope: option<scope>,
}
@ocaml.doc(
  "<p>Describes the recommendation preferences to return in the response of a <a>GetAutoScalingGroupRecommendations</a>, <a>GetEC2InstanceRecommendations</a>, and <a>GetEC2RecommendationProjectedMetrics</a> request.</p>"
)
type recommendationPreferences = {
  @ocaml.doc("<p>Specifies the CPU vendor and architecture for Amazon EC2 instance and Auto Scaling group recommendations.</p>
        <p>For example, when you specify <code>AWS_ARM64</code> with:</p>
        <ul>
            <li>
                <p>A <a>GetEC2InstanceRecommendations</a> or <a>GetAutoScalingGroupRecommendations</a> request, Compute Optimizer
                    returns recommendations that consist of Graviton2 instance types only.</p>
            </li>
            <li>
                <p>A <a>GetEC2RecommendationProjectedMetrics</a> request, Compute Optimizer returns projected utilization metrics for Graviton2 instance type
                    recommendations only.</p>
            </li>
            <li>
                <p>A <a>ExportEC2InstanceRecommendations</a> or <a>ExportAutoScalingGroupRecommendations</a> request, Compute Optimizer
                    exports recommendations that consist of Graviton2 instance types only.</p>
            </li>
         </ul>")
  cpuVendorArchitectures: option<cpuVendorArchitectures>,
}
type reasonCodeSummaries = array<reasonCodeSummary>
type projectedUtilizationMetrics = array<utilizationMetric>
@ocaml.doc("<p>Describes a projected utilization metric of a recommendation option, such as an
                Amazon EC2 instance. This represents the projected utilization of a
            recommendation option had you used that resource during the analyzed period.</p>
        <p>Compare the utilization metric data of your resource against its projected utilization
            metric data to determine the performance difference between your current resource and
            the recommended option.</p>
        <note>
            <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
                utilization metrics returned when you run the <a>GetEC2RecommendationProjectedMetrics</a> action. Additionally, the
                    <code>Memory</code> metric is returned only for resources that have the unified
                    CloudWatch agent installed on them. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent\">Enabling Memory Utilization with the CloudWatch Agent</a>.</p>
        </note>")
type projectedMetric = {
  @ocaml.doc("<p>The values of the projected utilization metrics.</p>")
  values: option<metricValues>,
  @ocaml.doc("<p>The timestamps of the projected utilization metric.</p>")
  timestamps: option<timestamps>,
  @ocaml.doc("<p>The name of the projected utilization metric.</p>
        <p>The following projected utilization metrics are returned:</p>
        <ul>
            <li>
                <p>
                  <code>Cpu</code> - The projected percentage of allocated EC2 compute units
                    that would be in use on the recommendation option had you used that resource
                    during the analyzed period. This metric identifies the processing power required
                    to run an application on the recommendation option.</p>
                <p>Depending on the instance type, tools in your operating system can show a
                    lower percentage than CloudWatch when the instance is not allocated a full
                    processor core.</p>
                <p>Units: Percent</p>
            </li>
            <li>
                <p>
                  <code>Memory</code> - The percentage of memory that would be in use on the
                    recommendation option had you used that resource during the analyzed period.
                    This metric identifies the amount of memory required to run an application on
                    the recommendation option.</p>
                <p>Units: Percent</p>
                <note>
                    <p>The <code>Memory</code> metric is returned only for resources that have
                        the unified CloudWatch agent installed on them. For more information,
                        see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent\">Enabling Memory
                            Utilization with the CloudWatch Agent</a>.</p>
                </note>
            </li>
         </ul>")
  name: option<metricName>,
}
type lambdaFunctionUtilizationMetrics = array<lambdaFunctionUtilizationMetric>
@ocaml.doc("<p>Describes a filter that returns a more specific list of Lambda
            function recommendations. Use this filter with the <a>GetLambdaFunctionRecommendations</a> action.</p>
        <p>You can use <code>EBSFilter</code> with the <a>GetEBSVolumeRecommendations</a> action, <code>JobFilter</code> with the
                <a>DescribeRecommendationExportJobs</a> action, and <code>Filter</code>
            with the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>")
type lambdaFunctionRecommendationFilter = {
  @ocaml.doc("<p>The value of the filter.</p>
        <p>The valid values for this parameter are as follows, depending on what you specify for
            the <code>name</code> parameter:</p>
        <ul>
            <li>
                <p>Specify <code>Optimized</code>, <code>NotOptimized</code>, or
                        <code>Unavailable</code> if you specify the <code>name</code> parameter as
                        <code>Finding</code>.</p>
            </li>
            <li>
                <p>Specify <code>MemoryOverprovisioned</code>,
                        <code>MemoryUnderprovisioned</code>, <code>InsufficientData</code>, or
                        <code>Inconclusive</code> if you specify the <code>name</code> parameter as
                        <code>FindingReasonCode</code>.</p>
            </li>
         </ul>")
  values: option<filterValues>,
  @ocaml.doc("<p>The name of the filter.</p>
        <p>Specify <code>Finding</code> to return recommendations with a specific finding
            classification (for example, <code>NotOptimized</code>).</p>
        <p>Specify <code>FindingReasonCode</code> to return recommendations with a specific
            finding reason code (for example, <code>MemoryUnderprovisioned</code>).</p>")
  name: option<lambdaFunctionRecommendationFilterName>,
}
type lambdaFunctionMemoryProjectedMetrics = array<lambdaFunctionMemoryProjectedMetric>
@ocaml.doc("<p>Describes a filter that returns a more specific list of recommendation export jobs.
            Use this filter with the <a>DescribeRecommendationExportJobs</a>
            action.</p>
        <p>You can use <code>EBSFilter</code> with the <a>GetEBSVolumeRecommendations</a> action,
                <code>LambdaFunctionRecommendationFilter</code> with the <a>GetLambdaFunctionRecommendations</a> action, and <code>Filter</code> with
            the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>")
type jobFilter = {
  @ocaml.doc("<p>The value of the filter.</p>
        <p>The valid values for this parameter are as follows, depending on what you specify for
            the <code>name</code> parameter:</p>
        <ul>
            <li>
                <p>Specify <code>Ec2Instance</code> or <code>AutoScalingGroup</code> if you
                    specify the <code>name</code> parameter as <code>ResourceType</code>. There is
                    no filter for EBS volumes because volume recommendations cannot be exported at
                    this time.</p>
            </li>
            <li>
                <p>Specify <code>Queued</code>, <code>InProgress</code>, <code>Complete</code>,
                    or <code>Failed</code> if you specify the <code>name</code> parameter as
                        <code>JobStatus</code>.</p>
            </li>
         </ul>")
  values: option<filterValues>,
  @ocaml.doc("<p>The name of the filter.</p>
        <p>Specify <code>ResourceType</code> to return export jobs of a specific resource type
            (for example, <code>Ec2Instance</code>).</p>
        <p>Specify <code>JobStatus</code> to return export jobs with a specific status (e.g,
                <code>Complete</code>).</p>")
  name: option<jobFilterName>,
}
type getRecommendationErrors = array<getRecommendationError>
@ocaml.doc("<p>Describes a filter that returns a more specific list of recommendations. Use this
            filter with the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
        <p>You can use <code>EBSFilter</code> with the <a>GetEBSVolumeRecommendations</a> action,
                <code>LambdaFunctionRecommendationFilter</code> with the <a>GetLambdaFunctionRecommendations</a> action, and <code>JobFilter</code> with
            the <a>DescribeRecommendationExportJobs</a> action.</p>")
type filter = {
  @ocaml.doc("<p>The value of the filter.</p>
        <p>The valid values for this parameter are as follows, depending on what you specify for
            the <code>name</code> parameter and the resource type that you wish to filter results
            for:</p>
        <ul>
            <li>
                <p>Specify <code>Optimized</code> or <code>NotOptimized</code> if you specify the
                        <code>name</code> parameter as <code>Finding</code> and you want to filter
                    results for Auto Scaling groups.</p>
            </li>
            <li>
                <p>Specify <code>Underprovisioned</code>, <code>Overprovisioned</code>, or
                        <code>Optimized</code> if you specify the <code>name</code> parameter as
                        <code>Finding</code> and you want to filter results for EC2
                    instances.</p>
            </li>
            <li>
                <p>Specify <code>Ec2Instance</code> or <code>AutoScalingGroup</code> if you
                    specify the <code>name</code> parameter as
                    <code>RecommendationSourceType</code>.</p>
            </li>
            <li>
                <p>Specify one of the following options if you specify the <code>name</code>
                    parameter as <code>FindingReasonCodes</code>:</p>
                <ul>
                  <li>
                        <p>
                        <b>
                           <code>CPUOverprovisioned</code>
                        </b> — The
                            instance’s CPU configuration can be sized down while still meeting the
                            performance requirements of your workload.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>CPUUnderprovisioned</code>
                        </b> —
                            The instance’s CPU configuration doesn't meet the performance
                            requirements of your workload and there is an alternative instance type
                            that provides better CPU performance.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>MemoryOverprovisioned</code>
                        </b> —
                            The instance’s memory configuration can be sized down while still
                            meeting the performance requirements of your workload.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>MemoryUnderprovisioned</code>
                        </b> —
                            The instance’s memory configuration doesn't meet the performance
                            requirements of your workload and there is an alternative instance type
                            that provides better memory performance.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>EBSThroughputOverprovisioned</code>
                        </b> — The
                            instance’s EBS throughput configuration can be sized down while still
                            meeting the performance requirements of your workload.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>EBSThroughputUnderprovisioned</code>
                        </b> — The
                            instance’s EBS throughput configuration doesn't meet the performance
                            requirements of your workload and there is an alternative instance type
                            that provides better EBS throughput performance.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>EBSIOPSOverprovisioned</code>
                        </b> —
                            The instance’s EBS IOPS configuration can be sized down while still
                            meeting the performance requirements of your workload.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>EBSIOPSUnderprovisioned</code>
                        </b>
                            — The instance’s EBS IOPS configuration doesn't meet the performance
                            requirements of your workload and there is an alternative instance type
                            that provides better EBS IOPS performance.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>NetworkBandwidthOverprovisioned</code>
                        </b> — The
                            instance’s network bandwidth configuration can be sized down while still
                            meeting the performance requirements of your workload.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>NetworkBandwidthUnderprovisioned</code>
                        </b> — The
                            instance’s network bandwidth configuration doesn't meet the performance
                            requirements of your workload and there is an alternative instance type
                            that provides better network bandwidth performance. This finding reason
                            happens when the <code>NetworkIn</code> or <code>NetworkOut</code>
                            performance of an instance is impacted.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>NetworkPPSOverprovisioned</code>
                        </b> — The instance’s
                            network PPS (packets per second) configuration can be sized down while
                            still meeting the performance requirements of your workload.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>NetworkPPSUnderprovisioned</code>
                        </b> — The instance’s
                            network PPS (packets per second) configuration doesn't meet the
                            performance requirements of your workload and there is an alternative
                            instance type that provides better network PPS performance.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>DiskIOPSOverprovisioned</code>
                        </b>
                            — The instance’s disk IOPS configuration can be sized down while still
                            meeting the performance requirements of your workload.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>DiskIOPSUnderprovisioned</code>
                        </b>
                            — The instance’s disk IOPS configuration doesn't meet the performance
                            requirements of your workload and there is an alternative instance type
                            that provides better disk IOPS performance.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>DiskThroughputOverprovisioned</code>
                        </b> — The
                            instance’s disk throughput configuration can be sized down while still
                            meeting the performance requirements of your workload.</p>
                    </li>
                  <li>
                        <p>
                        <b>
                           <code>DiskThroughputUnderprovisioned</code>
                        </b> — The
                            instance’s disk throughput configuration doesn't meet the performance
                            requirements of your workload and there is an alternative instance type
                            that provides better disk throughput performance.</p>
                    </li>
               </ul>
            </li>
         </ul>")
  values: option<filterValues>,
  @ocaml.doc("<p>The name of the filter.</p>
        <p>Specify <code>Finding</code> to return recommendations with a specific finding
            classification (for example, <code>Underprovisioned</code>).</p>
        <p>Specify <code>RecommendationSourceType</code> to return recommendations of a specific
            resource type (for example, <code>Ec2Instance</code>).</p>
        <p>Specify <code>FindingReasonCodes</code> to return recommendations with a specific
            finding reason code (for example, <code>CPUUnderprovisioned</code>).</p>")
  name: option<filterName>,
}
@ocaml.doc("<p>Describes the destination of the recommendations export and metadata files.</p>")
type exportDestination = {
  @ocaml.doc("<p>An object that describes the destination Amazon Simple Storage Service (Amazon S3)
            bucket name and object keys of a recommendations export file, and its associated
            metadata file.</p>")
  s3: option<s3Destination>,
}
@ocaml.doc("<p>Describes a filter that returns a more specific list of account enrollment statuses.
            Use this filter with the <a>GetEnrollmentStatusesForOrganization</a>
            action.</p>")
type enrollmentFilter = {
  @ocaml.doc("<p>The value of the filter.</p>
        <p>The valid values are <code>Active</code>, <code>Inactive</code>, <code>Pending</code>,
            and <code>Failed</code>.</p>")
  values: option<filterValues>,
  @ocaml.doc("<p>The name of the filter.</p>
        <p>Specify <code>Status</code> to return accounts with a specific enrollment status (for
            example, <code>Active</code>).</p>")
  name: option<enrollmentFilterName>,
}
@ocaml.doc("<p>Describes the effective recommendation preferences for a resource.</p>")
type effectiveRecommendationPreferences = {
  @ocaml.doc("<p>Describes the activation status of the inferred workload types preference.</p>

        <p>A status of <code>Active</code> confirms that the preference is applied in the latest
            recommendation refresh. A status of <code>Inactive</code> confirms that it's not yet
            applied to recommendations.</p>")
  inferredWorkloadTypes: option<inferredWorkloadTypesPreference>,
  @ocaml.doc("<p>Describes the activation status of the enhanced infrastructure metrics
            preference.</p>
        <p>A status of <code>Active</code> confirms that the preference is applied in the latest
            recommendation refresh, and a status of <code>Inactive</code> confirms that it's not yet
            applied to recommendations.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html\">Enhanced
                infrastructure metrics</a> in the <i>Compute Optimizer User
                Guide</i>.</p>")
  enhancedInfrastructureMetrics: option<enhancedInfrastructureMetrics>,
  @ocaml.doc("<p>Describes the CPU vendor and architecture for an instance or Auto Scaling group
            recommendations.</p>
        <p>For example, when you specify <code>AWS_ARM64</code> with:</p>
        <ul>
            <li>
                <p>A <a>GetEC2InstanceRecommendations</a> or <a>GetAutoScalingGroupRecommendations</a> request, Compute Optimizer
                    returns recommendations that consist of Graviton2 instance types only.</p>
            </li>
            <li>
                <p>A <a>GetEC2RecommendationProjectedMetrics</a> request, Compute Optimizer returns projected utilization metrics for Graviton2 instance type
                    recommendations only.</p>
            </li>
            <li>
                <p>A <a>ExportEC2InstanceRecommendations</a> or <a>ExportAutoScalingGroupRecommendations</a> request, Compute Optimizer
                    exports recommendations that consist of Graviton2 instance types only.</p>
            </li>
         </ul>")
  cpuVendorArchitectures: option<cpuVendorArchitectures>,
}
type ebsutilizationMetrics = array<ebsutilizationMetric>
@ocaml.doc("<p>Describes a filter that returns a more specific list of Amazon Elastic Block Store
                (Amazon EBS) volume recommendations. Use this filter with the <a>GetEBSVolumeRecommendations</a> action.</p>
        <p>You can use <code>LambdaFunctionRecommendationFilter</code> with the <a>GetLambdaFunctionRecommendations</a> action, <code>JobFilter</code> with the
                <a>DescribeRecommendationExportJobs</a> action, and <code>Filter</code>
            with the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>")
type ebsfilter = {
  @ocaml.doc("<p>The value of the filter.</p>
        <p>The valid values are <code>Optimized</code>, or <code>NotOptimized</code>.</p>")
  values: option<filterValues>,
  @ocaml.doc("<p>The name of the filter.</p>
        <p>Specify <code>Finding</code> to return recommendations with a specific finding
            classification (for example, <code>NotOptimized</code>).</p>")
  name: option<ebsfilterName>,
}
type accountEnrollmentStatuses = array<accountEnrollmentStatus>
@ocaml.doc("<p>Describes a recommendation option for an Amazon Elastic Block Store (Amazon EBS)
            instance.</p>")
type volumeRecommendationOption = {
  @ocaml.doc("<p>An object that describes the savings opportunity for the EBS volume recommendation
            option. Savings opportunity includes the estimated monthly savings amount and
            percentage.</p>")
  savingsOpportunity: option<savingsOpportunity>,
  @ocaml.doc("<p>The rank of the volume recommendation option.</p>
        <p>The top recommendation option is ranked as <code>1</code>.</p>")
  rank: option<rank>,
  @ocaml.doc("<p>The performance risk of the volume recommendation option.</p>
        <p>Performance risk is the likelihood of the recommended volume type meeting the
            performance requirement of your workload.</p>
        <p>The value ranges from <code>0</code> - <code>4</code>, with <code>0</code> meaning
            that the recommended resource is predicted to always provide enough hardware capability.
            The higher the performance risk is, the more likely you should validate whether the
            recommendation will meet the performance requirements of your workload before migrating
            your resource.</p>")
  performanceRisk: option<performanceRisk>,
  @ocaml.doc("<p>An array of objects that describe a volume configuration.</p>")
  configuration: option<volumeConfiguration>,
}
@ocaml.doc("<p>The summary of a recommendation.</p>")
type summary = {
  @ocaml.doc("<p>An array of objects that summarize a finding reason code.</p>")
  reasonCodeSummaries: option<reasonCodeSummaries>,
  @ocaml.doc("<p>The value of the recommendation summary.</p>") value: option<summaryValue>,
  @ocaml.doc("<p>The finding classification of the recommendation.</p>") name: option<finding>,
}
type recommendationPreferencesDetails = array<recommendationPreferencesDetail>
@ocaml.doc("<p>Describes a recommendation export job.</p>
        <p>Use the <a>DescribeRecommendationExportJobs</a> action to view your
            recommendation export jobs.</p>
        <p>Use the <a>ExportAutoScalingGroupRecommendations</a> or <a>ExportEC2InstanceRecommendations</a> actions to request an export of your
            recommendations.</p>")
type recommendationExportJob = {
  @ocaml.doc("<p>The reason for an export job failure.</p>") failureReason: option<failureReason>,
  @ocaml.doc("<p>The timestamp of when the export job was last updated.</p>")
  lastUpdatedTimestamp: option<lastUpdatedTimestamp>,
  @ocaml.doc("<p>The timestamp of when the export job was created.</p>")
  creationTimestamp: option<creationTimestamp>,
  @ocaml.doc("<p>The status of the export job.</p>") status: option<jobStatus>,
  @ocaml.doc("<p>The resource type of the exported recommendations.</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>An object that describes the destination of the export file.</p>")
  destination: option<exportDestination>,
  @ocaml.doc("<p>The identification number of the export job.</p>") jobId: option<jobId>,
}
type projectedMetrics = array<projectedMetric>
type lambdaFunctionRecommendationFilters = array<lambdaFunctionRecommendationFilter>
@ocaml.doc("<p>Describes a recommendation option for an Lambda function.</p>")
type lambdaFunctionMemoryRecommendationOption = {
  @ocaml.doc("<p>An object that describes the savings opportunity for the Lambda function
            recommendation option. Savings opportunity includes the estimated monthly savings amount
            and percentage.</p>")
  savingsOpportunity: option<savingsOpportunity>,
  @ocaml.doc("<p>An array of objects that describe the projected utilization metrics of the function
            recommendation option.</p>")
  projectedUtilizationMetrics: option<lambdaFunctionMemoryProjectedMetrics>,
  @ocaml.doc("<p>The memory size, in MB, of the function recommendation option.</p>")
  memorySize: option<memorySize>,
  @ocaml.doc("<p>The rank of the function recommendation option.</p>
        <p>The top recommendation option is ranked as <code>1</code>.</p>")
  rank: option<rank>,
}
type jobFilters = array<jobFilter>
@ocaml.doc("<p>Describes a recommendation option for an Amazon EC2 instance.</p>")
type instanceRecommendationOption = {
  @ocaml.doc("<p>The level of effort required to migrate from the current instance type to the
            recommended instance type.</p>

        <p>For example, the migration effort is <code>Low</code> if Amazon EMR is the
            inferred workload type and an Amazon Web Services Graviton instance type is recommended.
            The migration effort is <code>Medium</code> if a workload type couldn't be inferred but
            an Amazon Web Services Graviton instance type is recommended. The migration effort is
                <code>VeryLow</code> if both the current and recommended instance types are of the
            same CPU architecture.</p>")
  migrationEffort: option<migrationEffort>,
  @ocaml.doc("<p>An object that describes the savings opportunity for the instance recommendation
            option. Savings opportunity includes the estimated monthly savings amount and
            percentage.</p>")
  savingsOpportunity: option<savingsOpportunity>,
  @ocaml.doc("<p>The rank of the instance recommendation option.</p>
        <p>The top recommendation option is ranked as <code>1</code>.</p>")
  rank: option<rank>,
  @ocaml.doc("<p>The performance risk of the instance recommendation option.</p>
        <p>Performance risk indicates the likelihood of the recommended instance type not meeting
            the resource needs of your workload. Compute Optimizer calculates an individual
            performance risk score for each specification of the recommended instance, including
            CPU, memory, EBS throughput, EBS IOPS, disk throughput, disk IOPS, network throughput,
            and network PPS.
            The performance
            risk of the recommended instance is calculated as the maximum performance risk score
            across the analyzed resource specifications.</p>
        <p>The value ranges from <code>0</code> - <code>4</code>, with <code>0</code> meaning
            that the recommended resource is predicted to always provide enough hardware capability.
            The higher the performance risk is, the more likely you should validate whether the
            recommendation will meet the performance requirements of your workload before migrating
            your resource.</p>")
  performanceRisk: option<performanceRisk>,
  @ocaml.doc("<p>Describes the configuration differences between the current instance and the
            recommended instance type. You should consider the configuration differences before
            migrating your workloads from the current instance to the recommended instance type. The
                <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-resize.html\">Change the instance type guide for Linux</a> and <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-resize.html\">Change the instance type
                guide for Windows</a> provide general guidance for getting started with an
            instance migration.</p>
        <p>Platform differences include:</p>
        <ul>
            <li>
                <p>
                  <b>
                     <code>Hypervisor</code>
                  </b> — The hypervisor of
                    the recommended instance type is different than that of the current instance.
                    For example, the recommended instance type uses a Nitro hypervisor and the
                    current instance uses a Xen hypervisor. The differences that you should consider
                    between these hypervisors are covered in the <a href=\"http://aws.amazon.com/ec2/faqs/#Nitro_Hypervisor\">Nitro Hypervisor</a> section of the
                        Amazon EC2 frequently asked questions. For more information, see
                        <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances\">Instances built on the Nitro System</a> in the <i>Amazon EC2
                        User Guide for Linux</i>, or <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#ec2-nitro-instances\">Instances built on the Nitro System</a> in the <i>Amazon EC2
                        User Guide for Windows</i>.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>NetworkInterface</code>
                  </b> — The network
                    interface of the recommended instance type is different than that of the current
                    instance. For example, the recommended instance type supports enhanced
                    networking and the current instance might not. To enable enhanced networking for
                    the recommended instance type, you must install the Elastic Network Adapter
                    (ENA) driver or the Intel 82599 Virtual Function driver. For more information,
                    see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#instance-networking-storage\">Networking and storage features</a> and <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking.html\">Enhanced networking
                        on Linux</a> in the <i>Amazon EC2 User Guide for
                    Linux</i>, or <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#instance-networking-storage\">Networking and storage features</a> and <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/enhanced-networking.html\">Enhanced
                        networking on Windows</a> in the <i>Amazon EC2 User Guide for
                        Windows</i>.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>StorageInterface</code>
                  </b> — The storage
                    interface of the recommended instance type is different than that of the current
                    instance. For example, the recommended instance type uses an NVMe storage
                    interface and the current instance does not. To access NVMe volumes for the
                    recommended instance type, you will need to install or upgrade the NVMe driver.
                    For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#instance-networking-storage\">Networking and storage features</a> and <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nvme-ebs-volumes.html\">Amazon EBS and NVMe on
                        Linux instances</a> in the <i>Amazon EC2 User Guide for
                        Linux</i>, or <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#instance-networking-storage\">Networking and storage features</a> and <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/nvme-ebs-volumes.html\">Amazon EBS and NVMe
                        on Windows instances</a> in the <i>Amazon EC2 User Guide for
                        Windows</i>.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>InstanceStoreAvailability</code>
                  </b> — The
                    recommended instance type does not support instance store volumes and the
                    current instance does. Before migrating, you might need to back up the data on
                    your instance store volumes if you want to preserve them. For more information,
                    see <a href=\"https://aws.amazon.com/premiumsupport/knowledge-center/back-up-instance-store-ebs/\">How do I back up an instance store volume on my Amazon EC2 instance
                        to Amazon EBS?</a> in the <i>Amazon Web Services Premium
                        Support Knowledge Base</i>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#instance-networking-storage\">Networking and storage features</a> and <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html\">Amazon EC2
                        instance store</a> in the <i>Amazon EC2 User Guide for
                        Linux</i>, or see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instance-types.html#instance-networking-storage\">Networking and storage features</a> and <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/InstanceStorage.html\">Amazon EC2
                        instance store</a> in the <i>Amazon EC2 User Guide for
                        Windows</i>.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>VirtualizationType</code>
                  </b> — The
                    recommended instance type uses the hardware virtual machine (HVM) virtualization
                    type and the current instance uses the paravirtual (PV) virtualization type. For
                    more information about the differences between these virtualization types, see
                        <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/virtualization_types.html\">Linux AMI
                        virtualization types</a> in the <i>Amazon EC2 User Guide for
                        Linux</i>, or <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/windows-ami-version-history.html#virtualization-types\">Windows AMI virtualization types</a> in the <i>Amazon EC2 User
                        Guide for Windows</i>.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>Architecture</code>
                  </b> — The CPU
                    architecture between the recommended instance type and the current instance is
                    different. For example, the recommended instance type might use an Arm CPU
                    architecture and the current instance type might use a different one, such as
                    x86. Before migrating, you should consider recompiling the software on your
                    instance for the new architecture. Alternatively, you might switch to an Amazon
                    Machine Image (AMI) that supports the new architecture. For more information
                    about the CPU architecture for each instance type, see <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2 Instance Types</a>.</p>
            </li>
         </ul>")
  platformDifferences: option<platformDifferences>,
  @ocaml.doc("<p>An array of objects that describe the projected utilization metrics of the instance
            recommendation option.</p>
        <note>
            <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
                utilization metrics returned. Additionally, the <code>Memory</code> metric is
                returned only for resources that have the unified CloudWatch agent installed
                on them. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent\">Enabling Memory
                    Utilization with the CloudWatch Agent</a>.</p>
        </note>")
  projectedUtilizationMetrics: option<projectedUtilizationMetrics>,
  @ocaml.doc("<p>The instance type of the instance recommendation.</p>")
  instanceType: option<instanceType>,
}
type filters = array<filter>
type enrollmentFilters = array<enrollmentFilter>
type ebsfilters = array<ebsfilter>
@ocaml.doc("<p>Describes a recommendation option for an Auto Scaling group.</p>")
type autoScalingGroupRecommendationOption = {
  @ocaml.doc("<p>The level of effort required to migrate from the current instance type to the
            recommended instance type.</p>

        <p>For example, the migration effort is <code>Low</code> if Amazon EMR is the
            inferred workload type and an Amazon Web Services Graviton instance type is recommended.
            The migration effort is <code>Medium</code> if a workload type couldn't be inferred but
            an Amazon Web Services Graviton instance type is recommended. The migration effort is
                <code>VeryLow</code> if both the current and recommended instance types are of the
            same CPU architecture.</p>")
  migrationEffort: option<migrationEffort>,
  @ocaml.doc("<p>An object that describes the savings opportunity for the Auto Scaling group
            recommendation option. Savings opportunity includes the estimated monthly savings amount
            and percentage.</p>")
  savingsOpportunity: option<savingsOpportunity>,
  @ocaml.doc("<p>The rank of the Auto Scaling group recommendation option.</p>
        <p>The top recommendation option is ranked as <code>1</code>.</p>")
  rank: option<rank>,
  @ocaml.doc("<p>The performance risk of the Auto Scaling group configuration
            recommendation.</p>
        <p>Performance risk indicates the likelihood of the recommended instance type not meeting
            the resource needs of your workload. Compute Optimizer calculates an individual
            performance risk score for each specification of the recommended instance, including
            CPU, memory, EBS throughput, EBS IOPS, disk throughput, disk IOPS, network throughput,
            and network PPS.
            The performance
            risk of the recommended instance is calculated as the maximum performance risk score
            across the analyzed resource specifications.</p>
        <p>The value ranges from <code>0</code> - <code>4</code>, with <code>0</code> meaning
            that the recommended resource is predicted to always provide enough hardware capability.
            The higher the performance risk is, the more likely you should validate whether the
            recommendation will meet the performance requirements of your workload before migrating
            your resource.</p>")
  performanceRisk: option<performanceRisk>,
  @ocaml.doc("<p>An array of objects that describe the projected utilization metrics of the Auto Scaling group recommendation option.</p>
        <note>
            <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
                utilization metrics returned. Additionally, the <code>Memory</code> metric is
                returned only for resources that have the unified CloudWatch agent installed
                on them. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent\">Enabling Memory
                    Utilization with the CloudWatch Agent</a>.</p>
        </note>")
  projectedUtilizationMetrics: option<projectedUtilizationMetrics>,
  @ocaml.doc("<p>An array of objects that describe an Auto Scaling group configuration.</p>")
  configuration: option<autoScalingGroupConfiguration>,
}
type volumeRecommendationOptions = array<volumeRecommendationOption>
type summaries = array<summary>
@ocaml.doc("<p>Describes a projected utilization metric of a recommendation option.</p>
        <note>
            <p>The <code>Cpu</code> and <code>Memory</code> metrics are the only projected
                utilization metrics returned when you run the <a>GetEC2RecommendationProjectedMetrics</a> action. Additionally, the
                    <code>Memory</code> metric is returned only for resources that have the unified
                    CloudWatch agent installed on them. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent\">Enabling Memory Utilization with the CloudWatch Agent</a>.</p>
        </note>")
type recommendedOptionProjectedMetric = {
  @ocaml.doc("<p>An array of objects that describe a projected utilization metric.</p>")
  projectedMetrics: option<projectedMetrics>,
  @ocaml.doc("<p>The rank of the recommendation option projected metric.</p>
        <p>The top recommendation option is ranked as <code>1</code>.</p>
        <p>The projected metric rank correlates to the recommendation option rank. For example,
            the projected metric ranked as <code>1</code> is related to the recommendation option
            that is also ranked as <code>1</code> in the same response.</p>")
  rank: option<rank>,
  @ocaml.doc("<p>The recommended instance type.</p>")
  recommendedInstanceType: option<recommendedInstanceType>,
}
type recommendationOptions = array<instanceRecommendationOption>
type recommendationExportJobs = array<recommendationExportJob>
type lambdaFunctionMemoryRecommendationOptions = array<lambdaFunctionMemoryRecommendationOption>
type autoScalingGroupRecommendationOptions = array<autoScalingGroupRecommendationOption>
@ocaml.doc("<p>Describes an Amazon Elastic Block Store (Amazon EBS) volume recommendation.</p>")
type volumeRecommendation = {
  @ocaml.doc("<p>The risk of the current EBS volume not meeting the performance needs of its workloads.
            The higher the risk, the more likely the current EBS volume doesn't have sufficient
            capacity.</p>")
  currentPerformanceRisk: option<currentPerformanceRisk>,
  @ocaml.doc("<p>The timestamp of when the volume recommendation was last generated.</p>")
  lastRefreshTimestamp: option<lastRefreshTimestamp>,
  @ocaml.doc("<p>An array of objects that describe the recommendation options for the volume.</p>")
  volumeRecommendationOptions: option<volumeRecommendationOptions>,
  @ocaml.doc(
    "<p>The number of days for which utilization metrics were analyzed for the volume.</p>"
  )
  lookBackPeriodInDays: option<lookBackPeriodInDays>,
  @ocaml.doc("<p>An array of objects that describe the utilization metrics of the volume.</p>")
  utilizationMetrics: option<ebsutilizationMetrics>,
  @ocaml.doc("<p>The finding classification of the volume.</p>
        <p>Findings for volumes include:</p>
        <ul>
            <li>
                <p>
                  <b>
                     <code>NotOptimized</code>
                  </b>—A volume is
                    considered not optimized when Compute Optimizer identifies a recommendation
                    that can provide better performance for your workload.</p>
                
            </li>
            <li>
                <p>
                  <b>
                     <code>Optimized</code>
                  </b>—An volume is
                    considered optimized when Compute Optimizer determines that the volume is
                    correctly provisioned to run your workload based on the chosen volume type. For
                    optimized resources, Compute Optimizer might recommend a new generation volume
                    type.</p>
                
            </li>
         </ul>")
  finding: option<ebsfinding>,
  @ocaml.doc("<p>An array of objects that describe the current configuration of the volume.</p>")
  currentConfiguration: option<volumeConfiguration>,
  @ocaml.doc("<p>The Amazon Web Services account ID of the volume.</p>")
  accountId: option<accountId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the current volume.</p>")
  volumeArn: option<volumeArn>,
}
type recommendedOptionProjectedMetrics = array<recommendedOptionProjectedMetric>
@ocaml.doc("<p>A summary of a recommendation.</p>")
type recommendationSummary = {
  @ocaml.doc("<p>An object that describes the performance risk ratings for a given resource
            type.</p>")
  currentPerformanceRiskRatings: option<currentPerformanceRiskRatings>,
  @ocaml.doc("<p>An object that describes the savings opportunity for a given resource type. Savings
            opportunity includes the estimated monthly savings amount and percentage.</p>")
  savingsOpportunity: option<savingsOpportunity>,
  @ocaml.doc("<p>The Amazon Web Services account ID of the recommendation summary.</p>")
  accountId: option<accountId>,
  @ocaml.doc("<p>The resource type that the recommendation summary applies to.</p>")
  recommendationResourceType: option<recommendationSourceType>,
  @ocaml.doc("<p>An array of objects that describe a recommendation summary.</p>")
  summaries: option<summaries>,
}
@ocaml.doc("<p>Describes an Lambda function recommendation.</p>")
type lambdaFunctionRecommendation = {
  @ocaml.doc("<p>The risk of the current Lambda function not meeting the performance needs
            of its workloads. The higher the risk, the more likely the current Lambda
            function requires more memory.</p>")
  currentPerformanceRisk: option<currentPerformanceRisk>,
  @ocaml.doc("<p>An array of objects that describe the memory configuration recommendation options for
            the function.</p>")
  memorySizeRecommendationOptions: option<lambdaFunctionMemoryRecommendationOptions>,
  @ocaml.doc("<p>The reason for the finding classification of the function.</p>
        <note>
            <p>Functions that have a finding classification of <code>Optimized</code> don't have
                a finding reason code.</p>
        </note>
        <p>Finding reason codes for functions include:</p>
        <ul>
            <li>
                <p>
                  <b>
                     <code>MemoryOverprovisioned</code>
                  </b> — The
                    function is over-provisioned when its memory configuration can be sized down
                    while still meeting the performance requirements of your workload. An
                    over-provisioned function might lead to unnecessary infrastructure cost. This
                    finding reason code is part of the <code>NotOptimized</code> finding
                    classification.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>MemoryUnderprovisioned</code>
                  </b> — The
                    function is under-provisioned when its memory configuration doesn't meet the
                    performance requirements of the workload. An under-provisioned function might
                    lead to poor application performance. This finding reason code is part of the
                        <code>NotOptimized</code> finding classification.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>InsufficientData</code>
                  </b> — The function
                    does not have sufficient metric data for Compute Optimizer to generate a
                    recommendation. For more information, see the <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html\">Supported resources and
                        requirements</a> in the <i>Compute Optimizer User
                        Guide</i>. This finding reason code is part of the
                        <code>Unavailable</code> finding classification.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>Inconclusive</code>
                  </b> — The function does
                    not qualify for a recommendation because Compute Optimizer cannot generate a
                    recommendation with a high degree of confidence. This finding reason code is
                    part of the <code>Unavailable</code> finding classification.</p>
            </li>
         </ul>")
  findingReasonCodes: option<lambdaFunctionRecommendationFindingReasonCodes>,
  @ocaml.doc("<p>The finding classification of the function.</p>
        <p>Findings for functions include:</p>
        <ul>
            <li>
                <p>
                  <b>
                     <code>Optimized</code>
                  </b> — The function is
                    correctly provisioned to run your workload based on its current configuration
                    and its utilization history. This finding classification does not include
                    finding reason codes.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>NotOptimized</code>
                  </b> — The function is
                    performing at a higher level (over-provisioned) or at a lower level
                    (under-provisioned) than required for your workload because its current
                    configuration is not optimal. Over-provisioned resources might lead to
                    unnecessary infrastructure cost, and under-provisioned resources might lead to
                    poor application performance. This finding classification can include the
                        <code>MemoryUnderprovisioned</code> and <code>MemoryUnderprovisioned</code>
                    finding reason codes.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>Unavailable</code>
                  </b> — Compute Optimizer
                    was unable to generate a recommendation for the function. This could be because
                    the function has not accumulated sufficient metric data, or the function does
                    not qualify for a recommendation. This finding classification can include the
                        <code>InsufficientData</code> and <code>Inconclusive</code> finding reason
                    codes.</p>
                <note>
                    <p>Functions with a finding of unavailable are not returned unless you
                        specify the <code>filter</code> parameter with a value of
                            <code>Unavailable</code> in your
                            <code>GetLambdaFunctionRecommendations</code> request.</p>
                </note>
            </li>
         </ul>")
  finding: option<lambdaFunctionRecommendationFinding>,
  @ocaml.doc("<p>The timestamp of when the function recommendation was last generated.</p>")
  lastRefreshTimestamp: option<lastRefreshTimestamp>,
  @ocaml.doc("<p>The number of days for which utilization metrics were analyzed for the
            function.</p>")
  lookbackPeriodInDays: option<lookBackPeriodInDays>,
  @ocaml.doc("<p>An array of objects that describe the utilization metrics of the function.</p>")
  utilizationMetrics: option<lambdaFunctionUtilizationMetrics>,
  @ocaml.doc(
    "<p>The number of times your function code was applied during the look-back period.</p>"
  )
  numberOfInvocations: option<numberOfInvocations>,
  @ocaml.doc("<p>The amount of memory, in MB, that's allocated to the current function.</p>")
  currentMemorySize: option<memorySize>,
  @ocaml.doc("<p>The Amazon Web Services account ID of the function.</p>")
  accountId: option<accountId>,
  @ocaml.doc("<p>The version number of the current function.</p>")
  functionVersion: option<functionVersion>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the current function.</p>")
  functionArn: option<functionArn>,
}
@ocaml.doc("<p>Describes an Amazon EC2 instance recommendation.</p>")
type instanceRecommendation = {
  @ocaml.doc("<p>The applications that might be running on the instance as inferred by Compute Optimizer.</p>

        <p>Compute Optimizer can infer if one of the following applications might be running on
            the instance:</p>

        <ul>
            <li>
                <p>
                  <code>AmazonEmr</code> - Infers that Amazon EMR might be running on
                    the instance.</p>
            </li>
            <li>
                <p>
                  <code>ApacheCassandra</code> - Infers that Apache Cassandra might be running
                    on the instance.</p>
            </li>
            <li>
                <p>
                  <code>ApacheHadoop</code> - Infers that Apache Hadoop might be running on the
                    instance.</p>
            </li>
            <li>
                <p>
                  <code>Memcached</code> - Infers that Memcached might be running on the
                    instance.</p>
            </li>
            <li>
                <p>
                  <code>NGINX</code> - Infers that NGINX might be running on the
                    instance.</p>
            </li>
            <li>
                <p>
                  <code>PostgreSql</code> - Infers that PostgreSQL might be running on the
                    instance.</p>
            </li>
            <li>
                <p>
                  <code>Redis</code> - Infers that Redis might be running on the
                    instance.</p>
            </li>
         </ul>")
  inferredWorkloadTypes: option<inferredWorkloadTypes>,
  @ocaml.doc("<p>An object that describes the effective recommendation preferences for the
            instance.</p>")
  effectiveRecommendationPreferences: option<effectiveRecommendationPreferences>,
  @ocaml.doc("<p>The risk of the current instance not meeting the performance needs of its workloads.
            The higher the risk, the more likely the current instance cannot meet the performance
            requirements of its workload.</p>")
  currentPerformanceRisk: option<currentPerformanceRisk>,
  @ocaml.doc("<p>The timestamp of when the instance recommendation was last generated.</p>")
  lastRefreshTimestamp: option<lastRefreshTimestamp>,
  @ocaml.doc("<p>An array of objects that describe the source resource of the recommendation.</p>")
  recommendationSources: option<recommendationSources>,
  @ocaml.doc(
    "<p>An array of objects that describe the recommendation options for the instance.</p>"
  )
  recommendationOptions: option<recommendationOptions>,
  @ocaml.doc("<p>The number of days for which utilization metrics were analyzed for the
            instance.</p>")
  lookBackPeriodInDays: option<lookBackPeriodInDays>,
  @ocaml.doc("<p>An array of objects that describe the utilization metrics of the instance.</p>")
  utilizationMetrics: option<utilizationMetrics>,
  @ocaml.doc("<p>The reason for the finding classification of the instance.</p>
        <p>Finding reason codes for instances include:</p>
        <ul>
            <li>
                <p>
                  <b>
                     <code>CPUOverprovisioned</code>
                  </b> — The
                    instance’s CPU configuration can be sized down while still meeting the
                    performance requirements of your workload. This is identified by analyzing the
                        <code>CPUUtilization</code> metric of the current instance during the
                    look-back period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>CPUUnderprovisioned</code>
                  </b> — The
                    instance’s CPU configuration doesn't meet the performance requirements of your
                    workload and there is an alternative instance type that provides better CPU
                    performance. This is identified by analyzing the <code>CPUUtilization</code>
                    metric of the current instance during the look-back period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>MemoryOverprovisioned</code>
                  </b> — The
                    instance’s memory configuration can be sized down while still meeting the
                    performance requirements of your workload. This is identified by analyzing the
                    memory utilization metric of the current instance during the look-back
                    period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>MemoryUnderprovisioned</code>
                  </b> — The
                    instance’s memory configuration doesn't meet the performance requirements of
                    your workload and there is an alternative instance type that provides better
                    memory performance. This is identified by analyzing the memory utilization
                    metric of the current instance during the look-back period.</p>
                <note>
                    <p>Memory utilization is analyzed only for resources that have the unified
                            CloudWatch agent installed on them. For more information, see
                            <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent\">Enabling memory
                            utilization with the Amazon CloudWatch Agent</a> in the
                                <i>Compute Optimizer User Guide</i>. On Linux
                        instances, Compute Optimizer analyses the <code>mem_used_percent</code>
                        metric in the <code>CWAgent</code> namespace, or the legacy
                            <code>MemoryUtilization</code> metric in the <code>System/Linux</code>
                        namespace. On Windows instances, Compute Optimizer analyses the <code>Memory
                            % Committed Bytes In Use</code> metric in the <code>CWAgent</code>
                        namespace.</p>
                </note>
            </li>
            <li>
                <p>
                  <b>
                     <code>EBSThroughputOverprovisioned</code>
                  </b> —
                    The instance’s EBS throughput configuration can be sized down while still
                    meeting the performance requirements of your workload. This is identified by
                    analyzing the <code>VolumeReadOps</code> and <code>VolumeWriteOps</code> metrics
                    of EBS volumes attached to the current instance during the look-back
                    period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>EBSThroughputUnderprovisioned</code>
                  </b> —
                    The instance’s EBS throughput configuration doesn't meet the performance
                    requirements of your workload and there is an alternative instance type that
                    provides better EBS throughput performance. This is identified by analyzing the
                        <code>VolumeReadOps</code> and <code>VolumeWriteOps</code> metrics of EBS
                    volumes attached to the current instance during the look-back period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>EBSIOPSOverprovisioned</code>
                  </b> — The
                    instance’s EBS IOPS configuration can be sized down while still meeting the
                    performance requirements of your workload. This is identified by analyzing the
                        <code>VolumeReadBytes</code> and <code>VolumeWriteBytes</code> metric of EBS
                    volumes attached to the current instance during the look-back period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>EBSIOPSUnderprovisioned</code>
                  </b> — The
                    instance’s EBS IOPS configuration doesn't meet the performance requirements of
                    your workload and there is an alternative instance type that provides better EBS
                    IOPS performance. This is identified by analyzing the
                        <code>VolumeReadBytes</code> and <code>VolumeWriteBytes</code> metric of EBS
                    volumes attached to the current instance during the look-back period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>NetworkBandwidthOverprovisioned</code>
                  </b>
                    — The instance’s network bandwidth configuration can be sized down while still
                    meeting the performance requirements of your workload. This is identified by
                    analyzing the <code>NetworkIn</code> and <code>NetworkOut</code> metrics of the
                    current instance during the look-back period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>NetworkBandwidthUnderprovisioned</code>
                  </b>
                    — The instance’s network bandwidth configuration doesn't meet the performance
                    requirements of your workload and there is an alternative instance type that
                    provides better network bandwidth performance. This is identified by analyzing
                    the <code>NetworkIn</code> and <code>NetworkOut</code> metrics of the current
                    instance during the look-back period. This finding reason happens when the
                        <code>NetworkIn</code> or <code>NetworkOut</code> performance of an instance
                    is impacted.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>NetworkPPSOverprovisioned</code>
                  </b> — The
                    instance’s network PPS (packets per second) configuration can be sized down
                    while still meeting the performance requirements of your workload. This is
                    identified by analyzing the <code>NetworkPacketsIn</code> and
                        <code>NetworkPacketsIn</code> metrics of the current instance during the
                    look-back period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>NetworkPPSUnderprovisioned</code>
                  </b> — The
                    instance’s network PPS (packets per second) configuration doesn't meet the
                    performance requirements of your workload and there is an alternative instance
                    type that provides better network PPS performance. This is identified by
                    analyzing the <code>NetworkPacketsIn</code> and <code>NetworkPacketsIn</code>
                    metrics of the current instance during the look-back period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>DiskIOPSOverprovisioned</code>
                  </b> — The
                    instance’s disk IOPS configuration can be sized down while still meeting the
                    performance requirements of your workload. This is identified by analyzing the
                        <code>DiskReadOps</code> and <code>DiskWriteOps</code> metrics of the
                    current instance during the look-back period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>DiskIOPSUnderprovisioned</code>
                  </b> — The
                    instance’s disk IOPS configuration doesn't meet the performance requirements of
                    your workload and there is an alternative instance type that provides better
                    disk IOPS performance. This is identified by analyzing the
                        <code>DiskReadOps</code> and <code>DiskWriteOps</code> metrics of the
                    current instance during the look-back period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>DiskThroughputOverprovisioned</code>
                  </b> —
                    The instance’s disk throughput configuration can be sized down while still
                    meeting the performance requirements of your workload. This is identified by
                    analyzing the <code>DiskReadBytes</code> and <code>DiskWriteBytes</code> metrics
                    of the current instance during the look-back period.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>DiskThroughputUnderprovisioned</code>
                  </b> —
                    The instance’s disk throughput configuration doesn't meet the performance
                    requirements of your workload and there is an alternative instance type that
                    provides better disk throughput performance. This is identified by analyzing the
                        <code>DiskReadBytes</code> and <code>DiskWriteBytes</code> metrics of the
                    current instance during the look-back period.</p>
            </li>
         </ul>
        <note>
            <p>For more information about instance metrics, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/viewing_metrics_with_cloudwatch.html\">List the
                    available CloudWatch metrics for your instances</a> in the
                        <i>Amazon Elastic Compute Cloud User Guide</i>. For more information
                about EBS volume metrics, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cloudwatch_ebs.html\">Amazon CloudWatch
                    metrics for Amazon EBS</a> in the <i>Amazon Elastic Compute Cloud
                    User Guide</i>.</p>
        </note>")
  findingReasonCodes: option<instanceRecommendationFindingReasonCodes>,
  @ocaml.doc("<p>The finding classification of the instance.</p>
        <p>Findings for instances include:</p>
        <ul>
            <li>
                <p>
                  <b>
                     <code>Underprovisioned</code>
                  </b>—An instance is
                    considered under-provisioned when at least one specification of your instance,
                    such as CPU, memory, or network, does not meet the performance requirements of
                    your workload. Under-provisioned instances may lead to poor application
                    performance.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>Overprovisioned</code>
                  </b>—An instance is
                    considered over-provisioned when at least one specification of your instance,
                    such as CPU, memory, or network, can be sized down while still meeting the
                    performance requirements of your workload, and no specification is
                    under-provisioned. Over-provisioned instances may lead to unnecessary
                    infrastructure cost.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>Optimized</code>
                  </b>—An instance is
                    considered optimized when all specifications of your instance, such as CPU,
                    memory, and network, meet the performance requirements of your workload and is
                    not over provisioned. For optimized resources, Compute Optimizer might
                    recommend a new generation instance type.</p>
            </li>
         </ul>")
  finding: option<finding>,
  @ocaml.doc("<p>The instance type of the current instance.</p>")
  currentInstanceType: option<currentInstanceType>,
  @ocaml.doc("<p>The name of the current instance.</p>") instanceName: option<instanceName>,
  @ocaml.doc("<p>The Amazon Web Services account ID of the instance.</p>")
  accountId: option<accountId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the current instance.</p>")
  instanceArn: option<instanceArn>,
}
@ocaml.doc("<p>Describes an Auto Scaling group recommendation.</p>")
type autoScalingGroupRecommendation = {
  @ocaml.doc("<p>The applications that might be running on the instances in the Auto Scaling group
            as inferred by Compute Optimizer.</p>

        <p>Compute Optimizer can infer if one of the following applications might be running on
            the instances:</p>

        <ul>
            <li>
                <p>
                  <code>AmazonEmr</code> - Infers that Amazon EMR might be running on
                    the instances.</p>
            </li>
            <li>
                <p>
                  <code>ApacheCassandra</code> - Infers that Apache Cassandra might be running
                    on the instances.</p>
            </li>
            <li>
                <p>
                  <code>ApacheHadoop</code> - Infers that Apache Hadoop might be running on the
                    instances.</p>
            </li>
            <li>
                <p>
                  <code>Memcached</code> - Infers that Memcached might be running on the
                    instances.</p>
            </li>
            <li>
                <p>
                  <code>NGINX</code> - Infers that NGINX might be running on the
                    instances.</p>
            </li>
            <li>
                <p>
                  <code>PostgreSql</code> - Infers that PostgreSQL might be running on the
                    instances.</p>
            </li>
            <li>
                <p>
                  <code>Redis</code> - Infers that Redis might be running on the
                    instances.</p>
            </li>
         </ul>")
  inferredWorkloadTypes: option<inferredWorkloadTypes>,
  @ocaml.doc(
    "<p>An object that describes the effective recommendation preferences for the Auto Scaling group.</p>"
  )
  effectiveRecommendationPreferences: option<effectiveRecommendationPreferences>,
  @ocaml.doc("<p>The risk of the current Auto Scaling group not meeting the performance needs of
            its workloads. The higher the risk, the more likely the current Auto Scaling group
            configuration has insufficient capacity and cannot meet workload requirements.</p>")
  currentPerformanceRisk: option<currentPerformanceRisk>,
  @ocaml.doc("<p>The timestamp of when the Auto Scaling group recommendation was last
            generated.</p>")
  lastRefreshTimestamp: option<lastRefreshTimestamp>,
  @ocaml.doc("<p>An array of objects that describe the recommendation options for the Auto Scaling
            group.</p>")
  recommendationOptions: option<autoScalingGroupRecommendationOptions>,
  @ocaml.doc("<p>An array of objects that describe the current configuration of the Auto Scaling
            group.</p>")
  currentConfiguration: option<autoScalingGroupConfiguration>,
  @ocaml.doc(
    "<p>The number of days for which utilization metrics were analyzed for the Auto Scaling group.</p>"
  )
  lookBackPeriodInDays: option<lookBackPeriodInDays>,
  @ocaml.doc("<p>An array of objects that describe the utilization metrics of the Auto Scaling
            group.</p>")
  utilizationMetrics: option<utilizationMetrics>,
  @ocaml.doc("<p>The finding classification of the Auto Scaling group.</p>
        <p>Findings for Auto Scaling groups include:</p>
        <ul>
            <li>
                <p>
                  <b>
                     <code>NotOptimized</code>
                  </b>—An Auto Scaling group is considered not optimized when Compute Optimizer identifies a
                    recommendation that can provide better performance for your workload.</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>Optimized</code>
                  </b>—An Auto Scaling
                    group is considered optimized when Compute Optimizer determines that the group
                    is correctly provisioned to run your workload based on the chosen instance type.
                    For optimized resources, Compute Optimizer might recommend a new generation
                    instance type.</p>
            </li>
         </ul>")
  finding: option<finding>,
  @ocaml.doc("<p>The name of the Auto Scaling group.</p>")
  autoScalingGroupName: option<autoScalingGroupName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Auto Scaling group.</p>")
  autoScalingGroupArn: option<autoScalingGroupArn>,
  @ocaml.doc("<p>The Amazon Web Services account ID of the Auto Scaling group.</p>")
  accountId: option<accountId>,
}
type volumeRecommendations = array<volumeRecommendation>
type recommendationSummaries = array<recommendationSummary>
type lambdaFunctionRecommendations = array<lambdaFunctionRecommendation>
type instanceRecommendations = array<instanceRecommendation>
type autoScalingGroupRecommendations = array<autoScalingGroupRecommendation>
@ocaml.doc("<p>Compute Optimizer is a service that analyzes the configuration and utilization
            metrics of your Amazon Web Services compute resources, such as Amazon EC2
            instances, Amazon EC2 Auto Scaling groups, Lambda functions, and Amazon EBS volumes. It reports whether your resources are optimal, and generates
            optimization recommendations to reduce the cost and improve the performance of your
            workloads. Compute Optimizer also provides recent utilization metric data, in addition
            to projected utilization metric data for the recommendations, which you can use to
            evaluate which recommendation provides the best price-performance trade-off. The
            analysis of your usage patterns can help you decide when to move or resize your running
            resources, and still meet your performance and capacity requirements. For more
            information about Compute Optimizer, including the required permissions to use the
            service, see the <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/\">Compute Optimizer User Guide</a>.</p>")
module UpdateEnrollmentStatus = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to enroll member accounts of the organization if the account is the
            management account of an organization.</p>")
    includeMemberAccounts: option<includeMemberAccounts>,
    @ocaml.doc("<p>The new enrollment status of the account.</p>
        <p>The following status options are available:</p>
        <ul>
            <li>
                <p>
                  <code>Active</code> - Opts in your account to the Compute Optimizer service.
                        Compute Optimizer begins analyzing the configuration and utilization metrics
                    of your Amazon Web Services resources after you opt in. For more information, see
                        <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html\">Metrics analyzed by Compute Optimizer</a> in the <i>Compute Optimizer User Guide</i>.</p>
            </li>
            <li>
                <p>
                  <code>Inactive</code> - Opts out your account from the Compute Optimizer
                    service. Your account's recommendations and related metrics data will be deleted
                    from Compute Optimizer after you opt out.</p>
            </li>
         </ul>
        <note>
            <p>The <code>Pending</code> and <code>Failed</code> options cannot be used to update
                the enrollment status of an account. They are returned in the response of a request
                to update the enrollment status of an account.</p>
        </note>")
    status: status,
  }
  type response = {
    @ocaml.doc("<p>The reason for the enrollment status of the account. For example, an account might
            show a status of <code>Pending</code> because member accounts of an organization require
            more time to be enrolled in the service.</p>")
    statusReason: option<statusReason>,
    @ocaml.doc("<p>The enrollment status of the account.</p>") status: option<status>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "UpdateEnrollmentStatusCommand"
  let make = (~status, ~includeMemberAccounts=?, ()) => new({includeMemberAccounts, status})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEnrollmentStatus = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The count of organization member accounts that are opted in to the service, if your
            account is an organization management account.</p>")
    numberOfMemberAccountsOptedIn: option<numberOfMemberAccountsOptedIn>,
    @ocaml.doc("<p>The Unix epoch timestamp, in seconds, of when the account enrollment status was last
            updated.</p>")
    lastUpdatedTimestamp: option<lastUpdatedTimestamp>,
    @ocaml.doc("<p>Confirms the enrollment status of member accounts of the organization, if the account
            is a management account of an organization.</p>")
    memberAccountsEnrolled: option<memberAccountsEnrolled>,
    @ocaml.doc("<p>The reason for the enrollment status of the account.</p>
        <p>For example, an account might show a status of <code>Pending</code> because member
            accounts of an organization require more time to be enrolled in the service.</p>")
    statusReason: option<statusReason>,
    @ocaml.doc("<p>The enrollment status of the account.</p>") status: option<status>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetEnrollmentStatusCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEffectiveRecommendationPreferences = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource for which to confirm effective
            recommendation preferences. Only EC2 instance and Auto Scaling group ARNs are
            currently supported.</p>")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The status of the enhanced infrastructure metrics recommendation preference. Considers
            all applicable preferences that you might have set at the resource, account, and
            organization level.</p>
        <p>A status of <code>Active</code> confirms that the preference is applied in the latest
            recommendation refresh, and a status of <code>Inactive</code> confirms that it's not yet
            applied to recommendations.</p>
        <p>To validate whether the preference is applied to your last generated set of
            recommendations, review the <code>effectiveRecommendationPreferences</code> value in the
            response of the <a>GetAutoScalingGroupRecommendations</a> and <a>GetEC2InstanceRecommendations</a> actions.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html\">Enhanced
                infrastructure metrics</a> in the <i>Compute Optimizer User
                Guide</i>.</p>")
    enhancedInfrastructureMetrics: option<enhancedInfrastructureMetrics>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetEffectiveRecommendationPreferencesCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutRecommendationPreferences = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the inferred workload types recommendation preference to create or
            update.</p>

        <note>
            <p>The inferred workload type feature is active by default. To deactivate it, create
                a recommendation preference.</p>
        </note>

        <p>Specify the <code>Inactive</code> status to deactivate the feature, or specify
                <code>Active</code> to activate it.</p>

        <p>For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/inferred-workload-types.html\">Inferred workload
                types</a> in the <i>Compute Optimizer User Guide</i>.</p>")
    inferredWorkloadTypes: option<inferredWorkloadTypesPreference>,
    @ocaml.doc("<p>The status of the enhanced infrastructure metrics recommendation preference to create
            or update.</p>
        <p>Specify the <code>Active</code> status to activate the preference, or specify
                <code>Inactive</code> to deactivate the preference.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html\">Enhanced
                infrastructure metrics</a> in the <i>Compute Optimizer User
                Guide</i>.</p>")
    enhancedInfrastructureMetrics: option<enhancedInfrastructureMetrics>,
    @ocaml.doc("<p>An object that describes the scope of the recommendation preference to create.</p>
        <p>You can create recommendation preferences at the organization level (for management
            accounts of an organization only), account level, and resource level. For more
            information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html\">Activating
                enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
                Guide</i>.</p>
        <note>
            <p>You cannot create recommendation preferences for Auto Scaling groups at the
                organization and account levels. You can create recommendation preferences for
                    Auto Scaling groups only at the resource level by specifying a scope name
                of <code>ResourceArn</code> and a scope value of the Auto Scaling group Amazon
                Resource Name (ARN). This will configure the preference for all instances that are
                part of the specified Auto Scaling group. You also cannot create recommendation
                preferences at the resource level for instances that are part of an Auto Scaling group. You can create recommendation preferences at the resource level only for
                standalone instances.</p>
        </note>")
    scope: option<scope>,
    @ocaml.doc("<p>The target resource type of the recommendation preference to create.</p>
        <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
            that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
            encompasses only instances that are part of an Auto Scaling group.</p>")
    resourceType: resourceType,
  }
  type response = {.}
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "PutRecommendationPreferencesCommand"
  let make = (
    ~resourceType,
    ~inferredWorkloadTypes=?,
    ~enhancedInfrastructureMetrics=?,
    ~scope=?,
    (),
  ) => new({inferredWorkloadTypes, enhancedInfrastructureMetrics, scope, resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteRecommendationPreferences = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the recommendation preference to delete.</p>
        <p>Enhanced infrastructure metrics (<code>EnhancedInfrastructureMetrics</code>) is the
            only feature that can be activated through preferences. Therefore, it is also the only
            recommendation preference that can be deleted.</p>")
    recommendationPreferenceNames: recommendationPreferenceNames,
    @ocaml.doc("<p>An object that describes the scope of the recommendation preference to delete.</p>
        <p>You can delete recommendation preferences that are created at the organization level
            (for management accounts of an organization only), account level, and resource level.
            For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html\">Activating
                enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
                Guide</i>.</p>")
    scope: option<scope>,
    @ocaml.doc("<p>The target resource type of the recommendation preference to delete.</p>
        <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
            that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
            encompasses only instances that are part of an Auto Scaling group.</p>")
    resourceType: resourceType,
  }
  type response = {.}
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "DeleteRecommendationPreferencesCommand"
  let make = (~recommendationPreferenceNames, ~resourceType, ~scope=?, ()) =>
    new({recommendationPreferenceNames, scope, resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetRecommendationPreferences = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of recommendation preferences to return with a single
            request.</p>
        <p>To retrieve the remaining results, make another request with the returned
                <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to advance to the next page of recommendation preferences.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An object that describes the scope of the recommendation preference to return.</p>
        <p>You can return recommendation preferences that are created at the organization level
            (for management accounts of an organization only), account level, and resource level.
            For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html\">Activating
                enhanced infrastructure metrics</a> in the <i>Compute Optimizer User
                Guide</i>.</p>")
    scope: option<scope>,
    @ocaml.doc("<p>The target resource type of the recommendation preference for which to return
            preferences.</p>
        <p>The <code>Ec2Instance</code> option encompasses standalone instances and instances
            that are part of Auto Scaling groups. The <code>AutoScalingGroup</code> option
            encompasses only instances that are part of an Auto Scaling group.</p>")
    resourceType: resourceType,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe recommendation preferences.</p>")
    recommendationPreferencesDetails: option<recommendationPreferencesDetails>,
    @ocaml.doc("<p>The token to use to advance to the next page of recommendation preferences.</p>
        <p>This value is null when there are no more pages of recommendation preferences to
            return.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetRecommendationPreferencesCommand"
  let make = (~resourceType, ~maxResults=?, ~nextToken=?, ~scope=?, ()) =>
    new({maxResults, nextToken, scope, resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEnrollmentStatusesForOrganization = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of account enrollment statuses to return with a single request. You
            can specify up to 100 statuses to return with each request.</p>
        <p>To retrieve the remaining results, make another request with the returned
                <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to advance to the next page of account enrollment statuses.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects to specify a filter that returns a more specific list of account
            enrollment statuses.</p>")
    filters: option<enrollmentFilters>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to advance to the next page of account enrollment statuses.</p>
        <p>This value is null when there are no more pages of account enrollment statuses to
            return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects that describe the enrollment statuses of organization member
            accounts.</p>")
    accountEnrollmentStatuses: option<accountEnrollmentStatuses>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetEnrollmentStatusesForOrganizationCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) => new({maxResults, nextToken, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ExportLambdaFunctionRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to include recommendations for resources in all member accounts of
            the organization if your account is the management account of an organization.</p>
        <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
                Compute Optimizer must be enabled in the organization account. For more information,
            see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access\">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
                    <i>Compute Optimizer User Guide</i>.</p>
        <p>Recommendations for member accounts of the organization are not included in the export
            file if this parameter is omitted.</p>
        <p>This parameter cannot be specified together with the account IDs parameter. The
            parameters are mutually exclusive.</p>
        <p>Recommendations for member accounts are not included in the export if this parameter,
            or the account IDs parameter, is omitted.</p>")
    includeMemberAccounts: option<includeMemberAccounts>,
    @ocaml.doc("<p>The format of the export file.</p>
        <p>The only export file format currently supported is <code>Csv</code>.</p>")
    fileFormat: option<fileFormat>,
    s3DestinationConfig: s3DestinationConfig,
    @ocaml.doc("<p>The recommendations data to include in the export file. For more information about the
            fields that can be exported, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files\">Exported files</a> in the <i>Compute Optimizer User
            Guide</i>.</p>")
    fieldsToExport: option<exportableLambdaFunctionFields>,
    @ocaml.doc(
      "<p>An array of objects to specify a filter that exports a more specific set of Lambda function recommendations.</p>"
    )
    filters: option<lambdaFunctionRecommendationFilters>,
    @ocaml.doc("<p>The IDs of the Amazon Web Services accounts for which to export Lambda
            function recommendations.</p>
        <p>If your account is the management account of an organization, use this parameter to
            specify the member account for which you want to export recommendations.</p>
        <p>This parameter cannot be specified together with the include member accounts
            parameter. The parameters are mutually exclusive.</p>
        <p>Recommendations for member accounts are not included in the export if this parameter,
            or the include member accounts parameter, is omitted.</p>
        <p>You can specify multiple account IDs per request.</p>")
    accountIds: option<accountIds>,
  }
  type response = {
    s3Destination: option<s3Destination>,
    @ocaml.doc("<p>The identification number of the export job.</p>
        <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
            ID to view the status of an export job.</p>")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "ExportLambdaFunctionRecommendationsCommand"
  let make = (
    ~s3DestinationConfig,
    ~includeMemberAccounts=?,
    ~fileFormat=?,
    ~fieldsToExport=?,
    ~filters=?,
    ~accountIds=?,
    (),
  ) =>
    new({
      includeMemberAccounts,
      fileFormat,
      s3DestinationConfig,
      fieldsToExport,
      filters,
      accountIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ExportEC2InstanceRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>An object to specify the preferences for the Amazon EC2 instance
            recommendations to export.</p>")
    recommendationPreferences: option<recommendationPreferences>,
    @ocaml.doc("<p>Indicates whether to include recommendations for resources in all member accounts of
            the organization if your account is the management account of an organization.</p>
        <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
                Compute Optimizer must be enabled in the organization account. For more information,
            see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access\">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
                    <i>Compute Optimizer User Guide</i>.</p>
        <p>Recommendations for member accounts of the organization are not included in the export
            file if this parameter is omitted.</p>
        <p>Recommendations for member accounts are not included in the export if this parameter,
            or the account IDs parameter, is omitted.</p>")
    includeMemberAccounts: option<includeMemberAccounts>,
    @ocaml.doc("<p>The format of the export file.</p>
        <p>The only export file format currently supported is <code>Csv</code>.</p>")
    fileFormat: option<fileFormat>,
    @ocaml.doc("<p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket
            name and key prefix for the export job.</p>
        <p>You must create the destination Amazon S3 bucket for your recommendations
            export before you create the export job. Compute Optimizer does not create the S3 bucket
            for you. After you create the S3 bucket, ensure that it has the required permissions
            policy to allow Compute Optimizer to write the export file to it.
            If you plan to
            specify an object prefix when you create the export job, you must include the object
            prefix in the policy that you add to the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html\">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
                    <i>Compute Optimizer User Guide</i>.</p>")
    s3DestinationConfig: s3DestinationConfig,
    @ocaml.doc("<p>The recommendations data to include in the export file. For more information about the
            fields that can be exported, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files\">Exported files</a> in the <i>Compute Optimizer User
            Guide</i>.</p>")
    fieldsToExport: option<exportableInstanceFields>,
    @ocaml.doc("<p>An array of objects to specify a filter that exports a more specific set of instance
            recommendations.</p>")
    filters: option<filters>,
    @ocaml.doc("<p>The IDs of the Amazon Web Services accounts for which to export instance
            recommendations.</p>
        <p>If your account is the management account of an organization, use this parameter to
            specify the member account for which you want to export recommendations.</p>
        <p>This parameter cannot be specified together with the include member accounts
            parameter. The parameters are mutually exclusive.</p>
        <p>Recommendations for member accounts are not included in the export if this parameter,
            or the include member accounts parameter, is omitted.</p>
        <p>You can specify multiple account IDs per request.</p>")
    accountIds: option<accountIds>,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the destination Amazon S3 bucket of a recommendations
            export file.</p>")
    s3Destination: option<s3Destination>,
    @ocaml.doc("<p>The identification number of the export job.</p>
        <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
            ID to view the status of an export job.</p>")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "ExportEC2InstanceRecommendationsCommand"
  let make = (
    ~s3DestinationConfig,
    ~recommendationPreferences=?,
    ~includeMemberAccounts=?,
    ~fileFormat=?,
    ~fieldsToExport=?,
    ~filters=?,
    ~accountIds=?,
    (),
  ) =>
    new({
      recommendationPreferences,
      includeMemberAccounts,
      fileFormat,
      s3DestinationConfig,
      fieldsToExport,
      filters,
      accountIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ExportEBSVolumeRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to include recommendations for resources in all member accounts of
            the organization if your account is the management account of an organization.</p>
        <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
                Compute Optimizer must be enabled in the organization account. For more information,
            see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access\">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
                    <i>Compute Optimizer User Guide</i>.</p>
        <p>Recommendations for member accounts of the organization are not included in the export
            file if this parameter is omitted.</p>
        <p>This parameter cannot be specified together with the account IDs parameter. The
            parameters are mutually exclusive.</p>
        <p>Recommendations for member accounts are not included in the export if this parameter,
            or the account IDs parameter, is omitted.</p>")
    includeMemberAccounts: option<includeMemberAccounts>,
    @ocaml.doc("<p>The format of the export file.</p>
        <p>The only export file format currently supported is <code>Csv</code>.</p>")
    fileFormat: option<fileFormat>,
    s3DestinationConfig: s3DestinationConfig,
    @ocaml.doc("<p>The recommendations data to include in the export file. For more information about the
            fields that can be exported, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files\">Exported files</a> in the <i>Compute Optimizer User
            Guide</i>.</p>")
    fieldsToExport: option<exportableVolumeFields>,
    @ocaml.doc(
      "<p>An array of objects to specify a filter that exports a more specific set of Amazon EBS volume recommendations.</p>"
    )
    filters: option<ebsfilters>,
    @ocaml.doc("<p>The IDs of the Amazon Web Services accounts for which to export Amazon EBS
            volume recommendations.</p>
        <p>If your account is the management account of an organization, use this parameter to
            specify the member account for which you want to export recommendations.</p>
        <p>This parameter cannot be specified together with the include member accounts
            parameter. The parameters are mutually exclusive.</p>
        <p>Recommendations for member accounts are not included in the export if this parameter,
            or the include member accounts parameter, is omitted.</p>
        <p>You can specify multiple account IDs per request.</p>")
    accountIds: option<accountIds>,
  }
  type response = {
    s3Destination: option<s3Destination>,
    @ocaml.doc("<p>The identification number of the export job.</p>
        <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
            ID to view the status of an export job.</p>")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "ExportEBSVolumeRecommendationsCommand"
  let make = (
    ~s3DestinationConfig,
    ~includeMemberAccounts=?,
    ~fileFormat=?,
    ~fieldsToExport=?,
    ~filters=?,
    ~accountIds=?,
    (),
  ) =>
    new({
      includeMemberAccounts,
      fileFormat,
      s3DestinationConfig,
      fieldsToExport,
      filters,
      accountIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ExportAutoScalingGroupRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>An object to specify the preferences for the Auto Scaling group recommendations
            to export.</p>")
    recommendationPreferences: option<recommendationPreferences>,
    @ocaml.doc("<p>Indicates whether to include recommendations for resources in all member accounts of
            the organization if your account is the management account of an organization.</p>
        <p>The member accounts must also be opted in to Compute Optimizer, and trusted access for
                Compute Optimizer must be enabled in the organization account. For more information,
            see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access\">Compute Optimizer and Amazon Web Services Organizations trusted access</a> in the
                    <i>Compute Optimizer User Guide</i>.</p>
        <p>Recommendations for member accounts of the organization are not included in the export
            file if this parameter is omitted.</p>
        <p>This parameter cannot be specified together with the account IDs parameter. The
            parameters are mutually exclusive.</p>
        <p>Recommendations for member accounts are not included in the export if this parameter,
            or the account IDs parameter, is omitted.</p>")
    includeMemberAccounts: option<includeMemberAccounts>,
    @ocaml.doc("<p>The format of the export file.</p>
        <p>The only export file format currently supported is <code>Csv</code>.</p>")
    fileFormat: option<fileFormat>,
    @ocaml.doc("<p>An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket
            name and key prefix for the export job.</p>
        <p>You must create the destination Amazon S3 bucket for your recommendations
            export before you create the export job. Compute Optimizer does not create the S3 bucket
            for you. After you create the S3 bucket, ensure that it has the required permissions
            policy to allow Compute Optimizer to write the export file to it. If you plan to specify
            an object prefix when you create the export job, you must include the object prefix in
            the policy that you add to the S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html\">Amazon S3 Bucket Policy for Compute Optimizer</a> in the
                    <i>Compute Optimizer User Guide</i>.</p>")
    s3DestinationConfig: s3DestinationConfig,
    @ocaml.doc("<p>The recommendations data to include in the export file. For more information about the
            fields that can be exported, see <a href=\"https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files\">Exported files</a> in the <i>Compute Optimizer User
            Guide</i>.</p>")
    fieldsToExport: option<exportableAutoScalingGroupFields>,
    @ocaml.doc(
      "<p>An array of objects to specify a filter that exports a more specific set of Auto Scaling group recommendations.</p>"
    )
    filters: option<filters>,
    @ocaml.doc("<p>The IDs of the Amazon Web Services accounts for which to export Auto Scaling group
            recommendations.</p>
        <p>If your account is the management account of an organization, use this parameter to
            specify the member account for which you want to export recommendations.</p>
        <p>This parameter cannot be specified together with the include member accounts
            parameter. The parameters are mutually exclusive.</p>
        <p>Recommendations for member accounts are not included in the export if this parameter,
            or the include member accounts parameter, is omitted.</p>
        <p>You can specify multiple account IDs per request.</p>")
    accountIds: option<accountIds>,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the destination Amazon S3 bucket of a recommendations
            export file.</p>")
    s3Destination: option<s3Destination>,
    @ocaml.doc("<p>The identification number of the export job.</p>
        <p>Use the <a>DescribeRecommendationExportJobs</a> action, and specify the job
            ID to view the status of an export job.</p>")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "ExportAutoScalingGroupRecommendationsCommand"
  let make = (
    ~s3DestinationConfig,
    ~recommendationPreferences=?,
    ~includeMemberAccounts=?,
    ~fileFormat=?,
    ~fieldsToExport=?,
    ~filters=?,
    ~accountIds=?,
    (),
  ) =>
    new({
      recommendationPreferences,
      includeMemberAccounts,
      fileFormat,
      s3DestinationConfig,
      fieldsToExport,
      filters,
      accountIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRecommendationExportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of export jobs to return with a single request.</p>
        <p>To retrieve the remaining results, make another request with the returned
                <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to advance to the next page of export jobs.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects to specify a filter that returns a more specific list of export
            jobs.</p>")
    filters: option<jobFilters>,
    @ocaml.doc("<p>The identification numbers of the export jobs to return.</p>
        <p>An export job ID is returned when you create an export using the <a>ExportAutoScalingGroupRecommendations</a> or <a>ExportEC2InstanceRecommendations</a> actions.</p>
        <p>All export jobs created in the last seven days are returned if this parameter is
            omitted.</p>")
    jobIds: option<jobIds>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to advance to the next page of export jobs.</p>
        <p>This value is null when there are no more pages of export jobs to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects that describe recommendation export jobs.</p>")
    recommendationExportJobs: option<recommendationExportJobs>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "DescribeRecommendationExportJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ~jobIds=?, ()) =>
    new({maxResults, nextToken, filters, jobIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEC2RecommendationProjectedMetrics = {
  type t
  type request = {
    @ocaml.doc("<p>An object to specify the preferences for the Amazon EC2 recommendation
            projected metrics to return in the response.</p>")
    recommendationPreferences: option<recommendationPreferences>,
    @ocaml.doc("<p>The timestamp of the last projected metrics data point to return.</p>")
    endTime: timestamp_,
    @ocaml.doc("<p>The timestamp of the first projected metrics data point to return.</p>")
    startTime: timestamp_,
    @ocaml.doc("<p>The granularity, in seconds, of the projected metrics data points.</p>")
    period: period,
    @ocaml.doc("<p>The statistic of the projected metrics.</p>") stat: metricStatistic,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the instances for which to return recommendation
            projected metrics.</p>")
    instanceArn: instanceArn,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describes projected metrics.</p>")
    recommendedOptionProjectedMetrics: option<recommendedOptionProjectedMetrics>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetEC2RecommendationProjectedMetricsCommand"
  let make = (
    ~endTime,
    ~startTime,
    ~period,
    ~stat,
    ~instanceArn,
    ~recommendationPreferences=?,
    (),
  ) => new({recommendationPreferences, endTime, startTime, period, stat, instanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRecommendationSummaries = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of recommendation summaries to return with a single request.</p>
        <p>To retrieve the remaining results, make another request with the returned
                <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to advance to the next page of recommendation summaries.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the Amazon Web Services account for which to return recommendation
            summaries.</p>
        <p>If your account is the management account of an organization, use this parameter to
            specify the member account for which you want to return recommendation summaries.</p>
        <p>Only one account ID can be specified per request.</p>")
    accountIds: option<accountIds>,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that summarize a recommendation.</p>")
    recommendationSummaries: option<recommendationSummaries>,
    @ocaml.doc("<p>The token to use to advance to the next page of recommendation summaries.</p>
        <p>This value is null when there are no more pages of recommendation summaries to
            return.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetRecommendationSummariesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~accountIds=?, ()) =>
    new({maxResults, nextToken, accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLambdaFunctionRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of function recommendations to return with a single request.</p>
        <p>To retrieve the remaining results, make another request with the returned
                <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to advance to the next page of function recommendations.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects to specify a filter that returns a more specific list of function
            recommendations.</p>")
    filters: option<lambdaFunctionRecommendationFilters>,
    @ocaml.doc("<p>The ID of the Amazon Web Services account for which to return function
            recommendations.</p>
        <p>If your account is the management account of an organization, use this parameter to
            specify the member account for which you want to return function recommendations.</p>
        <p>Only one account ID can be specified per request.</p>")
    accountIds: option<accountIds>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the functions for which to return
            recommendations.</p>
        <p>You can specify a qualified or unqualified ARN. If you specify an unqualified ARN
            without a function version suffix, Compute Optimizer will return recommendations for the
            latest (<code>$LATEST</code>) version of the function. If you specify a qualified ARN
            with a version suffix, Compute Optimizer will return recommendations for the specified
            function version. For more information about using function versions, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using\">Using
                versions</a> in the <i>Lambda Developer
            Guide</i>.</p>")
    functionArns: option<functionArns>,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe function recommendations.</p>")
    lambdaFunctionRecommendations: option<lambdaFunctionRecommendations>,
    @ocaml.doc("<p>The token to use to advance to the next page of function recommendations.</p>
        <p>This value is null when there are no more pages of function recommendations to
            return.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetLambdaFunctionRecommendationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ~accountIds=?, ~functionArns=?, ()) =>
    new({maxResults, nextToken, filters, accountIds, functionArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEC2InstanceRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>An object to specify the preferences for the Amazon EC2 instance
            recommendations to return in the response.</p>")
    recommendationPreferences: option<recommendationPreferences>,
    @ocaml.doc("<p>The ID of the Amazon Web Services account for which to return instance
            recommendations.</p>
        <p>If your account is the management account of an organization, use this parameter to
            specify the member account for which you want to return instance recommendations.</p>
        <p>Only one account ID can be specified per request.</p>")
    accountIds: option<accountIds>,
    @ocaml.doc("<p>An array of objects to specify a filter that returns a more specific list of instance
            recommendations.</p>")
    filters: option<filters>,
    @ocaml.doc("<p>The maximum number of instance recommendations to return with a single request.</p>
        <p>To retrieve the remaining results, make another request with the returned
                <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to advance to the next page of instance recommendations.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the instances for which to return
            recommendations.</p>")
    instanceArns: option<instanceArns>,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe errors of the request.</p>
        <p>For example, an error is returned if you request recommendations for an instance of an
            unsupported instance family.</p>")
    errors: option<getRecommendationErrors>,
    @ocaml.doc("<p>An array of objects that describe instance recommendations.</p>")
    instanceRecommendations: option<instanceRecommendations>,
    @ocaml.doc("<p>The token to use to advance to the next page of instance recommendations.</p>
        <p>This value is null when there are no more pages of instance recommendations to
            return.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetEC2InstanceRecommendationsCommand"
  let make = (
    ~recommendationPreferences=?,
    ~accountIds=?,
    ~filters=?,
    ~maxResults=?,
    ~nextToken=?,
    ~instanceArns=?,
    (),
  ) => new({recommendationPreferences, accountIds, filters, maxResults, nextToken, instanceArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEBSVolumeRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Amazon Web Services account for which to return volume
            recommendations.</p>
        <p>If your account is the management account of an organization, use this parameter to
            specify the member account for which you want to return volume recommendations.</p>
        <p>Only one account ID can be specified per request.</p>")
    accountIds: option<accountIds>,
    @ocaml.doc("<p>An array of objects to specify a filter that returns a more specific list of volume
            recommendations.</p>")
    filters: option<ebsfilters>,
    @ocaml.doc("<p>The maximum number of volume recommendations to return with a single request.</p>
        <p>To retrieve the remaining results, make another request with the returned
                <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to advance to the next page of volume recommendations.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volumes for which to return
            recommendations.</p>")
    volumeArns: option<volumeArns>,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe errors of the request.</p>
        <p>For example, an error is returned if you request recommendations for an unsupported
            volume.</p>")
    errors: option<getRecommendationErrors>,
    @ocaml.doc("<p>An array of objects that describe volume recommendations.</p>")
    volumeRecommendations: option<volumeRecommendations>,
    @ocaml.doc("<p>The token to use to advance to the next page of volume recommendations.</p>
        <p>This value is null when there are no more pages of volume recommendations to
            return.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetEBSVolumeRecommendationsCommand"
  let make = (~accountIds=?, ~filters=?, ~maxResults=?, ~nextToken=?, ~volumeArns=?, ()) =>
    new({accountIds, filters, maxResults, nextToken, volumeArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAutoScalingGroupRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>An object to specify the preferences for the Auto Scaling group recommendations
            to return in the response.</p>")
    recommendationPreferences: option<recommendationPreferences>,
    @ocaml.doc(
      "<p>An array of objects to specify a filter that returns a more specific list of Auto Scaling group recommendations.</p>"
    )
    filters: option<filters>,
    @ocaml.doc("<p>The maximum number of Auto Scaling group recommendations to return with a single
            request.</p>
        <p>To retrieve the remaining results, make another request with the returned
                <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to advance to the next page of Auto Scaling group
            recommendations.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Auto Scaling groups for which to return
            recommendations.</p>")
    autoScalingGroupArns: option<autoScalingGroupArns>,
    @ocaml.doc("<p>The ID of the Amazon Web Services account for which to return Auto Scaling group
            recommendations.</p>
        <p>If your account is the management account of an organization, use this parameter to
            specify the member account for which you want to return Auto Scaling group
            recommendations.</p>
        <p>Only one account ID can be specified per request.</p>")
    accountIds: option<accountIds>,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe errors of the request.</p>
        <p>For example, an error is returned if you request recommendations for an unsupported
                Auto Scaling group.</p>")
    errors: option<getRecommendationErrors>,
    @ocaml.doc("<p>An array of objects that describe Auto Scaling group recommendations.</p>")
    autoScalingGroupRecommendations: option<autoScalingGroupRecommendations>,
    @ocaml.doc("<p>The token to use to advance to the next page of Auto Scaling group
            recommendations.</p>
        <p>This value is null when there are no more pages of Auto Scaling group
            recommendations to return.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetAutoScalingGroupRecommendationsCommand"
  let make = (
    ~recommendationPreferences=?,
    ~filters=?,
    ~maxResults=?,
    ~nextToken=?,
    ~autoScalingGroupArns=?,
    ~accountIds=?,
    (),
  ) =>
    new({
      recommendationPreferences,
      filters,
      maxResults,
      nextToken,
      autoScalingGroupArns,
      accountIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
