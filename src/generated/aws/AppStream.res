type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type visibilityType = [@as("SHARED") #SHARED | @as("PRIVATE") #PRIVATE | @as("PUBLIC") #PUBLIC]
type username = string
type userStackAssociationErrorCode = [@as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("DIRECTORY_NOT_FOUND") #DIRECTORY_NOT_FOUND | @as("USER_NAME_NOT_FOUND") #USER_NAME_NOT_FOUND | @as("STACK_NOT_FOUND") #STACK_NOT_FOUND]
type userId = string
type userAttributeValue = string
type usageReportSchedule = [@as("DAILY") #DAILY]
type usageReportExecutionErrorCode = [@as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR | @as("ACCESS_DENIED") #ACCESS_DENIED | @as("RESOURCE_NOT_FOUND") #RESOURCE_NOT_FOUND]
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type amazonawsString = string
type streamingUrlUserId = string
type streamView = [@as("DESKTOP") #DESKTOP | @as("APP") #APP]
type storageConnectorType = [@as("ONE_DRIVE") #ONE_DRIVE | @as("GOOGLE_DRIVE") #GOOGLE_DRIVE | @as("HOMEFOLDERS") #HOMEFOLDERS]
type stackErrorCode = [@as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR | @as("STORAGE_CONNECTOR_ERROR") #STORAGE_CONNECTOR_ERROR]
type stackAttribute = [@as("ACCESS_ENDPOINTS") #ACCESS_ENDPOINTS | @as("IAM_ROLE_ARN") #IAM_ROLE_ARN | @as("EMBED_HOST_DOMAINS") #EMBED_HOST_DOMAINS | @as("USER_SETTINGS") #USER_SETTINGS | @as("THEME_NAME") #THEME_NAME | @as("FEEDBACK_URL") #FEEDBACK_URL | @as("REDIRECT_URL") #REDIRECT_URL | @as("STORAGE_CONNECTOR_ONE_DRIVE") #STORAGE_CONNECTOR_ONE_DRIVE | @as("STORAGE_CONNECTOR_GOOGLE_DRIVE") #STORAGE_CONNECTOR_GOOGLE_DRIVE | @as("STORAGE_CONNECTOR_HOMEFOLDERS") #STORAGE_CONNECTOR_HOMEFOLDERS | @as("STORAGE_CONNECTORS") #STORAGE_CONNECTORS]
type settingsGroup = string
type sessionState = [@as("EXPIRED") #EXPIRED | @as("PENDING") #PENDING | @as("ACTIVE") #ACTIVE]
type sessionConnectionState = [@as("NOT_CONNECTED") #NOT_CONNECTED | @as("CONNECTED") #CONNECTED]
type resourceIdentifier = string
type regionName = string
type redirectURL = string
type platformType = [@as("WINDOWS_SERVER_2019") #WINDOWS_SERVER_2019 | @as("WINDOWS_SERVER_2016") #WINDOWS_SERVER_2016 | @as("WINDOWS") #WINDOWS]
type permission = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type organizationalUnitDistinguishedName = string
type name = string
type messageAction = [@as("RESEND") #RESEND | @as("SUPPRESS") #SUPPRESS]
type maxResults = int;
type amazonawsLong = float;
type amazonawsInteger = int;
type imageStateChangeReasonCode = [@as("IMAGE_COPY_FAILURE") #IMAGE_COPY_FAILURE | @as("IMAGE_BUILDER_NOT_AVAILABLE") #IMAGE_BUILDER_NOT_AVAILABLE | @as("INTERNAL_ERROR") #INTERNAL_ERROR]
type imageState = [@as("IMPORTING") #IMPORTING | @as("CREATING") #CREATING | @as("DELETING") #DELETING | @as("COPYING") #COPYING | @as("FAILED") #FAILED | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type imageBuilderStateChangeReasonCode = [@as("IMAGE_UNAVAILABLE") #IMAGE_UNAVAILABLE | @as("INTERNAL_ERROR") #INTERNAL_ERROR]
type imageBuilderState = [@as("PENDING_QUALIFICATION") #PENDING_QUALIFICATION | @as("UPDATING") #UPDATING | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("SNAPSHOTTING") #SNAPSHOTTING | @as("REBOOTING") #REBOOTING | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("UPDATING_AGENT") #UPDATING_AGENT | @as("PENDING") #PENDING]
type fleetType = [@as("ON_DEMAND") #ON_DEMAND | @as("ALWAYS_ON") #ALWAYS_ON]
type fleetState = [@as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING]
type fleetErrorCode = [@as("DOMAIN_JOIN_INTERNAL_SERVICE_ERROR") #DOMAIN_JOIN_INTERNAL_SERVICE_ERROR | @as("DOMAIN_JOIN_NERR_PASSWORD_EXPIRED") #DOMAIN_JOIN_NERR_PASSWORD_EXPIRED | @as("DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED") #DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED | @as("DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED") #DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED | @as("DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME") #DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME | @as("DOMAIN_JOIN_ERROR_NOT_SUPPORTED") #DOMAIN_JOIN_ERROR_NOT_SUPPORTED | @as("DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN") #DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN | @as("DOMAIN_JOIN_ERROR_MORE_DATA") #DOMAIN_JOIN_ERROR_MORE_DATA | @as("DOMAIN_JOIN_ERROR_INVALID_PARAMETER") #DOMAIN_JOIN_ERROR_INVALID_PARAMETER | @as("DOMAIN_JOIN_ERROR_LOGON_FAILURE") #DOMAIN_JOIN_ERROR_LOGON_FAILURE | @as("DOMAIN_JOIN_ERROR_ACCESS_DENIED") #DOMAIN_JOIN_ERROR_ACCESS_DENIED | @as("DOMAIN_JOIN_ERROR_FILE_NOT_FOUND") #DOMAIN_JOIN_ERROR_FILE_NOT_FOUND | @as("FLEET_INSTANCE_PROVISIONING_FAILURE") #FLEET_INSTANCE_PROVISIONING_FAILURE | @as("FLEET_STOPPED") #FLEET_STOPPED | @as("IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION") #IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION | @as("IGW_NOT_ATTACHED") #IGW_NOT_ATTACHED | @as("SECURITY_GROUPS_NOT_FOUND") #SECURITY_GROUPS_NOT_FOUND | @as("INVALID_SUBNET_CONFIGURATION") #INVALID_SUBNET_CONFIGURATION | @as("IMAGE_NOT_FOUND") #IMAGE_NOT_FOUND | @as("SUBNET_NOT_FOUND") #SUBNET_NOT_FOUND | @as("IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION") #IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION | @as("SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES") #SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES | @as("STS_DISABLED_IN_REGION") #STS_DISABLED_IN_REGION | @as("MACHINE_ROLE_IS_MISSING") #MACHINE_ROLE_IS_MISSING | @as("IAM_SERVICE_ROLE_IS_MISSING") #IAM_SERVICE_ROLE_IS_MISSING | @as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR | @as("NETWORK_INTERFACE_LIMIT_EXCEEDED") #NETWORK_INTERFACE_LIMIT_EXCEEDED | @as("IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION") #IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION | @as("IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION") #IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION | @as("IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION") #IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION]
type fleetAttribute = [@as("IAM_ROLE_ARN") #IAM_ROLE_ARN | @as("DOMAIN_JOIN_INFO") #DOMAIN_JOIN_INFO | @as("VPC_CONFIGURATION_SECURITY_GROUP_IDS") #VPC_CONFIGURATION_SECURITY_GROUP_IDS | @as("VPC_CONFIGURATION") #VPC_CONFIGURATION]
type feedbackURL = string
type errorMessage = string
type embedHostDomain = string
type domain = string
type displayName = string
type directoryName = string
type description = string
type describeImagesMaxResults = int;
type booleanObject = bool;
type amazonawsBoolean = bool;
type awsAccountId = string
type authenticationType = [@as("USERPOOL") #USERPOOL | @as("SAML") #SAML | @as("API") #API]
type arn = string
type appstreamAgentVersion = string
type action = [@as("DOMAIN_SMART_CARD_SIGNIN") #DOMAIN_SMART_CARD_SIGNIN | @as("DOMAIN_PASSWORD_SIGNIN") #DOMAIN_PASSWORD_SIGNIN | @as("PRINTING_TO_LOCAL_DEVICE") #PRINTING_TO_LOCAL_DEVICE | @as("FILE_DOWNLOAD") #FILE_DOWNLOAD | @as("FILE_UPLOAD") #FILE_UPLOAD | @as("CLIPBOARD_COPY_TO_LOCAL_DEVICE") #CLIPBOARD_COPY_TO_LOCAL_DEVICE | @as("CLIPBOARD_COPY_FROM_LOCAL_DEVICE") #CLIPBOARD_COPY_FROM_LOCAL_DEVICE]
type accountPassword = string
type accountName = string
type accessEndpointType = [@as("STREAMING") #STREAMING]
type userStackAssociation = {
@as("SendEmailNotification") sendEmailNotification: amazonawsBoolean,
@as("AuthenticationType") authenticationType: option<authenticationType>,
@as("UserName") userName: option<username>,
@as("StackName") stackName: option<amazonawsString>
}
type userSetting = {
@as("Permission") permission: option<permission>,
@as("Action") action: option<action>
}
type user = {
@as("AuthenticationType") authenticationType: option<authenticationType>,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("LastName") lastName: userAttributeValue,
@as("FirstName") firstName: userAttributeValue,
@as("Status") status: amazonawsString,
@as("Enabled") enabled: amazonawsBoolean,
@as("UserName") userName: username,
@as("Arn") arn: arn
}
type tags = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type subnetIdList = array<amazonawsString>
type stringList = array<amazonawsString>
type stackError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: stackErrorCode
}
type stackAttributes = array<stackAttribute>
type serviceAccountCredentials = {
@as("AccountPassword") accountPassword: option<accountPassword>,
@as("AccountName") accountName: option<accountName>
}
type securityGroupIdList = array<amazonawsString>
type resourceError = {
@as("ErrorTimestamp") errorTimestamp: amazonawsTimestamp,
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: fleetErrorCode
}
type organizationalUnitDistinguishedNamesList = array<organizationalUnitDistinguishedName>
type networkAccessConfiguration = {
@as("EniId") eniId: amazonawsString,
@as("EniPrivateIpAddress") eniPrivateIpAddress: amazonawsString
}
type metadata = Js.Dict.t< amazonawsString>
type lastReportGenerationExecutionError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: usageReportExecutionErrorCode
}
type imageStateChangeReason = {
@as("Message") message: amazonawsString,
@as("Code") code: imageStateChangeReasonCode
}
type imagePermissions = {
@as("allowImageBuilder") allowImageBuilder: booleanObject,
@as("allowFleet") allowFleet: booleanObject
}
type imageBuilderStateChangeReason = {
@as("Message") message: amazonawsString,
@as("Code") code: imageBuilderStateChangeReasonCode
}
type fleetError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: fleetErrorCode
}
type fleetAttributes = array<fleetAttribute>
type embedHostDomains = array<embedHostDomain>
type domainList = array<domain>
type domainJoinInfo = {
@as("OrganizationalUnitDistinguishedName") organizationalUnitDistinguishedName: organizationalUnitDistinguishedName,
@as("DirectoryName") directoryName: directoryName
}
type directoryNameList = array<directoryName>
type computeCapacityStatus = {
@as("Available") available: amazonawsInteger,
@as("InUse") inUse: amazonawsInteger,
@as("Running") running: amazonawsInteger,
@as("Desired") desired: option<amazonawsInteger>
}
type computeCapacity = {
@as("DesiredInstances") desiredInstances: option<amazonawsInteger>
}
type awsAccountIdList = array<awsAccountId>
type arnList = array<arn>
type applicationSettingsResponse = {
@as("S3BucketName") s3BucketName: amazonawsString,
@as("SettingsGroup") settingsGroup: settingsGroup,
@as("Enabled") enabled: amazonawsBoolean
}
type applicationSettings = {
@as("SettingsGroup") settingsGroup: settingsGroup,
@as("Enabled") enabled: option<amazonawsBoolean>
}
type accessEndpoint = {
@as("VpceId") vpceId: amazonawsString,
@as("EndpointType") endpointType: option<accessEndpointType>
}
type vpcConfig = {
@as("SecurityGroupIds") securityGroupIds: securityGroupIdList,
@as("SubnetIds") subnetIds: subnetIdList
}
type userStackAssociationList = array<userStackAssociation>
type userStackAssociationError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: userStackAssociationErrorCode,
@as("UserStackAssociation") userStackAssociation: userStackAssociation
}
type userSettingList = array<userSetting>
type userList = array<user>
type storageConnector = {
@as("Domains") domains: domainList,
@as("ResourceIdentifier") resourceIdentifier: resourceIdentifier,
@as("ConnectorType") connectorType: option<storageConnectorType>
}
type stackErrors = array<stackError>
type sharedImagePermissions = {
@as("imagePermissions") imagePermissions: option<imagePermissions>,
@as("sharedAccountId") sharedAccountId: option<awsAccountId>
}
type session = {
@as("NetworkAccessConfiguration") networkAccessConfiguration: networkAccessConfiguration,
@as("AuthenticationType") authenticationType: authenticationType,
@as("MaxExpirationTime") maxExpirationTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp,
@as("ConnectionState") connectionState: sessionConnectionState,
@as("State") state: option<sessionState>,
@as("FleetName") fleetName: option<amazonawsString>,
@as("StackName") stackName: option<amazonawsString>,
@as("UserId") userId: option<userId>,
@as("Id") id: option<amazonawsString>
}
type resourceErrors = array<resourceError>
type lastReportGenerationExecutionErrors = array<lastReportGenerationExecutionError>
type fleetErrors = array<fleetError>
type directoryConfig = {
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("ServiceAccountCredentials") serviceAccountCredentials: serviceAccountCredentials,
@as("OrganizationalUnitDistinguishedNames") organizationalUnitDistinguishedNames: organizationalUnitDistinguishedNamesList,
@as("DirectoryName") directoryName: option<directoryName>
}
type application = {
@as("Metadata") metadata: metadata,
@as("Enabled") enabled: amazonawsBoolean,
@as("LaunchParameters") launchParameters: amazonawsString,
@as("LaunchPath") launchPath: amazonawsString,
@as("IconURL") iconURL: amazonawsString,
@as("DisplayName") displayName: amazonawsString,
@as("Name") name: amazonawsString
}
type accessEndpointList = array<accessEndpoint>
type userStackAssociationErrorList = array<userStackAssociationError>
type usageReportSubscription = {
@as("SubscriptionErrors") subscriptionErrors: lastReportGenerationExecutionErrors,
@as("LastGeneratedReportDate") lastGeneratedReportDate: amazonawsTimestamp,
@as("Schedule") schedule: usageReportSchedule,
@as("S3BucketName") s3BucketName: amazonawsString
}
type storageConnectorList = array<storageConnector>
type sharedImagePermissionsList = array<sharedImagePermissions>
type sessionList = array<session>
type imageBuilder = {
@as("AccessEndpoints") accessEndpoints: accessEndpointList,
@as("AppstreamAgentVersion") appstreamAgentVersion: appstreamAgentVersion,
@as("ImageBuilderErrors") imageBuilderErrors: resourceErrors,
@as("NetworkAccessConfiguration") networkAccessConfiguration: networkAccessConfiguration,
@as("DomainJoinInfo") domainJoinInfo: domainJoinInfo,
@as("EnableDefaultInternetAccess") enableDefaultInternetAccess: booleanObject,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("StateChangeReason") stateChangeReason: imageBuilderStateChangeReason,
@as("State") state: imageBuilderState,
@as("IamRoleArn") iamRoleArn: arn,
@as("Platform") platform: platformType,
@as("InstanceType") instanceType: amazonawsString,
@as("VpcConfig") vpcConfig: vpcConfig,
@as("DisplayName") displayName: amazonawsString,
@as("Description") description: amazonawsString,
@as("ImageArn") imageArn: arn,
@as("Arn") arn: arn,
@as("Name") name: option<amazonawsString>
}
type fleet = {
@as("StreamView") streamView: streamView,
@as("IamRoleArn") iamRoleArn: arn,
@as("IdleDisconnectTimeoutInSeconds") idleDisconnectTimeoutInSeconds: amazonawsInteger,
@as("DomainJoinInfo") domainJoinInfo: domainJoinInfo,
@as("EnableDefaultInternetAccess") enableDefaultInternetAccess: booleanObject,
@as("FleetErrors") fleetErrors: fleetErrors,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("VpcConfig") vpcConfig: vpcConfig,
@as("State") state: option<fleetState>,
@as("DisconnectTimeoutInSeconds") disconnectTimeoutInSeconds: amazonawsInteger,
@as("MaxUserDurationInSeconds") maxUserDurationInSeconds: amazonawsInteger,
@as("ComputeCapacityStatus") computeCapacityStatus: option<computeCapacityStatus>,
@as("FleetType") fleetType: fleetType,
@as("InstanceType") instanceType: option<amazonawsString>,
@as("ImageArn") imageArn: arn,
@as("ImageName") imageName: amazonawsString,
@as("Description") description: amazonawsString,
@as("DisplayName") displayName: amazonawsString,
@as("Name") name: option<amazonawsString>,
@as("Arn") arn: option<arn>
}
type directoryConfigList = array<directoryConfig>
type applications = array<application>
type usageReportSubscriptionList = array<usageReportSubscription>
type stack = {
@as("EmbedHostDomains") embedHostDomains: embedHostDomains,
@as("AccessEndpoints") accessEndpoints: accessEndpointList,
@as("ApplicationSettings") applicationSettings: applicationSettingsResponse,
@as("UserSettings") userSettings: userSettingList,
@as("StackErrors") stackErrors: stackErrors,
@as("FeedbackURL") feedbackURL: feedbackURL,
@as("RedirectURL") redirectURL: redirectURL,
@as("StorageConnectors") storageConnectors: storageConnectorList,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("DisplayName") displayName: amazonawsString,
@as("Description") description: amazonawsString,
@as("Name") name: option<amazonawsString>,
@as("Arn") arn: arn
}
type imageBuilderList = array<imageBuilder>
type image = {
@as("ImageErrors") imageErrors: resourceErrors,
@as("ImagePermissions") imagePermissions: imagePermissions,
@as("AppstreamAgentVersion") appstreamAgentVersion: appstreamAgentVersion,
@as("PublicBaseImageReleasedDate") publicBaseImageReleasedDate: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Applications") applications: applications,
@as("StateChangeReason") stateChangeReason: imageStateChangeReason,
@as("Description") description: amazonawsString,
@as("Platform") platform: platformType,
@as("ImageBuilderName") imageBuilderName: amazonawsString,
@as("ImageBuilderSupported") imageBuilderSupported: amazonawsBoolean,
@as("Visibility") visibility: visibilityType,
@as("State") state: imageState,
@as("DisplayName") displayName: amazonawsString,
@as("BaseImageArn") baseImageArn: arn,
@as("Arn") arn: arn,
@as("Name") name: option<amazonawsString>
}
type fleetList = array<fleet>
type stackList = array<stack>
type imageList = array<image>
type clientType;
@module("@aws-sdk/client-appstream") @new external createClient: unit => clientType = "AppStreamClient";
module StopFleet = {
  type t;
  type request = {
@as("Name") name: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "StopFleetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartFleet = {
  type t;
  type request = {
@as("Name") name: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "StartFleetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExpireSession = {
  type t;
  type request = {
@as("SessionId") sessionId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "ExpireSessionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableUser = {
  type t;
  type request = {
@as("AuthenticationType") authenticationType: option<authenticationType>,
@as("UserName") userName: option<username>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "EnableUserCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateFleet = {
  type t;
  type request = {
@as("StackName") stackName: option<amazonawsString>,
@as("FleetName") fleetName: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DisassociateFleetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableUser = {
  type t;
  type request = {
@as("AuthenticationType") authenticationType: option<authenticationType>,
@as("UserName") userName: option<username>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DisableUserCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("AuthenticationType") authenticationType: option<authenticationType>,
@as("UserName") userName: option<username>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DeleteUserCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUsageReportSubscription = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DeleteUsageReportSubscriptionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStack = {
  type t;
  type request = {
@as("Name") name: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DeleteStackCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteImagePermissions = {
  type t;
  type request = {
@as("SharedAccountId") sharedAccountId: option<awsAccountId>,
@as("Name") name: option<name>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DeleteImagePermissionsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFleet = {
  type t;
  type request = {
@as("Name") name: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DeleteFleetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDirectoryConfig = {
  type t;
  type request = {
@as("DirectoryName") directoryName: option<directoryName>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DeleteDirectoryConfigCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("AuthenticationType") authenticationType: option<authenticationType>,
@as("LastName") lastName: userAttributeValue,
@as("FirstName") firstName: userAttributeValue,
@as("MessageAction") messageAction: messageAction,
@as("UserName") userName: option<username>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "CreateUserCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUsageReportSubscription = {
  type t;
  type request = unit
  type response = {
@as("Schedule") schedule: usageReportSchedule,
@as("S3BucketName") s3BucketName: amazonawsString
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "CreateUsageReportSubscriptionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStreamingURL = {
  type t;
  type request = {
@as("SessionContext") sessionContext: amazonawsString,
@as("Validity") validity: amazonawsLong,
@as("ApplicationId") applicationId: amazonawsString,
@as("UserId") userId: option<streamingUrlUserId>,
@as("FleetName") fleetName: option<amazonawsString>,
@as("StackName") stackName: option<amazonawsString>
}
  type response = {
@as("Expires") expires: amazonawsTimestamp,
@as("StreamingURL") streamingURL: amazonawsString
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "CreateStreamingURLCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateImageBuilderStreamingURL = {
  type t;
  type request = {
@as("Validity") validity: amazonawsLong,
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("Expires") expires: amazonawsTimestamp,
@as("StreamingURL") streamingURL: amazonawsString
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "CreateImageBuilderStreamingURLCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyImage = {
  type t;
  type request = {
@as("DestinationImageDescription") destinationImageDescription: description,
@as("DestinationRegion") destinationRegion: option<regionName>,
@as("DestinationImageName") destinationImageName: option<name>,
@as("SourceImageName") sourceImageName: option<name>
}
  type response = {
@as("DestinationImageName") destinationImageName: name
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "CopyImageCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateFleet = {
  type t;
  type request = {
@as("StackName") stackName: option<amazonawsString>,
@as("FleetName") fleetName: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "AssociateFleetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateImagePermissions = {
  type t;
  type request = {
@as("ImagePermissions") imagePermissions: option<imagePermissions>,
@as("SharedAccountId") sharedAccountId: option<awsAccountId>,
@as("Name") name: option<name>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "UpdateImagePermissionsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssociatedStacks = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("FleetName") fleetName: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Names") names: stringList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "ListAssociatedStacksCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssociatedFleets = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("StackName") stackName: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Names") names: stringList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "ListAssociatedFleetsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDirectoryConfig = {
  type t;
  type request = {
@as("ServiceAccountCredentials") serviceAccountCredentials: serviceAccountCredentials,
@as("OrganizationalUnitDistinguishedNames") organizationalUnitDistinguishedNames: organizationalUnitDistinguishedNamesList,
@as("DirectoryName") directoryName: option<directoryName>
}
  type response = {
@as("DirectoryConfig") directoryConfig: directoryConfig
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "UpdateDirectoryConfigCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUsers = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("AuthenticationType") authenticationType: option<authenticationType>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Users") users: userList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DescribeUsersCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUserStackAssociations = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("AuthenticationType") authenticationType: authenticationType,
@as("UserName") userName: username,
@as("StackName") stackName: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("UserStackAssociations") userStackAssociations: userStackAssociationList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DescribeUserStackAssociationsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDirectoryConfig = {
  type t;
  type request = {
@as("ServiceAccountCredentials") serviceAccountCredentials: serviceAccountCredentials,
@as("OrganizationalUnitDistinguishedNames") organizationalUnitDistinguishedNames: option<organizationalUnitDistinguishedNamesList>,
@as("DirectoryName") directoryName: option<directoryName>
}
  type response = {
@as("DirectoryConfig") directoryConfig: directoryConfig
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "CreateDirectoryConfigCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFleet = {
  type t;
  type request = {
@as("StreamView") streamView: streamView,
@as("IamRoleArn") iamRoleArn: arn,
@as("AttributesToDelete") attributesToDelete: fleetAttributes,
@as("IdleDisconnectTimeoutInSeconds") idleDisconnectTimeoutInSeconds: amazonawsInteger,
@as("DomainJoinInfo") domainJoinInfo: domainJoinInfo,
@as("EnableDefaultInternetAccess") enableDefaultInternetAccess: booleanObject,
@as("DisplayName") displayName: displayName,
@as("Description") description: description,
@as("DeleteVpcConfig") deleteVpcConfig: amazonawsBoolean,
@as("DisconnectTimeoutInSeconds") disconnectTimeoutInSeconds: amazonawsInteger,
@as("MaxUserDurationInSeconds") maxUserDurationInSeconds: amazonawsInteger,
@as("VpcConfig") vpcConfig: vpcConfig,
@as("ComputeCapacity") computeCapacity: computeCapacity,
@as("InstanceType") instanceType: amazonawsString,
@as("Name") name: amazonawsString,
@as("ImageArn") imageArn: arn,
@as("ImageName") imageName: amazonawsString
}
  type response = {
@as("Fleet") fleet: fleet
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "UpdateFleetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopImageBuilder = {
  type t;
  type request = {
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("ImageBuilder") imageBuilder: imageBuilder
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "StopImageBuilderCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartImageBuilder = {
  type t;
  type request = {
@as("AppstreamAgentVersion") appstreamAgentVersion: appstreamAgentVersion,
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("ImageBuilder") imageBuilder: imageBuilder
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "StartImageBuilderCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSessions = {
  type t;
  type request = {
@as("AuthenticationType") authenticationType: authenticationType,
@as("Limit") limit: amazonawsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("UserId") userId: userId,
@as("FleetName") fleetName: option<amazonawsString>,
@as("StackName") stackName: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Sessions") sessions: sessionList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DescribeSessionsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImagePermissions = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("SharedAwsAccountIds") sharedAwsAccountIds: awsAccountIdList,
@as("MaxResults") maxResults: maxResults,
@as("Name") name: option<name>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("SharedImagePermissionsList") sharedImagePermissionsList: sharedImagePermissionsList,
@as("Name") name: name
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DescribeImagePermissionsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDirectoryConfigs = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("DirectoryNames") directoryNames: directoryNameList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("DirectoryConfigs") directoryConfigs: directoryConfigList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DescribeDirectoryConfigsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteImageBuilder = {
  type t;
  type request = {
@as("Name") name: option<name>
}
  type response = {
@as("ImageBuilder") imageBuilder: imageBuilder
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DeleteImageBuilderCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateImageBuilder = {
  type t;
  type request = {
@as("AccessEndpoints") accessEndpoints: accessEndpointList,
@as("Tags") tags: tags,
@as("AppstreamAgentVersion") appstreamAgentVersion: appstreamAgentVersion,
@as("DomainJoinInfo") domainJoinInfo: domainJoinInfo,
@as("EnableDefaultInternetAccess") enableDefaultInternetAccess: booleanObject,
@as("IamRoleArn") iamRoleArn: arn,
@as("VpcConfig") vpcConfig: vpcConfig,
@as("DisplayName") displayName: displayName,
@as("Description") description: description,
@as("InstanceType") instanceType: option<amazonawsString>,
@as("ImageArn") imageArn: arn,
@as("ImageName") imageName: amazonawsString,
@as("Name") name: option<name>
}
  type response = {
@as("ImageBuilder") imageBuilder: imageBuilder
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "CreateImageBuilderCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFleet = {
  type t;
  type request = {
@as("StreamView") streamView: streamView,
@as("IamRoleArn") iamRoleArn: arn,
@as("IdleDisconnectTimeoutInSeconds") idleDisconnectTimeoutInSeconds: amazonawsInteger,
@as("Tags") tags: tags,
@as("DomainJoinInfo") domainJoinInfo: domainJoinInfo,
@as("EnableDefaultInternetAccess") enableDefaultInternetAccess: booleanObject,
@as("DisplayName") displayName: displayName,
@as("Description") description: description,
@as("DisconnectTimeoutInSeconds") disconnectTimeoutInSeconds: amazonawsInteger,
@as("MaxUserDurationInSeconds") maxUserDurationInSeconds: amazonawsInteger,
@as("VpcConfig") vpcConfig: vpcConfig,
@as("ComputeCapacity") computeCapacity: option<computeCapacity>,
@as("FleetType") fleetType: fleetType,
@as("InstanceType") instanceType: option<amazonawsString>,
@as("ImageArn") imageArn: arn,
@as("ImageName") imageName: amazonawsString,
@as("Name") name: option<name>
}
  type response = {
@as("Fleet") fleet: fleet
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "CreateFleetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDisassociateUserStack = {
  type t;
  type request = {
@as("UserStackAssociations") userStackAssociations: option<userStackAssociationList>
}
  type response = {
@as("errors") errors: userStackAssociationErrorList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "BatchDisassociateUserStackCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchAssociateUserStack = {
  type t;
  type request = {
@as("UserStackAssociations") userStackAssociations: option<userStackAssociationList>
}
  type response = {
@as("errors") errors: userStackAssociationErrorList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "BatchAssociateUserStackCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStack = {
  type t;
  type request = {
@as("EmbedHostDomains") embedHostDomains: embedHostDomains,
@as("AccessEndpoints") accessEndpoints: accessEndpointList,
@as("ApplicationSettings") applicationSettings: applicationSettings,
@as("UserSettings") userSettings: userSettingList,
@as("AttributesToDelete") attributesToDelete: stackAttributes,
@as("FeedbackURL") feedbackURL: feedbackURL,
@as("RedirectURL") redirectURL: redirectURL,
@as("DeleteStorageConnectors") deleteStorageConnectors: amazonawsBoolean,
@as("StorageConnectors") storageConnectors: storageConnectorList,
@as("Name") name: option<amazonawsString>,
@as("Description") description: description,
@as("DisplayName") displayName: displayName
}
  type response = {
@as("Stack") stack: stack
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "UpdateStackCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUsageReportSubscriptions = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("UsageReportSubscriptions") usageReportSubscriptions: usageReportSubscriptionList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DescribeUsageReportSubscriptionsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImageBuilders = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Names") names: stringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ImageBuilders") imageBuilders: imageBuilderList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DescribeImageBuildersCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleets = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Names") names: stringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Fleets") fleets: fleetList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DescribeFleetsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteImage = {
  type t;
  type request = {
@as("Name") name: option<name>
}
  type response = {
@as("Image") image: image
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DeleteImageCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUpdatedImage = {
  type t;
  type request = {
@as("dryRun") dryRun: amazonawsBoolean,
@as("newImageTags") newImageTags: tags,
@as("newImageDisplayName") newImageDisplayName: displayName,
@as("newImageDescription") newImageDescription: description,
@as("newImageName") newImageName: option<name>,
@as("existingImageName") existingImageName: option<name>
}
  type response = {
@as("canUpdateImage") canUpdateImage: amazonawsBoolean,
@as("image") image: image
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "CreateUpdatedImageCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStack = {
  type t;
  type request = {
@as("EmbedHostDomains") embedHostDomains: embedHostDomains,
@as("AccessEndpoints") accessEndpoints: accessEndpointList,
@as("Tags") tags: tags,
@as("ApplicationSettings") applicationSettings: applicationSettings,
@as("UserSettings") userSettings: userSettingList,
@as("FeedbackURL") feedbackURL: feedbackURL,
@as("RedirectURL") redirectURL: redirectURL,
@as("StorageConnectors") storageConnectors: storageConnectorList,
@as("DisplayName") displayName: displayName,
@as("Description") description: description,
@as("Name") name: option<name>
}
  type response = {
@as("Stack") stack: stack
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "CreateStackCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStacks = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Names") names: stringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Stacks") stacks: stackList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DescribeStacksCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImages = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeImagesMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("Type") type_: visibilityType,
@as("Arns") arns: arnList,
@as("Names") names: stringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Images") images: imageList
}
  @module("@aws-sdk/client-appstream") @new external new_: (Js.Promise.t<request>) => t = "DescribeImagesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}
