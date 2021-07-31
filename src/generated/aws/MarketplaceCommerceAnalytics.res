type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type supportDataSetType = [@as("test_customer_support_contacts_data") #test_customer_support_contacts_data | @as("customer_support_contacts_data") #customer_support_contacts_data]
type snsTopicArn = string
type roleNameArn = string
type optionalValue = string
type optionalKey = string
type fromDate = Js.Date.t;
type exceptionMessage = string
type destinationS3Prefix = string
type destinationS3BucketName = string
type dataSetType = [@as("us_sales_and_use_tax_records") #us_sales_and_use_tax_records | @as("sales_compensation_billed_revenue") #sales_compensation_billed_revenue | @as("customer_profile_by_geography") #customer_profile_by_geography | @as("customer_profile_by_revenue") #customer_profile_by_revenue | @as("customer_profile_by_industry") #customer_profile_by_industry | @as("disbursed_amount_by_uncollected_funds_breakdown") #disbursed_amount_by_uncollected_funds_breakdown | @as("disbursed_amount_by_age_of_past_due_funds") #disbursed_amount_by_age_of_past_due_funds | @as("disbursed_amount_by_age_of_disbursed_funds") #disbursed_amount_by_age_of_disbursed_funds | @as("disbursed_amount_by_age_of_uncollected_funds") #disbursed_amount_by_age_of_uncollected_funds | @as("disbursed_amount_by_customer_geo") #disbursed_amount_by_customer_geo | @as("disbursed_amount_by_instance_hours") #disbursed_amount_by_instance_hours | @as("disbursed_amount_by_product_with_uncollected_funds") #disbursed_amount_by_product_with_uncollected_funds | @as("disbursed_amount_by_product") #disbursed_amount_by_product | @as("monthly_revenue_flexible_payment_schedule") #monthly_revenue_flexible_payment_schedule | @as("monthly_revenue_field_demonstration_usage") #monthly_revenue_field_demonstration_usage | @as("monthly_revenue_annual_subscriptions") #monthly_revenue_annual_subscriptions | @as("monthly_revenue_billing_and_revenue_data") #monthly_revenue_billing_and_revenue_data | @as("daily_business_canceled_product_subscribers") #daily_business_canceled_product_subscribers | @as("daily_business_new_product_subscribers") #daily_business_new_product_subscribers | @as("daily_business_new_instances") #daily_business_new_instances | @as("daily_business_free_trial_conversions") #daily_business_free_trial_conversions | @as("daily_business_fees") #daily_business_fees | @as("daily_business_usage_by_instance_type") #daily_business_usage_by_instance_type | @as("customer_subscriber_annual_subscriptions") #customer_subscriber_annual_subscriptions | @as("customer_subscriber_hourly_monthly_subscriptions") #customer_subscriber_hourly_monthly_subscriptions]
type dataSetRequestId = string
type dataSetPublicationDate = Js.Date.t;
type customerDefinedValues = Js.Dict.t< optionalValue>
type clientType;
@module("@aws-sdk/client-marketplacecommerceanalytics") @new external createClient: unit => clientType = "MarketplaceCommerceAnalyticsClient";
module StartSupportDataExport = {
  type t;
  type request = {
@as("customerDefinedValues") customerDefinedValues: customerDefinedValues,
@as("snsTopicArn") snsTopicArn: option<snsTopicArn>,
@as("destinationS3Prefix") destinationS3Prefix: destinationS3Prefix,
@as("destinationS3BucketName") destinationS3BucketName: option<destinationS3BucketName>,
@as("roleNameArn") roleNameArn: option<roleNameArn>,
@as("fromDate") fromDate: option<fromDate>,
@as("dataSetType") dataSetType: option<supportDataSetType>
}
  type response = {
@as("dataSetRequestId") dataSetRequestId: dataSetRequestId
}
  @module("@aws-sdk/client-marketplacecommerceanalytics") @new external new_: (Js.Promise.t<request>) => t = "StartSupportDataExportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateDataSet = {
  type t;
  type request = {
@as("customerDefinedValues") customerDefinedValues: customerDefinedValues,
@as("snsTopicArn") snsTopicArn: option<snsTopicArn>,
@as("destinationS3Prefix") destinationS3Prefix: destinationS3Prefix,
@as("destinationS3BucketName") destinationS3BucketName: option<destinationS3BucketName>,
@as("roleNameArn") roleNameArn: option<roleNameArn>,
@as("dataSetPublicationDate") dataSetPublicationDate: option<dataSetPublicationDate>,
@as("dataSetType") dataSetType: option<dataSetType>
}
  type response = {
@as("dataSetRequestId") dataSetRequestId: dataSetRequestId
}
  @module("@aws-sdk/client-marketplacecommerceanalytics") @new external new_: (Js.Promise.t<request>) => t = "GenerateDataSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
