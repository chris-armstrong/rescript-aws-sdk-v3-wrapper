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
type usbDeviceFilterString = string
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
@ocaml.doc("<p>The type of storage connector.</p>")
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
@ocaml.doc("<p>Possible values for the state of a streaming session.</p>")
type sessionState = [@as("EXPIRED") #EXPIRED | @as("PENDING") #PENDING | @as("ACTIVE") #ACTIVE]
type sessionConnectionState = [@as("NOT_CONNECTED") #NOT_CONNECTED | @as("CONNECTED") #CONNECTED]
type s3Key = string
type s3Bucket = string
@ocaml.doc("<p>The ARN of the resource.</p>") type resourceIdentifier = string
type regionName = string
type redirectURL = string
type platformType = [
  | @as("AMAZON_LINUX2") #AMAZON_LINUX2
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
type fleetType = [
  | @as("ELASTIC") #ELASTIC
  | @as("ON_DEMAND") #ON_DEMAND
  | @as("ALWAYS_ON") #ALWAYS_ON
]
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
@ocaml.doc("<p>The fleet attribute.</p>")
type fleetAttribute = [
  | @as("USB_DEVICE_FILTER_STRINGS") #USB_DEVICE_FILTER_STRINGS
  | @as("IAM_ROLE_ARN") #IAM_ROLE_ARN
  | @as("DOMAIN_JOIN_INFO") #DOMAIN_JOIN_INFO
  | @as("VPC_CONFIGURATION_SECURITY_GROUP_IDS") #VPC_CONFIGURATION_SECURITY_GROUP_IDS
  | @as("VPC_CONFIGURATION") #VPC_CONFIGURATION
]
type feedbackURL = string
@ocaml.doc("<p>The error message in the exception.</p>") type errorMessage = string
@ocaml.doc("Specifies a valid domain that can embed AppStream.
        Valid examples include: [\"testorigin.tt--com\", \"testingorigin.com.us\", \"test.com.us\"]
        Invalid examples include: [\"test,com\", \".com\", \"h*llo.com\". \"\"]")
type embedHostDomain = string
@ocaml.doc("GSuite domain for GDrive integration.") type domain = string
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
type applicationAttribute = [
  | @as("WORKING_DIRECTORY") #WORKING_DIRECTORY
  | @as("LAUNCH_PARAMETERS") #LAUNCH_PARAMETERS
]
type appVisibility = [@as("ASSOCIATED") #ASSOCIATED | @as("ALL") #ALL]
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
@ocaml.doc("<p>Describes a user in the user pool and the associated stack.</p>")
type userStackAssociation = {
  @ocaml.doc(
    "<p>Specifies whether a welcome email is sent to a user after the user is created in the user pool.</p>"
  )
  @as("SendEmailNotification")
  sendEmailNotification: option<boolean_>,
  @ocaml.doc("<p>The authentication type for the user.</p>") @as("AuthenticationType")
  authenticationType: authenticationType,
  @ocaml.doc("<p>The email address of the user who is associated with the stack.</p>
        
        <note>
            <p>Users' email addresses are case-sensitive.</p>
         </note>")
  @as("UserName")
  userName: username,
  @ocaml.doc("<p>The name of the stack that is associated with the user.</p>") @as("StackName")
  stackName: string_,
}
@ocaml.doc(
  "<p>Describes an action and whether the action is enabled or disabled for users during their streaming sessions.</p>"
)
type userSetting = {
  @ocaml.doc("<p>Indicates whether the action is enabled or disabled.</p>") @as("Permission")
  permission: permission,
  @ocaml.doc("<p>The action that is enabled or disabled.</p>") @as("Action") action: action,
}
@ocaml.doc("<p>Describes a user in the user pool.</p>")
type user = {
  @ocaml.doc("<p>The authentication type for the user.</p>") @as("AuthenticationType")
  authenticationType: authenticationType,
  @ocaml.doc("<p>The date and time the user was created in the user pool.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The last name, or surname, of the user.</p>") @as("LastName")
  lastName: option<userAttributeValue>,
  @ocaml.doc("<p>The first name, or given name, of the user.</p>") @as("FirstName")
  firstName: option<userAttributeValue>,
  @ocaml.doc("<p>The status of the user in the user pool. The status can be one of the following:</p>
        <ul>
            <li>
               <p>UNCONFIRMED – The user is created but not confirmed.</p>
            </li>
            <li>
               <p>CONFIRMED – The user is confirmed.</p>
            </li>
            <li>
               <p>ARCHIVED – The user is no longer active.</p>
            </li>
            <li>
               <p>COMPROMISED – The user is disabled because of a potential security threat.</p>
            </li>
            <li>
               <p>UNKNOWN – The user status is not known.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Specifies whether the user in the user pool is enabled.</p>") @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>The email address of the user.</p>
        
        <note>
            <p>Users' email addresses are case-sensitive.</p>
         </note>")
  @as("UserName")
  userName: option<username>,
  @ocaml.doc("<p>The ARN of the user.</p>") @as("Arn") arn: option<arn>,
}
type usbDeviceFilterStrings = array<usbDeviceFilterString>
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The subnet identifiers.</p>") type subnetIdList = array<string_>
type stringList = array<string_>
@ocaml.doc("<p>Describes a stack error.</p>")
type stackError = {
  @ocaml.doc("<p>The error message.</p>") @as("ErrorMessage") errorMessage: option<string_>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<stackErrorCode>,
}
type stackAttributes = array<stackAttribute>
@ocaml.doc(
  "<p>Describes the credentials for the service account used by the fleet or image builder to connect to the directory.</p>"
)
type serviceAccountCredentials = {
  @ocaml.doc("<p>The password for the account.</p>") @as("AccountPassword")
  accountPassword: accountPassword,
  @ocaml.doc("<p>The user name of the account. This account must have the following privileges: create computer objects, 
            join computers to the domain, and change/reset the password on descendant computer objects for the 
            organizational units specified.</p>")
  @as("AccountName")
  accountName: accountName,
}
@ocaml.doc("<p>The security group identifiers.</p>") type securityGroupIdList = array<string_>
@ocaml.doc("<p>Describes the S3 location.</p>")
type s3Location = {
  @ocaml.doc("<p>The S3 key of the S3 object.</p>") @as("S3Key") s3Key: s3Key,
  @ocaml.doc("<p>The S3 bucket of the S3 object.</p>") @as("S3Bucket") s3Bucket: s3Bucket,
}
@ocaml.doc("<p>Describes a resource error.</p>")
type resourceError = {
  @ocaml.doc("<p>The time the error occurred.</p>") @as("ErrorTimestamp")
  errorTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The error message.</p>") @as("ErrorMessage") errorMessage: option<string_>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<fleetErrorCode>,
}
type platforms = array<platformType>
type organizationalUnitDistinguishedNamesList = array<organizationalUnitDistinguishedName>
@ocaml.doc("<p>Describes the network details of the fleet or image builder instance.</p>")
type networkAccessConfiguration = {
  @ocaml.doc(
    "<p>The resource identifier of the elastic network interface that is attached to instances in your VPC. All network interfaces have the eni-xxxxxxxx resource identifier.</p>"
  )
  @as("EniId")
  eniId: option<string_>,
  @ocaml.doc(
    "<p>The private IP address of the elastic network interface that is attached to instances in your VPC.</p>"
  )
  @as("EniPrivateIpAddress")
  eniPrivateIpAddress: option<string_>,
}
type metadata = Js.Dict.t<string_>
@ocaml.doc("<p>Describes the error that is returned when a usage report can't be generated.</p>")
type lastReportGenerationExecutionError = {
  @ocaml.doc(
    "<p>The error message for the error that is returned when a usage report can't be generated.</p>"
  )
  @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc(
    "<p>The error code for the error that is returned when a usage report can't be generated.</p>"
  )
  @as("ErrorCode")
  errorCode: option<usageReportExecutionErrorCode>,
}
@ocaml.doc("<p>Describes the reason why the last image state change occurred.</p>")
type imageStateChangeReason = {
  @ocaml.doc("<p>The state change reason message.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>The state change reason code.</p>") @as("Code")
  code: option<imageStateChangeReasonCode>,
}
@ocaml.doc("<p>Describes the permissions for an image. </p>")
type imagePermissions = {
  @ocaml.doc("<p>Indicates whether the image can be used for an image builder.</p>")
  allowImageBuilder: option<booleanObject>,
  @ocaml.doc("<p>Indicates whether the image can be used for a fleet.</p>")
  allowFleet: option<booleanObject>,
}
@ocaml.doc("<p>Describes the reason why the last image builder state change occurred.</p>")
type imageBuilderStateChangeReason = {
  @ocaml.doc("<p>The state change reason message.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>The state change reason code.</p>") @as("Code")
  code: option<imageBuilderStateChangeReasonCode>,
}
@ocaml.doc("<p>Describes a fleet error.</p>")
type fleetError = {
  @ocaml.doc("<p>The error message.</p>") @as("ErrorMessage") errorMessage: option<string_>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<fleetErrorCode>,
}
@ocaml.doc("<p>The fleet attributes.</p>") type fleetAttributes = array<fleetAttribute>
@ocaml.doc("<p>An attribute associated with an entitlement. Application entitlements work by matching
            a supported SAML 2.0 attribute name to a value when a user identity federates to an
            Amazon AppStream 2.0 SAML application.</p>")
type entitlementAttribute = {
  @ocaml.doc("<p>A value that is matched to a supported SAML attribute name when a user identity
            federates into an Amazon AppStream 2.0 SAML application. </p>")
  @as("Value")
  value: string_,
  @ocaml.doc("<p>A supported AWS IAM SAML <code>PrincipalTag</code> attribute that is matched to the
            associated value when a user identity federates into an Amazon AppStream 2.0 SAML
            application.</p>
        <p>The following are valid values:</p>
        <ul>
            <li>
               <p>roles</p>
            </li>
            <li>
               <p>department </p>
            </li>
            <li>
               <p>organization </p>
            </li>
            <li>
               <p>groups </p>
            </li>
            <li>
               <p>title </p>
            </li>
            <li>
               <p>costCenter </p>
            </li>
            <li>
               <p>userType</p>
            </li>
         </ul>
        <p> </p>")
  @as("Name")
  name: string_,
}
@ocaml.doc(
  "<p>The application associated to an entitlement. Access is controlled based on user attributes.</p>"
)
type entitledApplication = {
  @ocaml.doc("<p>The identifier of the application.</p>") @as("ApplicationIdentifier")
  applicationIdentifier: string_,
}
type embedHostDomains = array<embedHostDomain>
type domainList = array<domain>
@ocaml.doc(
  "<p>Describes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>"
)
type domainJoinInfo = {
  @ocaml.doc("<p>The distinguished name of the organizational unit for computer accounts.</p>")
  @as("OrganizationalUnitDistinguishedName")
  organizationalUnitDistinguishedName: option<organizationalUnitDistinguishedName>,
  @ocaml.doc("<p>The fully qualified name of the directory (for example, corp.example.com).</p>")
  @as("DirectoryName")
  directoryName: option<directoryName>,
}
type directoryNameList = array<directoryName>
@ocaml.doc("<p>Describes the capacity status for a fleet.</p>")
type computeCapacityStatus = {
  @ocaml.doc("<p>The number of currently available instances that can be used to stream
            sessions.</p>")
  @as("Available")
  available: option<integer_>,
  @ocaml.doc("<p>The number of instances in use for streaming.</p>") @as("InUse")
  inUse: option<integer_>,
  @ocaml.doc("<p>The total number of simultaneous streaming instances that are running.</p>")
  @as("Running")
  running: option<integer_>,
  @ocaml.doc("<p>The desired number of streaming instances.</p>") @as("Desired") desired: integer_,
}
@ocaml.doc("<p>Describes the capacity for a fleet.</p>")
type computeCapacity = {
  @ocaml.doc("<p>The desired number of streaming instances.</p>") @as("DesiredInstances")
  desiredInstances: integer_,
}
type awsAccountIdList = array<awsAccountId>
type arnList = array<arn>
@ocaml.doc("<p>Describes the persistent application settings for users of a stack.</p>")
type applicationSettingsResponse = {
  @ocaml.doc("<p>The S3 bucket where users’ persistent application settings are stored. When persistent application settings are enabled for the first time for an account in an AWS Region, an S3 bucket is created. The bucket is unique to the AWS account and the Region. 
        </p>")
  @as("S3BucketName")
  s3BucketName: option<string_>,
  @ocaml.doc(
    "<p>The path prefix for the S3 bucket where users’ persistent application settings are stored.</p>"
  )
  @as("SettingsGroup")
  settingsGroup: option<settingsGroup>,
  @ocaml.doc(
    "<p>Specifies whether persistent application settings are enabled for users during their streaming sessions.</p>"
  )
  @as("Enabled")
  enabled: option<boolean_>,
}
@ocaml.doc("<p>The persistent application settings for users of a stack.</p>")
type applicationSettings = {
  @ocaml.doc(
    "<p>The path prefix for the S3 bucket where users’ persistent application settings are stored. You can allow the same persistent application settings to be used across multiple stacks by specifying the same settings group for each stack. </p>"
  )
  @as("SettingsGroup")
  settingsGroup: option<settingsGroup>,
  @ocaml.doc(
    "<p>Enables or disables persistent application settings for users during their streaming sessions. </p>"
  )
  @as("Enabled")
  enabled: boolean_,
}
@ocaml.doc("<p>Describes the application fleet association.</p>")
type applicationFleetAssociation = {
  @ocaml.doc("<p>The ARN of the application associated with the fleet.</p>") @as("ApplicationArn")
  applicationArn: arn,
  @ocaml.doc("<p>The name of the fleet associated with the application.</p>") @as("FleetName")
  fleetName: string_,
}
type applicationAttributes = array<applicationAttribute>
@ocaml.doc(
  "<p>Describes an interface VPC endpoint (interface endpoint) that lets you create a private connection between the virtual private cloud (VPC) that you specify and AppStream 2.0. When you specify an interface endpoint for a stack, users of the stack can connect to AppStream 2.0 only through that endpoint. When you specify an interface endpoint for an image builder, administrators can connect to the image builder only through that endpoint.</p>"
)
type accessEndpoint = {
  @ocaml.doc("<p>The identifier (ID) of the VPC in which the interface endpoint is used.</p>")
  @as("VpceId")
  vpceId: option<string_>,
  @ocaml.doc("<p>The type of interface endpoint.</p>") @as("EndpointType")
  endpointType: accessEndpointType,
}
@ocaml.doc("<p>Describes VPC configuration information for fleets and image builders.</p>")
type vpcConfig = {
  @ocaml.doc("<p>The identifiers of the security groups for the fleet or image builder.</p>")
  @as("SecurityGroupIds")
  securityGroupIds: option<securityGroupIdList>,
  @ocaml.doc(
    "<p>The identifiers of the subnets to which a network interface is attached from the fleet instance or image builder instance. Fleet instances use one or more subnets. Image builder instances use one subnet.</p>"
  )
  @as("SubnetIds")
  subnetIds: option<subnetIdList>,
}
type userStackAssociationList = array<userStackAssociation>
@ocaml.doc(
  "<p>Describes the error that is returned when a user can’t be associated with or disassociated from a stack. </p>"
)
type userStackAssociationError = {
  @ocaml.doc(
    "<p>The error message for the error that is returned when a user can’t be associated with or disassociated from a stack.</p>"
  )
  @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc(
    "<p>The error code for the error that is returned when a user can’t be associated with or disassociated from a stack.</p>"
  )
  @as("ErrorCode")
  errorCode: option<userStackAssociationErrorCode>,
  @ocaml.doc("<p>Information about the user and associated stack.</p>") @as("UserStackAssociation")
  userStackAssociation: option<userStackAssociation>,
}
type userSettingList = array<userSetting>
type userList = array<user>
@ocaml.doc("<p>Describes a connector that enables persistent storage for users.</p>")
type storageConnector = {
  @ocaml.doc("<p>The names of the domains for the account.</p>") @as("Domains")
  domains: option<domainList>,
  @ocaml.doc("<p>The ARN of the storage connector.</p>") @as("ResourceIdentifier")
  resourceIdentifier: option<resourceIdentifier>,
  @ocaml.doc("<p>The type of storage connector.</p>") @as("ConnectorType")
  connectorType: storageConnectorType,
}
@ocaml.doc("<p>The stack errors.</p>") type stackErrors = array<stackError>
@ocaml.doc(
  "<p>Describes the permissions that are available to the specified AWS account for a shared image.</p>"
)
type sharedImagePermissions = {
  @ocaml.doc("<p>Describes the permissions for a shared image.</p>")
  imagePermissions: imagePermissions,
  @ocaml.doc("<p>The 12-digit identifier of the AWS account with which the image is shared.</p>")
  sharedAccountId: awsAccountId,
}
@ocaml.doc("<p>Describes a streaming session.</p>")
type session = {
  @ocaml.doc("<p>The network details for the streaming session.</p>")
  @as("NetworkAccessConfiguration")
  networkAccessConfiguration: option<networkAccessConfiguration>,
  @ocaml.doc("<p>The authentication method. The user is authenticated using a streaming URL
            (<code>API</code>) or SAML 2.0 federation (<code>SAML</code>).</p>")
  @as("AuthenticationType")
  authenticationType: option<authenticationType>,
  @ocaml.doc(
    "<p>The time when the streaming session is set to expire. This time is based on the <code>MaxUserDurationinSeconds</code> value, which determines the maximum length of time that a streaming session can run. A streaming session might end earlier than the time specified in <code>SessionMaxExpirationTime</code>, when the <code>DisconnectTimeOutInSeconds</code> elapses or the user chooses to end his or her session. If the <code>DisconnectTimeOutInSeconds</code> elapses, or the user chooses to end his or her session, the streaming instance is terminated and the streaming session ends.</p>"
  )
  @as("MaxExpirationTime")
  maxExpirationTime: option<timestamp_>,
  @ocaml.doc("<p>The time when a streaming instance is dedicated for the user.</p>")
  @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>Specifies whether a user is connected to the streaming session.</p>")
  @as("ConnectionState")
  connectionState: option<sessionConnectionState>,
  @ocaml.doc("<p>The current state of the streaming session.</p>") @as("State") state: sessionState,
  @ocaml.doc("<p>The name of the fleet for the streaming session.</p>") @as("FleetName")
  fleetName: string_,
  @ocaml.doc("<p>The name of the stack for the streaming session.</p>") @as("StackName")
  stackName: string_,
  @ocaml.doc("<p>The identifier of the user for whom the session was created.</p>") @as("UserId")
  userId: userId,
  @ocaml.doc("<p>The identifier of the streaming session.</p>") @as("Id") id: string_,
}
@ocaml.doc("<p>Describes the details of the script.</p>")
type scriptDetails = {
  @ocaml.doc("<p>The run timeout, in seconds, for the script.</p>") @as("TimeoutInSeconds")
  timeoutInSeconds: integer_,
  @ocaml.doc("<p>The runtime parameters passed to the run path for the script.</p>")
  @as("ExecutableParameters")
  executableParameters: option<string_>,
  @ocaml.doc("<p>The run path for the script.</p>") @as("ExecutablePath") executablePath: string_,
  @ocaml.doc("<p>The S3 object location for the script.</p>") @as("ScriptS3Location")
  scriptS3Location: s3Location,
}
type resourceErrors = array<resourceError>
type lastReportGenerationExecutionErrors = array<lastReportGenerationExecutionError>
type fleetErrors = array<fleetError>
type entitlementAttributeList = array<entitlementAttribute>
type entitledApplicationList = array<entitledApplication>
@ocaml.doc(
  "<p>Describes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>"
)
type directoryConfig = {
  @ocaml.doc("<p>The time the directory configuration was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>"
  )
  @as("ServiceAccountCredentials")
  serviceAccountCredentials: option<serviceAccountCredentials>,
  @ocaml.doc("<p>The distinguished names of the organizational units for computer accounts.</p>")
  @as("OrganizationalUnitDistinguishedNames")
  organizationalUnitDistinguishedNames: option<organizationalUnitDistinguishedNamesList>,
  @ocaml.doc("<p>The fully qualified name of the directory (for example, corp.example.com).</p>")
  @as("DirectoryName")
  directoryName: directoryName,
}
type applicationFleetAssociationList = array<applicationFleetAssociation>
@ocaml.doc("<p>Describes an application in the application catalog.</p>")
type application = {
  @ocaml.doc("<p>The time at which the application was created within the app block.</p>")
  @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The instance families for the application.</p>") @as("InstanceFamilies")
  instanceFamilies: option<stringList>,
  @ocaml.doc("<p>The platforms on which the application can run.</p>") @as("Platforms")
  platforms: option<platforms>,
  @ocaml.doc("<p>The S3 location of the application icon.</p>") @as("IconS3Location")
  iconS3Location: option<s3Location>,
  @ocaml.doc("<p>The app block ARN of the application.</p>") @as("AppBlockArn")
  appBlockArn: option<arn>,
  @ocaml.doc("<p>The ARN of the application.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The description of the application.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The working directory for the application.</p>") @as("WorkingDirectory")
  workingDirectory: option<string_>,
  @ocaml.doc("<p>Additional attributes that describe the application.</p>") @as("Metadata")
  metadata: option<metadata>,
  @ocaml.doc("<p>If there is a problem, the application can be disabled after image creation.</p>")
  @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>The arguments that are passed to the application at launch.</p>")
  @as("LaunchParameters")
  launchParameters: option<string_>,
  @ocaml.doc("<p>The path to the application executable in the instance.</p>") @as("LaunchPath")
  launchPath: option<string_>,
  @ocaml.doc("<p>The URL for the application icon. This URL might be time-limited.</p>")
  @as("IconURL")
  iconURL: option<string_>,
  @ocaml.doc("<p>The application name to display.</p>") @as("DisplayName")
  displayName: option<string_>,
  @ocaml.doc("<p>The name of the application.</p>") @as("Name") name: option<string_>,
}
type accessEndpointList = array<accessEndpoint>
type userStackAssociationErrorList = array<userStackAssociationError>
@ocaml.doc("<p>Describes information about the usage report subscription.</p>")
type usageReportSubscription = {
  @ocaml.doc("<p>The errors that were returned if usage reports couldn't be generated.</p>")
  @as("SubscriptionErrors")
  subscriptionErrors: option<lastReportGenerationExecutionErrors>,
  @ocaml.doc("<p>The time when the last usage report was generated.</p>")
  @as("LastGeneratedReportDate")
  lastGeneratedReportDate: option<timestamp_>,
  @ocaml.doc("<p>The schedule for generating usage reports.</p>") @as("Schedule")
  schedule: option<usageReportSchedule>,
  @ocaml.doc("<p>The Amazon S3 bucket where generated reports are stored.</p> 
        
        <p>If you enabled on-instance session scripts and Amazon S3 logging for your session script
            configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is
            unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0
            uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts, 
            when you enable usage reports, AppStream 2.0 creates a new S3 bucket.</p>")
  @as("S3BucketName")
  s3BucketName: option<string_>,
}
@ocaml.doc("<p>The storage connectors.</p>") type storageConnectorList = array<storageConnector>
type sharedImagePermissionsList = array<sharedImagePermissions>
@ocaml.doc("<p>List of sessions.</p>") type sessionList = array<session>
@ocaml.doc("<p>Describes a virtual machine that is used to create an image. </p>")
type imageBuilder = {
  @ocaml.doc(
    "<p>The list of virtual private cloud (VPC) interface endpoint objects. Administrators can connect to the image builder only through the specified endpoints.</p>"
  )
  @as("AccessEndpoints")
  accessEndpoints: option<accessEndpointList>,
  @ocaml.doc(
    "<p>The version of the AppStream 2.0 agent that is currently being used by the image builder. </p>"
  )
  @as("AppstreamAgentVersion")
  appstreamAgentVersion: option<appstreamAgentVersion>,
  @ocaml.doc("<p>The image builder errors.</p>") @as("ImageBuilderErrors")
  imageBuilderErrors: option<resourceErrors>,
  @as("NetworkAccessConfiguration") networkAccessConfiguration: option<networkAccessConfiguration>,
  @ocaml.doc(
    "<p>The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. </p>"
  )
  @as("DomainJoinInfo")
  domainJoinInfo: option<domainJoinInfo>,
  @ocaml.doc("<p>Enables or disables default internet access for the image builder.</p>")
  @as("EnableDefaultInternetAccess")
  enableDefaultInternetAccess: option<booleanObject>,
  @ocaml.doc("<p>The time stamp when the image builder was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The reason why the last state change occurred.</p>") @as("StateChangeReason")
  stateChangeReason: option<imageBuilderStateChangeReason>,
  @ocaml.doc("<p>The state of the image builder.</p>") @as("State")
  state: option<imageBuilderState>,
  @ocaml.doc("<p>The ARN of the IAM role that is applied to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
        
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>")
  @as("IamRoleArn")
  iamRoleArn: option<arn>,
  @ocaml.doc("<p>The operating system platform of the image builder.</p>") @as("Platform")
  platform: option<platformType>,
  @ocaml.doc("<p>The instance type for the image builder. The following instance types are available:</p>   
            <ul>
            <li>
               <p>stream.standard.small</p>
            </li>
            <li>
               <p>stream.standard.medium</p>
            </li>
            <li>
               <p>stream.standard.large</p>
            </li>
            <li>
               <p>stream.compute.large</p>
            </li>
            <li>
               <p>stream.compute.xlarge</p>
            </li>
            <li>
               <p>stream.compute.2xlarge</p>
            </li>
            <li>
               <p>stream.compute.4xlarge</p>
            </li>
            <li>
               <p>stream.compute.8xlarge</p>
            </li>
            <li>
               <p>stream.memory.large</p>
            </li>
            <li>
               <p>stream.memory.xlarge</p>
            </li>
            <li>
               <p>stream.memory.2xlarge</p>
            </li>
            <li>
               <p>stream.memory.4xlarge</p>
            </li>
            <li>
               <p>stream.memory.8xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.large</p>
            </li>
            <li>
               <p>stream.memory.z1d.xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.2xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.3xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.6xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.12xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.large</p>
            </li>
            <li>
               <p>stream.graphics-design.xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics-desktop.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.8xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.12xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.16xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.8xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.16xlarge</p>
            </li>
         </ul>")
  @as("InstanceType")
  instanceType: option<string_>,
  @ocaml.doc("<p>The VPC configuration of the image builder.</p>") @as("VpcConfig")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>The image builder name to display.</p>") @as("DisplayName")
  displayName: option<string_>,
  @ocaml.doc("<p>The description to display.</p>") @as("Description") description: option<string_>,
  @ocaml.doc("<p>The ARN of the image from which this builder was created.</p>") @as("ImageArn")
  imageArn: option<arn>,
  @ocaml.doc("<p>The ARN for the image builder.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The name of the image builder.</p>") @as("Name") name: string_,
}
@ocaml.doc("<p>Describes a fleet.</p>")
type fleet = {
  @ocaml.doc("<p>The USB device filter strings associated with the fleet.</p>")
  @as("UsbDeviceFilterStrings")
  usbDeviceFilterStrings: option<usbDeviceFilterStrings>,
  @ocaml.doc("<p>The maximum number of concurrent sessions for the fleet.</p>")
  @as("MaxConcurrentSessions")
  maxConcurrentSessions: option<integer_>,
  @ocaml.doc("<p>The platform of the fleet.</p>") @as("Platform") platform: option<platformType>,
  @ocaml.doc("<p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
        
        <p>The default value is <code>APP</code>.</p>")
  @as("StreamView")
  streamView: option<streamView>,
  @ocaml.doc("<p>The ARN of the IAM role that is applied to the fleet. To assume a role, the fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
        
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>")
  @as("IamRoleArn")
  iamRoleArn: option<arn>,
  @ocaml.doc("<p>The amount of time that users can be idle (inactive) before they are disconnected
            from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
            interval begins. Users are notified before they are disconnected due to inactivity. If
            users try to reconnect to the streaming session before the time interval specified in
            <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
            previous session. Users are considered idle when they stop providing keyboard or mouse
            input during their streaming session. File uploads and downloads, audio in, audio out,
            and pixels changing do not qualify as user activity. If users continue to be idle after
            the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
            disconnected.</p>
        <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.</p>
        
        <note>
            <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
         </note>")
  @as("IdleDisconnectTimeoutInSeconds")
  idleDisconnectTimeoutInSeconds: option<integer_>,
  @ocaml.doc(
    "<p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. </p>"
  )
  @as("DomainJoinInfo")
  domainJoinInfo: option<domainJoinInfo>,
  @ocaml.doc("<p>Indicates whether default internet access is enabled for the fleet.</p>")
  @as("EnableDefaultInternetAccess")
  enableDefaultInternetAccess: option<booleanObject>,
  @ocaml.doc("<p>The fleet errors.</p>") @as("FleetErrors") fleetErrors: option<fleetErrors>,
  @ocaml.doc("<p>The time the fleet was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The VPC configuration for the fleet.</p>") @as("VpcConfig")
  vpcConfig: option<vpcConfig>,
  @ocaml.doc("<p>The current state for the fleet.</p>") @as("State") state: fleetState,
  @ocaml.doc("<p>The amount of time that a streaming session remains active after users disconnect. If they try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance.</p>
        <p>Specify a value between 60 and 360000.</p>")
  @as("DisconnectTimeoutInSeconds")
  disconnectTimeoutInSeconds: option<integer_>,
  @ocaml.doc("<p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance. </p>
        <p>Specify a value between 600 and 360000.</p>")
  @as("MaxUserDurationInSeconds")
  maxUserDurationInSeconds: option<integer_>,
  @ocaml.doc("<p>The capacity status for the fleet.</p>") @as("ComputeCapacityStatus")
  computeCapacityStatus: computeCapacityStatus,
  @ocaml.doc("<p>The fleet type.</p>
        <dl>
            <dt>ALWAYS_ON</dt>
            <dd>
                    <p>Provides users with instant-on access to their apps.
                        You are charged for all running instances in your fleet, even if no users are streaming apps.</p>
                </dd>
            <dt>ON_DEMAND</dt>
            <dd>
                    <p>Provide users with access to applications after they connect, which takes one to two minutes.
                        You are charged for instance streaming when users are connected and a
                        small hourly fee for instances that are not streaming apps.</p>
                </dd>
         </dl>")
  @as("FleetType")
  fleetType: option<fleetType>,
  @ocaml.doc("<p>The instance type to use when launching fleet instances. The following instance types are available:</p>    
        <ul>
            <li>
               <p>stream.standard.small</p>
            </li>
            <li>
               <p>stream.standard.medium</p>
            </li>
            <li>
               <p>stream.standard.large</p>
            </li>
            <li>
               <p>stream.compute.large</p>
            </li>
            <li>
               <p>stream.compute.xlarge</p>
            </li>
            <li>
               <p>stream.compute.2xlarge</p>
            </li>
            <li>
               <p>stream.compute.4xlarge</p>
            </li>
            <li>
               <p>stream.compute.8xlarge</p>
            </li>
            <li>
               <p>stream.memory.large</p>
            </li>
            <li>
               <p>stream.memory.xlarge</p>
            </li>
            <li>
               <p>stream.memory.2xlarge</p>
            </li>
            <li>
               <p>stream.memory.4xlarge</p>
            </li>
            <li>
               <p>stream.memory.8xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.large</p>
            </li>
            <li>
               <p>stream.memory.z1d.xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.2xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.3xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.6xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.12xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.large</p>
            </li>
            <li>
               <p>stream.graphics-design.xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics-desktop.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.8xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.12xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.16xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.8xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.16xlarge</p>
            </li>
         </ul>")
  @as("InstanceType")
  instanceType: string_,
  @ocaml.doc("<p>The ARN for the public, private, or shared image.</p>") @as("ImageArn")
  imageArn: option<arn>,
  @ocaml.doc("<p>The name of the image used to create the fleet.</p>") @as("ImageName")
  imageName: option<string_>,
  @ocaml.doc("<p>The description to display.</p>") @as("Description") description: option<string_>,
  @ocaml.doc("<p>The fleet name to display.</p>") @as("DisplayName") displayName: option<string_>,
  @ocaml.doc("<p>The name of the fleet.</p>") @as("Name") name: string_,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the fleet.</p>") @as("Arn") arn: arn,
}
@ocaml.doc("<p>Specifies an entitlement. Entitlements control access to specific applications within
            a stack, based on user attributes. Entitlements apply to SAML 2.0 federated user
            identities. Amazon AppStream 2.0 user pool and streaming URL users are entitled to all
            applications in a stack. Entitlements don't apply to the desktop stream view
            application, or to applications managed by a dynamic app provider using the Dynamic
            Application Framework.</p>")
type entitlement = {
  @ocaml.doc("<p>The time when the entitlement was last modified.</p>") @as("LastModifiedTime")
  lastModifiedTime: option<timestamp_>,
  @ocaml.doc("<p>The time when the entitlement was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The attributes of the entitlement.</p>") @as("Attributes")
  attributes: entitlementAttributeList,
  @ocaml.doc("<p>Specifies whether all or selected apps are entitled.</p>") @as("AppVisibility")
  appVisibility: appVisibility,
  @ocaml.doc("<p>The description of the entitlement.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the stack with which the entitlement is associated.</p>")
  @as("StackName")
  stackName: name,
  @ocaml.doc("<p>The name of the entitlement.</p>") @as("Name") name: name,
}
type directoryConfigList = array<directoryConfig>
type applications = array<application>
@ocaml.doc("<p>Describes an app block.</p>
         <p>App blocks are an Amazon AppStream 2.0 resource that stores the details about the
           virtual hard disk in an S3 bucket. It also stores the setup script with details about
           how to mount the virtual hard disk. The virtual hard disk includes the application
           binaries and other files necessary to launch your applications. Multiple applications
           can be assigned to a single app block.</p>
         <p>This is only supported for Elastic fleets.</p>")
type appBlock = {
  @ocaml.doc("<p>The created time of the app block.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The setup script details of the app block.</p>") @as("SetupScriptDetails")
  setupScriptDetails: scriptDetails,
  @ocaml.doc("<p>The source S3 location of the app block.</p>") @as("SourceS3Location")
  sourceS3Location: option<s3Location>,
  @ocaml.doc("<p>The display name of the app block.</p>") @as("DisplayName")
  displayName: option<string_>,
  @ocaml.doc("<p>The description of the app block.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The ARN of the app block.</p>") @as("Arn") arn: arn,
  @ocaml.doc("<p>The name of the app block.</p>") @as("Name") name: string_,
}
type usageReportSubscriptionList = array<usageReportSubscription>
@ocaml.doc("<p>Describes a stack.</p>")
type stack = {
  @ocaml.doc(
    "<p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.</p>"
  )
  @as("EmbedHostDomains")
  embedHostDomains: option<embedHostDomains>,
  @ocaml.doc(
    "<p>The list of virtual private cloud (VPC) interface endpoint objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints. </p>"
  )
  @as("AccessEndpoints")
  accessEndpoints: option<accessEndpointList>,
  @ocaml.doc("<p>The persistent application settings for users of the stack.</p>")
  @as("ApplicationSettings")
  applicationSettings: option<applicationSettingsResponse>,
  @ocaml.doc(
    "<p>The actions that are enabled or disabled for users during their streaming sessions. By default these actions are enabled.</p>"
  )
  @as("UserSettings")
  userSettings: option<userSettingList>,
  @ocaml.doc("<p>The errors for the stack.</p>") @as("StackErrors")
  stackErrors: option<stackErrors>,
  @ocaml.doc(
    "<p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>"
  )
  @as("FeedbackURL")
  feedbackURL: option<feedbackURL>,
  @ocaml.doc("<p>The URL that users are redirected to after their streaming session ends.</p>")
  @as("RedirectURL")
  redirectURL: option<redirectURL>,
  @ocaml.doc("<p>The storage connectors to enable.</p>") @as("StorageConnectors")
  storageConnectors: option<storageConnectorList>,
  @ocaml.doc("<p>The time the stack was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The stack name to display.</p>") @as("DisplayName") displayName: option<string_>,
  @ocaml.doc("<p>The description to display.</p>") @as("Description") description: option<string_>,
  @ocaml.doc("<p>The name of the stack.</p>") @as("Name") name: string_,
  @ocaml.doc("<p>The ARN of the stack.</p>") @as("Arn") arn: option<arn>,
}
type imageBuilderList = array<imageBuilder>
@ocaml.doc("<p>Describes an image.</p>")
type image = {
  @ocaml.doc("<p>Describes the errors that are returned when a new image can't be created.</p>")
  @as("ImageErrors")
  imageErrors: option<resourceErrors>,
  @ocaml.doc(
    "<p>The permissions to provide to the destination AWS account for the specified image.</p>"
  )
  @as("ImagePermissions")
  imagePermissions: option<imagePermissions>,
  @ocaml.doc(
    "<p>The version of the AppStream 2.0 agent to use for instances that are launched from this image. </p>"
  )
  @as("AppstreamAgentVersion")
  appstreamAgentVersion: option<appstreamAgentVersion>,
  @ocaml.doc("<p>The release date of the public base image. 
            For private images, this date is the release date of the base image from which the image was created.</p>")
  @as("PublicBaseImageReleasedDate")
  publicBaseImageReleasedDate: option<timestamp_>,
  @ocaml.doc("<p>The time the image was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The applications associated with the image.</p>") @as("Applications")
  applications: option<applications>,
  @ocaml.doc("<p>The reason why the last state change occurred.</p>") @as("StateChangeReason")
  stateChangeReason: option<imageStateChangeReason>,
  @ocaml.doc("<p>The description to display.</p>") @as("Description") description: option<string_>,
  @ocaml.doc("<p>The operating system platform of the image.</p>") @as("Platform")
  platform: option<platformType>,
  @ocaml.doc(
    "<p>The name of the image builder that was used to create the private image. If the image is shared, this value is null.</p>"
  )
  @as("ImageBuilderName")
  imageBuilderName: option<string_>,
  @ocaml.doc("<p>Indicates whether an image builder can be launched from this image.</p>")
  @as("ImageBuilderSupported")
  imageBuilderSupported: option<boolean_>,
  @ocaml.doc("<p>Indicates whether the image is public or private.</p>") @as("Visibility")
  visibility: option<visibilityType>,
  @ocaml.doc("<p>The image starts in the <code>PENDING</code> state. If image creation succeeds, the
            state is <code>AVAILABLE</code>. If image creation fails, the state is <code>FAILED</code>.</p>")
  @as("State")
  state: option<imageState>,
  @ocaml.doc("<p>The image name to display.</p>") @as("DisplayName") displayName: option<string_>,
  @ocaml.doc("<p>The ARN of the image from which this image was created.</p>") @as("BaseImageArn")
  baseImageArn: option<arn>,
  @ocaml.doc("<p>The ARN of the image.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The name of the image.</p>") @as("Name") name: string_,
}
@ocaml.doc("<p>The fleets.</p>") type fleetList = array<fleet>
type entitlementList = array<entitlement>
type appBlocks = array<appBlock>
@ocaml.doc("<p>The stacks.</p>") type stackList = array<stack>
type imageList = array<image>
@ocaml.doc("<fullname>Amazon AppStream 2.0</fullname>
        <p>This is the <i>Amazon AppStream 2.0 API Reference</i>. This documentation provides descriptions and syntax for each of the actions and data types in AppStream 2.0. AppStream 2.0 is a fully managed, secure application streaming service that lets you stream desktop applications to users without rewriting applications. AppStream 2.0 manages the AWS resources that are required to host and run your applications, scales automatically, and provides access to your users on demand. </p>
        
        <note>
            <p>You can call the AppStream 2.0 API operations by using an interface VPC endpoint (interface endpoint). For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html\">Access AppStream 2.0 API Operations and CLI Commands Through an Interface VPC Endpoint</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
         </note>
        
        <p>To learn more about AppStream 2.0, see the following resources:</p>
            
            <ul>
            <li>
               <p> 
                  <a href=\"http://aws.amazon.com/appstream2\">Amazon AppStream 2.0 product page</a>
               </p>
            </li>
            <li>
               <p> 
                  <a href=\"http://aws.amazon.com/documentation/appstream2\">Amazon AppStream 2.0 documentation</a>
               </p>
            </li>
         </ul>")
module StopFleet = {
  type t
  type request = {@ocaml.doc("<p>The name of the fleet.</p>") @as("Name") name: string_}
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "StopFleetCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartFleet = {
  type t
  type request = {@ocaml.doc("<p>The name of the fleet.</p>") @as("Name") name: string_}
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "StartFleetCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ExpireSession = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the streaming session.</p>") @as("SessionId")
    sessionId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "ExpireSessionCommand"
  let make = (~sessionId, ()) => new({sessionId: sessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module EnableUser = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication type for the user. You must specify USERPOOL.</p>")
    @as("AuthenticationType")
    authenticationType: authenticationType,
    @ocaml.doc("<p>The email address of the user.</p>
        
        <note>
            <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a \"user does not exist\" error message displays. </p>
         </note>")
    @as("UserName")
    userName: username,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "EnableUserCommand"
  let make = (~authenticationType, ~userName, ()) => new({authenticationType, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisassociateFleet = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the stack.</p>") @as("StackName") stackName: string_,
    @ocaml.doc("<p>The name of the fleet.</p>") @as("FleetName") fleetName: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DisassociateFleetCommand"
  let make = (~stackName, ~fleetName, ()) => new({stackName, fleetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisassociateApplicationFromEntitlement = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the application to remove from the entitlement.</p>")
    @as("ApplicationIdentifier")
    applicationIdentifier: string_,
    @ocaml.doc("<p>The name of the entitlement.</p>") @as("EntitlementName") entitlementName: name,
    @ocaml.doc("<p>The name of the stack with which the entitlement is associated.</p>")
    @as("StackName")
    stackName: name,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DisassociateApplicationFromEntitlementCommand"
  let make = (~applicationIdentifier, ~entitlementName, ~stackName, ()) =>
    new({applicationIdentifier, entitlementName, stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisassociateApplicationFleet = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the application.</p>") @as("ApplicationArn") applicationArn: arn,
    @ocaml.doc("<p>The name of the fleet.</p>") @as("FleetName") fleetName: name,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DisassociateApplicationFleetCommand"
  let make = (~applicationArn, ~fleetName, ()) => new({applicationArn, fleetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisableUser = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication type for the user. You must specify USERPOOL.</p>")
    @as("AuthenticationType")
    authenticationType: authenticationType,
    @ocaml.doc("<p>The email address of the user.</p>
        
        <note>
            <p>Users' email addresses are case-sensitive.</p>
         </note>")
    @as("UserName")
    userName: username,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DisableUserCommand"
  let make = (~authenticationType, ~userName, ()) => new({authenticationType, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteUser = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication type for the user. You must specify USERPOOL.</p>")
    @as("AuthenticationType")
    authenticationType: authenticationType,
    @ocaml.doc("<p>The email address of the user.</p>
        
        <note>
            <p>Users' email addresses are case-sensitive.</p>
         </note>")
    @as("UserName")
    userName: username,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DeleteUserCommand"
  let make = (~authenticationType, ~userName, ()) => new({authenticationType, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteUsageReportSubscription = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DeleteUsageReportSubscriptionCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteStack = {
  type t
  type request = {@ocaml.doc("<p>The name of the stack.</p>") @as("Name") name: string_}
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DeleteStackCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteImagePermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The 12-digit identifier of the AWS account for which to delete image permissions.</p>"
    )
    @as("SharedAccountId")
    sharedAccountId: awsAccountId,
    @ocaml.doc("<p>The name of the private image.</p>") @as("Name") name: name,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DeleteImagePermissionsCommand"
  let make = (~sharedAccountId, ~name, ()) => new({sharedAccountId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteFleet = {
  type t
  type request = {@ocaml.doc("<p>The name of the fleet.</p>") @as("Name") name: string_}
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DeleteFleetCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteEntitlement = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the stack with which the entitlement is associated.</p>")
    @as("StackName")
    stackName: name,
    @ocaml.doc("<p>The name of the entitlement.</p>") @as("Name") name: name,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DeleteEntitlementCommand"
  let make = (~stackName, ~name, ()) => new({stackName, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteDirectoryConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the directory configuration.</p>") @as("DirectoryName")
    directoryName: directoryName,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DeleteDirectoryConfigCommand"
  let make = (~directoryName, ()) => new({directoryName: directoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteApplication = {
  type t
  type request = {@ocaml.doc("<p>The name of the application.</p>") @as("Name") name: name}
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DeleteApplicationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAppBlock = {
  type t
  type request = {@ocaml.doc("<p>The name of the app block.</p>") @as("Name") name: name}
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DeleteAppBlockCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateUser = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication type for the user. You must specify USERPOOL. </p>")
    @as("AuthenticationType")
    authenticationType: authenticationType,
    @ocaml.doc("<p>The last name, or surname, of the user.</p>") @as("LastName")
    lastName: option<userAttributeValue>,
    @ocaml.doc("<p>The first name, or given name, of the user.</p>") @as("FirstName")
    firstName: option<userAttributeValue>,
    @ocaml.doc("<p>The action to take for the welcome email that is sent to a user after the user is created in the user pool. If you specify SUPPRESS, no email is sent. If you specify RESEND, do not specify the first name or last name of the user. If the value is null, the email is sent. </p>
        
        <note>
            <p>The temporary password in the welcome email is valid for only 7 days. If users don’t set their passwords within 7 days, you must send them a new welcome email.</p>
         </note>")
    @as("MessageAction")
    messageAction: option<messageAction>,
    @ocaml.doc("<p>The email address of the user.</p>
        
        <note>
            <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a \"user does not exist\" error message displays.</p>
         </note>")
    @as("UserName")
    userName: username,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "CreateUserCommand"
  let make = (~authenticationType, ~userName, ~lastName=?, ~firstName=?, ~messageAction=?, ()) =>
    new({authenticationType, lastName, firstName, messageAction, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateUsageReportSubscription = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The schedule for generating usage reports.</p>") @as("Schedule")
    schedule: option<usageReportSchedule>,
    @ocaml.doc("<p>The Amazon S3 bucket where generated reports are stored.</p> 
            
            <p>If you enabled on-instance session scripts and Amazon S3 logging for your session script
            configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is
            unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0
            uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts, 
            when you enable usage reports, AppStream 2.0 creates a new S3 bucket.</p>")
    @as("S3BucketName")
    s3BucketName: option<string_>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "CreateUsageReportSubscriptionCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateStreamingURL = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The session context. For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters\">Session Context</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"
    )
    @as("SessionContext")
    sessionContext: option<string_>,
    @ocaml.doc("<p>The time that the streaming URL will be valid, in seconds.
            Specify a value between 1 and 604800 seconds. The default is 60 seconds.</p>")
    @as("Validity")
    validity: option<long>,
    @ocaml.doc("<p>The name of the application to launch after the session starts. This is the name that you specified
            as <b>Name</b> in the Image Assistant. If your fleet is enabled for the <b>Desktop</b> stream view, you can also choose to launch directly to the operating system desktop. To do so, specify <b>Desktop</b>.</p>")
    @as("ApplicationId")
    applicationId: option<string_>,
    @ocaml.doc("<p>The identifier of the user.</p>") @as("UserId") userId: streamingUrlUserId,
    @ocaml.doc("<p>The name of the fleet.</p>") @as("FleetName") fleetName: string_,
    @ocaml.doc("<p>The name of the stack.</p>") @as("StackName") stackName: string_,
  }
  type response = {
    @ocaml.doc("<p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>")
    @as("Expires")
    expires: option<timestamp_>,
    @ocaml.doc("<p>The URL to start the AppStream 2.0 streaming session.</p>") @as("StreamingURL")
    streamingURL: option<string_>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "CreateStreamingURLCommand"
  let make = (
    ~userId,
    ~fleetName,
    ~stackName,
    ~sessionContext=?,
    ~validity=?,
    ~applicationId=?,
    (),
  ) => new({sessionContext, validity, applicationId, userId, fleetName, stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateImageBuilderStreamingURL = {
  type t
  type request = {
    @ocaml.doc("<p>The time that the streaming URL will be valid, in seconds. 
            Specify a value between 1 and 604800 seconds. The default is 3600 seconds.</p>")
    @as("Validity")
    validity: option<long>,
    @ocaml.doc("<p>The name of the image builder.</p>") @as("Name") name: string_,
  }
  type response = {
    @ocaml.doc("<p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>")
    @as("Expires")
    expires: option<timestamp_>,
    @ocaml.doc("<p>The URL to start the AppStream 2.0 streaming session.</p>") @as("StreamingURL")
    streamingURL: option<string_>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "CreateImageBuilderStreamingURLCommand"
  let make = (~name, ~validity=?, ()) => new({validity, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CopyImage = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The description that the image will have when it is copied to the destination.</p>"
    )
    @as("DestinationImageDescription")
    destinationImageDescription: option<description>,
    @ocaml.doc(
      "<p>The destination region to which the image will be copied. This parameter is required, even if you are copying an image within the same region.</p>"
    )
    @as("DestinationRegion")
    destinationRegion: regionName,
    @ocaml.doc("<p>The name that the image will have when it is copied to the destination.</p>")
    @as("DestinationImageName")
    destinationImageName: name,
    @ocaml.doc("<p>The name of the image to copy.</p>") @as("SourceImageName")
    sourceImageName: name,
  }
  type response = {
    @ocaml.doc("<p>The name of the destination image.</p>") @as("DestinationImageName")
    destinationImageName: option<name>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "CopyImageCommand"
  let make = (
    ~destinationRegion,
    ~destinationImageName,
    ~sourceImageName,
    ~destinationImageDescription=?,
    (),
  ) => new({destinationImageDescription, destinationRegion, destinationImageName, sourceImageName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateFleet = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the stack.</p>") @as("StackName") stackName: string_,
    @ocaml.doc("<p>The name of the fleet. </p>") @as("FleetName") fleetName: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "AssociateFleetCommand"
  let make = (~stackName, ~fleetName, ()) => new({stackName, fleetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AssociateApplicationToEntitlement = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the application.</p>") @as("ApplicationIdentifier")
    applicationIdentifier: string_,
    @ocaml.doc("<p>The name of the entitlement.</p>") @as("EntitlementName") entitlementName: name,
    @ocaml.doc("<p>The name of the stack.</p>") @as("StackName") stackName: name,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "AssociateApplicationToEntitlementCommand"
  let make = (~applicationIdentifier, ~entitlementName, ~stackName, ()) =>
    new({applicationIdentifier, entitlementName, stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateImagePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The permissions for the image.</p>") @as("ImagePermissions")
    imagePermissions: imagePermissions,
    @ocaml.doc(
      "<p>The 12-digit identifier of the AWS account for which you want add or update image permissions.</p>"
    )
    @as("SharedAccountId")
    sharedAccountId: awsAccountId,
    @ocaml.doc("<p>The name of the private image.</p>") @as("Name") name: name,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "UpdateImagePermissionsCommand"
  let make = (~imagePermissions, ~sharedAccountId, ~name, ()) =>
    new({imagePermissions, sharedAccountId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys for the tags to disassociate.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to associate. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
        
        <p>If you do not specify a value, the value is set to an empty string.</p>
        
        <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
        <p>_ . : / = + \\ - @</p>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The information about the tags.</p>") @as("Tags") tags: option<tags>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAssociatedStacks = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the fleet.</p>") @as("FleetName") fleetName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the stack.</p>") @as("Names") names: option<stringList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "ListAssociatedStacksCommand"
  let make = (~fleetName, ~nextToken=?, ()) => new({nextToken, fleetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAssociatedFleets = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the stack.</p>") @as("StackName") stackName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the fleet.</p>") @as("Names") names: option<stringList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "ListAssociatedFleetsCommand"
  let make = (~stackName, ~nextToken=?, ()) => new({nextToken, stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateApplicationFleet = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the application.</p>") @as("ApplicationArn") applicationArn: arn,
    @ocaml.doc("<p>The name of the fleet.</p>") @as("FleetName") fleetName: name,
  }
  type response = {
    @ocaml.doc("<p>If fleet name is specified, this returns the list of applications that are associated
            to it. If application ARN is specified, this returns the list of fleets to which it is
            associated.</p>")
    @as("ApplicationFleetAssociation")
    applicationFleetAssociation: option<applicationFleetAssociation>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "AssociateApplicationFleetCommand"
  let make = (~applicationArn, ~fleetName, ()) => new({applicationArn, fleetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateDirectoryConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>"
    )
    @as("ServiceAccountCredentials")
    serviceAccountCredentials: option<serviceAccountCredentials>,
    @ocaml.doc("<p>The distinguished names of the organizational units for computer accounts.</p>")
    @as("OrganizationalUnitDistinguishedNames")
    organizationalUnitDistinguishedNames: option<organizationalUnitDistinguishedNamesList>,
    @ocaml.doc("<p>The name of the Directory Config object.</p>") @as("DirectoryName")
    directoryName: directoryName,
  }
  type response = {
    @ocaml.doc("<p>Information about the Directory Config object.</p>") @as("DirectoryConfig")
    directoryConfig: option<directoryConfig>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "UpdateDirectoryConfigCommand"
  let make = (
    ~directoryName,
    ~serviceAccountCredentials=?,
    ~organizationalUnitDistinguishedNames=?,
    (),
  ) => new({serviceAccountCredentials, organizationalUnitDistinguishedNames, directoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The attributes to delete for an application.</p>") @as("AttributesToDelete")
    attributesToDelete: option<applicationAttributes>,
    @ocaml.doc("<p>The ARN of the app block.</p>") @as("AppBlockArn") appBlockArn: option<arn>,
    @ocaml.doc("<p>The launch parameters of the application.</p>") @as("LaunchParameters")
    launchParameters: option<string_>,
    @ocaml.doc("<p>The working directory of the application.</p>") @as("WorkingDirectory")
    workingDirectory: option<string_>,
    @ocaml.doc("<p>The launch path of the application.</p>") @as("LaunchPath")
    launchPath: option<string_>,
    @ocaml.doc("<p>The icon S3 location of the application.</p>") @as("IconS3Location")
    iconS3Location: option<s3Location>,
    @ocaml.doc("<p>The description of the application.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc(
      "<p>The display name of the application. This name is visible to users in the application catalog.</p>"
    )
    @as("DisplayName")
    displayName: option<displayName>,
    @ocaml.doc(
      "<p>The name of the application. This name is visible to users when display name is not specified.</p>"
    )
    @as("Name")
    name: name,
  }
  type response = {@as("Application") application: option<application>}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "UpdateApplicationCommand"
  let make = (
    ~name,
    ~attributesToDelete=?,
    ~appBlockArn=?,
    ~launchParameters=?,
    ~workingDirectory=?,
    ~launchPath=?,
    ~iconS3Location=?,
    ~description=?,
    ~displayName=?,
    (),
  ) =>
    new({
      attributesToDelete,
      appBlockArn,
      launchParameters,
      workingDirectory,
      launchPath,
      iconS3Location,
      description,
      displayName,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEntitledApplications = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the entitlement.</p>") @as("EntitlementName") entitlementName: name,
    @ocaml.doc("<p>The name of the stack with which the entitlement is associated.</p>")
    @as("StackName")
    stackName: name,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The entitled applications.</p>") @as("EntitledApplications")
    entitledApplications: option<entitledApplicationList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "ListEntitledApplicationsCommand"
  let make = (~entitlementName, ~stackName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, entitlementName, stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeUsers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc(
      "<p>The authentication type for the users in the user pool to describe. You must specify USERPOOL.</p>"
    )
    @as("AuthenticationType")
    authenticationType: authenticationType,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about users in the user pool.</p>") @as("Users")
    users: option<userList>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DescribeUsersCommand"
  let make = (~authenticationType, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, authenticationType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeUserStackAssociations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The authentication type for the user who is associated with the stack. You must specify USERPOOL.</p>"
    )
    @as("AuthenticationType")
    authenticationType: option<authenticationType>,
    @ocaml.doc("<p>The email address of the user who is associated with the stack.</p>
        
        <note>
            <p>Users' email addresses are case-sensitive.</p>
         </note>")
    @as("UserName")
    userName: option<username>,
    @ocaml.doc("<p>The name of the stack that is associated with the user.</p>") @as("StackName")
    stackName: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The UserStackAssociation objects.</p>") @as("UserStackAssociations")
    userStackAssociations: option<userStackAssociationList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DescribeUserStackAssociationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~authenticationType=?, ~userName=?, ~stackName=?, ()) =>
    new({nextToken, maxResults, authenticationType, userName, stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeApplicationFleetAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this
            operation.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc("<p>The ARN of the application.</p>") @as("ApplicationArn")
    applicationArn: option<arn>,
    @ocaml.doc("<p>The name of the fleet.</p>") @as("FleetName") fleetName: option<name>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this
            operation.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The application fleet associations in the list.</p>")
    @as("ApplicationFleetAssociations")
    applicationFleetAssociations: option<applicationFleetAssociationList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DescribeApplicationFleetAssociationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~applicationArn=?, ~fleetName=?, ()) =>
    new({nextToken, maxResults, applicationArn, fleetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDirectoryConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>"
    )
    @as("ServiceAccountCredentials")
    serviceAccountCredentials: option<serviceAccountCredentials>,
    @ocaml.doc("<p>The distinguished names of the organizational units for computer accounts.</p>")
    @as("OrganizationalUnitDistinguishedNames")
    organizationalUnitDistinguishedNames: organizationalUnitDistinguishedNamesList,
    @ocaml.doc("<p>The fully qualified name of the directory (for example, corp.example.com).</p>")
    @as("DirectoryName")
    directoryName: directoryName,
  }
  type response = {
    @ocaml.doc("<p>Information about the directory configuration.</p>") @as("DirectoryConfig")
    directoryConfig: option<directoryConfig>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "CreateDirectoryConfigCommand"
  let make = (
    ~organizationalUnitDistinguishedNames,
    ~directoryName,
    ~serviceAccountCredentials=?,
    (),
  ) => new({serviceAccountCredentials, organizationalUnitDistinguishedNames, directoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The tags assigned to the application.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The app block ARN to which the application should be associated</p>")
    @as("AppBlockArn")
    appBlockArn: arn,
    @ocaml.doc(
      "<p>The instance families the application supports. Valid values are GENERAL_PURPOSE and GRAPHICS_G4.</p>"
    )
    @as("InstanceFamilies")
    instanceFamilies: stringList,
    @ocaml.doc(
      "<p>The platforms the application supports. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets.</p>"
    )
    @as("Platforms")
    platforms: platforms,
    @ocaml.doc("<p>The launch parameters of the application.</p>") @as("LaunchParameters")
    launchParameters: option<string_>,
    @ocaml.doc("<p>The working directory of the application.</p>") @as("WorkingDirectory")
    workingDirectory: option<string_>,
    @ocaml.doc("<p>The launch path of the application.</p>") @as("LaunchPath") launchPath: string_,
    @ocaml.doc("<p>The location in S3 of the application icon.</p>") @as("IconS3Location")
    iconS3Location: s3Location,
    @ocaml.doc("<p>The description of the application.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc(
      "<p>The display name of the application. This name is visible to users in the application catalog.</p>"
    )
    @as("DisplayName")
    displayName: option<displayName>,
    @ocaml.doc(
      "<p>The name of the application. This name is visible to users when display name is not specified.</p>"
    )
    @as("Name")
    name: name,
  }
  type response = {@as("Application") application: option<application>}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "CreateApplicationCommand"
  let make = (
    ~appBlockArn,
    ~instanceFamilies,
    ~platforms,
    ~launchPath,
    ~iconS3Location,
    ~name,
    ~tags=?,
    ~launchParameters=?,
    ~workingDirectory=?,
    ~description=?,
    ~displayName=?,
    (),
  ) =>
    new({
      tags,
      appBlockArn,
      instanceFamilies,
      platforms,
      launchParameters,
      workingDirectory,
      launchPath,
      iconS3Location,
      description,
      displayName,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFleet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>"
    )
    @as("UsbDeviceFilterStrings")
    usbDeviceFilterStrings: option<usbDeviceFilterStrings>,
    @ocaml.doc("<p>The maximum number of concurrent sessions for a fleet.</p>")
    @as("MaxConcurrentSessions")
    maxConcurrentSessions: option<integer_>,
    @ocaml.doc(
      "<p>The platform of the fleet. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets. </p>"
    )
    @as("Platform")
    platform: option<platformType>,
    @ocaml.doc("<p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
        
        <p>The default value is <code>APP</code>.</p>")
    @as("StreamView")
    streamView: option<streamView>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
        
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>")
    @as("IamRoleArn")
    iamRoleArn: option<arn>,
    @ocaml.doc("<p>The fleet attributes to delete.</p>") @as("AttributesToDelete")
    attributesToDelete: option<fleetAttributes>,
    @ocaml.doc("<p>The amount of time that users can be idle (inactive) before they are disconnected
            from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
            interval begins. Users are notified before they are disconnected due to inactivity. If
            users try to reconnect to the streaming session before the time interval specified in
            <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
            previous session. Users are considered idle when they stop providing keyboard or mouse
            input during their streaming session. File uploads and downloads, audio in, audio out,
            and pixels changing do not qualify as user activity. If users continue to be idle after
            the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
            disconnected. </p>
        <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.</p>
        
        <note>
            <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
         </note>")
    @as("IdleDisconnectTimeoutInSeconds")
    idleDisconnectTimeoutInSeconds: option<integer_>,
    @ocaml.doc(
      "<p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. </p>"
    )
    @as("DomainJoinInfo")
    domainJoinInfo: option<domainJoinInfo>,
    @ocaml.doc("<p>Enables or disables default internet access for the fleet.</p>")
    @as("EnableDefaultInternetAccess")
    enableDefaultInternetAccess: option<booleanObject>,
    @ocaml.doc("<p>The fleet name to display.</p>") @as("DisplayName")
    displayName: option<displayName>,
    @ocaml.doc("<p>The description to display.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>Deletes the VPC association for the specified fleet.</p>") @as("DeleteVpcConfig")
    deleteVpcConfig: option<boolean_>,
    @ocaml.doc("<p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>
        <p>Specify a value between 60 and 360000.</p>")
    @as("DisconnectTimeoutInSeconds")
    disconnectTimeoutInSeconds: option<integer_>,
    @ocaml.doc("<p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>
        <p>Specify a value between 600 and 360000.</p>")
    @as("MaxUserDurationInSeconds")
    maxUserDurationInSeconds: option<integer_>,
    @ocaml.doc(
      "<p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones. </p>"
    )
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>The desired capacity for the fleet. This is not allowed for Elastic fleets.</p>")
    @as("ComputeCapacity")
    computeCapacity: option<computeCapacity>,
    @ocaml.doc("<p>The instance type to use when launching fleet instances. The following instance types are available:</p>
        <ul>
            <li>
               <p>stream.standard.small</p>
            </li>
            <li>
               <p>stream.standard.medium</p>
            </li>
            <li>
               <p>stream.standard.large</p>
            </li>
            <li>
               <p>stream.compute.large</p>
            </li>
            <li>
               <p>stream.compute.xlarge</p>
            </li>
            <li>
               <p>stream.compute.2xlarge</p>
            </li>
            <li>
               <p>stream.compute.4xlarge</p>
            </li>
            <li>
               <p>stream.compute.8xlarge</p>
            </li>
            <li>
               <p>stream.memory.large</p>
            </li>
            <li>
               <p>stream.memory.xlarge</p>
            </li>
            <li>
               <p>stream.memory.2xlarge</p>
            </li>
            <li>
               <p>stream.memory.4xlarge</p>
            </li>
            <li>
               <p>stream.memory.8xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.large</p>
            </li>
            <li>
               <p>stream.memory.z1d.xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.2xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.3xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.6xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.12xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.large</p>
            </li>
            <li>
               <p>stream.graphics-design.xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics-desktop.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.8xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.12xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.16xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.8xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.16xlarge</p>
            </li>
         </ul> 
        <p>The following instance types are available for Elastic fleets:</p>
        <ul>
            <li>
               <p>stream.standard.small</p>
            </li>
            <li>
               <p>stream.standard.medium</p>
            </li>
         </ul>")
    @as("InstanceType")
    instanceType: option<string_>,
    @ocaml.doc("<p>A unique name for the fleet.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>The ARN of the public, private, or shared image to use.</p>") @as("ImageArn")
    imageArn: option<arn>,
    @ocaml.doc("<p>The name of the image used to create the fleet.</p>") @as("ImageName")
    imageName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Information about the fleet.</p>") @as("Fleet") fleet: option<fleet>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "UpdateFleetCommand"
  let make = (
    ~usbDeviceFilterStrings=?,
    ~maxConcurrentSessions=?,
    ~platform=?,
    ~streamView=?,
    ~iamRoleArn=?,
    ~attributesToDelete=?,
    ~idleDisconnectTimeoutInSeconds=?,
    ~domainJoinInfo=?,
    ~enableDefaultInternetAccess=?,
    ~displayName=?,
    ~description=?,
    ~deleteVpcConfig=?,
    ~disconnectTimeoutInSeconds=?,
    ~maxUserDurationInSeconds=?,
    ~vpcConfig=?,
    ~computeCapacity=?,
    ~instanceType=?,
    ~name=?,
    ~imageArn=?,
    ~imageName=?,
    (),
  ) =>
    new({
      usbDeviceFilterStrings,
      maxConcurrentSessions,
      platform,
      streamView,
      iamRoleArn,
      attributesToDelete,
      idleDisconnectTimeoutInSeconds,
      domainJoinInfo,
      enableDefaultInternetAccess,
      displayName,
      description,
      deleteVpcConfig,
      disconnectTimeoutInSeconds,
      maxUserDurationInSeconds,
      vpcConfig,
      computeCapacity,
      instanceType,
      name,
      imageArn,
      imageName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateEntitlement = {
  type t
  type request = {
    @ocaml.doc("<p>The attributes of the entitlement.</p>") @as("Attributes")
    attributes: option<entitlementAttributeList>,
    @ocaml.doc("<p>Specifies whether all or only selected apps are entitled.</p>")
    @as("AppVisibility")
    appVisibility: option<appVisibility>,
    @ocaml.doc("<p>The description of the entitlement.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the stack with which the entitlement is associated.</p>")
    @as("StackName")
    stackName: name,
    @ocaml.doc("<p>The name of the entitlement.</p>") @as("Name") name: name,
  }
  type response = {
    @ocaml.doc("<p>The entitlement.</p>") @as("Entitlement") entitlement: option<entitlement>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "UpdateEntitlementCommand"
  let make = (~stackName, ~name, ~attributes=?, ~appVisibility=?, ~description=?, ()) =>
    new({attributes, appVisibility, description, stackName, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StopImageBuilder = {
  type t
  type request = {@ocaml.doc("<p>The name of the image builder.</p>") @as("Name") name: string_}
  type response = {
    @ocaml.doc("<p>Information about the image builder.</p>") @as("ImageBuilder")
    imageBuilder: option<imageBuilder>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "StopImageBuilderCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartImageBuilder = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>"
    )
    @as("AppstreamAgentVersion")
    appstreamAgentVersion: option<appstreamAgentVersion>,
    @ocaml.doc("<p>The name of the image builder.</p>") @as("Name") name: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the image builder.</p>") @as("ImageBuilder")
    imageBuilder: option<imageBuilder>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "StartImageBuilderCommand"
  let make = (~name, ~appstreamAgentVersion=?, ()) => new({appstreamAgentVersion, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeSessions = {
  type t
  type request = {
    @ocaml.doc("<p>The authentication method. Specify <code>API</code> for a user
            authenticated using a streaming URL or <code>SAML</code> for a SAML federated user. 
            The default is to authenticate users using a streaming URL.</p>")
    @as("AuthenticationType")
    authenticationType: option<authenticationType>,
    @ocaml.doc(
      "<p>The size of each page of results. The default value is 20 and the maximum value is 50.</p>"
    )
    @as("Limit")
    limit: option<integer_>,
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The user identifier (ID). If you specify a user ID, you must also specify the authentication type.</p>"
    )
    @as("UserId")
    userId: option<userId>,
    @ocaml.doc("<p>The name of the fleet. This value is case-sensitive.</p>") @as("FleetName")
    fleetName: string_,
    @ocaml.doc("<p>The name of the stack. This value is case-sensitive.</p>") @as("StackName")
    stackName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the streaming sessions.</p>") @as("Sessions")
    sessions: option<sessionList>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DescribeSessionsCommand"
  let make = (
    ~fleetName,
    ~stackName,
    ~authenticationType=?,
    ~limit=?,
    ~nextToken=?,
    ~userId=?,
    (),
  ) => new({authenticationType, limit, nextToken, userId, fleetName, stackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeImagePermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The 12-digit identifier of one or more AWS accounts with which the image is shared.</p>"
    )
    @as("SharedAwsAccountIds")
    sharedAwsAccountIds: option<awsAccountIdList>,
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The name of the private image for which to describe permissions. The image must be one that you own. </p>"
    )
    @as("Name")
    name: name,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The permissions for a private image that you own. </p>")
    @as("SharedImagePermissionsList")
    sharedImagePermissionsList: option<sharedImagePermissionsList>,
    @ocaml.doc("<p>The name of the private image.</p>") @as("Name") name: option<name>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DescribeImagePermissionsCommand"
  let make = (~name, ~nextToken=?, ~sharedAwsAccountIds=?, ~maxResults=?, ()) =>
    new({nextToken, sharedAwsAccountIds, maxResults, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDirectoryConfigs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc("<p>The directory names.</p>") @as("DirectoryNames")
    directoryNames: option<directoryNameList>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>Information about the directory configurations. Note that although the response syntax in this topic includes the account password, this password is not returned in the actual response. </p>"
    )
    @as("DirectoryConfigs")
    directoryConfigs: option<directoryConfigList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DescribeDirectoryConfigsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~directoryNames=?, ()) =>
    new({nextToken, maxResults, directoryNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeApplications = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this
            operation.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ARNs for the applications.</p>") @as("Arns") arns: option<arnList>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this
            operation.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The applications in the list.</p>") @as("Applications")
    applications: option<applications>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DescribeApplicationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~arns=?, ()) => new({maxResults, nextToken, arns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteImageBuilder = {
  type t
  type request = {@ocaml.doc("<p>The name of the image builder.</p>") @as("Name") name: name}
  type response = {
    @ocaml.doc("<p>Information about the image builder.</p>") @as("ImageBuilder")
    imageBuilder: option<imageBuilder>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DeleteImageBuilderCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateImageBuilder = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the image builder only through the specified endpoints.</p>"
    )
    @as("AccessEndpoints")
    accessEndpoints: option<accessEndpointList>,
    @ocaml.doc("<p>The tags to associate with the image builder. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
        
        <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
        <p>_ . : / = + \\ - @</p>
        
        <p>If you do not specify a value, the value is set to an empty string.</p>
        
        <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html\">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>"
    )
    @as("AppstreamAgentVersion")
    appstreamAgentVersion: option<appstreamAgentVersion>,
    @ocaml.doc(
      "<p>The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. </p>"
    )
    @as("DomainJoinInfo")
    domainJoinInfo: option<domainJoinInfo>,
    @ocaml.doc("<p>Enables or disables default internet access for the image builder.</p>")
    @as("EnableDefaultInternetAccess")
    enableDefaultInternetAccess: option<booleanObject>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to apply to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
        
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>")
    @as("IamRoleArn")
    iamRoleArn: option<arn>,
    @ocaml.doc(
      "<p>The VPC configuration for the image builder. You can specify only one subnet.</p>"
    )
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>The image builder name to display.</p>") @as("DisplayName")
    displayName: option<displayName>,
    @ocaml.doc("<p>The description to display.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The instance type to use when launching the image builder. The following instance types are available:</p>   
        <ul>
            <li>
               <p>stream.standard.small</p>
            </li>
            <li>
               <p>stream.standard.medium</p>
            </li>
            <li>
               <p>stream.standard.large</p>
            </li>
            <li>
               <p>stream.compute.large</p>
            </li>
            <li>
               <p>stream.compute.xlarge</p>
            </li>
            <li>
               <p>stream.compute.2xlarge</p>
            </li>
            <li>
               <p>stream.compute.4xlarge</p>
            </li>
            <li>
               <p>stream.compute.8xlarge</p>
            </li>
            <li>
               <p>stream.memory.large</p>
            </li>
            <li>
               <p>stream.memory.xlarge</p>
            </li>
            <li>
               <p>stream.memory.2xlarge</p>
            </li>
            <li>
               <p>stream.memory.4xlarge</p>
            </li>
            <li>
               <p>stream.memory.8xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.large</p>
            </li>
            <li>
               <p>stream.memory.z1d.xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.2xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.3xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.6xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.12xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.large</p>
            </li>
            <li>
               <p>stream.graphics-design.xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics-desktop.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.8xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.12xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.16xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.8xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.16xlarge</p>
            </li>
         </ul>")
    @as("InstanceType")
    instanceType: string_,
    @ocaml.doc("<p>The ARN of the public, private, or shared image to use.</p>") @as("ImageArn")
    imageArn: option<arn>,
    @ocaml.doc("<p>The name of the image used to create the image builder.</p>") @as("ImageName")
    imageName: option<string_>,
    @ocaml.doc("<p>A unique name for the image builder.</p>") @as("Name") name: name,
  }
  type response = {
    @ocaml.doc("<p>Information about the image builder.</p>") @as("ImageBuilder")
    imageBuilder: option<imageBuilder>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "CreateImageBuilderCommand"
  let make = (
    ~instanceType,
    ~name,
    ~accessEndpoints=?,
    ~tags=?,
    ~appstreamAgentVersion=?,
    ~domainJoinInfo=?,
    ~enableDefaultInternetAccess=?,
    ~iamRoleArn=?,
    ~vpcConfig=?,
    ~displayName=?,
    ~description=?,
    ~imageArn=?,
    ~imageName=?,
    (),
  ) =>
    new({
      accessEndpoints,
      tags,
      appstreamAgentVersion,
      domainJoinInfo,
      enableDefaultInternetAccess,
      iamRoleArn,
      vpcConfig,
      displayName,
      description,
      instanceType,
      imageArn,
      imageName,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFleet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>"
    )
    @as("UsbDeviceFilterStrings")
    usbDeviceFilterStrings: option<usbDeviceFilterStrings>,
    @ocaml.doc("<p>The maximum concurrent sessions of the Elastic fleet. This is required for Elastic
            fleets, and not allowed for other fleet types.</p>")
    @as("MaxConcurrentSessions")
    maxConcurrentSessions: option<integer_>,
    @ocaml.doc("<p>The fleet platform. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic
            fleets. </p>")
    @as("Platform")
    platform: option<platformType>,
    @ocaml.doc("<p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
        
        <p>The default value is <code>APP</code>.</p>")
    @as("StreamView")
    streamView: option<streamView>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
        
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>")
    @as("IamRoleArn")
    iamRoleArn: option<arn>,
    @ocaml.doc("<p>The amount of time that users can be idle (inactive) before they are disconnected
            from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
            interval begins. Users are notified before they are disconnected due to inactivity. If
            they try to reconnect to the streaming session before the time interval specified in
            <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
            previous session. Users are considered idle when they stop providing keyboard or mouse
            input during their streaming session. File uploads and downloads, audio in, audio out,
            and pixels changing do not qualify as user activity. If users continue to be idle after
            the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
            disconnected.</p>
        <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.</p>
        <note>
            <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
         </note>")
    @as("IdleDisconnectTimeoutInSeconds")
    idleDisconnectTimeoutInSeconds: option<integer_>,
    @ocaml.doc("<p>The tags to associate with the fleet. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
        
        <p>If you do not specify a value, the value is set to an empty string.</p>
        
        <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
        <p>_ . : / = + \\ - @</p>
     
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html\">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. This is not allowed for Elastic fleets. </p>"
    )
    @as("DomainJoinInfo")
    domainJoinInfo: option<domainJoinInfo>,
    @ocaml.doc("<p>Enables or disables default internet access for the fleet.</p>")
    @as("EnableDefaultInternetAccess")
    enableDefaultInternetAccess: option<booleanObject>,
    @ocaml.doc("<p>The fleet name to display.</p>") @as("DisplayName")
    displayName: option<displayName>,
    @ocaml.doc("<p>The description to display.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>
        <p>Specify a value between 60 and 360000.</p>")
    @as("DisconnectTimeoutInSeconds")
    disconnectTimeoutInSeconds: option<integer_>,
    @ocaml.doc("<p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>
        <p>Specify a value between 600 and 360000.</p>")
    @as("MaxUserDurationInSeconds")
    maxUserDurationInSeconds: option<integer_>,
    @ocaml.doc(
      "<p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones.</p>"
    )
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc(
      "<p>The desired capacity for the fleet. This is not allowed for Elastic fleets. For Elastic fleets, specify MaxConcurrentSessions instead.</p>"
    )
    @as("ComputeCapacity")
    computeCapacity: option<computeCapacity>,
    @ocaml.doc("<p>The fleet type.</p>
        <dl>
            <dt>ALWAYS_ON</dt>
            <dd>
                    <p>Provides users with instant-on access to their apps.
                        You are charged for all running instances in your fleet, even if no users are streaming apps.</p>
                </dd>
            <dt>ON_DEMAND</dt>
            <dd>
                    <p>Provide users with access to applications after they connect, which takes one to two minutes.
                        You are charged for instance streaming when users are connected and a
                        small hourly fee for instances that are not streaming apps.</p>
                </dd>
         </dl>")
    @as("FleetType")
    fleetType: option<fleetType>,
    @ocaml.doc("<p>The instance type to use when launching fleet instances. The following instance types are available:</p>    
        <ul>
            <li>
               <p>stream.standard.small</p>
            </li>
            <li>
               <p>stream.standard.medium</p>
            </li>
            <li>
               <p>stream.standard.large</p>
            </li>
            <li>
               <p>stream.compute.large</p>
            </li>
            <li>
               <p>stream.compute.xlarge</p>
            </li>
            <li>
               <p>stream.compute.2xlarge</p>
            </li>
            <li>
               <p>stream.compute.4xlarge</p>
            </li>
            <li>
               <p>stream.compute.8xlarge</p>
            </li>
            <li>
               <p>stream.memory.large</p>
            </li>
            <li>
               <p>stream.memory.xlarge</p>
            </li>
            <li>
               <p>stream.memory.2xlarge</p>
            </li>
            <li>
               <p>stream.memory.4xlarge</p>
            </li>
            <li>
               <p>stream.memory.8xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.large</p>
            </li>
            <li>
               <p>stream.memory.z1d.xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.2xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.3xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.6xlarge</p>
            </li>
            <li>
               <p>stream.memory.z1d.12xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.large</p>
            </li>
            <li>
               <p>stream.graphics-design.xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics-design.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics-desktop.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.2xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.8xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.12xlarge</p>
            </li>
            <li>
               <p>stream.graphics.g4dn.16xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.4xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.8xlarge</p>
            </li>
            <li>
               <p>stream.graphics-pro.16xlarge</p>
            </li>
         </ul> 
        <p>The following instance types are available for Elastic fleets:</p>
        <ul>
            <li>
               <p>stream.standard.small</p>
            </li>
            <li>
               <p>stream.standard.medium</p>
            </li>
         </ul>")
    @as("InstanceType")
    instanceType: string_,
    @ocaml.doc("<p>The ARN of the public, private, or shared image to use.</p>") @as("ImageArn")
    imageArn: option<arn>,
    @ocaml.doc("<p>The name of the image used to create the fleet.</p>") @as("ImageName")
    imageName: option<string_>,
    @ocaml.doc("<p>A unique name for the fleet.</p>") @as("Name") name: name,
  }
  type response = {
    @ocaml.doc("<p>Information about the fleet.</p>") @as("Fleet") fleet: option<fleet>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "CreateFleetCommand"
  let make = (
    ~instanceType,
    ~name,
    ~usbDeviceFilterStrings=?,
    ~maxConcurrentSessions=?,
    ~platform=?,
    ~streamView=?,
    ~iamRoleArn=?,
    ~idleDisconnectTimeoutInSeconds=?,
    ~tags=?,
    ~domainJoinInfo=?,
    ~enableDefaultInternetAccess=?,
    ~displayName=?,
    ~description=?,
    ~disconnectTimeoutInSeconds=?,
    ~maxUserDurationInSeconds=?,
    ~vpcConfig=?,
    ~computeCapacity=?,
    ~fleetType=?,
    ~imageArn=?,
    ~imageName=?,
    (),
  ) =>
    new({
      usbDeviceFilterStrings,
      maxConcurrentSessions,
      platform,
      streamView,
      iamRoleArn,
      idleDisconnectTimeoutInSeconds,
      tags,
      domainJoinInfo,
      enableDefaultInternetAccess,
      displayName,
      description,
      disconnectTimeoutInSeconds,
      maxUserDurationInSeconds,
      vpcConfig,
      computeCapacity,
      fleetType,
      instanceType,
      imageArn,
      imageName,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateEntitlement = {
  type t
  type request = {
    @ocaml.doc("<p>The attributes of the entitlement.</p>") @as("Attributes")
    attributes: entitlementAttributeList,
    @ocaml.doc("<p>Specifies whether all or selected apps are entitled.</p>") @as("AppVisibility")
    appVisibility: appVisibility,
    @ocaml.doc("<p>The description of the entitlement.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the stack with which the entitlement is associated.</p>")
    @as("StackName")
    stackName: name,
    @ocaml.doc("<p>The name of the entitlement.</p>") @as("Name") name: name,
  }
  type response = {
    @ocaml.doc("<p>The entitlement.</p>") @as("Entitlement") entitlement: option<entitlement>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "CreateEntitlementCommand"
  let make = (~attributes, ~appVisibility, ~stackName, ~name, ~description=?, ()) =>
    new({attributes, appVisibility, description, stackName, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAppBlock = {
  type t
  type request = {
    @ocaml.doc("<p>The tags assigned to the app block.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The setup script details of the app block.</p>") @as("SetupScriptDetails")
    setupScriptDetails: scriptDetails,
    @ocaml.doc("<p>The source S3 location of the app block.</p>") @as("SourceS3Location")
    sourceS3Location: s3Location,
    @ocaml.doc("<p>The display name of the app block. This is not displayed to the user.</p>")
    @as("DisplayName")
    displayName: option<displayName>,
    @ocaml.doc("<p>The description of the app block.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the app block.</p>") @as("Name") name: name,
  }
  type response = {@ocaml.doc("<p>The app block.</p>") @as("AppBlock") appBlock: option<appBlock>}
  @module("@aws-sdk/client-appstream") @new external new: request => t = "CreateAppBlockCommand"
  let make = (
    ~setupScriptDetails,
    ~sourceS3Location,
    ~name,
    ~tags=?,
    ~displayName=?,
    ~description=?,
    (),
  ) => new({tags, setupScriptDetails, sourceS3Location, displayName, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDisassociateUserStack = {
  type t
  type request = {
    @ocaml.doc("<p>The list of UserStackAssociation objects.</p>") @as("UserStackAssociations")
    userStackAssociations: userStackAssociationList,
  }
  type response = {
    @ocaml.doc("<p>The list of UserStackAssociationError objects.</p>")
    errors: option<userStackAssociationErrorList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "BatchDisassociateUserStackCommand"
  let make = (~userStackAssociations, ()) => new({userStackAssociations: userStackAssociations})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchAssociateUserStack = {
  type t
  type request = {
    @ocaml.doc("<p>The list of UserStackAssociation objects.</p>") @as("UserStackAssociations")
    userStackAssociations: userStackAssociationList,
  }
  type response = {
    @ocaml.doc("<p>The list of UserStackAssociationError objects.</p>")
    errors: option<userStackAssociationErrorList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "BatchAssociateUserStackCommand"
  let make = (~userStackAssociations, ()) => new({userStackAssociations: userStackAssociations})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateStack = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>"
    )
    @as("EmbedHostDomains")
    embedHostDomains: option<embedHostDomains>,
    @ocaml.doc(
      "<p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>"
    )
    @as("AccessEndpoints")
    accessEndpoints: option<accessEndpointList>,
    @ocaml.doc(
      "<p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>"
    )
    @as("ApplicationSettings")
    applicationSettings: option<applicationSettings>,
    @ocaml.doc(
      "<p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.</p>"
    )
    @as("UserSettings")
    userSettings: option<userSettingList>,
    @ocaml.doc("<p>The stack attributes to delete.</p>") @as("AttributesToDelete")
    attributesToDelete: option<stackAttributes>,
    @ocaml.doc(
      "<p>The URL that users are redirected to after they choose the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>"
    )
    @as("FeedbackURL")
    feedbackURL: option<feedbackURL>,
    @ocaml.doc("<p>The URL that users are redirected to after their streaming session ends.</p>")
    @as("RedirectURL")
    redirectURL: option<redirectURL>,
    @ocaml.doc("<p>Deletes the storage connectors currently enabled for the stack.</p>")
    @as("DeleteStorageConnectors")
    deleteStorageConnectors: option<boolean_>,
    @ocaml.doc("<p>The storage connectors to enable.</p>") @as("StorageConnectors")
    storageConnectors: option<storageConnectorList>,
    @ocaml.doc("<p>The name of the stack.</p>") @as("Name") name: string_,
    @ocaml.doc("<p>The description to display.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The stack name to display.</p>") @as("DisplayName")
    displayName: option<displayName>,
  }
  type response = {
    @ocaml.doc("<p>Information about the stack.</p>") @as("Stack") stack: option<stack>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "UpdateStackCommand"
  let make = (
    ~name,
    ~embedHostDomains=?,
    ~accessEndpoints=?,
    ~applicationSettings=?,
    ~userSettings=?,
    ~attributesToDelete=?,
    ~feedbackURL=?,
    ~redirectURL=?,
    ~deleteStorageConnectors=?,
    ~storageConnectors=?,
    ~description=?,
    ~displayName=?,
    (),
  ) =>
    new({
      embedHostDomains,
      accessEndpoints,
      applicationSettings,
      userSettings,
      attributesToDelete,
      feedbackURL,
      redirectURL,
      deleteStorageConnectors,
      storageConnectors,
      name,
      description,
      displayName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeUsageReportSubscriptions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<integer_>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the usage report subscription.</p>")
    @as("UsageReportSubscriptions")
    usageReportSubscriptions: option<usageReportSubscriptionList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DescribeUsageReportSubscriptionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeImageBuilders = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc("<p>The names of the image builders to describe.</p>") @as("Names")
    names: option<stringList>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the image builders.</p>") @as("ImageBuilders")
    imageBuilders: option<imageBuilderList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DescribeImageBuildersCommand"
  let make = (~nextToken=?, ~maxResults=?, ~names=?, ()) => new({nextToken, maxResults, names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeFleets = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The names of the fleets to describe.</p>") @as("Names")
    names: option<stringList>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the fleets.</p>") @as("Fleets") fleets: option<fleetList>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DescribeFleetsCommand"
  let make = (~nextToken=?, ~names=?, ()) => new({nextToken, names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEntitlements = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the stack with which the entitlement is associated.</p>")
    @as("StackName")
    stackName: name,
    @ocaml.doc("<p>The name of the entitlement.</p>") @as("Name") name: option<name>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this
            operation.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The entitlements.</p>") @as("Entitlements")
    entitlements: option<entitlementList>,
  }
  @module("@aws-sdk/client-appstream") @new
  external new: request => t = "DescribeEntitlementsCommand"
  let make = (~stackName, ~maxResults=?, ~nextToken=?, ~name=?, ()) =>
    new({maxResults, nextToken, stackName, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAppBlocks = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this
            operation.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ARNs of the app blocks.</p>") @as("Arns") arns: option<arnList>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this
            operation.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The app blocks in the list.</p>") @as("AppBlocks") appBlocks: option<appBlocks>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DescribeAppBlocksCommand"
  let make = (~maxResults=?, ~nextToken=?, ~arns=?, ()) => new({maxResults, nextToken, arns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteImage = {
  type t
  type request = {@ocaml.doc("<p>The name of the image.</p>") @as("Name") name: name}
  type response = {
    @ocaml.doc("<p>Information about the image.</p>") @as("Image") image: option<image>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DeleteImageCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateUpdatedImage = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates whether to display the status of image update availability before AppStream 2.0 initiates the process of creating a new updated image. If this value is set to <code>true</code>, AppStream 2.0 displays whether image updates are available. If this value is set to <code>false</code>, AppStream 2.0 initiates the process of creating a new updated image without displaying whether image updates are available.</p>"
    )
    dryRun: option<boolean_>,
    @ocaml.doc("<p>The tags to associate with the new image. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
        <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
        <p>_ . : / = + \\ - @</p>
        <p>If you do not specify a value, the value is set to an empty string.</p>
        <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html\">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>")
    newImageTags: option<tags>,
    @ocaml.doc("<p>The name to display for the new image.</p>")
    newImageDisplayName: option<displayName>,
    @ocaml.doc("<p>The description to display for the new image.</p>")
    newImageDescription: option<description>,
    @ocaml.doc(
      "<p>The name of the new image. The name must be unique within the AWS account and Region.</p>"
    )
    newImageName: name,
    @ocaml.doc("<p>The name of the image to update.</p>") existingImageName: name,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether a new image can be created.</p>")
    canUpdateImage: option<boolean_>,
    image: option<image>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "CreateUpdatedImageCommand"
  let make = (
    ~newImageName,
    ~existingImageName,
    ~dryRun=?,
    ~newImageTags=?,
    ~newImageDisplayName=?,
    ~newImageDescription=?,
    (),
  ) =>
    new({
      dryRun,
      newImageTags,
      newImageDisplayName,
      newImageDescription,
      newImageName,
      existingImageName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateStack = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>"
    )
    @as("EmbedHostDomains")
    embedHostDomains: option<embedHostDomains>,
    @ocaml.doc(
      "<p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>"
    )
    @as("AccessEndpoints")
    accessEndpoints: option<accessEndpointList>,
    @ocaml.doc("<p>The tags to associate with the stack. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
        
        <p>If you do not specify a value, the value is set to an empty string.</p>
        
        <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
        <p>_ . : / = + \\ - @</p>
        
        <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html\">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>"
    )
    @as("ApplicationSettings")
    applicationSettings: option<applicationSettings>,
    @ocaml.doc(
      "<p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled. </p>"
    )
    @as("UserSettings")
    userSettings: option<userSettingList>,
    @ocaml.doc(
      "<p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>"
    )
    @as("FeedbackURL")
    feedbackURL: option<feedbackURL>,
    @ocaml.doc("<p>The URL that users are redirected to after their streaming session ends.</p>")
    @as("RedirectURL")
    redirectURL: option<redirectURL>,
    @ocaml.doc("<p>The storage connectors to enable.</p>") @as("StorageConnectors")
    storageConnectors: option<storageConnectorList>,
    @ocaml.doc("<p>The stack name to display.</p>") @as("DisplayName")
    displayName: option<displayName>,
    @ocaml.doc("<p>The description to display.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the stack.</p>") @as("Name") name: name,
  }
  type response = {
    @ocaml.doc("<p>Information about the stack.</p>") @as("Stack") stack: option<stack>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "CreateStackCommand"
  let make = (
    ~name,
    ~embedHostDomains=?,
    ~accessEndpoints=?,
    ~tags=?,
    ~applicationSettings=?,
    ~userSettings=?,
    ~feedbackURL=?,
    ~redirectURL=?,
    ~storageConnectors=?,
    ~displayName=?,
    ~description=?,
    (),
  ) =>
    new({
      embedHostDomains,
      accessEndpoints,
      tags,
      applicationSettings,
      userSettings,
      feedbackURL,
      redirectURL,
      storageConnectors,
      displayName,
      description,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeStacks = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The names of the stacks to describe.</p>") @as("Names")
    names: option<stringList>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the stacks.</p>") @as("Stacks") stacks: option<stackList>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DescribeStacksCommand"
  let make = (~nextToken=?, ~names=?, ()) => new({nextToken, names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeImages = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum size of each page of results.</p>") @as("MaxResults")
    maxResults: option<describeImagesMaxResults>,
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The type of image (public, private, or shared) to describe. </p>") @as("Type")
    type_: option<visibilityType>,
    @ocaml.doc("<p>The ARNs of the public, private, and shared images to describe.</p>") @as("Arns")
    arns: option<arnList>,
    @ocaml.doc("<p>The names of the public or private images to describe.</p>") @as("Names")
    names: option<stringList>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the images.</p>") @as("Images") images: option<imageList>,
  }
  @module("@aws-sdk/client-appstream") @new external new: request => t = "DescribeImagesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~type_=?, ~arns=?, ~names=?, ()) =>
    new({maxResults, nextToken, type_, arns, names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
