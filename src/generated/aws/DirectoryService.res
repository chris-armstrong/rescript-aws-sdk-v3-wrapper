type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type vpcId = string
type userPassword = string
type userName = string
type useSameUsername = bool
type updateSecurityGroupForDirectoryControllers = bool
type trustType = [@as("External") #External | @as("Forest") #Forest]
type trustStateReason = string
type trustState = [@as("Failed") #Failed | @as("Deleted") #Deleted | @as("Deleting") #Deleting | @as("Updated") #Updated | @as("UpdateFailed") #UpdateFailed | @as("Updating") #Updating | @as("Verified") #Verified | @as("VerifyFailed") #VerifyFailed | @as("Verifying") #Verifying | @as("Created") #Created | @as("Creating") #Creating]
type trustPassword = string
type trustId = string
type trustDirection = [@as("Two-Way") #TwoWay | @as("One-Way: Incoming") #OneWayIncoming | @as("One-Way: Outgoing") #OneWayOutgoing]
type topicStatus = [@as("Deleted") #Deleted | @as("Failed") #Failed | @as("Topic not found") #TopicNotFound | @as("Registered") #Registered]
type topicName = string
type topicArn = string
type targetType = [@as("ACCOUNT") #ACCOUNT]
type targetId = string
type tagValue = string
type tagKey = string
type subscriptionCreatedDateTime = Js.Date.t;
type subnetId = string
type stateLastUpdatedDateTime = Js.Date.t;
type startTime = Js.Date.t;
type startDateTime = Js.Date.t;
type stageReason = string
type ssoEnabled = bool
type snapshotType = [@as("Manual") #Manual | @as("Auto") #Auto]
type snapshotStatus = [@as("Failed") #Failed | @as("Completed") #Completed | @as("Creating") #Creating]
type snapshotName = string
type snapshotId = string
type shareStatus = [@as("Deleting") #Deleting | @as("Deleted") #Deleted | @as("ShareFailed") #ShareFailed | @as("Sharing") #Sharing | @as("RejectFailed") #RejectFailed | @as("Rejecting") #Rejecting | @as("Rejected") #Rejected | @as("PendingAcceptance") #PendingAcceptance | @as("Shared") #Shared]
type shareMethod = [@as("HANDSHAKE") #HANDSHAKE | @as("ORGANIZATIONS") #ORGANIZATIONS]
type server = string
type selectiveAuth = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type securityGroupId = string
type schemaExtensionStatusReason = string
type schemaExtensionStatus = [@as("Completed") #Completed | @as("Failed") #Failed | @as("Cancelled") #Cancelled | @as("RollbackInProgress") #RollbackInProgress | @as("CancelInProgress") #CancelInProgress | @as("Replicating") #Replicating | @as("UpdatingSchema") #UpdatingSchema | @as("CreatingSnapshot") #CreatingSnapshot | @as("Initializing") #Initializing]
type schemaExtensionId = string
type sid = string
type resourceId = string
type requestId = string
type replicationScope = [@as("Domain") #Domain]
type remoteDomainName = string
type regionType = [@as("Additional") #Additional | @as("Primary") #Primary]
type regionName = string
type radiusTimeout = int
type radiusStatus = [@as("Failed") #Failed | @as("Completed") #Completed | @as("Creating") #Creating]
type radiusSharedSecret = string
type radiusRetries = int
type radiusDisplayLabel = string
type radiusAuthenticationProtocol = [@as("MS-CHAPv2") #MSCHAPv2 | @as("MS-CHAPv1") #MSCHAPv1 | @as("CHAP") #CHAP | @as("PAP") #PAP]
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
type launchTime = Js.Date.t;
type lastUpdatedDateTime = Js.Date.t;
type ldapstype = [@as("Client") #Client]
type ldapsstatusReason = string
type ldapsstatus = [@as("Disabled") #Disabled | @as("EnableFailed") #EnableFailed | @as("Enabled") #Enabled | @as("Enabling") #Enabling]
type ipRouteStatusReason = string
type ipRouteStatusMsg = [@as("RemoveFailed") #RemoveFailed | @as("AddFailed") #AddFailed | @as("Removed") #Removed | @as("Removing") #Removing | @as("Added") #Added | @as("Adding") #Adding]
type ipAddr = string
type exceptionMessage = string
type endDateTime = Js.Date.t;
type domainControllerStatusReason = string
type domainControllerStatus = [@as("Failed") #Failed | @as("Deleted") #Deleted | @as("Deleting") #Deleting | @as("Restoring") #Restoring | @as("Impaired") #Impaired | @as("Active") #Active | @as("Creating") #Creating]
type domainControllerId = string
type directoryType = [@as("SharedMicrosoftAD") #SharedMicrosoftAD | @as("MicrosoftAD") #MicrosoftAD | @as("ADConnector") #ADConnector | @as("SimpleAD") #SimpleAD]
type directoryStage = [@as("Failed") #Failed | @as("Deleted") #Deleted | @as("Deleting") #Deleting | @as("RestoreFailed") #RestoreFailed | @as("Restoring") #Restoring | @as("Impaired") #Impaired | @as("Inoperable") #Inoperable | @as("Active") #Active | @as("Created") #Created | @as("Creating") #Creating | @as("Requested") #Requested]
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
type createdDateTime = Js.Date.t;
type createSnapshotBeforeSchemaExtension = bool
type connectedDirectoriesLimitReached = bool
type connectPassword = string
type computerPassword = string
type computerName = string
type cloudOnlyDirectoriesLimitReached = bool
type clientAuthenticationType = [@as("SmartCard") #SmartCard]
type cidrIp = string
type certificateType = [@as("ClientLDAPS") #ClientLDAPS | @as("ClientCertAuth") #ClientCertAuth]
type certificateStateReason = string
type certificateState = [@as("DeregisterFailed") #DeregisterFailed | @as("Deregistered") #Deregistered | @as("Deregistering") #Deregistering | @as("RegisterFailed") #RegisterFailed | @as("Registered") #Registered | @as("Registering") #Registering]
type certificateRegisteredDateTime = Js.Date.t;
type certificateId = string
type certificateExpiryDateTime = Js.Date.t;
type certificateData = string
type certificateCN = string
type availabilityZone = string
type attributeValue = string
type attributeName = string
type aliasName = string
type addedDateTime = Js.Date.t;
type accessUrl = string
type unshareTarget = {
@as("Type") type_: targetType,
@as("Id") id: targetId
}
type trustIds = array<trustId>
type trust = {
@as("SelectiveAuth") selectiveAuth: option<selectiveAuth>,
@as("TrustStateReason") trustStateReason: option<trustStateReason>,
@as("StateLastUpdatedDateTime") stateLastUpdatedDateTime: option<stateLastUpdatedDateTime>,
@as("LastUpdatedDateTime") lastUpdatedDateTime: option<lastUpdatedDateTime>,
@as("CreatedDateTime") createdDateTime: option<createdDateTime>,
@as("TrustState") trustState: option<trustState>,
@as("TrustDirection") trustDirection: option<trustDirection>,
@as("TrustType") trustType: option<trustType>,
@as("RemoteDomainName") remoteDomainName: option<remoteDomainName>,
@as("TrustId") trustId: option<trustId>,
@as("DirectoryId") directoryId: option<directoryId>
}
type topicNames = array<topicName>
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type subnetIds = array<subnetId>
type snapshotLimits = {
@as("ManualSnapshotsLimitReached") manualSnapshotsLimitReached: option<manualSnapshotsLimitReached>,
@as("ManualSnapshotsCurrentCount") manualSnapshotsCurrentCount: option<limit>,
@as("ManualSnapshotsLimit") manualSnapshotsLimit: option<limit>
}
type snapshotIds = array<snapshotId>
type snapshot = {
@as("StartTime") startTime: option<startTime>,
@as("Status") status: option<snapshotStatus>,
@as("Name") name: option<snapshotName>,
@as("Type") type_: option<snapshotType>,
@as("SnapshotId") snapshotId: option<snapshotId>,
@as("DirectoryId") directoryId: option<directoryId>
}
type sharedDirectory = {
@as("LastUpdatedDateTime") lastUpdatedDateTime: option<lastUpdatedDateTime>,
@as("CreatedDateTime") createdDateTime: option<createdDateTime>,
@as("ShareNotes") shareNotes: option<notes>,
@as("ShareStatus") shareStatus: option<shareStatus>,
@as("SharedDirectoryId") sharedDirectoryId: option<directoryId>,
@as("SharedAccountId") sharedAccountId: option<customerId>,
@as("ShareMethod") shareMethod: option<shareMethod>,
@as("OwnerDirectoryId") ownerDirectoryId: option<directoryId>,
@as("OwnerAccountId") ownerAccountId: option<customerId>
}
type shareTarget = {
@as("Type") type_: targetType,
@as("Id") id: targetId
}
type servers = array<server>
type schemaExtensionInfo = {
@as("EndDateTime") endDateTime: option<endDateTime>,
@as("StartDateTime") startDateTime: option<startDateTime>,
@as("SchemaExtensionStatusReason") schemaExtensionStatusReason: option<schemaExtensionStatusReason>,
@as("SchemaExtensionStatus") schemaExtensionStatus: option<schemaExtensionStatus>,
@as("Description") description: option<description>,
@as("SchemaExtensionId") schemaExtensionId: option<schemaExtensionId>,
@as("DirectoryId") directoryId: option<directoryId>
}
type remoteDomainNames = array<remoteDomainName>
type logSubscription = {
@as("SubscriptionCreatedDateTime") subscriptionCreatedDateTime: option<subscriptionCreatedDateTime>,
@as("LogGroupName") logGroupName: option<logGroupName>,
@as("DirectoryId") directoryId: option<directoryId>
}
type ldapssettingInfo = {
@as("LastUpdatedDateTime") lastUpdatedDateTime: option<lastUpdatedDateTime>,
@as("LDAPSStatusReason") ldapsstatusReason: option<ldapsstatusReason>,
@as("LDAPSStatus") ldapsstatus: option<ldapsstatus>
}
type ipRouteInfo = {
@as("Description") description: option<description>,
@as("IpRouteStatusReason") ipRouteStatusReason: option<ipRouteStatusReason>,
@as("AddedDateTime") addedDateTime: option<addedDateTime>,
@as("IpRouteStatusMsg") ipRouteStatusMsg: option<ipRouteStatusMsg>,
@as("CidrIp") cidrIp: option<cidrIp>,
@as("DirectoryId") directoryId: option<directoryId>
}
type ipRoute = {
@as("Description") description: option<description>,
@as("CidrIp") cidrIp: option<cidrIp>
}
type ipAddrs = array<ipAddr>
type eventTopic = {
@as("Status") status: option<topicStatus>,
@as("CreatedDateTime") createdDateTime: option<createdDateTime>,
@as("TopicArn") topicArn: option<topicArn>,
@as("TopicName") topicName: option<topicName>,
@as("DirectoryId") directoryId: option<directoryId>
}
type domainControllerIds = array<domainControllerId>
type domainController = {
@as("StatusLastUpdatedDateTime") statusLastUpdatedDateTime: option<lastUpdatedDateTime>,
@as("LaunchTime") launchTime: option<launchTime>,
@as("StatusReason") statusReason: option<domainControllerStatusReason>,
@as("Status") status: option<domainControllerStatus>,
@as("AvailabilityZone") availabilityZone: option<availabilityZone>,
@as("SubnetId") subnetId: option<subnetId>,
@as("VpcId") vpcId: option<vpcId>,
@as("DnsIpAddr") dnsIpAddr: option<ipAddr>,
@as("DomainControllerId") domainControllerId: option<domainControllerId>,
@as("DirectoryId") directoryId: option<directoryId>
}
type dnsIpAddrs = array<ipAddr>
type directoryLimits = {
@as("ConnectedDirectoriesLimitReached") connectedDirectoriesLimitReached: option<connectedDirectoriesLimitReached>,
@as("ConnectedDirectoriesCurrentCount") connectedDirectoriesCurrentCount: option<limit>,
@as("ConnectedDirectoriesLimit") connectedDirectoriesLimit: option<limit>,
@as("CloudOnlyMicrosoftADLimitReached") cloudOnlyMicrosoftADLimitReached: option<cloudOnlyDirectoriesLimitReached>,
@as("CloudOnlyMicrosoftADCurrentCount") cloudOnlyMicrosoftADCurrentCount: option<limit>,
@as("CloudOnlyMicrosoftADLimit") cloudOnlyMicrosoftADLimit: option<limit>,
@as("CloudOnlyDirectoriesLimitReached") cloudOnlyDirectoriesLimitReached: option<cloudOnlyDirectoriesLimitReached>,
@as("CloudOnlyDirectoriesCurrentCount") cloudOnlyDirectoriesCurrentCount: option<limit>,
@as("CloudOnlyDirectoriesLimit") cloudOnlyDirectoriesLimit: option<limit>
}
type directoryIds = array<directoryId>
type clientCertAuthSettings = {
@as("OCSPUrl") ocspurl: option<ocspurl>
}
type cidrIps = array<cidrIp>
type certificateInfo = {
@as("Type") type_: option<certificateType>,
@as("ExpiryDateTime") expiryDateTime: option<certificateExpiryDateTime>,
@as("State") state: option<certificateState>,
@as("CommonName") commonName: option<certificateCN>,
@as("CertificateId") certificateId: option<certificateId>
}
type availabilityZones = array<availabilityZone>
type attribute = {
@as("Value") value: option<attributeValue>,
@as("Name") name: option<attributeName>
}
type additionalRegions = array<regionName>
type trusts = array<trust>
type tags = array<tag>
type snapshots = array<snapshot>
type sharedDirectories = array<sharedDirectory>
type schemaExtensionsInfo = array<schemaExtensionInfo>
type regionsInfo = {
@as("AdditionalRegions") additionalRegions: option<additionalRegions>,
@as("PrimaryRegion") primaryRegion: option<regionName>
}
type radiusSettings = {
@as("UseSameUsername") useSameUsername: option<useSameUsername>,
@as("DisplayLabel") displayLabel: option<radiusDisplayLabel>,
@as("AuthenticationProtocol") authenticationProtocol: option<radiusAuthenticationProtocol>,
@as("SharedSecret") sharedSecret: option<radiusSharedSecret>,
@as("RadiusRetries") radiusRetries: option<radiusRetries>,
@as("RadiusTimeout") radiusTimeout: option<radiusTimeout>,
@as("RadiusPort") radiusPort: option<portNumber>,
@as("RadiusServers") radiusServers: option<servers>
}
type logSubscriptions = array<logSubscription>
type ldapssettingsInfo = array<ldapssettingInfo>
type ipRoutesInfo = array<ipRouteInfo>
type ipRoutes = array<ipRoute>
type eventTopics = array<eventTopic>
type domainControllers = array<domainController>
type directoryVpcSettingsDescription = {
@as("AvailabilityZones") availabilityZones: option<availabilityZones>,
@as("SecurityGroupId") securityGroupId: option<securityGroupId>,
@as("SubnetIds") subnetIds: option<subnetIds>,
@as("VpcId") vpcId: option<vpcId>
}
type directoryVpcSettings = {
@as("SubnetIds") subnetIds: subnetIds,
@as("VpcId") vpcId: vpcId
}
type directoryConnectSettingsDescription = {
@as("ConnectIps") connectIps: option<ipAddrs>,
@as("AvailabilityZones") availabilityZones: option<availabilityZones>,
@as("SecurityGroupId") securityGroupId: option<securityGroupId>,
@as("CustomerUserName") customerUserName: option<userName>,
@as("SubnetIds") subnetIds: option<subnetIds>,
@as("VpcId") vpcId: option<vpcId>
}
type directoryConnectSettings = {
@as("CustomerUserName") customerUserName: userName,
@as("CustomerDnsIps") customerDnsIps: dnsIpAddrs,
@as("SubnetIds") subnetIds: subnetIds,
@as("VpcId") vpcId: vpcId
}
type conditionalForwarder = {
@as("ReplicationScope") replicationScope: option<replicationScope>,
@as("DnsIpAddrs") dnsIpAddrs: option<dnsIpAddrs>,
@as("RemoteDomainName") remoteDomainName: option<remoteDomainName>
}
type certificatesInfo = array<certificateInfo>
type certificate = {
@as("ClientCertAuthSettings") clientCertAuthSettings: option<clientCertAuthSettings>,
@as("Type") type_: option<certificateType>,
@as("ExpiryDateTime") expiryDateTime: option<certificateExpiryDateTime>,
@as("RegisteredDateTime") registeredDateTime: option<certificateRegisteredDateTime>,
@as("CommonName") commonName: option<certificateCN>,
@as("StateReason") stateReason: option<certificateStateReason>,
@as("State") state: option<certificateState>,
@as("CertificateId") certificateId: option<certificateId>
}
type attributes = array<attribute>
type regionDescription = {
@as("LastUpdatedDateTime") lastUpdatedDateTime: option<lastUpdatedDateTime>,
@as("StatusLastUpdatedDateTime") statusLastUpdatedDateTime: option<stateLastUpdatedDateTime>,
@as("LaunchTime") launchTime: option<launchTime>,
@as("DesiredNumberOfDomainControllers") desiredNumberOfDomainControllers: option<desiredNumberOfDomainControllers>,
@as("VpcSettings") vpcSettings: option<directoryVpcSettings>,
@as("Status") status: option<directoryStage>,
@as("RegionType") regionType: option<regionType>,
@as("RegionName") regionName: option<regionName>,
@as("DirectoryId") directoryId: option<directoryId>
}
type ownerDirectoryDescription = {
@as("RadiusStatus") radiusStatus: option<radiusStatus>,
@as("RadiusSettings") radiusSettings: option<radiusSettings>,
@as("VpcSettings") vpcSettings: option<directoryVpcSettingsDescription>,
@as("DnsIpAddrs") dnsIpAddrs: option<dnsIpAddrs>,
@as("AccountId") accountId: option<customerId>,
@as("DirectoryId") directoryId: option<directoryId>
}
type conditionalForwarders = array<conditionalForwarder>
type computer = {
@as("ComputerAttributes") computerAttributes: option<attributes>,
@as("ComputerName") computerName: option<computerName>,
@as("ComputerId") computerId: option<sid>
}
type regionsDescription = array<regionDescription>
type directoryDescription = {
@as("RegionsInfo") regionsInfo: option<regionsInfo>,
@as("OwnerDirectoryDescription") ownerDirectoryDescription: option<ownerDirectoryDescription>,
@as("DesiredNumberOfDomainControllers") desiredNumberOfDomainControllers: option<desiredNumberOfDomainControllers>,
@as("SsoEnabled") ssoEnabled: option<ssoEnabled>,
@as("StageReason") stageReason: option<stageReason>,
@as("RadiusStatus") radiusStatus: option<radiusStatus>,
@as("RadiusSettings") radiusSettings: option<radiusSettings>,
@as("ConnectSettings") connectSettings: option<directoryConnectSettingsDescription>,
@as("VpcSettings") vpcSettings: option<directoryVpcSettingsDescription>,
@as("Type") type_: option<directoryType>,
@as("StageLastUpdatedDateTime") stageLastUpdatedDateTime: option<lastUpdatedDateTime>,
@as("LaunchTime") launchTime: option<launchTime>,
@as("ShareNotes") shareNotes: option<notes>,
@as("ShareMethod") shareMethod: option<shareMethod>,
@as("ShareStatus") shareStatus: option<shareStatus>,
@as("Stage") stage: option<directoryStage>,
@as("DnsIpAddrs") dnsIpAddrs: option<dnsIpAddrs>,
@as("Description") description: option<description>,
@as("AccessUrl") accessUrl: option<accessUrl>,
@as("Alias") alias: option<aliasName>,
@as("Edition") edition: option<directoryEdition>,
@as("Size") size: option<directorySize>,
@as("ShortName") shortName: option<directoryShortName>,
@as("Name") name: option<directoryName>,
@as("DirectoryId") directoryId: option<directoryId>
}
type directoryDescriptions = array<directoryDescription>
type awsServiceClient;
@module("@aws-sdk/client-ds") @new external createClient: unit => awsServiceClient = "DirectoryServiceClient";
module VerifyTrust = {
  type t;
  type request = {
@as("TrustId") trustId: trustId
}
  type response = {
@as("TrustId") trustId: option<trustId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "VerifyTrustCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTrust = {
  type t;
  type request = {
@as("SelectiveAuth") selectiveAuth: option<selectiveAuth>,
@as("TrustId") trustId: trustId
}
  type response = {
@as("TrustId") trustId: option<trustId>,
@as("RequestId") requestId: option<requestId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "UpdateTrustCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateNumberOfDomainControllers = {
  type t;
  type request = {
@as("DesiredNumber") desiredNumber: desiredNumberOfDomainControllers,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "UpdateNumberOfDomainControllersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartSchemaExtension = {
  type t;
  type request = {
@as("Description") description: description,
@as("LdifContent") ldifContent: ldifContent,
@as("CreateSnapshotBeforeSchemaExtension") createSnapshotBeforeSchemaExtension: createSnapshotBeforeSchemaExtension,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("SchemaExtensionId") schemaExtensionId: option<schemaExtensionId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "StartSchemaExtensionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RestoreFromSnapshot = {
  type t;
  type request = {
@as("SnapshotId") snapshotId: snapshotId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "RestoreFromSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ResetUserPassword = {
  type t;
  type request = {
@as("NewPassword") newPassword: userPassword,
@as("UserName") userName: customerUserName,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "ResetUserPasswordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveRegion = {
  type t;
  type request = {
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "RemoveRegionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RejectSharedDirectory = {
  type t;
  type request = {
@as("SharedDirectoryId") sharedDirectoryId: directoryId
}
  type response = {
@as("SharedDirectoryId") sharedDirectoryId: option<directoryId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "RejectSharedDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterEventTopic = {
  type t;
  type request = {
@as("TopicName") topicName: topicName,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "RegisterEventTopicCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableSso = {
  type t;
  type request = {
@as("Password") password: option<connectPassword>,
@as("UserName") userName: option<userName>,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "EnableSsoCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableLDAPS = {
  type t;
  type request = {
@as("Type") type_: ldapstype,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "EnableLDAPSCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableClientAuthentication = {
  type t;
  type request = {
@as("Type") type_: clientAuthenticationType,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "EnableClientAuthenticationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableSso = {
  type t;
  type request = {
@as("Password") password: option<connectPassword>,
@as("UserName") userName: option<userName>,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DisableSsoCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableRadius = {
  type t;
  type request = {
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DisableRadiusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableLDAPS = {
  type t;
  type request = {
@as("Type") type_: ldapstype,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DisableLDAPSCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableClientAuthentication = {
  type t;
  type request = {
@as("Type") type_: clientAuthenticationType,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DisableClientAuthenticationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterEventTopic = {
  type t;
  type request = {
@as("TopicName") topicName: topicName,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DeregisterEventTopicCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterCertificate = {
  type t;
  type request = {
@as("CertificateId") certificateId: certificateId,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DeregisterCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTrust = {
  type t;
  type request = {
@as("DeleteAssociatedConditionalForwarder") deleteAssociatedConditionalForwarder: option<deleteAssociatedConditionalForwarder>,
@as("TrustId") trustId: trustId
}
  type response = {
@as("TrustId") trustId: option<trustId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DeleteTrustCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSnapshot = {
  type t;
  type request = {
@as("SnapshotId") snapshotId: snapshotId
}
  type response = {
@as("SnapshotId") snapshotId: option<snapshotId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DeleteSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLogSubscription = {
  type t;
  type request = {
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DeleteLogSubscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDirectory = {
  type t;
  type request = {
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("DirectoryId") directoryId: option<directoryId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DeleteDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConditionalForwarder = {
  type t;
  type request = {
@as("RemoteDomainName") remoteDomainName: remoteDomainName,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DeleteConditionalForwarderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSnapshot = {
  type t;
  type request = {
@as("Name") name: option<snapshotName>,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("SnapshotId") snapshotId: option<snapshotId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "CreateSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLogSubscription = {
  type t;
  type request = {
@as("LogGroupName") logGroupName: logGroupName,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "CreateLogSubscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAlias = {
  type t;
  type request = {
@as("Alias") alias: aliasName,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("Alias") alias: option<aliasName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "CreateAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelSchemaExtension = {
  type t;
  type request = {
@as("SchemaExtensionId") schemaExtensionId: schemaExtensionId,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "CancelSchemaExtensionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConditionalForwarder = {
  type t;
  type request = {
@as("DnsIpAddrs") dnsIpAddrs: dnsIpAddrs,
@as("RemoteDomainName") remoteDomainName: remoteDomainName,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "UpdateConditionalForwarderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UnshareDirectory = {
  type t;
  type request = {
@as("UnshareTarget") unshareTarget: unshareTarget,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("SharedDirectoryId") sharedDirectoryId: option<directoryId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "UnshareDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ShareDirectory = {
  type t;
  type request = {
@as("ShareMethod") shareMethod: shareMethod,
@as("ShareTarget") shareTarget: shareTarget,
@as("ShareNotes") shareNotes: option<notes>,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("SharedDirectoryId") sharedDirectoryId: option<directoryId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "ShareDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeys,
@as("ResourceId") resourceId: resourceId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "RemoveTagsFromResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveIpRoutes = {
  type t;
  type request = {
@as("CidrIps") cidrIps: cidrIps,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "RemoveIpRoutesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterCertificate = {
  type t;
  type request = {
@as("ClientCertAuthSettings") clientCertAuthSettings: option<clientCertAuthSettings>,
@as("Type") type_: option<certificateType>,
@as("CertificateData") certificateData: certificateData,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("CertificateId") certificateId: option<certificateId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "RegisterCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSnapshotLimits = {
  type t;
  type request = {
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("SnapshotLimits") snapshotLimits: option<snapshotLimits>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "GetSnapshotLimitsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDirectoryLimits = {
  type t;
  type request = unit
  type response = {
@as("DirectoryLimits") directoryLimits: option<directoryLimits>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "GetDirectoryLimitsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTrust = {
  type t;
  type request = {
@as("SelectiveAuth") selectiveAuth: option<selectiveAuth>,
@as("ConditionalForwarderIpAddrs") conditionalForwarderIpAddrs: option<dnsIpAddrs>,
@as("TrustType") trustType: option<trustType>,
@as("TrustDirection") trustDirection: trustDirection,
@as("TrustPassword") trustPassword: trustPassword,
@as("RemoteDomainName") remoteDomainName: remoteDomainName,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("TrustId") trustId: option<trustId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "CreateTrustCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConditionalForwarder = {
  type t;
  type request = {
@as("DnsIpAddrs") dnsIpAddrs: dnsIpAddrs,
@as("RemoteDomainName") remoteDomainName: remoteDomainName,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "CreateConditionalForwarderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AcceptSharedDirectory = {
  type t;
  type request = {
@as("SharedDirectoryId") sharedDirectoryId: directoryId
}
  type response = {
@as("SharedDirectory") sharedDirectory: option<sharedDirectory>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "AcceptSharedDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRadius = {
  type t;
  type request = {
@as("RadiusSettings") radiusSettings: radiusSettings,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "UpdateRadiusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("Limit") limit: option<limit>,
@as("NextToken") nextToken: option<nextToken>,
@as("ResourceId") resourceId: resourceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Tags") tags: option<tags>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSchemaExtensions = {
  type t;
  type request = {
@as("Limit") limit: option<limit>,
@as("NextToken") nextToken: option<nextToken>,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("SchemaExtensionsInfo") schemaExtensionsInfo: option<schemaExtensionsInfo>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "ListSchemaExtensionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLogSubscriptions = {
  type t;
  type request = {
@as("Limit") limit: option<limit>,
@as("NextToken") nextToken: option<nextToken>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("LogSubscriptions") logSubscriptions: option<logSubscriptions>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "ListLogSubscriptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIpRoutes = {
  type t;
  type request = {
@as("Limit") limit: option<limit>,
@as("NextToken") nextToken: option<nextToken>,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("IpRoutesInfo") ipRoutesInfo: option<ipRoutesInfo>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "ListIpRoutesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCertificates = {
  type t;
  type request = {
@as("Limit") limit: option<pageLimit>,
@as("NextToken") nextToken: option<nextToken>,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("CertificatesInfo") certificatesInfo: option<certificatesInfo>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "ListCertificatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableRadius = {
  type t;
  type request = {
@as("RadiusSettings") radiusSettings: radiusSettings,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "EnableRadiusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTrusts = {
  type t;
  type request = {
@as("Limit") limit: option<limit>,
@as("NextToken") nextToken: option<nextToken>,
@as("TrustIds") trustIds: option<trustIds>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Trusts") trusts: option<trusts>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DescribeTrustsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSnapshots = {
  type t;
  type request = {
@as("Limit") limit: option<limit>,
@as("NextToken") nextToken: option<nextToken>,
@as("SnapshotIds") snapshotIds: option<snapshotIds>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Snapshots") snapshots: option<snapshots>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DescribeSnapshotsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSharedDirectories = {
  type t;
  type request = {
@as("Limit") limit: option<limit>,
@as("NextToken") nextToken: option<nextToken>,
@as("SharedDirectoryIds") sharedDirectoryIds: option<directoryIds>,
@as("OwnerDirectoryId") ownerDirectoryId: directoryId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("SharedDirectories") sharedDirectories: option<sharedDirectories>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DescribeSharedDirectoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLDAPSSettings = {
  type t;
  type request = {
@as("Limit") limit: option<pageLimit>,
@as("NextToken") nextToken: option<nextToken>,
@as("Type") type_: option<ldapstype>,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("LDAPSSettingsInfo") ldapssettingsInfo: option<ldapssettingsInfo>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DescribeLDAPSSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEventTopics = {
  type t;
  type request = {
@as("TopicNames") topicNames: option<topicNames>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("EventTopics") eventTopics: option<eventTopics>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DescribeEventTopicsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDomainControllers = {
  type t;
  type request = {
@as("Limit") limit: option<limit>,
@as("NextToken") nextToken: option<nextToken>,
@as("DomainControllerIds") domainControllerIds: option<domainControllerIds>,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("DomainControllers") domainControllers: option<domainControllers>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DescribeDomainControllersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCertificate = {
  type t;
  type request = {
@as("CertificateId") certificateId: certificateId,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("Certificate") certificate: option<certificate>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DescribeCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateMicrosoftAD = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("Edition") edition: option<directoryEdition>,
@as("VpcSettings") vpcSettings: directoryVpcSettings,
@as("Description") description: option<description>,
@as("Password") password: password,
@as("ShortName") shortName: option<directoryShortName>,
@as("Name") name: directoryName
}
  type response = {
@as("DirectoryId") directoryId: option<directoryId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "CreateMicrosoftADCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDirectory = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("VpcSettings") vpcSettings: option<directoryVpcSettings>,
@as("Size") size: directorySize,
@as("Description") description: option<description>,
@as("Password") password: password,
@as("ShortName") shortName: option<directoryShortName>,
@as("Name") name: directoryName
}
  type response = {
@as("DirectoryId") directoryId: option<directoryId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "CreateDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ConnectDirectory = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ConnectSettings") connectSettings: directoryConnectSettings,
@as("Size") size: directorySize,
@as("Description") description: option<description>,
@as("Password") password: connectPassword,
@as("ShortName") shortName: option<directoryShortName>,
@as("Name") name: directoryName
}
  type response = {
@as("DirectoryId") directoryId: option<directoryId>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "ConnectDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddTagsToResource = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("ResourceId") resourceId: resourceId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "AddTagsToResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddRegion = {
  type t;
  type request = {
@as("VPCSettings") vpcsettings: directoryVpcSettings,
@as("RegionName") regionName: regionName,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "AddRegionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddIpRoutes = {
  type t;
  type request = {
@as("UpdateSecurityGroupForDirectoryControllers") updateSecurityGroupForDirectoryControllers: option<updateSecurityGroupForDirectoryControllers>,
@as("IpRoutes") ipRoutes: ipRoutes,
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "AddIpRoutesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConditionalForwarders = {
  type t;
  type request = {
@as("RemoteDomainNames") remoteDomainNames: option<remoteDomainNames>,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("ConditionalForwarders") conditionalForwarders: option<conditionalForwarders>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DescribeConditionalForwardersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateComputer = {
  type t;
  type request = {
@as("ComputerAttributes") computerAttributes: option<attributes>,
@as("OrganizationalUnitDistinguishedName") organizationalUnitDistinguishedName: option<organizationalUnitDN>,
@as("Password") password: computerPassword,
@as("ComputerName") computerName: computerName,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("Computer") computer: option<computer>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "CreateComputerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRegions = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("RegionName") regionName: option<regionName>,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("RegionsDescription") regionsDescription: option<regionsDescription>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DescribeRegionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDirectories = {
  type t;
  type request = {
@as("Limit") limit: option<limit>,
@as("NextToken") nextToken: option<nextToken>,
@as("DirectoryIds") directoryIds: option<directoryIds>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("DirectoryDescriptions") directoryDescriptions: option<directoryDescriptions>
}
  @module("@aws-sdk/client-ds") @new external new_: (request) => t = "DescribeDirectoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
