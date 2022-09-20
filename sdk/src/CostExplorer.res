type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ce") @new
external createClient: unit => awsServiceClient = "CostExplorerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
@ocaml.doc("<p>The time period that you want the usage and costs for.</p>")
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
type supportedSavingsPlansType = [
  | @as("SAGEMAKER_SP") #SAGEMAKER_SP
  | @as("EC2_INSTANCE_SP") #EC2_INSTANCE_SP
  | @as("COMPUTE_SP") #COMPUTE_SP
]
type subscriberType = [@as("SNS") #SNS | @as("EMAIL") #EMAIL]
type subscriberStatus = [@as("DECLINED") #DECLINED | @as("CONFIRMED") #CONFIRMED]
type subscriberAddress = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sortDefinitionKey = string
type searchString = string
type savingsPlansDataType = [
  | @as("SAVINGS") #SAVINGS
  | @as("AMORTIZED_COMMITMENT") #AMORTIZED_COMMITMENT
  | @as("UTILIZATION") #UTILIZATION
  | @as("ATTRIBUTES") #ATTRIBUTES
]
type savingsPlanArn = string
type rightsizingType = [@as("MODIFY") #MODIFY | @as("TERMINATE") #TERMINATE]
type resourceTagValue = string
type resourceTagKey = string
type reservedNormalizedUnits = string
type reservedHours = string
type reservationGroupValue = string
type reservationGroupKey = string
type recommendationTarget = [
  | @as("CROSS_INSTANCE_FAMILY") #CROSS_INSTANCE_FAMILY
  | @as("SAME_INSTANCE_FAMILY") #SAME_INSTANCE_FAMILY
]
type realizedSavings = string
type ricostForUnusedHours = string
type purchasedUnits = string
type purchasedHours = string
type predictionIntervalLevel = int
type platformDifference = [
  | @as("VIRTUALIZATION_TYPE") #VIRTUALIZATION_TYPE
  | @as("INSTANCE_STORE_AVAILABILITY") #INSTANCE_STORE_AVAILABILITY
  | @as("STORAGE_INTERFACE") #STORAGE_INTERFACE
  | @as("NETWORK_INTERFACE") #NETWORK_INTERFACE
  | @as("HYPERVISOR") #HYPERVISOR
]
type paymentOption = [
  | @as("HEAVY_UTILIZATION") #HEAVY_UTILIZATION
  | @as("MEDIUM_UTILIZATION") #MEDIUM_UTILIZATION
  | @as("LIGHT_UTILIZATION") #LIGHT_UTILIZATION
  | @as("ALL_UPFRONT") #ALL_UPFRONT
  | @as("PARTIAL_UPFRONT") #PARTIAL_UPFRONT
  | @as("NO_UPFRONT") #NO_UPFRONT
]
type pageSize = int
type onDemandNormalizedUnits = string
type onDemandHours = string
type onDemandCostOfRIHoursUsed = string
type onDemandCost = string
type offeringClass = [@as("CONVERTIBLE") #CONVERTIBLE | @as("STANDARD") #STANDARD]
type numericOperator = [
  | @as("BETWEEN") #BETWEEN
  | @as("LESS_THAN") #LESS_THAN
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN_OR_EQUAL") #LESS_THAN_OR_EQUAL
  | @as("GREATER_THAN_OR_EQUAL") #GREATER_THAN_OR_EQUAL
  | @as("EQUAL") #EQUAL
]
type nullableNonNegativeDouble = float
type nonNegativeInteger = int
type nextPageToken = string
type netRISavings = string
type monitorType = [@as("CUSTOM") #CUSTOM | @as("DIMENSIONAL") #DIMENSIONAL]
type monitorDimension = [@as("SERVICE") #SERVICE]
type metricUnit = string
type metricName = string
type metricAmount = string
type metric = [
  | @as("NORMALIZED_USAGE_AMOUNT") #NORMALIZED_USAGE_AMOUNT
  | @as("USAGE_QUANTITY") #USAGE_QUANTITY
  | @as("NET_AMORTIZED_COST") #NET_AMORTIZED_COST
  | @as("NET_UNBLENDED_COST") #NET_UNBLENDED_COST
  | @as("AMORTIZED_COST") #AMORTIZED_COST
  | @as("UNBLENDED_COST") #UNBLENDED_COST
  | @as("BLENDED_COST") #BLENDED_COST
]
type maxResults = int
type matchOption = [
  | @as("CASE_INSENSITIVE") #CASE_INSENSITIVE
  | @as("CASE_SENSITIVE") #CASE_SENSITIVE
  | @as("CONTAINS") #CONTAINS
  | @as("ENDS_WITH") #ENDS_WITH
  | @as("STARTS_WITH") #STARTS_WITH
  | @as("ABSENT") #ABSENT
  | @as("EQUALS") #EQUALS
]
type lookbackPeriodInDays = [
  | @as("SIXTY_DAYS") #SIXTY_DAYS
  | @as("THIRTY_DAYS") #THIRTY_DAYS
  | @as("SEVEN_DAYS") #SEVEN_DAYS
]
type key = string
type groupDefinitionType = [
  | @as("COST_CATEGORY") #COST_CATEGORY
  | @as("TAG") #TAG
  | @as("DIMENSION") #DIMENSION
]
type groupDefinitionKey = string
type granularity = [@as("HOURLY") #HOURLY | @as("MONTHLY") #MONTHLY | @as("DAILY") #DAILY]
type genericString = string
type genericDouble = float
type genericBoolean = bool
type findingReasonCode = [
  | @as("DISK_THROUGHPUT_UNDER_PROVISIONED") #DISK_THROUGHPUT_UNDER_PROVISIONED
  | @as("DISK_THROUGHPUT_OVER_PROVISIONED") #DISK_THROUGHPUT_OVER_PROVISIONED
  | @as("DISK_IOPS_UNDER_PROVISIONED") #DISK_IOPS_UNDER_PROVISIONED
  | @as("DISK_IOPS_OVER_PROVISIONED") #DISK_IOPS_OVER_PROVISIONED
  | @as("NETWORK_PPS_UNDER_PROVISIONED") #NETWORK_PPS_UNDER_PROVISIONED
  | @as("NETWORK_PPS_OVER_PROVISIONED") #NETWORK_PPS_OVER_PROVISIONED
  | @as("NETWORK_BANDWIDTH_UNDER_PROVISIONED") #NETWORK_BANDWIDTH_UNDER_PROVISIONED
  | @as("NETWORK_BANDWIDTH_OVER_PROVISIONED") #NETWORK_BANDWIDTH_OVER_PROVISIONED
  | @as("EBS_IOPS_UNDER_PROVISIONED") #EBS_IOPS_UNDER_PROVISIONED
  | @as("EBS_IOPS_OVER_PROVISIONED") #EBS_IOPS_OVER_PROVISIONED
  | @as("EBS_THROUGHPUT_UNDER_PROVISIONED") #EBS_THROUGHPUT_UNDER_PROVISIONED
  | @as("EBS_THROUGHPUT_OVER_PROVISIONED") #EBS_THROUGHPUT_OVER_PROVISIONED
  | @as("MEMORY_UNDER_PROVISIONED") #MEMORY_UNDER_PROVISIONED
  | @as("MEMORY_OVER_PROVISIONED") #MEMORY_OVER_PROVISIONED
  | @as("CPU_UNDER_PROVISIONED") #CPU_UNDER_PROVISIONED
  | @as("CPU_OVER_PROVISIONED") #CPU_OVER_PROVISIONED
]
type estimated = bool
type errorMessage = string
type entity = string
type dimension = [
  | @as("INVOICING_ENTITY") #INVOICING_ENTITY
  | @as("AGREEMENT_END_DATE_TIME_BEFORE") #AGREEMENT_END_DATE_TIME_BEFORE
  | @as("AGREEMENT_END_DATE_TIME_AFTER") #AGREEMENT_END_DATE_TIME_AFTER
  | @as("PAYMENT_OPTION") #PAYMENT_OPTION
  | @as("SAVINGS_PLAN_ARN") #SAVINGS_PLAN_ARN
  | @as("SAVINGS_PLANS_TYPE") #SAVINGS_PLANS_TYPE
  | @as("RIGHTSIZING_TYPE") #RIGHTSIZING_TYPE
  | @as("RESOURCE_ID") #RESOURCE_ID
  | @as("RESERVATION_ID") #RESERVATION_ID
  | @as("BILLING_ENTITY") #BILLING_ENTITY
  | @as("INSTANCE_TYPE_FAMILY") #INSTANCE_TYPE_FAMILY
  | @as("CACHE_ENGINE") #CACHE_ENGINE
  | @as("DATABASE_ENGINE") #DATABASE_ENGINE
  | @as("DEPLOYMENT_OPTION") #DEPLOYMENT_OPTION
  | @as("LEGAL_ENTITY_NAME") #LEGAL_ENTITY_NAME
  | @as("SUBSCRIPTION_ID") #SUBSCRIPTION_ID
  | @as("PLATFORM") #PLATFORM
  | @as("SCOPE") #SCOPE
  | @as("TENANCY") #TENANCY
  | @as("OPERATING_SYSTEM") #OPERATING_SYSTEM
  | @as("RECORD_TYPE") #RECORD_TYPE
  | @as("USAGE_TYPE_GROUP") #USAGE_TYPE_GROUP
  | @as("USAGE_TYPE") #USAGE_TYPE
  | @as("SERVICE_CODE") #SERVICE_CODE
  | @as("SERVICE") #SERVICE
  | @as("REGION") #REGION
  | @as("PURCHASE_TYPE") #PURCHASE_TYPE
  | @as("OPERATION") #OPERATION
  | @as("LINKED_ACCOUNT_NAME") #LINKED_ACCOUNT_NAME
  | @as("LINKED_ACCOUNT") #LINKED_ACCOUNT
  | @as("INSTANCE_TYPE") #INSTANCE_TYPE
  | @as("AZ") #AZ
]
type coverageNormalizedUnitsPercentage = string
type coverageHoursPercentage = string
@ocaml.doc("<p>The
            default value for the cost category.</p>")
type costCategoryValue = string
type costCategoryStatusComponent = [@as("COST_EXPLORER") #COST_EXPLORER]
type costCategoryStatus = [@as("APPLIED") #APPLIED | @as("PROCESSING") #PROCESSING]
type costCategorySplitChargeRuleParameterType = [
  | @as("ALLOCATION_PERCENTAGES") #ALLOCATION_PERCENTAGES
]
type costCategorySplitChargeMethod = [
  | @as("EVEN") #EVEN
  | @as("PROPORTIONAL") #PROPORTIONAL
  | @as("FIXED") #FIXED
]
@ocaml.doc("<p>The rule schema version in this particular Cost Category.</p>")
type costCategoryRuleVersion = [@as("CostCategoryExpression.v1") #CostCategoryExpression_V1]
type costCategoryRuleType = [@as("INHERITED_VALUE") #INHERITED_VALUE | @as("REGULAR") #REGULAR]
@ocaml.doc("<p>The unique name of the Cost Category.</p>") type costCategoryName = string
type costCategoryMaxResults = int
type costCategoryInheritedValueDimensionName = [
  | @as("TAG") #TAG
  | @as("LINKED_ACCOUNT_NAME") #LINKED_ACCOUNT_NAME
]
type context = [
  | @as("SAVINGS_PLANS") #SAVINGS_PLANS
  | @as("RESERVATIONS") #RESERVATIONS
  | @as("COST_AND_USAGE") #COST_AND_USAGE
]
type attributeValue = string
type attributeType = string
type arn = string
type anomalySubscriptionFrequency = [
  | @as("WEEKLY") #WEEKLY
  | @as("IMMEDIATE") #IMMEDIATE
  | @as("DAILY") #DAILY
]
type anomalyFeedbackType = [
  | @as("PLANNED_ACTIVITY") #PLANNED_ACTIVITY
  | @as("NO") #NO
  | @as("YES") #YES
]
type amortizedUpfrontFee = string
type amortizedRecurringFee = string
type accountScope = [@as("LINKED") #LINKED | @as("PAYER") #PAYER]
type values = array<value>
@ocaml.doc("<p>Filters cost anomalies based on the total impact. </p>")
type totalImpactFilter = {
  @ocaml.doc("<p>The upper bound dollar value that's used in the filter. </p>") @as("EndValue")
  endValue: option<genericDouble>,
  @ocaml.doc("<p>The lower bound dollar value that's used in the filter. </p>") @as("StartValue")
  startValue: genericDouble,
  @ocaml.doc("<p>The comparing value that's used in the filter. </p>") @as("NumericOperator")
  numericOperator: numericOperator,
}
@ocaml.doc("<p>Details on termination recommendation. </p>")
type terminateRecommendationDetail = {
  @ocaml.doc("<p>The currency code that Amazon Web Services used to calculate the costs for this
            instance.</p>")
  @as("CurrencyCode")
  currencyCode: option<genericString>,
  @ocaml.doc("<p>The estimated savings that result from modification, on a monthly basis.</p>")
  @as("EstimatedMonthlySavings")
  estimatedMonthlySavings: option<genericString>,
}
type tagList_ = array<entity>
@ocaml.doc("<p>The recipient of <code>AnomalySubscription</code> notifications. </p>")
type subscriber = {
  @ocaml.doc("<p>Indicates if the subscriber accepts the notifications. </p>") @as("Status")
  status: option<subscriberStatus>,
  @ocaml.doc("<p>The notification delivery channel. </p>") @as("Type")
  type_: option<subscriberType>,
  @ocaml.doc("<p>The email address or SNS Amazon Resource Name (ARN). This depends on the
                <code>Type</code>. </p>")
  @as("Address")
  address: option<subscriberAddress>,
}
@ocaml.doc("<p>The details of how to sort the data.</p>")
type sortDefinition = {
  @ocaml.doc("<p>The order that's used to sort the data.</p>") @as("SortOrder")
  sortOrder: option<sortOrder>,
  @ocaml.doc("<p>The key that's used to sort the data.</p>") @as("Key") key: sortDefinitionKey,
}
@ocaml.doc("<p>The measurement of how well you're using your existing Savings Plans.</p>")
type savingsPlansUtilization = {
  @ocaml.doc("<p>The amount of <code>UsedCommitment</code> divided by the <code>TotalCommitment</code>
            for your Savings Plans.</p>")
  @as("UtilizationPercentage")
  utilizationPercentage: option<genericString>,
  @ocaml.doc("<p>The amount of your Savings Plans commitment that wasn't consumed from Savings Plans
            eligible usage in a specific period.</p>")
  @as("UnusedCommitment")
  unusedCommitment: option<genericString>,
  @ocaml.doc("<p>The amount of your Savings Plans commitment that was consumed from Savings Plans
            eligible usage in a specific period.</p>")
  @as("UsedCommitment")
  usedCommitment: option<genericString>,
  @ocaml.doc("<p>The total amount of Savings Plans commitment that's been purchased in an account (or
            set of accounts).</p>")
  @as("TotalCommitment")
  totalCommitment: option<genericString>,
}
@ocaml.doc("<p>The amount of savings that you're accumulating, against the public On-Demand rate of
            the usage accrued in an account.</p>")
type savingsPlansSavings = {
  @ocaml.doc("<p>How much the amount that the usage would have cost if it was accrued at the On-Demand
            rate.</p>")
  @as("OnDemandCostEquivalent")
  onDemandCostEquivalent: option<genericString>,
  @ocaml.doc("<p>The savings amount that you're accumulating for the usage that's covered by a Savings
            Plans, when compared to the On-Demand equivalent of the same usage.</p>")
  @as("NetSavings")
  netSavings: option<genericString>,
}
@ocaml.doc("<p>Summary metrics for your Savings Plans Purchase Recommendations.</p>")
type savingsPlansPurchaseRecommendationSummary = {
  @ocaml.doc("<p> The estimated On-Demand costs you would expect with no additional commitment. It's
            based on your usage of the selected time period and the Savings Plans you own. </p>")
  @as("EstimatedOnDemandCostWithCurrentCommitment")
  estimatedOnDemandCostWithCurrentCommitment: option<genericString>,
  @ocaml.doc("<p>The estimated monthly savings amount that's based on the recommended Savings Plans
            purchase.</p>")
  @as("EstimatedMonthlySavingsAmount")
  estimatedMonthlySavingsAmount: option<genericString>,
  @ocaml.doc("<p>The estimated savings relative to the total cost of On-Demand usage, over the lookback
            period. This is calculated as <code>estimatedSavingsAmount</code>/
                <code>CurrentOnDemandSpend</code>*100.</p>")
  @as("EstimatedSavingsPercentage")
  estimatedSavingsPercentage: option<genericString>,
  @ocaml.doc("<p>The recommended hourly commitment that's based on the recommendation
            parameters.</p>")
  @as("HourlyCommitmentToPurchase")
  hourlyCommitmentToPurchase: option<genericString>,
  @ocaml.doc("<p>The recommended Savings Plans cost on a daily (24 hourly) basis.</p>")
  @as("DailyCommitmentToPurchase")
  dailyCommitmentToPurchase: option<genericString>,
  @ocaml.doc("<p>The aggregate number of Savings Plans recommendations that exist for your
            account.</p>")
  @as("TotalRecommendationCount")
  totalRecommendationCount: option<genericString>,
  @ocaml.doc("<p>The estimated total savings over the lookback period, based on the purchase of the
            recommended Savings Plans.</p>")
  @as("EstimatedSavingsAmount")
  estimatedSavingsAmount: option<genericString>,
  @ocaml.doc("<p>The current total on demand spend of the applicable usage types over the lookback
            period.</p>")
  @as("CurrentOnDemandSpend")
  currentOnDemandSpend: option<genericString>,
  @ocaml.doc("<p>The estimated total cost of the usage after purchasing the recommended Savings Plans.
            This is a sum of the cost of Savings Plans during this term, and the remaining On-Demand
            usage.</p>")
  @as("EstimatedTotalCost")
  estimatedTotalCost: option<genericString>,
  @ocaml.doc("<p>The currency code that Amazon Web Services used to generate the recommendations and
            present potential savings.</p>")
  @as("CurrencyCode")
  currencyCode: option<genericString>,
  @ocaml.doc("<p>The estimated return on investment that's based on the recommended Savings Plans and
            estimated savings.</p>")
  @as("EstimatedROI")
  estimatedROI: option<genericString>,
}
@ocaml.doc("<p>Metadata about your Savings Plans Purchase Recommendations.</p>")
type savingsPlansPurchaseRecommendationMetadata = {
  @ocaml.doc("<p>Additional metadata that might be applicable to the recommendation.</p>")
  @as("AdditionalMetadata")
  additionalMetadata: option<genericString>,
  @ocaml.doc("<p>The timestamp showing when the recommendations were generated.</p>")
  @as("GenerationTimestamp")
  generationTimestamp: option<genericString>,
  @ocaml.doc("<p>The unique identifier for the recommendation set.</p>") @as("RecommendationId")
  recommendationId: option<genericString>,
}
@ocaml.doc("<p>The attribute details on a specific Savings Plan.</p>")
type savingsPlansDetails = {
  @ocaml.doc("<p>The unique ID that's used to distinguish Savings Plans from one another.</p>")
  @as("OfferingId")
  offeringId: option<genericString>,
  @ocaml.doc("<p>A group of instance types that Savings Plans applies to.</p>")
  @as("InstanceFamily")
  instanceFamily: option<genericString>,
  @ocaml.doc(
    "<p>A collection of Amazon Web Services resources in a geographic area. Each Amazon Web Services Region is isolated and independent of the other Regions.</p>"
  )
  @as("Region")
  region: option<genericString>,
}
type savingsPlansDataTypes = array<savingsPlansDataType>
@ocaml.doc("<p>Specific coverage percentage, On-Demand costs, and spend covered by Savings Plans, and
            total Savings Plans costs for an account.</p>")
type savingsPlansCoverageData = {
  @ocaml.doc("<p>The percentage of your existing Savings Plans covered usage, divided by all of your
            eligible Savings Plans usage in an account (or set of accounts).</p>")
  @as("CoveragePercentage")
  coveragePercentage: option<genericString>,
  @ocaml.doc("<p>The total cost of your Amazon Web Services usage, regardless of your purchase
            option.</p>")
  @as("TotalCost")
  totalCost: option<genericString>,
  @ocaml.doc("<p>The cost of your Amazon Web Services usage at the public On-Demand rate.</p>")
  @as("OnDemandCost")
  onDemandCost: option<genericString>,
  @ocaml.doc(
    "<p>The amount of your Amazon Web Services usage that is covered by a Savings Plans.</p>"
  )
  @as("SpendCoveredBySavingsPlans")
  spendCoveredBySavingsPlans: option<genericString>,
}
@ocaml.doc("<p>The amortized amount of Savings Plans purchased in a specific account during a
            specific time interval.</p>")
type savingsPlansAmortizedCommitment = {
  @ocaml.doc("<p>The total amortized amount of your Savings Plans commitment, regardless of your
            Savings Plans purchase method. </p>")
  @as("TotalAmortizedCommitment")
  totalAmortizedCommitment: option<genericString>,
  @ocaml.doc("<p>The amortized amount of your Savings Plans commitment that was purchased with an
                <code>Upfront</code> or <code>PartialUpfront</code> Savings Plans.</p>")
  @as("AmortizedUpfrontCommitment")
  amortizedUpfrontCommitment: option<genericString>,
  @ocaml.doc("<p>The amortized amount of your Savings Plans commitment that was purchased with either a
                <code>Partial</code> or a <code>NoUpfront</code>.</p>")
  @as("AmortizedRecurringCommitment")
  amortizedRecurringCommitment: option<genericString>,
}
@ocaml.doc("<p>The combination of Amazon Web Services service, linked account, Region, and usage type
            where a cost anomaly is observed. </p>")
type rootCause = {
  @ocaml.doc("<p>The <code>UsageType</code> value that's associated with the cost anomaly. </p>")
  @as("UsageType")
  usageType: option<genericString>,
  @ocaml.doc("<p>The member account value that's associated with the cost anomaly. </p>")
  @as("LinkedAccount")
  linkedAccount: option<genericString>,
  @ocaml.doc("<p>The Amazon Web Services Region that's associated with the cost anomaly. </p>")
  @as("Region")
  region: option<genericString>,
  @ocaml.doc(
    "<p>The Amazon Web Services service name that's associated with the cost anomaly. </p>"
  )
  @as("Service")
  service: option<genericString>,
}
@ocaml.doc("<p>The summary of rightsizing recommendations </p>")
type rightsizingRecommendationSummary = {
  @ocaml.doc("<p> The savings percentage based on the recommended modifications. It's relative to the
            total On-Demand costs that are associated with these instances.</p>")
  @as("SavingsPercentage")
  savingsPercentage: option<genericString>,
  @ocaml.doc("<p>The currency code that Amazon Web Services used to calculate the savings.</p>")
  @as("SavingsCurrencyCode")
  savingsCurrencyCode: option<genericString>,
  @ocaml.doc("<p>The estimated total savings resulting from modifications, on a monthly basis.</p>")
  @as("EstimatedTotalMonthlySavingsAmount")
  estimatedTotalMonthlySavingsAmount: option<genericString>,
  @ocaml.doc("<p>The total number of instance recommendations.</p>") @as("TotalRecommendationCount")
  totalRecommendationCount: option<genericString>,
}
@ocaml.doc("<p>Metadata for this recommendation set.</p>")
type rightsizingRecommendationMetadata = {
  @ocaml.doc("<p>Additional metadata that might be applicable to the recommendation.</p>")
  @as("AdditionalMetadata")
  additionalMetadata: option<genericString>,
  @ocaml.doc("<p>The number of days of previous usage that Amazon Web Services considers when making
            this recommendation.</p>")
  @as("LookbackPeriodInDays")
  lookbackPeriodInDays: option<lookbackPeriodInDays>,
  @ocaml.doc("<p>The timestamp for when Amazon Web Services made this recommendation.</p>")
  @as("GenerationTimestamp")
  generationTimestamp: option<genericString>,
  @ocaml.doc("<p>The ID for this specific recommendation.</p>") @as("RecommendationId")
  recommendationId: option<genericString>,
}
@ocaml.doc("<p>You can use <code>RightsizingRecommendationConfiguration</code> to customize
            recommendations across two attributes. You can choose to view recommendations for
            instances within the same instance families or across different instance families. You
            can also choose to view your estimated savings that are associated with recommendations
            with consideration of existing Savings Plans or RI benefits, or neither. </p>")
type rightsizingRecommendationConfiguration = {
  @ocaml.doc("<p>The option to consider RI or Savings Plans discount benefits in your savings
            calculation. The default value is <code>TRUE</code>. </p>")
  @as("BenefitsConsidered")
  benefitsConsidered: genericBoolean,
  @ocaml.doc("<p>The option to see recommendations within the same instance family or recommendations
            for instances across other families. The default value is
                <code>SAME_INSTANCE_FAMILY</code>. </p>")
  @as("RecommendationTarget")
  recommendationTarget: recommendationTarget,
}
type resourceTagKeyList = array<resourceTagKey>
@ocaml.doc("<p>
            The tag structure that contains a tag key and value. 
        </p>
        <note>
            <p>Tagging is supported only for the following Cost Explorer resource types: <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html\">
                  <code>AnomalyMonitor</code>
               </a>, <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html\">
                  <code>AnomalySubscription</code>
               </a>, <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategory.html\">
                  <code>CostCategory</code>
               </a>.</p>
         </note>")
type resourceTag = {
  @ocaml.doc("<p>
            The value that is associated with the tag.
        </p>")
  @as("Value")
  value: resourceTagValue,
  @ocaml.doc("<p>
            The key that is associated with the tag.
        </p>")
  @as("Key")
  key: resourceTagKey,
}
@ocaml.doc("<p>A summary about this recommendation, such as the currency code, the amount that
                Amazon Web Services estimates that you could save, and the total amount of
            reservation to purchase.</p>")
type reservationPurchaseRecommendationSummary = {
  @ocaml.doc("<p>The currency code used for this recommendation.</p>") @as("CurrencyCode")
  currencyCode: option<genericString>,
  @ocaml.doc("<p>The total amount that Amazon Web Services estimates that this recommendation could save
            you in a month, as a percentage of your costs.</p>")
  @as("TotalEstimatedMonthlySavingsPercentage")
  totalEstimatedMonthlySavingsPercentage: option<genericString>,
  @ocaml.doc("<p>The total amount that Amazon Web Services estimates that this recommendation could save
            you in a month.</p>")
  @as("TotalEstimatedMonthlySavingsAmount")
  totalEstimatedMonthlySavingsAmount: option<genericString>,
}
@ocaml.doc(
  "<p>Information about this specific recommendation, such as the timestamp for when Amazon Web Services made a specific recommendation.</p>"
)
type reservationPurchaseRecommendationMetadata = {
  @ocaml.doc("<p>The timestamp for when Amazon Web Services made this recommendation.</p>")
  @as("GenerationTimestamp")
  generationTimestamp: option<genericString>,
  @ocaml.doc("<p>The ID for this specific recommendation.</p>") @as("RecommendationId")
  recommendationId: option<genericString>,
}
@ocaml.doc("<p>The aggregated numbers for your reservation usage.</p>")
type reservationAggregates = {
  @ocaml.doc("<p>The unrealized savings because of purchasing and using a reservation.</p>")
  @as("UnrealizedSavings")
  unrealizedSavings: option<unrealizedSavings>,
  @ocaml.doc("<p>The realized savings because of purchasing and using a reservation.</p>")
  @as("RealizedSavings")
  realizedSavings: option<realizedSavings>,
  @ocaml.doc("<p>The cost of unused hours for your reservation.</p>") @as("RICostForUnusedHours")
  ricostForUnusedHours: option<ricostForUnusedHours>,
  @ocaml.doc(
    "<p>The total cost of your reservation. It's amortized over the reservation period.</p>"
  )
  @as("TotalAmortizedFee")
  totalAmortizedFee: option<totalAmortizedFee>,
  @ocaml.doc("<p>The monthly cost of your reservation. It's amortized over the reservation
            period.</p>")
  @as("AmortizedRecurringFee")
  amortizedRecurringFee: option<amortizedRecurringFee>,
  @ocaml.doc("<p>The upfront cost of your reservation. It's amortized over the reservation
            period.</p>")
  @as("AmortizedUpfrontFee")
  amortizedUpfrontFee: option<amortizedUpfrontFee>,
  @ocaml.doc("<p>How much you might save if you use your entire reservation.</p>")
  @as("TotalPotentialRISavings")
  totalPotentialRISavings: option<totalPotentialRISavings>,
  @ocaml.doc("<p>How much you saved due to purchasing and utilizing reservation. Amazon Web Services
            calculates this by subtracting <code>TotalAmortizedFee</code> from
                <code>OnDemandCostOfRIHoursUsed</code>.</p>")
  @as("NetRISavings")
  netRISavings: option<netRISavings>,
  @ocaml.doc("<p>How much your reservation costs if charged On-Demand rates.</p>")
  @as("OnDemandCostOfRIHoursUsed")
  onDemandCostOfRIHoursUsed: option<onDemandCostOfRIHoursUsed>,
  @ocaml.doc("<p>The number of Amazon EC2 reservation hours that you didn't use. It's converted to
            normalized units. Normalized units are available only for Amazon EC2 usage after
            November 11, 2017.</p>")
  @as("UnusedUnits")
  unusedUnits: option<unusedUnits>,
  @ocaml.doc("<p>The number of reservation hours that you didn't use.</p>") @as("UnusedHours")
  unusedHours: option<unusedHours>,
  @ocaml.doc("<p>The total number of Amazon EC2 reservation hours that you used. It's converted to
            normalized units. Normalized units are available only for Amazon EC2 usage after
            November 11, 2017.</p>")
  @as("TotalActualUnits")
  totalActualUnits: option<totalActualUnits>,
  @ocaml.doc("<p>The total number of reservation hours that you used.</p>") @as("TotalActualHours")
  totalActualHours: option<totalActualHours>,
  @ocaml.doc("<p>The number of Amazon EC2 reservation hours that you purchased. It's converted to
            normalized units. Normalized units are available only for Amazon EC2 usage after
            November 11, 2017.</p>")
  @as("PurchasedUnits")
  purchasedUnits: option<purchasedUnits>,
  @ocaml.doc("<p>How many reservation hours that you purchased.</p>") @as("PurchasedHours")
  purchasedHours: option<purchasedHours>,
  @ocaml.doc("<p>The percentage of Amazon EC2 reservation time that you used. It's converted to
            normalized units. Normalized units are available only for Amazon EC2 usage after
            November 11, 2017.</p>")
  @as("UtilizationPercentageInUnits")
  utilizationPercentageInUnits: option<utilizationPercentageInUnits>,
  @ocaml.doc("<p>The percentage of reservation time that you used.</p>")
  @as("UtilizationPercentage")
  utilizationPercentage: option<utilizationPercentage>,
}
@ocaml.doc("<p>Details about the Amazon Redshift instances that Amazon Web Services recommends that
            you purchase.</p>")
type redshiftInstanceDetails = {
  @ocaml.doc("<p>Determines whether the recommended reservation is size flexible.</p>")
  @as("SizeFlexEligible")
  sizeFlexEligible: option<genericBoolean>,
  @ocaml.doc("<p>Determines whether the recommendation is for a current-generation instance.</p>")
  @as("CurrentGeneration")
  currentGeneration: option<genericBoolean>,
  @ocaml.doc("<p>The Amazon Web Services Region of the recommended reservation.</p>") @as("Region")
  region: option<genericString>,
  @ocaml.doc("<p>The type of node that Amazon Web Services recommends.</p>") @as("NodeType")
  nodeType: option<genericString>,
  @ocaml.doc("<p>The instance family of the recommended reservation.</p>") @as("Family")
  family: option<genericString>,
}
@ocaml.doc("<p>Details about the Amazon RDS instances that Amazon Web Services recommends that you
            purchase.</p>")
type rdsinstanceDetails = {
  @ocaml.doc("<p>Determines whether the recommended reservation is size flexible.</p>")
  @as("SizeFlexEligible")
  sizeFlexEligible: option<genericBoolean>,
  @ocaml.doc("<p>Determines whether the recommendation is for a current-generation instance. </p>")
  @as("CurrentGeneration")
  currentGeneration: option<genericBoolean>,
  @ocaml.doc("<p>The license model that the recommended reservation supports.</p>")
  @as("LicenseModel")
  licenseModel: option<genericString>,
  @ocaml.doc("<p>Determines whether the recommendation is for a reservation in a single Availability
            Zone or a reservation with a backup in a second Availability Zone.</p>")
  @as("DeploymentOption")
  deploymentOption: option<genericString>,
  @ocaml.doc("<p>The database edition that the recommended reservation supports.</p>")
  @as("DatabaseEdition")
  databaseEdition: option<genericString>,
  @ocaml.doc("<p>The database engine that the recommended reservation supports.</p>")
  @as("DatabaseEngine")
  databaseEngine: option<genericString>,
  @ocaml.doc("<p>The Amazon Web Services Region of the recommended reservation.</p>") @as("Region")
  region: option<genericString>,
  @ocaml.doc("<p>The type of instance that Amazon Web Services recommends.</p>") @as("InstanceType")
  instanceType: option<genericString>,
  @ocaml.doc("<p>The instance family of the recommended reservation.</p>") @as("Family")
  family: option<genericString>,
}
type platformDifferences = array<platformDifference>
@ocaml.doc("<p> The network field that contains a list of network metrics that are associated with
            the current instance. </p>")
type networkResourceUtilization = {
  @ocaml.doc("<p> The network outgress packets that are measured in packets per second. </p>")
  @as("NetworkPacketsOutPerSecond")
  networkPacketsOutPerSecond: option<genericString>,
  @ocaml.doc("<p> The network ingress packets that are measured in packets per second. </p>")
  @as("NetworkPacketsInPerSecond")
  networkPacketsInPerSecond: option<genericString>,
  @ocaml.doc("<p> The network outbound throughput utilization measured in Bytes per second. </p>")
  @as("NetworkOutBytesPerSecond")
  networkOutBytesPerSecond: option<genericString>,
  @ocaml.doc("<p> The network inbound throughput utilization measured in Bytes per second. </p>")
  @as("NetworkInBytesPerSecond")
  networkInBytesPerSecond: option<genericString>,
}
type monitorArnList = array<arn>
@ocaml.doc("<p>The aggregated value for a metric.</p>")
type metricValue = {
  @ocaml.doc("<p>The unit that the metric is given in.</p>") @as("Unit") unit_: option<metricUnit>,
  @ocaml.doc("<p>The actual number that represents the metric.</p>") @as("Amount")
  amount: option<metricAmount>,
}
type metricNames = array<metricName>
type matchOptions = array<matchOption>
type keys = array<key>
@ocaml.doc("<p>The dollar value of the anomaly. </p>")
type impact = {
  @ocaml.doc("<p>The cumulative dollar value that's observed for an anomaly. </p>")
  @as("TotalImpact")
  totalImpact: option<genericDouble>,
  @ocaml.doc("<p>The maximum dollar value that's observed for an anomaly. </p>") @as("MaxImpact")
  maxImpact: genericDouble,
}
@ocaml.doc("<p>Represents a group when you specify a group by criteria or in the response to a query
            with a specific grouping.</p>")
type groupDefinition = {
  @ocaml.doc("<p>The string that represents a key for a specified group.</p>") @as("Key")
  key: option<groupDefinitionKey>,
  @ocaml.doc("<p>The string that represents the type of group.</p>") @as("Type")
  type_: option<groupDefinitionType>,
}
type findingReasonCodes = array<findingReasonCode>
@ocaml.doc("<p>Details about the Amazon ElastiCache instances that Amazon Web Services recommends that
            you purchase.</p>")
type elastiCacheInstanceDetails = {
  @ocaml.doc("<p>Determines whether the recommended reservation is size flexible.</p>")
  @as("SizeFlexEligible")
  sizeFlexEligible: option<genericBoolean>,
  @ocaml.doc("<p>Determines whether the recommendation is for a current generation instance.</p>")
  @as("CurrentGeneration")
  currentGeneration: option<genericBoolean>,
  @ocaml.doc("<p>The description of the recommended reservation.</p>") @as("ProductDescription")
  productDescription: option<genericString>,
  @ocaml.doc("<p>The Amazon Web Services Region of the recommended reservation.</p>") @as("Region")
  region: option<genericString>,
  @ocaml.doc("<p>The type of node that Amazon Web Services recommends.</p>") @as("NodeType")
  nodeType: option<genericString>,
  @ocaml.doc("<p>The instance family of the recommended reservation.</p>") @as("Family")
  family: option<genericString>,
}
@ocaml.doc("<p>Details about the Amazon OpenSearch Service instances that Amazon Web Services recommends that you
            purchase.</p>")
type esinstanceDetails = {
  @ocaml.doc("<p>Determines whether the recommended reservation is size flexible.</p>")
  @as("SizeFlexEligible")
  sizeFlexEligible: option<genericBoolean>,
  @ocaml.doc("<p>Determines whether the recommendation is for a current-generation instance.</p>")
  @as("CurrentGeneration")
  currentGeneration: option<genericBoolean>,
  @ocaml.doc("<p>The Amazon Web Services Region of the recommended reservation.</p>") @as("Region")
  region: option<genericString>,
  @ocaml.doc("<p>The size of instance that Amazon Web Services recommends.</p>") @as("InstanceSize")
  instanceSize: option<genericString>,
  @ocaml.doc("<p>The class of instance that Amazon Web Services recommends.</p>")
  @as("InstanceClass")
  instanceClass: option<genericString>,
}
@ocaml.doc("<p>The Amazon EC2 hardware specifications that you want Amazon Web Services to provide
            recommendations for.</p>")
type ec2Specification = {
  @ocaml.doc("<p>Indicates whether you want a recommendation for standard or convertible
            reservations.</p>")
  @as("OfferingClass")
  offeringClass: option<offeringClass>,
}
@ocaml.doc("<p>Details on the Amazon EC2 Resource.</p>")
type ec2ResourceDetails = {
  @ocaml.doc("<p> The number of VCPU cores in the Amazon Web Services instance type.</p>")
  @as("Vcpu")
  vcpu: option<genericString>,
  @ocaml.doc("<p>The disk storage of the Amazon Web Services instance. This doesn't include EBS
            storage.</p>")
  @as("Storage")
  storage: option<genericString>,
  @ocaml.doc("<p>The network performance capacity of the Amazon Web Services instance.</p>")
  @as("NetworkPerformance")
  networkPerformance: option<genericString>,
  @ocaml.doc("<p>The memory capacity of the Amazon Web Services instance.</p>") @as("Memory")
  memory: option<genericString>,
  @ocaml.doc("<p>The SKU of the product.</p>") @as("Sku") sku: option<genericString>,
  @ocaml.doc("<p>The Amazon Web Services Region of the instance.</p>") @as("Region")
  region: option<genericString>,
  @ocaml.doc("<p>The platform of the Amazon Web Services instance. The platform is the specific
            combination of operating system, license model, and software on an instance.</p>")
  @as("Platform")
  platform: option<genericString>,
  @ocaml.doc("<p>The type of Amazon Web Services instance.</p>") @as("InstanceType")
  instanceType: option<genericString>,
  @ocaml.doc("<p>The hourly public On-Demand rate for the instance type.</p>")
  @as("HourlyOnDemandRate")
  hourlyOnDemandRate: option<genericString>,
}
@ocaml.doc("<p>Details about the Amazon EC2 instances that Amazon Web Services recommends that you
            purchase.</p>")
type ec2InstanceDetails = {
  @ocaml.doc("<p>Determines whether the recommended reservation is size flexible.</p>")
  @as("SizeFlexEligible")
  sizeFlexEligible: option<genericBoolean>,
  @ocaml.doc("<p>Determines whether the recommendation is for a current-generation instance. </p>")
  @as("CurrentGeneration")
  currentGeneration: option<genericBoolean>,
  @ocaml.doc("<p>Determines whether the recommended reservation is dedicated or shared.</p>")
  @as("Tenancy")
  tenancy: option<genericString>,
  @ocaml.doc("<p>The platform of the recommended reservation. The platform is the specific combination
            of operating system, license model, and software on an instance.</p>")
  @as("Platform")
  platform: option<genericString>,
  @ocaml.doc("<p>The Availability Zone of the recommended reservation.</p>") @as("AvailabilityZone")
  availabilityZone: option<genericString>,
  @ocaml.doc("<p>The Amazon Web Services Region of the recommended reservation.</p>") @as("Region")
  region: option<genericString>,
  @ocaml.doc("<p>The type of instance that Amazon Web Services recommends.</p>") @as("InstanceType")
  instanceType: option<genericString>,
  @ocaml.doc("<p>The instance family of the recommended reservation.</p>") @as("Family")
  family: option<genericString>,
}
@ocaml.doc("<p>The EBS field that contains a list of EBS metrics that are associated with the current
            instance. </p>")
type ebsresourceUtilization = {
  @ocaml.doc("<p>The maximum size of write operations per second. </p>")
  @as("EbsWriteBytesPerSecond")
  ebsWriteBytesPerSecond: option<genericString>,
  @ocaml.doc("<p>The maximum size of read operations per second </p>") @as("EbsReadBytesPerSecond")
  ebsReadBytesPerSecond: option<genericString>,
  @ocaml.doc("<p>The maximum number of write operations per second. </p>")
  @as("EbsWriteOpsPerSecond")
  ebsWriteOpsPerSecond: option<genericString>,
  @ocaml.doc("<p>The maximum number of read operations per second. </p>") @as("EbsReadOpsPerSecond")
  ebsReadOpsPerSecond: option<genericString>,
}
@ocaml.doc("<p> The field that contains a list of disk (local storage) metrics that are associated
            with the current instance. </p>")
type diskResourceUtilization = {
  @ocaml.doc("<p> The maximum write throughput operations per second. </p>")
  @as("DiskWriteBytesPerSecond")
  diskWriteBytesPerSecond: option<genericString>,
  @ocaml.doc("<p> The maximum read throughput operations per second. </p>")
  @as("DiskReadBytesPerSecond")
  diskReadBytesPerSecond: option<genericString>,
  @ocaml.doc("<p> The maximum number of write operations per second. </p>")
  @as("DiskWriteOpsPerSecond")
  diskWriteOpsPerSecond: option<genericString>,
  @ocaml.doc("<p> The maximum number of read operations per second. </p>")
  @as("DiskReadOpsPerSecond")
  diskReadOpsPerSecond: option<genericString>,
}
@ocaml.doc("<p>The time period of the request. </p>")
type dateInterval = {
  @ocaml.doc("<p>The end of the time period. The end date is exclusive. For example, if
                <code>end</code> is <code>2017-05-01</code>, Amazon Web Services retrieves cost and
            usage data from the start date up to, but not including, <code>2017-05-01</code>.</p>")
  @as("End")
  end: yearMonthDay,
  @ocaml.doc("<p>The beginning of the time period. The start date is inclusive. For example, if
                <code>start</code> is <code>2017-01-01</code>, Amazon Web Services retrieves cost and
            usage data starting at <code>2017-01-01</code> up to the end date. The start date must
            be equal to or no later than the current date to avoid a validation error.</p>")
  @as("Start")
  start: yearMonthDay,
}
@ocaml.doc("<p>The amount of instance usage, in normalized units. You can use normalized units to see
            your EC2 usage for multiple sizes of instances in a uniform way. For example, suppose
            that you run an xlarge instance and a 2xlarge instance. If you run both instances for
            the same amount of time, the 2xlarge instance uses twice as much of your reservation as
            the xlarge instance, even though both instances show only one instance-hour. When you
            use normalized units instead of instance-hours, the xlarge instance used 8 normalized
            units, and the 2xlarge instance used 16 normalized units.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html\">Modifying Reserved Instances</a>
            in the <i>Amazon Elastic Compute Cloud User Guide for Linux
            Instances</i>.</p>")
type coverageNormalizedUnits = {
  @ocaml.doc("<p>The percentage of your used instance normalized units that a reservation
            covers.</p>")
  @as("CoverageNormalizedUnitsPercentage")
  coverageNormalizedUnitsPercentage: option<coverageNormalizedUnitsPercentage>,
  @ocaml.doc("<p>The total number of normalized units that you used.</p>")
  @as("TotalRunningNormalizedUnits")
  totalRunningNormalizedUnits: option<totalRunningNormalizedUnits>,
  @ocaml.doc("<p>The number of normalized units that a reservation covers.</p>")
  @as("ReservedNormalizedUnits")
  reservedNormalizedUnits: option<reservedNormalizedUnits>,
  @ocaml.doc("<p>The number of normalized units that are covered by On-Demand Instances instead of a
            reservation.</p>")
  @as("OnDemandNormalizedUnits")
  onDemandNormalizedUnits: option<onDemandNormalizedUnits>,
}
@ocaml.doc("<p>How long a running instance either used a reservation or was On-Demand.</p>")
type coverageHours = {
  @ocaml.doc("<p>The percentage of instance hours that a reservation covered.</p>")
  @as("CoverageHoursPercentage")
  coverageHoursPercentage: option<coverageHoursPercentage>,
  @ocaml.doc("<p>The total instance usage, in hours.</p>") @as("TotalRunningHours")
  totalRunningHours: option<totalRunningHours>,
  @ocaml.doc("<p>The number of instance running hours that reservations covered.</p>")
  @as("ReservedHours")
  reservedHours: option<reservedHours>,
  @ocaml.doc("<p>The number of instance running hours that On-Demand Instances covered.</p>")
  @as("OnDemandHours")
  onDemandHours: option<onDemandHours>,
}
@ocaml.doc("<p>How much it costs to run an instance.</p>")
type coverageCost = {
  @ocaml.doc("<p>How much an On-Demand Instance costs.</p>") @as("OnDemandCost")
  onDemandCost: option<onDemandCost>,
}
type costCategoryValuesList = array<costCategoryValue>
type costCategorySplitChargeRuleTargetsList = array<genericString>
type costCategorySplitChargeRuleParameterValuesList = array<genericString>
@ocaml.doc("<p>The list of processing statuses for Cost Management products for a specific cost
            category. </p>")
type costCategoryProcessingStatus = {
  @ocaml.doc("<p>The process status for a specific cost category. </p>") @as("Status")
  status: option<costCategoryStatus>,
  @ocaml.doc("<p>The Cost Management product name of the applied status. </p>") @as("Component")
  component: option<costCategoryStatusComponent>,
}
type costCategoryNamesList = array<costCategoryName>
@ocaml.doc("<p>When creating or updating a cost category, you can define the
                <code>CostCategoryRule</code> rule type as <code>INHERITED_VALUE</code>. This rule
            type adds the flexibility of defining a rule that dynamically inherits the cost category
            value from the dimension value defined by
                <code>CostCategoryInheritedValueDimension</code>. For example, if you want to
            dynamically group costs that are based on the value of a specific tag key, first choose
            an inherited value rule type, then choose the tag dimension and specify the tag key to
            use.</p>")
type costCategoryInheritedValueDimension = {
  @ocaml.doc("<p>The key to extract cost category values.</p>") @as("DimensionKey")
  dimensionKey: option<genericString>,
  @ocaml.doc("<p>The name of the dimension that's used to group costs.</p>
        <p>If you specify <code>LINKED_ACCOUNT_NAME</code>, the cost category value is based on
            account name. If you specify <code>TAG</code>, the cost category value will be based on
            the value of the specified tag key.</p>")
  @as("DimensionName")
  dimensionName: option<costCategoryInheritedValueDimensionName>,
}
type attributes = Js.Dict.t<attributeValue>
@ocaml.doc("<p>Quantifies the anomaly. The higher score means that it's more anomalous. </p>")
type anomalyScore = {
  @ocaml.doc("<p>The last observed score. </p>") @as("CurrentScore") currentScore: genericDouble,
  @ocaml.doc(
    "<p>The maximum score that's observed during the <code>AnomalyDateInterval</code>. </p>"
  )
  @as("MaxScore")
  maxScore: genericDouble,
}
@ocaml.doc("<p>The time period for an anomaly. </p>")
type anomalyDateInterval = {
  @ocaml.doc("<p>The last date an anomaly was observed. </p>") @as("EndDate")
  endDate: option<yearMonthDay>,
  @ocaml.doc("<p>The first date an anomaly was observed. </p>") @as("StartDate")
  startDate: yearMonthDay,
}
@ocaml.doc("<p>The values that are available for a tag.</p>
        <p>If <code>Values</code> and <code>Key</code> aren't specified, the <code>ABSENT</code>
            <code>MatchOption</code> is applied to all tags. That is, it's filtered on resources
            with no tags.</p>
        <p>If <code>Values</code> is provided and <code>Key</code> isn't specified, the
                <code>ABSENT</code>
            <code>MatchOption</code> is applied to the tag <code>Key</code> only. That is, it's
            filtered on resources without the given tag key.</p>")
type tagValues = {
  @ocaml.doc("<p>The match options that you can use to filter your results. <code>MatchOptions</code>
            is only applicable for actions related to Cost Category. The default values for
                <code>MatchOptions</code> are <code>EQUALS</code> and
            <code>CASE_SENSITIVE</code>.</p>")
  @as("MatchOptions")
  matchOptions: option<matchOptions>,
  @ocaml.doc("<p>The specific value of the tag.</p>") @as("Values") values: option<values>,
  @ocaml.doc("<p>The key for the tag.</p>") @as("Key") key: option<tagKey>,
}
type subscribers = array<subscriber>
type sortDefinitions = array<sortDefinition>
@ocaml.doc("<p>Hardware specifications for the service that you want recommendations for.</p>")
type serviceSpecification = {
  @ocaml.doc("<p>The Amazon EC2 hardware specifications that you want Amazon Web Services to provide
            recommendations for.</p>")
  @as("EC2Specification")
  ec2Specification: option<ec2Specification>,
}
@ocaml.doc("<p>A single daily or monthly Savings Plans utilization rate, and details for your
            account. A management account in an organization have access to member accounts. You can
            use <code>GetDimensionValues</code> to determine the possible dimension values. </p>")
type savingsPlansUtilizationDetail = {
  @ocaml.doc("<p>The total amortized commitment for a Savings Plans. Includes the sum of the upfront
            and recurring Savings Plans fees.</p>")
  @as("AmortizedCommitment")
  amortizedCommitment: option<savingsPlansAmortizedCommitment>,
  @ocaml.doc("<p>The amount saved by using existing Savings Plans. Savings returns both net savings
            from savings plans as well as the <code>onDemandCostEquivalent</code> of the Savings
            Plans when considering the utilization rate.</p>")
  @as("Savings")
  savings: option<savingsPlansSavings>,
  @ocaml.doc("<p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads
            that are Savings Plans eligible.</p>")
  @as("Utilization")
  utilization: option<savingsPlansUtilization>,
  @ocaml.doc("<p>The attribute that applies to a specific <code>Dimension</code>.</p>")
  @as("Attributes")
  attributes: option<attributes>,
  @ocaml.doc("<p>The unique Amazon Resource Name (ARN) for a particular Savings Plan.</p>")
  @as("SavingsPlanArn")
  savingsPlanArn: option<savingsPlanArn>,
}
@ocaml.doc("<p>The amount of Savings Plans utilization, in hours.</p>")
type savingsPlansUtilizationByTime = {
  @ocaml.doc("<p>The total amortized commitment for a Savings Plans. This includes the sum of the
            upfront and recurring Savings Plans fees.</p>")
  @as("AmortizedCommitment")
  amortizedCommitment: option<savingsPlansAmortizedCommitment>,
  @ocaml.doc("<p>The amount saved by using existing Savings Plans. Savings returns both net savings
            from Savings Plans as well as the <code>onDemandCostEquivalent</code> of the Savings
            Plans when considering the utilization rate.</p>")
  @as("Savings")
  savings: option<savingsPlansSavings>,
  @ocaml.doc("<p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads
            that are Savings Plans eligible.</p>")
  @as("Utilization")
  utilization: savingsPlansUtilization,
  @as("TimePeriod") timePeriod: dateInterval,
}
@ocaml.doc("<p>The aggregated utilization metrics for your Savings Plans usage.</p>")
type savingsPlansUtilizationAggregates = {
  @ocaml.doc("<p>The total amortized commitment for a Savings Plans. This includes the sum of the
            upfront and recurring Savings Plans fees.</p>")
  @as("AmortizedCommitment")
  amortizedCommitment: option<savingsPlansAmortizedCommitment>,
  @ocaml.doc("<p>The amount saved by using existing Savings Plans. Savings returns both net savings
            from Savings Plans, as well as the <code>onDemandCostEquivalent</code> of the Savings
            Plans when considering the utilization rate.</p>")
  @as("Savings")
  savings: option<savingsPlansSavings>,
  @ocaml.doc("<p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads
            that are Savings Plans eligible.</p>")
  @as("Utilization")
  utilization: savingsPlansUtilization,
}
@ocaml.doc("<p>Details for your recommended Savings Plans.</p>")
type savingsPlansPurchaseRecommendationDetail = {
  @ocaml.doc("<p>The average value of hourly On-Demand spend over the lookback period of the applicable
            usage type.</p>")
  @as("CurrentAverageHourlyOnDemandSpend")
  currentAverageHourlyOnDemandSpend: option<genericString>,
  @ocaml.doc("<p>The highest value of hourly On-Demand spend over the lookback period of the applicable
            usage type.</p>")
  @as("CurrentMaximumHourlyOnDemandSpend")
  currentMaximumHourlyOnDemandSpend: option<genericString>,
  @ocaml.doc("<p>The lowest value of hourly On-Demand spend over the lookback period of the applicable
            usage type.</p>")
  @as("CurrentMinimumHourlyOnDemandSpend")
  currentMinimumHourlyOnDemandSpend: option<genericString>,
  @ocaml.doc("<p>The estimated monthly savings amount based on the recommended Savings Plans.</p>")
  @as("EstimatedMonthlySavingsAmount")
  estimatedMonthlySavingsAmount: option<genericString>,
  @ocaml.doc("<p>The estimated utilization of the recommended Savings Plans.</p>")
  @as("EstimatedAverageUtilization")
  estimatedAverageUtilization: option<genericString>,
  @ocaml.doc("<p>The recommended hourly commitment level for the Savings Plans type and the
            configuration that's based on the usage during the lookback period.</p>")
  @as("HourlyCommitmentToPurchase")
  hourlyCommitmentToPurchase: option<genericString>,
  @ocaml.doc("<p>The estimated savings percentage relative to the total cost of applicable On-Demand
            usage over the lookback period.</p>")
  @as("EstimatedSavingsPercentage")
  estimatedSavingsPercentage: option<genericString>,
  @ocaml.doc("<p>The estimated savings amount that's based on the recommended Savings Plans over the
            length of the lookback period.</p>")
  @as("EstimatedSavingsAmount")
  estimatedSavingsAmount: option<genericString>,
  @ocaml.doc("<p> The estimated On-Demand costs you would expect with no additional commitment, based
            on your usage of the selected time period and the Savings Plans you own. </p>")
  @as("EstimatedOnDemandCostWithCurrentCommitment")
  estimatedOnDemandCostWithCurrentCommitment: option<genericString>,
  @ocaml.doc("<p>The remaining On-Demand cost estimated to not be covered by the recommended Savings
            Plans, over the length of the lookback period.</p>")
  @as("EstimatedOnDemandCost")
  estimatedOnDemandCost: option<genericString>,
  @ocaml.doc("<p>The cost of the recommended Savings Plans over the length of the lookback
            period.</p>")
  @as("EstimatedSPCost")
  estimatedSPCost: option<genericString>,
  @ocaml.doc("<p>The currency code that Amazon Web Services used to generate the recommendations and
            present potential savings.</p>")
  @as("CurrencyCode")
  currencyCode: option<genericString>,
  @ocaml.doc("<p>The estimated return on investment that's based on the recommended Savings Plans that
            you purchased. This is calculated as <code>estimatedSavingsAmount</code>/
                <code>estimatedSPCost</code>*100.</p>")
  @as("EstimatedROI")
  estimatedROI: option<genericString>,
  @ocaml.doc("<p>The upfront cost of the recommended Savings Plans, based on the selected payment
            option.</p>")
  @as("UpfrontCost")
  upfrontCost: option<genericString>,
  @ocaml.doc("<p>The <code>AccountID</code> the recommendation is generated for.</p>")
  @as("AccountId")
  accountId: option<genericString>,
  @ocaml.doc("<p>Details for your recommended Savings Plans.</p>") @as("SavingsPlansDetails")
  savingsPlansDetails: option<savingsPlansDetails>,
}
@ocaml.doc("<p>The amount of Savings Plans eligible usage that is covered by Savings Plans. All
            calculations consider the On-Demand equivalent of your Savings Plans usage.</p>")
type savingsPlansCoverage = {
  @as("TimePeriod") timePeriod: option<dateInterval>,
  @ocaml.doc("<p>The amount of Savings Plans eligible usage that the Savings Plans covered.</p>")
  @as("Coverage")
  coverage: option<savingsPlansCoverageData>,
  @ocaml.doc("<p>The attribute that applies to a specific <code>Dimension</code>.</p>")
  @as("Attributes")
  attributes: option<attributes>,
}
type rootCauses = array<rootCause>
type resourceTagList = array<resourceTag>
@ocaml.doc("<p>Details on the resource.</p>")
type resourceDetails = {
  @ocaml.doc("<p>Details on the Amazon EC2 resource.</p>") @as("EC2ResourceDetails")
  ec2ResourceDetails: option<ec2ResourceDetails>,
}
@ocaml.doc("<p>A group of reservations that share a set of attributes.</p>")
type reservationUtilizationGroup = {
  @ocaml.doc("<p>How much you used this group of reservations.</p>") @as("Utilization")
  utilization: option<reservationAggregates>,
  @ocaml.doc("<p>The attributes for this group of reservations.</p>") @as("Attributes")
  attributes: option<attributes>,
  @ocaml.doc("<p>The value of a specific reservation attribute.</p>") @as("Value")
  value: option<reservationGroupValue>,
  @ocaml.doc("<p>The key for a specific reservation attribute.</p>") @as("Key")
  key: option<reservationGroupKey>,
}
type metrics = Js.Dict.t<metricValue>
@ocaml.doc("<p>Details about the instances that Amazon Web Services recommends that you
            purchase.</p>")
type instanceDetails = {
  @ocaml.doc(
    "<p>The Amazon OpenSearch Service instances that Amazon Web Services recommends that you purchase.</p>"
  )
  @as("ESInstanceDetails")
  esinstanceDetails: option<esinstanceDetails>,
  @ocaml.doc(
    "<p>The ElastiCache instances that Amazon Web Services recommends that you purchase.</p>"
  )
  @as("ElastiCacheInstanceDetails")
  elastiCacheInstanceDetails: option<elastiCacheInstanceDetails>,
  @ocaml.doc("<p>The Amazon Redshift instances that Amazon Web Services recommends that you
            purchase.</p>")
  @as("RedshiftInstanceDetails")
  redshiftInstanceDetails: option<redshiftInstanceDetails>,
  @ocaml.doc(
    "<p>The Amazon RDS instances that Amazon Web Services recommends that you purchase.</p>"
  )
  @as("RDSInstanceDetails")
  rdsinstanceDetails: option<rdsinstanceDetails>,
  @ocaml.doc(
    "<p>The Amazon EC2 instances that Amazon Web Services recommends that you purchase.</p>"
  )
  @as("EC2InstanceDetails")
  ec2InstanceDetails: option<ec2InstanceDetails>,
}
type groupDefinitions = array<groupDefinition>
@ocaml.doc("<p>The forecast that's created for your query.</p>")
type forecastResult = {
  @ocaml.doc("<p>The upper limit for the prediction interval. </p>")
  @as("PredictionIntervalUpperBound")
  predictionIntervalUpperBound: option<genericString>,
  @ocaml.doc("<p>The lower limit for the prediction interval. </p>")
  @as("PredictionIntervalLowerBound")
  predictionIntervalLowerBound: option<genericString>,
  @ocaml.doc("<p>The mean value of the forecast.</p>") @as("MeanValue")
  meanValue: option<genericString>,
  @ocaml.doc("<p>The period of time that the forecast covers.</p>") @as("TimePeriod")
  timePeriod: option<dateInterval>,
}
@ocaml.doc("<p>Utilization metrics of the instance. </p>")
type ec2ResourceUtilization = {
  @ocaml.doc("<p> The network field that contains a list of network metrics that are associated with
            the current instance. </p>")
  @as("NetworkResourceUtilization")
  networkResourceUtilization: option<networkResourceUtilization>,
  @ocaml.doc("<p> The field that contains a list of disk (local storage) metrics that are associated
            with the current instance. </p>")
  @as("DiskResourceUtilization")
  diskResourceUtilization: option<diskResourceUtilization>,
  @ocaml.doc("<p>The EBS field that contains a list of EBS metrics that are associated with the current
            instance. </p>")
  @as("EBSResourceUtilization")
  ebsresourceUtilization: option<ebsresourceUtilization>,
  @ocaml.doc("<p> The maximum observed or expected storage utilization of the instance. This doesn't
            include EBS storage.</p>")
  @as("MaxStorageUtilizationPercentage")
  maxStorageUtilizationPercentage: option<genericString>,
  @ocaml.doc("<p> The maximum observed or expected memory utilization of the instance.</p>")
  @as("MaxMemoryUtilizationPercentage")
  maxMemoryUtilizationPercentage: option<genericString>,
  @ocaml.doc("<p> The maximum observed or expected CPU utilization of the instance.</p>")
  @as("MaxCpuUtilizationPercentage")
  maxCpuUtilizationPercentage: option<genericString>,
}
@ocaml.doc("<p>The metadata of a specific type that you can use to filter and group your results. You
            can use <code>GetDimensionValues</code> to find specific values.</p>")
type dimensionValuesWithAttributes = {
  @ocaml.doc("<p>The attribute that applies to a specific <code>Dimension</code>.</p>")
  @as("Attributes")
  attributes: option<attributes>,
  @ocaml.doc("<p>The value of a dimension with a specific attribute.</p>") @as("Value")
  value: option<value>,
}
@ocaml.doc("<p>The metadata that you can use to filter and group your results. You can use
                <code>GetDimensionValues</code> to find specific values.</p>")
type dimensionValues = {
  @ocaml.doc("<p>The match options that you can use to filter your results. <code>MatchOptions</code>
            is only applicable for actions related to Cost Category. The default values for
                <code>MatchOptions</code> are <code>EQUALS</code> and
            <code>CASE_SENSITIVE</code>.</p>")
  @as("MatchOptions")
  matchOptions: option<matchOptions>,
  @ocaml.doc("<p>The metadata values that you can use to filter and group your results. You can use
                <code>GetDimensionValues</code> to find specific values.</p>")
  @as("Values")
  values: option<values>,
  @ocaml.doc("<p>The names of the metadata types that you can use to filter and group your results. For
            example, <code>AZ</code> returns a list of Availability Zones.</p>")
  @as("Key")
  key: option<dimension>,
}
@ocaml.doc("<p>The amount of instance usage that a reservation covered.</p>")
type coverage = {
  @ocaml.doc("<p>The amount of cost that the reservation covered.</p>") @as("CoverageCost")
  coverageCost: option<coverageCost>,
  @ocaml.doc(
    "<p>The amount of instance usage that the reservation covered, in normalized units.</p>"
  )
  @as("CoverageNormalizedUnits")
  coverageNormalizedUnits: option<coverageNormalizedUnits>,
  @ocaml.doc("<p>The amount of instance usage that the reservation covered, in hours.</p>")
  @as("CoverageHours")
  coverageHours: option<coverageHours>,
}
@ocaml.doc("<p>The Cost Categories values used for filtering the costs.</p>
        <p>If <code>Values</code> and <code>Key</code> are not specified, the <code>ABSENT</code>
            <code>MatchOption</code> is applied to all Cost Categories. That is, it filters on
            resources that aren't mapped to any Cost Categories.</p>
        <p>If <code>Values</code> is provided and <code>Key</code> isn't specified, the
                <code>ABSENT</code>
            <code>MatchOption</code> is applied to the Cost Categories <code>Key</code> only. That
            is, it filters on resources without the given Cost Categories key.</p>")
type costCategoryValues = {
  @ocaml.doc("<p>The match options that you can use to filter your results. MatchOptions is only
            applicable for actions related to cost category. The default values for
                <code>MatchOptions</code> is <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.
        </p>")
  @as("MatchOptions")
  matchOptions: option<matchOptions>,
  @ocaml.doc("<p>The specific value of the Cost Category.</p>") @as("Values")
  values: option<values>,
  @as("Key") key: option<costCategoryName>,
}
@ocaml.doc("<p>The parameters for a split charge method. </p>")
type costCategorySplitChargeRuleParameter = {
  @ocaml.doc("<p>The parameter values. </p>") @as("Values")
  values: costCategorySplitChargeRuleParameterValuesList,
  @ocaml.doc("<p>The parameter type. </p>") @as("Type")
  type_: costCategorySplitChargeRuleParameterType,
}
type costCategoryProcessingStatusList = array<costCategoryProcessingStatus>
type tagValuesList = array<tagValues>
type savingsPlansUtilizationsByTime = array<savingsPlansUtilizationByTime>
type savingsPlansUtilizationDetails = array<savingsPlansUtilizationDetail>
type savingsPlansPurchaseRecommendationDetailList = array<savingsPlansPurchaseRecommendationDetail>
type savingsPlansCoverages = array<savingsPlansCoverage>
@ocaml.doc("<p>Resource utilization of current resource. </p>")
type resourceUtilization = {
  @ocaml.doc("<p>The utilization of current Amazon EC2 instance. </p>")
  @as("EC2ResourceUtilization")
  ec2ResourceUtilization: option<ec2ResourceUtilization>,
}
type reservationUtilizationGroups = array<reservationUtilizationGroup>
@ocaml.doc("<p>Details about your recommended reservation purchase.</p>")
type reservationPurchaseRecommendationDetail = {
  @ocaml.doc("<p>How much purchasing this instance costs you on a monthly basis.</p>")
  @as("RecurringStandardMonthlyCost")
  recurringStandardMonthlyCost: option<genericString>,
  @ocaml.doc("<p>How much purchasing this instance costs you upfront.</p>") @as("UpfrontCost")
  upfrontCost: option<genericString>,
  @ocaml.doc("<p>How much Amazon Web Services estimates that you would have spent for all usage during
            the specified historical period if you had a reservation.</p>")
  @as("EstimatedReservationCostForLookbackPeriod")
  estimatedReservationCostForLookbackPeriod: option<genericString>,
  @ocaml.doc("<p>How much Amazon Web Services estimates that you spend on On-Demand Instances in a
            month.</p>")
  @as("EstimatedMonthlyOnDemandCost")
  estimatedMonthlyOnDemandCost: option<genericString>,
  @ocaml.doc("<p>How much Amazon Web Services estimates that this specific recommendation could save you
            in a month, as a percentage of your overall costs.</p>")
  @as("EstimatedMonthlySavingsPercentage")
  estimatedMonthlySavingsPercentage: option<genericString>,
  @ocaml.doc("<p>How much Amazon Web Services estimates that this specific recommendation could save you
            in a month.</p>")
  @as("EstimatedMonthlySavingsAmount")
  estimatedMonthlySavingsAmount: option<genericString>,
  @ocaml.doc("<p>The currency code that Amazon Web Services used to calculate the costs for this
            instance.</p>")
  @as("CurrencyCode")
  currencyCode: option<genericString>,
  @ocaml.doc("<p>How long Amazon Web Services estimates that it takes for this instance to start saving
            you money, in months.</p>")
  @as("EstimatedBreakEvenInMonths")
  estimatedBreakEvenInMonths: option<genericString>,
  @ocaml.doc("<p>The average utilization of your instances. Amazon Web Services uses this to calculate
            your recommended reservation purchases.</p>")
  @as("AverageUtilization")
  averageUtilization: option<genericString>,
  @ocaml.doc("<p>The average number of normalized units that you used in an hour during the historical
            period. Amazon Web Services uses this to calculate your recommended reservation
            purchases.</p>")
  @as("AverageNormalizedUnitsUsedPerHour")
  averageNormalizedUnitsUsedPerHour: option<genericString>,
  @ocaml.doc("<p>The average number of instances that you used in an hour during the historical period.
                Amazon Web Services uses this to calculate your recommended reservation
            purchases.</p>")
  @as("AverageNumberOfInstancesUsedPerHour")
  averageNumberOfInstancesUsedPerHour: option<genericString>,
  @ocaml.doc("<p>The maximum number of normalized units that you used in an hour during the historical
            period. Amazon Web Services uses this to calculate your recommended reservation
            purchases.</p>")
  @as("MaximumNormalizedUnitsUsedPerHour")
  maximumNormalizedUnitsUsedPerHour: option<genericString>,
  @ocaml.doc("<p>The maximum number of instances that you used in an hour during the historical period.
                Amazon Web Services uses this to calculate your recommended reservation
            purchases.</p>")
  @as("MaximumNumberOfInstancesUsedPerHour")
  maximumNumberOfInstancesUsedPerHour: option<genericString>,
  @ocaml.doc("<p>The minimum number of normalized units that you used in an hour during the historical
            period. Amazon Web Services uses this to calculate your recommended reservation
            purchases.</p>")
  @as("MinimumNormalizedUnitsUsedPerHour")
  minimumNormalizedUnitsUsedPerHour: option<genericString>,
  @ocaml.doc("<p>The minimum number of instances that you used in an hour during the historical period.
                Amazon Web Services uses this to calculate your recommended reservation
            purchases.</p>")
  @as("MinimumNumberOfInstancesUsedPerHour")
  minimumNumberOfInstancesUsedPerHour: option<genericString>,
  @ocaml.doc("<p>The number of normalized units that Amazon Web Services recommends that you
            purchase.</p>")
  @as("RecommendedNormalizedUnitsToPurchase")
  recommendedNormalizedUnitsToPurchase: option<genericString>,
  @ocaml.doc(
    "<p>The number of instances that Amazon Web Services recommends that you purchase.</p>"
  )
  @as("RecommendedNumberOfInstancesToPurchase")
  recommendedNumberOfInstancesToPurchase: option<genericString>,
  @ocaml.doc("<p>Details about the instances that Amazon Web Services recommends that you
            purchase.</p>")
  @as("InstanceDetails")
  instanceDetails: option<instanceDetails>,
  @ocaml.doc("<p>The account that this RI recommendation is for.</p>") @as("AccountId")
  accountId: option<genericString>,
}
@ocaml.doc("<p>A group of reservations that share a set of attributes.</p>")
type reservationCoverageGroup = {
  @ocaml.doc("<p>How much instance usage this group of reservations covered.</p>") @as("Coverage")
  coverage: option<coverage>,
  @ocaml.doc("<p>The attributes for this group of reservations.</p>") @as("Attributes")
  attributes: option<attributes>,
}
@ocaml.doc("<p>One level of grouped data in the results.</p>")
type group = {
  @ocaml.doc("<p>The metrics that are included in this group.</p>") @as("Metrics")
  metrics: option<metrics>,
  @ocaml.doc("<p>The keys that are included in this group.</p>") @as("Keys") keys: option<keys>,
}
type forecastResultsByTime = array<forecastResult>
type dimensionValuesWithAttributesList = array<dimensionValuesWithAttributes>
type costCategorySplitChargeRuleParametersList = array<costCategorySplitChargeRuleParameter>
@ocaml.doc("<p>A reference to a Cost Category containing only enough information to identify the Cost
            Category.</p>
        <p>You can use this information to retrieve the full Cost Category information using
                <code>DescribeCostCategory</code>.</p>")
type costCategoryReference = {
  @as("DefaultValue") defaultValue: option<costCategoryValue>,
  @ocaml.doc("<p>A list of unique cost category values in a specific cost category. </p>")
  @as("Values")
  values: option<costCategoryValuesList>,
  @ocaml.doc("<p>The list of processing statuses for Cost Management products for a specific cost
            category. </p>")
  @as("ProcessingStatus")
  processingStatus: option<costCategoryProcessingStatusList>,
  @ocaml.doc("<p>The number of rules that are associated with a specific Cost Category. </p>")
  @as("NumberOfRules")
  numberOfRules: option<nonNegativeInteger>,
  @ocaml.doc("<p>The Cost Category's effective end date.</p>") @as("EffectiveEnd")
  effectiveEnd: option<zonedDateTime>,
  @ocaml.doc("<p>The Cost Category's effective start date.</p>") @as("EffectiveStart")
  effectiveStart: option<zonedDateTime>,
  @as("Name") name: option<costCategoryName>,
  @ocaml.doc("<p>The unique identifier for your Cost Category. </p>") @as("CostCategoryArn")
  costCategoryArn: option<arn>,
}
@ocaml.doc("<p>The association between a monitor, threshold, and list of subscribers used to deliver
            notifications about anomalies detected by a monitor that exceeds a threshold. The
            content consists of the detailed metadata and the current status of the
                <code>AnomalySubscription</code> object. </p>")
type anomalySubscription = {
  @ocaml.doc("<p>The name for the subscription. </p>") @as("SubscriptionName")
  subscriptionName: genericString,
  @ocaml.doc("<p>The frequency that anomaly reports are sent over email. </p>") @as("Frequency")
  frequency: anomalySubscriptionFrequency,
  @ocaml.doc("<p>The dollar value that triggers a notification if the threshold is exceeded. </p>")
  @as("Threshold")
  threshold: nullableNonNegativeDouble,
  @ocaml.doc("<p>A list of subscribers to notify. </p>") @as("Subscribers")
  subscribers: subscribers,
  @ocaml.doc("<p>A list of cost anomaly monitors. </p>") @as("MonitorArnList")
  monitorArnList: monitorArnList,
  @ocaml.doc("<p>Your unique account identifier. </p>") @as("AccountId")
  accountId: option<genericString>,
  @ocaml.doc("<p>The <code>AnomalySubscription</code> Amazon Resource Name (ARN). </p>")
  @as("SubscriptionArn")
  subscriptionArn: option<genericString>,
}
@ocaml.doc("<p>An unusual cost pattern. This consists of the detailed metadata and the current status
            of the anomaly object. </p>")
type anomaly = {
  @ocaml.doc("<p>The feedback value. </p>") @as("Feedback") feedback: option<anomalyFeedbackType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the cost monitor that generated this anomaly.
        </p>")
  @as("MonitorArn")
  monitorArn: genericString,
  @ocaml.doc("<p>The dollar impact for the anomaly. </p>") @as("Impact") impact: impact,
  @ocaml.doc("<p>The latest and maximum score for the anomaly. </p>") @as("AnomalyScore")
  anomalyScore: anomalyScore,
  @ocaml.doc("<p>The list of identified root causes for the anomaly. </p>") @as("RootCauses")
  rootCauses: option<rootCauses>,
  @ocaml.doc("<p>The dimension for the anomaly (for example, an Amazon Web Services service in a service
            monitor). </p>")
  @as("DimensionValue")
  dimensionValue: option<genericString>,
  @ocaml.doc("<p>The last day the anomaly is detected. </p>") @as("AnomalyEndDate")
  anomalyEndDate: option<yearMonthDay>,
  @ocaml.doc("<p>The first day the anomaly is detected. </p>") @as("AnomalyStartDate")
  anomalyStartDate: option<yearMonthDay>,
  @ocaml.doc("<p>The unique identifier for the anomaly. </p>") @as("AnomalyId")
  anomalyId: genericString,
}
@ocaml.doc("<p>The amount of utilization, in hours.</p>")
type utilizationByTime = {
  @ocaml.doc("<p>The total number of reservation hours that were used.</p>") @as("Total")
  total: option<reservationAggregates>,
  @ocaml.doc("<p>The groups that this utilization result uses.</p>") @as("Groups")
  groups: option<reservationUtilizationGroups>,
  @ocaml.doc("<p>The period of time that this utilization was used for.</p>") @as("TimePeriod")
  timePeriod: option<dateInterval>,
}
@ocaml.doc("<p>Details on recommended instance.</p>")
type targetInstance = {
  @ocaml.doc("<p> Explains the actions you might need to take in order to successfully migrate your
            workloads from the current instance type to the recommended instance type. </p>")
  @as("PlatformDifferences")
  platformDifferences: option<platformDifferences>,
  @ocaml.doc("<p>The expected utilization metrics for target instance type.</p>")
  @as("ExpectedResourceUtilization")
  expectedResourceUtilization: option<resourceUtilization>,
  @ocaml.doc("<p>Details on the target instance type. </p>") @as("ResourceDetails")
  resourceDetails: option<resourceDetails>,
  @ocaml.doc("<p>Determines whether this recommendation is the defaulted Amazon Web Services
            recommendation.</p>")
  @as("DefaultTargetInstance")
  defaultTargetInstance: option<genericBoolean>,
  @ocaml.doc("<p>The currency code that Amazon Web Services used to calculate the costs for this
            instance.</p>")
  @as("CurrencyCode")
  currencyCode: option<genericString>,
  @ocaml.doc("<p>The estimated savings that result from modification, on a monthly basis.</p>")
  @as("EstimatedMonthlySavings")
  estimatedMonthlySavings: option<genericString>,
  @ocaml.doc("<p>The expected cost to operate this instance type on a monthly basis.</p>")
  @as("EstimatedMonthlyCost")
  estimatedMonthlyCost: option<genericString>,
}
@ocaml.doc("<p>Contains your request parameters, Savings Plan Recommendations Summary, and
            Details.</p>")
type savingsPlansPurchaseRecommendation = {
  @ocaml.doc("<p>Summary metrics for your Savings Plans Recommendations. </p>")
  @as("SavingsPlansPurchaseRecommendationSummary")
  savingsPlansPurchaseRecommendationSummary: option<savingsPlansPurchaseRecommendationSummary>,
  @ocaml.doc("<p>Details for the Savings Plans we recommend that you purchase to cover existing Savings
            Plans eligible workloads.</p>")
  @as("SavingsPlansPurchaseRecommendationDetails")
  savingsPlansPurchaseRecommendationDetails: option<savingsPlansPurchaseRecommendationDetailList>,
  @ocaml.doc("<p>The lookback period in days, used to generate the recommendation.</p>")
  @as("LookbackPeriodInDays")
  lookbackPeriodInDays: option<lookbackPeriodInDays>,
  @ocaml.doc("<p>The payment option used to generate the recommendation.</p>") @as("PaymentOption")
  paymentOption: option<paymentOption>,
  @ocaml.doc("<p>The Savings Plans recommendation term in years. It's used to generate the
            recommendation.</p>")
  @as("TermInYears")
  termInYears: option<termInYears>,
  @ocaml.doc("<p>The requested Savings Plans recommendation type.</p>") @as("SavingsPlansType")
  savingsPlansType: option<supportedSavingsPlansType>,
  @ocaml.doc("<p>The account scope that you want your recommendations for. Amazon Web Services
            calculates recommendations that include the management account and member accounts if
            the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>,
            recommendations are calculated for individual member accounts only.</p>")
  @as("AccountScope")
  accountScope: option<accountScope>,
}
type reservationPurchaseRecommendationDetails = array<reservationPurchaseRecommendationDetail>
type reservationCoverageGroups = array<reservationCoverageGroup>
type groups = array<group>
@ocaml.doc("<p>Context about the current instance.</p>")
type currentInstance = {
  @ocaml.doc("<p> The currency code that Amazon Web Services used to calculate the costs for this
            instance.</p>")
  @as("CurrencyCode")
  currencyCode: option<genericString>,
  @ocaml.doc("<p>The current On-Demand cost of operating this instance on a monthly basis.</p>")
  @as("MonthlyCost")
  monthlyCost: option<genericString>,
  @ocaml.doc("<p>The total number of hours that the instance ran during the lookback period.</p>")
  @as("TotalRunningHoursInLookbackPeriod")
  totalRunningHoursInLookbackPeriod: option<genericString>,
  @ocaml.doc("<p> The number of hours during the lookback period that's billed at On-Demand
            rates.</p>")
  @as("OnDemandHoursInLookbackPeriod")
  onDemandHoursInLookbackPeriod: option<genericString>,
  @ocaml.doc(
    "<p>The number of hours during the lookback period that's covered by Savings Plans.</p>"
  )
  @as("SavingsPlansCoveredHoursInLookbackPeriod")
  savingsPlansCoveredHoursInLookbackPeriod: option<genericString>,
  @ocaml.doc(
    "<p> The number of hours during the lookback period that's covered by reservations.</p>"
  )
  @as("ReservationCoveredHoursInLookbackPeriod")
  reservationCoveredHoursInLookbackPeriod: option<genericString>,
  @ocaml.doc("<p>Utilization information of the current instance during the lookback period.</p>")
  @as("ResourceUtilization")
  resourceUtilization: option<resourceUtilization>,
  @ocaml.doc("<p>Details about the resource and utilization.</p>") @as("ResourceDetails")
  resourceDetails: option<resourceDetails>,
  @ocaml.doc("<p>Cost allocation resource tags that are applied to the instance.</p>") @as("Tags")
  tags: option<tagValuesList>,
  @ocaml.doc("<p>The name that you given an instance. This field shows as blank if you haven't given
            the instance a name.</p>")
  @as("InstanceName")
  instanceName: option<genericString>,
  @ocaml.doc("<p>Resource ID of the current instance.</p>") @as("ResourceId")
  resourceId: option<genericString>,
}
@ocaml.doc("<p>Use the split charge rule to split the cost of one Cost Category value across several
            other target values. </p>")
type costCategorySplitChargeRule = {
  @ocaml.doc("<p>The parameters for a split charge method. This is only required for the
                <code>FIXED</code> method. </p>")
  @as("Parameters")
  parameters: option<costCategorySplitChargeRuleParametersList>,
  @ocaml.doc("<p>The method that's used to define how to split your source costs across your targets. </p>
        <p>
            <code>Proportional</code> - Allocates charges across your targets based on the
            proportional weighted cost of each target.</p>
        <p>
            <code>Fixed</code> - Allocates charges across your targets based on your defined
            allocation percentage.</p>
        <p>><code>Even</code> - Allocates costs evenly across all targets.</p>")
  @as("Method")
  method: costCategorySplitChargeMethod,
  @ocaml.doc("<p>The Cost Category values that you want to split costs across. These values can't be
            used as a source in other split charge rules. </p>")
  @as("Targets")
  targets: costCategorySplitChargeRuleTargetsList,
  @ocaml.doc("<p>The Cost Category value that you want to split. That value can't be used as a source
            or a target in other split charge rules. To indicate uncategorized costs, you can use an empty string as the source.</p>")
  @as("Source")
  source: genericString,
}
type costCategoryReferencesList = array<costCategoryReference>
type anomalySubscriptions = array<anomalySubscription>
type anomalies = array<anomaly>
type utilizationsByTime = array<utilizationByTime>
type targetInstancesList = array<targetInstance>
@ocaml.doc("<p>The result that's associated with a time period.</p>")
type resultByTime = {
  @ocaml.doc("<p>Determines whether the result is estimated.</p>") @as("Estimated")
  estimated: option<estimated>,
  @ocaml.doc("<p>The groups that this time period includes.</p>") @as("Groups")
  groups: option<groups>,
  @ocaml.doc("<p>The total amount of cost or usage accrued during the time period.</p>")
  @as("Total")
  total: option<metrics>,
  @ocaml.doc("<p>The time period that the result covers.</p>") @as("TimePeriod")
  timePeriod: option<dateInterval>,
}
@ocaml.doc("<p>A specific reservation that Amazon Web Services recommends for purchase.</p>")
type reservationPurchaseRecommendation = {
  @ocaml.doc("<p>A summary about the recommended purchase.</p>") @as("RecommendationSummary")
  recommendationSummary: option<reservationPurchaseRecommendationSummary>,
  @ocaml.doc("<p>Details about the recommended purchases.</p>") @as("RecommendationDetails")
  recommendationDetails: option<reservationPurchaseRecommendationDetails>,
  @ocaml.doc("<p>Hardware specifications for the service that you want recommendations for.</p>")
  @as("ServiceSpecification")
  serviceSpecification: option<serviceSpecification>,
  @ocaml.doc("<p>The payment option for the reservation (for example, <code>AllUpfront</code> or
                <code>NoUpfront</code>).</p>")
  @as("PaymentOption")
  paymentOption: option<paymentOption>,
  @ocaml.doc("<p>The term of the reservation that you want recommendations for, in years.</p>")
  @as("TermInYears")
  termInYears: option<termInYears>,
  @ocaml.doc("<p>How many days of previous usage that Amazon Web Services considers when making this
            recommendation.</p>")
  @as("LookbackPeriodInDays")
  lookbackPeriodInDays: option<lookbackPeriodInDays>,
  @ocaml.doc("<p>The account scope that Amazon Web Services recommends that you purchase this instance
            for. For example, you can purchase this reservation for an entire organization in
                Amazon Web Services Organizations.</p>")
  @as("AccountScope")
  accountScope: option<accountScope>,
}
@ocaml.doc("<p>Reservation coverage for a specified period, in hours.</p>")
type coverageByTime = {
  @ocaml.doc("<p>The total reservation coverage, in hours.</p>") @as("Total")
  total: option<coverage>,
  @ocaml.doc("<p>The groups of instances that the reservation covered.</p>") @as("Groups")
  groups: option<reservationCoverageGroups>,
  @ocaml.doc("<p>The period that this coverage was used over.</p>") @as("TimePeriod")
  timePeriod: option<dateInterval>,
}
type costCategorySplitChargeRulesList = array<costCategorySplitChargeRule>
type resultsByTime = array<resultByTime>
type reservationPurchaseRecommendations = array<reservationPurchaseRecommendation>
@ocaml.doc("<p> Details on the modification recommendation.</p>")
type modifyRecommendationDetail = {
  @ocaml.doc("<p>Determines whether this instance type is the Amazon Web Services default
            recommendation.</p>")
  @as("TargetInstances")
  targetInstances: option<targetInstancesList>,
}
type coveragesByTime = array<coverageByTime>
@ocaml.doc("<p>Recommendations to rightsize resources.</p>")
type rightsizingRecommendation = {
  @ocaml.doc("<p> The list of possible reasons why the recommendation is generated such as under or
            over utilization of specific metrics (for example, CPU, Memory, Network). </p>")
  @as("FindingReasonCodes")
  findingReasonCodes: option<findingReasonCodes>,
  @ocaml.doc("<p>The details for termination recommendations.</p>")
  @as("TerminateRecommendationDetail")
  terminateRecommendationDetail: option<terminateRecommendationDetail>,
  @ocaml.doc("<p>The details for the modification recommendations. </p>")
  @as("ModifyRecommendationDetail")
  modifyRecommendationDetail: option<modifyRecommendationDetail>,
  @ocaml.doc("<p>A recommendation to either terminate or modify the resource.</p>")
  @as("RightsizingType")
  rightsizingType: option<rightsizingType>,
  @ocaml.doc("<p>Context regarding the current instance.</p>") @as("CurrentInstance")
  currentInstance: option<currentInstance>,
  @ocaml.doc("<p>The account that this recommendation is for.</p>") @as("AccountId")
  accountId: option<genericString>,
}
type rightsizingRecommendationList = array<rightsizingRecommendation>
type rec expression = {
  @ocaml.doc("<p>The filter that's based on <code>CostCategory</code> values.</p>")
  @as("CostCategories")
  costCategories: option<costCategoryValues>,
  @ocaml.doc("<p>The specific <code>Tag</code> to use for <code>Expression</code>.</p>") @as("Tags")
  tags: option<tagValues>,
  @ocaml.doc("<p>The specific <code>Dimension</code> to use for <code>Expression</code>.</p>")
  @as("Dimensions")
  dimensions: option<dimensionValues>,
  @ocaml.doc("<p>Return results that don't match a <code>Dimension</code> object.</p>") @as("Not")
  not: option<expression>,
  @ocaml.doc("<p>Return results that match both <code>Dimension</code> objects.</p>") @as("And")
  and_: option<expressions>,
  @ocaml.doc("<p>Return results that match either <code>Dimension</code> object.</p>") @as("Or")
  or: option<expressions>,
}
and expressions = array<expression>
@ocaml.doc("<p>Rules are processed in order. If there are multiple rules that match the line item,
            then the first rule to match is used to determine that Cost Category value.</p>")
type costCategoryRule = {
  @ocaml.doc("<p>You can define the <code>CostCategoryRule</code> rule type as either
                <code>REGULAR</code> or <code>INHERITED_VALUE</code>. The
                <code>INHERITED_VALUE</code> rule type adds the flexibility of defining a rule that
            dynamically inherits the cost category value from the dimension value defined by
                <code>CostCategoryInheritedValueDimension</code>. For example, if you want to
            dynamically group costs based on the value of a specific tag key, first choose an
            inherited value rule type, then choose the tag dimension and specify the tag key to
            use.</p>")
  @as("Type")
  type_: option<costCategoryRuleType>,
  @ocaml.doc("<p>The value the line item is categorized as if the line item contains the matched
            dimension.</p>")
  @as("InheritedValue")
  inheritedValue: option<costCategoryInheritedValueDimension>,
  @ocaml.doc("<p>An <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a>
            object used to categorize costs. This supports dimensions, tags, and nested expressions.
            Currently the only dimensions supported are <code>LINKED_ACCOUNT</code>,
                <code>SERVICE_CODE</code>, <code>RECORD_TYPE</code>, and
                <code>LINKED_ACCOUNT_NAME</code>.</p>
        <p>Root level <code>OR</code> isn't supported. We recommend that you create a separate
            rule instead.</p>
        <p>
            <code>RECORD_TYPE</code> is a dimension used for Cost Explorer APIs, and is also
            supported for Cost Category expressions. This dimension uses different terms, depending
            on whether you're using the console or API/JSON editor. For a detailed comparison, see
                <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-cost-categories.html#cost-categories-terms\">Term Comparisons</a> in the <i>Billing and Cost Management User
                Guide</i>.</p>")
  @as("Rule")
  rule: option<expression>,
  @as("Value") value: option<costCategoryValue>,
}
@ocaml.doc("<p>This object continuously inspects your account's cost data for anomalies. It's based
            on <code>MonitorType</code> and <code>MonitorSpecification</code>. The content consists
            of detailed metadata and the current status of the monitor object. </p>")
type anomalyMonitor = {
  @ocaml.doc("<p>The value for evaluated dimensions. </p>") @as("DimensionalValueCount")
  dimensionalValueCount: option<nonNegativeInteger>,
  @as("MonitorSpecification") monitorSpecification: option<expression>,
  @ocaml.doc("<p>The dimensions to evaluate. </p>") @as("MonitorDimension")
  monitorDimension: option<monitorDimension>,
  @ocaml.doc("<p>The possible type values. </p>") @as("MonitorType") monitorType: monitorType,
  @ocaml.doc("<p>The date when the monitor last evaluated for anomalies. </p>")
  @as("LastEvaluatedDate")
  lastEvaluatedDate: option<yearMonthDay>,
  @ocaml.doc("<p>The date when the monitor was last updated. </p>") @as("LastUpdatedDate")
  lastUpdatedDate: option<yearMonthDay>,
  @ocaml.doc("<p>The date when the monitor was created. </p>") @as("CreationDate")
  creationDate: option<yearMonthDay>,
  @ocaml.doc("<p>The name of the monitor. </p>") @as("MonitorName") monitorName: genericString,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) value. </p>") @as("MonitorArn")
  monitorArn: option<genericString>,
}
type costCategoryRulesList = array<costCategoryRule>
type anomalyMonitors = array<anomalyMonitor>
@ocaml.doc("<p>The structure of Cost Categories. This includes detailed metadata and the set of rules
            for the <code>CostCategory</code> object.</p>")
type costCategory = {
  @as("DefaultValue") defaultValue: option<costCategoryValue>,
  @ocaml.doc("<p>The list of processing statuses for Cost Management products for a specific cost
            category. </p>")
  @as("ProcessingStatus")
  processingStatus: option<costCategoryProcessingStatusList>,
  @ocaml.doc("<p> The split charge rules that are used to allocate your charges between your Cost
            Category values. </p>")
  @as("SplitChargeRules")
  splitChargeRules: option<costCategorySplitChargeRulesList>,
  @ocaml.doc("<p>The rules are processed in order. If there are multiple rules that match the line
            item, then the first rule to match is used to determine that Cost Category value.
        </p>")
  @as("Rules")
  rules: costCategoryRulesList,
  @as("RuleVersion") ruleVersion: costCategoryRuleVersion,
  @as("Name") name: costCategoryName,
  @ocaml.doc("<p> The effective end data of your Cost Category.</p>") @as("EffectiveEnd")
  effectiveEnd: option<zonedDateTime>,
  @ocaml.doc("<p>The effective state data of your Cost Category.</p>") @as("EffectiveStart")
  effectiveStart: zonedDateTime,
  @ocaml.doc("<p>The unique identifier for your Cost Category. </p>") @as("CostCategoryArn")
  costCategoryArn: arn,
}
@ocaml.doc("<p>You can use the Cost Explorer API to programmatically query your cost and usage data. You
      can query for aggregated data such as total monthly costs or total daily usage. You can also
      query for granular data. This might include the number of daily write operations for Amazon
      DynamoDB database tables in your production environment. </p>
		       <p>Service Endpoint</p>
		       <p>The Cost Explorer API provides the following endpoint:</p>
		       <ul>
            <li>
				           <p>
                  <code>https://ce.us-east-1.amazonaws.com</code>
               </p>
			         </li>
         </ul>
		       <p>For information about the costs that are associated with the Cost Explorer API, see
        <a href=\"http://aws.amazon.com/aws-cost-management/pricing/\">Amazon Web Services Cost
        Management Pricing</a>.</p>")
module UpdateAnomalyMonitor = {
  type t
  type request = {
    @ocaml.doc("<p>The new name for the cost anomaly monitor. </p>") @as("MonitorName")
    monitorName: option<genericString>,
    @ocaml.doc("<p>Cost anomaly monitor Amazon Resource Names (ARNs). </p>") @as("MonitorArn")
    monitorArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>A cost anomaly monitor ARN. </p>") @as("MonitorArn") monitorArn: genericString,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "UpdateAnomalyMonitorCommand"
  let make = (~monitorArn, ~monitorName=?, ()) =>
    new({monitorName: monitorName, monitorArn: monitorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ProvideAnomalyFeedback = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Describes whether the cost anomaly was a planned activity or you considered it an anomaly. </p>"
    )
    @as("Feedback")
    feedback: anomalyFeedbackType,
    @ocaml.doc("<p>A cost anomaly ID. </p>") @as("AnomalyId") anomalyId: genericString,
  }
  type response = {
    @ocaml.doc("<p>The ID of the modified cost anomaly. </p>") @as("AnomalyId")
    anomalyId: genericString,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "ProvideAnomalyFeedbackCommand"
  let make = (~feedback, ~anomalyId, ()) => new({feedback: feedback, anomalyId: anomalyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCostCategoryDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>
      The unique identifier for your Cost Category.
    </p>")
    @as("CostCategoryArn")
    costCategoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>
      The effective end date of the Cost Category as a result of deleting it. No costs after this date will be categorized by the deleted Cost Category.
    </p>")
    @as("EffectiveEnd")
    effectiveEnd: option<zonedDateTime>,
    @ocaml.doc("<p>
      The unique identifier for your Cost Category.
    </p>")
    @as("CostCategoryArn")
    costCategoryArn: option<arn>,
  }
  @module("@aws-sdk/client-ce") @new
  external new: request => t = "DeleteCostCategoryDefinitionCommand"
  let make = (~costCategoryArn, ()) => new({costCategoryArn: costCategoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAnomalySubscription = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier of the cost anomaly subscription that you want to delete. </p>"
    )
    @as("SubscriptionArn")
    subscriptionArn: genericString,
  }
  type response = {.}
  @module("@aws-sdk/client-ce") @new external new: request => t = "DeleteAnomalySubscriptionCommand"
  let make = (~subscriptionArn, ()) => new({subscriptionArn: subscriptionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAnomalyMonitor = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the cost anomaly monitor that you want to delete. </p>")
    @as("MonitorArn")
    monitorArn: genericString,
  }
  type response = {.}
  @module("@aws-sdk/client-ce") @new external new: request => t = "DeleteAnomalyMonitorCommand"
  let make = (~monitorArn, ()) => new({monitorArn: monitorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
      A list of tag keys associated with tags that need to be removed from the resource. If you specify a tag key that does not exist, it is ignored. Although the maximum number of array members is 200, user-tag maximum is 50. The remaining are reserved for Amazon Web Services use.
    </p>")
    @as("ResourceTagKeys")
    resourceTagKeys: resourceTagKeyList,
    @ocaml.doc("<p>
      The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html\">ResourceTag</a>.
    </p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-ce") @new external new: request => t = "UntagResourceCommand"
  let make = (~resourceTagKeys, ~resourceArn, ()) =>
    new({resourceTagKeys: resourceTagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateAnomalySubscription = {
  type t
  type request = {
    @ocaml.doc("<p>The new name of the subscription. </p>") @as("SubscriptionName")
    subscriptionName: option<genericString>,
    @ocaml.doc("<p>The update to the subscriber list. </p>") @as("Subscribers")
    subscribers: option<subscribers>,
    @ocaml.doc("<p>A list of cost anomaly monitor ARNs. </p>") @as("MonitorArnList")
    monitorArnList: option<monitorArnList>,
    @ocaml.doc("<p>The update to the frequency value that subscribers receive notifications. </p>")
    @as("Frequency")
    frequency: option<anomalySubscriptionFrequency>,
    @ocaml.doc("<p>The update to the threshold value for receiving notifications. </p>")
    @as("Threshold")
    threshold: option<nullableNonNegativeDouble>,
    @ocaml.doc("<p>A cost anomaly subscription Amazon Resource Name (ARN). </p>")
    @as("SubscriptionArn")
    subscriptionArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>A cost anomaly subscription ARN. </p>") @as("SubscriptionArn")
    subscriptionArn: genericString,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "UpdateAnomalySubscriptionCommand"
  let make = (
    ~subscriptionArn,
    ~subscriptionName=?,
    ~subscribers=?,
    ~monitorArnList=?,
    ~frequency=?,
    ~threshold=?,
    (),
  ) =>
    new({
      subscriptionName: subscriptionName,
      subscribers: subscribers,
      monitorArnList: monitorArnList,
      frequency: frequency,
      threshold: threshold,
      subscriptionArn: subscriptionArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
      A list of tag key-value pairs to be added to the resource.</p>
         <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
         <ul>
            <li>
               <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
            </li>
            <li>
               <p>The maximum length of a key is 128 characters</p>
            </li>
            <li>
               <p>The maximum length of a value is 256 characters</p>
            </li>
            <li>
               <p>Valid characters for keys and values are: <code>A-Z</code>, <code>a-z</code>, spaces, <code>_.:/=+-</code>
               </p>
            </li>
            <li>
               <p>Keys and values are case sensitive</p>
            </li>
            <li>
               <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
            </li>
            <li>
               <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
            </li>
         </ul>")
    @as("ResourceTags")
    resourceTags: resourceTagList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html\">ResourceTag</a>.
    </p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-ce") @new external new: request => t = "TagResourceCommand"
  let make = (~resourceTags, ~resourceArn, ()) =>
    new({resourceTags: resourceTags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html\">ResourceTag</a>.</p>"
    )
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A list of tag key value pairs that are associated with the response.
    </p>")
    @as("ResourceTags")
    resourceTags: option<resourceTagList>,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAnomalySubscription = {
  type t
  type request = {
    @ocaml.doc("<p>
      An optional list of tags to associate with the specified <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html\">
               <code>AnomalySubscription</code>
            </a>. You can use resource tags to control access to your <code>subscription</code> using IAM policies.</p>
         <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
         <ul>
            <li>
               <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
            </li>
            <li>
               <p>The maximum length of a key is 128 characters</p>
            </li>
            <li>
               <p>The maximum length of a value is 256 characters</p>
            </li>
            <li>
               <p>Valid characters for keys and values are: <code>A-Z</code>, <code>a-z</code>, spaces, <code>_.:/=+-</code>
               </p>
            </li>
            <li>
               <p>Keys and values are case sensitive</p>
            </li>
            <li>
               <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
            </li>
            <li>
               <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
            </li>
         </ul>")
    @as("ResourceTags")
    resourceTags: option<resourceTagList>,
    @ocaml.doc("<p>The cost anomaly subscription object that you want to create. </p>")
    @as("AnomalySubscription")
    anomalySubscription: anomalySubscription,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of your newly created cost anomaly subscription. </p>")
    @as("SubscriptionArn")
    subscriptionArn: genericString,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "CreateAnomalySubscriptionCommand"
  let make = (~anomalySubscription, ~resourceTags=?, ()) =>
    new({resourceTags: resourceTags, anomalySubscription: anomalySubscription})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCostCategoryDefinitions = {
  type t
  type request = {
    @ocaml.doc("<p> The number of entries a paginated response contains. </p>") @as("MaxResults")
    maxResults: option<costCategoryMaxResults>,
    @ocaml.doc("<p>
      The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
    </p>")
    @as("NextToken")
    nextToken: option<nextPageToken>,
    @ocaml.doc("<p>
      The date when the Cost Category was effective.
    </p>")
    @as("EffectiveOn")
    effectiveOn: option<zonedDateTime>,
  }
  type response = {
    @ocaml.doc("<p>
      The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
    </p>")
    @as("NextToken")
    nextToken: option<nextPageToken>,
    @ocaml.doc("<p>
      A reference to a Cost Category containing enough information to identify the Cost Category.
    </p>")
    @as("CostCategoryReferences")
    costCategoryReferences: option<costCategoryReferencesList>,
  }
  @module("@aws-sdk/client-ce") @new
  external new: request => t = "ListCostCategoryDefinitionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~effectiveOn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, effectiveOn: effectiveOn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAnomalySubscriptions = {
  type t
  type request = {
    @ocaml.doc("<p>The number of entries a paginated response contains. </p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>The token to retrieve the next set of results. Amazon Web Services provides the token when
      the response from a previous call has more results than the maximum page size. </p>")
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>Cost anomaly monitor ARNs. </p>") @as("MonitorArn")
    monitorArn: option<genericString>,
    @ocaml.doc("<p>A list of cost anomaly subscription ARNs. </p>") @as("SubscriptionArnList")
    subscriptionArnList: option<values>,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next set of results. Amazon Web Services provides the token when
      the response from a previous call has more results than the maximum page size. </p>")
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc(
      "<p>A list of cost anomaly subscriptions that includes the detailed metadata for each one. </p>"
    )
    @as("AnomalySubscriptions")
    anomalySubscriptions: anomalySubscriptions,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetAnomalySubscriptionsCommand"
  let make = (~maxResults=?, ~nextPageToken=?, ~monitorArn=?, ~subscriptionArnList=?, ()) =>
    new({
      maxResults: maxResults,
      nextPageToken: nextPageToken,
      monitorArn: monitorArn,
      subscriptionArnList: subscriptionArnList,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAnomalies = {
  type t
  type request = {
    @ocaml.doc("<p>The number of entries a paginated response contains. </p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>The token to retrieve the next set of results. Amazon Web Services provides the token when
      the response from a previous call has more results than the maximum page size. </p>")
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>Filters anomaly results by the total impact field on the anomaly object. For example, you
      can filter anomalies <code>GREATER_THAN 200.00</code> to retrieve anomalies, with an estimated
      dollar impact greater than 200. </p>")
    @as("TotalImpact")
    totalImpact: option<totalImpactFilter>,
    @ocaml.doc("<p>Filters anomaly results by the feedback field on the anomaly object. </p>")
    @as("Feedback")
    feedback: option<anomalyFeedbackType>,
    @ocaml.doc("<p>Assigns the start and end dates for retrieving cost anomalies. The returned anomaly object
      will have an <code>AnomalyEndDate</code> in the specified time range. </p>")
    @as("DateInterval")
    dateInterval: anomalyDateInterval,
    @ocaml.doc("<p>Retrieves all of the cost anomalies detected for a specific cost anomaly monitor Amazon
      Resource Name (ARN). </p>")
    @as("MonitorArn")
    monitorArn: option<genericString>,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next set of results. Amazon Web Services provides the token when
      the response from a previous call has more results than the maximum page size. </p>")
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>A list of cost anomalies. </p>") @as("Anomalies") anomalies: anomalies,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetAnomaliesCommand"
  let make = (
    ~dateInterval,
    ~maxResults=?,
    ~nextPageToken=?,
    ~totalImpact=?,
    ~feedback=?,
    ~monitorArn=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextPageToken: nextPageToken,
      totalImpact: totalImpact,
      feedback: feedback,
      dateInterval: dateInterval,
      monitorArn: monitorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUsageForecast = {
  type t
  type request = {
    @ocaml.doc("<p>Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean 
			by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value 
			falling in the prediction interval. Higher confidence levels result in wider prediction intervals.</p>")
    @as("PredictionIntervalLevel")
    predictionIntervalLevel: option<predictionIntervalLevel>,
    @ocaml.doc("<p>The filters that you want to use to filter your forecast. The <code>GetUsageForecast</code> API supports filtering by the following dimensions:</p>
		
	        <ul>
            <li>
               <p>
                  <code>AZ</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INSTANCE_TYPE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LINKED_ACCOUNT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LINKED_ACCOUNT_NAME</code>
               </p>
            </li>
            <li>
               <p>
                  <code>OPERATION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PURCHASE_TYPE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>REGION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SERVICE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>USAGE_TYPE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>USAGE_TYPE_GROUP</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RECORD_TYPE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>OPERATING_SYSTEM</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TENANCY</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SCOPE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PLATFORM</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SUBSCRIPTION_ID</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LEGAL_ENTITY_NAME</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DEPLOYMENT_OPTION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DATABASE_ENGINE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INSTANCE_TYPE_FAMILY</code>
               </p>
            </li>
            <li>
               <p>
                  <code>BILLING_ENTITY</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RESERVATION_ID</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SAVINGS_PLAN_ARN</code>
               </p>
            </li>
         </ul>")
    @as("Filter")
    filter: option<expression>,
    @ocaml.doc("<p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code> forecasts or 12 months of <code>MONTHLY</code> forecasts.</p>
		       <p>The <code>GetUsageForecast</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>")
    @as("Granularity")
    granularity: granularity,
    @ocaml.doc("<p>Which metric Cost Explorer uses to create your forecast.</p>
		       <p>Valid values for a <code>GetUsageForecast</code> call are the following:</p>
		       <ul>
            <li>
				           <p>USAGE_QUANTITY</p>
			         </li>
            <li>
				           <p>NORMALIZED_USAGE_AMOUNT</p>
			         </li>
         </ul>")
    @as("Metric")
    metric: metric,
    @ocaml.doc("<p>The start and end dates of the period that you want to retrieve usage forecast for. The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is  
		  retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>. The start date must be equal to or later than the current date to avoid a validation error.</p>")
    @as("TimePeriod")
    timePeriod: dateInterval,
  }
  type response = {
    @ocaml.doc("<p>The forecasts for your query, in order. For <code>DAILY</code> forecasts, this is a list of days. For <code>MONTHLY</code> forecasts, 
			this is a list of months.</p>")
    @as("ForecastResultsByTime")
    forecastResultsByTime: option<forecastResultsByTime>,
    @ocaml.doc("<p>How much you're forecasted to use over the forecast period.</p>") @as("Total")
    total: option<metricValue>,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetUsageForecastCommand"
  let make = (~granularity, ~metric, ~timePeriod, ~predictionIntervalLevel=?, ~filter=?, ()) =>
    new({
      predictionIntervalLevel: predictionIntervalLevel,
      filter: filter,
      granularity: granularity,
      metric: metric,
      timePeriod: timePeriod,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTags = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>This field is only used when SortBy is provided in the request. The maximum number of objects that to be returned for this request. If MaxResults is not specified with SortBy, the request will return 1000 results as the default value for this parameter.</p>
         <p>For <code>GetTags</code>, MaxResults has an upper limit of 1000.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The value by which you want to sort the data.</p>
         <p>The key represents cost and usage metrics. The following values are supported:</p>
         <ul>
            <li>
               <p>
                  <code>BlendedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UnblendedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AmortizedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NetAmortizedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NetUnblendedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UsageQuantity</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NormalizedUsageAmount</code>
               </p>
            </li>
         </ul>
         <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or <code>DESCENDING</code>.</p>
         <p>When using <code>SortBy</code>, <code>NextPageToken</code> and <code>SearchString</code> are not supported.</p>")
    @as("SortBy")
    sortBy: option<sortDefinitions>,
    @as("Filter") filter: option<expression>,
    @ocaml.doc("<p>The key of the tag that you want to return values for.</p>") @as("TagKey")
    tagKey: option<tagKey>,
    @ocaml.doc("<p>The start and end dates for retrieving the dimension values. The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is  
            retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>")
    @as("TimePeriod")
    timePeriod: dateInterval,
    @ocaml.doc("<p>The value that you want to search for.</p>") @as("SearchString")
    searchString: option<searchString>,
  }
  type response = {
    @ocaml.doc("<p>The total number of query results.</p>") @as("TotalSize") totalSize: pageSize,
    @ocaml.doc("<p>The number of query results that Amazon Web Services returns at a time.</p>")
    @as("ReturnSize")
    returnSize: pageSize,
    @ocaml.doc("<p>The tags that match your request.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc(
      "<p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetTagsCommand"
  let make = (
    ~timePeriod,
    ~nextPageToken=?,
    ~maxResults=?,
    ~sortBy=?,
    ~filter=?,
    ~tagKey=?,
    ~searchString=?,
    (),
  ) =>
    new({
      nextPageToken: nextPageToken,
      maxResults: maxResults,
      sortBy: sortBy,
      filter: filter,
      tagKey: tagKey,
      timePeriod: timePeriod,
      searchString: searchString,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSavingsPlansUtilizationDetails = {
  type t
  type request = {
    @ocaml.doc("<p>The value by which you want to sort the data.</p>
    
         <p>The following values are supported for <code>Key</code>:</p>
         <ul>
            <li>
               <p>
                  <code>UtilizationPercentage</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TotalCommitment</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UsedCommitment</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UnusedCommitment</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NetSavings</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AmortizedRecurringCommitment</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AmortizedUpfrontCommitment</code>
               </p>
            </li>
         </ul>
    
         <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or <code>DESCENDING</code>.</p>")
    @as("SortBy")
    sortBy: option<sortDefinition>,
    @ocaml.doc(
      "<p>The number of items to be returned in a response. The default is <code>20</code>, with a minimum value of <code>1</code>.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextToken")
    nextToken: option<nextPageToken>,
    @ocaml.doc("<p>The data type.</p>") @as("DataType") dataType: option<savingsPlansDataTypes>,
    @ocaml.doc("<p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions.  You can filter data with the following dimensions:</p>
         <ul>
            <li>
               <p>
                  <code>LINKED_ACCOUNT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SAVINGS_PLAN_ARN</code>
               </p>
            </li>
            <li>
               <p>
                  <code>REGION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PAYMENT_OPTION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INSTANCE_TYPE_FAMILY</code>
               </p>
            </li>
         </ul>
         <p>
            <code>GetSavingsPlansUtilizationDetails</code> uses the same 
      <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> object 
      as the other operations, but only <code>AND</code> is supported among each dimension.</p>")
    @as("Filter")
    filter: option<expression>,
    @ocaml.doc(
      "<p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>"
    )
    @as("TimePeriod")
    timePeriod: dateInterval,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextToken")
    nextToken: option<nextPageToken>,
    @as("TimePeriod") timePeriod: dateInterval,
    @ocaml.doc("<p>The total Savings Plans utilization, regardless of time period.</p>")
    @as("Total")
    total: option<savingsPlansUtilizationAggregates>,
    @ocaml.doc(
      "<p>Retrieves a single daily or monthly Savings Plans utilization rate and details for your account.</p>"
    )
    @as("SavingsPlansUtilizationDetails")
    savingsPlansUtilizationDetails: savingsPlansUtilizationDetails,
  }
  @module("@aws-sdk/client-ce") @new
  external new: request => t = "GetSavingsPlansUtilizationDetailsCommand"
  let make = (~timePeriod, ~sortBy=?, ~maxResults=?, ~nextToken=?, ~dataType=?, ~filter=?, ()) =>
    new({
      sortBy: sortBy,
      maxResults: maxResults,
      nextToken: nextToken,
      dataType: dataType,
      filter: filter,
      timePeriod: timePeriod,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSavingsPlansUtilization = {
  type t
  type request = {
    @ocaml.doc("<p>The value by which you want to sort the data.</p>
         <p>The following values are supported for <code>Key</code>:</p>
         <ul>
            <li>
               <p>
                  <code>UtilizationPercentage</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TotalCommitment</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UsedCommitment</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UnusedCommitment</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NetSavings</code>
               </p>
            </li>
         </ul>
    
         <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or <code>DESCENDING</code>.</p>")
    @as("SortBy")
    sortBy: option<sortDefinition>,
    @ocaml.doc("<p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions.  You can filter data with the following dimensions:</p>
         <ul>
            <li>
               <p>
                  <code>LINKED_ACCOUNT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SAVINGS_PLAN_ARN</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SAVINGS_PLANS_TYPE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>REGION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PAYMENT_OPTION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INSTANCE_TYPE_FAMILY</code>
               </p>
            </li>
         </ul>
         <p>
            <code>GetSavingsPlansUtilization</code> uses the same 
      <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> object 
      as the other operations, but only <code>AND</code> is supported among each dimension.</p>")
    @as("Filter")
    filter: option<expression>,
    @ocaml.doc("<p>The granularity of the Amazon Web Services utillization data for your Savings Plans.</p>
	        <p>The <code>GetSavingsPlansUtilization</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>")
    @as("Granularity")
    granularity: option<granularity>,
    @ocaml.doc(
      "<p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>"
    )
    @as("TimePeriod")
    timePeriod: dateInterval,
  }
  type response = {
    @ocaml.doc(
      "<p>The total amount of cost/commitment that you used your Savings Plans, regardless of date ranges.</p>"
    )
    @as("Total")
    total: savingsPlansUtilizationAggregates,
    @ocaml.doc(
      "<p>The amount of cost/commitment you used your Savings Plans. This allows you to specify date ranges.</p>"
    )
    @as("SavingsPlansUtilizationsByTime")
    savingsPlansUtilizationsByTime: option<savingsPlansUtilizationsByTime>,
  }
  @module("@aws-sdk/client-ce") @new
  external new: request => t = "GetSavingsPlansUtilizationCommand"
  let make = (~timePeriod, ~sortBy=?, ~filter=?, ~granularity=?, ()) =>
    new({sortBy: sortBy, filter: filter, granularity: granularity, timePeriod: timePeriod})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSavingsPlansPurchaseRecommendation = {
  type t
  type request = {
    @ocaml.doc("<p>You can filter your recommendations by Account ID with the <code>LINKED_ACCOUNT</code>
      dimension. To filter your recommendations by Account ID, specify <code>Key</code> as
        <code>LINKED_ACCOUNT</code> and <code>Value</code> as the comma-separated Acount ID(s) for
      which you want to see Savings Plans purchase recommendations.</p>
         <p>For GetSavingsPlansPurchaseRecommendation, the <code>Filter</code> does not include
        <code>CostCategories</code> or <code>Tags</code>. It only includes <code>Dimensions</code>.
      With <code>Dimensions</code>, <code>Key</code> must be <code>LINKED_ACCOUNT</code> and
        <code>Value</code> can be a single Account ID or multiple comma-separated Account IDs for
      which you want to see Savings Plans Purchase Recommendations. <code>AND</code> and
        <code>OR</code> operators are not supported.</p>")
    @as("Filter")
    filter: option<expression>,
    @ocaml.doc("<p>The lookback period used to generate the recommendation.</p>")
    @as("LookbackPeriodInDays")
    lookbackPeriodInDays: lookbackPeriodInDays,
    @ocaml.doc(
      "<p>The number of recommendations that you want returned in a single response object.</p>"
    )
    @as("PageSize")
    pageSize: option<nonNegativeInteger>,
    @ocaml.doc(
      "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc(
      "<p>The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for individual member accounts only.</p>"
    )
    @as("AccountScope")
    accountScope: option<accountScope>,
    @ocaml.doc("<p>The payment option used to generate these recommendations.</p>")
    @as("PaymentOption")
    paymentOption: paymentOption,
    @ocaml.doc("<p>The savings plan recommendation term used to
      generate these
      recommendations.</p>")
    @as("TermInYears")
    termInYears: termInYears,
    @ocaml.doc("<p>The Savings Plans recommendation type requested.</p>") @as("SavingsPlansType")
    savingsPlansType: supportedSavingsPlansType,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc(
      "<p>Contains your request parameters, Savings Plan Recommendations Summary, and Details.</p>"
    )
    @as("SavingsPlansPurchaseRecommendation")
    savingsPlansPurchaseRecommendation: option<savingsPlansPurchaseRecommendation>,
    @ocaml.doc("<p>Information regarding this specific recommendation set.</p>") @as("Metadata")
    metadata: option<savingsPlansPurchaseRecommendationMetadata>,
  }
  @module("@aws-sdk/client-ce") @new
  external new: request => t = "GetSavingsPlansPurchaseRecommendationCommand"
  let make = (
    ~lookbackPeriodInDays,
    ~paymentOption,
    ~termInYears,
    ~savingsPlansType,
    ~filter=?,
    ~pageSize=?,
    ~nextPageToken=?,
    ~accountScope=?,
    (),
  ) =>
    new({
      filter: filter,
      lookbackPeriodInDays: lookbackPeriodInDays,
      pageSize: pageSize,
      nextPageToken: nextPageToken,
      accountScope: accountScope,
      paymentOption: paymentOption,
      termInYears: termInYears,
      savingsPlansType: savingsPlansType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSavingsPlansCoverage = {
  type t
  type request = {
    @ocaml.doc("<p>The value by which you want to sort the data.</p>
         <p>The following values are supported for <code>Key</code>:</p>
         <ul>
            <li>
               <p>
                  <code>SpendCoveredBySavingsPlan</code>
               </p>
            </li>
            <li>
               <p>
                  <code>OnDemandCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CoveragePercentage</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TotalCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>InstanceFamily</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Region</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Service</code>
               </p>
            </li>
         </ul>
    
         <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or <code>DESCENDING</code>.</p>")
    @as("SortBy")
    sortBy: option<sortDefinition>,
    @ocaml.doc(
      "<p>The number of items to be returned in a response. The default is <code>20</code>, with a minimum value of <code>1</code>.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextToken")
    nextToken: option<nextPageToken>,
    @ocaml.doc(
      "<p>The measurement that you want your Savings Plans coverage reported in. The only valid value is <code>SpendCoveredBySavingsPlans</code>.</p>"
    )
    @as("Metrics")
    metrics: option<metricNames>,
    @ocaml.doc("<p>Filters Savings Plans coverage data by dimensions. You can filter data for Savings Plans usage with the following dimensions:</p>
         <ul>
            <li>
               <p>
                  <code>LINKED_ACCOUNT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>REGION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SERVICE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INSTANCE_FAMILY</code>
               </p>
            </li>
         </ul>
         <p>
            <code>GetSavingsPlansCoverage</code> uses the same 
      <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> object 
      as the other operations, but only <code>AND</code> is supported among each dimension. If there are multiple values for a dimension, they are OR'd together.</p>
         <p>Cost category is also supported.</p>")
    @as("Filter")
    filter: option<expression>,
    @ocaml.doc("<p>The granularity of the Amazon Web Services cost data for your Savings Plans. <code>Granularity</code> can't be set if <code>GroupBy</code> is set.</p>
	        <p>The <code>GetSavingsPlansCoverage</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>")
    @as("Granularity")
    granularity: option<granularity>,
    @ocaml.doc(
      "<p>You can group the data using the attributes <code>INSTANCE_FAMILY</code>, <code>REGION</code>, or <code>SERVICE</code>.</p>"
    )
    @as("GroupBy")
    groupBy: option<groupDefinitions>,
    @ocaml.doc(
      "<p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>"
    )
    @as("TimePeriod")
    timePeriod: dateInterval,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextToken")
    nextToken: option<nextPageToken>,
    @ocaml.doc("<p>The amount of spend that your Savings Plans covered.</p>")
    @as("SavingsPlansCoverages")
    savingsPlansCoverages: savingsPlansCoverages,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetSavingsPlansCoverageCommand"
  let make = (
    ~timePeriod,
    ~sortBy=?,
    ~maxResults=?,
    ~nextToken=?,
    ~metrics=?,
    ~filter=?,
    ~granularity=?,
    ~groupBy=?,
    (),
  ) =>
    new({
      sortBy: sortBy,
      maxResults: maxResults,
      nextToken: nextToken,
      metrics: metrics,
      filter: filter,
      granularity: granularity,
      groupBy: groupBy,
      timePeriod: timePeriod,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRightsizingRecommendation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token that indicates the next set of results that you want to retrieve.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc(
      "<p>The number of recommendations that you want returned in a single response object.</p>"
    )
    @as("PageSize")
    pageSize: option<nonNegativeInteger>,
    @ocaml.doc("<p>The specific service that you want recommendations for. The only valid value for <code>GetRightsizingRecommendation</code> is 
    	\"<code>AmazonEC2</code>\".</p>")
    @as("Service")
    service: genericString,
    @ocaml.doc("<p> Enables you to customize recommendations across two attributes. You can choose to view
      recommendations for instances within the same instance families or across different instance
      families. You can also choose to view your estimated savings associated with recommendations
      with consideration of existing Savings Plans or RI benefits, or
      neither. </p>")
    @as("Configuration")
    configuration: option<rightsizingRecommendationConfiguration>,
    @as("Filter") filter: option<expression>,
  }
  type response = {
    @ocaml.doc("<p> Enables you to customize recommendations across two attributes. You can choose to view
      recommendations for instances within the same instance families or across different instance
      families. You can also choose to view your estimated savings associated with recommendations
      with consideration of existing Savings Plans or RI benefits, or
      neither. </p>")
    @as("Configuration")
    configuration: option<rightsizingRecommendationConfiguration>,
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>") @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>Recommendations to rightsize resources.</p>") @as("RightsizingRecommendations")
    rightsizingRecommendations: option<rightsizingRecommendationList>,
    @ocaml.doc("<p>Summary of this recommendation set.</p>") @as("Summary")
    summary: option<rightsizingRecommendationSummary>,
    @ocaml.doc("<p>Information regarding this specific recommendation set.</p>") @as("Metadata")
    metadata: option<rightsizingRecommendationMetadata>,
  }
  @module("@aws-sdk/client-ce") @new
  external new: request => t = "GetRightsizingRecommendationCommand"
  let make = (~service, ~nextPageToken=?, ~pageSize=?, ~configuration=?, ~filter=?, ()) =>
    new({
      nextPageToken: nextPageToken,
      pageSize: pageSize,
      service: service,
      configuration: configuration,
      filter: filter,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReservationUtilization = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of objects that you returned for this request. If more objects are available, in the response, Amazon Web Services provides a NextPageToken value that you can use in a subsequent call to get the next batch of objects.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>The value by which you want to sort the data.</p>
    
         <p>The following values are supported for <code>Key</code>:</p>
         <ul>
            <li>
               <p>
                  <code>UtilizationPercentage</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UtilizationPercentageInUnits</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PurchasedHours</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PurchasedUnits</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TotalActualHours</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TotalActualUnits</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UnusedHours</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UnusedUnits</code>
               </p>
            </li>
            <li>
               <p>
                  <code>OnDemandCostOfRIHoursUsed</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NetRISavings</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TotalPotentialRISavings</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AmortizedUpfrontFee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AmortizedRecurringFee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TotalAmortizedFee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RICostForUnusedHours</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RealizedSavings</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UnrealizedSavings</code>
               </p>
            </li>
         </ul>
    
         <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or <code>DESCENDING</code>.</p>")
    @as("SortBy")
    sortBy: option<sortDefinition>,
    @ocaml.doc("<p>Filters utilization data by dimensions. You can filter by the following dimensions:</p>
		       <ul>
            <li>
               <p>AZ</p>
            </li>
            <li>
               <p>CACHE_ENGINE</p>
            </li>
            <li>
               <p>DEPLOYMENT_OPTION</p>
            </li>
            <li>
               <p>INSTANCE_TYPE</p>
            </li>
            <li>
               <p>LINKED_ACCOUNT</p>
            </li>
            <li>
               <p>OPERATING_SYSTEM</p>
            </li>
            <li>
               <p>PLATFORM</p>
            </li>
            <li>
               <p>REGION</p>
            </li>
            <li>
               <p>SERVICE</p>
            </li>
            <li>
               <p>SCOPE</p>
            </li>
            <li>
               <p>TENANCY</p>
            </li>
         </ul>
		       <p>
            <code>GetReservationUtilization</code> uses the same 
			<a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> object 
			as the other operations, but only <code>AND</code> is supported among each dimension, and nesting is supported up to 
			only one level deep. If there are multiple values for a dimension, they are OR'd together.</p>")
    @as("Filter")
    filter: option<expression>,
    @ocaml.doc("<p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If <code>Granularity</code> isn't set, 
			the response object doesn't include <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>. 
			If both <code>GroupBy</code> and <code>Granularity</code> aren't set, <code>GetReservationUtilization</code> defaults to <code>DAILY</code>.</p>
		       <p>The <code>GetReservationUtilization</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>")
    @as("Granularity")
    granularity: option<granularity>,
    @ocaml.doc("<p>Groups only by <code>SUBSCRIPTION_ID</code>. Metadata is included.</p>")
    @as("GroupBy")
    groupBy: option<groupDefinitions>,
    @ocaml.doc("<p>Sets the start and end dates for retrieving RI utilization. The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is  
            retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>")
    @as("TimePeriod")
    timePeriod: dateInterval,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>The total amount of time that you used your RIs.</p>") @as("Total")
    total: option<reservationAggregates>,
    @ocaml.doc("<p>The amount of time that you used your RIs.</p>") @as("UtilizationsByTime")
    utilizationsByTime: utilizationsByTime,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetReservationUtilizationCommand"
  let make = (
    ~timePeriod,
    ~maxResults=?,
    ~nextPageToken=?,
    ~sortBy=?,
    ~filter=?,
    ~granularity=?,
    ~groupBy=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextPageToken: nextPageToken,
      sortBy: sortBy,
      filter: filter,
      granularity: granularity,
      groupBy: groupBy,
      timePeriod: timePeriod,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReservationPurchaseRecommendation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token that indicates the next set of results that you want to retrieve.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc(
      "<p>The number of recommendations that you want returned in a single response object.</p>"
    )
    @as("PageSize")
    pageSize: option<nonNegativeInteger>,
    @ocaml.doc(
      "<p>The hardware specifications for the service instances that you want recommendations for, such as standard or convertible Amazon EC2 instances.</p>"
    )
    @as("ServiceSpecification")
    serviceSpecification: option<serviceSpecification>,
    @ocaml.doc("<p>The reservation purchase option that you want recommendations for.</p>")
    @as("PaymentOption")
    paymentOption: option<paymentOption>,
    @ocaml.doc("<p>The reservation term that you want recommendations for.</p>") @as("TermInYears")
    termInYears: option<termInYears>,
    @ocaml.doc(
      "<p>The number of previous days that you want Amazon Web Services to consider when it calculates your recommendations.</p>"
    )
    @as("LookbackPeriodInDays")
    lookbackPeriodInDays: option<lookbackPeriodInDays>,
    @ocaml.doc(
      "<p>The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for individual member accounts only.</p>"
    )
    @as("AccountScope")
    accountScope: option<accountScope>,
    @as("Filter") filter: option<expression>,
    @ocaml.doc("<p>The specific service that you want recommendations for.</p>") @as("Service")
    service: genericString,
    @ocaml.doc("<p>The account ID that is associated with the recommendation. </p>")
    @as("AccountId")
    accountId: option<genericString>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token for the next set of retrievable results.</p>")
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>Recommendations for reservations to purchase.</p>") @as("Recommendations")
    recommendations: option<reservationPurchaseRecommendations>,
    @ocaml.doc(
      "<p>Information about this specific recommendation call, such as the time stamp for when Cost Explorer generated this recommendation.</p>"
    )
    @as("Metadata")
    metadata: option<reservationPurchaseRecommendationMetadata>,
  }
  @module("@aws-sdk/client-ce") @new
  external new: request => t = "GetReservationPurchaseRecommendationCommand"
  let make = (
    ~service,
    ~nextPageToken=?,
    ~pageSize=?,
    ~serviceSpecification=?,
    ~paymentOption=?,
    ~termInYears=?,
    ~lookbackPeriodInDays=?,
    ~accountScope=?,
    ~filter=?,
    ~accountId=?,
    (),
  ) =>
    new({
      nextPageToken: nextPageToken,
      pageSize: pageSize,
      serviceSpecification: serviceSpecification,
      paymentOption: paymentOption,
      termInYears: termInYears,
      lookbackPeriodInDays: lookbackPeriodInDays,
      accountScope: accountScope,
      filter: filter,
      service: service,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReservationCoverage = {
  type t
  @ocaml.doc(
    "<p>You can use the following request parameters to query for how much of your instance usage a reservation covered.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>The maximum number of objects that you returned for this request. If more objects are available, in the response, Amazon Web Services provides a NextPageToken value that you can use in a subsequent call to get the next batch of objects.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The value by which you want to sort the data.</p>
         <p>The following values are supported for <code>Key</code>:</p>
         <ul>
            <li>
               <p>
                  <code>OnDemandCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CoverageHoursPercentage</code>
               </p>
            </li>
            <li>
               <p>
                  <code>OnDemandHours</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ReservedHours</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TotalRunningHours</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CoverageNormalizedUnitsPercentage</code>
               </p>
            </li>
            <li>
               <p>
                  <code>OnDemandNormalizedUnits</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ReservedNormalizedUnits</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TotalRunningNormalizedUnits</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Time</code>
               </p>
            </li>
         </ul>
    
         <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or <code>DESCENDING</code>.</p>")
    @as("SortBy")
    sortBy: option<sortDefinition>,
    @ocaml.doc(
      "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>The measurement that you want your reservation coverage reported in.</p>
		       <p>Valid values are <code>Hour</code>, <code>Unit</code>, and <code>Cost</code>. You can use multiple values in a request.</p>")
    @as("Metrics")
    metrics: option<metricNames>,
    @ocaml.doc("<p>Filters utilization data by dimensions. You can filter by the following dimensions:</p>
		       <ul>
            <li>
               <p>AZ</p>
            </li>
            <li>
               <p>CACHE_ENGINE</p>
            </li>
            <li>
               <p>DATABASE_ENGINE</p>
            </li>
            <li>
               <p>DEPLOYMENT_OPTION</p>
            </li>
            <li>
               <p>INSTANCE_TYPE</p>
            </li>
            <li>
               <p>LINKED_ACCOUNT</p>
            </li>
            <li>
               <p>OPERATING_SYSTEM</p>
            </li>
            <li>
               <p>PLATFORM</p>
            </li>
            <li>
               <p>REGION</p>
            </li>
            <li>
               <p>SERVICE</p>
            </li>
            <li>
               <p>TAG</p>
            </li>
            <li>
               <p>TENANCY</p>
            </li>
         </ul>
		       <p>
            <code>GetReservationCoverage</code> uses the same 
			<a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> object 
			as the other operations, but only <code>AND</code> is supported among each dimension. You can nest only one level deep. 
			If there are multiple values for a dimension, they are OR'd together.</p>
		       <p>If you don't provide a <code>SERVICE</code> filter, Cost Explorer defaults to EC2.</p>
	        <p>Cost category is also supported.</p>")
    @as("Filter")
    filter: option<expression>,
    @ocaml.doc("<p>The granularity of the Amazon Web Services cost data for the reservation. Valid values are <code>MONTHLY</code> and <code>DAILY</code>.</p>
		       <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If <code>Granularity</code> isn't set, 
			the response object doesn't include <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>.</p>
		       <p>The <code>GetReservationCoverage</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>")
    @as("Granularity")
    granularity: option<granularity>,
    @ocaml.doc("<p>You can group the data by the following attributes:</p>
		       <ul>
            <li>
               <p>AZ</p>
            </li>
            <li>
               <p>CACHE_ENGINE</p>
            </li>
            <li>
               <p>DATABASE_ENGINE</p>
            </li>
            <li>
               <p>DEPLOYMENT_OPTION</p>
            </li>
            <li>
               <p>INSTANCE_TYPE</p>
            </li>
            <li>
               <p>INVOICING_ENTITY</p>
            </li>
            <li>
               <p>LINKED_ACCOUNT</p>
            </li>
            <li>
               <p>OPERATING_SYSTEM</p>
            </li>
            <li>
               <p>PLATFORM</p>
            </li>
            <li>
               <p>REGION</p>
            </li>
            <li>
               <p>TENANCY</p>
            </li>
         </ul>")
    @as("GroupBy")
    groupBy: option<groupDefinitions>,
    @ocaml.doc("<p>The start and end dates of the period that you want to retrieve data about reservation coverage for. You can retrieve data 
			for a maximum of 13 months: the last 12 months and the current month. The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is  
            retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>")
    @as("TimePeriod")
    timePeriod: dateInterval,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>The total amount of instance usage that a reservation covered.</p>") @as("Total")
    total: option<coverage>,
    @ocaml.doc("<p>The amount of time that your reservations covered.</p>") @as("CoveragesByTime")
    coveragesByTime: coveragesByTime,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetReservationCoverageCommand"
  let make = (
    ~timePeriod,
    ~maxResults=?,
    ~sortBy=?,
    ~nextPageToken=?,
    ~metrics=?,
    ~filter=?,
    ~granularity=?,
    ~groupBy=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      sortBy: sortBy,
      nextPageToken: nextPageToken,
      metrics: metrics,
      filter: filter,
      granularity: granularity,
      groupBy: groupBy,
      timePeriod: timePeriod,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDimensionValues = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>This field is only used when SortBy is provided in the request. The maximum number of objects that to be returned for this request. If MaxResults is not specified with SortBy, the request will return 1000 results as the default value for this parameter.</p>
         <p>For <code>GetDimensionValues</code>, MaxResults has an upper limit of 1000.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The value by which you want to sort the data.</p>
         <p>The key represents cost and usage metrics. The following values are supported:</p>
         <ul>
            <li>
               <p>
                  <code>BlendedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UnblendedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AmortizedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NetAmortizedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NetUnblendedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UsageQuantity</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NormalizedUsageAmount</code>
               </p>
            </li>
         </ul>
         <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or <code>DESCENDING</code>.</p>
         <p>When you specify a <code>SortBy</code> paramater, the context must be <code>COST_AND_USAGE</code>. Further, when using <code>SortBy</code>, <code>NextPageToken</code> and <code>SearchString</code> are not supported.</p>")
    @as("SortBy")
    sortBy: option<sortDefinitions>,
    @as("Filter") filter: option<expression>,
    @ocaml.doc("<p>The context for the call to <code>GetDimensionValues</code>. This can be <code>RESERVATIONS</code> or <code>COST_AND_USAGE</code>. 
			The default value is <code>COST_AND_USAGE</code>. If the context is set to <code>RESERVATIONS</code>, the resulting dimension values 
			can be used in the <code>GetReservationUtilization</code> operation. If the context is set to <code>COST_AND_USAGE</code>, 
			the resulting dimension values can be used in the <code>GetCostAndUsage</code> operation.</p>
		       <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following 
           dimensions for searching:</p>
           <ul>
            <li>
               <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
            </li>
            <li>
               <p>BILLING_ENTITY - The Amazon Web Services seller that your account is with. Possible values are the following:</p>
               <p>- Amazon Web Services(Amazon Web Services): The entity that sells Amazon Web Services services.</p>
               <p>- AISPL (Amazon Internet Services Pvt. Ltd.): The local Indian entity that is an acting reseller for Amazon Web Services services in India.</p>
               <p>- Amazon Web Services Marketplace: The entity that supports the sale of solutions built on Amazon Web Services by third-party software providers.</p>
             </li>
            <li>
               <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p>
            </li>
            <li>
               <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
            </li>
            <li>
               <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.</p>
            </li>
            <li>
               <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p>
            </li>
            <li>
               <p>INSTANCE_TYPE_FAMILY - A family of instance types optimized to fit different use cases. Examples are <code>Compute Optimized</code> (<code>C4</code>, <code>C5</code>, <code>C6g</code>, <code>C7g</code> etc.), <code>Memory Optimization</code> (<code>R4</code>, <code>R5n</code>, <code>R5b</code>, <code>R6g</code> etc).</p>
            </li>
            <li>
               <p>INVOICING_ENTITY - The name of the entity issuing the Amazon Web Services invoice.</p>
            </li>
            <li>
               <p>LEGAL_ENTITY_NAME - The name of the organization that sells you Amazon Web Services services, such as Amazon Web Services.</p>
            </li>
            <li>
               <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value 
               field contains the Amazon Web Services ID of the member account.</p>
            </li>
            <li>
               <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p>
            </li>
            <li>
               <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and <code>CreateBucket</code>.</p>
            </li>
            <li>
               <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p>
            </li>
            <li>
               <p>PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand 
               Instances and Standard Reserved Instances.</p>
            </li>
            <li>
               <p>RESERVATION_ID - The unique identifier for an Amazon Web Services Reservation Instance.</p>
            </li>
            <li>
               <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plans.</p>
            </li>
            <li>
               <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute).</p>
            </li>
            <li>
               <p>SERVICE - The Amazon Web Services service such as Amazon DynamoDB.</p>
            </li>
            <li>
               <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
            </li>
            <li>
               <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the <code>GetDimensionValues</code> operation
           includes a unit attribute. Examples include GB and Hrs.</p>
            </li>
            <li>
               <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this 
               operation includes a unit attribute.</p>
            </li>
            <li>
               <p>REGION - The Amazon Web Services Region.</p>
            </li>
            <li>
               <p>RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.</p>
            </li>
            <li>
               <p>RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service.</p>
            </li>
         </ul>
         <p>If you set the context to <code>RESERVATIONS</code>, you can use the following 
           dimensions for searching:</p>
         <ul>
            <li>
               <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
            </li>
            <li>
               <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p>
            </li>
            <li>
               <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
            </li>
            <li>
               <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p>
            </li>
            <li>
               <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value 
               field contains the Amazon Web Services ID of the member account.</p>
            </li>
            <li>
               <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p>
            </li>
            <li>
               <p>REGION - The Amazon Web Services Region.</p>
            </li>
            <li>
               <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.</p>
            </li>
            <li>
               <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).</p>
            </li>
            <li>
               <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
            </li>
         </ul>
         <p>If you set the context to <code>SAVINGS_PLANS</code>, you can use the following dimensions for searching:</p>
         <ul>
            <li>
               <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)</p>
            </li>
            <li>
               <p>PAYMENT_OPTION - Payment option for the given Savings Plans (for example, All Upfront)</p>
            </li>
            <li>
               <p>REGION - The Amazon Web Services Region.</p>
            </li>
            <li>
               <p>INSTANCE_TYPE_FAMILY - The family of instances (For example, <code>m5</code>)</p>
            </li>
            <li>
               <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value 
               field contains the Amazon Web Services ID of the member account.</p>
            </li>
            <li>
               <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plans.</p>
            </li>
         </ul>")
    @as("Context")
    context: option<context>,
    @ocaml.doc("<p>The name of the dimension. Each <code>Dimension</code> is available for a different <code>Context</code>. 
			For more information, see <code>Context</code>. 
			
		</p>")
    @as("Dimension")
    dimension: dimension,
    @ocaml.doc("<p>The start date and end date for retrieving the dimension values. The start date is
      inclusive, but the end date is exclusive. For example, if <code>start</code> is
        <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
      usage data is retrieved from <code>2017-01-01</code> up to and including
        <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>")
    @as("TimePeriod")
    timePeriod: dateInterval,
    @ocaml.doc("<p>The value that you want to search the filter values for.</p>")
    @as("SearchString")
    searchString: option<searchString>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>The total number of search results.</p>") @as("TotalSize") totalSize: pageSize,
    @ocaml.doc("<p>The number of results that Amazon Web Services returned at one time.</p>")
    @as("ReturnSize")
    returnSize: pageSize,
    @ocaml.doc("<p>The filters that you used to filter your request. Some dimensions are available only for a specific context.</p>
		       <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following 
           dimensions for searching:</p>
           <ul>
            <li>
               <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
            </li>
            <li>
               <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.</p>
            </li>
            <li>
               <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p>
            </li>
            <li>
               <p>LEGAL_ENTITY_NAME - The name of the organization that sells you Amazon Web Services services, such as Amazon Web Services.</p>
            </li>
            <li>
               <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value 
               field contains the Amazon Web Services ID of the member account.</p>
            </li>
            <li>
               <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p>
            </li>
            <li>
               <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and <code>CreateBucket</code>.</p>
            </li>
            <li>
               <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p>
            </li>
            <li>
               <p>PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand 
               Instances and Standard Reserved Instances.</p>
            </li>
            <li>
               <p>SERVICE - The Amazon Web Services service such as Amazon DynamoDB.</p>
            </li>
            <li>
               <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the <code>GetDimensionValues</code> operation
           includes a unit attribute. Examples include GB and Hrs.</p>
            </li>
            <li>
               <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this 
               operation includes a unit attribute.</p>
            </li>
            <li>
               <p>RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.</p>
            </li>
            <li>
               <p>RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service.</p>
            </li>
         </ul>
         <p>If you set the context to <code>RESERVATIONS</code>, you can use the following 
           dimensions for searching:</p>
         <ul>
            <li>
               <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
            </li>
            <li>
               <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p>
            </li>
            <li>
               <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
            </li>
            <li>
               <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p>
            </li>
            <li>
               <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value 
               field contains the Amazon Web Services ID of the member account.</p>
            </li>
            <li>
               <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p>
            </li>
            <li>
               <p>REGION - The Amazon Web Services Region.</p>
            </li>
            <li>
               <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.</p>
            </li>
            <li>
               <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).</p>
            </li>
            <li>
               <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
            </li>
         </ul>
         <p>If you set the context to <code>SAVINGS_PLANS</code>, you can use the following dimensions for searching:</p>
         <ul>
            <li>
               <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)</p>
            </li>
            <li>
               <p>PAYMENT_OPTION - Payment option for the given Savings Plans (for example, All Upfront)</p>
            </li>
            <li>
               <p>REGION - The Amazon Web Services Region.</p>
            </li>
            <li>
               <p>INSTANCE_TYPE_FAMILY - The family of instances (For example, <code>m5</code>)</p>
            </li>
            <li>
               <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value 
               field contains the Amazon Web Services ID of the member account.</p>
            </li>
            <li>
               <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plan</p>
            </li>
         </ul>")
    @as("DimensionValues")
    dimensionValues: dimensionValuesWithAttributesList,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetDimensionValuesCommand"
  let make = (
    ~dimension,
    ~timePeriod,
    ~nextPageToken=?,
    ~maxResults=?,
    ~sortBy=?,
    ~filter=?,
    ~context=?,
    ~searchString=?,
    (),
  ) =>
    new({
      nextPageToken: nextPageToken,
      maxResults: maxResults,
      sortBy: sortBy,
      filter: filter,
      context: context,
      dimension: dimension,
      timePeriod: timePeriod,
      searchString: searchString,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCostForecast = {
  type t
  type request = {
    @ocaml.doc("<p>Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean 
			by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value 
			falling in the prediction interval. Higher confidence levels result in wider prediction intervals.</p>")
    @as("PredictionIntervalLevel")
    predictionIntervalLevel: option<predictionIntervalLevel>,
    @ocaml.doc("<p>The filters that you want to use to filter your forecast. The <code>GetCostForecast</code> API supports filtering by the following dimensions:</p>
		
	        <ul>
            <li>
               <p>
                  <code>AZ</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INSTANCE_TYPE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LINKED_ACCOUNT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LINKED_ACCOUNT_NAME</code>
               </p>
            </li>
            <li>
               <p>
                  <code>OPERATION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PURCHASE_TYPE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>REGION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SERVICE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>USAGE_TYPE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>USAGE_TYPE_GROUP</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RECORD_TYPE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>OPERATING_SYSTEM</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TENANCY</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SCOPE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PLATFORM</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SUBSCRIPTION_ID</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LEGAL_ENTITY_NAME</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DEPLOYMENT_OPTION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DATABASE_ENGINE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INSTANCE_TYPE_FAMILY</code>
               </p>
            </li>
            <li>
               <p>
                  <code>BILLING_ENTITY</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RESERVATION_ID</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SAVINGS_PLAN_ARN</code>
               </p>
            </li>
         </ul>")
    @as("Filter")
    filter: option<expression>,
    @ocaml.doc("<p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code> forecasts or 12 months of <code>MONTHLY</code> forecasts.</p>
		       <p>The <code>GetCostForecast</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>")
    @as("Granularity")
    granularity: granularity,
    @ocaml.doc("<p>Which metric Cost Explorer uses to create your forecast. For more information about blended and unblended rates, see 
			<a href=\"http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/\">Why does the \"blended\" annotation 
				appear on some line items in my bill?</a>. </p>
		       <p>Valid values for a <code>GetCostForecast</code> call are the following:</p>
		       <ul>
            <li>
				           <p>AMORTIZED_COST</p>
			         </li>
            <li>
				           <p>BLENDED_COST</p>
			         </li>
            <li>
				           <p>NET_AMORTIZED_COST</p>
			         </li>
            <li>
				           <p>NET_UNBLENDED_COST</p>
			         </li>
            <li>
				           <p>UNBLENDED_COST</p>
			         </li>
         </ul>")
    @as("Metric")
    metric: metric,
    @ocaml.doc(
      "<p>The period of time that you want the forecast to cover. The start date must be equal to or no later than the current date to avoid a validation error.</p>"
    )
    @as("TimePeriod")
    timePeriod: dateInterval,
  }
  type response = {
    @ocaml.doc("<p>The forecasts for your query, in order. For <code>DAILY</code> forecasts, this is a list of days. For <code>MONTHLY</code> forecasts, 
			this is a list of months.</p>")
    @as("ForecastResultsByTime")
    forecastResultsByTime: option<forecastResultsByTime>,
    @ocaml.doc(
      "<p>How much you are forecasted to spend over the forecast period, in <code>USD</code>.</p>"
    )
    @as("Total")
    total: option<metricValue>,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetCostForecastCommand"
  let make = (~granularity, ~metric, ~timePeriod, ~predictionIntervalLevel=?, ~filter=?, ()) =>
    new({
      predictionIntervalLevel: predictionIntervalLevel,
      filter: filter,
      granularity: granularity,
      metric: metric,
      timePeriod: timePeriod,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCostCategories = {
  type t
  type request = {
    @ocaml.doc(
      "<p>If the number of objects that are still available for retrieval exceeds the limit, Amazon Web Services returns a NextPageToken value in the response. To retrieve the next batch of objects, provide the NextPageToken from the prior call in your next request.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>This field is only used when <code>SortBy</code> is provided in the request.</p>
         <p>The maximum number of objects that to be returned for this request.  If <code>MaxResults</code> is not specified with <code>SortBy</code>, the request will return 1000 results as the default value for this parameter.</p>
         <p>For <code>GetCostCategories</code>, MaxResults has an upper limit of 1000.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The value by which you want to sort the data.</p>
         <p>The key represents cost and usage metrics. The following values are supported:</p>
         <ul>
            <li>
               <p>
                  <code>BlendedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UnblendedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AmortizedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NetAmortizedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NetUnblendedCost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UsageQuantity</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NormalizedUsageAmount</code>
               </p>
            </li>
         </ul>
         <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or <code>DESCENDING</code>.</p>
         <p>When using <code>SortBy</code>, <code>NextPageToken</code> and <code>SearchString</code> are not supported.</p>")
    @as("SortBy")
    sortBy: option<sortDefinitions>,
    @as("Filter") filter: option<expression>,
    @as("CostCategoryName") costCategoryName: option<costCategoryName>,
    @as("TimePeriod") timePeriod: dateInterval,
    @ocaml.doc("<p>The value that you want to search the filter values for.</p>
         <p>If you do not specify a <code>CostCategoryName</code>, <code>SearchString</code> will be used to filter Cost Category names that match the <code>SearchString</code> pattern. If you do specifiy a <code>CostCategoryName</code>, <code>SearchString</code> will be used to filter Cost Category values that match the <code>SearchString</code> pattern.</p>")
    @as("SearchString")
    searchString: option<searchString>,
  }
  type response = {
    @ocaml.doc("<p>The total number of objects.</p>") @as("TotalSize") totalSize: pageSize,
    @ocaml.doc("<p>The number of objects returned.</p>") @as("ReturnSize") returnSize: pageSize,
    @ocaml.doc("<p>The Cost Category values.</p>
         <p>
            <code>CostCategoryValues</code> are not returned if <code>CostCategoryName</code> is not specified in the request. </p>")
    @as("CostCategoryValues")
    costCategoryValues: option<costCategoryValuesList>,
    @ocaml.doc("<p>The names of the Cost Categories.</p>") @as("CostCategoryNames")
    costCategoryNames: option<costCategoryNamesList>,
    @ocaml.doc(
      "<p>If the number of objects that are still available for retrieval exceeds the limit, Amazon Web Services returns a NextPageToken value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetCostCategoriesCommand"
  let make = (
    ~timePeriod,
    ~nextPageToken=?,
    ~maxResults=?,
    ~sortBy=?,
    ~filter=?,
    ~costCategoryName=?,
    ~searchString=?,
    (),
  ) =>
    new({
      nextPageToken: nextPageToken,
      maxResults: maxResults,
      sortBy: sortBy,
      filter: filter,
      costCategoryName: costCategoryName,
      timePeriod: timePeriod,
      searchString: searchString,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCostAndUsageWithResources = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc(
      "<p>You can group Amazon Web Services costs using up to two different groups: <code>DIMENSION</code>, <code>TAG</code>, <code>COST_CATEGORY</code>.</p>"
    )
    @as("GroupBy")
    groupBy: option<groupDefinitions>,
    @ocaml.doc("<p>Which metrics are returned in the query. For more information about blended and
      unblended rates, see <a href=\"http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/\">Why does
        the \"blended\" annotation appear on some line items in my bill?</a>. </p>
         <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>,
      <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>,
      <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and
      <code>UsageQuantity</code>. </p>
         <note>
            <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage
        numbers without taking the units into account. For example, if you aggregate
        <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because
        Amazon EC2 compute hours and data transfer are measured in different units (for example, hours
        vs. GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by
        <code>UsageType</code> or <code>UsageTypeGroups</code>. </p>
         </note>
         <p>
            <code>Metrics</code> is required for <code>GetCostAndUsageWithResources</code> requests.</p>")
    @as("Metrics")
    metrics: option<metricNames>,
    @ocaml.doc("<p>Filters Amazon Web Services costs by different dimensions. For example, you can specify
      <code>SERVICE</code> and <code>LINKED_ACCOUNT</code> and get the costs that are associated
      with that account's usage of that service. You can nest <code>Expression</code> objects to
      define any combination of dimension filters. For more information, see <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a>. </p>
         <p>The <code>GetCostAndUsageWithResources</code> operation requires that you either group by or filter by a
      <code>ResourceId</code>. It requires the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> 
            <code>\"SERVICE = Amazon Elastic Compute Cloud - Compute\"</code> in the filter.</p>
         <p>Valid values for <code>MatchOptions</code> for <code>Dimensions</code> are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
         <p>Valid values for <code>MatchOptions</code> for <code>CostCategories</code> and <code>Tags</code> are <code>EQUALS</code>, <code>ABSENT</code>, and <code>CASE_SENSITIVE</code>. Default values are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>")
    @as("Filter")
    filter: expression,
    @ocaml.doc("<p>Sets the Amazon Web Services cost granularity to <code>MONTHLY</code>, <code>DAILY</code>, or <code>HOURLY</code>. If
	    <code>Granularity</code> isn't set, the response object doesn't include the
	    <code>Granularity</code>, <code>MONTHLY</code>, <code>DAILY</code>, or <code>HOURLY</code>. </p>")
    @as("Granularity")
    granularity: granularity,
    @ocaml.doc("<p>Sets the start and end dates for retrieving Amazon Web Services costs. The range must be within the last 14 days (the start date cannot be earlier than 14 days ago). The start date is inclusive,  but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is  
            retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>")
    @as("TimePeriod")
    timePeriod: dateInterval,
  }
  type response = {
    @ocaml.doc(
      "<p>The attributes that apply to a specific dimension value. For example, if the value is a linked account, the attribute is that account name.</p>"
    )
    @as("DimensionValueAttributes")
    dimensionValueAttributes: option<dimensionValuesWithAttributesList>,
    @ocaml.doc("<p>The time period that is covered by the results in the response.</p>")
    @as("ResultsByTime")
    resultsByTime: option<resultsByTime>,
    @ocaml.doc("<p>The groups that are specified by the <code>Filter</code> or <code>GroupBy</code>
      parameters in the request.</p>")
    @as("GroupDefinitions")
    groupDefinitions: option<groupDefinitions>,
    @ocaml.doc(
      "<p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
  }
  @module("@aws-sdk/client-ce") @new
  external new: request => t = "GetCostAndUsageWithResourcesCommand"
  let make = (~filter, ~granularity, ~timePeriod, ~nextPageToken=?, ~groupBy=?, ~metrics=?, ()) =>
    new({
      nextPageToken: nextPageToken,
      groupBy: groupBy,
      metrics: metrics,
      filter: filter,
      granularity: granularity,
      timePeriod: timePeriod,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCostAndUsage = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>You can group Amazon Web Services costs using up to two different groups, either dimensions, tag keys,
      cost categories, or any two group by types.</p>
	        <p>Valid values for the <code>DIMENSION</code> type are <code>AZ</code>, <code>INSTANCE_TYPE</code>, <code>LEGAL_ENTITY_NAME</code>, <code>INVOICING_ENTITY</code>, <code>LINKED_ACCOUNT</code>, 
			<code>OPERATION</code>, <code>PLATFORM</code>, <code>PURCHASE_TYPE</code>, <code>SERVICE</code>,
		  <code>TENANCY</code>, <code>RECORD_TYPE</code>, and <code>USAGE_TYPE</code>.</p>
	        <p>When you group by the <code>TAG</code>  type and include a valid tag key, you get all tag values, including empty strings.</p>")
    @as("GroupBy")
    groupBy: option<groupDefinitions>,
    @ocaml.doc("<p>Which metrics are returned in the query. For more information about blended and unblended rates, see 
			<a href=\"http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/\">Why does the \"blended\" annotation 
				appear on some line items in my bill?</a>. </p>
		       <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>, <code>NetAmortizedCost</code>, 
			<code>NetUnblendedCost</code>, <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and <code>UsageQuantity</code>. </p>
		       <note>
			         <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage
        numbers without taking into account the units. For example, if you aggregate
          <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because
        Amazon EC2 compute hours and data transfer are measured in different units (for example,
        hours and GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by
          <code>UsageType</code> or <code>UsageTypeGroups</code>. </p>
		       </note>
		       <p>
            <code>Metrics</code> is required for <code>GetCostAndUsage</code> requests.</p>")
    @as("Metrics")
    metrics: metricNames,
    @ocaml.doc("<p>Filters Amazon Web Services costs by different dimensions. For example, you can specify <code>SERVICE</code> and <code>LINKED_ACCOUNT</code> 
			and get the costs that are associated with that account's usage of that service. You can nest <code>Expression</code> objects 
			to define any combination of dimension filters. For more information, see 
			<a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a>. </p>
	        <p>Valid values for <code>MatchOptions</code> for <code>Dimensions</code> are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
	        <p>Valid values for <code>MatchOptions</code> for <code>CostCategories</code> and <code>Tags</code> are <code>EQUALS</code>, <code>ABSENT</code>, and <code>CASE_SENSITIVE</code>. Default values are <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>")
    @as("Filter")
    filter: option<expression>,
    @ocaml.doc("<p>Sets the Amazon Web Services cost granularity to <code>MONTHLY</code> or <code>DAILY</code>, or <code>HOURLY</code>. If <code>Granularity</code> isn't set, 
	    the response object doesn't include the <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>, or <code>HOURLY</code>. </p>")
    @as("Granularity")
    granularity: granularity,
    @ocaml.doc("<p>Sets the start date and end date for retrieving Amazon Web Services costs. The start date
      is inclusive, but the end date is exclusive. For example, if <code>start</code> is
        <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
      usage data is retrieved from <code>2017-01-01</code> up to and including
        <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>")
    @as("TimePeriod")
    timePeriod: dateInterval,
  }
  type response = {
    @ocaml.doc(
      "<p>The attributes that apply to a specific dimension value. For example, if the value is a linked account, the attribute is that account name.</p>"
    )
    @as("DimensionValueAttributes")
    dimensionValueAttributes: option<dimensionValuesWithAttributesList>,
    @ocaml.doc("<p>The time period that's covered by the results in the response.</p>")
    @as("ResultsByTime")
    resultsByTime: option<resultsByTime>,
    @ocaml.doc(
      "<p>The groups that are specified by the <code>Filter</code> or <code>GroupBy</code> parameters in the request.</p>"
    )
    @as("GroupDefinitions")
    groupDefinitions: option<groupDefinitions>,
    @ocaml.doc(
      "<p>The token for the next set of retrievable results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetCostAndUsageCommand"
  let make = (~metrics, ~granularity, ~timePeriod, ~nextPageToken=?, ~groupBy=?, ~filter=?, ()) =>
    new({
      nextPageToken: nextPageToken,
      groupBy: groupBy,
      metrics: metrics,
      filter: filter,
      granularity: granularity,
      timePeriod: timePeriod,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAnomalyMonitor = {
  type t
  type request = {
    @ocaml.doc("<p>
      An optional list of tags to associate with the specified <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html\">
               <code>AnomalyMonitor</code>
            </a>. You can use resource tags to control access to your monitor using IAM policies.</p>
         <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
         <ul>
            <li>
               <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
            </li>
            <li>
               <p>The maximum length of a key is 128 characters</p>
            </li>
            <li>
               <p>The maximum length of a value is 256 characters</p>
            </li>
            <li>
               <p>Valid characters for keys and values are: <code>A-Z</code>, <code>a-z</code>, spaces, <code>_.:/=+-</code>
               </p>
            </li>
            <li>
               <p>Keys and values are case sensitive</p>
            </li>
            <li>
               <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
            </li>
            <li>
               <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
            </li>
         </ul>")
    @as("ResourceTags")
    resourceTags: option<resourceTagList>,
    @ocaml.doc("<p>The cost anomaly detection monitor object that you want to create.</p>")
    @as("AnomalyMonitor")
    anomalyMonitor: anomalyMonitor,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of your newly created cost anomaly detection monitor.</p>")
    @as("MonitorArn")
    monitorArn: genericString,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "CreateAnomalyMonitorCommand"
  let make = (~anomalyMonitor, ~resourceTags=?, ()) =>
    new({resourceTags: resourceTags, anomalyMonitor: anomalyMonitor})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCostCategoryDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>
      The split charge rules used to allocate your charges between your Cost Category values.
    </p>")
    @as("SplitChargeRules")
    splitChargeRules: option<costCategorySplitChargeRulesList>,
    @as("DefaultValue") defaultValue: option<costCategoryValue>,
    @ocaml.doc("<p>The <code>Expression</code> object used to categorize costs. For more information, see
        <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html\">CostCategoryRule </a>. </p>")
    @as("Rules")
    rules: costCategoryRulesList,
    @as("RuleVersion") ruleVersion: costCategoryRuleVersion,
    @ocaml.doc("<p>The unique identifier for your Cost Category.</p>") @as("CostCategoryArn")
    costCategoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>
      The Cost Category's effective start date.
    </p>")
    @as("EffectiveStart")
    effectiveStart: option<zonedDateTime>,
    @ocaml.doc("<p>
      The unique identifier for your Cost Category.
    </p>")
    @as("CostCategoryArn")
    costCategoryArn: option<arn>,
  }
  @module("@aws-sdk/client-ce") @new
  external new: request => t = "UpdateCostCategoryDefinitionCommand"
  let make = (~rules, ~ruleVersion, ~costCategoryArn, ~splitChargeRules=?, ~defaultValue=?, ()) =>
    new({
      splitChargeRules: splitChargeRules,
      defaultValue: defaultValue,
      rules: rules,
      ruleVersion: ruleVersion,
      costCategoryArn: costCategoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAnomalyMonitors = {
  type t
  type request = {
    @ocaml.doc("<p>The number of entries that a paginated response contains. </p>")
    @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>The token to retrieve the next set of results. Amazon Web Services provides the token when
      the response from a previous call has more results than the maximum page size. </p>")
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc("<p>A list of cost anomaly monitor ARNs. </p>") @as("MonitorArnList")
    monitorArnList: option<values>,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next set of results. Amazon Web Services provides the token when
      the response from a previous call has more results than the maximum page size. </p>")
    @as("NextPageToken")
    nextPageToken: option<nextPageToken>,
    @ocaml.doc(
      "<p>A list of cost anomaly monitors that includes the detailed metadata for each monitor. </p>"
    )
    @as("AnomalyMonitors")
    anomalyMonitors: anomalyMonitors,
  }
  @module("@aws-sdk/client-ce") @new external new: request => t = "GetAnomalyMonitorsCommand"
  let make = (~maxResults=?, ~nextPageToken=?, ~monitorArnList=?, ()) =>
    new({maxResults: maxResults, nextPageToken: nextPageToken, monitorArnList: monitorArnList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCostCategoryDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>
      An optional list of tags to associate with the specified <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategory.html\">
               <code>CostCategory</code>
            </a>. You can use resource tags to control access to your <code>cost category</code> using IAM policies.</p>
         <p>Each tag consists of a key and a value, and each key must be unique for the resource. The following restrictions apply to resource tags:</p>
         <ul>
            <li>
               <p>Although the maximum number of array members is 200, you can assign a maximum of 50 user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
            </li>
            <li>
               <p>The maximum length of a key is 128 characters</p>
            </li>
            <li>
               <p>The maximum length of a value is 256 characters</p>
            </li>
            <li>
               <p>Valid characters for keys and values are: <code>A-Z</code>, <code>a-z</code>, spaces, <code>_.:/=+-</code>
               </p>
            </li>
            <li>
               <p>Keys and values are case sensitive</p>
            </li>
            <li>
               <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
            </li>
            <li>
               <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for Amazon Web Services use</p>
            </li>
         </ul>")
    @as("ResourceTags")
    resourceTags: option<resourceTagList>,
    @ocaml.doc("<p>
      The split charge rules used to allocate your charges between your Cost Category values.
    </p>")
    @as("SplitChargeRules")
    splitChargeRules: option<costCategorySplitChargeRulesList>,
    @as("DefaultValue") defaultValue: option<costCategoryValue>,
    @ocaml.doc("<p>The Cost Category rules used to categorize costs. For more information, see
        <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html\">CostCategoryRule</a>.</p>")
    @as("Rules")
    rules: costCategoryRulesList,
    @as("RuleVersion") ruleVersion: costCategoryRuleVersion,
    @as("Name") name: costCategoryName,
  }
  type response = {
    @ocaml.doc("<p>
      The Cost Category's effective start date.
    </p>")
    @as("EffectiveStart")
    effectiveStart: option<zonedDateTime>,
    @ocaml.doc("<p>
      The unique identifier for your newly created Cost Category.
    </p>")
    @as("CostCategoryArn")
    costCategoryArn: option<arn>,
  }
  @module("@aws-sdk/client-ce") @new
  external new: request => t = "CreateCostCategoryDefinitionCommand"
  let make = (
    ~rules,
    ~ruleVersion,
    ~name,
    ~resourceTags=?,
    ~splitChargeRules=?,
    ~defaultValue=?,
    (),
  ) =>
    new({
      resourceTags: resourceTags,
      splitChargeRules: splitChargeRules,
      defaultValue: defaultValue,
      rules: rules,
      ruleVersion: ruleVersion,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCostCategoryDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>
      The date when the Cost Category was effective.
    </p>")
    @as("EffectiveOn")
    effectiveOn: option<zonedDateTime>,
    @ocaml.doc("<p>
      The unique identifier for your Cost Category.
    </p>")
    @as("CostCategoryArn")
    costCategoryArn: arn,
  }
  type response = {@as("CostCategory") costCategory: option<costCategory>}
  @module("@aws-sdk/client-ce") @new
  external new: request => t = "DescribeCostCategoryDefinitionCommand"
  let make = (~costCategoryArn, ~effectiveOn=?, ()) =>
    new({effectiveOn: effectiveOn, costCategoryArn: costCategoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
