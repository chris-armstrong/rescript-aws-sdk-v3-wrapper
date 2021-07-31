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
type vpcId = string
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type subnetId = string
type string_ = string
type stateMessage = string
type securityGroup = string
type resourceId = string
type region = string
type preCoPassword = string
type nextToken = string
type maxSize = int
type ipAddress = string
type hsmType = string
type hsmState = [@as("DELETED") #DELETED | @as("DELETE_IN_PROGRESS") #DELETEINPROGRESS | @as("DEGRADED") #DEGRADED | @as("ACTIVE") #ACTIVE | @as("CREATE_IN_PROGRESS") #CREATEINPROGRESS]
type hsmId = string
type field = string
type externalAz = string
type eniId = string
type clustersMaxSize = int
type clusterState = [@as("DEGRADED") #DEGRADED | @as("DELETED") #DELETED | @as("DELETE_IN_PROGRESS") #DELETEINPROGRESS | @as("UPDATE_IN_PROGRESS") #UPDATEINPROGRESS | @as("ACTIVE") #ACTIVE | @as("INITIALIZED") #INITIALIZED | @as("INITIALIZE_IN_PROGRESS") #INITIALIZEINPROGRESS | @as("UNINITIALIZED") #UNINITIALIZED | @as("CREATE_IN_PROGRESS") #CREATEINPROGRESS]
type clusterId = string
type cert = string
type boolean_ = bool
type backupsMaxSize = int
type backupState = [@as("PENDING_DELETION") #PENDINGDELETION | @as("DELETED") #DELETED | @as("READY") #READY | @as("CREATE_IN_PROGRESS") #CREATEINPROGRESS]
type backupRetentionValue = string
type backupRetentionType = [@as("DAYS") #DAYS]
type backupPolicy = [@as("DEFAULT") #DEFAULT]
type backupId = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type subnetIds = array<subnetId>
type strings = array<string_>
type hsm = {
@as("StateMessage") stateMessage: option<string_>,
@as("State") state: option<hsmState>,
@as("HsmId") hsmId: hsmId,
@as("EniIp") eniIp: option<ipAddress>,
@as("EniId") eniId: option<eniId>,
@as("SubnetId") subnetId: option<subnetId>,
@as("ClusterId") clusterId: option<clusterId>,
@as("AvailabilityZone") availabilityZone: option<externalAz>
}
type externalSubnetMapping = Js.Dict.t< subnetId>
type destinationBackup = {
@as("SourceCluster") sourceCluster: option<clusterId>,
@as("SourceBackup") sourceBackup: option<backupId>,
@as("SourceRegion") sourceRegion: option<region>,
@as("CreateTimestamp") createTimestamp: option<timestamp_>
}
type certificates = {
@as("ClusterCertificate") clusterCertificate: option<cert>,
@as("ManufacturerHardwareCertificate") manufacturerHardwareCertificate: option<cert>,
@as("AwsHardwareCertificate") awsHardwareCertificate: option<cert>,
@as("HsmCertificate") hsmCertificate: option<cert>,
@as("ClusterCsr") clusterCsr: option<cert>
}
type backupRetentionPolicy = {
@as("Value") value: option<backupRetentionValue>,
@as("Type") type_: option<backupRetentionType>
}
type tagList_ = array<tag>
type hsms = array<hsm>
type filters = Js.Dict.t< strings>
type cluster = {
@as("TagList") tagList_: option<tagList_>,
@as("Certificates") certificates: option<certificates>,
@as("VpcId") vpcId: option<vpcId>,
@as("SubnetMapping") subnetMapping: option<externalSubnetMapping>,
@as("StateMessage") stateMessage: option<stateMessage>,
@as("State") state: option<clusterState>,
@as("SourceBackupId") sourceBackupId: option<backupId>,
@as("SecurityGroup") securityGroup: option<securityGroup>,
@as("PreCoPassword") preCoPassword: option<preCoPassword>,
@as("HsmType") hsmType: option<hsmType>,
@as("Hsms") hsms: option<hsms>,
@as("CreateTimestamp") createTimestamp: option<timestamp_>,
@as("ClusterId") clusterId: option<clusterId>,
@as("BackupRetentionPolicy") backupRetentionPolicy: option<backupRetentionPolicy>,
@as("BackupPolicy") backupPolicy: option<backupPolicy>
}
type backup = {
@as("TagList") tagList_: option<tagList_>,
@as("DeleteTimestamp") deleteTimestamp: option<timestamp_>,
@as("SourceCluster") sourceCluster: option<clusterId>,
@as("SourceBackup") sourceBackup: option<backupId>,
@as("SourceRegion") sourceRegion: option<region>,
@as("NeverExpires") neverExpires: option<boolean_>,
@as("CopyTimestamp") copyTimestamp: option<timestamp_>,
@as("CreateTimestamp") createTimestamp: option<timestamp_>,
@as("ClusterId") clusterId: option<clusterId>,
@as("BackupState") backupState: option<backupState>,
@as("BackupId") backupId: backupId
}
type clusters = array<cluster>
type backups = array<backup>
type awsServiceClient;
@module("@aws-sdk/client-cloudhsm") @new external createClient: unit => awsServiceClient = "CloudHSMV2Client";
module InitializeCluster = {
  type t;
  type request = {
@as("TrustAnchor") trustAnchor: cert,
@as("SignedCert") signedCert: cert,
@as("ClusterId") clusterId: clusterId
}
  type response = {
@as("StateMessage") stateMessage: option<stateMessage>,
@as("State") state: option<clusterState>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "InitializeClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteHsm = {
  type t;
  type request = {
@as("EniIp") eniIp: option<ipAddress>,
@as("EniId") eniId: option<eniId>,
@as("HsmId") hsmId: option<hsmId>,
@as("ClusterId") clusterId: clusterId
}
  type response = {
@as("HsmId") hsmId: option<hsmId>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "DeleteHsmCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeyList") tagKeyList: tagKeyList,
@as("ResourceId") resourceId: resourceId
}
  type response = unit
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateHsm = {
  type t;
  type request = {
@as("IpAddress") ipAddress: option<ipAddress>,
@as("AvailabilityZone") availabilityZone: externalAz,
@as("ClusterId") clusterId: clusterId
}
  type response = {
@as("Hsm") hsm: option<hsm>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "CreateHsmCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("TagList") tagList_: tagList_,
@as("ResourceId") resourceId: resourceId
}
  type response = unit
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize>,
@as("NextToken") nextToken: option<nextToken>,
@as("ResourceId") resourceId: resourceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("TagList") tagList_: tagList_
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "ListTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CopyBackupToRegion = {
  type t;
  type request = {
@as("TagList") tagList_: option<tagList_>,
@as("BackupId") backupId: backupId,
@as("DestinationRegion") destinationRegion: region
}
  type response = {
@as("DestinationBackup") destinationBackup: option<destinationBackup>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "CopyBackupToRegionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RestoreBackup = {
  type t;
  type request = {
@as("BackupId") backupId: backupId
}
  type response = {
@as("Backup") backup: option<backup>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "RestoreBackupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyCluster = {
  type t;
  type request = {
@as("ClusterId") clusterId: clusterId,
@as("BackupRetentionPolicy") backupRetentionPolicy: backupRetentionPolicy
}
  type response = {
@as("Cluster") cluster: option<cluster>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "ModifyClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyBackupAttributes = {
  type t;
  type request = {
@as("NeverExpires") neverExpires: boolean_,
@as("BackupId") backupId: backupId
}
  type response = {
@as("Backup") backup: option<backup>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "ModifyBackupAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCluster = {
  type t;
  type request = {
@as("ClusterId") clusterId: clusterId
}
  type response = {
@as("Cluster") cluster: option<cluster>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "DeleteClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBackup = {
  type t;
  type request = {
@as("BackupId") backupId: backupId
}
  type response = {
@as("Backup") backup: option<backup>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "DeleteBackupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
@as("TagList") tagList_: option<tagList_>,
@as("SubnetIds") subnetIds: subnetIds,
@as("SourceBackupId") sourceBackupId: option<backupId>,
@as("HsmType") hsmType: hsmType,
@as("BackupRetentionPolicy") backupRetentionPolicy: option<backupRetentionPolicy>
}
  type response = {
@as("Cluster") cluster: option<cluster>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "CreateClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeClusters = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<clustersMaxSize>,
@as("NextToken") nextToken: option<nextToken>,
@as("Filters") filters: option<filters>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Clusters") clusters: option<clusters>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "DescribeClustersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBackups = {
  type t;
  type request = {
@as("SortAscending") sortAscending: option<boolean_>,
@as("Filters") filters: option<filters>,
@as("MaxResults") maxResults: option<backupsMaxSize>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Backups") backups: option<backups>
}
  @module("@aws-sdk/client-cloudhsm") @new external new_: (request) => t = "DescribeBackupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
