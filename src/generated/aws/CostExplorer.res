type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-ce") @new external createClient: unit => awsServiceClient = "CostExplorerClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type zonedDateTime = string
type yearMonthDay = string
type value = string
type utilizationPercentageInUnits = string
type utilizationPercentage = string
type unusedUnits = string
type unusedHours = string
type unrealizedSavings = string
type totalRunningNormalizedUnits = string
type totalRunningHours = string
type totalPotentialRISavings = string
type totalAmortizedFee = string
type totalActualUnits = string
type totalActualHours = string
type termInYears = [@as("THREE_YEARS") #THREE_YEARS | @as("ONE_YEAR") #ONE_YEAR]
type tagKey = string
type supportedSavingsPlansType = [@as("SAGEMAKER_SP") #SAGEMAKER_SP | @as("EC2_INSTANCE_SP") #EC2_INSTANCE_SP | @as("COMPUTE_SP") #COMPUTE_SP]
type subscriberType = [@as("SNS") #SNS | @as("EMAIL") #EMAIL]
type subscriberStatus = [@as("DECLINED") #DECLINED | @as("CONFIRMED") #CONFIRMED]
type subscriberAddress = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sortDefinitionKey = string
type searchString = string
type savingsPlansDataType = [@as("SAVINGS") #SAVINGS | @as("AMORTIZED_COMMITMENT") #AMORTIZED_COMMITMENT | @as("UTILIZATION") #UTILIZATION | @as("ATTRIBUTES") #ATTRIBUTES]
type savingsPlanArn = string
type rightsizingType = [@as("MODIFY") #MODIFY | @as("TERMINATE") #TERMINATE]
type reservedNormalizedUnits = string
type reservedHours = string
type reservationGroupValue = string
type reservationGroupKey = string
type recommendationTarget = [@as("CROSS_INSTANCE_FAMILY") #CROSS_INSTANCE_FAMILY | @as("SAME_INSTANCE_FAMILY") #SAME_INSTANCE_FAMILY]
type realizedSavings = string
type ricostForUnusedHours = string
type purchasedUnits = string
type purchasedHours = string
type predictionIntervalLevel = int
type platformDifference = [@as("VIRTUALIZATION_TYPE") #VIRTUALIZATION_TYPE | @as("INSTANCE_STORE_AVAILABILITY") #INSTANCE_STORE_AVAILABILITY | @as("STORAGE_INTERFACE") #STORAGE_INTERFACE | @as("NETWORK_INTERFACE") #NETWORK_INTERFACE | @as("HYPERVISOR") #HYPERVISOR]
type paymentOption = [@as("HEAVY_UTILIZATION") #HEAVY_UTILIZATION | @as("MEDIUM_UTILIZATION") #MEDIUM_UTILIZATION | @as("LIGHT_UTILIZATION") #LIGHT_UTILIZATION | @as("ALL_UPFRONT") #ALL_UPFRONT | @as("PARTIAL_UPFRONT") #PARTIAL_UPFRONT | @as("NO_UPFRONT") #NO_UPFRONT]
type pageSize = int
type onDemandNormalizedUnits = string
type onDemandHours = string
type onDemandCostOfRIHoursUsed = string
type onDemandCost = string
type offeringClass = [@as("CONVERTIBLE") #CONVERTIBLE | @as("STANDARD") #STANDARD]
type numericOperator = [@as("BETWEEN") #BETWEEN | @as("LESS_THAN") #LESS_THAN | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN_OR_EQUAL") #LESS_THAN_OR_EQUAL | @as("GREATER_THAN_OR_EQUAL") #GREATER_THAN_OR_EQUAL | @as("EQUAL") #EQUAL]
type nullableNonNegativeDouble = float
type nonNegativeInteger = int
type nextPageToken = string
type netRISavings = string
type monitorType = [@as("CUSTOM") #CUSTOM | @as("DIMENSIONAL") #DIMENSIONAL]
type monitorDimension = [@as("SERVICE") #SERVICE]
type metricUnit = string
type metricName = string
type metricAmount = string
type metric = [@as("NORMALIZED_USAGE_AMOUNT") #NORMALIZED_USAGE_AMOUNT | @as("USAGE_QUANTITY") #USAGE_QUANTITY | @as("NET_AMORTIZED_COST") #NET_AMORTIZED_COST | @as("NET_UNBLENDED_COST") #NET_UNBLENDED_COST | @as("AMORTIZED_COST") #AMORTIZED_COST | @as("UNBLENDED_COST") #UNBLENDED_COST | @as("BLENDED_COST") #BLENDED_COST]
type maxResults = int
type matchOption = [@as("CASE_INSENSITIVE") #CASE_INSENSITIVE | @as("CASE_SENSITIVE") #CASE_SENSITIVE | @as("CONTAINS") #CONTAINS | @as("ENDS_WITH") #ENDS_WITH | @as("STARTS_WITH") #STARTS_WITH | @as("ABSENT") #ABSENT | @as("EQUALS") #EQUALS]
type lookbackPeriodInDays = [@as("SIXTY_DAYS") #SIXTY_DAYS | @as("THIRTY_DAYS") #THIRTY_DAYS | @as("SEVEN_DAYS") #SEVEN_DAYS]
type key = string
type groupDefinitionType = [@as("COST_CATEGORY") #COST_CATEGORY | @as("TAG") #TAG | @as("DIMENSION") #DIMENSION]
type groupDefinitionKey = string
type granularity = [@as("HOURLY") #HOURLY | @as("MONTHLY") #MONTHLY | @as("DAILY") #DAILY]
type genericString = string
type genericDouble = float
type genericBoolean = bool
type findingReasonCode = [@as("DISK_THROUGHPUT_UNDER_PROVISIONED") #DISK_THROUGHPUT_UNDER_PROVISIONED | @as("DISK_THROUGHPUT_OVER_PROVISIONED") #DISK_THROUGHPUT_OVER_PROVISIONED | @as("DISK_IOPS_UNDER_PROVISIONED") #DISK_IOPS_UNDER_PROVISIONED | @as("DISK_IOPS_OVER_PROVISIONED") #DISK_IOPS_OVER_PROVISIONED | @as("NETWORK_PPS_UNDER_PROVISIONED") #NETWORK_PPS_UNDER_PROVISIONED | @as("NETWORK_PPS_OVER_PROVISIONED") #NETWORK_PPS_OVER_PROVISIONED | @as("NETWORK_BANDWIDTH_UNDER_PROVISIONED") #NETWORK_BANDWIDTH_UNDER_PROVISIONED | @as("NETWORK_BANDWIDTH_OVER_PROVISIONED") #NETWORK_BANDWIDTH_OVER_PROVISIONED | @as("EBS_IOPS_UNDER_PROVISIONED") #EBS_IOPS_UNDER_PROVISIONED | @as("EBS_IOPS_OVER_PROVISIONED") #EBS_IOPS_OVER_PROVISIONED | @as("EBS_THROUGHPUT_UNDER_PROVISIONED") #EBS_THROUGHPUT_UNDER_PROVISIONED | @as("EBS_THROUGHPUT_OVER_PROVISIONED") #EBS_THROUGHPUT_OVER_PROVISIONED | @as("MEMORY_UNDER_PROVISIONED") #MEMORY_UNDER_PROVISIONED | @as("MEMORY_OVER_PROVISIONED") #MEMORY_OVER_PROVISIONED | @as("CPU_UNDER_PROVISIONED") #CPU_UNDER_PROVISIONED | @as("CPU_OVER_PROVISIONED") #CPU_OVER_PROVISIONED]
type estimated = bool
type errorMessage = string
type entity = string
type dimension = [@as("AGREEMENT_END_DATE_TIME_BEFORE") #AGREEMENT_END_DATE_TIME_BEFORE | @as("AGREEMENT_END_DATE_TIME_AFTER") #AGREEMENT_END_DATE_TIME_AFTER | @as("PAYMENT_OPTION") #PAYMENT_OPTION | @as("SAVINGS_PLAN_ARN") #SAVINGS_PLAN_ARN | @as("SAVINGS_PLANS_TYPE") #SAVINGS_PLANS_TYPE | @as("RIGHTSIZING_TYPE") #RIGHTSIZING_TYPE | @as("RESOURCE_ID") #RESOURCE_ID | @as("RESERVATION_ID") #RESERVATION_ID | @as("BILLING_ENTITY") #BILLING_ENTITY | @as("INSTANCE_TYPE_FAMILY") #INSTANCE_TYPE_FAMILY | @as("CACHE_ENGINE") #CACHE_ENGINE | @as("DATABASE_ENGINE") #DATABASE_ENGINE | @as("DEPLOYMENT_OPTION") #DEPLOYMENT_OPTION | @as("LEGAL_ENTITY_NAME") #LEGAL_ENTITY_NAME | @as("SUBSCRIPTION_ID") #SUBSCRIPTION_ID | @as("PLATFORM") #PLATFORM | @as("SCOPE") #SCOPE | @as("TENANCY") #TENANCY | @as("OPERATING_SYSTEM") #OPERATING_SYSTEM | @as("RECORD_TYPE") #RECORD_TYPE | @as("USAGE_TYPE_GROUP") #USAGE_TYPE_GROUP | @as("USAGE_TYPE") #USAGE_TYPE | @as("SERVICE_CODE") #SERVICE_CODE | @as("SERVICE") #SERVICE | @as("REGION") #REGION | @as("PURCHASE_TYPE") #PURCHASE_TYPE | @as("OPERATION") #OPERATION | @as("LINKED_ACCOUNT_NAME") #LINKED_ACCOUNT_NAME | @as("LINKED_ACCOUNT") #LINKED_ACCOUNT | @as("INSTANCE_TYPE") #INSTANCE_TYPE | @as("AZ") #AZ]
type coverageNormalizedUnitsPercentage = string
type coverageHoursPercentage = string
type costCategoryValue = string
type costCategoryStatusComponent = [@as("COST_EXPLORER") #COST_EXPLORER]
type costCategoryStatus = [@as("APPLIED") #APPLIED | @as("PROCESSING") #PROCESSING]
type costCategoryRuleVersion = [@as("CostCategoryExpression.v1") #CostCategoryExpression_V1]
type costCategoryRuleType = [@as("INHERITED_VALUE") #INHERITED_VALUE | @as("REGULAR") #REGULAR]
type costCategoryName = string
type costCategoryMaxResults = int
type costCategoryInheritedValueDimensionName = [@as("TAG") #TAG | @as("LINKED_ACCOUNT_NAME") #LINKED_ACCOUNT_NAME]
type context = [@as("SAVINGS_PLANS") #SAVINGS_PLANS | @as("RESERVATIONS") #RESERVATIONS | @as("COST_AND_USAGE") #COST_AND_USAGE]
type attributeValue = string
type attributeType = string
type arn = string
type anomalySubscriptionFrequency = [@as("WEEKLY") #WEEKLY | @as("IMMEDIATE") #IMMEDIATE | @as("DAILY") #DAILY]
type anomalyFeedbackType = [@as("PLANNED_ACTIVITY") #PLANNED_ACTIVITY | @as("NO") #NO | @as("YES") #YES]
type amortizedUpfrontFee = string
type amortizedRecurringFee = string
type accountScope = [@as("LINKED") #LINKED | @as("PAYER") #PAYER]
type values = array<value>
type totalImpactFilter = {
@as("EndValue") endValue: option<genericDouble>,
  @as("StartValue") startValue: genericDouble,
  @as("NumericOperator") numericOperator: numericOperator
}
type terminateRecommendationDetail = {
@as("CurrencyCode") currencyCode: option<genericString>,
  @as("EstimatedMonthlySavings") estimatedMonthlySavings: option<genericString>
}
type tagList_ = array<entity>
type subscriber = {
@as("Status") status: option<subscriberStatus>,
  @as("Type") type_: option<subscriberType>,
  @as("Address") address: option<subscriberAddress>
}
type sortDefinition = {
@as("SortOrder") sortOrder: option<sortOrder>,
  @as("Key") key: sortDefinitionKey
}
type savingsPlansUtilization = {
@as("UtilizationPercentage") utilizationPercentage: option<genericString>,
  @as("UnusedCommitment") unusedCommitment: option<genericString>,
  @as("UsedCommitment") usedCommitment: option<genericString>,
  @as("TotalCommitment") totalCommitment: option<genericString>
}
type savingsPlansSavings = {
@as("OnDemandCostEquivalent") onDemandCostEquivalent: option<genericString>,
  @as("NetSavings") netSavings: option<genericString>
}
type savingsPlansPurchaseRecommendationSummary = {
@as("EstimatedOnDemandCostWithCurrentCommitment") estimatedOnDemandCostWithCurrentCommitment: option<genericString>,
  @as("EstimatedMonthlySavingsAmount") estimatedMonthlySavingsAmount: option<genericString>,
  @as("EstimatedSavingsPercentage") estimatedSavingsPercentage: option<genericString>,
  @as("HourlyCommitmentToPurchase") hourlyCommitmentToPurchase: option<genericString>,
  @as("DailyCommitmentToPurchase") dailyCommitmentToPurchase: option<genericString>,
  @as("TotalRecommendationCount") totalRecommendationCount: option<genericString>,
  @as("EstimatedSavingsAmount") estimatedSavingsAmount: option<genericString>,
  @as("CurrentOnDemandSpend") currentOnDemandSpend: option<genericString>,
  @as("EstimatedTotalCost") estimatedTotalCost: option<genericString>,
  @as("CurrencyCode") currencyCode: option<genericString>,
  @as("EstimatedROI") estimatedROI: option<genericString>
}
type savingsPlansPurchaseRecommendationMetadata = {
@as("AdditionalMetadata") additionalMetadata: option<genericString>,
  @as("GenerationTimestamp") generationTimestamp: option<genericString>,
  @as("RecommendationId") recommendationId: option<genericString>
}
type savingsPlansDetails = {
@as("OfferingId") offeringId: option<genericString>,
  @as("InstanceFamily") instanceFamily: option<genericString>,
  @as("Region") region: option<genericString>
}
type savingsPlansDataTypes = array<savingsPlansDataType>
type savingsPlansCoverageData = {
@as("CoveragePercentage") coveragePercentage: option<genericString>,
  @as("TotalCost") totalCost: option<genericString>,
  @as("OnDemandCost") onDemandCost: option<genericString>,
  @as("SpendCoveredBySavingsPlans") spendCoveredBySavingsPlans: option<genericString>
}
type savingsPlansAmortizedCommitment = {
@as("TotalAmortizedCommitment") totalAmortizedCommitment: option<genericString>,
  @as("AmortizedUpfrontCommitment") amortizedUpfrontCommitment: option<genericString>,
  @as("AmortizedRecurringCommitment") amortizedRecurringCommitment: option<genericString>
}
type rootCause = {
@as("UsageType") usageType: option<genericString>,
  @as("LinkedAccount") linkedAccount: option<genericString>,
  @as("Region") region: option<genericString>,
  @as("Service") service: option<genericString>
}
type rightsizingRecommendationSummary = {
@as("SavingsPercentage") savingsPercentage: option<genericString>,
  @as("SavingsCurrencyCode") savingsCurrencyCode: option<genericString>,
  @as("EstimatedTotalMonthlySavingsAmount") estimatedTotalMonthlySavingsAmount: option<genericString>,
  @as("TotalRecommendationCount") totalRecommendationCount: option<genericString>
}
type rightsizingRecommendationMetadata = {
@as("AdditionalMetadata") additionalMetadata: option<genericString>,
  @as("LookbackPeriodInDays") lookbackPeriodInDays: option<lookbackPeriodInDays>,
  @as("GenerationTimestamp") generationTimestamp: option<genericString>,
  @as("RecommendationId") recommendationId: option<genericString>
}
type rightsizingRecommendationConfiguration = {
@as("BenefitsConsidered") benefitsConsidered: genericBoolean,
  @as("RecommendationTarget") recommendationTarget: recommendationTarget
}
type reservationPurchaseRecommendationSummary = {
@as("CurrencyCode") currencyCode: option<genericString>,
  @as("TotalEstimatedMonthlySavingsPercentage") totalEstimatedMonthlySavingsPercentage: option<genericString>,
  @as("TotalEstimatedMonthlySavingsAmount") totalEstimatedMonthlySavingsAmount: option<genericString>
}
type reservationPurchaseRecommendationMetadata = {
@as("GenerationTimestamp") generationTimestamp: option<genericString>,
  @as("RecommendationId") recommendationId: option<genericString>
}
type reservationAggregates = {
@as("UnrealizedSavings") unrealizedSavings: option<unrealizedSavings>,
  @as("RealizedSavings") realizedSavings: option<realizedSavings>,
  @as("RICostForUnusedHours") ricostForUnusedHours: option<ricostForUnusedHours>,
  @as("TotalAmortizedFee") totalAmortizedFee: option<totalAmortizedFee>,
  @as("AmortizedRecurringFee") amortizedRecurringFee: option<amortizedRecurringFee>,
  @as("AmortizedUpfrontFee") amortizedUpfrontFee: option<amortizedUpfrontFee>,
  @as("TotalPotentialRISavings") totalPotentialRISavings: option<totalPotentialRISavings>,
  @as("NetRISavings") netRISavings: option<netRISavings>,
  @as("OnDemandCostOfRIHoursUsed") onDemandCostOfRIHoursUsed: option<onDemandCostOfRIHoursUsed>,
  @as("UnusedUnits") unusedUnits: option<unusedUnits>,
  @as("UnusedHours") unusedHours: option<unusedHours>,
  @as("TotalActualUnits") totalActualUnits: option<totalActualUnits>,
  @as("TotalActualHours") totalActualHours: option<totalActualHours>,
  @as("PurchasedUnits") purchasedUnits: option<purchasedUnits>,
  @as("PurchasedHours") purchasedHours: option<purchasedHours>,
  @as("UtilizationPercentageInUnits") utilizationPercentageInUnits: option<utilizationPercentageInUnits>,
  @as("UtilizationPercentage") utilizationPercentage: option<utilizationPercentage>
}
type redshiftInstanceDetails = {
@as("SizeFlexEligible") sizeFlexEligible: option<genericBoolean>,
  @as("CurrentGeneration") currentGeneration: option<genericBoolean>,
  @as("Region") region: option<genericString>,
  @as("NodeType") nodeType: option<genericString>,
  @as("Family") family: option<genericString>
}
type rdsinstanceDetails = {
@as("SizeFlexEligible") sizeFlexEligible: option<genericBoolean>,
  @as("CurrentGeneration") currentGeneration: option<genericBoolean>,
  @as("LicenseModel") licenseModel: option<genericString>,
  @as("DeploymentOption") deploymentOption: option<genericString>,
  @as("DatabaseEdition") databaseEdition: option<genericString>,
  @as("DatabaseEngine") databaseEngine: option<genericString>,
  @as("Region") region: option<genericString>,
  @as("InstanceType") instanceType: option<genericString>,
  @as("Family") family: option<genericString>
}
type platformDifferences = array<platformDifference>
type networkResourceUtilization = {
@as("NetworkPacketsOutPerSecond") networkPacketsOutPerSecond: option<genericString>,
  @as("NetworkPacketsInPerSecond") networkPacketsInPerSecond: option<genericString>,
  @as("NetworkOutBytesPerSecond") networkOutBytesPerSecond: option<genericString>,
  @as("NetworkInBytesPerSecond") networkInBytesPerSecond: option<genericString>
}
type monitorArnList = array<arn>
type metricValue = {
@as("Unit") unit_: option<metricUnit>,
  @as("Amount") amount: option<metricAmount>
}
type metricNames = array<metricName>
type matchOptions = array<matchOption>
type keys = array<key>
type impact = {
@as("TotalImpact") totalImpact: option<genericDouble>,
  @as("MaxImpact") maxImpact: genericDouble
}
type groupDefinition = {
@as("Key") key: option<groupDefinitionKey>,
  @as("Type") type_: option<groupDefinitionType>
}
type findingReasonCodes = array<findingReasonCode>
type elastiCacheInstanceDetails = {
@as("SizeFlexEligible") sizeFlexEligible: option<genericBoolean>,
  @as("CurrentGeneration") currentGeneration: option<genericBoolean>,
  @as("ProductDescription") productDescription: option<genericString>,
  @as("Region") region: option<genericString>,
  @as("NodeType") nodeType: option<genericString>,
  @as("Family") family: option<genericString>
}
type esinstanceDetails = {
@as("SizeFlexEligible") sizeFlexEligible: option<genericBoolean>,
  @as("CurrentGeneration") currentGeneration: option<genericBoolean>,
  @as("Region") region: option<genericString>,
  @as("InstanceSize") instanceSize: option<genericString>,
  @as("InstanceClass") instanceClass: option<genericString>
}
type ec2Specification = {
@as("OfferingClass") offeringClass: option<offeringClass>
}
type ec2ResourceDetails = {
@as("Vcpu") vcpu: option<genericString>,
  @as("Storage") storage: option<genericString>,
  @as("NetworkPerformance") networkPerformance: option<genericString>,
  @as("Memory") memory: option<genericString>,
  @as("Sku") sku: option<genericString>,
  @as("Region") region: option<genericString>,
  @as("Platform") platform: option<genericString>,
  @as("InstanceType") instanceType: option<genericString>,
  @as("HourlyOnDemandRate") hourlyOnDemandRate: option<genericString>
}
type ec2InstanceDetails = {
@as("SizeFlexEligible") sizeFlexEligible: option<genericBoolean>,
  @as("CurrentGeneration") currentGeneration: option<genericBoolean>,
  @as("Tenancy") tenancy: option<genericString>,
  @as("Platform") platform: option<genericString>,
  @as("AvailabilityZone") availabilityZone: option<genericString>,
  @as("Region") region: option<genericString>,
  @as("InstanceType") instanceType: option<genericString>,
  @as("Family") family: option<genericString>
}
type ebsresourceUtilization = {
@as("EbsWriteBytesPerSecond") ebsWriteBytesPerSecond: option<genericString>,
  @as("EbsReadBytesPerSecond") ebsReadBytesPerSecond: option<genericString>,
  @as("EbsWriteOpsPerSecond") ebsWriteOpsPerSecond: option<genericString>,
  @as("EbsReadOpsPerSecond") ebsReadOpsPerSecond: option<genericString>
}
type diskResourceUtilization = {
@as("DiskWriteBytesPerSecond") diskWriteBytesPerSecond: option<genericString>,
  @as("DiskReadBytesPerSecond") diskReadBytesPerSecond: option<genericString>,
  @as("DiskWriteOpsPerSecond") diskWriteOpsPerSecond: option<genericString>,
  @as("DiskReadOpsPerSecond") diskReadOpsPerSecond: option<genericString>
}
type dateInterval = {
@as("End") end: yearMonthDay,
  @as("Start") start: yearMonthDay
}
type coverageNormalizedUnits = {
@as("CoverageNormalizedUnitsPercentage") coverageNormalizedUnitsPercentage: option<coverageNormalizedUnitsPercentage>,
  @as("TotalRunningNormalizedUnits") totalRunningNormalizedUnits: option<totalRunningNormalizedUnits>,
  @as("ReservedNormalizedUnits") reservedNormalizedUnits: option<reservedNormalizedUnits>,
  @as("OnDemandNormalizedUnits") onDemandNormalizedUnits: option<onDemandNormalizedUnits>
}
type coverageHours = {
@as("CoverageHoursPercentage") coverageHoursPercentage: option<coverageHoursPercentage>,
  @as("TotalRunningHours") totalRunningHours: option<totalRunningHours>,
  @as("ReservedHours") reservedHours: option<reservedHours>,
  @as("OnDemandHours") onDemandHours: option<onDemandHours>
}
type coverageCost = {
@as("OnDemandCost") onDemandCost: option<onDemandCost>
}
type costCategoryValuesList = array<costCategoryValue>
type costCategoryProcessingStatus = {
@as("Status") status: option<costCategoryStatus>,
  @as("Component") component: option<costCategoryStatusComponent>
}
type costCategoryNamesList = array<costCategoryName>
type costCategoryInheritedValueDimension = {
@as("DimensionKey") dimensionKey: option<genericString>,
  @as("DimensionName") dimensionName: option<costCategoryInheritedValueDimensionName>
}
type attributes = Js.Dict.t<attributeValue>
type anomalyScore = {
@as("CurrentScore") currentScore: genericDouble,
  @as("MaxScore") maxScore: genericDouble
}
type anomalyDateInterval = {
@as("EndDate") endDate: option<yearMonthDay>,
  @as("StartDate") startDate: yearMonthDay
}
type tagValues = {
@as("MatchOptions") matchOptions: option<matchOptions>,
  @as("Values") values: option<values>,
  @as("Key") key: option<tagKey>
}
type subscribers = array<subscriber>
type sortDefinitions = array<sortDefinition>
type serviceSpecification = {
@as("EC2Specification") ec2Specification: option<ec2Specification>
}
type savingsPlansUtilizationDetail = {
@as("AmortizedCommitment") amortizedCommitment: option<savingsPlansAmortizedCommitment>,
  @as("Savings") savings: option<savingsPlansSavings>,
  @as("Utilization") utilization: option<savingsPlansUtilization>,
  @as("Attributes") attributes: option<attributes>,
  @as("SavingsPlanArn") savingsPlanArn: option<savingsPlanArn>
}
type savingsPlansUtilizationByTime = {
@as("AmortizedCommitment") amortizedCommitment: option<savingsPlansAmortizedCommitment>,
  @as("Savings") savings: option<savingsPlansSavings>,
  @as("Utilization") utilization: savingsPlansUtilization,
  @as("TimePeriod") timePeriod: dateInterval
}
type savingsPlansUtilizationAggregates = {
@as("AmortizedCommitment") amortizedCommitment: option<savingsPlansAmortizedCommitment>,
  @as("Savings") savings: option<savingsPlansSavings>,
  @as("Utilization") utilization: savingsPlansUtilization
}
type savingsPlansPurchaseRecommendationDetail = {
@as("CurrentAverageHourlyOnDemandSpend") currentAverageHourlyOnDemandSpend: option<genericString>,
  @as("CurrentMaximumHourlyOnDemandSpend") currentMaximumHourlyOnDemandSpend: option<genericString>,
  @as("CurrentMinimumHourlyOnDemandSpend") currentMinimumHourlyOnDemandSpend: option<genericString>,
  @as("EstimatedMonthlySavingsAmount") estimatedMonthlySavingsAmount: option<genericString>,
  @as("EstimatedAverageUtilization") estimatedAverageUtilization: option<genericString>,
  @as("HourlyCommitmentToPurchase") hourlyCommitmentToPurchase: option<genericString>,
  @as("EstimatedSavingsPercentage") estimatedSavingsPercentage: option<genericString>,
  @as("EstimatedSavingsAmount") estimatedSavingsAmount: option<genericString>,
  @as("EstimatedOnDemandCostWithCurrentCommitment") estimatedOnDemandCostWithCurrentCommitment: option<genericString>,
  @as("EstimatedOnDemandCost") estimatedOnDemandCost: option<genericString>,
  @as("EstimatedSPCost") estimatedSPCost: option<genericString>,
  @as("CurrencyCode") currencyCode: option<genericString>,
  @as("EstimatedROI") estimatedROI: option<genericString>,
  @as("UpfrontCost") upfrontCost: option<genericString>,
  @as("AccountId") accountId: option<genericString>,
  @as("SavingsPlansDetails") savingsPlansDetails: option<savingsPlansDetails>
}
type savingsPlansCoverage = {
@as("TimePeriod") timePeriod: option<dateInterval>,
  @as("Coverage") coverage: option<savingsPlansCoverageData>,
  @as("Attributes") attributes: option<attributes>
}
type rootCauses = array<rootCause>
type resourceDetails = {
@as("EC2ResourceDetails") ec2ResourceDetails: option<ec2ResourceDetails>
}
type reservationUtilizationGroup = {
@as("Utilization") utilization: option<reservationAggregates>,
  @as("Attributes") attributes: option<attributes>,
  @as("Value") value: option<reservationGroupValue>,
  @as("Key") key: option<reservationGroupKey>
}
type metrics = Js.Dict.t<metricValue>
type instanceDetails = {
@as("ESInstanceDetails") esinstanceDetails: option<esinstanceDetails>,
  @as("ElastiCacheInstanceDetails") elastiCacheInstanceDetails: option<elastiCacheInstanceDetails>,
  @as("RedshiftInstanceDetails") redshiftInstanceDetails: option<redshiftInstanceDetails>,
  @as("RDSInstanceDetails") rdsinstanceDetails: option<rdsinstanceDetails>,
  @as("EC2InstanceDetails") ec2InstanceDetails: option<ec2InstanceDetails>
}
type groupDefinitions = array<groupDefinition>
type forecastResult = {
@as("PredictionIntervalUpperBound") predictionIntervalUpperBound: option<genericString>,
  @as("PredictionIntervalLowerBound") predictionIntervalLowerBound: option<genericString>,
  @as("MeanValue") meanValue: option<genericString>,
  @as("TimePeriod") timePeriod: option<dateInterval>
}
type ec2ResourceUtilization = {
@as("NetworkResourceUtilization") networkResourceUtilization: option<networkResourceUtilization>,
  @as("DiskResourceUtilization") diskResourceUtilization: option<diskResourceUtilization>,
  @as("EBSResourceUtilization") ebsresourceUtilization: option<ebsresourceUtilization>,
  @as("MaxStorageUtilizationPercentage") maxStorageUtilizationPercentage: option<genericString>,
  @as("MaxMemoryUtilizationPercentage") maxMemoryUtilizationPercentage: option<genericString>,
  @as("MaxCpuUtilizationPercentage") maxCpuUtilizationPercentage: option<genericString>
}
type dimensionValuesWithAttributes = {
@as("Attributes") attributes: option<attributes>,
  @as("Value") value: option<value>
}
type dimensionValues = {
@as("MatchOptions") matchOptions: option<matchOptions>,
  @as("Values") values: option<values>,
  @as("Key") key: option<dimension>
}
type coverage = {
@as("CoverageCost") coverageCost: option<coverageCost>,
  @as("CoverageNormalizedUnits") coverageNormalizedUnits: option<coverageNormalizedUnits>,
  @as("CoverageHours") coverageHours: option<coverageHours>
}
type costCategoryValues = {
@as("MatchOptions") matchOptions: option<matchOptions>,
  @as("Values") values: option<values>,
  @as("Key") key: option<costCategoryName>
}
type costCategoryProcessingStatusList = array<costCategoryProcessingStatus>
type tagValuesList = array<tagValues>
type savingsPlansUtilizationsByTime = array<savingsPlansUtilizationByTime>
type savingsPlansUtilizationDetails = array<savingsPlansUtilizationDetail>
type savingsPlansPurchaseRecommendationDetailList = array<savingsPlansPurchaseRecommendationDetail>
type savingsPlansCoverages = array<savingsPlansCoverage>
type resourceUtilization = {
@as("EC2ResourceUtilization") ec2ResourceUtilization: option<ec2ResourceUtilization>
}
type reservationUtilizationGroups = array<reservationUtilizationGroup>
type reservationPurchaseRecommendationDetail = {
@as("RecurringStandardMonthlyCost") recurringStandardMonthlyCost: option<genericString>,
  @as("UpfrontCost") upfrontCost: option<genericString>,
  @as("EstimatedReservationCostForLookbackPeriod") estimatedReservationCostForLookbackPeriod: option<genericString>,
  @as("EstimatedMonthlyOnDemandCost") estimatedMonthlyOnDemandCost: option<genericString>,
  @as("EstimatedMonthlySavingsPercentage") estimatedMonthlySavingsPercentage: option<genericString>,
  @as("EstimatedMonthlySavingsAmount") estimatedMonthlySavingsAmount: option<genericString>,
  @as("CurrencyCode") currencyCode: option<genericString>,
  @as("EstimatedBreakEvenInMonths") estimatedBreakEvenInMonths: option<genericString>,
  @as("AverageUtilization") averageUtilization: option<genericString>,
  @as("AverageNormalizedUnitsUsedPerHour") averageNormalizedUnitsUsedPerHour: option<genericString>,
  @as("AverageNumberOfInstancesUsedPerHour") averageNumberOfInstancesUsedPerHour: option<genericString>,
  @as("MaximumNormalizedUnitsUsedPerHour") maximumNormalizedUnitsUsedPerHour: option<genericString>,
  @as("MaximumNumberOfInstancesUsedPerHour") maximumNumberOfInstancesUsedPerHour: option<genericString>,
  @as("MinimumNormalizedUnitsUsedPerHour") minimumNormalizedUnitsUsedPerHour: option<genericString>,
  @as("MinimumNumberOfInstancesUsedPerHour") minimumNumberOfInstancesUsedPerHour: option<genericString>,
  @as("RecommendedNormalizedUnitsToPurchase") recommendedNormalizedUnitsToPurchase: option<genericString>,
  @as("RecommendedNumberOfInstancesToPurchase") recommendedNumberOfInstancesToPurchase: option<genericString>,
  @as("InstanceDetails") instanceDetails: option<instanceDetails>,
  @as("AccountId") accountId: option<genericString>
}
type reservationCoverageGroup = {
@as("Coverage") coverage: option<coverage>,
  @as("Attributes") attributes: option<attributes>
}
type group = {
@as("Metrics") metrics: option<metrics>,
  @as("Keys") keys: option<keys>
}
type forecastResultsByTime = array<forecastResult>
type dimensionValuesWithAttributesList = array<dimensionValuesWithAttributes>
type costCategoryReference = {
@as("DefaultValue") defaultValue: option<costCategoryValue>,
  @as("Values") values: option<costCategoryValuesList>,
  @as("ProcessingStatus") processingStatus: option<costCategoryProcessingStatusList>,
  @as("NumberOfRules") numberOfRules: option<nonNegativeInteger>,
  @as("EffectiveEnd") effectiveEnd: option<zonedDateTime>,
  @as("EffectiveStart") effectiveStart: option<zonedDateTime>,
  @as("Name") name: option<costCategoryName>,
  @as("CostCategoryArn") costCategoryArn: option<arn>
}
type anomalySubscription = {
@as("SubscriptionName") subscriptionName: genericString,
  @as("Frequency") frequency: anomalySubscriptionFrequency,
  @as("Threshold") threshold: nullableNonNegativeDouble,
  @as("Subscribers") subscribers: subscribers,
  @as("MonitorArnList") monitorArnList: monitorArnList,
  @as("AccountId") accountId: option<genericString>,
  @as("SubscriptionArn") subscriptionArn: option<genericString>
}
type anomaly = {
@as("Feedback") feedback: option<anomalyFeedbackType>,
  @as("MonitorArn") monitorArn: genericString,
  @as("Impact") impact: impact,
  @as("AnomalyScore") anomalyScore: anomalyScore,
  @as("RootCauses") rootCauses: option<rootCauses>,
  @as("DimensionValue") dimensionValue: option<genericString>,
  @as("AnomalyEndDate") anomalyEndDate: option<yearMonthDay>,
  @as("AnomalyStartDate") anomalyStartDate: option<yearMonthDay>,
  @as("AnomalyId") anomalyId: genericString
}
type utilizationByTime = {
@as("Total") total: option<reservationAggregates>,
  @as("Groups") groups: option<reservationUtilizationGroups>,
  @as("TimePeriod") timePeriod: option<dateInterval>
}
type targetInstance = {
@as("PlatformDifferences") platformDifferences: option<platformDifferences>,
  @as("ExpectedResourceUtilization") expectedResourceUtilization: option<resourceUtilization>,
  @as("ResourceDetails") resourceDetails: option<resourceDetails>,
  @as("DefaultTargetInstance") defaultTargetInstance: option<genericBoolean>,
  @as("CurrencyCode") currencyCode: option<genericString>,
  @as("EstimatedMonthlySavings") estimatedMonthlySavings: option<genericString>,
  @as("EstimatedMonthlyCost") estimatedMonthlyCost: option<genericString>
}
type savingsPlansPurchaseRecommendation = {
@as("SavingsPlansPurchaseRecommendationSummary") savingsPlansPurchaseRecommendationSummary: option<savingsPlansPurchaseRecommendationSummary>,
  @as("SavingsPlansPurchaseRecommendationDetails") savingsPlansPurchaseRecommendationDetails: option<savingsPlansPurchaseRecommendationDetailList>,
  @as("LookbackPeriodInDays") lookbackPeriodInDays: option<lookbackPeriodInDays>,
  @as("PaymentOption") paymentOption: option<paymentOption>,
  @as("TermInYears") termInYears: option<termInYears>,
  @as("SavingsPlansType") savingsPlansType: option<supportedSavingsPlansType>,
  @as("AccountScope") accountScope: option<accountScope>
}
type reservationPurchaseRecommendationDetails = array<reservationPurchaseRecommendationDetail>
type reservationCoverageGroups = array<reservationCoverageGroup>
type groups = array<group>
type currentInstance = {
@as("CurrencyCode") currencyCode: option<genericString>,
  @as("MonthlyCost") monthlyCost: option<genericString>,
  @as("TotalRunningHoursInLookbackPeriod") totalRunningHoursInLookbackPeriod: option<genericString>,
  @as("OnDemandHoursInLookbackPeriod") onDemandHoursInLookbackPeriod: option<genericString>,
  @as("SavingsPlansCoveredHoursInLookbackPeriod") savingsPlansCoveredHoursInLookbackPeriod: option<genericString>,
  @as("ReservationCoveredHoursInLookbackPeriod") reservationCoveredHoursInLookbackPeriod: option<genericString>,
  @as("ResourceUtilization") resourceUtilization: option<resourceUtilization>,
  @as("ResourceDetails") resourceDetails: option<resourceDetails>,
  @as("Tags") tags: option<tagValuesList>,
  @as("InstanceName") instanceName: option<genericString>,
  @as("ResourceId") resourceId: option<genericString>
}
type costCategoryReferencesList = array<costCategoryReference>
type anomalySubscriptions = array<anomalySubscription>
type anomalies = array<anomaly>
type utilizationsByTime = array<utilizationByTime>
type targetInstancesList = array<targetInstance>
type resultByTime = {
@as("Estimated") estimated: option<estimated>,
  @as("Groups") groups: option<groups>,
  @as("Total") total: option<metrics>,
  @as("TimePeriod") timePeriod: option<dateInterval>
}
type reservationPurchaseRecommendation = {
@as("RecommendationSummary") recommendationSummary: option<reservationPurchaseRecommendationSummary>,
  @as("RecommendationDetails") recommendationDetails: option<reservationPurchaseRecommendationDetails>,
  @as("ServiceSpecification") serviceSpecification: option<serviceSpecification>,
  @as("PaymentOption") paymentOption: option<paymentOption>,
  @as("TermInYears") termInYears: option<termInYears>,
  @as("LookbackPeriodInDays") lookbackPeriodInDays: option<lookbackPeriodInDays>,
  @as("AccountScope") accountScope: option<accountScope>
}
type coverageByTime = {
@as("Total") total: option<coverage>,
  @as("Groups") groups: option<reservationCoverageGroups>,
  @as("TimePeriod") timePeriod: option<dateInterval>
}
type resultsByTime = array<resultByTime>
type reservationPurchaseRecommendations = array<reservationPurchaseRecommendation>
type modifyRecommendationDetail = {
@as("TargetInstances") targetInstances: option<targetInstancesList>
}
type coveragesByTime = array<coverageByTime>
type rightsizingRecommendation = {
@as("FindingReasonCodes") findingReasonCodes: option<findingReasonCodes>,
  @as("TerminateRecommendationDetail") terminateRecommendationDetail: option<terminateRecommendationDetail>,
  @as("ModifyRecommendationDetail") modifyRecommendationDetail: option<modifyRecommendationDetail>,
  @as("RightsizingType") rightsizingType: option<rightsizingType>,
  @as("CurrentInstance") currentInstance: option<currentInstance>,
  @as("AccountId") accountId: option<genericString>
}
type rightsizingRecommendationList = array<rightsizingRecommendation>
type rec expression = {
@as("CostCategories") costCategories: option<costCategoryValues>,
  @as("Tags") tags: option<tagValues>,
  @as("Dimensions") dimensions: option<dimensionValues>,
  @as("Not") not: option<expression>,
  @as("And") and_: option<expressions>,
  @as("Or") or: option<expressions>
} and expressions = array<expression>
type costCategoryRule = {
@as("Type") type_: option<costCategoryRuleType>,
  @as("InheritedValue") inheritedValue: option<costCategoryInheritedValueDimension>,
  @as("Rule") rule: option<expression>,
  @as("Value") value: option<costCategoryValue>
}
type anomalyMonitor = {
@as("DimensionalValueCount") dimensionalValueCount: option<nonNegativeInteger>,
  @as("MonitorSpecification") monitorSpecification: option<expression>,
  @as("MonitorDimension") monitorDimension: option<monitorDimension>,
  @as("MonitorType") monitorType: monitorType,
  @as("LastEvaluatedDate") lastEvaluatedDate: option<yearMonthDay>,
  @as("LastUpdatedDate") lastUpdatedDate: option<yearMonthDay>,
  @as("CreationDate") creationDate: option<yearMonthDay>,
  @as("MonitorName") monitorName: genericString,
  @as("MonitorArn") monitorArn: option<genericString>
}
type costCategoryRulesList = array<costCategoryRule>
type anomalyMonitors = array<anomalyMonitor>
type costCategory = {
@as("DefaultValue") defaultValue: option<costCategoryValue>,
  @as("ProcessingStatus") processingStatus: option<costCategoryProcessingStatusList>,
  @as("Rules") rules: costCategoryRulesList,
  @as("RuleVersion") ruleVersion: costCategoryRuleVersion,
  @as("Name") name: costCategoryName,
  @as("EffectiveEnd") effectiveEnd: option<zonedDateTime>,
  @as("EffectiveStart") effectiveStart: zonedDateTime,
  @as("CostCategoryArn") costCategoryArn: arn
}

module UpdateAnomalyMonitor = {
  type t;
  type request = {
@as("MonitorName") monitorName: option<genericString>,
  @as("MonitorArn") monitorArn: genericString
}
  type response = {
@as("MonitorArn") monitorArn: genericString
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "UpdateAnomalyMonitorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ProvideAnomalyFeedback = {
  type t;
  type request = {
@as("Feedback") feedback: anomalyFeedbackType,
  @as("AnomalyId") anomalyId: genericString
}
  type response = {
@as("AnomalyId") anomalyId: genericString
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "ProvideAnomalyFeedbackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCostCategoryDefinition = {
  type t;
  type request = {
@as("CostCategoryArn") costCategoryArn: arn
}
  type response = {
@as("EffectiveEnd") effectiveEnd: option<zonedDateTime>,
  @as("CostCategoryArn") costCategoryArn: option<arn>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "DeleteCostCategoryDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAnomalySubscription = {
  type t;
  type request = {
@as("SubscriptionArn") subscriptionArn: genericString
}
  type response = unit
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "DeleteAnomalySubscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAnomalyMonitor = {
  type t;
  type request = {
@as("MonitorArn") monitorArn: genericString
}
  type response = unit
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "DeleteAnomalyMonitorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAnomalySubscription = {
  type t;
  type request = {
@as("SubscriptionName") subscriptionName: option<genericString>,
  @as("Subscribers") subscribers: option<subscribers>,
  @as("MonitorArnList") monitorArnList: option<monitorArnList>,
  @as("Frequency") frequency: option<anomalySubscriptionFrequency>,
  @as("Threshold") threshold: option<nullableNonNegativeDouble>,
  @as("SubscriptionArn") subscriptionArn: genericString
}
  type response = {
@as("SubscriptionArn") subscriptionArn: genericString
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "UpdateAnomalySubscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAnomalySubscription = {
  type t;
  type request = {
@as("AnomalySubscription") anomalySubscription: anomalySubscription
}
  type response = {
@as("SubscriptionArn") subscriptionArn: genericString
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "CreateAnomalySubscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCostCategoryDefinitions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<costCategoryMaxResults>,
  @as("NextToken") nextToken: option<nextPageToken>,
  @as("EffectiveOn") effectiveOn: option<zonedDateTime>
}
  type response = {
@as("NextToken") nextToken: option<nextPageToken>,
  @as("CostCategoryReferences") costCategoryReferences: option<costCategoryReferencesList>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "ListCostCategoryDefinitionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAnomalySubscriptions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<pageSize>,
  @as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("MonitorArn") monitorArn: option<genericString>,
  @as("SubscriptionArnList") subscriptionArnList: option<values>
}
  type response = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("AnomalySubscriptions") anomalySubscriptions: anomalySubscriptions
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetAnomalySubscriptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAnomalies = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<pageSize>,
  @as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("TotalImpact") totalImpact: option<totalImpactFilter>,
  @as("Feedback") feedback: option<anomalyFeedbackType>,
  @as("DateInterval") dateInterval: anomalyDateInterval,
  @as("MonitorArn") monitorArn: option<genericString>
}
  type response = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("Anomalies") anomalies: anomalies
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetAnomaliesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetUsageForecast = {
  type t;
  type request = {
@as("PredictionIntervalLevel") predictionIntervalLevel: option<predictionIntervalLevel>,
  @as("Filter") filter: option<expression>,
  @as("Granularity") granularity: granularity,
  @as("Metric") metric: metric,
  @as("TimePeriod") timePeriod: dateInterval
}
  type response = {
@as("ForecastResultsByTime") forecastResultsByTime: option<forecastResultsByTime>,
  @as("Total") total: option<metricValue>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetUsageForecastCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTags = {
  type t;
  type request = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("SortBy") sortBy: option<sortDefinitions>,
  @as("Filter") filter: option<expression>,
  @as("TagKey") tagKey: option<tagKey>,
  @as("TimePeriod") timePeriod: dateInterval,
  @as("SearchString") searchString: option<searchString>
}
  type response = {
@as("TotalSize") totalSize: pageSize,
  @as("ReturnSize") returnSize: pageSize,
  @as("Tags") tags: tagList_,
  @as("NextPageToken") nextPageToken: option<nextPageToken>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSavingsPlansUtilizationDetails = {
  type t;
  type request = {
@as("SortBy") sortBy: option<sortDefinition>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextPageToken>,
  @as("DataType") dataType: option<savingsPlansDataTypes>,
  @as("Filter") filter: option<expression>,
  @as("TimePeriod") timePeriod: dateInterval
}
  type response = {
@as("NextToken") nextToken: option<nextPageToken>,
  @as("TimePeriod") timePeriod: dateInterval,
  @as("Total") total: option<savingsPlansUtilizationAggregates>,
  @as("SavingsPlansUtilizationDetails") savingsPlansUtilizationDetails: savingsPlansUtilizationDetails
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetSavingsPlansUtilizationDetailsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSavingsPlansUtilization = {
  type t;
  type request = {
@as("SortBy") sortBy: option<sortDefinition>,
  @as("Filter") filter: option<expression>,
  @as("Granularity") granularity: option<granularity>,
  @as("TimePeriod") timePeriod: dateInterval
}
  type response = {
@as("Total") total: savingsPlansUtilizationAggregates,
  @as("SavingsPlansUtilizationsByTime") savingsPlansUtilizationsByTime: option<savingsPlansUtilizationsByTime>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetSavingsPlansUtilizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSavingsPlansPurchaseRecommendation = {
  type t;
  type request = {
@as("Filter") filter: option<expression>,
  @as("LookbackPeriodInDays") lookbackPeriodInDays: lookbackPeriodInDays,
  @as("PageSize") pageSize: option<nonNegativeInteger>,
  @as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("AccountScope") accountScope: option<accountScope>,
  @as("PaymentOption") paymentOption: paymentOption,
  @as("TermInYears") termInYears: termInYears,
  @as("SavingsPlansType") savingsPlansType: supportedSavingsPlansType
}
  type response = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("SavingsPlansPurchaseRecommendation") savingsPlansPurchaseRecommendation: option<savingsPlansPurchaseRecommendation>,
  @as("Metadata") metadata: option<savingsPlansPurchaseRecommendationMetadata>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetSavingsPlansPurchaseRecommendationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSavingsPlansCoverage = {
  type t;
  type request = {
@as("SortBy") sortBy: option<sortDefinition>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextPageToken>,
  @as("Metrics") metrics: option<metricNames>,
  @as("Filter") filter: option<expression>,
  @as("Granularity") granularity: option<granularity>,
  @as("GroupBy") groupBy: option<groupDefinitions>,
  @as("TimePeriod") timePeriod: dateInterval
}
  type response = {
@as("NextToken") nextToken: option<nextPageToken>,
  @as("SavingsPlansCoverages") savingsPlansCoverages: savingsPlansCoverages
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetSavingsPlansCoverageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRightsizingRecommendation = {
  type t;
  type request = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("PageSize") pageSize: option<nonNegativeInteger>,
  @as("Service") service: genericString,
  @as("Configuration") configuration: option<rightsizingRecommendationConfiguration>,
  @as("Filter") filter: option<expression>
}
  type response = {
@as("Configuration") configuration: option<rightsizingRecommendationConfiguration>,
  @as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("RightsizingRecommendations") rightsizingRecommendations: option<rightsizingRecommendationList>,
  @as("Summary") summary: option<rightsizingRecommendationSummary>,
  @as("Metadata") metadata: option<rightsizingRecommendationMetadata>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetRightsizingRecommendationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetReservationUtilization = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("SortBy") sortBy: option<sortDefinition>,
  @as("Filter") filter: option<expression>,
  @as("Granularity") granularity: option<granularity>,
  @as("GroupBy") groupBy: option<groupDefinitions>,
  @as("TimePeriod") timePeriod: dateInterval
}
  type response = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("Total") total: option<reservationAggregates>,
  @as("UtilizationsByTime") utilizationsByTime: utilizationsByTime
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetReservationUtilizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetReservationPurchaseRecommendation = {
  type t;
  type request = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("PageSize") pageSize: option<nonNegativeInteger>,
  @as("ServiceSpecification") serviceSpecification: option<serviceSpecification>,
  @as("PaymentOption") paymentOption: option<paymentOption>,
  @as("TermInYears") termInYears: option<termInYears>,
  @as("LookbackPeriodInDays") lookbackPeriodInDays: option<lookbackPeriodInDays>,
  @as("AccountScope") accountScope: option<accountScope>,
  @as("Filter") filter: option<expression>,
  @as("Service") service: genericString,
  @as("AccountId") accountId: option<genericString>
}
  type response = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("Recommendations") recommendations: option<reservationPurchaseRecommendations>,
  @as("Metadata") metadata: option<reservationPurchaseRecommendationMetadata>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetReservationPurchaseRecommendationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetReservationCoverage = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("SortBy") sortBy: option<sortDefinition>,
  @as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("Metrics") metrics: option<metricNames>,
  @as("Filter") filter: option<expression>,
  @as("Granularity") granularity: option<granularity>,
  @as("GroupBy") groupBy: option<groupDefinitions>,
  @as("TimePeriod") timePeriod: dateInterval
}
  type response = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("Total") total: option<coverage>,
  @as("CoveragesByTime") coveragesByTime: coveragesByTime
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetReservationCoverageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDimensionValues = {
  type t;
  type request = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("SortBy") sortBy: option<sortDefinitions>,
  @as("Filter") filter: option<expression>,
  @as("Context") context: option<context>,
  @as("Dimension") dimension: dimension,
  @as("TimePeriod") timePeriod: dateInterval,
  @as("SearchString") searchString: option<searchString>
}
  type response = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("TotalSize") totalSize: pageSize,
  @as("ReturnSize") returnSize: pageSize,
  @as("DimensionValues") dimensionValues: dimensionValuesWithAttributesList
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetDimensionValuesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCostForecast = {
  type t;
  type request = {
@as("PredictionIntervalLevel") predictionIntervalLevel: option<predictionIntervalLevel>,
  @as("Filter") filter: option<expression>,
  @as("Granularity") granularity: granularity,
  @as("Metric") metric: metric,
  @as("TimePeriod") timePeriod: dateInterval
}
  type response = {
@as("ForecastResultsByTime") forecastResultsByTime: option<forecastResultsByTime>,
  @as("Total") total: option<metricValue>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetCostForecastCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCostCategories = {
  type t;
  type request = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("SortBy") sortBy: option<sortDefinitions>,
  @as("Filter") filter: option<expression>,
  @as("CostCategoryName") costCategoryName: option<costCategoryName>,
  @as("TimePeriod") timePeriod: dateInterval,
  @as("SearchString") searchString: option<searchString>
}
  type response = {
@as("TotalSize") totalSize: pageSize,
  @as("ReturnSize") returnSize: pageSize,
  @as("CostCategoryValues") costCategoryValues: option<costCategoryValuesList>,
  @as("CostCategoryNames") costCategoryNames: option<costCategoryNamesList>,
  @as("NextPageToken") nextPageToken: option<nextPageToken>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetCostCategoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCostAndUsageWithResources = {
  type t;
  type request = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("GroupBy") groupBy: option<groupDefinitions>,
  @as("Metrics") metrics: option<metricNames>,
  @as("Filter") filter: expression,
  @as("Granularity") granularity: granularity,
  @as("TimePeriod") timePeriod: dateInterval
}
  type response = {
@as("DimensionValueAttributes") dimensionValueAttributes: option<dimensionValuesWithAttributesList>,
  @as("ResultsByTime") resultsByTime: option<resultsByTime>,
  @as("GroupDefinitions") groupDefinitions: option<groupDefinitions>,
  @as("NextPageToken") nextPageToken: option<nextPageToken>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetCostAndUsageWithResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCostAndUsage = {
  type t;
  type request = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("GroupBy") groupBy: option<groupDefinitions>,
  @as("Metrics") metrics: metricNames,
  @as("Filter") filter: option<expression>,
  @as("Granularity") granularity: granularity,
  @as("TimePeriod") timePeriod: dateInterval
}
  type response = {
@as("DimensionValueAttributes") dimensionValueAttributes: option<dimensionValuesWithAttributesList>,
  @as("ResultsByTime") resultsByTime: option<resultsByTime>,
  @as("GroupDefinitions") groupDefinitions: option<groupDefinitions>,
  @as("NextPageToken") nextPageToken: option<nextPageToken>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetCostAndUsageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAnomalyMonitor = {
  type t;
  type request = {
@as("AnomalyMonitor") anomalyMonitor: anomalyMonitor
}
  type response = {
@as("MonitorArn") monitorArn: genericString
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "CreateAnomalyMonitorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateCostCategoryDefinition = {
  type t;
  type request = {
@as("DefaultValue") defaultValue: option<costCategoryValue>,
  @as("Rules") rules: costCategoryRulesList,
  @as("RuleVersion") ruleVersion: costCategoryRuleVersion,
  @as("CostCategoryArn") costCategoryArn: arn
}
  type response = {
@as("EffectiveStart") effectiveStart: option<zonedDateTime>,
  @as("CostCategoryArn") costCategoryArn: option<arn>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "UpdateCostCategoryDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAnomalyMonitors = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<pageSize>,
  @as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("MonitorArnList") monitorArnList: option<values>
}
  type response = {
@as("NextPageToken") nextPageToken: option<nextPageToken>,
  @as("AnomalyMonitors") anomalyMonitors: anomalyMonitors
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "GetAnomalyMonitorsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCostCategoryDefinition = {
  type t;
  type request = {
@as("DefaultValue") defaultValue: option<costCategoryValue>,
  @as("Rules") rules: costCategoryRulesList,
  @as("RuleVersion") ruleVersion: costCategoryRuleVersion,
  @as("Name") name: costCategoryName
}
  type response = {
@as("EffectiveStart") effectiveStart: option<zonedDateTime>,
  @as("CostCategoryArn") costCategoryArn: option<arn>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "CreateCostCategoryDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCostCategoryDefinition = {
  type t;
  type request = {
@as("EffectiveOn") effectiveOn: option<zonedDateTime>,
  @as("CostCategoryArn") costCategoryArn: arn
}
  type response = {
@as("CostCategory") costCategory: option<costCategory>
}
  @module("@aws-sdk/client-ce") @new external new_: (request) => t = "DescribeCostCategoryDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
