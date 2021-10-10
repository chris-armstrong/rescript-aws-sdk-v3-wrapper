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
external createClient: unit => awsServiceClient = "CloudHSMClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcId = string
type timestamp_ = string
type tagValue = string
type tagKey = string
@ocaml.doc("<p>Specifies the type of subscription for the HSM.</p>
         <ul>
            <li>
               <p>
                  <b>PRODUCTION</b> - The HSM is being used in a production
          environment.</p>
            </li>
            <li>
               <p>
                  <b>TRIAL</b> - The HSM is being used in a product
          trial.</p>
            </li>
         </ul>")
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
type hsmStatus = [
  | @as("DEGRADED") #DEGRADED
  | @as("TERMINATED") #TERMINATED
  | @as("TERMINATING") #TERMINATING
  | @as("SUSPENDED") #SUSPENDED
  | @as("UPDATING") #UPDATING
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
]
type hsmSerialNumber = string
@ocaml.doc("<p>An ARN that identifies an HSM.</p>") type hsmArn = string
type hapgArn = string
type externalId = string
type eniId = string
type cloudHsmObjectState = [
  | @as("DEGRADED") #DEGRADED
  | @as("UPDATING") #UPDATING
  | @as("READY") #READY
]
type clientVersion = [@as("5.3") #"5_3" | @as("5.1") #"5_1"]
type clientToken = string
type clientLabel = string
type clientArn = string
type certificateFingerprint = string
type certificate = string
type boolean_ = bool
type az = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A key-value pair that identifies or specifies metadata about an AWS CloudHSM
      resource.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: tagKey,
}
type partitionSerialList = array<partitionSerial>
type partitionList = array<partitionArn>
@ocaml.doc("<p>Contains a list of ARNs that identify the HSMs.</p>") type hsmList = array<hsmArn>
type hapgList = array<hapgArn>
type clientList = array<clientArn>
type azlist = array<az>
type tagList_ = array<tag>
@ocaml.doc("<fullname>AWS CloudHSM Service</fullname>
         <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
      more information, see <a href=\"http://aws.amazon.com/cloudhsm/faqs-classic/\">AWS CloudHSM
      Classic FAQs</a>, the <a href=\"https://docs.aws.amazon.com/cloudhsm/classic/userguide/\">AWS
      CloudHSM Classic User Guide</a>, and the <a href=\"https://docs.aws.amazon.com/cloudhsm/classic/APIReference/\">AWS CloudHSM Classic API Reference</a>.</p>
         <p>
            <b>For information about the current version of AWS
      CloudHSM</b>, see <a href=\"http://aws.amazon.com/cloudhsm/\">AWS CloudHSM</a>, the
      <a href=\"https://docs.aws.amazon.com/cloudhsm/latest/userguide/\">AWS CloudHSM User Guide</a>,
      and the <a href=\"https://docs.aws.amazon.com/cloudhsm/latest/APIReference/\">AWS CloudHSM API
      Reference</a>.</p>")
module ModifyLunaClient = {
  type t
  type request = {
    @ocaml.doc("<p>The new certificate for the client.</p>") @as("Certificate")
    certificate: certificate,
    @ocaml.doc("<p>The ARN of the client.</p>") @as("ClientArn") clientArn: clientArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the client.</p>") @as("ClientArn") clientArn: option<clientArn>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "ModifyLunaClientCommand"
  let make = (~certificate, ~clientArn, ()) => new({certificate: certificate, clientArn: clientArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyHsm = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>ModifyHsm</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports
      one syslog monitoring server.</p>")
    @as("SyslogIp")
    syslogIp: option<ipAddress>,
    @ocaml.doc("<p>The new external ID.</p>") @as("ExternalId") externalId: option<externalId>,
    @ocaml.doc("<p>The new IAM role ARN.</p>") @as("IamRoleArn") iamRoleArn: option<iamRoleArn>,
    @ocaml.doc("<p>The new IP address for the elastic network interface (ENI) attached to the
      HSM.</p>
         <p>If the HSM is moved to a different subnet, and an IP address is not specified, an IP
      address will be randomly chosen from the CIDR range of the new subnet.</p>")
    @as("EniIp")
    eniIp: option<ipAddress>,
    @ocaml.doc("<p>The new identifier of the subnet that the HSM is in. The new subnet must be in the same
      Availability Zone as the current subnet.</p>")
    @as("SubnetId")
    subnetId: option<subnetId>,
    @ocaml.doc("<p>The ARN of the HSM to modify.</p>") @as("HsmArn") hsmArn: hsmArn,
  }
  @ocaml.doc("<p>Contains the output of the <a>ModifyHsm</a> operation.</p>")
  type response = {@ocaml.doc("<p>The ARN of the HSM.</p>") @as("HsmArn") hsmArn: option<hsmArn>}
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "ModifyHsmCommand"
  let make = (~hsmArn, ~syslogIp=?, ~externalId=?, ~iamRoleArn=?, ~eniIp=?, ~subnetId=?, ()) =>
    new({
      syslogIp: syslogIp,
      externalId: externalId,
      iamRoleArn: iamRoleArn,
      eniIp: eniIp,
      subnetId: subnetId,
      hsmArn: hsmArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLunaClient = {
  type t
  type request = {
    @ocaml.doc("<p>The certificate fingerprint.</p>") @as("CertificateFingerprint")
    certificateFingerprint: option<certificateFingerprint>,
    @ocaml.doc("<p>The ARN of the client.</p>") @as("ClientArn") clientArn: option<clientArn>,
  }
  type response = {
    @ocaml.doc("<p>The label of the client.</p>") @as("Label") label: option<label>,
    @ocaml.doc("<p>The date and time the client was last modified.</p>")
    @as("LastModifiedTimestamp")
    lastModifiedTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The certificate fingerprint.</p>") @as("CertificateFingerprint")
    certificateFingerprint: option<certificateFingerprint>,
    @ocaml.doc("<p>The certificate installed on the HSMs used by this client.</p>")
    @as("Certificate")
    certificate: option<certificate>,
    @ocaml.doc("<p>The ARN of the client.</p>") @as("ClientArn") clientArn: option<clientArn>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "DescribeLunaClientCommand"
  let make = (~certificateFingerprint=?, ~clientArn=?, ()) =>
    new({certificateFingerprint: certificateFingerprint, clientArn: clientArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLunaClient = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the client to delete.</p>") @as("ClientArn") clientArn: clientArn,
  }
  type response = {@ocaml.doc("<p>The status of the action.</p>") @as("Status") status: string_}
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "DeleteLunaClientCommand"
  let make = (~clientArn, ()) => new({clientArn: clientArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteHsm = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>DeleteHsm</a> operation.</p>")
  type request = {@ocaml.doc("<p>The ARN of the HSM to delete.</p>") @as("HsmArn") hsmArn: hsmArn}
  @ocaml.doc("<p>Contains the output of the <a>DeleteHsm</a> operation.</p>")
  type response = {@ocaml.doc("<p>The status of the operation.</p>") @as("Status") status: string_}
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "DeleteHsmCommand"
  let make = (~hsmArn, ()) => new({hsmArn: hsmArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteHapg = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>DeleteHapg</a> action.</p>")
  type request = {
    @ocaml.doc("<p>The ARN of the high-availability partition group to delete.</p>") @as("HapgArn")
    hapgArn: hapgArn,
  }
  @ocaml.doc("<p>Contains the output of the <a>DeleteHapg</a> action.</p>")
  type response = {@ocaml.doc("<p>The status of the action.</p>") @as("Status") status: string_}
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "DeleteHapgCommand"
  let make = (~hapgArn, ()) => new({hapgArn: hapgArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLunaClient = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>CreateLunaClient</a> action.</p>")
  type request = {
    @ocaml.doc("<p>The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used
      by this client.</p>")
    @as("Certificate")
    certificate: certificate,
    @ocaml.doc("<p>The label for the client.</p>") @as("Label") label: option<clientLabel>,
  }
  @ocaml.doc("<p>Contains the output of the <a>CreateLunaClient</a> action.</p>")
  type response = {
    @ocaml.doc("<p>The ARN of the client.</p>") @as("ClientArn") clientArn: option<clientArn>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "CreateLunaClientCommand"
  let make = (~certificate, ~label=?, ()) => new({certificate: certificate, label: label})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHsm = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <code>CreateHsm</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one
      syslog monitoring server.</p>")
    @as("SyslogIp")
    syslogIp: option<ipAddress>,
    @ocaml.doc("<p>A user-defined token to ensure idempotence. Subsequent calls to this operation with the
      same token will be ignored.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @as("SubscriptionType") subscriptionType: subscriptionType,
    @ocaml.doc("<p>The external ID from <code>IamRoleArn</code>, if present.</p>") @as("ExternalId")
    externalId: option<externalId>,
    @ocaml.doc("<p>The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your
      behalf.</p>")
    @as("IamRoleArn")
    iamRoleArn: iamRoleArn,
    @ocaml.doc("<p>The IP address to assign to the HSM's ENI.</p>
         <p>If an IP address is not specified, an IP address will be randomly chosen from the CIDR
      range of the subnet.</p>")
    @as("EniIp")
    eniIp: option<ipAddress>,
    @ocaml.doc("<p>The SSH public key to install on the HSM.</p>") @as("SshKey") sshKey: sshKey,
    @ocaml.doc("<p>The identifier of the subnet in your VPC in which to place the HSM.</p>")
    @as("SubnetId")
    subnetId: subnetId,
  }
  @ocaml.doc("<p>Contains the output of the <code>CreateHsm</code> operation.</p>")
  type response = {@ocaml.doc("<p>The ARN of the HSM.</p>") @as("HsmArn") hsmArn: option<hsmArn>}
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "CreateHsmCommand"
  let make = (
    ~subscriptionType,
    ~iamRoleArn,
    ~sshKey,
    ~subnetId,
    ~syslogIp=?,
    ~clientToken=?,
    ~externalId=?,
    ~eniIp=?,
    (),
  ) =>
    new({
      syslogIp: syslogIp,
      clientToken: clientToken,
      subscriptionType: subscriptionType,
      externalId: externalId,
      iamRoleArn: iamRoleArn,
      eniIp: eniIp,
      sshKey: sshKey,
      subnetId: subnetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHapg = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>CreateHapgRequest</a> action.</p>")
  type request = {
    @ocaml.doc("<p>The label of the new high-availability partition group.</p>") @as("Label")
    label: label,
  }
  @ocaml.doc("<p>Contains the output of the <a>CreateHAPartitionGroup</a> action.</p>")
  type response = {
    @ocaml.doc("<p>The ARN of the high-availability partition group.</p>") @as("HapgArn")
    hapgArn: option<hapgArn>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "CreateHapgCommand"
  let make = (~label, ()) => new({label: label})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTagsFromResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key or keys to remove.</p>
         <p>Specify only the tag key to remove (not the value). To overwrite the value for an
      existing tag, use <a>AddTagsToResource</a>.</p>")
    @as("TagKeyList")
    tagKeyList: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>")
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {@ocaml.doc("<p>The status of the operation.</p>") @as("Status") status: string_}
  @module("@aws-sdk/client-cloudhsm") @new
  external new: request => t = "RemoveTagsFromResourceCommand"
  let make = (~tagKeyList, ~resourceArn, ()) =>
    new({tagKeyList: tagKeyList, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyHapg = {
  type t
  type request = {
    @ocaml.doc("<p>The list of partition serial numbers to make members of the high-availability partition
      group.</p>")
    @as("PartitionSerialList")
    partitionSerialList: option<partitionSerialList>,
    @ocaml.doc("<p>The new label for the high-availability partition group.</p>") @as("Label")
    label: option<label>,
    @ocaml.doc("<p>The ARN of the high-availability partition group to modify.</p>") @as("HapgArn")
    hapgArn: hapgArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the high-availability partition group.</p>") @as("HapgArn")
    hapgArn: option<hapgArn>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "ModifyHapgCommand"
  let make = (~hapgArn, ~partitionSerialList=?, ~label=?, ()) =>
    new({partitionSerialList: partitionSerialList, label: label, hapgArn: hapgArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLunaClients = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>NextToken</code> value from a previous call to <code>ListLunaClients</code>.
      Pass null if this is the first call.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If not null, more results are available. Pass this to <code>ListLunaClients</code> to
      retrieve the next set of items.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of clients.</p>") @as("ClientList") clientList: clientList,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "ListLunaClientsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHsms = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>NextToken</code> value from a previous call to <code>ListHsms</code>. Pass
      null if this is the first call.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @ocaml.doc("<p>Contains the output of the <code>ListHsms</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>If not null, more results are available. Pass this value to <code>ListHsms</code> to
      retrieve the next set of items.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of ARNs that identify the HSMs.</p>") @as("HsmList")
    hsmList: option<hsmList>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "ListHsmsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHapgs = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>NextToken</code> value from a previous call to <code>ListHapgs</code>. Pass
      null if this is the first call.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If not null, more results are available. Pass this value to <code>ListHapgs</code> to
      retrieve the next set of items.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of high-availability partition groups.</p>") @as("HapgList")
    hapgList: hapgList,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "ListHapgsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAvailableZones = {
  type t

  type response = {
    @ocaml.doc("<p>The list of Availability Zones that have available AWS CloudHSM capacity.</p>")
    @as("AZList")
    azlist: option<azlist>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: unit => t = "ListAvailableZonesCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A list of ARNs that identify the high-availability partition groups that are associated
      with the client.</p>")
    @as("HapgList")
    hapgList: hapgList,
    @ocaml.doc("<p>The client version.</p>") @as("ClientVersion") clientVersion: clientVersion,
    @ocaml.doc("<p>The ARN of the client.</p>") @as("ClientArn") clientArn: clientArn,
  }
  type response = {
    @ocaml.doc("<p>The certificate file containing the server.pem files of the HSMs.</p>")
    @as("ConfigCred")
    configCred: option<string_>,
    @ocaml.doc("<p>The chrystoki.conf configuration file.</p>") @as("ConfigFile")
    configFile: option<string_>,
    @ocaml.doc("<p>The type of credentials.</p>") @as("ConfigType") configType: option<string_>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "GetConfigCommand"
  let make = (~hapgList, ~clientVersion, ~clientArn, ()) =>
    new({hapgList: hapgList, clientVersion: clientVersion, clientArn: clientArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHsm = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>DescribeHsm</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The serial number of the HSM. Either the <code>HsmArn</code> or the
        <code>HsmSerialNumber</code> parameter must be specified.</p>")
    @as("HsmSerialNumber")
    hsmSerialNumber: option<hsmSerialNumber>,
    @ocaml.doc("<p>The ARN of the HSM. Either the <code>HsmArn</code> or the <code>SerialNumber</code>
      parameter must be specified.</p>")
    @as("HsmArn")
    hsmArn: option<hsmArn>,
  }
  @ocaml.doc("<p>Contains the output of the <a>DescribeHsm</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>The list of partitions on the HSM.</p>") @as("Partitions")
    partitions: option<partitionList>,
    @ocaml.doc("<p>The date and time that the server certificate was last updated.</p>")
    @as("ServerCertLastUpdated")
    serverCertLastUpdated: option<timestamp_>,
    @ocaml.doc("<p>The URI of the certificate server.</p>") @as("ServerCertUri")
    serverCertUri: option<string_>,
    @ocaml.doc("<p>The date and time that the SSH key was last updated.</p>")
    @as("SshKeyLastUpdated")
    sshKeyLastUpdated: option<timestamp_>,
    @ocaml.doc("<p>The public SSH key.</p>") @as("SshPublicKey") sshPublicKey: option<sshKey>,
    @ocaml.doc("<p>The HSM software version.</p>") @as("SoftwareVersion")
    softwareVersion: option<string_>,
    @ocaml.doc("<p>The HSM model type.</p>") @as("HsmType") hsmType: option<string_>,
    @ocaml.doc("<p>The name of the HSM vendor.</p>") @as("VendorName") vendorName: option<string_>,
    @ocaml.doc("<p>The serial number of the HSM.</p>") @as("SerialNumber")
    serialNumber: option<hsmSerialNumber>,
    @ocaml.doc("<p>The ARN of the IAM role assigned to the HSM.</p>") @as("IamRoleArn")
    iamRoleArn: option<iamRoleArn>,
    @ocaml.doc("<p>The identifier of the subnet that the HSM is in.</p>") @as("SubnetId")
    subnetId: option<subnetId>,
    @ocaml.doc("<p>The identifier of the VPC that the HSM is in.</p>") @as("VpcId")
    vpcId: option<vpcId>,
    @ocaml.doc("<p>The subscription end date.</p>") @as("SubscriptionEndDate")
    subscriptionEndDate: option<timestamp_>,
    @ocaml.doc("<p>The subscription start date.</p>") @as("SubscriptionStartDate")
    subscriptionStartDate: option<timestamp_>,
    @as("SubscriptionType") subscriptionType: option<subscriptionType>,
    @ocaml.doc("<p>The IP address assigned to the HSM's ENI.</p>") @as("EniIp")
    eniIp: option<ipAddress>,
    @ocaml.doc("<p>The identifier of the elastic network interface (ENI) attached to the HSM.</p>")
    @as("EniId")
    eniId: option<eniId>,
    @ocaml.doc("<p>The Availability Zone that the HSM is in.</p>") @as("AvailabilityZone")
    availabilityZone: option<az>,
    @ocaml.doc("<p>Contains additional information about the status of the HSM.</p>")
    @as("StatusDetails")
    statusDetails: option<string_>,
    @ocaml.doc("<p>The status of the HSM.</p>") @as("Status") status: option<hsmStatus>,
    @ocaml.doc("<p>The ARN of the HSM.</p>") @as("HsmArn") hsmArn: option<hsmArn>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "DescribeHsmCommand"
  let make = (~hsmSerialNumber=?, ~hsmArn=?, ()) =>
    new({hsmSerialNumber: hsmSerialNumber, hsmArn: hsmArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHapg = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>DescribeHapg</a> action.</p>")
  type request = {
    @ocaml.doc("<p>The ARN of the high-availability partition group to describe.</p>")
    @as("HapgArn")
    hapgArn: hapgArn,
  }
  @ocaml.doc("<p>Contains the output of the <a>DescribeHapg</a> action.</p>")
  type response = {
    @ocaml.doc("<p>The state of the high-availability partition group.</p>") @as("State")
    state: option<cloudHsmObjectState>,
    @ocaml.doc("<p>The list of partition serial numbers that belong to the high-availability partition
      group.</p>")
    @as("PartitionSerialList")
    partitionSerialList: option<partitionSerialList>,
    @ocaml.doc("<p>The date and time the high-availability partition group was last modified.</p>")
    @as("LastModifiedTimestamp")
    lastModifiedTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The label for the high-availability partition group.</p>") @as("Label")
    label: option<label>,
    @ocaml.doc("<p></p>") @as("HsmsPendingRegistration") hsmsPendingRegistration: option<hsmList>,
    @ocaml.doc("<p></p>") @as("HsmsPendingDeletion") hsmsPendingDeletion: option<hsmList>,
    @ocaml.doc("<p></p>") @as("HsmsLastActionFailed") hsmsLastActionFailed: option<hsmList>,
    @ocaml.doc("<p>The serial number of the high-availability partition group.</p>")
    @as("HapgSerial")
    hapgSerial: option<string_>,
    @ocaml.doc("<p>The ARN of the high-availability partition group.</p>") @as("HapgArn")
    hapgArn: option<hapgArn>,
  }
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "DescribeHapgCommand"
  let make = (~hapgArn, ()) => new({hapgArn: hapgArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>")
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {@ocaml.doc("<p>One or more tags.</p>") @as("TagList") tagList_: tagList_}
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("TagList") tagList_: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.</p>")
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {@ocaml.doc("<p>The status of the operation.</p>") @as("Status") status: string_}
  @module("@aws-sdk/client-cloudhsm") @new external new: request => t = "AddTagsToResourceCommand"
  let make = (~tagList_, ~resourceArn, ()) => new({tagList_: tagList_, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
