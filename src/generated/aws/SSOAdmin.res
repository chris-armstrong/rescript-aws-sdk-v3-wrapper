type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validationExceptionMessage = string
type uUId = string
type token = string
type throttlingExceptionMessage = string
type targetType = [@as("AWS_ACCOUNT") #AWS_ACCOUNT]
type targetId = string
type tagValue = string
type tagKey = string
type statusValues = [@as("SUCCEEDED") #SUCCEEDED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS]
type serviceQuotaExceededMessage = string
type resourceNotFoundMessage = string
type relayState = string
type reason = string
type provisioningStatus = [@as("LATEST_PERMISSION_SET_NOT_PROVISIONED") #LATEST_PERMISSION_SET_NOT_PROVISIONED | @as("LATEST_PERMISSION_SET_PROVISIONED") #LATEST_PERMISSION_SET_PROVISIONED]
type provisionTargetType = [@as("ALL_PROVISIONED_ACCOUNTS") #ALL_PROVISIONED_ACCOUNTS | @as("AWS_ACCOUNT") #AWS_ACCOUNT]
type principalType = [@as("GROUP") #GROUP | @as("USER") #USER]
type principalId = string
type permissionSetPolicyDocument = string
type permissionSetName = string
type permissionSetDescription = string
type permissionSetArn = string
type name = string
type maxResults = int;
type managedPolicyArn = string
type internalFailureMessage = string
type instanceArn = string
type instanceAccessControlAttributeConfigurationStatusReason = string
type instanceAccessControlAttributeConfigurationStatus = [@as("CREATION_FAILED") #CREATION_FAILED | @as("CREATION_IN_PROGRESS") #CREATION_IN_PROGRESS | @as("ENABLED") #ENABLED]
type id = string
type generalArn = string
type duration = string
type date = Js.Date.t;
type conflictExceptionMessage = string
type accountId = string
type accessDeniedExceptionMessage = string
type accessControlAttributeValueSource = string
type accessControlAttributeKey = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type permissionSetProvisioningStatusMetadata = {
@as("CreatedDate") createdDate: date,
@as("RequestId") requestId: uUId,
@as("Status") status: statusValues
}
type permissionSetProvisioningStatus = {
@as("CreatedDate") createdDate: date,
@as("FailureReason") failureReason: reason,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("AccountId") accountId: accountId,
@as("RequestId") requestId: uUId,
@as("Status") status: statusValues
}
type permissionSetList = array<permissionSetArn>
type permissionSet = {
@as("RelayState") relayState: relayState,
@as("SessionDuration") sessionDuration: duration,
@as("CreatedDate") createdDate: date,
@as("Description") description: permissionSetDescription,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("Name") name: permissionSetName
}
type operationStatusFilter = {
@as("Status") status: statusValues
}
type instanceMetadata = {
@as("IdentityStoreId") identityStoreId: id,
@as("InstanceArn") instanceArn: instanceArn
}
type attachedManagedPolicy = {
@as("Arn") arn: managedPolicyArn,
@as("Name") name: name
}
type accountList = array<accountId>
type accountAssignmentOperationStatusMetadata = {
@as("CreatedDate") createdDate: date,
@as("RequestId") requestId: uUId,
@as("Status") status: statusValues
}
type accountAssignmentOperationStatus = {
@as("CreatedDate") createdDate: date,
@as("PrincipalId") principalId: principalId,
@as("PrincipalType") principalType: principalType,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("TargetType") targetType: targetType,
@as("TargetId") targetId: targetId,
@as("FailureReason") failureReason: reason,
@as("RequestId") requestId: uUId,
@as("Status") status: statusValues
}
type accountAssignment = {
@as("PrincipalId") principalId: principalId,
@as("PrincipalType") principalType: principalType,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("AccountId") accountId: accountId
}
type accessControlAttributeValueSourceList = array<accessControlAttributeValueSource>
type tagList = array<tag>
type permissionSetProvisioningStatusList = array<permissionSetProvisioningStatusMetadata>
type instanceList = array<instanceMetadata>
type attachedManagedPolicyList = array<attachedManagedPolicy>
type accountAssignmentOperationStatusList = array<accountAssignmentOperationStatusMetadata>
type accountAssignmentList = array<accountAssignment>
type accessControlAttributeValue = {
@as("Source") source: option<accessControlAttributeValueSourceList>
}
type accessControlAttribute = {
@as("Value") value: option<accessControlAttributeValue>,
@as("Key") key: option<accessControlAttributeKey>
}
type accessControlAttributeList = array<accessControlAttribute>
type instanceAccessControlAttributeConfiguration = {
@as("AccessControlAttributes") accessControlAttributes: option<accessControlAttributeList>
}
type clientType;
@module("@aws-sdk/client-sso") @new external createClient: unit => clientType = "SSOAdminClient";
module UpdatePermissionSet = {
  type t;
  type request = {
@as("RelayState") relayState: relayState,
@as("SessionDuration") sessionDuration: duration,
@as("Description") description: permissionSetDescription,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "UpdatePermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutInlinePolicyToPermissionSet = {
  type t;
  type request = {
@as("InlinePolicy") inlinePolicy: option<permissionSetPolicyDocument>,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "PutInlinePolicyToPermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInlinePolicyForPermissionSet = {
  type t;
  type request = {
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("InlinePolicy") inlinePolicy: permissionSetPolicyDocument
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "GetInlinePolicyForPermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachManagedPolicyFromPermissionSet = {
  type t;
  type request = {
@as("ManagedPolicyArn") managedPolicyArn: option<managedPolicyArn>,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DetachManagedPolicyFromPermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePermissionSet = {
  type t;
  type request = {
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DeletePermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInstanceAccessControlAttributeConfiguration = {
  type t;
  type request = {
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DeleteInstanceAccessControlAttributeConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInlinePolicyFromPermissionSet = {
  type t;
  type request = {
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DeleteInlinePolicyFromPermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachManagedPolicyToPermissionSet = {
  type t;
  type request = {
@as("ManagedPolicyArn") managedPolicyArn: option<managedPolicyArn>,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "AttachManagedPolicyToPermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<generalArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ProvisionPermissionSet = {
  type t;
  type request = {
@as("TargetType") targetType: option<provisionTargetType>,
@as("TargetId") targetId: targetId,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("PermissionSetProvisioningStatus") permissionSetProvisioningStatus: permissionSetProvisioningStatus
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ProvisionPermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPermissionSetsProvisionedToAccount = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: maxResults,
@as("ProvisioningStatus") provisioningStatus: provisioningStatus,
@as("AccountId") accountId: option<accountId>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("PermissionSets") permissionSets: permissionSetList,
@as("NextToken") nextToken: token
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListPermissionSetsProvisionedToAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPermissionSets = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: token,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("NextToken") nextToken: token,
@as("PermissionSets") permissionSets: permissionSetList
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListPermissionSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccountsForProvisionedPermissionSet = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: maxResults,
@as("ProvisioningStatus") provisioningStatus: provisioningStatus,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("NextToken") nextToken: token,
@as("AccountIds") accountIds: accountList
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListAccountsForProvisionedPermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePermissionSetProvisioningStatus = {
  type t;
  type request = {
@as("ProvisionPermissionSetRequestId") provisionPermissionSetRequestId: option<uUId>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("PermissionSetProvisioningStatus") permissionSetProvisioningStatus: permissionSetProvisioningStatus
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DescribePermissionSetProvisioningStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePermissionSet = {
  type t;
  type request = {
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("PermissionSet") permissionSet: permissionSet
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DescribePermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAssignmentDeletionStatus = {
  type t;
  type request = {
@as("AccountAssignmentDeletionRequestId") accountAssignmentDeletionRequestId: option<uUId>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("AccountAssignmentDeletionStatus") accountAssignmentDeletionStatus: accountAssignmentOperationStatus
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DescribeAccountAssignmentDeletionStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAssignmentCreationStatus = {
  type t;
  type request = {
@as("AccountAssignmentCreationRequestId") accountAssignmentCreationRequestId: option<uUId>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("AccountAssignmentCreationStatus") accountAssignmentCreationStatus: accountAssignmentOperationStatus
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DescribeAccountAssignmentCreationStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAccountAssignment = {
  type t;
  type request = {
@as("PrincipalId") principalId: option<principalId>,
@as("PrincipalType") principalType: option<principalType>,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("TargetType") targetType: option<targetType>,
@as("TargetId") targetId: option<targetId>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("AccountAssignmentDeletionStatus") accountAssignmentDeletionStatus: accountAssignmentOperationStatus
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DeleteAccountAssignmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAccountAssignment = {
  type t;
  type request = {
@as("PrincipalId") principalId: option<principalId>,
@as("PrincipalType") principalType: option<principalType>,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("TargetType") targetType: option<targetType>,
@as("TargetId") targetId: option<targetId>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("AccountAssignmentCreationStatus") accountAssignmentCreationStatus: accountAssignmentOperationStatus
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "CreateAccountAssignmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<generalArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("ResourceArn") resourceArn: option<generalArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("NextToken") nextToken: token,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPermissionSetProvisioningStatus = {
  type t;
  type request = {
@as("Filter") filter: operationStatusFilter,
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: maxResults,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("NextToken") nextToken: token,
@as("PermissionSetsProvisioningStatus") permissionSetsProvisioningStatus: permissionSetProvisioningStatusList
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListPermissionSetProvisioningStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListManagedPoliciesInPermissionSet = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: maxResults,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("NextToken") nextToken: token,
@as("AttachedManagedPolicies") attachedManagedPolicies: attachedManagedPolicyList
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListManagedPoliciesInPermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInstances = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: token,
@as("Instances") instances: instanceList
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccountAssignments = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: maxResults,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("AccountId") accountId: option<targetId>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("NextToken") nextToken: token,
@as("AccountAssignments") accountAssignments: accountAssignmentList
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListAccountAssignmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccountAssignmentDeletionStatus = {
  type t;
  type request = {
@as("Filter") filter: operationStatusFilter,
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: maxResults,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("NextToken") nextToken: token,
@as("AccountAssignmentsDeletionStatus") accountAssignmentsDeletionStatus: accountAssignmentOperationStatusList
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListAccountAssignmentDeletionStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccountAssignmentCreationStatus = {
  type t;
  type request = {
@as("Filter") filter: operationStatusFilter,
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: maxResults,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("NextToken") nextToken: token,
@as("AccountAssignmentsCreationStatus") accountAssignmentsCreationStatus: accountAssignmentOperationStatusList
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListAccountAssignmentCreationStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePermissionSet = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("RelayState") relayState: relayState,
@as("SessionDuration") sessionDuration: duration,
@as("InstanceArn") instanceArn: option<instanceArn>,
@as("Description") description: permissionSetDescription,
@as("Name") name: option<permissionSetName>
}
  type response = {
@as("PermissionSet") permissionSet: permissionSet
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "CreatePermissionSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateInstanceAccessControlAttributeConfiguration = {
  type t;
  type request = {
@as("InstanceAccessControlAttributeConfiguration") instanceAccessControlAttributeConfiguration: option<instanceAccessControlAttributeConfiguration>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "UpdateInstanceAccessControlAttributeConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceAccessControlAttributeConfiguration = {
  type t;
  type request = {
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = {
@as("InstanceAccessControlAttributeConfiguration") instanceAccessControlAttributeConfiguration: instanceAccessControlAttributeConfiguration,
@as("StatusReason") statusReason: instanceAccessControlAttributeConfigurationStatusReason,
@as("Status") status: instanceAccessControlAttributeConfigurationStatus
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DescribeInstanceAccessControlAttributeConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInstanceAccessControlAttributeConfiguration = {
  type t;
  type request = {
@as("InstanceAccessControlAttributeConfiguration") instanceAccessControlAttributeConfiguration: option<instanceAccessControlAttributeConfiguration>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "CreateInstanceAccessControlAttributeConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
