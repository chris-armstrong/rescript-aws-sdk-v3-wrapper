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
type boolean_ = bool
type allocatedUsageQuantity = int
@ocaml.doc("<p>Metadata assigned to an allocation. Each tag is made up of a key and a value.</p>")
type tag = {
  @ocaml.doc("<p>One part of a key-value pair that makes up a tag. A value acts as a descriptor within
            a tag category (key). The value can be empty or null.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>One part of a key-value pair that makes up a tag. A key is a label that acts like a
            category for the specific tag values.</p>")
  @as("Key")
  key: tagKey,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Usage allocations allow you to split usage into buckets by tags.</p>
        <p>Each UsageAllocation indicates the usage quantity for a specific set of tags.</p>")
type usageAllocation = {
  @ocaml.doc("<p>The set of tags that define the bucket of usage. For the bucket of items with no
            tags, this parameter can be left out.</p>")
  @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The total quantity allocated to this bucket of usage.</p>")
  @as("AllocatedUsageQuantity")
  allocatedUsageQuantity: allocatedUsageQuantity,
}
type usageAllocations = array<usageAllocation>
@ocaml.doc("<p>A UsageRecord indicates a quantity of usage for a given product, customer,
            dimension and time.</p>
        <p>Multiple requests with the same UsageRecords as input will be deduplicated to
            prevent double charges.</p>")
type usageRecord = {
  @ocaml.doc("<p>The set of UsageAllocations to submit. The sum of all UsageAllocation quantities 
            must equal the Quantity of the UsageRecord.</p>")
  @as("UsageAllocations")
  usageAllocations: option<usageAllocations>,
  @ocaml.doc("<p>The quantity of usage consumed by the customer for the given dimension and time.
            Defaults to <code>0</code> if not specified.</p>")
  @as("Quantity")
  quantity: option<usageQuantity>,
  @ocaml.doc("<p>During the process of registering a product on AWS Marketplace, up to eight
            dimensions are specified. These represent different units of value in your
            application.</p>")
  @as("Dimension")
  dimension: usageDimension,
  @ocaml.doc("<p>The CustomerIdentifier is obtained through the ResolveCustomer operation and
            represents an individual buyer in your application.</p>")
  @as("CustomerIdentifier")
  customerIdentifier: customerIdentifier,
  @ocaml.doc("<p>Timestamp, in UTC, for which the usage is being reported.</p>
        <p>Your application can meter usage for up to one hour in the past. Make sure the
            timestamp value is not before the start of the software usage.</p>")
  @as("Timestamp")
  timestamp_: timestamp_,
}
@ocaml.doc("<p>A UsageRecordResult indicates the status of a given UsageRecord processed by
            BatchMeterUsage.</p>")
type usageRecordResult = {
  @ocaml.doc("<p>The UsageRecordResult Status indicates the status of an individual UsageRecord
            processed by BatchMeterUsage.</p>
        <ul>
            <li>
                <p>
                    <i>Success</i>- The UsageRecord was accepted and honored by
                    BatchMeterUsage.</p>
            </li>
            <li>
                <p>
                    <i>CustomerNotSubscribed</i>- The CustomerIdentifier specified is
                    not subscribed to your product. The UsageRecord was not honored. Future
                    UsageRecords for this customer will fail until the customer subscribes to your
                    product.</p>
            </li>
            <li>
                <p>
                    <i>DuplicateRecord</i>- Indicates that the UsageRecord was invalid
                    and not honored. A previously metered UsageRecord had the same customer,
                    dimension, and time, but a different quantity.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<usageRecordResultStatus>,
  @ocaml.doc("<p>The MeteringRecordId is a unique identifier for this metering event.</p>")
  @as("MeteringRecordId")
  meteringRecordId: option<string_>,
  @ocaml.doc("<p>The UsageRecord that was part of the BatchMeterUsage request.</p>")
  @as("UsageRecord")
  usageRecord: option<usageRecord>,
}
type usageRecordList = array<usageRecord>
type usageRecordResultList = array<usageRecordResult>
@ocaml.doc("<fullname>AWS Marketplace Metering Service</fullname>
        <p>This reference provides descriptions of the low-level AWS Marketplace Metering
            Service API.</p>
        <p>AWS Marketplace sellers can use this API to submit usage data for custom usage
            dimensions.</p>
        <p>For information on the permissions you need to use this API, see
            <a href=\"https://docs.aws.amazon.com/marketplace/latest/userguide/iam-user-policy-for-aws-marketplace-actions.html\">AWS Marketing metering and entitlement API permissions</a> in the <i>AWS Marketplace Seller Guide.</i> 
         </p>
        <p>
            <b>Submitting Metering Records</b>
        </p>
        <ul>
            <li>
                <p>
                    <i>MeterUsage</i>- Submits the metering record for a Marketplace
                    product. MeterUsage is called from an EC2 instance or a container running on EKS
                    or ECS.</p>
            </li>
            <li>
                <p>
                    <i>BatchMeterUsage</i>- Submits the metering record for a set of
                    customers. BatchMeterUsage is called from a software-as-a-service (SaaS)
                    application.</p>
            </li>
         </ul>
        <p>
            <b>Accepting New Customers</b>
        </p>
        <ul>
            <li>
                <p>
                    <i>ResolveCustomer</i>- Called by a SaaS application during the
                    registration process. When a buyer visits your website during the registration
                    process, the buyer submits a Registration Token through the browser. The
                    Registration Token is resolved through this API to obtain a CustomerIdentifier
                    and Product Code.</p>
            </li>
         </ul>
        <p>
            <b>Entitlement and Metering for Paid Container Products</b>
        </p>
        <ul>
            <li>
                <p> Paid container software products sold through AWS Marketplace must
                    integrate with the AWS Marketplace Metering Service and call the RegisterUsage
                    operation for software entitlement and metering. Free and BYOL products for
                    Amazon ECS or Amazon EKS aren't required to call RegisterUsage, but you can do
                    so if you want to receive usage data in your seller reports. For more
                    information on using the RegisterUsage operation, see <a href=\"https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html\">Container-Based Products</a>. </p>
            </li>
         </ul>
        <p>BatchMeterUsage API calls are captured by AWS CloudTrail. You can use Cloudtrail to
            verify that the SaaS metering records that you sent are accurate by searching for
            records with the eventName of BatchMeterUsage. You can also use CloudTrail to audit
            records over time. For more information, see the <i>
               <a href=\"http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html\">AWS CloudTrail User Guide</a>
            </i>.</p>")
module ResolveCustomer = {
  type t
  @ocaml.doc("<p>Contains input to the ResolveCustomer operation.</p>")
  type request = {
    @ocaml.doc("<p>When a buyer visits your website during the registration process, the buyer submits
            a registration token through the browser. The registration token is resolved to obtain a
            CustomerIdentifier and product code.</p>")
    @as("RegistrationToken")
    registrationToken: nonEmptyString,
  }
  @ocaml.doc("<p>The result of the ResolveCustomer operation. Contains the CustomerIdentifier and
            product code.</p>")
  type response = {
    @ocaml.doc("<p>The product code is returned to confirm that the buyer is registering for your
            product. Subsequent BatchMeterUsage calls should be made using this product
            code.</p>")
    @as("ProductCode")
    productCode: option<productCode>,
    @ocaml.doc("<p>The CustomerIdentifier is used to identify an individual customer in your
            application. Calls to BatchMeterUsage require CustomerIdentifiers for each
            UsageRecord.</p>")
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
    @ocaml.doc("<p>(Optional) To scope down the registration to a specific running software instance
            and guard against replay attacks.</p>")
    @as("Nonce")
    nonce: option<nonce>,
    @ocaml.doc("<p>Public Key Version provided by AWS Marketplace</p>") @as("PublicKeyVersion")
    publicKeyVersion: versionInteger,
    @ocaml.doc("<p>Product code is used to uniquely identify a product in AWS Marketplace. The product
            code should be the same as the one used during the publishing of a new
            product.</p>")
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
    new({nonce: nonce, publicKeyVersion: publicKeyVersion, productCode: productCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MeterUsage = {
  type t
  type request = {
    @ocaml.doc("<p>The set of UsageAllocations to submit.</p>
        <p>The sum of all UsageAllocation quantities must equal the
            UsageQuantity of the MeterUsage request, and each UsageAllocation must have a
            unique set of tags (include no tags).</p>")
    @as("UsageAllocations")
    usageAllocations: option<usageAllocations>,
    @ocaml.doc("<p>Checks whether you have the permissions required for the action, but does not make
            the request. If you have the permissions, the request returns DryRunOperation;
            otherwise, it returns UnauthorizedException. Defaults to <code>false</code> if not
            specified.</p>")
    @as("DryRun")
    dryRun: option<boolean_>,
    @ocaml.doc("<p>Consumption value for the hour. Defaults to <code>0</code> if not
            specified.</p>")
    @as("UsageQuantity")
    usageQuantity: option<usageQuantity>,
    @ocaml.doc("<p>It will be one of the fcp dimension name provided during the publishing of the
            product.</p>")
    @as("UsageDimension")
    usageDimension: usageDimension,
    @ocaml.doc("<p>Timestamp, in UTC, for which the usage is being reported. Your application can
            meter usage for up to one hour in the past. Make sure the timestamp value is not before
            the start of the software usage.</p>")
    @as("Timestamp")
    timestamp_: timestamp_,
    @ocaml.doc("<p>Product code is used to uniquely identify a product in AWS Marketplace. The product
            code should be the same as the one used during the publishing of a new
            product.</p>")
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
  ) =>
    new({
      usageAllocations: usageAllocations,
      dryRun: dryRun,
      usageQuantity: usageQuantity,
      usageDimension: usageDimension,
      timestamp_: timestamp_,
      productCode: productCode,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchMeterUsage = {
  type t
  @ocaml.doc("<p>A BatchMeterUsageRequest contains UsageRecords, which indicate quantities of usage
            within your application.</p>")
  type request = {
    @ocaml.doc("<p>Product code is used to uniquely identify a product in AWS Marketplace. The product
            code should be the same as the one used during the publishing of a new
            product.</p>")
    @as("ProductCode")
    productCode: productCode,
    @ocaml.doc("<p>The set of UsageRecords to submit. BatchMeterUsage accepts up to 25 UsageRecords at
            a time.</p>")
    @as("UsageRecords")
    usageRecords: usageRecordList,
  }
  @ocaml.doc("<p>Contains the UsageRecords processed by BatchMeterUsage and any records that have
            failed due to transient error.</p>")
  type response = {
    @ocaml.doc("<p>Contains all UsageRecords that were not processed by BatchMeterUsage. This is a
            list of UsageRecords. You can retry the failed request by making another BatchMeterUsage
            call with this list as input in the BatchMeterUsageRequest.</p>")
    @as("UnprocessedRecords")
    unprocessedRecords: option<usageRecordList>,
    @ocaml.doc("<p>Contains all UsageRecords processed by BatchMeterUsage. These records were either
            honored by AWS Marketplace Metering Service or were invalid.</p>")
    @as("Results")
    results: option<usageRecordResultList>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new
  external new: request => t = "BatchMeterUsageCommand"
  let make = (~productCode, ~usageRecords, ()) =>
    new({productCode: productCode, usageRecords: usageRecords})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
