type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type workMailIdentifier = string
type userRole = [@as("SYSTEM_USER") #SYSTEM_USER | @as("RESOURCE") #RESOURCE | @as("USER") #USER]
type userName = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type amazonawsString = string
type shortString = string
type s3ObjectKey = string
type s3BucketName = string
type roleArn = string
type retentionPeriod = int;
type retentionAction = [@as("PERMANENTLY_DELETE") #PERMANENTLY_DELETE | @as("DELETE") #DELETE | @as("NONE") #NONE]
type resourceType = [@as("EQUIPMENT") #EQUIPMENT | @as("ROOM") #ROOM]
type resourceName = string
type resourceId = string
type policyDescription = string
type permissionType = [@as("SEND_ON_BEHALF") #SEND_ON_BEHALF | @as("SEND_AS") #SEND_AS | @as("FULL_ACCESS") #FULL_ACCESS]
type percentage = int;
type password = string
type organizationName = string
type organizationId = string
type nextToken = string
type mobileDeviceAccessRuleName = string
type mobileDeviceAccessRuleId = string
type mobileDeviceAccessRuleEffect = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type mobileDeviceAccessRuleDescription = string
type memberType = [@as("USER") #USER | @as("GROUP") #GROUP]
type maxResults = int;
type mailboxSize = float;
type mailboxQuota = int;
type mailboxExportJobState = [@as("CANCELLED") #CANCELLED | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("RUNNING") #RUNNING]
type mailboxExportJobId = string
type mailboxExportErrorInfo = string
type kmsKeyArn = string
type ipRange = string
type ipAddress = string
type idempotencyClientToken = string
type hostedZoneId = string
type groupName = string
type folderName = [@as("JUNK_EMAIL") #JUNK_EMAIL | @as("DRAFTS") #DRAFTS | @as("SENT_ITEMS") #SENT_ITEMS | @as("DELETED_ITEMS") #DELETED_ITEMS | @as("INBOX") #INBOX]
type entityState = [@as("DELETED") #DELETED | @as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type emailAddress = string
type domainName = string
type directoryId = string
type deviceUserAgent = string
type deviceType = string
type deviceOperatingSystem = string
type deviceModel = string
type description = string
type amazonawsBoolean = bool;
type amazonResourceName = string
type accessControlRuleName = string
type accessControlRuleEffect = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type accessControlRuleDescription = string
type accessControlRuleAction = string
type userIdList = array<workMailIdentifier>
type user = {
@as("DisabledDate") disabledDate: amazonawsTimestamp,
@as("EnabledDate") enabledDate: amazonawsTimestamp,
@as("UserRole") userRole: userRole,
@as("State") state: entityState,
@as("DisplayName") displayName: amazonawsString,
@as("Name") name: userName,
@as("Email") email: emailAddress,
@as("Id") id: workMailIdentifier
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type resource = {
@as("DisabledDate") disabledDate: amazonawsTimestamp,
@as("EnabledDate") enabledDate: amazonawsTimestamp,
@as("State") state: entityState,
@as("Type") type_: resourceType,
@as("Name") name: resourceName,
@as("Email") email: emailAddress,
@as("Id") id: workMailIdentifier
}
type permissionValues = array<permissionType>
type organizationSummary = {
@as("State") state: amazonawsString,
@as("ErrorMessage") errorMessage: amazonawsString,
@as("DefaultMailDomain") defaultMailDomain: domainName,
@as("Alias") alias: organizationName,
@as("OrganizationId") organizationId: organizationId
}
type mobileDeviceAccessMatchedRule = {
@as("Name") name: mobileDeviceAccessRuleName,
@as("MobileDeviceAccessRuleId") mobileDeviceAccessRuleId: mobileDeviceAccessRuleId
}
type member = {
@as("DisabledDate") disabledDate: amazonawsTimestamp,
@as("EnabledDate") enabledDate: amazonawsTimestamp,
@as("State") state: entityState,
@as("Type") type_: memberType,
@as("Name") name: amazonawsString,
@as("Id") id: amazonawsString
}
type mailboxExportJob = {
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp,
@as("State") state: mailboxExportJobState,
@as("EstimatedProgress") estimatedProgress: percentage,
@as("S3Path") s3Path: s3ObjectKey,
@as("S3BucketName") s3BucketName: s3BucketName,
@as("Description") description: description,
@as("EntityId") entityId: workMailIdentifier,
@as("JobId") jobId: mailboxExportJobId
}
type ipRangeList = array<ipRange>
type group = {
@as("DisabledDate") disabledDate: amazonawsTimestamp,
@as("EnabledDate") enabledDate: amazonawsTimestamp,
@as("State") state: entityState,
@as("Name") name: groupName,
@as("Email") email: emailAddress,
@as("Id") id: workMailIdentifier
}
type folderConfiguration = {
@as("Period") period: retentionPeriod,
@as("Action") action: option<retentionAction>,
@as("Name") name: option<folderName>
}
type domain = {
@as("HostedZoneId") hostedZoneId: hostedZoneId,
@as("DomainName") domainName: domainName
}
type deviceUserAgentList = array<deviceUserAgent>
type deviceTypeList = array<deviceType>
type deviceOperatingSystemList = array<deviceOperatingSystem>
type deviceModelList = array<deviceModel>
type delegate = {
@as("Type") type_: option<memberType>,
@as("Id") id: option<amazonawsString>
}
type bookingOptions = {
@as("AutoDeclineConflictingRequests") autoDeclineConflictingRequests: amazonawsBoolean,
@as("AutoDeclineRecurringRequests") autoDeclineRecurringRequests: amazonawsBoolean,
@as("AutoAcceptRequests") autoAcceptRequests: amazonawsBoolean
}
type aliases = array<emailAddress>
type actionsList = array<accessControlRuleAction>
type accessControlRuleNameList = array<accessControlRuleName>
type users = array<user>
type tagList = array<tag>
type resources = array<resource>
type resourceDelegates = array<delegate>
type permission = {
@as("PermissionValues") permissionValues: option<permissionValues>,
@as("GranteeType") granteeType: option<memberType>,
@as("GranteeId") granteeId: option<workMailIdentifier>
}
type organizationSummaries = array<organizationSummary>
type mobileDeviceAccessRule = {
@as("DateModified") dateModified: amazonawsTimestamp,
@as("DateCreated") dateCreated: amazonawsTimestamp,
@as("NotDeviceUserAgents") notDeviceUserAgents: deviceUserAgentList,
@as("DeviceUserAgents") deviceUserAgents: deviceUserAgentList,
@as("NotDeviceOperatingSystems") notDeviceOperatingSystems: deviceOperatingSystemList,
@as("DeviceOperatingSystems") deviceOperatingSystems: deviceOperatingSystemList,
@as("NotDeviceModels") notDeviceModels: deviceModelList,
@as("DeviceModels") deviceModels: deviceModelList,
@as("NotDeviceTypes") notDeviceTypes: deviceTypeList,
@as("DeviceTypes") deviceTypes: deviceTypeList,
@as("Effect") effect: mobileDeviceAccessRuleEffect,
@as("Description") description: mobileDeviceAccessRuleDescription,
@as("Name") name: mobileDeviceAccessRuleName,
@as("MobileDeviceAccessRuleId") mobileDeviceAccessRuleId: mobileDeviceAccessRuleId
}
type mobileDeviceAccessMatchedRuleList = array<mobileDeviceAccessMatchedRule>
type members = array<member>
type jobs = array<mailboxExportJob>
type groups = array<group>
type folderConfigurations = array<folderConfiguration>
type domains = array<domain>
type accessControlRule = {
@as("DateModified") dateModified: amazonawsTimestamp,
@as("DateCreated") dateCreated: amazonawsTimestamp,
@as("NotUserIds") notUserIds: userIdList,
@as("UserIds") userIds: userIdList,
@as("NotActions") notActions: actionsList,
@as("Actions") actions: actionsList,
@as("NotIpRanges") notIpRanges: ipRangeList,
@as("IpRanges") ipRanges: ipRangeList,
@as("Description") description: accessControlRuleDescription,
@as("Effect") effect: accessControlRuleEffect,
@as("Name") name: accessControlRuleName
}
type permissions = array<permission>
type mobileDeviceAccessRulesList = array<mobileDeviceAccessRule>
type accessControlRulesList = array<accessControlRule>
type clientType;
@module("@aws-sdk/client-workmail") @new external createClient: unit => clientType = "WorkMailClient";
module UpdatePrimaryEmailAddress = {
  type t;
  type request = {
@as("Email") email: option<emailAddress>,
@as("EntityId") entityId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "UpdatePrimaryEmailAddressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMailboxQuota = {
  type t;
  type request = {
@as("MailboxQuota") mailboxQuota: option<mailboxQuota>,
@as("UserId") userId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "UpdateMailboxQuotaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMailboxExportJob = {
  type t;
  type request = {
@as("S3Prefix") s3Prefix: option<s3ObjectKey>,
@as("S3BucketName") s3BucketName: option<s3BucketName>,
@as("KmsKeyArn") kmsKeyArn: option<kmsKeyArn>,
@as("RoleArn") roleArn: option<roleArn>,
@as("Description") description: description,
@as("EntityId") entityId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>,
@as("ClientToken") clientToken: option<idempotencyClientToken>
}
  type response = {
@as("JobId") jobId: mailboxExportJobId
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "StartMailboxExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetPassword = {
  type t;
  type request = {
@as("Password") password: option<password>,
@as("UserId") userId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ResetPasswordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterToWorkMail = {
  type t;
  type request = {
@as("Email") email: option<emailAddress>,
@as("EntityId") entityId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "RegisterToWorkMailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMailboxDetails = {
  type t;
  type request = {
@as("UserId") userId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("MailboxSize") mailboxSize: mailboxSize,
@as("MailboxQuota") mailboxQuota: mailboxQuota
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "GetMailboxDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateMemberFromGroup = {
  type t;
  type request = {
@as("MemberId") memberId: option<workMailIdentifier>,
@as("GroupId") groupId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DisassociateMemberFromGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateDelegateFromResource = {
  type t;
  type request = {
@as("EntityId") entityId: option<workMailIdentifier>,
@as("ResourceId") resourceId: option<resourceId>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DisassociateDelegateFromResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUser = {
  type t;
  type request = {
@as("UserId") userId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("DisabledDate") disabledDate: amazonawsTimestamp,
@as("EnabledDate") enabledDate: amazonawsTimestamp,
@as("UserRole") userRole: userRole,
@as("State") state: entityState,
@as("DisplayName") displayName: amazonawsString,
@as("Email") email: emailAddress,
@as("Name") name: userName,
@as("UserId") userId: workMailIdentifier
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DescribeUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganization = {
  type t;
  type request = {
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("ARN") aRN: amazonResourceName,
@as("ErrorMessage") errorMessage: amazonawsString,
@as("CompletedDate") completedDate: amazonawsTimestamp,
@as("DefaultMailDomain") defaultMailDomain: amazonawsString,
@as("DirectoryType") directoryType: amazonawsString,
@as("DirectoryId") directoryId: amazonawsString,
@as("State") state: amazonawsString,
@as("Alias") alias: organizationName,
@as("OrganizationId") organizationId: organizationId
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DescribeOrganizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMailboxExportJob = {
  type t;
  type request = {
@as("OrganizationId") organizationId: option<organizationId>,
@as("JobId") jobId: option<mailboxExportJobId>
}
  type response = {
@as("EndTime") endTime: amazonawsTimestamp,
@as("StartTime") startTime: amazonawsTimestamp,
@as("ErrorInfo") errorInfo: mailboxExportErrorInfo,
@as("State") state: mailboxExportJobState,
@as("EstimatedProgress") estimatedProgress: percentage,
@as("S3Path") s3Path: s3ObjectKey,
@as("S3Prefix") s3Prefix: s3ObjectKey,
@as("S3BucketName") s3BucketName: s3BucketName,
@as("KmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("RoleArn") roleArn: roleArn,
@as("Description") description: description,
@as("EntityId") entityId: workMailIdentifier
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DescribeMailboxExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGroup = {
  type t;
  type request = {
@as("GroupId") groupId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("DisabledDate") disabledDate: amazonawsTimestamp,
@as("EnabledDate") enabledDate: amazonawsTimestamp,
@as("State") state: entityState,
@as("Email") email: emailAddress,
@as("Name") name: groupName,
@as("GroupId") groupId: workMailIdentifier
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DescribeGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterFromWorkMail = {
  type t;
  type request = {
@as("EntityId") entityId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeregisterFromWorkMailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("UserId") userId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRetentionPolicy = {
  type t;
  type request = {
@as("Id") id: option<shortString>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteRetentionPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResource = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<resourceId>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteOrganization = {
  type t;
  type request = {
@as("DeleteDirectory") deleteDirectory: option<amazonawsBoolean>,
@as("OrganizationId") organizationId: option<organizationId>,
@as("ClientToken") clientToken: idempotencyClientToken
}
  type response = {
@as("State") state: amazonawsString,
@as("OrganizationId") organizationId: organizationId
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteOrganizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMobileDeviceAccessRule = {
  type t;
  type request = {
@as("MobileDeviceAccessRuleId") mobileDeviceAccessRuleId: option<mobileDeviceAccessRuleId>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteMobileDeviceAccessRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMailboxPermissions = {
  type t;
  type request = {
@as("GranteeId") granteeId: option<workMailIdentifier>,
@as("EntityId") entityId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteMailboxPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGroup = {
  type t;
  type request = {
@as("GroupId") groupId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAlias = {
  type t;
  type request = {
@as("Alias") alias: option<emailAddress>,
@as("EntityId") entityId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAccessControlRule = {
  type t;
  type request = {
@as("Name") name: option<accessControlRuleName>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteAccessControlRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("Password") password: option<password>,
@as("DisplayName") displayName: option<amazonawsString>,
@as("Name") name: option<userName>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("UserId") userId: workMailIdentifier
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResource = {
  type t;
  type request = {
@as("Type") type_: option<resourceType>,
@as("Name") name: option<resourceName>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("ResourceId") resourceId: resourceId
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGroup = {
  type t;
  type request = {
@as("Name") name: option<groupName>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("GroupId") groupId: workMailIdentifier
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAlias = {
  type t;
  type request = {
@as("Alias") alias: option<emailAddress>,
@as("EntityId") entityId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelMailboxExportJob = {
  type t;
  type request = {
@as("OrganizationId") organizationId: option<organizationId>,
@as("JobId") jobId: option<mailboxExportJobId>,
@as("ClientToken") clientToken: option<idempotencyClientToken>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CancelMailboxExportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateMemberToGroup = {
  type t;
  type request = {
@as("MemberId") memberId: option<workMailIdentifier>,
@as("GroupId") groupId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "AssociateMemberToGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateDelegateToResource = {
  type t;
  type request = {
@as("EntityId") entityId: option<workMailIdentifier>,
@as("ResourceId") resourceId: option<resourceId>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "AssociateDelegateToResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateResource = {
  type t;
  type request = {
@as("BookingOptions") bookingOptions: bookingOptions,
@as("Name") name: resourceName,
@as("ResourceId") resourceId: option<resourceId>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "UpdateResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMobileDeviceAccessRule = {
  type t;
  type request = {
@as("NotDeviceUserAgents") notDeviceUserAgents: deviceUserAgentList,
@as("DeviceUserAgents") deviceUserAgents: deviceUserAgentList,
@as("NotDeviceOperatingSystems") notDeviceOperatingSystems: deviceOperatingSystemList,
@as("DeviceOperatingSystems") deviceOperatingSystems: deviceOperatingSystemList,
@as("NotDeviceModels") notDeviceModels: deviceModelList,
@as("DeviceModels") deviceModels: deviceModelList,
@as("NotDeviceTypes") notDeviceTypes: deviceTypeList,
@as("DeviceTypes") deviceTypes: deviceTypeList,
@as("Effect") effect: option<mobileDeviceAccessRuleEffect>,
@as("Description") description: mobileDeviceAccessRuleDescription,
@as("Name") name: option<mobileDeviceAccessRuleName>,
@as("MobileDeviceAccessRuleId") mobileDeviceAccessRuleId: option<mobileDeviceAccessRuleId>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "UpdateMobileDeviceAccessRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutMailboxPermissions = {
  type t;
  type request = {
@as("PermissionValues") permissionValues: option<permissionValues>,
@as("GranteeId") granteeId: option<workMailIdentifier>,
@as("EntityId") entityId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "PutMailboxPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAccessControlRule = {
  type t;
  type request = {
@as("OrganizationId") organizationId: option<organizationId>,
@as("NotUserIds") notUserIds: userIdList,
@as("UserIds") userIds: userIdList,
@as("NotActions") notActions: actionsList,
@as("Actions") actions: actionsList,
@as("NotIpRanges") notIpRanges: ipRangeList,
@as("IpRanges") ipRanges: ipRangeList,
@as("Description") description: option<accessControlRuleDescription>,
@as("Effect") effect: option<accessControlRuleEffect>,
@as("Name") name: option<accessControlRuleName>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "PutAccessControlRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAliases = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("EntityId") entityId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Aliases") aliases: aliases
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListAliasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccessControlEffect = {
  type t;
  type request = {
@as("UserId") userId: option<workMailIdentifier>,
@as("Action") action: option<accessControlRuleAction>,
@as("IpAddress") ipAddress: option<ipAddress>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("MatchedRules") matchedRules: accessControlRuleNameList,
@as("Effect") effect: accessControlRuleEffect
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "GetAccessControlEffectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeResource = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<resourceId>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("DisabledDate") disabledDate: amazonawsTimestamp,
@as("EnabledDate") enabledDate: amazonawsTimestamp,
@as("State") state: entityState,
@as("BookingOptions") bookingOptions: bookingOptions,
@as("Type") type_: resourceType,
@as("Name") name: resourceName,
@as("Email") email: emailAddress,
@as("ResourceId") resourceId: resourceId
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DescribeResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMobileDeviceAccessRule = {
  type t;
  type request = {
@as("NotDeviceUserAgents") notDeviceUserAgents: deviceUserAgentList,
@as("DeviceUserAgents") deviceUserAgents: deviceUserAgentList,
@as("NotDeviceOperatingSystems") notDeviceOperatingSystems: deviceOperatingSystemList,
@as("DeviceOperatingSystems") deviceOperatingSystems: deviceOperatingSystemList,
@as("NotDeviceModels") notDeviceModels: deviceModelList,
@as("DeviceModels") deviceModels: deviceModelList,
@as("NotDeviceTypes") notDeviceTypes: deviceTypeList,
@as("DeviceTypes") deviceTypes: deviceTypeList,
@as("Effect") effect: option<mobileDeviceAccessRuleEffect>,
@as("Description") description: mobileDeviceAccessRuleDescription,
@as("Name") name: option<mobileDeviceAccessRuleName>,
@as("ClientToken") clientToken: idempotencyClientToken,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("MobileDeviceAccessRuleId") mobileDeviceAccessRuleId: mobileDeviceAccessRuleId
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateMobileDeviceAccessRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRetentionPolicy = {
  type t;
  type request = {
@as("FolderConfigurations") folderConfigurations: option<folderConfigurations>,
@as("Description") description: policyDescription,
@as("Name") name: option<shortString>,
@as("Id") id: shortString,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "PutRetentionPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Users") users: users
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResources = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Resources") resources: resources
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResourceDelegates = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("ResourceId") resourceId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Delegates") delegates: resourceDelegates
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListResourceDelegatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOrganizations = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("OrganizationSummaries") organizationSummaries: organizationSummaries
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListOrganizationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMailboxExportJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Jobs") jobs: jobs
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListMailboxExportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Groups") groups: groups
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroupMembers = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("GroupId") groupId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Members") members: members
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListGroupMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMobileDeviceAccessEffect = {
  type t;
  type request = {
@as("DeviceUserAgent") deviceUserAgent: deviceUserAgent,
@as("DeviceOperatingSystem") deviceOperatingSystem: deviceOperatingSystem,
@as("DeviceModel") deviceModel: deviceModel,
@as("DeviceType") deviceType: deviceType,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("MatchedRules") matchedRules: mobileDeviceAccessMatchedRuleList,
@as("Effect") effect: mobileDeviceAccessRuleEffect
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "GetMobileDeviceAccessEffectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDefaultRetentionPolicy = {
  type t;
  type request = {
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("FolderConfigurations") folderConfigurations: folderConfigurations,
@as("Description") description: amazonawsString,
@as("Name") name: shortString,
@as("Id") id: shortString
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "GetDefaultRetentionPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateOrganization = {
  type t;
  type request = {
@as("EnableInteroperability") enableInteroperability: amazonawsBoolean,
@as("KmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("Domains") domains: domains,
@as("ClientToken") clientToken: idempotencyClientToken,
@as("Alias") alias: option<organizationName>,
@as("DirectoryId") directoryId: directoryId
}
  type response = {
@as("OrganizationId") organizationId: organizationId
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateOrganizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMobileDeviceAccessRules = {
  type t;
  type request = {
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("Rules") rules: mobileDeviceAccessRulesList
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListMobileDeviceAccessRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMailboxPermissions = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("EntityId") entityId: option<workMailIdentifier>,
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Permissions") permissions: permissions
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListMailboxPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccessControlRules = {
  type t;
  type request = {
@as("OrganizationId") organizationId: option<organizationId>
}
  type response = {
@as("Rules") rules: accessControlRulesList
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListAccessControlRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
