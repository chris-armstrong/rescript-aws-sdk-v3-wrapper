type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-workmail") @new
external createClient: unit => awsServiceClient = "WorkMailClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workMailIdentifier = string
type userRole = [@as("SYSTEM_USER") #SYSTEM_USER | @as("RESOURCE") #RESOURCE | @as("USER") #USER]
type userName = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
type shortString = string
type s3ObjectKey = string
type s3BucketName = string
type roleArn = string
type retentionPeriod = int
type retentionAction = [
  | @as("PERMANENTLY_DELETE") #PERMANENTLY_DELETE
  | @as("DELETE") #DELETE
  | @as("NONE") #NONE
]
type resourceType = [@as("EQUIPMENT") #EQUIPMENT | @as("ROOM") #ROOM]
type resourceName = string
type resourceId = string
type policyDescription = string
type permissionType = [
  | @as("SEND_ON_BEHALF") #SEND_ON_BEHALF
  | @as("SEND_AS") #SEND_AS
  | @as("FULL_ACCESS") #FULL_ACCESS
]
type percentage = int
type password = string
type organizationName = string
type organizationId = string
type nextToken = string
type mobileDeviceAccessRuleName = string
type mobileDeviceAccessRuleId = string
type mobileDeviceAccessRuleEffect = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type mobileDeviceAccessRuleDescription = string
type memberType = [@as("USER") #USER | @as("GROUP") #GROUP]
type maxResults = int
type mailboxSize = float
type mailboxQuota = int
type mailboxExportJobState = [
  | @as("CANCELLED") #CANCELLED
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("RUNNING") #RUNNING
]
type mailboxExportJobId = string
type mailboxExportErrorInfo = string
type kmsKeyArn = string
type ipRange = string
type ipAddress = string
type idempotencyClientToken = string
type hostedZoneId = string
type groupName = string
type folderName = [
  | @as("JUNK_EMAIL") #JUNK_EMAIL
  | @as("DRAFTS") #DRAFTS
  | @as("SENT_ITEMS") #SENT_ITEMS
  | @as("DELETED_ITEMS") #DELETED_ITEMS
  | @as("INBOX") #INBOX
]
type entityState = [@as("DELETED") #DELETED | @as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type emailAddress = string
type domainName = string
type directoryId = string
type deviceUserAgent = string
type deviceType = string
type deviceOperatingSystem = string
type deviceModel = string
type description = string
type boolean_ = bool
type amazonResourceName = string
type accessControlRuleName = string
type accessControlRuleEffect = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type accessControlRuleDescription = string
type accessControlRuleAction = string
type userIdList = array<workMailIdentifier>
@ocaml.doc("<p>The representation of an Amazon WorkMail user.</p>")
type user = {
  @ocaml.doc("<p>The date indicating when the user was disabled from Amazon WorkMail use.</p>")
  @as("DisabledDate")
  disabledDate: option<timestamp_>,
  @ocaml.doc("<p>The date indicating when the user was enabled for Amazon WorkMail use.</p>")
  @as("EnabledDate")
  enabledDate: option<timestamp_>,
  @ocaml.doc("<p>The role of the user.</p>") @as("UserRole") userRole: option<userRole>,
  @ocaml.doc("<p>The state of the user, which can be ENABLED, DISABLED, or DELETED.</p>")
  @as("State")
  state: option<entityState>,
  @ocaml.doc("<p>The display name of the user.</p>") @as("DisplayName")
  displayName: option<string_>,
  @ocaml.doc("<p>The name of the user.</p>") @as("Name") name: option<userName>,
  @ocaml.doc("<p>The email of the user.</p>") @as("Email") email: option<emailAddress>,
  @ocaml.doc("<p>The identifier of the user.</p>") @as("Id") id: option<workMailIdentifier>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Describes a tag applied to a resource.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: tagKey,
}
@ocaml.doc("<p>The representation of a resource.</p>")
type resource = {
  @ocaml.doc("<p>The date indicating when the resource was disabled from Amazon WorkMail use.</p>")
  @as("DisabledDate")
  disabledDate: option<timestamp_>,
  @ocaml.doc("<p>The date indicating when the resource was enabled for Amazon WorkMail use.</p>")
  @as("EnabledDate")
  enabledDate: option<timestamp_>,
  @ocaml.doc("<p>The state of the resource, which can be ENABLED, DISABLED, or DELETED.</p>")
  @as("State")
  state: option<entityState>,
  @ocaml.doc("<p>The type of the resource: equipment or room.</p>") @as("Type")
  type_: option<resourceType>,
  @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<resourceName>,
  @ocaml.doc("<p>The email of the resource.</p>") @as("Email") email: option<emailAddress>,
  @ocaml.doc("<p>The identifier of the resource.</p>") @as("Id") id: option<workMailIdentifier>,
}
type permissionValues = array<permissionType>
@ocaml.doc("<p>The representation of an organization.</p>")
type organizationSummary = {
  @ocaml.doc("<p>The state associated with the organization.</p>") @as("State")
  state: option<string_>,
  @ocaml.doc("<p>The error message associated with the organization. It is only present if unexpected
         behavior has occurred with regards to the organization. It provides insight or solutions
         regarding unexpected behavior.</p>")
  @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc("<p>The default email domain associated with the organization.</p>")
  @as("DefaultMailDomain")
  defaultMailDomain: option<domainName>,
  @ocaml.doc("<p>The alias associated with the organization.</p>") @as("Alias")
  alias: option<organizationName>,
  @ocaml.doc("<p>The identifier associated with the organization.</p>") @as("OrganizationId")
  organizationId: option<organizationId>,
}
@ocaml.doc("<p>The rule that a simulated user matches.</p>")
type mobileDeviceAccessMatchedRule = {
  @ocaml.doc("<p>Name of a rule that a simulated user matches.</p>") @as("Name")
  name: option<mobileDeviceAccessRuleName>,
  @ocaml.doc("<p>Identifier of the rule that a simulated user matches.</p>")
  @as("MobileDeviceAccessRuleId")
  mobileDeviceAccessRuleId: option<mobileDeviceAccessRuleId>,
}
@ocaml.doc("<p>The representation of a user or group.</p>")
type member = {
  @ocaml.doc("<p>The date indicating when the member was disabled from Amazon WorkMail use.</p>")
  @as("DisabledDate")
  disabledDate: option<timestamp_>,
  @ocaml.doc("<p>The date indicating when the member was enabled for Amazon WorkMail use.</p>")
  @as("EnabledDate")
  enabledDate: option<timestamp_>,
  @ocaml.doc("<p>The state of the member, which can be ENABLED, DISABLED, or DELETED.</p>")
  @as("State")
  state: option<entityState>,
  @ocaml.doc("<p>A member can be a user or group.</p>") @as("Type") type_: option<memberType>,
  @ocaml.doc("<p>The name of the member.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The identifier of the member.</p>") @as("Id") id: option<string_>,
}
@ocaml.doc("<p>The details of a mailbox export job, including the user or resource ID associated
         with the mailbox and the S3 bucket that the mailbox contents are exported to.</p>")
type mailboxExportJob = {
  @ocaml.doc("<p>The mailbox export job end timestamp.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The mailbox export job start timestamp.</p>") @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The state of the mailbox export job.</p>") @as("State")
  state: option<mailboxExportJobState>,
  @ocaml.doc("<p>The estimated progress of the mailbox export job, in percentage points.</p>")
  @as("EstimatedProgress")
  estimatedProgress: option<percentage>,
  @ocaml.doc("<p>The path to the S3 bucket and file that the mailbox export job exports to.</p>")
  @as("S3Path")
  s3Path: option<s3ObjectKey>,
  @ocaml.doc("<p>The name of the S3 bucket.</p>") @as("S3BucketName")
  s3BucketName: option<s3BucketName>,
  @ocaml.doc("<p>The mailbox export job description.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The identifier of the user or resource associated with the mailbox.</p>")
  @as("EntityId")
  entityId: option<workMailIdentifier>,
  @ocaml.doc("<p>The identifier of the mailbox export job.</p>") @as("JobId")
  jobId: option<mailboxExportJobId>,
}
type ipRangeList = array<ipRange>
@ocaml.doc("<p>The representation of an Amazon WorkMail group.</p>")
type group = {
  @ocaml.doc("<p>The date indicating when the group was disabled from Amazon WorkMail use.</p>")
  @as("DisabledDate")
  disabledDate: option<timestamp_>,
  @ocaml.doc("<p>The date indicating when the group was enabled for Amazon WorkMail use.</p>")
  @as("EnabledDate")
  enabledDate: option<timestamp_>,
  @ocaml.doc("<p>The state of the group, which can be ENABLED, DISABLED, or DELETED.</p>")
  @as("State")
  state: option<entityState>,
  @ocaml.doc("<p>The name of the group.</p>") @as("Name") name: option<groupName>,
  @ocaml.doc("<p>The email of the group.</p>") @as("Email") email: option<emailAddress>,
  @ocaml.doc("<p>The identifier of the group.</p>") @as("Id") id: option<workMailIdentifier>,
}
@ocaml.doc("<p>The configuration applied to an organization's folders by its retention
         policy.</p>")
type folderConfiguration = {
  @ocaml.doc("<p>The period of time at which the folder configuration action is applied.</p>")
  @as("Period")
  period: option<retentionPeriod>,
  @ocaml.doc("<p>The action to take on the folder contents at the end of the folder configuration
         period.</p>")
  @as("Action")
  action: retentionAction,
  @ocaml.doc("<p>The folder name.</p>") @as("Name") name: folderName,
}
@ocaml.doc("<p>The domain to associate with an Amazon WorkMail organization.</p>
         <p>When you configure a domain hosted in Amazon Route 53 (Route 53), all recommended DNS records are added to the organization when you create it. For more information, see <a href=\"https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html\">Adding a domain</a> in the <i>Amazon WorkMail Administrator Guide</i>.</p>")
type domain = {
  @ocaml.doc(
    "<p>The hosted zone ID for a domain hosted in Route 53. Required when configuring a domain hosted in Route 53.</p>"
  )
  @as("HostedZoneId")
  hostedZoneId: option<hostedZoneId>,
  @ocaml.doc("<p>The fully qualified domain name.</p>") @as("DomainName")
  domainName: option<domainName>,
}
type deviceUserAgentList = array<deviceUserAgent>
type deviceTypeList = array<deviceType>
type deviceOperatingSystemList = array<deviceOperatingSystem>
type deviceModelList = array<deviceModel>
@ocaml.doc("<p>The name of the attribute, which is one of the values defined in the UserAttribute
         enumeration.</p>")
type delegate = {
  @ocaml.doc("<p>The type of the delegate: user or group.</p>") @as("Type") type_: memberType,
  @ocaml.doc("<p>The identifier for the user or group associated as the resource's delegate.</p>")
  @as("Id")
  id: string_,
}
@ocaml.doc("<p>At least one delegate must be associated to the resource to disable automatic replies
         from the resource.</p>")
type bookingOptions = {
  @ocaml.doc("<p>The resource's ability to automatically decline any conflicting requests.</p>")
  @as("AutoDeclineConflictingRequests")
  autoDeclineConflictingRequests: option<boolean_>,
  @ocaml.doc("<p>The resource's ability to automatically decline any recurring requests.</p>")
  @as("AutoDeclineRecurringRequests")
  autoDeclineRecurringRequests: option<boolean_>,
  @ocaml.doc("<p>The resource's ability to automatically reply to requests. If disabled, delegates
         must be associated to the resource.</p>")
  @as("AutoAcceptRequests")
  autoAcceptRequests: option<boolean_>,
}
type aliases = array<emailAddress>
type actionsList = array<accessControlRuleAction>
type accessControlRuleNameList = array<accessControlRuleName>
type users = array<user>
type tagList_ = array<tag>
type resources = array<resource>
type resourceDelegates = array<delegate>
@ocaml.doc("<p>Permission granted to a user, group, or resource to access a certain aspect of
         another user, group, or resource mailbox.</p>")
type permission = {
  @ocaml.doc("<p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as
         the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF
         allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not
         mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full
         access to the mailbox, irrespective of other folder-level permissions set on the
         mailbox.</p>")
  @as("PermissionValues")
  permissionValues: permissionValues,
  @ocaml.doc("<p>The type of user, group, or resource referred to in GranteeId.</p>")
  @as("GranteeType")
  granteeType: memberType,
  @ocaml.doc("<p>The identifier of the user, group, or resource to which the permissions are
         granted.</p>")
  @as("GranteeId")
  granteeId: workMailIdentifier,
}
type organizationSummaries = array<organizationSummary>
@ocaml.doc("<p>A rule that controls access to mobile devices for an Amazon WorkMail group.</p>")
type mobileDeviceAccessRule = {
  @ocaml.doc("<p>The date and time at which an access rule was modified.</p>") @as("DateModified")
  dateModified: option<timestamp_>,
  @ocaml.doc("<p>The date and time at which an access rule was created.</p>") @as("DateCreated")
  dateCreated: option<timestamp_>,
  @ocaml.doc(
    "<p>Device user agents that a rule <b>will not</b> match. All other device user agents will match.</p>"
  )
  @as("NotDeviceUserAgents")
  notDeviceUserAgents: option<deviceUserAgentList>,
  @ocaml.doc("<p>Device user agents that a rule will match.</p>") @as("DeviceUserAgents")
  deviceUserAgents: option<deviceUserAgentList>,
  @ocaml.doc(
    "<p>Device operating systems that a rule <b>will not</b> match. All other device types will match.</p>"
  )
  @as("NotDeviceOperatingSystems")
  notDeviceOperatingSystems: option<deviceOperatingSystemList>,
  @ocaml.doc("<p>Device operating systems that a rule will match.</p>")
  @as("DeviceOperatingSystems")
  deviceOperatingSystems: option<deviceOperatingSystemList>,
  @ocaml.doc(
    "<p>Device models that a rule <b>will not</b> match. All other device models will match.</p>"
  )
  @as("NotDeviceModels")
  notDeviceModels: option<deviceModelList>,
  @ocaml.doc("<p>Device models that a rule will match.</p>") @as("DeviceModels")
  deviceModels: option<deviceModelList>,
  @ocaml.doc(
    "<p>Device types that a rule <b>will not</b> match. All other device types will match.</p>"
  )
  @as("NotDeviceTypes")
  notDeviceTypes: option<deviceTypeList>,
  @ocaml.doc("<p>Device types that a rule will match. </p>") @as("DeviceTypes")
  deviceTypes: option<deviceTypeList>,
  @ocaml.doc(
    "<p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>"
  )
  @as("Effect")
  effect: option<mobileDeviceAccessRuleEffect>,
  @ocaml.doc("<p>The description of a mobile access rule.</p>") @as("Description")
  description: option<mobileDeviceAccessRuleDescription>,
  @ocaml.doc("<p>The name of a mobile access rule.</p>") @as("Name")
  name: option<mobileDeviceAccessRuleName>,
  @ocaml.doc("<p>The ID assigned to a mobile access rule. </p>") @as("MobileDeviceAccessRuleId")
  mobileDeviceAccessRuleId: option<mobileDeviceAccessRuleId>,
}
type mobileDeviceAccessMatchedRuleList = array<mobileDeviceAccessMatchedRule>
type members = array<member>
type jobs = array<mailboxExportJob>
type groups = array<group>
type folderConfigurations = array<folderConfiguration>
type domains = array<domain>
@ocaml.doc("<p>A rule that controls access to an Amazon WorkMail organization.</p>")
type accessControlRule = {
  @ocaml.doc("<p>The date that the rule was modified.</p>") @as("DateModified")
  dateModified: option<timestamp_>,
  @ocaml.doc("<p>The date that the rule was created.</p>") @as("DateCreated")
  dateCreated: option<timestamp_>,
  @ocaml.doc("<p>User IDs to exclude from the rule.</p>") @as("NotUserIds")
  notUserIds: option<userIdList>,
  @ocaml.doc("<p>User IDs to include in the rule.</p>") @as("UserIds") userIds: option<userIdList>,
  @ocaml.doc("<p>Access protocol actions to exclude from the rule. Valid values include
            <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
            <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>")
  @as("NotActions")
  notActions: option<actionsList>,
  @ocaml.doc("<p>Access protocol actions to include in the rule. Valid values include
            <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
            <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>")
  @as("Actions")
  actions: option<actionsList>,
  @ocaml.doc("<p>IPv4 CIDR ranges to exclude from the rule.</p>") @as("NotIpRanges")
  notIpRanges: option<ipRangeList>,
  @ocaml.doc("<p>IPv4 CIDR ranges to include in the rule.</p>") @as("IpRanges")
  ipRanges: option<ipRangeList>,
  @ocaml.doc("<p>The rule description.</p>") @as("Description")
  description: option<accessControlRuleDescription>,
  @ocaml.doc("<p>The rule effect.</p>") @as("Effect") effect: option<accessControlRuleEffect>,
  @ocaml.doc("<p>The rule name.</p>") @as("Name") name: option<accessControlRuleName>,
}
type permissions = array<permission>
type mobileDeviceAccessRulesList = array<mobileDeviceAccessRule>
type accessControlRulesList = array<accessControlRule>
@ocaml.doc("<p>Amazon WorkMail is a secure, managed business email and calendaring service with support for
         existing desktop and mobile email clients. You can access your email, contacts, and
         calendars using Microsoft Outlook, your browser, or other native iOS and Android email
         applications. You can integrate WorkMail with your existing corporate directory and control
         both the keys that encrypt your data and the location in which your data is
         stored.</p>
         <p>The WorkMail API is designed for the following scenarios:</p>
         <ul>
            <li>
               <p>Listing and describing organizations</p>
            </li>
         </ul>
         <ul>
            <li>
               <p>Managing users</p>
            </li>
         </ul>
         <ul>
            <li>
               <p>Managing groups</p>
            </li>
         </ul>
         <ul>
            <li>
               <p>Managing resources</p>
            </li>
         </ul>
         <p>All WorkMail API operations are Amazon-authenticated and certificate-signed. They not
         only require the use of the AWS SDK, but also allow for the exclusive use of AWS Identity and Access Management
         users and roles to help facilitate access, trust, and permission policies. By creating a
         role and allowing an IAM user to access the WorkMail site, the IAM user gains full
         administrative visibility into the entire WorkMail organization (or as set in the IAM
         policy). This includes, but is not limited to, the ability to create, update, and delete
         users, groups, and resources. This allows developers to perform the scenarios listed above,
         as well as give users the ability to grant access on a selective basis using the IAM
         model.</p>")
module UpdatePrimaryEmailAddress = {
  type t
  type request = {
    @ocaml.doc("<p>The value of the email to be updated as primary.</p>") @as("Email")
    email: emailAddress,
    @ocaml.doc("<p>The user, group, or resource to update.</p>") @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc("<p>The organization that contains the user, group, or resource to update.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "UpdatePrimaryEmailAddressCommand"
  let make = (~email, ~entityId, ~organizationId, ()) =>
    new({email: email, entityId: entityId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateMailboxQuota = {
  type t
  type request = {
    @ocaml.doc("<p>The updated mailbox quota, in MB, for the specified user.</p>")
    @as("MailboxQuota")
    mailboxQuota: mailboxQuota,
    @ocaml.doc("<p>The identifer for the user for whom to update the mailbox quota.</p>")
    @as("UserId")
    userId: workMailIdentifier,
    @ocaml.doc("<p>The identifier for the organization that contains the user for whom to update the
         mailbox quota.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "UpdateMailboxQuotaCommand"
  let make = (~mailboxQuota, ~userId, ~organizationId, ()) =>
    new({mailboxQuota: mailboxQuota, userId: userId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartMailboxExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The S3 bucket prefix.</p>") @as("S3Prefix") s3Prefix: s3ObjectKey,
    @ocaml.doc("<p>The name of the S3 bucket.</p>") @as("S3BucketName") s3BucketName: s3BucketName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the symmetric AWS Key Management Service (AWS KMS)
         key that encrypts the exported mailbox content.</p>")
    @as("KmsKeyArn")
    kmsKeyArn: kmsKeyArn,
    @ocaml.doc("<p>The ARN of the AWS Identity and Access Management (IAM) role that grants write permission to the S3
         bucket.</p>")
    @as("RoleArn")
    roleArn: roleArn,
    @ocaml.doc("<p>The mailbox export job description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The identifier of the user or resource associated with the mailbox.</p>")
    @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc("<p>The identifier associated with the organization.</p>") @as("OrganizationId")
    organizationId: organizationId,
    @ocaml.doc("<p>The idempotency token for the client request.</p>") @as("ClientToken")
    clientToken: idempotencyClientToken,
  }
  type response = {@ocaml.doc("<p>The job ID.</p>") @as("JobId") jobId: option<mailboxExportJobId>}
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "StartMailboxExportJobCommand"
  let make = (
    ~s3Prefix,
    ~s3BucketName,
    ~kmsKeyArn,
    ~roleArn,
    ~entityId,
    ~organizationId,
    ~clientToken,
    ~description=?,
    (),
  ) =>
    new({
      s3Prefix: s3Prefix,
      s3BucketName: s3BucketName,
      kmsKeyArn: kmsKeyArn,
      roleArn: roleArn,
      description: description,
      entityId: entityId,
      organizationId: organizationId,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetPassword = {
  type t
  type request = {
    @ocaml.doc("<p>The new password for the user.</p>") @as("Password") password: password,
    @ocaml.doc("<p>The identifier of the user for whom the password is reset.</p>") @as("UserId")
    userId: workMailIdentifier,
    @ocaml.doc("<p>The identifier of the organization that contains the user for which the password is
         reset.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "ResetPasswordCommand"
  let make = (~password, ~userId, ~organizationId, ()) =>
    new({password: password, userId: userId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterToWorkMail = {
  type t
  type request = {
    @ocaml.doc("<p>The email for the user, group, or resource to be updated.</p>") @as("Email")
    email: emailAddress,
    @ocaml.doc("<p>The identifier for the user, group, or resource to be updated.</p>")
    @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc("<p>The identifier for the organization under which the user, group, or resource
         exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "RegisterToWorkMailCommand"
  let make = (~email, ~entityId, ~organizationId, ()) =>
    new({email: email, entityId: entityId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetMailboxDetails = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the user whose mailbox details are being requested.</p>")
    @as("UserId")
    userId: workMailIdentifier,
    @ocaml.doc("<p>The identifier for the organization that contains the user whose mailbox details are
         being requested.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The current mailbox size, in MB, for the specified user.</p>") @as("MailboxSize")
    mailboxSize: option<mailboxSize>,
    @ocaml.doc("<p>The maximum allowed mailbox size, in MB, for the specified user.</p>")
    @as("MailboxQuota")
    mailboxQuota: option<mailboxQuota>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "GetMailboxDetailsCommand"
  let make = (~userId, ~organizationId, ()) => new({userId: userId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateMemberFromGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the member to be removed to the group.</p>") @as("MemberId")
    memberId: workMailIdentifier,
    @ocaml.doc("<p>The identifier for the group from which members are removed.</p>") @as("GroupId")
    groupId: workMailIdentifier,
    @ocaml.doc("<p>The identifier for the organization under which the group exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "DisassociateMemberFromGroupCommand"
  let make = (~memberId, ~groupId, ~organizationId, ()) =>
    new({memberId: memberId, groupId: groupId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateDelegateFromResource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the member (user, group) to be removed from the resource's
         delegates.</p>")
    @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc("<p>The identifier of the resource from which delegates' set members are removed.
      </p>")
    @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc("<p>The identifier for the organization under which the resource exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "DisassociateDelegateFromResourceCommand"
  let make = (~entityId, ~resourceId, ~organizationId, ()) =>
    new({entityId: entityId, resourceId: resourceId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeUser = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the user to be described.</p>") @as("UserId")
    userId: workMailIdentifier,
    @ocaml.doc("<p>The identifier for the organization under which the user exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The date and time at which the user was disabled for Amazon WorkMail usage, in UNIX epoch
         time format.</p>")
    @as("DisabledDate")
    disabledDate: option<timestamp_>,
    @ocaml.doc("<p>The date and time at which the user was enabled for Amazon WorkMail usage, in UNIX epoch
         time format.</p>")
    @as("EnabledDate")
    enabledDate: option<timestamp_>,
    @ocaml.doc("<p>In certain cases, other entities are modeled as users. If interoperability is
         enabled, resources are imported into Amazon WorkMail as users. Because different WorkMail
         organizations rely on different directory types, administrators can distinguish between an
         unregistered user (account is disabled and has a user role) and the directory
         administrators. The values are USER, RESOURCE, and SYSTEM_USER.</p>")
    @as("UserRole")
    userRole: option<userRole>,
    @ocaml.doc("<p>The state of a user: enabled (registered to Amazon WorkMail) or disabled (deregistered or
         never registered to WorkMail).</p>")
    @as("State")
    state: option<entityState>,
    @ocaml.doc("<p>The display name of the user.</p>") @as("DisplayName")
    displayName: option<string_>,
    @ocaml.doc("<p>The email of the user.</p>") @as("Email") email: option<emailAddress>,
    @ocaml.doc("<p>The name for the user.</p>") @as("Name") name: option<userName>,
    @ocaml.doc("<p>The identifier for the described user.</p>") @as("UserId")
    userId: option<workMailIdentifier>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "DescribeUserCommand"
  let make = (~userId, ~organizationId, ()) => new({userId: userId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrganization = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the organization to be described.</p>") @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the organization.</p>") @as("ARN")
    arn: option<amazonResourceName>,
    @ocaml.doc("<p>(Optional) The error message indicating if unexpected behavior was encountered with
         regards to the organization.</p>")
    @as("ErrorMessage")
    errorMessage: option<string_>,
    @ocaml.doc("<p>The date at which the organization became usable in the WorkMail context, in UNIX epoch
         time format.</p>")
    @as("CompletedDate")
    completedDate: option<timestamp_>,
    @ocaml.doc("<p>The default mail domain associated with the organization.</p>")
    @as("DefaultMailDomain")
    defaultMailDomain: option<string_>,
    @ocaml.doc("<p>The type of directory associated with the WorkMail organization.</p>")
    @as("DirectoryType")
    directoryType: option<string_>,
    @ocaml.doc(
      "<p>The identifier for the directory associated with an Amazon WorkMail organization.</p>"
    )
    @as("DirectoryId")
    directoryId: option<string_>,
    @ocaml.doc("<p>The state of an organization.</p>") @as("State") state: option<string_>,
    @ocaml.doc("<p>The alias for an organization.</p>") @as("Alias")
    alias: option<organizationName>,
    @ocaml.doc("<p>The identifier of an organization.</p>") @as("OrganizationId")
    organizationId: option<organizationId>,
  }
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "DescribeOrganizationCommand"
  let make = (~organizationId, ()) => new({organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMailboxExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The organization ID.</p>") @as("OrganizationId") organizationId: organizationId,
    @ocaml.doc("<p>The mailbox export job ID.</p>") @as("JobId") jobId: mailboxExportJobId,
  }
  type response = {
    @ocaml.doc("<p>The mailbox export job end timestamp.</p>") @as("EndTime")
    endTime: option<timestamp_>,
    @ocaml.doc("<p>The mailbox export job start timestamp.</p>") @as("StartTime")
    startTime: option<timestamp_>,
    @ocaml.doc("<p>Error information for failed mailbox export jobs.</p>") @as("ErrorInfo")
    errorInfo: option<mailboxExportErrorInfo>,
    @ocaml.doc("<p>The state of the mailbox export job.</p>") @as("State")
    state: option<mailboxExportJobState>,
    @ocaml.doc("<p>The estimated progress of the mailbox export job, in percentage points.</p>")
    @as("EstimatedProgress")
    estimatedProgress: option<percentage>,
    @ocaml.doc("<p>The path to the S3 bucket and file that the mailbox export job is exporting
         to.</p>")
    @as("S3Path")
    s3Path: option<s3ObjectKey>,
    @ocaml.doc("<p>The S3 bucket prefix.</p>") @as("S3Prefix") s3Prefix: option<s3ObjectKey>,
    @ocaml.doc("<p>The name of the S3 bucket.</p>") @as("S3BucketName")
    s3BucketName: option<s3BucketName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the symmetric AWS Key Management Service (AWS KMS)
         key that encrypts the exported mailbox content.</p>")
    @as("KmsKeyArn")
    kmsKeyArn: option<kmsKeyArn>,
    @ocaml.doc("<p>The ARN of the AWS Identity and Access Management (IAM) role that grants write permission to the Amazon Simple
         Storage Service (Amazon S3) bucket.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The mailbox export job description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The identifier of the user or resource associated with the mailbox.</p>")
    @as("EntityId")
    entityId: option<workMailIdentifier>,
  }
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "DescribeMailboxExportJobCommand"
  let make = (~organizationId, ~jobId, ()) => new({organizationId: organizationId, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the group to be described.</p>") @as("GroupId")
    groupId: workMailIdentifier,
    @ocaml.doc("<p>The identifier for the organization under which the group exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The date and time when a user was deregistered from WorkMail, in UNIX epoch time
         format.</p>")
    @as("DisabledDate")
    disabledDate: option<timestamp_>,
    @ocaml.doc("<p>The date and time when a user was registered to WorkMail, in UNIX epoch time
         format.</p>")
    @as("EnabledDate")
    enabledDate: option<timestamp_>,
    @ocaml.doc("<p>The state of the user: enabled (registered to Amazon WorkMail) or disabled (deregistered or
         never registered to WorkMail).</p>")
    @as("State")
    state: option<entityState>,
    @ocaml.doc("<p>The email of the described group.</p>") @as("Email") email: option<emailAddress>,
    @ocaml.doc("<p>The name of the described group.</p>") @as("Name") name: option<groupName>,
    @ocaml.doc("<p>The identifier of the described group.</p>") @as("GroupId")
    groupId: option<workMailIdentifier>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "DescribeGroupCommand"
  let make = (~groupId, ~organizationId, ()) =>
    new({groupId: groupId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterFromWorkMail = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the member (user or group) to be updated.</p>")
    @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc(
      "<p>The identifier for the organization under which the Amazon WorkMail entity exists.</p>"
    )
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "DeregisterFromWorkMailCommand"
  let make = (~entityId, ~organizationId, ()) =>
    new({entityId: entityId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteUser = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the user to be deleted.</p>") @as("UserId")
    userId: workMailIdentifier,
    @ocaml.doc("<p>The organization that contains the user to be deleted.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "DeleteUserCommand"
  let make = (~userId, ~organizationId, ()) => new({userId: userId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRetentionPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The retention policy ID.</p>") @as("Id") id: shortString,
    @ocaml.doc("<p>The organization ID.</p>") @as("OrganizationId") organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "DeleteRetentionPolicyCommand"
  let make = (~id, ~organizationId, ()) => new({id: id, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the resource to be deleted.</p>") @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc("<p>The identifier associated with the organization from which the resource is
         deleted.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "DeleteResourceCommand"
  let make = (~resourceId, ~organizationId, ()) =>
    new({resourceId: resourceId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOrganization = {
  type t
  type request = {
    @ocaml.doc(
      "<p>If true, deletes the AWS Directory Service directory associated with the organization.</p>"
    )
    @as("DeleteDirectory")
    deleteDirectory: boolean_,
    @ocaml.doc("<p>The organization ID.</p>") @as("OrganizationId") organizationId: organizationId,
    @ocaml.doc("<p>The idempotency token associated with the request.</p>") @as("ClientToken")
    clientToken: option<idempotencyClientToken>,
  }
  type response = {
    @ocaml.doc("<p>The state of the organization.</p>") @as("State") state: option<string_>,
    @ocaml.doc("<p>The organization ID.</p>") @as("OrganizationId")
    organizationId: option<organizationId>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "DeleteOrganizationCommand"
  let make = (~deleteDirectory, ~organizationId, ~clientToken=?, ()) =>
    new({
      deleteDirectory: deleteDirectory,
      organizationId: organizationId,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMobileDeviceAccessRule = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the rule to be deleted.</p>") @as("MobileDeviceAccessRuleId")
    mobileDeviceAccessRuleId: mobileDeviceAccessRuleId,
    @ocaml.doc("<p>The Amazon WorkMail organization under which the rule will be deleted.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "DeleteMobileDeviceAccessRuleCommand"
  let make = (~mobileDeviceAccessRuleId, ~organizationId, ()) =>
    new({mobileDeviceAccessRuleId: mobileDeviceAccessRuleId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMailboxPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the member (user or group) for which to delete granted
         permissions.</p>")
    @as("GranteeId")
    granteeId: workMailIdentifier,
    @ocaml.doc("<p>The identifier of the member (user or group) that owns the mailbox.</p>")
    @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc("<p>The identifier of the organization under which the member (user or group)
         exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "DeleteMailboxPermissionsCommand"
  let make = (~granteeId, ~entityId, ~organizationId, ()) =>
    new({granteeId: granteeId, entityId: entityId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the group to be deleted.</p>") @as("GroupId")
    groupId: workMailIdentifier,
    @ocaml.doc("<p>The organization that contains the group.</p>") @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "DeleteGroupCommand"
  let make = (~groupId, ~organizationId, ()) =>
    new({groupId: groupId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The aliases to be removed from the user's set of aliases. Duplicate entries in the
         list are collapsed into single entries (the list is transformed into a set).</p>")
    @as("Alias")
    alias: emailAddress,
    @ocaml.doc("<p>The identifier for the member (user or group) from which to have the aliases
         removed.</p>")
    @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc("<p>The identifier for the organization under which the user exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "DeleteAliasCommand"
  let make = (~alias, ~entityId, ~organizationId, ()) =>
    new({alias: alias, entityId: entityId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessControlRule = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the access control rule.</p>") @as("Name")
    name: accessControlRuleName,
    @ocaml.doc("<p>The identifier for the organization.</p>") @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "DeleteAccessControlRuleCommand"
  let make = (~name, ~organizationId, ()) => new({name: name, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateUser = {
  type t
  type request = {
    @ocaml.doc("<p>The password for the new user.</p>") @as("Password") password: password,
    @ocaml.doc("<p>The display name for the new user.</p>") @as("DisplayName") displayName: string_,
    @ocaml.doc(
      "<p>The name for the new user. WorkMail directory user names have a maximum length of 64. All others have a maximum length of 20.</p>"
    )
    @as("Name")
    name: userName,
    @ocaml.doc("<p>The identifier of the organization for which the user is created.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The identifier for the new user.</p>") @as("UserId")
    userId: option<workMailIdentifier>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "CreateUserCommand"
  let make = (~password, ~displayName, ~name, ~organizationId, ()) =>
    new({password: password, displayName: displayName, name: name, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResource = {
  type t
  type request = {
    @ocaml.doc("<p>The type of the new resource. The available types are <code>equipment</code> and
            <code>room</code>.</p>")
    @as("Type")
    type_: resourceType,
    @ocaml.doc("<p>The name of the new resource.</p>") @as("Name") name: resourceName,
    @ocaml.doc("<p>The identifier associated with the organization for which the resource is
         created.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the new resource.</p>") @as("ResourceId")
    resourceId: option<resourceId>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "CreateResourceCommand"
  let make = (~type_, ~name, ~organizationId, ()) =>
    new({type_: type_, name: name, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the group.</p>") @as("Name") name: groupName,
    @ocaml.doc("<p>The organization under which the group is to be created.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the group.</p>") @as("GroupId")
    groupId: option<workMailIdentifier>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "CreateGroupCommand"
  let make = (~name, ~organizationId, ()) => new({name: name, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The alias to add to the member set.</p>") @as("Alias") alias: emailAddress,
    @ocaml.doc("<p>The member (user or group) to which this alias is added.</p>") @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc("<p>The organization under which the member (user or group) exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "CreateAliasCommand"
  let make = (~alias, ~entityId, ~organizationId, ()) =>
    new({alias: alias, entityId: entityId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelMailboxExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The organization ID.</p>") @as("OrganizationId") organizationId: organizationId,
    @ocaml.doc("<p>The job ID.</p>") @as("JobId") jobId: mailboxExportJobId,
    @ocaml.doc("<p>The idempotency token for the client request.</p>") @as("ClientToken")
    clientToken: idempotencyClientToken,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "CancelMailboxExportJobCommand"
  let make = (~organizationId, ~jobId, ~clientToken, ()) =>
    new({organizationId: organizationId, jobId: jobId, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateMemberToGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The member (user or group) to associate to the group.</p>") @as("MemberId")
    memberId: workMailIdentifier,
    @ocaml.doc("<p>The group to which the member (user or group) is associated.</p>") @as("GroupId")
    groupId: workMailIdentifier,
    @ocaml.doc("<p>The organization under which the group exists.</p>") @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "AssociateMemberToGroupCommand"
  let make = (~memberId, ~groupId, ~organizationId, ()) =>
    new({memberId: memberId, groupId: groupId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateDelegateToResource = {
  type t
  type request = {
    @ocaml.doc("<p>The member (user or group) to associate to the resource.</p>") @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc("<p>The resource for which members (users or groups) are associated.</p>")
    @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc("<p>The organization under which the resource exists.</p>") @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "AssociateDelegateToResourceCommand"
  let make = (~entityId, ~resourceId, ~organizationId, ()) =>
    new({entityId: entityId, resourceId: resourceId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource's booking options to be updated.</p>") @as("BookingOptions")
    bookingOptions: option<bookingOptions>,
    @ocaml.doc("<p>The name of the resource to be updated.</p>") @as("Name")
    name: option<resourceName>,
    @ocaml.doc("<p>The identifier of the resource to be updated.</p>") @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc("<p>The identifier associated with the organization for which the resource is
         updated.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "UpdateResourceCommand"
  let make = (~resourceId, ~organizationId, ~bookingOptions=?, ~name=?, ()) =>
    new({
      bookingOptions: bookingOptions,
      name: name,
      resourceId: resourceId,
      organizationId: organizationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateMobileDeviceAccessRule = {
  type t
  type request = {
    @ocaml.doc(
      "<p>User agents that the updated rule <b>will not</b> match. All other user agents will match.</p>"
    )
    @as("NotDeviceUserAgents")
    notDeviceUserAgents: option<deviceUserAgentList>,
    @ocaml.doc("<p>User agents that the updated rule will match.</p>") @as("DeviceUserAgents")
    deviceUserAgents: option<deviceUserAgentList>,
    @ocaml.doc(
      "<p>Device operating systems that the updated rule <b>will not</b> match. All other device operating systems will match.</p>"
    )
    @as("NotDeviceOperatingSystems")
    notDeviceOperatingSystems: option<deviceOperatingSystemList>,
    @ocaml.doc("<p>Device operating systems that the updated rule will match.</p>")
    @as("DeviceOperatingSystems")
    deviceOperatingSystems: option<deviceOperatingSystemList>,
    @ocaml.doc(
      "<p>Device models that the updated rule <b>will not</b> match. All other device models will match.</p>"
    )
    @as("NotDeviceModels")
    notDeviceModels: option<deviceModelList>,
    @ocaml.doc("<p>Device models that the updated rule will match.</p>") @as("DeviceModels")
    deviceModels: option<deviceModelList>,
    @ocaml.doc(
      "<p>Device types that the updated rule <b>will not</b> match. All other device types will match.</p>"
    )
    @as("NotDeviceTypes")
    notDeviceTypes: option<deviceTypeList>,
    @ocaml.doc("<p>Device types that the updated rule will match.</p>") @as("DeviceTypes")
    deviceTypes: option<deviceTypeList>,
    @ocaml.doc(
      "<p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>"
    )
    @as("Effect")
    effect: mobileDeviceAccessRuleEffect,
    @ocaml.doc("<p>The updated rule description.</p>") @as("Description")
    description: option<mobileDeviceAccessRuleDescription>,
    @ocaml.doc("<p>The updated rule name.</p>") @as("Name") name: mobileDeviceAccessRuleName,
    @ocaml.doc("<p>The identifier of the rule to be updated.</p>") @as("MobileDeviceAccessRuleId")
    mobileDeviceAccessRuleId: mobileDeviceAccessRuleId,
    @ocaml.doc("<p>The Amazon WorkMail organization under which the rule will be updated.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "UpdateMobileDeviceAccessRuleCommand"
  let make = (
    ~effect,
    ~name,
    ~mobileDeviceAccessRuleId,
    ~organizationId,
    ~notDeviceUserAgents=?,
    ~deviceUserAgents=?,
    ~notDeviceOperatingSystems=?,
    ~deviceOperatingSystems=?,
    ~notDeviceModels=?,
    ~deviceModels=?,
    ~notDeviceTypes=?,
    ~deviceTypes=?,
    ~description=?,
    (),
  ) =>
    new({
      notDeviceUserAgents: notDeviceUserAgents,
      deviceUserAgents: deviceUserAgents,
      notDeviceOperatingSystems: notDeviceOperatingSystems,
      deviceOperatingSystems: deviceOperatingSystems,
      notDeviceModels: notDeviceModels,
      deviceModels: deviceModels,
      notDeviceTypes: notDeviceTypes,
      deviceTypes: deviceTypes,
      effect: effect,
      description: description,
      name: name,
      mobileDeviceAccessRuleId: mobileDeviceAccessRuleId,
      organizationId: organizationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceARN") resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutMailboxPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as
         the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF
         allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not
         mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full
         access to the mailbox, irrespective of other folder-level permissions set on the
         mailbox.</p>")
    @as("PermissionValues")
    permissionValues: permissionValues,
    @ocaml.doc("<p>The identifier of the user, group, or resource to which to grant the
         permissions.</p>")
    @as("GranteeId")
    granteeId: workMailIdentifier,
    @ocaml.doc("<p>The identifier of the user, group, or resource for which to update mailbox
         permissions.</p>")
    @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc("<p>The identifier of the organization under which the user, group, or resource
         exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "PutMailboxPermissionsCommand"
  let make = (~permissionValues, ~granteeId, ~entityId, ~organizationId, ()) =>
    new({
      permissionValues: permissionValues,
      granteeId: granteeId,
      entityId: entityId,
      organizationId: organizationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutAccessControlRule = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the organization.</p>") @as("OrganizationId")
    organizationId: organizationId,
    @ocaml.doc("<p>User IDs to exclude from the rule.</p>") @as("NotUserIds")
    notUserIds: option<userIdList>,
    @ocaml.doc("<p>User IDs to include in the rule.</p>") @as("UserIds")
    userIds: option<userIdList>,
    @ocaml.doc("<p>Access protocol actions to exclude from the rule. Valid values include
            <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
            <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>")
    @as("NotActions")
    notActions: option<actionsList>,
    @ocaml.doc("<p>Access protocol actions to include in the rule. Valid values include
            <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
            <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>")
    @as("Actions")
    actions: option<actionsList>,
    @ocaml.doc("<p>IPv4 CIDR ranges to exclude from the rule.</p>") @as("NotIpRanges")
    notIpRanges: option<ipRangeList>,
    @ocaml.doc("<p>IPv4 CIDR ranges to include in the rule.</p>") @as("IpRanges")
    ipRanges: option<ipRangeList>,
    @ocaml.doc("<p>The rule description.</p>") @as("Description")
    description: accessControlRuleDescription,
    @ocaml.doc("<p>The rule effect.</p>") @as("Effect") effect: accessControlRuleEffect,
    @ocaml.doc("<p>The rule name.</p>") @as("Name") name: accessControlRuleName,
  }

  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "PutAccessControlRuleCommand"
  let make = (
    ~organizationId,
    ~description,
    ~effect,
    ~name,
    ~notUserIds=?,
    ~userIds=?,
    ~notActions=?,
    ~actions=?,
    ~notIpRanges=?,
    ~ipRanges=?,
    (),
  ) =>
    new({
      organizationId: organizationId,
      notUserIds: notUserIds,
      userIds: userIds,
      notActions: notActions,
      actions: actions,
      notIpRanges: notIpRanges,
      ipRanges: ipRanges,
      description: description,
      effect: effect,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListAliases = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The first call does not
         contain any tokens.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for the entity for which to list the aliases.</p>")
    @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc("<p>The identifier for the organization under which the entity exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The value is \"null\" when there
         are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The entity's paginated aliases.</p>") @as("Aliases") aliases: option<aliases>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "ListAliasesCommand"
  let make = (~entityId, ~organizationId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      entityId: entityId,
      organizationId: organizationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessControlEffect = {
  type t
  type request = {
    @ocaml.doc("<p>The user ID.</p>") @as("UserId") userId: workMailIdentifier,
    @ocaml.doc("<p>The access protocol action. Valid values include <code>ActiveSync</code>,
            <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>,
            <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>")
    @as("Action")
    action: accessControlRuleAction,
    @ocaml.doc("<p>The IPv4 address.</p>") @as("IpAddress") ipAddress: ipAddress,
    @ocaml.doc("<p>The identifier for the organization.</p>") @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The rules that match the given parameters, resulting in an effect.</p>")
    @as("MatchedRules")
    matchedRules: option<accessControlRuleNameList>,
    @ocaml.doc("<p>The rule effect.</p>") @as("Effect") effect: option<accessControlRuleEffect>,
  }
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "GetAccessControlEffectCommand"
  let make = (~userId, ~action, ~ipAddress, ~organizationId, ()) =>
    new({userId: userId, action: action, ipAddress: ipAddress, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the resource to be described.</p>") @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc("<p>The identifier associated with the organization for which the resource is
         described.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The date and time when a resource was disabled from WorkMail, in UNIX epoch time
         format.</p>")
    @as("DisabledDate")
    disabledDate: option<timestamp_>,
    @ocaml.doc("<p>The date and time when a resource was enabled for WorkMail, in UNIX epoch time
         format.</p>")
    @as("EnabledDate")
    enabledDate: option<timestamp_>,
    @ocaml.doc("<p>The state of the resource: enabled (registered to Amazon WorkMail), disabled (deregistered
         or never registered to WorkMail), or deleted.</p>")
    @as("State")
    state: option<entityState>,
    @ocaml.doc("<p>The booking options for the described resource.</p>") @as("BookingOptions")
    bookingOptions: option<bookingOptions>,
    @ocaml.doc("<p>The type of the described resource.</p>") @as("Type")
    type_: option<resourceType>,
    @ocaml.doc("<p>The name of the described resource.</p>") @as("Name") name: option<resourceName>,
    @ocaml.doc("<p>The email of the described resource.</p>") @as("Email")
    email: option<emailAddress>,
    @ocaml.doc("<p>The identifier of the described resource.</p>") @as("ResourceId")
    resourceId: option<resourceId>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "DescribeResourceCommand"
  let make = (~resourceId, ~organizationId, ()) =>
    new({resourceId: resourceId, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMobileDeviceAccessRule = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Device user agents that the rule <b>will not</b> match. All other device user agents will match.</p>"
    )
    @as("NotDeviceUserAgents")
    notDeviceUserAgents: option<deviceUserAgentList>,
    @ocaml.doc("<p>Device user agents that the rule will match.</p>") @as("DeviceUserAgents")
    deviceUserAgents: option<deviceUserAgentList>,
    @ocaml.doc(
      "<p>Device operating systems that the rule <b>will not</b> match. All other device operating systems will match.</p>"
    )
    @as("NotDeviceOperatingSystems")
    notDeviceOperatingSystems: option<deviceOperatingSystemList>,
    @ocaml.doc("<p>Device operating systems that the rule will match.</p>")
    @as("DeviceOperatingSystems")
    deviceOperatingSystems: option<deviceOperatingSystemList>,
    @ocaml.doc(
      "<p>Device models that the rule <b>will not</b> match. All other device models will match.</p>"
    )
    @as("NotDeviceModels")
    notDeviceModels: option<deviceModelList>,
    @ocaml.doc("<p>Device models that the rule will match.</p>") @as("DeviceModels")
    deviceModels: option<deviceModelList>,
    @ocaml.doc(
      "<p>Device types that the rule <b>will not</b> match. All other device types will match.</p>"
    )
    @as("NotDeviceTypes")
    notDeviceTypes: option<deviceTypeList>,
    @ocaml.doc("<p>Device types that the rule will match.</p>") @as("DeviceTypes")
    deviceTypes: option<deviceTypeList>,
    @ocaml.doc(
      "<p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>"
    )
    @as("Effect")
    effect: mobileDeviceAccessRuleEffect,
    @ocaml.doc("<p>The rule description.</p>") @as("Description")
    description: option<mobileDeviceAccessRuleDescription>,
    @ocaml.doc("<p>The rule name.</p>") @as("Name") name: mobileDeviceAccessRuleName,
    @ocaml.doc("<p>The idempotency token for the client request.</p>") @as("ClientToken")
    clientToken: option<idempotencyClientToken>,
    @ocaml.doc("<p>The Amazon WorkMail organization under which the rule will be created.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The identifier for the newly created mobile device access rule.</p>")
    @as("MobileDeviceAccessRuleId")
    mobileDeviceAccessRuleId: option<mobileDeviceAccessRuleId>,
  }
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "CreateMobileDeviceAccessRuleCommand"
  let make = (
    ~effect,
    ~name,
    ~organizationId,
    ~notDeviceUserAgents=?,
    ~deviceUserAgents=?,
    ~notDeviceOperatingSystems=?,
    ~deviceOperatingSystems=?,
    ~notDeviceModels=?,
    ~deviceModels=?,
    ~notDeviceTypes=?,
    ~deviceTypes=?,
    ~description=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      notDeviceUserAgents: notDeviceUserAgents,
      deviceUserAgents: deviceUserAgents,
      notDeviceOperatingSystems: notDeviceOperatingSystems,
      deviceOperatingSystems: deviceOperatingSystems,
      notDeviceModels: notDeviceModels,
      deviceModels: deviceModels,
      notDeviceTypes: notDeviceTypes,
      deviceTypes: deviceTypes,
      effect: effect,
      description: description,
      name: name,
      clientToken: clientToken,
      organizationId: organizationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceARN") resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRetentionPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The retention policy folder configurations.</p>") @as("FolderConfigurations")
    folderConfigurations: folderConfigurations,
    @ocaml.doc("<p>The retention policy description.</p>") @as("Description")
    description: option<policyDescription>,
    @ocaml.doc("<p>The retention policy name.</p>") @as("Name") name: shortString,
    @ocaml.doc("<p>The retention policy ID.</p>") @as("Id") id: option<shortString>,
    @ocaml.doc("<p>The organization ID.</p>") @as("OrganizationId") organizationId: organizationId,
  }

  @module("@aws-sdk/client-workmail") @new external new: request => t = "PutRetentionPolicyCommand"
  let make = (~folderConfigurations, ~name, ~organizationId, ~description=?, ~id=?, ()) =>
    new({
      folderConfigurations: folderConfigurations,
      description: description,
      name: name,
      id: id,
      organizationId: organizationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListUsers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The first call does not
         contain any tokens.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for the organization under which the users exist.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p> The token to use to retrieve the next page of results. This value is `null` when
         there are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The overview of users for an organization.</p>") @as("Users")
    users: option<users>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "ListUsersCommand"
  let make = (~organizationId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>A list of tag key-value pairs.</p>") @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResources = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The first call does not
         contain any tokens.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for the organization under which the resources exist.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p> The token used to paginate through all the organization's resources. While results
         are still available, it has an associated value. When the last page is reached, the token
         is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>One page of the organization's resource representation.</p>") @as("Resources")
    resources: option<resources>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "ListResourcesCommand"
  let make = (~organizationId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceDelegates = {
  type t
  type request = {
    @ocaml.doc("<p>The number of maximum results in a page.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token used to paginate through the delegates associated with a
         resource.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for the resource whose delegates are listed.</p>")
    @as("ResourceId")
    resourceId: workMailIdentifier,
    @ocaml.doc("<p>The identifier for the organization that contains the resource for which delegates
         are listed.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The token used to paginate through the delegates associated with a resource. While
         results are still available, it has an associated value. When the last page is reached, the
         token is empty. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>One page of the resource's delegates.</p>") @as("Delegates")
    delegates: option<resourceDelegates>,
  }
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "ListResourceDelegatesCommand"
  let make = (~resourceId, ~organizationId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resourceId: resourceId,
      organizationId: organizationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOrganizations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The first call does not
         contain any tokens.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The value is \"null\" when there
         are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The overview of owned organizations presented as a list of organization
         summaries.</p>")
    @as("OrganizationSummaries")
    organizationSummaries: option<organizationSummaries>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "ListOrganizationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMailboxExportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The organization ID.</p>") @as("OrganizationId") organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The mailbox export job details.</p>") @as("Jobs") jobs: option<jobs>,
  }
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "ListMailboxExportJobsCommand"
  let make = (~organizationId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The first call does not
         contain any tokens.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for the organization under which the groups exist.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The value is \"null\" when there
         are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The overview of groups for an organization.</p>") @as("Groups")
    groups: option<groups>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "ListGroupsCommand"
  let make = (~organizationId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroupMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The token to use to retrieve the next page of results. The first call does not
         contain any tokens.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for the group to which the members (users or groups) are
         associated.</p>")
    @as("GroupId")
    groupId: workMailIdentifier,
    @ocaml.doc("<p>The identifier for the organization under which the group exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The first call does not
         contain any tokens.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The members associated to the group.</p>") @as("Members")
    members: option<members>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "ListGroupMembersCommand"
  let make = (~groupId, ~organizationId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      groupId: groupId,
      organizationId: organizationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMobileDeviceAccessEffect = {
  type t
  type request = {
    @ocaml.doc("<p>Device user agent the simulated user will report.</p>") @as("DeviceUserAgent")
    deviceUserAgent: option<deviceUserAgent>,
    @ocaml.doc("<p>Device operating system the simulated user will report.</p>")
    @as("DeviceOperatingSystem")
    deviceOperatingSystem: option<deviceOperatingSystem>,
    @ocaml.doc("<p>Device model the simulated user will report.</p>") @as("DeviceModel")
    deviceModel: option<deviceModel>,
    @ocaml.doc("<p>Device type the simulated user will report.</p>") @as("DeviceType")
    deviceType: option<deviceType>,
    @ocaml.doc("<p>The Amazon WorkMail organization to simulate the access effect for.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of the rules which matched the simulated user input and produced the effect.</p>"
    )
    @as("MatchedRules")
    matchedRules: option<mobileDeviceAccessMatchedRuleList>,
    @ocaml.doc("<p>The effect of the simulated access, <code>ALLOW</code> or <code>DENY</code>, after evaluating mobile device access rules in the Amazon WorkMail organization for the simulated 
         user parameters.</p>")
    @as("Effect")
    effect: option<mobileDeviceAccessRuleEffect>,
  }
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "GetMobileDeviceAccessEffectCommand"
  let make = (
    ~organizationId,
    ~deviceUserAgent=?,
    ~deviceOperatingSystem=?,
    ~deviceModel=?,
    ~deviceType=?,
    (),
  ) =>
    new({
      deviceUserAgent: deviceUserAgent,
      deviceOperatingSystem: deviceOperatingSystem,
      deviceModel: deviceModel,
      deviceType: deviceType,
      organizationId: organizationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDefaultRetentionPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The organization ID.</p>") @as("OrganizationId") organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The retention policy folder configurations.</p>") @as("FolderConfigurations")
    folderConfigurations: option<folderConfigurations>,
    @ocaml.doc("<p>The retention policy description.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The retention policy name.</p>") @as("Name") name: option<shortString>,
    @ocaml.doc("<p>The retention policy ID.</p>") @as("Id") id: option<shortString>,
  }
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "GetDefaultRetentionPolicyCommand"
  let make = (~organizationId, ()) => new({organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOrganization = {
  type t
  type request = {
    @ocaml.doc(
      "<p>When <code>true</code>, allows organization interoperability between Amazon WorkMail and Microsoft Exchange. Can only be set to <code>true</code> if an AD Connector directory ID is included in the request.</p>"
    )
    @as("EnableInteroperability")
    enableInteroperability: option<boolean_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a customer managed master key from AWS
         KMS.</p>")
    @as("KmsKeyArn")
    kmsKeyArn: option<kmsKeyArn>,
    @ocaml.doc("<p>The email domains to associate with the organization.</p>") @as("Domains")
    domains: option<domains>,
    @ocaml.doc("<p>The idempotency token associated with the request.</p>") @as("ClientToken")
    clientToken: option<idempotencyClientToken>,
    @ocaml.doc("<p>The organization alias.</p>") @as("Alias") alias: organizationName,
    @ocaml.doc("<p>The AWS Directory Service directory ID.</p>") @as("DirectoryId")
    directoryId: option<directoryId>,
  }
  type response = {
    @ocaml.doc("<p>The organization ID.</p>") @as("OrganizationId")
    organizationId: option<organizationId>,
  }
  @module("@aws-sdk/client-workmail") @new external new: request => t = "CreateOrganizationCommand"
  let make = (
    ~alias,
    ~enableInteroperability=?,
    ~kmsKeyArn=?,
    ~domains=?,
    ~clientToken=?,
    ~directoryId=?,
    (),
  ) =>
    new({
      enableInteroperability: enableInteroperability,
      kmsKeyArn: kmsKeyArn,
      domains: domains,
      clientToken: clientToken,
      alias: alias,
      directoryId: directoryId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMobileDeviceAccessRules = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon WorkMail organization for which to list the rules.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc(
      "<p>The list of mobile device access rules that exist under the specified Amazon WorkMail organization.</p>"
    )
    @as("Rules")
    rules: option<mobileDeviceAccessRulesList>,
  }
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "ListMobileDeviceAccessRulesCommand"
  let make = (~organizationId, ()) => new({organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMailboxPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The first call does not
         contain any tokens.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the user, group, or resource for which to list mailbox
         permissions.</p>")
    @as("EntityId")
    entityId: workMailIdentifier,
    @ocaml.doc("<p>The identifier of the organization under which the user, group, or resource
         exists.</p>")
    @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The value is \"null\" when there
         are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>One page of the user, group, or resource mailbox permissions.</p>")
    @as("Permissions")
    permissions: option<permissions>,
  }
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "ListMailboxPermissionsCommand"
  let make = (~entityId, ~organizationId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      entityId: entityId,
      organizationId: organizationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccessControlRules = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the organization.</p>") @as("OrganizationId")
    organizationId: organizationId,
  }
  type response = {
    @ocaml.doc("<p>The access control rules.</p>") @as("Rules")
    rules: option<accessControlRulesList>,
  }
  @module("@aws-sdk/client-workmail") @new
  external new: request => t = "ListAccessControlRulesCommand"
  let make = (~organizationId, ()) => new({organizationId: organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
