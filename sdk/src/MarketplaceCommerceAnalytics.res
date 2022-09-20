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
@ocaml.doc("Provides AWS Marketplace business intelligence data on-demand.")
module StartSupportDataExport = {
  type t
  @ocaml.doc("Container for the parameters to the StartSupportDataExport operation.")
  type request = {
    @ocaml.doc("(Optional) Key-value pairs which will be returned, unmodified, in the
        Amazon SNS notification message and the data set metadata file.")
    customerDefinedValues: option<customerDefinedValues>,
    @ocaml.doc("Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an
        error has occurred.")
    snsTopicArn: snsTopicArn,
    @ocaml.doc("(Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems.
        For example, if given the bucket name \"mybucket\" and the prefix \"myprefix/mydatasets\", the output file
        \"outputfile\" would be published to \"s3://mybucket/myprefix/mydatasets/outputfile\".
        If the prefix directory structure does not exist, it will be created.
        If no prefix is provided, the data set will be published to the S3 bucket root.")
    destinationS3Prefix: option<destinationS3Prefix>,
    @ocaml.doc("The name (friendly name, not ARN) of the destination S3 bucket.")
    destinationS3BucketName: destinationS3BucketName,
    @ocaml.doc("The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided
        AWS services.")
    roleNameArn: roleNameArn,
    @ocaml.doc(
      "The start date from which to retrieve the data set in UTC.  This parameter only affects the customer_support_contacts_data data set type."
    )
    fromDate: fromDate,
    @ocaml.doc("<p>
           Specifies the data set type to be written to the output csv file. The data set types customer_support_contacts_data and
           test_customer_support_contacts_data both result in a csv file containing the following fields: Product Id, Product Code, Customer Guid,
           Subscription Guid, Subscription Start Date, Organization, AWS Account Id, Given Name, Surname, Telephone Number, Email, Title,
           Country Code, ZIP Code, Operation Type, and Operation Time.
        </p>
        <p>
            <ul>
                <li><i>customer_support_contacts_data</i> Customer support contact data. The data set will contain all changes (Creates, Updates, and Deletes) to customer support contact data from the date specified in the from_date parameter.</li>
                <li><i>test_customer_support_contacts_data</i> An example data set containing static test data in the same format as customer_support_contacts_data</li>
            </ul>
        </p>")
    dataSetType: supportDataSetType,
  }
  @ocaml.doc("Container for the result of the StartSupportDataExport operation.")
  type response = {
    @ocaml.doc("A unique identifier representing a specific request to the StartSupportDataExport operation. This identifier can be
        used to correlate a request with notifications from the SNS topic.")
    dataSetRequestId: option<dataSetRequestId>,
  }
  @module("@aws-sdk/client-marketplacecommerceanalytics") @new
  external new: request => t = "StartSupportDataExportCommand"
  let make = (
    ~snsTopicArn,
    ~destinationS3BucketName,
    ~roleNameArn,
    ~fromDate,
    ~dataSetType,
    ~customerDefinedValues=?,
    ~destinationS3Prefix=?,
    (),
  ) =>
    new({
      customerDefinedValues,
      snsTopicArn,
      destinationS3Prefix,
      destinationS3BucketName,
      roleNameArn,
      fromDate,
      dataSetType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GenerateDataSet = {
  type t
  @ocaml.doc("Container for the parameters to the GenerateDataSet operation.")
  type request = {
    @ocaml.doc("(Optional) Key-value pairs which will be returned, unmodified, in the
        Amazon SNS notification message and the data set metadata file. These
        key-value pairs can be used to correlated responses with tracking
        information from other systems.")
    customerDefinedValues: option<customerDefinedValues>,
    @ocaml.doc("Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an
        error has occurred.")
    snsTopicArn: snsTopicArn,
    @ocaml.doc("(Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems.
        For example, if given the bucket name \"mybucket\" and the prefix \"myprefix/mydatasets\", the output file
        \"outputfile\" would be published to \"s3://mybucket/myprefix/mydatasets/outputfile\".
        If the prefix directory structure does not exist, it will be created.
        If no prefix is provided, the data set will be published to the S3 bucket root.")
    destinationS3Prefix: option<destinationS3Prefix>,
    @ocaml.doc("The name (friendly name, not ARN) of the destination S3 bucket.")
    destinationS3BucketName: destinationS3BucketName,
    @ocaml.doc("The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided
        AWS services.")
    roleNameArn: roleNameArn,
    @ocaml.doc("The date a data set was published.
        For daily data sets, provide a date with day-level granularity for the desired day.
        For monthly data sets except those with prefix disbursed_amount, provide a date with month-level granularity for the desired month (the day value will be ignored).
        For data sets with prefix disbursed_amount, provide a date with day-level granularity for the desired day. For these data sets we will look backwards in time over the range of 31 days until the first data set is found (the latest one).")
    dataSetPublicationDate: dataSetPublicationDate,
    @ocaml.doc("<p>The desired data set type.</p>
        <p>
            <ul>
                <li>
                    <strong>customer_subscriber_hourly_monthly_subscriptions</strong>
                    <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>customer_subscriber_annual_subscriptions</strong>
                    <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>daily_business_usage_by_instance_type</strong>
                    <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>daily_business_fees</strong>
                    <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>daily_business_free_trial_conversions</strong>
                    <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>daily_business_new_instances</strong>
                    <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>daily_business_new_product_subscribers</strong>
                    <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>daily_business_canceled_product_subscribers</strong>
                    <p>From 2017-09-15 to present: Available daily by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>monthly_revenue_billing_and_revenue_data</strong>
                    <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior.</p>
                </li>
                <li>
                    <strong>monthly_revenue_annual_subscriptions</strong>
                    <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes up-front software charges (e.g. annual) from one month prior.</p>
                </li>
                <li>
                    <strong>monthly_revenue_field_demonstration_usage</strong>
                    <p>From 2018-03-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>monthly_revenue_flexible_payment_schedule</strong>
                    <p>From 2018-11-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>disbursed_amount_by_product</strong>
                    <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>disbursed_amount_by_instance_hours</strong>
                    <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>disbursed_amount_by_customer_geo</strong>
                    <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>disbursed_amount_by_age_of_uncollected_funds</strong>
                    <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>disbursed_amount_by_age_of_disbursed_funds</strong>
                    <p>From 2017-09-15 to present: Available every 30 days by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>disbursed_amount_by_age_of_past_due_funds</strong>
                    <p>From 2018-04-07 to present: Available every 30 days by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>disbursed_amount_by_uncollected_funds_breakdown</strong>
                    <p>From 2019-10-04 to present: Available every 30 days by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>sales_compensation_billed_revenue</strong>
                    <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior, and up-front software charges (e.g. annual) from one month prior.</p>
                </li>
                <li>
                    <strong>us_sales_and_use_tax_records</strong>
                    <p>From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.</p>
                </li>
                <li>
                    <strong>disbursed_amount_by_product_with_uncollected_funds</strong>
                    <p>This data set is deprecated. Download related reports from AMMP instead!</p>
                </li>
                <li>
                    <strong>customer_profile_by_industry</strong>
                    <p>This data set is deprecated. Download related reports from AMMP instead!</p>
                </li>
                <li>
                    <strong>customer_profile_by_revenue</strong>
                    <p>This data set is deprecated. Download related reports from AMMP instead!</p>
                </li>
                <li>
                    <strong>customer_profile_by_geography</strong>
                    <p>This data set is deprecated. Download related reports from AMMP instead!</p>
                </li>
            </ul>
        </p>")
    dataSetType: dataSetType,
  }
  @ocaml.doc("Container for the result of the GenerateDataSet operation.")
  type response = {
    @ocaml.doc("A unique identifier representing a specific request to the GenerateDataSet operation. This identifier can be
        used to correlate a request with notifications from the SNS topic.")
    dataSetRequestId: option<dataSetRequestId>,
  }
  @module("@aws-sdk/client-marketplacecommerceanalytics") @new
  external new: request => t = "GenerateDataSetCommand"
  let make = (
    ~snsTopicArn,
    ~destinationS3BucketName,
    ~roleNameArn,
    ~dataSetPublicationDate,
    ~dataSetType,
    ~customerDefinedValues=?,
    ~destinationS3Prefix=?,
    (),
  ) =>
    new({
      customerDefinedValues,
      snsTopicArn,
      destinationS3Prefix,
      destinationS3BucketName,
      roleNameArn,
      dataSetPublicationDate,
      dataSetType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
