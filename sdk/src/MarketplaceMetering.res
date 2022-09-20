type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-aws-marketplace") @new
external createClient: unit => awsServiceClient = "MarketplaceMeteringClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type versionInteger = int
type usageRecordResultStatus = [
  | @as("DuplicateRecord") #DuplicateRecord
  | @as("CustomerNotSubscribed") #CustomerNotSubscribed
  | @as("Success") #Success
]
type usageQuantity = int
type usageDimension = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
type productCode = string
type nonce = string
type nonEmptyString = string
type customerIdentifier = string
type customerAWSAccountId = string
type boolean_ = bool
type allocatedUsageQuantity = int
@ocaml.doc("<p>Metadata assigned to an allocation. Each tag is made up of a <code>key</code> and a
                <code>value</code>.</p>")
type tag = {
  @ocaml.doc("<p>One part of a key-value pair that makes up a <code>tag</code>. A <code>value</code>
            acts as a descriptor within a tag category (key). The value can be empty or null.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>One part of a key-value pair that makes up a <code>tag</code>. A <code>key</code> is a
            label that acts like a category for the specific tag values.</p>")
  @as("Key")
  key: tagKey,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Usage allocations allow you to split usage into buckets by tags.</p>
        <p>Each <code>UsageAllocation</code> indicates the usage quantity for a specific set of
            tags.</p>")
type usageAllocation = {
  @ocaml.doc("<p>The set of tags that define the bucket of usage. For the bucket of items with no tags,
            this parameter can be left out.</p>")
  @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The total quantity allocated to this bucket of usage.</p>")
  @as("AllocatedUsageQuantity")
  allocatedUsageQuantity: allocatedUsageQuantity,
}
type usageAllocations = array<usageAllocation>
@ocaml.doc("<p>A <code>UsageRecord</code> indicates a quantity of usage for a given product,
            customer, dimension and time.</p>
        <p>Multiple requests with the same <code>UsageRecords</code> as input will be
            de-duplicated to prevent double charges.</p>")
type usageRecord = {
  @ocaml.doc("<p>The set of <code>UsageAllocations</code> to submit. The sum of all
                <code>UsageAllocation</code> quantities must equal the Quantity of the
                <code>UsageRecord</code>.</p>")
  @as("UsageAllocations")
  usageAllocations: option<usageAllocations>,
  @ocaml.doc("<p>The quantity of usage consumed by the customer for the given dimension and time.
            Defaults to <code>0</code> if not specified.</p>")
  @as("Quantity")
  quantity: option<usageQuantity>,
  @ocaml.doc("<p>During the process of registering a product on AWS Marketplace, dimensions are
            specified. These represent different units of value in your application.</p>")
  @as("Dimension")
  dimension: usageDimension,
  @ocaml.doc("<p>The <code>CustomerIdentifier</code> is obtained through the
                <code>ResolveCustomer</code> operation and represents an individual buyer in your
            application.</p>")
  @as("CustomerIdentifier")
  customerIdentifier: customerIdentifier,
  @ocaml.doc("<p>Timestamp, in UTC, for which the usage is being reported.</p>
        <p>Your application can meter usage for up to one hour in the past. Make sure the
                <code>timestamp</code> value is not before the start of the software usage.</p>")
  @as("Timestamp")
  timestamp_: timestamp_,
}
@ocaml.doc("<p>A <code>UsageRecordResult</code> indicates the status of a given
                <code>UsageRecord</code> processed by <code>BatchMeterUsage</code>.</p>")
type usageRecordResult = {
  @ocaml.doc("<p>The <code>UsageRecordResult</code>
            <code>Status</code> indicates the status of an individual <code>UsageRecord</code>
            processed by <code>BatchMeterUsage</code>.</p>
        <ul>
            <li>
                <p>
                    <i>Success</i>- The <code>UsageRecord</code> was accepted and
                    honored by <code>BatchMeterUsage</code>.</p>
            </li>
            <li>
                <p>
                    <i>CustomerNotSubscribed</i>- The <code>CustomerIdentifier</code>
                    specified is not able to use your product. The <code>UsageRecord</code> was not
                    honored. There are three causes for this result:</p>
                <ul>
                  <li>
                        <p>The customer identifier is invalid.</p>
                    </li>
                  <li>
                        <p>The customer identifier provided in the metering record does not have
                            an active agreement or subscription with this product. Future
                                <code>UsageRecords</code> for this customer will fail until the
                            customer subscribes to your product.</p>
                    </li>
                  <li>
                        <p>The customer's AWS account was suspended.</p>
                    </li>
               </ul>
            </li>
            <li>
                <p>
                    <i>DuplicateRecord</i>- Indicates that the
                        <code>UsageRecord</code> was invalid and not honored. A previously metered
                        <code>UsageRecord</code> had the same customer, dimension, and time, but a
                    different quantity.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<usageRecordResultStatus>,
  @ocaml.doc("<p>The <code>MeteringRecordId</code> is a unique identifier for this metering
            event.</p>")
  @as("MeteringRecordId")
  meteringRecordId: option<string_>,
  @ocaml.doc("<p>The <code>UsageRecord</code> that was part of the <code>BatchMeterUsage</code>
            request.</p>")
  @as("UsageRecord")
  usageRecord: option<usageRecord>,
}
type usageRecordList = array<usageRecord>
type usageRecordResultList = array<usageRecordResult>
@ocaml.doc("<fullname>AWS Marketplace Metering Service</fullname>
        <p>This reference provides descriptions of the low-level AWS Marketplace Metering Service
            API.</p>
        <p>AWS Marketplace sellers can use this API to submit usage data for custom usage
            dimensions.</p>
        <p>For information on the permissions you need to use this API, see <a href=\"https://docs.aws.amazon.com/marketplace/latest/userguide/iam-user-policy-for-aws-marketplace-actions.html\">AWS Marketplace metering and entitlement API permissions</a> in the
                <i>AWS Marketplace Seller Guide.</i>
        </p>
        <p>
            <b>Submitting Metering Records</b>
        </p>
        <ul>
            <li>
                <p>
                    <i>MeterUsage</i> - Submits the metering record for an AWS
                    Marketplace product. <code>MeterUsage</code> is called from an EC2 instance or a
                    container running on EKS or ECS.</p>
            </li>
            <li>
                <p>
                    <i>BatchMeterUsage</i> - Submits the metering record for a set of
                    customers. <code>BatchMeterUsage</code> is called from a software-as-a-service
                    (SaaS) application.</p>
            </li>
         </ul>
        <p>
            <b>Accepting New Customers</b>
        </p>
        <ul>
            <li>
                <p>
                    <i>ResolveCustomer</i> - Called by a SaaS application during the
                    registration process. When a buyer visits your website during the registration
                    process, the buyer submits a Registration Token through the browser. The
                    Registration Token is resolved through this API to obtain a
                        <code>CustomerIdentifier</code>
                    
                    along with the <code>CustomerAWSAccountId</code> and
                    <code>ProductCode</code>.</p>
            </li>
         </ul>
        <p>
            <b>Entitlement and Metering for Paid Container Products</b>
        </p>
        <ul>
            <li>
                <p>Paid container software products sold through AWS Marketplace must integrate
                    with the AWS Marketplace Metering Service and call the
                        <code>RegisterUsage</code> operation for software entitlement and metering.
                    Free and BYOL products for Amazon ECS or Amazon EKS aren't required to call
                        <code>RegisterUsage</code>, but you can do so if you want to receive usage
                    data in your seller reports. For more information on using the
                        <code>RegisterUsage</code> operation, see <a href=\"https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html\">Container-Based Products</a>. </p>
            </li>
         </ul>
        <p>
            <code>BatchMeterUsage</code> API calls are captured by AWS CloudTrail. You can use
            Cloudtrail to verify that the SaaS metering records that you sent are accurate by
            searching for records with the <code>eventName</code> of <code>BatchMeterUsage</code>.
            You can also use CloudTrail to audit records over time. For more information, see the
                    <i>
               <a href=\"http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html\">AWS CloudTrail User Guide</a>.</i>
         </p>")
module ResolveCustomer = {
  type t
  @ocaml.doc("<p>Contains input to the <code>ResolveCustomer</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>When a buyer visits your website during the registration process, the buyer submits a
            registration token through the browser. The registration token is resolved to obtain a
                <code>CustomerIdentifier</code>
            along with the
                <code>CustomerAWSAccountId</code>
            and
                <code>ProductCode</code>.</p>")
    @as("RegistrationToken")
    registrationToken: nonEmptyString,
  }
  @ocaml.doc("<p>The result of the <code>ResolveCustomer</code> operation. Contains the
                <code>CustomerIdentifier</code>
            
            along with the <code>CustomerAWSAccountId</code> and
            <code>ProductCode</code>.</p>")
  type response = {
    @ocaml.doc("<p>The <code>CustomerAWSAccountId</code> provides the AWS account ID associated with the
                <code>CustomerIdentifier</code> for the individual customer.</p>")
    @as("CustomerAWSAccountId")
    customerAWSAccountId: option<customerAWSAccountId>,
    @ocaml.doc("<p>The product code is returned to confirm that the buyer is registering for your
            product. Subsequent <code>BatchMeterUsage</code> calls should be made using this product
            code.</p>")
    @as("ProductCode")
    productCode: option<productCode>,
    @ocaml.doc("<p>The <code>CustomerIdentifier</code> is used to identify an individual customer in your
            application. Calls to <code>BatchMeterUsage</code> require
                <code>CustomerIdentifiers</code> for each <code>UsageRecord</code>.</p>")
    @as("CustomerIdentifier")
    customerIdentifier: option<customerIdentifier>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new
  external new: request => t = "ResolveCustomerCommand"
  let make = (~registrationToken, ()) => new({registrationToken: registrationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RegisterUsage = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) To scope down the registration to a specific running software instance and
            guard against replay attacks.</p>")
    @as("Nonce")
    nonce: option<nonce>,
    @ocaml.doc("<p>Public Key Version provided by AWS Marketplace</p>") @as("PublicKeyVersion")
    publicKeyVersion: versionInteger,
    @ocaml.doc("<p>Product code is used to uniquely identify a product in AWS Marketplace. The product
            code should be the same as the one used during the publishing of a new product.</p>")
    @as("ProductCode")
    productCode: productCode,
  }
  type response = {
    @ocaml.doc("<p>JWT Token</p>") @as("Signature") signature: option<nonEmptyString>,
    @ocaml.doc("<p>(Optional) Only included when public key version has expired</p>")
    @as("PublicKeyRotationTimestamp")
    publicKeyRotationTimestamp: option<timestamp_>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new
  external new: request => t = "RegisterUsageCommand"
  let make = (~publicKeyVersion, ~productCode, ~nonce=?, ()) =>
    new({nonce, publicKeyVersion, productCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module MeterUsage = {
  type t
  type request = {
    @ocaml.doc("<p>The set of <code>UsageAllocations</code> to submit.</p>
        <p>The sum of all <code>UsageAllocation</code> quantities must equal the
                <code>UsageQuantity</code> of the <code>MeterUsage</code> request, and each
                <code>UsageAllocation</code> must have a unique set of tags (include no
            tags).</p>")
    @as("UsageAllocations")
    usageAllocations: option<usageAllocations>,
    @ocaml.doc("<p>Checks whether you have the permissions required for the action, but does not make the
            request. If you have the permissions, the request returns <code>DryRunOperation</code>;
            otherwise, it returns <code>UnauthorizedException</code>. Defaults to <code>false</code>
            if not specified.</p>")
    @as("DryRun")
    dryRun: option<boolean_>,
    @ocaml.doc(
      "<p>Consumption value for the hour. Defaults to <code>0</code> if not specified.</p>"
    )
    @as("UsageQuantity")
    usageQuantity: option<usageQuantity>,
    @ocaml.doc("<p>It will be one of the fcp dimension name provided during the publishing of the
            product.</p>")
    @as("UsageDimension")
    usageDimension: usageDimension,
    @ocaml.doc("<p>Timestamp, in UTC, for which the usage is being reported. Your application can meter
            usage for up to one hour in the past. Make sure the <code>timestamp</code> value is not
            before the start of the software usage.</p>")
    @as("Timestamp")
    timestamp_: timestamp_,
    @ocaml.doc("<p>Product code is used to uniquely identify a product in AWS Marketplace. The product
            code should be the same as the one used during the publishing of a new product.</p>")
    @as("ProductCode")
    productCode: productCode,
  }
  type response = {
    @ocaml.doc("<p>Metering record id.</p>") @as("MeteringRecordId")
    meteringRecordId: option<string_>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new external new: request => t = "MeterUsageCommand"
  let make = (
    ~usageDimension,
    ~timestamp_,
    ~productCode,
    ~usageAllocations=?,
    ~dryRun=?,
    ~usageQuantity=?,
    (),
  ) => new({usageAllocations, dryRun, usageQuantity, usageDimension, timestamp_, productCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchMeterUsage = {
  type t
  @ocaml.doc("<p>A <code>BatchMeterUsageRequest</code> contains <code>UsageRecords</code>, which
            indicate quantities of usage within your application.</p>")
  type request = {
    @ocaml.doc("<p>Product code is used to uniquely identify a product in AWS Marketplace. The product
            code should be the same as the one used during the publishing of a new product.</p>")
    @as("ProductCode")
    productCode: productCode,
    @ocaml.doc("<p>The set of <code>UsageRecords</code> to submit. <code>BatchMeterUsage</code> accepts
            up to 25 <code>UsageRecords</code> at a time.</p>")
    @as("UsageRecords")
    usageRecords: usageRecordList,
  }
  @ocaml.doc("<p>Contains the <code>UsageRecords</code> processed by <code>BatchMeterUsage</code> and
            any records that have failed due to transient error.</p>")
  type response = {
    @ocaml.doc("<p>Contains all <code>UsageRecords</code> that were not processed by
                <code>BatchMeterUsage</code>. This is a list of <code>UsageRecords</code>. You can
            retry the failed request by making another <code>BatchMeterUsage</code> call with this
            list as input in the <code>BatchMeterUsageRequest</code>.</p>")
    @as("UnprocessedRecords")
    unprocessedRecords: option<usageRecordList>,
    @ocaml.doc("<p>Contains all <code>UsageRecords</code> processed by <code>BatchMeterUsage</code>.
            These records were either honored by AWS Marketplace Metering Service or were invalid.
            Invalid records should be fixed before being resubmitted.</p>")
    @as("Results")
    results: option<usageRecordResultList>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new
  external new: request => t = "BatchMeterUsageCommand"
  let make = (~productCode, ~usageRecords, ()) => new({productCode, usageRecords})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
