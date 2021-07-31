type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-appstream") @new
external createClient: unit => awsServiceClient = "AppStreamClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type visibilityType = [@as("SHARED") #SHARED | @as("PRIVATE") #PRIVATE | @as("PUBLIC") #PUBLIC]
type username = string
type userStackAssociationErrorCode = [
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("DIRECTORY_NOT_FOUND") #DIRECTORY_NOT_FOUND
  | @as("USER_NAME_NOT_FOUND") #USER_NAME_NOT_FOUND
  | @as("STACK_NOT_FOUND") #STACK_NOT_FOUND
]
type userId = string
type userAttributeValue = string
type usageReportSchedule = [@as("DAILY") #DAILY]
type usageReportExecutionErrorCode = [
  | @as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR
  | @as("ACCESS_DENIED") #ACCESS_DENIED
  | @as("RESOURCE_NOT_FOUND") #RESOURCE_NOT_FOUND
]
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
type streamingUrlUserId = string
type streamView = [@as("DESKTOP") #DESKTOP | @as("APP") #APP]
type storageConnectorType = [
  | @as("ONE_DRIVE") #ONE_DRIVE
  | @as("GOOGLE_DRIVE") #GOOGLE_DRIVE
  | @as("HOMEFOLDERS") #HOMEFOLDERS
]
type stackErrorCode = [
  | @as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR
  | @as("STORAGE_CONNECTOR_ERROR") #STORAGE_CONNECTOR_ERROR
]
type stackAttribute = [
  | @as("ACCESS_ENDPOINTS") #ACCESS_ENDPOINTS
  | @as("IAM_ROLE_ARN") #IAM_ROLE_ARN
  | @as("EMBED_HOST_DOMAINS") #EMBED_HOST_DOMAINS
  | @as("USER_SETTINGS") #USER_SETTINGS
  | @as("THEME_NAME") #THEME_NAME
  | @as("FEEDBACK_URL") #FEEDBACK_URL
  | @as("REDIRECT_URL") #REDIRECT_URL
  | @as("STORAGE_CONNECTOR_ONE_DRIVE") #STORAGE_CONNECTOR_ONE_DRIVE
  | @as("STORAGE_CONNECTOR_GOOGLE_DRIVE") #STORAGE_CONNECTOR_GOOGLE_DRIVE
  | @as("STORAGE_CONNECTOR_HOMEFOLDERS") #STORAGE_CONNECTOR_HOMEFOLDERS
  | @as("STORAGE_CONNECTORS") #STORAGE_CONNECTORS
]
type settingsGroup = string
type sessionState = [@as("EXPIRED") #EXPIRED | @as("PENDING") #PENDING | @as("ACTIVE") #ACTIVE]
type sessionConnectionState = [@as("NOT_CONNECTED") #NOT_CONNECTED | @as("CONNECTED") #CONNECTED]
type resourceIdentifier = string
type regionName = string
type redirectURL = string
type platformType = [
  | @as("WINDOWS_SERVER_2019") #WINDOWS_SERVER_2019
  | @as("WINDOWS_SERVER_2016") #WINDOWS_SERVER_2016
  | @as("WINDOWS") #WINDOWS
]
type permission = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type organizationalUnitDistinguishedName = string
type name = string
type messageAction = [@as("RESEND") #RESEND | @as("SUPPRESS") #SUPPRESS]
type maxResults = int
type long = float
type integer_ = int
type imageStateChangeReasonCode = [
  | @as("IMAGE_COPY_FAILURE") #IMAGE_COPY_FAILURE
  | @as("IMAGE_BUILDER_NOT_AVAILABLE") #IMAGE_BUILDER_NOT_AVAILABLE
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type imageState = [
  | @as("IMPORTING") #IMPORTING
  | @as("CREATING") #CREATING
  | @as("DELETING") #DELETING
  | @as("COPYING") #COPYING
  | @as("FAILED") #FAILED
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type imageBuilderStateChangeReasonCode = [
  | @as("IMAGE_UNAVAILABLE") #IMAGE_UNAVAILABLE
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type imageBuilderState = [
  | @as("PENDING_QUALIFICATION") #PENDING_QUALIFICATION
  | @as("UPDATING") #UPDATING
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("SNAPSHOTTING") #SNAPSHOTTING
  | @as("REBOOTING") #REBOOTING
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("RUNNING") #RUNNING
  | @as("UPDATING_AGENT") #UPDATING_AGENT
  | @as("PENDING") #PENDING
]
type fleetType = [@as("ON_DEMAND") #ON_DEMAND | @as("ALWAYS_ON") #ALWAYS_ON]
type fleetState = [
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
]
type fleetErrorCode = [
  | @as("DOMAIN_JOIN_INTERNAL_SERVICE_ERROR") #DOMAIN_JOIN_INTERNAL_SERVICE_ERROR
  | @as("DOMAIN_JOIN_NERR_PASSWORD_EXPIRED") #DOMAIN_JOIN_NERR_PASSWORD_EXPIRED
  | @as("DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED")
  #DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED
  | @as("DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED") #DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED
  | @as("DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME") #DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME
  | @as("DOMAIN_JOIN_ERROR_NOT_SUPPORTED") #DOMAIN_JOIN_ERROR_NOT_SUPPORTED
  | @as("DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN") #DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN
  | @as("DOMAIN_JOIN_ERROR_MORE_DATA") #DOMAIN_JOIN_ERROR_MORE_DATA
  | @as("DOMAIN_JOIN_ERROR_INVALID_PARAMETER") #DOMAIN_JOIN_ERROR_INVALID_PARAMETER
  | @as("DOMAIN_JOIN_ERROR_LOGON_FAILURE") #DOMAIN_JOIN_ERROR_LOGON_FAILURE
  | @as("DOMAIN_JOIN_ERROR_ACCESS_DENIED") #DOMAIN_JOIN_ERROR_ACCESS_DENIED
  | @as("DOMAIN_JOIN_ERROR_FILE_NOT_FOUND") #DOMAIN_JOIN_ERROR_FILE_NOT_FOUND
  | @as("FLEET_INSTANCE_PROVISIONING_FAILURE") #FLEET_INSTANCE_PROVISIONING_FAILURE
  | @as("FLEET_STOPPED") #FLEET_STOPPED
  | @as("IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION")
  #IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION
  | @as("IGW_NOT_ATTACHED") #IGW_NOT_ATTACHED
  | @as("SECURITY_GROUPS_NOT_FOUND") #SECURITY_GROUPS_NOT_FOUND
  | @as("INVALID_SUBNET_CONFIGURATION") #INVALID_SUBNET_CONFIGURATION
  | @as("IMAGE_NOT_FOUND") #IMAGE_NOT_FOUND
  | @as("SUBNET_NOT_FOUND") #SUBNET_NOT_FOUND
  | @as("IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION")
  #IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION
  | @as("SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES") #SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES
  | @as("STS_DISABLED_IN_REGION") #STS_DISABLED_IN_REGION
  | @as("MACHINE_ROLE_IS_MISSING") #MACHINE_ROLE_IS_MISSING
  | @as("IAM_SERVICE_ROLE_IS_MISSING") #IAM_SERVICE_ROLE_IS_MISSING
  | @as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR
  | @as("NETWORK_INTERFACE_LIMIT_EXCEEDED") #NETWORK_INTERFACE_LIMIT_EXCEEDED
  | @as("IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION") #IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION
  | @as("IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION") #IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION
  | @as("IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION")
  #IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION
]
type fleetAttribute = [
  | @as("IAM_ROLE_ARN") #IAM_ROLE_ARN
  | @as("DOMAIN_JOIN_INFO") #DOMAIN_JOIN_INFO
  | @as("VPC_CONFIGURATION_SECURITY_GROUP_IDS") #VPC_CONFIGURATION_SECURITY_GROUP_IDS
  | @as("VPC_CONFIGURATION") #VPC_CONFIGURATION
]
type feedbackURL = string
type errorMessage = string
type embedHostDomain = string
type domain = string
type displayName = string
type directoryName = string
type description = string
type describeImagesMaxResults = int
type booleanObject = bool
type boolean_ = bool
type awsAccountId = string
type authenticationType = [@as("USERPOOL") #USERPOOL | @as("SAML") #SAML | @as("API") #API]
type arn = string
type appstreamAgentVersion = string
type action = [
  | @as("DOMAIN_SMART_CARD_SIGNIN") #DOMAIN_SMART_CARD_SIGNIN
  | @as("DOMAIN_PASSWORD_SIGNIN") #DOMAIN_PASSWORD_SIGNIN
  | @as("PRINTING_TO_LOCAL_DEVICE") #PRINTING_TO_LOCAL_DEVICE
  | @as("FILE_DOWNLOAD") #FILE_DOWNLOAD
  | @as("FILE_UPLOAD") #FILE_UPLOAD
  | @as("CLIPBOARD_COPY_TO_LOCAL_DEVICE") #CLIPBOARD_COPY_TO_LOCAL_DEVICE
  | @as("CLIPBOARD_COPY_FROM_LOCAL_DEVICE") #CLIPBOARD_COPY_FROM_LOCAL_DEVICE
]
type accountPassword = string
type accountName = string
type accessEndpointType = [@as("STREAMING") #STREAMING]
type userStackAssociation = {
  @as("SendEmailNotification") sendEmailNotification: option<boolean_>,
  @as("AuthenticationType") authenticationType: authenticationType,
  @as("UserName") userName: username,
  @as("StackName") stackName: string_,
}
type userSetting = {
  @as("Permission") permission: permission,
  @as("Action") action: action,
}
type user = {
  @as("AuthenticationType") authenticationType: authenticationType,
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("LastName") lastName: option<userAttributeValue>,
  @as("FirstName") firstName: option<userAttributeValue>,
  @as("Status") status: option<string_>,
  @as("Enabled") enabled: option<boolean_>,
  @as("UserName") userName: option<username>,
  @as("Arn") arn: option<arn>,
}
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type subnetIdList = array<string_>
type stringList = array<string_>
type stackError = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<stackErrorCode>,
}
type stackAttributes = array<stackAttribute>
type serviceAccountCredentials = {
  @as("AccountPassword") accountPassword: accountPassword,
  @as("AccountName") accountName: accountName,
}
type securityGroupIdList = array<string_>
type resourceError = {
  @as("ErrorTimestamp") errorTimestamp: option<timestamp_>,
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<fleetErrorCode>,
}
type organizationalUnitDistinguishedNamesList = array<organizationalUnitDistinguishedName>
type networkAccessConfiguration = {
  @as("EniId") eniId: option<string_>,
  @as("EniPrivateIpAddress") eniPrivateIpAddress: option<string_>,
}
type metadata = Js.Dict.t<string_>
type lastReportGenerationExecutionError = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<usageReportExecutionErrorCode>,
}
type imageStateChangeReason = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<imageStateChangeReasonCode>,
}
type imagePermissions = {
  allowImageBuilder: option<booleanObject>,
  allowFleet: option<booleanObject>,
}
type imageBuilderStateChangeReason = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<imageBuilderStateChangeReasonCode>,
}
type fleetError = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<fleetErrorCode>,
}
type fleetAttributes = array<fleetAttribute>
type embedHostDomains = array<embedHostDomain>
type domainList = array<domain>
type domainJoinInfo = {
  @as("OrganizationalUnitDistinguishedName")
  organizationalUnitDistinguishedName: option<organizationalUnitDistinguishedName>,
  @as("DirectoryName") directoryName: option<directoryName>,
}
type directoryNameList = array<directoryName>
type computeCapacityStatus = {
  @as("Available") available: option<integer_>,
  @as("InUse") inUse: option<integer_>,
  @as("Running") running: option<integer_>,
  @as("Desired") desired: integer_,
}
type computeCapacity = {@as("DesiredInstances") desiredInstances: integer_}
type awsAccountIdList = array<awsAccountId>
type arnList = array<arn>
type applicationSettingsResponse = {
  @as("S3BucketName") s3BucketName: option<string_>,
  @as("SettingsGroup") settingsGroup: option<settingsGroup>,
  @as("Enabled") enabled: option<boolean_>,
}
type applicationSettings = {
  @as("SettingsGroup") settingsGroup: option<settingsGroup>,
  @as("Enabled") enabled: boolean_,
}
type accessEndpoint = {
  @as("VpceId") vpceId: option<string_>,
  @as("EndpointType") endpointType: accessEndpointType,
}
type vpcConfig = {
  @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdList>,
  @as("SubnetIds") subnetIds: option<subnetIdList>,
}
type userStackAssociationList = array<userStackAssociation>
type userStackAssociationError = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<userStackAssociationErrorCode>,
  @as("UserStackAssociation") userStackAssociation: option<userStackAssociation>,
}
type userSettingList = array<userSetting>
type userList = array<user>
type storageConnector = {
  @as("Domains") domains: option<domainList>,
  @as("ResourceIdentifier") resourceIdentifier: option<resourceIdentifier>,
  @as("ConnectorType") connectorType: storageConnectorType,
}
type stackErrors = array<stackError>
type sharedImagePermissions = {
  imagePermissions: imagePermissions,
  sharedAccountId: awsAccountId,
}
type session = {
  @as("NetworkAccessConfiguration") networkAccessConfiguration: option<networkAccessConfiguration>,
  @as("AuthenticationType") authenticationType: option<authenticationType>,
  @as("MaxExpirationTime") maxExpirationTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
  @as("ConnectionState") connectionState: option<sessionConnectionState>,
  @as("State") state: sessionState,
  @as("FleetName") fleetName: string_,
  @as("StackName") stackName: string_,
  @as("UserId") userId: userId,
  @as("Id") id: string_,
}
type resourceErrors = array<resourceError>
type lastReportGenerationExecutionErrors = array<lastReportGenerationExecutionError>
type fleetErrors = array<fleetError>
type directoryConfig = {
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("ServiceAccountCredentials") serviceAccountCredentials: option<serviceAccountCredentials>,
  @as("OrganizationalUnitDistinguishedNames")
  organizationalUnitDistinguishedNames: option<organizationalUnitDistinguishedNamesList>,
  @as("DirectoryName") directoryName: directoryName,
}
type application = {
  @as("Metadata") metadata: option<metadata>,
  @as("Enabled") enabled: option<boolean_>,
  @as("LaunchParameters") launchParameters: option<string_>,
  @as("LaunchPath") launchPath: option<string_>,
  @as("IconURL") iconURL: option<string_>,
  @as("DisplayName") displayName: option<string_>,
  @as("Name") name: option<string_>,
}
type accessEndpointList = array<accessEndpoint>
type userStackAssociationErrorList = array<userStackAssociationError>
type usageReportSubscription = {
  @as("SubscriptionErrors") subscriptionErrors: option<lastReportGenerationExecutionErrors>,
  @as("LastGeneratedReportDate") lastGeneratedReportDate: option<timestamp_>,
  @as("Schedule") schedule: option<usageReportSchedule>,
  @as("S3BucketName") s3BucketName: option<string_>,
}
type storageConnectorList = array<storageConnector>
type sharedImagePermissionsList = array<sharedImagePermissions>
type sessionList = array<session>
type imageBuilder = {
  @as("AccessEndpoints") accessEndpoints: option<accessEndpointList>,
  @as("AppstreamAgentVersion") appstreamAgentVersion: option<appstreamAgentVersion>,
  @as("ImageBuilderErrors") imageBuilderErrors: option<resourceErrors>,
  @as("NetworkAccessConfiguration") networkAccessConfiguration: option<networkAccessConfiguration>,
  @as("DomainJoinInfo") domainJoinInfo: option<domainJoinInfo>,
  @as("EnableDefaultInternetAccess") enableDefaultInternetAccess: option<booleanObject>,
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("StateChangeReason") stateChangeReason: option<imageBuilderStateChangeReason>,
  @as("State") state: option<imageBuilderState>,
  @as("IamRoleArn") iamRoleArn: option<arn>,
  @as("Platform") platform: option<platformType>,
  @as("InstanceType") instanceType: option<string_>,
  @as("VpcConfig") vpcConfig: option<vpcConfig>,
  @as("DisplayName") displayName: option<string_>,
  @as("Description") description: option<string_>,
  @as("ImageArn") imageArn: option<arn>,
  @as("Arn") arn: option<arn>,
  @as("Name") name: string_,
}
type fleet = {
  @as("StreamView") streamView: option<streamView>,
  @as("IamRoleArn") iamRoleArn: option<arn>,
  @as("IdleDisconnectTimeoutInSeconds") idleDisconnectTimeoutInSeconds: option<integer_>,
  @as("DomainJoinInfo") domainJoinInfo: option<domainJoinInfo>,
  @as("EnableDefaultInternetAccess") enableDefaultInternetAccess: option<booleanObject>,
  @as("FleetErrors") fleetErrors: option<fleetErrors>,
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("VpcConfig") vpcConfig: option<vpcConfig>,
  @as("State") state: fleetState,
  @as("DisconnectTimeoutInSeconds") disconnectTimeoutInSeconds: option<integer_>,
  @as("MaxUserDurationInSeconds") maxUserDurationInSeconds: option<integer_>,
  @as("ComputeCapacityStatus") computeCapacityStatus: computeCapacityStatus,
  @as("FleetType") fleetType: option<fleetType>,
  @as("InstanceType") instanceType: string_,
  @as("ImageArn") imageArn: option<arn>,
  @as("ImageName") imageName: option<string_>,
  @as("Description") description: option<string_>,
  @as("DisplayName") displayName: option<string_>,
  @as("Name") name: string_,
  @as("Arn") arn: arn,
}
type directoryConfigList = array<directoryConfig>
type applications = array<application>
type usageReportSubscriptionList = array<usageReportSubscription>
type stack = {
  @as("EmbedHostDomains") embedHostDomains: option<embedHostDomains>,
  @as("AccessEndpoints") accessEndpoints: option<accessEndpointList>,
  @as("ApplicationSettings") applicationSettings: option<applicationSettingsResponse>,
  @as("UserSettings") userSettings: option<userSettingList>,
  @as("StackErrors") stackErrors: option<stackErrors>,
  @as("FeedbackURL") feedbackURL: option<feedbackURL>,
  @as("RedirectURL") redirectURL: option<redirectURL>,
  @as("StorageConnectors") storageConnectors: option<storageConnectorList>,
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("DisplayName") displayName: option<string_>,
  @as("Description") description: option<string_>,
  @as("Name") name: string_,
  @as("Arn") arn: option<arn>,
}
type imageBuilderList = array<imageBuilder>
type image = {
  @as("ImageErrors") imageErrors: option<resourceErrors>,
  @as("ImagePermissions") imagePermissions: option<imagePermissions>,
  @as("AppstreamAgentVersion") appstreamAgentVersion: option<appstreamAgentVersion>,
  @as("PublicBaseImageReleasedDate") publicBaseImageReleasedDate: option<timestamp_>,
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("Applications") applications: option<applications>,
  @as("StateChangeReason") stateChangeReason: option<imageStateChangeReason>,
  @as("Description") description: option<string_>,
  @as("Platform") platform: option<platformType>,
  @as("ImageBuilderName") imageBuilderName: option<string_>,
  @as("ImageBuilderSupported") imageBuilderSupported: option<boolean_>,
  @as("Visibility") visibility: option<visibilityType>,
  @as("State") state: option<imageState>,
  @as("DisplayName") displayName: option<string_>,
  @as("BaseImageArn") baseImageArn: option<arn>,
  @as("Arn") arn: option<arn>,
  @as("Name") name: string_,
}
type fleetList = array<fleet>
type stackList = array<stack>
type imageList = array<image>

module StopFleet = {
  type t
  type request = {@as("Name") name: string_}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "StopFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartFleet = {
  type t
  type request = {@as("Name") name: string_}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "StartFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExpireSession = {
  type t
  type request = {@as("SessionId") sessionId: string_}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "ExpireSessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableUser = {
  type t
  type request = {
    @as("AuthenticationType") authenticationType: authenticationType,
    @as("UserName") userName: username,
  }
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "EnableUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateFleet = {
  type t
  type request = {
    @as("StackName") stackName: string_,
    @as("FleetName") fleetName: string_,
  }
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "DisassociateFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableUser = {
  type t
  type request = {
    @as("AuthenticationType") authenticationType: authenticationType,
    @as("UserName") userName: username,
  }
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "DisableUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUser = {
  type t
  type request = {
    @as("AuthenticationType") authenticationType: authenticationType,
    @as("UserName") userName: username,
  }
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "DeleteUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUsageReportSubscription = {
  type t
  type request = unit
  type response = unit
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "DeleteUsageReportSubscriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStack = {
  type t
  type request = {@as("Name") name: string_}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "DeleteStackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteImagePermissions = {
  type t
  type request = {
    @as("SharedAccountId") sharedAccountId: awsAccountId,
    @as("Name") name: name,
  }
  type response = unit
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "DeleteImagePermissionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFleet = {
  type t
  type request = {@as("Name") name: string_}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "DeleteFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDirectoryConfig = {
  type t
  type request = {@as("DirectoryName") directoryName: directoryName}
  type response = unit
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "DeleteDirectoryConfigCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUser = {
  type t
  type request = {
    @as("AuthenticationType") authenticationType: authenticationType,
    @as("LastName") lastName: option<userAttributeValue>,
    @as("FirstName") firstName: option<userAttributeValue>,
    @as("MessageAction") messageAction: option<messageAction>,
    @as("UserName") userName: username,
  }
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "CreateUserCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUsageReportSubscription = {
  type t
  type request = unit
  type response = {
    @as("Schedule") schedule: option<usageReportSchedule>,
    @as("S3BucketName") s3BucketName: option<string_>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "CreateUsageReportSubscriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStreamingURL = {
  type t
  type request = {
    @as("SessionContext") sessionContext: option<string_>,
    @as("Validity") validity: option<long>,
    @as("ApplicationId") applicationId: option<string_>,
    @as("UserId") userId: streamingUrlUserId,
    @as("FleetName") fleetName: string_,
    @as("StackName") stackName: string_,
  }
  type response = {
    @as("Expires") expires: option<timestamp_>,
    @as("StreamingURL") streamingURL: option<string_>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "CreateStreamingURLCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImageBuilderStreamingURL = {
  type t
  type request = {
    @as("Validity") validity: option<long>,
    @as("Name") name: string_,
  }
  type response = {
    @as("Expires") expires: option<timestamp_>,
    @as("StreamingURL") streamingURL: option<string_>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "CreateImageBuilderStreamingURLCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyImage = {
  type t
  type request = {
    @as("DestinationImageDescription") destinationImageDescription: option<description>,
    @as("DestinationRegion") destinationRegion: regionName,
    @as("DestinationImageName") destinationImageName: name,
    @as("SourceImageName") sourceImageName: name,
  }
  type response = {@as("DestinationImageName") destinationImageName: option<name>}
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "CopyImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateFleet = {
  type t
  type request = {
    @as("StackName") stackName: string_,
    @as("FleetName") fleetName: string_,
  }
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "AssociateFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateImagePermissions = {
  type t
  type request = {
    @as("ImagePermissions") imagePermissions: imagePermissions,
    @as("SharedAccountId") sharedAccountId: awsAccountId,
    @as("Name") name: name,
  }
  type response = unit
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "UpdateImagePermissionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: arn}
  type response = {@as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssociatedStacks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("FleetName") fleetName: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Names") names: option<stringList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "ListAssociatedStacksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssociatedFleets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("StackName") stackName: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Names") names: option<stringList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "ListAssociatedFleetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDirectoryConfig = {
  type t
  type request = {
    @as("ServiceAccountCredentials") serviceAccountCredentials: option<serviceAccountCredentials>,
    @as("OrganizationalUnitDistinguishedNames")
    organizationalUnitDistinguishedNames: option<organizationalUnitDistinguishedNamesList>,
    @as("DirectoryName") directoryName: directoryName,
  }
  type response = {@as("DirectoryConfig") directoryConfig: option<directoryConfig>}
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "UpdateDirectoryConfigCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUsers = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("AuthenticationType") authenticationType: authenticationType,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Users") users: option<userList>,
  }
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "DescribeUsersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUserStackAssociations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AuthenticationType") authenticationType: option<authenticationType>,
    @as("UserName") userName: option<username>,
    @as("StackName") stackName: option<string_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("UserStackAssociations") userStackAssociations: option<userStackAssociationList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "DescribeUserStackAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDirectoryConfig = {
  type t
  type request = {
    @as("ServiceAccountCredentials") serviceAccountCredentials: option<serviceAccountCredentials>,
    @as("OrganizationalUnitDistinguishedNames")
    organizationalUnitDistinguishedNames: organizationalUnitDistinguishedNamesList,
    @as("DirectoryName") directoryName: directoryName,
  }
  type response = {@as("DirectoryConfig") directoryConfig: option<directoryConfig>}
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "CreateDirectoryConfigCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFleet = {
  type t
  type request = {
    @as("StreamView") streamView: option<streamView>,
    @as("IamRoleArn") iamRoleArn: option<arn>,
    @as("AttributesToDelete") attributesToDelete: option<fleetAttributes>,
    @as("IdleDisconnectTimeoutInSeconds") idleDisconnectTimeoutInSeconds: option<integer_>,
    @as("DomainJoinInfo") domainJoinInfo: option<domainJoinInfo>,
    @as("EnableDefaultInternetAccess") enableDefaultInternetAccess: option<booleanObject>,
    @as("DisplayName") displayName: option<displayName>,
    @as("Description") description: option<description>,
    @as("DeleteVpcConfig") deleteVpcConfig: option<boolean_>,
    @as("DisconnectTimeoutInSeconds") disconnectTimeoutInSeconds: option<integer_>,
    @as("MaxUserDurationInSeconds") maxUserDurationInSeconds: option<integer_>,
    @as("VpcConfig") vpcConfig: option<vpcConfig>,
    @as("ComputeCapacity") computeCapacity: option<computeCapacity>,
    @as("InstanceType") instanceType: option<string_>,
    @as("Name") name: option<string_>,
    @as("ImageArn") imageArn: option<arn>,
    @as("ImageName") imageName: option<string_>,
  }
  type response = {@as("Fleet") fleet: option<fleet>}
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "UpdateFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopImageBuilder = {
  type t
  type request = {@as("Name") name: string_}
  type response = {@as("ImageBuilder") imageBuilder: option<imageBuilder>}
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "StopImageBuilderCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartImageBuilder = {
  type t
  type request = {
    @as("AppstreamAgentVersion") appstreamAgentVersion: option<appstreamAgentVersion>,
    @as("Name") name: string_,
  }
  type response = {@as("ImageBuilder") imageBuilder: option<imageBuilder>}
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "StartImageBuilderCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSessions = {
  type t
  type request = {
    @as("AuthenticationType") authenticationType: option<authenticationType>,
    @as("Limit") limit: option<integer_>,
    @as("NextToken") nextToken: option<string_>,
    @as("UserId") userId: option<userId>,
    @as("FleetName") fleetName: string_,
    @as("StackName") stackName: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Sessions") sessions: option<sessionList>,
  }
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "DescribeSessionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImagePermissions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("SharedAwsAccountIds") sharedAwsAccountIds: option<awsAccountIdList>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Name") name: name,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("SharedImagePermissionsList")
    sharedImagePermissionsList: option<sharedImagePermissionsList>,
    @as("Name") name: option<name>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "DescribeImagePermissionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDirectoryConfigs = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("DirectoryNames") directoryNames: option<directoryNameList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("DirectoryConfigs") directoryConfigs: option<directoryConfigList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "DescribeDirectoryConfigsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteImageBuilder = {
  type t
  type request = {@as("Name") name: name}
  type response = {@as("ImageBuilder") imageBuilder: option<imageBuilder>}
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "DeleteImageBuilderCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImageBuilder = {
  type t
  type request = {
    @as("AccessEndpoints") accessEndpoints: option<accessEndpointList>,
    @as("Tags") tags: option<tags>,
    @as("AppstreamAgentVersion") appstreamAgentVersion: option<appstreamAgentVersion>,
    @as("DomainJoinInfo") domainJoinInfo: option<domainJoinInfo>,
    @as("EnableDefaultInternetAccess") enableDefaultInternetAccess: option<booleanObject>,
    @as("IamRoleArn") iamRoleArn: option<arn>,
    @as("VpcConfig") vpcConfig: option<vpcConfig>,
    @as("DisplayName") displayName: option<displayName>,
    @as("Description") description: option<description>,
    @as("InstanceType") instanceType: string_,
    @as("ImageArn") imageArn: option<arn>,
    @as("ImageName") imageName: option<string_>,
    @as("Name") name: name,
  }
  type response = {@as("ImageBuilder") imageBuilder: option<imageBuilder>}
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "CreateImageBuilderCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFleet = {
  type t
  type request = {
    @as("StreamView") streamView: option<streamView>,
    @as("IamRoleArn") iamRoleArn: option<arn>,
    @as("IdleDisconnectTimeoutInSeconds") idleDisconnectTimeoutInSeconds: option<integer_>,
    @as("Tags") tags: option<tags>,
    @as("DomainJoinInfo") domainJoinInfo: option<domainJoinInfo>,
    @as("EnableDefaultInternetAccess") enableDefaultInternetAccess: option<booleanObject>,
    @as("DisplayName") displayName: option<displayName>,
    @as("Description") description: option<description>,
    @as("DisconnectTimeoutInSeconds") disconnectTimeoutInSeconds: option<integer_>,
    @as("MaxUserDurationInSeconds") maxUserDurationInSeconds: option<integer_>,
    @as("VpcConfig") vpcConfig: option<vpcConfig>,
    @as("ComputeCapacity") computeCapacity: computeCapacity,
    @as("FleetType") fleetType: option<fleetType>,
    @as("InstanceType") instanceType: string_,
    @as("ImageArn") imageArn: option<arn>,
    @as("ImageName") imageName: option<string_>,
    @as("Name") name: name,
  }
  type response = {@as("Fleet") fleet: option<fleet>}
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "CreateFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDisassociateUserStack = {
  type t
  type request = {@as("UserStackAssociations") userStackAssociations: userStackAssociationList}
  type response = {errors: option<userStackAssociationErrorList>}
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "BatchDisassociateUserStackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchAssociateUserStack = {
  type t
  type request = {@as("UserStackAssociations") userStackAssociations: userStackAssociationList}
  type response = {errors: option<userStackAssociationErrorList>}
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "BatchAssociateUserStackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStack = {
  type t
  type request = {
    @as("EmbedHostDomains") embedHostDomains: option<embedHostDomains>,
    @as("AccessEndpoints") accessEndpoints: option<accessEndpointList>,
    @as("ApplicationSettings") applicationSettings: option<applicationSettings>,
    @as("UserSettings") userSettings: option<userSettingList>,
    @as("AttributesToDelete") attributesToDelete: option<stackAttributes>,
    @as("FeedbackURL") feedbackURL: option<feedbackURL>,
    @as("RedirectURL") redirectURL: option<redirectURL>,
    @as("DeleteStorageConnectors") deleteStorageConnectors: option<boolean_>,
    @as("StorageConnectors") storageConnectors: option<storageConnectorList>,
    @as("Name") name: string_,
    @as("Description") description: option<description>,
    @as("DisplayName") displayName: option<displayName>,
  }
  type response = {@as("Stack") stack: option<stack>}
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "UpdateStackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUsageReportSubscriptions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("UsageReportSubscriptions") usageReportSubscriptions: option<usageReportSubscriptionList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "DescribeUsageReportSubscriptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImageBuilders = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Names") names: option<stringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ImageBuilders") imageBuilders: option<imageBuilderList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "DescribeImageBuildersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("Names") names: option<stringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Fleets") fleets: option<fleetList>,
  }
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "DescribeFleetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteImage = {
  type t
  type request = {@as("Name") name: name}
  type response = {@as("Image") image: option<image>}
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "DeleteImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUpdatedImage = {
  type t
  type request = {
    dryRun: option<boolean_>,
    newImageTags: option<tags>,
    newImageDisplayName: option<displayName>,
    newImageDescription: option<description>,
    newImageName: name,
    existingImageName: name,
  }
  type response = {
    canUpdateImage: option<boolean_>,
    image: option<image>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new_: request => t = "CreateUpdatedImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStack = {
  type t
  type request = {
    @as("EmbedHostDomains") embedHostDomains: option<embedHostDomains>,
    @as("AccessEndpoints") accessEndpoints: option<accessEndpointList>,
    @as("Tags") tags: option<tags>,
    @as("ApplicationSettings") applicationSettings: option<applicationSettings>,
    @as("UserSettings") userSettings: option<userSettingList>,
    @as("FeedbackURL") feedbackURL: option<feedbackURL>,
    @as("RedirectURL") redirectURL: option<redirectURL>,
    @as("StorageConnectors") storageConnectors: option<storageConnectorList>,
    @as("DisplayName") displayName: option<displayName>,
    @as("Description") description: option<description>,
    @as("Name") name: name,
  }
  type response = {@as("Stack") stack: option<stack>}
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "CreateStackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStacks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("Names") names: option<stringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Stacks") stacks: option<stackList>,
  }
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "DescribeStacksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImages = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeImagesMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("Type") type_: option<visibilityType>,
    @as("Arns") arns: option<arnList>,
    @as("Names") names: option<stringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Images") images: option<imageList>,
  }
  @module("@aws-sdk/client-appstream") @new external new_: request => t = "DescribeImagesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
