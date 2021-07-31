type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __string = string
type windowsMountDrive = string
type amazonawsTimestamp = Js.Date.t;
type studioStatusCode = [@as("AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS") #AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS | @as("AWS_SSO_CONFIGURATION_REPAIRED") #AWS_SSO_CONFIGURATION_REPAIRED | @as("ENCRYPTION_KEY_ACCESS_DENIED") #ENCRYPTION_KEY_ACCESS_DENIED | @as("ENCRYPTION_KEY_NOT_FOUND") #ENCRYPTION_KEY_NOT_FOUND | @as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("ROLE_COULD_NOT_BE_ASSUMED") #ROLE_COULD_NOT_BE_ASSUMED | @as("ROLE_NOT_OWNED_BY_STUDIO_OWNER") #ROLE_NOT_OWNED_BY_STUDIO_OWNER | @as("AWS_SSO_ACCESS_DENIED") #AWS_SSO_ACCESS_DENIED | @as("AWS_SSO_NOT_ENABLED") #AWS_SSO_NOT_ENABLED | @as("STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED") #STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED | @as("STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED") #STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED | @as("STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED") #STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED | @as("STUDIO_DELETE_IN_PROGRESS") #STUDIO_DELETE_IN_PROGRESS | @as("STUDIO_UPDATE_IN_PROGRESS") #STUDIO_UPDATE_IN_PROGRESS | @as("STUDIO_CREATE_IN_PROGRESS") #STUDIO_CREATE_IN_PROGRESS | @as("STUDIO_UPDATED") #STUDIO_UPDATED | @as("STUDIO_DELETED") #STUDIO_DELETED | @as("STUDIO_CREATED") #STUDIO_CREATED]
type studioState = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETED") #DELETED | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("READY") #READY | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type studioPersona = [@as("ADMINISTRATOR") #ADMINISTRATOR]
type studioName = string
type studioEncryptionConfigurationKeyType = [@as("CUSTOMER_MANAGED_KEY") #CUSTOMER_MANAGED_KEY | @as("AWS_OWNED_KEY") #AWS_OWNED_KEY]
type studioEncryptionConfigurationKeyArn = string
type studioDisplayName = string
type studioComponentType = [@as("CUSTOM") #CUSTOM | @as("LICENSE_SERVICE") #LICENSE_SERVICE | @as("COMPUTE_FARM") #COMPUTE_FARM | @as("SHARED_FILE_SYSTEM") #SHARED_FILE_SYSTEM | @as("ACTIVE_DIRECTORY") #ACTIVE_DIRECTORY]
type studioComponentSubtype = [@as("CUSTOM") #CUSTOM | @as("AMAZON_FSX_FOR_LUSTRE") #AMAZON_FSX_FOR_LUSTRE | @as("AMAZON_FSX_FOR_WINDOWS") #AMAZON_FSX_FOR_WINDOWS | @as("AWS_MANAGED_MICROSOFT_AD") #AWS_MANAGED_MICROSOFT_AD]
type studioComponentStatusCode = [@as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("STUDIO_COMPONENT_DELETE_IN_PROGRESS") #STUDIO_COMPONENT_DELETE_IN_PROGRESS | @as("STUDIO_COMPONENT_UPDATE_IN_PROGRESS") #STUDIO_COMPONENT_UPDATE_IN_PROGRESS | @as("STUDIO_COMPONENT_CREATE_IN_PROGRESS") #STUDIO_COMPONENT_CREATE_IN_PROGRESS | @as("ENCRYPTION_KEY_NOT_FOUND") #ENCRYPTION_KEY_NOT_FOUND | @as("ENCRYPTION_KEY_ACCESS_DENIED") #ENCRYPTION_KEY_ACCESS_DENIED | @as("STUDIO_COMPONENT_DELETED") #STUDIO_COMPONENT_DELETED | @as("STUDIO_COMPONENT_UPDATED") #STUDIO_COMPONENT_UPDATED | @as("STUDIO_COMPONENT_CREATED") #STUDIO_COMPONENT_CREATED | @as("ACTIVE_DIRECTORY_ALREADY_EXISTS") #ACTIVE_DIRECTORY_ALREADY_EXISTS]
type studioComponentState = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETED") #DELETED | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("READY") #READY | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type studioComponentName = string
type studioComponentInitializationScriptRunContext = [@as("USER_INITIALIZATION") #USER_INITIALIZATION | @as("SYSTEM_INITIALIZATION") #SYSTEM_INITIALIZATION]
type studioComponentInitializationScriptContent = string
type studioComponentId = string
type studioComponentDescription = string
type streamingSessionStreamStatusCode = [@as("NETWORK_CONNECTION_ERROR") #NETWORK_CONNECTION_ERROR | @as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("STREAM_DELETED") #STREAM_DELETED | @as("STREAM_DELETE_IN_PROGRESS") #STREAM_DELETE_IN_PROGRESS | @as("STREAM_READY") #STREAM_READY | @as("STREAM_CREATE_IN_PROGRESS") #STREAM_CREATE_IN_PROGRESS]
type streamingSessionStreamState = [@as("DELETE_FAILED") #DELETE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("DELETED") #DELETED | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS | @as("READY") #READY]
type streamingSessionStreamExpirationInSeconds = int;
type streamingSessionStatusCode = [@as("NETWORK_INTERFACE_ERROR") #NETWORK_INTERFACE_ERROR | @as("DECRYPT_STREAMING_IMAGE_ERROR") #DECRYPT_STREAMING_IMAGE_ERROR | @as("INITIALIZATION_SCRIPT_ERROR") #INITIALIZATION_SCRIPT_ERROR | @as("NETWORK_CONNECTION_ERROR") #NETWORK_CONNECTION_ERROR | @as("ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR") #ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR | @as("INSUFFICIENT_CAPACITY") #INSUFFICIENT_CAPACITY | @as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("STREAMING_SESSION_DELETE_IN_PROGRESS") #STREAMING_SESSION_DELETE_IN_PROGRESS | @as("STREAMING_SESSION_CREATE_IN_PROGRESS") #STREAMING_SESSION_CREATE_IN_PROGRESS | @as("STREAMING_SESSION_DELETED") #STREAMING_SESSION_DELETED | @as("STREAMING_SESSION_READY") #STREAMING_SESSION_READY]
type streamingSessionState = [@as("DELETE_FAILED") #DELETE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("DELETED") #DELETED | @as("READY") #READY | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type streamingInstanceType = [@as("g4dn.16xlarge") #g4dn_16xlarge | @as("g4dn.12xlarge") #g4dn_12xlarge | @as("g4dn.8xlarge") #g4dn_8xlarge | @as("g4dn.4xlarge") #g4dn_4xlarge | @as("g4dn.2xlarge") #g4dn_2xlarge | @as("g4dn.xlarge") #g4dn_xlarge]
type streamingImageStatusCode = [@as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("STREAMING_IMAGE_UPDATE_IN_PROGRESS") #STREAMING_IMAGE_UPDATE_IN_PROGRESS | @as("STREAMING_IMAGE_DELETED") #STREAMING_IMAGE_DELETED | @as("STREAMING_IMAGE_DELETE_IN_PROGRESS") #STREAMING_IMAGE_DELETE_IN_PROGRESS | @as("STREAMING_IMAGE_READY") #STREAMING_IMAGE_READY | @as("STREAMING_IMAGE_CREATE_IN_PROGRESS") #STREAMING_IMAGE_CREATE_IN_PROGRESS]
type streamingImageState = [@as("DELETE_FAILED") #DELETE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("UPDATE_FAILED") #UPDATE_FAILED | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("DELETED") #DELETED | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("READY") #READY | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type streamingImageSessionId = string
type streamingImagePlatform = string
type streamingImageOwner = string
type streamingImageName = string
type streamingImageId = string
type streamingImageEncryptionConfigurationKeyType = [@as("CUSTOMER_MANAGED_KEY") #CUSTOMER_MANAGED_KEY]
type streamingImageEncryptionConfigurationKeyArn = string
type streamingImageDescription = string
type streamingClipboardMode = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type streamConfigurationMaxSessionLengthInMinutes = int;
type securityGroupId = string
type scriptParameterValue = string
type scriptParameterKey = string
type region = string
type maxResults = int;
type linuxMountPoint = string
type launchPurpose = string
type launchProfileStatusCode = [@as("INVALID_SUBNETS_PROVIDED") #INVALID_SUBNETS_PROVIDED | @as("ENCRYPTION_KEY_NOT_FOUND") #ENCRYPTION_KEY_NOT_FOUND | @as("ENCRYPTION_KEY_ACCESS_DENIED") #ENCRYPTION_KEY_ACCESS_DENIED | @as("LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED") #LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED | @as("STREAMING_IMAGE_NOT_READY") #STREAMING_IMAGE_NOT_READY | @as("STREAMING_IMAGE_NOT_FOUND") #STREAMING_IMAGE_NOT_FOUND | @as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("LAUNCH_PROFILE_DELETE_IN_PROGRESS") #LAUNCH_PROFILE_DELETE_IN_PROGRESS | @as("LAUNCH_PROFILE_UPDATE_IN_PROGRESS") #LAUNCH_PROFILE_UPDATE_IN_PROGRESS | @as("LAUNCH_PROFILE_CREATE_IN_PROGRESS") #LAUNCH_PROFILE_CREATE_IN_PROGRESS | @as("LAUNCH_PROFILE_DELETED") #LAUNCH_PROFILE_DELETED | @as("LAUNCH_PROFILE_UPDATED") #LAUNCH_PROFILE_UPDATED | @as("LAUNCH_PROFILE_CREATED") #LAUNCH_PROFILE_CREATED]
type launchProfileState = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETED") #DELETED | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("READY") #READY | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type launchProfileProtocolVersion = string
type launchProfilePlatform = [@as("WINDOWS") #WINDOWS | @as("LINUX") #LINUX]
type launchProfilePersona = [@as("USER") #USER]
type launchProfileName = string
type launchProfileId = string
type launchProfileDescription = string
type eulaName = string
type eulaId = string
type eulaAcceptanceId = string
type eC2SubnetId = string
type eC2ImageId = string
type directoryId = string
type clientToken = string
type activeDirectoryOrganizationalUnitDistinguishedName = string
type activeDirectoryDnsIpAddress = string
type activeDirectoryComputerAttributeValue = string
type activeDirectoryComputerAttributeName = string
type multiValueQueryStringList = array<__string>
type tags = Js.Dict.t< __string>
type studioMembership = {
@as("principalId") principalId: __string,
@as("persona") persona: studioPersona,
@as("identityStoreId") identityStoreId: __string
}
type studioEncryptionConfiguration = {
@as("keyType") keyType: option<studioEncryptionConfigurationKeyType>,
@as("keyArn") keyArn: studioEncryptionConfigurationKeyArn
}
type studioComponentSummary = {
@as("updatedBy") updatedBy: __string,
@as("updatedAt") updatedAt: amazonawsTimestamp,
@as("type") type_: studioComponentType,
@as("subtype") subtype: studioComponentSubtype,
@as("studioComponentId") studioComponentId: studioComponentId,
@as("name") name: studioComponentName,
@as("description") description: studioComponentDescription,
@as("createdBy") createdBy: __string,
@as("createdAt") createdAt: amazonawsTimestamp
}
type studioComponentSecurityGroupIdList = array<securityGroupId>
type studioComponentInitializationScript = {
@as("script") script: studioComponentInitializationScriptContent,
@as("runContext") runContext: studioComponentInitializationScriptRunContext,
@as("platform") platform: launchProfilePlatform,
@as("launchProfileProtocolVersion") launchProfileProtocolVersion: launchProfileProtocolVersion
}
type streamingSessionStream = {
@as("url") url: __string,
@as("streamId") streamId: __string,
@as("statusCode") statusCode: streamingSessionStreamStatusCode,
@as("state") state: streamingSessionStreamState,
@as("expiresAt") expiresAt: amazonawsTimestamp,
@as("createdBy") createdBy: __string,
@as("createdAt") createdAt: amazonawsTimestamp
}
type streamingInstanceTypeList = array<streamingInstanceType>
type streamingImageIdList = array<streamingImageId>
type streamingImageEncryptionConfiguration = {
@as("keyType") keyType: option<streamingImageEncryptionConfigurationKeyType>,
@as("keyArn") keyArn: streamingImageEncryptionConfigurationKeyArn
}
type sharedFileSystemConfiguration = {
@as("windowsMountDrive") windowsMountDrive: windowsMountDrive,
@as("shareName") shareName: __string,
@as("linuxMountPoint") linuxMountPoint: linuxMountPoint,
@as("fileSystemId") fileSystemId: __string,
@as("endpoint") endpoint: __string
}
type scriptParameterKeyValue = {
@as("value") value: scriptParameterValue,
@as("key") key: scriptParameterKey
}
type newStudioMember = {
@as("principalId") principalId: option<__string>,
@as("persona") persona: option<studioPersona>
}
type newLaunchProfileMember = {
@as("principalId") principalId: option<__string>,
@as("persona") persona: option<launchProfilePersona>
}
type licenseServiceConfiguration = {
@as("endpoint") endpoint: __string
}
type launchProfileStudioComponentIdList = array<__string>
type launchProfileSecurityGroupIdList = array<securityGroupId>
type launchProfileProtocolVersionList = array<launchProfileProtocolVersion>
type launchProfileMembership = {
@as("principalId") principalId: __string,
@as("persona") persona: launchProfilePersona,
@as("identityStoreId") identityStoreId: __string
}
type launchProfileInitializationScript = {
@as("studioComponentName") studioComponentName: studioComponentName,
@as("studioComponentId") studioComponentId: studioComponentId,
@as("script") script: studioComponentInitializationScriptContent
}
type exceptionContext = Js.Dict.t< __string>
type eulaIdList = array<__string>
type eulaAcceptance = {
@as("eulaId") eulaId: eulaId,
@as("eulaAcceptanceId") eulaAcceptanceId: eulaAcceptanceId,
@as("accepteeId") accepteeId: __string,
@as("acceptedBy") acceptedBy: __string,
@as("acceptedAt") acceptedAt: amazonawsTimestamp
}
type eula = {
@as("updatedAt") updatedAt: amazonawsTimestamp,
@as("name") name: eulaName,
@as("eulaId") eulaId: eulaId,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("content") content: __string
}
type eC2SubnetIdList = array<eC2SubnetId>
type computeFarmConfiguration = {
@as("endpoint") endpoint: __string,
@as("activeDirectoryUser") activeDirectoryUser: __string
}
type activeDirectoryDnsIpAddressList = array<activeDirectoryDnsIpAddress>
type activeDirectoryComputerAttribute = {
@as("value") value: activeDirectoryComputerAttributeValue,
@as("name") name: activeDirectoryComputerAttributeName
}
type studioMembershipList = array<studioMembership>
type studioComponentSummaryList = array<studioComponentSummary>
type studioComponentScriptParameterKeyValueList = array<scriptParameterKeyValue>
type studioComponentInitializationScriptList = array<studioComponentInitializationScript>
type studio = {
@as("userRoleArn") userRoleArn: __string,
@as("updatedAt") updatedAt: amazonawsTimestamp,
@as("tags") tags: tags,
@as("studioUrl") studioUrl: __string,
@as("studioName") studioName: studioName,
@as("studioId") studioId: __string,
@as("studioEncryptionConfiguration") studioEncryptionConfiguration: studioEncryptionConfiguration,
@as("statusMessage") statusMessage: __string,
@as("statusCode") statusCode: studioStatusCode,
@as("state") state: studioState,
@as("ssoClientId") ssoClientId: __string,
@as("homeRegion") homeRegion: region,
@as("displayName") displayName: studioDisplayName,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("arn") arn: __string,
@as("adminRoleArn") adminRoleArn: __string
}
type streamingSession = {
@as("updatedBy") updatedBy: __string,
@as("updatedAt") updatedAt: amazonawsTimestamp,
@as("terminateAt") terminateAt: amazonawsTimestamp,
@as("tags") tags: tags,
@as("streamingImageId") streamingImageId: streamingImageId,
@as("statusMessage") statusMessage: __string,
@as("statusCode") statusCode: streamingSessionStatusCode,
@as("state") state: streamingSessionState,
@as("sessionId") sessionId: streamingImageSessionId,
@as("launchProfileId") launchProfileId: __string,
@as("ec2InstanceType") ec2InstanceType: __string,
@as("createdBy") createdBy: __string,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("arn") arn: __string
}
type streamingImage = {
@as("tags") tags: tags,
@as("streamingImageId") streamingImageId: streamingImageId,
@as("statusMessage") statusMessage: __string,
@as("statusCode") statusCode: streamingImageStatusCode,
@as("state") state: streamingImageState,
@as("platform") platform: streamingImagePlatform,
@as("owner") owner: streamingImageOwner,
@as("name") name: streamingImageName,
@as("eulaIds") eulaIds: eulaIdList,
@as("encryptionConfiguration") encryptionConfiguration: streamingImageEncryptionConfiguration,
@as("ec2ImageId") ec2ImageId: eC2ImageId,
@as("description") description: streamingImageDescription,
@as("arn") arn: __string
}
type streamConfigurationCreate = {
@as("streamingImageIds") streamingImageIds: option<streamingImageIdList>,
@as("maxSessionLengthInMinutes") maxSessionLengthInMinutes: streamConfigurationMaxSessionLengthInMinutes,
@as("ec2InstanceTypes") ec2InstanceTypes: option<streamingInstanceTypeList>,
@as("clipboardMode") clipboardMode: option<streamingClipboardMode>
}
type streamConfiguration = {
@as("streamingImageIds") streamingImageIds: streamingImageIdList,
@as("maxSessionLengthInMinutes") maxSessionLengthInMinutes: streamConfigurationMaxSessionLengthInMinutes,
@as("ec2InstanceTypes") ec2InstanceTypes: streamingInstanceTypeList,
@as("clipboardMode") clipboardMode: streamingClipboardMode
}
type newStudioMemberList = array<newStudioMember>
type newLaunchProfileMemberList = array<newLaunchProfileMember>
type launchProfileMembershipList = array<launchProfileMembership>
type launchProfileInitializationScriptList = array<launchProfileInitializationScript>
type eulaList = array<eula>
type eulaAcceptanceList = array<eulaAcceptance>
type activeDirectoryComputerAttributeList = array<activeDirectoryComputerAttribute>
type studioList = array<studio>
type streamingSessionList = array<streamingSession>
type streamingImageList = array<streamingImage>
type launchProfileInitializationActiveDirectory = {
@as("studioComponentName") studioComponentName: studioComponentName,
@as("studioComponentId") studioComponentId: studioComponentId,
@as("organizationalUnitDistinguishedName") organizationalUnitDistinguishedName: activeDirectoryOrganizationalUnitDistinguishedName,
@as("dnsIpAddresses") dnsIpAddresses: activeDirectoryDnsIpAddressList,
@as("directoryName") directoryName: __string,
@as("directoryId") directoryId: directoryId,
@as("computerAttributes") computerAttributes: activeDirectoryComputerAttributeList
}
type launchProfile = {
@as("updatedBy") updatedBy: __string,
@as("updatedAt") updatedAt: amazonawsTimestamp,
@as("tags") tags: tags,
@as("studioComponentIds") studioComponentIds: launchProfileStudioComponentIdList,
@as("streamConfiguration") streamConfiguration: streamConfiguration,
@as("statusMessage") statusMessage: __string,
@as("statusCode") statusCode: launchProfileStatusCode,
@as("state") state: launchProfileState,
@as("name") name: launchProfileName,
@as("launchProfileProtocolVersions") launchProfileProtocolVersions: launchProfileProtocolVersionList,
@as("launchProfileId") launchProfileId: launchProfileId,
@as("ec2SubnetIds") ec2SubnetIds: eC2SubnetIdList,
@as("description") description: launchProfileDescription,
@as("createdBy") createdBy: __string,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("arn") arn: __string
}
type activeDirectoryConfiguration = {
@as("organizationalUnitDistinguishedName") organizationalUnitDistinguishedName: activeDirectoryOrganizationalUnitDistinguishedName,
@as("directoryId") directoryId: directoryId,
@as("computerAttributes") computerAttributes: activeDirectoryComputerAttributeList
}
type studioComponentConfiguration = {
@as("sharedFileSystemConfiguration") sharedFileSystemConfiguration: sharedFileSystemConfiguration,
@as("licenseServiceConfiguration") licenseServiceConfiguration: licenseServiceConfiguration,
@as("computeFarmConfiguration") computeFarmConfiguration: computeFarmConfiguration,
@as("activeDirectoryConfiguration") activeDirectoryConfiguration: activeDirectoryConfiguration
}
type launchProfileList = array<launchProfile>
type launchProfileInitialization = {
@as("userInitializationScripts") userInitializationScripts: launchProfileInitializationScriptList,
@as("systemInitializationScripts") systemInitializationScripts: launchProfileInitializationScriptList,
@as("platform") platform: launchProfilePlatform,
@as("name") name: launchProfileName,
@as("launchPurpose") launchPurpose: launchPurpose,
@as("launchProfileProtocolVersion") launchProfileProtocolVersion: launchProfileProtocolVersion,
@as("launchProfileId") launchProfileId: launchProfileId,
@as("ec2SecurityGroupIds") ec2SecurityGroupIds: launchProfileSecurityGroupIdList,
@as("activeDirectory") activeDirectory: launchProfileInitializationActiveDirectory
}
type studioComponent = {
@as("updatedBy") updatedBy: __string,
@as("updatedAt") updatedAt: amazonawsTimestamp,
@as("type") type_: studioComponentType,
@as("tags") tags: tags,
@as("subtype") subtype: studioComponentSubtype,
@as("studioComponentId") studioComponentId: studioComponentId,
@as("statusMessage") statusMessage: __string,
@as("statusCode") statusCode: studioComponentStatusCode,
@as("state") state: studioComponentState,
@as("scriptParameters") scriptParameters: studioComponentScriptParameterKeyValueList,
@as("name") name: studioComponentName,
@as("initializationScripts") initializationScripts: studioComponentInitializationScriptList,
@as("ec2SecurityGroupIds") ec2SecurityGroupIds: studioComponentSecurityGroupIdList,
@as("description") description: studioComponentDescription,
@as("createdBy") createdBy: __string,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("configuration") configuration: studioComponentConfiguration,
@as("arn") arn: __string
}
type studioComponentList = array<studioComponent>
type clientType;
@module("@aws-sdk/client-nimble") @new external createClient: unit => clientType = "NimbleClient";
module UpdateLaunchProfileMember = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("principalId") principalId: option<__string>,
@as("persona") persona: option<launchProfilePersona>,
@as("launchProfileId") launchProfileId: option<__string>,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("member") member: launchProfileMembership
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UpdateLaunchProfileMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<multiValueQueryStringList>,
@as("resourceArn") resourceArn: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("resourceArn") resourceArn: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<__string>
}
  type response = {
@as("tags") tags: tags
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStudioMember = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("principalId") principalId: option<__string>
}
  type response = {
@as("member") member: studioMembership
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStudioMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStreamingSessionStream = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("streamId") streamId: option<__string>,
@as("sessionId") sessionId: option<__string>
}
  type response = {
@as("stream") stream: streamingSessionStream
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStreamingSessionStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLaunchProfileMember = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("principalId") principalId: option<__string>,
@as("launchProfileId") launchProfileId: option<__string>
}
  type response = {
@as("member") member: launchProfileMembership
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetLaunchProfileMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEula = {
  type t;
  type request = {
@as("eulaId") eulaId: option<__string>
}
  type response = {
@as("eula") eula: eula
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetEulaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStudioMember = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("principalId") principalId: option<__string>,
@as("clientToken") clientToken: clientToken
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteStudioMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLaunchProfileMember = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("principalId") principalId: option<__string>,
@as("launchProfileId") launchProfileId: option<__string>,
@as("clientToken") clientToken: clientToken
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteLaunchProfileMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStreamingSessionStream = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("sessionId") sessionId: option<__string>,
@as("expirationInSeconds") expirationInSeconds: streamingSessionStreamExpirationInSeconds,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("stream") stream: streamingSessionStream
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateStreamingSessionStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStudio = {
  type t;
  type request = {
@as("userRoleArn") userRoleArn: __string,
@as("studioId") studioId: option<__string>,
@as("displayName") displayName: studioDisplayName,
@as("clientToken") clientToken: clientToken,
@as("adminRoleArn") adminRoleArn: __string
}
  type response = {
@as("studio") studio: studio
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UpdateStudioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStreamingImage = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("streamingImageId") streamingImageId: option<__string>,
@as("name") name: streamingImageName,
@as("description") description: streamingImageDescription,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("streamingImage") streamingImage: streamingImage
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UpdateStreamingImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartStudioSSOConfigurationRepair = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("studio") studio: studio
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "StartStudioSSOConfigurationRepairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutStudioMembers = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("members") members: option<newStudioMemberList>,
@as("identityStoreId") identityStoreId: option<__string>,
@as("clientToken") clientToken: clientToken
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "PutStudioMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutLaunchProfileMembers = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("members") members: option<newLaunchProfileMemberList>,
@as("launchProfileId") launchProfileId: option<__string>,
@as("identityStoreId") identityStoreId: option<__string>,
@as("clientToken") clientToken: clientToken
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "PutLaunchProfileMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStudioMembers = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: __string,
@as("members") members: studioMembershipList
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListStudioMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLaunchProfileMembers = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: maxResults,
@as("launchProfileId") launchProfileId: option<__string>
}
  type response = {
@as("nextToken") nextToken: __string,
@as("members") members: launchProfileMembershipList
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListLaunchProfileMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEulas = {
  type t;
  type request = {
@as("nextToken") nextToken: __string,
@as("eulaIds") eulaIds: multiValueQueryStringList
}
  type response = {
@as("nextToken") nextToken: __string,
@as("eulas") eulas: eulaList
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListEulasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEulaAcceptances = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("nextToken") nextToken: __string,
@as("eulaIds") eulaIds: multiValueQueryStringList
}
  type response = {
@as("nextToken") nextToken: __string,
@as("eulaAcceptances") eulaAcceptances: eulaAcceptanceList
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListEulaAcceptancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStudio = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>
}
  type response = {
@as("studio") studio: studio
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStudioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStreamingSession = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("sessionId") sessionId: option<__string>
}
  type response = {
@as("session") session: streamingSession
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStreamingSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStreamingImage = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("streamingImageId") streamingImageId: option<__string>
}
  type response = {
@as("streamingImage") streamingImage: streamingImage
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStreamingImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStudio = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("studio") studio: studio
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteStudioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStreamingSession = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("sessionId") sessionId: option<__string>,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("session") session: streamingSession
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteStreamingSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStreamingImage = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("streamingImageId") streamingImageId: option<__string>,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("streamingImage") streamingImage: streamingImage
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteStreamingImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStudio = {
  type t;
  type request = {
@as("userRoleArn") userRoleArn: option<__string>,
@as("tags") tags: tags,
@as("studioName") studioName: option<studioName>,
@as("studioEncryptionConfiguration") studioEncryptionConfiguration: studioEncryptionConfiguration,
@as("displayName") displayName: option<studioDisplayName>,
@as("clientToken") clientToken: clientToken,
@as("adminRoleArn") adminRoleArn: option<__string>
}
  type response = {
@as("studio") studio: studio
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateStudioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStreamingSession = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("studioId") studioId: option<__string>,
@as("streamingImageId") streamingImageId: streamingImageId,
@as("launchProfileId") launchProfileId: __string,
@as("ec2InstanceType") ec2InstanceType: streamingInstanceType,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("session") session: streamingSession
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateStreamingSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStreamingImage = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("studioId") studioId: option<__string>,
@as("name") name: option<streamingImageName>,
@as("ec2ImageId") ec2ImageId: option<eC2ImageId>,
@as("description") description: streamingImageDescription,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("streamingImage") streamingImage: streamingImage
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateStreamingImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptEulas = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("eulaIds") eulaIds: eulaIdList,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("eulaAcceptances") eulaAcceptances: eulaAcceptanceList
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "AcceptEulasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLaunchProfile = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("studioComponentIds") studioComponentIds: launchProfileStudioComponentIdList,
@as("streamConfiguration") streamConfiguration: streamConfigurationCreate,
@as("name") name: launchProfileName,
@as("launchProfileProtocolVersions") launchProfileProtocolVersions: launchProfileProtocolVersionList,
@as("launchProfileId") launchProfileId: option<__string>,
@as("description") description: launchProfileDescription,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("launchProfile") launchProfile: launchProfile
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UpdateLaunchProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStudios = {
  type t;
  type request = {
@as("nextToken") nextToken: __string
}
  type response = {
@as("studios") studios: studioList,
@as("nextToken") nextToken: __string
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListStudiosCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStreamingSessions = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("sessionIds") sessionIds: __string,
@as("nextToken") nextToken: __string,
@as("createdBy") createdBy: __string
}
  type response = {
@as("sessions") sessions: streamingSessionList,
@as("nextToken") nextToken: __string
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListStreamingSessionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStreamingImages = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("owner") owner: __string,
@as("nextToken") nextToken: __string
}
  type response = {
@as("streamingImages") streamingImages: streamingImageList,
@as("nextToken") nextToken: __string
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListStreamingImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLaunchProfileDetails = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("launchProfileId") launchProfileId: option<__string>
}
  type response = {
@as("studioComponentSummaries") studioComponentSummaries: studioComponentSummaryList,
@as("streamingImages") streamingImages: streamingImageList,
@as("launchProfile") launchProfile: launchProfile
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetLaunchProfileDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLaunchProfile = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("launchProfileId") launchProfileId: option<__string>
}
  type response = {
@as("launchProfile") launchProfile: launchProfile
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetLaunchProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLaunchProfile = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("launchProfileId") launchProfileId: option<__string>,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("launchProfile") launchProfile: launchProfile
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteLaunchProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLaunchProfile = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("studioId") studioId: option<__string>,
@as("studioComponentIds") studioComponentIds: option<launchProfileStudioComponentIdList>,
@as("streamConfiguration") streamConfiguration: option<streamConfigurationCreate>,
@as("name") name: option<launchProfileName>,
@as("launchProfileProtocolVersions") launchProfileProtocolVersions: option<launchProfileProtocolVersionList>,
@as("ec2SubnetIds") ec2SubnetIds: option<eC2SubnetIdList>,
@as("description") description: launchProfileDescription,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("launchProfile") launchProfile: launchProfile
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateLaunchProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLaunchProfiles = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("states") states: multiValueQueryStringList,
@as("principalId") principalId: __string,
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: __string,
@as("launchProfiles") launchProfiles: launchProfileList
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListLaunchProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLaunchProfileInitialization = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("platform") platform: option<__string>,
@as("launchPurpose") launchPurpose: option<__string>,
@as("launchProfileProtocolVersions") launchProfileProtocolVersions: option<multiValueQueryStringList>,
@as("launchProfileId") launchProfileId: option<__string>
}
  type response = {
@as("launchProfileInitialization") launchProfileInitialization: launchProfileInitialization
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetLaunchProfileInitializationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStudioComponent = {
  type t;
  type request = {
@as("type") type_: studioComponentType,
@as("subtype") subtype: studioComponentSubtype,
@as("studioId") studioId: option<__string>,
@as("studioComponentId") studioComponentId: option<__string>,
@as("scriptParameters") scriptParameters: studioComponentScriptParameterKeyValueList,
@as("name") name: studioComponentName,
@as("initializationScripts") initializationScripts: studioComponentInitializationScriptList,
@as("ec2SecurityGroupIds") ec2SecurityGroupIds: studioComponentSecurityGroupIdList,
@as("description") description: studioComponentDescription,
@as("configuration") configuration: studioComponentConfiguration,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("studioComponent") studioComponent: studioComponent
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UpdateStudioComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStudioComponent = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("studioComponentId") studioComponentId: option<__string>
}
  type response = {
@as("studioComponent") studioComponent: studioComponent
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStudioComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStudioComponent = {
  type t;
  type request = {
@as("studioId") studioId: option<__string>,
@as("studioComponentId") studioComponentId: option<__string>,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("studioComponent") studioComponent: studioComponent
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteStudioComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStudioComponent = {
  type t;
  type request = {
@as("type") type_: option<studioComponentType>,
@as("tags") tags: tags,
@as("subtype") subtype: studioComponentSubtype,
@as("studioId") studioId: option<__string>,
@as("scriptParameters") scriptParameters: studioComponentScriptParameterKeyValueList,
@as("name") name: option<studioComponentName>,
@as("initializationScripts") initializationScripts: studioComponentInitializationScriptList,
@as("ec2SecurityGroupIds") ec2SecurityGroupIds: studioComponentSecurityGroupIdList,
@as("description") description: studioComponentDescription,
@as("configuration") configuration: studioComponentConfiguration,
@as("clientToken") clientToken: clientToken
}
  type response = {
@as("studioComponent") studioComponent: studioComponent
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateStudioComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStudioComponents = {
  type t;
  type request = {
@as("types") types: multiValueQueryStringList,
@as("studioId") studioId: option<__string>,
@as("states") states: multiValueQueryStringList,
@as("nextToken") nextToken: __string,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("studioComponents") studioComponents: studioComponentList,
@as("nextToken") nextToken: __string
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListStudioComponentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
