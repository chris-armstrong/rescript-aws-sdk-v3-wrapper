type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type errorMessage = string
type vpcId = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type subnetId = string
type amazonawsString = string
type stateMessage = string
type securityGroup = string
type resourceId = string
type region = string
type preCoPassword = string
type nextToken = string
type maxSize = int;
type ipAddress = string
type hsmType = string
type hsmState = [@as("DELETED") #DELETED | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("DEGRADED") #DEGRADED | @as("ACTIVE") #ACTIVE | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type hsmId = string
type field = string
type externalAz = string
type eniId = string
type clustersMaxSize = int;
type clusterState = [@as("DEGRADED") #DEGRADED | @as("DELETED") #DELETED | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("ACTIVE") #ACTIVE | @as("INITIALIZED") #INITIALIZED | @as("INITIALIZE_IN_PROGRESS") #INITIALIZE_IN_PROGRESS | @as("UNINITIALIZED") #UNINITIALIZED | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type clusterId = string
type cert = string
type amazonawsBoolean = bool;
type backupsMaxSize = int;
type backupState = [@as("PENDING_DELETION") #PENDING_DELETION | @as("DELETED") #DELETED | @as("READY") #READY | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type backupRetentionValue = string
type backupRetentionType = [@as("DAYS") #DAYS]
type backupPolicy = [@as("DEFAULT") #DEFAULT]
type backupId = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type subnetIds = array<subnetId>
type strings = array<amazonawsString>
type hsm = {
@as("StateMessage") stateMessage: amazonawsString,
@as("State") state: hsmState,
@as("HsmId") hsmId: option<hsmId>,
@as("EniIp") eniIp: ipAddress,
@as("EniId") eniId: eniId,
@as("SubnetId") subnetId: subnetId,
@as("ClusterId") clusterId: clusterId,
@as("AvailabilityZone") availabilityZone: externalAz
}
type externalSubnetMapping = Js.Dict.t< subnetId>
type destinationBackup = {
@as("SourceCluster") sourceCluster: clusterId,
@as("SourceBackup") sourceBackup: backupId,
@as("SourceRegion") sourceRegion: region,
@as("CreateTimestamp") createTimestamp: amazonawsTimestamp
}
type certificates = {
@as("ClusterCertificate") clusterCertificate: cert,
@as("ManufacturerHardwareCertificate") manufacturerHardwareCertificate: cert,
@as("AwsHardwareCertificate") awsHardwareCertificate: cert,
@as("HsmCertificate") hsmCertificate: cert,
@as("ClusterCsr") clusterCsr: cert
}
type backupRetentionPolicy = {
@as("Value") value: backupRetentionValue,
@as("Type") type_: backupRetentionType
}
type tagList = array<tag>
type hsms = array<hsm>
type filters = Js.Dict.t< strings>
type cluster = {
@as("TagList") tagList: tagList,
@as("Certificates") certificates: certificates,
@as("VpcId") vpcId: vpcId,
@as("SubnetMapping") subnetMapping: externalSubnetMapping,
@as("StateMessage") stateMessage: stateMessage,
@as("State") state: clusterState,
@as("SourceBackupId") sourceBackupId: backupId,
@as("SecurityGroup") securityGroup: securityGroup,
@as("PreCoPassword") preCoPassword: preCoPassword,
@as("HsmType") hsmType: hsmType,
@as("Hsms") hsms: hsms,
@as("CreateTimestamp") createTimestamp: amazonawsTimestamp,
@as("ClusterId") clusterId: clusterId,
@as("BackupRetentionPolicy") backupRetentionPolicy: backupRetentionPolicy,
@as("BackupPolicy") backupPolicy: backupPolicy
}
type backup = {
@as("TagList") tagList: tagList,
@as("DeleteTimestamp") deleteTimestamp: amazonawsTimestamp,
@as("SourceCluster") sourceCluster: clusterId,
@as("SourceBackup") sourceBackup: backupId,
@as("SourceRegion") sourceRegion: region,
@as("NeverExpires") neverExpires: amazonawsBoolean,
@as("CopyTimestamp") copyTimestamp: amazonawsTimestamp,
@as("CreateTimestamp") createTimestamp: amazonawsTimestamp,
@as("ClusterId") clusterId: clusterId,
@as("BackupState") backupState: backupState,
@as("BackupId") backupId: option<backupId>
}
type clusters = array<cluster>
type backups = array<backup>
type clientType;
@module("@aws-sdk/client-cloudhsm") @new external createClient: unit => clientType = "CloudHSMV2Client";
module InitializeCluster = {
  type t;
  type request = {
@as("TrustAnchor") trustAnchor: option<cert>,
@as("SignedCert") signedCert: option<cert>,
@as("ClusterId") clusterId: option<clusterId>
}
  type response = {
@as("StateMessage") stateMessage: stateMessage,
@as("State") state: clusterState
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "InitializeClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteHsm = {
  type t;
  type request = {
@as("EniIp") eniIp: ipAddress,
@as("EniId") eniId: eniId,
@as("HsmId") hsmId: hsmId,
@as("ClusterId") clusterId: option<clusterId>
}
  type response = {
@as("HsmId") hsmId: hsmId
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "DeleteHsmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeyList") tagKeyList: option<tagKeyList>,
@as("ResourceId") resourceId: option<resourceId>
}
  type response = unit
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHsm = {
  type t;
  type request = {
@as("IpAddress") ipAddress: ipAddress,
@as("AvailabilityZone") availabilityZone: option<externalAz>,
@as("ClusterId") clusterId: option<clusterId>
}
  type response = {
@as("Hsm") hsm: hsm
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "CreateHsmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("TagList") tagList: option<tagList>,
@as("ResourceId") resourceId: option<resourceId>
}
  type response = unit
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize,
@as("NextToken") nextToken: nextToken,
@as("ResourceId") resourceId: option<resourceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("TagList") tagList: option<tagList>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "ListTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyBackupToRegion = {
  type t;
  type request = {
@as("TagList") tagList: tagList,
@as("BackupId") backupId: option<backupId>,
@as("DestinationRegion") destinationRegion: option<region>
}
  type response = {
@as("DestinationBackup") destinationBackup: destinationBackup
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "CopyBackupToRegionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreBackup = {
  type t;
  type request = {
@as("BackupId") backupId: option<backupId>
}
  type response = {
@as("Backup") backup: backup
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "RestoreBackupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyCluster = {
  type t;
  type request = {
@as("ClusterId") clusterId: option<clusterId>,
@as("BackupRetentionPolicy") backupRetentionPolicy: option<backupRetentionPolicy>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "ModifyClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyBackupAttributes = {
  type t;
  type request = {
@as("NeverExpires") neverExpires: option<amazonawsBoolean>,
@as("BackupId") backupId: option<backupId>
}
  type response = {
@as("Backup") backup: backup
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "ModifyBackupAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCluster = {
  type t;
  type request = {
@as("ClusterId") clusterId: option<clusterId>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "DeleteClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBackup = {
  type t;
  type request = {
@as("BackupId") backupId: option<backupId>
}
  type response = {
@as("Backup") backup: backup
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "DeleteBackupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
@as("TagList") tagList: tagList,
@as("SubnetIds") subnetIds: option<subnetIds>,
@as("SourceBackupId") sourceBackupId: backupId,
@as("HsmType") hsmType: option<hsmType>,
@as("BackupRetentionPolicy") backupRetentionPolicy: backupRetentionPolicy
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "CreateClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusters = {
  type t;
  type request = {
@as("MaxResults") maxResults: clustersMaxSize,
@as("NextToken") nextToken: nextToken,
@as("Filters") filters: filters
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Clusters") clusters: clusters
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "DescribeClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBackups = {
  type t;
  type request = {
@as("SortAscending") sortAscending: amazonawsBoolean,
@as("Filters") filters: filters,
@as("MaxResults") maxResults: backupsMaxSize,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Backups") backups: backups
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (Js.Promise.t<request>) => t = "DescribeBackupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
