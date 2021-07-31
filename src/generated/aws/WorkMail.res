type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-workmail") @new external createClient: unit => awsServiceClient = "WorkMailClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type workMailIdentifier = string
type userRole = [@as("SYSTEM_USER") #SYSTEM_USER | @as("RESOURCE") #RESOURCE | @as("USER") #USER]
type userName = string
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type string_ = string
type shortString = string
type s3ObjectKey = string
type s3BucketName = string
type roleArn = string
type retentionPeriod = int
type retentionAction = [@as("PERMANENTLY_DELETE") #PERMANENTLY_DELETE | @as("DELETE") #DELETE | @as("NONE") #NONE]
type resourceType = [@as("EQUIPMENT") #EQUIPMENT | @as("ROOM") #ROOM]
type resourceName = string
type resourceId = string
type policyDescription = string
type permissionType = [@as("SEND_ON_BEHALF") #SEND_ON_BEHALF | @as("SEND_AS") #SEND_AS | @as("FULL_ACCESS") #FULL_ACCESS]
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
type boolean_ = bool
type amazonResourceName = string
type accessControlRuleName = string
type accessControlRuleEffect = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type accessControlRuleDescription = string
type accessControlRuleAction = string
type userIdList = array<workMailIdentifier>
type user = {
@as("DisabledDate") disabledDate: option<timestamp_>,
  @as("EnabledDate") enabledDate: option<timestamp_>,
  @as("UserRole") userRole: option<userRole>,
  @as("State") state: option<entityState>,
  @as("DisplayName") displayName: option<string_>,
  @as("Name") name: option<userName>,
  @as("Email") email: option<emailAddress>,
  @as("Id") id: option<workMailIdentifier>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
  @as("Key") key: tagKey
}
type resource = {
@as("DisabledDate") disabledDate: option<timestamp_>,
  @as("EnabledDate") enabledDate: option<timestamp_>,
  @as("State") state: option<entityState>,
  @as("Type") type_: option<resourceType>,
  @as("Name") name: option<resourceName>,
  @as("Email") email: option<emailAddress>,
  @as("Id") id: option<workMailIdentifier>
}
type permissionValues = array<permissionType>
type organizationSummary = {
@as("State") state: option<string_>,
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("DefaultMailDomain") defaultMailDomain: option<domainName>,
  @as("Alias") alias: option<organizationName>,
  @as("OrganizationId") organizationId: option<organizationId>
}
type mobileDeviceAccessMatchedRule = {
@as("Name") name: option<mobileDeviceAccessRuleName>,
  @as("MobileDeviceAccessRuleId") mobileDeviceAccessRuleId: option<mobileDeviceAccessRuleId>
}
type member = {
@as("DisabledDate") disabledDate: option<timestamp_>,
  @as("EnabledDate") enabledDate: option<timestamp_>,
  @as("State") state: option<entityState>,
  @as("Type") type_: option<memberType>,
  @as("Name") name: option<string_>,
  @as("Id") id: option<string_>
}
type mailboxExportJob = {
@as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
  @as("State") state: option<mailboxExportJobState>,
  @as("EstimatedProgress") estimatedProgress: option<percentage>,
  @as("S3Path") s3Path: option<s3ObjectKey>,
  @as("S3BucketName") s3BucketName: option<s3BucketName>,
  @as("Description") description: option<description>,
  @as("EntityId") entityId: option<workMailIdentifier>,
  @as("JobId") jobId: option<mailboxExportJobId>
}
type ipRangeList = array<ipRange>
type group = {
@as("DisabledDate") disabledDate: option<timestamp_>,
  @as("EnabledDate") enabledDate: option<timestamp_>,
  @as("State") state: option<entityState>,
  @as("Name") name: option<groupName>,
  @as("Email") email: option<emailAddress>,
  @as("Id") id: option<workMailIdentifier>
}
type folderConfiguration = {
@as("Period") period: option<retentionPeriod>,
  @as("Action") action: retentionAction,
  @as("Name") name: folderName
}
type domain = {
@as("HostedZoneId") hostedZoneId: option<hostedZoneId>,
  @as("DomainName") domainName: option<domainName>
}
type deviceUserAgentList = array<deviceUserAgent>
type deviceTypeList = array<deviceType>
type deviceOperatingSystemList = array<deviceOperatingSystem>
type deviceModelList = array<deviceModel>
type delegate = {
@as("Type") type_: memberType,
  @as("Id") id: string_
}
type bookingOptions = {
@as("AutoDeclineConflictingRequests") autoDeclineConflictingRequests: option<boolean_>,
  @as("AutoDeclineRecurringRequests") autoDeclineRecurringRequests: option<boolean_>,
  @as("AutoAcceptRequests") autoAcceptRequests: option<boolean_>
}
type aliases = array<emailAddress>
type actionsList = array<accessControlRuleAction>
type accessControlRuleNameList = array<accessControlRuleName>
type users = array<user>
type tagList_ = array<tag>
type resources = array<resource>
type resourceDelegates = array<delegate>
type permission = {
@as("PermissionValues") permissionValues: permissionValues,
  @as("GranteeType") granteeType: memberType,
  @as("GranteeId") granteeId: workMailIdentifier
}
type organizationSummaries = array<organizationSummary>
type mobileDeviceAccessRule = {
@as("DateModified") dateModified: option<timestamp_>,
  @as("DateCreated") dateCreated: option<timestamp_>,
  @as("NotDeviceUserAgents") notDeviceUserAgents: option<deviceUserAgentList>,
  @as("DeviceUserAgents") deviceUserAgents: option<deviceUserAgentList>,
  @as("NotDeviceOperatingSystems") notDeviceOperatingSystems: option<deviceOperatingSystemList>,
  @as("DeviceOperatingSystems") deviceOperatingSystems: option<deviceOperatingSystemList>,
  @as("NotDeviceModels") notDeviceModels: option<deviceModelList>,
  @as("DeviceModels") deviceModels: option<deviceModelList>,
  @as("NotDeviceTypes") notDeviceTypes: option<deviceTypeList>,
  @as("DeviceTypes") deviceTypes: option<deviceTypeList>,
  @as("Effect") effect: option<mobileDeviceAccessRuleEffect>,
  @as("Description") description: option<mobileDeviceAccessRuleDescription>,
  @as("Name") name: option<mobileDeviceAccessRuleName>,
  @as("MobileDeviceAccessRuleId") mobileDeviceAccessRuleId: option<mobileDeviceAccessRuleId>
}
type mobileDeviceAccessMatchedRuleList = array<mobileDeviceAccessMatchedRule>
type members = array<member>
type jobs = array<mailboxExportJob>
type groups = array<group>
type folderConfigurations = array<folderConfiguration>
type domains = array<domain>
type accessControlRule = {
@as("DateModified") dateModified: option<timestamp_>,
  @as("DateCreated") dateCreated: option<timestamp_>,
  @as("NotUserIds") notUserIds: option<userIdList>,
  @as("UserIds") userIds: option<userIdList>,
  @as("NotActions") notActions: option<actionsList>,
  @as("Actions") actions: option<actionsList>,
  @as("NotIpRanges") notIpRanges: option<ipRangeList>,
  @as("IpRanges") ipRanges: option<ipRangeList>,
  @as("Description") description: option<accessControlRuleDescription>,
  @as("Effect") effect: option<accessControlRuleEffect>,
  @as("Name") name: option<accessControlRuleName>
}
type permissions = array<permission>
type mobileDeviceAccessRulesList = array<mobileDeviceAccessRule>
type accessControlRulesList = array<accessControlRule>

module UpdatePrimaryEmailAddress = {
  type t;
  type request = {
@as("Email") email: emailAddress,
  @as("EntityId") entityId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "UpdatePrimaryEmailAddressCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateMailboxQuota = {
  type t;
  type request = {
@as("MailboxQuota") mailboxQuota: mailboxQuota,
  @as("UserId") userId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "UpdateMailboxQuotaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartMailboxExportJob = {
  type t;
  type request = {
@as("S3Prefix") s3Prefix: s3ObjectKey,
  @as("S3BucketName") s3BucketName: s3BucketName,
  @as("KmsKeyArn") kmsKeyArn: kmsKeyArn,
  @as("RoleArn") roleArn: roleArn,
  @as("Description") description: option<description>,
  @as("EntityId") entityId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId,
  @as("ClientToken") clientToken: idempotencyClientToken
}
  type response = {
@as("JobId") jobId: option<mailboxExportJobId>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "StartMailboxExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ResetPassword = {
  type t;
  type request = {
@as("Password") password: password,
  @as("UserId") userId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ResetPasswordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterToWorkMail = {
  type t;
  type request = {
@as("Email") email: emailAddress,
  @as("EntityId") entityId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "RegisterToWorkMailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMailboxDetails = {
  type t;
  type request = {
@as("UserId") userId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("MailboxSize") mailboxSize: option<mailboxSize>,
  @as("MailboxQuota") mailboxQuota: option<mailboxQuota>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "GetMailboxDetailsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateMemberFromGroup = {
  type t;
  type request = {
@as("MemberId") memberId: workMailIdentifier,
  @as("GroupId") groupId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DisassociateMemberFromGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateDelegateFromResource = {
  type t;
  type request = {
@as("EntityId") entityId: workMailIdentifier,
  @as("ResourceId") resourceId: resourceId,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DisassociateDelegateFromResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeUser = {
  type t;
  type request = {
@as("UserId") userId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("DisabledDate") disabledDate: option<timestamp_>,
  @as("EnabledDate") enabledDate: option<timestamp_>,
  @as("UserRole") userRole: option<userRole>,
  @as("State") state: option<entityState>,
  @as("DisplayName") displayName: option<string_>,
  @as("Email") email: option<emailAddress>,
  @as("Name") name: option<userName>,
  @as("UserId") userId: option<workMailIdentifier>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DescribeUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganization = {
  type t;
  type request = {
@as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("ARN") arn: option<amazonResourceName>,
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("CompletedDate") completedDate: option<timestamp_>,
  @as("DefaultMailDomain") defaultMailDomain: option<string_>,
  @as("DirectoryType") directoryType: option<string_>,
  @as("DirectoryId") directoryId: option<string_>,
  @as("State") state: option<string_>,
  @as("Alias") alias: option<organizationName>,
  @as("OrganizationId") organizationId: option<organizationId>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DescribeOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeMailboxExportJob = {
  type t;
  type request = {
@as("OrganizationId") organizationId: organizationId,
  @as("JobId") jobId: mailboxExportJobId
}
  type response = {
@as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
  @as("ErrorInfo") errorInfo: option<mailboxExportErrorInfo>,
  @as("State") state: option<mailboxExportJobState>,
  @as("EstimatedProgress") estimatedProgress: option<percentage>,
  @as("S3Path") s3Path: option<s3ObjectKey>,
  @as("S3Prefix") s3Prefix: option<s3ObjectKey>,
  @as("S3BucketName") s3BucketName: option<s3BucketName>,
  @as("KmsKeyArn") kmsKeyArn: option<kmsKeyArn>,
  @as("RoleArn") roleArn: option<roleArn>,
  @as("Description") description: option<description>,
  @as("EntityId") entityId: option<workMailIdentifier>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DescribeMailboxExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeGroup = {
  type t;
  type request = {
@as("GroupId") groupId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("DisabledDate") disabledDate: option<timestamp_>,
  @as("EnabledDate") enabledDate: option<timestamp_>,
  @as("State") state: option<entityState>,
  @as("Email") email: option<emailAddress>,
  @as("Name") name: option<groupName>,
  @as("GroupId") groupId: option<workMailIdentifier>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DescribeGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterFromWorkMail = {
  type t;
  type request = {
@as("EntityId") entityId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeregisterFromWorkMailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("UserId") userId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRetentionPolicy = {
  type t;
  type request = {
@as("Id") id: shortString,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteRetentionPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteResource = {
  type t;
  type request = {
@as("ResourceId") resourceId: resourceId,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteOrganization = {
  type t;
  type request = {
@as("DeleteDirectory") deleteDirectory: boolean_,
  @as("OrganizationId") organizationId: organizationId,
  @as("ClientToken") clientToken: option<idempotencyClientToken>
}
  type response = {
@as("State") state: option<string_>,
  @as("OrganizationId") organizationId: option<organizationId>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteMobileDeviceAccessRule = {
  type t;
  type request = {
@as("MobileDeviceAccessRuleId") mobileDeviceAccessRuleId: mobileDeviceAccessRuleId,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteMobileDeviceAccessRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteMailboxPermissions = {
  type t;
  type request = {
@as("GranteeId") granteeId: workMailIdentifier,
  @as("EntityId") entityId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteMailboxPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteGroup = {
  type t;
  type request = {
@as("GroupId") groupId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAlias = {
  type t;
  type request = {
@as("Alias") alias: emailAddress,
  @as("EntityId") entityId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAccessControlRule = {
  type t;
  type request = {
@as("Name") name: accessControlRuleName,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DeleteAccessControlRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("Password") password: password,
  @as("DisplayName") displayName: string_,
  @as("Name") name: userName,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("UserId") userId: option<workMailIdentifier>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateResource = {
  type t;
  type request = {
@as("Type") type_: resourceType,
  @as("Name") name: resourceName,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("ResourceId") resourceId: option<resourceId>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateGroup = {
  type t;
  type request = {
@as("Name") name: groupName,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("GroupId") groupId: option<workMailIdentifier>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAlias = {
  type t;
  type request = {
@as("Alias") alias: emailAddress,
  @as("EntityId") entityId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelMailboxExportJob = {
  type t;
  type request = {
@as("OrganizationId") organizationId: organizationId,
  @as("JobId") jobId: mailboxExportJobId,
  @as("ClientToken") clientToken: idempotencyClientToken
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CancelMailboxExportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateMemberToGroup = {
  type t;
  type request = {
@as("MemberId") memberId: workMailIdentifier,
  @as("GroupId") groupId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "AssociateMemberToGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateDelegateToResource = {
  type t;
  type request = {
@as("EntityId") entityId: workMailIdentifier,
  @as("ResourceId") resourceId: resourceId,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "AssociateDelegateToResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateResource = {
  type t;
  type request = {
@as("BookingOptions") bookingOptions: option<bookingOptions>,
  @as("Name") name: option<resourceName>,
  @as("ResourceId") resourceId: resourceId,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "UpdateResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateMobileDeviceAccessRule = {
  type t;
  type request = {
@as("NotDeviceUserAgents") notDeviceUserAgents: option<deviceUserAgentList>,
  @as("DeviceUserAgents") deviceUserAgents: option<deviceUserAgentList>,
  @as("NotDeviceOperatingSystems") notDeviceOperatingSystems: option<deviceOperatingSystemList>,
  @as("DeviceOperatingSystems") deviceOperatingSystems: option<deviceOperatingSystemList>,
  @as("NotDeviceModels") notDeviceModels: option<deviceModelList>,
  @as("DeviceModels") deviceModels: option<deviceModelList>,
  @as("NotDeviceTypes") notDeviceTypes: option<deviceTypeList>,
  @as("DeviceTypes") deviceTypes: option<deviceTypeList>,
  @as("Effect") effect: mobileDeviceAccessRuleEffect,
  @as("Description") description: option<mobileDeviceAccessRuleDescription>,
  @as("Name") name: mobileDeviceAccessRuleName,
  @as("MobileDeviceAccessRuleId") mobileDeviceAccessRuleId: mobileDeviceAccessRuleId,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "UpdateMobileDeviceAccessRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
  @as("ResourceARN") resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutMailboxPermissions = {
  type t;
  type request = {
@as("PermissionValues") permissionValues: permissionValues,
  @as("GranteeId") granteeId: workMailIdentifier,
  @as("EntityId") entityId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "PutMailboxPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAccessControlRule = {
  type t;
  type request = {
@as("OrganizationId") organizationId: organizationId,
  @as("NotUserIds") notUserIds: option<userIdList>,
  @as("UserIds") userIds: option<userIdList>,
  @as("NotActions") notActions: option<actionsList>,
  @as("Actions") actions: option<actionsList>,
  @as("NotIpRanges") notIpRanges: option<ipRangeList>,
  @as("IpRanges") ipRanges: option<ipRangeList>,
  @as("Description") description: accessControlRuleDescription,
  @as("Effect") effect: accessControlRuleEffect,
  @as("Name") name: accessControlRuleName
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "PutAccessControlRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAliases = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("EntityId") entityId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Aliases") aliases: option<aliases>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListAliasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccessControlEffect = {
  type t;
  type request = {
@as("UserId") userId: workMailIdentifier,
  @as("Action") action: accessControlRuleAction,
  @as("IpAddress") ipAddress: ipAddress,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("MatchedRules") matchedRules: option<accessControlRuleNameList>,
  @as("Effect") effect: option<accessControlRuleEffect>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "GetAccessControlEffectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeResource = {
  type t;
  type request = {
@as("ResourceId") resourceId: resourceId,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("DisabledDate") disabledDate: option<timestamp_>,
  @as("EnabledDate") enabledDate: option<timestamp_>,
  @as("State") state: option<entityState>,
  @as("BookingOptions") bookingOptions: option<bookingOptions>,
  @as("Type") type_: option<resourceType>,
  @as("Name") name: option<resourceName>,
  @as("Email") email: option<emailAddress>,
  @as("ResourceId") resourceId: option<resourceId>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "DescribeResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateMobileDeviceAccessRule = {
  type t;
  type request = {
@as("NotDeviceUserAgents") notDeviceUserAgents: option<deviceUserAgentList>,
  @as("DeviceUserAgents") deviceUserAgents: option<deviceUserAgentList>,
  @as("NotDeviceOperatingSystems") notDeviceOperatingSystems: option<deviceOperatingSystemList>,
  @as("DeviceOperatingSystems") deviceOperatingSystems: option<deviceOperatingSystemList>,
  @as("NotDeviceModels") notDeviceModels: option<deviceModelList>,
  @as("DeviceModels") deviceModels: option<deviceModelList>,
  @as("NotDeviceTypes") notDeviceTypes: option<deviceTypeList>,
  @as("DeviceTypes") deviceTypes: option<deviceTypeList>,
  @as("Effect") effect: mobileDeviceAccessRuleEffect,
  @as("Description") description: option<mobileDeviceAccessRuleDescription>,
  @as("Name") name: mobileDeviceAccessRuleName,
  @as("ClientToken") clientToken: option<idempotencyClientToken>,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("MobileDeviceAccessRuleId") mobileDeviceAccessRuleId: option<mobileDeviceAccessRuleId>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateMobileDeviceAccessRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
  @as("ResourceARN") resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRetentionPolicy = {
  type t;
  type request = {
@as("FolderConfigurations") folderConfigurations: folderConfigurations,
  @as("Description") description: option<policyDescription>,
  @as("Name") name: shortString,
  @as("Id") id: option<shortString>,
  @as("OrganizationId") organizationId: organizationId
}
  type response = unit
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "PutRetentionPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Users") users: option<users>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListUsersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: amazonResourceName
}
  type response = {
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResources = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Resources") resources: option<resources>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResourceDelegates = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ResourceId") resourceId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Delegates") delegates: option<resourceDelegates>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListResourceDelegatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOrganizations = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("OrganizationSummaries") organizationSummaries: option<organizationSummaries>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListOrganizationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListMailboxExportJobs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Jobs") jobs: option<jobs>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListMailboxExportJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Groups") groups: option<groups>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGroupMembers = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("GroupId") groupId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Members") members: option<members>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListGroupMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMobileDeviceAccessEffect = {
  type t;
  type request = {
@as("DeviceUserAgent") deviceUserAgent: option<deviceUserAgent>,
  @as("DeviceOperatingSystem") deviceOperatingSystem: option<deviceOperatingSystem>,
  @as("DeviceModel") deviceModel: option<deviceModel>,
  @as("DeviceType") deviceType: option<deviceType>,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("MatchedRules") matchedRules: option<mobileDeviceAccessMatchedRuleList>,
  @as("Effect") effect: option<mobileDeviceAccessRuleEffect>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "GetMobileDeviceAccessEffectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDefaultRetentionPolicy = {
  type t;
  type request = {
@as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("FolderConfigurations") folderConfigurations: option<folderConfigurations>,
  @as("Description") description: option<string_>,
  @as("Name") name: option<shortString>,
  @as("Id") id: option<shortString>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "GetDefaultRetentionPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateOrganization = {
  type t;
  type request = {
@as("EnableInteroperability") enableInteroperability: option<boolean_>,
  @as("KmsKeyArn") kmsKeyArn: option<kmsKeyArn>,
  @as("Domains") domains: option<domains>,
  @as("ClientToken") clientToken: option<idempotencyClientToken>,
  @as("Alias") alias: organizationName,
  @as("DirectoryId") directoryId: option<directoryId>
}
  type response = {
@as("OrganizationId") organizationId: option<organizationId>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "CreateOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListMobileDeviceAccessRules = {
  type t;
  type request = {
@as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("Rules") rules: option<mobileDeviceAccessRulesList>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListMobileDeviceAccessRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListMailboxPermissions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("EntityId") entityId: workMailIdentifier,
  @as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Permissions") permissions: option<permissions>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListMailboxPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccessControlRules = {
  type t;
  type request = {
@as("OrganizationId") organizationId: organizationId
}
  type response = {
@as("Rules") rules: option<accessControlRulesList>
}
  @module("@aws-sdk/client-workmail") @new external new_: (request) => t = "ListAccessControlRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
