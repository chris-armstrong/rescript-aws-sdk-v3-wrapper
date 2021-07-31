type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
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
type userVolumeSizeGib = int;
type userName = string
type amazonawsTimestamp = Js.Date.t;
type tenancy = [@as("SHARED") #SHARED | @as("DEDICATED") #DEDICATED]
type targetWorkspaceState = [@as("ADMIN_MAINTENANCE") #ADMIN_MAINTENANCE | @as("AVAILABLE") #AVAILABLE]
type tagValue = string
type tagKey = string
type subnetId = string
type securityGroupId = string
type runningModeAutoStopTimeoutInMinutes = int;
type runningMode = [@as("ALWAYS_ON") #ALWAYS_ON | @as("AUTO_STOP") #AUTO_STOP]
type rootVolumeSizeGib = int;
type registrationCode = string
type region = string
type reconnectEnum = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type paginationToken = string
type operatingSystemType = [@as("LINUX") #LINUX | @as("WINDOWS") #WINDOWS]
type nonEmptyString = string
type modificationStateEnum = [@as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("UPDATE_INITIATED") #UPDATE_INITIATED]
type modificationResourceEnum = [@as("COMPUTE_TYPE") #COMPUTE_TYPE | @as("USER_VOLUME") #USER_VOLUME | @as("ROOT_VOLUME") #ROOT_VOLUME]
type managementCidrRangeMaxResults = int;
type managementCidrRangeConstraint = string
type limit = int;
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
type booleanObject = bool;
type awsAccount = string
type associationStatus = [@as("PENDING_DISASSOCIATION") #PENDING_DISASSOCIATION | @as("PENDING_ASSOCIATION") #PENDING_ASSOCIATION | @as("ASSOCIATED_WITH_SHARED_ACCOUNT") #ASSOCIATED_WITH_SHARED_ACCOUNT | @as("ASSOCIATED_WITH_OWNER_ACCOUNT") #ASSOCIATED_WITH_OWNER_ACCOUNT | @as("NOT_ASSOCIATED") #NOT_ASSOCIATED]
type application = [@as("Microsoft_Office_2019") #Microsoft_Office_2019 | @as("Microsoft_Office_2016") #Microsoft_Office_2016]
type alias = string
type accessPropertyValue = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type aRN = string
type workspaceProperties = {
@as("ComputeTypeName") computeTypeName: compute,
@as("UserVolumeSizeGib") userVolumeSizeGib: userVolumeSizeGib,
@as("RootVolumeSizeGib") rootVolumeSizeGib: rootVolumeSizeGib,
@as("RunningModeAutoStopTimeoutInMinutes") runningModeAutoStopTimeoutInMinutes: runningModeAutoStopTimeoutInMinutes,
@as("RunningMode") runningMode: runningMode
}
type workspaceImageIdList = array<workspaceImageId>
type workspaceIdList = array<workspaceId>
type workspaceCreationProperties = {
@as("EnableMaintenanceMode") enableMaintenanceMode: booleanObject,
@as("UserEnabledAsLocalAdministrator") userEnabledAsLocalAdministrator: booleanObject,
@as("CustomSecurityGroupId") customSecurityGroupId: securityGroupId,
@as("DefaultOu") defaultOu: defaultOu,
@as("EnableInternetAccess") enableInternetAccess: booleanObject,
@as("EnableWorkDocs") enableWorkDocs: booleanObject
}
type workspaceConnectionStatus = {
@as("LastKnownUserConnectionTimestamp") lastKnownUserConnectionTimestamp: amazonawsTimestamp,
@as("ConnectionStateCheckTimestamp") connectionStateCheckTimestamp: amazonawsTimestamp,
@as("ConnectionState") connectionState: connectionState,
@as("WorkspaceId") workspaceId: workspaceId
}
type workspaceAccessProperties = {
@as("DeviceTypeLinux") deviceTypeLinux: accessPropertyValue,
@as("DeviceTypeZeroClient") deviceTypeZeroClient: accessPropertyValue,
@as("DeviceTypeChromeOs") deviceTypeChromeOs: accessPropertyValue,
@as("DeviceTypeAndroid") deviceTypeAndroid: accessPropertyValue,
@as("DeviceTypeIos") deviceTypeIos: accessPropertyValue,
@as("DeviceTypeWeb") deviceTypeWeb: accessPropertyValue,
@as("DeviceTypeOsx") deviceTypeOsx: accessPropertyValue,
@as("DeviceTypeWindows") deviceTypeWindows: accessPropertyValue
}
type userStorage = {
@as("Capacity") capacity: nonEmptyString
}
type terminateRequest = {
@as("WorkspaceId") workspaceId: option<workspaceId>
}
type tagKeyList = array<nonEmptyString>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type subnetIds = array<subnetId>
type stopRequest = {
@as("WorkspaceId") workspaceId: workspaceId
}
type startRequest = {
@as("WorkspaceId") workspaceId: workspaceId
}
type snapshot = {
@as("SnapshotTime") snapshotTime: amazonawsTimestamp
}
type selfservicePermissions = {
@as("RebuildWorkspace") rebuildWorkspace: reconnectEnum,
@as("SwitchRunningMode") switchRunningMode: reconnectEnum,
@as("ChangeComputeType") changeComputeType: reconnectEnum,
@as("IncreaseVolumeSize") increaseVolumeSize: reconnectEnum,
@as("RestartWorkspace") restartWorkspace: reconnectEnum
}
type rootStorage = {
@as("Capacity") capacity: nonEmptyString
}
type resourceIdList = array<nonEmptyString>
type rebuildRequest = {
@as("WorkspaceId") workspaceId: option<workspaceId>
}
type rebootRequest = {
@as("WorkspaceId") workspaceId: option<workspaceId>
}
type operatingSystem = {
@as("Type") type_: operatingSystemType
}
type modificationState = {
@as("State") state: modificationStateEnum,
@as("Resource") resource: modificationResourceEnum
}
type ipRuleItem = {
@as("ruleDesc") ruleDesc: ipRuleDesc,
@as("ipRule") ipRule: ipRule
}
type ipRevokedRuleList = array<ipRule>
type ipGroupIdList = array<ipGroupId>
type imagePermission = {
@as("SharedAccountId") sharedAccountId: awsAccount
}
type failedWorkspaceChangeRequest = {
@as("ErrorMessage") errorMessage: description,
@as("ErrorCode") errorCode: errorType,
@as("WorkspaceId") workspaceId: workspaceId
}
type dnsIpAddresses = array<ipAddress>
type directoryIdList = array<directoryId>
type defaultWorkspaceCreationProperties = {
@as("EnableMaintenanceMode") enableMaintenanceMode: booleanObject,
@as("UserEnabledAsLocalAdministrator") userEnabledAsLocalAdministrator: booleanObject,
@as("CustomSecurityGroupId") customSecurityGroupId: securityGroupId,
@as("DefaultOu") defaultOu: defaultOu,
@as("EnableInternetAccess") enableInternetAccess: booleanObject,
@as("EnableWorkDocs") enableWorkDocs: booleanObject
}
type dedicatedTenancyCidrRangeList = array<dedicatedTenancyManagementCidrRange>
type connectionAliasPermission = {
@as("AllowAssociation") allowAssociation: option<booleanObject>,
@as("SharedAccountId") sharedAccountId: option<awsAccount>
}
type connectionAliasIdList = array<connectionAliasId>
type connectionAliasAssociation = {
@as("ConnectionIdentifier") connectionIdentifier: connectionIdentifier,
@as("ResourceId") resourceId: nonEmptyString,
@as("AssociatedAccountId") associatedAccountId: awsAccount,
@as("AssociationStatus") associationStatus: associationStatus
}
type computeType = {
@as("Name") name: compute
}
type clientProperties = {
@as("ReconnectEnabled") reconnectEnabled: reconnectEnum
}
type bundleIdList = array<bundleId>
type applicationList = array<application>
type accountModification = {
@as("ErrorMessage") errorMessage: description,
@as("ErrorCode") errorCode: workspaceErrorCode,
@as("StartTime") startTime: amazonawsTimestamp,
@as("DedicatedTenancyManagementCidrRange") dedicatedTenancyManagementCidrRange: dedicatedTenancyManagementCidrRange,
@as("DedicatedTenancySupport") dedicatedTenancySupport: dedicatedTenancySupportResultEnum,
@as("ModificationState") modificationState: dedicatedTenancyModificationStateEnum
}
type workspaceImage = {
@as("OwnerAccountId") ownerAccountId: awsAccount,
@as("Created") created: amazonawsTimestamp,
@as("ErrorMessage") errorMessage: description,
@as("ErrorCode") errorCode: workspaceImageErrorCode,
@as("RequiredTenancy") requiredTenancy: workspaceImageRequiredTenancy,
@as("State") state: workspaceImageState,
@as("OperatingSystem") operatingSystem: operatingSystem,
@as("Description") description: workspaceImageDescription,
@as("Name") name: workspaceImageName,
@as("ImageId") imageId: workspaceImageId
}
type workspaceDirectory = {
@as("SelfservicePermissions") selfservicePermissions: selfservicePermissions,
@as("Tenancy") tenancy: tenancy,
@as("WorkspaceAccessProperties") workspaceAccessProperties: workspaceAccessProperties,
@as("ipGroupIds") ipGroupIds: ipGroupIdList,
@as("WorkspaceCreationProperties") workspaceCreationProperties: defaultWorkspaceCreationProperties,
@as("State") state: workspaceDirectoryState,
@as("WorkspaceSecurityGroupId") workspaceSecurityGroupId: securityGroupId,
@as("DirectoryType") directoryType: workspaceDirectoryType,
@as("IamRoleId") iamRoleId: aRN,
@as("CustomerUserName") customerUserName: userName,
@as("DnsIpAddresses") dnsIpAddresses: dnsIpAddresses,
@as("SubnetIds") subnetIds: subnetIds,
@as("RegistrationCode") registrationCode: registrationCode,
@as("DirectoryName") directoryName: directoryName,
@as("Alias") alias: alias,
@as("DirectoryId") directoryId: directoryId
}
type workspaceConnectionStatusList = array<workspaceConnectionStatus>
type workspaceBundle = {
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("ComputeType") computeType: computeType,
@as("UserStorage") userStorage: userStorage,
@as("RootStorage") rootStorage: rootStorage,
@as("ImageId") imageId: workspaceImageId,
@as("Description") description: description,
@as("Owner") owner: bundleOwner,
@as("Name") name: nonEmptyString,
@as("BundleId") bundleId: bundleId
}
type terminateWorkspaceRequests = array<terminateRequest>
type tagList = array<tag>
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
@as("ClientProperties") clientProperties: clientProperties,
@as("ResourceId") resourceId: nonEmptyString
}
type accountModificationList = array<accountModification>
type workspacesIpGroup = {
@as("userRules") userRules: ipRuleList,
@as("groupDesc") groupDesc: ipGroupDesc,
@as("groupName") groupName: ipGroupName,
@as("groupId") groupId: ipGroupId
}
type workspaceRequest = {
@as("Tags") tags: tagList,
@as("WorkspaceProperties") workspaceProperties: workspaceProperties,
@as("RootVolumeEncryptionEnabled") rootVolumeEncryptionEnabled: booleanObject,
@as("UserVolumeEncryptionEnabled") userVolumeEncryptionEnabled: booleanObject,
@as("VolumeEncryptionKey") volumeEncryptionKey: volumeEncryptionKey,
@as("BundleId") bundleId: option<bundleId>,
@as("UserName") userName: option<userName>,
@as("DirectoryId") directoryId: option<directoryId>
}
type workspaceImageList = array<workspaceImage>
type workspace = {
@as("ModificationStates") modificationStates: modificationStateList,
@as("WorkspaceProperties") workspaceProperties: workspaceProperties,
@as("RootVolumeEncryptionEnabled") rootVolumeEncryptionEnabled: booleanObject,
@as("UserVolumeEncryptionEnabled") userVolumeEncryptionEnabled: booleanObject,
@as("VolumeEncryptionKey") volumeEncryptionKey: volumeEncryptionKey,
@as("ComputerName") computerName: computerName,
@as("ErrorCode") errorCode: workspaceErrorCode,
@as("ErrorMessage") errorMessage: description,
@as("SubnetId") subnetId: subnetId,
@as("BundleId") bundleId: bundleId,
@as("State") state: workspaceState,
@as("IpAddress") ipAddress: ipAddress,
@as("UserName") userName: userName,
@as("DirectoryId") directoryId: directoryId,
@as("WorkspaceId") workspaceId: workspaceId
}
type directoryList = array<workspaceDirectory>
type connectionAlias = {
@as("Associations") associations: connectionAliasAssociationList,
@as("OwnerAccountId") ownerAccountId: awsAccount,
@as("State") state: connectionAliasState,
@as("AliasId") aliasId: connectionAliasId,
@as("ConnectionString") connectionString: connectionString
}
type clientPropertiesList = array<clientPropertiesResult>
type bundleList = array<workspaceBundle>
type workspacesIpGroupsList = array<workspacesIpGroup>
type workspaceRequestList = array<workspaceRequest>
type workspaceList = array<workspace>
type failedCreateWorkspaceRequest = {
@as("ErrorMessage") errorMessage: description,
@as("ErrorCode") errorCode: errorType,
@as("WorkspaceRequest") workspaceRequest: workspaceRequest
}
type connectionAliasList = array<connectionAlias>
type failedCreateWorkspaceRequests = array<failedCreateWorkspaceRequest>
type clientType;
@module("@aws-sdk/client-workspaces") @new external createClient: unit => clientType = "WorkSpacesClient";
module UpdateWorkspaceImagePermission = {
  type t;
  type request = {
@as("SharedAccountId") sharedAccountId: option<awsAccount>,
@as("AllowCopyImage") allowCopyImage: option<booleanObject>,
@as("ImageId") imageId: option<workspaceImageId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "UpdateWorkspaceImagePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateWorkspaceBundle = {
  type t;
  type request = {
@as("ImageId") imageId: workspaceImageId,
@as("BundleId") bundleId: bundleId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "UpdateWorkspaceBundleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreWorkspace = {
  type t;
  type request = {
@as("WorkspaceId") workspaceId: option<workspaceId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "RestoreWorkspaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyWorkspaceState = {
  type t;
  type request = {
@as("WorkspaceState") workspaceState: option<targetWorkspaceState>,
@as("WorkspaceId") workspaceId: option<workspaceId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyWorkspaceStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyAccount = {
  type t;
  type request = {
@as("DedicatedTenancyManagementCidrRange") dedicatedTenancyManagementCidrRange: dedicatedTenancyManagementCidrRange,
@as("DedicatedTenancySupport") dedicatedTenancySupport: dedicatedTenancySupportEnum
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MigrateWorkspace = {
  type t;
  type request = {
@as("BundleId") bundleId: option<bundleId>,
@as("SourceWorkspaceId") sourceWorkspaceId: option<workspaceId>
}
  type response = {
@as("TargetWorkspaceId") targetWorkspaceId: workspaceId,
@as("SourceWorkspaceId") sourceWorkspaceId: workspaceId
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "MigrateWorkspaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateConnectionAlias = {
  type t;
  type request = {
@as("AliasId") aliasId: option<connectionAliasId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DisassociateConnectionAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccount = {
  type t;
  type request = unit
  type response = {
@as("DedicatedTenancyManagementCidrRange") dedicatedTenancyManagementCidrRange: dedicatedTenancyManagementCidrRange,
@as("DedicatedTenancySupport") dedicatedTenancySupport: dedicatedTenancySupportResultEnum
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterWorkspaceDirectory = {
  type t;
  type request = {
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeregisterWorkspaceDirectoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWorkspaceImage = {
  type t;
  type request = {
@as("ImageId") imageId: option<workspaceImageId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeleteWorkspaceImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWorkspaceBundle = {
  type t;
  type request = {
@as("BundleId") bundleId: bundleId
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeleteWorkspaceBundleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteIpGroup = {
  type t;
  type request = {
@as("GroupId") groupId: option<ipGroupId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeleteIpGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConnectionAlias = {
  type t;
  type request = {
@as("AliasId") aliasId: option<connectionAliasId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeleteConnectionAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateConnectionAlias = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<nonEmptyString>,
@as("AliasId") aliasId: option<connectionAliasId>
}
  type response = {
@as("ConnectionIdentifier") connectionIdentifier: connectionIdentifier
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "AssociateConnectionAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConnectionAliasPermission = {
  type t;
  type request = {
@as("ConnectionAliasPermission") connectionAliasPermission: option<connectionAliasPermission>,
@as("AliasId") aliasId: option<connectionAliasId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "UpdateConnectionAliasPermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeIpRules = {
  type t;
  type request = {
@as("UserRules") userRules: option<ipRevokedRuleList>,
@as("GroupId") groupId: option<ipGroupId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "RevokeIpRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyWorkspaceProperties = {
  type t;
  type request = {
@as("WorkspaceProperties") workspaceProperties: option<workspaceProperties>,
@as("WorkspaceId") workspaceId: option<workspaceId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyWorkspacePropertiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyWorkspaceCreationProperties = {
  type t;
  type request = {
@as("WorkspaceCreationProperties") workspaceCreationProperties: option<workspaceCreationProperties>,
@as("ResourceId") resourceId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyWorkspaceCreationPropertiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyWorkspaceAccessProperties = {
  type t;
  type request = {
@as("WorkspaceAccessProperties") workspaceAccessProperties: option<workspaceAccessProperties>,
@as("ResourceId") resourceId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyWorkspaceAccessPropertiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifySelfservicePermissions = {
  type t;
  type request = {
@as("SelfservicePermissions") selfservicePermissions: option<selfservicePermissions>,
@as("ResourceId") resourceId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifySelfservicePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyClientProperties = {
  type t;
  type request = {
@as("ClientProperties") clientProperties: option<clientProperties>,
@as("ResourceId") resourceId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ModifyClientPropertiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAvailableManagementCidrRanges = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: managementCidrRangeMaxResults,
@as("ManagementCidrRangeConstraint") managementCidrRangeConstraint: option<managementCidrRangeConstraint>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("ManagementCidrRanges") managementCidrRanges: dedicatedTenancyCidrRangeList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ListAvailableManagementCidrRangesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateIpGroups = {
  type t;
  type request = {
@as("GroupIds") groupIds: option<ipGroupIdList>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DisassociateIpGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceId") resourceId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DeleteTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateIpGroups = {
  type t;
  type request = {
@as("GroupIds") groupIds: option<ipGroupIdList>,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "AssociateIpGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRulesOfIpGroup = {
  type t;
  type request = {
@as("UserRules") userRules: option<ipRuleList>,
@as("GroupId") groupId: option<ipGroupId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "UpdateRulesOfIpGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TerminateWorkspaces = {
  type t;
  type request = {
@as("TerminateWorkspaceRequests") terminateWorkspaceRequests: option<terminateWorkspaceRequests>
}
  type response = {
@as("FailedRequests") failedRequests: failedTerminateWorkspaceRequests
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "TerminateWorkspacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopWorkspaces = {
  type t;
  type request = {
@as("StopWorkspaceRequests") stopWorkspaceRequests: option<stopWorkspaceRequests>
}
  type response = {
@as("FailedRequests") failedRequests: failedStopWorkspaceRequests
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "StopWorkspacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartWorkspaces = {
  type t;
  type request = {
@as("StartWorkspaceRequests") startWorkspaceRequests: option<startWorkspaceRequests>
}
  type response = {
@as("FailedRequests") failedRequests: failedStartWorkspaceRequests
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "StartWorkspacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterWorkspaceDirectory = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Tenancy") tenancy: tenancy,
@as("EnableSelfService") enableSelfService: booleanObject,
@as("EnableWorkDocs") enableWorkDocs: option<booleanObject>,
@as("SubnetIds") subnetIds: subnetIds,
@as("DirectoryId") directoryId: option<directoryId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "RegisterWorkspaceDirectoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RebuildWorkspaces = {
  type t;
  type request = {
@as("RebuildWorkspaceRequests") rebuildWorkspaceRequests: option<rebuildWorkspaceRequests>
}
  type response = {
@as("FailedRequests") failedRequests: failedRebuildWorkspaceRequests
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "RebuildWorkspacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RebootWorkspaces = {
  type t;
  type request = {
@as("RebootWorkspaceRequests") rebootWorkspaceRequests: option<rebootWorkspaceRequests>
}
  type response = {
@as("FailedRequests") failedRequests: failedRebootWorkspaceRequests
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "RebootWorkspacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportWorkspaceImage = {
  type t;
  type request = {
@as("Applications") applications: applicationList,
@as("Tags") tags: tagList,
@as("ImageDescription") imageDescription: option<workspaceImageDescription>,
@as("ImageName") imageName: option<workspaceImageName>,
@as("IngestionProcess") ingestionProcess: option<workspaceImageIngestionProcess>,
@as("Ec2ImageId") ec2ImageId: option<ec2ImageId>
}
  type response = {
@as("ImageId") imageId: workspaceImageId
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "ImportWorkspaceImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspacesConnectionStatus = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("WorkspaceIds") workspaceIds: workspaceIdList
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("WorkspacesConnectionStatus") workspacesConnectionStatus: workspaceConnectionStatusList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspacesConnectionStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaceSnapshots = {
  type t;
  type request = {
@as("WorkspaceId") workspaceId: option<workspaceId>
}
  type response = {
@as("RestoreSnapshots") restoreSnapshots: snapshotList,
@as("RebuildSnapshots") rebuildSnapshots: snapshotList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspaceSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaceImagePermissions = {
  type t;
  type request = {
@as("MaxResults") maxResults: limit,
@as("NextToken") nextToken: paginationToken,
@as("ImageId") imageId: option<workspaceImageId>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("ImagePermissions") imagePermissions: imagePermissions,
@as("ImageId") imageId: workspaceImageId
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspaceImagePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<nonEmptyString>
}
  type response = {
@as("TagList") tagList: tagList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectionAliasPermissions = {
  type t;
  type request = {
@as("MaxResults") maxResults: limit,
@as("NextToken") nextToken: paginationToken,
@as("AliasId") aliasId: option<connectionAliasId>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("ConnectionAliasPermissions") connectionAliasPermissions: connectionAliasPermissions,
@as("AliasId") aliasId: connectionAliasId
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeConnectionAliasPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountModifications = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("AccountModifications") accountModifications: accountModificationList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeAccountModificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWorkspaceBundle = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("RootStorage") rootStorage: rootStorage,
@as("UserStorage") userStorage: option<userStorage>,
@as("ComputeType") computeType: option<computeType>,
@as("ImageId") imageId: option<workspaceImageId>,
@as("BundleDescription") bundleDescription: option<workspaceBundleDescription>,
@as("BundleName") bundleName: option<workspaceBundleName>
}
  type response = {
@as("WorkspaceBundle") workspaceBundle: workspaceBundle
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CreateWorkspaceBundleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTags = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceId") resourceId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CreateTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateIpGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("UserRules") userRules: ipRuleList,
@as("GroupDesc") groupDesc: ipGroupDesc,
@as("GroupName") groupName: option<ipGroupName>
}
  type response = {
@as("GroupId") groupId: ipGroupId
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CreateIpGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConnectionAlias = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ConnectionString") connectionString: option<connectionString>
}
  type response = {
@as("AliasId") aliasId: connectionAliasId
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CreateConnectionAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyWorkspaceImage = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("SourceRegion") sourceRegion: option<region>,
@as("SourceImageId") sourceImageId: option<workspaceImageId>,
@as("Description") description: workspaceImageDescription,
@as("Name") name: option<workspaceImageName>
}
  type response = {
@as("ImageId") imageId: workspaceImageId
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CopyWorkspaceImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AuthorizeIpRules = {
  type t;
  type request = {
@as("UserRules") userRules: option<ipRuleList>,
@as("GroupId") groupId: option<ipGroupId>
}
  type response = unit
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "AuthorizeIpRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaceImages = {
  type t;
  type request = {
@as("MaxResults") maxResults: limit,
@as("NextToken") nextToken: paginationToken,
@as("ImageType") imageType: imageType,
@as("ImageIds") imageIds: workspaceImageIdList
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Images") images: workspaceImageList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspaceImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaceDirectories = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("Limit") limit: limit,
@as("DirectoryIds") directoryIds: directoryIdList
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Directories") directories: directoryList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspaceDirectoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaceBundles = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("Owner") owner: bundleOwner,
@as("BundleIds") bundleIds: bundleIdList
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Bundles") bundles: bundleList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspaceBundlesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClientProperties = {
  type t;
  type request = {
@as("ResourceIds") resourceIds: option<resourceIdList>
}
  type response = {
@as("ClientPropertiesList") clientPropertiesList: clientPropertiesList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeClientPropertiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkspaces = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("Limit") limit: limit,
@as("BundleId") bundleId: bundleId,
@as("UserName") userName: userName,
@as("DirectoryId") directoryId: directoryId,
@as("WorkspaceIds") workspaceIds: workspaceIdList
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Workspaces") workspaces: workspaceList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeWorkspacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIpGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: limit,
@as("NextToken") nextToken: paginationToken,
@as("GroupIds") groupIds: ipGroupIdList
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Result") result: workspacesIpGroupsList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeIpGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectionAliases = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("Limit") limit: limit,
@as("ResourceId") resourceId: nonEmptyString,
@as("AliasIds") aliasIds: connectionAliasIdList
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("ConnectionAliases") connectionAliases: connectionAliasList
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "DescribeConnectionAliasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWorkspaces = {
  type t;
  type request = {
@as("Workspaces") workspaces: option<workspaceRequestList>
}
  type response = {
@as("PendingRequests") pendingRequests: workspaceList,
@as("FailedRequests") failedRequests: failedCreateWorkspaceRequests
}
  @module("@aws-sdk/client-workspaces") @new external new_: (request) => t = "CreateWorkspacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
