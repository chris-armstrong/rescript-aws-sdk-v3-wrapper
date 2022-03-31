type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-workspaces") @new
external createClient: unit => awsServiceClient = "WorkSpacesClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workspaceState = [
  | @as("ERROR") #ERROR
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("UPDATING") #UPDATING
  | @as("SUSPENDED") #SUSPENDED
  | @as("TERMINATED") #TERMINATED
  | @as("TERMINATING") #TERMINATING
  | @as("ADMIN_MAINTENANCE") #ADMIN_MAINTENANCE
  | @as("MAINTENANCE") #MAINTENANCE
  | @as("RESTORING") #RESTORING
  | @as("REBUILDING") #REBUILDING
  | @as("STARTING") #STARTING
  | @as("REBOOTING") #REBOOTING
  | @as("UNHEALTHY") #UNHEALTHY
  | @as("IMPAIRED") #IMPAIRED
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type workspaceImageState = [
  | @as("ERROR") #ERROR
  | @as("PENDING") #PENDING
  | @as("AVAILABLE") #AVAILABLE
]
type workspaceImageRequiredTenancy = [@as("DEDICATED") #DEDICATED | @as("DEFAULT") #DEFAULT]
type workspaceImageName = string
type workspaceImageIngestionProcess = [
  | @as("BYOL_REGULAR_WSP") #BYOL_REGULAR_WSP
  | @as("BYOL_GRAPHICSPRO") #BYOL_GRAPHICSPRO
  | @as("BYOL_GRAPHICS") #BYOL_GRAPHICS
  | @as("BYOL_REGULAR") #BYOL_REGULAR
]
type workspaceImageId = string
type workspaceImageErrorCode = string
type workspaceImageDescription = string
type workspaceId = string
type workspaceErrorCode = string
type workspaceDirectoryType = [@as("AD_CONNECTOR") #AD_CONNECTOR | @as("SIMPLE_AD") #SIMPLE_AD]
type workspaceDirectoryState = [
  | @as("ERROR") #ERROR
  | @as("DEREGISTERED") #DEREGISTERED
  | @as("DEREGISTERING") #DEREGISTERING
  | @as("REGISTERED") #REGISTERED
  | @as("REGISTERING") #REGISTERING
]
type workspaceBundleName = string
type workspaceBundleDescription = string
type volumeEncryptionKey = string
type userVolumeSizeGib = int
type userName = string
type updateDescription = string
type timestamp_ = Js.Date.t
type tenancy = [@as("SHARED") #SHARED | @as("DEDICATED") #DEDICATED]
type targetWorkspaceState = [
  | @as("ADMIN_MAINTENANCE") #ADMIN_MAINTENANCE
  | @as("AVAILABLE") #AVAILABLE
]
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
type modificationStateEnum = [
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("UPDATE_INITIATED") #UPDATE_INITIATED
]
type modificationResourceEnum = [
  | @as("COMPUTE_TYPE") #COMPUTE_TYPE
  | @as("USER_VOLUME") #USER_VOLUME
  | @as("ROOT_VOLUME") #ROOT_VOLUME
]
type managementCidrRangeMaxResults = int
type managementCidrRangeConstraint = string
type limit = int
type ipRuleDesc = string
type ipRule = string
type ipGroupName = string
type ipGroupId = string
type ipGroupDesc = string
type ipAddress = string
type iosLogo = NodeJs.Buffer.t
type ios3XLogo = NodeJs.Buffer.t
type ios2XLogo = NodeJs.Buffer.t
type imageType = [@as("SHARED") #SHARED | @as("OWNED") #OWNED]
type exceptionMessage = string
type errorType = string
type ec2ImageId = string
type directoryName = string
type directoryId = string
type description = string
type defaultOu = string
type defaultLogo = NodeJs.Buffer.t
type dedicatedTenancySupportResultEnum = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type dedicatedTenancySupportEnum = [@as("ENABLED") #ENABLED]
type dedicatedTenancyModificationStateEnum = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("PENDING") #PENDING
]
type dedicatedTenancyManagementCidrRange = string
type connectionString = string
type connectionState = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("DISCONNECTED") #DISCONNECTED
  | @as("CONNECTED") #CONNECTED
]
type connectionIdentifier = string
type connectionAliasState = [
  | @as("DELETING") #DELETING
  | @as("CREATED") #CREATED
  | @as("CREATING") #CREATING
]
type connectionAliasId = string
type computerName = string
type compute = [
  | @as("GRAPHICSPRO") #GRAPHICSPRO
  | @as("POWERPRO") #POWERPRO
  | @as("GRAPHICS") #GRAPHICS
  | @as("POWER") #POWER
  | @as("PERFORMANCE") #PERFORMANCE
  | @as("STANDARD") #STANDARD
  | @as("VALUE") #VALUE
]
type clientUrl = string
type clientLoginMessage = string
type clientLocale = string
type clientEmail = string
type clientDeviceType = [
  | @as("DeviceTypeWeb") #DeviceTypeWeb
  | @as("DeviceTypeLinux") #DeviceTypeLinux
  | @as("DeviceTypeIos") #DeviceTypeIos
  | @as("DeviceTypeAndroid") #DeviceTypeAndroid
  | @as("DeviceTypeOsx") #DeviceTypeOsx
  | @as("DeviceTypeWindows") #DeviceTypeWindows
]
type bundleOwner = string
type bundleId = string
type booleanObject = bool
type awsAccount = string
type associationStatus = [
  | @as("PENDING_DISASSOCIATION") #PENDING_DISASSOCIATION
  | @as("PENDING_ASSOCIATION") #PENDING_ASSOCIATION
  | @as("ASSOCIATED_WITH_SHARED_ACCOUNT") #ASSOCIATED_WITH_SHARED_ACCOUNT
  | @as("ASSOCIATED_WITH_OWNER_ACCOUNT") #ASSOCIATED_WITH_OWNER_ACCOUNT
  | @as("NOT_ASSOCIATED") #NOT_ASSOCIATED
]
type application = [
  | @as("Microsoft_Office_2019") #Microsoft_Office_2019
  | @as("Microsoft_Office_2016") #Microsoft_Office_2016
]
type amazonUuid = string
type alias = string
type addInUrl = string
type addInName = string
type accessPropertyValue = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type arn = string
@ocaml.doc("<p>Describes a WorkSpace.</p>")
type workspaceProperties = {
  @ocaml.doc("<p>The compute type. For more information, see <a href=\"http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles\">Amazon WorkSpaces
         Bundles</a>.</p>")
  @as("ComputeTypeName")
  computeTypeName: option<compute>,
  @ocaml.doc("<p>The size of the user storage. For important information about how to modify the size of
         the root and user volumes, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html\">Modify a
         WorkSpace</a>.</p>")
  @as("UserVolumeSizeGib")
  userVolumeSizeGib: option<userVolumeSizeGib>,
  @ocaml.doc("<p>The size of the root volume. For important information about how to modify the size of
         the root and user volumes, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html\">Modify a
         WorkSpace</a>.</p>")
  @as("RootVolumeSizeGib")
  rootVolumeSizeGib: option<rootVolumeSizeGib>,
  @ocaml.doc("<p>The time after a user logs off when WorkSpaces are automatically stopped. Configured in
         60-minute intervals.</p>")
  @as("RunningModeAutoStopTimeoutInMinutes")
  runningModeAutoStopTimeoutInMinutes: option<runningModeAutoStopTimeoutInMinutes>,
  @ocaml.doc("<p>The running mode. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html\">Manage the WorkSpace Running
            Mode</a>.</p>")
  @as("RunningMode")
  runningMode: option<runningMode>,
}
type workspaceImageIdList = array<workspaceImageId>
type workspaceIdList = array<workspaceId>
@ocaml.doc("<p>Describes the default properties that are used for creating WorkSpaces. For more
         information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html\">Update Directory
            Details for Your WorkSpaces</a>. </p>")
type workspaceCreationProperties = {
  @ocaml.doc("<p>Indicates whether maintenance mode is enabled for your WorkSpaces. For more information,
         see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html\">WorkSpace
            Maintenance</a>. </p>")
  @as("EnableMaintenanceMode")
  enableMaintenanceMode: option<booleanObject>,
  @ocaml.doc("<p>Indicates whether users are local administrators of their WorkSpaces.</p>")
  @as("UserEnabledAsLocalAdministrator")
  userEnabledAsLocalAdministrator: option<booleanObject>,
  @ocaml.doc("<p>The identifier of your custom security group.</p>") @as("CustomSecurityGroupId")
  customSecurityGroupId: option<securityGroupId>,
  @ocaml.doc("<p>The default organizational unit (OU) for your WorkSpaces directories. This string must
         be the full Lightweight Directory Access Protocol (LDAP) distinguished name for the target
         domain and OU. It must be in the form
               <code>\"OU=<i>value</i>,DC=<i>value</i>,DC=<i>value</i>\"</code>,
         where <i>value</i> is any string of characters, and the number of domain
         components (DCs) is two or more. For example,
            <code>OU=WorkSpaces_machines,DC=machines,DC=example,DC=com</code>. </p>
         <important>
            <ul>
               <li>
                  <p>To avoid errors, certain characters in the distinguished name must be escaped.
                  For more information, see <a href=\"https://docs.microsoft.com/previous-versions/windows/desktop/ldap/distinguished-names\"> Distinguished Names</a> in the Microsoft documentation.</p>
               </li>
               <li>
                  <p>The API doesn't validate whether the OU exists.</p>
               </li>
            </ul>
         </important>")
  @as("DefaultOu")
  defaultOu: option<defaultOu>,
  @ocaml.doc("<p>Indicates whether internet access is enabled for your WorkSpaces.</p>")
  @as("EnableInternetAccess")
  enableInternetAccess: option<booleanObject>,
  @ocaml.doc("<p>Indicates whether Amazon WorkDocs is enabled for your WorkSpaces.</p>
         <note>
            <p>If WorkDocs is already enabled for a WorkSpaces directory and you disable it, new
            WorkSpaces launched in the directory will not have WorkDocs enabled. However, WorkDocs
            remains enabled for any existing WorkSpaces, unless you either disable users' access to
            WorkDocs or you delete the WorkDocs site. To disable users' access to WorkDocs, see
               <a href=\"https://docs.aws.amazon.com/workdocs/latest/adminguide/inactive-user.html\">Disabling Users</a> in the <i>Amazon WorkDocs Administration
               Guide</i>. To delete a WorkDocs site, see <a href=\"https://docs.aws.amazon.com/workdocs/latest/adminguide/manage-sites.html\">Deleting a Site</a> in the
               <i>Amazon WorkDocs Administration Guide</i>.</p>
            <p>If you enable WorkDocs on a directory that already has existing WorkSpaces, the
            existing WorkSpaces and any new WorkSpaces that are launched in the directory will have
            WorkDocs enabled.</p>
         </note>")
  @as("EnableWorkDocs")
  enableWorkDocs: option<booleanObject>,
}
@ocaml.doc("<p>Describes the connection status of a WorkSpace.</p>")
type workspaceConnectionStatus = {
  @ocaml.doc("<p>The timestamp of the last known user connection.</p>")
  @as("LastKnownUserConnectionTimestamp")
  lastKnownUserConnectionTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The timestamp of the connection status check.</p>")
  @as("ConnectionStateCheckTimestamp")
  connectionStateCheckTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The connection state of the WorkSpace. The connection state is unknown if the WorkSpace
         is stopped.</p>")
  @as("ConnectionState")
  connectionState: option<connectionState>,
  @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId")
  workspaceId: option<workspaceId>,
}
@ocaml.doc("<p>The device types and operating systems that can be used to access a WorkSpace. For more
         information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-network-requirements.html\">Amazon
            WorkSpaces Client Network Requirements</a>.</p>")
type workspaceAccessProperties = {
  @ocaml.doc("<p>Indicates whether users can use Linux clients to access their WorkSpaces.</p>")
  @as("DeviceTypeLinux")
  deviceTypeLinux: option<accessPropertyValue>,
  @ocaml.doc(
    "<p>Indicates whether users can use zero client devices to access their WorkSpaces.</p>"
  )
  @as("DeviceTypeZeroClient")
  deviceTypeZeroClient: option<accessPropertyValue>,
  @ocaml.doc("<p>Indicates whether users can use Chromebooks to access their WorkSpaces.</p>")
  @as("DeviceTypeChromeOs")
  deviceTypeChromeOs: option<accessPropertyValue>,
  @ocaml.doc("<p>Indicates whether users can use Android and Android-compatible Chrome OS devices to
         access their WorkSpaces.</p>")
  @as("DeviceTypeAndroid")
  deviceTypeAndroid: option<accessPropertyValue>,
  @ocaml.doc("<p>Indicates whether users can use iOS devices to access their WorkSpaces.</p>")
  @as("DeviceTypeIos")
  deviceTypeIos: option<accessPropertyValue>,
  @ocaml.doc("<p>Indicates whether users can access their WorkSpaces through a web browser.</p>")
  @as("DeviceTypeWeb")
  deviceTypeWeb: option<accessPropertyValue>,
  @ocaml.doc("<p>Indicates whether users can use macOS clients to access their WorkSpaces.</p>")
  @as("DeviceTypeOsx")
  deviceTypeOsx: option<accessPropertyValue>,
  @ocaml.doc("<p>Indicates whether users can use Windows clients to access their WorkSpaces.</p>")
  @as("DeviceTypeWindows")
  deviceTypeWindows: option<accessPropertyValue>,
}
@ocaml.doc("<p>Describes the user volume for a WorkSpace bundle.</p>")
type userStorage = {
  @ocaml.doc("<p>The size of the user volume.</p>") @as("Capacity")
  capacity: option<nonEmptyString>,
}
@ocaml.doc("<p>Describes whether a WorkSpace image needs to be updated with the latest drivers and
         other components required by Amazon WorkSpaces.</p>
         <note>
            <p>Only Windows 10 WorkSpace images can be programmatically updated at this time.</p>
         </note>")
type updateResult = {
  @ocaml.doc("<p>A description of whether updates for the WorkSpace image are pending or
         available.</p>")
  @as("Description")
  description: option<updateDescription>,
  @ocaml.doc("<p>Indicates whether updated drivers or other components are available for the specified
         WorkSpace image.</p>")
  @as("UpdateAvailable")
  updateAvailable: option<booleanObject>,
}
@ocaml.doc("<p>Describes the information used to terminate a WorkSpace.</p>")
type terminateRequest = {
  @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId") workspaceId: workspaceId,
}
type tagKeyList = array<nonEmptyString>
@ocaml.doc("<p>Describes a tag.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: tagKey,
}
type subnetIds = array<subnetId>
@ocaml.doc("<p>Describes the information used to stop a WorkSpace.</p>")
type stopRequest = {
  @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId")
  workspaceId: option<workspaceId>,
}
@ocaml.doc("<p>Information used to start a WorkSpace.</p>")
type startRequest = {
  @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId")
  workspaceId: option<workspaceId>,
}
@ocaml.doc("<p>Describes a snapshot.</p>")
type snapshot = {
  @ocaml.doc("<p>The time when the snapshot was created.</p>") @as("SnapshotTime")
  snapshotTime: option<timestamp_>,
}
@ocaml.doc(
  "<p>Describes the self-service permissions for a directory. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html\">Enable Self-Service WorkSpace Management Capabilities for Your Users</a>.</p>"
)
type selfservicePermissions = {
  @ocaml.doc("<p>Specifies whether users can rebuild the operating system of a WorkSpace to its original
         state.</p>")
  @as("RebuildWorkspace")
  rebuildWorkspace: option<reconnectEnum>,
  @ocaml.doc("<p>Specifies whether users can switch the running mode of their WorkSpace.</p>")
  @as("SwitchRunningMode")
  switchRunningMode: option<reconnectEnum>,
  @ocaml.doc(
    "<p>Specifies whether users can change the compute type (bundle) for their WorkSpace.</p>"
  )
  @as("ChangeComputeType")
  changeComputeType: option<reconnectEnum>,
  @ocaml.doc("<p>Specifies whether users can increase the volume size of the drives on their
         WorkSpace.</p>")
  @as("IncreaseVolumeSize")
  increaseVolumeSize: option<reconnectEnum>,
  @ocaml.doc("<p>Specifies whether users can restart their WorkSpace.</p>") @as("RestartWorkspace")
  restartWorkspace: option<reconnectEnum>,
}
@ocaml.doc("<p>Describes the root volume for a WorkSpace bundle.</p>")
type rootStorage = {
  @ocaml.doc("<p>The size of the root volume.</p>") @as("Capacity")
  capacity: option<nonEmptyString>,
}
type resourceIdList = array<nonEmptyString>
@ocaml.doc("<p>Describes the information used to rebuild a WorkSpace.</p>")
type rebuildRequest = {
  @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId") workspaceId: workspaceId,
}
@ocaml.doc("<p>Describes the information used to reboot a WorkSpace.</p>")
type rebootRequest = {
  @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId") workspaceId: workspaceId,
}
@ocaml.doc("<p>The operating system that the image is running.</p>")
type operatingSystem = {
  @ocaml.doc("<p>The operating system.</p>") @as("Type") type_: option<operatingSystemType>,
}
@ocaml.doc("<p>Describes a WorkSpace modification.</p>")
type modificationState = {
  @ocaml.doc("<p>The modification state.</p>") @as("State") state: option<modificationStateEnum>,
  @ocaml.doc("<p>The resource.</p>") @as("Resource") resource: option<modificationResourceEnum>,
}
type loginMessage = Js.Dict.t<clientLoginMessage>
@ocaml.doc("<p>Describes a rule for an IP access control group.</p>")
type ipRuleItem = {
  @ocaml.doc("<p>The description.</p>") ruleDesc: option<ipRuleDesc>,
  @ocaml.doc("<p>The IP address range, in CIDR notation.</p>") ipRule: option<ipRule>,
}
type ipRevokedRuleList = array<ipRule>
type ipGroupIdList = array<ipGroupId>
@ocaml.doc("<p>Describes the Amazon Web Services accounts that have been granted permission to use a
         shared image. For more information about sharing images, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html\"> Share or Unshare a Custom
            WorkSpaces Image</a>.</p>")
type imagePermission = {
  @ocaml.doc("<p>The identifier of the Amazon Web Services account that an image has been shared
         with.</p>")
  @as("SharedAccountId")
  sharedAccountId: option<awsAccount>,
}
@ocaml.doc("<p>Describes a WorkSpace that could not be rebooted. (<a>RebootWorkspaces</a>),
         rebuilt (<a>RebuildWorkspaces</a>), restored (<a>RestoreWorkspace</a>), terminated (<a>TerminateWorkspaces</a>), started (<a>StartWorkspaces</a>), or stopped (<a>StopWorkspaces</a>).</p>")
type failedWorkspaceChangeRequest = {
  @ocaml.doc("<p>The text of the error message that is returned if the WorkSpace cannot be
         rebooted.</p>")
  @as("ErrorMessage")
  errorMessage: option<description>,
  @ocaml.doc("<p>The error code that is returned if the WorkSpace cannot be rebooted.</p>")
  @as("ErrorCode")
  errorCode: option<errorType>,
  @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId")
  workspaceId: option<workspaceId>,
}
type dnsIpAddresses = array<ipAddress>
type directoryIdList = array<directoryId>
@ocaml.doc("<p>Describes the default values that are used to create WorkSpaces. For more information,
         see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html\">Update Directory
            Details for Your WorkSpaces</a>.</p>")
type defaultWorkspaceCreationProperties = {
  @ocaml.doc("<p>Specifies whether maintenance mode is enabled for WorkSpaces. For more information, see
            <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html\">WorkSpace
            Maintenance</a>.</p>")
  @as("EnableMaintenanceMode")
  enableMaintenanceMode: option<booleanObject>,
  @ocaml.doc(
    "<p>Specifies whether WorkSpace users are local administrators on their WorkSpaces.</p>"
  )
  @as("UserEnabledAsLocalAdministrator")
  userEnabledAsLocalAdministrator: option<booleanObject>,
  @ocaml.doc("<p>The identifier of the default security group to apply to WorkSpaces when they are
         created. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-security-groups.html\"> Security
            Groups for Your WorkSpaces</a>.</p>")
  @as("CustomSecurityGroupId")
  customSecurityGroupId: option<securityGroupId>,
  @ocaml.doc(
    "<p>The organizational unit (OU) in the directory for the WorkSpace machine accounts.</p>"
  )
  @as("DefaultOu")
  defaultOu: option<defaultOu>,
  @ocaml.doc("<p>Specifies whether to automatically assign an Elastic public IP address to WorkSpaces in
         this directory by default. If enabled, the Elastic public IP address allows outbound
         internet access from your WorkSpaces when you’re using an internet gateway in the Amazon
         VPC in which your WorkSpaces are located. If you're using a Network Address Translation
         (NAT) gateway for outbound internet access from your VPC, or if your WorkSpaces are in
         public subnets and you manually assign them Elastic IP addresses, you should disable this
         setting. This setting applies to new WorkSpaces that you launch or to existing WorkSpaces
         that you rebuild. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html\"> Configure a VPC for
            Amazon WorkSpaces</a>.</p>")
  @as("EnableInternetAccess")
  enableInternetAccess: option<booleanObject>,
  @ocaml.doc("<p>Specifies whether the directory is enabled for Amazon WorkDocs.</p>")
  @as("EnableWorkDocs")
  enableWorkDocs: option<booleanObject>,
}
type dedicatedTenancyCidrRangeList = array<dedicatedTenancyManagementCidrRange>
@ocaml.doc("<p>Describes the permissions for a connection alias. Connection aliases are used for
         cross-Region redirection. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region
            Redirection for Amazon WorkSpaces</a>.</p>")
type connectionAliasPermission = {
  @ocaml.doc("<p>Indicates whether the specified Amazon Web Services account is allowed to associate the
         connection alias with a directory.</p>")
  @as("AllowAssociation")
  allowAssociation: booleanObject,
  @ocaml.doc("<p>The identifier of the Amazon Web Services account that the connection alias is shared
         with.</p>")
  @as("SharedAccountId")
  sharedAccountId: awsAccount,
}
type connectionAliasIdList = array<connectionAliasId>
@ocaml.doc("<p>Describes a connection alias association that is used for cross-Region redirection. For
         more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region
            Redirection for Amazon WorkSpaces</a>.</p>")
type connectionAliasAssociation = {
  @ocaml.doc("<p>The identifier of the connection alias association. You use the connection identifier in
         the DNS TXT record when you're configuring your DNS routing policies.</p>")
  @as("ConnectionIdentifier")
  connectionIdentifier: option<connectionIdentifier>,
  @ocaml.doc("<p>The identifier of the directory associated with a connection alias.</p>")
  @as("ResourceId")
  resourceId: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the Amazon Web Services account that associated the connection alias
         with a directory.</p>")
  @as("AssociatedAccountId")
  associatedAccountId: option<awsAccount>,
  @ocaml.doc("<p>The association status of the connection alias.</p>") @as("AssociationStatus")
  associationStatus: option<associationStatus>,
}
@ocaml.doc("<p>Describes an Amazon Connect client add-in.</p>")
type connectClientAddIn = {
  @ocaml.doc("<p>The endpoint URL of the client add-in.</p>") @as("URL") url: option<addInUrl>,
  @ocaml.doc("<p>The name of the client add in.</p>") @as("Name") name: option<addInName>,
  @ocaml.doc("<p>The directory identifier for which the client add-in is configured.</p>")
  @as("ResourceId")
  resourceId: option<directoryId>,
  @ocaml.doc("<p>The client add-in identifier.</p>") @as("AddInId") addInId: option<amazonUuid>,
}
@ocaml.doc("<p>Describes the compute type of the bundle.</p>")
type computeType = {@ocaml.doc("<p>The compute type.</p>") @as("Name") name: option<compute>}
@ocaml.doc("<p>Describes an Amazon WorkSpaces client.</p>")
type clientProperties = {
  @ocaml.doc("<p>Specifies whether users can cache their credentials on the Amazon WorkSpaces client.
         When enabled, users can choose to reconnect to their WorkSpaces without re-entering their
         credentials. </p>")
  @as("ReconnectEnabled")
  reconnectEnabled: option<reconnectEnum>,
}
type clientDeviceTypeList = array<clientDeviceType>
type bundleIdList = array<bundleId>
type applicationList = array<application>
@ocaml.doc("<p>Describes a modification to the configuration of Bring Your Own License (BYOL) for the
         specified account. </p>")
type accountModification = {
  @ocaml.doc("<p>The text of the error message that is returned if the configuration of BYOL cannot be
         modified.</p>")
  @as("ErrorMessage")
  errorMessage: option<description>,
  @ocaml.doc(
    "<p>The error code that is returned if the configuration of BYOL cannot be modified.</p>"
  )
  @as("ErrorCode")
  errorCode: option<workspaceErrorCode>,
  @ocaml.doc("<p>The timestamp when the modification of the BYOL configuration was started.</p>")
  @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The IP address range, specified as an IPv4 CIDR block, for the management network
         interface used for the account.</p>")
  @as("DedicatedTenancyManagementCidrRange")
  dedicatedTenancyManagementCidrRange: option<dedicatedTenancyManagementCidrRange>,
  @ocaml.doc("<p>The status of BYOL (whether BYOL is being enabled or disabled).</p>")
  @as("DedicatedTenancySupport")
  dedicatedTenancySupport: option<dedicatedTenancySupportResultEnum>,
  @ocaml.doc("<p>The state of the modification to the configuration of BYOL.</p>")
  @as("ModificationState")
  modificationState: option<dedicatedTenancyModificationStateEnum>,
}
@ocaml.doc("<p>Describes a WorkSpace image.</p>")
type workspaceImage = {
  @ocaml.doc("<p>The updates (if any) that are available for the specified image.</p>")
  @as("Updates")
  updates: option<updateResult>,
  @ocaml.doc("<p>The identifier of the Amazon Web Services account that owns the image.</p>")
  @as("OwnerAccountId")
  ownerAccountId: option<awsAccount>,
  @ocaml.doc("<p>The date when the image was created. If the image has been shared, the Amazon Web Services account that the image has been shared with sees the original creation date
         of the image.</p>")
  @as("Created")
  created: option<timestamp_>,
  @ocaml.doc("<p>The text of the error message that is returned for the image.</p>")
  @as("ErrorMessage")
  errorMessage: option<description>,
  @ocaml.doc("<p>The error code that is returned for the image.</p>") @as("ErrorCode")
  errorCode: option<workspaceImageErrorCode>,
  @ocaml.doc("<p>Specifies whether the image is running on dedicated hardware. When Bring Your Own
         License (BYOL) is enabled, this value is set to <code>DEDICATED</code>. For more
         information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\">Bring Your Own Windows
            Desktop Images</a>.</p>")
  @as("RequiredTenancy")
  requiredTenancy: option<workspaceImageRequiredTenancy>,
  @ocaml.doc("<p>The status of the image.</p>") @as("State") state: option<workspaceImageState>,
  @ocaml.doc("<p>The operating system that the image is running. </p>") @as("OperatingSystem")
  operatingSystem: option<operatingSystem>,
  @ocaml.doc("<p>The description of the image.</p>") @as("Description")
  description: option<workspaceImageDescription>,
  @ocaml.doc("<p>The name of the image.</p>") @as("Name") name: option<workspaceImageName>,
  @ocaml.doc("<p>The identifier of the image.</p>") @as("ImageId")
  imageId: option<workspaceImageId>,
}
@ocaml.doc("<p>Describes a directory that is used with Amazon WorkSpaces.</p>")
type workspaceDirectory = {
  @ocaml.doc("<p>The default self-service permissions for WorkSpaces in the directory.</p>")
  @as("SelfservicePermissions")
  selfservicePermissions: option<selfservicePermissions>,
  @ocaml.doc("<p>Specifies whether the directory is dedicated or shared. To use Bring Your Own License
         (BYOL), this value must be set to <code>DEDICATED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\">Bring
            Your Own Windows Desktop Images</a>.</p>")
  @as("Tenancy")
  tenancy: option<tenancy>,
  @ocaml.doc("<p>The devices and operating systems that users can use to access WorkSpaces.</p>")
  @as("WorkspaceAccessProperties")
  workspaceAccessProperties: option<workspaceAccessProperties>,
  @ocaml.doc(
    "<p>The identifiers of the IP access control groups associated with the directory.</p>"
  )
  ipGroupIds: option<ipGroupIdList>,
  @ocaml.doc("<p>The default creation properties for all WorkSpaces in the directory.</p>")
  @as("WorkspaceCreationProperties")
  workspaceCreationProperties: option<defaultWorkspaceCreationProperties>,
  @ocaml.doc("<p>The state of the directory's registration with Amazon WorkSpaces. After a directory is
         deregistered, the <code>DEREGISTERED</code> state is returned very briefly before the
         directory metadata is cleaned up, so this state is rarely returned. To confirm that a
         directory is deregistered, check for the directory ID by using <a href=\"https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceDirectories.html\">
            DescribeWorkspaceDirectories</a>. If the directory ID isn't returned, then the
         directory has been successfully deregistered.</p>")
  @as("State")
  state: option<workspaceDirectoryState>,
  @ocaml.doc("<p>The identifier of the security group that is assigned to new WorkSpaces.</p>")
  @as("WorkspaceSecurityGroupId")
  workspaceSecurityGroupId: option<securityGroupId>,
  @ocaml.doc("<p>The directory type.</p>") @as("DirectoryType")
  directoryType: option<workspaceDirectoryType>,
  @ocaml.doc("<p>The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make
         calls to other services, such as Amazon EC2, on your behalf.</p>")
  @as("IamRoleId")
  iamRoleId: option<arn>,
  @ocaml.doc("<p>The user name for the service account.</p>") @as("CustomerUserName")
  customerUserName: option<userName>,
  @ocaml.doc("<p>The IP addresses of the DNS servers for the directory.</p>") @as("DnsIpAddresses")
  dnsIpAddresses: option<dnsIpAddresses>,
  @ocaml.doc("<p>The identifiers of the subnets used with the directory.</p>") @as("SubnetIds")
  subnetIds: option<subnetIds>,
  @ocaml.doc("<p>The registration code for the directory. This is the code that users enter in their
         Amazon WorkSpaces client application to connect to the directory.</p>")
  @as("RegistrationCode")
  registrationCode: option<registrationCode>,
  @ocaml.doc("<p>The name of the directory.</p>") @as("DirectoryName")
  directoryName: option<directoryName>,
  @ocaml.doc("<p>The directory alias.</p>") @as("Alias") alias: option<alias>,
  @ocaml.doc("<p>The directory identifier.</p>") @as("DirectoryId")
  directoryId: option<directoryId>,
}
type workspaceConnectionStatusList = array<workspaceConnectionStatus>
@ocaml.doc("<p>Describes a WorkSpace bundle.</p>")
type workspaceBundle = {
  @ocaml.doc("<p>The time when the bundle was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The last time that the bundle was updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The compute type of the bundle. For more information, see 
         <a href=\"http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles\">Amazon WorkSpaces Bundles</a>.</p>")
  @as("ComputeType")
  computeType: option<computeType>,
  @ocaml.doc("<p>The size of the user volume.</p>") @as("UserStorage")
  userStorage: option<userStorage>,
  @ocaml.doc("<p>The size of the root volume.</p>") @as("RootStorage")
  rootStorage: option<rootStorage>,
  @ocaml.doc("<p>The identifier of the image that was used to create the bundle.</p>")
  @as("ImageId")
  imageId: option<workspaceImageId>,
  @ocaml.doc("<p>The description of the bundle.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The owner of the bundle. This is the account identifier of the owner, or
         <code>AMAZON</code> if the bundle is provided by Amazon Web Services.</p>")
  @as("Owner")
  owner: option<bundleOwner>,
  @ocaml.doc("<p>The name of the bundle.</p>") @as("Name") name: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the bundle.</p>") @as("BundleId") bundleId: option<bundleId>,
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
@ocaml.doc("<p>The client branding attributes to import for iOS device types. These attributes are
         displayed on the iOS client login screen.</p>
         <important>
            <p>Client branding attributes are public facing. Ensure you do not include sensitive
            information.</p>
         </important>")
type iosImportClientBrandingAttributes = {
  @ocaml.doc("<p>The login message. Specified as a key value pair, in which the key is a locale and the
         value is the localized message for that locale. The only key supported is
            <code>en_US</code>. </p>")
  @as("LoginMessage")
  loginMessage: option<loginMessage>,
  @ocaml.doc("<p>The forgotten password link. This is the web address that users can go to if they forget
         the password for their WorkSpace.</p>")
  @as("ForgotPasswordLink")
  forgotPasswordLink: option<clientUrl>,
  @ocaml.doc("<p>The support link. The link for the company's customer support page for their
         WorkSpace.</p>
         <note>
            <ul>
               <li>
                  <p>In each platform type, the <code>SupportEmail</code> and
                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one
                  parameter for each platform type, but not both.</p>
               </li>
               <li>
                  <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
               </li>
            </ul>
         </note>")
  @as("SupportLink")
  supportLink: option<clientUrl>,
  @ocaml.doc("<p>The support email. The company's customer support email address.</p>
         <note>
            <ul>
               <li>
                  <p>In each platform type, the <code>SupportEmail</code> and
                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one
                  parameter for each platform type, but not both.</p>
               </li>
               <li>
                  <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
               </li>
            </ul>
         </note>")
  @as("SupportEmail")
  supportEmail: option<clientEmail>,
  @ocaml.doc("<p>The @3x version of the logo. This is the higher resolution display that offers a scale
         factor of 3.0 (or @3x).</p>
         <note>
            <p> For more information about iOS image size and resolution, see <a href=\"https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/\">Image Size and Resolution </a> in the <i>Apple Human Interface
               Guidelines</i>.</p>
         </note>")
  @as("Logo3x")
  logo3x: option<ios3XLogo>,
  @ocaml.doc("<p>The @2x version of the logo. This is the higher resolution display that offers a scale
         factor of 2.0 (or @2x).</p>
         <note>
            <p> For more information about iOS image size and resolution, see <a href=\"https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/\">Image Size and Resolution </a> in the <i>Apple Human Interface
               Guidelines</i>.</p>
         </note>")
  @as("Logo2x")
  logo2x: option<ios2XLogo>,
  @ocaml.doc("<p>The logo. This is the link where users can download the logo image. This is the
         standard-resolution display that has a 1:1 pixel density (or @1x), where one pixel is equal
         to one point.</p>")
  @as("Logo")
  logo: option<iosLogo>,
}
@ocaml.doc("<p>The client branding attributes for iOS device types. These attributes are displayed on
         the iOS client login screen only.</p>
         <important>
            <p>Client branding attributes are public facing. Ensure you do not include sensitive
            information.</p>
         </important>")
type iosClientBrandingAttributes = {
  @ocaml.doc("<p>The login message. Specified as a key value pair, in which the key is a locale and the
         value is the localized message for that locale. The only key supported is
            <code>en_US</code>. </p>")
  @as("LoginMessage")
  loginMessage: option<loginMessage>,
  @ocaml.doc("<p>The forgotten password link. This is the web address that users can go to if they forget
         the password for their WorkSpace.</p>")
  @as("ForgotPasswordLink")
  forgotPasswordLink: option<clientUrl>,
  @ocaml.doc("<p>The support link. The link for the company's customer support page for their
         WorkSpace.</p>
         <note>
            <ul>
               <li>
                  <p>In each platform type, the <code>SupportEmail</code> and
                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one
                  parameter for each platform type, but not both.</p>
               </li>
               <li>
                  <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
               </li>
            </ul>
         </note>")
  @as("SupportLink")
  supportLink: option<clientUrl>,
  @ocaml.doc("<p>The support email. The company's customer support email address.</p>
         <note>
            <ul>
               <li>
                  <p>In each platform type, the <code>SupportEmail</code> and
                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one
                  parameter for each platform type, but not both.</p>
               </li>
               <li>
                  <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
               </li>
            </ul>
         </note>")
  @as("SupportEmail")
  supportEmail: option<clientEmail>,
  @ocaml.doc("<p>The @3x version of the logo. This is the higher resolution display that offers a scale
         factor of 3.0 (or @3x).</p>
         <note>
            <p> For more information about iOS image size and resolution, see <a href=\"https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/\">Image Size and Resolution </a> in the <i>Apple Human Interface
               Guidelines</i>.</p>
         </note>")
  @as("Logo3xUrl")
  logo3xUrl: option<clientUrl>,
  @ocaml.doc("<p>The @2x version of the logo. This is the higher resolution display that offers a scale
         factor of 2.0 (or @2x).</p>
         <note>
            <p> For more information about iOS image size and resolution, see <a href=\"https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/\">Image Size and Resolution </a> in the <i>Apple Human Interface
               Guidelines</i>.</p>
         </note>")
  @as("Logo2xUrl")
  logo2xUrl: option<clientUrl>,
  @ocaml.doc("<p>The logo. This is the link where users can download the logo image. This is the
         standard-resolution display that has a 1:1 pixel density (or @1x), where one pixel is equal
         to one point.</p>")
  @as("LogoUrl")
  logoUrl: option<clientUrl>,
}
type imagePermissions = array<imagePermission>
type failedTerminateWorkspaceRequests = array<failedWorkspaceChangeRequest>
type failedStopWorkspaceRequests = array<failedWorkspaceChangeRequest>
type failedStartWorkspaceRequests = array<failedWorkspaceChangeRequest>
type failedRebuildWorkspaceRequests = array<failedWorkspaceChangeRequest>
type failedRebootWorkspaceRequests = array<failedWorkspaceChangeRequest>
@ocaml.doc("<p>The default client branding attributes to be imported. These attributes display on the
         client login screen.</p>
         <important>
            <p>Client branding attributes are public facing. Ensure that you do not include
            sensitive information.</p>
         </important>")
type defaultImportClientBrandingAttributes = {
  @ocaml.doc("<p>The login message. Specified as a key value pair, in which the key is a locale and the
         value is the localized message for that locale. The only key supported is
            <code>en_US</code>. </p>")
  @as("LoginMessage")
  loginMessage: option<loginMessage>,
  @ocaml.doc("<p>The forgotten password link. This is the web address that users can go to if they forget
         the password for their WorkSpace.</p>")
  @as("ForgotPasswordLink")
  forgotPasswordLink: option<clientUrl>,
  @ocaml.doc("<p>The support link. The link for the company's customer support page for their
         WorkSpace.</p>
         <note>
            <ul>
               <li>
                  <p>In each platform type, the <code>SupportEmail</code> and
                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one
                  parameter for each platform type, but not both.</p>
               </li>
               <li>
                  <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
               </li>
            </ul>
         </note>")
  @as("SupportLink")
  supportLink: option<clientUrl>,
  @ocaml.doc("<p>The support email. The company's customer support email address.</p>
         <note>
            <ul>
               <li>
                  <p>In each platform type, the <code>SupportEmail</code> and
                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one
                  parameter for each platform type, but not both.</p>
               </li>
               <li>
                  <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
               </li>
            </ul>
         </note>")
  @as("SupportEmail")
  supportEmail: option<clientEmail>,
  @ocaml.doc("<p>The logo. This is the link where users can download the logo image. The only image
         format accepted is <code>.png</code>.</p>")
  @as("Logo")
  logo: option<defaultLogo>,
}
@ocaml.doc("<p>Returns default client branding attributes that were imported. These attributes display
         on the client login screen.</p>
         <important>
            <p>Client branding attributes are public facing. Ensure that you don't include sensitive
            information.</p>
         </important>")
type defaultClientBrandingAttributes = {
  @ocaml.doc("<p>The login message. Specified as a key value pair, in which the key is a locale and the
         value is the localized message for that locale. The only key supported is
            <code>en_US</code>. </p>")
  @as("LoginMessage")
  loginMessage: option<loginMessage>,
  @ocaml.doc("<p>The forgotten password link. This is the web address that users can go to if they forget
         the password for their WorkSpace.</p>")
  @as("ForgotPasswordLink")
  forgotPasswordLink: option<clientUrl>,
  @ocaml.doc("<p>The support link. The link for the company's customer support page for their
         WorkSpace.</p>
         <note>
            <ul>
               <li>
                  <p>In each platform type, the <code>SupportEmail</code> and
                     <code>SupportLink</code> parameters are mutually exclusive.You can specify one
                  parameter for each platform type, but not both.</p>
               </li>
               <li>
                  <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
               </li>
            </ul>
         </note>")
  @as("SupportLink")
  supportLink: option<clientUrl>,
  @ocaml.doc("<p>The support email. The company's customer support email address.</p>
         <note>
            <ul>
               <li>
                  <p>In each platform type, the <code>SupportEmail</code> and
                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one
                  parameter for each platform type, but not both.</p>
               </li>
               <li>
                  <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
               </li>
            </ul>
         </note>")
  @as("SupportEmail")
  supportEmail: option<clientEmail>,
  @ocaml.doc("<p>The logo URL. This is the link where users can download the logo image. The only
         supported image format is <code>.png</code>.</p>")
  @as("LogoUrl")
  logoUrl: option<clientUrl>,
}
type connectionAliasPermissions = array<connectionAliasPermission>
type connectionAliasAssociationList = array<connectionAliasAssociation>
type connectClientAddInList = array<connectClientAddIn>
@ocaml.doc("<p>Information about the Amazon WorkSpaces client.</p>")
type clientPropertiesResult = {
  @ocaml.doc("<p>Information about the Amazon WorkSpaces client.</p>") @as("ClientProperties")
  clientProperties: option<clientProperties>,
  @ocaml.doc("<p>The resource identifier, in the form of a directory ID.</p>") @as("ResourceId")
  resourceId: option<nonEmptyString>,
}
type accountModificationList = array<accountModification>
@ocaml.doc("<p>Describes an IP access control group.</p>")
type workspacesIpGroup = {
  @ocaml.doc("<p>The rules.</p>") userRules: option<ipRuleList>,
  @ocaml.doc("<p>The description of the group.</p>") groupDesc: option<ipGroupDesc>,
  @ocaml.doc("<p>The name of the group.</p>") groupName: option<ipGroupName>,
  @ocaml.doc("<p>The identifier of the group.</p>") groupId: option<ipGroupId>,
}
@ocaml.doc("<p>Describes the information used to create a WorkSpace.</p>")
type workspaceRequest = {
  @ocaml.doc("<p>The tags for the WorkSpace.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The WorkSpace properties.</p>") @as("WorkspaceProperties")
  workspaceProperties: option<workspaceProperties>,
  @ocaml.doc("<p>Indicates whether the data stored on the root volume is encrypted.</p>")
  @as("RootVolumeEncryptionEnabled")
  rootVolumeEncryptionEnabled: option<booleanObject>,
  @ocaml.doc("<p>Indicates whether the data stored on the user volume is encrypted.</p>")
  @as("UserVolumeEncryptionEnabled")
  userVolumeEncryptionEnabled: option<booleanObject>,
  @ocaml.doc("<p>The symmetric KMS key used to encrypt data stored on your WorkSpace.
         Amazon WorkSpaces does not support asymmetric KMS keys.</p>")
  @as("VolumeEncryptionKey")
  volumeEncryptionKey: option<volumeEncryptionKey>,
  @ocaml.doc(
    "<p>The identifier of the bundle for the WorkSpace. You can use <a>DescribeWorkspaceBundles</a> to list the available bundles.</p>"
  )
  @as("BundleId")
  bundleId: bundleId,
  @ocaml.doc(
    "<p>The user name of the user for the WorkSpace. This user name must exist in the Directory Service directory for the WorkSpace.</p>"
  )
  @as("UserName")
  userName: userName,
  @ocaml.doc(
    "<p>The identifier of the Directory Service directory for the WorkSpace. You can use <a>DescribeWorkspaceDirectories</a> to list the available directories.</p>"
  )
  @as("DirectoryId")
  directoryId: directoryId,
}
type workspaceImageList = array<workspaceImage>
@ocaml.doc("<p>Describes a WorkSpace.</p>")
type workspace = {
  @ocaml.doc("<p>The modification states of the WorkSpace.</p>") @as("ModificationStates")
  modificationStates: option<modificationStateList>,
  @ocaml.doc("<p>The properties of the WorkSpace.</p>") @as("WorkspaceProperties")
  workspaceProperties: option<workspaceProperties>,
  @ocaml.doc("<p>Indicates whether the data stored on the root volume is encrypted.</p>")
  @as("RootVolumeEncryptionEnabled")
  rootVolumeEncryptionEnabled: option<booleanObject>,
  @ocaml.doc("<p>Indicates whether the data stored on the user volume is encrypted.</p>")
  @as("UserVolumeEncryptionEnabled")
  userVolumeEncryptionEnabled: option<booleanObject>,
  @ocaml.doc("<p>The symmetric KMS key used to encrypt data stored on your WorkSpace.
         Amazon WorkSpaces does not support asymmetric KMS keys.</p>")
  @as("VolumeEncryptionKey")
  volumeEncryptionKey: option<volumeEncryptionKey>,
  @ocaml.doc("<p>The name of the WorkSpace, as seen by the operating system. The format of this name
         varies. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/launch-workspaces-tutorials.html\"> Launch a
            WorkSpace</a>. </p>")
  @as("ComputerName")
  computerName: option<computerName>,
  @ocaml.doc("<p>The error code that is returned if the WorkSpace cannot be created.</p>")
  @as("ErrorCode")
  errorCode: option<workspaceErrorCode>,
  @ocaml.doc("<p>The text of the error message that is returned if the WorkSpace cannot be
         created.</p>")
  @as("ErrorMessage")
  errorMessage: option<description>,
  @ocaml.doc("<p>The identifier of the subnet for the WorkSpace.</p>") @as("SubnetId")
  subnetId: option<subnetId>,
  @ocaml.doc("<p>The identifier of the bundle used to create the WorkSpace.</p>") @as("BundleId")
  bundleId: option<bundleId>,
  @ocaml.doc("<p>The operational state of the WorkSpace.</p>
         <note>
            <p>After a WorkSpace is terminated, the <code>TERMINATED</code> state is returned only
            briefly before the WorkSpace directory metadata is cleaned up, so this state is rarely
            returned. To confirm that a WorkSpace is terminated, check for the WorkSpace ID by using
               <a href=\"https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html\">
               DescribeWorkSpaces</a>. If the WorkSpace ID isn't returned, then the WorkSpace
            has been successfully terminated.</p>
         </note>")
  @as("State")
  state: option<workspaceState>,
  @ocaml.doc("<p>The IP address of the WorkSpace.</p>") @as("IpAddress")
  ipAddress: option<ipAddress>,
  @ocaml.doc("<p>The user for the WorkSpace.</p>") @as("UserName") userName: option<userName>,
  @ocaml.doc("<p>The identifier of the Directory Service directory for the WorkSpace.</p>")
  @as("DirectoryId")
  directoryId: option<directoryId>,
  @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId")
  workspaceId: option<workspaceId>,
}
type directoryList = array<workspaceDirectory>
@ocaml.doc("<p>Describes a connection alias. Connection aliases are used for cross-Region redirection.
         For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region
            Redirection for Amazon WorkSpaces</a>.</p>")
type connectionAlias = {
  @ocaml.doc("<p>The association status of the connection alias.</p>") @as("Associations")
  associations: option<connectionAliasAssociationList>,
  @ocaml.doc(
    "<p>The identifier of the Amazon Web Services account that owns the connection alias.</p>"
  )
  @as("OwnerAccountId")
  ownerAccountId: option<awsAccount>,
  @ocaml.doc("<p>The current state of the connection alias.</p>") @as("State")
  state: option<connectionAliasState>,
  @ocaml.doc("<p>The identifier of the connection alias.</p>") @as("AliasId")
  aliasId: option<connectionAliasId>,
  @ocaml.doc("<p>The connection string specified for the connection alias. The connection string must be
         in the form of a fully qualified domain name (FQDN), such as
         <code>www.example.com</code>.</p>")
  @as("ConnectionString")
  connectionString: option<connectionString>,
}
type clientPropertiesList = array<clientPropertiesResult>
type bundleList = array<workspaceBundle>
type workspacesIpGroupsList = array<workspacesIpGroup>
type workspaceRequestList = array<workspaceRequest>
type workspaceList = array<workspace>
@ocaml.doc("<p>Describes a WorkSpace that cannot be created.</p>")
type failedCreateWorkspaceRequest = {
  @ocaml.doc("<p>The text of the error message that is returned if the WorkSpace cannot be
         created.</p>")
  @as("ErrorMessage")
  errorMessage: option<description>,
  @ocaml.doc("<p>The error code that is returned if the WorkSpace cannot be created.</p>")
  @as("ErrorCode")
  errorCode: option<errorType>,
  @ocaml.doc("<p>Information about the WorkSpace.</p>") @as("WorkspaceRequest")
  workspaceRequest: option<workspaceRequest>,
}
type connectionAliasList = array<connectionAlias>
type failedCreateWorkspaceRequests = array<failedCreateWorkspaceRequest>
@ocaml.doc("<fullname>Amazon WorkSpaces Service</fullname>
         <p>Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft Windows
         or Amazon Linux desktops for your users, known as <i>WorkSpaces</i>.
            WorkSpaces eliminates the need to procure and deploy hardware or install complex
         software. You can quickly add or remove users as your needs change. Users can access their
         virtual desktops from multiple devices or web browsers.</p>
         <p>This API Reference provides detailed information about the actions, data types,
         parameters, and errors of the WorkSpaces service. For more information about the
         supported Amazon Web Services Regions, endpoints, and service quotas of the Amazon WorkSpaces service, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/wsp.html\">WorkSpaces endpoints and quotas</a> in the <i>Amazon Web Services
            General Reference</i>.</p>
         <p>You can also manage your WorkSpaces resources using the WorkSpaces
         console, Command Line Interface (CLI), and SDKs. For more information about
         administering WorkSpaces, see the <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/\">Amazon WorkSpaces Administration Guide</a>.
         For more information about using the Amazon WorkSpaces client application or web
         browser to access provisioned WorkSpaces, see the <a href=\"https://docs.aws.amazon.com/workspaces/latest/userguide/\">Amazon WorkSpaces User Guide</a>. For more
         information about using the CLI to manage your WorkSpaces resources,
         see the <a href=\"https://docs.aws.amazon.com/cli/latest/reference/workspaces/index.html\">WorkSpaces section of the CLI Reference</a>.</p>")
module UpdateWorkspaceImagePermission = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Web Services account to share or unshare the image
         with.</p>
         <important>
            <p>Before sharing the image, confirm that you are sharing to the correct Amazon Web Services account ID.</p>
         </important>")
    @as("SharedAccountId")
    sharedAccountId: awsAccount,
    @ocaml.doc("<p>The permission to copy the image. This permission can be revoked only after an image has
         been shared.</p>")
    @as("AllowCopyImage")
    allowCopyImage: booleanObject,
    @ocaml.doc("<p>The identifier of the image.</p>") @as("ImageId") imageId: workspaceImageId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "UpdateWorkspaceImagePermissionCommand"
  let make = (~sharedAccountId, ~allowCopyImage, ~imageId, ()) =>
    new({sharedAccountId: sharedAccountId, allowCopyImage: allowCopyImage, imageId: imageId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateWorkspaceBundle = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the image.</p>") @as("ImageId")
    imageId: option<workspaceImageId>,
    @ocaml.doc("<p>The identifier of the bundle.</p>") @as("BundleId") bundleId: option<bundleId>,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "UpdateWorkspaceBundleCommand"
  let make = (~imageId=?, ~bundleId=?, ()) => new({imageId: imageId, bundleId: bundleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateConnectClientAddIn = {
  type t
  type request = {
    @ocaml.doc("<p>The endpoint URL of the Amazon Connect client add-in.</p>") @as("URL")
    url: option<addInUrl>,
    @ocaml.doc("<p>The name of the client add-in.</p>") @as("Name") name: option<addInName>,
    @ocaml.doc("<p>The directory identifier for which the client add-in is configured.</p>")
    @as("ResourceId")
    resourceId: directoryId,
    @ocaml.doc("<p>The identifier of the client add-in to update.</p>") @as("AddInId")
    addInId: amazonUuid,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "UpdateConnectClientAddInCommand"
  let make = (~resourceId, ~addInId, ~url=?, ~name=?, ()) =>
    new({url: url, name: name, resourceId: resourceId, addInId: addInId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RestoreWorkspace = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId")
    workspaceId: workspaceId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "RestoreWorkspaceCommand"
  let make = (~workspaceId, ()) => new({workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyWorkspaceState = {
  type t
  type request = {
    @ocaml.doc("<p>The WorkSpace state.</p>") @as("WorkspaceState")
    workspaceState: targetWorkspaceState,
    @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId")
    workspaceId: workspaceId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "ModifyWorkspaceStateCommand"
  let make = (~workspaceState, ~workspaceId, ()) =>
    new({workspaceState: workspaceState, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The IP address range, specified as an IPv4 CIDR block, for the management network
         interface. Specify an IP address range that is compatible with your network and in CIDR
         notation (that is, specify the range as an IPv4 CIDR block). The CIDR block size must be
         /16 (for example, 203.0.113.25/16). It must also be specified as available by the
            <code>ListAvailableManagementCidrRanges</code> operation.</p>")
    @as("DedicatedTenancyManagementCidrRange")
    dedicatedTenancyManagementCidrRange: option<dedicatedTenancyManagementCidrRange>,
    @ocaml.doc("<p>The status of BYOL.</p>") @as("DedicatedTenancySupport")
    dedicatedTenancySupport: option<dedicatedTenancySupportEnum>,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "ModifyAccountCommand"
  let make = (~dedicatedTenancyManagementCidrRange=?, ~dedicatedTenancySupport=?, ()) =>
    new({
      dedicatedTenancyManagementCidrRange: dedicatedTenancyManagementCidrRange,
      dedicatedTenancySupport: dedicatedTenancySupport,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module MigrateWorkspace = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the target bundle type to migrate the WorkSpace to.</p>")
    @as("BundleId")
    bundleId: bundleId,
    @ocaml.doc("<p>The identifier of the WorkSpace to migrate from.</p>") @as("SourceWorkspaceId")
    sourceWorkspaceId: workspaceId,
  }
  type response = {
    @ocaml.doc("<p>The new identifier of the WorkSpace that is being migrated. If the migration does not
         succeed, the target WorkSpace ID will not be used, and the WorkSpace will still have the
         original WorkSpace ID.</p>")
    @as("TargetWorkspaceId")
    targetWorkspaceId: option<workspaceId>,
    @ocaml.doc("<p>The original identifier of the WorkSpace that is being migrated.</p>")
    @as("SourceWorkspaceId")
    sourceWorkspaceId: option<workspaceId>,
  }
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "MigrateWorkspaceCommand"
  let make = (~bundleId, ~sourceWorkspaceId, ()) =>
    new({bundleId: bundleId, sourceWorkspaceId: sourceWorkspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateConnectionAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the connection alias to disassociate.</p>") @as("AliasId")
    aliasId: connectionAliasId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DisassociateConnectionAliasCommand"
  let make = (~aliasId, ()) => new({aliasId: aliasId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeAccount = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The IP address range, specified as an IPv4 CIDR block, used for the management network
         interface.</p>
         <p>The management network interface is connected to a secure Amazon WorkSpaces management
         network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces
         clients, and to allow Amazon WorkSpaces to manage the WorkSpace.</p>")
    @as("DedicatedTenancyManagementCidrRange")
    dedicatedTenancyManagementCidrRange: option<dedicatedTenancyManagementCidrRange>,
    @ocaml.doc("<p>The status of BYOL (whether BYOL is enabled or disabled).</p>")
    @as("DedicatedTenancySupport")
    dedicatedTenancySupport: option<dedicatedTenancySupportResultEnum>,
  }
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "DescribeAccountCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterWorkspaceDirectory = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the directory. If any WorkSpaces are registered to this directory, you
         must remove them before you deregister the directory, or you will receive an
         OperationNotSupportedException error.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DeregisterWorkspaceDirectoryCommand"
  let make = (~directoryId, ()) => new({directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWorkspaceImage = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the image.</p>") @as("ImageId") imageId: workspaceImageId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DeleteWorkspaceImageCommand"
  let make = (~imageId, ()) => new({imageId: imageId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWorkspaceBundle = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the bundle.</p>") @as("BundleId") bundleId: option<bundleId>,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DeleteWorkspaceBundleCommand"
  let make = (~bundleId=?, ()) => new({bundleId: bundleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIpGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the IP access control group.</p>") @as("GroupId")
    groupId: ipGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "DeleteIpGroupCommand"
  let make = (~groupId, ()) => new({groupId: groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConnectionAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the connection alias to delete.</p>") @as("AliasId")
    aliasId: connectionAliasId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DeleteConnectionAliasCommand"
  let make = (~aliasId, ()) => new({aliasId: aliasId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConnectClientAddIn = {
  type t
  type request = {
    @ocaml.doc("<p>The directory identifier for which the client add-in is configured.</p>")
    @as("ResourceId")
    resourceId: directoryId,
    @ocaml.doc("<p>The identifier of the client add-in to delete.</p>") @as("AddInId")
    addInId: amazonUuid,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DeleteConnectClientAddInCommand"
  let make = (~resourceId, ~addInId, ()) => new({resourceId: resourceId, addInId: addInId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateConnectClientAddIn = {
  type t
  type request = {
    @ocaml.doc("<p>The endpoint URL of the Amazon Connect client add-in.</p>") @as("URL")
    url: addInUrl,
    @ocaml.doc("<p>The name of the client add-in.</p>") @as("Name") name: addInName,
    @ocaml.doc("<p>The directory identifier for which to configure the client add-in.</p>")
    @as("ResourceId")
    resourceId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>The client add-in identifier.</p>") @as("AddInId") addInId: option<amazonUuid>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "CreateConnectClientAddInCommand"
  let make = (~url, ~name, ~resourceId, ()) => new({url: url, name: name, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateConnectionAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the directory to associate the connection alias with.</p>")
    @as("ResourceId")
    resourceId: nonEmptyString,
    @ocaml.doc("<p>The identifier of the connection alias.</p>") @as("AliasId")
    aliasId: connectionAliasId,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the connection alias association. You use the connection identifier in
         the DNS TXT record when you're configuring your DNS routing policies. </p>")
    @as("ConnectionIdentifier")
    connectionIdentifier: option<connectionIdentifier>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "AssociateConnectionAliasCommand"
  let make = (~resourceId, ~aliasId, ()) => new({resourceId: resourceId, aliasId: aliasId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConnectionAliasPermission = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates whether to share or unshare the connection alias with the specified Amazon Web Services account.</p>"
    )
    @as("ConnectionAliasPermission")
    connectionAliasPermission: connectionAliasPermission,
    @ocaml.doc(
      "<p>The identifier of the connection alias that you want to update permissions for.</p>"
    )
    @as("AliasId")
    aliasId: connectionAliasId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "UpdateConnectionAliasPermissionCommand"
  let make = (~connectionAliasPermission, ~aliasId, ()) =>
    new({connectionAliasPermission: connectionAliasPermission, aliasId: aliasId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RevokeIpRules = {
  type t
  type request = {
    @ocaml.doc("<p>The rules to remove from the group.</p>") @as("UserRules")
    userRules: ipRevokedRuleList,
    @ocaml.doc("<p>The identifier of the group.</p>") @as("GroupId") groupId: ipGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "RevokeIpRulesCommand"
  let make = (~userRules, ~groupId, ()) => new({userRules: userRules, groupId: groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyWorkspaceProperties = {
  type t
  type request = {
    @ocaml.doc("<p>The properties of the WorkSpace.</p>") @as("WorkspaceProperties")
    workspaceProperties: workspaceProperties,
    @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId")
    workspaceId: workspaceId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "ModifyWorkspacePropertiesCommand"
  let make = (~workspaceProperties, ~workspaceId, ()) =>
    new({workspaceProperties: workspaceProperties, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyWorkspaceCreationProperties = {
  type t
  type request = {
    @ocaml.doc("<p>The default properties for creating WorkSpaces.</p>")
    @as("WorkspaceCreationProperties")
    workspaceCreationProperties: workspaceCreationProperties,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("ResourceId") resourceId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "ModifyWorkspaceCreationPropertiesCommand"
  let make = (~workspaceCreationProperties, ~resourceId, ()) =>
    new({workspaceCreationProperties: workspaceCreationProperties, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyWorkspaceAccessProperties = {
  type t
  type request = {
    @ocaml.doc("<p>The device types and operating systems to enable or disable for access.</p>")
    @as("WorkspaceAccessProperties")
    workspaceAccessProperties: workspaceAccessProperties,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("ResourceId") resourceId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "ModifyWorkspaceAccessPropertiesCommand"
  let make = (~workspaceAccessProperties, ~resourceId, ()) =>
    new({workspaceAccessProperties: workspaceAccessProperties, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifySelfservicePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The permissions to enable or disable self-service capabilities.</p>")
    @as("SelfservicePermissions")
    selfservicePermissions: selfservicePermissions,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("ResourceId") resourceId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "ModifySelfservicePermissionsCommand"
  let make = (~selfservicePermissions, ~resourceId, ()) =>
    new({selfservicePermissions: selfservicePermissions, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyClientProperties = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the Amazon WorkSpaces client.</p>") @as("ClientProperties")
    clientProperties: clientProperties,
    @ocaml.doc("<p>The resource identifiers, in the form of directory IDs.</p>") @as("ResourceId")
    resourceId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "ModifyClientPropertiesCommand"
  let make = (~clientProperties, ~resourceId, ()) =>
    new({clientProperties: clientProperties, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListAvailableManagementCidrRanges = {
  type t
  type request = {
    @ocaml.doc("<p>If you received a <code>NextToken</code> from a previous call that was paginated,
         provide this token to receive the next set of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("MaxResults")
    maxResults: option<managementCidrRangeMaxResults>,
    @ocaml.doc("<p>The IP address range to search. Specify an IP address range that is compatible with your
         network and in CIDR notation (that is, specify the range as an IPv4 CIDR block).</p>")
    @as("ManagementCidrRangeConstraint")
    managementCidrRangeConstraint: managementCidrRangeConstraint,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
         no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of available IP address ranges, specified as IPv4 CIDR blocks.</p>")
    @as("ManagementCidrRanges")
    managementCidrRanges: option<dedicatedTenancyCidrRangeList>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "ListAvailableManagementCidrRangesCommand"
  let make = (~managementCidrRangeConstraint, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      managementCidrRangeConstraint: managementCidrRangeConstraint,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateIpGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The identifiers of one or more IP access control groups.</p>") @as("GroupIds")
    groupIds: ipGroupIdList,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DisassociateIpGroupsCommand"
  let make = (~groupIds, ~directoryId, ()) => new({groupIds: groupIds, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteTags = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
         registered directories, images, custom bundles, IP access control groups, and connection
         aliases.</p>")
    @as("ResourceId")
    resourceId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "DeleteTagsCommand"
  let make = (~tagKeys, ~resourceId, ()) => new({tagKeys: tagKeys, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteClientBranding = {
  type t
  type request = {
    @ocaml.doc("<p>The device type for which you want to delete client branding.</p>")
    @as("Platforms")
    platforms: clientDeviceTypeList,
    @ocaml.doc("<p>The directory identifier of the WorkSpace for which you want to delete client
         branding.</p>")
    @as("ResourceId")
    resourceId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DeleteClientBrandingCommand"
  let make = (~platforms, ~resourceId, ()) => new({platforms: platforms, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateIpGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The identifiers of one or more IP access control groups.</p>") @as("GroupIds")
    groupIds: ipGroupIdList,
    @ocaml.doc("<p>The identifier of the directory.</p>") @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "AssociateIpGroupsCommand"
  let make = (~groupIds, ~directoryId, ()) => new({groupIds: groupIds, directoryId: directoryId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRulesOfIpGroup = {
  type t
  type request = {
    @ocaml.doc("<p>One or more rules.</p>") @as("UserRules") userRules: ipRuleList,
    @ocaml.doc("<p>The identifier of the group.</p>") @as("GroupId") groupId: ipGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "UpdateRulesOfIpGroupCommand"
  let make = (~userRules, ~groupId, ()) => new({userRules: userRules, groupId: groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TerminateWorkspaces = {
  type t
  type request = {
    @ocaml.doc("<p>The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.</p>")
    @as("TerminateWorkspaceRequests")
    terminateWorkspaceRequests: terminateWorkspaceRequests,
  }
  type response = {
    @ocaml.doc("<p>Information about the WorkSpaces that could not be terminated.</p>")
    @as("FailedRequests")
    failedRequests: option<failedTerminateWorkspaceRequests>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "TerminateWorkspacesCommand"
  let make = (~terminateWorkspaceRequests, ()) =>
    new({terminateWorkspaceRequests: terminateWorkspaceRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopWorkspaces = {
  type t
  type request = {
    @ocaml.doc("<p>The WorkSpaces to stop. You can specify up to 25 WorkSpaces.</p>")
    @as("StopWorkspaceRequests")
    stopWorkspaceRequests: stopWorkspaceRequests,
  }
  type response = {
    @ocaml.doc("<p>Information about the WorkSpaces that could not be stopped.</p>")
    @as("FailedRequests")
    failedRequests: option<failedStopWorkspaceRequests>,
  }
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "StopWorkspacesCommand"
  let make = (~stopWorkspaceRequests, ()) => new({stopWorkspaceRequests: stopWorkspaceRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartWorkspaces = {
  type t
  type request = {
    @ocaml.doc("<p>The WorkSpaces to start. You can specify up to 25 WorkSpaces.</p>")
    @as("StartWorkspaceRequests")
    startWorkspaceRequests: startWorkspaceRequests,
  }
  type response = {
    @ocaml.doc("<p>Information about the WorkSpaces that could not be started.</p>")
    @as("FailedRequests")
    failedRequests: option<failedStartWorkspaceRequests>,
  }
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "StartWorkspacesCommand"
  let make = (~startWorkspaceRequests, ()) => new({startWorkspaceRequests: startWorkspaceRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterWorkspaceDirectory = {
  type t
  type request = {
    @ocaml.doc("<p>The tags associated with the directory.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>Indicates whether your WorkSpace directory is dedicated or shared. To use Bring Your Own
         License (BYOL) images, this value must be set to <code>DEDICATED</code> and your Amazon Web Services account must be enabled for BYOL. If your account has not been enabled for
         BYOL, you will receive an InvalidParameterValuesException error. For more information about
         BYOL images, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\">Bring Your Own Windows
            Desktop Images</a>.</p>")
    @as("Tenancy")
    tenancy: option<tenancy>,
    @ocaml.doc("<p>Indicates whether self-service capabilities are enabled or disabled.</p>")
    @as("EnableSelfService")
    enableSelfService: option<booleanObject>,
    @ocaml.doc("<p>Indicates whether Amazon WorkDocs is enabled or disabled. If you have enabled this
         parameter and WorkDocs is not available in the Region, you will receive an
         OperationNotSupportedException error. Set <code>EnableWorkDocs</code> to disabled, and try
         again.</p>")
    @as("EnableWorkDocs")
    enableWorkDocs: booleanObject,
    @ocaml.doc("<p>The identifiers of the subnets for your virtual private cloud (VPC). Make sure that the
         subnets are in supported Availability Zones. The subnets must also be in separate
         Availability Zones. If these conditions are not met, you will receive an
         OperationNotSupportedException error.</p>")
    @as("SubnetIds")
    subnetIds: option<subnetIds>,
    @ocaml.doc("<p>The identifier of the directory. You cannot register a directory if it does not have a
         status of Active. If the directory does not have a status of Active, you will receive an
         InvalidResourceStateException error. If you have already registered the maximum number of
         directories that you can register with Amazon WorkSpaces, you will receive a
         ResourceLimitExceededException error. Deregister directories that you are not using for
         WorkSpaces, and try again.</p>")
    @as("DirectoryId")
    directoryId: directoryId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "RegisterWorkspaceDirectoryCommand"
  let make = (
    ~enableWorkDocs,
    ~directoryId,
    ~tags=?,
    ~tenancy=?,
    ~enableSelfService=?,
    ~subnetIds=?,
    (),
  ) =>
    new({
      tags: tags,
      tenancy: tenancy,
      enableSelfService: enableSelfService,
      enableWorkDocs: enableWorkDocs,
      subnetIds: subnetIds,
      directoryId: directoryId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RebuildWorkspaces = {
  type t
  type request = {
    @ocaml.doc("<p>The WorkSpace to rebuild. You can specify a single WorkSpace.</p>")
    @as("RebuildWorkspaceRequests")
    rebuildWorkspaceRequests: rebuildWorkspaceRequests,
  }
  type response = {
    @ocaml.doc("<p>Information about the WorkSpace that could not be rebuilt.</p>")
    @as("FailedRequests")
    failedRequests: option<failedRebuildWorkspaceRequests>,
  }
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "RebuildWorkspacesCommand"
  let make = (~rebuildWorkspaceRequests, ()) =>
    new({rebuildWorkspaceRequests: rebuildWorkspaceRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootWorkspaces = {
  type t
  type request = {
    @ocaml.doc("<p>The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.</p>")
    @as("RebootWorkspaceRequests")
    rebootWorkspaceRequests: rebootWorkspaceRequests,
  }
  type response = {
    @ocaml.doc("<p>Information about the WorkSpaces that could not be rebooted.</p>")
    @as("FailedRequests")
    failedRequests: option<failedRebootWorkspaceRequests>,
  }
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "RebootWorkspacesCommand"
  let make = (~rebootWorkspaceRequests, ()) =>
    new({rebootWorkspaceRequests: rebootWorkspaceRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportWorkspaceImage = {
  type t
  type request = {
    @ocaml.doc("<p>If specified, the version of Microsoft Office to subscribe to. Valid only for Windows 10
         BYOL images. For more information about subscribing to Office for BYOL images, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\"> Bring
            Your Own Windows Desktop Licenses</a>.</p>
         <note>
            <p>Although this parameter is an array, only one item is allowed at this time.</p>
         </note>")
    @as("Applications")
    applications: option<applicationList>,
    @ocaml.doc("<p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The description of the WorkSpace image.</p>") @as("ImageDescription")
    imageDescription: workspaceImageDescription,
    @ocaml.doc("<p>The name of the WorkSpace image.</p>") @as("ImageName")
    imageName: workspaceImageName,
    @ocaml.doc("<p>The ingestion process to be used when importing the image, depending on which protocol
         you want to use for your BYOL Workspace image, either PCoIP or WorkSpaces Streaming
         Protocol (WSP). To use WSP, specify a value that ends in <code>_WSP</code>. To use PCoIP,
         specify a value that does not end in <code>_WSP</code>. </p>
         <p>For non-GPU-enabled bundles (bundles other than Graphics or GraphicsPro), specify
            <code>BYOL_REGULAR</code> or <code>BYOL_REGULAR_WSP</code>, depending on the
         protocol.</p>")
    @as("IngestionProcess")
    ingestionProcess: workspaceImageIngestionProcess,
    @ocaml.doc("<p>The identifier of the EC2 image.</p>") @as("Ec2ImageId") ec2ImageId: ec2ImageId,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the WorkSpace image.</p>") @as("ImageId")
    imageId: option<workspaceImageId>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "ImportWorkspaceImageCommand"
  let make = (
    ~imageDescription,
    ~imageName,
    ~ingestionProcess,
    ~ec2ImageId,
    ~applications=?,
    ~tags=?,
    (),
  ) =>
    new({
      applications: applications,
      tags: tags,
      imageDescription: imageDescription,
      imageName: imageName,
      ingestionProcess: ingestionProcess,
      ec2ImageId: ec2ImageId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportClientBranding = {
  type t
  type request = {
    @ocaml.doc("<p>The branding information to import for web access.</p>") @as("DeviceTypeWeb")
    deviceTypeWeb: option<defaultImportClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information to import for Linux devices.</p>")
    @as("DeviceTypeLinux")
    deviceTypeLinux: option<defaultImportClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information to import for iOS devices.</p>") @as("DeviceTypeIos")
    deviceTypeIos: option<iosImportClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information to import for Android devices.</p>")
    @as("DeviceTypeAndroid")
    deviceTypeAndroid: option<defaultImportClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information to import for macOS devices.</p>") @as("DeviceTypeOsx")
    deviceTypeOsx: option<defaultImportClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information to import for Windows devices.</p>")
    @as("DeviceTypeWindows")
    deviceTypeWindows: option<defaultImportClientBrandingAttributes>,
    @ocaml.doc("<p>The directory identifier of the WorkSpace for which you want to import client
         branding.</p>")
    @as("ResourceId")
    resourceId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>The branding information configured for web access.</p>") @as("DeviceTypeWeb")
    deviceTypeWeb: option<defaultClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information configured for Linux devices.</p>")
    @as("DeviceTypeLinux")
    deviceTypeLinux: option<defaultClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information configured for iOS devices.</p>") @as("DeviceTypeIos")
    deviceTypeIos: option<iosClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information configured for Android devices.</p>")
    @as("DeviceTypeAndroid")
    deviceTypeAndroid: option<defaultClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information configured for macOS devices.</p>") @as("DeviceTypeOsx")
    deviceTypeOsx: option<defaultClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information configured for Windows devices.</p>")
    @as("DeviceTypeWindows")
    deviceTypeWindows: option<defaultClientBrandingAttributes>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "ImportClientBrandingCommand"
  let make = (
    ~resourceId,
    ~deviceTypeWeb=?,
    ~deviceTypeLinux=?,
    ~deviceTypeIos=?,
    ~deviceTypeAndroid=?,
    ~deviceTypeOsx=?,
    ~deviceTypeWindows=?,
    (),
  ) =>
    new({
      deviceTypeWeb: deviceTypeWeb,
      deviceTypeLinux: deviceTypeLinux,
      deviceTypeIos: deviceTypeIos,
      deviceTypeAndroid: deviceTypeAndroid,
      deviceTypeOsx: deviceTypeOsx,
      deviceTypeWindows: deviceTypeWindows,
      resourceId: resourceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkspacesConnectionStatus = {
  type t
  type request = {
    @ocaml.doc("<p>If you received a <code>NextToken</code> from a previous call that was paginated,
         provide this token to receive the next set of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.</p>")
    @as("WorkspaceIds")
    workspaceIds: option<workspaceIdList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
         no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the connection status of the WorkSpace.</p>")
    @as("WorkspacesConnectionStatus")
    workspacesConnectionStatus: option<workspaceConnectionStatusList>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeWorkspacesConnectionStatusCommand"
  let make = (~nextToken=?, ~workspaceIds=?, ()) =>
    new({nextToken: nextToken, workspaceIds: workspaceIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkspaceSnapshots = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the WorkSpace.</p>") @as("WorkspaceId")
    workspaceId: workspaceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the snapshots that can be used to restore a WorkSpace. These snapshots
         include both the root volume and the user volume.</p>")
    @as("RestoreSnapshots")
    restoreSnapshots: option<snapshotList>,
    @ocaml.doc("<p>Information about the snapshots that can be used to rebuild a WorkSpace. These snapshots
         include the user volume.</p>")
    @as("RebuildSnapshots")
    rebuildSnapshots: option<snapshotList>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeWorkspaceSnapshotsCommand"
  let make = (~workspaceId, ()) => new({workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkspaceImagePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("MaxResults")
    maxResults: option<limit>,
    @ocaml.doc("<p>If you received a <code>NextToken</code> from a previous call that was paginated,
         provide this token to receive the next set of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The identifier of the image.</p>") @as("ImageId") imageId: workspaceImageId,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
         no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The identifiers of the Amazon Web Services accounts that the image has been shared
         with.</p>")
    @as("ImagePermissions")
    imagePermissions: option<imagePermissions>,
    @ocaml.doc("<p>The identifier of the image.</p>") @as("ImageId")
    imageId: option<workspaceImageId>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeWorkspaceImagePermissionsCommand"
  let make = (~imageId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, imageId: imageId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTags = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
         registered directories, images, custom bundles, IP access control groups, and connection
         aliases.</p>")
    @as("ResourceId")
    resourceId: nonEmptyString,
  }
  type response = {@ocaml.doc("<p>The tags.</p>") @as("TagList") tagList_: option<tagList_>}
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "DescribeTagsCommand"
  let make = (~resourceId, ()) => new({resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConnectionAliasPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<limit>,
    @ocaml.doc("<p>If you received a <code>NextToken</code> from a previous call that was paginated,
         provide this token to receive the next set of results. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The identifier of the connection alias.</p>") @as("AliasId")
    aliasId: connectionAliasId,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
         no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The permissions associated with a connection alias.</p>")
    @as("ConnectionAliasPermissions")
    connectionAliasPermissions: option<connectionAliasPermissions>,
    @ocaml.doc("<p>The identifier of the connection alias.</p>") @as("AliasId")
    aliasId: option<connectionAliasId>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeConnectionAliasPermissionsCommand"
  let make = (~aliasId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, aliasId: aliasId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConnectClientAddIns = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("MaxResults")
    maxResults: option<limit>,
    @ocaml.doc("<p>If you received a <code>NextToken</code> from a previous call that was paginated,
         provide this token to receive the next set of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The directory identifier for which the client add-in is configured.</p>")
    @as("ResourceId")
    resourceId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
         no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about client add-ins.</p>") @as("AddIns")
    addIns: option<connectClientAddInList>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeConnectClientAddInsCommand"
  let make = (~resourceId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClientBranding = {
  type t
  type request = {
    @ocaml.doc("<p>The directory identifier of the WorkSpace for which you want to view client branding
         information.</p>")
    @as("ResourceId")
    resourceId: directoryId,
  }
  type response = {
    @ocaml.doc("<p>The branding information for Web access.</p>") @as("DeviceTypeWeb")
    deviceTypeWeb: option<defaultClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information for Linux devices.</p>") @as("DeviceTypeLinux")
    deviceTypeLinux: option<defaultClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information for iOS devices.</p>") @as("DeviceTypeIos")
    deviceTypeIos: option<iosClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information for Android devices.</p>") @as("DeviceTypeAndroid")
    deviceTypeAndroid: option<defaultClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information for macOS devices.</p>") @as("DeviceTypeOsx")
    deviceTypeOsx: option<defaultClientBrandingAttributes>,
    @ocaml.doc("<p>The branding information for Windows devices.</p>") @as("DeviceTypeWindows")
    deviceTypeWindows: option<defaultClientBrandingAttributes>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeClientBrandingCommand"
  let make = (~resourceId, ()) => new({resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountModifications = {
  type t
  type request = {
    @ocaml.doc("<p>If you received a <code>NextToken</code> from a previous call that was paginated,
         provide this token to receive the next set of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
         no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of modifications to the configuration of BYOL.</p>")
    @as("AccountModifications")
    accountModifications: option<accountModificationList>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeAccountModificationsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkspaceBundle = {
  type t
  type request = {
    @ocaml.doc("<p>The tags associated with the bundle.</p>
      
         <note>
            <p>To add tags at the same time when you're creating the bundle, you must create an IAM policy that 
            grants your IAM user permissions to use <code>workspaces:CreateTags</code>. </p>
         </note>")
    @as("Tags")
    tags: option<tagList_>,
    @as("RootStorage") rootStorage: option<rootStorage>,
    @as("UserStorage") userStorage: userStorage,
    @as("ComputeType") computeType: computeType,
    @ocaml.doc("<p>The identifier of the image that is used to create the bundle.</p>")
    @as("ImageId")
    imageId: workspaceImageId,
    @ocaml.doc("<p>The description of the bundle.</p>") @as("BundleDescription")
    bundleDescription: workspaceBundleDescription,
    @ocaml.doc("<p>The name of the bundle.</p>") @as("BundleName") bundleName: workspaceBundleName,
  }
  type response = {@as("WorkspaceBundle") workspaceBundle: option<workspaceBundle>}
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "CreateWorkspaceBundleCommand"
  let make = (
    ~userStorage,
    ~computeType,
    ~imageId,
    ~bundleDescription,
    ~bundleName,
    ~tags=?,
    ~rootStorage=?,
    (),
  ) =>
    new({
      tags: tags,
      rootStorage: rootStorage,
      userStorage: userStorage,
      computeType: computeType,
      imageId: imageId,
      bundleDescription: bundleDescription,
      bundleName: bundleName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUpdatedWorkspaceImage = {
  type t
  type request = {
    @ocaml.doc("<p>The tags that you want to add to the new updated WorkSpace image.</p>
         <note>
            <p>To add tags at the same time when you're creating the updated image, you must create
            an IAM policy that grants your IAM user permissions to use
               <code>workspaces:CreateTags</code>. </p>
         </note>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The identifier of the source WorkSpace image.</p>") @as("SourceImageId")
    sourceImageId: workspaceImageId,
    @ocaml.doc("<p>A description of whether updates for the WorkSpace image are available.</p>")
    @as("Description")
    description: workspaceImageDescription,
    @ocaml.doc("<p>The name of the new updated WorkSpace image.</p>") @as("Name")
    name: workspaceImageName,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the new updated WorkSpace image.</p>") @as("ImageId")
    imageId: option<workspaceImageId>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "CreateUpdatedWorkspaceImageCommand"
  let make = (~sourceImageId, ~description, ~name, ~tags=?, ()) =>
    new({tags: tags, sourceImageId: sourceImageId, description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTags = {
  type t
  type request = {
    @ocaml.doc("<p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
         registered directories, images, custom bundles, IP access control groups, and connection
         aliases.</p>")
    @as("ResourceId")
    resourceId: nonEmptyString,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "CreateTagsCommand"
  let make = (~tags, ~resourceId, ()) => new({tags: tags, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateIpGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The rules to add to the group.</p>") @as("UserRules")
    userRules: option<ipRuleList>,
    @ocaml.doc("<p>The description of the group.</p>") @as("GroupDesc")
    groupDesc: option<ipGroupDesc>,
    @ocaml.doc("<p>The name of the group.</p>") @as("GroupName") groupName: ipGroupName,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the group.</p>") @as("GroupId") groupId: option<ipGroupId>,
  }
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "CreateIpGroupCommand"
  let make = (~groupName, ~tags=?, ~userRules=?, ~groupDesc=?, ()) =>
    new({tags: tags, userRules: userRules, groupDesc: groupDesc, groupName: groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConnectionAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to associate with the connection alias.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A connection string in the form of a fully qualified domain name (FQDN), such as
            <code>www.example.com</code>.</p>
         <important>
            <p>After you create a connection string, it is always associated to your Amazon Web Services account. You cannot recreate the same connection string with a different
            account, even if you delete all instances of it from the original account. The
            connection string is globally reserved for your account.</p>
         </important>")
    @as("ConnectionString")
    connectionString: connectionString,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the connection alias.</p>") @as("AliasId")
    aliasId: option<connectionAliasId>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "CreateConnectionAliasCommand"
  let make = (~connectionString, ~tags=?, ()) =>
    new({tags: tags, connectionString: connectionString})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyWorkspaceImage = {
  type t
  type request = {
    @ocaml.doc("<p>The tags for the image.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The identifier of the source Region.</p>") @as("SourceRegion")
    sourceRegion: region,
    @ocaml.doc("<p>The identifier of the source image.</p>") @as("SourceImageId")
    sourceImageId: workspaceImageId,
    @ocaml.doc("<p>A description of the image.</p>") @as("Description")
    description: option<workspaceImageDescription>,
    @ocaml.doc("<p>The name of the image.</p>") @as("Name") name: workspaceImageName,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the image.</p>") @as("ImageId")
    imageId: option<workspaceImageId>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "CopyWorkspaceImageCommand"
  let make = (~sourceRegion, ~sourceImageId, ~name, ~tags=?, ~description=?, ()) =>
    new({
      tags: tags,
      sourceRegion: sourceRegion,
      sourceImageId: sourceImageId,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeIpRules = {
  type t
  type request = {
    @ocaml.doc("<p>The rules to add to the group.</p>") @as("UserRules") userRules: ipRuleList,
    @ocaml.doc("<p>The identifier of the group.</p>") @as("GroupId") groupId: ipGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "AuthorizeIpRulesCommand"
  let make = (~userRules, ~groupId, ()) => new({userRules: userRules, groupId: groupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeWorkspaceImages = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("MaxResults")
    maxResults: option<limit>,
    @ocaml.doc("<p>If you received a <code>NextToken</code> from a previous call that was paginated,
         provide this token to receive the next set of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The type (owned or shared) of the image.</p>") @as("ImageType")
    imageType: option<imageType>,
    @ocaml.doc("<p>The identifier of the image.</p>") @as("ImageIds")
    imageIds: option<workspaceImageIdList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
         no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the images.</p>") @as("Images")
    images: option<workspaceImageList>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeWorkspaceImagesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~imageType=?, ~imageIds=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, imageType: imageType, imageIds: imageIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkspaceDirectories = {
  type t
  type request = {
    @ocaml.doc("<p>If you received a <code>NextToken</code> from a previous call that was paginated,
         provide this token to receive the next set of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of directories to return.</p>") @as("Limit")
    limit: option<limit>,
    @ocaml.doc("<p>The identifiers of the directories. If the value is null, all directories are
         retrieved.</p>")
    @as("DirectoryIds")
    directoryIds: option<directoryIdList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
         no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the directories.</p>") @as("Directories")
    directories: option<directoryList>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeWorkspaceDirectoriesCommand"
  let make = (~nextToken=?, ~limit=?, ~directoryIds=?, ()) =>
    new({nextToken: nextToken, limit: limit, directoryIds: directoryIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkspaceBundles = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the next set of results. (You received this token from a previous call.)</p>"
    )
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The owner of the bundles. You cannot combine this parameter with any other filter.</p>
         <p>To describe the bundles provided by Amazon Web Services, specify <code>AMAZON</code>. 
         To describe the bundles that belong to your account, don't specify a value.</p>")
    @as("Owner")
    owner: option<bundleOwner>,
    @ocaml.doc(
      "<p>The identifiers of the bundles. You cannot combine this parameter with any other filter.</p>"
    )
    @as("BundleIds")
    bundleIds: option<bundleIdList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are no more 
         results to return. This token is valid for one day and must be used within that time
         frame.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the bundles.</p>") @as("Bundles") bundles: option<bundleList>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeWorkspaceBundlesCommand"
  let make = (~nextToken=?, ~owner=?, ~bundleIds=?, ()) =>
    new({nextToken: nextToken, owner: owner, bundleIds: bundleIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClientProperties = {
  type t
  type request = {
    @ocaml.doc("<p>The resource identifier, in the form of directory IDs.</p>") @as("ResourceIds")
    resourceIds: resourceIdList,
  }
  type response = {
    @ocaml.doc("<p>Information about the specified Amazon WorkSpaces clients.</p>")
    @as("ClientPropertiesList")
    clientPropertiesList: option<clientPropertiesList>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeClientPropertiesCommand"
  let make = (~resourceIds, ()) => new({resourceIds: resourceIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkspaces = {
  type t
  type request = {
    @ocaml.doc("<p>If you received a <code>NextToken</code> from a previous call that was paginated,
         provide this token to receive the next set of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("Limit") limit: option<limit>,
    @ocaml.doc("<p>The identifier of the bundle. All WorkSpaces that are created from this bundle are
         retrieved. You cannot combine this parameter with any other filter.</p>")
    @as("BundleId")
    bundleId: option<bundleId>,
    @ocaml.doc("<p>The name of the directory user. You must specify this parameter with
            <code>DirectoryId</code>.</p>")
    @as("UserName")
    userName: option<userName>,
    @ocaml.doc("<p>The identifier of the directory. In addition, you can optionally specify a specific
         directory user (see <code>UserName</code>). You cannot combine this parameter with any
         other filter.</p>")
    @as("DirectoryId")
    directoryId: option<directoryId>,
    @ocaml.doc("<p>The identifiers of the WorkSpaces. You cannot combine this parameter with any other
         filter.</p>
         <p>Because the <a>CreateWorkspaces</a> operation is asynchronous, the identifier
         it returns is not immediately available. If you immediately call <a>DescribeWorkspaces</a> with this identifier, no information is returned.</p>")
    @as("WorkspaceIds")
    workspaceIds: option<workspaceIdList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
         no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the WorkSpaces.</p>
         <p>Because <a>CreateWorkspaces</a> is an asynchronous operation, some of the
         returned information could be incomplete.</p>")
    @as("Workspaces")
    workspaces: option<workspaceList>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeWorkspacesCommand"
  let make = (
    ~nextToken=?,
    ~limit=?,
    ~bundleId=?,
    ~userName=?,
    ~directoryId=?,
    ~workspaceIds=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      limit: limit,
      bundleId: bundleId,
      userName: userName,
      directoryId: directoryId,
      workspaceIds: workspaceIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIpGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("MaxResults")
    maxResults: option<limit>,
    @ocaml.doc("<p>If you received a <code>NextToken</code> from a previous call that was paginated,
         provide this token to receive the next set of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The identifiers of one or more IP access control groups.</p>") @as("GroupIds")
    groupIds: option<ipGroupIdList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
         no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the IP access control groups.</p>") @as("Result")
    result: option<workspacesIpGroupsList>,
  }
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "DescribeIpGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~groupIds=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, groupIds: groupIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConnectionAliases = {
  type t
  type request = {
    @ocaml.doc("<p>If you received a <code>NextToken</code> from a previous call that was paginated,
         provide this token to receive the next set of results. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of connection aliases to return.</p>") @as("Limit")
    limit: option<limit>,
    @ocaml.doc("<p>The identifier of the directory associated with the connection alias.</p>")
    @as("ResourceId")
    resourceId: option<nonEmptyString>,
    @ocaml.doc("<p>The identifiers of the connection aliases to describe.</p>") @as("AliasIds")
    aliasIds: option<connectionAliasIdList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there are
         no more results to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the specified connection aliases.</p>")
    @as("ConnectionAliases")
    connectionAliases: option<connectionAliasList>,
  }
  @module("@aws-sdk/client-workspaces") @new
  external new: request => t = "DescribeConnectionAliasesCommand"
  let make = (~nextToken=?, ~limit=?, ~resourceId=?, ~aliasIds=?, ()) =>
    new({nextToken: nextToken, limit: limit, resourceId: resourceId, aliasIds: aliasIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkspaces = {
  type t
  type request = {
    @ocaml.doc("<p>The WorkSpaces to create. You can specify up to 25 WorkSpaces.</p>")
    @as("Workspaces")
    workspaces: workspaceRequestList,
  }
  type response = {
    @ocaml.doc("<p>Information about the WorkSpaces that were created.</p>
         <p>Because this operation is asynchronous, the identifier returned is not immediately
         available for use with other operations. For example, if you call <a>DescribeWorkspaces</a> before the WorkSpace is created, the information returned
         can be incomplete.</p>")
    @as("PendingRequests")
    pendingRequests: option<workspaceList>,
    @ocaml.doc("<p>Information about the WorkSpaces that could not be created.</p>")
    @as("FailedRequests")
    failedRequests: option<failedCreateWorkspaceRequests>,
  }
  @module("@aws-sdk/client-workspaces") @new external new: request => t = "CreateWorkspacesCommand"
  let make = (~workspaces, ()) => new({workspaces: workspaces})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
