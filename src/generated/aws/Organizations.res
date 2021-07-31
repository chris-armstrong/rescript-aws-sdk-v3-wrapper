type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-organizations") @new external createClient: unit => awsServiceClient = "OrganizationsClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type timestamp_ = Js.Date.t;
type targetType = [@as("ROOT") #ROOT | @as("ORGANIZATIONAL_UNIT") #ORGANIZATIONAL_UNIT | @as("ACCOUNT") #ACCOUNT]
type targetName = string
type taggableResourceId = string
type tagValue = string
type tagKey = string
type servicePrincipal = string
type rootName = string
type rootId = string
type rootArn = string
type roleName = string
type policyTypeStatus = [@as("PENDING_DISABLE") #PENDING_DISABLE | @as("PENDING_ENABLE") #PENDING_ENABLE | @as("ENABLED") #ENABLED]
type policyType = [@as("AISERVICES_OPT_OUT_POLICY") #AISERVICES_OPT_OUT_POLICY | @as("BACKUP_POLICY") #BACKUP_POLICY | @as("TAG_POLICY") #TAG_POLICY | @as("SERVICE_CONTROL_POLICY") #SERVICE_CONTROL_POLICY]
type policyTargetId = string
type policyName = string
type policyId = string
type policyDescription = string
type policyContent = string
type policyArn = string
type parentType = [@as("ORGANIZATIONAL_UNIT") #ORGANIZATIONAL_UNIT | @as("ROOT") #ROOT]
type parentId = string
type organizationalUnitName = string
type organizationalUnitId = string
type organizationalUnitArn = string
type organizationId = string
type organizationFeatureSet = [@as("CONSOLIDATED_BILLING") #CONSOLIDATED_BILLING | @as("ALL") #ALL]
type organizationArn = string
type nextToken = string
type maxResults = int
type invalidInputExceptionReason = [@as("INVALID_EMAIL_ADDRESS_TARGET") #INVALID_EMAIL_ADDRESS_TARGET | @as("TARGET_NOT_SUPPORTED") #TARGET_NOT_SUPPORTED | @as("DUPLICATE_TAG_KEY") #DUPLICATE_TAG_KEY | @as("INVALID_SYSTEM_TAGS_PARAMETER") #INVALID_SYSTEM_TAGS_PARAMETER | @as("INVALID_ROLE_NAME") #INVALID_ROLE_NAME | @as("UNRECOGNIZED_SERVICE_PRINCIPAL") #UNRECOGNIZED_SERVICE_PRINCIPAL | @as("INVALID_FULL_NAME_TARGET") #INVALID_FULL_NAME_TARGET | @as("MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS") #MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS | @as("MAX_LIMIT_EXCEEDED_FILTER") #MAX_LIMIT_EXCEEDED_FILTER | @as("INVALID_NEXT_TOKEN") #INVALID_NEXT_TOKEN | @as("INPUT_REQUIRED") #INPUT_REQUIRED | @as("INVALID_PATTERN_TARGET_ID") #INVALID_PATTERN_TARGET_ID | @as("INVALID_PATTERN") #INVALID_PATTERN | @as("IMMUTABLE_POLICY") #IMMUTABLE_POLICY | @as("MIN_VALUE_EXCEEDED") #MIN_VALUE_EXCEEDED | @as("MIN_LENGTH_EXCEEDED") #MIN_LENGTH_EXCEEDED | @as("MAX_VALUE_EXCEEDED") #MAX_VALUE_EXCEEDED | @as("MAX_LENGTH_EXCEEDED") #MAX_LENGTH_EXCEEDED | @as("INVALID_LIST_MEMBER") #INVALID_LIST_MEMBER | @as("INVALID_ENUM_POLICY_TYPE") #INVALID_ENUM_POLICY_TYPE | @as("INVALID_ENUM") #INVALID_ENUM | @as("INVALID_SYNTAX_POLICY_ID") #INVALID_SYNTAX_POLICY_ID | @as("INVALID_SYNTAX_ORGANIZATION_ARN") #INVALID_SYNTAX_ORGANIZATION_ARN | @as("INVALID_PARTY_TYPE_TARGET") #INVALID_PARTY_TYPE_TARGET]
type iamuserAccessToBilling = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type handshakeState = [@as("EXPIRED") #EXPIRED | @as("DECLINED") #DECLINED | @as("ACCEPTED") #ACCEPTED | @as("CANCELED") #CANCELED | @as("OPEN") #OPEN | @as("REQUESTED") #REQUESTED]
type handshakeResourceValue = string
type handshakeResourceType = [@as("PARENT_HANDSHAKE") #PARENT_HANDSHAKE | @as("NOTES") #NOTES | @as("MASTER_NAME") #MASTER_NAME | @as("MASTER_EMAIL") #MASTER_EMAIL | @as("EMAIL") #EMAIL | @as("ORGANIZATION_FEATURE_SET") #ORGANIZATION_FEATURE_SET | @as("ORGANIZATION") #ORGANIZATION | @as("ACCOUNT") #ACCOUNT]
type handshakePartyType = [@as("EMAIL") #EMAIL | @as("ORGANIZATION") #ORGANIZATION | @as("ACCOUNT") #ACCOUNT]
type handshakePartyId = string
type handshakeNotes = string
type handshakeId = string
type handshakeConstraintViolationExceptionReason = [@as("ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED") #ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED | @as("ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD") #ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD | @as("PAYMENT_INSTRUMENT_REQUIRED") #PAYMENT_INSTRUMENT_REQUIRED | @as("INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES") #INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES | @as("ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION") #ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION | @as("ORGANIZATION_ALREADY_HAS_ALL_FEATURES") #ORGANIZATION_ALREADY_HAS_ALL_FEATURES | @as("ALREADY_IN_AN_ORGANIZATION") #ALREADY_IN_AN_ORGANIZATION | @as("HANDSHAKE_RATE_LIMIT_EXCEEDED") #HANDSHAKE_RATE_LIMIT_EXCEEDED | @as("ACCOUNT_NUMBER_LIMIT_EXCEEDED") #ACCOUNT_NUMBER_LIMIT_EXCEEDED]
type handshakeArn = string
type genericArn = string
type exceptionType = string
type exceptionMessage = string
type email = string
type effectivePolicyType = [@as("AISERVICES_OPT_OUT_POLICY") #AISERVICES_OPT_OUT_POLICY | @as("BACKUP_POLICY") #BACKUP_POLICY | @as("TAG_POLICY") #TAG_POLICY]
type createAccountState = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS]
type createAccountRequestId = string
type createAccountFailureReason = [@as("MISSING_PAYMENT_INSTRUMENT") #MISSING_PAYMENT_INSTRUMENT | @as("UNKNOWN_BUSINESS_VALIDATION") #UNKNOWN_BUSINESS_VALIDATION | @as("INVALID_IDENTITY_FOR_BUSINESS_VALIDATION") #INVALID_IDENTITY_FOR_BUSINESS_VALIDATION | @as("PENDING_BUSINESS_VALIDATION") #PENDING_BUSINESS_VALIDATION | @as("FAILED_BUSINESS_VALIDATION") #FAILED_BUSINESS_VALIDATION | @as("MISSING_BUSINESS_VALIDATION") #MISSING_BUSINESS_VALIDATION | @as("GOVCLOUD_ACCOUNT_ALREADY_EXISTS") #GOVCLOUD_ACCOUNT_ALREADY_EXISTS | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE | @as("CONCURRENT_ACCOUNT_MODIFICATION") #CONCURRENT_ACCOUNT_MODIFICATION | @as("INVALID_EMAIL") #INVALID_EMAIL | @as("INVALID_ADDRESS") #INVALID_ADDRESS | @as("EMAIL_ALREADY_EXISTS") #EMAIL_ALREADY_EXISTS | @as("ACCOUNT_LIMIT_EXCEEDED") #ACCOUNT_LIMIT_EXCEEDED]
type constraintViolationExceptionReason = [@as("MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE") #MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE | @as("DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE") #DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE | @as("CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG") #CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG | @as("CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR") #CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR | @as("MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED") #MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED | @as("TAG_POLICY_VIOLATION") #TAG_POLICY_VIOLATION | @as("MAX_TAG_LIMIT_EXCEEDED") #MAX_TAG_LIMIT_EXCEEDED | @as("WAIT_PERIOD_ACTIVE") #WAIT_PERIOD_ACTIVE | @as("EMAIL_VERIFICATION_CODE_EXPIRED") #EMAIL_VERIFICATION_CODE_EXPIRED | @as("CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION") #CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION | @as("ORGANIZATION_NOT_IN_ALL_FEATURES_MODE") #ORGANIZATION_NOT_IN_ALL_FEATURES_MODE | @as("MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED") #MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED | @as("MASTER_ACCOUNT_MISSING_CONTACT_INFO") #MASTER_ACCOUNT_MISSING_CONTACT_INFO | @as("MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE") #MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE | @as("ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED") #ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED | @as("MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED") #MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED | @as("MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED") #MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED | @as("ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION") #ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION | @as("ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA") #ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA | @as("ACCOUNT_CANNOT_LEAVE_ORGANIZATION") #ACCOUNT_CANNOT_LEAVE_ORGANIZATION | @as("MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED") #MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED | @as("MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED") #MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED | @as("POLICY_CONTENT_LIMIT_EXCEEDED") #POLICY_CONTENT_LIMIT_EXCEEDED | @as("POLICY_NUMBER_LIMIT_EXCEEDED") #POLICY_NUMBER_LIMIT_EXCEEDED | @as("OU_DEPTH_LIMIT_EXCEEDED") #OU_DEPTH_LIMIT_EXCEEDED | @as("OU_NUMBER_LIMIT_EXCEEDED") #OU_NUMBER_LIMIT_EXCEEDED | @as("HANDSHAKE_RATE_LIMIT_EXCEEDED") #HANDSHAKE_RATE_LIMIT_EXCEEDED | @as("ACCOUNT_NUMBER_LIMIT_EXCEEDED") #ACCOUNT_NUMBER_LIMIT_EXCEEDED]
type childType = [@as("ORGANIZATIONAL_UNIT") #ORGANIZATIONAL_UNIT | @as("ACCOUNT") #ACCOUNT]
type childId = string
type awsManagedPolicy = bool
type actionType = [@as("ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE") #ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE | @as("APPROVE_ALL_FEATURES") #APPROVE_ALL_FEATURES | @as("ENABLE_ALL_FEATURES") #ENABLE_ALL_FEATURES | @as("INVITE") #INVITE]
type accountStatus = [@as("SUSPENDED") #SUSPENDED | @as("ACTIVE") #ACTIVE]
type accountName = string
type accountJoinedMethod = [@as("CREATED") #CREATED | @as("INVITED") #INVITED]
type accountId = string
type accountArn = string
type accessDeniedForDependencyExceptionReason = [@as("ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE") #ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE]
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: tagValue,
  @as("Key") key: tagKey
}
type policyTypeSummary = {
@as("Status") status: option<policyTypeStatus>,
  @as("Type") type_: option<policyType>
}
type policyTargetSummary = {
@as("Type") type_: option<targetType>,
  @as("Name") name: option<targetName>,
  @as("Arn") arn: option<genericArn>,
  @as("TargetId") targetId: option<policyTargetId>
}
type policySummary = {
@as("AwsManaged") awsManaged: option<awsManagedPolicy>,
  @as("Type") type_: option<policyType>,
  @as("Description") description: option<policyDescription>,
  @as("Name") name: option<policyName>,
  @as("Arn") arn: option<policyArn>,
  @as("Id") id: option<policyId>
}
type parent = {
@as("Type") type_: option<parentType>,
  @as("Id") id: option<parentId>
}
type organizationalUnit = {
@as("Name") name: option<organizationalUnitName>,
  @as("Arn") arn: option<organizationalUnitArn>,
  @as("Id") id: option<organizationalUnitId>
}
type handshakeParty = {
@as("Type") type_: handshakePartyType,
  @as("Id") id: handshakePartyId
}
type handshakeFilter = {
@as("ParentHandshakeId") parentHandshakeId: option<handshakeId>,
  @as("ActionType") actionType: option<actionType>
}
type enabledServicePrincipal = {
@as("DateEnabled") dateEnabled: option<timestamp_>,
  @as("ServicePrincipal") servicePrincipal: option<servicePrincipal>
}
type effectivePolicy = {
@as("PolicyType") policyType: option<effectivePolicyType>,
  @as("TargetId") targetId: option<policyTargetId>,
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<timestamp_>,
  @as("PolicyContent") policyContent: option<policyContent>
}
type delegatedService = {
@as("DelegationEnabledDate") delegationEnabledDate: option<timestamp_>,
  @as("ServicePrincipal") servicePrincipal: option<servicePrincipal>
}
type delegatedAdministrator = {
@as("DelegationEnabledDate") delegationEnabledDate: option<timestamp_>,
  @as("JoinedTimestamp") joinedTimestamp: option<timestamp_>,
  @as("JoinedMethod") joinedMethod: option<accountJoinedMethod>,
  @as("Status") status: option<accountStatus>,
  @as("Name") name: option<accountName>,
  @as("Email") email: option<email>,
  @as("Arn") arn: option<accountArn>,
  @as("Id") id: option<accountId>
}
type createAccountStatus = {
@as("FailureReason") failureReason: option<createAccountFailureReason>,
  @as("GovCloudAccountId") govCloudAccountId: option<accountId>,
  @as("AccountId") accountId: option<accountId>,
  @as("CompletedTimestamp") completedTimestamp: option<timestamp_>,
  @as("RequestedTimestamp") requestedTimestamp: option<timestamp_>,
  @as("State") state: option<createAccountState>,
  @as("AccountName") accountName: option<accountName>,
  @as("Id") id: option<createAccountRequestId>
}
type createAccountStates = array<createAccountState>
type child = {
@as("Type") type_: option<childType>,
  @as("Id") id: option<childId>
}
type account = {
@as("JoinedTimestamp") joinedTimestamp: option<timestamp_>,
  @as("JoinedMethod") joinedMethod: option<accountJoinedMethod>,
  @as("Status") status: option<accountStatus>,
  @as("Name") name: option<accountName>,
  @as("Email") email: option<email>,
  @as("Arn") arn: option<accountArn>,
  @as("Id") id: option<accountId>
}
type tags = array<tag>
type policyTypes = array<policyTypeSummary>
type policyTargets = array<policyTargetSummary>
type policy = {
@as("Content") content: option<policyContent>,
  @as("PolicySummary") policySummary: option<policySummary>
}
type policies = array<policySummary>
type parents = array<parent>
type organizationalUnits = array<organizationalUnit>
type handshakeParties = array<handshakeParty>
type enabledServicePrincipals = array<enabledServicePrincipal>
type delegatedServices = array<delegatedService>
type delegatedAdministrators = array<delegatedAdministrator>
type createAccountStatuses = array<createAccountStatus>
type children = array<child>
type accounts = array<account>
type root = {
@as("PolicyTypes") policyTypes: option<policyTypes>,
  @as("Name") name: option<rootName>,
  @as("Arn") arn: option<rootArn>,
  @as("Id") id: option<rootId>
}
type organization = {
@as("AvailablePolicyTypes") availablePolicyTypes: option<policyTypes>,
  @as("MasterAccountEmail") masterAccountEmail: option<email>,
  @as("MasterAccountId") masterAccountId: option<accountId>,
  @as("MasterAccountArn") masterAccountArn: option<accountArn>,
  @as("FeatureSet") featureSet: option<organizationFeatureSet>,
  @as("Arn") arn: option<organizationArn>,
  @as("Id") id: option<organizationId>
}
type roots = array<root>
type rec handshakeResources = array<handshakeResource> and handshakeResource = {
@as("Resources") resources: option<handshakeResources>,
  @as("Type") type_: option<handshakeResourceType>,
  @as("Value") value: option<handshakeResourceValue>
}
type handshake = {
@as("Resources") resources: option<handshakeResources>,
  @as("Action") action: option<actionType>,
  @as("ExpirationTimestamp") expirationTimestamp: option<timestamp_>,
  @as("RequestedTimestamp") requestedTimestamp: option<timestamp_>,
  @as("State") state: option<handshakeState>,
  @as("Parties") parties: option<handshakeParties>,
  @as("Arn") arn: option<handshakeArn>,
  @as("Id") id: option<handshakeId>
}
type handshakes = array<handshake>

module RemoveAccountFromOrganization = {
  type t;
  type request = {
@as("AccountId") accountId: accountId
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "RemoveAccountFromOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RegisterDelegatedAdministrator = {
  type t;
  type request = {
@as("ServicePrincipal") servicePrincipal: servicePrincipal,
  @as("AccountId") accountId: accountId
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "RegisterDelegatedAdministratorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module MoveAccount = {
  type t;
  type request = {
@as("DestinationParentId") destinationParentId: parentId,
  @as("SourceParentId") sourceParentId: parentId,
  @as("AccountId") accountId: accountId
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "MoveAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module LeaveOrganization = {
  type t;
  
  
  @module("@aws-sdk/client-organizations") @new external new_: (unit) => t = "LeaveOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module EnableAWSServiceAccess = {
  type t;
  type request = {
@as("ServicePrincipal") servicePrincipal: servicePrincipal
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "EnableAWSServiceAccessCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DisableAWSServiceAccess = {
  type t;
  type request = {
@as("ServicePrincipal") servicePrincipal: servicePrincipal
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DisableAWSServiceAccessCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DetachPolicy = {
  type t;
  type request = {
@as("TargetId") targetId: policyTargetId,
  @as("PolicyId") policyId: policyId
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DetachPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeregisterDelegatedAdministrator = {
  type t;
  type request = {
@as("ServicePrincipal") servicePrincipal: servicePrincipal,
  @as("AccountId") accountId: accountId
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DeregisterDelegatedAdministratorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeletePolicy = {
  type t;
  type request = {
@as("PolicyId") policyId: policyId
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DeletePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteOrganizationalUnit = {
  type t;
  type request = {
@as("OrganizationalUnitId") organizationalUnitId: organizationalUnitId
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DeleteOrganizationalUnitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteOrganization = {
  type t;
  
  
  @module("@aws-sdk/client-organizations") @new external new_: (unit) => t = "DeleteOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AttachPolicy = {
  type t;
  type request = {
@as("TargetId") targetId: policyTargetId,
  @as("PolicyId") policyId: policyId
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "AttachPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateOrganizationalUnit = {
  type t;
  type request = {
@as("Name") name: option<organizationalUnitName>,
  @as("OrganizationalUnitId") organizationalUnitId: organizationalUnitId
}
  type response = {
@as("OrganizationalUnit") organizationalUnit: option<organizationalUnit>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "UpdateOrganizationalUnitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeys,
  @as("ResourceId") resourceId: taggableResourceId
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeOrganizationalUnit = {
  type t;
  type request = {
@as("OrganizationalUnitId") organizationalUnitId: organizationalUnitId
}
  type response = {
@as("OrganizationalUnit") organizationalUnit: option<organizationalUnit>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DescribeOrganizationalUnitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEffectivePolicy = {
  type t;
  type request = {
@as("TargetId") targetId: option<policyTargetId>,
  @as("PolicyType") policyType: effectivePolicyType
}
  type response = {
@as("EffectivePolicy") effectivePolicy: option<effectivePolicy>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DescribeEffectivePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCreateAccountStatus = {
  type t;
  type request = {
@as("CreateAccountRequestId") createAccountRequestId: createAccountRequestId
}
  type response = {
@as("CreateAccountStatus") createAccountStatus: option<createAccountStatus>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DescribeCreateAccountStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccount = {
  type t;
  type request = {
@as("AccountId") accountId: accountId
}
  type response = {
@as("Account") account: option<account>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DescribeAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePolicy = {
  type t;
  type request = {
@as("Content") content: option<policyContent>,
  @as("Description") description: option<policyDescription>,
  @as("Name") name: option<policyName>,
  @as("PolicyId") policyId: policyId
}
  type response = {
@as("Policy") policy: option<policy>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "UpdatePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tags,
  @as("ResourceId") resourceId: taggableResourceId
}
  
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTargetsForPolicy = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("PolicyId") policyId: policyId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Targets") targets: option<policyTargets>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListTargetsForPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ResourceId") resourceId: taggableResourceId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Tags") tags: option<tags>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPoliciesForTarget = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Filter") filter: policyType,
  @as("TargetId") targetId: policyTargetId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Policies") policies: option<policies>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListPoliciesForTargetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPolicies = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Filter") filter: policyType
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Policies") policies: option<policies>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListParents = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ChildId") childId: childId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Parents") parents: option<parents>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListParentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOrganizationalUnitsForParent = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ParentId") parentId: parentId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("OrganizationalUnits") organizationalUnits: option<organizationalUnits>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListOrganizationalUnitsForParentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDelegatedServicesForAccount = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("DelegatedServices") delegatedServices: option<delegatedServices>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListDelegatedServicesForAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDelegatedAdministrators = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ServicePrincipal") servicePrincipal: option<servicePrincipal>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("DelegatedAdministrators") delegatedAdministrators: option<delegatedAdministrators>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListDelegatedAdministratorsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCreateAccountStatus = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("States") states: option<createAccountStates>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("CreateAccountStatuses") createAccountStatuses: option<createAccountStatuses>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListCreateAccountStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListChildren = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ChildType") childType: childType,
  @as("ParentId") parentId: parentId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Children") children: option<children>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListChildrenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccountsForParent = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ParentId") parentId: parentId
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Accounts") accounts: option<accounts>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListAccountsForParentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccounts = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Accounts") accounts: option<accounts>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListAccountsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAWSServiceAccessForOrganization = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("EnabledServicePrincipals") enabledServicePrincipals: option<enabledServicePrincipals>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListAWSServiceAccessForOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePolicy = {
  type t;
  type request = {
@as("PolicyId") policyId: policyId
}
  type response = {
@as("Policy") policy: option<policy>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DescribePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePolicy = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("Type") type_: policyType,
  @as("Name") name: policyName,
  @as("Description") description: policyDescription,
  @as("Content") content: policyContent
}
  type response = {
@as("Policy") policy: option<policy>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "CreatePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateOrganizationalUnit = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("Name") name: organizationalUnitName,
  @as("ParentId") parentId: parentId
}
  type response = {
@as("OrganizationalUnit") organizationalUnit: option<organizationalUnit>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "CreateOrganizationalUnitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateGovCloudAccount = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("IamUserAccessToBilling") iamUserAccessToBilling: option<iamuserAccessToBilling>,
  @as("RoleName") roleName: option<roleName>,
  @as("AccountName") accountName: accountName,
  @as("Email") email: email
}
  type response = {
@as("CreateAccountStatus") createAccountStatus: option<createAccountStatus>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "CreateGovCloudAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAccount = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("IamUserAccessToBilling") iamUserAccessToBilling: option<iamuserAccessToBilling>,
  @as("RoleName") roleName: option<roleName>,
  @as("AccountName") accountName: accountName,
  @as("Email") email: email
}
  type response = {
@as("CreateAccountStatus") createAccountStatus: option<createAccountStatus>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "CreateAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnablePolicyType = {
  type t;
  type request = {
@as("PolicyType") policyType: policyType,
  @as("RootId") rootId: rootId
}
  type response = {
@as("Root") root: option<root>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "EnablePolicyTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisablePolicyType = {
  type t;
  type request = {
@as("PolicyType") policyType: policyType,
  @as("RootId") rootId: rootId
}
  type response = {
@as("Root") root: option<root>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DisablePolicyTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganization = {
  type t;
  
  type response = {
@as("Organization") organization: option<organization>
}
  @module("@aws-sdk/client-organizations") @new external new_: (unit) => t = "DescribeOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateOrganization = {
  type t;
  type request = {
@as("FeatureSet") featureSet: option<organizationFeatureSet>
}
  type response = {
@as("Organization") organization: option<organization>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "CreateOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRoots = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Roots") roots: option<roots>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListRootsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InviteAccountToOrganization = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("Notes") notes: option<handshakeNotes>,
  @as("Target") target: handshakeParty
}
  type response = {
@as("Handshake") handshake: option<handshake>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "InviteAccountToOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableAllFeatures = {
  type t;
  type request = unit
  type response = {
@as("Handshake") handshake: option<handshake>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "EnableAllFeaturesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeHandshake = {
  type t;
  type request = {
@as("HandshakeId") handshakeId: handshakeId
}
  type response = {
@as("Handshake") handshake: option<handshake>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DescribeHandshakeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeclineHandshake = {
  type t;
  type request = {
@as("HandshakeId") handshakeId: handshakeId
}
  type response = {
@as("Handshake") handshake: option<handshake>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "DeclineHandshakeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelHandshake = {
  type t;
  type request = {
@as("HandshakeId") handshakeId: handshakeId
}
  type response = {
@as("Handshake") handshake: option<handshake>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "CancelHandshakeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AcceptHandshake = {
  type t;
  type request = {
@as("HandshakeId") handshakeId: handshakeId
}
  type response = {
@as("Handshake") handshake: option<handshake>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "AcceptHandshakeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHandshakesForOrganization = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Filter") filter: option<handshakeFilter>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Handshakes") handshakes: option<handshakes>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListHandshakesForOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHandshakesForAccount = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Filter") filter: option<handshakeFilter>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Handshakes") handshakes: option<handshakes>
}
  @module("@aws-sdk/client-organizations") @new external new_: (request) => t = "ListHandshakesForAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
