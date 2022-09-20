type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ds") @new
external createClient: unit => awsServiceClient = "DirectoryServiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcId = string
type userPassword = string
type userName = string
type useSameUsername = bool
type updateSecurityGroupForDirectoryControllers = bool
type trustType = [@as("External") #External | @as("Forest") #Forest]
type trustStateReason = string
type trustState = [
  | @as("Failed") #Failed
  | @as("Deleted") #Deleted
  | @as("Deleting") #Deleting
  | @as("Updated") #Updated
  | @as("UpdateFailed") #UpdateFailed
  | @as("Updating") #Updating
  | @as("Verified") #Verified
  | @as("VerifyFailed") #VerifyFailed
  | @as("Verifying") #Verifying
  | @as("Created") #Created
  | @as("Creating") #Creating
]
type trustPassword = string
type trustId = string
type trustDirection = [
  | @as("Two-Way") #Two_Way
  | @as("One-Way: Incoming") #One_Way_Incoming
  | @as("One-Way: Outgoing") #One_Way_Outgoing
]
type topicStatus = [
  | @as("Deleted") #Deleted
  | @as("Failed") #Failed
  | @as("Topic not found") #Topic_Not_Found
  | @as("Registered") #Registered
]
type topicName = string
type topicArn = string
type targetType = [@as("ACCOUNT") #ACCOUNT]
type targetId = string
type tagValue = string
type tagKey = string
type subscriptionCreatedDateTime = Js.Date.t
type subnetId = string
type stateLastUpdatedDateTime = Js.Date.t
type startTime = Js.Date.t
type startDateTime = Js.Date.t
type stageReason = string
type ssoEnabled = bool
type snapshotType = [@as("Manual") #Manual | @as("Auto") #Auto]
type snapshotStatus = [
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("Creating") #Creating
]
type snapshotName = string
type snapshotId = string
type shareStatus = [
  | @as("Deleting") #Deleting
  | @as("Deleted") #Deleted
  | @as("ShareFailed") #ShareFailed
  | @as("Sharing") #Sharing
  | @as("RejectFailed") #RejectFailed
  | @as("Rejecting") #Rejecting
  | @as("Rejected") #Rejected
  | @as("PendingAcceptance") #PendingAcceptance
  | @as("Shared") #Shared
]
type shareMethod = [@as("HANDSHAKE") #HANDSHAKE | @as("ORGANIZATIONS") #ORGANIZATIONS]
type server = string
type selectiveAuth = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type securityGroupId = string
type schemaExtensionStatusReason = string
type schemaExtensionStatus = [
  | @as("Completed") #Completed
  | @as("Failed") #Failed
  | @as("Cancelled") #Cancelled
  | @as("RollbackInProgress") #RollbackInProgress
  | @as("CancelInProgress") #CancelInProgress
  | @as("Replicating") #Replicating
  | @as("UpdatingSchema") #UpdatingSchema
  | @as("CreatingSnapshot") #CreatingSnapshot
  | @as("Initializing") #Initializing
]
type schemaExtensionId = string
type sid = string
type resourceId = string
@ocaml.doc("<p>The Amazon Web Services request identifier.</p>") type requestId = string
type replicationScope = [@as("Domain") #Domain]
type remoteDomainName = string
type regionType = [@as("Additional") #Additional | @as("Primary") #Primary]
type regionName = string
type radiusTimeout = int
type radiusStatus = [
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("Creating") #Creating
]
type radiusSharedSecret = string
type radiusRetries = int
type radiusDisplayLabel = string
type radiusAuthenticationProtocol = [
  | @as("MS-CHAPv2") #MS_CHAPv2
  | @as("MS-CHAPv1") #MS_CHAPv1
  | @as("CHAP") #CHAP
  | @as("PAP") #PAP
]
type portNumber = int
type password = string
type pageLimit = int
type organizationalUnitDN = string
type ocspurl = string
type notes = string
type nextToken = string
type manualSnapshotsLimitReached = bool
type logGroupName = string
type limit = int
type ldifContent = string
type launchTime = Js.Date.t
type lastUpdatedDateTime = Js.Date.t
type ldapstype = [@as("Client") #Client]
type ldapsstatusReason = string
type ldapsstatus = [
  | @as("Disabled") #Disabled
  | @as("EnableFailed") #EnableFailed
  | @as("Enabled") #Enabled
  | @as("Enabling") #Enabling
]
type ipRouteStatusReason = string
type ipRouteStatusMsg = [
  | @as("RemoveFailed") #RemoveFailed
  | @as("AddFailed") #AddFailed
  | @as("Removed") #Removed
  | @as("Removing") #Removing
  | @as("Added") #Added
  | @as("Adding") #Adding
]
type ipAddr = string
@ocaml.doc("<p>The descriptive message for the exception.</p>") type exceptionMessage = string
type endDateTime = Js.Date.t
type domainControllerStatusReason = string
type domainControllerStatus = [
  | @as("Failed") #Failed
  | @as("Deleted") #Deleted
  | @as("Deleting") #Deleting
  | @as("Restoring") #Restoring
  | @as("Impaired") #Impaired
  | @as("Active") #Active
  | @as("Creating") #Creating
]
type domainControllerId = string
type directoryType = [
  | @as("SharedMicrosoftAD") #SharedMicrosoftAD
  | @as("MicrosoftAD") #MicrosoftAD
  | @as("ADConnector") #ADConnector
  | @as("SimpleAD") #SimpleAD
]
type directoryStage = [
  | @as("Failed") #Failed
  | @as("Deleted") #Deleted
  | @as("Deleting") #Deleting
  | @as("RestoreFailed") #RestoreFailed
  | @as("Restoring") #Restoring
  | @as("Impaired") #Impaired
  | @as("Inoperable") #Inoperable
  | @as("Active") #Active
  | @as("Created") #Created
  | @as("Creating") #Creating
  | @as("Requested") #Requested
]
type directorySize = [@as("Large") #Large | @as("Small") #Small]
type directoryShortName = string
type directoryName = string
type directoryId = string
type directoryEdition = [@as("Standard") #Standard | @as("Enterprise") #Enterprise]
type desiredNumberOfDomainControllers = int
type description = string
type deleteAssociatedConditionalForwarder = bool
type customerUserName = string
type customerId = string
type createdDateTime = Js.Date.t
type createSnapshotBeforeSchemaExtension = bool
type connectedDirectoriesLimitReached = bool
type connectPassword = string
type computerPassword = string
type computerName = string
type cloudOnlyDirectoriesLimitReached = bool
type clientAuthenticationType = [@as("SmartCard") #SmartCard]
type clientAuthenticationStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type cidrIp = string
type certificateType = [@as("ClientLDAPS") #ClientLDAPS | @as("ClientCertAuth") #ClientCertAuth]
type certificateStateReason = string
type certificateState = [
  | @as("DeregisterFailed") #DeregisterFailed
  | @as("Deregistered") #Deregistered
  | @as("Deregistering") #Deregistering
  | @as("RegisterFailed") #RegisterFailed
  | @as("Registered") #Registered
  | @as("Registering") #Registering
]
type certificateRegisteredDateTime = Js.Date.t
type certificateId = string
type certificateExpiryDateTime = Js.Date.t
type certificateData = string
type certificateCN = string
type availabilityZone = string
type attributeValue = string
type attributeName = string
type aliasName = string
type addedDateTime = Js.Date.t
type accessUrl = string
@ocaml.doc("<p>Identifier that contains details about the directory consumer account with whom the
      directory is being unshared.</p>")
type unshareTarget = {
  @ocaml.doc("<p>Type of identifier to be used in the <i>Id</i> field.</p>") @as("Type")
  type_: targetType,
  @ocaml.doc("<p>Identifier of the directory consumer account.</p>") @as("Id") id: targetId,
}
type trustIds = array<trustId>
@ocaml.doc("<p>Describes a trust relationship between an Managed Microsoft AD directory and an external
      domain.</p>")
type trust = {
  @ocaml.doc("<p>Current state of selective authentication for the trust.</p>") @as("SelectiveAuth")
  selectiveAuth: option<selectiveAuth>,
  @ocaml.doc("<p>The reason for the TrustState.</p>") @as("TrustStateReason")
  trustStateReason: option<trustStateReason>,
  @ocaml.doc("<p>The date and time that the TrustState was last updated.</p>")
  @as("StateLastUpdatedDateTime")
  stateLastUpdatedDateTime: option<stateLastUpdatedDateTime>,
  @ocaml.doc("<p>The date and time that the trust relationship was last updated.</p>")
  @as("LastUpdatedDateTime")
  lastUpdatedDateTime: option<lastUpdatedDateTime>,
  @ocaml.doc("<p>The date and time that the trust relationship was created.</p>")
  @as("CreatedDateTime")
  createdDateTime: option<createdDateTime>,
  @ocaml.doc("<p>The trust relationship state.</p>") @as("TrustState")
  trustState: option<trustState>,
  @ocaml.doc("<p>The trust relationship direction.</p>") @as("TrustDirection")
  trustDirection: option<trustDirection>,
  @ocaml.doc("<p>The trust relationship type. <code>Forest</code> is the default.</p>")
  @as("TrustType")
  trustType: option<trustType>,
  @ocaml.doc("<p>The Fully Qualified Domain Name (FQDN) of the external domain involved in the trust
      relationship.</p>")
  @as("RemoteDomainName")
  remoteDomainName: option<remoteDomainName>,
  @ocaml.doc("<p>The unique ID of the trust relationship.</p>") @as("TrustId")
  trustId: option<trustId>,
  @ocaml.doc(
    "<p>The Directory ID of the Amazon Web Services directory involved in the trust relationship.</p>"
  )
  @as("DirectoryId")
  directoryId: option<directoryId>,
}
type topicNames = array<topicName>
type tagKeys = array<tagKey>
@ocaml.doc("<p>Metadata assigned to a directory consisting of a key-value pair.</p>")
type tag = {
  @ocaml.doc("<p>The optional value of the tag. The string value can be Unicode characters. The string
      can contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-'
      (Java regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>Required name of the tag. The string value can be Unicode characters and cannot be
      prefixed with \"aws:\". The string can contain only the set of Unicode letters, digits,
      white-space, '_', '.', '/', '=', '+', '-' (Java regex:
      \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>")
  @as("Key")
  key: tagKey,
}
type subnetIds = array<subnetId>
@ocaml.doc("<p>Contains manual snapshot limit information for a directory.</p>")
type snapshotLimits = {
  @ocaml.doc("<p>Indicates if the manual snapshot limit has been reached.</p>")
  @as("ManualSnapshotsLimitReached")
  manualSnapshotsLimitReached: option<manualSnapshotsLimitReached>,
  @ocaml.doc("<p>The current number of manual snapshots of the directory.</p>")
  @as("ManualSnapshotsCurrentCount")
  manualSnapshotsCurrentCount: option<limit>,
  @ocaml.doc("<p>The maximum number of manual snapshots allowed.</p>") @as("ManualSnapshotsLimit")
  manualSnapshotsLimit: option<limit>,
}
@ocaml.doc("<p>A list of directory snapshot identifiers.</p>") type snapshotIds = array<snapshotId>
@ocaml.doc("<p>Describes a directory snapshot.</p>")
type snapshot = {
  @ocaml.doc("<p>The date and time that the snapshot was taken.</p>") @as("StartTime")
  startTime: option<startTime>,
  @ocaml.doc("<p>The snapshot status.</p>") @as("Status") status: option<snapshotStatus>,
  @ocaml.doc("<p>The descriptive name of the snapshot.</p>") @as("Name") name: option<snapshotName>,
  @ocaml.doc("<p>The snapshot type.</p>") @as("Type") type_: option<snapshotType>,
  @ocaml.doc("<p>The snapshot identifier.</p>") @as("SnapshotId") snapshotId: option<snapshotId>,
  @ocaml.doc("<p>The directory identifier.</p>") @as("DirectoryId")
  directoryId: option<directoryId>,
}
@ocaml.doc("<p>Details about the shared directory in the directory owner account for which the share
      request in the directory consumer account has been accepted.</p>")
type sharedDirectory = {
  @ocaml.doc("<p>The date and time that the shared directory was last updated.</p>")
  @as("LastUpdatedDateTime")
  lastUpdatedDateTime: option<lastUpdatedDateTime>,
  @ocaml.doc("<p>The date and time that the shared directory was created.</p>")
  @as("CreatedDateTime")
  createdDateTime: option<createdDateTime>,
  @ocaml.doc("<p>A directory share request that is sent by the directory owner to the directory consumer.
      The request includes a typed message to help the directory consumer administrator determine
      whether to approve or reject the share invitation.</p>")
  @as("ShareNotes")
  shareNotes: option<notes>,
  @ocaml.doc("<p>Current directory status of the shared Managed Microsoft AD directory.</p>")
  @as("ShareStatus")
  shareStatus: option<shareStatus>,
  @ocaml.doc("<p>Identifier of the shared directory in the directory consumer account. This identifier is
      different for each directory owner account.</p>")
  @as("SharedDirectoryId")
  sharedDirectoryId: option<directoryId>,
  @ocaml.doc("<p>Identifier of the directory consumer account that has access to the shared directory
        (<code>OwnerDirectoryId</code>) in the directory owner account.</p>")
  @as("SharedAccountId")
  sharedAccountId: option<customerId>,
  @ocaml.doc("<p>The method used when sharing a directory to determine whether the directory should be
      shared within your Amazon Web Services organization (<code>ORGANIZATIONS</code>) or with any Amazon Web Services account by
      sending a shared directory request (<code>HANDSHAKE</code>).</p>")
  @as("ShareMethod")
  shareMethod: option<shareMethod>,
  @ocaml.doc("<p>Identifier of the directory in the directory owner account. </p>")
  @as("OwnerDirectoryId")
  ownerDirectoryId: option<directoryId>,
  @ocaml.doc("<p>Identifier of the directory owner account, which contains the directory that has been
      shared to the consumer account.</p>")
  @as("OwnerAccountId")
  ownerAccountId: option<customerId>,
}
@ocaml.doc("<p>Identifier that contains details about the directory consumer account.</p>")
type shareTarget = {
  @ocaml.doc("<p>Type of identifier to be used in the <code>Id</code> field.</p>") @as("Type")
  type_: targetType,
  @ocaml.doc("<p>Identifier of the directory consumer account.</p>") @as("Id") id: targetId,
}
type servers = array<server>
@ocaml.doc("<p>Information about a schema extension.</p>")
type schemaExtensionInfo = {
  @ocaml.doc("<p>The date and time that the schema extension was completed.</p>") @as("EndDateTime")
  endDateTime: option<endDateTime>,
  @ocaml.doc("<p>The date and time that the schema extension started being applied to the
      directory.</p>")
  @as("StartDateTime")
  startDateTime: option<startDateTime>,
  @ocaml.doc("<p>The reason for the <code>SchemaExtensionStatus</code>.</p>")
  @as("SchemaExtensionStatusReason")
  schemaExtensionStatusReason: option<schemaExtensionStatusReason>,
  @ocaml.doc("<p>The current status of the schema extension.</p>") @as("SchemaExtensionStatus")
  schemaExtensionStatus: option<schemaExtensionStatus>,
  @ocaml.doc("<p>A description of the schema extension.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The identifier of the schema extension.</p>") @as("SchemaExtensionId")
  schemaExtensionId: option<schemaExtensionId>,
  @ocaml.doc("<p>The identifier of the directory to which the schema extension is applied.</p>")
  @as("DirectoryId")
  directoryId: option<directoryId>,
}
type remoteDomainNames = array<remoteDomainName>
@ocaml.doc("<p>Represents a log subscription, which tracks real-time data from a chosen log group to a
      specified destination.</p>")
type logSubscription = {
  @ocaml.doc("<p>The date and time that the log subscription was created.</p>")
  @as("SubscriptionCreatedDateTime")
  subscriptionCreatedDateTime: option<subscriptionCreatedDateTime>,
  @ocaml.doc("<p>The name of the log group.</p>") @as("LogGroupName")
  logGroupName: option<logGroupName>,
  @ocaml.doc("<p>Identifier (ID) of the directory that you want to associate with the log
      subscription.</p>")
  @as("DirectoryId")
  directoryId: option<directoryId>,
}
@ocaml.doc("<p>Contains general information about the LDAPS settings.</p>")
type ldapssettingInfo = {
  @ocaml.doc("<p>The date and time when the LDAPS settings were last updated.</p>")
  @as("LastUpdatedDateTime")
  lastUpdatedDateTime: option<lastUpdatedDateTime>,
  @ocaml.doc("<p>Describes a state change for LDAPS.</p>") @as("LDAPSStatusReason")
  ldapsstatusReason: option<ldapsstatusReason>,
  @ocaml.doc("<p>The state of the LDAPS settings.</p>") @as("LDAPSStatus")
  ldapsstatus: option<ldapsstatus>,
}
@ocaml.doc("<p>Information about one or more IP address blocks.</p>")
type ipRouteInfo = {
  @ocaml.doc("<p>Description of the <a>IpRouteInfo</a>.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The reason for the IpRouteStatusMsg.</p>") @as("IpRouteStatusReason")
  ipRouteStatusReason: option<ipRouteStatusReason>,
  @ocaml.doc("<p>The date and time the address block was added to the directory.</p>")
  @as("AddedDateTime")
  addedDateTime: option<addedDateTime>,
  @ocaml.doc("<p>The status of the IP address block.</p>") @as("IpRouteStatusMsg")
  ipRouteStatusMsg: option<ipRouteStatusMsg>,
  @ocaml.doc("<p>IP address block in the <a>IpRoute</a>.</p>") @as("CidrIp") cidrIp: option<cidrIp>,
  @ocaml.doc("<p>Identifier (ID) of the directory associated with the IP addresses.</p>")
  @as("DirectoryId")
  directoryId: option<directoryId>,
}
@ocaml.doc("<p>IP address block. This is often the address block of the DNS server used for your
         self-managed domain. </p>")
type ipRoute = {
  @ocaml.doc("<p>Description of the address block.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>IP address block using CIDR format, for example 10.0.0.0/24. This is often the
         address block of the DNS server used for your self-managed domain. For a single IP address
         use a CIDR address block with /32. For example 10.0.0.0/32.</p>")
  @as("CidrIp")
  cidrIp: option<cidrIp>,
}
type ipAddrs = array<ipAddr>
@ocaml.doc(
  "<p>Information about Amazon SNS topic and Directory Service directory associations.</p>"
)
type eventTopic = {
  @ocaml.doc("<p>The topic registration status.</p>") @as("Status") status: option<topicStatus>,
  @ocaml.doc(
    "<p>The date and time of when you associated your directory with the Amazon SNS topic.</p>"
  )
  @as("CreatedDateTime")
  createdDateTime: option<createdDateTime>,
  @ocaml.doc("<p>The Amazon SNS topic ARN (Amazon Resource Name).</p>") @as("TopicArn")
  topicArn: option<topicArn>,
  @ocaml.doc(
    "<p>The name of an Amazon SNS topic the receives status messages from the directory.</p>"
  )
  @as("TopicName")
  topicName: option<topicName>,
  @ocaml.doc("<p>The Directory ID of an Directory Service directory that will publish status messages to an Amazon SNS
      topic.</p>")
  @as("DirectoryId")
  directoryId: option<directoryId>,
}
type domainControllerIds = array<domainControllerId>
@ocaml.doc("<p>Contains information about the domain controllers for a specified directory.</p>")
type domainController = {
  @ocaml.doc("<p>The date and time that the status was last updated.</p>")
  @as("StatusLastUpdatedDateTime")
  statusLastUpdatedDateTime: option<lastUpdatedDateTime>,
  @ocaml.doc("<p>Specifies when the domain controller was created.</p>") @as("LaunchTime")
  launchTime: option<launchTime>,
  @ocaml.doc("<p>A description of the domain controller state.</p>") @as("StatusReason")
  statusReason: option<domainControllerStatusReason>,
  @ocaml.doc("<p>The status of the domain controller.</p>") @as("Status")
  status: option<domainControllerStatus>,
  @ocaml.doc("<p>The Availability Zone where the domain controller is located.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>Identifier of the subnet in the VPC that contains the domain controller.</p>")
  @as("SubnetId")
  subnetId: option<subnetId>,
  @ocaml.doc("<p>The identifier of the VPC that contains the domain controller.</p>") @as("VpcId")
  vpcId: option<vpcId>,
  @ocaml.doc("<p>The IP address of the domain controller.</p>") @as("DnsIpAddr")
  dnsIpAddr: option<ipAddr>,
  @ocaml.doc("<p>Identifies a specific domain controller in the directory.</p>")
  @as("DomainControllerId")
  domainControllerId: option<domainControllerId>,
  @ocaml.doc("<p>Identifier of the directory where the domain controller resides.</p>")
  @as("DirectoryId")
  directoryId: option<directoryId>,
}
type dnsIpAddrs = array<ipAddr>
@ocaml.doc("<p>Contains directory limit information for a Region.</p>")
type directoryLimits = {
  @ocaml.doc("<p>Indicates if the connected directory limit has been reached.</p>")
  @as("ConnectedDirectoriesLimitReached")
  connectedDirectoriesLimitReached: option<connectedDirectoriesLimitReached>,
  @ocaml.doc("<p>The current number of connected directories in the Region.</p>")
  @as("ConnectedDirectoriesCurrentCount")
  connectedDirectoriesCurrentCount: option<limit>,
  @ocaml.doc("<p>The maximum number of connected directories allowed in the Region.</p>")
  @as("ConnectedDirectoriesLimit")
  connectedDirectoriesLimit: option<limit>,
  @ocaml.doc("<p>Indicates if the Managed Microsoft AD directory limit has been reached.</p>")
  @as("CloudOnlyMicrosoftADLimitReached")
  cloudOnlyMicrosoftADLimitReached: option<cloudOnlyDirectoriesLimitReached>,
  @ocaml.doc("<p>The current number of Managed Microsoft AD directories in the region.</p>")
  @as("CloudOnlyMicrosoftADCurrentCount")
  cloudOnlyMicrosoftADCurrentCount: option<limit>,
  @ocaml.doc("<p>The maximum number of Managed Microsoft AD directories allowed in the region.</p>")
  @as("CloudOnlyMicrosoftADLimit")
  cloudOnlyMicrosoftADLimit: option<limit>,
  @ocaml.doc("<p>Indicates if the cloud directory limit has been reached.</p>")
  @as("CloudOnlyDirectoriesLimitReached")
  cloudOnlyDirectoriesLimitReached: option<cloudOnlyDirectoriesLimitReached>,
  @ocaml.doc("<p>The current number of cloud directories in the Region.</p>")
  @as("CloudOnlyDirectoriesCurrentCount")
  cloudOnlyDirectoriesCurrentCount: option<limit>,
  @ocaml.doc("<p>The maximum number of cloud directories allowed in the Region.</p>")
  @as("CloudOnlyDirectoriesLimit")
  cloudOnlyDirectoriesLimit: option<limit>,
}
@ocaml.doc("<p>A list of directory identifiers.</p>") type directoryIds = array<directoryId>
@ocaml.doc(
  "<p>Contains information about the client certificate authentication settings for the <code>RegisterCertificate</code> and <code>DescribeCertificate</code> operations. </p>"
)
type clientCertAuthSettings = {
  @ocaml.doc(
    "<p>Specifies the URL of the default OCSP server used to check for revocation status. A secondary value to any OCSP address found in the AIA extension of the user certificate.</p>"
  )
  @as("OCSPUrl")
  ocspurl: option<ocspurl>,
}
@ocaml.doc("<p>Contains information about a client authentication method for a directory.</p>")
type clientAuthenticationSettingInfo = {
  @ocaml.doc(
    "<p>The date and time when the status of the client authentication type was last updated.</p>"
  )
  @as("LastUpdatedDateTime")
  lastUpdatedDateTime: option<lastUpdatedDateTime>,
  @ocaml.doc(
    "<p>Whether the client authentication type is enabled or disabled for the specified directory.</p>"
  )
  @as("Status")
  status: option<clientAuthenticationStatus>,
  @ocaml.doc(
    "<p>The type of client authentication for the specified directory. If no type is specified, a list of all client authentication types that are supported for the directory is retrieved. </p>"
  )
  @as("Type")
  type_: option<clientAuthenticationType>,
}
type cidrIps = array<cidrIp>
@ocaml.doc("<p>Contains general information about a certificate.</p>")
type certificateInfo = {
  @ocaml.doc(
    "<p>The function that the registered certificate performs. Valid values include <code>ClientLDAPS</code> or <code>ClientCertAuth</code>. The default value is <code>ClientLDAPS</code>.</p>"
  )
  @as("Type")
  type_: option<certificateType>,
  @ocaml.doc("<p>The date and time when the certificate will expire.</p>") @as("ExpiryDateTime")
  expiryDateTime: option<certificateExpiryDateTime>,
  @ocaml.doc("<p>The state of the certificate.</p>") @as("State") state: option<certificateState>,
  @ocaml.doc("<p>The common name for the certificate.</p>") @as("CommonName")
  commonName: option<certificateCN>,
  @ocaml.doc("<p>The identifier of the certificate.</p>") @as("CertificateId")
  certificateId: option<certificateId>,
}
type availabilityZones = array<availabilityZone>
@ocaml.doc("<p>Represents a named directory attribute.</p>")
type attribute = {
  @ocaml.doc("<p>The value of the attribute.</p>") @as("Value") value: option<attributeValue>,
  @ocaml.doc("<p>The name of the attribute.</p>") @as("Name") name: option<attributeName>,
}
type additionalRegions = array<regionName>
type trusts = array<trust>
type tags = array<tag>
@ocaml.doc("<p>A list of descriptions of directory snapshots.</p>") type snapshots = array<snapshot>
type sharedDirectories = array<sharedDirectory>
type schemaExtensionsInfo = array<schemaExtensionInfo>
@ocaml.doc("<p>Provides information about the Regions that are configured for multi-Region
      replication.</p>")
type regionsInfo = {
  @ocaml.doc("<p>Lists the Regions where the directory has been replicated, excluding the primary
      Region.</p>")
  @as("AdditionalRegions")
  additionalRegions: option<additionalRegions>,
  @ocaml.doc("<p>The Region where the Managed Microsoft AD directory was originally created.</p>")
  @as("PrimaryRegion")
  primaryRegion: option<regionName>,
}
@ocaml.doc("<p>Contains information about a Remote Authentication Dial In User Service (RADIUS)
         server.</p>")
type radiusSettings = {
  @ocaml.doc("<p>Not currently used.</p>") @as("UseSameUsername")
  useSameUsername: option<useSameUsername>,
  @ocaml.doc("<p>Not currently used.</p>") @as("DisplayLabel")
  displayLabel: option<radiusDisplayLabel>,
  @ocaml.doc("<p>The protocol specified for your RADIUS endpoints.</p>")
  @as("AuthenticationProtocol")
  authenticationProtocol: option<radiusAuthenticationProtocol>,
  @ocaml.doc("<p>Required for enabling RADIUS on the directory.</p>") @as("SharedSecret")
  sharedSecret: option<radiusSharedSecret>,
  @ocaml.doc("<p>The maximum number of times that communication with the RADIUS server is
         attempted.</p>")
  @as("RadiusRetries")
  radiusRetries: option<radiusRetries>,
  @ocaml.doc("<p>The amount of time, in seconds, to wait for the RADIUS server to respond.</p>")
  @as("RadiusTimeout")
  radiusTimeout: option<radiusTimeout>,
  @ocaml.doc("<p>The port that your RADIUS server is using for communications. Your self-managed
         network must allow inbound traffic over this port from the Directory Service servers.</p>")
  @as("RadiusPort")
  radiusPort: option<portNumber>,
  @ocaml.doc("<p>An array of strings that contains the fully qualified domain name (FQDN) or IP
         addresses of the RADIUS server endpoints, or the FQDN or IP addresses of your RADIUS server
         load balancer.</p>")
  @as("RadiusServers")
  radiusServers: option<servers>,
}
type logSubscriptions = array<logSubscription>
type ldapssettingsInfo = array<ldapssettingInfo>
type ipRoutesInfo = array<ipRouteInfo>
type ipRoutes = array<ipRoute>
type eventTopics = array<eventTopic>
type domainControllers = array<domainController>
@ocaml.doc("<p>Contains information about the directory.</p>")
type directoryVpcSettingsDescription = {
  @ocaml.doc("<p>The list of Availability Zones that the directory is in.</p>")
  @as("AvailabilityZones")
  availabilityZones: option<availabilityZones>,
  @ocaml.doc("<p>The domain controller security group identifier for the directory.</p>")
  @as("SecurityGroupId")
  securityGroupId: option<securityGroupId>,
  @ocaml.doc("<p>The identifiers of the subnets for the directory servers.</p>") @as("SubnetIds")
  subnetIds: option<subnetIds>,
  @ocaml.doc("<p>The identifier of the VPC that the directory is in.</p>") @as("VpcId")
  vpcId: option<vpcId>,
}
@ocaml.doc(
  "<p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>"
)
type directoryVpcSettings = {
  @ocaml.doc("<p>The identifiers of the subnets for the directory servers. The two subnets must be in
      different Availability Zones. Directory Service creates a directory server and a DNS
      server in each of these subnets.</p>")
  @as("SubnetIds")
  subnetIds: subnetIds,
  @ocaml.doc("<p>The identifier of the VPC in which to create the directory.</p>") @as("VpcId")
  vpcId: vpcId,
}
@ocaml.doc("<p>Contains information about an AD Connector directory.</p>")
type directoryConnectSettingsDescription = {
  @ocaml.doc("<p>The IP addresses of the AD Connector servers.</p>") @as("ConnectIps")
  connectIps: option<ipAddrs>,
  @ocaml.doc("<p>A list of the Availability Zones that the directory is in.</p>")
  @as("AvailabilityZones")
  availabilityZones: option<availabilityZones>,
  @ocaml.doc("<p>The security group identifier for the AD Connector directory.</p>")
  @as("SecurityGroupId")
  securityGroupId: option<securityGroupId>,
  @ocaml.doc("<p>The user name of the service account in your self-managed directory.</p>")
  @as("CustomerUserName")
  customerUserName: option<userName>,
  @ocaml.doc("<p>A list of subnet identifiers in the VPC that the AD Connector is in.</p>")
  @as("SubnetIds")
  subnetIds: option<subnetIds>,
  @ocaml.doc("<p>The identifier of the VPC that the AD Connector is in.</p>") @as("VpcId")
  vpcId: option<vpcId>,
}
@ocaml.doc("<p>Contains information for the <a>ConnectDirectory</a> operation when an AD
      Connector directory is being created.</p>")
type directoryConnectSettings = {
  @ocaml.doc("<p>The user name of an account in your self-managed directory that is used to connect to the
      directory. This account must have the following permissions:</p>
         <ul>
            <li>
               <p>Read users and groups</p>
            </li>
            <li>
               <p>Create computer objects</p>
            </li>
            <li>
               <p>Join computers to the domain</p>
            </li>
         </ul>")
  @as("CustomerUserName")
  customerUserName: userName,
  @ocaml.doc("<p>A list of one or more IP addresses of DNS servers or domain controllers in your self-managed
      directory.</p>")
  @as("CustomerDnsIps")
  customerDnsIps: dnsIpAddrs,
  @ocaml.doc("<p>A list of subnet identifiers in the VPC in which the AD Connector is created.</p>")
  @as("SubnetIds")
  subnetIds: subnetIds,
  @ocaml.doc("<p>The identifier of the VPC in which the AD Connector is created.</p>") @as("VpcId")
  vpcId: vpcId,
}
@ocaml.doc("<p>Points to a remote domain with which you are setting up a trust relationship.
      Conditional forwarders are required in order to set up a trust relationship with another
      domain.</p>")
type conditionalForwarder = {
  @ocaml.doc("<p>The replication scope of the conditional forwarder. The only allowed value is
        <code>Domain</code>, which will replicate the conditional forwarder to all of the domain
      controllers for your Amazon Web Services directory.</p>")
  @as("ReplicationScope")
  replicationScope: option<replicationScope>,
  @ocaml.doc("<p>The IP addresses of the remote DNS server associated with RemoteDomainName. This is the
      IP address of the DNS server that your conditional forwarder points to.</p>")
  @as("DnsIpAddrs")
  dnsIpAddrs: option<dnsIpAddrs>,
  @ocaml.doc("<p>The fully qualified domain name (FQDN) of the remote domains pointed to by the
      conditional forwarder.</p>")
  @as("RemoteDomainName")
  remoteDomainName: option<remoteDomainName>,
}
type clientAuthenticationSettingsInfo = array<clientAuthenticationSettingInfo>
type certificatesInfo = array<certificateInfo>
@ocaml.doc("<p>Information about the certificate.</p>")
type certificate = {
  @ocaml.doc(
    "<p>A <code>ClientCertAuthSettings</code> object that contains client certificate authentication settings.</p>"
  )
  @as("ClientCertAuthSettings")
  clientCertAuthSettings: option<clientCertAuthSettings>,
  @ocaml.doc(
    "<p>The function that the registered certificate performs. Valid values include <code>ClientLDAPS</code> or <code>ClientCertAuth</code>. The default value is <code>ClientLDAPS</code>.</p>"
  )
  @as("Type")
  type_: option<certificateType>,
  @ocaml.doc("<p>The date and time when the certificate will expire.</p>") @as("ExpiryDateTime")
  expiryDateTime: option<certificateExpiryDateTime>,
  @ocaml.doc("<p>The date and time that the certificate was registered.</p>")
  @as("RegisteredDateTime")
  registeredDateTime: option<certificateRegisteredDateTime>,
  @ocaml.doc("<p>The common name for the certificate.</p>") @as("CommonName")
  commonName: option<certificateCN>,
  @ocaml.doc("<p>Describes a state change for the certificate.</p>") @as("StateReason")
  stateReason: option<certificateStateReason>,
  @ocaml.doc("<p>The state of the certificate.</p>") @as("State") state: option<certificateState>,
  @ocaml.doc("<p>The identifier of the certificate.</p>") @as("CertificateId")
  certificateId: option<certificateId>,
}
type attributes = array<attribute>
@ocaml.doc("<p>The replicated Region information for a directory.</p>")
type regionDescription = {
  @ocaml.doc("<p>The date and time that the Region description was last updated.</p>")
  @as("LastUpdatedDateTime")
  lastUpdatedDateTime: option<lastUpdatedDateTime>,
  @ocaml.doc("<p>The date and time that the Region status was last updated.</p>")
  @as("StatusLastUpdatedDateTime")
  statusLastUpdatedDateTime: option<stateLastUpdatedDateTime>,
  @ocaml.doc("<p>Specifies when the Region replication began.</p>") @as("LaunchTime")
  launchTime: option<launchTime>,
  @ocaml.doc("<p>The desired number of domain controllers in the specified Region for the specified
      directory.</p>")
  @as("DesiredNumberOfDomainControllers")
  desiredNumberOfDomainControllers: option<desiredNumberOfDomainControllers>,
  @as("VpcSettings") vpcSettings: option<directoryVpcSettings>,
  @ocaml.doc("<p>The status of the replication process for the specified Region.</p>") @as("Status")
  status: option<directoryStage>,
  @ocaml.doc("<p>Specifies whether the Region is the primary Region or an additional Region.</p>")
  @as("RegionType")
  regionType: option<regionType>,
  @ocaml.doc("<p>The name of the Region. For example, <code>us-east-1</code>.</p>")
  @as("RegionName")
  regionName: option<regionName>,
  @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
  directoryId: option<directoryId>,
}
@ocaml.doc("<p>Describes the directory owner account details that have been shared to the directory
      consumer account.</p>")
type ownerDirectoryDescription = {
  @ocaml.doc("<p>Information about the status of the RADIUS server.</p>") @as("RadiusStatus")
  radiusStatus: option<radiusStatus>,
  @ocaml.doc("<p>A <a>RadiusSettings</a> object that contains information about the RADIUS
      server.</p>")
  @as("RadiusSettings")
  radiusSettings: option<radiusSettings>,
  @ocaml.doc("<p>Information about the VPC settings for the directory.</p>") @as("VpcSettings")
  vpcSettings: option<directoryVpcSettingsDescription>,
  @ocaml.doc("<p>IP address of the directory’s domain controllers.</p>") @as("DnsIpAddrs")
  dnsIpAddrs: option<dnsIpAddrs>,
  @ocaml.doc("<p>Identifier of the directory owner account.</p>") @as("AccountId")
  accountId: option<customerId>,
  @ocaml.doc("<p>Identifier of the Managed Microsoft AD directory in the directory owner
      account.</p>")
  @as("DirectoryId")
  directoryId: option<directoryId>,
}
type conditionalForwarders = array<conditionalForwarder>
@ocaml.doc("<p>Contains information about a computer account in a directory.</p>")
type computer = {
  @ocaml.doc("<p>An array of <a>Attribute</a> objects containing the LDAP attributes that belong to the
            computer account.</p>")
  @as("ComputerAttributes")
  computerAttributes: option<attributes>,
  @ocaml.doc("<p>The computer name.</p>") @as("ComputerName") computerName: option<computerName>,
  @ocaml.doc("<p>The identifier of the computer.</p>") @as("ComputerId") computerId: option<sid>,
}
type regionsDescription = array<regionDescription>
@ocaml.doc("<p>Contains information about an Directory Service directory.</p>")
type directoryDescription = {
  @ocaml.doc("<p>Lists the Regions where the directory has replicated.</p>") @as("RegionsInfo")
  regionsInfo: option<regionsInfo>,
  @ocaml.doc("<p>Describes the Managed Microsoft AD directory in the directory owner account.</p>")
  @as("OwnerDirectoryDescription")
  ownerDirectoryDescription: option<ownerDirectoryDescription>,
  @ocaml.doc("<p>The desired number of domain controllers in the directory if the directory is Microsoft
      AD.</p>")
  @as("DesiredNumberOfDomainControllers")
  desiredNumberOfDomainControllers: option<desiredNumberOfDomainControllers>,
  @ocaml.doc(
    "<p>Indicates if single sign-on is enabled for the directory. For more information, see <a>EnableSso</a> and <a>DisableSso</a>.</p>"
  )
  @as("SsoEnabled")
  ssoEnabled: option<ssoEnabled>,
  @ocaml.doc("<p>Additional information about the directory stage.</p>") @as("StageReason")
  stageReason: option<stageReason>,
  @ocaml.doc("<p>The status of the RADIUS MFA server connection.</p>") @as("RadiusStatus")
  radiusStatus: option<radiusStatus>,
  @ocaml.doc("<p>A <a>RadiusSettings</a> object that contains information about the RADIUS
      server configured for this directory.</p>")
  @as("RadiusSettings")
  radiusSettings: option<radiusSettings>,
  @ocaml.doc("<p>A <a>DirectoryConnectSettingsDescription</a> object that contains additional
      information about an AD Connector directory. This member is only present if the directory is
      an AD Connector directory.</p>")
  @as("ConnectSettings")
  connectSettings: option<directoryConnectSettingsDescription>,
  @ocaml.doc("<p>A <a>DirectoryVpcSettingsDescription</a> object that contains additional
      information about a directory. This member is only present if the directory is a Simple AD or
      Managed Microsoft AD directory.</p>")
  @as("VpcSettings")
  vpcSettings: option<directoryVpcSettingsDescription>,
  @ocaml.doc("<p>The directory size.</p>") @as("Type") type_: option<directoryType>,
  @ocaml.doc("<p>The date and time that the stage was last updated.</p>")
  @as("StageLastUpdatedDateTime")
  stageLastUpdatedDateTime: option<lastUpdatedDateTime>,
  @ocaml.doc("<p>Specifies when the directory was created.</p>") @as("LaunchTime")
  launchTime: option<launchTime>,
  @ocaml.doc("<p>A directory share request that is sent by the directory owner to the directory consumer.
      The request includes a typed message to help the directory consumer administrator determine
      whether to approve or reject the share invitation.</p>")
  @as("ShareNotes")
  shareNotes: option<notes>,
  @ocaml.doc("<p>The method used when sharing a directory to determine whether the directory should be
      shared within your Amazon Web Services organization (<code>ORGANIZATIONS</code>) or with any Amazon Web Services account by
      sending a shared directory request (<code>HANDSHAKE</code>).</p>")
  @as("ShareMethod")
  shareMethod: option<shareMethod>,
  @ocaml.doc("<p>Current directory status of the shared Managed Microsoft AD directory.</p>")
  @as("ShareStatus")
  shareStatus: option<shareStatus>,
  @ocaml.doc("<p>The current stage of the directory.</p>") @as("Stage")
  stage: option<directoryStage>,
  @ocaml.doc("<p>The IP addresses of the DNS servers for the directory. For a Simple AD or Microsoft AD
      directory, these are the IP addresses of the Simple AD or Microsoft AD directory servers. For
      an AD Connector directory, these are the IP addresses of the DNS servers or domain controllers
      in your self-managed directory to which the AD Connector is connected.</p>")
  @as("DnsIpAddrs")
  dnsIpAddrs: option<dnsIpAddrs>,
  @ocaml.doc("<p>The description for the directory.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The access URL for the directory, such as
        <code>http://<alias>.awsapps.com</code>. If no alias has been created for the
      directory, <code><alias></code> is the directory identifier, such as
        <code>d-XXXXXXXXXX</code>.</p>")
  @as("AccessUrl")
  accessUrl: option<accessUrl>,
  @ocaml.doc("<p>The alias for the directory. If no alias has been created for the directory, the alias is
      the directory identifier, such as <code>d-XXXXXXXXXX</code>.</p>")
  @as("Alias")
  alias: option<aliasName>,
  @ocaml.doc("<p>The edition associated with this directory.</p>") @as("Edition")
  edition: option<directoryEdition>,
  @ocaml.doc("<p>The directory size.</p>") @as("Size") size: option<directorySize>,
  @ocaml.doc("<p>The short name of the directory.</p>") @as("ShortName")
  shortName: option<directoryShortName>,
  @ocaml.doc("<p>The fully qualified name of the directory.</p>") @as("Name")
  name: option<directoryName>,
  @ocaml.doc("<p>The directory identifier.</p>") @as("DirectoryId")
  directoryId: option<directoryId>,
}
@ocaml.doc("<p>A list of directory descriptions.</p>")
type directoryDescriptions = array<directoryDescription>
@ocaml.doc("<fullname>Directory Service</fullname>
         <p>Directory Service is a web service that makes it easy for you to setup and run directories in the
         Amazon Web Services cloud, or connect your Amazon Web Services resources with an existing self-managed Microsoft Active
         Directory. This guide provides detailed information about Directory Service operations, data types,
         parameters, and errors. For information about Directory Services features, see <a href=\"https://aws.amazon.com/directoryservice/\">Directory Service</a> and the <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html\">Directory Service
            Administration Guide</a>.</p>
         <note>
            <p>Amazon Web Services provides SDKs that consist of libraries and sample code for various
            programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs
            provide a convenient way to create programmatic access to Directory Service and other Amazon Web Services
            services. For more information about the Amazon Web Services SDKs, including how to download and
            install them, see <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web
               Services</a>.</p>
         </note>")
module VerifyTrust = {
  type t
  @ocaml.doc("<p>Initiates the verification of an existing trust relationship between an Managed Microsoft AD
      directory and an external domain.</p>")
  type request = {
    @ocaml.doc("<p>The unique Trust ID of the trust relationship to verify.</p>") @as("TrustId")
    trustId: trustId,
  }
  @ocaml.doc("<p>Result of a VerifyTrust request.</p>")
  type response = {
    @ocaml.doc("<p>The unique Trust ID of the trust relationship that was verified.</p>")
    @as("TrustId")
    trustId: option<trustId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "VerifyTrustCommand"
  let make = (~trustId, ()) => new({trustId: trustId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTrust = {
  type t
  type request = {
    @ocaml.doc("<p>Updates selective authentication for the trust.</p>") @as("SelectiveAuth")
    selectiveAuth: option<selectiveAuth>,
    @ocaml.doc("<p>Identifier of the trust relationship.</p>") @as("TrustId") trustId: trustId,
  }
  type response = {
    @ocaml.doc("<p>Identifier of the trust relationship.</p>") @as("TrustId")
    trustId: option<trustId>,
    @as("RequestId") requestId: option<requestId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "UpdateTrustCommand"
  let make = (~trustId, ~selectiveAuth=?, ()) =>
    new({selectiveAuth: selectiveAuth, trustId: trustId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNumberOfDomainControllers = {
  type t
  type request = {
    @ocaml.doc("<p>The number of domain controllers desired in the directory.</p>")
    @as("DesiredNumber")
    desiredNumber: desiredNumberOfDomainControllers,
    @ocaml.doc("<p>Identifier of the directory to which the domain controllers will be added or
      removed.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new
  external new: request => t = "UpdateNumberOfDomainControllersCommand"
  let make = (~desiredNumber, ~directoryId, ()) =>
    new({desiredNumber: desiredNumber, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartSchemaExtension = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the schema extension.</p>") @as("Description")
    description: description,
    @ocaml.doc("<p>The LDIF file represented as a string. To construct the LdifContent string, precede
      each line as it would be formatted in an ldif file with \\n. See the example request below for
      more details. The file size can be no larger than 1MB.</p>")
    @as("LdifContent")
    ldifContent: ldifContent,
    @ocaml.doc("<p>If true, creates a snapshot of the directory before applying the schema
      extension.</p>")
    @as("CreateSnapshotBeforeSchemaExtension")
    createSnapshotBeforeSchemaExtension: createSnapshotBeforeSchemaExtension,
    @ocaml.doc("<p>The identifier of the directory for which the schema extension will be applied
      to.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the schema extension that will be applied.</p>")
    @as("SchemaExtensionId")
    schemaExtensionId: option<schemaExtensionId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "StartSchemaExtensionCommand"
  let make = (~description, ~ldifContent, ~createSnapshotBeforeSchemaExtension, ~directoryId, ()) =>
    new({
      description: description,
      ldifContent: ldifContent,
      createSnapshotBeforeSchemaExtension: createSnapshotBeforeSchemaExtension,
      directoryId: directoryId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreFromSnapshot = {
  type t
  @ocaml.doc(
    "<p>An object representing the inputs for the <a>RestoreFromSnapshot</a> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>The identifier of the snapshot to restore from.</p>") @as("SnapshotId")
    snapshotId: snapshotId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "RestoreFromSnapshotCommand"
  let make = (~snapshotId, ()) => new({snapshotId: snapshotId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResetUserPassword = {
  type t
  type request = {
    @ocaml.doc("<p>The new password that will be reset.</p>") @as("NewPassword")
    newPassword: userPassword,
    @ocaml.doc("<p>The user name of the user whose password will be reset.</p>") @as("UserName")
    userName: customerUserName,
    @ocaml.doc("<p>Identifier of the Managed Microsoft AD or Simple AD directory in which the user
      resides.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "ResetUserPasswordCommand"
  let make = (~newPassword, ~userName, ~directoryId, ()) =>
    new({newPassword: newPassword, userName: userName, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveRegion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier of the directory for which you want to remove Region replication.</p>"
    )
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "RemoveRegionCommand"
  let make = (~directoryId, ()) => new({directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RejectSharedDirectory = {
  type t
  type request = {
    @ocaml.doc("<p>Identifier of the shared directory in the directory consumer account. This identifier is
      different for each directory owner account.</p>")
    @as("SharedDirectoryId")
    sharedDirectoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>Identifier of the shared directory in the directory consumer account.</p>")
    @as("SharedDirectoryId")
    sharedDirectoryId: option<directoryId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "RejectSharedDirectoryCommand"
  let make = (~sharedDirectoryId, ()) => new({sharedDirectoryId: sharedDirectoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterEventTopic = {
  type t
  @ocaml.doc("<p>Registers a new event topic.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon SNS topic name to which the directory will publish status messages. This Amazon SNS
      topic must be in the same region as the specified Directory ID.</p>")
    @as("TopicName")
    topicName: topicName,
    @ocaml.doc("<p>The Directory ID that will publish status messages to the Amazon SNS topic.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "RegisterEventTopicCommand"
  let make = (~topicName, ~directoryId, ()) => new({topicName: topicName, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableSso = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>EnableSso</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The password of an alternate account to use to enable single-sign on. This is only used
      for AD Connector directories. For more information, see the <i>UserName</i>
      parameter.</p>")
    @as("Password")
    password: option<connectPassword>,
    @ocaml.doc("<p>The username of an alternate account to use to enable single-sign on. This is only used
      for AD Connector directories. This account must have privileges to add a service principal
      name.</p>
         <p>If the AD Connector service account does not have privileges to add a service principal
      name, you can specify an alternate account with the <i>UserName</i> and
        <i>Password</i> parameters. These credentials are only used to enable single
      sign-on and are not stored by the service. The AD Connector service account is not
      changed.</p>")
    @as("UserName")
    userName: option<userName>,
    @ocaml.doc("<p>The identifier of the directory for which to enable single-sign on.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "EnableSsoCommand"
  let make = (~directoryId, ~password=?, ~userName=?, ()) =>
    new({password: password, userName: userName, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableLDAPS = {
  type t
  type request = {
    @ocaml.doc("<p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
      supported.</p>")
    @as("Type")
    type_: ldapstype,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "EnableLDAPSCommand"
  let make = (~type_, ~directoryId, ()) => new({type_: type_, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableClientAuthentication = {
  type t
  type request = {
    @ocaml.doc("<p>The type of client authentication to enable. Currently only the value <code>SmartCard</code> is
      supported. Smart card authentication in AD Connector requires that you enable Kerberos
      Constrained Delegation for the Service User to the LDAP service in your self-managed AD.
    </p>")
    @as("Type")
    type_: clientAuthenticationType,
    @ocaml.doc("<p>The identifier of the specified directory. </p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new
  external new: request => t = "EnableClientAuthenticationCommand"
  let make = (~type_, ~directoryId, ()) => new({type_: type_, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableSso = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>DisableSso</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The password of an alternate account to use to disable single-sign on. This is only used
      for AD Connector directories. For more information, see the <i>UserName</i>
      parameter.</p>")
    @as("Password")
    password: option<connectPassword>,
    @ocaml.doc("<p>The username of an alternate account to use to disable single-sign on. This is only used
      for AD Connector directories. This account must have privileges to remove a service
      principal name.</p>
         <p>If the AD Connector service account does not have privileges to remove a service
      principal name, you can specify an alternate account with the <i>UserName</i>
      and <i>Password</i> parameters. These credentials are only used to disable
      single sign-on and are not stored by the service. The AD Connector service account is not
      changed.</p>")
    @as("UserName")
    userName: option<userName>,
    @ocaml.doc("<p>The identifier of the directory for which to disable single-sign on.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "DisableSsoCommand"
  let make = (~directoryId, ~password=?, ~userName=?, ()) =>
    new({password: password, userName: userName, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableRadius = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>DisableRadius</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The identifier of the directory for which to disable MFA.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "DisableRadiusCommand"
  let make = (~directoryId, ()) => new({directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableLDAPS = {
  type t
  type request = {
    @ocaml.doc("<p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
      supported.</p>")
    @as("Type")
    type_: ldapstype,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "DisableLDAPSCommand"
  let make = (~type_, ~directoryId, ()) => new({type_: type_, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableClientAuthentication = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The type of client authentication to disable. Currently, only the parameter, <code>SmartCard</code> is supported.</p>"
    )
    @as("Type")
    type_: clientAuthenticationType,
    @ocaml.doc("<p>The identifier of the directory </p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new
  external new: request => t = "DisableClientAuthenticationCommand"
  let make = (~type_, ~directoryId, ()) => new({type_: type_, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterEventTopic = {
  type t
  @ocaml.doc(
    "<p>Removes the specified directory as a publisher to the specified Amazon SNS topic.</p>"
  )
  type request = {
    @ocaml.doc("<p>The name of the Amazon SNS topic from which to remove the directory as a
      publisher.</p>")
    @as("TopicName")
    topicName: topicName,
    @ocaml.doc("<p>The Directory ID to remove as a publisher. This directory will no longer send messages
      to the specified Amazon SNS topic.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "DeregisterEventTopicCommand"
  let make = (~topicName, ~directoryId, ()) => new({topicName: topicName, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the certificate.</p>") @as("CertificateId")
    certificateId: certificateId,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "DeregisterCertificateCommand"
  let make = (~certificateId, ~directoryId, ()) =>
    new({certificateId: certificateId, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteTrust = {
  type t
  @ocaml.doc("<p>Deletes the local side of an existing trust relationship between the Managed Microsoft AD
      directory and the external domain.</p>")
  type request = {
    @ocaml.doc("<p>Delete a conditional forwarder as part of a DeleteTrustRequest.</p>")
    @as("DeleteAssociatedConditionalForwarder")
    deleteAssociatedConditionalForwarder: option<deleteAssociatedConditionalForwarder>,
    @ocaml.doc("<p>The Trust ID of the trust relationship to be deleted.</p>") @as("TrustId")
    trustId: trustId,
  }
  @ocaml.doc("<p>The result of a DeleteTrust request.</p>")
  type response = {
    @ocaml.doc("<p>The Trust ID of the trust relationship that was deleted.</p>") @as("TrustId")
    trustId: option<trustId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DeleteTrustCommand"
  let make = (~trustId, ~deleteAssociatedConditionalForwarder=?, ()) =>
    new({
      deleteAssociatedConditionalForwarder: deleteAssociatedConditionalForwarder,
      trustId: trustId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSnapshot = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>DeleteSnapshot</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The identifier of the directory snapshot to be deleted.</p>") @as("SnapshotId")
    snapshotId: snapshotId,
  }
  @ocaml.doc("<p>Contains the results of the <a>DeleteSnapshot</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>The identifier of the directory snapshot that was deleted.</p>")
    @as("SnapshotId")
    snapshotId: option<snapshotId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DeleteSnapshotCommand"
  let make = (~snapshotId, ()) => new({snapshotId: snapshotId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLogSubscription = {
  type t
  type request = {
    @ocaml.doc("<p>Identifier of the directory whose log subscription you want to delete.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "DeleteLogSubscriptionCommand"
  let make = (~directoryId, ()) => new({directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDirectory = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>DeleteDirectory</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The identifier of the directory to delete.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  @ocaml.doc("<p>Contains the results of the <a>DeleteDirectory</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>The directory identifier.</p>") @as("DirectoryId")
    directoryId: option<directoryId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DeleteDirectoryCommand"
  let make = (~directoryId, ()) => new({directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteConditionalForwarder = {
  type t
  @ocaml.doc("<p>Deletes a conditional forwarder.</p>")
  type request = {
    @ocaml.doc("<p>The fully qualified domain name (FQDN) of the remote domain with which you are deleting
      the conditional forwarder.</p>")
    @as("RemoteDomainName")
    remoteDomainName: remoteDomainName,
    @ocaml.doc("<p>The directory ID for which you are deleting the conditional forwarder.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new
  external new: request => t = "DeleteConditionalForwarderCommand"
  let make = (~remoteDomainName, ~directoryId, ()) =>
    new({remoteDomainName: remoteDomainName, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateSnapshot = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>CreateSnapshot</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The descriptive name to apply to the snapshot.</p>") @as("Name")
    name: option<snapshotName>,
    @ocaml.doc("<p>The identifier of the directory of which to take a snapshot.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  @ocaml.doc("<p>Contains the results of the <a>CreateSnapshot</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>The identifier of the snapshot that was created.</p>") @as("SnapshotId")
    snapshotId: option<snapshotId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "CreateSnapshotCommand"
  let make = (~directoryId, ~name=?, ()) => new({name: name, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLogSubscription = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the CloudWatch log group where the real-time domain controller logs are
      forwarded.</p>")
    @as("LogGroupName")
    logGroupName: logGroupName,
    @ocaml.doc("<p>Identifier of the directory to which you want to subscribe and receive real-time logs to
      your specified CloudWatch log group.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "CreateLogSubscriptionCommand"
  let make = (~logGroupName, ~directoryId, ()) =>
    new({logGroupName: logGroupName, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateAlias = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>CreateAlias</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The requested alias.</p>
         <p>The alias must be unique amongst all aliases in Amazon Web Services. This operation throws an
            <code>EntityAlreadyExistsException</code> error if the alias already exists.</p>")
    @as("Alias")
    alias: aliasName,
    @ocaml.doc("<p>The identifier of the directory for which to create the alias.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  @ocaml.doc("<p>Contains the results of the <a>CreateAlias</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>The alias for the directory.</p>") @as("Alias") alias: option<aliasName>,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
    directoryId: option<directoryId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "CreateAliasCommand"
  let make = (~alias, ~directoryId, ()) => new({alias: alias, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelSchemaExtension = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the schema extension that will be canceled.</p>")
    @as("SchemaExtensionId")
    schemaExtensionId: schemaExtensionId,
    @ocaml.doc("<p>The identifier of the directory whose schema extension will be canceled.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "CancelSchemaExtensionCommand"
  let make = (~schemaExtensionId, ~directoryId, ()) =>
    new({schemaExtensionId: schemaExtensionId, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateConditionalForwarder = {
  type t
  @ocaml.doc("<p>Updates a conditional forwarder.</p>")
  type request = {
    @ocaml.doc("<p>The updated IP addresses of the remote DNS server associated with the conditional
      forwarder.</p>")
    @as("DnsIpAddrs")
    dnsIpAddrs: dnsIpAddrs,
    @ocaml.doc("<p>The fully qualified domain name (FQDN) of the remote domain with which you will set up
      a trust relationship.</p>")
    @as("RemoteDomainName")
    remoteDomainName: remoteDomainName,
    @ocaml.doc("<p>The directory ID of the Amazon Web Services directory for which to update the conditional
      forwarder.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new
  external new: request => t = "UpdateConditionalForwarderCommand"
  let make = (~dnsIpAddrs, ~remoteDomainName, ~directoryId, ()) =>
    new({dnsIpAddrs: dnsIpAddrs, remoteDomainName: remoteDomainName, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UnshareDirectory = {
  type t
  type request = {
    @ocaml.doc("<p>Identifier for the directory consumer account with whom the directory has to be
      unshared.</p>")
    @as("UnshareTarget")
    unshareTarget: unshareTarget,
    @ocaml.doc("<p>The identifier of the Managed Microsoft AD directory that you want to stop
      sharing.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>Identifier of the directory stored in the directory consumer account that is to be
      unshared from the specified directory (<code>DirectoryId</code>).</p>")
    @as("SharedDirectoryId")
    sharedDirectoryId: option<directoryId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "UnshareDirectoryCommand"
  let make = (~unshareTarget, ~directoryId, ()) =>
    new({unshareTarget: unshareTarget, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ShareDirectory = {
  type t
  type request = {
    @ocaml.doc("<p>The method used when sharing a directory to determine whether the directory should be
      shared within your Amazon Web Services organization (<code>ORGANIZATIONS</code>) or with any Amazon Web Services account by
      sending a directory sharing request (<code>HANDSHAKE</code>).</p>")
    @as("ShareMethod")
    shareMethod: shareMethod,
    @ocaml.doc("<p>Identifier for the directory consumer account with whom the directory is to be
      shared.</p>")
    @as("ShareTarget")
    shareTarget: shareTarget,
    @ocaml.doc("<p>A directory share request that is sent by the directory owner to the directory consumer.
      The request includes a typed message to help the directory consumer administrator determine
      whether to approve or reject the share invitation.</p>")
    @as("ShareNotes")
    shareNotes: option<notes>,
    @ocaml.doc(
      "<p>Identifier of the Managed Microsoft AD directory that you want to share with other Amazon Web Services accounts.</p>"
    )
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>Identifier of the directory that is stored in the directory consumer account that is
      shared from the specified directory (<code>DirectoryId</code>).</p>")
    @as("SharedDirectoryId")
    sharedDirectoryId: option<directoryId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "ShareDirectoryCommand"
  let make = (~shareMethod, ~shareTarget, ~directoryId, ~shareNotes=?, ()) =>
    new({
      shareMethod: shareMethod,
      shareTarget: shareTarget,
      shareNotes: shareNotes,
      directoryId: directoryId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTagsFromResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key (name) of the tag to be removed.</p>") @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc("<p>Identifier (ID) of the directory from which to remove the tag.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "RemoveTagsFromResourceCommand"
  let make = (~tagKeys, ~resourceId, ()) => new({tagKeys: tagKeys, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveIpRoutes = {
  type t
  type request = {
    @ocaml.doc("<p>IP address blocks that you want to remove.</p>") @as("CidrIps") cidrIps: cidrIps,
    @ocaml.doc("<p>Identifier (ID) of the directory from which you want to remove the IP
         addresses.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "RemoveIpRoutesCommand"
  let make = (~cidrIps, ~directoryId, ()) => new({cidrIps: cidrIps, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterCertificate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A <code>ClientCertAuthSettings</code> object that contains client certificate authentication settings.</p>"
    )
    @as("ClientCertAuthSettings")
    clientCertAuthSettings: option<clientCertAuthSettings>,
    @ocaml.doc(
      "<p>The function that the registered certificate performs. Valid values include <code>ClientLDAPS</code> or <code>ClientCertAuth</code>. The default value is <code>ClientLDAPS</code>.</p>"
    )
    @as("Type")
    type_: option<certificateType>,
    @ocaml.doc("<p>The certificate PEM string that needs to be registered.</p>")
    @as("CertificateData")
    certificateData: certificateData,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the certificate.</p>") @as("CertificateId")
    certificateId: option<certificateId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "RegisterCertificateCommand"
  let make = (~certificateData, ~directoryId, ~clientCertAuthSettings=?, ~type_=?, ()) =>
    new({
      clientCertAuthSettings: clientCertAuthSettings,
      type_: type_,
      certificateData: certificateData,
      directoryId: directoryId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSnapshotLimits = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>GetSnapshotLimits</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>Contains the identifier of the directory to obtain the limits for.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  @ocaml.doc("<p>Contains the results of the <a>GetSnapshotLimits</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>A <a>SnapshotLimits</a> object that contains the manual snapshot limits for the specified
         directory.</p>")
    @as("SnapshotLimits")
    snapshotLimits: option<snapshotLimits>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "GetSnapshotLimitsCommand"
  let make = (~directoryId, ()) => new({directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDirectoryLimits = {
  type t
  type request = {.}
  @ocaml.doc("<p>Contains the results of the <a>GetDirectoryLimits</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>A <a>DirectoryLimits</a> object that contains the directory limits for the
      current Region.</p>")
    @as("DirectoryLimits")
    directoryLimits: option<directoryLimits>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "GetDirectoryLimitsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTrust = {
  type t
  @ocaml.doc("<p>Directory Service for Microsoft Active Directory allows you to configure trust relationships. For
      example, you can establish a trust between your Managed Microsoft AD directory, and your existing
      self-managed Microsoft Active Directory. This would allow you to provide users and groups
      access to resources in either domain, with a single set of credentials.</p>
         <p>This action initiates the creation of the Amazon Web Services side of a trust relationship between an
      Managed Microsoft AD directory and an external domain.</p>")
  type request = {
    @ocaml.doc("<p>Optional parameter to enable selective authentication for the trust.</p>")
    @as("SelectiveAuth")
    selectiveAuth: option<selectiveAuth>,
    @ocaml.doc("<p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>")
    @as("ConditionalForwarderIpAddrs")
    conditionalForwarderIpAddrs: option<dnsIpAddrs>,
    @ocaml.doc("<p>The trust relationship type. <code>Forest</code> is the default.</p>")
    @as("TrustType")
    trustType: option<trustType>,
    @ocaml.doc("<p>The direction of the trust relationship.</p>") @as("TrustDirection")
    trustDirection: trustDirection,
    @ocaml.doc("<p>The trust password. The must be the same password that was used when creating the trust
      relationship on the external domain.</p>")
    @as("TrustPassword")
    trustPassword: trustPassword,
    @ocaml.doc("<p>The Fully Qualified Domain Name (FQDN) of the external domain for which to create the
      trust relationship.</p>")
    @as("RemoteDomainName")
    remoteDomainName: remoteDomainName,
    @ocaml.doc("<p>The Directory ID of the Managed Microsoft AD directory for which to establish the trust
      relationship.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  @ocaml.doc("<p>The result of a CreateTrust request.</p>")
  type response = {
    @ocaml.doc("<p>A unique identifier for the trust relationship that was created.</p>")
    @as("TrustId")
    trustId: option<trustId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "CreateTrustCommand"
  let make = (
    ~trustDirection,
    ~trustPassword,
    ~remoteDomainName,
    ~directoryId,
    ~selectiveAuth=?,
    ~conditionalForwarderIpAddrs=?,
    ~trustType=?,
    (),
  ) =>
    new({
      selectiveAuth: selectiveAuth,
      conditionalForwarderIpAddrs: conditionalForwarderIpAddrs,
      trustType: trustType,
      trustDirection: trustDirection,
      trustPassword: trustPassword,
      remoteDomainName: remoteDomainName,
      directoryId: directoryId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConditionalForwarder = {
  type t
  @ocaml.doc("<p>Initiates the creation of a conditional forwarder for your Directory Service for Microsoft Active
      Directory. Conditional forwarders are required in order to set up a trust relationship with
      another domain.</p>")
  type request = {
    @ocaml.doc("<p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>")
    @as("DnsIpAddrs")
    dnsIpAddrs: dnsIpAddrs,
    @ocaml.doc("<p>The fully qualified domain name (FQDN) of the remote domain with which you will set up
      a trust relationship.</p>")
    @as("RemoteDomainName")
    remoteDomainName: remoteDomainName,
    @ocaml.doc("<p>The directory ID of the Amazon Web Services directory for which you are creating the conditional
      forwarder.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new
  external new: request => t = "CreateConditionalForwarderCommand"
  let make = (~dnsIpAddrs, ~remoteDomainName, ~directoryId, ()) =>
    new({dnsIpAddrs: dnsIpAddrs, remoteDomainName: remoteDomainName, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcceptSharedDirectory = {
  type t
  type request = {
    @ocaml.doc("<p>Identifier of the shared directory in the directory consumer account. This identifier is
      different for each directory owner account. </p>")
    @as("SharedDirectoryId")
    sharedDirectoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>The shared directory in the directory consumer account.</p>")
    @as("SharedDirectory")
    sharedDirectory: option<sharedDirectory>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "AcceptSharedDirectoryCommand"
  let make = (~sharedDirectoryId, ()) => new({sharedDirectoryId: sharedDirectoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRadius = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>UpdateRadius</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>A <a>RadiusSettings</a> object that contains information about the RADIUS
         server.</p>")
    @as("RadiusSettings")
    radiusSettings: radiusSettings,
    @ocaml.doc("<p>The identifier of the directory for which to update the RADIUS server
         information.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "UpdateRadiusCommand"
  let make = (~radiusSettings, ~directoryId, ()) =>
    new({radiusSettings: radiusSettings, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>Reserved for future use.</p>") @as("Limit") limit: option<limit>,
    @ocaml.doc("<p>Reserved for future use.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>Identifier (ID) of the directory for which you want to retrieve tags.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Reserved for future use.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>List of tags returned by the ListTagsForResource operation.</p>") @as("Tags")
    tags: option<tags>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceId, ~limit=?, ~nextToken=?, ()) =>
    new({limit: limit, nextToken: nextToken, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSchemaExtensions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("Limit") limit: option<limit>,
    @ocaml.doc("<p>The <code>ListSchemaExtensions.NextToken</code> value from a previous call to
        <code>ListSchemaExtensions</code>. Pass null if this is the first call.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the directory from which to retrieve the schema extension
      information.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>If not null, more results are available. Pass this value for the <code>NextToken</code>
      parameter in a subsequent call to <code>ListSchemaExtensions</code> to retrieve the next set
      of items.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the schema extensions applied to the directory.</p>")
    @as("SchemaExtensionsInfo")
    schemaExtensionsInfo: option<schemaExtensionsInfo>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "ListSchemaExtensionsCommand"
  let make = (~directoryId, ~limit=?, ~nextToken=?, ()) =>
    new({limit: limit, nextToken: nextToken, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLogSubscriptions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items returned.</p>") @as("Limit") limit: option<limit>,
    @ocaml.doc("<p>The token for the next set of items to return.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>If a <i>DirectoryID</i> is provided, lists only the log subscription
      associated with that directory. If no <i>DirectoryId</i> is provided, lists all
      log subscriptions associated with your Amazon Web Services account. If there are no log subscriptions for the
      Amazon Web Services account or the directory, an empty list will be returned.</p>")
    @as("DirectoryId")
    directoryId: option<directoryId>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of active <a>LogSubscription</a> objects for calling the Amazon Web Services account.</p>"
    )
    @as("LogSubscriptions")
    logSubscriptions: option<logSubscriptions>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "ListLogSubscriptionsCommand"
  let make = (~limit=?, ~nextToken=?, ~directoryId=?, ()) =>
    new({limit: limit, nextToken: nextToken, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIpRoutes = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of items to return. If this value is zero, the maximum number of items
         is specified by the limitations of the operation.</p>")
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc(
      "<p>The <i>ListIpRoutes.NextToken</i> value from a previous call to <a>ListIpRoutes</a>. Pass null if this is the first call.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Identifier (ID) of the directory for which you want to retrieve the IP
         addresses.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>If not null, more results are available. Pass this value for the
            <i>NextToken</i> parameter in a subsequent call to <a>ListIpRoutes</a> to retrieve the next set of items.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <a>IpRoute</a>s.</p>") @as("IpRoutesInfo")
    ipRoutesInfo: option<ipRoutesInfo>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "ListIpRoutesCommand"
  let make = (~directoryId, ~limit=?, ~nextToken=?, ()) =>
    new({limit: limit, nextToken: nextToken, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>The number of items that should show up on one page</p>") @as("Limit")
    limit: option<pageLimit>,
    @ocaml.doc("<p>A token for requesting another page of certificates if the <code>NextToken</code> response
      element indicates that more certificates are available. Use the value of the returned
        <code>NextToken</code> element in your request until the token comes back as
        <code>null</code>. Pass <code>null</code> if this is the first call.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>A list of certificates with basic details including certificate ID, certificate common
      name, certificate state.</p>")
    @as("CertificatesInfo")
    certificatesInfo: option<certificatesInfo>,
    @ocaml.doc("<p>Indicates whether another page of certificates is available when the number of available
      certificates exceeds the page limit.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "ListCertificatesCommand"
  let make = (~directoryId, ~limit=?, ~nextToken=?, ()) =>
    new({limit: limit, nextToken: nextToken, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableRadius = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>EnableRadius</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>A <a>RadiusSettings</a> object that contains information about the RADIUS
         server.</p>")
    @as("RadiusSettings")
    radiusSettings: radiusSettings,
    @ocaml.doc("<p>The identifier of the directory for which to enable MFA.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "EnableRadiusCommand"
  let make = (~radiusSettings, ~directoryId, ()) =>
    new({radiusSettings: radiusSettings, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeTrusts = {
  type t
  @ocaml.doc("<p>Describes the trust relationships for a particular Managed Microsoft AD directory. If no input
      parameters are provided, such as directory ID or trust ID, this request describes all the
      trust relationships.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of objects to return.</p>") @as("Limit") limit: option<limit>,
    @ocaml.doc("<p>The <i>DescribeTrustsResult.NextToken</i> value from a previous call to
        <a>DescribeTrusts</a>. Pass null if this is the first call.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of identifiers of the trust relationships for which to obtain the information. If
      this member is null, all trust relationships that belong to the current account are
      returned.</p>
         <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>")
    @as("TrustIds")
    trustIds: option<trustIds>,
    @ocaml.doc("<p>The Directory ID of the Amazon Web Services directory that is a part of the requested trust
      relationship.</p>")
    @as("DirectoryId")
    directoryId: option<directoryId>,
  }
  @ocaml.doc("<p>The result of a DescribeTrust request.</p>")
  type response = {
    @ocaml.doc("<p>If not null, more results are available. Pass this value for the
        <i>NextToken</i> parameter in a subsequent call to <a>DescribeTrusts</a> to retrieve the next set of items.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of Trust objects that were retrieved.</p>
         <p>It is possible that this list contains less than the number of items specified in the
        <i>Limit</i> member of the request. This occurs if there are less than the
      requested number of items left to retrieve, or if the limitations of the operation have been
      exceeded.</p>")
    @as("Trusts")
    trusts: option<trusts>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DescribeTrustsCommand"
  let make = (~limit=?, ~nextToken=?, ~trustIds=?, ~directoryId=?, ()) =>
    new({limit: limit, nextToken: nextToken, trustIds: trustIds, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSnapshots = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>DescribeSnapshots</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of objects to return.</p>") @as("Limit") limit: option<limit>,
    @ocaml.doc("<p>The <i>DescribeSnapshotsResult.NextToken</i> value from a previous call to
            <a>DescribeSnapshots</a>. Pass null if this is the first call.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of identifiers of the snapshots to obtain the information for. If this member is
         null or empty, all snapshots are returned using the <i>Limit</i> and <i>NextToken</i>
         members.</p>")
    @as("SnapshotIds")
    snapshotIds: option<snapshotIds>,
    @ocaml.doc("<p>The identifier of the directory for which to retrieve snapshot information.</p>")
    @as("DirectoryId")
    directoryId: option<directoryId>,
  }
  @ocaml.doc("<p>Contains the results of the <a>DescribeSnapshots</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>If not null, more results are available. Pass this value in the <i>NextToken</i> member of
         a subsequent call to <a>DescribeSnapshots</a>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of <a>Snapshot</a> objects that were retrieved.</p>
         <p>It is possible that this list contains less than the number of items specified in the
            <i>Limit</i> member of the request. This occurs if there are less than the requested
         number of items left to retrieve, or if the limitations of the operation have been
         exceeded.</p>")
    @as("Snapshots")
    snapshots: option<snapshots>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DescribeSnapshotsCommand"
  let make = (~limit=?, ~nextToken=?, ~snapshotIds=?, ~directoryId=?, ()) =>
    new({limit: limit, nextToken: nextToken, snapshotIds: snapshotIds, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSharedDirectories = {
  type t
  type request = {
    @ocaml.doc("<p>The number of shared directories to return in the response object.</p>")
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc("<p>The <code>DescribeSharedDirectoriesResult.NextToken</code> value from a previous call to
        <a>DescribeSharedDirectories</a>. Pass null if this is the first call. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of identifiers of all shared directories in your account. </p>")
    @as("SharedDirectoryIds")
    sharedDirectoryIds: option<directoryIds>,
    @ocaml.doc("<p>Returns the identifier of the directory in the directory owner account. </p>")
    @as("OwnerDirectoryId")
    ownerDirectoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>If not null, token that indicates that more results are available. Pass this value for the
        <code>NextToken</code> parameter in a subsequent call to <a>DescribeSharedDirectories</a> to retrieve the next set of items.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of all shared directories in your account.</p>") @as("SharedDirectories")
    sharedDirectories: option<sharedDirectories>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DescribeSharedDirectoriesCommand"
  let make = (~ownerDirectoryId, ~limit=?, ~nextToken=?, ~sharedDirectoryIds=?, ()) =>
    new({
      limit: limit,
      nextToken: nextToken,
      sharedDirectoryIds: sharedDirectoryIds,
      ownerDirectoryId: ownerDirectoryId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLDAPSSettings = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of items that should be displayed on one page.</p>")
    @as("Limit")
    limit: option<pageLimit>,
    @ocaml.doc("<p>The type of next token used for pagination.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
      supported.</p>")
    @as("Type")
    type_: option<ldapstype>,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>The next token used to retrieve the LDAPS settings if the number of setting types exceeds
      page limit and there is another page.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about LDAP security for the specified directory, including status of
      enablement, state last updated date time, and the reason for the state.</p>")
    @as("LDAPSSettingsInfo")
    ldapssettingsInfo: option<ldapssettingsInfo>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DescribeLDAPSSettingsCommand"
  let make = (~directoryId, ~limit=?, ~nextToken=?, ~type_=?, ()) =>
    new({limit: limit, nextToken: nextToken, type_: type_, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventTopics = {
  type t
  @ocaml.doc("<p>Describes event topics.</p>")
  type request = {
    @ocaml.doc("<p>A list of Amazon SNS topic names for which to obtain the information. If this member is
      null, all associations for the specified Directory ID are returned.</p>
         <p>An empty list results in an <code>InvalidParameterException</code> being
      thrown.</p>")
    @as("TopicNames")
    topicNames: option<topicNames>,
    @ocaml.doc("<p>The Directory ID for which to get the list of associated Amazon SNS topics. If this member
      is null, associations for all Directory IDs are returned.</p>")
    @as("DirectoryId")
    directoryId: option<directoryId>,
  }
  @ocaml.doc("<p>The result of a DescribeEventTopic request.</p>")
  type response = {
    @ocaml.doc("<p>A list of Amazon SNS topic names that receive status messages from the specified Directory
      ID.</p>")
    @as("EventTopics")
    eventTopics: option<eventTopics>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DescribeEventTopicsCommand"
  let make = (~topicNames=?, ~directoryId=?, ()) =>
    new({topicNames: topicNames, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomainControllers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("Limit") limit: option<limit>,
    @ocaml.doc("<p>The <i>DescribeDomainControllers.NextToken</i> value from a previous call
      to <a>DescribeDomainControllers</a>. Pass null if this is the first call.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of identifiers for the domain controllers whose information will be
      provided.</p>")
    @as("DomainControllerIds")
    domainControllerIds: option<domainControllerIds>,
    @ocaml.doc("<p>Identifier of the directory for which to retrieve the domain controller
      information.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>If not null, more results are available. Pass this value for the <code>NextToken</code>
      parameter in a subsequent call to <a>DescribeDomainControllers</a> retrieve the
      next set of items.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>List of the <a>DomainController</a> objects that were retrieved.</p>")
    @as("DomainControllers")
    domainControllers: option<domainControllers>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DescribeDomainControllersCommand"
  let make = (~directoryId, ~limit=?, ~nextToken=?, ~domainControllerIds=?, ()) =>
    new({
      limit: limit,
      nextToken: nextToken,
      domainControllerIds: domainControllerIds,
      directoryId: directoryId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClientAuthenticationSettings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation. </p>"
    )
    @as("Limit")
    limit: option<pageLimit>,
    @ocaml.doc(
      "<p>The <i>DescribeClientAuthenticationSettingsResult.NextToken</i> value from a previous call to <a>DescribeClientAuthenticationSettings</a>. Pass null if this is the first call.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The type of client authentication for which to retrieve information. If no type is specified, a list of all client authentication types that are supported for the specified directory is retrieved.</p>"
    )
    @as("Type")
    type_: option<clientAuthenticationType>,
    @ocaml.doc("<p>The identifier of the directory for which to retrieve information.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>The next token used to retrieve the client authentication settings if the number of setting types exceeds
      page limit and there is another page.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Information about the type of client authentication for the specified directory. The following information is retrieved: The date and time when the status of the client authentication type was last updated, whether the client authentication type is enabled or disabled, and the type of client authentication.</p>"
    )
    @as("ClientAuthenticationSettingsInfo")
    clientAuthenticationSettingsInfo: option<clientAuthenticationSettingsInfo>,
  }
  @module("@aws-sdk/client-ds") @new
  external new: request => t = "DescribeClientAuthenticationSettingsCommand"
  let make = (~directoryId, ~limit=?, ~nextToken=?, ~type_=?, ()) =>
    new({limit: limit, nextToken: nextToken, type_: type_, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the certificate.</p>") @as("CertificateId")
    certificateId: certificateId,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>Information about the certificate, including registered date time, certificate state, the
      reason for the state, expiration date time, and certificate common name.</p>")
    @as("Certificate")
    certificate: option<certificate>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DescribeCertificateCommand"
  let make = (~certificateId, ~directoryId, ()) =>
    new({certificateId: certificateId, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMicrosoftAD = {
  type t
  @ocaml.doc("<p>Creates an Managed Microsoft AD directory.</p>")
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the Managed Microsoft AD directory.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Managed Microsoft AD is available in two editions: <code>Standard</code> and
        <code>Enterprise</code>. <code>Enterprise</code> is the default.</p>")
    @as("Edition")
    edition: option<directoryEdition>,
    @ocaml.doc(
      "<p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>"
    )
    @as("VpcSettings")
    vpcSettings: directoryVpcSettings,
    @ocaml.doc("<p>A description for the directory. This label will appear on the Amazon Web Services console
        <code>Directory Details</code> page after the directory is created.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The password for the default administrative user named <code>Admin</code>.</p>
         <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>")
    @as("Password")
    password: password,
    @ocaml.doc("<p>The NetBIOS name for your domain, such as <code>CORP</code>. If you don't specify a
      NetBIOS name, it will default to the first part of your directory DNS. For example,
        <code>CORP</code> for the directory DNS <code>corp.example.com</code>. </p>")
    @as("ShortName")
    shortName: option<directoryShortName>,
    @ocaml.doc("<p>The fully qualified domain name for the Managed Microsoft AD directory, such as
        <code>corp.example.com</code>. This name will resolve inside your VPC only. It does not need
      to be publicly resolvable.</p>")
    @as("Name")
    name: directoryName,
  }
  @ocaml.doc("<p>Result of a CreateMicrosoftAD request.</p>")
  type response = {
    @ocaml.doc("<p>The identifier of the directory that was created.</p>") @as("DirectoryId")
    directoryId: option<directoryId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "CreateMicrosoftADCommand"
  let make = (
    ~vpcSettings,
    ~password,
    ~name,
    ~tags=?,
    ~edition=?,
    ~description=?,
    ~shortName=?,
    (),
  ) =>
    new({
      tags: tags,
      edition: edition,
      vpcSettings: vpcSettings,
      description: description,
      password: password,
      shortName: shortName,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDirectory = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>CreateDirectory</a> operation. </p>")
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the Simple AD directory.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A <a>DirectoryVpcSettings</a> object that contains additional information for
      the operation.</p>")
    @as("VpcSettings")
    vpcSettings: option<directoryVpcSettings>,
    @ocaml.doc("<p>The size of the directory.</p>") @as("Size") size: directorySize,
    @ocaml.doc("<p>A description for the directory.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The password for the directory administrator. The directory creation process creates a
      directory administrator account with the user name <code>Administrator</code> and this
      password.</p>
         <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>
         <p>The regex pattern for this string is made up of the following conditions:</p>
         <ul>
            <li>
               <p>Length (?=^.{8,64}$) – Must be between 8 and 64 characters</p>
            </li>
         </ul>
         <p>AND any 3 of the following password complexity rules required by Active Directory:</p>
         <ul>
            <li>
               <p>Numbers and upper case and lowercase (?=.*\\d)(?=.*[A-Z])(?=.*[a-z])</p>
            </li>
            <li>
               <p>Numbers and special characters and lower case
          (?=.*\\d)(?=.*[^A-Za-z0-9\\s])(?=.*[a-z])</p>
            </li>
            <li>
               <p>Special characters and upper case and lower case
          (?=.*[^A-Za-z0-9\\s])(?=.*[A-Z])(?=.*[a-z])</p>
            </li>
            <li>
               <p>Numbers and upper case and special characters
          (?=.*\\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\\s])</p>
            </li>
         </ul>
         <p>For additional information about how Active Directory passwords are enforced, see <a href=\"https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/password-must-meet-complexity-requirements\">Password must meet complexity requirements</a> on the Microsoft website.</p>")
    @as("Password")
    password: password,
    @ocaml.doc("<p>The NetBIOS name of the directory, such as <code>CORP</code>.</p>")
    @as("ShortName")
    shortName: option<directoryShortName>,
    @ocaml.doc(
      "<p>The fully qualified name for the directory, such as <code>corp.example.com</code>.</p>"
    )
    @as("Name")
    name: directoryName,
  }
  @ocaml.doc("<p>Contains the results of the <a>CreateDirectory</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>The identifier of the directory that was created.</p>") @as("DirectoryId")
    directoryId: option<directoryId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "CreateDirectoryCommand"
  let make = (~size, ~password, ~name, ~tags=?, ~vpcSettings=?, ~description=?, ~shortName=?, ()) =>
    new({
      tags: tags,
      vpcSettings: vpcSettings,
      size: size,
      description: description,
      password: password,
      shortName: shortName,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ConnectDirectory = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>ConnectDirectory</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The tags to be assigned to AD Connector.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>A <a>DirectoryConnectSettings</a> object that contains additional information
      for the operation.</p>")
    @as("ConnectSettings")
    connectSettings: directoryConnectSettings,
    @ocaml.doc("<p>The size of the directory.</p>") @as("Size") size: directorySize,
    @ocaml.doc("<p>A description for the directory.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The password for your self-managed user account.</p>") @as("Password")
    password: connectPassword,
    @ocaml.doc("<p>The NetBIOS name of your self-managed directory, such as <code>CORP</code>.</p>")
    @as("ShortName")
    shortName: option<directoryShortName>,
    @ocaml.doc("<p>The fully qualified name of your self-managed directory, such as
        <code>corp.example.com</code>.</p>")
    @as("Name")
    name: directoryName,
  }
  @ocaml.doc("<p>Contains the results of the <a>ConnectDirectory</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>The identifier of the new directory.</p>") @as("DirectoryId")
    directoryId: option<directoryId>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "ConnectDirectoryCommand"
  let make = (
    ~connectSettings,
    ~size,
    ~password,
    ~name,
    ~tags=?,
    ~description=?,
    ~shortName=?,
    (),
  ) =>
    new({
      tags: tags,
      connectSettings: connectSettings,
      size: size,
      description: description,
      password: password,
      shortName: shortName,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the directory.</p>") @as("Tags") tags: tags,
    @ocaml.doc("<p>Identifier (ID) for the directory to which to add the tag.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "AddTagsToResourceCommand"
  let make = (~tags, ~resourceId, ()) => new({tags: tags, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddRegion = {
  type t
  type request = {
    @as("VPCSettings") vpcsettings: directoryVpcSettings,
    @ocaml.doc("<p>The name of the Region where you want to add domain controllers for replication. For
      example, <code>us-east-1</code>.</p>")
    @as("RegionName")
    regionName: regionName,
    @ocaml.doc(
      "<p>The identifier of the directory to which you want to add Region replication.</p>"
    )
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "AddRegionCommand"
  let make = (~vpcsettings, ~regionName, ~directoryId, ()) =>
    new({vpcsettings: vpcsettings, regionName: regionName, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddIpRoutes = {
  type t
  type request = {
    @ocaml.doc("<p>If set to true, updates the inbound and outbound rules of the security group that has
         the description: \"Amazon Web Services created security group for <i>directory ID</i>
         directory controllers.\" Following are the new rules: </p>
         <p>Inbound:</p>
         <ul>
            <li>
               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source:
               0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source:
               0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: DNS (UDP), Protocol: UDP, Range: 53, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: DNS (TCP), Protocol: TCP, Range: 53, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: LDAP, Protocol: TCP, Range: 389, Source: 0.0.0.0/0</p>
            </li>
            <li>
               <p>Type: All ICMP, Protocol: All, Range: N/A, Source: 0.0.0.0/0</p>
            </li>
         </ul>

         <p></p>
         <p>Outbound:</p>
         <ul>
            <li>
               <p>Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0</p>
            </li>
         </ul>
         <p>These security rules impact an internal network interface that is not exposed
         publicly.</p>")
    @as("UpdateSecurityGroupForDirectoryControllers")
    updateSecurityGroupForDirectoryControllers: option<updateSecurityGroupForDirectoryControllers>,
    @ocaml.doc("<p>IP address blocks, using CIDR format, of the traffic to route. This is often the IP
         address block of the DNS server used for your self-managed domain.</p>")
    @as("IpRoutes")
    ipRoutes: ipRoutes,
    @ocaml.doc("<p>Identifier (ID) of the directory to which to add the address block.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-ds") @new external new: request => t = "AddIpRoutesCommand"
  let make = (~ipRoutes, ~directoryId, ~updateSecurityGroupForDirectoryControllers=?, ()) =>
    new({
      updateSecurityGroupForDirectoryControllers: updateSecurityGroupForDirectoryControllers,
      ipRoutes: ipRoutes,
      directoryId: directoryId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeConditionalForwarders = {
  type t
  @ocaml.doc("<p>Describes a conditional forwarder.</p>")
  type request = {
    @ocaml.doc("<p>The fully qualified domain names (FQDN) of the remote domains for which to get the list
      of associated conditional forwarders. If this member is null, all conditional forwarders are
      returned.</p>")
    @as("RemoteDomainNames")
    remoteDomainNames: option<remoteDomainNames>,
    @ocaml.doc("<p>The directory ID for which to get the list of associated conditional
      forwarders.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  @ocaml.doc("<p>The result of a DescribeConditionalForwarder request.</p>")
  type response = {
    @ocaml.doc("<p>The list of conditional forwarders that have been created.</p>")
    @as("ConditionalForwarders")
    conditionalForwarders: option<conditionalForwarders>,
  }
  @module("@aws-sdk/client-ds") @new
  external new: request => t = "DescribeConditionalForwardersCommand"
  let make = (~directoryId, ~remoteDomainNames=?, ()) =>
    new({remoteDomainNames: remoteDomainNames, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateComputer = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>CreateComputer</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>An array of <a>Attribute</a> objects that contain any LDAP attributes to apply to the
            computer account.</p>")
    @as("ComputerAttributes")
    computerAttributes: option<attributes>,
    @ocaml.doc(
      "<p>The fully-qualified distinguished name of the organizational unit to place the computer account in.</p>"
    )
    @as("OrganizationalUnitDistinguishedName")
    organizationalUnitDistinguishedName: option<organizationalUnitDN>,
    @ocaml.doc(
      "<p>A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.</p>"
    )
    @as("Password")
    password: computerPassword,
    @ocaml.doc("<p>The name of the computer account.</p>") @as("ComputerName")
    computerName: computerName,
    @ocaml.doc("<p>The identifier of the directory in which to create the computer account.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  @ocaml.doc("<p>Contains the results for the <a>CreateComputer</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>A <a>Computer</a> object that represents the computer account.</p>")
    @as("Computer")
    computer: option<computer>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "CreateComputerCommand"
  let make = (
    ~password,
    ~computerName,
    ~directoryId,
    ~computerAttributes=?,
    ~organizationalUnitDistinguishedName=?,
    (),
  ) =>
    new({
      computerAttributes: computerAttributes,
      organizationalUnitDistinguishedName: organizationalUnitDistinguishedName,
      password: password,
      computerName: computerName,
      directoryId: directoryId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRegions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>DescribeRegionsResult.NextToken</code> value from a previous call to <a>DescribeRegions</a>. Pass null if this is the first call.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the Region. For example, <code>us-east-1</code>.</p>")
    @as("RegionName")
    regionName: option<regionName>,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>If not null, more results are available. Pass this value for the <code>NextToken</code>
      parameter in a subsequent call to <a>DescribeRegions</a> to retrieve the next set
      of items.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>List of Region information related to the directory for each replicated Region.</p>"
    )
    @as("RegionsDescription")
    regionsDescription: option<regionsDescription>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DescribeRegionsCommand"
  let make = (~directoryId, ~nextToken=?, ~regionName=?, ()) =>
    new({nextToken: nextToken, regionName: regionName, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDirectories = {
  type t
  @ocaml.doc("<p>Contains the inputs for the <a>DescribeDirectories</a> operation.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of items to return. If this value is zero, the maximum number of items
      is specified by the limitations of the operation.</p>")
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc(
      "<p>The <code>DescribeDirectoriesResult.NextToken</code> value from a previous call to <a>DescribeDirectories</a>. Pass null if this is the first call.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of identifiers of the directories for which to obtain the information. If this
      member is null, all directories that belong to the current account are returned.</p>
         <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>")
    @as("DirectoryIds")
    directoryIds: option<directoryIds>,
  }
  @ocaml.doc("<p>Contains the results of the <a>DescribeDirectories</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>If not null, more results are available. Pass this value for the <code>NextToken</code>
      parameter in a subsequent call to <a>DescribeDirectories</a> to retrieve the next
      set of items.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of <a>DirectoryDescription</a> objects that were retrieved.</p>
         <p>It is possible that this list contains less than the number of items specified in the
        <code>Limit</code> member of the request. This occurs if there are less than the requested
      number of items left to retrieve, or if the limitations of the operation have been
      exceeded.</p>")
    @as("DirectoryDescriptions")
    directoryDescriptions: option<directoryDescriptions>,
  }
  @module("@aws-sdk/client-ds") @new external new: request => t = "DescribeDirectoriesCommand"
  let make = (~limit=?, ~nextToken=?, ~directoryIds=?, ()) =>
    new({limit: limit, nextToken: nextToken, directoryIds: directoryIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
