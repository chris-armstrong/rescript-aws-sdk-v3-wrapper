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
type vpcId = string
type timestamp_ = string
type tagValue = string
type tagKey = string
type subscriptionType = [@as("PRODUCTION") #PRODUCTION]
type subnetId = string
type string_ = string
type sshKey = string
type partitionSerial = string
type partitionArn = string
type paginationToken = string
type label = string
type ipAddress = string
type iamRoleArn = string
type hsmStatus = [@as("DEGRADED") #DEGRADED | @as("TERMINATED") #TERMINATED | @as("TERMINATING") #TERMINATING | @as("SUSPENDED") #SUSPENDED | @as("UPDATING") #UPDATING | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING]
type hsmSerialNumber = string
type hsmArn = string
type hapgArn = string
type externalId = string
type eniId = string
type cloudHsmObjectState = [@as("DEGRADED") #DEGRADED | @as("UPDATING") #UPDATING | @as("READY") #READY]
type clientVersion = [@as("5.3") #53 | @as("5.1") #51]
type clientToken = string
type clientLabel = string
type clientArn = string
type certificateFingerprint = string
type certificate = string
type boolean_ = bool
type az = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type partitionSerialList = array<partitionSerial>
type partitionList = array<partitionArn>
type hsmList = array<hsmArn>
type hapgList = array<hapgArn>
type clientList = array<clientArn>
type azlist = array<az>
type tagList_ = array<tag>
type awsServiceClient;
@module("@aws-sdk/client-cloudhsm") @new external createClient: unit => awsServiceClient = "CloudHSMClient";
module ModifyLunaClient = {
  type t;
  type request = {
@as("Certificate") certificate: certificate,
@as("ClientArn") clientArn: clientArn
}
  type response = {
@as("ClientArn") clientArn: option<clientArn>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "ModifyLunaClientCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyHsm = {
  type t;
  type request = {
@as("SyslogIp") syslogIp: option<ipAddress>,
@as("ExternalId") externalId: option<externalId>,
@as("IamRoleArn") iamRoleArn: option<iamRoleArn>,
@as("EniIp") eniIp: option<ipAddress>,
@as("SubnetId") subnetId: option<subnetId>,
@as("HsmArn") hsmArn: hsmArn
}
  type response = {
@as("HsmArn") hsmArn: option<hsmArn>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "ModifyHsmCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLunaClient = {
  type t;
  type request = {
@as("CertificateFingerprint") certificateFingerprint: option<certificateFingerprint>,
@as("ClientArn") clientArn: option<clientArn>
}
  type response = {
@as("Label") label: option<label>,
@as("LastModifiedTimestamp") lastModifiedTimestamp: option<timestamp_>,
@as("CertificateFingerprint") certificateFingerprint: option<certificateFingerprint>,
@as("Certificate") certificate: option<certificate>,
@as("ClientArn") clientArn: option<clientArn>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "DescribeLunaClientCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLunaClient = {
  type t;
  type request = {
@as("ClientArn") clientArn: clientArn
}
  type response = {
@as("Status") status: string_
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "DeleteLunaClientCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteHsm = {
  type t;
  type request = {
@as("HsmArn") hsmArn: hsmArn
}
  type response = {
@as("Status") status: string_
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "DeleteHsmCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteHapg = {
  type t;
  type request = {
@as("HapgArn") hapgArn: hapgArn
}
  type response = {
@as("Status") status: string_
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "DeleteHapgCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLunaClient = {
  type t;
  type request = {
@as("Certificate") certificate: certificate,
@as("Label") label: option<clientLabel>
}
  type response = {
@as("ClientArn") clientArn: option<clientArn>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "CreateLunaClientCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateHsm = {
  type t;
  type request = {
@as("SyslogIp") syslogIp: option<ipAddress>,
@as("ClientToken") clientToken: option<clientToken>,
@as("SubscriptionType") subscriptionType: subscriptionType,
@as("ExternalId") externalId: option<externalId>,
@as("IamRoleArn") iamRoleArn: iamRoleArn,
@as("EniIp") eniIp: option<ipAddress>,
@as("SshKey") sshKey: sshKey,
@as("SubnetId") subnetId: subnetId
}
  type response = {
@as("HsmArn") hsmArn: option<hsmArn>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "CreateHsmCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateHapg = {
  type t;
  type request = {
@as("Label") label: label
}
  type response = {
@as("HapgArn") hapgArn: option<hapgArn>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "CreateHapgCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromResource = {
  type t;
  type request = {
@as("TagKeyList") tagKeyList: tagKeyList,
@as("ResourceArn") resourceArn: string_
}
  type response = {
@as("Status") status: string_
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "RemoveTagsFromResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyHapg = {
  type t;
  type request = {
@as("PartitionSerialList") partitionSerialList: option<partitionSerialList>,
@as("Label") label: option<label>,
@as("HapgArn") hapgArn: hapgArn
}
  type response = {
@as("HapgArn") hapgArn: option<hapgArn>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "ModifyHapgCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLunaClients = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
@as("ClientList") clientList: clientList
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "ListLunaClientsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHsms = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
@as("HsmList") hsmList: option<hsmList>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "ListHsmsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHapgs = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
@as("HapgList") hapgList: hapgList
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "ListHapgsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAvailableZones = {
  type t;
  type request = unit
  type response = {
@as("AZList") azlist: option<azlist>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "ListAvailableZonesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetConfig = {
  type t;
  type request = {
@as("HapgList") hapgList: hapgList,
@as("ClientVersion") clientVersion: clientVersion,
@as("ClientArn") clientArn: clientArn
}
  type response = {
@as("ConfigCred") configCred: option<string_>,
@as("ConfigFile") configFile: option<string_>,
@as("ConfigType") configType: option<string_>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "GetConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeHsm = {
  type t;
  type request = {
@as("HsmSerialNumber") hsmSerialNumber: option<hsmSerialNumber>,
@as("HsmArn") hsmArn: option<hsmArn>
}
  type response = {
@as("Partitions") partitions: option<partitionList>,
@as("ServerCertLastUpdated") serverCertLastUpdated: option<timestamp_>,
@as("ServerCertUri") serverCertUri: option<string_>,
@as("SshKeyLastUpdated") sshKeyLastUpdated: option<timestamp_>,
@as("SshPublicKey") sshPublicKey: option<sshKey>,
@as("SoftwareVersion") softwareVersion: option<string_>,
@as("HsmType") hsmType: option<string_>,
@as("VendorName") vendorName: option<string_>,
@as("SerialNumber") serialNumber: option<hsmSerialNumber>,
@as("IamRoleArn") iamRoleArn: option<iamRoleArn>,
@as("SubnetId") subnetId: option<subnetId>,
@as("VpcId") vpcId: option<vpcId>,
@as("SubscriptionEndDate") subscriptionEndDate: option<timestamp_>,
@as("SubscriptionStartDate") subscriptionStartDate: option<timestamp_>,
@as("SubscriptionType") subscriptionType: option<subscriptionType>,
@as("EniIp") eniIp: option<ipAddress>,
@as("EniId") eniId: option<eniId>,
@as("AvailabilityZone") availabilityZone: option<az>,
@as("StatusDetails") statusDetails: option<string_>,
@as("Status") status: option<hsmStatus>,
@as("HsmArn") hsmArn: option<hsmArn>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "DescribeHsmCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeHapg = {
  type t;
  type request = {
@as("HapgArn") hapgArn: hapgArn
}
  type response = {
@as("State") state: option<cloudHsmObjectState>,
@as("PartitionSerialList") partitionSerialList: option<partitionSerialList>,
@as("LastModifiedTimestamp") lastModifiedTimestamp: option<timestamp_>,
@as("Label") label: option<label>,
@as("HsmsPendingRegistration") hsmsPendingRegistration: option<hsmList>,
@as("HsmsPendingDeletion") hsmsPendingDeletion: option<hsmList>,
@as("HsmsLastActionFailed") hsmsLastActionFailed: option<hsmList>,
@as("HapgSerial") hapgSerial: option<string_>,
@as("HapgArn") hapgArn: option<hapgArn>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "DescribeHapgCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: string_
}
  type response = {
@as("TagList") tagList_: tagList_
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddTagsToResource = {
  type t;
  type request = {
@as("TagList") tagList_: tagList_,
@as("ResourceArn") resourceArn: string_
}
  type response = {
@as("Status") status: string_
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "AddTagsToResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
