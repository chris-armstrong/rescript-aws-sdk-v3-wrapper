type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-nimble") @new external createClient: unit => awsServiceClient = "NimbleClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type __string = string
type windowsMountDrive = string
type timestamp_ = Js.Date.t;
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
type streamingSessionStreamExpirationInSeconds = int
type streamingSessionStatusCode = [@as("NETWORK_INTERFACE_ERROR") #NETWORK_INTERFACE_ERROR | @as("DECRYPT_STREAMING_IMAGE_ERROR") #DECRYPT_STREAMING_IMAGE_ERROR | @as("INITIALIZATION_SCRIPT_ERROR") #INITIALIZATION_SCRIPT_ERROR | @as("NETWORK_CONNECTION_ERROR") #NETWORK_CONNECTION_ERROR | @as("ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR") #ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR | @as("INSUFFICIENT_CAPACITY") #INSUFFICIENT_CAPACITY | @as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("STREAMING_SESSION_DELETE_IN_PROGRESS") #STREAMING_SESSION_DELETE_IN_PROGRESS | @as("STREAMING_SESSION_CREATE_IN_PROGRESS") #STREAMING_SESSION_CREATE_IN_PROGRESS | @as("STREAMING_SESSION_DELETED") #STREAMING_SESSION_DELETED | @as("STREAMING_SESSION_READY") #STREAMING_SESSION_READY]
type streamingSessionState = [@as("DELETE_FAILED") #DELETE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("DELETED") #DELETED | @as("READY") #READY | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type streamingInstanceType = [@as("g4dn.16xlarge") #G4dn_16xlarge | @as("g4dn.12xlarge") #G4dn_12xlarge | @as("g4dn.8xlarge") #G4dn_8xlarge | @as("g4dn.4xlarge") #G4dn_4xlarge | @as("g4dn.2xlarge") #G4dn_2xlarge | @as("g4dn.xlarge") #G4dn_Xlarge]
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
type streamConfigurationMaxSessionLengthInMinutes = int
type securityGroupId = string
type scriptParameterValue = string
type scriptParameterKey = string
type region = string
type maxResults = int
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
type ec2SubnetId = string
type ec2ImageId = string
type directoryId = string
type clientToken = string
type activeDirectoryOrganizationalUnitDistinguishedName = string
type activeDirectoryDnsIpAddress = string
type activeDirectoryComputerAttributeValue = string
type activeDirectoryComputerAttributeName = string
type multiValueQueryStringList = array<__string>
type tags = Js.Dict.t<__string>
type studioMembership = {
principalId: option<__string>,
  persona: option<studioPersona>,
  identityStoreId: option<__string>
}
type studioEncryptionConfiguration = {
keyType: studioEncryptionConfigurationKeyType,
  keyArn: option<studioEncryptionConfigurationKeyArn>
}
type studioComponentSummary = {
updatedBy: option<__string>,
  updatedAt: option<timestamp_>,
  @as("type") type_: option<studioComponentType>,
  subtype: option<studioComponentSubtype>,
  studioComponentId: option<studioComponentId>,
  name: option<studioComponentName>,
  description: option<studioComponentDescription>,
  createdBy: option<__string>,
  createdAt: option<timestamp_>
}
type studioComponentSecurityGroupIdList = array<securityGroupId>
type studioComponentInitializationScript = {
script: option<studioComponentInitializationScriptContent>,
  runContext: option<studioComponentInitializationScriptRunContext>,
  platform: option<launchProfilePlatform>,
  launchProfileProtocolVersion: option<launchProfileProtocolVersion>
}
type streamingSessionStream = {
url: option<__string>,
  streamId: option<__string>,
  statusCode: option<streamingSessionStreamStatusCode>,
  state: option<streamingSessionStreamState>,
  expiresAt: option<timestamp_>,
  createdBy: option<__string>,
  createdAt: option<timestamp_>
}
type streamingInstanceTypeList = array<streamingInstanceType>
type streamingImageIdList = array<streamingImageId>
type streamingImageEncryptionConfiguration = {
keyType: streamingImageEncryptionConfigurationKeyType,
  keyArn: option<streamingImageEncryptionConfigurationKeyArn>
}
type sharedFileSystemConfiguration = {
windowsMountDrive: option<windowsMountDrive>,
  shareName: option<__string>,
  linuxMountPoint: option<linuxMountPoint>,
  fileSystemId: option<__string>,
  endpoint: option<__string>
}
type scriptParameterKeyValue = {
value: option<scriptParameterValue>,
  key: option<scriptParameterKey>
}
type newStudioMember = {
principalId: __string,
  persona: studioPersona
}
type newLaunchProfileMember = {
principalId: __string,
  persona: launchProfilePersona
}
type licenseServiceConfiguration = {
endpoint: option<__string>
}
type launchProfileStudioComponentIdList = array<__string>
type launchProfileSecurityGroupIdList = array<securityGroupId>
type launchProfileProtocolVersionList = array<launchProfileProtocolVersion>
type launchProfileMembership = {
principalId: option<__string>,
  persona: option<launchProfilePersona>,
  identityStoreId: option<__string>
}
type launchProfileInitializationScript = {
studioComponentName: option<studioComponentName>,
  studioComponentId: option<studioComponentId>,
  script: option<studioComponentInitializationScriptContent>
}
type exceptionContext = Js.Dict.t<__string>
type eulaIdList = array<__string>
type eulaAcceptance = {
eulaId: option<eulaId>,
  eulaAcceptanceId: option<eulaAcceptanceId>,
  accepteeId: option<__string>,
  acceptedBy: option<__string>,
  acceptedAt: option<timestamp_>
}
type eula = {
updatedAt: option<timestamp_>,
  name: option<eulaName>,
  eulaId: option<eulaId>,
  createdAt: option<timestamp_>,
  content: option<__string>
}
type ec2SubnetIdList = array<ec2SubnetId>
type computeFarmConfiguration = {
endpoint: option<__string>,
  activeDirectoryUser: option<__string>
}
type activeDirectoryDnsIpAddressList = array<activeDirectoryDnsIpAddress>
type activeDirectoryComputerAttribute = {
value: option<activeDirectoryComputerAttributeValue>,
  name: option<activeDirectoryComputerAttributeName>
}
type studioMembershipList = array<studioMembership>
type studioComponentSummaryList = array<studioComponentSummary>
type studioComponentScriptParameterKeyValueList = array<scriptParameterKeyValue>
type studioComponentInitializationScriptList = array<studioComponentInitializationScript>
type studio = {
userRoleArn: option<__string>,
  updatedAt: option<timestamp_>,
  tags: option<tags>,
  studioUrl: option<__string>,
  studioName: option<studioName>,
  studioId: option<__string>,
  studioEncryptionConfiguration: option<studioEncryptionConfiguration>,
  statusMessage: option<__string>,
  statusCode: option<studioStatusCode>,
  state: option<studioState>,
  ssoClientId: option<__string>,
  homeRegion: option<region>,
  displayName: option<studioDisplayName>,
  createdAt: option<timestamp_>,
  arn: option<__string>,
  adminRoleArn: option<__string>
}
type streamingSession = {
updatedBy: option<__string>,
  updatedAt: option<timestamp_>,
  terminateAt: option<timestamp_>,
  tags: option<tags>,
  streamingImageId: option<streamingImageId>,
  statusMessage: option<__string>,
  statusCode: option<streamingSessionStatusCode>,
  state: option<streamingSessionState>,
  sessionId: option<streamingImageSessionId>,
  launchProfileId: option<__string>,
  ec2InstanceType: option<__string>,
  createdBy: option<__string>,
  createdAt: option<timestamp_>,
  arn: option<__string>
}
type streamingImage = {
tags: option<tags>,
  streamingImageId: option<streamingImageId>,
  statusMessage: option<__string>,
  statusCode: option<streamingImageStatusCode>,
  state: option<streamingImageState>,
  platform: option<streamingImagePlatform>,
  owner: option<streamingImageOwner>,
  name: option<streamingImageName>,
  eulaIds: option<eulaIdList>,
  encryptionConfiguration: option<streamingImageEncryptionConfiguration>,
  ec2ImageId: option<ec2ImageId>,
  description: option<streamingImageDescription>,
  arn: option<__string>
}
type streamConfigurationCreate = {
streamingImageIds: streamingImageIdList,
  maxSessionLengthInMinutes: option<streamConfigurationMaxSessionLengthInMinutes>,
  ec2InstanceTypes: streamingInstanceTypeList,
  clipboardMode: streamingClipboardMode
}
type streamConfiguration = {
streamingImageIds: option<streamingImageIdList>,
  maxSessionLengthInMinutes: option<streamConfigurationMaxSessionLengthInMinutes>,
  ec2InstanceTypes: option<streamingInstanceTypeList>,
  clipboardMode: option<streamingClipboardMode>
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
studioComponentName: option<studioComponentName>,
  studioComponentId: option<studioComponentId>,
  organizationalUnitDistinguishedName: option<activeDirectoryOrganizationalUnitDistinguishedName>,
  dnsIpAddresses: option<activeDirectoryDnsIpAddressList>,
  directoryName: option<__string>,
  directoryId: option<directoryId>,
  computerAttributes: option<activeDirectoryComputerAttributeList>
}
type launchProfile = {
updatedBy: option<__string>,
  updatedAt: option<timestamp_>,
  tags: option<tags>,
  studioComponentIds: option<launchProfileStudioComponentIdList>,
  streamConfiguration: option<streamConfiguration>,
  statusMessage: option<__string>,
  statusCode: option<launchProfileStatusCode>,
  state: option<launchProfileState>,
  name: option<launchProfileName>,
  launchProfileProtocolVersions: option<launchProfileProtocolVersionList>,
  launchProfileId: option<launchProfileId>,
  ec2SubnetIds: option<ec2SubnetIdList>,
  description: option<launchProfileDescription>,
  createdBy: option<__string>,
  createdAt: option<timestamp_>,
  arn: option<__string>
}
type activeDirectoryConfiguration = {
organizationalUnitDistinguishedName: option<activeDirectoryOrganizationalUnitDistinguishedName>,
  directoryId: option<directoryId>,
  computerAttributes: option<activeDirectoryComputerAttributeList>
}
type studioComponentConfiguration = {
sharedFileSystemConfiguration: option<sharedFileSystemConfiguration>,
  licenseServiceConfiguration: option<licenseServiceConfiguration>,
  computeFarmConfiguration: option<computeFarmConfiguration>,
  activeDirectoryConfiguration: option<activeDirectoryConfiguration>
}
type launchProfileList = array<launchProfile>
type launchProfileInitialization = {
userInitializationScripts: option<launchProfileInitializationScriptList>,
  systemInitializationScripts: option<launchProfileInitializationScriptList>,
  platform: option<launchProfilePlatform>,
  name: option<launchProfileName>,
  launchPurpose: option<launchPurpose>,
  launchProfileProtocolVersion: option<launchProfileProtocolVersion>,
  launchProfileId: option<launchProfileId>,
  ec2SecurityGroupIds: option<launchProfileSecurityGroupIdList>,
  activeDirectory: option<launchProfileInitializationActiveDirectory>
}
type studioComponent = {
updatedBy: option<__string>,
  updatedAt: option<timestamp_>,
  @as("type") type_: option<studioComponentType>,
  tags: option<tags>,
  subtype: option<studioComponentSubtype>,
  studioComponentId: option<studioComponentId>,
  statusMessage: option<__string>,
  statusCode: option<studioComponentStatusCode>,
  state: option<studioComponentState>,
  scriptParameters: option<studioComponentScriptParameterKeyValueList>,
  name: option<studioComponentName>,
  initializationScripts: option<studioComponentInitializationScriptList>,
  ec2SecurityGroupIds: option<studioComponentSecurityGroupIdList>,
  description: option<studioComponentDescription>,
  createdBy: option<__string>,
  createdAt: option<timestamp_>,
  configuration: option<studioComponentConfiguration>,
  arn: option<__string>
}
type studioComponentList = array<studioComponent>

module UpdateLaunchProfileMember = {
  type t;
  type request = {
studioId: __string,
  principalId: __string,
  persona: launchProfilePersona,
  launchProfileId: __string,
  clientToken: option<clientToken>
}
  type response = {
member: option<launchProfileMembership>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UpdateLaunchProfileMemberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: multiValueQueryStringList,
  resourceArn: __string
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: option<tags>,
  resourceArn: __string
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: __string
}
  type response = {
tags: option<tags>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStudioMember = {
  type t;
  type request = {
studioId: __string,
  principalId: __string
}
  type response = {
member: option<studioMembership>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStudioMemberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStreamingSessionStream = {
  type t;
  type request = {
studioId: __string,
  streamId: __string,
  sessionId: __string
}
  type response = {
stream: option<streamingSessionStream>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStreamingSessionStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLaunchProfileMember = {
  type t;
  type request = {
studioId: __string,
  principalId: __string,
  launchProfileId: __string
}
  type response = {
member: option<launchProfileMembership>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetLaunchProfileMemberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEula = {
  type t;
  type request = {
eulaId: __string
}
  type response = {
eula: option<eula>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetEulaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStudioMember = {
  type t;
  type request = {
studioId: __string,
  principalId: __string,
  clientToken: option<clientToken>
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteStudioMemberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLaunchProfileMember = {
  type t;
  type request = {
studioId: __string,
  principalId: __string,
  launchProfileId: __string,
  clientToken: option<clientToken>
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteLaunchProfileMemberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStreamingSessionStream = {
  type t;
  type request = {
studioId: __string,
  sessionId: __string,
  expirationInSeconds: option<streamingSessionStreamExpirationInSeconds>,
  clientToken: option<clientToken>
}
  type response = {
stream: option<streamingSessionStream>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateStreamingSessionStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateStudio = {
  type t;
  type request = {
userRoleArn: option<__string>,
  studioId: __string,
  displayName: option<studioDisplayName>,
  clientToken: option<clientToken>,
  adminRoleArn: option<__string>
}
  type response = {
studio: option<studio>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UpdateStudioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateStreamingImage = {
  type t;
  type request = {
studioId: __string,
  streamingImageId: __string,
  name: option<streamingImageName>,
  description: option<streamingImageDescription>,
  clientToken: option<clientToken>
}
  type response = {
streamingImage: option<streamingImage>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UpdateStreamingImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartStudioSSOConfigurationRepair = {
  type t;
  type request = {
studioId: __string,
  clientToken: option<clientToken>
}
  type response = {
studio: option<studio>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "StartStudioSSOConfigurationRepairCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutStudioMembers = {
  type t;
  type request = {
studioId: __string,
  members: newStudioMemberList,
  identityStoreId: __string,
  clientToken: option<clientToken>
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "PutStudioMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutLaunchProfileMembers = {
  type t;
  type request = {
studioId: __string,
  members: newLaunchProfileMemberList,
  launchProfileId: __string,
  identityStoreId: __string,
  clientToken: option<clientToken>
}
  type response = unit
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "PutLaunchProfileMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStudioMembers = {
  type t;
  type request = {
studioId: __string,
  nextToken: option<__string>,
  maxResults: option<maxResults>
}
  type response = {
nextToken: option<__string>,
  members: option<studioMembershipList>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListStudioMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLaunchProfileMembers = {
  type t;
  type request = {
studioId: __string,
  nextToken: option<__string>,
  maxResults: option<maxResults>,
  launchProfileId: __string
}
  type response = {
nextToken: option<__string>,
  members: option<launchProfileMembershipList>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListLaunchProfileMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEulas = {
  type t;
  type request = {
nextToken: option<__string>,
  eulaIds: option<multiValueQueryStringList>
}
  type response = {
nextToken: option<__string>,
  eulas: option<eulaList>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListEulasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEulaAcceptances = {
  type t;
  type request = {
studioId: __string,
  nextToken: option<__string>,
  eulaIds: option<multiValueQueryStringList>
}
  type response = {
nextToken: option<__string>,
  eulaAcceptances: option<eulaAcceptanceList>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListEulaAcceptancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStudio = {
  type t;
  type request = {
studioId: __string
}
  type response = {
studio: option<studio>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStudioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStreamingSession = {
  type t;
  type request = {
studioId: __string,
  sessionId: __string
}
  type response = {
session: option<streamingSession>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStreamingSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStreamingImage = {
  type t;
  type request = {
studioId: __string,
  streamingImageId: __string
}
  type response = {
streamingImage: option<streamingImage>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStreamingImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStudio = {
  type t;
  type request = {
studioId: __string,
  clientToken: option<clientToken>
}
  type response = {
studio: option<studio>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteStudioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStreamingSession = {
  type t;
  type request = {
studioId: __string,
  sessionId: __string,
  clientToken: option<clientToken>
}
  type response = {
session: option<streamingSession>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteStreamingSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStreamingImage = {
  type t;
  type request = {
studioId: __string,
  streamingImageId: __string,
  clientToken: option<clientToken>
}
  type response = {
streamingImage: option<streamingImage>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteStreamingImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStudio = {
  type t;
  type request = {
userRoleArn: __string,
  tags: option<tags>,
  studioName: studioName,
  studioEncryptionConfiguration: option<studioEncryptionConfiguration>,
  displayName: studioDisplayName,
  clientToken: option<clientToken>,
  adminRoleArn: __string
}
  type response = {
studio: option<studio>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateStudioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStreamingSession = {
  type t;
  type request = {
tags: option<tags>,
  studioId: __string,
  streamingImageId: option<streamingImageId>,
  launchProfileId: option<__string>,
  ec2InstanceType: option<streamingInstanceType>,
  clientToken: option<clientToken>
}
  type response = {
session: option<streamingSession>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateStreamingSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStreamingImage = {
  type t;
  type request = {
tags: option<tags>,
  studioId: __string,
  name: streamingImageName,
  ec2ImageId: ec2ImageId,
  description: option<streamingImageDescription>,
  clientToken: option<clientToken>
}
  type response = {
streamingImage: option<streamingImage>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateStreamingImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AcceptEulas = {
  type t;
  type request = {
studioId: __string,
  eulaIds: option<eulaIdList>,
  clientToken: option<clientToken>
}
  type response = {
eulaAcceptances: option<eulaAcceptanceList>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "AcceptEulasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateLaunchProfile = {
  type t;
  type request = {
studioId: __string,
  studioComponentIds: option<launchProfileStudioComponentIdList>,
  streamConfiguration: option<streamConfigurationCreate>,
  name: option<launchProfileName>,
  launchProfileProtocolVersions: option<launchProfileProtocolVersionList>,
  launchProfileId: __string,
  description: option<launchProfileDescription>,
  clientToken: option<clientToken>
}
  type response = {
launchProfile: option<launchProfile>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UpdateLaunchProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStudios = {
  type t;
  type request = {
nextToken: option<__string>
}
  type response = {
studios: option<studioList>,
  nextToken: option<__string>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListStudiosCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStreamingSessions = {
  type t;
  type request = {
studioId: __string,
  sessionIds: option<__string>,
  nextToken: option<__string>,
  createdBy: option<__string>
}
  type response = {
sessions: option<streamingSessionList>,
  nextToken: option<__string>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListStreamingSessionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStreamingImages = {
  type t;
  type request = {
studioId: __string,
  owner: option<__string>,
  nextToken: option<__string>
}
  type response = {
streamingImages: option<streamingImageList>,
  nextToken: option<__string>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListStreamingImagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLaunchProfileDetails = {
  type t;
  type request = {
studioId: __string,
  launchProfileId: __string
}
  type response = {
studioComponentSummaries: option<studioComponentSummaryList>,
  streamingImages: option<streamingImageList>,
  launchProfile: option<launchProfile>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetLaunchProfileDetailsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLaunchProfile = {
  type t;
  type request = {
studioId: __string,
  launchProfileId: __string
}
  type response = {
launchProfile: option<launchProfile>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetLaunchProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLaunchProfile = {
  type t;
  type request = {
studioId: __string,
  launchProfileId: __string,
  clientToken: option<clientToken>
}
  type response = {
launchProfile: option<launchProfile>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteLaunchProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLaunchProfile = {
  type t;
  type request = {
tags: option<tags>,
  studioId: __string,
  studioComponentIds: launchProfileStudioComponentIdList,
  streamConfiguration: streamConfigurationCreate,
  name: launchProfileName,
  launchProfileProtocolVersions: launchProfileProtocolVersionList,
  ec2SubnetIds: ec2SubnetIdList,
  description: option<launchProfileDescription>,
  clientToken: option<clientToken>
}
  type response = {
launchProfile: option<launchProfile>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateLaunchProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLaunchProfiles = {
  type t;
  type request = {
studioId: __string,
  states: option<multiValueQueryStringList>,
  principalId: option<__string>,
  nextToken: option<__string>,
  maxResults: option<maxResults>
}
  type response = {
nextToken: option<__string>,
  launchProfiles: option<launchProfileList>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListLaunchProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLaunchProfileInitialization = {
  type t;
  type request = {
studioId: __string,
  platform: __string,
  launchPurpose: __string,
  launchProfileProtocolVersions: multiValueQueryStringList,
  launchProfileId: __string
}
  type response = {
launchProfileInitialization: option<launchProfileInitialization>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetLaunchProfileInitializationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateStudioComponent = {
  type t;
  type request = {
@as("type") type_: option<studioComponentType>,
  subtype: option<studioComponentSubtype>,
  studioId: __string,
  studioComponentId: __string,
  scriptParameters: option<studioComponentScriptParameterKeyValueList>,
  name: option<studioComponentName>,
  initializationScripts: option<studioComponentInitializationScriptList>,
  ec2SecurityGroupIds: option<studioComponentSecurityGroupIdList>,
  description: option<studioComponentDescription>,
  configuration: option<studioComponentConfiguration>,
  clientToken: option<clientToken>
}
  type response = {
studioComponent: option<studioComponent>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "UpdateStudioComponentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStudioComponent = {
  type t;
  type request = {
studioId: __string,
  studioComponentId: __string
}
  type response = {
studioComponent: option<studioComponent>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "GetStudioComponentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStudioComponent = {
  type t;
  type request = {
studioId: __string,
  studioComponentId: __string,
  clientToken: option<clientToken>
}
  type response = {
studioComponent: option<studioComponent>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "DeleteStudioComponentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStudioComponent = {
  type t;
  type request = {
@as("type") type_: studioComponentType,
  tags: option<tags>,
  subtype: option<studioComponentSubtype>,
  studioId: __string,
  scriptParameters: option<studioComponentScriptParameterKeyValueList>,
  name: studioComponentName,
  initializationScripts: option<studioComponentInitializationScriptList>,
  ec2SecurityGroupIds: option<studioComponentSecurityGroupIdList>,
  description: option<studioComponentDescription>,
  configuration: option<studioComponentConfiguration>,
  clientToken: option<clientToken>
}
  type response = {
studioComponent: option<studioComponent>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "CreateStudioComponentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStudioComponents = {
  type t;
  type request = {
types: option<multiValueQueryStringList>,
  studioId: __string,
  states: option<multiValueQueryStringList>,
  nextToken: option<__string>,
  maxResults: option<maxResults>
}
  type response = {
studioComponents: option<studioComponentList>,
  nextToken: option<__string>
}
  @module("@aws-sdk/client-nimble") @new external new_: (request) => t = "ListStudioComponentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
