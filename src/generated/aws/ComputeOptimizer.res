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
type timestamp_ = Js.Date.t
type summaryValue = float
type statusReason = string
type status = [
  | @as("Failed") #Failed
  | @as("Pending") #Pending
  | @as("Inactive") #Inactive
  | @as("Active") #Active
]
type resourceType = [
  | @as("LambdaFunction") #LambdaFunction
  | @as("EbsVolume") #EbsVolume
  | @as("AutoScalingGroup") #AutoScalingGroup
  | @as("Ec2Instance") #Ec2Instance
]
type recommendedInstanceType = string
type recommendationSourceType = [
  | @as("LambdaFunction") #LambdaFunction
  | @as("EbsVolume") #EbsVolume
  | @as("AutoScalingGroup") #AutoScalingGroup
  | @as("Ec2Instance") #Ec2Instance
]
type recommendationSourceArn = string
type rank = int
type platformDifference = [
  | @as("VirtualizationType") #VirtualizationType
  | @as("InstanceStoreAvailability") #InstanceStoreAvailability
  | @as("StorageInterface") #StorageInterface
  | @as("NetworkInterface") #NetworkInterface
  | @as("Hypervisor") #Hypervisor
]
type period = int
type performanceRisk = float
type numberOfInvocations = float
type nextToken = string
type minSize = int
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
type maxSize = int
type maxResults = int
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
type includeMemberAccounts = bool
type identifier = string
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
type currentInstanceType = string
type creationTimestamp = Js.Date.t
type code = string
type autoScalingGroupName = string
type autoScalingGroupArn = string
type accountId = string
type volumeConfiguration = {
  volumeBurstThroughput: option<volumeBurstThroughput>,
  volumeBaselineThroughput: option<volumeBaselineThroughput>,
  volumeBurstIOPS: option<volumeBurstIOPS>,
  volumeBaselineIOPS: option<volumeBaselineIOPS>,
  volumeSize: option<volumeSize>,
  volumeType: option<volumeType>,
}
type volumeArns = array<volumeArn>
type utilizationMetric = {
  value: option<metricValue>,
  statistic: option<metricStatistic>,
  name: option<metricName>,
}
type timestamps = array<timestamp_>
type s3DestinationConfig = {
  keyPrefix: option<destinationKeyPrefix>,
  bucket: option<destinationBucket>,
}
type s3Destination = {
  metadataKey: option<metadataKey>,
  key: option<destinationKey>,
  bucket: option<destinationBucket>,
}
type recommendationSource = {
  recommendationSourceType: option<recommendationSourceType>,
  recommendationSourceArn: option<recommendationSourceArn>,
}
type reasonCodeSummary = {
  value: option<summaryValue>,
  name: option<findingReasonCode>,
}
type platformDifferences = array<platformDifference>
type metricValues = array<metricValue>
type lambdaFunctionUtilizationMetric = {
  value: option<metricValue>,
  statistic: option<lambdaFunctionMetricStatistic>,
  name: option<lambdaFunctionMetricName>,
}
type lambdaFunctionRecommendationFindingReasonCodes = array<
  lambdaFunctionRecommendationFindingReasonCode,
>
type lambdaFunctionMemoryProjectedMetric = {
  value: option<metricValue>,
  statistic: option<lambdaFunctionMemoryMetricStatistic>,
  name: option<lambdaFunctionMemoryMetricName>,
}
type jobIds = array<jobId>
type instanceRecommendationFindingReasonCodes = array<instanceRecommendationFindingReasonCode>
type instanceArns = array<instanceArn>
type getRecommendationError = {
  message: option<message>,
  code: option<code>,
  identifier: option<identifier>,
}
type functionArns = array<functionArn>
type filterValues = array<filterValue>
type exportableVolumeFields = array<exportableVolumeField>
type exportableLambdaFunctionFields = array<exportableLambdaFunctionField>
type exportableInstanceFields = array<exportableInstanceField>
type exportableAutoScalingGroupFields = array<exportableAutoScalingGroupField>
type ebsutilizationMetric = {
  value: option<metricValue>,
  statistic: option<metricStatistic>,
  name: option<ebsmetricName>,
}
type autoScalingGroupConfiguration = {
  instanceType: option<instanceType>,
  maxSize: option<maxSize>,
  minSize: option<minSize>,
  desiredCapacity: option<desiredCapacity>,
}
type autoScalingGroupArns = array<autoScalingGroupArn>
type accountIds = array<accountId>
type volumeRecommendationOption = {
  rank: option<rank>,
  performanceRisk: option<performanceRisk>,
  configuration: option<volumeConfiguration>,
}
type utilizationMetrics = array<utilizationMetric>
type recommendationSources = array<recommendationSource>
type reasonCodeSummaries = array<reasonCodeSummary>
type projectedUtilizationMetrics = array<utilizationMetric>
type projectedMetric = {
  values: option<metricValues>,
  timestamps: option<timestamps>,
  name: option<metricName>,
}
type lambdaFunctionUtilizationMetrics = array<lambdaFunctionUtilizationMetric>
type lambdaFunctionRecommendationFilter = {
  values: option<filterValues>,
  name: option<lambdaFunctionRecommendationFilterName>,
}
type lambdaFunctionMemoryProjectedMetrics = array<lambdaFunctionMemoryProjectedMetric>
type jobFilter = {
  values: option<filterValues>,
  name: option<jobFilterName>,
}
type getRecommendationErrors = array<getRecommendationError>
type filter = {
  values: option<filterValues>,
  name: option<filterName>,
}
type exportDestination = {s3: option<s3Destination>}
type ebsutilizationMetrics = array<ebsutilizationMetric>
type ebsfilter = {
  values: option<filterValues>,
  name: option<ebsfilterName>,
}
type volumeRecommendationOptions = array<volumeRecommendationOption>
type summary = {
  reasonCodeSummaries: option<reasonCodeSummaries>,
  value: option<summaryValue>,
  name: option<finding>,
}
type recommendationExportJob = {
  failureReason: option<failureReason>,
  lastUpdatedTimestamp: option<lastUpdatedTimestamp>,
  creationTimestamp: option<creationTimestamp>,
  status: option<jobStatus>,
  resourceType: option<resourceType>,
  destination: option<exportDestination>,
  jobId: option<jobId>,
}
type projectedMetrics = array<projectedMetric>
type lambdaFunctionRecommendationFilters = array<lambdaFunctionRecommendationFilter>
type lambdaFunctionMemoryRecommendationOption = {
  projectedUtilizationMetrics: option<lambdaFunctionMemoryProjectedMetrics>,
  memorySize: option<memorySize>,
  rank: option<rank>,
}
type jobFilters = array<jobFilter>
type instanceRecommendationOption = {
  rank: option<rank>,
  performanceRisk: option<performanceRisk>,
  platformDifferences: option<platformDifferences>,
  projectedUtilizationMetrics: option<projectedUtilizationMetrics>,
  instanceType: option<instanceType>,
}
type filters = array<filter>
type ebsfilters = array<ebsfilter>
type autoScalingGroupRecommendationOption = {
  rank: option<rank>,
  performanceRisk: option<performanceRisk>,
  projectedUtilizationMetrics: option<projectedUtilizationMetrics>,
  configuration: option<autoScalingGroupConfiguration>,
}
type volumeRecommendation = {
  lastRefreshTimestamp: option<lastRefreshTimestamp>,
  volumeRecommendationOptions: option<volumeRecommendationOptions>,
  lookBackPeriodInDays: option<lookBackPeriodInDays>,
  utilizationMetrics: option<ebsutilizationMetrics>,
  finding: option<ebsfinding>,
  currentConfiguration: option<volumeConfiguration>,
  accountId: option<accountId>,
  volumeArn: option<volumeArn>,
}
type summaries = array<summary>
type recommendedOptionProjectedMetric = {
  projectedMetrics: option<projectedMetrics>,
  rank: option<rank>,
  recommendedInstanceType: option<recommendedInstanceType>,
}
type recommendationOptions = array<instanceRecommendationOption>
type recommendationExportJobs = array<recommendationExportJob>
type lambdaFunctionMemoryRecommendationOptions = array<lambdaFunctionMemoryRecommendationOption>
type autoScalingGroupRecommendationOptions = array<autoScalingGroupRecommendationOption>
type volumeRecommendations = array<volumeRecommendation>
type recommendedOptionProjectedMetrics = array<recommendedOptionProjectedMetric>
type recommendationSummary = {
  accountId: option<accountId>,
  recommendationResourceType: option<recommendationSourceType>,
  summaries: option<summaries>,
}
type lambdaFunctionRecommendation = {
  memorySizeRecommendationOptions: option<lambdaFunctionMemoryRecommendationOptions>,
  findingReasonCodes: option<lambdaFunctionRecommendationFindingReasonCodes>,
  finding: option<lambdaFunctionRecommendationFinding>,
  lastRefreshTimestamp: option<lastRefreshTimestamp>,
  lookbackPeriodInDays: option<lookBackPeriodInDays>,
  utilizationMetrics: option<lambdaFunctionUtilizationMetrics>,
  numberOfInvocations: option<numberOfInvocations>,
  currentMemorySize: option<memorySize>,
  accountId: option<accountId>,
  functionVersion: option<functionVersion>,
  functionArn: option<functionArn>,
}
type instanceRecommendation = {
  lastRefreshTimestamp: option<lastRefreshTimestamp>,
  recommendationSources: option<recommendationSources>,
  recommendationOptions: option<recommendationOptions>,
  lookBackPeriodInDays: option<lookBackPeriodInDays>,
  utilizationMetrics: option<utilizationMetrics>,
  findingReasonCodes: option<instanceRecommendationFindingReasonCodes>,
  finding: option<finding>,
  currentInstanceType: option<currentInstanceType>,
  instanceName: option<instanceName>,
  accountId: option<accountId>,
  instanceArn: option<instanceArn>,
}
type autoScalingGroupRecommendation = {
  lastRefreshTimestamp: option<lastRefreshTimestamp>,
  recommendationOptions: option<autoScalingGroupRecommendationOptions>,
  currentConfiguration: option<autoScalingGroupConfiguration>,
  lookBackPeriodInDays: option<lookBackPeriodInDays>,
  utilizationMetrics: option<utilizationMetrics>,
  finding: option<finding>,
  autoScalingGroupName: option<autoScalingGroupName>,
  autoScalingGroupArn: option<autoScalingGroupArn>,
  accountId: option<accountId>,
}
type recommendationSummaries = array<recommendationSummary>
type lambdaFunctionRecommendations = array<lambdaFunctionRecommendation>
type instanceRecommendations = array<instanceRecommendation>
type autoScalingGroupRecommendations = array<autoScalingGroupRecommendation>

module UpdateEnrollmentStatus = {
  type t
  type request = {
    includeMemberAccounts: option<includeMemberAccounts>,
    status: status,
  }
  type response = {
    statusReason: option<statusReason>,
    status: option<status>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "UpdateEnrollmentStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEnrollmentStatus = {
  type t
  type request = unit
  type response = {
    memberAccountsEnrolled: option<memberAccountsEnrolled>,
    statusReason: option<statusReason>,
    status: option<status>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetEnrollmentStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportLambdaFunctionRecommendations = {
  type t
  type request = {
    includeMemberAccounts: option<includeMemberAccounts>,
    fileFormat: option<fileFormat>,
    s3DestinationConfig: s3DestinationConfig,
    fieldsToExport: option<exportableLambdaFunctionFields>,
    filters: option<lambdaFunctionRecommendationFilters>,
    accountIds: option<accountIds>,
  }
  type response = {
    s3Destination: option<s3Destination>,
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "ExportLambdaFunctionRecommendationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportEC2InstanceRecommendations = {
  type t
  type request = {
    includeMemberAccounts: option<includeMemberAccounts>,
    fileFormat: option<fileFormat>,
    s3DestinationConfig: s3DestinationConfig,
    fieldsToExport: option<exportableInstanceFields>,
    filters: option<filters>,
    accountIds: option<accountIds>,
  }
  type response = {
    s3Destination: option<s3Destination>,
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "ExportEC2InstanceRecommendationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportEBSVolumeRecommendations = {
  type t
  type request = {
    includeMemberAccounts: option<includeMemberAccounts>,
    fileFormat: option<fileFormat>,
    s3DestinationConfig: s3DestinationConfig,
    fieldsToExport: option<exportableVolumeFields>,
    filters: option<ebsfilters>,
    accountIds: option<accountIds>,
  }
  type response = {
    s3Destination: option<s3Destination>,
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "ExportEBSVolumeRecommendationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportAutoScalingGroupRecommendations = {
  type t
  type request = {
    includeMemberAccounts: option<includeMemberAccounts>,
    fileFormat: option<fileFormat>,
    s3DestinationConfig: s3DestinationConfig,
    fieldsToExport: option<exportableAutoScalingGroupFields>,
    filters: option<filters>,
    accountIds: option<accountIds>,
  }
  type response = {
    s3Destination: option<s3Destination>,
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "ExportAutoScalingGroupRecommendationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRecommendationExportJobs = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    filters: option<jobFilters>,
    jobIds: option<jobIds>,
  }
  type response = {
    nextToken: option<nextToken>,
    recommendationExportJobs: option<recommendationExportJobs>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "DescribeRecommendationExportJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEC2RecommendationProjectedMetrics = {
  type t
  type request = {
    endTime: timestamp_,
    startTime: timestamp_,
    period: period,
    stat: metricStatistic,
    instanceArn: instanceArn,
  }
  type response = {recommendedOptionProjectedMetrics: option<recommendedOptionProjectedMetrics>}
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetEC2RecommendationProjectedMetricsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEBSVolumeRecommendations = {
  type t
  type request = {
    accountIds: option<accountIds>,
    filters: option<ebsfilters>,
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    volumeArns: option<volumeArns>,
  }
  type response = {
    errors: option<getRecommendationErrors>,
    volumeRecommendations: option<volumeRecommendations>,
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetEBSVolumeRecommendationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRecommendationSummaries = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    accountIds: option<accountIds>,
  }
  type response = {
    recommendationSummaries: option<recommendationSummaries>,
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetRecommendationSummariesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLambdaFunctionRecommendations = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    filters: option<lambdaFunctionRecommendationFilters>,
    accountIds: option<accountIds>,
    functionArns: option<functionArns>,
  }
  type response = {
    lambdaFunctionRecommendations: option<lambdaFunctionRecommendations>,
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetLambdaFunctionRecommendationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEC2InstanceRecommendations = {
  type t
  type request = {
    accountIds: option<accountIds>,
    filters: option<filters>,
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    instanceArns: option<instanceArns>,
  }
  type response = {
    errors: option<getRecommendationErrors>,
    instanceRecommendations: option<instanceRecommendations>,
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetEC2InstanceRecommendationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAutoScalingGroupRecommendations = {
  type t
  type request = {
    filters: option<filters>,
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    autoScalingGroupArns: option<autoScalingGroupArns>,
    accountIds: option<accountIds>,
  }
  type response = {
    errors: option<getRecommendationErrors>,
    autoScalingGroupRecommendations: option<autoScalingGroupRecommendations>,
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-compute-optimizer") @new
  external new: request => t = "GetAutoScalingGroupRecommendationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
