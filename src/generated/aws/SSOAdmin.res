type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type validationExceptionMessage = string
type uuid = string
type token = string
type throttlingExceptionMessage = string
type targetType = [@as("AWS_ACCOUNT") #AWSACCOUNT]
type targetId = string
type tagValue = string
type tagKey = string
type statusValues = [@as("SUCCEEDED") #SUCCEEDED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #INPROGRESS]
type serviceQuotaExceededMessage = string
type resourceNotFoundMessage = string
type relayState = string
type reason = string
type provisioningStatus = [@as("LATEST_PERMISSION_SET_NOT_PROVISIONED") #LATESTPERMISSIONSETNOTPROVISIONED | @as("LATEST_PERMISSION_SET_PROVISIONED") #LATESTPERMISSIONSETPROVISIONED]
type provisionTargetType = [@as("ALL_PROVISIONED_ACCOUNTS") #ALLPROVISIONEDACCOUNTS | @as("AWS_ACCOUNT") #AWSACCOUNT]
type principalType = [@as("GROUP") #GROUP | @as("USER") #USER]
type principalId = string
type permissionSetPolicyDocument = string
type permissionSetName = string
type permissionSetDescription = string
type permissionSetArn = string
type name = string
type maxResults = int
type managedPolicyArn = string
type internalFailureMessage = string
type instanceArn = string
type instanceAccessControlAttributeConfigurationStatusReason = string
type instanceAccessControlAttributeConfigurationStatus = [@as("CREATION_FAILED") #CREATIONFAILED | @as("CREATION_IN_PROGRESS") #CREATIONINPROGRESS | @as("ENABLED") #ENABLED]
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
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type permissionSetProvisioningStatusMetadata = {
@as("CreatedDate") createdDate: option<date>,
@as("RequestId") requestId: option<uuid>,
@as("Status") status: option<statusValues>
}
type permissionSetProvisioningStatus = {
@as("CreatedDate") createdDate: option<date>,
@as("FailureReason") failureReason: option<reason>,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("AccountId") accountId: option<accountId>,
@as("RequestId") requestId: option<uuid>,
@as("Status") status: option<statusValues>
}
type permissionSetList = array<permissionSetArn>
type permissionSet = {
@as("RelayState") relayState: option<relayState>,
@as("SessionDuration") sessionDuration: option<duration>,
@as("CreatedDate") createdDate: option<date>,
@as("Description") description: option<permissionSetDescription>,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("Name") name: option<permissionSetName>
}
type operationStatusFilter = {
@as("Status") status: option<statusValues>
}
type instanceMetadata = {
@as("IdentityStoreId") identityStoreId: option<id>,
@as("InstanceArn") instanceArn: option<instanceArn>
}
type attachedManagedPolicy = {
@as("Arn") arn: option<managedPolicyArn>,
@as("Name") name: option<name>
}
type accountList = array<accountId>
type accountAssignmentOperationStatusMetadata = {
@as("CreatedDate") createdDate: option<date>,
@as("RequestId") requestId: option<uuid>,
@as("Status") status: option<statusValues>
}
type accountAssignmentOperationStatus = {
@as("CreatedDate") createdDate: option<date>,
@as("PrincipalId") principalId: option<principalId>,
@as("PrincipalType") principalType: option<principalType>,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("TargetType") targetType: option<targetType>,
@as("TargetId") targetId: option<targetId>,
@as("FailureReason") failureReason: option<reason>,
@as("RequestId") requestId: option<uuid>,
@as("Status") status: option<statusValues>
}
type accountAssignment = {
@as("PrincipalId") principalId: option<principalId>,
@as("PrincipalType") principalType: option<principalType>,
@as("PermissionSetArn") permissionSetArn: option<permissionSetArn>,
@as("AccountId") accountId: option<accountId>
}
type accessControlAttributeValueSourceList = array<accessControlAttributeValueSource>
type tagList_ = array<tag>
type permissionSetProvisioningStatusList = array<permissionSetProvisioningStatusMetadata>
type instanceList = array<instanceMetadata>
type attachedManagedPolicyList = array<attachedManagedPolicy>
type accountAssignmentOperationStatusList = array<accountAssignmentOperationStatusMetadata>
type accountAssignmentList = array<accountAssignment>
type accessControlAttributeValue = {
@as("Source") source: accessControlAttributeValueSourceList
}
type accessControlAttribute = {
@as("Value") value: accessControlAttributeValue,
@as("Key") key: accessControlAttributeKey
}
type accessControlAttributeList = array<accessControlAttribute>
type instanceAccessControlAttributeConfiguration = {
@as("AccessControlAttributes") accessControlAttributes: accessControlAttributeList
}
type awsServiceClient;
@module("@aws-sdk/client-sso") @new external createClient: unit => awsServiceClient = "SSOAdminClient";
module UpdatePermissionSet = {
  type t;
  type request = {
@as("RelayState") relayState: option<relayState>,
@as("SessionDuration") sessionDuration: option<duration>,
@as("Description") description: option<permissionSetDescription>,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "UpdatePermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutInlinePolicyToPermissionSet = {
  type t;
  type request = {
@as("InlinePolicy") inlinePolicy: permissionSetPolicyDocument,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "PutInlinePolicyToPermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInlinePolicyForPermissionSet = {
  type t;
  type request = {
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("InlinePolicy") inlinePolicy: option<permissionSetPolicyDocument>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "GetInlinePolicyForPermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachManagedPolicyFromPermissionSet = {
  type t;
  type request = {
@as("ManagedPolicyArn") managedPolicyArn: managedPolicyArn,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DetachManagedPolicyFromPermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePermissionSet = {
  type t;
  type request = {
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DeletePermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteInstanceAccessControlAttributeConfiguration = {
  type t;
  type request = {
@as("InstanceArn") instanceArn: instanceArn
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DeleteInstanceAccessControlAttributeConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteInlinePolicyFromPermissionSet = {
  type t;
  type request = {
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DeleteInlinePolicyFromPermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachManagedPolicyToPermissionSet = {
  type t;
  type request = {
@as("ManagedPolicyArn") managedPolicyArn: managedPolicyArn,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "AttachManagedPolicyToPermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: generalArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ProvisionPermissionSet = {
  type t;
  type request = {
@as("TargetType") targetType: provisionTargetType,
@as("TargetId") targetId: option<targetId>,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("PermissionSetProvisioningStatus") permissionSetProvisioningStatus: option<permissionSetProvisioningStatus>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ProvisionPermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPermissionSetsProvisionedToAccount = {
  type t;
  type request = {
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ProvisioningStatus") provisioningStatus: option<provisioningStatus>,
@as("AccountId") accountId: accountId,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("PermissionSets") permissionSets: option<permissionSetList>,
@as("NextToken") nextToken: option<token>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListPermissionSetsProvisionedToAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPermissionSets = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<token>,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("PermissionSets") permissionSets: option<permissionSetList>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListPermissionSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccountsForProvisionedPermissionSet = {
  type t;
  type request = {
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ProvisioningStatus") provisioningStatus: option<provisioningStatus>,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("AccountIds") accountIds: option<accountList>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListAccountsForProvisionedPermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePermissionSetProvisioningStatus = {
  type t;
  type request = {
@as("ProvisionPermissionSetRequestId") provisionPermissionSetRequestId: uuid,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("PermissionSetProvisioningStatus") permissionSetProvisioningStatus: option<permissionSetProvisioningStatus>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DescribePermissionSetProvisioningStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePermissionSet = {
  type t;
  type request = {
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("PermissionSet") permissionSet: option<permissionSet>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DescribePermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAssignmentDeletionStatus = {
  type t;
  type request = {
@as("AccountAssignmentDeletionRequestId") accountAssignmentDeletionRequestId: uuid,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("AccountAssignmentDeletionStatus") accountAssignmentDeletionStatus: option<accountAssignmentOperationStatus>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DescribeAccountAssignmentDeletionStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAssignmentCreationStatus = {
  type t;
  type request = {
@as("AccountAssignmentCreationRequestId") accountAssignmentCreationRequestId: uuid,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("AccountAssignmentCreationStatus") accountAssignmentCreationStatus: option<accountAssignmentOperationStatus>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DescribeAccountAssignmentCreationStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAccountAssignment = {
  type t;
  type request = {
@as("PrincipalId") principalId: principalId,
@as("PrincipalType") principalType: principalType,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("TargetType") targetType: targetType,
@as("TargetId") targetId: targetId,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("AccountAssignmentDeletionStatus") accountAssignmentDeletionStatus: option<accountAssignmentOperationStatus>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DeleteAccountAssignmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAccountAssignment = {
  type t;
  type request = {
@as("PrincipalId") principalId: principalId,
@as("PrincipalType") principalType: principalType,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("TargetType") targetType: targetType,
@as("TargetId") targetId: targetId,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("AccountAssignmentCreationStatus") accountAssignmentCreationStatus: option<accountAssignmentOperationStatus>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "CreateAccountAssignmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceArn") resourceArn: generalArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: option<token>,
@as("ResourceArn") resourceArn: generalArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPermissionSetProvisioningStatus = {
  type t;
  type request = {
@as("Filter") filter: option<operationStatusFilter>,
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<maxResults>,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("PermissionSetsProvisioningStatus") permissionSetsProvisioningStatus: option<permissionSetProvisioningStatusList>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListPermissionSetProvisioningStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListManagedPoliciesInPermissionSet = {
  type t;
  type request = {
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<maxResults>,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("AttachedManagedPolicies") attachedManagedPolicies: option<attachedManagedPolicyList>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListManagedPoliciesInPermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInstances = {
  type t;
  type request = {
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Instances") instances: option<instanceList>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccountAssignments = {
  type t;
  type request = {
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<maxResults>,
@as("PermissionSetArn") permissionSetArn: permissionSetArn,
@as("AccountId") accountId: targetId,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("AccountAssignments") accountAssignments: option<accountAssignmentList>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListAccountAssignmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccountAssignmentDeletionStatus = {
  type t;
  type request = {
@as("Filter") filter: option<operationStatusFilter>,
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<maxResults>,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("AccountAssignmentsDeletionStatus") accountAssignmentsDeletionStatus: option<accountAssignmentOperationStatusList>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListAccountAssignmentDeletionStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccountAssignmentCreationStatus = {
  type t;
  type request = {
@as("Filter") filter: option<operationStatusFilter>,
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<maxResults>,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("AccountAssignmentsCreationStatus") accountAssignmentsCreationStatus: option<accountAssignmentOperationStatusList>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "ListAccountAssignmentCreationStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePermissionSet = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("RelayState") relayState: option<relayState>,
@as("SessionDuration") sessionDuration: option<duration>,
@as("InstanceArn") instanceArn: instanceArn,
@as("Description") description: option<permissionSetDescription>,
@as("Name") name: permissionSetName
}
  type response = {
@as("PermissionSet") permissionSet: option<permissionSet>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "CreatePermissionSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateInstanceAccessControlAttributeConfiguration = {
  type t;
  type request = {
@as("InstanceAccessControlAttributeConfiguration") instanceAccessControlAttributeConfiguration: instanceAccessControlAttributeConfiguration,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "UpdateInstanceAccessControlAttributeConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceAccessControlAttributeConfiguration = {
  type t;
  type request = {
@as("InstanceArn") instanceArn: instanceArn
}
  type response = {
@as("InstanceAccessControlAttributeConfiguration") instanceAccessControlAttributeConfiguration: option<instanceAccessControlAttributeConfiguration>,
@as("StatusReason") statusReason: option<instanceAccessControlAttributeConfigurationStatusReason>,
@as("Status") status: option<instanceAccessControlAttributeConfigurationStatus>
}
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "DescribeInstanceAccessControlAttributeConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateInstanceAccessControlAttributeConfiguration = {
  type t;
  type request = {
@as("InstanceAccessControlAttributeConfiguration") instanceAccessControlAttributeConfiguration: instanceAccessControlAttributeConfiguration,
@as("InstanceArn") instanceArn: instanceArn
}
  type response = unit
  @module("@aws-sdk/client-sso") @new external new_: (request) => t = "CreateInstanceAccessControlAttributeConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
