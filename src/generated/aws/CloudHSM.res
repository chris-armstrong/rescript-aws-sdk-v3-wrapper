type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vpcId = string
type amazonawsTimestamp = string
type tagValue = string
type tagKey = string
type subscriptionType = [@as("PRODUCTION") #PRODUCTION]
type subnetId = string
type amazonawsString = string
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
type clientVersion = [@as("5.3") #5_3 | @as("5.1") #5_1]
type clientToken = string
type clientLabel = string
type clientArn = string
type certificateFingerprint = string
type certificate = string
type amazonawsBoolean = bool;
type aZ = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type partitionSerialList = array<partitionSerial>
type partitionList = array<partitionArn>
type hsmList = array<hsmArn>
type hapgList = array<hapgArn>
type clientList = array<clientArn>
type aZList = array<aZ>
type tagList = array<tag>
type clientType;
@module("@aws-sdk/client-cloudhsm") @new external createClient: unit => clientType = "CloudHSMClient";
module ModifyLunaClient = {
  type t;
  type request = {
@as("Certificate") certificate: option<certificate>,
@as("ClientArn") clientArn: option<clientArn>
}
  type response = {
@as("ClientArn") clientArn: clientArn
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "ModifyLunaClientCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyHsm = {
  type t;
  type request = {
@as("SyslogIp") syslogIp: ipAddress,
@as("ExternalId") externalId: externalId,
@as("IamRoleArn") iamRoleArn: iamRoleArn,
@as("EniIp") eniIp: ipAddress,
@as("SubnetId") subnetId: subnetId,
@as("HsmArn") hsmArn: option<hsmArn>
}
  type response = {
@as("HsmArn") hsmArn: hsmArn
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "ModifyHsmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLunaClient = {
  type t;
  type request = {
@as("CertificateFingerprint") certificateFingerprint: certificateFingerprint,
@as("ClientArn") clientArn: clientArn
}
  type response = {
@as("Label") label: label,
@as("LastModifiedTimestamp") lastModifiedTimestamp: amazonawsTimestamp,
@as("CertificateFingerprint") certificateFingerprint: certificateFingerprint,
@as("Certificate") certificate: certificate,
@as("ClientArn") clientArn: clientArn
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "DescribeLunaClientCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLunaClient = {
  type t;
  type request = {
@as("ClientArn") clientArn: option<clientArn>
}
  type response = {
@as("Status") status: option<amazonawsString>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "DeleteLunaClientCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteHsm = {
  type t;
  type request = {
@as("HsmArn") hsmArn: option<hsmArn>
}
  type response = {
@as("Status") status: option<amazonawsString>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "DeleteHsmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteHapg = {
  type t;
  type request = {
@as("HapgArn") hapgArn: option<hapgArn>
}
  type response = {
@as("Status") status: option<amazonawsString>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "DeleteHapgCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLunaClient = {
  type t;
  type request = {
@as("Certificate") certificate: option<certificate>,
@as("Label") label: clientLabel
}
  type response = {
@as("ClientArn") clientArn: clientArn
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "CreateLunaClientCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHsm = {
  type t;
  type request = {
@as("SyslogIp") syslogIp: ipAddress,
@as("ClientToken") clientToken: clientToken,
@as("SubscriptionType") subscriptionType: option<subscriptionType>,
@as("ExternalId") externalId: externalId,
@as("IamRoleArn") iamRoleArn: option<iamRoleArn>,
@as("EniIp") eniIp: ipAddress,
@as("SshKey") sshKey: option<sshKey>,
@as("SubnetId") subnetId: option<subnetId>
}
  type response = {
@as("HsmArn") hsmArn: hsmArn
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "CreateHsmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHapg = {
  type t;
  type request = {
@as("Label") label: option<label>
}
  type response = {
@as("HapgArn") hapgArn: hapgArn
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "CreateHapgCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromResource = {
  type t;
  type request = {
@as("TagKeyList") tagKeyList: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("Status") status: option<amazonawsString>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "RemoveTagsFromResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyHapg = {
  type t;
  type request = {
@as("PartitionSerialList") partitionSerialList: partitionSerialList,
@as("Label") label: label,
@as("HapgArn") hapgArn: option<hapgArn>
}
  type response = {
@as("HapgArn") hapgArn: hapgArn
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "ModifyHapgCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLunaClients = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("ClientList") clientList: option<clientList>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "ListLunaClientsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHsms = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("HsmList") hsmList: hsmList
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "ListHsmsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHapgs = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("HapgList") hapgList: option<hapgList>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "ListHapgsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAvailableZones = {
  type t;
  type request = unit
  type response = {
@as("AZList") aZList: aZList
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "ListAvailableZonesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConfig = {
  type t;
  type request = {
@as("HapgList") hapgList: option<hapgList>,
@as("ClientVersion") clientVersion: option<clientVersion>,
@as("ClientArn") clientArn: option<clientArn>
}
  type response = {
@as("ConfigCred") configCred: amazonawsString,
@as("ConfigFile") configFile: amazonawsString,
@as("ConfigType") configType: amazonawsString
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "GetConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHsm = {
  type t;
  type request = {
@as("HsmSerialNumber") hsmSerialNumber: hsmSerialNumber,
@as("HsmArn") hsmArn: hsmArn
}
  type response = {
@as("Partitions") partitions: partitionList,
@as("ServerCertLastUpdated") serverCertLastUpdated: amazonawsTimestamp,
@as("ServerCertUri") serverCertUri: amazonawsString,
@as("SshKeyLastUpdated") sshKeyLastUpdated: amazonawsTimestamp,
@as("SshPublicKey") sshPublicKey: sshKey,
@as("SoftwareVersion") softwareVersion: amazonawsString,
@as("HsmType") hsmType: amazonawsString,
@as("VendorName") vendorName: amazonawsString,
@as("SerialNumber") serialNumber: hsmSerialNumber,
@as("IamRoleArn") iamRoleArn: iamRoleArn,
@as("SubnetId") subnetId: subnetId,
@as("VpcId") vpcId: vpcId,
@as("SubscriptionEndDate") subscriptionEndDate: amazonawsTimestamp,
@as("SubscriptionStartDate") subscriptionStartDate: amazonawsTimestamp,
@as("SubscriptionType") subscriptionType: subscriptionType,
@as("EniIp") eniIp: ipAddress,
@as("EniId") eniId: eniId,
@as("AvailabilityZone") availabilityZone: aZ,
@as("StatusDetails") statusDetails: amazonawsString,
@as("Status") status: hsmStatus,
@as("HsmArn") hsmArn: hsmArn
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "DescribeHsmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHapg = {
  type t;
  type request = {
@as("HapgArn") hapgArn: option<hapgArn>
}
  type response = {
@as("State") state: cloudHsmObjectState,
@as("PartitionSerialList") partitionSerialList: partitionSerialList,
@as("LastModifiedTimestamp") lastModifiedTimestamp: amazonawsTimestamp,
@as("Label") label: label,
@as("HsmsPendingRegistration") hsmsPendingRegistration: hsmList,
@as("HsmsPendingDeletion") hsmsPendingDeletion: hsmList,
@as("HsmsLastActionFailed") hsmsLastActionFailed: hsmList,
@as("HapgSerial") hapgSerial: amazonawsString,
@as("HapgArn") hapgArn: hapgArn
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "DescribeHapgCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("TagList") tagList: option<tagList>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTagsToResource = {
  type t;
  type request = {
@as("TagList") tagList: option<tagList>,
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("Status") status: option<amazonawsString>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "AddTagsToResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
