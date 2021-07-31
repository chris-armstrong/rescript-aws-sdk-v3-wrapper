type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type supportDataSetType = [@as("test_customer_support_contacts_data") #TestCustomerSupportContactsData | @as("customer_support_contacts_data") #CustomerSupportContactsData]
type snsTopicArn = string
type roleNameArn = string
type optionalValue = string
type optionalKey = string
type fromDate = Js.Date.t;
type exceptionMessage = string
type destinationS3Prefix = string
type destinationS3BucketName = string
type dataSetType = [@as("us_sales_and_use_tax_records") #UsSalesAndUseTaxRecords | @as("sales_compensation_billed_revenue") #SalesCompensationBilledRevenue | @as("customer_profile_by_geography") #CustomerProfileByGeography | @as("customer_profile_by_revenue") #CustomerProfileByRevenue | @as("customer_profile_by_industry") #CustomerProfileByIndustry | @as("disbursed_amount_by_uncollected_funds_breakdown") #DisbursedAmountByUncollectedFundsBreakdown | @as("disbursed_amount_by_age_of_past_due_funds") #DisbursedAmountByAgeOfPastDueFunds | @as("disbursed_amount_by_age_of_disbursed_funds") #DisbursedAmountByAgeOfDisbursedFunds | @as("disbursed_amount_by_age_of_uncollected_funds") #DisbursedAmountByAgeOfUncollectedFunds | @as("disbursed_amount_by_customer_geo") #DisbursedAmountByCustomerGeo | @as("disbursed_amount_by_instance_hours") #DisbursedAmountByInstanceHours | @as("disbursed_amount_by_product_with_uncollected_funds") #DisbursedAmountByProductWithUncollectedFunds | @as("disbursed_amount_by_product") #DisbursedAmountByProduct | @as("monthly_revenue_flexible_payment_schedule") #MonthlyRevenueFlexiblePaymentSchedule | @as("monthly_revenue_field_demonstration_usage") #MonthlyRevenueFieldDemonstrationUsage | @as("monthly_revenue_annual_subscriptions") #MonthlyRevenueAnnualSubscriptions | @as("monthly_revenue_billing_and_revenue_data") #MonthlyRevenueBillingAndRevenueData | @as("daily_business_canceled_product_subscribers") #DailyBusinessCanceledProductSubscribers | @as("daily_business_new_product_subscribers") #DailyBusinessNewProductSubscribers | @as("daily_business_new_instances") #DailyBusinessNewInstances | @as("daily_business_free_trial_conversions") #DailyBusinessFreeTrialConversions | @as("daily_business_fees") #DailyBusinessFees | @as("daily_business_usage_by_instance_type") #DailyBusinessUsageByInstanceType | @as("customer_subscriber_annual_subscriptions") #CustomerSubscriberAnnualSubscriptions | @as("customer_subscriber_hourly_monthly_subscriptions") #CustomerSubscriberHourlyMonthlySubscriptions]
type dataSetRequestId = string
type dataSetPublicationDate = Js.Date.t;
type customerDefinedValues = Js.Dict.t< optionalValue>
type awsServiceClient;
@module("@aws-sdk/client-marketplacecommerceanalytics") @new external createClient: unit => awsServiceClient = "MarketplaceCommerceAnalyticsClient";
module StartSupportDataExport = {
  type t;
  type request = {
customerDefinedValues: option<customerDefinedValues>,
snsTopicArn: snsTopicArn,
destinationS3Prefix: option<destinationS3Prefix>,
destinationS3BucketName: destinationS3BucketName,
roleNameArn: roleNameArn,
fromDate: fromDate,
dataSetType: supportDataSetType
}
  type response = {
dataSetRequestId: option<dataSetRequestId>
}
  @module("@aws-sdk/client-marketplacecommerceanalytics") @new external new_: (request) => t = "StartSupportDataExportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GenerateDataSet = {
  type t;
  type request = {
customerDefinedValues: option<customerDefinedValues>,
snsTopicArn: snsTopicArn,
destinationS3Prefix: option<destinationS3Prefix>,
destinationS3BucketName: destinationS3BucketName,
roleNameArn: roleNameArn,
dataSetPublicationDate: dataSetPublicationDate,
dataSetType: dataSetType
}
  type response = {
dataSetRequestId: option<dataSetRequestId>
}
  @module("@aws-sdk/client-marketplacecommerceanalytics") @new external new_: (request) => t = "GenerateDataSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
