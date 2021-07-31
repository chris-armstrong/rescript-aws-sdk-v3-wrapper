type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-workspaces") @new external createClient: unit => awsServiceClient = "WorkSpacesClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type workspaceState = [@as("ERROR") #ERROR | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("UPDATING") #UPDATING | @as("SUSPENDED") #SUSPENDED | @as("TERMINATED") #TERMINATED | @as("TERMINATING") #TERMINATING | @as("ADMIN_MAINTENANCE") #ADMIN_MAINTENANCE | @as("MAINTENANCE") #MAINTENANCE | @as("RESTORING") #RESTORING | @as("REBUILDING") #REBUILDING | @as("STARTING") #STARTING | @as("REBOOTING") #REBOOTING | @as("UNHEALTHY") #UNHEALTHY | @as("IMPAIRED") #IMPAIRED | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type workspaceImageState = [@as("ERROR") #ERROR | @as("PENDING") #PENDING | @as("AVAILABLE") #AVAILABLE]
type workspaceImageRequiredTenancy = [@as("DEDICATED") #DEDICATED | @as("DEFAULT") #DEFAULT]
type workspaceImageName = string
type workspaceImageIngestionProcess = [@as("BYOL_REGULAR_WSP") #BYOL_REGULAR_WSP | @as("BYOL_GRAPHICSPRO") #BYOL_GRAPHICSPRO | @as("BYOL_GRAPHICS") #BYOL_GRAPHICS | @as("BYOL_REGULAR") #BYOL_REGULAR]
type workspaceImageId = string
type workspaceImageErrorCode = string
type workspaceImageDescription = string
type workspaceId = string
type workspaceErrorCode = string
type workspaceDirectoryType = [@as("AD_CONNECTOR") #AD_CONNECTOR | @as("SIMPLE_AD") #SIMPLE_AD]
type workspaceDirectoryState = [@as("ERROR") #ERROR | @as("DEREGISTERED") #DEREGISTERED | @as("DEREGISTERING") #DEREGISTERING | @as("REGISTERED") #REGISTERED | @as("REGISTERING") #REGISTERING]
type workspaceBundleName = string
type workspaceBundleDescription = string
type volumeEncryptionKey = string
type userVolumeSizeGib = int
type userName = string
type timestamp_ = Js.Date.t;
type tenancy = [@as("SHARED") #SHARED | @as("DEDICATED") #DEDICATED]
type targetWorkspaceState = [@as("ADMIN_MAINTENANCE") #ADMIN_MAINTENANCE | @as("AVAILABLE") #AVAILABLE]
type tagValue = string
type tagKey = string
type subnetId = string
type securityGroupId = string
type runningModeAutoStopTimeoutInMinutes = int
type runningMode = [@as("ALWAYS_ON") #ALWAYS_ON | @as("AUTO_STOP") #AUTO_STOP]
type rootVolumeSizeGib = int
type registrationCode = string
type region = string
type reconnectEnum = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type paginationToken = string
type operatingSystemType = [@as("LINUX") #LINUX | @as("WINDOWS") #WINDOWS]
type nonEmptyString = string
type modificationStateEnum = [@as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("UPDATE_INITIATED") #UPDATE_INITIATED]
type modificationResourceEnum = [@as("COMPUTE_TYPE") #COMPUTE_TYPE | @as("USER_VOLUME") #USER_VOLUME | @as("ROOT_VOLUME") #ROOT_VOLUME]
type managementCidrRangeMaxResults = int
type managementCidrRangeConstraint = string
type limit = int
type ipRuleDesc = string
type ipRule = string
type ipGroupName = string
type ipGroupId = string
type ipGroupDesc = string
type ipAddress = string
type imageType = [@as("SHARED") #SHARED | @as("OWNED") #OWNED]
type exceptionMessage = string
type errorType = string
type ec2ImageId = string
type directoryName = string
type directoryId = string
type description = string
type defaultOu = string
type dedicatedTenancySupportResultEnum = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type dedicatedTenancySupportEnum = [@as("ENABLED") #ENABLED]
type dedicatedTenancyModificationStateEnum = [@as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("PENDING") #PENDING]
type dedicatedTenancyManagementCidrRange = string
type connectionString = string
type connectionState = [@as("UNKNOWN") #UNKNOWN | @as("DISCONNECTED") #DISCONNECTED | @as("CONNECTED") #CONNECTED]
type connectionIdentifier = string
type connectionAliasState = [@as("DELETING") #DELETING | @as("CREATED") #CREATED | @as("CREATING") #CREATING]
type connectionAliasId = string
type computerName = string
type compute = [@as("GRAPHICSPRO") #GRAPHICSPRO | @as("POWERPRO") #POWERPRO | @as("GRAPHICS") #GRAPHICS | @as("POWER") #POWER | @as("PERFORMANCE") #PERFORMANCE | @as("STANDARD") #STANDARD | @as("VALUE") #VALUE]
type bundleOwner = string
type bundleId = string
type booleanObject = bool
type awsAccount = string
type associationStatus = [@as("PENDING_DISASSOCIATION") #PENDING_DISASSOCIATION | @as("PENDING_ASSOCIATION") #PENDING_ASSOCIATION | @as("ASSOCIATED_WITH_SHARED_ACCOUNT") #ASSOCIATED_WITH_SHARED_ACCOUNT | @as("ASSOCIATED_WITH_OWNER_ACCOUNT") #ASSOCIATED_WITH_OWNER_ACCOUNT | @as("NOT_ASSOCIATED") #NOT_ASSOCIATED]
type application = [@as("Microsoft_Office_2019") #Microsoft_Office_2019 | @as("Microsoft_Office_2016") #Microsoft_Office_2016]
type alias = string
type accessPropertyValue = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type arn = string
type workspaceProperties = {
@as("ComputeTypeName") computeTypeName: option<compute>,
  @as("UserVolumeSizeGib") userVolumeSizeGib: option<userVolumeSizeGib>,
  @as("RootVolumeSizeGib") rootVolumeSizeGib: option<rootVolumeSizeGib>,
  @as("RunningModeAutoStopTimeoutInMinutes") runningModeAutoStopTimeoutInMinutes: option<runningModeAutoStopTimeoutInMinutes>,
  @as("RunningMode") runningMode: option<runningMode>
}
type workspaceImageIdList = array<workspaceImageId>
type workspaceIdList = array<workspaceId>
type workspaceCreationProperties = {
@as("EnableMaintenanceMode") enableMaintenanceMode: option<booleanObject>,
  @as("UserEnabledAsLocalAdministrator") userEnabledAsLocalAdministrator: option<booleanObject>,
  @as("CustomSecurityGroupId") customSecurityGroupId: option<securityGroupId>,
  @as("DefaultOu") defaultOu: option<defaultOu>,
  @as("EnableInternetAccess") enableInternetAccess: option<booleanObject>,
  @as("EnableWorkDocs") enableWorkDocs: option<booleanObject>
}
type workspaceConnectionStatus = {
@as("LastKnownUserConnectionTimestamp") lastKnownUserConnectionTimestamp: option<timestamp_>,
  @as("ConnectionStateCheckTimestamp") connectionStateCheckTimestamp: option<timestamp_>,
  @as("ConnectionState") connectionState: option<connectionState>,
  @as("WorkspaceId") workspaceId: option<workspaceId>
}
type workspaceAccessProperties = {
@as("DeviceTypeLinux") deviceTypeLinux: option<accessPropertyValue>,
  @as("DeviceTypeZeroClient") deviceTypeZeroClient: option<accessPropertyValue>,
  @as("DeviceTypeChromeOs") deviceTypeChromeOs: option<accessPropertyValue>,
  @as("DeviceTypeAndroid") deviceTypeAndroid: option<accessPropertyValue>,
  @as("DeviceTypeIos") deviceTypeIos: option<accessPropertyValue>,
  @as("DeviceTypeWeb") deviceTypeWeb: option<accessPropertyValue>,
  @as("DeviceTypeOsx") deviceTypeOsx: option<accessPropertyValue>,
  @as("DeviceTypeWindows") deviceTypeWindows: option<accessPropertyValue>
}
type userStorage = {
@as("Capacity") capacity: option<nonEmptyString>
}
type terminateRequest = {
@as("WorkspaceId") workspaceId: workspaceId
}
type tagKeyList = array<nonEmptyString>
type tag = {
@as("Value") value: option<tagValue>,
  @as("Key") key: tagKey
}
type subnetIds = array<subnetId>
type stopRequest = {
@as("WorkspaceId") workspaceId: option<workspaceId>
}
type startRequest = {
@as("WorkspaceId") workspaceId: option<workspaceId>
}
type snapshot = {
@as("SnapshotTime") snapshotTime: option<timestamp_>
}
type selfservicePermissions = {
@as("RebuildWorkspace") rebuildWorkspace: option<reconnectEnum>,
  @as("SwitchRunningMode") switchRunningMode: option<reconnectEnum>,
  @as("ChangeComputeType") changeComputeType: option<reconnectEnum>,
  @as("IncreaseVolumeSize") increaseVolumeSize: option<reconnectEnum>,
  @as("RestartWorkspace") restartWorkspace: option<reconnectEnum>
}
type rootStorage = {
@as("Capacity") capacity: option<nonEmptyString>
}
type resourceIdList = array<nonEmptyString>
type rebuildRequest = {
@as("WorkspaceId") workspaceId: workspaceId
}
type rebootRequest = {
@as("WorkspaceId") workspaceId: workspaceId
}
type operatingSystem = {
@as("Type") type_: option<operatingSystemType>
}
type modificationState = {
@as("State") state: option<modificationStateEnum>,
  @as("Resource") resource: option<modificationResourceEnum>
}
type ipRuleItem = {
ruleDesc: option<ipRuleDesc>,
  ipRule: option<ipRule>
}
type ipRevokedRuleList = array<ipRule>
type ipGroupIdList = array<ipGroupId>
type imagePermission = {
@as("SharedAccountId") sharedAccountId: option<awsAccount>
}
type failedWorkspaceChangeRequest = {
@as("ErrorMessage") errorMessage: option<description>,
  @as("ErrorCode") errorCode: option<errorType>,
  @as("WorkspaceId") workspaceId: option<workspaceId>
}
type dnsIpAddresses = array<ipAddress>
type directoryIdList = array<directoryId>
type defaultWorkspaceCreationProperties = {
@as("EnableMaintenanceMode") enableMaintenanceMode: option<booleanObject>,
  @as("UserEnabledAsLocalAdministrator") userEnabledAsLocalAdministrator: option<booleanObject>,
  @as("CustomSecurityGroupId") customSecurityGroupId: option<securityGroupId>,
  @as("DefaultOu") defaultOu: option<defaultOu>,
  @as("EnableInternetAccess") enableInternetAccess: option<booleanObject>,
  @as("EnableWorkDocs") enableWorkDocs: option<booleanObject>
}
type dedicatedTenancyCidrRangeList = array<dedicatedTenancyManagementCidrRange>
type connectionAliasPermission = {
@as("AllowAssociation") allowAssociation: booleanObject,
  @as("SharedAccountId") sharedAccountId: awsAccount
}
type connectionAliasIdList = array<connectionAliasId>
type connectionAliasAssociation = {
@as("ConnectionIdentifier") connectionIdentifier: option<connectionIdentifier>,
  @as("ResourceId") resourceId: option<nonEmptyString>,
  @as("AssociatedAccountId") associatedAccountId: option<awsAccount>,
  @as("AssociationStatus") associationStatus: option<associationStatus>
}
type computeType = {
@as("Name") name: option<compute>
}
type clientProperties = {
@as("ReconnectEnabled") reconnectEnabled: option<reconnectEnum>
}
type bundleIdList = array<bundleId>
type applicationList = array<application>
type accountModification = {
@as("ErrorMessage") errorMessage: option<description>,
  @as("ErrorCode") errorCode: option<workspaceErrorCode>,
  @as("StartTime") startTime: option<timestamp_>,
  @as("DedicatedTenancyManagementCidrRange") dedicatedTenancyManagementCidrRange: option<dedicatedTenancyManagementCidrRange>,
  @as("DedicatedTenancySupport") dedicatedTenancySupport: option<dedicatedTenancySupportResultEnum>,
  @as("ModificationState") modificationState: option<dedicatedTenancyModificationStateEnum>
}
type workspaceImage = {
@as("OwnerAccountId") ownerAccountId: option<awsAccount>,
  @as("Created") created: option<timestamp_>,
  @as("ErrorMessage") errorMessage: option<description>,
  @as("ErrorCode") errorCode: option<workspaceImageErrorCode>,
  @as("RequiredTenancy") requiredTenancy: option<workspaceImageRequiredTenancy>,
  @as("State") state: option<workspaceImageState>,
  @as("OperatingSystem") operatingSystem: option<operatingSystem>,
  @as("Description") description: option<workspaceImageDescription>,
  @as("Name") name: option<workspaceImageName>,
  @as("ImageId") imageId: option<workspaceImageId>
}
type workspaceDirectory = {
@as("SelfservicePermissions") selfservicePermissions: option<selfservicePermissions>,
  @as("Tenancy") tenancy: option<tenancy>,
  @as("WorkspaceAccessProperties") workspaceAccessProperties: option<workspaceAccessProperties>,
  ipGroupIds: option<ipGroupIdList>,
  @as("WorkspaceCreationProperties") workspaceCreationProperties: option<defaultWorkspaceCreationProperties>,
  @as("State") state: option<workspaceDirectoryState>,
  @as("WorkspaceSecurityGroupId") workspaceSecurityGroupId: option<securityGroupId>,
  @as("DirectoryType") directoryType: option<workspaceDirectoryType>,
  @as("IamRoleId") iamRoleId: option<arn>,
  @as("CustomerUserName") customerUserName: option<userName>,
  @as("DnsIpAddresses") dnsIpAddresses: option<dnsIpAddresses>,
  @as("SubnetIds") subnetIds: option<subnetIds>,
  @as("RegistrationCode") registrationCode: option<registrationCode>,
  @as("DirectoryName") directoryName: option<directoryName>,
  @as("Alias") alias: option<alias>,
  @as("DirectoryId") directoryId: option<directoryId>
}
type workspaceConnectionStatusList = array<workspaceConnectionStatus>
type workspaceBundle = {
@as("CreationTime") creationTime: option<timestamp_>,
  @as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
  @as("ComputeType") computeType: option<computeType>,
  @as("UserStorage") userStorage: option<userStorage>,
  @as("RootStorage") rootStorage: option<rootStorage>,
  @as("ImageId") imageId: option<workspaceImageId>,
  @as("Description") description: option<description>,
  @as("Owner") owner: option<bundleOwner>,
  @as("Name") name: option<nonEmptyString>,
  @as("BundleId") bundleId: option<bundleId>
}
type terminateWorkspaceRequests = array<terminateRequest>
type tagList_ = array<tag>
type stopWorkspaceRequests = array<stopRequest>
type startWorkspaceRequests = array<startRequest>
type snapshotList = array<snapshot>
type rebuildWorkspaceRequests = array<rebuildRequest>
type rebootWorkspaceRequests = array<rebootRequest>
type modificationStateList = array<modificationState>
type ipRuleList = array<ipRuleItem>
type imagePermissions = array<imagePermission>
type failedTerminateWorkspaceRequests = array<failedWorkspaceChangeRequest>
type failedStopWorkspaceRequests = array<failedWorkspaceChangeRequest>
type failedStartWorkspaceRequests = array<failedWorkspaceChangeRequest>
type failedRebuildWorkspaceRequests = array<failedWorkspaceChangeRequest>
type failedRebootWorkspaceRequests = array<failedWorkspaceChangeRequest>
type connectionAliasPermissions = array<connectionAliasPermission>
type connectionAliasAssociationList = array<connectionAliasAssociation>
type clientPropertiesResult = {
@as("ClientProperties") clientProperties: option<clientProperties>,
  @as("ResourceId") resourceId: option<nonEmptyString>
}
type accountModificationList = array<accountModification>
type workspacesIpGroup = {
userRules: option<ipRuleList>,
  groupDesc: option<ipGroupDesc>,
  groupName: option<ipGroupName>,
  groupId: option<ipGroupId>
}
type workspaceRequest = {
@as("Tags") tags: option<tagList_>,
  @as("WorkspaceProperties") workspaceProperties: option<workspaceProperties>,
  @as("RootVolumeEncryptionEnabled") rootVolumeEncryptionEnabled: option<booleanObject>,
  @as("UserVolumeEncryptionEnabled") userVolumeEncryptionEnabled: option<booleanObject>,
  @as("VolumeEncryptionKey") volumeEncryptionKey: option<volumeEncryptionKey>,
  @as("BundleId") bundleId: bundleId,
  @as("UserName") userName: userName,
  @as("DirectoryId") directoryId: directoryId
}
type workspaceImageList = array<workspaceImage>
type workspace = {
@as("ModificationStates") modificationStates: option<modificationStateList>,
  @as("WorkspaceProperties") workspaceProperties: option<workspaceProperties>,
  @as("RootVolumeEncryptionEnabled") rootVolumeEncryptionEnabled: option<booleanObject>,
  @as("UserVolumeEncryptionEnabled") userVolumeEncryptionEnabled: option<booleanObject>,
  @as("VolumeEncryptionKey") volumeEncryptionKey: option<volumeEncryptionKey>,
  @as("ComputerName") computerName: option<computerName>,
  @as("ErrorCode") errorCode: option<workspaceErrorCode>,
  @as("ErrorMessage") errorMessage: option<description>,
  @as("SubnetId") subnetId: option<subnetId>,
  @as("BundleId") bundleId: option<bundleId>,
  @as("State") state: option<workspaceState>,
  @as("IpAddress") ipAddress: option<ipAddress>,
  @as("UserName") userName: option<userName>,
  @as("DirectoryId") directoryId: option<directoryId>,
  @as("WorkspaceId") workspaceId: option<workspaceId>
}
type directoryList = array<workspaceDirectory>
type connectionAlias = {
@as("Associations") associations: option<connectionAliasAssociationList>,
  @as("OwnerAccountId") ownerAccountId: option<awsAccount>,
  @as("State") state: option<connectionAliasState>,
  @as("AliasId") aliasId: option<connectionAliasId>,
  @as("ConnectionString") connectionString: option<connectionString>
}
type clientPropertiesList = array<clientPropertiesResult>
type bundleList = array<workspaceBundle>
type workspacesIpGroupsList = array<workspacesIpGroup>
type workspaceRequestList = array<workspaceRequest>
type workspaceList = array<workspace>
type failedCreateWorkspaceRequest = {
@as("ErrorMessage") errorMessage: option<description>,
  @as("ErrorCode") errorCode: option<errorType>,
  @as("WorkspaceRequest") workspaceRequest: option<workspaceRequest>
}
type connectionAliasList = array<connectionAlias>
type failedCreateWorkspaceRequests = array<failedCreateWorkspaceRequest>

module UpdateWorkspaceImagePermission = {
  type t;
  type request = {
@as("SharedAccountId") sharedAccountId: awsAccount,
  @as("AllowCopyImage") allowCopyImage: booleanObject,
  @as("ImageId") imageId: workspaceImageId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "UpdateWorkspaceImagePermissionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateWorkspaceBundle = {
  type t;
  type request = {
@as("ImageId") imageId: option<workspaceImageId>,
  @as("BundleId") bundleId: option<bundleId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "UpdateWorkspaceBundleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RestoreWorkspace = {
  type t;
  type request = {
@as("WorkspaceId") workspaceId: workspaceId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "RestoreWorkspaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyWorkspaceState = {
  type t;
  type request = {
@as("WorkspaceState") workspaceState: targetWorkspaceState,
  @as("WorkspaceId") workspaceId: workspaceId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyWorkspaceStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyAccount = {
  type t;
  type request = {
@as("DedicatedTenancyManagementCidrRange") dedicatedTenancyManagementCidrRange: option<dedicatedTenancyManagementCidrRange>,
  @as("DedicatedTenancySupport") dedicatedTenancySupport: option<dedicatedTenancySupportEnum>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module MigrateWorkspace = {
  type t;
  type request = {
@as("BundleId") bundleId: bundleId,
  @as("SourceWorkspaceId") sourceWorkspaceId: workspaceId
}
  type response = {
@as("TargetWorkspaceId") targetWorkspaceId: option<workspaceId>,
  @as("SourceWorkspaceId") sourceWorkspaceId: option<workspaceId>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "MigrateWorkspaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateConnectionAlias = {
  type t;
  type request = {
@as("AliasId") aliasId: connectionAliasId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DisassociateConnectionAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccount = {
  type t;
  type request = unit
  type response = {
@as("DedicatedTenancyManagementCidrRange") dedicatedTenancyManagementCidrRange: option<dedicatedTenancyManagementCidrRange>,
  @as("DedicatedTenancySupport") dedicatedTenancySupport: option<dedicatedTenancySupportResultEnum>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterWorkspaceDirectory = {
  type t;
  type request = {
@as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeregisterWorkspaceDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteWorkspaceImage = {
  type t;
  type request = {
@as("ImageId") imageId: workspaceImageId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeleteWorkspaceImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteWorkspaceBundle = {
  type t;
  type request = {
@as("BundleId") bundleId: option<bundleId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeleteWorkspaceBundleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteIpGroup = {
  type t;
  type request = {
@as("GroupId") groupId: ipGroupId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeleteIpGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConnectionAlias = {
  type t;
  type request = {
@as("AliasId") aliasId: connectionAliasId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeleteConnectionAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateConnectionAlias = {
  type t;
  type request = {
@as("ResourceId") resourceId: nonEmptyString,
  @as("AliasId") aliasId: connectionAliasId
}
  type response = {
@as("ConnectionIdentifier") connectionIdentifier: option<connectionIdentifier>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "AssociateConnectionAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConnectionAliasPermission = {
  type t;
  type request = {
@as("ConnectionAliasPermission") connectionAliasPermission: connectionAliasPermission,
  @as("AliasId") aliasId: connectionAliasId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "UpdateConnectionAliasPermissionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RevokeIpRules = {
  type t;
  type request = {
@as("UserRules") userRules: ipRevokedRuleList,
  @as("GroupId") groupId: ipGroupId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "RevokeIpRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyWorkspaceProperties = {
  type t;
  type request = {
@as("WorkspaceProperties") workspaceProperties: workspaceProperties,
  @as("WorkspaceId") workspaceId: workspaceId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyWorkspacePropertiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyWorkspaceCreationProperties = {
  type t;
  type request = {
@as("WorkspaceCreationProperties") workspaceCreationProperties: workspaceCreationProperties,
  @as("ResourceId") resourceId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyWorkspaceCreationPropertiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyWorkspaceAccessProperties = {
  type t;
  type request = {
@as("WorkspaceAccessProperties") workspaceAccessProperties: workspaceAccessProperties,
  @as("ResourceId") resourceId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyWorkspaceAccessPropertiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifySelfservicePermissions = {
  type t;
  type request = {
@as("SelfservicePermissions") selfservicePermissions: selfservicePermissions,
  @as("ResourceId") resourceId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifySelfservicePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyClientProperties = {
  type t;
  type request = {
@as("ClientProperties") clientProperties: clientProperties,
  @as("ResourceId") resourceId: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyClientPropertiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAvailableManagementCidrRanges = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("MaxResults") maxResults: option<managementCidrRangeMaxResults>,
  @as("ManagementCidrRangeConstraint") managementCidrRangeConstraint: managementCidrRangeConstraint
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("ManagementCidrRanges") managementCidrRanges: option<dedicatedTenancyCidrRangeList>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ListAvailableManagementCidrRangesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateIpGroups = {
  type t;
  type request = {
@as("GroupIds") groupIds: ipGroupIdList,
  @as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DisassociateIpGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
  @as("ResourceId") resourceId: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeleteTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateIpGroups = {
  type t;
  type request = {
@as("GroupIds") groupIds: ipGroupIdList,
  @as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "AssociateIpGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRulesOfIpGroup = {
  type t;
  type request = {
@as("UserRules") userRules: ipRuleList,
  @as("GroupId") groupId: ipGroupId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "UpdateRulesOfIpGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TerminateWorkspaces = {
  type t;
  type request = {
@as("TerminateWorkspaceRequests") terminateWorkspaceRequests: terminateWorkspaceRequests
}
  type response = {
@as("FailedRequests") failedRequests: option<failedTerminateWorkspaceRequests>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "TerminateWorkspacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopWorkspaces = {
  type t;
  type request = {
@as("StopWorkspaceRequests") stopWorkspaceRequests: stopWorkspaceRequests
}
  type response = {
@as("FailedRequests") failedRequests: option<failedStopWorkspaceRequests>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "StopWorkspacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartWorkspaces = {
  type t;
  type request = {
@as("StartWorkspaceRequests") startWorkspaceRequests: startWorkspaceRequests
}
  type response = {
@as("FailedRequests") failedRequests: option<failedStartWorkspaceRequests>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "StartWorkspacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterWorkspaceDirectory = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("Tenancy") tenancy: option<tenancy>,
  @as("EnableSelfService") enableSelfService: option<booleanObject>,
  @as("EnableWorkDocs") enableWorkDocs: booleanObject,
  @as("SubnetIds") subnetIds: option<subnetIds>,
  @as("DirectoryId") directoryId: directoryId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "RegisterWorkspaceDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RebuildWorkspaces = {
  type t;
  type request = {
@as("RebuildWorkspaceRequests") rebuildWorkspaceRequests: rebuildWorkspaceRequests
}
  type response = {
@as("FailedRequests") failedRequests: option<failedRebuildWorkspaceRequests>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "RebuildWorkspacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RebootWorkspaces = {
  type t;
  type request = {
@as("RebootWorkspaceRequests") rebootWorkspaceRequests: rebootWorkspaceRequests
}
  type response = {
@as("FailedRequests") failedRequests: option<failedRebootWorkspaceRequests>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "RebootWorkspacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportWorkspaceImage = {
  type t;
  type request = {
@as("Applications") applications: option<applicationList>,
  @as("Tags") tags: option<tagList_>,
  @as("ImageDescription") imageDescription: workspaceImageDescription,
  @as("ImageName") imageName: workspaceImageName,
  @as("IngestionProcess") ingestionProcess: workspaceImageIngestionProcess,
  @as("Ec2ImageId") ec2ImageId: ec2ImageId
}
  type response = {
@as("ImageId") imageId: option<workspaceImageId>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ImportWorkspaceImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspacesConnectionStatus = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("WorkspaceIds") workspaceIds: option<workspaceIdList>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("WorkspacesConnectionStatus") workspacesConnectionStatus: option<workspaceConnectionStatusList>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspacesConnectionStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaceSnapshots = {
  type t;
  type request = {
@as("WorkspaceId") workspaceId: workspaceId
}
  type response = {
@as("RestoreSnapshots") restoreSnapshots: option<snapshotList>,
  @as("RebuildSnapshots") rebuildSnapshots: option<snapshotList>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspaceSnapshotsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaceImagePermissions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<limit>,
  @as("NextToken") nextToken: option<paginationToken>,
  @as("ImageId") imageId: workspaceImageId
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("ImagePermissions") imagePermissions: option<imagePermissions>,
  @as("ImageId") imageId: option<workspaceImageId>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspaceImagePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("ResourceId") resourceId: nonEmptyString
}
  type response = {
@as("TagList") tagList_: option<tagList_>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectionAliasPermissions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<limit>,
  @as("NextToken") nextToken: option<paginationToken>,
  @as("AliasId") aliasId: connectionAliasId
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("ConnectionAliasPermissions") connectionAliasPermissions: option<connectionAliasPermissions>,
  @as("AliasId") aliasId: option<connectionAliasId>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeConnectionAliasPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountModifications = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("AccountModifications") accountModifications: option<accountModificationList>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeAccountModificationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateWorkspaceBundle = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("RootStorage") rootStorage: option<rootStorage>,
  @as("UserStorage") userStorage: userStorage,
  @as("ComputeType") computeType: computeType,
  @as("ImageId") imageId: workspaceImageId,
  @as("BundleDescription") bundleDescription: workspaceBundleDescription,
  @as("BundleName") bundleName: workspaceBundleName
}
  type response = {
@as("WorkspaceBundle") workspaceBundle: option<workspaceBundle>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CreateWorkspaceBundleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTags = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
  @as("ResourceId") resourceId: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CreateTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateIpGroup = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("UserRules") userRules: option<ipRuleList>,
  @as("GroupDesc") groupDesc: option<ipGroupDesc>,
  @as("GroupName") groupName: ipGroupName
}
  type response = {
@as("GroupId") groupId: option<ipGroupId>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CreateIpGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConnectionAlias = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("ConnectionString") connectionString: connectionString
}
  type response = {
@as("AliasId") aliasId: option<connectionAliasId>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CreateConnectionAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CopyWorkspaceImage = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("SourceRegion") sourceRegion: region,
  @as("SourceImageId") sourceImageId: workspaceImageId,
  @as("Description") description: option<workspaceImageDescription>,
  @as("Name") name: workspaceImageName
}
  type response = {
@as("ImageId") imageId: option<workspaceImageId>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CopyWorkspaceImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AuthorizeIpRules = {
  type t;
  type request = {
@as("UserRules") userRules: ipRuleList,
  @as("GroupId") groupId: ipGroupId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "AuthorizeIpRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaceImages = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<limit>,
  @as("NextToken") nextToken: option<paginationToken>,
  @as("ImageType") imageType: option<imageType>,
  @as("ImageIds") imageIds: option<workspaceImageIdList>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("Images") images: option<workspaceImageList>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspaceImagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaceDirectories = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("Limit") limit: option<limit>,
  @as("DirectoryIds") directoryIds: option<directoryIdList>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("Directories") directories: option<directoryList>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspaceDirectoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaceBundles = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("Owner") owner: option<bundleOwner>,
  @as("BundleIds") bundleIds: option<bundleIdList>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("Bundles") bundles: option<bundleList>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspaceBundlesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeClientProperties = {
  type t;
  type request = {
@as("ResourceIds") resourceIds: resourceIdList
}
  type response = {
@as("ClientPropertiesList") clientPropertiesList: option<clientPropertiesList>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeClientPropertiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaces = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("Limit") limit: option<limit>,
  @as("BundleId") bundleId: option<bundleId>,
  @as("UserName") userName: option<userName>,
  @as("DirectoryId") directoryId: option<directoryId>,
  @as("WorkspaceIds") workspaceIds: option<workspaceIdList>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("Workspaces") workspaces: option<workspaceList>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeIpGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<limit>,
  @as("NextToken") nextToken: option<paginationToken>,
  @as("GroupIds") groupIds: option<ipGroupIdList>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("Result") result: option<workspacesIpGroupsList>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeIpGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectionAliases = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("Limit") limit: option<limit>,
  @as("ResourceId") resourceId: option<nonEmptyString>,
  @as("AliasIds") aliasIds: option<connectionAliasIdList>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
  @as("ConnectionAliases") connectionAliases: option<connectionAliasList>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeConnectionAliasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateWorkspaces = {
  type t;
  type request = {
@as("Workspaces") workspaces: workspaceRequestList
}
  type response = {
@as("PendingRequests") pendingRequests: option<workspaceList>,
  @as("FailedRequests") failedRequests: option<failedCreateWorkspaceRequests>
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CreateWorkspacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
