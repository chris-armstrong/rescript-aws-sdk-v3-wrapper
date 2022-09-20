type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-organizations") @new
external createClient: unit => awsServiceClient = "OrganizationsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type targetType = [
  | @as("ROOT") #ROOT
  | @as("ORGANIZATIONAL_UNIT") #ORGANIZATIONAL_UNIT
  | @as("ACCOUNT") #ACCOUNT
]
type targetName = string
type taggableResourceId = string
type tagValue = string
type tagKey = string
type servicePrincipal = string
type rootName = string
type rootId = string
type rootArn = string
type roleName = string
type policyTypeStatus = [
  | @as("PENDING_DISABLE") #PENDING_DISABLE
  | @as("PENDING_ENABLE") #PENDING_ENABLE
  | @as("ENABLED") #ENABLED
]
type policyType = [
  | @as("AISERVICES_OPT_OUT_POLICY") #AISERVICES_OPT_OUT_POLICY
  | @as("BACKUP_POLICY") #BACKUP_POLICY
  | @as("TAG_POLICY") #TAG_POLICY
  | @as("SERVICE_CONTROL_POLICY") #SERVICE_CONTROL_POLICY
]
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
type invalidInputExceptionReason = [
  | @as("INVALID_EMAIL_ADDRESS_TARGET") #INVALID_EMAIL_ADDRESS_TARGET
  | @as("TARGET_NOT_SUPPORTED") #TARGET_NOT_SUPPORTED
  | @as("DUPLICATE_TAG_KEY") #DUPLICATE_TAG_KEY
  | @as("INVALID_SYSTEM_TAGS_PARAMETER") #INVALID_SYSTEM_TAGS_PARAMETER
  | @as("INVALID_ROLE_NAME") #INVALID_ROLE_NAME
  | @as("UNRECOGNIZED_SERVICE_PRINCIPAL") #UNRECOGNIZED_SERVICE_PRINCIPAL
  | @as("INVALID_FULL_NAME_TARGET") #INVALID_FULL_NAME_TARGET
  | @as("MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS") #MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS
  | @as("MAX_LIMIT_EXCEEDED_FILTER") #MAX_LIMIT_EXCEEDED_FILTER
  | @as("INVALID_NEXT_TOKEN") #INVALID_NEXT_TOKEN
  | @as("INPUT_REQUIRED") #INPUT_REQUIRED
  | @as("INVALID_PATTERN_TARGET_ID") #INVALID_PATTERN_TARGET_ID
  | @as("INVALID_PATTERN") #INVALID_PATTERN
  | @as("IMMUTABLE_POLICY") #IMMUTABLE_POLICY
  | @as("MIN_VALUE_EXCEEDED") #MIN_VALUE_EXCEEDED
  | @as("MIN_LENGTH_EXCEEDED") #MIN_LENGTH_EXCEEDED
  | @as("MAX_VALUE_EXCEEDED") #MAX_VALUE_EXCEEDED
  | @as("MAX_LENGTH_EXCEEDED") #MAX_LENGTH_EXCEEDED
  | @as("INVALID_LIST_MEMBER") #INVALID_LIST_MEMBER
  | @as("INVALID_ENUM_POLICY_TYPE") #INVALID_ENUM_POLICY_TYPE
  | @as("INVALID_ENUM") #INVALID_ENUM
  | @as("INVALID_SYNTAX_POLICY_ID") #INVALID_SYNTAX_POLICY_ID
  | @as("INVALID_SYNTAX_ORGANIZATION_ARN") #INVALID_SYNTAX_ORGANIZATION_ARN
  | @as("INVALID_PARTY_TYPE_TARGET") #INVALID_PARTY_TYPE_TARGET
]
type iamuserAccessToBilling = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type handshakeState = [
  | @as("EXPIRED") #EXPIRED
  | @as("DECLINED") #DECLINED
  | @as("ACCEPTED") #ACCEPTED
  | @as("CANCELED") #CANCELED
  | @as("OPEN") #OPEN
  | @as("REQUESTED") #REQUESTED
]
type handshakeResourceValue = string
type handshakeResourceType = [
  | @as("PARENT_HANDSHAKE") #PARENT_HANDSHAKE
  | @as("NOTES") #NOTES
  | @as("MASTER_NAME") #MASTER_NAME
  | @as("MASTER_EMAIL") #MASTER_EMAIL
  | @as("EMAIL") #EMAIL
  | @as("ORGANIZATION_FEATURE_SET") #ORGANIZATION_FEATURE_SET
  | @as("ORGANIZATION") #ORGANIZATION
  | @as("ACCOUNT") #ACCOUNT
]
type handshakePartyType = [
  | @as("EMAIL") #EMAIL
  | @as("ORGANIZATION") #ORGANIZATION
  | @as("ACCOUNT") #ACCOUNT
]
type handshakePartyId = string
type handshakeNotes = string
type handshakeId = string
type handshakeConstraintViolationExceptionReason = [
  | @as("MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED") #MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED
  | @as("ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED")
  #ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED
  | @as("ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD")
  #ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD
  | @as("PAYMENT_INSTRUMENT_REQUIRED") #PAYMENT_INSTRUMENT_REQUIRED
  | @as("INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES") #INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES
  | @as("ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION")
  #ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION
  | @as("ORGANIZATION_ALREADY_HAS_ALL_FEATURES") #ORGANIZATION_ALREADY_HAS_ALL_FEATURES
  | @as("ALREADY_IN_AN_ORGANIZATION") #ALREADY_IN_AN_ORGANIZATION
  | @as("HANDSHAKE_RATE_LIMIT_EXCEEDED") #HANDSHAKE_RATE_LIMIT_EXCEEDED
  | @as("ACCOUNT_NUMBER_LIMIT_EXCEEDED") #ACCOUNT_NUMBER_LIMIT_EXCEEDED
]
type handshakeArn = string
type genericArn = string
type exceptionType = string
type exceptionMessage = string
type email = string
type effectivePolicyType = [
  | @as("AISERVICES_OPT_OUT_POLICY") #AISERVICES_OPT_OUT_POLICY
  | @as("BACKUP_POLICY") #BACKUP_POLICY
  | @as("TAG_POLICY") #TAG_POLICY
]
type createAccountState = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type createAccountRequestId = string
type createAccountName = string
type createAccountFailureReason = [
  | @as("MISSING_PAYMENT_INSTRUMENT") #MISSING_PAYMENT_INSTRUMENT
  | @as("UNKNOWN_BUSINESS_VALIDATION") #UNKNOWN_BUSINESS_VALIDATION
  | @as("INVALID_IDENTITY_FOR_BUSINESS_VALIDATION") #INVALID_IDENTITY_FOR_BUSINESS_VALIDATION
  | @as("PENDING_BUSINESS_VALIDATION") #PENDING_BUSINESS_VALIDATION
  | @as("FAILED_BUSINESS_VALIDATION") #FAILED_BUSINESS_VALIDATION
  | @as("MISSING_BUSINESS_VALIDATION") #MISSING_BUSINESS_VALIDATION
  | @as("GOVCLOUD_ACCOUNT_ALREADY_EXISTS") #GOVCLOUD_ACCOUNT_ALREADY_EXISTS
  | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE
  | @as("CONCURRENT_ACCOUNT_MODIFICATION") #CONCURRENT_ACCOUNT_MODIFICATION
  | @as("INVALID_EMAIL") #INVALID_EMAIL
  | @as("INVALID_ADDRESS") #INVALID_ADDRESS
  | @as("EMAIL_ALREADY_EXISTS") #EMAIL_ALREADY_EXISTS
  | @as("ACCOUNT_LIMIT_EXCEEDED") #ACCOUNT_LIMIT_EXCEEDED
]
type constraintViolationExceptionReason = [
  | @as("SERVICE_ACCESS_NOT_ENABLED") #SERVICE_ACCESS_NOT_ENABLED
  | @as("CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED") #CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED
  | @as("CLOSE_ACCOUNT_QUOTA_EXCEEDED") #CLOSE_ACCOUNT_QUOTA_EXCEEDED
  | @as("CANNOT_CLOSE_MANAGEMENT_ACCOUNT") #CANNOT_CLOSE_MANAGEMENT_ACCOUNT
  | @as("MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE") #MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE
  | @as("DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE")
  #DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE
  | @as("CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG")
  #CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG
  | @as("CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR")
  #CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR
  | @as("MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED")
  #MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED
  | @as("TAG_POLICY_VIOLATION") #TAG_POLICY_VIOLATION
  | @as("MAX_TAG_LIMIT_EXCEEDED") #MAX_TAG_LIMIT_EXCEEDED
  | @as("WAIT_PERIOD_ACTIVE") #WAIT_PERIOD_ACTIVE
  | @as("EMAIL_VERIFICATION_CODE_EXPIRED") #EMAIL_VERIFICATION_CODE_EXPIRED
  | @as("CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION")
  #CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION
  | @as("ORGANIZATION_NOT_IN_ALL_FEATURES_MODE") #ORGANIZATION_NOT_IN_ALL_FEATURES_MODE
  | @as("MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED") #MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED
  | @as("MASTER_ACCOUNT_MISSING_CONTACT_INFO") #MASTER_ACCOUNT_MISSING_CONTACT_INFO
  | @as("MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE")
  #MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE
  | @as("ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED") #ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED
  | @as("MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED") #MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED
  | @as("MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED") #MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED
  | @as("ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION")
  #ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION
  | @as("ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA") #ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA
  | @as("ACCOUNT_CANNOT_LEAVE_ORGANIZATION") #ACCOUNT_CANNOT_LEAVE_ORGANIZATION
  | @as("MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED") #MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED
  | @as("MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED") #MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED
  | @as("POLICY_CONTENT_LIMIT_EXCEEDED") #POLICY_CONTENT_LIMIT_EXCEEDED
  | @as("POLICY_NUMBER_LIMIT_EXCEEDED") #POLICY_NUMBER_LIMIT_EXCEEDED
  | @as("OU_DEPTH_LIMIT_EXCEEDED") #OU_DEPTH_LIMIT_EXCEEDED
  | @as("OU_NUMBER_LIMIT_EXCEEDED") #OU_NUMBER_LIMIT_EXCEEDED
  | @as("HANDSHAKE_RATE_LIMIT_EXCEEDED") #HANDSHAKE_RATE_LIMIT_EXCEEDED
  | @as("ACCOUNT_NUMBER_LIMIT_EXCEEDED") #ACCOUNT_NUMBER_LIMIT_EXCEEDED
]
type childType = [@as("ORGANIZATIONAL_UNIT") #ORGANIZATIONAL_UNIT | @as("ACCOUNT") #ACCOUNT]
type childId = string
type awsManagedPolicy = bool
type actionType = [
  | @as("ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE") #ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE
  | @as("APPROVE_ALL_FEATURES") #APPROVE_ALL_FEATURES
  | @as("ENABLE_ALL_FEATURES") #ENABLE_ALL_FEATURES
  | @as("INVITE") #INVITE
]
type accountStatus = [
  | @as("PENDING_CLOSURE") #PENDING_CLOSURE
  | @as("SUSPENDED") #SUSPENDED
  | @as("ACTIVE") #ACTIVE
]
type accountName = string
type accountJoinedMethod = [@as("CREATED") #CREATED | @as("INVITED") #INVITED]
type accountId = string
type accountArn = string
type accessDeniedForDependencyExceptionReason = [
  | @as("ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE")
  #ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE
]
type tagKeys = array<tagKey>
@ocaml.doc("<p>A custom key-value pair associated with a resource within your organization.</p>
        <p>You can attach tags to any of the following organization resources.</p>
        <ul>
            <li>
                <p>Amazon Web Services account</p>
            </li>
            <li>
                <p>Organizational unit (OU)</p>
            </li>
            <li>
                <p>Organization root</p>
            </li>
            <li>
                <p>Policy</p>
            </li>
         </ul>")
type tag = {
  @ocaml.doc("<p>The string value that's associated with the key of the tag. You can set the value of a
            tag to an empty string, but you can't set the value of a tag to null.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The key identifier, or name, of the tag.</p>") @as("Key") key: tagKey,
}
@ocaml.doc("<p>Contains information about a policy type and its status in the associated root.</p>")
type policyTypeSummary = {
  @ocaml.doc("<p>The status of the policy type as it relates to the associated root. To attach a policy
            of the specified type to a root or to an OU or account in that root, it must be
            available in the organization and enabled for that root.</p>")
  @as("Status")
  status: option<policyTypeStatus>,
  @ocaml.doc("<p>The name of the policy type.</p>") @as("Type") type_: option<policyType>,
}
@ocaml.doc("<p>Contains information about a root, OU, or account that a policy is attached to.</p>")
type policyTargetSummary = {
  @ocaml.doc("<p>The type of the policy target.</p>") @as("Type") type_: option<targetType>,
  @ocaml.doc("<p>The friendly name of the policy target.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    that is used to validate this parameter is a string of any of the characters in the ASCII 
    character range.</p>")
  @as("Name")
  name: option<targetName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the policy target.</p>
        <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN 
    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>")
  @as("Arn")
  arn: option<genericArn>,
  @ocaml.doc("<p>The unique identifier (ID) of the policy target.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or 
          digits.</p>
            </li>
            <li>
               <p>
                  <b>Account</b> - A string that consists of exactly 12 digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 
          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>
            </li>
         </ul>")
  @as("TargetId")
  targetId: option<policyTargetId>,
}
@ocaml.doc("<p>Contains information about a policy, but does not include the content. To see the
            content of a policy, see <a>DescribePolicy</a>.</p>")
type policySummary = {
  @ocaml.doc("<p>A boolean value that indicates whether the specified policy is an Amazon Web Services managed
            policy. If true, then you can attach the policy to roots, OUs, or accounts, but you
            cannot edit it.</p>")
  @as("AwsManaged")
  awsManaged: option<awsManagedPolicy>,
  @ocaml.doc("<p>The type of policy.</p>") @as("Type") type_: option<policyType>,
  @ocaml.doc("<p>The description of the policy.</p>") @as("Description")
  description: option<policyDescription>,
  @ocaml.doc("<p>The friendly name of the policy.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    that is used to validate this parameter is a string of any of the characters in the ASCII 
    character range.</p>")
  @as("Name")
  name: option<policyName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the policy.</p>
        <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN 
    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>")
  @as("Arn")
  arn: option<policyArn>,
  @ocaml.doc("<p>The unique identifier (ID) of the policy.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed 
    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>")
  @as("Id")
  id: option<policyId>,
}
@ocaml.doc("<p>Contains information about either a root or an organizational unit (OU) that can
            contain OUs or accounts in an organization.</p>")
type parent = {
  @ocaml.doc("<p>The type of the parent entity.</p>") @as("Type") type_: option<parentType>,
  @ocaml.doc("<p>The unique identifier (ID) of the parent entity.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or 
          digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32
          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>
            </li>
         </ul>")
  @as("Id")
  id: option<parentId>,
}
@ocaml.doc("<p>Contains details about an organizational unit (OU). An OU is a container of Amazon Web Services
            accounts within a root of an organization. Policies that are attached to an OU apply to
            all accounts contained in that OU and in any child OUs.</p>")
type organizationalUnit = {
  @ocaml.doc("<p>The friendly name of this OU.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    that is used to validate this parameter is a string of any of the characters in the ASCII 
    character range.</p>")
  @as("Name")
  name: option<organizationalUnitName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of this OU.</p>
        <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN 
    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>")
  @as("Arn")
  arn: option<organizationalUnitArn>,
  @ocaml.doc("<p>The unique identifier (ID) associated with this OU.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires 
    \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the 
    OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters 
    or digits.</p>")
  @as("Id")
  id: option<organizationalUnitId>,
}
@ocaml.doc("<p>Identifies a participant in a handshake.</p>")
type handshakeParty = {
  @ocaml.doc("<p>The type of party.</p>") @as("Type") type_: handshakePartyType,
  @ocaml.doc("<p>The unique identifier (ID) for the party.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" 
    followed by from 8 to 32 lowercase letters or digits.</p>")
  @as("Id")
  id: handshakePartyId,
}
@ocaml.doc("<p>Specifies the criteria that are used to select the handshakes for the
            operation.</p>")
type handshakeFilter = {
  @ocaml.doc("<p>Specifies the parent handshake. Only used for handshake types that are a child of
            another type.</p>
        <p>If you specify <code>ParentHandshakeId</code>, you cannot also specify
                <code>ActionType</code>.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" 
    followed by from 8 to 32 lowercase letters or digits.</p>")
  @as("ParentHandshakeId")
  parentHandshakeId: option<handshakeId>,
  @ocaml.doc("<p>Specifies the type of handshake action.</p>
        <p>If you specify <code>ActionType</code>, you cannot also specify
                <code>ParentHandshakeId</code>.</p>")
  @as("ActionType")
  actionType: option<actionType>,
}
@ocaml.doc("<p>A structure that contains details of a service principal that represents an Amazon Web Services
            service that is enabled to integrate with Organizations.</p>")
type enabledServicePrincipal = {
  @ocaml.doc(
    "<p>The date that the service principal was enabled for integration with Organizations.</p>"
  )
  @as("DateEnabled")
  dateEnabled: option<timestamp_>,
  @ocaml.doc("<p>The name of the service principal. This is typically in the form of a URL, such as:
                    <code>
               <i>servicename</i>.amazonaws.com</code>.</p>")
  @as("ServicePrincipal")
  servicePrincipal: option<servicePrincipal>,
}
@ocaml.doc("<p>Contains rules to be applied to the affected accounts. The effective policy is the
            aggregation of any policies the account inherits, plus any policy directly attached to
            the account.</p>")
type effectivePolicy = {
  @ocaml.doc("<p>The policy type.</p>") @as("PolicyType") policyType: option<effectivePolicyType>,
  @ocaml.doc("<p>The account ID of the policy target. </p>") @as("TargetId")
  targetId: option<policyTargetId>,
  @ocaml.doc("<p>The time of the last update to this policy.</p>") @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The text content of the policy.</p>") @as("PolicyContent")
  policyContent: option<policyContent>,
}
@ocaml.doc("<p>Contains information about the Amazon Web Services service for which the account is a delegated
            administrator.</p>")
type delegatedService = {
  @ocaml.doc("<p>The date that the account became a delegated administrator for this service. </p>")
  @as("DelegationEnabledDate")
  delegationEnabledDate: option<timestamp_>,
  @ocaml.doc("<p>The name of an Amazon Web Services service that can request an operation for the specified service.
            This is typically in the form of a URL, such as:
                <code>
               <i>servicename</i>.amazonaws.com</code>.</p>")
  @as("ServicePrincipal")
  servicePrincipal: option<servicePrincipal>,
}
@ocaml.doc("<p>Contains information about the delegated administrator.</p>")
type delegatedAdministrator = {
  @ocaml.doc("<p>The date when the account was made a delegated administrator.</p>")
  @as("DelegationEnabledDate")
  delegationEnabledDate: option<timestamp_>,
  @ocaml.doc("<p>The date when the delegated administrator's account became a part of the
            organization.</p>")
  @as("JoinedTimestamp")
  joinedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The method by which the delegated administrator's account joined the
            organization.</p>")
  @as("JoinedMethod")
  joinedMethod: option<accountJoinedMethod>,
  @ocaml.doc("<p>The status of the delegated administrator's account in the organization.</p>")
  @as("Status")
  status: option<accountStatus>,
  @ocaml.doc("<p>The friendly name of the delegated administrator's account.</p>") @as("Name")
  name: option<accountName>,
  @ocaml.doc("<p>The email address that is associated with the delegated administrator's Amazon Web Services
            account.</p>")
  @as("Email")
  email: option<email>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the delegated administrator's account.</p>")
  @as("Arn")
  arn: option<accountArn>,
  @ocaml.doc("<p>The unique identifier (ID) of the delegated administrator's account.</p>")
  @as("Id")
  id: option<accountId>,
}
@ocaml.doc("<p>Contains the status about a <a>CreateAccount</a> or <a>CreateGovCloudAccount</a> request to create an Amazon Web Services account or an Amazon Web Services
            GovCloud (US) account in an organization.</p>")
type createAccountStatus = {
  @ocaml.doc("<p>If the request failed, a description of the reason for the failure.</p>
        <ul>
            <li>
                <p>ACCOUNT_LIMIT_EXCEEDED: The account couldn't be created because you reached
                    the limit on the number of accounts in your organization.</p>
            </li>
            <li>
                <p>CONCURRENT_ACCOUNT_MODIFICATION: You already submitted a request with the same
                    information.</p>
            </li>
            <li>
                <p>EMAIL_ALREADY_EXISTS: The account could not be created because another Amazon Web Services
                    account with that email address already exists.</p>
            </li>
            <li>
                <p>FAILED_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization
                    failed to receive business license validation.</p>
            </li>
            <li>
                <p>GOVCLOUD_ACCOUNT_ALREADY_EXISTS: The account in the Amazon Web Services GovCloud (US) Region
                    could not be created because this Region already includes an account with that
                    email address.</p>
            </li>
            <li>
                <p>IDENTITY_INVALID_BUSINESS_VALIDATION: The Amazon Web Services account that owns your
                    organization can't complete business license validation because it doesn't have
                    valid identity data.</p>
            </li>
            <li>
                <p>INVALID_ADDRESS: The account could not be created because the address you
                    provided is not valid.</p>
            </li>
            <li>
                <p>INVALID_EMAIL: The account could not be created because the email address you
                    provided is not valid.</p>
            </li>
            <li>
                <p>INTERNAL_FAILURE: The account could not be created because of an internal
                    failure. Try again later. If the problem persists, contact Amazon Web Services Customer
                    Support.</p>
            </li>
            <li>
                <p>MISSING_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization has
                    not received Business Validation.</p>
            </li>
            <li>
                <p> MISSING_PAYMENT_INSTRUMENT: You must configure the management account with a
                    valid payment method, such as a credit card.</p>
            </li>
            <li>
                <p>PENDING_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization is
                    still in the process of completing business license validation.</p>
            </li>
            <li>
                <p>UNKNOWN_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization has
                    an unknown issue with business license validation.</p>
            </li>
         </ul>")
  @as("FailureReason")
  failureReason: option<createAccountFailureReason>,
  @ocaml.doc("<p>If the account was created successfully, the unique identifier (ID) of the new account
            in the Amazon Web Services GovCloud (US) Region.</p>")
  @as("GovCloudAccountId")
  govCloudAccountId: option<accountId>,
  @ocaml.doc("<p>If the account was created successfully, the unique identifier (ID) of the new
            account.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12
    digits.</p>")
  @as("AccountId")
  accountId: option<accountId>,
  @ocaml.doc("<p>The date and time that the account was created and the request completed.</p>")
  @as("CompletedTimestamp")
  completedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the request was made for the account creation.</p>")
  @as("RequestedTimestamp")
  requestedTimestamp: option<timestamp_>,
  @ocaml.doc(
    "<p>The status of the asynchronous request to create an Amazon Web Services account.</p>"
  )
  @as("State")
  state: option<createAccountState>,
  @ocaml.doc("<p>The account name given to the account when it was created.</p>") @as("AccountName")
  accountName: option<createAccountName>,
  @ocaml.doc("<p>The unique identifier (ID) that references this request. You get this value from the
            response of the initial <a>CreateAccount</a> request to create the
            account.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a create account request ID string 
    requires \"car-\" followed by from 8 to 32 lowercase letters or digits.</p>")
  @as("Id")
  id: option<createAccountRequestId>,
}
type createAccountStates = array<createAccountState>
@ocaml.doc("<p>Contains a list of child entities, either OUs or accounts.</p>")
type child = {
  @ocaml.doc("<p>The type of this child entity.</p>") @as("Type") type_: option<childType>,
  @ocaml.doc("<p>The unique identifier (ID) of this child entity.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a child ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Account</b> - A string that consists of exactly 12 digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with
          \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that 
          contains the OU). This string is followed by a second \"-\" dash and from 8 to 32 additional 
          lowercase letters or digits.</p>
            </li>
         </ul>")
  @as("Id")
  id: option<childId>,
}
@ocaml.doc("<p>Contains information about an Amazon Web Services account that is a member of an
            organization.</p>")
type account = {
  @ocaml.doc("<p>The date the account became a part of the organization.</p>")
  @as("JoinedTimestamp")
  joinedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The method by which the account joined the organization.</p>") @as("JoinedMethod")
  joinedMethod: option<accountJoinedMethod>,
  @ocaml.doc("<p>The status of the account in the organization.</p>") @as("Status")
  status: option<accountStatus>,
  @ocaml.doc("<p>The friendly name of the account.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    that is used to validate this parameter is a string of any of the characters in the ASCII 
    character range.</p>")
  @as("Name")
  name: option<accountName>,
  @ocaml.doc("<p>The email address associated with the Amazon Web Services account.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for this parameter is a string of characters that represents a
            standard internet email address.</p>")
  @as("Email")
  email: option<email>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the account.</p>
        <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN 
    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>")
  @as("Arn")
  arn: option<accountArn>,
  @ocaml.doc("<p>The unique identifier (ID) of the account.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12
    digits.</p>")
  @as("Id")
  id: option<accountId>,
}
type tags = array<tag>
type policyTypes = array<policyTypeSummary>
type policyTargets = array<policyTargetSummary>
@ocaml.doc("<p>Contains rules to be applied to the affected accounts. Policies can be attached
            directly to accounts, or to roots and OUs to affect all accounts in those
            hierarchies.</p>")
type policy = {
  @ocaml.doc("<p>The text content of the policy.</p>") @as("Content")
  content: option<policyContent>,
  @ocaml.doc("<p>A structure that contains additional details about the policy.</p>")
  @as("PolicySummary")
  policySummary: option<policySummary>,
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
@ocaml.doc("<p>Contains details about a root. A root is a top-level parent node in the hierarchy of
            an organization that can contain organizational units (OUs) and accounts.
            The root contains every Amazon Web Services account in the
            organization.</p>")
type root = {
  @ocaml.doc("<p>The types of policies that are currently enabled for the root and therefore can be
            attached to the root or to its OUs or accounts.</p>
        <note>
            <p>Even if a policy type is shown as available in the organization, you can
                separately enable and disable them at the root level by using <a>EnablePolicyType</a> and <a>DisablePolicyType</a>. Use <a>DescribeOrganization</a> to see the availability of the policy types in
                that organization.</p>
        </note>")
  @as("PolicyTypes")
  policyTypes: option<policyTypes>,
  @ocaml.doc("<p>The friendly name of the root.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    that is used to validate this parameter is a string of any of the characters in the ASCII 
    character range.</p>")
  @as("Name")
  name: option<rootName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the root.</p>
        <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN 
    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>")
  @as("Arn")
  arn: option<rootArn>,
  @ocaml.doc("<p>The unique identifier (ID) for the root.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a root ID string requires \"r-\" followed by 
    from 4 to 32 lowercase letters or digits.</p>")
  @as("Id")
  id: option<rootId>,
}
@ocaml.doc("<p>Contains details about an organization. An organization is a collection of accounts
            that are centrally managed together using consolidated billing, organized hierarchically
            with organizational units (OUs), and controlled with policies .</p>")
type organization = {
  @ocaml.doc("<important>
            <p>Do not use. This field is deprecated and doesn't provide complete information
                about the policies in your organization.</p>
        </important>
        <p>To determine the policies that are enabled and available for use in your organization,
            use the <a>ListRoots</a> operation instead.</p>")
  @as("AvailablePolicyTypes")
  availablePolicyTypes: option<policyTypes>,
  @ocaml.doc("<p>The email address that is associated with the Amazon Web Services account that is designated as the
            management account for the organization.</p>")
  @as("MasterAccountEmail")
  masterAccountEmail: option<email>,
  @ocaml.doc("<p>The unique identifier (ID) of the management account of an organization.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12
    digits.</p>")
  @as("MasterAccountId")
  masterAccountId: option<accountId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the account that is designated as the management
            account for the organization.</p>
        <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN 
    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>")
  @as("MasterAccountArn")
  masterAccountArn: option<accountArn>,
  @ocaml.doc("<p>Specifies the functionality that currently is available to the organization. If set to
            \"ALL\", then all features are enabled and policies can be applied to accounts in the
            organization. If set to \"CONSOLIDATED_BILLING\", then only consolidated billing
            functionality is available. For more information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html\">Enabling All Features
                in Your Organization</a> in the <i>Organizations User Guide</i>.</p>")
  @as("FeatureSet")
  featureSet: option<organizationFeatureSet>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an organization.</p>
        <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN 
    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>")
  @as("Arn")
  arn: option<organizationArn>,
  @ocaml.doc("<p>The unique identifier (ID) of an organization.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organization ID string requires \"o-\" 
    followed by from 10 to 32 lowercase letters or digits.</p>")
  @as("Id")
  id: option<organizationId>,
}
type roots = array<root>
type rec handshakeResources = array<handshakeResource>
and handshakeResource = {
  @ocaml.doc("<p>When needed, contains an additional array of <code>HandshakeResource</code>
            objects.</p>")
  @as("Resources")
  resources: option<handshakeResources>,
  @ocaml.doc("<p>The type of information being passed, specifying how the value is to be interpreted by
            the other party:</p>
        <ul>
            <li>
                <p>
                  <code>ACCOUNT</code> - Specifies an Amazon Web Services account ID number.</p>
            </li>
            <li>
                <p>
                  <code>ORGANIZATION</code> - Specifies an organization ID number.</p>
            </li>
            <li>
                <p>
                  <code>EMAIL</code> - Specifies the email address that is associated with the
                    account that receives the handshake. </p>
            </li>
            <li>
                <p>
                  <code>OWNER_EMAIL</code> - Specifies the email address associated with the
                    management account. Included as information about an organization. </p>
            </li>
            <li>
                <p>
                  <code>OWNER_NAME</code> - Specifies the name associated with the management
                    account. Included as information about an organization. </p>
            </li>
            <li>
                <p>
                  <code>NOTES</code> - Additional text provided by the handshake initiator and
                    intended for the recipient to read.</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<handshakeResourceType>,
  @ocaml.doc("<p>The information that is passed to the other party in the handshake. The format of the
            value string must match the requirements of the specified type.</p>")
  @as("Value")
  value: option<handshakeResourceValue>,
}
@ocaml.doc("<p>Contains information that must be exchanged to securely establish a relationship
            between two accounts (an <i>originator</i> and a
                <i>recipient</i>). For example, when a management account (the
            originator) invites another account (the recipient) to join its organization, the two
            accounts exchange information as a series of handshake requests and responses.</p>
        <p>
            <b>Note:</b> Handshakes that are <code>CANCELED</code>,
                <code>ACCEPTED</code>, <code>DECLINED</code>, or <code>EXPIRED</code> show up in
            lists for only 30 days after entering that state After that they are deleted.</p>")
type handshake = {
  @ocaml.doc("<p>Additional information that is needed to process the handshake.</p>")
  @as("Resources")
  resources: option<handshakeResources>,
  @ocaml.doc("<p>The type of handshake, indicating what action occurs when the recipient accepts the
            handshake. The following handshake types are supported:</p>
        <ul>
            <li>
                <p>
                  <b>INVITE</b>: This type of handshake represents a
                    request to join an organization. It is always sent from the management account
                    to only non-member accounts.</p>
            </li>
            <li>
                <p>
                  <b>ENABLE_ALL_FEATURES</b>: This type of handshake
                    represents a request to enable all features in an organization. It is always
                    sent from the management account to only <i>invited</i> member
                    accounts. Created accounts do not receive this because those accounts were
                    created by the organization's management account and approval is
                    inferred.</p>
            </li>
            <li>
                <p>
                  <b>APPROVE_ALL_FEATURES</b>: This type of handshake
                    is sent from the Organizations service when all member accounts have approved the
                        <code>ENABLE_ALL_FEATURES</code> invitation. It is sent only to the
                    management account and signals the master that it can finalize the process to
                    enable all features.</p>
            </li>
         </ul>")
  @as("Action")
  action: option<actionType>,
  @ocaml.doc("<p>The date and time that the handshake expires. If the recipient of the handshake
            request fails to respond before the specified date and time, the handshake becomes
            inactive and is no longer valid.</p>")
  @as("ExpirationTimestamp")
  expirationTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the handshake request was made.</p>")
  @as("RequestedTimestamp")
  requestedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The current state of the handshake. Use the state to trace the flow of the handshake
            through the process from its creation to its acceptance. The meaning of each of the
            valid values is as follows:</p>
        <ul>
            <li>
                <p>
                  <b>REQUESTED</b>: This handshake was sent to
                    multiple recipients (applicable to only some handshake types) and not all
                    recipients have responded yet. The request stays in this state until all
                    recipients respond.</p>
            </li>
            <li>
                <p>
                  <b>OPEN</b>: This handshake was sent to multiple
                    recipients (applicable to only some policy types) and all recipients have
                    responded, allowing the originator to complete the handshake action.</p>
            </li>
            <li>
                <p>
                  <b>CANCELED</b>: This handshake is no longer active
                    because it was canceled by the originating account.</p>
            </li>
            <li>
                <p>
                  <b>ACCEPTED</b>: This handshake is complete because
                    it has been accepted by the recipient.</p>
            </li>
            <li>
                <p>
                  <b>DECLINED</b>: This handshake is no longer active
                    because it was declined by the recipient account.</p>
            </li>
            <li>
                <p>
                  <b>EXPIRED</b>: This handshake is no longer active
                    because the originator did not receive a response of any kind from the recipient
                    before the expiration time (15 days).</p>
            </li>
         </ul>")
  @as("State")
  state: option<handshakeState>,
  @ocaml.doc("<p>Information about the two accounts that are participating in the handshake.</p>")
  @as("Parties")
  parties: option<handshakeParties>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a handshake.</p>
        <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies\">ARN 
    Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>")
  @as("Arn")
  arn: option<handshakeArn>,
  @ocaml.doc("<p>The unique identifier (ID) of a handshake. The originating account creates the ID when
            it initiates the handshake.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" 
    followed by from 8 to 32 lowercase letters or digits.</p>")
  @as("Id")
  id: option<handshakeId>,
}
type handshakes = array<handshake>
@ocaml.doc("<p>Organizations is a web service that enables you to consolidate your multiple
            Amazon Web Services accounts into an <i>organization</i> and centrally manage your
            accounts and their resources.</p>
        <p>This guide provides descriptions of the Organizations operations. For more
            information about using this service, see the <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html\">Organizations User Guide</a>.</p>
        <p>
            <b>Support and feedback for Organizations</b>
         </p>
        <p>We welcome your feedback. Send your comments to <a href=\"mailto:feedback-awsorganizations@amazon.com\">feedback-awsorganizations@amazon.com</a> or post your feedback and questions in
            the <a href=\"http://forums.aws.amazon.com/forum.jspa?forumID=219\">Organizations support forum</a>. For
            more information about the Amazon Web Services support forums, see <a href=\"http://forums.aws.amazon.com/help.jspa\">Forums Help</a>.</p>
        <p>
            <b>Endpoint to call When using the CLI or the Amazon Web Services
                SDK</b>
         </p>
        <p>For the current release of Organizations, specify the <code>us-east-1</code> region
            for all Amazon Web Services API and CLI calls made from the commercial Amazon Web Services Regions outside of
            China. If calling from one of the Amazon Web Services Regions in China, then specify
                <code>cn-northwest-1</code>. You can do this in the CLI by using these parameters
            and commands:</p>
        <ul>
            <li>
                <p>Use the following parameter with each command to specify both the endpoint and
                    its region:</p>
                <p>
                  <code>--endpoint-url https://organizations.us-east-1.amazonaws.com</code>
                    <i>(from commercial Amazon Web Services Regions outside of China)</i>
               </p>
                <p>or</p>
                <p>
                  <code>--endpoint-url
                        https://organizations.cn-northwest-1.amazonaws.com.cn</code>
                    <i>(from Amazon Web Services Regions in China)</i>
               </p>
            </li>
            <li>
                <p>Use the default endpoint, but configure your default region with this
                    command:</p>
                <p>
                  <code>aws configure set default.region us-east-1</code>
                    <i>(from commercial Amazon Web Services Regions outside of China)</i>
               </p>
                <p>or</p>
                <p>
                  <code>aws configure set default.region cn-northwest-1</code>
                    <i>(from Amazon Web Services Regions in China)</i>
               </p>
            </li>
            <li>
                <p>Use the following parameter with each command to specify the endpoint:</p>
                <p>
                  <code>--region us-east-1</code>
                    <i>(from commercial Amazon Web Services Regions outside of China)</i>
               </p>
                <p>or</p>
                <p>
                  <code>--region cn-northwest-1</code>
                    <i>(from Amazon Web Services Regions in China)</i>
               </p>
            </li>
         </ul>
        <p>
            <b>Recording API Requests</b>
        </p>
        <p>Organizations supports CloudTrail, a service that records Amazon Web Services API calls for your
            Amazon Web Services account and delivers log files to an Amazon S3 bucket. By using information collected
            by CloudTrail, you can determine which requests the Organizations service received, who made the
            request and when, and so on. For more about Organizations and its support for CloudTrail, see
                <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_incident-response.html#orgs_cloudtrail-integration\">Logging
                Organizations Events with CloudTrail</a> in the <i>Organizations User Guide</i>.
            To learn more about CloudTrail, including how to turn it on and find your log files, see the
                <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html\">CloudTrail User Guide</a>.</p>")
module RemoveAccountFromOrganization = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the member account that you want to remove from the
            organization.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12
    digits.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "RemoveAccountFromOrganizationCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterDelegatedAdministrator = {
  type t
  type request = {
    @ocaml.doc("<p>The service principal of the Amazon Web Services service for which you want to make the member
            account a delegated administrator.</p>")
    @as("ServicePrincipal")
    servicePrincipal: servicePrincipal,
    @ocaml.doc("<p>The account ID number of the member account in the organization to register as a
            delegated administrator.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "RegisterDelegatedAdministratorCommand"
  let make = (~servicePrincipal, ~accountId, ()) =>
    new({servicePrincipal: servicePrincipal, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module MoveAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the root or organizational unit that you want to move
            the account to.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or 
          digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32
          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>
            </li>
         </ul>")
    @as("DestinationParentId")
    destinationParentId: parentId,
    @ocaml.doc("<p>The unique identifier (ID) of the root or organizational unit that you want to move
            the account from.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or 
          digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32
          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>
            </li>
         </ul>")
    @as("SourceParentId")
    sourceParentId: parentId,
    @ocaml.doc("<p>The unique identifier (ID) of the account that you want to move.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12
    digits.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new external new: request => t = "MoveAccountCommand"
  let make = (~destinationParentId, ~sourceParentId, ~accountId, ()) =>
    new({
      destinationParentId: destinationParentId,
      sourceParentId: sourceParentId,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module LeaveOrganization = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "LeaveOrganizationCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableAWSServiceAccess = {
  type t
  type request = {
    @ocaml.doc("<p>The service principal name of the Amazon Web Services service for which you want to enable
            integration with your organization. This is typically in the form of a URL, such as
                    <code>
               <i>service-abbreviation</i>.amazonaws.com</code>.</p>")
    @as("ServicePrincipal")
    servicePrincipal: servicePrincipal,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "EnableAWSServiceAccessCommand"
  let make = (~servicePrincipal, ()) => new({servicePrincipal: servicePrincipal})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableAWSServiceAccess = {
  type t
  type request = {
    @ocaml.doc("<p>The service principal name of the Amazon Web Services service for which you want to disable
            integration with your organization. This is typically in the form of a URL, such as
                    <code>
               <i>service-abbreviation</i>.amazonaws.com</code>.</p>")
    @as("ServicePrincipal")
    servicePrincipal: servicePrincipal,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DisableAWSServiceAccessCommand"
  let make = (~servicePrincipal, ()) => new({servicePrincipal: servicePrincipal})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the root, OU, or account that you want to detach the
            policy from. You can get the ID from the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a>
            operations.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or 
          digits.</p>
            </li>
            <li>
               <p>
                  <b>Account</b> - A string that consists of exactly 12 digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 
          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>
            </li>
         </ul>")
    @as("TargetId")
    targetId: policyTargetId,
    @ocaml.doc("<p>The unique identifier (ID) of the policy you want to detach. You can get the ID from
            the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
            operations.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed 
    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>")
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new external new: request => t = "DetachPolicyCommand"
  let make = (~targetId, ~policyId, ()) => new({targetId: targetId, policyId: policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterDelegatedAdministrator = {
  type t
  type request = {
    @ocaml.doc("<p>The service principal name of an Amazon Web Services service for which the account is a delegated
            administrator.</p>
        <p>Delegated administrator privileges are revoked for only the specified Amazon Web Services service
            from the member account. If the specified service is the only service for which the
            member account is a delegated administrator, the operation also revokes Organizations read action
            permissions.</p>")
    @as("ServicePrincipal")
    servicePrincipal: servicePrincipal,
    @ocaml.doc("<p>The account ID number of the member account in the organization that you want to
            deregister as a delegated administrator.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DeregisterDelegatedAdministratorCommand"
  let make = (~servicePrincipal, ~accountId, ()) =>
    new({servicePrincipal: servicePrincipal, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the policy that you want to delete. You can get the ID
            from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
            operations.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed 
    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>")
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new external new: request => t = "DeletePolicyCommand"
  let make = (~policyId, ()) => new({policyId: policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOrganizationalUnit = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the organizational unit that you want to delete. You can
            get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires 
    \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the 
    OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters 
    or digits.</p>")
    @as("OrganizationalUnitId")
    organizationalUnitId: organizationalUnitId,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DeleteOrganizationalUnitCommand"
  let make = (~organizationalUnitId, ()) => new({organizationalUnitId: organizationalUnitId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOrganization = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DeleteOrganizationCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CloseAccount = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Retrieves the Amazon Web Services account Id for the current <code>CloseAccount</code> API request. </p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new external new: request => t = "CloseAccountCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AttachPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the root, OU, or account that you want to attach the
            policy to. You can get the ID by calling the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a>
            operations.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or 
          digits.</p>
            </li>
            <li>
               <p>
                  <b>Account</b> - A string that consists of exactly 12 digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 
          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>
            </li>
         </ul>")
    @as("TargetId")
    targetId: policyTargetId,
    @ocaml.doc("<p>The unique identifier (ID) of the policy that you want to attach to the target. You
            can get the ID for the policy by calling the <a>ListPolicies</a>
            operation.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed 
    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>")
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new external new: request => t = "AttachPolicyCommand"
  let make = (~targetId, ~policyId, ()) => new({targetId: targetId, policyId: policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateOrganizationalUnit = {
  type t
  type request = {
    @ocaml.doc("<p>The new name that you want to assign to the OU.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    that is used to validate this parameter is a string of any of the characters in the ASCII 
    character range.</p>")
    @as("Name")
    name: option<organizationalUnitName>,
    @ocaml.doc("<p>The unique identifier (ID) of the OU that you want to rename. You can get the ID from
            the <a>ListOrganizationalUnitsForParent</a> operation.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires 
    \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the 
    OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters 
    or digits.</p>")
    @as("OrganizationalUnitId")
    organizationalUnitId: organizationalUnitId,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains the details about the specified OU, including its new
            name.</p>")
    @as("OrganizationalUnit")
    organizationalUnit: option<organizationalUnit>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "UpdateOrganizationalUnitCommand"
  let make = (~organizationalUnitId, ~name=?, ()) =>
    new({name: name, organizationalUnitId: organizationalUnitId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of keys for tags to remove from the specified resource.</p>")
    @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc("<p>The ID of the resource to remove a tag from.</p>
        <p>You can specify any of the following taggable resources.</p>
        <ul>
            <li>
                <p>Amazon Web Services account – specify the account ID number.</p>
            </li>
            <li>
                <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
                    looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
                  </code>
               </p>
            </li>
            <li>
                <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
                    to: <code>r-<i>1a2b</i>
                  </code>
               </p>
            </li>
            <li>
                <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
                    similar to: <code>p-<i>12abcdefg3</i>
                  </code>
               </p>
            </li>
         </ul>")
    @as("ResourceId")
    resourceId: taggableResourceId,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceId, ()) => new({tagKeys: tagKeys, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeOrganizationalUnit = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the organizational unit that you want details about. You
            can get the ID from the <a>ListOrganizationalUnitsForParent</a>
            operation.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires 
    \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the 
    OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters 
    or digits.</p>")
    @as("OrganizationalUnitId")
    organizationalUnitId: organizationalUnitId,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the specified OU.</p>")
    @as("OrganizationalUnit")
    organizationalUnit: option<organizationalUnit>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DescribeOrganizationalUnitCommand"
  let make = (~organizationalUnitId, ()) => new({organizationalUnitId: organizationalUnitId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEffectivePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>When you're signed in as the management account, specify the ID of the account that
            you want details about. Specifying an organization root or organizational unit (OU) as
            the target is not supported.</p>")
    @as("TargetId")
    targetId: option<policyTargetId>,
    @ocaml.doc("<p>The type of policy that you want information about. You can specify one of the
            following values:</p>
        <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>
               </p>
            </li>
         </ul>")
    @as("PolicyType")
    policyType: effectivePolicyType,
  }
  type response = {
    @ocaml.doc("<p>The contents of the effective policy.</p>") @as("EffectivePolicy")
    effectivePolicy: option<effectivePolicy>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DescribeEffectivePolicyCommand"
  let make = (~policyType, ~targetId=?, ()) => new({targetId: targetId, policyType: policyType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCreateAccountStatus = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the <code>Id</code> value that uniquely identifies the
                <code>CreateAccount</code> request. You can get the value from the
                <code>CreateAccountStatus.Id</code> response in an earlier <a>CreateAccount</a> request, or from the <a>ListCreateAccountStatus</a> operation.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a create account request ID string 
    requires \"car-\" followed by from 8 to 32 lowercase letters or digits.</p>")
    @as("CreateAccountRequestId")
    createAccountRequestId: createAccountRequestId,
  }
  type response = {
    @ocaml.doc(
      "<p>A structure that contains the current status of an account creation request.</p>"
    )
    @as("CreateAccountStatus")
    createAccountStatus: option<createAccountStatus>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DescribeCreateAccountStatusCommand"
  let make = (~createAccountRequestId, ()) => new({createAccountRequestId: createAccountRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the Amazon Web Services account that you want information about. You
            can get the ID from the <a>ListAccounts</a> or <a>ListAccountsForParent</a> operations.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12
    digits.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains information about the requested account.</p>")
    @as("Account")
    account: option<account>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DescribeAccountCommand"
  let make = (~accountId, ()) => new({accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>If provided, the new content for the policy. The text must be correctly formatted JSON
            that complies with the syntax for the policy's type. For more information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html\">Service
                Control Policy Syntax</a> in the <i>Organizations User Guide.</i>
         </p>")
    @as("Content")
    content: option<policyContent>,
    @ocaml.doc("<p>If provided, the new description for the policy.</p>") @as("Description")
    description: option<policyDescription>,
    @ocaml.doc("<p>If provided, the new name for the policy.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    that is used to validate this parameter is a string of any of the characters in the ASCII 
    character range.</p>")
    @as("Name")
    name: option<policyName>,
    @ocaml.doc("<p>The unique identifier (ID) of the policy that you want to update.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed 
    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>")
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the updated policy, showing the requested
            changes.</p>")
    @as("Policy")
    policy: option<policy>,
  }
  @module("@aws-sdk/client-organizations") @new external new: request => t = "UpdatePolicyCommand"
  let make = (~policyId, ~content=?, ~description=?, ~name=?, ()) =>
    new({content: content, description: description, name: name, policyId: policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to add to the specified resource.</p>
        <p>For each tag in the list, you must specify both a tag key and a value. The value can
            be an empty string, but you can't set it to <code>null</code>.</p>
        <note>
            <p>If any one of the tags is invalid or if you exceed the maximum allowed number of
                tags for a resource, then the entire request fails.</p>
        </note>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>The ID of the resource to add a tag to.</p>
        <p>You can specify any of the following taggable resources.</p>
        <ul>
            <li>
                <p>Amazon Web Services account – specify the account ID number.</p>
            </li>
            <li>
                <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
                    looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
                  </code>
               </p>
            </li>
            <li>
                <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
                    to: <code>r-<i>1a2b</i>
                  </code>
               </p>
            </li>
            <li>
                <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
                    similar to: <code>p-<i>12abcdefg3</i>
                  </code>
               </p>
            </li>
         </ul>")
    @as("ResourceId")
    resourceId: taggableResourceId,
  }
  type response = {.}
  @module("@aws-sdk/client-organizations") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceId, ()) => new({tags: tags, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTargetsForPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The unique identifier (ID) of the policy whose attachments you want to know.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed 
    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>")
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of structures, each of which contains details about one of the entities to
            which the specified policy is attached.</p>")
    @as("Targets")
    targets: option<policyTargets>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "ListTargetsForPolicyCommand"
  let make = (~policyId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, policyId: policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the resource with the tags to list.</p>
        <p>You can specify any of the following taggable resources.</p>
        <ul>
            <li>
                <p>Amazon Web Services account – specify the account ID number.</p>
            </li>
            <li>
                <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
                    looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
                  </code>
               </p>
            </li>
            <li>
                <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
                    to: <code>r-<i>1a2b</i>
                  </code>
               </p>
            </li>
            <li>
                <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
                    similar to: <code>p-<i>12abcdefg3</i>
                  </code>
               </p>
            </li>
         </ul>")
    @as("ResourceId")
    resourceId: taggableResourceId,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The tags that are assigned to the resource.</p>") @as("Tags") tags: option<tags>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceId, ~nextToken=?, ()) => new({nextToken: nextToken, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPoliciesForTarget = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of policy that you want to include in the returned list. You must specify one
            of the following values:</p>
        <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>
               </p>
            </li>
         </ul>")
    @as("Filter")
    filter: policyType,
    @ocaml.doc("<p>The unique identifier (ID) of the root, organizational unit, or account whose policies
            you want to list.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or 
          digits.</p>
            </li>
            <li>
               <p>
                  <b>Account</b> - A string that consists of exactly 12 digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 
          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>
            </li>
         </ul>")
    @as("TargetId")
    targetId: policyTargetId,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of policies that match the criteria in the request.</p>")
    @as("Policies")
    policies: option<policies>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "ListPoliciesForTargetCommand"
  let make = (~filter, ~targetId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter, targetId: targetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies the type of policy that you want to include in the response. You must
            specify one of the following values:</p>
        <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>
               </p>
            </li>
         </ul>")
    @as("Filter")
    filter: policyType,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of policies that match the filter criteria in the request. The output list
            doesn't include the policy contents. To see the content for a policy, see <a>DescribePolicy</a>.</p>")
    @as("Policies")
    policies: option<policies>,
  }
  @module("@aws-sdk/client-organizations") @new external new: request => t = "ListPoliciesCommand"
  let make = (~filter, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListParents = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The unique identifier (ID) of the OU or account whose parent containers you want to
            list. Don't specify a root.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a child ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Account</b> - A string that consists of exactly 12 digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with
          \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that 
          contains the OU). This string is followed by a second \"-\" dash and from 8 to 32 additional 
          lowercase letters or digits.</p>
            </li>
         </ul>")
    @as("ChildId")
    childId: childId,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of parents for the specified child account or OU.</p>") @as("Parents")
    parents: option<parents>,
  }
  @module("@aws-sdk/client-organizations") @new external new: request => t = "ListParentsCommand"
  let make = (~childId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, childId: childId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOrganizationalUnitsForParent = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The unique identifier (ID) of the root or OU whose child OUs you want to list.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or 
          digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32
          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>
            </li>
         </ul>")
    @as("ParentId")
    parentId: parentId,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of the OUs in the specified root or parent OU.</p>")
    @as("OrganizationalUnits")
    organizationalUnits: option<organizationalUnits>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "ListOrganizationalUnitsForParentCommand"
  let make = (~parentId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, parentId: parentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDelegatedServicesForAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The account ID number of a delegated administrator account in the organization.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The services for which the account is a delegated administrator.</p>")
    @as("DelegatedServices")
    delegatedServices: option<delegatedServices>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "ListDelegatedServicesForAccountCommand"
  let make = (~accountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDelegatedAdministrators = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies a service principal name. If specified, then the operation lists the
            delegated administrators only for the specified service.</p>
        <p>If you don't specify a service principal, the operation lists all delegated
            administrators for all services in your organization.</p>")
    @as("ServicePrincipal")
    servicePrincipal: option<servicePrincipal>,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of delegated administrators in your organization.</p>")
    @as("DelegatedAdministrators")
    delegatedAdministrators: option<delegatedAdministrators>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "ListDelegatedAdministratorsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~servicePrincipal=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, servicePrincipal: servicePrincipal})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCreateAccountStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of one or more states that you want included in the response. If this parameter
            isn't present, all requests are included in the response.</p>")
    @as("States")
    states: option<createAccountStates>,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of objects with details about the requests. Certain elements, such as the
            accountId number, are present in the output only after the account has been successfully
            created.</p>")
    @as("CreateAccountStatuses")
    createAccountStatuses: option<createAccountStatuses>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "ListCreateAccountStatusCommand"
  let make = (~maxResults=?, ~nextToken=?, ~states=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, states: states})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChildren = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Filters the output to include only the specified child type.</p>")
    @as("ChildType")
    childType: childType,
    @ocaml.doc("<p>The unique identifier (ID) for the parent root or OU whose children you want to
            list.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or 
          digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32
          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>
            </li>
         </ul>")
    @as("ParentId")
    parentId: parentId,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of children of the specified parent container.</p>") @as("Children")
    children: option<children>,
  }
  @module("@aws-sdk/client-organizations") @new external new: request => t = "ListChildrenCommand"
  let make = (~childType, ~parentId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, childType: childType, parentId: parentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccountsForParent = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The unique identifier (ID) for the parent root or organization unit (OU) whose
            accounts you want to list.</p>")
    @as("ParentId")
    parentId: parentId,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of the accounts in the specified root or OU.</p>") @as("Accounts")
    accounts: option<accounts>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "ListAccountsForParentCommand"
  let make = (~parentId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, parentId: parentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccounts = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of objects in the organization.</p>") @as("Accounts")
    accounts: option<accounts>,
  }
  @module("@aws-sdk/client-organizations") @new external new: request => t = "ListAccountsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAWSServiceAccessForOrganization = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of the service principals for the services that are enabled to integrate with
            your organization. Each principal is a structure that includes the name and the date
            that it was enabled for integration with Organizations.</p>")
    @as("EnabledServicePrincipals")
    enabledServicePrincipals: option<enabledServicePrincipals>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "ListAWSServiceAccessForOrganizationCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the policy that you want details about. You can get the
            ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
            operations.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed 
    by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>")
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the specified policy.</p>") @as("Policy")
    policy: option<policy>,
  }
  @module("@aws-sdk/client-organizations") @new external new: request => t = "DescribePolicyCommand"
  let make = (~policyId, ()) => new({policyId: policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the newly created policy. For each tag in
            the list, you must specify both a tag key and a value. You can set the value to an empty
            string, but you can't set it to <code>null</code>. For more information about tagging,
            see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html\">Tagging Organizations
                resources</a> in the Organizations User Guide.</p>
        <note>
            <p>If any one of the tags is invalid or if you exceed the allowed number of tags for
                a policy, then the entire request fails and the policy is not created.</p>
        </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The type of policy to create. You can specify one of the following values:</p>
        <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>
               </p>
            </li>
         </ul>")
    @as("Type")
    type_: policyType,
    @ocaml.doc("<p>The friendly name to assign to the policy.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    that is used to validate this parameter is a string of any of the characters in the ASCII 
    character range.</p>")
    @as("Name")
    name: policyName,
    @ocaml.doc("<p>An optional description to assign to the policy.</p>") @as("Description")
    description: policyDescription,
    @ocaml.doc("<p>The policy text content to add to the new policy. The text that you supply must adhere
            to the rules of the policy type you specify in the <code>Type</code> parameter.</p>")
    @as("Content")
    content: policyContent,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the newly created policy.</p>")
    @as("Policy")
    policy: option<policy>,
  }
  @module("@aws-sdk/client-organizations") @new external new: request => t = "CreatePolicyCommand"
  let make = (~type_, ~name, ~description, ~content, ~tags=?, ()) =>
    new({tags: tags, type_: type_, name: name, description: description, content: content})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOrganizationalUnit = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the newly created OU. For each tag in the
            list, you must specify both a tag key and a value. You can set the value to an empty
            string, but you can't set it to <code>null</code>. For more information about tagging,
            see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html\">Tagging Organizations
                resources</a> in the Organizations User Guide.</p>
        <note>
            <p>If any one of the tags is invalid or if you exceed the allowed number of tags for
                an OU, then the entire request fails and the OU is not created.</p>
        </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The friendly name to assign to the new OU.</p>") @as("Name")
    name: organizationalUnitName,
    @ocaml.doc("<p>The unique identifier (ID) of the parent root or OU that you want to create the new OU
            in.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the 
    following:</p>
         <ul>
            <li>
               <p>
                  <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or 
          digits.</p>
            </li>
            <li>
               <p>
                  <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32
          lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
          \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>
            </li>
         </ul>")
    @as("ParentId")
    parentId: parentId,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the newly created OU.</p>")
    @as("OrganizationalUnit")
    organizationalUnit: option<organizationalUnit>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "CreateOrganizationalUnitCommand"
  let make = (~name, ~parentId, ~tags=?, ()) => new({tags: tags, name: name, parentId: parentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGovCloudAccount = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the newly created account. These tags are
            attached to the commercial account associated with the GovCloud account, and not to the
            GovCloud account itself. To add tags to the actual GovCloud account, call the <a>TagResource</a> operation in the GovCloud region after the new GovCloud
            account exists.</p>
        <p>For each tag in the list, you must specify both a tag key and a value. You can set the
            value to an empty string, but you can't set it to <code>null</code>. For more
            information about tagging, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html\">Tagging Organizations resources</a> in the
            Organizations User Guide.</p>
        <note>
            <p>If any one of the tags is invalid or if you exceed the maximum allowed number of
                tags for an account, then the entire request fails and the account is not
                created.</p>
        </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>If set to <code>ALLOW</code>, the new linked account in the commercial Region enables
            IAM users to access account billing information <i>if</i> they have the
            required permissions. If set to <code>DENY</code>, only the root user of the new account
            can access account billing information. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate\">Activating
                Access to the Billing and Cost Management Console</a> in the
            <i>Amazon Web Services Billing and Cost Management User Guide.</i>
         </p>
        <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and
            IAM users and roles with the required permissions can access billing information for
            the new account.</p>")
    @as("IamUserAccessToBilling")
    iamUserAccessToBilling: option<iamuserAccessToBilling>,
    @ocaml.doc("<p>(Optional)</p>
        <p>The name of an IAM role that Organizations automatically preconfigures in the new member
            accounts in both the Amazon Web Services GovCloud (US) Region and in the commercial Region. This role
            trusts the management account, allowing users in the management account to assume the
            role, as permitted by the management account administrator. The role has administrator
            permissions in the new member account.</p>
        <p>If you don't specify this parameter, the role name defaults to
                <code>OrganizationAccountAccessRole</code>.</p>
        <p>For more information about how to use this role to access the member account, see
                <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role\">Accessing and Administering the Member Accounts in Your Organization</a> in the
                <i>Organizations User Guide</i> and steps 2 and 3 in <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html\">Tutorial: Delegate Access Across Amazon Web Services accounts Using IAM Roles</a> in the
                <i>IAM User Guide.</i>
         </p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that 
    is used to validate this parameter. The pattern can include uppercase 
    letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>")
    @as("RoleName")
    roleName: option<roleName>,
    @ocaml.doc("<p>The friendly name of the member account.</p>") @as("AccountName")
    accountName: createAccountName,
    @ocaml.doc("<p>Specifies the email address of the owner to assign to the new member account in the
            commercial Region. This email address must not already be associated with another
            Amazon Web Services account. You must use a valid email address to complete account creation.</p>
        <p>The rules for a valid email address:</p>
        <ul>
            <li>
                <p>The address must be a minimum of 6 and a maximum of 64 characters long.</p>
            </li>
            <li>
                <p>All characters must be 7-bit ASCII characters.</p>
            </li>
            <li>
                <p>There must be one and only one @ symbol, which separates the local name from
                    the domain name.</p>
            </li>
            <li>
                <p>The local name can't contain any of the following characters:</p>
                <p>whitespace, \" ' ( ) < > [ ] : ; , \\ | % &</p>
            </li>
            <li>
                <p>The local name can't begin with a dot (.)</p> 
            </li>
            <li>
                <p>The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen
                    (-), or dot (.)</p>
            </li>
            <li>
                <p>The domain name can't begin or end with a hyphen (-) or dot (.)</p>
            </li>
            <li>
                <p>The domain name must contain at least one dot</p>
            </li>
         </ul>
        <p>You can't access the root user of the account or remove an account that was created
            with an invalid email address. Like all request parameters for
                <code>CreateGovCloudAccount</code>, the request for the email address for the Amazon Web Services
            GovCloud (US) account originates from the commercial Region, not from the Amazon Web Services GovCloud
            (US) Region.</p>")
    @as("Email")
    email: email,
  }
  type response = {@as("CreateAccountStatus") createAccountStatus: option<createAccountStatus>}
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "CreateGovCloudAccountCommand"
  let make = (~accountName, ~email, ~tags=?, ~iamUserAccessToBilling=?, ~roleName=?, ()) =>
    new({
      tags: tags,
      iamUserAccessToBilling: iamUserAccessToBilling,
      roleName: roleName,
      accountName: accountName,
      email: email,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccount = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the newly created account. For each tag in
            the list, you must specify both a tag key and a value. You can set the value to an empty
            string, but you can't set it to <code>null</code>. For more information about tagging,
            see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html\">Tagging Organizations
                resources</a> in the Organizations User Guide.</p>
        <note>
            <p>If any one of the tags is invalid or if you exceed the maximum allowed number of
                tags for an account, then the entire request fails and the account is not
                created.</p>
        </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>If set to <code>ALLOW</code>, the new account enables IAM users to access account
            billing information <i>if</i> they have the required permissions. If set
            to <code>DENY</code>, only the root user of the new account can access account billing
            information. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate\">Activating
                Access to the Billing and Cost Management Console</a> in the
            <i>Amazon Web Services Billing and Cost Management User Guide</i>.</p>
        <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and
            IAM users and roles with the required permissions can access billing information for
            the new account.</p>")
    @as("IamUserAccessToBilling")
    iamUserAccessToBilling: option<iamuserAccessToBilling>,
    @ocaml.doc("<p>(Optional)</p>
        <p>The name of an IAM role that Organizations automatically preconfigures in the new member
            account. This role trusts the management account, allowing users in the management
            account to assume the role, as permitted by the management account administrator. The
            role has administrator permissions in the new member account.</p>
        <p>If you don't specify this parameter, the role name defaults to
                <code>OrganizationAccountAccessRole</code>.</p>
        <p>For more information about how to use this role to access the member account, see the
            following links:</p>
        <ul>
            <li>
                <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role\">Accessing and Administering the Member Accounts in Your
                        Organization</a> in the <i>Organizations User Guide</i>
               </p>
            </li>
            <li>
                <p>Steps 2 and 3 in <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html\">Tutorial:
                        Delegate Access Across Amazon Web Services accounts Using IAM Roles</a> in the
                        <i>IAM User Guide</i>
               </p>
            </li>
         </ul>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that 
    is used to validate this parameter. The pattern can include uppercase 
    letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>")
    @as("RoleName")
    roleName: option<roleName>,
    @ocaml.doc("<p>The friendly name of the member account.</p>") @as("AccountName")
    accountName: createAccountName,
    @ocaml.doc("<p>The email address of the owner to assign to the new member account. This email address
            must not already be associated with another Amazon Web Services account. You must use a valid email
            address to complete account creation.</p>
        <p>The rules for a valid email address:</p>
        <ul>
            <li>
                <p>The address must be a minimum of 6 and a maximum of 64 characters long.</p>
            </li>
            <li>
                <p>All characters must be 7-bit ASCII characters.</p>
            </li>
            <li>
                <p>There must be one and only one @ symbol, which separates the local name from
                    the domain name.</p>
            </li>
            <li>
                <p>The local name can't contain any of the following characters:</p>
                <p>whitespace, \" ' ( ) < > [ ] : ; , \\ | % &</p>
            </li>
            <li>
                <p>The local name can't begin with a dot (.)</p> 
            </li>
            <li>
                <p>The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen
                    (-), or dot (.)</p>
            </li>
            <li>
                <p>The domain name can't begin or end with a hyphen (-) or dot (.)</p>
            </li>
            <li>
                <p>The domain name must contain at least one dot</p>
            </li>
         </ul>
        <p>You can't access the root user of the account or remove an account that was created
            with an invalid email address.</p>")
    @as("Email")
    email: email,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the request to create an account. This
            response structure might not be fully populated when you first receive it because
            account creation is an asynchronous process. You can pass the returned
                <code>CreateAccountStatus</code> ID as a parameter to <a>DescribeCreateAccountStatus</a> to get status about the progress of the
            request at later times. You can also check the CloudTrail log for the
                <code>CreateAccountResult</code> event. For more information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html\">Monitoring the
                Activity in Your Organization</a> in the
            <i>Organizations User Guide</i>.</p>")
    @as("CreateAccountStatus")
    createAccountStatus: option<createAccountStatus>,
  }
  @module("@aws-sdk/client-organizations") @new external new: request => t = "CreateAccountCommand"
  let make = (~accountName, ~email, ~tags=?, ~iamUserAccessToBilling=?, ~roleName=?, ()) =>
    new({
      tags: tags,
      iamUserAccessToBilling: iamUserAccessToBilling,
      roleName: roleName,
      accountName: accountName,
      email: email,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnablePolicyType = {
  type t
  type request = {
    @ocaml.doc("<p>The policy type that you want to enable. You can specify one of the following
            values:</p>
        <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>
               </p>
            </li>
         </ul>")
    @as("PolicyType")
    policyType: policyType,
    @ocaml.doc("<p>The unique identifier (ID) of the root in which you want to enable a policy type. You
            can get the ID from the <a>ListRoots</a> operation.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a root ID string requires \"r-\" followed by 
    from 4 to 32 lowercase letters or digits.</p>")
    @as("RootId")
    rootId: rootId,
  }
  type response = {
    @ocaml.doc(
      "<p>A structure that shows the root with the updated list of enabled policy types.</p>"
    )
    @as("Root")
    root: option<root>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "EnablePolicyTypeCommand"
  let make = (~policyType, ~rootId, ()) => new({policyType: policyType, rootId: rootId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisablePolicyType = {
  type t
  type request = {
    @ocaml.doc("<p>The policy type that you want to disable in this root. You can specify one of the
            following values:</p>
        <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a>
               </p>
            </li>
         </ul>")
    @as("PolicyType")
    policyType: policyType,
    @ocaml.doc("<p>The unique identifier (ID) of the root in which you want to disable a policy type. You
            can get the ID from the <a>ListRoots</a> operation.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a root ID string requires \"r-\" followed by 
    from 4 to 32 lowercase letters or digits.</p>")
    @as("RootId")
    rootId: rootId,
  }
  type response = {
    @ocaml.doc(
      "<p>A structure that shows the root with the updated list of enabled policy types.</p>"
    )
    @as("Root")
    root: option<root>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DisablePolicyTypeCommand"
  let make = (~policyType, ~rootId, ()) => new({policyType: policyType, rootId: rootId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrganization = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>A structure that contains information about the organization.</p>
        <important>
            <p>The <code>AvailablePolicyTypes</code> part of the response is deprecated, and you
                shouldn't use it in your apps. It doesn't include any policy type supported by Organizations
                other than SCPs. To determine which policy types are enabled in your organization,
                use the <code>
                  <a>ListRoots</a>
               </code> operation.</p>
        </important>")
    @as("Organization")
    organization: option<organization>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DescribeOrganizationCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOrganization = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the feature set supported by the new organization. Each feature set supports
            different levels of functionality.</p>
        <ul>
            <li>
                <p>
                  <code>CONSOLIDATED_BILLING</code>: All member accounts have their bills
                    consolidated to and paid by the management account. For more information, see
                        <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only\">Consolidated billing</a> in the
                    <i>Organizations User Guide.</i>
               </p>
                <p> The consolidated billing feature subset isn't available for organizations in
                    the Amazon Web Services GovCloud (US) Region.</p>
            </li>
            <li>
                <p>
                  <code>ALL</code>: In addition to all the features supported by the
                    consolidated billing feature set, the management account can also apply any
                    policy type to any member account in the organization. For more information, see
                        <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all\">All
                        features</a> in the <i>Organizations User Guide.</i>
               </p>
            </li>
         </ul>")
    @as("FeatureSet")
    featureSet: option<organizationFeatureSet>,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the newly created organization.</p>")
    @as("Organization")
    organization: option<organization>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "CreateOrganizationCommand"
  let make = (~featureSet=?, ()) => new({featureSet: featureSet})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRoots = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of roots that are defined in an organization.</p>") @as("Roots")
    roots: option<roots>,
  }
  @module("@aws-sdk/client-organizations") @new external new: request => t = "ListRootsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InviteAccountToOrganization = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the account when it becomes a member of the
            organization. For each tag in the list, you must specify both a tag key and a value. You
            can set the value to an empty string, but you can't set it to <code>null</code>. For
            more information about tagging, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html\">Tagging Organizations resources</a> in the
            Organizations User Guide.</p>
        <important>
            <p>Any tags in the request are checked for compliance with any applicable tag
                policies when the request is made. The request is rejected if the tags in the
                request don't match the requirements of the policy at that time. Tag policy
                compliance is <i>
                  <b>not</b>
               </i> checked
                again when the invitation is accepted and the tags are actually attached to the
                account. That means that if the tag policy changes between the invitation and the
                acceptance, then that tags could potentially be non-compliant.</p>
        </important>
        <note>
            <p>If any one of the tags is invalid or if you exceed the allowed number of tags for
                an account, then the entire request fails and invitations are not sent.</p>
        </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Additional information that you want to include in the generated email to the
            recipient account owner.</p>")
    @as("Notes")
    notes: option<handshakeNotes>,
    @ocaml.doc("<p>The identifier (ID) of the Amazon Web Services account that you want to invite to join your
            organization. This is a JSON object that contains the following elements:</p>
        <p>
            <code>{ \"Type\": \"ACCOUNT\", \"Id\": \"<<i>
                  <b>account id
                        number</b>
               </i>>\" }</code>
        </p>
        <p>If you use the CLI, you can submit this as a single string, similar to the following
            example:</p>
        <p>
            <code>--target Id=123456789012,Type=ACCOUNT</code>
        </p>
        <p>If you specify <code>\"Type\": \"ACCOUNT\"</code>, you must provide the Amazon Web Services account ID
            number as the <code>Id</code>. If you specify <code>\"Type\": \"EMAIL\"</code>, you must
            specify the email address that is associated with the account.</p>
        <p>
            <code>--target Id=diego@example.com,Type=EMAIL</code>
        </p>")
    @as("Target")
    target: handshakeParty,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the handshake that is created to support this
            invitation request.</p>")
    @as("Handshake")
    handshake: option<handshake>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "InviteAccountToOrganizationCommand"
  let make = (~target, ~tags=?, ~notes=?, ()) => new({tags: tags, notes: notes, target: target})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableAllFeatures = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>A structure that contains details about the handshake created to support this request
            to enable all features in the organization.</p>")
    @as("Handshake")
    handshake: option<handshake>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "EnableAllFeaturesCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHandshake = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the handshake that you want information about. You can
            get the ID from the original call to <a>InviteAccountToOrganization</a>, or
            from a call to <a>ListHandshakesForAccount</a> or <a>ListHandshakesForOrganization</a>.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" 
    followed by from 8 to 32 lowercase letters or digits.</p>")
    @as("HandshakeId")
    handshakeId: handshakeId,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains information about the specified handshake.</p>")
    @as("Handshake")
    handshake: option<handshake>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DescribeHandshakeCommand"
  let make = (~handshakeId, ()) => new({handshakeId: handshakeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeclineHandshake = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the handshake that you want to decline. You can get the
            ID from the <a>ListHandshakesForAccount</a> operation.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" 
    followed by from 8 to 32 lowercase letters or digits.</p>")
    @as("HandshakeId")
    handshakeId: handshakeId,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the declined handshake. The state is updated
            to show the value <code>DECLINED</code>.</p>")
    @as("Handshake")
    handshake: option<handshake>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "DeclineHandshakeCommand"
  let make = (~handshakeId, ()) => new({handshakeId: handshakeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelHandshake = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the handshake that you want to cancel. You can get the
            ID from the <a>ListHandshakesForOrganization</a> operation.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" 
    followed by from 8 to 32 lowercase letters or digits.</p>")
    @as("HandshakeId")
    handshakeId: handshakeId,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the handshake that you canceled.</p>")
    @as("Handshake")
    handshake: option<handshake>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "CancelHandshakeCommand"
  let make = (~handshakeId, ()) => new({handshakeId: handshakeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptHandshake = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) of the handshake that you want to accept.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for  handshake ID string requires \"h-\" 
    followed by from 8 to 32 lowercase letters or digits.</p>")
    @as("HandshakeId")
    handshakeId: handshakeId,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the accepted handshake.</p>")
    @as("Handshake")
    handshake: option<handshake>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "AcceptHandshakeCommand"
  let make = (~handshakeId, ()) => new({handshakeId: handshakeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHandshakesForOrganization = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A filter of the handshakes that you want included in the response. The default is all
            types. Use the <code>ActionType</code> element to limit the output to only a specified
            type, such as <code>INVITE</code>, <code>ENABLE-ALL-FEATURES</code>, or
                <code>APPROVE-ALL-FEATURES</code>. Alternatively, for the
                <code>ENABLE-ALL-FEATURES</code> handshake that generates a separate child handshake
            for each member account, you can specify the <code>ParentHandshakeId</code> to see only
            the handshakes that were generated by that parent request.</p>")
    @as("Filter")
    filter: option<handshakeFilter>,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <a>Handshake</a> objects with details about each of the
            handshakes that are associated with an organization.</p>")
    @as("Handshakes")
    handshakes: option<handshakes>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "ListHandshakesForOrganizationCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHandshakesForAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of results that you want included on each page of the 
    response. If you do not include this parameter, it defaults to a value that is specific to the 
    operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    response element is present and has a value (is not null). Include that value as the 
    <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    of the results. Note that Organizations might return fewer results than the maximum even when there are 
    more results available. You should check <code>NextToken</code> after every operation to ensure 
    that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The parameter for receiving additional results if you receive a 
    <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    indicates that more output is available. Set this parameter to the value of the previous 
    call's <code>NextToken</code> response to indicate where the output should continue 
    from.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Filters the handshakes that you want included in the response. The default is all
            types. Use the <code>ActionType</code> element to limit the output to only a specified
            type, such as <code>INVITE</code>, <code>ENABLE_ALL_FEATURES</code>, or
                <code>APPROVE_ALL_FEATURES</code>. Alternatively, for the
                <code>ENABLE_ALL_FEATURES</code> handshake that generates a separate child handshake
            for each member account, you can specify <code>ParentHandshakeId</code> to see only the
            handshakes that were generated by that parent request.</p>")
    @as("Filter")
    filter: option<handshakeFilter>,
  }
  type response = {
    @ocaml.doc("<p>If present, indicates that more output is available than is 
    included in the current response. Use this value in the <code>NextToken</code> request parameter 
    in a subsequent call to the operation to get the next part of the output. You should repeat this 
    until the <code>NextToken</code> response element comes back as <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <a>Handshake</a> objects with details about each of the
            handshakes that is associated with the specified account.</p>")
    @as("Handshakes")
    handshakes: option<handshakes>,
  }
  @module("@aws-sdk/client-organizations") @new
  external new: request => t = "ListHandshakesForAccountCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
