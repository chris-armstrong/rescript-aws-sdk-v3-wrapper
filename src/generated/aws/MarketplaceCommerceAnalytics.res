type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-marketplacecommerceanalytics") @new
external createClient: unit => awsServiceClient = "MarketplaceCommerceAnalyticsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type supportDataSetType = [
  | @as("test_customer_support_contacts_data") #Test_Customer_Support_Contacts_Data
  | @as("customer_support_contacts_data") #Customer_Support_Contacts_Data
]
type snsTopicArn = string
type roleNameArn = string
type optionalValue = string
type optionalKey = string
type fromDate = Js.Date.t
type exceptionMessage = string
type destinationS3Prefix = string
type destinationS3BucketName = string
type dataSetType = [
  | @as("us_sales_and_use_tax_records") #Us_Sales_And_Use_Tax_Records
  | @as("sales_compensation_billed_revenue") #Sales_Compensation_Billed_Revenue
  | @as("customer_profile_by_geography") #Customer_Profile_By_Geography
  | @as("customer_profile_by_revenue") #Customer_Profile_By_Revenue
  | @as("customer_profile_by_industry") #Customer_Profile_By_Industry
  | @as("disbursed_amount_by_uncollected_funds_breakdown")
  #Disbursed_Amount_By_Uncollected_Funds_Breakdown
  | @as("disbursed_amount_by_age_of_past_due_funds") #Disbursed_Amount_By_Age_Of_Past_Due_Funds
  | @as("disbursed_amount_by_age_of_disbursed_funds") #Disbursed_Amount_By_Age_Of_Disbursed_Funds
  | @as("disbursed_amount_by_age_of_uncollected_funds")
  #Disbursed_Amount_By_Age_Of_Uncollected_Funds
  | @as("disbursed_amount_by_customer_geo") #Disbursed_Amount_By_Customer_Geo
  | @as("disbursed_amount_by_instance_hours") #Disbursed_Amount_By_Instance_Hours
  | @as("disbursed_amount_by_product_with_uncollected_funds")
  #Disbursed_Amount_By_Product_With_Uncollected_Funds
  | @as("disbursed_amount_by_product") #Disbursed_Amount_By_Product
  | @as("monthly_revenue_flexible_payment_schedule") #Monthly_Revenue_Flexible_Payment_Schedule
  | @as("monthly_revenue_field_demonstration_usage") #Monthly_Revenue_Field_Demonstration_Usage
  | @as("monthly_revenue_annual_subscriptions") #Monthly_Revenue_Annual_Subscriptions
  | @as("monthly_revenue_billing_and_revenue_data") #Monthly_Revenue_Billing_And_Revenue_Data
  | @as("daily_business_canceled_product_subscribers") #Daily_Business_Canceled_Product_Subscribers
  | @as("daily_business_new_product_subscribers") #Daily_Business_New_Product_Subscribers
  | @as("daily_business_new_instances") #Daily_Business_New_Instances
  | @as("daily_business_free_trial_conversions") #Daily_Business_Free_Trial_Conversions
  | @as("daily_business_fees") #Daily_Business_Fees
  | @as("daily_business_usage_by_instance_type") #Daily_Business_Usage_By_Instance_Type
  | @as("customer_subscriber_annual_subscriptions") #Customer_Subscriber_Annual_Subscriptions
  | @as("customer_subscriber_hourly_monthly_subscriptions")
  #Customer_Subscriber_Hourly_Monthly_Subscriptions
]
type dataSetRequestId = string
type dataSetPublicationDate = Js.Date.t
type customerDefinedValues = Js.Dict.t<optionalValue>

module StartSupportDataExport = {
  type t
  type request = {
    customerDefinedValues: option<customerDefinedValues>,
    snsTopicArn: snsTopicArn,
    destinationS3Prefix: option<destinationS3Prefix>,
    destinationS3BucketName: destinationS3BucketName,
    roleNameArn: roleNameArn,
    fromDate: fromDate,
    dataSetType: supportDataSetType,
  }
  type response = {dataSetRequestId: option<dataSetRequestId>}
  @module("@aws-sdk/client-marketplacecommerceanalytics") @new
  external new: request => t = "StartSupportDataExportCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateDataSet = {
  type t
  type request = {
    customerDefinedValues: option<customerDefinedValues>,
    snsTopicArn: snsTopicArn,
    destinationS3Prefix: option<destinationS3Prefix>,
    destinationS3BucketName: destinationS3BucketName,
    roleNameArn: roleNameArn,
    dataSetPublicationDate: dataSetPublicationDate,
    dataSetType: dataSetType,
  }
  type response = {dataSetRequestId: option<dataSetRequestId>}
  @module("@aws-sdk/client-marketplacecommerceanalytics") @new
  external new: request => t = "GenerateDataSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
