type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-grafana") @new
external createClient: unit => awsServiceClient = "AWSGrafanaControlPlaneClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workspaceStatus = [
  | @as("LICENSE_REMOVAL_FAILED") #LICENSE_REMOVAL_FAILED
  | @as("UPGRADE_FAILED") #UPGRADE_FAILED
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("CREATION_FAILED") #CREATION_FAILED
  | @as("DELETION_FAILED") #DELETION_FAILED
  | @as("UPGRADING") #UPGRADING
  | @as("UPDATING") #UPDATING
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("ACTIVE") #ACTIVE
]
type workspaceName = string
type workspaceId = string

type validationExceptionReason = [
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
  | @as("CANNOT_PARSE") #CANNOT_PARSE
  | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION
]
@ocaml.doc(
  "<p>A structure that contains information about a request parameter that caused an error.</p>"
)
type validationExceptionField = {
  @ocaml.doc("<p>A message describing why this field couldn't be validated.</p>")
  message: baseString,
  @ocaml.doc("<p>The name of the field that caused the validation error.</p>") name: baseString,
}
type userType = [@as("SSO_GROUP") #SSO_GROUP | @as("SSO_USER") #SSO_USER]
type updateAction = [@as("REVOKE") #REVOKE | @as("ADD") #ADD]
type tagValue = string
type tagKey = string
type stackSetName = string
type ssoId = string
type samlConfigurationStatus = [
  | @as("NOT_CONFIGURED") #NOT_CONFIGURED
  | @as("CONFIGURED") #CONFIGURED
]
type ssoclientId = string
type roleValue = string
type role = [@as("EDITOR") #EDITOR | @as("ADMIN") #ADMIN]
type permissionType = [
  | @as("SERVICE_MANAGED") #SERVICE_MANAGED
  | @as("CUSTOMER_MANAGED") #CUSTOMER_MANAGED
]

type paginationToken = string
type organizationalUnit = string
type organizationRoleName = string
type notificationDestinationType = [@as("SNS") #SNS]
type loginValidityDuration = int
type licenseType = [
  | @as("ENTERPRISE_FREE_TRIAL") #ENTERPRISE_FREE_TRIAL
  | @as("ENTERPRISE") #ENTERPRISE
]

type idpMetadataUrl = string
type iamRoleArn = string
type grafanaVersion = string
type endpoint = string
type description = string
type dataSourceType = [
  | @as("REDSHIFT") #REDSHIFT
  | @as("ATHENA") #ATHENA
  | @as("SITEWISE") #SITEWISE
  | @as("TIMESTREAM") #TIMESTREAM
  | @as("XRAY") #XRAY
  | @as("PROMETHEUS") #PROMETHEUS
  | @as("CLOUDWATCH") #CLOUDWATCH
  | @as("AMAZON_OPENSEARCH_SERVICE") #AMAZON_OPENSEARCH_SERVICE
]
type clientToken = string
type authenticationProviderTypes = [@as("SAML") #SAML | @as("AWS_SSO") #AWS_SSO]

type assertionAttribute = string
type allowedOrganization = string
type accountAccessType = [
  | @as("ORGANIZATION") #ORGANIZATION
  | @as("CURRENT_ACCOUNT") #CURRENT_ACCOUNT
]
type validationExceptionFieldList = array<validationExceptionField>
@ocaml.doc("<p>A structure that specifies one user or group in the workspace.</p>")
type user = {
  @ocaml.doc("<p>Specifies whether this is a single user or a group.</p>") @as("type")
  type_: userType,
  @ocaml.doc("<p>The ID of the user or group.</p>
         <p>Pattern: <code>^([0-9a-fA-F]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$</code>
         </p>")
  id: ssoId,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
type roleValueList = array<roleValue>
type organizationalUnitList = array<organizationalUnit>
type notificationDestinationsList = array<notificationDestinationType>
@ocaml.doc("<p>A structure containing the identity provider (IdP) metadata used to integrate the
         identity provider with this workspace. You can specify the metadata either by providing a
         URL to its location in the <code>url</code> parameter, or by specifying the full metadata
         in XML format in the <code>xml</code> parameter.</p>")
type idpMetadata = {
  @ocaml.doc("<p>The actual full metadata file, in XML format.</p>") xml: option<baseString>,
  @ocaml.doc("<p>The URL of the location containing the metadata.</p>") url: option<idpMetadataUrl>,
}
module IdpMetadata = {
  type t = Xml(baseString) | Url(idpMetadataUrl)
  exception IdpMetadataUnspecified
  let classify = value =>
    switch value {
    | {xml: Some(x)} => Xml(x)
    | {url: Some(x)} => Url(x)
    | _ => raise(IdpMetadataUnspecified)
    }

  let make = value =>
    switch value {
    | Xml(x) => {xml: Some(x), url: None}
    | Url(x) => {url: Some(x), xml: None}
    }
}
type dataSourceTypesList = array<dataSourceType>
@ocaml.doc("<p>A structure containing information about how this workspace works with 
      Amazon Web Services SSO. </p>")
type awsSsoAuthentication = {
  @ocaml.doc(
    "<p>The ID of the Amazon Web Services SSO-managed application that is created by Amazon Managed Grafana.</p>"
  )
  ssoClientId: option<ssoclientId>,
}
type authenticationProviders = array<authenticationProviderTypes>
@ocaml.doc("<p>A structure that defines which attributes in the IdP assertion are to be used to define
         information about the users authenticated by the IdP to use the workspace.</p>")
type assertionAttributes = {
  @ocaml.doc(
    "<p>The name of the attribute within the SAML assertion to use as the user full \"friendly\" names for the users' organizations.</p>"
  )
  org: option<assertionAttribute>,
  @ocaml.doc("<p>The name of the attribute within the SAML assertion to use as the user roles.</p>")
  role: option<assertionAttribute>,
  @ocaml.doc(
    "<p>The name of the attribute within the SAML assertion to use as the user full \"friendly\" names for user groups.</p>"
  )
  groups: option<assertionAttribute>,
  @ocaml.doc(
    "<p>The name of the attribute within the SAML assertion to use as the email names for SAML users.</p>"
  )
  email: option<assertionAttribute>,
  @ocaml.doc(
    "<p>The name of the attribute within the SAML assertion to use as the login names for SAML users.</p>"
  )
  login: option<assertionAttribute>,
  @ocaml.doc(
    "<p>The name of the attribute within the SAML assertion to use as the user full \"friendly\" names for SAML users.</p>"
  )
  name: option<assertionAttribute>,
}
type allowedOrganizations = array<allowedOrganization>
type userList = array<user>
@ocaml.doc("<p>This structure defines which groups defined in the SAML assertion attribute are to be mapped 
      to the Grafana <code>Admin</code> and <code>Editor</code> roles in the workspace.</p>")
type roleValues = {
  @ocaml.doc("<p>A list of groups from the SAML assertion attribute to grant the Grafana
            <code>Admin</code> role to.</p>")
  admin: option<roleValueList>,
  @ocaml.doc("<p>A list of groups from the SAML assertion attribute to grant the Grafana
            <code>Editor</code> role to.</p>")
  editor: option<roleValueList>,
}
@ocaml.doc("<p>A structure containing the identity of one user or group and the <code>Admin</code>
      or <code>Editor</code> role that they have.</p>")
type permissionEntry = {
  @ocaml.doc("<p>Specifies whether the user or group has the <code>Admin</code>
         or <code>Editor</code> role.</p>")
  role: role,
  @ocaml.doc("<p>A structure with the ID of the user or group with this role.</p>") user: user,
}
@ocaml.doc("<p>A structure that describes whether the workspace uses SAML, Amazon Web Services SSO, or both methods
         for user authentication, and whether that authentication is fully configured.</p>")
type authenticationSummary = {
  @ocaml.doc(
    "<p>Specifies whether the workplace's user authentication method is fully configured.</p>"
  )
  samlConfigurationStatus: option<samlConfigurationStatus>,
  @ocaml.doc("<p>Specifies whether the workspace uses SAML, Amazon Web Services SSO, or both methods for user
         authentication.</p>")
  providers: authenticationProviders,
}
@ocaml.doc("<p>A structure that contains some information about one workspace in the account.</p>")
type workspaceSummary = {
  @ocaml.doc("<p>The list of tags associated with the workspace.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>A structure containing information about the authentication methods used in 
         the workspace.</p>")
  authentication: authenticationSummary,
  @ocaml.doc("<p>The current status of the workspace.</p>") status: workspaceStatus,
  @ocaml.doc("<p>The Amazon Web Services notification channels that Amazon Managed Grafana can automatically
         create IAM roles and permissions for, which allows Amazon Managed Grafana to use
         these channels.</p>")
  notificationDestinations: option<notificationDestinationsList>,
  @ocaml.doc("<p>The name of the workspace.</p>") name: option<workspaceName>,
  @ocaml.doc("<p>The most recent date that the workspace was modified.</p>")
  modified: baseTimestamp,
  @ocaml.doc("<p>The unique ID of the workspace.</p>") id: workspaceId,
  @ocaml.doc("<p>The Grafana version that the workspace is running.</p>")
  grafanaVersion: grafanaVersion,
  @ocaml.doc("<p>The URL endpoint to use to access the Grafana console in the workspace.</p>")
  endpoint: endpoint,
  @ocaml.doc("<p>The customer-entered description of the workspace.</p>")
  description: option<description>,
  @ocaml.doc("<p>The date that the workspace was created.</p>") created: baseTimestamp,
}
@ocaml.doc(
  "<p>A structure containing information about an Amazon Managed Grafana workspace in your account.</p>"
)
type workspaceDescription = {
  @ocaml.doc("<p>The list of tags associated with the workspace.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>A structure that describes whether the workspace uses SAML, Amazon Web Services SSO, or both methods
      for user authentication.</p>")
  authentication: authenticationSummary,
  @ocaml.doc("<p>If this workspace is currently in the free trial period for Grafana Enterprise, this value specifies
      when that free trial ends.</p>")
  freeTrialExpiration: option<baseTimestamp>,
  @ocaml.doc("<p>If this workspace has a full Grafana Enterprise license, this specifies when the license ends and
      will need to be renewed.</p>")
  licenseExpiration: option<baseTimestamp>,
  @ocaml.doc(
    "<p>Specifies whether this workspace has already fully used its free trial for Grafana Enterprise.</p>"
  )
  freeTrialConsumed: option<baseBoolean>,
  @ocaml.doc(
    "<p>Specifies whether this workspace has a full Grafana Enterprise license or a free trial license.</p>"
  )
  licenseType: option<licenseType>,
  @ocaml.doc("<p>The IAM role that grants permissions to the Amazon Web Services resources that the 
         workspace will view data from. This role must already exist.</p>")
  workspaceRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The current status of the workspace.</p>") status: workspaceStatus,
  @ocaml.doc("<p>The name of the CloudFormation stack set that is used to generate IAM roles
         to be used for this workspace.</p>")
  stackSetName: option<stackSetName>,
  @ocaml.doc("<p>If this is <code>Service Managed</code>, Amazon Managed Grafana automatically creates the IAM roles 
         and provisions the permissions that the workspace needs to use Amazon Web Services data sources and notification channels.</p>
         <p>If this is <code>CUSTOMER_MANAGED</code>, you manage those roles and permissions
         yourself. If you are creating this workspace in a member account of an organization and that account is not a
         delegated administrator account, and
         you want the workspace to access data sources in other Amazon Web Services accounts in the
         organization, you must choose <code>CUSTOMER_MANAGED</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html\">Amazon Managed Grafana permissions and policies for
         Amazon Web Services data sources and notification channels</a>
         </p>")
  permissionType: option<permissionType>,
  @ocaml.doc("<p>Specifies the organizational units that this workspace is allowed to use data sources
         from, if this workspace is in an account that is part of an organization.</p>")
  organizationalUnits: option<organizationalUnitList>,
  @ocaml.doc("<p>The Amazon Web Services notification channels that Amazon Managed Grafana can automatically create IAM 
         roles and permissions for, to allow 
         Amazon Managed Grafana to use these channels.</p>")
  notificationDestinations: option<notificationDestinationsList>,
  @ocaml.doc(
    "<p>The name of the IAM role that is used to access resources through Organizations.</p>"
  )
  organizationRoleName: option<organizationRoleName>,
  @ocaml.doc("<p>The name of the workspace.</p>") name: option<workspaceName>,
  @ocaml.doc("<p>The most recent date that the workspace was modified.</p>")
  modified: baseTimestamp,
  @ocaml.doc("<p>The unique ID of this workspace.</p>") id: workspaceId,
  @ocaml.doc("<p>The version of Grafana supported in this workspace.</p>")
  grafanaVersion: grafanaVersion,
  @ocaml.doc("<p>The URL that users can use to access the Grafana console in the workspace.</p>")
  endpoint: endpoint,
  @ocaml.doc("<p>The user-defined description of the workspace.</p>")
  description: option<description>,
  @ocaml.doc("<p>Specifies the Amazon Web Services data sources that have been configured to have IAM 
         roles and permissions created to allow 
         Amazon Managed Grafana to read data from these sources.</p>")
  dataSources: dataSourceTypesList,
  @ocaml.doc("<p>The date that the workspace was created.</p>") created: baseTimestamp,
  @ocaml.doc("<p>Specifies whether the workspace can access Amazon Web Services resources in this Amazon Web Services account only, or whether it can also access Amazon Web Services resources in
         other accounts in the same organization. If this is <code>ORGANIZATION</code>, the
            <code>workspaceOrganizationalUnits</code> parameter specifies which organizational units
         the workspace can access.</p>")
  accountAccessType: option<accountAccessType>,
}
@ocaml.doc("<p>Contains the instructions for one Grafana role permission update in a
         <a href=\"https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html\">UpdatePermissions</a> operation.</p>")
type updateInstruction = {
  @ocaml.doc("<p>A structure that specifies the user or group to add or revoke the role for.</p>")
  users: userList,
  @ocaml.doc(
    "<p>The role to add or revoke for the user or the group specified in <code>users</code>.</p>"
  )
  role: role,
  @ocaml.doc("<p>Specifies whether this update is to add or revoke role permissions.</p>")
  action: updateAction,
}
@ocaml.doc("<p>A structure containing information about how this workspace works with 
         SAML. </p>")
type samlConfiguration = {
  @ocaml.doc("<p>How long a sign-on session by a SAML user is valid, before the user has to sign on
         again.</p>")
  loginValidityDuration: option<loginValidityDuration>,
  @ocaml.doc("<p>Lists which organizations defined in the SAML assertion are allowed to use the Amazon Managed Grafana workspace.
      If this is empty, all organizations in the assertion attribute have access.</p>")
  allowedOrganizations: option<allowedOrganizations>,
  @ocaml.doc("<p>A structure containing arrays that map group names in the SAML assertion to the 
      Grafana <code>Admin</code> and <code>Editor</code> roles in the workspace.</p>")
  roleValues: option<roleValues>,
  @ocaml.doc("<p>A structure that defines which attributes in the SAML assertion are to be used to define information about
      the users authenticated by that IdP to use the workspace.</p>")
  assertionAttributes: option<assertionAttributes>,
  @ocaml.doc("<p>A structure containing the identity provider (IdP) metadata used to integrate the
         identity provider with this workspace.</p>")
  idpMetadata: idpMetadata,
}
type permissionEntryList = array<permissionEntry>
type workspaceList = array<workspaceSummary>
type updateInstructionBatch = array<updateInstruction>
@ocaml.doc("<p>A structure containing information about one error encountered while performing an
            <a href=\"https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html\">UpdatePermissions</a> operation.</p>")
type updateError = {
  @ocaml.doc("<p>Specifies which permission update caused the error.</p>")
  causedBy: updateInstruction,
  @ocaml.doc("<p>The message for this error.</p>") message: baseString,
  @ocaml.doc("<p>The error code.</p>") code: baseInteger,
}
@ocaml.doc("<p>A structure containing information about how this workspace works with 
         SAML. </p>")
type samlAuthentication = {
  @ocaml.doc("<p>A structure containing details about how this workspace works with 
         SAML. </p>")
  configuration: option<samlConfiguration>,
  @ocaml.doc("<p>Specifies whether the workspace's SAML configuration is complete.</p>")
  status: samlConfigurationStatus,
}
@ocaml.doc("<p>Amazon Managed Grafana is a fully managed and secure data visualization service that you can use to 
       instantly query, correlate, and visualize operational metrics, logs, and traces from multiple sources. 
       Amazon Managed Grafana makes it easy to deploy, operate, and scale Grafana, a widely deployed data visualization tool 
       that is popular for its extensible data support.</p>
         <p>With Amazon Managed Grafana, you create logically isolated Grafana servers called <i>workspaces</i>. In
        a workspace,  you can create  Grafana dashboards and visualizations to analyze your metrics, logs, and traces without having to
       build, package, or deploy any hardware to run Grafana servers.  </p>")
type updateErrorList = array<updateError>
@ocaml.doc(
  "<p>A structure containing information about the user authentication methods used by the workspace.</p>"
)
type authenticationDescription = {
  @ocaml.doc("<p>A structure containing information about how this workspace works with 
         Amazon Web Services SSO. </p>")
  awsSso: option<awsSsoAuthentication>,
  @ocaml.doc("<p>A structure containing information about how this workspace works with 
        SAML, including what attributes within the assertion are to be mapped to user information in the workspace. </p>")
  saml: option<samlAuthentication>,
  @ocaml.doc("<p>Specifies whether this workspace uses Amazon Web Services SSO, SAML, or both methods to authenticate
         users to use the Grafana console in the Amazon Managed Grafana workspace.</p>")
  providers: authenticationProviders,
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The key values of the tag to be removed from the resource.</p>")
    tagKeys: tagKeys,
    @ocaml.doc("<p>The ARN of the resource the tag association is removed from.  </p>")
    resourceArn: baseString,
  }
  type response = {.}
  @module("@aws-sdk/client-grafana") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys and values to associate with the resource.  You can associate tag keys only, tags (key and values) only
      or a combination of tag keys and tags.</p>")
    tags: tagMap,
    @ocaml.doc("<p>The ARN of the resource the tag is associated with.</p>")
    resourceArn: baseString,
  }
  type response = {.}
  @module("@aws-sdk/client-grafana") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource the list of tags are associated with.</p>")
    resourceArn: baseString,
  }
  type response = {
    @ocaml.doc("<p>The list of tags that are associated with the resource.</p>")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-grafana") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWorkspace = {
  type t
  type request = {
    @ocaml.doc("<p>The workspace needs an IAM role that grants permissions to the Amazon Web Services resources that the 
         workspace will view data from. If you already have a role that you want to use, specify it here. If you omit
         this field and you specify some Amazon Web Services resources in <code>workspaceDataSources</code> or
         <code>workspaceNotificationDestinations</code>, a new IAM role with the necessary permissions is 
         automatically created.</p>")
    workspaceRoleArn: option<iamRoleArn>,
    @ocaml.doc("<p>Specifies the organizational units that this workspace is allowed to use data sources
         from, if this workspace is in an account that is part of an organization.</p>")
    workspaceOrganizationalUnits: option<organizationalUnitList>,
    @ocaml.doc("<p>Specify the Amazon Web Services notification channels that you plan to use in this workspace. Specifying these 
         data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow 
         Amazon Managed Grafana to use these channels.</p>")
    workspaceNotificationDestinations: option<notificationDestinationsList>,
    @ocaml.doc("<p>A new name for the workspace to update.</p>")
    workspaceName: option<workspaceName>,
    @ocaml.doc("<p>The ID of the workspace to update.</p>") workspaceId: workspaceId,
    @ocaml.doc(
      "<p>A description for the workspace. This is used only to help you identify this workspace.</p>"
    )
    workspaceDescription: option<description>,
    @ocaml.doc("<p>Specify the Amazon Web Services data sources that you want to be queried in this
         workspace. Specifying these data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow Amazon Managed Grafana to read data from these
         sources. You must still add them as data sources in the Grafana console in the
         workspace.</p>
         <p>If you don't specify a data source here, you can still add it as a data source later in
         the workspace console. However, you will then have to manually configure permissions for
         it.</p>")
    workspaceDataSources: option<dataSourceTypesList>,
    @ocaml.doc("<p>The name of the CloudFormation stack set to use to generate IAM roles
         to be used for this workspace.</p>")
    stackSetName: option<stackSetName>,
    @ocaml.doc("<p>If you specify <code>Service Managed</code>, Amazon Managed Grafana automatically creates
         the IAM roles and provisions the permissions that the workspace needs to use
            Amazon Web Services data sources and notification channels.</p>
         <p>If you specify <code>CUSTOMER_MANAGED</code>, you will manage those roles and
         permissions yourself. If you are creating this workspace in a member account of an
         organization and that account is not a delegated administrator account, and you want the workspace to access data sources in other Amazon Web Services
         accounts in the organization, you must choose <code>CUSTOMER_MANAGED</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html\">Amazon Managed Grafana permissions and policies for
         Amazon Web Services data sources and notification channels</a>
         </p>")
    permissionType: option<permissionType>,
    @ocaml.doc(
      "<p>The name of an IAM role that already exists to use to access resources through Organizations.</p>"
    )
    organizationRoleName: option<organizationRoleName>,
    @ocaml.doc("<p>Specifies whether the workspace can access Amazon Web Services resources in this Amazon Web Services account only, or whether it can also access Amazon Web Services resources in
         other accounts in the same organization. If you specify <code>ORGANIZATION</code>, you must
         specify which organizational units the workspace can access in the
            <code>workspaceOrganizationalUnits</code> parameter.</p>")
    accountAccessType: option<accountAccessType>,
  }
  type response = {
    @ocaml.doc("<p>A structure containing data about the workspace that was created.</p>")
    workspace: workspaceDescription,
  }
  @module("@aws-sdk/client-grafana") @new external new: request => t = "UpdateWorkspaceCommand"
  let make = (
    ~workspaceId,
    ~workspaceRoleArn=?,
    ~workspaceOrganizationalUnits=?,
    ~workspaceNotificationDestinations=?,
    ~workspaceName=?,
    ~workspaceDescription=?,
    ~workspaceDataSources=?,
    ~stackSetName=?,
    ~permissionType=?,
    ~organizationRoleName=?,
    ~accountAccessType=?,
    (),
  ) =>
    new({
      workspaceRoleArn: workspaceRoleArn,
      workspaceOrganizationalUnits: workspaceOrganizationalUnits,
      workspaceNotificationDestinations: workspaceNotificationDestinations,
      workspaceName: workspaceName,
      workspaceId: workspaceId,
      workspaceDescription: workspaceDescription,
      workspaceDataSources: workspaceDataSources,
      stackSetName: stackSetName,
      permissionType: permissionType,
      organizationRoleName: organizationRoleName,
      accountAccessType: accountAccessType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the workspace to list permissions for. This parameter is required.</p>"
    )
    workspaceId: workspaceId,
    @ocaml.doc("<p>(Optional) Limits the results to only the group that matches this ID.</p>")
    groupId: option<ssoId>,
    @ocaml.doc("<p>(Optional) Limits the results to only the user that matches this ID.</p>")
    userId: option<ssoId>,
    @ocaml.doc("<p>(Optional) If you specify <code>SSO_USER</code>, then only the permissions of Amazon Web Services SSO users
         are returned. If you specify <code>SSO_GROUP</code>, only the permissions of Amazon Web Services SSO groups
            are returned.</p>")
    userType: option<userType>,
    @ocaml.doc("<p>The token to use when requesting the next set of results. You received this token from a previous 
         <code>ListPermissions</code> operation.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to include in the response.</p>")
    maxResults: option<baseInteger>,
  }
  type response = {
    @ocaml.doc("<p>The permissions returned by the operation.</p>")
    permissions: permissionEntryList,
    @ocaml.doc("<p>The token to use in a subsequent <code>ListPermissions</code> operation to return
         the next set of results.</p>")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-grafana") @new external new: request => t = "ListPermissionsCommand"
  let make = (~workspaceId, ~groupId=?, ~userId=?, ~userType=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      workspaceId: workspaceId,
      groupId: groupId,
      userId: userId,
      userType: userType,
      nextToken: nextToken,
      maxResults: maxResults,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateLicense = {
  type t
  type request = {
    @ocaml.doc("<p>The type of license to remove from the workspace.</p>") licenseType: licenseType,
    @ocaml.doc("<p>The ID of the workspace to remove the Grafana Enterprise license from.</p>")
    workspaceId: workspaceId,
  }
  type response = {
    @ocaml.doc("<p>A structure containing information about the workspace.</p>")
    workspace: workspaceDescription,
  }
  @module("@aws-sdk/client-grafana") @new external new: request => t = "DisassociateLicenseCommand"
  let make = (~licenseType, ~workspaceId, ()) =>
    new({licenseType: licenseType, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkspace = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the workspace to display information about.</p>")
    workspaceId: workspaceId,
  }
  type response = {
    @ocaml.doc("<p>A structure containing information about the workspace.</p>")
    workspace: workspaceDescription,
  }
  @module("@aws-sdk/client-grafana") @new external new: request => t = "DescribeWorkspaceCommand"
  let make = (~workspaceId, ()) => new({workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWorkspace = {
  type t
  type request = {@ocaml.doc("<p>The ID of the workspace to delete.</p>") workspaceId: workspaceId}
  type response = {
    @ocaml.doc("<p>A structure containing information about the workspace that was deleted.</p>")
    workspace: workspaceDescription,
  }
  @module("@aws-sdk/client-grafana") @new external new: request => t = "DeleteWorkspaceCommand"
  let make = (~workspaceId, ()) => new({workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkspace = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags associated with the workspace.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>Specifies whether this workspace uses SAML 2.0, Amazon Web Services Single Sign On, or both to authenticate 
         users for using the Grafana console within a workspace. For more information, 
         see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html\">User authentication in 
            Amazon Managed Grafana</a>.</p>")
    authenticationProviders: authenticationProviders,
    @ocaml.doc("<p>The workspace needs an IAM role that grants permissions to the Amazon Web Services resources that the 
      workspace will view data from. If you already have a role that you want to use, specify it here.  The permission type should be set to  <code>CUSTOMER_MANAGED</code>.</p>")
    workspaceRoleArn: option<iamRoleArn>,
    @ocaml.doc("<p>Specifies the organizational units that this workspace is allowed to use data sources
         from, if this workspace is in an account that is part of an organization.</p>")
    workspaceOrganizationalUnits: option<organizationalUnitList>,
    @ocaml.doc("<p>Specify the Amazon Web Services notification channels that you plan to use in this workspace. Specifying these 
         data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow 
         Amazon Managed Grafana to use these channels.</p>")
    workspaceNotificationDestinations: option<notificationDestinationsList>,
    @ocaml.doc("<p>The name for the workspace. It does not have to be unique.</p>")
    workspaceName: option<workspaceName>,
    @ocaml.doc("<p>A description for the workspace. This is used only to help you identify this workspace.</p>
         <p>Pattern: <code>^[\\\\p{L}\\\\p{Z}\\\\p{N}\\\\p{P}]{0,2048}$</code>
         </p>")
    workspaceDescription: option<description>,
    @ocaml.doc("<p>Specify the Amazon Web Services data sources that you want to be queried in this
         workspace. Specifying these data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow Amazon Managed Grafana to read data from these
         sources. You must still add them as data sources in the Grafana console in the
         workspace.</p>
         <p>If you don't specify a data source here, you can still add it as a data source in the
         workspace console later. However, you will then have to manually configure permissions for
         it.</p>")
    workspaceDataSources: option<dataSourceTypesList>,
    @ocaml.doc("<p>The name of the CloudFormation stack set to use to generate IAM roles
      to be used for this workspace.</p>")
    stackSetName: option<stackSetName>,
    @ocaml.doc("<p>If you specify <code>SERVICE_MANAGED</code> on AWS Grafana console, Amazon Managed Grafana automatically creates
         the IAM roles and provisions the permissions that the workspace needs to use
         Amazon Web Services data sources and notification channels. In CLI mode, the permissionType <code>SERVICE_MANAGED</code> will not create the IAM role 
         for you.</p> 
         <p>If you specify <code>CUSTOMER_MANAGED</code>, you will manage those roles and
         permissions yourself. If you are creating this workspace in a member account of an
         organization that is not a delegated administrator account, and you want the workspace to access data sources in other Amazon Web Services
         accounts in the organization, you must choose <code>CUSTOMER_MANAGED</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html\">Amazon Managed Grafana permissions and policies for
         Amazon Web Services data sources and notification channels</a>.</p>")
    permissionType: permissionType,
    @ocaml.doc("<p>The name of an IAM role that already exists to use with Organizations to access Amazon Web Services
         data sources and notification channels in other accounts in an organization.</p>")
    organizationRoleName: option<organizationRoleName>,
    @ocaml.doc(
      "<p>A unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>Specifies whether the workspace can access Amazon Web Services resources in this Amazon Web Services account only, or whether it can also access Amazon Web Services resources in
         other accounts in the same organization. If you specify <code>ORGANIZATION</code>, you must
         specify which organizational units the workspace can access in the
            <code>workspaceOrganizationalUnits</code> parameter.</p>")
    accountAccessType: accountAccessType,
  }
  type response = {
    @ocaml.doc("<p>A structure containing data about the workspace that was created.</p>")
    workspace: workspaceDescription,
  }
  @module("@aws-sdk/client-grafana") @new external new: request => t = "CreateWorkspaceCommand"
  let make = (
    ~authenticationProviders,
    ~permissionType,
    ~accountAccessType,
    ~tags=?,
    ~workspaceRoleArn=?,
    ~workspaceOrganizationalUnits=?,
    ~workspaceNotificationDestinations=?,
    ~workspaceName=?,
    ~workspaceDescription=?,
    ~workspaceDataSources=?,
    ~stackSetName=?,
    ~organizationRoleName=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      tags: tags,
      authenticationProviders: authenticationProviders,
      workspaceRoleArn: workspaceRoleArn,
      workspaceOrganizationalUnits: workspaceOrganizationalUnits,
      workspaceNotificationDestinations: workspaceNotificationDestinations,
      workspaceName: workspaceName,
      workspaceDescription: workspaceDescription,
      workspaceDataSources: workspaceDataSources,
      stackSetName: stackSetName,
      permissionType: permissionType,
      organizationRoleName: organizationRoleName,
      clientToken: clientToken,
      accountAccessType: accountAccessType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateLicense = {
  type t
  type request = {
    @ocaml.doc("<p>The type of license to associate with the workspace.</p>")
    licenseType: licenseType,
    @ocaml.doc("<p>The ID of the workspace to associate the license with.</p>")
    workspaceId: workspaceId,
  }
  type response = {
    @ocaml.doc("<p>A structure containing data about the workspace.</p>")
    workspace: workspaceDescription,
  }
  @module("@aws-sdk/client-grafana") @new external new: request => t = "AssociateLicenseCommand"
  let make = (~licenseType, ~workspaceId, ()) =>
    new({licenseType: licenseType, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkspaces = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of workspaces to return. (You receive this token from a
         previous <code>ListWorkspaces</code> operation.)</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of workspaces to include in the results.</p>")
    maxResults: option<baseInteger>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of workspaces.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>An array of structures that contain some information about the workspaces in the account.</p>"
    )
    workspaces: workspaceList,
  }
  @module("@aws-sdk/client-grafana") @new external new: request => t = "ListWorkspacesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWorkspaceAuthentication = {
  type t
  type request = {
    @ocaml.doc("<p>If the workspace uses SAML, use this structure to
         map SAML assertion attributes to workspace user information and 
         define which groups in the assertion attribute are to have the <code>Admin</code> and <code>Editor</code> roles
         in the workspace.</p>")
    samlConfiguration: option<samlConfiguration>,
    @ocaml.doc("<p>Specifies whether this workspace uses SAML 2.0, Amazon Web Services Single Sign On, or both to authenticate 
         users for using the Grafana console within a workspace. For more information, 
         see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html\">User authentication in 
            Amazon Managed Grafana</a>.</p>")
    authenticationProviders: authenticationProviders,
    @ocaml.doc("<p>The ID of the workspace to update the authentication for.</p>")
    workspaceId: workspaceId,
  }
  type response = {
    @ocaml.doc(
      "<p>A structure that describes the user authentication for this workspace after the update is made.</p>"
    )
    authentication: authenticationDescription,
  }
  @module("@aws-sdk/client-grafana") @new
  external new: request => t = "UpdateWorkspaceAuthenticationCommand"
  let make = (~authenticationProviders, ~workspaceId, ~samlConfiguration=?, ()) =>
    new({
      samlConfiguration: samlConfiguration,
      authenticationProviders: authenticationProviders,
      workspaceId: workspaceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the workspace to update.</p>") workspaceId: workspaceId,
    @ocaml.doc("<p>An array of structures that contain the permission updates to make.</p>")
    updateInstructionBatch: updateInstructionBatch,
  }
  type response = {
    @ocaml.doc("<p>An array of structures that contain the errors from the operation, if any.</p>")
    errors: updateErrorList,
  }
  @module("@aws-sdk/client-grafana") @new external new: request => t = "UpdatePermissionsCommand"
  let make = (~workspaceId, ~updateInstructionBatch, ()) =>
    new({workspaceId: workspaceId, updateInstructionBatch: updateInstructionBatch})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkspaceAuthentication = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the workspace to return authentication information about.</p>")
    workspaceId: workspaceId,
  }
  type response = {
    @ocaml.doc("<p>A structure containing information about the authentication methods used in 
      the workspace.</p>")
    authentication: authenticationDescription,
  }
  @module("@aws-sdk/client-grafana") @new
  external new: request => t = "DescribeWorkspaceAuthenticationCommand"
  let make = (~workspaceId, ()) => new({workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
