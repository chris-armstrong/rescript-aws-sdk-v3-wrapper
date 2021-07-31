type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type long = float
type errorMessage = string
type versionInteger = int
type usageRecordResultStatus = [@as("DuplicateRecord") #DuplicateRecord | @as("CustomerNotSubscribed") #CustomerNotSubscribed | @as("Success") #Success]
type usageQuantity = int
type usageDimension = string
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type string_ = string
type productCode = string
type nonce = string
type nonEmptyString = string
type customerIdentifier = string
type boolean_ = bool
type allocatedUsageQuantity = int
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type tagList_ = array<tag>
type usageAllocation = {
@as("Tags") tags: option<tagList_>,
@as("AllocatedUsageQuantity") allocatedUsageQuantity: allocatedUsageQuantity
}
type usageAllocations = array<usageAllocation>
type usageRecord = {
@as("UsageAllocations") usageAllocations: option<usageAllocations>,
@as("Quantity") quantity: option<usageQuantity>,
@as("Dimension") dimension: usageDimension,
@as("CustomerIdentifier") customerIdentifier: customerIdentifier,
@as("Timestamp") timestamp_: timestamp_
}
type usageRecordResult = {
@as("Status") status: option<usageRecordResultStatus>,
@as("MeteringRecordId") meteringRecordId: option<string_>,
@as("UsageRecord") usageRecord: option<usageRecord>
}
type usageRecordList = array<usageRecord>
type usageRecordResultList = array<usageRecordResult>
type awsServiceClient;
@module("@aws-sdk/client-aws-marketplace") @new external createClient: unit => awsServiceClient = "MarketplaceMeteringClient";
module ResolveCustomer = {
  type t;
  type request = {
@as("RegistrationToken") registrationToken: nonEmptyString
}
  type response = {
@as("ProductCode") productCode: option<productCode>,
@as("CustomerIdentifier") customerIdentifier: option<customerIdentifier>
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "ResolveCustomerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterUsage = {
  type t;
  type request = {
@as("Nonce") nonce: option<nonce>,
@as("PublicKeyVersion") publicKeyVersion: versionInteger,
@as("ProductCode") productCode: productCode
}
  type response = {
@as("Signature") signature: option<nonEmptyString>,
@as("PublicKeyRotationTimestamp") publicKeyRotationTimestamp: option<timestamp_>
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "RegisterUsageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module MeterUsage = {
  type t;
  type request = {
@as("UsageAllocations") usageAllocations: option<usageAllocations>,
@as("DryRun") dryRun: option<boolean_>,
@as("UsageQuantity") usageQuantity: option<usageQuantity>,
@as("UsageDimension") usageDimension: usageDimension,
@as("Timestamp") timestamp_: timestamp_,
@as("ProductCode") productCode: productCode
}
  type response = {
@as("MeteringRecordId") meteringRecordId: option<string_>
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "MeterUsageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchMeterUsage = {
  type t;
  type request = {
@as("ProductCode") productCode: productCode,
@as("UsageRecords") usageRecords: usageRecordList
}
  type response = {
@as("UnprocessedRecords") unprocessedRecords: option<usageRecordList>,
@as("Results") results: option<usageRecordResultList>
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "BatchMeterUsageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
