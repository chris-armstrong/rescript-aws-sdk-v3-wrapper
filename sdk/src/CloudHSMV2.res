type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cloudhsm") @new
external createClient: unit => awsServiceClient = "CloudHSMV2Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type vpcId = string
type timestamp_ = Js.Date.t
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
type hsmState = [
  | @as("DELETED") #DELETED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("DEGRADED") #DEGRADED
  | @as("ACTIVE") #ACTIVE
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type hsmId = string
type field = string
type externalAz = string
type eniId = string
type clustersMaxSize = int
type clusterState = [
  | @as("DEGRADED") #DEGRADED
  | @as("DELETED") #DELETED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("ACTIVE") #ACTIVE
  | @as("INITIALIZED") #INITIALIZED
  | @as("INITIALIZE_IN_PROGRESS") #INITIALIZE_IN_PROGRESS
  | @as("UNINITIALIZED") #UNINITIALIZED
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type clusterId = string
type cert = string
type boolean_ = bool
type backupsMaxSize = int
type backupState = [
  | @as("PENDING_DELETION") #PENDING_DELETION
  | @as("DELETED") #DELETED
  | @as("READY") #READY
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type backupRetentionValue = string
type backupRetentionType = [@as("DAYS") #DAYS]
type backupPolicy = [@as("DEFAULT") #DEFAULT]
type backupId = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Contains a tag. A tag is a key-value pair.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: tagKey,
}
type subnetIds = array<subnetId>
type strings = array<string_>
@ocaml.doc("<p>Contains information about a hardware security module (HSM) in an AWS CloudHSM
      cluster.</p>")
type hsm = {
  @ocaml.doc("<p>A description of the HSM's state.</p>") @as("StateMessage")
  stateMessage: option<string_>,
  @ocaml.doc("<p>The HSM's state.</p>") @as("State") state: option<hsmState>,
  @ocaml.doc("<p>The HSM's identifier (ID).</p>") @as("HsmId") hsmId: hsmId,
  @ocaml.doc("<p>The IP address of the HSM's elastic network interface (ENI).</p>") @as("EniIp")
  eniIp: option<ipAddress>,
  @ocaml.doc("<p>The identifier (ID) of the HSM's elastic network interface (ENI).</p>")
  @as("EniId")
  eniId: option<eniId>,
  @ocaml.doc("<p>The subnet that contains the HSM's elastic network interface (ENI).</p>")
  @as("SubnetId")
  subnetId: option<subnetId>,
  @ocaml.doc("<p>The identifier (ID) of the cluster that contains the HSM.</p>") @as("ClusterId")
  clusterId: option<clusterId>,
  @ocaml.doc("<p>The Availability Zone that contains the HSM.</p>") @as("AvailabilityZone")
  availabilityZone: option<externalAz>,
}
type externalSubnetMapping = Js.Dict.t<subnetId>
@ocaml.doc(
  "<p>Contains information about the backup that will be copied and created by the <a>CopyBackupToRegion</a> operation.</p>"
)
type destinationBackup = {
  @ocaml.doc(
    "<p>The identifier (ID) of the cluster containing the source backup from which the new backup was copied.</p>"
  )
  @as("SourceCluster")
  sourceCluster: option<clusterId>,
  @ocaml.doc(
    "<p>The identifier (ID) of the source backup from which the new backup was copied.</p>"
  )
  @as("SourceBackup")
  sourceBackup: option<backupId>,
  @ocaml.doc(
    "<p>The AWS region that contains the source backup from which the new backup was copied.</p>"
  )
  @as("SourceRegion")
  sourceRegion: option<region>,
  @ocaml.doc("<p>The date and time when both the source backup was created.</p>")
  @as("CreateTimestamp")
  createTimestamp: option<timestamp_>,
}
@ocaml.doc("<p>Contains one or more certificates or a certificate signing request (CSR).</p>")
type certificates = {
  @ocaml.doc("<p>The cluster certificate issued (signed) by the issuing certificate authority (CA) of
      the cluster's owner.</p>")
  @as("ClusterCertificate")
  clusterCertificate: option<cert>,
  @ocaml.doc("<p>The HSM hardware certificate issued (signed) by the hardware manufacturer.</p>")
  @as("ManufacturerHardwareCertificate")
  manufacturerHardwareCertificate: option<cert>,
  @ocaml.doc("<p>The HSM hardware certificate issued (signed) by AWS CloudHSM.</p>")
  @as("AwsHardwareCertificate")
  awsHardwareCertificate: option<cert>,
  @ocaml.doc("<p>The HSM certificate issued (signed) by the HSM hardware.</p>")
  @as("HsmCertificate")
  hsmCertificate: option<cert>,
  @ocaml.doc("<p>The cluster's certificate signing request (CSR). The CSR exists only when the cluster's
      state is <code>UNINITIALIZED</code>.</p>")
  @as("ClusterCsr")
  clusterCsr: option<cert>,
}
@ocaml.doc("<p>A policy that defines the number of days to retain backups.</p>")
type backupRetentionPolicy = {
  @ocaml.doc("<p>Use a value between 7 - 379.</p>") @as("Value")
  value: option<backupRetentionValue>,
  @ocaml.doc("<p>The type of backup retention policy. For the <code>DAYS</code> type, the value is 
            the number of days to retain backups.</p>")
  @as("Type")
  type_: option<backupRetentionType>,
}
type tagList_ = array<tag>
type hsms = array<hsm>
type filters = Js.Dict.t<strings>
@ocaml.doc("<p>Contains information about an AWS CloudHSM cluster.</p>")
type cluster = {
  @ocaml.doc("<p>The list of tags for the cluster.</p>") @as("TagList") tagList_: option<tagList_>,
  @ocaml.doc("<p>Contains one or more certificates or a certificate signing request (CSR).</p>")
  @as("Certificates")
  certificates: option<certificates>,
  @ocaml.doc("<p>The identifier (ID) of the virtual private cloud (VPC) that contains the
      cluster.</p>")
  @as("VpcId")
  vpcId: option<vpcId>,
  @ocaml.doc(
    "<p>A map from availability zone to the cluster’s subnet in that availability zone.</p>"
  )
  @as("SubnetMapping")
  subnetMapping: option<externalSubnetMapping>,
  @ocaml.doc("<p>A description of the cluster's state.</p>") @as("StateMessage")
  stateMessage: option<stateMessage>,
  @ocaml.doc("<p>The cluster's state.</p>") @as("State") state: option<clusterState>,
  @ocaml.doc("<p>The identifier (ID) of the backup used to create the cluster. This value exists only
      when the cluster was created from a backup.</p>")
  @as("SourceBackupId")
  sourceBackupId: option<backupId>,
  @ocaml.doc("<p>The identifier (ID) of the cluster's security group.</p>") @as("SecurityGroup")
  securityGroup: option<securityGroup>,
  @ocaml.doc("<p>The default password for the cluster's Pre-Crypto Officer (PRECO) user.</p>")
  @as("PreCoPassword")
  preCoPassword: option<preCoPassword>,
  @ocaml.doc("<p>The type of HSM that the cluster contains.</p>") @as("HsmType")
  hsmType: option<hsmType>,
  @ocaml.doc("<p>Contains information about the HSMs in the cluster.</p>") @as("Hsms")
  hsms: option<hsms>,
  @ocaml.doc("<p>The date and time when the cluster was created.</p>") @as("CreateTimestamp")
  createTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The cluster's identifier (ID).</p>") @as("ClusterId") clusterId: option<clusterId>,
  @ocaml.doc("<p>A policy that defines how the service retains backups.</p>")
  @as("BackupRetentionPolicy")
  backupRetentionPolicy: option<backupRetentionPolicy>,
  @ocaml.doc("<p>The cluster's backup policy.</p>") @as("BackupPolicy")
  backupPolicy: option<backupPolicy>,
}
@ocaml.doc("<p>Contains information about a backup of an AWS CloudHSM cluster. All backup objects
      contain the <code>BackupId</code>, <code>BackupState</code>, <code>ClusterId</code>, and
        <code>CreateTimestamp</code> parameters. Backups that were copied into a destination region
      additionally contain the <code>CopyTimestamp</code>, <code>SourceBackup</code>,
        <code>SourceCluster</code>, and <code>SourceRegion</code> parameters. A backup that is
      pending deletion will include the <code>DeleteTimestamp</code> parameter.</p>")
type backup = {
  @ocaml.doc("<p>The list of tags for the backup.</p>") @as("TagList") tagList_: option<tagList_>,
  @ocaml.doc("<p>The date and time when the backup will be permanently deleted.</p>")
  @as("DeleteTimestamp")
  deleteTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The identifier (ID) of the cluster containing the source backup from which the new
      backup was copied.</p>")
  @as("SourceCluster")
  sourceCluster: option<clusterId>,
  @ocaml.doc("<p>The identifier (ID) of the source backup from which the new backup was
      copied.</p>")
  @as("SourceBackup")
  sourceBackup: option<backupId>,
  @ocaml.doc("<p>The AWS Region that contains the source backup from which the new backup was
      copied.</p>")
  @as("SourceRegion")
  sourceRegion: option<region>,
  @ocaml.doc("<p>Specifies whether the service should exempt a backup from the retention policy for the cluster. <code>True</code> exempts 
      a backup from the retention policy. <code>False</code> means the service applies the backup retention policy defined at the cluster.</p>")
  @as("NeverExpires")
  neverExpires: option<boolean_>,
  @ocaml.doc("<p>The date and time when the backup was copied from a source backup.</p>")
  @as("CopyTimestamp")
  copyTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The date and time when the backup was created.</p>") @as("CreateTimestamp")
  createTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The identifier (ID) of the cluster that was backed up.</p>") @as("ClusterId")
  clusterId: option<clusterId>,
  @ocaml.doc("<p>The state of the backup.</p>") @as("BackupState") backupState: option<backupState>,
  @ocaml.doc("<p>The identifier (ID) of the backup.</p>") @as("BackupId") backupId: backupId,
}
type clusters = array<cluster>
type backups = array<backup>
@ocaml.doc("<p>For more information about AWS CloudHSM, see <a href=\"http://aws.amazon.com/cloudhsm/\">AWS CloudHSM</a> and the <a href=\"https://docs.aws.amazon.com/cloudhsm/latest/userguide/\">AWS
      CloudHSM User Guide</a>.</p>")
module InitializeCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The issuing certificate of the issuing certificate authority (CA) that issued (signed)
      the cluster certificate. You must use a self-signed certificate. The certificate used to sign the HSM CSR must be directly available, and thus must be the
      root certificate. The certificate must be in PEM format and can contain a
      maximum of 5000 characters.</p>")
    @as("TrustAnchor")
    trustAnchor: cert,
    @ocaml.doc("<p>The cluster certificate issued (signed) by your issuing certificate authority (CA). The
      certificate must be in PEM format and can contain a maximum of 5000 characters.</p>")
    @as("SignedCert")
    signedCert: cert,
    @ocaml.doc("<p>The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use
        <a>DescribeClusters</a>.</p>")
    @as("ClusterId")
    clusterId: clusterId,
  }
  type response = {
    @ocaml.doc("<p>A description of the cluster's state.</p>") @as("StateMessage")
    stateMessage: option<stateMessage>,
    @ocaml.doc("<p>The cluster's state.</p>") @as("State") state: option<clusterState>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "InitializeClusterCommand"
  let make = (~trustAnchor, ~signedCert, ~clusterId, ()) =>
    new({trustAnchor: trustAnchor, signedCert: signedCert, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteHsm = {
  type t
  type request = {
    @ocaml.doc("<p>The IP address of the elastic network interface (ENI) of the HSM that you are
      deleting.</p>")
    @as("EniIp")
    eniIp: option<ipAddress>,
    @ocaml.doc("<p>The identifier (ID) of the elastic network interface (ENI) of the HSM that you are
      deleting.</p>")
    @as("EniId")
    eniId: option<eniId>,
    @ocaml.doc("<p>The identifier (ID) of the HSM that you are deleting.</p>") @as("HsmId")
    hsmId: option<hsmId>,
    @ocaml.doc("<p>The identifier (ID) of the cluster that contains the HSM that you are
      deleting.</p>")
    @as("ClusterId")
    clusterId: clusterId,
  }
  type response = {
    @ocaml.doc("<p>The identifier (ID) of the HSM that was deleted.</p>") @as("HsmId")
    hsmId: option<hsmId>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "DeleteHsmCommand"
  let make = (~clusterId, ~eniIp=?, ~eniId=?, ~hsmId=?, ()) =>
    new({eniIp: eniIp, eniId: eniId, hsmId: hsmId, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of one or more tag keys for the tags that you are removing. Specify only the tag
      keys, not the tag values.</p>")
    @as("TagKeyList")
    tagKeyList: tagKeyList,
    @ocaml.doc("<p>The cluster identifier (ID) for the cluster whose tags you are removing. To find the
      cluster ID, use <a>DescribeClusters</a>.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeyList, ~resourceId, ()) => new({tagKeyList: tagKeyList, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateHsm = {
  type t
  type request = {
    @ocaml.doc("<p>The HSM's IP address. If you specify an IP address, use an available address from the
      subnet that maps to the Availability Zone where you are creating the HSM. If you don't specify
      an IP address, one is chosen for you from that subnet.</p>")
    @as("IpAddress")
    ipAddress: option<ipAddress>,
    @ocaml.doc("<p>The Availability Zone where you are creating the HSM. To find the cluster's
      Availability Zones, use <a>DescribeClusters</a>.</p>")
    @as("AvailabilityZone")
    availabilityZone: externalAz,
    @ocaml.doc(
      "<p>The identifier (ID) of the HSM's cluster. To find the cluster ID, use <a>DescribeClusters</a>.</p>"
    )
    @as("ClusterId")
    clusterId: clusterId,
  }
  type response = {
    @ocaml.doc("<p>Information about the HSM that was created.</p>") @as("Hsm") hsm: option<hsm>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "CreateHsmCommand"
  let make = (~availabilityZone, ~clusterId, ~ipAddress=?, ()) =>
    new({ipAddress: ipAddress, availabilityZone: availabilityZone, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of one or more tags.</p>") @as("TagList") tagList_: tagList_,
    @ocaml.doc("<p>The cluster identifier (ID) for the cluster that you are tagging. To find the cluster
      ID, use <a>DescribeClusters</a>.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "TagResourceCommand"
  let make = (~tagList_, ~resourceId, ()) => new({tagList_: tagList_, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTags = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of tags to return in the response. When there are more tags than the
      number you specify, the response contains a <code>NextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<maxSize>,
    @ocaml.doc("<p>The <code>NextToken</code> value that you received in the previous response. Use this
      value to get more tags.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The cluster identifier (ID) for the cluster whose tags you are getting. To find the
      cluster ID, use <a>DescribeClusters</a>.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>An opaque string that indicates that the response contains only a subset of tags. Use
      this value in a subsequent <code>ListTags</code> request to get more tags.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of tags.</p>") @as("TagList") tagList_: tagList_,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "ListTagsCommand"
  let make = (~resourceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyBackupToRegion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Tags to apply to the destination backup during creation. If you specify tags, only these tags will be applied to the destination backup. If you do not specify tags, the service copies tags from the source backup to the destination backup.</p>"
    )
    @as("TagList")
    tagList_: option<tagList_>,
    @ocaml.doc("<p>The ID of the backup that will be copied to the destination region. </p>")
    @as("BackupId")
    backupId: backupId,
    @ocaml.doc("<p>The AWS region that will contain your copied CloudHSM cluster backup.</p>")
    @as("DestinationRegion")
    destinationRegion: region,
  }
  type response = {
    @ocaml.doc("<p>Information on the backup that will be copied to the destination region, including
      CreateTimestamp, SourceBackup, SourceCluster, and Source Region. CreateTimestamp of the
      destination backup will be the same as that of the source backup.</p>
         <p>You will need to use the <code>sourceBackupID</code> returned in this operation to use
      the <a>DescribeBackups</a> operation on the backup that will be copied to the
      destination region.</p>")
    @as("DestinationBackup")
    destinationBackup: option<destinationBackup>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "CopyBackupToRegionCommand"
  let make = (~backupId, ~destinationRegion, ~tagList_=?, ()) =>
    new({tagList_: tagList_, backupId: backupId, destinationRegion: destinationRegion})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreBackup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the backup to be restored. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>"
    )
    @as("BackupId")
    backupId: backupId,
  }
  type response = {
    @ocaml.doc("<p>Information on the <code>Backup</code> object created.</p>") @as("Backup")
    backup: option<backup>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "RestoreBackupCommand"
  let make = (~backupId, ()) => new({backupId: backupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier (ID) of the cluster that you want to modify. To find the cluster ID, use
        <a>DescribeClusters</a>.</p>")
    @as("ClusterId")
    clusterId: clusterId,
    @ocaml.doc("<p>A policy that defines how the service retains backups.</p>")
    @as("BackupRetentionPolicy")
    backupRetentionPolicy: backupRetentionPolicy,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "ModifyClusterCommand"
  let make = (~clusterId, ~backupRetentionPolicy, ()) =>
    new({clusterId: clusterId, backupRetentionPolicy: backupRetentionPolicy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyBackupAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether the service should exempt a backup from the retention policy for the cluster. <code>True</code> exempts 
    a backup from the retention policy. <code>False</code> means the service applies the backup retention policy defined at the cluster.</p>")
    @as("NeverExpires")
    neverExpires: boolean_,
    @ocaml.doc(
      "<p>The identifier (ID) of the backup to modify. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>"
    )
    @as("BackupId")
    backupId: backupId,
  }
  type response = {@as("Backup") backup: option<backup>}
  @module("@aws-sdk/client-cloudhsm") @new
  external new: request => t = "ModifyBackupAttributesCommand"
  let make = (~neverExpires, ~backupId, ()) => new({neverExpires: neverExpires, backupId: backupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use
      <a>DescribeClusters</a>.</p>")
    @as("ClusterId")
    clusterId: clusterId,
  }
  type response = {
    @ocaml.doc("<p>Information about the cluster that was deleted.</p>") @as("Cluster")
    cluster: option<cluster>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "DeleteClusterCommand"
  let make = (~clusterId, ()) => new({clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBackup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the backup to be deleted. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>"
    )
    @as("BackupId")
    backupId: backupId,
  }
  type response = {
    @ocaml.doc("<p>Information on the <code>Backup</code> object deleted.</p>") @as("Backup")
    backup: option<backup>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "DeleteBackupCommand"
  let make = (~backupId, ()) => new({backupId: backupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCluster = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to apply to the CloudHSM cluster during creation.</p>") @as("TagList")
    tagList_: option<tagList_>,
    @ocaml.doc("<p>The identifiers (IDs) of the subnets where you are creating the cluster. You must
      specify at least one subnet. If you specify multiple subnets, they must meet the following
      criteria:</p>
         <ul>
            <li>
               <p>All subnets must be in the same virtual private cloud (VPC).</p>
            </li>
            <li>
               <p>You can specify only one subnet per Availability Zone.</p>
            </li>
         </ul>")
    @as("SubnetIds")
    subnetIds: subnetIds,
    @ocaml.doc("<p>The identifier (ID) of the cluster backup to restore. Use this value to restore the
      cluster from a backup instead of creating a new cluster. To find the backup ID, use <a>DescribeBackups</a>.</p>")
    @as("SourceBackupId")
    sourceBackupId: option<backupId>,
    @ocaml.doc("<p>The type of HSM to use in the cluster. Currently the only allowed value is
      <code>hsm1.medium</code>.</p>")
    @as("HsmType")
    hsmType: hsmType,
    @ocaml.doc("<p>A policy that defines how the service retains backups.</p>")
    @as("BackupRetentionPolicy")
    backupRetentionPolicy: option<backupRetentionPolicy>,
  }
  type response = {
    @ocaml.doc("<p>Information about the cluster that was created.</p>") @as("Cluster")
    cluster: option<cluster>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "CreateClusterCommand"
  let make = (~subnetIds, ~hsmType, ~tagList_=?, ~sourceBackupId=?, ~backupRetentionPolicy=?, ()) =>
    new({
      tagList_: tagList_,
      subnetIds: subnetIds,
      sourceBackupId: sourceBackupId,
      hsmType: hsmType,
      backupRetentionPolicy: backupRetentionPolicy,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusters = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of clusters to return in the response. When there are more clusters
      than the number you specify, the response contains a <code>NextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<clustersMaxSize>,
    @ocaml.doc("<p>The <code>NextToken</code> value that you received in the previous response. Use this
      value to get more clusters.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>One or more filters to limit the items returned in the response.</p>
         <p>Use the <code>clusterIds</code> filter to return only the specified clusters. Specify
      clusters by their cluster identifier (ID).</p>
         <p>Use the <code>vpcIds</code> filter to return only the clusters in the specified virtual
      private clouds (VPCs). Specify VPCs by their VPC identifier (ID).</p>
         <p>Use the <code>states</code> filter to return only clusters that match the specified
      state.</p>")
    @as("Filters")
    filters: option<filters>,
  }
  type response = {
    @ocaml.doc("<p>An opaque string that indicates that the response contains only a subset of clusters.
      Use this value in a subsequent <code>DescribeClusters</code> request to get more
      clusters.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of clusters.</p>") @as("Clusters") clusters: option<clusters>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "DescribeClustersCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBackups = {
  type t
  type request = {
    @ocaml.doc("<p>Designates whether or not to sort the return backups by ascending chronological order
      of generation.</p>")
    @as("SortAscending")
    sortAscending: option<boolean_>,
    @ocaml.doc("<p>One or more filters to limit the items returned in the response.</p>
         <p>Use the <code>backupIds</code> filter to return only the specified backups. Specify
      backups by their backup identifier (ID).</p>
         <p>Use the <code>sourceBackupIds</code> filter to return only the backups created from a
      source backup. The <code>sourceBackupID</code> of a source backup is returned by the <a>CopyBackupToRegion</a> operation.</p>
         <p>Use the <code>clusterIds</code> filter to return only the backups for the specified
      clusters. Specify clusters by their cluster identifier (ID).</p>
         <p>Use the <code>states</code> filter to return only backups that match the specified
      state.</p>
         <p>Use the <code>neverExpires</code> filter to return backups filtered by the value in the
        <code>neverExpires</code> parameter. <code>True</code> returns all backups exempt from the
      backup retention policy. <code>False</code> returns all backups with a backup retention policy
      defined at the cluster.</p>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>The maximum number of backups to return in the response. When there are more backups
      than the number you specify, the response contains a <code>NextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<backupsMaxSize>,
    @ocaml.doc("<p>The <code>NextToken</code> value that you received in the previous response. Use this
      value to get more backups.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>An opaque string that indicates that the response contains only a subset of backups.
      Use this value in a subsequent <code>DescribeBackups</code> request to get more
      backups.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of backups.</p>") @as("Backups") backups: option<backups>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "DescribeBackupsCommand"
  let make = (~sortAscending=?, ~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      sortAscending: sortAscending,
      filters: filters,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
