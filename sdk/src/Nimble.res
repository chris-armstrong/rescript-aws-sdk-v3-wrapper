type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-nimble") @new
external createClient: unit => awsServiceClient = "NimbleClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __string = string
type windowsMountDrive = string
type timestamp_ = Js.Date.t
@ocaml.doc("<p>The status code.</p>")
type studioStatusCode = [
  | @as("AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS") #AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS
  | @as("AWS_SSO_CONFIGURATION_REPAIRED") #AWS_SSO_CONFIGURATION_REPAIRED
  | @as("ENCRYPTION_KEY_ACCESS_DENIED") #ENCRYPTION_KEY_ACCESS_DENIED
  | @as("ENCRYPTION_KEY_NOT_FOUND") #ENCRYPTION_KEY_NOT_FOUND
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("ROLE_COULD_NOT_BE_ASSUMED") #ROLE_COULD_NOT_BE_ASSUMED
  | @as("ROLE_NOT_OWNED_BY_STUDIO_OWNER") #ROLE_NOT_OWNED_BY_STUDIO_OWNER
  | @as("AWS_SSO_ACCESS_DENIED") #AWS_SSO_ACCESS_DENIED
  | @as("AWS_SSO_NOT_ENABLED") #AWS_SSO_NOT_ENABLED
  | @as("STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED") #STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED
  | @as("STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED") #STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED
  | @as("STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED") #STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED
  | @as("STUDIO_DELETE_IN_PROGRESS") #STUDIO_DELETE_IN_PROGRESS
  | @as("STUDIO_UPDATE_IN_PROGRESS") #STUDIO_UPDATE_IN_PROGRESS
  | @as("STUDIO_CREATE_IN_PROGRESS") #STUDIO_CREATE_IN_PROGRESS
  | @as("STUDIO_UPDATED") #STUDIO_UPDATED
  | @as("STUDIO_DELETED") #STUDIO_DELETED
  | @as("STUDIO_CREATED") #STUDIO_CREATED
]
type studioState = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETED") #DELETED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("READY") #READY
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type studioPersona = [@as("ADMINISTRATOR") #ADMINISTRATOR]
type studioName = string
@ocaml.doc("<p>The type of KMS key that is used to encrypt studio data.</p>")
type studioEncryptionConfigurationKeyType = [
  | @as("CUSTOMER_MANAGED_KEY") #CUSTOMER_MANAGED_KEY
  | @as("AWS_OWNED_KEY") #AWS_OWNED_KEY
]
@ocaml.doc(
  "<p>The Amazon Resource Name (ARN) for a KMS key that is used to encrypt studio data.</p>"
)
type studioEncryptionConfigurationKeyArn = string
type studioDisplayName = string
type studioComponentType = [
  | @as("CUSTOM") #CUSTOM
  | @as("LICENSE_SERVICE") #LICENSE_SERVICE
  | @as("COMPUTE_FARM") #COMPUTE_FARM
  | @as("SHARED_FILE_SYSTEM") #SHARED_FILE_SYSTEM
  | @as("ACTIVE_DIRECTORY") #ACTIVE_DIRECTORY
]
type studioComponentSubtype = [
  | @as("CUSTOM") #CUSTOM
  | @as("AMAZON_FSX_FOR_LUSTRE") #AMAZON_FSX_FOR_LUSTRE
  | @as("AMAZON_FSX_FOR_WINDOWS") #AMAZON_FSX_FOR_WINDOWS
  | @as("AWS_MANAGED_MICROSOFT_AD") #AWS_MANAGED_MICROSOFT_AD
]
@ocaml.doc(
  "<p>The current status of the studio component resource.</p> <p>When the resource is in the 'READY' state, the status code signals what the last mutation made to the resource was.</p> <p>When the resource is in a CREATE_FAILED/UPDATE_FAILED/DELETE_FAILED state, the status code signals what went wrong and why the mutation failed.</p>"
)
type studioComponentStatusCode = [
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("STUDIO_COMPONENT_DELETE_IN_PROGRESS") #STUDIO_COMPONENT_DELETE_IN_PROGRESS
  | @as("STUDIO_COMPONENT_UPDATE_IN_PROGRESS") #STUDIO_COMPONENT_UPDATE_IN_PROGRESS
  | @as("STUDIO_COMPONENT_CREATE_IN_PROGRESS") #STUDIO_COMPONENT_CREATE_IN_PROGRESS
  | @as("ENCRYPTION_KEY_NOT_FOUND") #ENCRYPTION_KEY_NOT_FOUND
  | @as("ENCRYPTION_KEY_ACCESS_DENIED") #ENCRYPTION_KEY_ACCESS_DENIED
  | @as("STUDIO_COMPONENT_DELETED") #STUDIO_COMPONENT_DELETED
  | @as("STUDIO_COMPONENT_UPDATED") #STUDIO_COMPONENT_UPDATED
  | @as("STUDIO_COMPONENT_CREATED") #STUDIO_COMPONENT_CREATED
  | @as("ACTIVE_DIRECTORY_ALREADY_EXISTS") #ACTIVE_DIRECTORY_ALREADY_EXISTS
]
@ocaml.doc(
  "<p>The current state of the studio component resource.</p> <p>While a studio component is being created, modified, or deleted, its state will equal \"CREATE_IN_PROGRESS\", \"UPDATE_IN_PROGRESS\", or \"DELETE_IN_PROGRESS\"</p> <p>These are called 'transition states'.</p> <p>No modifications may be made to the studio component while it is in a transition state.</p> <p>If creation of the resource fails, the state will change to `CREATE_FAILED`. The resource StatusCode and StatusMessage will provide more information of why creation failed. The resource in this state will automatically be deleted from your account after a period of time.</p> <p>If updating the resource fails, the state will change to `UPDATE_FAILED`. The resource StatusCode and StatusMessage will provide more information of why the update failed. The resource will be returned to the state it was in when the update request was invoked.</p> <p>If deleting the resource fails, the state will change to `DELETE_FAILED`. The resource StatusCode and StatusMessage will provide more information of why the update failed. The resource will be returned to the state it was in when the update request was invoked. After the resource is deleted successfully, it will change to the \"DELETED\" state. The resource will no longer count against service quotas and cannot be used or acted upon any futher. It will be removed from your account after a period of time.</p>"
)
type studioComponentState = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETED") #DELETED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("READY") #READY
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type studioComponentName = string
type studioComponentInitializationScriptRunContext = [
  | @as("USER_INITIALIZATION") #USER_INITIALIZATION
  | @as("SYSTEM_INITIALIZATION") #SYSTEM_INITIALIZATION
]
type studioComponentInitializationScriptContent = string
type studioComponentId = string
type studioComponentDescription = string
type streamingSessionStreamStatusCode = [
  | @as("NETWORK_CONNECTION_ERROR") #NETWORK_CONNECTION_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("STREAM_DELETED") #STREAM_DELETED
  | @as("STREAM_DELETE_IN_PROGRESS") #STREAM_DELETE_IN_PROGRESS
  | @as("STREAM_READY") #STREAM_READY
  | @as("STREAM_CREATE_IN_PROGRESS") #STREAM_CREATE_IN_PROGRESS
]
type streamingSessionStreamState = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("DELETED") #DELETED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
  | @as("READY") #READY
]
type streamingSessionStreamExpirationInSeconds = int
type streamingSessionStatusCode = [
  | @as("NETWORK_INTERFACE_ERROR") #NETWORK_INTERFACE_ERROR
  | @as("DECRYPT_STREAMING_IMAGE_ERROR") #DECRYPT_STREAMING_IMAGE_ERROR
  | @as("INITIALIZATION_SCRIPT_ERROR") #INITIALIZATION_SCRIPT_ERROR
  | @as("NETWORK_CONNECTION_ERROR") #NETWORK_CONNECTION_ERROR
  | @as("ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR") #ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR
  | @as("INSUFFICIENT_CAPACITY") #INSUFFICIENT_CAPACITY
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("STREAMING_SESSION_DELETE_IN_PROGRESS") #STREAMING_SESSION_DELETE_IN_PROGRESS
  | @as("STREAMING_SESSION_CREATE_IN_PROGRESS") #STREAMING_SESSION_CREATE_IN_PROGRESS
  | @as("STREAMING_SESSION_DELETED") #STREAMING_SESSION_DELETED
  | @as("STREAMING_SESSION_READY") #STREAMING_SESSION_READY
]
@ocaml.doc("<p>The streaming session state.</p>")
type streamingSessionState = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("DELETED") #DELETED
  | @as("READY") #READY
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type streamingInstanceType = [
  | @as("g4dn.16xlarge") #G4dn_16xlarge
  | @as("g4dn.12xlarge") #G4dn_12xlarge
  | @as("g4dn.8xlarge") #G4dn_8xlarge
  | @as("g4dn.4xlarge") #G4dn_4xlarge
  | @as("g4dn.2xlarge") #G4dn_2xlarge
  | @as("g4dn.xlarge") #G4dn_Xlarge
]
@ocaml.doc("<p>The status code.</p>")
type streamingImageStatusCode = [
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("STREAMING_IMAGE_UPDATE_IN_PROGRESS") #STREAMING_IMAGE_UPDATE_IN_PROGRESS
  | @as("STREAMING_IMAGE_DELETED") #STREAMING_IMAGE_DELETED
  | @as("STREAMING_IMAGE_DELETE_IN_PROGRESS") #STREAMING_IMAGE_DELETE_IN_PROGRESS
  | @as("STREAMING_IMAGE_READY") #STREAMING_IMAGE_READY
  | @as("STREAMING_IMAGE_CREATE_IN_PROGRESS") #STREAMING_IMAGE_CREATE_IN_PROGRESS
]
type streamingImageState = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("DELETED") #DELETED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("READY") #READY
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
@ocaml.doc("<p>The streaming image session ID.</p>") type streamingImageSessionId = string
@ocaml.doc("<p>The platform of this Streaming Image, either WINDOWS or LINUX.</p>")
type streamingImagePlatform = string
@ocaml.doc(
  "<p>StreamingImageOwner is the owner of a particular streaming image.</p> <p>This string is either the studioId that contains the streaming image, or the word 'AMAZON' for images provided by Nimble Studio.</p>"
)
type streamingImageOwner = string
@ocaml.doc("<p>A friendly name for a streaming image resource.</p>")
type streamingImageName = string
type streamingImageId = string
@ocaml.doc("<p></p>")
type streamingImageEncryptionConfigurationKeyType = [
  | @as("CUSTOMER_MANAGED_KEY") #CUSTOMER_MANAGED_KEY
]
type streamingImageEncryptionConfigurationKeyArn = string
@ocaml.doc("<p>The description.</p>") type streamingImageDescription = string
type streamingClipboardMode = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type streamConfigurationMaxSessionLengthInMinutes = int
type securityGroupId = string
@ocaml.doc("<p>A script parameter value.</p>") type scriptParameterValue = string
@ocaml.doc("<p>A script parameter key.</p>") type scriptParameterKey = string
type region = string
type maxResults = int
type linuxMountPoint = string
@ocaml.doc("<p>The launch purpose.</p>") type launchPurpose = string
type launchProfileStatusCode = [
  | @as("INVALID_SUBNETS_PROVIDED") #INVALID_SUBNETS_PROVIDED
  | @as("ENCRYPTION_KEY_NOT_FOUND") #ENCRYPTION_KEY_NOT_FOUND
  | @as("ENCRYPTION_KEY_ACCESS_DENIED") #ENCRYPTION_KEY_ACCESS_DENIED
  | @as("LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED")
  #LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED
  | @as("STREAMING_IMAGE_NOT_READY") #STREAMING_IMAGE_NOT_READY
  | @as("STREAMING_IMAGE_NOT_FOUND") #STREAMING_IMAGE_NOT_FOUND
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("LAUNCH_PROFILE_DELETE_IN_PROGRESS") #LAUNCH_PROFILE_DELETE_IN_PROGRESS
  | @as("LAUNCH_PROFILE_UPDATE_IN_PROGRESS") #LAUNCH_PROFILE_UPDATE_IN_PROGRESS
  | @as("LAUNCH_PROFILE_CREATE_IN_PROGRESS") #LAUNCH_PROFILE_CREATE_IN_PROGRESS
  | @as("LAUNCH_PROFILE_DELETED") #LAUNCH_PROFILE_DELETED
  | @as("LAUNCH_PROFILE_UPDATED") #LAUNCH_PROFILE_UPDATED
  | @as("LAUNCH_PROFILE_CREATED") #LAUNCH_PROFILE_CREATED
]
type launchProfileState = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETED") #DELETED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("READY") #READY
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
@ocaml.doc(
  "<p>The version number of the protocol that is used by the launch profile. The only valid version is \"2021-03-31\".</p>"
)
type launchProfileProtocolVersion = string
type launchProfilePlatform = [@as("WINDOWS") #WINDOWS | @as("LINUX") #LINUX]
type launchProfilePersona = [@as("USER") #USER]
type launchProfileName = string
type launchProfileId = string
type launchProfileDescription = string
type eulaName = string
@ocaml.doc("<p>Represents a EULA resource.</p>") type eulaId = string
@ocaml.doc("<p>The EULA acceptance ID.</p>") type eulaAcceptanceId = string
type ec2SubnetId = string
type ec2ImageId = string
type directoryId = string
type clientToken = string
@ocaml.doc(
  "<p>The fully-qualified distinguished name of the organizational unit to place the computer account in.</p>"
)
type activeDirectoryOrganizationalUnitDistinguishedName = string
type activeDirectoryDnsIpAddress = string
@ocaml.doc("<p>The value for the LDAP attribute.</p>")
type activeDirectoryComputerAttributeValue = string
@ocaml.doc("<p>The name for the LDAP attribute.</p>")
type activeDirectoryComputerAttributeName = string
type multiValueQueryStringList = array<__string>
type tags = Js.Dict.t<__string>
type studioMembership = {
  @ocaml.doc("<p>The principal ID.</p>") principalId: option<__string>,
  @ocaml.doc("<p>The persona.</p>") persona: option<studioPersona>,
  @ocaml.doc("<p>The ID of the identity store.</p>") identityStoreId: option<__string>,
}
@ocaml.doc("<p>Configuration of the encryption method that is used for the studio.</p>")
type studioEncryptionConfiguration = {
  @ocaml.doc("<p>The type of KMS key that is used to encrypt studio data.</p>")
  keyType: studioEncryptionConfigurationKeyType,
  @ocaml.doc("<p>The ARN for a KMS key that is used to encrypt studio data.</p>")
  keyArn: option<studioEncryptionConfigurationKeyArn>,
}
@ocaml.doc("<p></p>")
type studioComponentSummary = {
  @ocaml.doc("<p>The user ID of the user that most recently updated the resource.</p>")
  updatedBy: option<__string>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was updated.</p>")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The type of the studio component.</p>") @as("type")
  type_: option<studioComponentType>,
  @ocaml.doc("<p>The specific subtype of a studio component.</p>")
  subtype: option<studioComponentSubtype>,
  @ocaml.doc("<p>The unique identifier for a studio component resource.</p>")
  studioComponentId: option<studioComponentId>,
  @ocaml.doc("<p>The name for the studio component.</p>") name: option<studioComponentName>,
  @ocaml.doc("<p>The description.</p>") description: option<studioComponentDescription>,
  @ocaml.doc("<p>The user ID of the user that created the studio component.</p>")
  createdBy: option<__string>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: option<timestamp_>,
}
type studioComponentSecurityGroupIdList = array<securityGroupId>
@ocaml.doc("<p>Initialization scripts for studio components.</p>")
type studioComponentInitializationScript = {
  @ocaml.doc("<p>The initialization script.</p>")
  script: option<studioComponentInitializationScriptContent>,
  @ocaml.doc("<p>The method to use when running the initialization script.</p>")
  runContext: option<studioComponentInitializationScriptRunContext>,
  @ocaml.doc("<p>The platform of the initialization script, either WINDOWS or LINUX.</p>")
  platform: option<launchProfilePlatform>,
  @ocaml.doc(
    "<p>The version number of the protocol that is used by the launch profile. The only valid version is \"2021-03-31\".</p>"
  )
  launchProfileProtocolVersion: option<launchProfileProtocolVersion>,
}
type streamingSessionStream = {
  @ocaml.doc("<p>The URL to connect to this stream using the DCV client.</p>")
  url: option<__string>,
  @ocaml.doc("<p>The stream ID.</p>") streamId: option<__string>,
  @ocaml.doc("<p>The streaming session stream status code.</p>")
  statusCode: option<streamingSessionStreamStatusCode>,
  @ocaml.doc("<p>The current state.</p>") state: option<streamingSessionStreamState>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource expires.</p>")
  expiresAt: option<timestamp_>,
  @ocaml.doc("<p>The user ID of the user that created the streaming session stream.</p>")
  createdBy: option<__string>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: option<timestamp_>,
}
@ocaml.doc(
  "<p>The EC2 instance types that users can select from when launching a streaming session with this launch profile.</p>"
)
type streamingInstanceTypeList = array<streamingInstanceType>
@ocaml.doc(
  "<p>A list of streaming image IDs that users can select from when launching a streaming session with this launch profile.</p>"
)
type streamingImageIdList = array<streamingImageId>
type streamingImageEncryptionConfiguration = {
  @ocaml.doc("<p>The type of KMS key that is used to encrypt studio data.</p>")
  keyType: streamingImageEncryptionConfigurationKeyType,
  @ocaml.doc("<p>The ARN for a KMS key that is used to encrypt studio data.</p>")
  keyArn: option<streamingImageEncryptionConfigurationKeyArn>,
}
@ocaml.doc(
  "<p>The configuration for a shared file storage system that is associated with a studio resource.</p>"
)
type sharedFileSystemConfiguration = {
  @ocaml.doc("<p>The mount location for a shared file system on a Windows virtual workstation.</p>")
  windowsMountDrive: option<windowsMountDrive>,
  @ocaml.doc("<p>The name of the file share.</p>") shareName: option<__string>,
  @ocaml.doc("<p>The mount location for a shared file system on a Linux virtual workstation.</p>")
  linuxMountPoint: option<linuxMountPoint>,
  @ocaml.doc("<p>The unique identifier for a file system.</p>") fileSystemId: option<__string>,
  @ocaml.doc(
    "<p>The endpoint of the shared file system that is accessed by the studio component resource.</p>"
  )
  endpoint: option<__string>,
}
@ocaml.doc("<p>A parameter for a studio component script, in the form of a key:value pair.</p>")
type scriptParameterKeyValue = {
  @ocaml.doc("<p>A script parameter value.</p>") value: option<scriptParameterValue>,
  @ocaml.doc("<p>A script parameter key.</p>") key: option<scriptParameterKey>,
}
type newStudioMember = {
  @ocaml.doc("<p>The principal ID.</p>") principalId: __string,
  @ocaml.doc("<p>The persona.</p>") persona: studioPersona,
}
type newLaunchProfileMember = {
  @ocaml.doc("<p>The principal ID.</p>") principalId: __string,
  @ocaml.doc("<p>The persona.</p>") persona: launchProfilePersona,
}
@ocaml.doc(
  "<p>The configuration for a license service that is associated with a studio resource.</p>"
)
type licenseServiceConfiguration = {
  @ocaml.doc(
    "<p>The endpoint of the license service that is accessed by the studio component resource.</p>"
  )
  endpoint: option<__string>,
}
type launchProfileStudioComponentIdList = array<__string>
type launchProfileSecurityGroupIdList = array<securityGroupId>
type launchProfileProtocolVersionList = array<launchProfileProtocolVersion>
type launchProfileMembership = {
  @ocaml.doc("<p>The principal ID.</p>") principalId: option<__string>,
  @ocaml.doc("<p>The persona.</p>") persona: option<launchProfilePersona>,
  @ocaml.doc("<p>The ID of the identity store.</p>") identityStoreId: option<__string>,
}
type launchProfileInitializationScript = {
  @ocaml.doc("<p>The name for the studio component.</p>")
  studioComponentName: option<studioComponentName>,
  @ocaml.doc("<p>The unique identifier for a studio component resource.</p>")
  studioComponentId: option<studioComponentId>,
  @ocaml.doc("<p>The initialization script.</p>")
  script: option<studioComponentInitializationScriptContent>,
}
@ocaml.doc(
  "<p>ExceptionContext is a set of key-value pairs that provide you with more information about the error that occurred. For example, when the service returns a 404 ResourceNotFound error, ExceptionContext will contain the key `resourceId` with the value of resource that was not found.</p> <p>ExceptionContext enables scripts and other programmatic clients to provide for better error handling.</p>"
)
type exceptionContext = Js.Dict.t<__string>
type eulaIdList = array<__string>
type eulaAcceptance = {
  @ocaml.doc("<p>The EULA ID.</p>") eulaId: option<eulaId>,
  @ocaml.doc("<p>The EULA acceptance ID.</p>") eulaAcceptanceId: option<eulaAcceptanceId>,
  @ocaml.doc("<p>The ID of the acceptee.</p>") accepteeId: option<__string>,
  @ocaml.doc("<p>The ID of the person who accepted the EULA.</p>") acceptedBy: option<__string>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the EULA was accepted.</p>")
  acceptedAt: option<timestamp_>,
}
@ocaml.doc("<p>Represents a EULA resource.</p>")
type eula = {
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was updated.</p>")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The name for the EULA.</p>") name: option<eulaName>,
  @ocaml.doc("<p>The EULA ID.</p>") eulaId: option<eulaId>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The EULA content.</p>") content: option<__string>,
}
type ec2SubnetIdList = array<ec2SubnetId>
@ocaml.doc("<p>The configuration for a render farm that is associated with a studio resource.</p>")
type computeFarmConfiguration = {
  @ocaml.doc(
    "<p>The endpoint of the ComputeFarm that is accessed by the studio component resource.</p>"
  )
  endpoint: option<__string>,
  @ocaml.doc(
    "<p>The name of an Active Directory user that is used on ComputeFarm worker instances.</p>"
  )
  activeDirectoryUser: option<__string>,
}
type activeDirectoryDnsIpAddressList = array<activeDirectoryDnsIpAddress>
@ocaml.doc(
  "<p>An LDAP attribute of an Active Directory computer account, in the form of a name:value pair.</p>"
)
type activeDirectoryComputerAttribute = {
  @ocaml.doc("<p>The value for the LDAP attribute.</p>")
  value: option<activeDirectoryComputerAttributeValue>,
  @ocaml.doc("<p>The name for the LDAP attribute.</p>")
  name: option<activeDirectoryComputerAttributeName>,
}
type studioMembershipList = array<studioMembership>
type studioComponentSummaryList = array<studioComponentSummary>
type studioComponentScriptParameterKeyValueList = array<scriptParameterKeyValue>
type studioComponentInitializationScriptList = array<studioComponentInitializationScript>
type studio = {
  @ocaml.doc(
    "<p>The IAM role that studio users assume when logging in to the Nimble Studio portal.</p>"
  )
  userRoleArn: option<__string>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was updated.</p>")
  updatedAt: option<timestamp_>,
  @ocaml.doc(
    "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
  )
  tags: option<tags>,
  @ocaml.doc("<p>The address of the web page for the studio.</p>") studioUrl: option<__string>,
  @ocaml.doc(
    "<p>The name of the studio, as included in the URL when accessing it in the Nimble Studio portal.</p>"
  )
  studioName: option<studioName>,
  @ocaml.doc(
    "<p>The unique identifier for a studio resource. In Nimble Studio, all other resources are contained in a studio resource.</p>"
  )
  studioId: option<__string>,
  @ocaml.doc("<p>Configuration of the encryption method that is used for the studio.</p>")
  studioEncryptionConfiguration: option<studioEncryptionConfiguration>,
  @ocaml.doc("<p>Additional detail on the studio state.</p>") statusMessage: option<__string>,
  @ocaml.doc("<p>Status codes that provide additional detail on the studio state.</p>")
  statusCode: option<studioStatusCode>,
  @ocaml.doc("<p>The current state of the studio resource.</p>") state: option<studioState>,
  @ocaml.doc(
    "<p>The AWS SSO application client ID used to integrate with AWS SSO to enable AWS SSO users to log in to Nimble portal.</p>"
  )
  ssoClientId: option<__string>,
  @ocaml.doc("<p>The AWS region where the studio resource is located.</p>")
  homeRegion: option<region>,
  @ocaml.doc("<p>A friendly name for the studio.</p>") displayName: option<studioDisplayName>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) that is assigned to a studio resource and uniquely identifies it. ARNs are unique across all Regions.</p>"
  )
  arn: option<__string>,
  @ocaml.doc(
    "<p>The IAM role that studio admins assume when logging in to the Nimble Studio portal.</p>"
  )
  adminRoleArn: option<__string>,
}
type streamingSession = {
  @ocaml.doc("<p>The user ID of the user that most recently updated the resource.</p>")
  updatedBy: option<__string>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was updated.</p>")
  updatedAt: option<timestamp_>,
  @ocaml.doc(
    "<p>The time the streaming session will automatically terminate if not terminated by the user.</p>"
  )
  terminateAt: option<timestamp_>,
  @ocaml.doc(
    "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
  )
  tags: option<tags>,
  @ocaml.doc("<p>The ID of the streaming image.</p>") streamingImageId: option<streamingImageId>,
  @ocaml.doc("<p>The status message for the streaming session.</p>")
  statusMessage: option<__string>,
  @ocaml.doc("<p>The status code.</p>") statusCode: option<streamingSessionStatusCode>,
  @ocaml.doc("<p>The current state.</p>") state: option<streamingSessionState>,
  @ocaml.doc("<p>The session ID.</p>") sessionId: option<streamingImageSessionId>,
  @ocaml.doc(
    "<p>The ID of the launch profile used to control access from the streaming session.</p>"
  )
  launchProfileId: option<__string>,
  @ocaml.doc("<p>The EC2 Instance type used for the streaming session.</p>")
  ec2InstanceType: option<__string>,
  @ocaml.doc("<p>The user ID of the user that created the streaming session.</p>")
  createdBy: option<__string>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The ARN of the resource.</p>") arn: option<__string>,
}
type streamingImage = {
  @ocaml.doc(
    "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
  )
  tags: option<tags>,
  @ocaml.doc("<p>The ID of the streaming image.</p>") streamingImageId: option<streamingImageId>,
  @ocaml.doc("<p>The status message for the streaming image.</p>") statusMessage: option<__string>,
  @ocaml.doc("<p>The status code.</p>") statusCode: option<streamingImageStatusCode>,
  @ocaml.doc("<p>The current state.</p>") state: option<streamingImageState>,
  @ocaml.doc("<p>The platform of the streaming image, either WINDOWS or LINUX.</p>")
  platform: option<streamingImagePlatform>,
  @ocaml.doc(
    "<p>The owner of the streaming image, either the studioId that contains the streaming image, or 'amazon' for images that are provided by Amazon Nimble Studio.</p>"
  )
  owner: option<streamingImageOwner>,
  @ocaml.doc("<p>A friendly name for a streaming image resource.</p>")
  name: option<streamingImageName>,
  @ocaml.doc(
    "<p>The list of EULAs that must be accepted before a Streaming Session can be started using this streaming image.</p>"
  )
  eulaIds: option<eulaIdList>,
  @ocaml.doc("<p>The encryption configuration.</p>")
  encryptionConfiguration: option<streamingImageEncryptionConfiguration>,
  @ocaml.doc("<p>The ID of an EC2 machine image with which to create the streaming image.</p>")
  ec2ImageId: option<ec2ImageId>,
  @ocaml.doc("<p>A human-readable description of the streaming image.</p>")
  description: option<streamingImageDescription>,
  @ocaml.doc("<p>The ARN of the resource.</p>") arn: option<__string>,
}
type streamConfigurationCreate = {
  @ocaml.doc(
    "<p>The streaming images that users can select from when launching a streaming session with this launch profile.</p>"
  )
  streamingImageIds: streamingImageIdList,
  @ocaml.doc(
    "<p>The length of time, in minutes, that a streaming session can run. After this point, Nimble Studio automatically terminates the session.</p>"
  )
  maxSessionLengthInMinutes: option<streamConfigurationMaxSessionLengthInMinutes>,
  @ocaml.doc(
    "<p>The EC2 instance types that users can select from when launching a streaming session with this launch profile.</p>"
  )
  ec2InstanceTypes: streamingInstanceTypeList,
  @ocaml.doc(
    "<p>Enable or disable the use of the system clipboard to copy and paste between the streaming session and streaming client.</p>"
  )
  clipboardMode: streamingClipboardMode,
}
@ocaml.doc("<p>A configuration for a streaming session.</p>")
type streamConfiguration = {
  @ocaml.doc(
    "<p>The streaming images that users can select from when launching a streaming session with this launch profile.</p>"
  )
  streamingImageIds: option<streamingImageIdList>,
  @ocaml.doc(
    "<p>The length of time, in minutes, that a streaming session can run. After this point, Nimble Studio automatically terminates the session.</p>"
  )
  maxSessionLengthInMinutes: option<streamConfigurationMaxSessionLengthInMinutes>,
  @ocaml.doc(
    "<p>The EC2 instance types that users can select from when launching a streaming session with this launch profile.</p>"
  )
  ec2InstanceTypes: option<streamingInstanceTypeList>,
  @ocaml.doc(
    "<p>Enable or disable the use of the system clipboard to copy and paste between the streaming session and streaming client.</p>"
  )
  clipboardMode: option<streamingClipboardMode>,
}
type newStudioMemberList = array<newStudioMember>
type newLaunchProfileMemberList = array<newLaunchProfileMember>
@ocaml.doc("<p></p>") type launchProfileMembershipList = array<launchProfileMembership>
type launchProfileInitializationScriptList = array<launchProfileInitializationScript>
type eulaList = array<eula>
type eulaAcceptanceList = array<eulaAcceptance>
@ocaml.doc(
  "<p>A collection of LDAP attributes to apply to Active Directory computer accounts that are created for streaming sessions.</p>"
)
type activeDirectoryComputerAttributeList = array<activeDirectoryComputerAttribute>
type studioList = array<studio>
type streamingSessionList = array<streamingSession>
type streamingImageList = array<streamingImage>
type launchProfileInitializationActiveDirectory = {
  @ocaml.doc("<p>The name for the studio component.</p>")
  studioComponentName: option<studioComponentName>,
  @ocaml.doc("<p>The unique identifier for a studio component resource.</p>")
  studioComponentId: option<studioComponentId>,
  @ocaml.doc("<p>The name for the organizational unit distinguished name.</p>")
  organizationalUnitDistinguishedName: option<activeDirectoryOrganizationalUnitDistinguishedName>,
  @ocaml.doc("<p>The DNS IP address.</p>") dnsIpAddresses: option<activeDirectoryDnsIpAddressList>,
  @ocaml.doc("<p>The directory name.</p>") directoryName: option<__string>,
  @ocaml.doc(
    "<p>The directory ID of the AWS Directory Service for Microsoft AD to access using this launch profile.</p>"
  )
  directoryId: option<directoryId>,
  @ocaml.doc("<p>A collection of custom attributes for an Active Directory computer.</p>")
  computerAttributes: option<activeDirectoryComputerAttributeList>,
}
type launchProfile = {
  @ocaml.doc("<p>The user ID of the user that most recently updated the resource.</p>")
  updatedBy: option<__string>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was updated.</p>")
  updatedAt: option<timestamp_>,
  @ocaml.doc(
    "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
  )
  tags: option<tags>,
  @ocaml.doc(
    "<p>Unique identifiers for a collection of studio components that can be used with this launch profile.</p>"
  )
  studioComponentIds: option<launchProfileStudioComponentIdList>,
  @ocaml.doc("<p>A configuration for a streaming session.</p>")
  streamConfiguration: option<streamConfiguration>,
  @ocaml.doc("<p>The status message for the launch profile.</p>") statusMessage: option<__string>,
  @ocaml.doc("<p>The status code.</p>") statusCode: option<launchProfileStatusCode>,
  @ocaml.doc("<p>The current state.</p>") state: option<launchProfileState>,
  @ocaml.doc("<p>A friendly name for the launch profile.</p>") name: option<launchProfileName>,
  @ocaml.doc(
    "<p>The version number of the protocol that is used by the launch profile. The only valid version is \"2021-03-31\".</p>"
  )
  launchProfileProtocolVersions: option<launchProfileProtocolVersionList>,
  @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: option<launchProfileId>,
  @ocaml.doc("<p>Unique identifiers for a collection of EC2 subnets.</p>")
  ec2SubnetIds: option<ec2SubnetIdList>,
  @ocaml.doc("<p>A human-readable description of the launch profile.</p>")
  description: option<launchProfileDescription>,
  @ocaml.doc("<p>The user ID of the user that created the launch profile.</p>")
  createdBy: option<__string>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The ARN of the resource.</p>") arn: option<__string>,
}
@ocaml.doc(
  "<p>The configuration for a Microsoft Active Directory (Microsoft AD) studio resource.</p>"
)
type activeDirectoryConfiguration = {
  @ocaml.doc(
    "<p>The distinguished name (DN) and organizational unit (OU) of an Active Directory computer.</p>"
  )
  organizationalUnitDistinguishedName: option<activeDirectoryOrganizationalUnitDistinguishedName>,
  @ocaml.doc(
    "<p>The directory ID of the AWS Directory Service for Microsoft AD to access using this studio component.</p>"
  )
  directoryId: option<directoryId>,
  @ocaml.doc("<p>A collection of custom attributes for an Active Directory computer.</p>")
  computerAttributes: option<activeDirectoryComputerAttributeList>,
}
@ocaml.doc("<p>The configuration of the studio component, based on component type.</p>")
type studioComponentConfiguration = {
  @ocaml.doc(
    "<p>The configuration for a shared file storage system that is associated with a studio resource.</p>"
  )
  sharedFileSystemConfiguration: option<sharedFileSystemConfiguration>,
  @ocaml.doc(
    "<p>The configuration for a license service that is associated with a studio resource.</p>"
  )
  licenseServiceConfiguration: option<licenseServiceConfiguration>,
  @ocaml.doc(
    "<p>The configuration for a render farm that is associated with a studio resource.</p>"
  )
  computeFarmConfiguration: option<computeFarmConfiguration>,
  @ocaml.doc(
    "<p>The configuration for a Microsoft Active Directory (Microsoft AD) studio resource.</p>"
  )
  activeDirectoryConfiguration: option<activeDirectoryConfiguration>,
}
type launchProfileList = array<launchProfile>
type launchProfileInitialization = {
  @ocaml.doc("<p>The user initializtion scripts.</p>")
  userInitializationScripts: option<launchProfileInitializationScriptList>,
  @ocaml.doc("<p>The system initializtion scripts.</p>")
  systemInitializationScripts: option<launchProfileInitializationScriptList>,
  @ocaml.doc("<p>The platform of the launch platform, either WINDOWS or LINUX.</p>")
  platform: option<launchProfilePlatform>,
  @ocaml.doc("<p>The name for the launch profile.</p>") name: option<launchProfileName>,
  @ocaml.doc("<p>The launch purpose.</p>") launchPurpose: option<launchPurpose>,
  @ocaml.doc(
    "<p>The version number of the protocol that is used by the launch profile. The only valid version is \"2021-03-31\".</p>"
  )
  launchProfileProtocolVersion: option<launchProfileProtocolVersion>,
  @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: option<launchProfileId>,
  @ocaml.doc("<p>The EC2 security groups that control access to the studio component.</p>")
  ec2SecurityGroupIds: option<launchProfileSecurityGroupIdList>,
  @ocaml.doc("<p>A LaunchProfileInitializationActiveDirectory resource.</p>")
  activeDirectory: option<launchProfileInitializationActiveDirectory>,
}
@ocaml.doc(
  "<p>A network that is used by a studio’s users and workflows, including render farm, Active Directory, licensing, and file system.</p>"
)
type studioComponent = {
  @ocaml.doc("<p>The user ID of the user that most recently updated the resource.</p>")
  updatedBy: option<__string>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was updated.</p>")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The type of the studio component.</p>") @as("type")
  type_: option<studioComponentType>,
  @ocaml.doc(
    "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
  )
  tags: option<tags>,
  @ocaml.doc("<p>The specific subtype of a studio component.</p>")
  subtype: option<studioComponentSubtype>,
  @ocaml.doc("<p>The unique identifier for a studio component resource.</p>")
  studioComponentId: option<studioComponentId>,
  @ocaml.doc("<p>The status message for the studio component.</p>") statusMessage: option<__string>,
  @ocaml.doc("<p>The status code.</p>") statusCode: option<studioComponentStatusCode>,
  @ocaml.doc("<p>The current state.</p>") state: option<studioComponentState>,
  @ocaml.doc("<p>Parameters for the studio component scripts.</p>")
  scriptParameters: option<studioComponentScriptParameterKeyValueList>,
  @ocaml.doc("<p>A friendly name for the studio component resource.</p>")
  name: option<studioComponentName>,
  @ocaml.doc("<p>Initialization scripts for studio components.</p>")
  initializationScripts: option<studioComponentInitializationScriptList>,
  @ocaml.doc("<p>The EC2 security groups that control access to the studio component.</p>")
  ec2SecurityGroupIds: option<studioComponentSecurityGroupIdList>,
  @ocaml.doc("<p>A human-readable description for the studio component resource.</p>")
  description: option<studioComponentDescription>,
  @ocaml.doc("<p>The user ID of the user that created the studio component.</p>")
  createdBy: option<__string>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The configuration of the studio component, based on component type.</p>")
  configuration: option<studioComponentConfiguration>,
  @ocaml.doc("<p>The ARN of the resource.</p>") arn: option<__string>,
}
type studioComponentList = array<studioComponent>

module UpdateLaunchProfileMember = {
  type t
  @ocaml.doc("<p>The principal ID.</p>")
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The principal ID.</p>") principalId: __string,
    @ocaml.doc("<p>The persona.</p>") persona: launchProfilePersona,
    @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: __string,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p>The member.</p>") member: option<launchProfileMembership>}
  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "UpdateLaunchProfileMemberCommand"
  let make = (~studioId, ~principalId, ~persona, ~launchProfileId, ~clientToken=?, ()) =>
    new({
      studioId: studioId,
      principalId: principalId,
      persona: persona,
      launchProfileId: launchProfileId,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>An array of tag keys to delete.</p>") tagKeys: multiValueQueryStringList,
    @ocaml.doc("<p>The ARN of the target resource for tagging operations.</p>")
    resourceArn: __string,
  }

  @module("@aws-sdk/client-nimble") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  @ocaml.doc("<p>The ARN for the role that manages access.</p>")
  type request = {
    @ocaml.doc(
      "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
    )
    tags: option<tags>,
    @ocaml.doc("<p>The ARN of the target resource for tagging operations.</p>")
    resourceArn: __string,
  }

  @module("@aws-sdk/client-nimble") @new external new: request => t = "TagResourceCommand"
  let make = (~resourceArn, ~tags=?, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the target resource for tagging operations.</p>")
    resourceArn: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
    )
    tags: option<tags>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStudioMember = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The principal ID.</p>") principalId: __string,
  }
  type response = {@ocaml.doc("<p>The member.</p>") member: option<studioMembership>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "GetStudioMemberCommand"
  let make = (~studioId, ~principalId, ()) => new({studioId: studioId, principalId: principalId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStreamingSessionStream = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The stream ID.</p>") streamId: __string,
    @ocaml.doc("<p>The session ID.</p>") sessionId: __string,
  }
  type response = {@ocaml.doc("<p>The stream.</p>") stream: option<streamingSessionStream>}
  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "GetStreamingSessionStreamCommand"
  let make = (~studioId, ~streamId, ~sessionId, ()) =>
    new({studioId: studioId, streamId: streamId, sessionId: sessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLaunchProfileMember = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The principal ID.</p>") principalId: __string,
    @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: __string,
  }
  type response = {@ocaml.doc("<p>The member.</p>") member: option<launchProfileMembership>}
  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "GetLaunchProfileMemberCommand"
  let make = (~studioId, ~principalId, ~launchProfileId, ()) =>
    new({studioId: studioId, principalId: principalId, launchProfileId: launchProfileId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEula = {
  type t
  type request = {@ocaml.doc("<p>The EULA ID.</p>") eulaId: __string}
  type response = {@ocaml.doc("<p>The EULA.</p>") eula: option<eula>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "GetEulaCommand"
  let make = (~eulaId, ()) => new({eulaId: eulaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStudioMember = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The principal ID.</p>") principalId: __string,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }

  @module("@aws-sdk/client-nimble") @new external new: request => t = "DeleteStudioMemberCommand"
  let make = (~studioId, ~principalId, ~clientToken=?, ()) =>
    new({studioId: studioId, principalId: principalId, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLaunchProfileMember = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The principal ID.</p>") principalId: __string,
    @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: __string,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }

  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "DeleteLaunchProfileMemberCommand"
  let make = (~studioId, ~principalId, ~launchProfileId, ~clientToken=?, ()) =>
    new({
      studioId: studioId,
      principalId: principalId,
      launchProfileId: launchProfileId,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateStreamingSessionStream = {
  type t
  @ocaml.doc("<p>A list collection streams.</p>")
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The session ID.</p>") sessionId: __string,
    @ocaml.doc("<p>The expiration time in seconds.</p>")
    expirationInSeconds: option<streamingSessionStreamExpirationInSeconds>,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p>The stream.</p>") stream: option<streamingSessionStream>}
  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "CreateStreamingSessionStreamCommand"
  let make = (~studioId, ~sessionId, ~expirationInSeconds=?, ~clientToken=?, ()) =>
    new({
      studioId: studioId,
      sessionId: sessionId,
      expirationInSeconds: expirationInSeconds,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStudio = {
  type t
  @ocaml.doc("<p>The studio ID.</p>")
  type request = {
    @ocaml.doc(
      "<p>The IAM role that Studio Users will assume when logging in to the Nimble Studio portal.</p>"
    )
    userRoleArn: option<__string>,
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>A friendly name for the studio.</p>") displayName: option<studioDisplayName>,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The IAM role that Studio Admins will assume when logging in to the Nimble Studio portal.</p>"
    )
    adminRoleArn: option<__string>,
  }
  type response = {@ocaml.doc("<p>Information about a studio.</p>") studio: option<studio>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "UpdateStudioCommand"
  let make = (~studioId, ~userRoleArn=?, ~displayName=?, ~clientToken=?, ~adminRoleArn=?, ()) =>
    new({
      userRoleArn: userRoleArn,
      studioId: studioId,
      displayName: displayName,
      clientToken: clientToken,
      adminRoleArn: adminRoleArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStreamingImage = {
  type t
  @ocaml.doc("<p>The streaming image ID.</p>")
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The streaming image ID.</p>") streamingImageId: __string,
    @ocaml.doc("<p>The name for the streaming image.</p>") name: option<streamingImageName>,
    @ocaml.doc("<p>The description.</p>") description: option<streamingImageDescription>,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p></p>") streamingImage: option<streamingImage>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "UpdateStreamingImageCommand"
  let make = (~studioId, ~streamingImageId, ~name=?, ~description=?, ~clientToken=?, ()) =>
    new({
      studioId: studioId,
      streamingImageId: streamingImageId,
      name: name,
      description: description,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartStudioSSOConfigurationRepair = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p>Information about a studio.</p>") studio: option<studio>}
  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "StartStudioSSOConfigurationRepairCommand"
  let make = (~studioId, ~clientToken=?, ()) => new({studioId: studioId, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutStudioMembers = {
  type t
  @ocaml.doc("<p>A launch profile membership collection.</p>")
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>A list of members.</p>") members: newStudioMemberList,
    @ocaml.doc("<p>The ID of the identity store.</p>") identityStoreId: __string,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }

  @module("@aws-sdk/client-nimble") @new external new: request => t = "PutStudioMembersCommand"
  let make = (~studioId, ~members, ~identityStoreId, ~clientToken=?, ()) =>
    new({
      studioId: studioId,
      members: members,
      identityStoreId: identityStoreId,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutLaunchProfileMembers = {
  type t
  @ocaml.doc("<p>Information about a launch profile membership.</p>")
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>A list of members.</p>") members: newLaunchProfileMemberList,
    @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: __string,
    @ocaml.doc("<p>The ID of the identity store.</p>") identityStoreId: __string,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }

  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "PutLaunchProfileMembersCommand"
  let make = (~studioId, ~members, ~launchProfileId, ~identityStoreId, ~clientToken=?, ()) =>
    new({
      studioId: studioId,
      members: members,
      launchProfileId: launchProfileId,
      identityStoreId: identityStoreId,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListStudioMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>A list of members.</p>") members: option<studioMembershipList>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "ListStudioMembersCommand"
  let make = (~studioId, ~nextToken=?, ~maxResults=?, ()) =>
    new({studioId: studioId, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLaunchProfileMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>A list of members.</p>") members: option<launchProfileMembershipList>,
  }
  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "ListLaunchProfileMembersCommand"
  let make = (~studioId, ~launchProfileId, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      studioId: studioId,
      nextToken: nextToken,
      maxResults: maxResults,
      launchProfileId: launchProfileId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEulas = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>A collection of EULA IDs.</p>") eulaIds: option<multiValueQueryStringList>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>A collection of EULA resources.</p>") eulas: option<eulaList>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "ListEulasCommand"
  let make = (~nextToken=?, ~eulaIds=?, ()) => new({nextToken: nextToken, eulaIds: eulaIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEulaAcceptances = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>A collection of EULA IDs.</p>") eulaIds: option<multiValueQueryStringList>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>A collection of EULA acceptances.</p>")
    eulaAcceptances: option<eulaAcceptanceList>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "ListEulaAcceptancesCommand"
  let make = (~studioId, ~nextToken=?, ~eulaIds=?, ()) =>
    new({studioId: studioId, nextToken: nextToken, eulaIds: eulaIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStudio = {
  type t
  type request = {@ocaml.doc("<p>The studio ID.</p>") studioId: __string}
  type response = {@ocaml.doc("<p>Information about a studio.</p>") studio: option<studio>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "GetStudioCommand"
  let make = (~studioId, ()) => new({studioId: studioId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStreamingSession = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The session ID.</p>") sessionId: __string,
  }
  type response = {@ocaml.doc("<p>The session.</p>") session: option<streamingSession>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "GetStreamingSessionCommand"
  let make = (~studioId, ~sessionId, ()) => new({studioId: studioId, sessionId: sessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStreamingImage = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The streaming image ID.</p>") streamingImageId: __string,
  }
  type response = {@ocaml.doc("<p>The streaming image.</p>") streamingImage: option<streamingImage>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "GetStreamingImageCommand"
  let make = (~studioId, ~streamingImageId, ()) =>
    new({studioId: studioId, streamingImageId: streamingImageId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStudio = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p>Information about a studio.</p>") studio: option<studio>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "DeleteStudioCommand"
  let make = (~studioId, ~clientToken=?, ()) => new({studioId: studioId, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStreamingSession = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The session ID.</p>") sessionId: __string,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p>The session.</p>") session: option<streamingSession>}
  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "DeleteStreamingSessionCommand"
  let make = (~studioId, ~sessionId, ~clientToken=?, ()) =>
    new({studioId: studioId, sessionId: sessionId, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStreamingImage = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The streaming image ID.</p>") streamingImageId: __string,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p>The streaming image.</p>") streamingImage: option<streamingImage>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "DeleteStreamingImageCommand"
  let make = (~studioId, ~streamingImageId, ~clientToken=?, ()) =>
    new({studioId: studioId, streamingImageId: streamingImageId, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStudio = {
  type t
  @ocaml.doc("<p>A collection of studio resources.</p>")
  type request = {
    @ocaml.doc(
      "<p>The IAM role that Studio Users will assume when logging in to the Nimble Studio portal.</p>"
    )
    userRoleArn: __string,
    @ocaml.doc(
      "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
    )
    tags: option<tags>,
    @ocaml.doc(
      "<p>The studio name that is used in the URL of the Nimble Studio portal when accessed by Nimble Studio users.</p>"
    )
    studioName: studioName,
    @ocaml.doc("<p>The studio encryption configuration.</p>")
    studioEncryptionConfiguration: option<studioEncryptionConfiguration>,
    @ocaml.doc("<p>A friendly name for the studio.</p>") displayName: studioDisplayName,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The IAM role that Studio Admins will assume when logging in to the Nimble Studio portal.</p>"
    )
    adminRoleArn: __string,
  }
  type response = {@ocaml.doc("<p>Information about a studio.</p>") studio: option<studio>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "CreateStudioCommand"
  let make = (
    ~userRoleArn,
    ~studioName,
    ~displayName,
    ~adminRoleArn,
    ~tags=?,
    ~studioEncryptionConfiguration=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      userRoleArn: userRoleArn,
      tags: tags,
      studioName: studioName,
      studioEncryptionConfiguration: studioEncryptionConfiguration,
      displayName: displayName,
      clientToken: clientToken,
      adminRoleArn: adminRoleArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStreamingSession = {
  type t
  @ocaml.doc("<p>A collection of streaming sessions.</p>")
  type request = {
    @ocaml.doc(
      "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
    )
    tags: option<tags>,
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The ID of the streaming image.</p>") streamingImageId: option<streamingImageId>,
    @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: option<__string>,
    @ocaml.doc("<p>The EC2 Instance type used for the streaming session.</p>")
    ec2InstanceType: option<streamingInstanceType>,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p>The session.</p>") session: option<streamingSession>}
  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "CreateStreamingSessionCommand"
  let make = (
    ~studioId,
    ~tags=?,
    ~streamingImageId=?,
    ~launchProfileId=?,
    ~ec2InstanceType=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      tags: tags,
      studioId: studioId,
      streamingImageId: streamingImageId,
      launchProfileId: launchProfileId,
      ec2InstanceType: ec2InstanceType,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStreamingImage = {
  type t
  @ocaml.doc("<p>A collection of streaming images.</p>")
  type request = {
    @ocaml.doc(
      "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
    )
    tags: option<tags>,
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>A friendly name for a streaming image resource.</p>") name: streamingImageName,
    @ocaml.doc("<p>The ID of an EC2 machine image with which to create this streaming image.</p>")
    ec2ImageId: ec2ImageId,
    @ocaml.doc("<p>A human-readable description of the streaming image.</p>")
    description: option<streamingImageDescription>,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {streamingImage: option<streamingImage>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "CreateStreamingImageCommand"
  let make = (~studioId, ~name, ~ec2ImageId, ~tags=?, ~description=?, ~clientToken=?, ()) =>
    new({
      tags: tags,
      studioId: studioId,
      name: name,
      ec2ImageId: ec2ImageId,
      description: description,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptEulas = {
  type t
  @ocaml.doc("<p>A collection of EULA acceptances.</p>")
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The EULA ID.</p>") eulaIds: option<eulaIdList>,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {
    @ocaml.doc("<p>A collection of EULA acceptances.</p>")
    eulaAcceptances: option<eulaAcceptanceList>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "AcceptEulasCommand"
  let make = (~studioId, ~eulaIds=?, ~clientToken=?, ()) =>
    new({studioId: studioId, eulaIds: eulaIds, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLaunchProfile = {
  type t
  @ocaml.doc("<p>The launch profile ID.</p>")
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc(
      "<p>Unique identifiers for a collection of studio components that can be used with this launch profile.</p>"
    )
    studioComponentIds: option<launchProfileStudioComponentIdList>,
    @ocaml.doc("<p>A configuration for a streaming session.</p>")
    streamConfiguration: option<streamConfigurationCreate>,
    @ocaml.doc("<p>The name for the launch profile.</p>") name: option<launchProfileName>,
    @ocaml.doc(
      "<p>The version number of the protocol that is used by the launch profile. The only valid version is \"2021-03-31\".</p>"
    )
    launchProfileProtocolVersions: option<launchProfileProtocolVersionList>,
    @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: __string,
    @ocaml.doc("<p>The description.</p>") description: option<launchProfileDescription>,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p>The launch profile.</p>") launchProfile: option<launchProfile>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "UpdateLaunchProfileCommand"
  let make = (
    ~studioId,
    ~launchProfileId,
    ~studioComponentIds=?,
    ~streamConfiguration=?,
    ~name=?,
    ~launchProfileProtocolVersions=?,
    ~description=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      studioId: studioId,
      studioComponentIds: studioComponentIds,
      streamConfiguration: streamConfiguration,
      name: name,
      launchProfileProtocolVersions: launchProfileProtocolVersions,
      launchProfileId: launchProfileId,
      description: description,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStudios = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>A collection of studios.</p>") studios: option<studioList>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "ListStudiosCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreamingSessions = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>A collection of session IDs.</p>") sessionIds: option<__string>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>The user ID.</p>") createdBy: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>A collection of streaming sessions.</p>") sessions: option<streamingSessionList>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "ListStreamingSessionsCommand"
  let make = (~studioId, ~sessionIds=?, ~nextToken=?, ~createdBy=?, ()) =>
    new({studioId: studioId, sessionIds: sessionIds, nextToken: nextToken, createdBy: createdBy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreamingImages = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The owner.</p>") owner: option<__string>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>A collection of streaming images.</p>")
    streamingImages: option<streamingImageList>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "ListStreamingImagesCommand"
  let make = (~studioId, ~owner=?, ~nextToken=?, ()) =>
    new({studioId: studioId, owner: owner, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLaunchProfileDetails = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: __string,
  }
  type response = {
    @ocaml.doc("<p>A collection of studio component summaries.</p>")
    studioComponentSummaries: option<studioComponentSummaryList>,
    @ocaml.doc("<p>A collection of streaming images.</p>")
    streamingImages: option<streamingImageList>,
    @ocaml.doc("<p>The launch profile.</p>") launchProfile: option<launchProfile>,
  }
  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "GetLaunchProfileDetailsCommand"
  let make = (~studioId, ~launchProfileId, ()) =>
    new({studioId: studioId, launchProfileId: launchProfileId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLaunchProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: __string,
  }
  type response = {@ocaml.doc("<p>The launch profile.</p>") launchProfile: option<launchProfile>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "GetLaunchProfileCommand"
  let make = (~studioId, ~launchProfileId, ()) =>
    new({studioId: studioId, launchProfileId: launchProfileId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLaunchProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: __string,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p>The launch profile.</p>") launchProfile: option<launchProfile>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "DeleteLaunchProfileCommand"
  let make = (~studioId, ~launchProfileId, ~clientToken=?, ()) =>
    new({studioId: studioId, launchProfileId: launchProfileId, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLaunchProfile = {
  type t
  @ocaml.doc("<p>A collection of launch profiles.</p>")
  type request = {
    @ocaml.doc(
      "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
    )
    tags: option<tags>,
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc(
      "<p>Unique identifiers for a collection of studio components that can be used with this launch profile.</p>"
    )
    studioComponentIds: launchProfileStudioComponentIdList,
    @ocaml.doc("<p>A configuration for a streaming session.</p>")
    streamConfiguration: streamConfigurationCreate,
    @ocaml.doc("<p>The name for the launch profile.</p>") name: launchProfileName,
    @ocaml.doc(
      "<p>The version number of the protocol that is used by the launch profile. The only valid version is \"2021-03-31\".</p>"
    )
    launchProfileProtocolVersions: launchProfileProtocolVersionList,
    ec2SubnetIds: ec2SubnetIdList,
    @ocaml.doc("<p>The description.</p>") description: option<launchProfileDescription>,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p>The launch profile.</p>") launchProfile: option<launchProfile>}
  @module("@aws-sdk/client-nimble") @new external new: request => t = "CreateLaunchProfileCommand"
  let make = (
    ~studioId,
    ~studioComponentIds,
    ~streamConfiguration,
    ~name,
    ~launchProfileProtocolVersions,
    ~ec2SubnetIds,
    ~tags=?,
    ~description=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      tags: tags,
      studioId: studioId,
      studioComponentIds: studioComponentIds,
      streamConfiguration: streamConfiguration,
      name: name,
      launchProfileProtocolVersions: launchProfileProtocolVersions,
      ec2SubnetIds: ec2SubnetIds,
      description: description,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLaunchProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>A list of states.</p>") states: option<multiValueQueryStringList>,
    @ocaml.doc("<p>The principal ID.</p>") principalId: option<__string>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>A collection of launch profiles.</p>") launchProfiles: option<launchProfileList>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "ListLaunchProfilesCommand"
  let make = (~studioId, ~states=?, ~principalId=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      studioId: studioId,
      states: states,
      principalId: principalId,
      nextToken: nextToken,
      maxResults: maxResults,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLaunchProfileInitialization = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The platform.</p>") platform: __string,
    @ocaml.doc("<p>The launch purpose.</p>") launchPurpose: __string,
    @ocaml.doc("<p>A collection of launch profile protocol versions.</p>")
    launchProfileProtocolVersions: multiValueQueryStringList,
    @ocaml.doc("<p>The launch profile ID.</p>") launchProfileId: __string,
  }
  type response = {
    @ocaml.doc("<p>The launch profile initialization.</p>")
    launchProfileInitialization: option<launchProfileInitialization>,
  }
  @module("@aws-sdk/client-nimble") @new
  external new: request => t = "GetLaunchProfileInitializationCommand"
  let make = (
    ~studioId,
    ~platform,
    ~launchPurpose,
    ~launchProfileProtocolVersions,
    ~launchProfileId,
    (),
  ) =>
    new({
      studioId: studioId,
      platform: platform,
      launchPurpose: launchPurpose,
      launchProfileProtocolVersions: launchProfileProtocolVersions,
      launchProfileId: launchProfileId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStudioComponent = {
  type t
  @ocaml.doc("<p>The studio component ID.</p>")
  type request = {
    @ocaml.doc("<p>The type of the studio component.</p>") @as("type")
    type_: option<studioComponentType>,
    @ocaml.doc("<p>The specific subtype of a studio component.</p>")
    subtype: option<studioComponentSubtype>,
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The studio component ID.</p>") studioComponentId: __string,
    @ocaml.doc("<p>Parameters for the studio component scripts.</p>")
    scriptParameters: option<studioComponentScriptParameterKeyValueList>,
    @ocaml.doc("<p>The name for the studio component.</p>") name: option<studioComponentName>,
    @ocaml.doc("<p>Initialization scripts for studio components.</p>")
    initializationScripts: option<studioComponentInitializationScriptList>,
    @ocaml.doc("<p>The EC2 security groups that control access to the studio component.</p>")
    ec2SecurityGroupIds: option<studioComponentSecurityGroupIdList>,
    @ocaml.doc("<p>The description.</p>") description: option<studioComponentDescription>,
    @ocaml.doc("<p>The configuration of the studio component, based on component type.</p>")
    configuration: option<studioComponentConfiguration>,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {
    @ocaml.doc("<p>Information about the studio component.</p>")
    studioComponent: option<studioComponent>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "UpdateStudioComponentCommand"
  let make = (
    ~studioId,
    ~studioComponentId,
    ~type_=?,
    ~subtype=?,
    ~scriptParameters=?,
    ~name=?,
    ~initializationScripts=?,
    ~ec2SecurityGroupIds=?,
    ~description=?,
    ~configuration=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      type_: type_,
      subtype: subtype,
      studioId: studioId,
      studioComponentId: studioComponentId,
      scriptParameters: scriptParameters,
      name: name,
      initializationScripts: initializationScripts,
      ec2SecurityGroupIds: ec2SecurityGroupIds,
      description: description,
      configuration: configuration,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStudioComponent = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The studio component ID.</p>") studioComponentId: __string,
  }
  type response = {
    @ocaml.doc("<p>Information about the studio component.</p>")
    studioComponent: option<studioComponent>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "GetStudioComponentCommand"
  let make = (~studioId, ~studioComponentId, ()) =>
    new({studioId: studioId, studioComponentId: studioComponentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStudioComponent = {
  type t
  type request = {
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>The studio component ID.</p>") studioComponentId: __string,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {
    @ocaml.doc("<p>Information about the studio component.</p>")
    studioComponent: option<studioComponent>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "DeleteStudioComponentCommand"
  let make = (~studioId, ~studioComponentId, ~clientToken=?, ()) =>
    new({studioId: studioId, studioComponentId: studioComponentId, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStudioComponent = {
  type t
  @ocaml.doc("<p>The studio components.</p>")
  type request = {
    @ocaml.doc("<p>The type of the studio component.</p>") @as("type") type_: studioComponentType,
    @ocaml.doc(
      "<p>A collection of labels, in the form of key:value pairs, that apply to this resource.</p>"
    )
    tags: option<tags>,
    @ocaml.doc("<p>The specific subtype of a studio component.</p>")
    subtype: option<studioComponentSubtype>,
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>Parameters for the studio component scripts.</p>")
    scriptParameters: option<studioComponentScriptParameterKeyValueList>,
    @ocaml.doc("<p>The name for the studio component.</p>") name: studioComponentName,
    @ocaml.doc("<p>Initialization scripts for studio components.</p>")
    initializationScripts: option<studioComponentInitializationScriptList>,
    @ocaml.doc("<p>The EC2 security groups that control access to the studio component.</p>")
    ec2SecurityGroupIds: option<studioComponentSecurityGroupIdList>,
    @ocaml.doc("<p>The description.</p>") description: option<studioComponentDescription>,
    @ocaml.doc("<p>The configuration of the studio component, based on component type.</p>")
    configuration: option<studioComponentConfiguration>,
    @ocaml.doc(
      "<p>To make an idempotent API request using one of these actions, specify a client token in the request. You should not reuse the same client token for other API requests. If you retry a request that completed successfully using the same client token and the same parameters, the retry succeeds without performing any further actions. If you retry a successful request using the same client token, but one or more of the parameters are different, the retry fails with a ValidationException error.</p>"
    )
    clientToken: option<clientToken>,
  }
  type response = {
    @ocaml.doc("<p>Information about the studio component.</p>")
    studioComponent: option<studioComponent>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "CreateStudioComponentCommand"
  let make = (
    ~type_,
    ~studioId,
    ~name,
    ~tags=?,
    ~subtype=?,
    ~scriptParameters=?,
    ~initializationScripts=?,
    ~ec2SecurityGroupIds=?,
    ~description=?,
    ~configuration=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      type_: type_,
      tags: tags,
      subtype: subtype,
      studioId: studioId,
      scriptParameters: scriptParameters,
      name: name,
      initializationScripts: initializationScripts,
      ec2SecurityGroupIds: ec2SecurityGroupIds,
      description: description,
      configuration: configuration,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStudioComponents = {
  type t
  type request = {
    @ocaml.doc("<p>The types.</p>") types: option<multiValueQueryStringList>,
    @ocaml.doc("<p>The studio ID.</p>") studioId: __string,
    @ocaml.doc("<p>A list of states.</p>") states: option<multiValueQueryStringList>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A collection of studio components.</p>")
    studioComponents: option<studioComponentList>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-nimble") @new external new: request => t = "ListStudioComponentsCommand"
  let make = (~studioId, ~types=?, ~states=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      types: types,
      studioId: studioId,
      states: states,
      nextToken: nextToken,
      maxResults: maxResults,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
