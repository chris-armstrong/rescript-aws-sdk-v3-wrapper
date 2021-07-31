type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vpcId = string
type userPassword = string
type userName = string
type useSameUsername = bool;
type updateSecurityGroupForDirectoryControllers = bool;
type trustType = [@as("External") #External | @as("Forest") #Forest]
type trustStateReason = string
type trustState = [@as("Failed") #Failed | @as("Deleted") #Deleted | @as("Deleting") #Deleting | @as("Updated") #Updated | @as("UpdateFailed") #UpdateFailed | @as("Updating") #Updating | @as("Verified") #Verified | @as("VerifyFailed") #VerifyFailed | @as("Verifying") #Verifying | @as("Created") #Created | @as("Creating") #Creating]
type trustPassword = string
type trustId = string
type trustDirection = [@as("Two-Way") #Two_Way | @as("One-Way: Incoming") #One_Way_ Incoming | @as("One-Way: Outgoing") #One_Way_ Outgoing]
type topicStatus = [@as("Deleted") #Deleted | @as("Failed") #Failed | @as("Topic not found") #Topic not found | @as("Registered") #Registered]
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
type ssoEnabled = bool;
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
type sID = string
type resourceId = string
type requestId = string
type replicationScope = [@as("Domain") #Domain]
type remoteDomainName = string
type regionType = [@as("Additional") #Additional | @as("Primary") #Primary]
type regionName = string
type radiusTimeout = int;
type radiusStatus = [@as("Failed") #Failed | @as("Completed") #Completed | @as("Creating") #Creating]
type radiusSharedSecret = string
type radiusRetries = int;
type radiusDisplayLabel = string
type radiusAuthenticationProtocol = [@as("MS-CHAPv2") #MS_CHAPv2 | @as("MS-CHAPv1") #MS_CHAPv1 | @as("CHAP") #CHAP | @as("PAP") #PAP]
type portNumber = int;
type password = string
type pageLimit = int;
type organizationalUnitDN = string
type oCSPUrl = string
type notes = string
type nextToken = string
type manualSnapshotsLimitReached = bool;
type logGroupName = string
type limit = int;
type ldifContent = string
type launchTime = Js.Date.t;
type lastUpdatedDateTime = Js.Date.t;
type lDAPSType = [@as("Client") #Client]
type lDAPSStatusReason = string
type lDAPSStatus = [@as("Disabled") #Disabled | @as("EnableFailed") #EnableFailed | @as("Enabled") #Enabled | @as("Enabling") #Enabling]
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
type desiredNumberOfDomainControllers = int;
type description = string
type deleteAssociatedConditionalForwarder = bool;
type customerUserName = string
type customerId = string
type createdDateTime = Js.Date.t;
type createSnapshotBeforeSchemaExtension = bool;
type connectedDirectoriesLimitReached = bool;
type connectPassword = string
type computerPassword = string
type computerName = string
type cloudOnlyDirectoriesLimitReached = bool;
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
@as("Type") type_: option<targetType>,
@as("Id") id: option<targetId>
}
type trustIds = array<trustId>
type trust = {
@as("SelectiveAuth") selectiveAuth: selectiveAuth,
@as("TrustStateReason") trustStateReason: trustStateReason,
@as("StateLastUpdatedDateTime") stateLastUpdatedDateTime: stateLastUpdatedDateTime,
@as("LastUpdatedDateTime") lastUpdatedDateTime: lastUpdatedDateTime,
@as("CreatedDateTime") createdDateTime: createdDateTime,
@as("TrustState") trustState: trustState,
@as("TrustDirection") trustDirection: trustDirection,
@as("TrustType") trustType: trustType,
@as("RemoteDomainName") remoteDomainName: remoteDomainName,
@as("TrustId") trustId: trustId,
@as("DirectoryId") directoryId: directoryId
}
type topicNames = array<topicName>
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type subnetIds = array<subnetId>
type snapshotLimits = {
@as("ManualSnapshotsLimitReached") manualSnapshotsLimitReached: manualSnapshotsLimitReached,
@as("ManualSnapshotsCurrentCount") manualSnapshotsCurrentCount: limit,
@as("ManualSnapshotsLimit") manualSnapshotsLimit: limit
}
type snapshotIds = array<snapshotId>
type snapshot = {
@as("StartTime") startTime: startTime,
@as("Status") status: snapshotStatus,
@as("Name") name: snapshotName,
@as("Type") type_: snapshotType,
@as("SnapshotId") snapshotId: snapshotId,
@as("DirectoryId") directoryId: directoryId
}
type sharedDirectory = {
@as("LastUpdatedDateTime") lastUpdatedDateTime: lastUpdatedDateTime,
@as("CreatedDateTime") createdDateTime: createdDateTime,
@as("ShareNotes") shareNotes: notes,
@as("ShareStatus") shareStatus: shareStatus,
@as("SharedDirectoryId") sharedDirectoryId: directoryId,
@as("SharedAccountId") sharedAccountId: customerId,
@as("ShareMethod") shareMethod: shareMethod,
@as("OwnerDirectoryId") ownerDirectoryId: directoryId,
@as("OwnerAccountId") ownerAccountId: customerId
}
type shareTarget = {
@as("Type") type_: option<targetType>,
@as("Id") id: option<targetId>
}
type servers = array<server>
type schemaExtensionInfo = {
@as("EndDateTime") endDateTime: endDateTime,
@as("StartDateTime") startDateTime: startDateTime,
@as("SchemaExtensionStatusReason") schemaExtensionStatusReason: schemaExtensionStatusReason,
@as("SchemaExtensionStatus") schemaExtensionStatus: schemaExtensionStatus,
@as("Description") description: description,
@as("SchemaExtensionId") schemaExtensionId: schemaExtensionId,
@as("DirectoryId") directoryId: directoryId
}
type remoteDomainNames = array<remoteDomainName>
type logSubscription = {
@as("SubscriptionCreatedDateTime") subscriptionCreatedDateTime: subscriptionCreatedDateTime,
@as("LogGroupName") logGroupName: logGroupName,
@as("DirectoryId") directoryId: directoryId
}
type lDAPSSettingInfo = {
@as("LastUpdatedDateTime") lastUpdatedDateTime: lastUpdatedDateTime,
@as("LDAPSStatusReason") lDAPSStatusReason: lDAPSStatusReason,
@as("LDAPSStatus") lDAPSStatus: lDAPSStatus
}
type ipRouteInfo = {
@as("Description") description: description,
@as("IpRouteStatusReason") ipRouteStatusReason: ipRouteStatusReason,
@as("AddedDateTime") addedDateTime: addedDateTime,
@as("IpRouteStatusMsg") ipRouteStatusMsg: ipRouteStatusMsg,
@as("CidrIp") cidrIp: cidrIp,
@as("DirectoryId") directoryId: directoryId
}
type ipRoute = {
@as("Description") description: description,
@as("CidrIp") cidrIp: cidrIp
}
type ipAddrs = array<ipAddr>
type eventTopic = {
@as("Status") status: topicStatus,
@as("CreatedDateTime") createdDateTime: createdDateTime,
@as("TopicArn") topicArn: topicArn,
@as("TopicName") topicName: topicName,
@as("DirectoryId") directoryId: directoryId
}
type domainControllerIds = array<domainControllerId>
type domainController = {
@as("StatusLastUpdatedDateTime") statusLastUpdatedDateTime: lastUpdatedDateTime,
@as("LaunchTime") launchTime: launchTime,
@as("StatusReason") statusReason: domainControllerStatusReason,
@as("Status") status: domainControllerStatus,
@as("AvailabilityZone") availabilityZone: availabilityZone,
@as("SubnetId") subnetId: subnetId,
@as("VpcId") vpcId: vpcId,
@as("DnsIpAddr") dnsIpAddr: ipAddr,
@as("DomainControllerId") domainControllerId: domainControllerId,
@as("DirectoryId") directoryId: directoryId
}
type dnsIpAddrs = array<ipAddr>
type directoryLimits = {
@as("ConnectedDirectoriesLimitReached") connectedDirectoriesLimitReached: connectedDirectoriesLimitReached,
@as("ConnectedDirectoriesCurrentCount") connectedDirectoriesCurrentCount: limit,
@as("ConnectedDirectoriesLimit") connectedDirectoriesLimit: limit,
@as("CloudOnlyMicrosoftADLimitReached") cloudOnlyMicrosoftADLimitReached: cloudOnlyDirectoriesLimitReached,
@as("CloudOnlyMicrosoftADCurrentCount") cloudOnlyMicrosoftADCurrentCount: limit,
@as("CloudOnlyMicrosoftADLimit") cloudOnlyMicrosoftADLimit: limit,
@as("CloudOnlyDirectoriesLimitReached") cloudOnlyDirectoriesLimitReached: cloudOnlyDirectoriesLimitReached,
@as("CloudOnlyDirectoriesCurrentCount") cloudOnlyDirectoriesCurrentCount: limit,
@as("CloudOnlyDirectoriesLimit") cloudOnlyDirectoriesLimit: limit
}
type directoryIds = array<directoryId>
type clientCertAuthSettings = {
@as("OCSPUrl") oCSPUrl: oCSPUrl
}
type cidrIps = array<cidrIp>
type certificateInfo = {
@as("Type") type_: certificateType,
@as("ExpiryDateTime") expiryDateTime: certificateExpiryDateTime,
@as("State") state: certificateState,
@as("CommonName") commonName: certificateCN,
@as("CertificateId") certificateId: certificateId
}
type availabilityZones = array<availabilityZone>
type attribute = {
@as("Value") value: attributeValue,
@as("Name") name: attributeName
}
type additionalRegions = array<regionName>
type trusts = array<trust>
type tags = array<tag>
type snapshots = array<snapshot>
type sharedDirectories = array<sharedDirectory>
type schemaExtensionsInfo = array<schemaExtensionInfo>
type regionsInfo = {
@as("AdditionalRegions") additionalRegions: additionalRegions,
@as("PrimaryRegion") primaryRegion: regionName
}
type radiusSettings = {
@as("UseSameUsername") useSameUsername: useSameUsername,
@as("DisplayLabel") displayLabel: radiusDisplayLabel,
@as("AuthenticationProtocol") authenticationProtocol: radiusAuthenticationProtocol,
@as("SharedSecret") sharedSecret: radiusSharedSecret,
@as("RadiusRetries") radiusRetries: radiusRetries,
@as("RadiusTimeout") radiusTimeout: radiusTimeout,
@as("RadiusPort") radiusPort: portNumber,
@as("RadiusServers") radiusServers: servers
}
type logSubscriptions = array<logSubscription>
type lDAPSSettingsInfo = array<lDAPSSettingInfo>
type ipRoutesInfo = array<ipRouteInfo>
type ipRoutes = array<ipRoute>
type eventTopics = array<eventTopic>
type domainControllers = array<domainController>
type directoryVpcSettingsDescription = {
@as("AvailabilityZones") availabilityZones: availabilityZones,
@as("SecurityGroupId") securityGroupId: securityGroupId,
@as("SubnetIds") subnetIds: subnetIds,
@as("VpcId") vpcId: vpcId
}
type directoryVpcSettings = {
@as("SubnetIds") subnetIds: option<subnetIds>,
@as("VpcId") vpcId: option<vpcId>
}
type directoryConnectSettingsDescription = {
@as("ConnectIps") connectIps: ipAddrs,
@as("AvailabilityZones") availabilityZones: availabilityZones,
@as("SecurityGroupId") securityGroupId: securityGroupId,
@as("CustomerUserName") customerUserName: userName,
@as("SubnetIds") subnetIds: subnetIds,
@as("VpcId") vpcId: vpcId
}
type directoryConnectSettings = {
@as("CustomerUserName") customerUserName: option<userName>,
@as("CustomerDnsIps") customerDnsIps: option<dnsIpAddrs>,
@as("SubnetIds") subnetIds: option<subnetIds>,
@as("VpcId") vpcId: option<vpcId>
}
type conditionalForwarder = {
@as("ReplicationScope") replicationScope: replicationScope,
@as("DnsIpAddrs") dnsIpAddrs: dnsIpAddrs,
@as("RemoteDomainName") remoteDomainName: remoteDomainName
}
type certificatesInfo = array<certificateInfo>
type certificate = {
@as("ClientCertAuthSettings") clientCertAuthSettings: clientCertAuthSettings,
@as("Type") type_: certificateType,
@as("ExpiryDateTime") expiryDateTime: certificateExpiryDateTime,
@as("RegisteredDateTime") registeredDateTime: certificateRegisteredDateTime,
@as("CommonName") commonName: certificateCN,
@as("StateReason") stateReason: certificateStateReason,
@as("State") state: certificateState,
@as("CertificateId") certificateId: certificateId
}
type attributes = array<attribute>
type regionDescription = {
@as("LastUpdatedDateTime") lastUpdatedDateTime: lastUpdatedDateTime,
@as("StatusLastUpdatedDateTime") statusLastUpdatedDateTime: stateLastUpdatedDateTime,
@as("LaunchTime") launchTime: launchTime,
@as("DesiredNumberOfDomainControllers") desiredNumberOfDomainControllers: desiredNumberOfDomainControllers,
@as("VpcSettings") vpcSettings: directoryVpcSettings,
@as("Status") status: directoryStage,
@as("RegionType") regionType: regionType,
@as("RegionName") regionName: regionName,
@as("DirectoryId") directoryId: directoryId
}
type ownerDirectoryDescription = {
@as("RadiusStatus") radiusStatus: radiusStatus,
@as("RadiusSettings") radiusSettings: radiusSettings,
@as("VpcSettings") vpcSettings: directoryVpcSettingsDescription,
@as("DnsIpAddrs") dnsIpAddrs: dnsIpAddrs,
@as("AccountId") accountId: customerId,
@as("DirectoryId") directoryId: directoryId
}
type conditionalForwarders = array<conditionalForwarder>
type computer = {
@as("ComputerAttributes") computerAttributes: attributes,
@as("ComputerName") computerName: computerName,
@as("ComputerId") computerId: sID
}
type regionsDescription = array<regionDescription>
type directoryDescription = {
@as("RegionsInfo") regionsInfo: regionsInfo,
@as("OwnerDirectoryDescription") ownerDirectoryDescription: ownerDirectoryDescription,
@as("DesiredNumberOfDomainControllers") desiredNumberOfDomainControllers: desiredNumberOfDomainControllers,
@as("SsoEnabled") ssoEnabled: ssoEnabled,
@as("StageReason") stageReason: stageReason,
@as("RadiusStatus") radiusStatus: radiusStatus,
@as("RadiusSettings") radiusSettings: radiusSettings,
@as("ConnectSettings") connectSettings: directoryConnectSettingsDescription,
@as("VpcSettings") vpcSettings: directoryVpcSettingsDescription,
@as("Type") type_: directoryType,
@as("StageLastUpdatedDateTime") stageLastUpdatedDateTime: lastUpdatedDateTime,
@as("LaunchTime") launchTime: launchTime,
@as("ShareNotes") shareNotes: notes,
@as("ShareMethod") shareMethod: shareMethod,
@as("ShareStatus") shareStatus: shareStatus,
@as("Stage") stage: directoryStage,
@as("DnsIpAddrs") dnsIpAddrs: dnsIpAddrs,
@as("Description") description: description,
@as("AccessUrl") accessUrl: accessUrl,
@as("Alias") alias: aliasName,
@as("Edition") edition: directoryEdition,
@as("Size") size: directorySize,
@as("ShortName") shortName: directoryShortName,
@as("Name") name: directoryName,
@as("DirectoryId") directoryId: directoryId
}
type directoryDescriptions = array<directoryDescription>
type clientType;
@module("@aws-sdk/client-ds") @new external createClient: unit => clientType = "DirectoryServiceClient";
module VerifyTrust = {
  type t;
  type request = {
@as("TrustId") trustId: option<trustId>
}
  type response = {
@as("TrustId") trustId: trustId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "VerifyTrustCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTrust = {
  type t;
  type request = {
@as("SelectiveAuth") selectiveAuth: selectiveAuth,
@as("TrustId") trustId: option<trustId>
}
  type response = {
@as("TrustId") trustId: trustId,
@as("RequestId") requestId: requestId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "UpdateTrustCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateNumberOfDomainControllers = {
  type t;
  type request = {
@as("DesiredNumber") desiredNumber: option<desiredNumberOfDomainControllers>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "UpdateNumberOfDomainControllersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartSchemaExtension = {
  type t;
  type request = {
@as("Description") description: option<description>,
@as("LdifContent") ldifContent: option<ldifContent>,
@as("CreateSnapshotBeforeSchemaExtension") createSnapshotBeforeSchemaExtension: option<createSnapshotBeforeSchemaExtension>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("SchemaExtensionId") schemaExtensionId: schemaExtensionId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "StartSchemaExtensionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreFromSnapshot = {
  type t;
  type request = {
@as("SnapshotId") snapshotId: option<snapshotId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "RestoreFromSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetUserPassword = {
  type t;
  type request = {
@as("NewPassword") newPassword: option<userPassword>,
@as("UserName") userName: option<customerUserName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "ResetUserPasswordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveRegion = {
  type t;
  type request = {
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "RemoveRegionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectSharedDirectory = {
  type t;
  type request = {
@as("SharedDirectoryId") sharedDirectoryId: option<directoryId>
}
  type response = {
@as("SharedDirectoryId") sharedDirectoryId: directoryId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "RejectSharedDirectoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterEventTopic = {
  type t;
  type request = {
@as("TopicName") topicName: option<topicName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "RegisterEventTopicCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableSso = {
  type t;
  type request = {
@as("Password") password: connectPassword,
@as("UserName") userName: userName,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "EnableSsoCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableLDAPS = {
  type t;
  type request = {
@as("Type") type_: option<lDAPSType>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "EnableLDAPSCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableClientAuthentication = {
  type t;
  type request = {
@as("Type") type_: option<clientAuthenticationType>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "EnableClientAuthenticationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableSso = {
  type t;
  type request = {
@as("Password") password: connectPassword,
@as("UserName") userName: userName,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DisableSsoCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableRadius = {
  type t;
  type request = {
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DisableRadiusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableLDAPS = {
  type t;
  type request = {
@as("Type") type_: option<lDAPSType>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DisableLDAPSCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableClientAuthentication = {
  type t;
  type request = {
@as("Type") type_: option<clientAuthenticationType>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DisableClientAuthenticationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterEventTopic = {
  type t;
  type request = {
@as("TopicName") topicName: option<topicName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DeregisterEventTopicCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterCertificate = {
  type t;
  type request = {
@as("CertificateId") certificateId: option<certificateId>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DeregisterCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTrust = {
  type t;
  type request = {
@as("DeleteAssociatedConditionalForwarder") deleteAssociatedConditionalForwarder: deleteAssociatedConditionalForwarder,
@as("TrustId") trustId: option<trustId>
}
  type response = {
@as("TrustId") trustId: trustId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DeleteTrustCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSnapshot = {
  type t;
  type request = {
@as("SnapshotId") snapshotId: option<snapshotId>
}
  type response = {
@as("SnapshotId") snapshotId: snapshotId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DeleteSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLogSubscription = {
  type t;
  type request = {
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DeleteLogSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDirectory = {
  type t;
  type request = {
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("DirectoryId") directoryId: directoryId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDirectoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConditionalForwarder = {
  type t;
  type request = {
@as("RemoteDomainName") remoteDomainName: option<remoteDomainName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DeleteConditionalForwarderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSnapshot = {
  type t;
  type request = {
@as("Name") name: snapshotName,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("SnapshotId") snapshotId: snapshotId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "CreateSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLogSubscription = {
  type t;
  type request = {
@as("LogGroupName") logGroupName: option<logGroupName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "CreateLogSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAlias = {
  type t;
  type request = {
@as("Alias") alias: option<aliasName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("Alias") alias: aliasName,
@as("DirectoryId") directoryId: directoryId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "CreateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelSchemaExtension = {
  type t;
  type request = {
@as("SchemaExtensionId") schemaExtensionId: option<schemaExtensionId>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "CancelSchemaExtensionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConditionalForwarder = {
  type t;
  type request = {
@as("DnsIpAddrs") dnsIpAddrs: option<dnsIpAddrs>,
@as("RemoteDomainName") remoteDomainName: option<remoteDomainName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "UpdateConditionalForwarderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UnshareDirectory = {
  type t;
  type request = {
@as("UnshareTarget") unshareTarget: option<unshareTarget>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("SharedDirectoryId") sharedDirectoryId: directoryId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "UnshareDirectoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ShareDirectory = {
  type t;
  type request = {
@as("ShareMethod") shareMethod: option<shareMethod>,
@as("ShareTarget") shareTarget: option<shareTarget>,
@as("ShareNotes") shareNotes: notes,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("SharedDirectoryId") sharedDirectoryId: directoryId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "ShareDirectoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("ResourceId") resourceId: option<resourceId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "RemoveTagsFromResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveIpRoutes = {
  type t;
  type request = {
@as("CidrIps") cidrIps: option<cidrIps>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "RemoveIpRoutesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterCertificate = {
  type t;
  type request = {
@as("ClientCertAuthSettings") clientCertAuthSettings: clientCertAuthSettings,
@as("Type") type_: certificateType,
@as("CertificateData") certificateData: option<certificateData>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("CertificateId") certificateId: certificateId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "RegisterCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSnapshotLimits = {
  type t;
  type request = {
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("SnapshotLimits") snapshotLimits: snapshotLimits
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "GetSnapshotLimitsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDirectoryLimits = {
  type t;
  type request = unit
  type response = {
@as("DirectoryLimits") directoryLimits: directoryLimits
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "GetDirectoryLimitsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTrust = {
  type t;
  type request = {
@as("SelectiveAuth") selectiveAuth: selectiveAuth,
@as("ConditionalForwarderIpAddrs") conditionalForwarderIpAddrs: dnsIpAddrs,
@as("TrustType") trustType: trustType,
@as("TrustDirection") trustDirection: option<trustDirection>,
@as("TrustPassword") trustPassword: option<trustPassword>,
@as("RemoteDomainName") remoteDomainName: option<remoteDomainName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("TrustId") trustId: trustId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "CreateTrustCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConditionalForwarder = {
  type t;
  type request = {
@as("DnsIpAddrs") dnsIpAddrs: option<dnsIpAddrs>,
@as("RemoteDomainName") remoteDomainName: option<remoteDomainName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "CreateConditionalForwarderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptSharedDirectory = {
  type t;
  type request = {
@as("SharedDirectoryId") sharedDirectoryId: option<directoryId>
}
  type response = {
@as("SharedDirectory") sharedDirectory: sharedDirectory
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "AcceptSharedDirectoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRadius = {
  type t;
  type request = {
@as("RadiusSettings") radiusSettings: option<radiusSettings>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "UpdateRadiusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("Limit") limit: limit,
@as("NextToken") nextToken: nextToken,
@as("ResourceId") resourceId: option<resourceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSchemaExtensions = {
  type t;
  type request = {
@as("Limit") limit: limit,
@as("NextToken") nextToken: nextToken,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("SchemaExtensionsInfo") schemaExtensionsInfo: schemaExtensionsInfo
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "ListSchemaExtensionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLogSubscriptions = {
  type t;
  type request = {
@as("Limit") limit: limit,
@as("NextToken") nextToken: nextToken,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("LogSubscriptions") logSubscriptions: logSubscriptions
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "ListLogSubscriptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIpRoutes = {
  type t;
  type request = {
@as("Limit") limit: limit,
@as("NextToken") nextToken: nextToken,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("IpRoutesInfo") ipRoutesInfo: ipRoutesInfo
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "ListIpRoutesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCertificates = {
  type t;
  type request = {
@as("Limit") limit: pageLimit,
@as("NextToken") nextToken: nextToken,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("CertificatesInfo") certificatesInfo: certificatesInfo,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "ListCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableRadius = {
  type t;
  type request = {
@as("RadiusSettings") radiusSettings: option<radiusSettings>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "EnableRadiusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTrusts = {
  type t;
  type request = {
@as("Limit") limit: limit,
@as("NextToken") nextToken: nextToken,
@as("TrustIds") trustIds: trustIds,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Trusts") trusts: trusts
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DescribeTrustsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSnapshots = {
  type t;
  type request = {
@as("Limit") limit: limit,
@as("NextToken") nextToken: nextToken,
@as("SnapshotIds") snapshotIds: snapshotIds,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Snapshots") snapshots: snapshots
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DescribeSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSharedDirectories = {
  type t;
  type request = {
@as("Limit") limit: limit,
@as("NextToken") nextToken: nextToken,
@as("SharedDirectoryIds") sharedDirectoryIds: directoryIds,
@as("OwnerDirectoryId") ownerDirectoryId: option<directoryId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("SharedDirectories") sharedDirectories: sharedDirectories
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DescribeSharedDirectoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLDAPSSettings = {
  type t;
  type request = {
@as("Limit") limit: pageLimit,
@as("NextToken") nextToken: nextToken,
@as("Type") type_: lDAPSType,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("LDAPSSettingsInfo") lDAPSSettingsInfo: lDAPSSettingsInfo
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DescribeLDAPSSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventTopics = {
  type t;
  type request = {
@as("TopicNames") topicNames: topicNames,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("EventTopics") eventTopics: eventTopics
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventTopicsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDomainControllers = {
  type t;
  type request = {
@as("Limit") limit: limit,
@as("NextToken") nextToken: nextToken,
@as("DomainControllerIds") domainControllerIds: domainControllerIds,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("DomainControllers") domainControllers: domainControllers
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDomainControllersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCertificate = {
  type t;
  type request = {
@as("CertificateId") certificateId: option<certificateId>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("Certificate") certificate: certificate
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DescribeCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMicrosoftAD = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Edition") edition: directoryEdition,
@as("VpcSettings") vpcSettings: option<directoryVpcSettings>,
@as("Description") description: description,
@as("Password") password: option<password>,
@as("ShortName") shortName: directoryShortName,
@as("Name") name: option<directoryName>
}
  type response = {
@as("DirectoryId") directoryId: directoryId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "CreateMicrosoftADCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDirectory = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("VpcSettings") vpcSettings: directoryVpcSettings,
@as("Size") size: option<directorySize>,
@as("Description") description: description,
@as("Password") password: option<password>,
@as("ShortName") shortName: directoryShortName,
@as("Name") name: option<directoryName>
}
  type response = {
@as("DirectoryId") directoryId: directoryId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "CreateDirectoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ConnectDirectory = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("ConnectSettings") connectSettings: option<directoryConnectSettings>,
@as("Size") size: option<directorySize>,
@as("Description") description: description,
@as("Password") password: option<connectPassword>,
@as("ShortName") shortName: directoryShortName,
@as("Name") name: option<directoryName>
}
  type response = {
@as("DirectoryId") directoryId: directoryId
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "ConnectDirectoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTagsToResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceId") resourceId: option<resourceId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "AddTagsToResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddRegion = {
  type t;
  type request = {
@as("VPCSettings") vPCSettings: option<directoryVpcSettings>,
@as("RegionName") regionName: option<regionName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "AddRegionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddIpRoutes = {
  type t;
  type request = {
@as("UpdateSecurityGroupForDirectoryControllers") updateSecurityGroupForDirectoryControllers: updateSecurityGroupForDirectoryControllers,
@as("IpRoutes") ipRoutes: option<ipRoutes>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "AddIpRoutesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConditionalForwarders = {
  type t;
  type request = {
@as("RemoteDomainNames") remoteDomainNames: remoteDomainNames,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("ConditionalForwarders") conditionalForwarders: conditionalForwarders
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DescribeConditionalForwardersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateComputer = {
  type t;
  type request = {
@as("ComputerAttributes") computerAttributes: attributes,
@as("OrganizationalUnitDistinguishedName") organizationalUnitDistinguishedName: organizationalUnitDN,
@as("Password") password: option<computerPassword>,
@as("ComputerName") computerName: option<computerName>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("Computer") computer: computer
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "CreateComputerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRegions = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("RegionName") regionName: regionName,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("RegionsDescription") regionsDescription: regionsDescription
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DescribeRegionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDirectories = {
  type t;
  type request = {
@as("Limit") limit: limit,
@as("NextToken") nextToken: nextToken,
@as("DirectoryIds") directoryIds: directoryIds
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("DirectoryDescriptions") directoryDescriptions: directoryDescriptions
}
  @module("@aws-sdk/client-ds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDirectoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
