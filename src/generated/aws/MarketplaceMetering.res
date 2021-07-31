type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type errorMessage = string
type versionInteger = int;
type usageRecordResultStatus = [@as("DuplicateRecord") #DuplicateRecord | @as("CustomerNotSubscribed") #CustomerNotSubscribed | @as("Success") #Success]
type usageQuantity = int;
type usageDimension = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type amazonawsString = string
type productCode = string
type nonce = string
type nonEmptyString = string
type customerIdentifier = string
type amazonawsBoolean = bool;
type allocatedUsageQuantity = int;
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type tagList = array<tag>
type usageAllocation = {
@as("Tags") tags: tagList,
@as("AllocatedUsageQuantity") allocatedUsageQuantity: option<allocatedUsageQuantity>
}
type usageAllocations = array<usageAllocation>
type usageRecord = {
@as("UsageAllocations") usageAllocations: usageAllocations,
@as("Quantity") quantity: usageQuantity,
@as("Dimension") dimension: option<usageDimension>,
@as("CustomerIdentifier") customerIdentifier: option<customerIdentifier>,
@as("Timestamp") timestamp: option<amazonawsTimestamp>
}
type usageRecordResult = {
@as("Status") status: usageRecordResultStatus,
@as("MeteringRecordId") meteringRecordId: amazonawsString,
@as("UsageRecord") usageRecord: usageRecord
}
type usageRecordList = array<usageRecord>
type usageRecordResultList = array<usageRecordResult>
type clientType;
@module("@aws-sdk/client-aws-marketplace") @new external createClient: unit => clientType = "MarketplaceMeteringClient";
module ResolveCustomer = {
  type t;
  type request = {
@as("RegistrationToken") registrationToken: option<nonEmptyString>
}
  type response = {
@as("ProductCode") productCode: productCode,
@as("CustomerIdentifier") customerIdentifier: customerIdentifier
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "ResolveCustomerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterUsage = {
  type t;
  type request = {
@as("Nonce") nonce: nonce,
@as("PublicKeyVersion") publicKeyVersion: option<versionInteger>,
@as("ProductCode") productCode: option<productCode>
}
  type response = {
@as("Signature") signature: nonEmptyString,
@as("PublicKeyRotationTimestamp") publicKeyRotationTimestamp: amazonawsTimestamp
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "RegisterUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MeterUsage = {
  type t;
  type request = {
@as("UsageAllocations") usageAllocations: usageAllocations,
@as("DryRun") dryRun: amazonawsBoolean,
@as("UsageQuantity") usageQuantity: usageQuantity,
@as("UsageDimension") usageDimension: option<usageDimension>,
@as("Timestamp") timestamp: option<amazonawsTimestamp>,
@as("ProductCode") productCode: option<productCode>
}
  type response = {
@as("MeteringRecordId") meteringRecordId: amazonawsString
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "MeterUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchMeterUsage = {
  type t;
  type request = {
@as("ProductCode") productCode: option<productCode>,
@as("UsageRecords") usageRecords: option<usageRecordList>
}
  type response = {
@as("UnprocessedRecords") unprocessedRecords: usageRecordList,
@as("Results") results: usageRecordResultList
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "BatchMeterUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
