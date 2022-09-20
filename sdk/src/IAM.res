type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iam") @new external createClient: unit => awsServiceClient = "IAMClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type virtualMFADeviceName = string
type userNameType = string
type unrecognizedPublicKeyEncodingMessage = string
type unmodifiableEntityMessage = string
@ocaml.doc("<p>Contains a thumbprint for an identity provider's server certificate.</p>
         <p>The identity provider's server certificate thumbprint is the hex-encoded SHA-1 hash
         value of the self-signed X.509 certificate. This thumbprint is used by the domain where the
         OpenID Connect provider makes its keys available. The thumbprint is always a 40-character
         string.</p>")
type thumbprintType = string
type tagValueType = string
type tagKeyType = string
type summaryValueType = int
type summaryKeyType = [
  | @as("GlobalEndpointTokenVersion") #GlobalEndpointTokenVersion
  | @as("VersionsPerPolicyQuota") #VersionsPerPolicyQuota
  | @as("PolicyVersionsInUseQuota") #PolicyVersionsInUseQuota
  | @as("PolicyVersionsInUse") #PolicyVersionsInUse
  | @as("PolicySizeQuota") #PolicySizeQuota
  | @as("PoliciesQuota") #PoliciesQuota
  | @as("Policies") #Policies
  | @as("AttachedPoliciesPerUserQuota") #AttachedPoliciesPerUserQuota
  | @as("AttachedPoliciesPerRoleQuota") #AttachedPoliciesPerRoleQuota
  | @as("AttachedPoliciesPerGroupQuota") #AttachedPoliciesPerGroupQuota
  | @as("AccountSigningCertificatesPresent") #AccountSigningCertificatesPresent
  | @as("AccountAccessKeysPresent") #AccountAccessKeysPresent
  | @as("AccountMFAEnabled") #AccountMFAEnabled
  | @as("MFADevicesInUse") #MFADevicesInUse
  | @as("MFADevices") #MFADevices
  | @as("AccessKeysPerUserQuota") #AccessKeysPerUserQuota
  | @as("SigningCertificatesPerUserQuota") #SigningCertificatesPerUserQuota
  | @as("GroupsPerUserQuota") #GroupsPerUserQuota
  | @as("GroupPolicySizeQuota") #GroupPolicySizeQuota
  | @as("UserPolicySizeQuota") #UserPolicySizeQuota
  | @as("ServerCertificatesQuota") #ServerCertificatesQuota
  | @as("ServerCertificates") #ServerCertificates
  | @as("GroupsQuota") #GroupsQuota
  | @as("Groups") #Groups
  | @as("UsersQuota") #UsersQuota
  | @as("Users") #Users
]
type stringType = string
type statusType = [@as("Inactive") #Inactive | @as("Active") #Active]
type sortKeyType = [
  | @as("LAST_AUTHENTICATED_TIME_DESCENDING") #LAST_AUTHENTICATED_TIME_DESCENDING
  | @as("LAST_AUTHENTICATED_TIME_ASCENDING") #LAST_AUTHENTICATED_TIME_ASCENDING
  | @as("SERVICE_NAMESPACE_DESCENDING") #SERVICE_NAMESPACE_DESCENDING
  | @as("SERVICE_NAMESPACE_ASCENDING") #SERVICE_NAMESPACE_ASCENDING
]
type serviceUserName = string
type serviceSpecificCredentialId = string
type servicePassword = string
type serviceNotSupportedMessage = string
type serviceNamespaceType = string
type serviceNameType = string
type serviceName = string
type serviceFailureExceptionMessage = string
type serverCertificateNameType = string
type serialNumberType = string
type roleNameType = string
type roleMaxSessionDurationType = int
type roleDescriptionType = string
type responseMarkerType = string
type reportGenerationLimitExceededMessage = string
type publicKeyMaterialType = string
type publicKeyIdType = string
type publicKeyFingerprintType = string
type privateKeyType = string
type policyVersionIdType = string
type policyType = [@as("MANAGED") #MANAGED | @as("INLINE") #INLINE]
type policyScopeType = [@as("Local") #Local | @as("AWS") #AWS | @as("All") #All]
type policyPathType = string
type policyOwnerEntityType = [@as("GROUP") #GROUP | @as("ROLE") #ROLE | @as("USER") #USER]
type policyNotAttachableMessage = string
type policyNameType = string
type policyEvaluationErrorMessage = string
type policyDocumentType = string
type policyDescriptionType = string
type pathType = string
type pathPrefixType = string
type passwordType = string
type passwordReusePreventionType = int
type passwordPolicyViolationMessage = string
type organizationsPolicyIdType = string
type organizationsEntityPathType = string
type noSuchEntityMessage = string
type minimumPasswordLengthType = int
type maxPasswordAgeType = int
type maxItemsType = int
type markerType = string
type malformedPolicyDocumentMessage = string
type malformedCertificateMessage = string
type limitExceededMessage = string
type keyPairMismatchMessage = string
type jobStatusType = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type jobIDType = string
type invalidUserTypeMessage = string
type invalidPublicKeyMessage = string
type invalidInputMessage = string
type invalidCertificateMessage = string
type invalidAuthenticationCodeMessage = string
type integerType = int
type instanceProfileNameType = string
type idType = string
type groupNameType = string
type globalEndpointTokenVersion = [@as("v2Token") #V2Token | @as("v1Token") #V1Token]
type existingUserNameType = string
type entityTemporarilyUnmodifiableMessage = string
type entityNameType = string
type entityAlreadyExistsMessage = string
type encodingType = [@as("PEM") #PEM | @as("SSH") #SSH]
type duplicateSSHPublicKeyMessage = string
type duplicateCertificateMessage = string
type deleteConflictMessage = string
type dateType = Js.Date.t
type customSuffixType = string
type credentialReportNotReadyExceptionMessage = string
type credentialReportNotPresentExceptionMessage = string
type credentialReportExpiredExceptionMessage = string
type clientIDType = string
type certificateIdType = string
type certificateChainType = string
type certificateBodyType = string
type booleanType = bool
type booleanObjectType = bool
type authenticationCodeType = string
type attachmentCountType = int
type assignmentStatusType = [
  | @as("Any") #Any
  | @as("Unassigned") #Unassigned
  | @as("Assigned") #Assigned
]
@ocaml.doc("<p>The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.</p>
         <p>For more information about ARNs, go to <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in
         the <i>Amazon Web Services General Reference</i>. </p>")
type arnType = string
type accountAliasType = string
type accessKeySecretType = string
type accessKeyIdType = string
type samlproviderNameType = string
type samlmetadataDocumentType = string
type resourceNameType = string
type resourceHandlingOptionType = string
type reportStateType = [
  | @as("COMPLETE") #COMPLETE
  | @as("INPROGRESS") #INPROGRESS
  | @as("STARTED") #STARTED
]
type reportStateDescriptionType = string
type reportFormatType = [@as("text/csv") #Text_Csv]
type reportContentType = NodeJs.Buffer.t
type regionNameType = string
type reasonType = string
@ocaml.doc("<p>The policy usage type that indicates whether the policy is used as a permissions policy
         or as the permissions boundary for an entity.</p>
         <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions boundaries for IAM
            identities </a> in the <i>IAM User Guide</i>.</p>")
type policyUsageType = [
  | @as("PermissionsBoundary") #PermissionsBoundary
  | @as("PermissionsPolicy") #PermissionsPolicy
]
type policySourceType = [
  | @as("none") #None
  | @as("resource") #Resource
  | @as("user-managed") #User_Managed
  | @as("aws-managed") #Aws_Managed
  | @as("role") #Role
  | @as("group") #Group
  | @as("user") #User
]
type policyIdentifierType = string
type policyEvaluationDecisionType = [
  | @as("implicitDeny") #ImplicitDeny
  | @as("explicitDeny") #ExplicitDeny
  | @as("allowed") #Allowed
]
type permissionsBoundaryAttachmentType = [
  | @as("PermissionsBoundaryPolicy") #PermissionsBoundaryPolicy
]
@ocaml.doc("<p>Contains a URL that specifies the endpoint for an OpenID Connect provider.</p>")
type openIDConnectProviderUrlType = string
type lineNumber = int
type evalDecisionSourceType = string
type entityType = [
  | @as("AWSManagedPolicy") #AWSManagedPolicy
  | @as("LocalManagedPolicy") #LocalManagedPolicy
  | @as("Group") #Group
  | @as("Role") #Role
  | @as("User") #User
]
type deletionTaskStatusType = [
  | @as("NOT_STARTED") #NOT_STARTED
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("SUCCEEDED") #SUCCEEDED
]
type deletionTaskIdType = string
type contextKeyValueType = string
type contextKeyTypeEnum = [
  | @as("dateList") #DateList
  | @as("date") #Date
  | @as("binaryList") #BinaryList
  | @as("binary") #Binary
  | @as("ipList") #IpList
  | @as("ip") #Ip
  | @as("booleanList") #BooleanList
  | @as("boolean") #Boolean
  | @as("numericList") #NumericList
  | @as("numeric") #Numeric
  | @as("stringList") #StringList
  | @as("string") #String
]
type contextKeyNameType = string
type concurrentModificationMessage = string
type columnNumber = int
type bootstrapDatum = NodeJs.Buffer.t
type actionNameType = string
type accessAdvisorUsageGranularityType = [
  | @as("ACTION_LEVEL") #ACTION_LEVEL
  | @as("SERVICE_LEVEL") #SERVICE_LEVEL
]
@ocaml.doc("<p>Contains a list of thumbprints of identity provider server certificates.</p>")
type thumbprintListType = array<thumbprintType>
type tagKeyListType = array<tagKeyType>
type summaryMapType = Js.Dict.t<summaryValueType>
type serviceNamespaceListType = array<serviceNamespaceType>
@ocaml.doc("<p>Contains a list of policy names.</p>
         <p>This data type is used as a response element in the <a>ListPolicies</a>
         operation.</p>")
type policyNameListType = array<policyNameType>
type groupNameListType = array<groupNameType>
type entityListType = array<entityType>
type clientIDListType = array<clientIDType>
type accountAliasListType = array<accountAliasType>
@ocaml.doc("<p>Contains details about the most recent attempt to access an action within the
         service.</p>
         <p>This data type is used as a response element in the <a>GetServiceLastAccessedDetails</a> operation.</p>")
type trackedActionLastAccessed = {
  @ocaml.doc("<p>The Region from which the authenticated entity (user or role) last attempted to access
         the tracked action. Amazon Web Services does not report unauthenticated requests.</p>
         <p>This field is null if no IAM entities attempted to access the service within the
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>")
  @as("LastAccessedRegion")
  lastAccessedRegion: option<stringType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when an authenticated entity most recently attempted to access the
         tracked service. Amazon Web Services does not report unauthenticated requests.</p>
         <p>This field is null if no IAM entities attempted to access the service within the
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>")
  @as("LastAccessedTime")
  lastAccessedTime: option<dateType>,
  @as("LastAccessedEntity") lastAccessedEntity: option<arnType>,
  @ocaml.doc("<p>The name of the tracked action to which access was attempted. Tracked actions are
         actions that report activity to IAM.</p>")
  @as("ActionName")
  actionName: option<stringType>,
}
@ocaml.doc("<p>A structure that represents user-provided metadata that can be associated with an IAM
      resource. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
type tag = {
  @ocaml.doc("<p>The value associated with this tag. For example, tags with a key name of
        <code>Department</code> could have values such as <code>Human Resources</code>,
        <code>Accounting</code>, and <code>Support</code>. Tags with a key name of <code>Cost
        Center</code> might have values that consist of the number associated with the different
      cost centers in your company. Typically, many resources have tags with the same key name but
      with different values.</p>
         <note>
            <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you need to
        store an array, you can store comma-separated values in the string. However, you must
        interpret the value in your code.</p>
         </note>")
  @as("Value")
  value: tagValueType,
  @ocaml.doc("<p>The key name that can be used to look up or retrieve the associated value. For example,
        <code>Department</code> or <code>Cost Center</code> are common choices.</p>")
  @as("Key")
  key: tagKeyType,
}
type simulationPolicyListType = array<policyDocumentType>
@ocaml.doc("<p>Contains information about an X.509 signing certificate.</p>
         <p>This data type is used as a response element in the <a>UploadSigningCertificate</a> and <a>ListSigningCertificates</a>
         operations. </p>")
type signingCertificate = {
  @ocaml.doc("<p>The date when the signing certificate was uploaded.</p>") @as("UploadDate")
  uploadDate: option<dateType>,
  @ocaml.doc("<p>The status of the signing certificate. <code>Active</code> means that the key is valid
         for API calls, while <code>Inactive</code> means it is not.</p>")
  @as("Status")
  status: statusType,
  @ocaml.doc("<p>The contents of the signing certificate.</p>") @as("CertificateBody")
  certificateBody: certificateBodyType,
  @ocaml.doc("<p>The ID for the signing certificate.</p>") @as("CertificateId")
  certificateId: certificateIdType,
  @ocaml.doc("<p>The name of the user the signing certificate is associated with.</p>")
  @as("UserName")
  userName: userNameType,
}
@ocaml.doc("<p>Contains additional details about a service-specific credential.</p>")
type serviceSpecificCredentialMetadata = {
  @ocaml.doc("<p>The name of the service associated with the service-specific credential.</p>")
  @as("ServiceName")
  serviceName: serviceName,
  @ocaml.doc("<p>The unique identifier for the service-specific credential.</p>")
  @as("ServiceSpecificCredentialId")
  serviceSpecificCredentialId: serviceSpecificCredentialId,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the service-specific credential were created.</p>")
  @as("CreateDate")
  createDate: dateType,
  @ocaml.doc("<p>The generated user name for the service-specific credential.</p>")
  @as("ServiceUserName")
  serviceUserName: serviceUserName,
  @ocaml.doc("<p>The status of the service-specific credential. <code>Active</code> means that the key is
         valid for API calls, while <code>Inactive</code> means it is not.</p>")
  @as("Status")
  status: statusType,
  @ocaml.doc("<p>The name of the IAM user associated with the service-specific credential.</p>")
  @as("UserName")
  userName: userNameType,
}
@ocaml.doc("<p>Contains the details of a service-specific credential.</p>")
type serviceSpecificCredential = {
  @ocaml.doc("<p>The status of the service-specific credential. <code>Active</code> means that the key is
         valid for API calls, while <code>Inactive</code> means it is not.</p>")
  @as("Status")
  status: statusType,
  @ocaml.doc("<p>The name of the IAM user associated with the service-specific credential.</p>")
  @as("UserName")
  userName: userNameType,
  @ocaml.doc("<p>The unique identifier for the service-specific credential.</p>")
  @as("ServiceSpecificCredentialId")
  serviceSpecificCredentialId: serviceSpecificCredentialId,
  @ocaml.doc("<p>The generated password for the service-specific credential.</p>")
  @as("ServicePassword")
  servicePassword: servicePassword,
  @ocaml.doc("<p>The generated user name for the service-specific credential. This value is generated by
         combining the IAM user's name combined with the ID number of the Amazon Web Services account, as in
            <code>jane-at-123456789012</code>, for example. This value cannot be configured by the
         user.</p>")
  @as("ServiceUserName")
  serviceUserName: serviceUserName,
  @ocaml.doc("<p>The name of the service associated with the service-specific credential.</p>")
  @as("ServiceName")
  serviceName: serviceName,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the service-specific credential were created.</p>")
  @as("CreateDate")
  createDate: dateType,
}
@ocaml.doc("<p>Contains information about a server certificate without its certificate body,
         certificate chain, and private key.</p>
         <p> This data type is used as a response element in the <a>UploadServerCertificate</a> and <a>ListServerCertificates</a>
         operations. </p>")
type serverCertificateMetadata = {
  @ocaml.doc("<p>The date on which the certificate is set to expire.</p>") @as("Expiration")
  expiration: option<dateType>,
  @ocaml.doc("<p>The date when the server certificate was uploaded.</p>") @as("UploadDate")
  uploadDate: option<dateType>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) specifying the server certificate. For more information
         about ARNs and how to use them in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>. </p>")
  @as("Arn")
  arn: arnType,
  @ocaml.doc("<p> The stable and unique string identifying the server certificate. For more information
         about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the <i>IAM User Guide</i>. </p>")
  @as("ServerCertificateId")
  serverCertificateId: idType,
  @ocaml.doc("<p>The name that identifies the server certificate.</p>") @as("ServerCertificateName")
  serverCertificateName: serverCertificateNameType,
  @ocaml.doc("<p> The path to the server certificate. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>. </p>")
  @as("Path")
  path: pathType,
}
@ocaml.doc("<p>Contains information about an SSH public key, without the key's body or
         fingerprint.</p>
         <p>This data type is used as a response element in the <a>ListSSHPublicKeys</a>
         operation.</p>")
type sshpublicKeyMetadata = {
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the SSH public key was uploaded.</p>")
  @as("UploadDate")
  uploadDate: dateType,
  @ocaml.doc("<p>The status of the SSH public key. <code>Active</code> means that the key can be used for
         authentication with an CodeCommit repository. <code>Inactive</code> means that the key cannot be
         used.</p>")
  @as("Status")
  status: statusType,
  @ocaml.doc("<p>The unique identifier for the SSH public key.</p>") @as("SSHPublicKeyId")
  sshpublicKeyId: publicKeyIdType,
  @ocaml.doc("<p>The name of the IAM user associated with the SSH public key.</p>") @as("UserName")
  userName: userNameType,
}
@ocaml.doc("<p>Contains information about an SSH public key.</p>
         <p>This data type is used as a response element in the <a>GetSSHPublicKey</a>
         and <a>UploadSSHPublicKey</a> operations. </p>")
type sshpublicKey = {
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the SSH public key was uploaded.</p>")
  @as("UploadDate")
  uploadDate: option<dateType>,
  @ocaml.doc("<p>The status of the SSH public key. <code>Active</code> means that the key can be used for
         authentication with an CodeCommit repository. <code>Inactive</code> means that the key cannot be
         used.</p>")
  @as("Status")
  status: statusType,
  @ocaml.doc("<p>The SSH public key.</p>") @as("SSHPublicKeyBody")
  sshpublicKeyBody: publicKeyMaterialType,
  @ocaml.doc("<p>The MD5 message digest of the SSH public key.</p>") @as("Fingerprint")
  fingerprint: publicKeyFingerprintType,
  @ocaml.doc("<p>The unique identifier for the SSH public key.</p>") @as("SSHPublicKeyId")
  sshpublicKeyId: publicKeyIdType,
  @ocaml.doc("<p>The name of the IAM user associated with the SSH public key.</p>") @as("UserName")
  userName: userNameType,
}
@ocaml.doc("<p>Contains the list of SAML providers for this account.</p>")
type samlproviderListEntry = {
  @ocaml.doc("<p>The date and time when the SAML provider was created.</p>") @as("CreateDate")
  createDate: option<dateType>,
  @ocaml.doc("<p>The expiration date and time for the SAML provider.</p>") @as("ValidUntil")
  validUntil: option<dateType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SAML provider.</p>") @as("Arn")
  arn: option<arnType>,
}
@ocaml.doc("<p>Contains information about the last time that an IAM role was used. This includes the
         date and time and the Region in which the role was last used. Activity is only reported for
         the trailing 400 days. This period can be shorter if your Region began supporting these
         features within the last year. The role might have been used more than 400 days ago. For
         more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period\">Regions where data is tracked</a> in the <i>IAM User
         Guide</i>.</p>
         <p>This data type is returned as a response element in the <a>GetRole</a> and
            <a>GetAccountAuthorizationDetails</a> operations.</p>")
type roleLastUsed = {
  @ocaml.doc("<p>The name of the Amazon Web Services Region in which the role was last used.</p>")
  @as("Region")
  region: option<stringType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a> that the role was last used.</p>
         <p>This field is null if the role has not been used within the IAM tracking period. For
         more information about the tracking period, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period\">Regions where data is tracked</a> in the <i>IAM User Guide</i>.
      </p>")
  @as("LastUsedDate")
  lastUsedDate: option<dateType>,
}
type resourceNameListType = array<resourceNameType>
@ocaml.doc("<p>Contains the row and column of a location of a <code>Statement</code> element in a
         policy document.</p>
         <p>This data type is used as a member of the <code>
               <a>Statement</a>
            </code> type.</p>")
type position = {
  @ocaml.doc("<p>The column in the line containing the specified position in the document.</p>")
  @as("Column")
  column: option<columnNumber>,
  @ocaml.doc("<p>The line containing the specified position in the document.</p>") @as("Line")
  line: option<lineNumber>,
}
@ocaml.doc("<p>Contains information about a version of a managed policy.</p>
         <p>This data type is used as a response element in the <a>CreatePolicyVersion</a>, <a>GetPolicyVersion</a>, <a>ListPolicyVersions</a>, and <a>GetAccountAuthorizationDetails</a> operations. </p>
         <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed policies and inline
            policies</a> in the <i>IAM User Guide</i>. </p>")
type policyVersion = {
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the policy version was created.</p>")
  @as("CreateDate")
  createDate: option<dateType>,
  @ocaml.doc("<p>Specifies whether the policy version is set as the policy's default version.</p>")
  @as("IsDefaultVersion")
  isDefaultVersion: option<booleanType>,
  @ocaml.doc("<p>The identifier for the policy version.</p>
         <p>Policy version identifiers always begin with <code>v</code> (always lowercase). When a
         policy is created, the first policy version is <code>v1</code>. </p>")
  @as("VersionId")
  versionId: option<policyVersionIdType>,
  @ocaml.doc("<p>The policy document.</p>
         <p>The policy document is returned in the response to the <a>GetPolicyVersion</a> and <a>GetAccountAuthorizationDetails</a> operations. It is not returned in
         the response to the <a>CreatePolicyVersion</a> or <a>ListPolicyVersions</a> operations. </p>
         <p>The policy document returned in this structure is URL-encoded compliant with <a href=\"https://tools.ietf.org/html/rfc3986\">RFC 3986</a>. You can use a URL decoding
         method to convert the policy back to plain JSON text. For example, if you use Java, you can
         use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in
         the Java SDK. Other languages and SDKs provide similar functionality.</p>")
  @as("Document")
  document: option<policyDocumentType>,
}
@ocaml.doc("<p>Contains information about a user that a managed policy is attached to.</p>
         <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p>
         <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed policies and inline
            policies</a> in the <i>IAM User Guide</i>. </p>")
type policyUser = {
  @ocaml.doc("<p>The stable and unique string identifying the user. For more information about IDs, see
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>.</p>")
  @as("UserId")
  userId: option<idType>,
  @ocaml.doc("<p>The name (friendly name, not ARN) identifying the user.</p>") @as("UserName")
  userName: option<userNameType>,
}
@ocaml.doc("<p>Contains information about a role that a managed policy is attached to.</p>
         <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p>
         <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed policies and inline
            policies</a> in the <i>IAM User Guide</i>. </p>")
type policyRole = {
  @ocaml.doc("<p>The stable and unique string identifying the role. For more information about IDs, see
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>.</p>")
  @as("RoleId")
  roleId: option<idType>,
  @ocaml.doc("<p>The name (friendly name, not ARN) identifying the role.</p>") @as("RoleName")
  roleName: option<roleNameType>,
}
@ocaml.doc("<p>Contains information about a group that a managed policy is attached to.</p>
         <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p>
         <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed policies and inline
            policies</a> in the <i>IAM User Guide</i>. </p>")
type policyGroup = {
  @ocaml.doc("<p>The stable and unique string identifying the group. For more information about IDs, see
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>.</p>")
  @as("GroupId")
  groupId: option<idType>,
  @ocaml.doc("<p>The name (friendly name, not ARN) identifying the group.</p>") @as("GroupName")
  groupName: option<groupNameType>,
}
@ocaml.doc("<p>Contains details about the permissions policies that are attached to the specified
         identity (user, group, or role).</p>
         <p>This data type is an element of the <a>ListPoliciesGrantingServiceAccessEntry</a> object.</p>")
type policyGrantingServiceAccess = {
  @ocaml.doc("<p>The name of the entity (user or role) to which the inline policy is attached.</p>
         <p>This field is null for managed policies. For more information about these policy types,
         see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html\">Managed policies and inline policies</a> in the
            <i>IAM User Guide</i>.</p>")
  @as("EntityName")
  entityName: option<entityNameType>,
  @ocaml.doc("<p>The type of entity (user or role) that used the policy to access the service to which
         the inline policy is attached.</p>
         <p>This field is null for managed policies. For more information about these policy types,
         see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html\">Managed policies and inline policies</a> in the
            <i>IAM User Guide</i>.</p>")
  @as("EntityType")
  entityType: option<policyOwnerEntityType>,
  @as("PolicyArn") policyArn: option<arnType>,
  @ocaml.doc("<p>The policy type. For more information about these policy types, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html\">Managed
            policies and inline policies</a> in the
         <i>IAM User Guide</i>.</p>")
  @as("PolicyType")
  policyType: policyType,
  @ocaml.doc("<p>The policy name.</p>") @as("PolicyName") policyName: policyNameType,
}
@ocaml.doc("<p>Contains information about an IAM policy, including the policy document.</p>
         <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>")
type policyDetail = {
  @ocaml.doc("<p>The policy document.</p>") @as("PolicyDocument")
  policyDocument: option<policyDocumentType>,
  @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: option<policyNameType>,
}
@ocaml.doc("<p>Contains information about the effect that a permissions boundary has on a policy
         simulation when the boundary is applied to an IAM entity.</p>")
type permissionsBoundaryDecisionDetail = {
  @ocaml.doc("<p>Specifies whether an action is allowed by a permissions boundary that is applied to an
         IAM entity (user or role). A value of <code>true</code> means that the permissions
         boundary does not deny the action. This means that the policy includes an
            <code>Allow</code> statement that matches the request. In this case, if an
         identity-based policy also allows the action, the request is allowed. A value of
            <code>false</code> means that either the requested action is not allowed (implicitly
         denied) or that the action is explicitly denied by the permissions boundary. In both of
         these cases, the action is not allowed, regardless of the identity-based policy.</p>")
  @as("AllowedByPermissionsBoundary")
  allowedByPermissionsBoundary: option<booleanType>,
}
@ocaml.doc("<p>Contains information about the account password policy.</p>
         <p> This data type is used as a response element in the <a>GetAccountPasswordPolicy</a> operation. </p>")
type passwordPolicy = {
  @ocaml.doc("<p>Specifies whether IAM users are prevented from setting a new password via the
         Amazon Web Services Management Console after their password has expired. The IAM user cannot access the console until
         an administrator resets the password. IAM users with <code>iam:ChangePassword</code>
         permission and active access keys can reset their own expired console password using the
         CLI or API.</p>")
  @as("HardExpiry")
  hardExpiry: option<booleanObjectType>,
  @ocaml.doc("<p>Specifies the number of previous passwords that IAM users are prevented from
         reusing.</p>")
  @as("PasswordReusePrevention")
  passwordReusePrevention: option<passwordReusePreventionType>,
  @ocaml.doc("<p>The number of days that an IAM user password is valid.</p>") @as("MaxPasswordAge")
  maxPasswordAge: option<maxPasswordAgeType>,
  @ocaml.doc("<p>Indicates whether passwords in the account expire. Returns true if
            <code>MaxPasswordAge</code> contains a value greater than 0. Returns false if
         MaxPasswordAge is 0 or not present.</p>")
  @as("ExpirePasswords")
  expirePasswords: option<booleanType>,
  @ocaml.doc("<p>Specifies whether IAM users are allowed to change their own password. Gives IAM
         users permissions to <code>iam:ChangePassword</code> for only their user and to the
            <code>iam:GetAccountPasswordPolicy</code> action. This option does not attach a
         permissions policy to each user, rather the permissions are applied at the account-level
         for all users by IAM.</p>")
  @as("AllowUsersToChangePassword")
  allowUsersToChangePassword: option<booleanType>,
  @ocaml.doc("<p>Specifies whether IAM user passwords must contain at least one lowercase character (a
         to z).</p>")
  @as("RequireLowercaseCharacters")
  requireLowercaseCharacters: option<booleanType>,
  @ocaml.doc("<p>Specifies whether IAM user passwords must contain at least one uppercase character (A
         to Z).</p>")
  @as("RequireUppercaseCharacters")
  requireUppercaseCharacters: option<booleanType>,
  @ocaml.doc("<p>Specifies whether IAM user passwords must contain at least one numeric character (0 to
         9).</p>")
  @as("RequireNumbers")
  requireNumbers: option<booleanType>,
  @ocaml.doc("<p>Specifies whether IAM user passwords must contain at least one of the following
         symbols:</p>
         <p>! @ # $ % ^ & * ( ) _ + - = [ ] { } | '</p>")
  @as("RequireSymbols")
  requireSymbols: option<booleanType>,
  @ocaml.doc("<p>Minimum length to require for IAM user passwords.</p>")
  @as("MinimumPasswordLength")
  minimumPasswordLength: option<minimumPasswordLengthType>,
}
@ocaml.doc(
  "<p>Contains information about the effect that Organizations has on a policy simulation.</p>"
)
type organizationsDecisionDetail = {
  @ocaml.doc("<p>Specifies whether the simulated operation is allowed by the Organizations service control
         policies that impact the simulated user's account.</p>")
  @as("AllowedByOrganizations")
  allowedByOrganizations: option<booleanType>,
}
@ocaml.doc("<p>Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.</p>")
type openIDConnectProviderListEntry = {@as("Arn") arn: option<arnType>}
@ocaml.doc("<p>Contains information about an MFA device.</p>
         <p>This data type is used as a response element in the <a>ListMFADevices</a>
         operation.</p>")
type mfadevice = {
  @ocaml.doc("<p>The date when the MFA device was enabled for the user.</p>") @as("EnableDate")
  enableDate: dateType,
  @ocaml.doc("<p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the
         serial number is the device ARN.</p>")
  @as("SerialNumber")
  serialNumber: serialNumberType,
  @ocaml.doc("<p>The user with whom the MFA device is associated.</p>") @as("UserName")
  userName: userNameType,
}
@ocaml.doc("<p>Contains the user name and password create date for a user.</p>
         <p> This data type is used as a response element in the <a>CreateLoginProfile</a> and <a>GetLoginProfile</a> operations. </p>")
type loginProfile = {
  @ocaml.doc("<p>Specifies whether the user is required to set a new password on next sign-in.</p>")
  @as("PasswordResetRequired")
  passwordResetRequired: option<booleanType>,
  @ocaml.doc("<p>The date when the password for the user was created.</p>") @as("CreateDate")
  createDate: dateType,
  @ocaml.doc(
    "<p>The name of the user, which can be used for signing in to the Amazon Web Services Management Console.</p>"
  )
  @as("UserName")
  userName: userNameType,
}
@ocaml.doc("<p>Contains information about an IAM group entity.</p>
         <p>This data type is used as a response element in the following operations:</p>
         <ul>
            <li>
               <p>
                  <a>CreateGroup</a>
               </p>
            </li>
            <li>
               <p>
                  <a>GetGroup</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ListGroups</a>
               </p>
            </li>
         </ul>")
type group = {
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the group was created.</p>")
  @as("CreateDate")
  createDate: dateType,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) specifying the group. For more information about ARNs
         and how to use them in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>. </p>")
  @as("Arn")
  arn: arnType,
  @ocaml.doc("<p> The stable and unique string identifying the group. For more information about IDs, see
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>. </p>")
  @as("GroupId")
  groupId: idType,
  @ocaml.doc("<p>The friendly name that identifies the group.</p>") @as("GroupName")
  groupName: groupNameType,
  @ocaml.doc("<p>The path to the group. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>. </p>")
  @as("Path")
  path: pathType,
}
type evalDecisionDetailsType = Js.Dict.t<policyEvaluationDecisionType>
@ocaml.doc("<p>Contains information about the reason that the operation failed.</p>
         <p>This data type is used as a response element in the <a>GetOrganizationsAccessReport</a>, <a>GetServiceLastAccessedDetails</a>, and <a>GetServiceLastAccessedDetailsWithEntities</a> operations.</p>")
type errorDetails = {
  @ocaml.doc("<p>The error code associated with the operation failure.</p>") @as("Code")
  code: stringType,
  @ocaml.doc("<p>Detailed information about the reason that the operation failed.</p>")
  @as("Message")
  message: stringType,
}
@ocaml.doc("<p>Contains details about the specified entity (user or role).</p>
         <p>This data type is an element of the <a>EntityDetails</a> object.</p>")
type entityInfo = {
  @ocaml.doc("<p>The path to the entity (user or role). For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>. </p>")
  @as("Path")
  path: option<pathType>,
  @ocaml.doc("<p>The identifier of the entity (user or role).</p>") @as("Id") id: idType,
  @ocaml.doc("<p>The type of entity (user or role).</p>") @as("Type") type_: policyOwnerEntityType,
  @ocaml.doc("<p>The name of the entity (user or role).</p>") @as("Name") name: userNameType,
  @as("Arn") arn: arnType,
}
type contextKeyValueListType = array<contextKeyValueType>
type contextKeyNamesResultListType = array<contextKeyNameType>
@ocaml.doc("<p>Contains information about an attached policy.</p>
         <p>An attached policy is a managed policy that has been attached to a user, group, or role.
         This data type is used as a response element in the <a>ListAttachedGroupPolicies</a>, <a>ListAttachedRolePolicies</a>, <a>ListAttachedUserPolicies</a>, and <a>GetAccountAuthorizationDetails</a> operations. </p>
         <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed policies and inline
            policies</a> in the <i>IAM User Guide</i>. </p>")
type attachedPolicy = {
  @as("PolicyArn") policyArn: option<arnType>,
  @ocaml.doc("<p>The friendly name of the attached policy.</p>") @as("PolicyName")
  policyName: option<policyNameType>,
}
@ocaml.doc("<p>Contains information about an attached permissions boundary.</p>
         <p>An attached permissions boundary is a managed policy that has been attached to a user or
         role to set the permissions boundary.</p>
         <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions boundaries for IAM
            identities </a> in the <i>IAM User Guide</i>.</p>")
type attachedPermissionsBoundary = {
  @ocaml.doc(
    "<p> The ARN of the policy used to set the permissions boundary for the user or role.</p>"
  )
  @as("PermissionsBoundaryArn")
  permissionsBoundaryArn: option<arnType>,
  @ocaml.doc("<p> The permissions boundary usage type that indicates what type of IAM resource is used
         as the permissions boundary for an entity. This data type can only have a value of
            <code>Policy</code>.</p>")
  @as("PermissionsBoundaryType")
  permissionsBoundaryType: option<permissionsBoundaryAttachmentType>,
}
type arnListType = array<arnType>
type actionNameListType = array<actionNameType>
@ocaml.doc("<p>Contains information about an Amazon Web Services access key, without its secret key.</p>
         <p>This data type is used as a response element in the <a>ListAccessKeys</a>
         operation.</p>")
type accessKeyMetadata = {
  @ocaml.doc("<p>The date when the access key was created.</p>") @as("CreateDate")
  createDate: option<dateType>,
  @ocaml.doc("<p>The status of the access key. <code>Active</code> means that the key is valid for API
         calls; <code>Inactive</code> means it is not.</p>")
  @as("Status")
  status: option<statusType>,
  @ocaml.doc("<p>The ID for this access key.</p>") @as("AccessKeyId")
  accessKeyId: option<accessKeyIdType>,
  @ocaml.doc("<p>The name of the IAM user that the key is associated with.</p>") @as("UserName")
  userName: option<userNameType>,
}
@ocaml.doc("<p>Contains information about the last time an Amazon Web Services access key was used since IAM began
         tracking this information on April 22, 2015.</p>
         <p>This data type is used as a response element in the <a>GetAccessKeyLastUsed</a> operation.</p>")
type accessKeyLastUsed = {
  @ocaml.doc("<p>The Amazon Web Services Region where this access key was most recently used. The value for this field
         is \"N/A\" in the following situations:</p>
         <ul>
            <li>
               <p>The user does not have an access key.</p>
            </li>
            <li>
               <p>An access key exists but has not been used since IAM began tracking this
               information.</p>
            </li>
            <li>
               <p>There is no sign-in data associated with the user.</p>
            </li>
         </ul>
         <p>For more information about Amazon Web Services Regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and endpoints</a> in the Amazon Web Services
         General Reference.</p>")
  @as("Region")
  region: stringType,
  @ocaml.doc("<p>The name of the Amazon Web Services service with which this access key was most recently used. The
         value of this field is \"N/A\" in the following situations:</p>
         <ul>
            <li>
               <p>The user does not have an access key.</p>
            </li>
            <li>
               <p>An access key exists but has not been used since IAM started tracking this
               information.</p>
            </li>
            <li>
               <p>There is no sign-in data associated with the user.</p>
            </li>
         </ul>")
  @as("ServiceName")
  serviceName: stringType,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the access key was most recently used. This field is null in the
         following situations:</p>
         <ul>
            <li>
               <p>The user does not have an access key.</p>
            </li>
            <li>
               <p>An access key exists but has not been used since IAM began tracking this
               information.</p>
            </li>
            <li>
               <p>There is no sign-in data associated with the user.</p>
            </li>
         </ul>")
  @as("LastUsedDate")
  lastUsedDate: dateType,
}
@ocaml.doc("<p>Contains information about an Amazon Web Services access key.</p>
         <p> This data type is used as a response element in the <a>CreateAccessKey</a>
         and <a>ListAccessKeys</a> operations. </p>
         <note>
            <p>The <code>SecretAccessKey</code> value is returned only in response to <a>CreateAccessKey</a>. You can get a secret access key only when you first
            create an access key; you cannot recover the secret access key later. If you lose a
            secret access key, you must create a new access key.</p>
         </note>")
type accessKey = {
  @ocaml.doc("<p>The date when the access key was created.</p>") @as("CreateDate")
  createDate: option<dateType>,
  @ocaml.doc("<p>The secret key used to sign requests.</p>") @as("SecretAccessKey")
  secretAccessKey: accessKeySecretType,
  @ocaml.doc("<p>The status of the access key. <code>Active</code> means that the key is valid for API
         calls, while <code>Inactive</code> means it is not. </p>")
  @as("Status")
  status: statusType,
  @ocaml.doc("<p>The ID for this access key.</p>") @as("AccessKeyId") accessKeyId: accessKeyIdType,
  @ocaml.doc("<p>The name of the IAM user that the access key is associated with.</p>")
  @as("UserName")
  userName: userNameType,
}
@ocaml.doc("<p>An object that contains details about when a principal in the reported Organizations entity
         last attempted to access an Amazon Web Services service. A principal can be an IAM user, an IAM role,
         or the Amazon Web Services account root user within the reported Organizations entity.</p>
         <p>This data type is a response element in the <a>GetOrganizationsAccessReport</a> operation.</p>")
type accessDetail = {
  @ocaml.doc("<p>The number of accounts with authenticated principals (root users, IAM users, and IAM
         roles) that attempted to access the service in the reporting period.</p>")
  @as("TotalAuthenticatedEntities")
  totalAuthenticatedEntities: option<integerType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when an authenticated principal most recently attempted to access the
         service. Amazon Web Services does not report unauthenticated requests.</p>
         <p>This field is null if no principals in the reported Organizations entity attempted to access the
         service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>")
  @as("LastAuthenticatedTime")
  lastAuthenticatedTime: option<dateType>,
  @ocaml.doc("<p>The path of the Organizations entity (root, organizational unit, or account) from which an
         authenticated principal last attempted to access the service. Amazon Web Services does not report
         unauthenticated requests.</p>
         <p>This field is null if no principals (IAM users, IAM roles, or root users) in the
         reported Organizations entity attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>")
  @as("EntityPath")
  entityPath: option<organizationsEntityPathType>,
  @ocaml.doc("<p>The Region where the last service access attempt occurred.</p>
         <p>This field is null if no principals in the reported Organizations entity attempted to access the
         service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>")
  @as("Region")
  region: option<stringType>,
  @ocaml.doc("<p>The namespace of the service in which access was attempted.</p>
         <p>To learn the service namespace of a service, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html\">Actions, resources, and condition keys for Amazon Web Services services</a> in the
            <i>Service Authorization Reference</i>. Choose the name of the service to
         view details for that service. In the first paragraph, find the service prefix. For
         example, <code>(service prefix: a4b)</code>. For more information about service namespaces,
         see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">Amazon Web Services
            service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>")
  @as("ServiceNamespace")
  serviceNamespace: serviceNamespaceType,
  @ocaml.doc("<p>The name of the service in which access was attempted.</p>") @as("ServiceName")
  serviceName: serviceNameType,
}
type tagListType = array<tag>
type serverCertificateMetadataListType = array<serverCertificateMetadata>
type policyGrantingServiceAccessListType = array<policyGrantingServiceAccess>
type policyDocumentVersionListType = array<policyVersion>
type policyDetailListType = array<policyDetail>
@ocaml.doc("<p>Contains a list of MFA devices.</p>
         <p>This data type is used as a response element in the <a>ListMFADevices</a> and
            <a>ListVirtualMFADevices</a> operations. </p>")
type mfaDeviceListType = array<mfadevice>
@ocaml.doc("<p>Contains a list of IAM groups.</p>
         <p>This data type is used as a response element in the <a>ListGroups</a>
         operation.</p>")
type groupListType = array<group>
@ocaml.doc("<p>Contains a list of signing certificates.</p>
         <p>This data type is used as a response element in the <a>ListSigningCertificates</a> operation.</p>")
type certificateListType = array<signingCertificate>
type attachedPoliciesListType = array<attachedPolicy>
@ocaml.doc("<p>Contains a list of access key metadata.</p>
         <p>This data type is used as a response element in the <a>ListAccessKeys</a>
         operation.</p>")
type accessKeyMetadataListType = array<accessKeyMetadata>
type trackedActionsLastAccessed = array<trackedActionLastAccessed>
@ocaml.doc("<p>Contains a reference to a <code>Statement</code> element in a policy document that
         determines the result of the simulation.</p>
         <p>This data type is used by the <code>MatchedStatements</code> member of the <code>
               <a>EvaluationResult</a>
            </code> type.</p>")
type statement = {
  @ocaml.doc("<p>The row and column of the end of a <code>Statement</code> in an IAM policy.</p>")
  @as("EndPosition")
  endPosition: option<position>,
  @ocaml.doc("<p>The row and column of the beginning of the <code>Statement</code> in an IAM
         policy.</p>")
  @as("StartPosition")
  startPosition: option<position>,
  @ocaml.doc("<p>The type of the policy.</p>") @as("SourcePolicyType")
  sourcePolicyType: option<policySourceType>,
  @ocaml.doc("<p>The identifier of the policy that was provided as an input.</p>")
  @as("SourcePolicyId")
  sourcePolicyId: option<policyIdentifierType>,
}
type serviceSpecificCredentialsListType = array<serviceSpecificCredentialMetadata>
type sshpublicKeyListType = array<sshpublicKeyMetadata>
type samlproviderListType = array<samlproviderListEntry>
@ocaml.doc("<p>An object that contains details about how a service-linked role is used, if that
         information is returned by the service.</p>
         <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>")
type roleUsageType = {
  @ocaml.doc("<p>The name of the resource that is using the service-linked role.</p>")
  @as("Resources")
  resources: option<arnListType>,
  @ocaml.doc("<p>The name of the Region where the service-linked role is being used.</p>")
  @as("Region")
  region: option<regionNameType>,
}
type policyUserListType = array<policyUser>
type policyRoleListType = array<policyRole>
type policyGroupListType = array<policyGroup>
@ocaml.doc("<p>Contains a list of IAM OpenID Connect providers.</p>")
type openIDConnectProviderListType = array<openIDConnectProviderListEntry>
@ocaml.doc("<p>An object that contains details about when the IAM entities (users or roles) were last
         used in an attempt to access the specified Amazon Web Services service.</p>
         <p>This data type is a response element in the <a>GetServiceLastAccessedDetailsWithEntities</a> operation.</p>")
type entityDetails = {
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the authenticated entity last attempted to access Amazon Web Services. Amazon Web Services does
         not report unauthenticated requests.</p>
         <p>This field is null if no IAM entities attempted to access the service within the
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>")
  @as("LastAuthenticated")
  lastAuthenticated: option<dateType>,
  @ocaml.doc("<p>The <code>EntityInfo</code> object that contains details about the entity (user or
         role).</p>")
  @as("EntityInfo")
  entityInfo: entityInfo,
}
@ocaml.doc("<p>Contains information about a condition context key. It includes the name of the key and
         specifies the value (or values, if the context key supports multiple values) to use in the
         simulation. This information is used when evaluating the <code>Condition</code> elements of
         the input policies.</p>
         <p>This data type is used as an input parameter to <a>SimulateCustomPolicy</a>
         and <a>SimulatePrincipalPolicy</a>.</p>")
type contextEntry = {
  @ocaml.doc("<p>The data type of the value (or values) specified in the <code>ContextKeyValues</code>
         parameter.</p>")
  @as("ContextKeyType")
  contextKeyType: option<contextKeyTypeEnum>,
  @ocaml.doc("<p>The value (or values, if the condition context key supports multiple values) to provide
         to the simulation when the key is referenced by a <code>Condition</code> element in an
         input policy.</p>")
  @as("ContextKeyValues")
  contextKeyValues: option<contextKeyValueListType>,
  @ocaml.doc("<p>The full name of a condition context key, including the service prefix. For example,
            <code>aws:SourceIp</code> or <code>s3:VersionId</code>.</p>")
  @as("ContextKeyName")
  contextKeyName: option<contextKeyNameType>,
}
type accessDetails = array<accessDetail>
type entityDetailsListType = array<entityDetails>
@ocaml.doc("<p>Contains information about an IAM user, including all the user's policies and all the
         IAM groups the user is in.</p>
         <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>")
type userDetail = {
  @ocaml.doc("<p>A list of tags that are associated with the user. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
  @as("Tags")
  tags: option<tagListType>,
  @ocaml.doc("<p>The ARN of the policy used to set the permissions boundary for the user.</p>
         <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions boundaries for IAM
            identities </a> in the <i>IAM User Guide</i>.</p>")
  @as("PermissionsBoundary")
  permissionsBoundary: option<attachedPermissionsBoundary>,
  @ocaml.doc("<p>A list of the managed policies attached to the user.</p>")
  @as("AttachedManagedPolicies")
  attachedManagedPolicies: option<attachedPoliciesListType>,
  @ocaml.doc("<p>A list of IAM groups that the user is in.</p>") @as("GroupList")
  groupList: option<groupNameListType>,
  @ocaml.doc("<p>A list of the inline policies embedded in the user.</p>") @as("UserPolicyList")
  userPolicyList: option<policyDetailListType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the user was created.</p>")
  @as("CreateDate")
  createDate: option<dateType>,
  @as("Arn") arn: option<arnType>,
  @ocaml.doc("<p>The stable and unique string identifying the user. For more information about IDs, see
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>.</p>")
  @as("UserId")
  userId: option<idType>,
  @ocaml.doc("<p>The friendly name identifying the user.</p>") @as("UserName")
  userName: option<userNameType>,
  @ocaml.doc("<p>The path to the user. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>.</p>")
  @as("Path")
  path: option<pathType>,
}
@ocaml.doc("<p>Contains information about an IAM user entity.</p>
         <p>This data type is used as a response element in the following operations:</p>
         <ul>
            <li>
               <p>
                  <a>CreateUser</a>
               </p>
            </li>
            <li>
               <p>
                  <a>GetUser</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ListUsers</a>
               </p>
            </li>
         </ul>")
type user = {
  @ocaml.doc("<p>A list of tags that are associated with the user. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
  @as("Tags")
  tags: option<tagListType>,
  @ocaml.doc("<p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions boundaries for IAM
            identities </a> in the <i>IAM User Guide</i>.</p>")
  @as("PermissionsBoundary")
  permissionsBoundary: option<attachedPermissionsBoundary>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the user's password was last used to sign in to an Amazon Web Services website.
         For a list of Amazon Web Services websites that capture a user's last sign-in time, see the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html\">Credential
            reports</a> topic in the <i>IAM User Guide</i>. If a password is
         used more than once in a five-minute span, only the first use is returned in this field. If
         the field is null (no value), then it indicates that they never signed in with a password.
         This can be because:</p>
         <ul>
            <li>
               <p>The user never had a password.</p>
            </li>
            <li>
               <p>A password exists but has not been used since IAM started tracking this
               information on October 20, 2014.</p>
            </li>
         </ul>
         <p>A null value does not mean that the user <i>never</i> had a password.
         Also, if the user does not currently have a password but had one in the past, then this
         field contains the date and time the most recent password was used.</p>
         <p>This value is returned only in the <a>GetUser</a> and <a>ListUsers</a> operations. </p>")
  @as("PasswordLastUsed")
  passwordLastUsed: option<dateType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the user was created.</p>")
  @as("CreateDate")
  createDate: dateType,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs
         and how to use ARNs in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the
            <i>IAM User Guide</i>. </p>")
  @as("Arn")
  arn: arnType,
  @ocaml.doc("<p>The stable and unique string identifying the user. For more information about IDs, see
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>.</p>")
  @as("UserId")
  userId: idType,
  @ocaml.doc("<p>The friendly name identifying the user.</p>") @as("UserName")
  userName: userNameType,
  @ocaml.doc("<p>The path to the user. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>.</p>
         <p>The ARN of the policy used to set the permissions boundary for the user.</p>")
  @as("Path")
  path: pathType,
}
type statementListType = array<statement>
@ocaml.doc("<p>Contains details about the most recent attempt to access the service.</p>
         <p>This data type is used as a response element in the <a>GetServiceLastAccessedDetails</a> operation.</p>")
type serviceLastAccessed = {
  @ocaml.doc("<p>An object that contains details about the most recent attempt to access a tracked action
         within the service.</p>
         <p>This field is null if there no tracked actions or if the principal did not use the
         tracked actions within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>. This field is also null if the report was generated at the
         service level and not the action level. For more information, see the
            <code>Granularity</code> field in <a>GenerateServiceLastAccessedDetails</a>.</p>")
  @as("TrackedActionsLastAccessed")
  trackedActionsLastAccessed: option<trackedActionsLastAccessed>,
  @ocaml.doc("<p>The total number of authenticated principals (root user, IAM users, or IAM roles)
         that have attempted to access the service.</p>
         <p>This field is null if no principals attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>")
  @as("TotalAuthenticatedEntities")
  totalAuthenticatedEntities: option<integerType>,
  @ocaml.doc("<p>The Region from which the authenticated entity (user or role) last attempted to access
         the service. Amazon Web Services does not report unauthenticated requests.</p>
         <p>This field is null if no IAM entities attempted to access the service within the
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>")
  @as("LastAuthenticatedRegion")
  lastAuthenticatedRegion: option<stringType>,
  @ocaml.doc("<p>The ARN of the authenticated entity (user or role) that last attempted to access the
         service. Amazon Web Services does not report unauthenticated requests.</p>
         <p>This field is null if no IAM entities attempted to access the service within the
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>")
  @as("LastAuthenticatedEntity")
  lastAuthenticatedEntity: option<arnType>,
  @ocaml.doc("<p>The namespace of the service in which access was attempted.</p>
         <p>To learn the service namespace of a service, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html\">Actions, resources, and condition keys for Amazon Web Services services</a> in the
            <i>Service Authorization Reference</i>. Choose the name of the service to
         view details for that service. In the first paragraph, find the service prefix. For
         example, <code>(service prefix: a4b)</code>. For more information about service namespaces,
         see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">Amazon Web Services
            Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>")
  @as("ServiceNamespace")
  serviceNamespace: serviceNamespaceType,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when an authenticated entity most recently attempted to access the
         service. Amazon Web Services does not report unauthenticated requests.</p>
         <p>This field is null if no IAM entities attempted to access the service within the
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>")
  @as("LastAuthenticated")
  lastAuthenticated: option<dateType>,
  @ocaml.doc("<p>The name of the service in which access was attempted.</p>") @as("ServiceName")
  serviceName: serviceNameType,
}
@ocaml.doc("<p>Contains information about a server certificate.</p>
         <p> This data type is used as a response element in the <a>GetServerCertificate</a> operation. </p>")
type serverCertificate = {
  @ocaml.doc("<p>A list of tags that are attached to the server certificate. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
  @as("Tags")
  tags: option<tagListType>,
  @ocaml.doc("<p>The contents of the public key certificate chain.</p>") @as("CertificateChain")
  certificateChain: option<certificateChainType>,
  @ocaml.doc("<p>The contents of the public key certificate.</p>") @as("CertificateBody")
  certificateBody: certificateBodyType,
  @ocaml.doc("<p>The meta information of the server certificate, such as its name, path, ID, and
         ARN.</p>")
  @as("ServerCertificateMetadata")
  serverCertificateMetadata: serverCertificateMetadata,
}
type roleUsageListType = array<roleUsageType>
@ocaml.doc("<p>Contains information about an IAM role. This structure is returned as a response
         element in several API operations that interact with roles.</p>")
type role = {
  @ocaml.doc("<p>Contains information about the last time that an IAM role was used. This includes the
         date and time and the Region in which the role was last used. Activity is only reported for
         the trailing 400 days. This period can be shorter if your Region began supporting these
         features within the last year. The role might have been used more than 400 days ago. For
         more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period\">Regions where data is tracked</a> in the <i>IAM User
         Guide</i>.</p>")
  @as("RoleLastUsed")
  roleLastUsed: option<roleLastUsed>,
  @ocaml.doc("<p>A list of tags that are attached to the role. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
  @as("Tags")
  tags: option<tagListType>,
  @ocaml.doc("<p>The ARN of the policy used to set the permissions boundary for the role.</p>
         <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions boundaries for IAM
            identities </a> in the <i>IAM User Guide</i>.</p>")
  @as("PermissionsBoundary")
  permissionsBoundary: option<attachedPermissionsBoundary>,
  @ocaml.doc("<p>The maximum session duration (in seconds) for the specified role. Anyone who uses the
         CLI, or API to assume the role can specify the duration using the optional
            <code>DurationSeconds</code> API parameter or <code>duration-seconds</code> CLI
         parameter.</p>")
  @as("MaxSessionDuration")
  maxSessionDuration: option<roleMaxSessionDurationType>,
  @ocaml.doc("<p>A description of the role that you provide.</p>") @as("Description")
  description: option<roleDescriptionType>,
  @ocaml.doc("<p>The policy that grants an entity permission to assume the role.</p>")
  @as("AssumeRolePolicyDocument")
  assumeRolePolicyDocument: option<policyDocumentType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the role was created.</p>")
  @as("CreateDate")
  createDate: dateType,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) specifying the role. For more information about ARNs and
         how to use them in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i> guide. </p>")
  @as("Arn")
  arn: arnType,
  @ocaml.doc("<p> The stable and unique string identifying the role. For more information about IDs, see
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>. </p>")
  @as("RoleId")
  roleId: idType,
  @ocaml.doc("<p>The friendly name that identifies the role.</p>") @as("RoleName")
  roleName: roleNameType,
  @ocaml.doc("<p> The path to the role. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>. </p>")
  @as("Path")
  path: pathType,
}
@ocaml.doc("<p>Contains information about a managed policy.</p>
         <p>This data type is used as a response element in the <a>CreatePolicy</a>,
            <a>GetPolicy</a>, and <a>ListPolicies</a> operations. </p>
         <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed policies and inline
            policies</a> in the <i>IAM User Guide</i>. </p>")
type policy = {
  @ocaml.doc("<p>A list of tags that are attached to the instance profile. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
  @as("Tags")
  tags: option<tagListType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the policy was last updated.</p>
         <p>When a policy has only one version, this field contains the date and time when the
         policy was created. When a policy has more than one version, this field contains the date
         and time when the most recent policy version was created.</p>")
  @as("UpdateDate")
  updateDate: option<dateType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the policy was created.</p>")
  @as("CreateDate")
  createDate: option<dateType>,
  @ocaml.doc("<p>A friendly description of the policy.</p>
         <p>This element is included in the response to the <a>GetPolicy</a> operation.
         It is not included in the response to the <a>ListPolicies</a> operation. </p>")
  @as("Description")
  description: option<policyDescriptionType>,
  @ocaml.doc("<p>Specifies whether the policy can be attached to an IAM user, group, or role.</p>")
  @as("IsAttachable")
  isAttachable: option<booleanType>,
  @ocaml.doc("<p>The number of entities (users and roles) for which the policy is used to set the
         permissions boundary. </p>
         <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions boundaries for IAM
            identities </a> in the <i>IAM User Guide</i>.</p>")
  @as("PermissionsBoundaryUsageCount")
  permissionsBoundaryUsageCount: option<attachmentCountType>,
  @ocaml.doc(
    "<p>The number of entities (users, groups, and roles) that the policy is attached to.</p>"
  )
  @as("AttachmentCount")
  attachmentCount: option<attachmentCountType>,
  @ocaml.doc(
    "<p>The identifier for the version of the policy that is set as the default version.</p>"
  )
  @as("DefaultVersionId")
  defaultVersionId: option<policyVersionIdType>,
  @ocaml.doc("<p>The path to the policy.</p>
         <p>For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>.</p>")
  @as("Path")
  path: option<policyPathType>,
  @as("Arn") arn: option<arnType>,
  @ocaml.doc("<p>The stable and unique string identifying the policy.</p>
         <p>For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>.</p>")
  @as("PolicyId")
  policyId: option<idType>,
  @ocaml.doc("<p>The friendly name (not ARN) identifying the policy.</p>") @as("PolicyName")
  policyName: option<policyNameType>,
}
@ocaml.doc("<p>Contains information about a managed policy, including the policy's ARN, versions, and
         the number of principal entities (users, groups, and roles) that the policy is attached
         to.</p>
         <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>
         <p>For more information about managed policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed policies and inline
            policies</a> in the <i>IAM User Guide</i>. </p>")
type managedPolicyDetail = {
  @ocaml.doc("<p>A list containing information about the versions of the policy.</p>")
  @as("PolicyVersionList")
  policyVersionList: option<policyDocumentVersionListType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the policy was last updated.</p>
         <p>When a policy has only one version, this field contains the date and time when the
         policy was created. When a policy has more than one version, this field contains the date
         and time when the most recent policy version was created.</p>")
  @as("UpdateDate")
  updateDate: option<dateType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the policy was created.</p>")
  @as("CreateDate")
  createDate: option<dateType>,
  @ocaml.doc("<p>A friendly description of the policy.</p>") @as("Description")
  description: option<policyDescriptionType>,
  @ocaml.doc("<p>Specifies whether the policy can be attached to an IAM user, group, or role.</p>")
  @as("IsAttachable")
  isAttachable: option<booleanType>,
  @ocaml.doc("<p>The number of entities (users and roles) for which the policy is used as the permissions
         boundary. </p>
         <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions boundaries for IAM
            identities </a> in the <i>IAM User Guide</i>.</p>")
  @as("PermissionsBoundaryUsageCount")
  permissionsBoundaryUsageCount: option<attachmentCountType>,
  @ocaml.doc("<p>The number of principal entities (users, groups, and roles) that the policy is attached
         to.</p>")
  @as("AttachmentCount")
  attachmentCount: option<attachmentCountType>,
  @ocaml.doc("<p>The identifier for the version of the policy that is set as the default (operative)
         version.</p>
         <p>For more information about policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for managed
            policies</a> in the <i>IAM User Guide</i>. </p>")
  @as("DefaultVersionId")
  defaultVersionId: option<policyVersionIdType>,
  @ocaml.doc("<p>The path to the policy.</p>
         <p>For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>.</p>")
  @as("Path")
  path: option<policyPathType>,
  @as("Arn") arn: option<arnType>,
  @ocaml.doc("<p>The stable and unique string identifying the policy.</p>
         <p>For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>.</p>")
  @as("PolicyId")
  policyId: option<idType>,
  @ocaml.doc("<p>The friendly name (not ARN) identifying the policy.</p>") @as("PolicyName")
  policyName: option<policyNameType>,
}
@ocaml.doc("<p>Contains details about the permissions policies that are attached to the specified
         identity (user, group, or role).</p>
         <p>This data type is used as a response element in the <a>ListPoliciesGrantingServiceAccess</a> operation.</p>")
type listPoliciesGrantingServiceAccessEntry = {
  @ocaml.doc("<p>The <code>PoliciesGrantingServiceAccess</code> object that contains details about the
         policy.</p>")
  @as("Policies")
  policies: option<policyGrantingServiceAccessListType>,
  @ocaml.doc("<p>The namespace of the service that was accessed.</p>
         <p>To learn the service namespace of a service, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html\">Actions, resources, and condition keys for Amazon Web Services services</a> in the
            <i>Service Authorization Reference</i>. Choose the name of the service to
         view details for that service. In the first paragraph, find the service prefix. For
         example, <code>(service prefix: a4b)</code>. For more information about service namespaces,
         see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">Amazon Web Services
            service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>")
  @as("ServiceNamespace")
  serviceNamespace: option<serviceNamespaceType>,
}
@ocaml.doc("<p>Contains information about an IAM group, including all of the group's policies.</p>
         <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>")
type groupDetail = {
  @ocaml.doc("<p>A list of the managed policies attached to the group.</p>")
  @as("AttachedManagedPolicies")
  attachedManagedPolicies: option<attachedPoliciesListType>,
  @ocaml.doc("<p>A list of the inline policies embedded in the group.</p>") @as("GroupPolicyList")
  groupPolicyList: option<policyDetailListType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the group was created.</p>")
  @as("CreateDate")
  createDate: option<dateType>,
  @as("Arn") arn: option<arnType>,
  @ocaml.doc("<p>The stable and unique string identifying the group. For more information about IDs, see
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>.</p>")
  @as("GroupId")
  groupId: option<idType>,
  @ocaml.doc("<p>The friendly name that identifies the group.</p>") @as("GroupName")
  groupName: option<groupNameType>,
  @ocaml.doc("<p>The path to the group. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>.</p>")
  @as("Path")
  path: option<pathType>,
}
type contextEntryListType = array<contextEntry>
@ocaml.doc("<p>Contains a list of users.</p>
         <p>This data type is used as a response element in the <a>GetGroup</a> and <a>ListUsers</a> operations. </p>")
type userListType = array<user>
type userDetailListType = array<userDetail>
@ocaml.doc("<p>Contains a list of IAM roles.</p>
         <p>This data type is used as a response element in the <a>ListRoles</a>
         operation.</p>")
type roleListType = array<role>
type policyListType = array<policy>
type listPolicyGrantingServiceAccessResponseListType = array<listPoliciesGrantingServiceAccessEntry>
type groupDetailListType = array<groupDetail>
@ocaml.doc("<p>Contains information about a virtual MFA device.</p>")
type virtualMFADevice = {
  @ocaml.doc("<p>A list of tags that are attached to the virtual MFA device. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
  @as("Tags")
  tags: option<tagListType>,
  @ocaml.doc("<p>The date and time on which the virtual MFA device was enabled.</p>")
  @as("EnableDate")
  enableDate: option<dateType>,
  @ocaml.doc("<p>The IAM user associated with this virtual MFA device.</p>") @as("User")
  user: option<user>,
  @ocaml.doc("<p> A QR code PNG image that encodes
            <code>otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String</code>
         where <code>$virtualMFADeviceName</code> is one of the create call arguments.
            <code>AccountName</code> is the user name if set (otherwise, the account ID otherwise),
         and <code>Base32String</code> is the seed in base32 format. The <code>Base32String</code>
         value is base64-encoded. </p>")
  @as("QRCodePNG")
  qrcodePNG: option<bootstrapDatum>,
  @ocaml.doc(
    "<p> The base32 seed defined as specified in <a href=\"https://tools.ietf.org/html/rfc3548.txt\">RFC3548</a>. The <code>Base32StringSeed</code> is base64-encoded. </p>"
  )
  @as("Base32StringSeed")
  base32StringSeed: option<bootstrapDatum>,
  @ocaml.doc("<p>The serial number associated with <code>VirtualMFADevice</code>.</p>")
  @as("SerialNumber")
  serialNumber: serialNumberType,
}
type servicesLastAccessed = array<serviceLastAccessed>
@ocaml.doc("<p>Contains the result of the simulation of a single API operation call on a single
         resource.</p>
         <p>This data type is used by a member of the <a>EvaluationResult</a> data
         type.</p>")
type resourceSpecificResult = {
  @ocaml.doc("<p>Contains information about the effect that a permissions boundary has on a policy
         simulation when that boundary is applied to an IAM entity.</p>")
  @as("PermissionsBoundaryDecisionDetail")
  permissionsBoundaryDecisionDetail: option<permissionsBoundaryDecisionDetail>,
  @ocaml.doc("<p>Additional details about the results of the evaluation decision on a single resource.
         This parameter is returned only for cross-account simulations. This parameter explains how
         each policy type contributes to the resource-specific evaluation decision.</p>")
  @as("EvalDecisionDetails")
  evalDecisionDetails: option<evalDecisionDetailsType>,
  @ocaml.doc("<p>A list of context keys that are required by the included input policies but that were
         not provided by one of the input parameters. This list is used when a list of ARNs is
         included in the <code>ResourceArns</code> parameter instead of \"*\". If you do not specify
         individual resources, by setting <code>ResourceArns</code> to \"*\" or by not including the
            <code>ResourceArns</code> parameter, then any missing context values are instead
         included under the <code>EvaluationResults</code> section. To discover the context keys
         used by a set of policies, you can call <a>GetContextKeysForCustomPolicy</a> or
            <a>GetContextKeysForPrincipalPolicy</a>.</p>")
  @as("MissingContextValues")
  missingContextValues: option<contextKeyNamesResultListType>,
  @ocaml.doc("<p>A list of the statements in the input policies that determine the result for this part
         of the simulation. Remember that even if multiple statements allow the operation on the
         resource, if <i>any</i> statement denies that operation, then the explicit
         deny overrides any allow. In addition, the deny statement is the only entry included in the
         result.</p>")
  @as("MatchedStatements")
  matchedStatements: option<statementListType>,
  @ocaml.doc("<p>The result of the simulation of the simulated API operation on the resource specified in
            <code>EvalResourceName</code>.</p>")
  @as("EvalResourceDecision")
  evalResourceDecision: policyEvaluationDecisionType,
  @ocaml.doc("<p>The name of the simulated resource, in Amazon Resource Name (ARN) format.</p>")
  @as("EvalResourceName")
  evalResourceName: resourceNameType,
}
type managedPolicyDetailListType = array<managedPolicyDetail>
@ocaml.doc("<p>The reason that the service-linked role deletion failed.</p>
         <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>")
type deletionTaskFailureReasonType = {
  @ocaml.doc("<p>A list of objects that contains details about the service-linked role deletion failure,
         if that information is returned by the service. If the service-linked role has active
         sessions or if any resources that were used by the role have not been deleted from the
         linked service, the role can't be deleted. This parameter includes a list of the resources
         that are associated with the role and the Region in which the resources are being
         used.</p>")
  @as("RoleUsageList")
  roleUsageList: option<roleUsageListType>,
  @ocaml.doc(
    "<p>A short description of the reason that the service-linked role deletion failed.</p>"
  )
  @as("Reason")
  reason: option<reasonType>,
}
type virtualMFADeviceListType = array<virtualMFADevice>
type resourceSpecificResultListType = array<resourceSpecificResult>
@ocaml.doc("<p>Contains information about an instance profile.</p>
         <p>This data type is used as a response element in the following operations:</p>
         <ul>
            <li>
               <p>
                  <a>CreateInstanceProfile</a>
               </p>
            </li>
            <li>
               <p>
                  <a>GetInstanceProfile</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ListInstanceProfiles</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ListInstanceProfilesForRole</a>
               </p>
            </li>
         </ul>")
type instanceProfile = {
  @ocaml.doc("<p>A list of tags that are attached to the instance profile. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
  @as("Tags")
  tags: option<tagListType>,
  @ocaml.doc("<p>The role associated with the instance profile.</p>") @as("Roles")
  roles: roleListType,
  @ocaml.doc("<p>The date when the instance profile was created.</p>") @as("CreateDate")
  createDate: dateType,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) specifying the instance profile. For more information
         about ARNs and how to use them in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>. </p>")
  @as("Arn")
  arn: arnType,
  @ocaml.doc("<p> The stable and unique string identifying the instance profile. For more information
         about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the <i>IAM User Guide</i>. </p>")
  @as("InstanceProfileId")
  instanceProfileId: idType,
  @ocaml.doc("<p>The name identifying the instance profile.</p>") @as("InstanceProfileName")
  instanceProfileName: instanceProfileNameType,
  @ocaml.doc("<p> The path to the instance profile. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>. </p>")
  @as("Path")
  path: pathType,
}
@ocaml.doc("<p>Contains a list of instance profiles.</p>")
type instanceProfileListType = array<instanceProfile>
@ocaml.doc("<p>Contains the results of a simulation.</p>
         <p>This data type is used by the return parameter of <code>
               <a>SimulateCustomPolicy</a>
            </code> and <code>
               <a>SimulatePrincipalPolicy</a>
            </code>.</p>")
type evaluationResult = {
  @ocaml.doc("<p>The individual results of the simulation of the API operation specified in
         EvalActionName on each resource.</p>")
  @as("ResourceSpecificResults")
  resourceSpecificResults: option<resourceSpecificResultListType>,
  @ocaml.doc("<p>Additional details about the results of the cross-account evaluation decision. This
         parameter is populated for only cross-account simulations. It contains a brief summary of
         how each policy type contributes to the final evaluation decision.</p>
         <p>If the simulation evaluates policies within the same account and includes a resource
         ARN, then the parameter is present but the response is empty. If the simulation evaluates
         policies within the same account and specifies all resources (<code>*</code>), then the
         parameter is not returned.</p>
         <p>When you make a cross-account request, Amazon Web Services evaluates the request in the trusting
         account and the trusted account. The request is allowed only if both evaluations return
            <code>true</code>. For more information about how policies are evaluated, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics\">Evaluating policies within a single account</a>.</p>
         <p>If an Organizations SCP included in the evaluation denies access, the simulation ends. In
         this case, policy evaluation does not proceed any further and this parameter is not
         returned.</p>")
  @as("EvalDecisionDetails")
  evalDecisionDetails: option<evalDecisionDetailsType>,
  @ocaml.doc("<p>Contains information about the effect that a permissions boundary has on a policy
         simulation when the boundary is applied to an IAM entity.</p>")
  @as("PermissionsBoundaryDecisionDetail")
  permissionsBoundaryDecisionDetail: option<permissionsBoundaryDecisionDetail>,
  @ocaml.doc("<p>A structure that details how Organizations and its service control policies affect the results of
         the simulation. Only applies if the simulated user's account is part of an
         organization.</p>")
  @as("OrganizationsDecisionDetail")
  organizationsDecisionDetail: option<organizationsDecisionDetail>,
  @ocaml.doc("<p>A list of context keys that are required by the included input policies but that were
         not provided by one of the input parameters. This list is used when the resource in a
         simulation is \"*\", either explicitly, or when the <code>ResourceArns</code> parameter
         blank. If you include a list of resources, then any missing context values are instead
         included under the <code>ResourceSpecificResults</code> section. To discover the context
         keys used by a set of policies, you can call <a>GetContextKeysForCustomPolicy</a> or <a>GetContextKeysForPrincipalPolicy</a>.</p>")
  @as("MissingContextValues")
  missingContextValues: option<contextKeyNamesResultListType>,
  @ocaml.doc("<p>A list of the statements in the input policies that determine the result for this
         scenario. Remember that even if multiple statements allow the operation on the resource, if
         only one statement denies that operation, then the explicit deny overrides any allow. In
         addition, the deny statement is the only entry included in the result.</p>")
  @as("MatchedStatements")
  matchedStatements: option<statementListType>,
  @ocaml.doc("<p>The result of the simulation.</p>") @as("EvalDecision")
  evalDecision: policyEvaluationDecisionType,
  @ocaml.doc("<p>The ARN of the resource that the indicated API operation was tested on.</p>")
  @as("EvalResourceName")
  evalResourceName: option<resourceNameType>,
  @ocaml.doc("<p>The name of the API operation tested on the indicated resource.</p>")
  @as("EvalActionName")
  evalActionName: actionNameType,
}
@ocaml.doc("<p>Contains information about an IAM role, including all of the role's policies.</p>
         <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>")
type roleDetail = {
  @ocaml.doc("<p>Contains information about the last time that an IAM role was used. This includes the
         date and time and the Region in which the role was last used. Activity is only reported for
         the trailing 400 days. This period can be shorter if your Region began supporting these
         features within the last year. The role might have been used more than 400 days ago. For
         more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period\">Regions where data is tracked</a> in the <i>IAM User
         Guide</i>.</p>")
  @as("RoleLastUsed")
  roleLastUsed: option<roleLastUsed>,
  @ocaml.doc("<p>A list of tags that are attached to the role. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
  @as("Tags")
  tags: option<tagListType>,
  @ocaml.doc("<p>The ARN of the policy used to set the permissions boundary for the role.</p>
         <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions boundaries for IAM
            identities </a> in the <i>IAM User Guide</i>.</p>")
  @as("PermissionsBoundary")
  permissionsBoundary: option<attachedPermissionsBoundary>,
  @ocaml.doc("<p>A list of managed policies attached to the role. These policies are the role's access
         (permissions) policies.</p>")
  @as("AttachedManagedPolicies")
  attachedManagedPolicies: option<attachedPoliciesListType>,
  @ocaml.doc("<p>A list of inline policies embedded in the role. These policies are the role's access
         (permissions) policies.</p>")
  @as("RolePolicyList")
  rolePolicyList: option<policyDetailListType>,
  @ocaml.doc("<p>A list of instance profiles that contain this role.</p>")
  @as("InstanceProfileList")
  instanceProfileList: option<instanceProfileListType>,
  @ocaml.doc("<p>The trust policy that grants permission to assume the role.</p>")
  @as("AssumeRolePolicyDocument")
  assumeRolePolicyDocument: option<policyDocumentType>,
  @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
            format</a>, when the role was created.</p>")
  @as("CreateDate")
  createDate: option<dateType>,
  @as("Arn") arn: option<arnType>,
  @ocaml.doc("<p>The stable and unique string identifying the role. For more information about IDs, see
            <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
            identifiers</a> in the <i>IAM User Guide</i>.</p>")
  @as("RoleId")
  roleId: option<idType>,
  @ocaml.doc("<p>The friendly name that identifies the role.</p>") @as("RoleName")
  roleName: option<roleNameType>,
  @ocaml.doc("<p>The path to the role. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
            <i>IAM User Guide</i>.</p>")
  @as("Path")
  path: option<pathType>,
}
type evaluationResultsListType = array<evaluationResult>
type roleDetailListType = array<roleDetail>
@ocaml.doc("<fullname>Identity and Access Management</fullname>
         <p>Identity and Access Management (IAM) is a web service for securely controlling 
      access to Amazon Web Services services. With IAM, you can centrally manage users, security credentials
      such as access keys, and permissions that control which Amazon Web Services resources users and 
      applications can access. For more information about IAM, see <a href=\"http://aws.amazon.com/iam/\">Identity and Access Management (IAM)</a> and the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/\">Identity and Access Management User Guide</a>.</p>")
module UpdateUser = {
  type t
  type request = {
    @ocaml.doc("<p>New name for the user. Include this parameter only if you're changing the user's
            name.</p>
        <p>IAM user, group, role, and policy names must be unique within the account. Names are
            not distinguished by case. For example, you cannot create resources named both
            \"MyResource\" and \"myresource\".</p>")
    @as("NewUserName")
    newUserName: option<userNameType>,
    @ocaml.doc("<p>New path for the IAM user. Include this parameter only if you're changing the user's
            path.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("NewPath")
    newPath: option<pathType>,
    @ocaml.doc("<p>Name of the user to update. If you're changing the name of the user, this is the
            original user name.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UpdateUserCommand"
  let make = (~userName, ~newUserName=?, ~newPath=?, ()) => new({newUserName, newPath, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateSigningCertificate = {
  type t
  type request = {
    @ocaml.doc("<p> The status you want to assign to the certificate. <code>Active</code> means that the
            certificate can be used for programmatic calls to Amazon Web Services <code>Inactive</code> means that
            the certificate cannot be used.</p>")
    @as("Status")
    status: statusType,
    @ocaml.doc("<p>The ID of the signing certificate you want to update.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can 
    consist of any upper or lowercased letter or digit.</p>")
    @as("CertificateId")
    certificateId: certificateIdType,
    @ocaml.doc("<p>The name of the IAM user the signing certificate belongs to.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<existingUserNameType>,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UpdateSigningCertificateCommand"
  let make = (~status, ~certificateId, ~userName=?, ()) => new({status, certificateId, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateServiceSpecificCredential = {
  type t
  type request = {
    @ocaml.doc("<p>The status to be assigned to the service-specific credential.</p>") @as("Status")
    status: statusType,
    @ocaml.doc("<p>The unique identifier of the service-specific credential.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can 
    consist of any upper or lowercased letter or digit.</p>")
    @as("ServiceSpecificCredentialId")
    serviceSpecificCredentialId: serviceSpecificCredentialId,
    @ocaml.doc("<p>The name of the IAM user associated with the service-specific credential. If you do
            not specify this value, then the operation assumes the user whose credentials are used
            to call the operation.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<userNameType>,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "UpdateServiceSpecificCredentialCommand"
  let make = (~status, ~serviceSpecificCredentialId, ~userName=?, ()) =>
    new({status, serviceSpecificCredentialId, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateServerCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The new name for the server certificate. Include this only if you are updating the
            server certificate's name. The name of the certificate cannot contain any spaces.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("NewServerCertificateName")
    newServerCertificateName: option<serverCertificateNameType>,
    @ocaml.doc("<p>The new path for the server certificate. Include this only if you are updating the
            server certificate's path.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("NewPath")
    newPath: option<pathType>,
    @ocaml.doc("<p>The name of the server certificate that you want to update.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("ServerCertificateName")
    serverCertificateName: serverCertificateNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UpdateServerCertificateCommand"
  let make = (~serverCertificateName, ~newServerCertificateName=?, ~newPath=?, ()) =>
    new({newServerCertificateName, newPath, serverCertificateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateSSHPublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>The status to assign to the SSH public key. <code>Active</code> means that the key can
            be used for authentication with an CodeCommit repository. <code>Inactive</code> means that
            the key cannot be used.</p>")
    @as("Status")
    status: statusType,
    @ocaml.doc("<p>The unique identifier for the SSH public key.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can 
    consist of any upper or lowercased letter or digit.</p>")
    @as("SSHPublicKeyId")
    sshpublicKeyId: publicKeyIdType,
    @ocaml.doc("<p>The name of the IAM user associated with the SSH public key.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UpdateSSHPublicKeyCommand"
  let make = (~status, ~sshpublicKeyId, ~userName, ()) => new({status, sshpublicKeyId, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateSAMLProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SAML provider to update.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("SAMLProviderArn")
    samlproviderArn: arnType,
    @ocaml.doc("<p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The
            document includes the issuer's name, expiration information, and keys that can be used
            to validate the SAML authentication response (assertions) that are received from the
            IdP. You must generate the metadata document using the identity management software that
            is used as your organization's IdP.</p>")
    @as("SAMLMetadataDocument")
    samlmetadataDocument: samlmetadataDocumentType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>UpdateSAMLProvider</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SAML provider that was updated.</p>")
    @as("SAMLProviderArn")
    samlproviderArn: option<arnType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "UpdateSAMLProviderCommand"
  let make = (~samlproviderArn, ~samlmetadataDocument, ()) =>
    new({samlproviderArn, samlmetadataDocument})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateRole = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum session duration (in seconds) that you want to set for the specified role.
            If you do not specify a value for this setting, the default maximum of one hour is
            applied. This setting can have a value from 1 hour to 12 hours.</p>
        <p>Anyone who assumes the role from the CLI or API can use the
                <code>DurationSeconds</code> API parameter or the <code>duration-seconds</code> CLI
            parameter to request a longer session. The <code>MaxSessionDuration</code> setting
            determines the maximum duration that can be requested using the
                <code>DurationSeconds</code> parameter. If users don't specify a value for the
                <code>DurationSeconds</code> parameter, their security credentials are valid for one
            hour by default. This applies when you use the <code>AssumeRole*</code> API operations
            or the <code>assume-role*</code> CLI operations but does not apply when you use those
            operations to create a console URL. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html\">Using IAM
                roles</a> in the <i>IAM User Guide</i>.</p>")
    @as("MaxSessionDuration")
    maxSessionDuration: option<roleMaxSessionDurationType>,
    @ocaml.doc("<p>The new description that you want to apply to the specified role.</p>")
    @as("Description")
    description: option<roleDescriptionType>,
    @ocaml.doc("<p>The name of the role that you want to modify.</p>") @as("RoleName")
    roleName: roleNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UpdateRoleCommand"
  let make = (~roleName, ~maxSessionDuration=?, ~description=?, ()) =>
    new({maxSessionDuration, description, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateLoginProfile = {
  type t
  type request = {
    @ocaml.doc("<p>Allows this new password to be used only once by requiring the specified IAM user to
            set a new password on next sign-in.</p>")
    @as("PasswordResetRequired")
    passwordResetRequired: option<booleanObjectType>,
    @ocaml.doc("<p>The new password for the specified IAM user.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>
        <p>However, the format can be further restricted by the account administrator by setting
            a password policy on the Amazon Web Services account. For more information, see <a>UpdateAccountPasswordPolicy</a>.</p>")
    @as("Password")
    password: option<passwordType>,
    @ocaml.doc("<p>The name of the user whose password you want to update.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UpdateLoginProfileCommand"
  let make = (~userName, ~passwordResetRequired=?, ~password=?, ()) =>
    new({passwordResetRequired, password, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateGroup = {
  type t
  type request = {
    @ocaml.doc("<p>New name for the IAM group. Only include this if changing the group's name.</p>
        <p>IAM user, group, role, and policy names must be unique within the account. Names are
            not distinguished by case. For example, you cannot create resources named both
            \"MyResource\" and \"myresource\".</p>")
    @as("NewGroupName")
    newGroupName: option<groupNameType>,
    @ocaml.doc("<p>New path for the IAM group. Only include this if changing the group's path.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("NewPath")
    newPath: option<pathType>,
    @ocaml.doc("<p>Name of the IAM group to update. If you're changing the name of the group, this is
            the original name.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UpdateGroupCommand"
  let make = (~groupName, ~newGroupName=?, ~newPath=?, ()) =>
    new({newGroupName, newPath, groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateAssumeRolePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The policy that grants an entity permission to assume the role.</p>
        <p>You must provide policies in JSON format in IAM. However, for CloudFormation
            templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
            IAM.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PolicyDocument")
    policyDocument: policyDocumentType,
    @ocaml.doc("<p>The name of the role to update with the new policy.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UpdateAssumeRolePolicyCommand"
  let make = (~policyDocument, ~roleName, ()) => new({policyDocument, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateAccountPasswordPolicy = {
  type t
  type request = {
    @ocaml.doc("<p> Prevents IAM users who are accessing the account via the Amazon Web Services Management Console from setting a
            new console password after their password has expired. The IAM user cannot access the
            console until an administrator resets the password.</p>
        <p>If you do not specify a value for this parameter, then the operation uses the default
            value of <code>false</code>. The result is that IAM users can change their passwords
            after they expire and continue to sign in as the user.</p>
        <note>
            <p> In the Amazon Web Services Management Console, the custom password policy option <b>Allow
                    users to change their own password</b> gives IAM users permissions to
                    <code>iam:ChangePassword</code> for only their user and to the
                    <code>iam:GetAccountPasswordPolicy</code> action. This option does not attach a
                permissions policy to each user, rather the permissions are applied at the
                account-level for all users by IAM. IAM users with
                    <code>iam:ChangePassword</code> permission and active access keys can reset
                their own expired console password using the CLI or API.</p>
        </note>")
    @as("HardExpiry")
    hardExpiry: option<booleanObjectType>,
    @ocaml.doc("<p>Specifies the number of previous passwords that IAM users are prevented from
            reusing.</p>
        <p>If you do not specify a value for this parameter, then the operation uses the default
            value of <code>0</code>. The result is that IAM users are not prevented from reusing
            previous passwords.</p>")
    @as("PasswordReusePrevention")
    passwordReusePrevention: option<passwordReusePreventionType>,
    @ocaml.doc("<p>The number of days that an IAM user password is valid.</p>
        <p>If you do not specify a value for this parameter, then the operation uses the default
            value of <code>0</code>. The result is that IAM user passwords never expire.</p>")
    @as("MaxPasswordAge")
    maxPasswordAge: option<maxPasswordAgeType>,
    @ocaml.doc("<p> Allows all IAM users in your account to use the Amazon Web Services Management Console to change their own
            passwords. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_enable-user-change.html\">Permitting
                IAM users to change their own passwords</a> in the
                <i>IAM User Guide</i>.</p>
        <p>If you do not specify a value for this parameter, then the operation uses the default
            value of <code>false</code>. The result is that IAM users in the account do not
            automatically have permissions to change their own password.</p>")
    @as("AllowUsersToChangePassword")
    allowUsersToChangePassword: option<booleanType>,
    @ocaml.doc("<p>Specifies whether IAM user passwords must contain at least one lowercase character
            from the ISO basic Latin alphabet (a to z).</p>
        <p>If you do not specify a value for this parameter, then the operation uses the default
            value of <code>false</code>. The result is that passwords do not require at least one
            lowercase character.</p>")
    @as("RequireLowercaseCharacters")
    requireLowercaseCharacters: option<booleanType>,
    @ocaml.doc("<p>Specifies whether IAM user passwords must contain at least one uppercase character
            from the ISO basic Latin alphabet (A to Z).</p>
        <p>If you do not specify a value for this parameter, then the operation uses the default
            value of <code>false</code>. The result is that passwords do not require at least one
            uppercase character.</p>")
    @as("RequireUppercaseCharacters")
    requireUppercaseCharacters: option<booleanType>,
    @ocaml.doc("<p>Specifies whether IAM user passwords must contain at least one numeric character (0
            to 9).</p>
        <p>If you do not specify a value for this parameter, then the operation uses the default
            value of <code>false</code>. The result is that passwords do not require at least one
            numeric character.</p>")
    @as("RequireNumbers")
    requireNumbers: option<booleanType>,
    @ocaml.doc("<p>Specifies whether IAM user passwords must contain at least one of the following
            non-alphanumeric characters:</p>
        <p>! @ # $ % ^ & * ( ) _ + - = [ ] { } | '</p>
        <p>If you do not specify a value for this parameter, then the operation uses the default
            value of <code>false</code>. The result is that passwords do not require at least one
            symbol character.</p>")
    @as("RequireSymbols")
    requireSymbols: option<booleanType>,
    @ocaml.doc("<p>The minimum number of characters allowed in an IAM user password.</p>
        <p>If you do not specify a value for this parameter, then the operation uses the default
            value of <code>6</code>.</p>")
    @as("MinimumPasswordLength")
    minimumPasswordLength: option<minimumPasswordLengthType>,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "UpdateAccountPasswordPolicyCommand"
  let make = (
    ~hardExpiry=?,
    ~passwordReusePrevention=?,
    ~maxPasswordAge=?,
    ~allowUsersToChangePassword=?,
    ~requireLowercaseCharacters=?,
    ~requireUppercaseCharacters=?,
    ~requireNumbers=?,
    ~requireSymbols=?,
    ~minimumPasswordLength=?,
    (),
  ) =>
    new({
      hardExpiry,
      passwordReusePrevention,
      maxPasswordAge,
      allowUsersToChangePassword,
      requireLowercaseCharacters,
      requireUppercaseCharacters,
      requireNumbers,
      requireSymbols,
      minimumPasswordLength,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateAccessKey = {
  type t
  type request = {
    @ocaml.doc("<p> The status you want to assign to the secret access key. <code>Active</code> means
            that the key can be used for programmatic calls to Amazon Web Services, while <code>Inactive</code>
            means that the key cannot be used.</p>")
    @as("Status")
    status: statusType,
    @ocaml.doc("<p>The access key ID of the secret access key you want to update.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can 
    consist of any upper or lowercased letter or digit.</p>")
    @as("AccessKeyId")
    accessKeyId: accessKeyIdType,
    @ocaml.doc("<p>The name of the user whose key you want to update.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<existingUserNameType>,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UpdateAccessKeyCommand"
  let make = (~status, ~accessKeyId, ~userName=?, ()) => new({status, accessKeyId, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetSecurityTokenServicePreferences = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the global endpoint token. Version 1 tokens are valid only in Amazon Web Services Regions that are available by default. These tokens do not work in
            manually enabled Regions, such as Asia Pacific (Hong Kong). Version 2 tokens are valid
            in all Regions. However, version 2 tokens are longer and might affect systems where you
            temporarily store tokens.</p>
        <p>For information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html\">Activating and
                deactivating STS in an Amazon Web Services Region</a> in the
                <i>IAM User Guide</i>.</p>")
    @as("GlobalEndpointTokenVersion")
    globalEndpointTokenVersion: globalEndpointTokenVersion,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "SetSecurityTokenServicePreferencesCommand"
  let make = (~globalEndpointTokenVersion, ()) =>
    new({globalEndpointTokenVersion: globalEndpointTokenVersion})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetDefaultPolicyVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the policy to set as the default (operative) version.</p>
        <p>For more information about managed policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for managed
                policies</a> in the <i>IAM User Guide</i>.</p>")
    @as("VersionId")
    versionId: policyVersionIdType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy whose default version you want to
            set.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "SetDefaultPolicyVersionCommand"
  let make = (~versionId, ~policyArn, ()) => new({versionId, policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ResyncMFADevice = {
  type t
  type request = {
    @ocaml.doc("<p>A subsequent authentication code emitted by the device.</p>
        <p>The format for this parameter is a sequence of six digits.</p>")
    @as("AuthenticationCode2")
    authenticationCode2: authenticationCodeType,
    @ocaml.doc("<p>An authentication code emitted by the device.</p>
        <p>The format for this parameter is a sequence of six digits.</p>")
    @as("AuthenticationCode1")
    authenticationCode1: authenticationCodeType,
    @ocaml.doc("<p>Serial number that uniquely identifies the MFA device.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("SerialNumber")
    serialNumber: serialNumberType,
    @ocaml.doc("<p>The name of the user whose MFA device you want to resynchronize.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "ResyncMFADeviceCommand"
  let make = (~authenticationCode2, ~authenticationCode1, ~serialNumber, ~userName, ()) =>
    new({authenticationCode2, authenticationCode1, serialNumber, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RemoveUserFromGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the user to remove.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
    @ocaml.doc("<p>The name of the group to update.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "RemoveUserFromGroupCommand"
  let make = (~userName, ~groupName, ()) => new({userName, groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RemoveRoleFromInstanceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the role to remove.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
    @ocaml.doc("<p>The name of the instance profile to update.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("InstanceProfileName")
    instanceProfileName: instanceProfileNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "RemoveRoleFromInstanceProfileCommand"
  let make = (~roleName, ~instanceProfileName, ()) => new({roleName, instanceProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RemoveClientIDFromOpenIDConnectProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The client ID (also known as audience) to remove from the IAM OIDC provider
            resource. For more information about client IDs, see <a>CreateOpenIDConnectProvider</a>.</p>")
    @as("ClientID")
    clientID: clientIDType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource to remove the
            client ID from. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("OpenIDConnectProviderArn")
    openIDConnectProviderArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "RemoveClientIDFromOpenIDConnectProviderCommand"
  let make = (~clientID, ~openIDConnectProviderArn, ()) => new({clientID, openIDConnectProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutUserPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The policy document.</p>

        <p>You must provide policies in JSON format in IAM. However, for CloudFormation
            templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
            IAM.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PolicyDocument")
    policyDocument: policyDocumentType,
    @ocaml.doc("<p>The name of the policy document.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyName")
    policyName: policyNameType,
    @ocaml.doc("<p>The name of the user to associate the policy with.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "PutUserPolicyCommand"
  let make = (~policyDocument, ~policyName, ~userName, ()) =>
    new({policyDocument, policyName, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutUserPermissionsBoundary = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the policy that is used to set the permissions boundary for the
            user.</p>")
    @as("PermissionsBoundary")
    permissionsBoundary: arnType,
    @ocaml.doc("<p>The name (friendly name, not ARN) of the IAM user for which you want to set the
            permissions boundary.</p>")
    @as("UserName")
    userName: userNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "PutUserPermissionsBoundaryCommand"
  let make = (~permissionsBoundary, ~userName, ()) => new({permissionsBoundary, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutRolePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The policy document.</p>
        <p>You must provide policies in JSON format in IAM. However, for CloudFormation
            templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
            IAM.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PolicyDocument")
    policyDocument: policyDocumentType,
    @ocaml.doc("<p>The name of the policy document.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyName")
    policyName: policyNameType,
    @ocaml.doc("<p>The name of the role to associate the policy with.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "PutRolePolicyCommand"
  let make = (~policyDocument, ~policyName, ~roleName, ()) =>
    new({policyDocument, policyName, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutRolePermissionsBoundary = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the policy that is used to set the permissions boundary for the
            role.</p>")
    @as("PermissionsBoundary")
    permissionsBoundary: arnType,
    @ocaml.doc("<p>The name (friendly name, not ARN) of the IAM role for which you want to set the
            permissions boundary.</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "PutRolePermissionsBoundaryCommand"
  let make = (~permissionsBoundary, ~roleName, ()) => new({permissionsBoundary, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutGroupPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The policy document.</p>

        <p>You must provide policies in JSON format in IAM. However, for CloudFormation templates
            formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always
            converts a YAML policy to JSON format before submitting it to = IAM.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PolicyDocument")
    policyDocument: policyDocumentType,
    @ocaml.doc("<p>The name of the policy document.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyName")
    policyName: policyNameType,
    @ocaml.doc("<p>The name of the group to associate the policy with.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-.</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "PutGroupPolicyCommand"
  let make = (~policyDocument, ~policyName, ~groupName, ()) =>
    new({policyDocument, policyName, groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetUserPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the policy document to get.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyName")
    policyName: policyNameType,
    @ocaml.doc("<p>The name of the user who the policy is associated with.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetUserPolicy</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>The policy document.</p>

        <p>IAM stores policies in JSON format. However, resources that were created using CloudFormation
            templates can be formatted in YAML. CloudFormation always converts a YAML policy to JSON format
            before submitting it to IAM.</p>")
    @as("PolicyDocument")
    policyDocument: policyDocumentType,
    @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: policyNameType,
    @ocaml.doc("<p>The user the policy is associated with.</p>") @as("UserName")
    userName: existingUserNameType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetUserPolicyCommand"
  let make = (~policyName, ~userName, ()) => new({policyName, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRolePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the policy document to get.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyName")
    policyName: policyNameType,
    @ocaml.doc("<p>The name of the role associated with the policy.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetRolePolicy</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>The policy document.</p>
        <p>IAM stores policies in JSON format. However, resources that were created using CloudFormation
            templates can be formatted in YAML. CloudFormation always converts a YAML policy to JSON format
            before submitting it to IAM.</p>")
    @as("PolicyDocument")
    policyDocument: policyDocumentType,
    @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: policyNameType,
    @ocaml.doc("<p>The role the policy is associated with.</p>") @as("RoleName")
    roleName: roleNameType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetRolePolicyCommand"
  let make = (~policyName, ~roleName, ()) => new({policyName, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetGroupPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the policy document to get.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyName")
    policyName: policyNameType,
    @ocaml.doc("<p>The name of the group the policy is associated with.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetGroupPolicy</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>The policy document.</p>

        <p>IAM stores policies in JSON format. However, resources that were created using CloudFormation
            templates can be formatted in YAML. CloudFormation always converts a YAML policy to JSON format
            before submitting it to IAM.</p>")
    @as("PolicyDocument")
    policyDocument: policyDocumentType,
    @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: policyNameType,
    @ocaml.doc("<p>The group the policy is associated with.</p>") @as("GroupName")
    groupName: groupNameType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetGroupPolicyCommand"
  let make = (~policyName, ~groupName, ()) => new({policyName, groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCredentialReport = {
  type t
  type request = {.}
  @ocaml.doc("<p>Contains the response to a successful <a>GetCredentialReport</a> request.
    </p>")
  type response = {
    @ocaml.doc(
      "<p> The date and time when the credential report was created, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>.</p>"
    )
    @as("GeneratedTime")
    generatedTime: option<dateType>,
    @ocaml.doc("<p>The format (MIME type) of the credential report.</p>") @as("ReportFormat")
    reportFormat: option<reportFormatType>,
    @ocaml.doc("<p>Contains the credential report. The report is Base64-encoded.</p>")
    @as("Content")
    content: option<reportContentType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetCredentialReportCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GenerateServiceLastAccessedDetails = {
  type t
  type request = {
    @ocaml.doc("<p>The level of detail that you want to generate. You can specify whether you want to
            generate information about the last attempt to access services or actions. If you
            specify service-level granularity, this operation generates only service data. If you
            specify action-level granularity, it generates service and action data. If you don't
            include this optional parameter, the operation generates service data.</p>")
    @as("Granularity")
    granularity: option<accessAdvisorUsageGranularityType>,
    @ocaml.doc("<p>The ARN of the IAM resource (user, group, role, or managed policy) used to generate
            information about when the resource was last used in an attempt to access an Amazon Web Services
            service.</p>")
    @as("Arn")
    arn: arnType,
  }
  type response = {
    @ocaml.doc("<p>The <code>JobId</code> that you can use in the <a>GetServiceLastAccessedDetails</a> or <a>GetServiceLastAccessedDetailsWithEntities</a> operations. The
                <code>JobId</code> returned by <code>GenerateServiceLastAccessedDetail</code> must
            be used by the same role within a session, or by the same user when used to call
                <code>GetServiceLastAccessedDetail</code>.</p>")
    @as("JobId")
    jobId: option<jobIDType>,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "GenerateServiceLastAccessedDetailsCommand"
  let make = (~arn, ~granularity=?, ()) => new({granularity, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GenerateOrganizationsAccessReport = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the Organizations service control policy (SCP). This parameter is
            optional.</p>
        <p>This ID is used to generate information about when an account principal that is
            limited by the SCP attempted to access an Amazon Web Services service.</p>")
    @as("OrganizationsPolicyId")
    organizationsPolicyId: option<organizationsPolicyIdType>,
    @ocaml.doc("<p>The path of the Organizations entity (root, OU, or account). You can build an entity path
            using the known structure of your organization. For example, assume that your account ID
            is <code>123456789012</code> and its parent OU ID is <code>ou-rge0-awsabcde</code>. The
            organization root ID is <code>r-f6g7h8i9j0example</code> and your organization ID is
                <code>o-a1b2c3d4e5</code>. Your entity path is
                <code>o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-rge0-awsabcde/123456789012</code>.</p>")
    @as("EntityPath")
    entityPath: organizationsEntityPathType,
  }
  type response = {
    @ocaml.doc(
      "<p>The job identifier that you can use in the <a>GetOrganizationsAccessReport</a> operation.</p>"
    )
    @as("JobId")
    jobId: option<jobIDType>,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "GenerateOrganizationsAccessReportCommand"
  let make = (~entityPath, ~organizationsPolicyId=?, ()) => new({organizationsPolicyId, entityPath})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GenerateCredentialReport = {
  type t
  type request = {.}
  @ocaml.doc("<p>Contains the response to a successful <a>GenerateCredentialReport</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>Information about the credential report.</p>") @as("Description")
    description: option<reportStateDescriptionType>,
    @ocaml.doc("<p>Information about the state of the credential report.</p>") @as("State")
    state: option<reportStateType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GenerateCredentialReportCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module EnableMFADevice = {
  type t
  type request = {
    @ocaml.doc("<p>A subsequent authentication code emitted by the device.</p>
        <p>The format for this parameter is a string of six digits.</p>
        <important>
            <p>Submit your request immediately after generating the authentication codes. If you
                generate the codes and then wait too long to submit the request, the MFA device
                successfully associates with the user but the MFA device becomes out of sync. This
                happens because time-based one-time passwords (TOTP) expire after a short period of
                time. If this happens, you can <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html\">resync the
                device</a>.</p>
        </important>")
    @as("AuthenticationCode2")
    authenticationCode2: authenticationCodeType,
    @ocaml.doc("<p>An authentication code emitted by the device. </p>
        <p>The format for this parameter is a string of six digits.</p>
        <important>
            <p>Submit your request immediately after generating the authentication codes. If you
                generate the codes and then wait too long to submit the request, the MFA device
                successfully associates with the user but the MFA device becomes out of sync. This
                happens because time-based one-time passwords (TOTP) expire after a short period of
                time. If this happens, you can <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html\">resync the
                device</a>.</p>
        </important>")
    @as("AuthenticationCode1")
    authenticationCode1: authenticationCodeType,
    @ocaml.doc("<p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
            the serial number is the device ARN.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of upper and lowercase alphanumeric characters with no spaces. You can also include any of the 
    following characters: =,.@:/-</p>")
    @as("SerialNumber")
    serialNumber: serialNumberType,
    @ocaml.doc("<p>The name of the IAM user for whom you want to enable the MFA device.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "EnableMFADeviceCommand"
  let make = (~authenticationCode2, ~authenticationCode1, ~serialNumber, ~userName, ()) =>
    new({authenticationCode2, authenticationCode1, serialNumber, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DetachUserPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
    @ocaml.doc("<p>The name (friendly name, not ARN) of the IAM user to detach the policy from.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DetachUserPolicyCommand"
  let make = (~policyArn, ~userName, ()) => new({policyArn, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DetachRolePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
    @ocaml.doc("<p>The name (friendly name, not ARN) of the IAM role to detach the policy from.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DetachRolePolicyCommand"
  let make = (~policyArn, ~roleName, ()) => new({policyArn, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DetachGroupPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
    @ocaml.doc("<p>The name (friendly name, not ARN) of the IAM group to detach the policy from.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DetachGroupPolicyCommand"
  let make = (~policyArn, ~groupName, ()) => new({policyArn, groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteVirtualMFADevice = {
  type t
  type request = {
    @ocaml.doc("<p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
            the serial number is the same as the ARN.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of upper and lowercase alphanumeric characters with no spaces. You can also include any of the 
    following characters: =,.@:/-</p>")
    @as("SerialNumber")
    serialNumber: serialNumberType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteVirtualMFADeviceCommand"
  let make = (~serialNumber, ()) => new({serialNumber: serialNumber})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteUserPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name identifying the policy document to delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyName")
    policyName: policyNameType,
    @ocaml.doc("<p>The name (friendly name, not ARN) identifying the user that the policy is embedded
            in.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteUserPolicyCommand"
  let make = (~policyName, ~userName, ()) => new({policyName, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteUserPermissionsBoundary = {
  type t
  type request = {
    @ocaml.doc("<p>The name (friendly name, not ARN) of the IAM user from which you want to remove the
            permissions boundary.</p>")
    @as("UserName")
    userName: userNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "DeleteUserPermissionsBoundaryCommand"
  let make = (~userName, ()) => new({userName: userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteUser = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the user to delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteUserCommand"
  let make = (~userName, ()) => new({userName: userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteSigningCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the signing certificate to delete.</p>
        <p>The format of this parameter, as described by its <a href=\"http://wikipedia.org/wiki/regex\">regex</a> pattern, is a string of
            characters that can be upper- or lower-cased letters or digits.</p>")
    @as("CertificateId")
    certificateId: certificateIdType,
    @ocaml.doc("<p>The name of the user the signing certificate belongs to.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<existingUserNameType>,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteSigningCertificateCommand"
  let make = (~certificateId, ~userName=?, ()) => new({certificateId, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteServiceSpecificCredential = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the service-specific credential. You can get this value by
            calling <a>ListServiceSpecificCredentials</a>.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can 
    consist of any upper or lowercased letter or digit.</p>")
    @as("ServiceSpecificCredentialId")
    serviceSpecificCredentialId: serviceSpecificCredentialId,
    @ocaml.doc("<p>The name of the IAM user associated with the service-specific credential. If this
            value is not specified, then the operation assumes the user whose credentials are used
            to call the operation.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<userNameType>,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "DeleteServiceSpecificCredentialCommand"
  let make = (~serviceSpecificCredentialId, ~userName=?, ()) =>
    new({serviceSpecificCredentialId, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteServiceLinkedRole = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the service-linked role to be deleted.</p>") @as("RoleName")
    roleName: roleNameType,
  }
  type response = {
    @ocaml.doc("<p>The deletion task identifier that you can use to check the status of the deletion.
            This identifier is returned in the format
                <code>task/aws-service-role/<service-principal-name>/<role-name>/<task-uuid></code>.</p>")
    @as("DeletionTaskId")
    deletionTaskId: deletionTaskIdType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteServiceLinkedRoleCommand"
  let make = (~roleName, ()) => new({roleName: roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteServerCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the server certificate you want to delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("ServerCertificateName")
    serverCertificateName: serverCertificateNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteServerCertificateCommand"
  let make = (~serverCertificateName, ()) => new({serverCertificateName: serverCertificateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteSSHPublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the SSH public key.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can 
    consist of any upper or lowercased letter or digit.</p>")
    @as("SSHPublicKeyId")
    sshpublicKeyId: publicKeyIdType,
    @ocaml.doc("<p>The name of the IAM user associated with the SSH public key.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteSSHPublicKeyCommand"
  let make = (~sshpublicKeyId, ~userName, ()) => new({sshpublicKeyId, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteSAMLProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SAML provider to delete.</p>")
    @as("SAMLProviderArn")
    samlproviderArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteSAMLProviderCommand"
  let make = (~samlproviderArn, ()) => new({samlproviderArn: samlproviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteRolePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the inline policy to delete from the specified IAM role.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyName")
    policyName: policyNameType,
    @ocaml.doc("<p>The name (friendly name, not ARN) identifying the role that the policy is embedded
            in.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteRolePolicyCommand"
  let make = (~policyName, ~roleName, ()) => new({policyName, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteRolePermissionsBoundary = {
  type t
  type request = {
    @ocaml.doc("<p>The name (friendly name, not ARN) of the IAM role from which you want to remove the
            permissions boundary.</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "DeleteRolePermissionsBoundaryCommand"
  let make = (~roleName, ()) => new({roleName: roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteRole = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the role to delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteRoleCommand"
  let make = (~roleName, ()) => new({roleName: roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeletePolicyVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The policy version to delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that 
    consists of the lowercase letter 'v' followed by one or two digits, and optionally 
    followed by a period '.' and a string of letters and digits.</p>
        <p>For more information about managed policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for managed
                policies</a> in the <i>IAM User Guide</i>.</p>")
    @as("VersionId")
    versionId: policyVersionIdType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy from which you want to delete a
            version.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeletePolicyVersionCommand"
  let make = (~versionId, ~policyArn, ()) => new({versionId, policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeletePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy you want to delete.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeletePolicyCommand"
  let make = (~policyArn, ()) => new({policyArn: policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteOpenIDConnectProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM OpenID Connect provider resource object to
            delete. You can get a list of OpenID Connect provider resource ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>")
    @as("OpenIDConnectProviderArn")
    openIDConnectProviderArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "DeleteOpenIDConnectProviderCommand"
  let make = (~openIDConnectProviderArn, ()) =>
    new({openIDConnectProviderArn: openIDConnectProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteLoginProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the user whose password you want to delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteLoginProfileCommand"
  let make = (~userName, ()) => new({userName: userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteInstanceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the instance profile to delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("InstanceProfileName")
    instanceProfileName: instanceProfileNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteInstanceProfileCommand"
  let make = (~instanceProfileName, ()) => new({instanceProfileName: instanceProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteGroupPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name identifying the policy document to delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyName")
    policyName: policyNameType,
    @ocaml.doc("<p>The name (friendly name, not ARN) identifying the group that the policy is embedded
            in.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteGroupPolicyCommand"
  let make = (~policyName, ~groupName, ()) => new({policyName, groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the IAM group to delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteGroupCommand"
  let make = (~groupName, ()) => new({groupName: groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAccountPasswordPolicy = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "DeleteAccountPasswordPolicyCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAccountAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the account alias to delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of 
    lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have 
    two dashes in a row.</p>")
    @as("AccountAlias")
    accountAlias: accountAliasType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteAccountAliasCommand"
  let make = (~accountAlias, ()) => new({accountAlias: accountAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAccessKey = {
  type t
  type request = {
    @ocaml.doc("<p>The access key ID for the access key ID and secret access key you want to
            delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can 
    consist of any upper or lowercased letter or digit.</p>")
    @as("AccessKeyId")
    accessKeyId: accessKeyIdType,
    @ocaml.doc("<p>The name of the user whose access key pair you want to delete.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<existingUserNameType>,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeleteAccessKeyCommand"
  let make = (~accessKeyId, ~userName=?, ()) => new({accessKeyId, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeactivateMFADevice = {
  type t
  type request = {
    @ocaml.doc("<p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
            the serial number is the device ARN.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of upper and lowercase alphanumeric characters with no spaces. You can also include any of the 
    following characters: =,.@:/-</p>")
    @as("SerialNumber")
    serialNumber: serialNumberType,
    @ocaml.doc("<p>The name of the user whose MFA device you want to deactivate.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "DeactivateMFADeviceCommand"
  let make = (~serialNumber, ~userName, ()) => new({serialNumber, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateAccountAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The account alias to create.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of 
    lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have 
    two dashes in a row.</p>")
    @as("AccountAlias")
    accountAlias: accountAliasType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreateAccountAliasCommand"
  let make = (~accountAlias, ()) => new({accountAlias: accountAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ChangePassword = {
  type t
  type request = {
    @ocaml.doc("<p>The new password. The new password must conform to the Amazon Web Services account's password
            policy, if one exists.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    that is used to validate this parameter is a string of characters. That string can include almost any printable 
    ASCII character from the space (<code>\\u0020</code>) through the end of the ASCII character range (<code>\\u00FF</code>). 
    You can also include the tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>) 
    characters. Any of these characters are valid in a password. However, many tools, such 
    as the Amazon Web Services Management Console, might restrict the ability to type certain characters because they have 
    special meaning within that tool.</p>")
    @as("NewPassword")
    newPassword: passwordType,
    @ocaml.doc("<p>The IAM user's current password.</p>") @as("OldPassword")
    oldPassword: passwordType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "ChangePasswordCommand"
  let make = (~newPassword, ~oldPassword, ()) => new({newPassword, oldPassword})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AttachUserPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
    @ocaml.doc("<p>The name (friendly name, not ARN) of the IAM user to attach the policy to.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "AttachUserPolicyCommand"
  let make = (~policyArn, ~userName, ()) => new({policyArn, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AttachRolePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
    @ocaml.doc("<p>The name (friendly name, not ARN) of the role to attach the policy to.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "AttachRolePolicyCommand"
  let make = (~policyArn, ~roleName, ()) => new({policyArn, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AttachGroupPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
    @ocaml.doc("<p>The name (friendly name, not ARN) of the group to attach the policy to.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "AttachGroupPolicyCommand"
  let make = (~policyArn, ~groupName, ()) => new({policyArn, groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AddUserToGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the user to add.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
    @ocaml.doc("<p>The name of the group to update.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "AddUserToGroupCommand"
  let make = (~userName, ~groupName, ()) => new({userName, groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AddRoleToInstanceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the role to add.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
    @ocaml.doc("<p>The name of the instance profile to update.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("InstanceProfileName")
    instanceProfileName: instanceProfileNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "AddRoleToInstanceProfileCommand"
  let make = (~roleName, ~instanceProfileName, ()) => new({roleName, instanceProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AddClientIDToOpenIDConnectProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The client ID (also known as audience) to add to the IAM OpenID Connect provider
            resource.</p>")
    @as("ClientID")
    clientID: clientIDType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC) provider resource to
            add the client ID to. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>")
    @as("OpenIDConnectProviderArn")
    openIDConnectProviderArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "AddClientIDToOpenIDConnectProviderCommand"
  let make = (~clientID, ~openIDConnectProviderArn, ()) => new({clientID, openIDConnectProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UploadSigningCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The contents of the signing certificate.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("CertificateBody")
    certificateBody: certificateBodyType,
    @ocaml.doc("<p>The name of the user the signing certificate is for.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<existingUserNameType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>UploadSigningCertificate</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>Information about the certificate.</p>") @as("Certificate")
    certificate: signingCertificate,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "UploadSigningCertificateCommand"
  let make = (~certificateBody, ~userName=?, ()) => new({certificateBody, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UploadSSHPublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
            The minimum bit-length of the public key is 2048 bits. For example, you can generate a
            2048-bit key, and the resulting PEM file is 1679 bytes long.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("SSHPublicKeyBody")
    sshpublicKeyBody: publicKeyMaterialType,
    @ocaml.doc("<p>The name of the IAM user to associate the SSH public key with.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>UploadSSHPublicKey</a>
      request.</p>")
  type response = {
    @ocaml.doc("<p>Contains information about the SSH public key.</p>") @as("SSHPublicKey")
    sshpublicKey: option<sshpublicKey>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "UploadSSHPublicKeyCommand"
  let make = (~sshpublicKeyBody, ~userName, ()) => new({sshpublicKeyBody, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateOpenIDConnectProviderThumbprint = {
  type t
  type request = {
    @ocaml.doc("<p>A list of certificate thumbprints that are associated with the specified IAM OpenID
            Connect provider. For more information, see <a>CreateOpenIDConnectProvider</a>. </p>")
    @as("ThumbprintList")
    thumbprintList: thumbprintListType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource object for which
            you want to update the thumbprint. You can get a list of OIDC provider ARNs by using the
                <a>ListOpenIDConnectProviders</a> operation.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("OpenIDConnectProviderArn")
    openIDConnectProviderArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "UpdateOpenIDConnectProviderThumbprintCommand"
  let make = (~thumbprintList, ~openIDConnectProviderArn, ()) =>
    new({thumbprintList, openIDConnectProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagUser = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key names as a simple array of strings. The tags with matching keys are
      removed from the specified user.</p>")
    @as("TagKeys")
    tagKeys: tagKeyListType,
    @ocaml.doc("<p>The name of the IAM user from which you want to remove tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UntagUserCommand"
  let make = (~tagKeys, ~userName, ()) => new({tagKeys, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagServerCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key names as a simple array of strings. The tags with matching keys are
      removed from the specified IAM server certificate.</p>")
    @as("TagKeys")
    tagKeys: tagKeyListType,
    @ocaml.doc("<p>The name of the IAM server certificate from which you want to remove tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("ServerCertificateName")
    serverCertificateName: serverCertificateNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UntagServerCertificateCommand"
  let make = (~tagKeys, ~serverCertificateName, ()) => new({tagKeys, serverCertificateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagSAMLProvider = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key names as a simple array of strings. The tags with matching keys are
      removed from the specified SAML identity provider.</p>")
    @as("TagKeys")
    tagKeys: tagKeyListType,
    @ocaml.doc("<p>The ARN of the SAML identity provider in IAM from which you want to remove
      tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("SAMLProviderArn")
    samlproviderArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UntagSAMLProviderCommand"
  let make = (~tagKeys, ~samlproviderArn, ()) => new({tagKeys, samlproviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagRole = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key names as a simple array of strings. The tags with matching keys are
      removed from the specified role.</p>")
    @as("TagKeys")
    tagKeys: tagKeyListType,
    @ocaml.doc("<p>The name of the IAM role from which you want to remove tags.</p>
         <p>This parameter accepts (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UntagRoleCommand"
  let make = (~tagKeys, ~roleName, ()) => new({tagKeys, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key names as a simple array of strings. The tags with matching keys are
      removed from the specified policy.</p>")
    @as("TagKeys")
    tagKeys: tagKeyListType,
    @ocaml.doc("<p>The ARN of the IAM customer managed policy from which you want to remove
      tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyArn")
    policyArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UntagPolicyCommand"
  let make = (~tagKeys, ~policyArn, ()) => new({tagKeys, policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagOpenIDConnectProvider = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key names as a simple array of strings. The tags with matching keys are
      removed from the specified OIDC provider.</p>")
    @as("TagKeys")
    tagKeys: tagKeyListType,
    @ocaml.doc("<p>The ARN of the OIDC provider in IAM from which you want to remove tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("OpenIDConnectProviderArn")
    openIDConnectProviderArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "UntagOpenIDConnectProviderCommand"
  let make = (~tagKeys, ~openIDConnectProviderArn, ()) => new({tagKeys, openIDConnectProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagMFADevice = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key names as a simple array of strings. The tags with matching keys are
      removed from the specified instance profile.</p>")
    @as("TagKeys")
    tagKeys: tagKeyListType,
    @ocaml.doc("<p>The unique identifier for the IAM virtual MFA device from which you want to remove
      tags. For virtual MFA devices, the serial number is the same as the ARN.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("SerialNumber")
    serialNumber: serialNumberType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UntagMFADeviceCommand"
  let make = (~tagKeys, ~serialNumber, ()) => new({tagKeys, serialNumber})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagInstanceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key names as a simple array of strings. The tags with matching keys are
      removed from the specified instance profile.</p>")
    @as("TagKeys")
    tagKeys: tagKeyListType,
    @ocaml.doc("<p>The name of the IAM instance profile from which you want to remove tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("InstanceProfileName")
    instanceProfileName: instanceProfileNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "UntagInstanceProfileCommand"
  let make = (~tagKeys, ~instanceProfileName, ()) => new({tagKeys, instanceProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ResetServiceSpecificCredential = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the service-specific credential.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can 
    consist of any upper or lowercased letter or digit.</p>")
    @as("ServiceSpecificCredentialId")
    serviceSpecificCredentialId: serviceSpecificCredentialId,
    @ocaml.doc("<p>The name of the IAM user associated with the service-specific credential. If this
            value is not specified, then the operation assumes the user whose credentials are used
            to call the operation.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<userNameType>,
  }
  type response = {
    @ocaml.doc("<p>A structure with details about the updated service-specific credential, including the
            new password.</p>
        <important>
            <p>This is the <b>only</b> time that you can access the
                password. You cannot recover the password later, but you can reset it again.</p>
        </important>")
    @as("ServiceSpecificCredential")
    serviceSpecificCredential: option<serviceSpecificCredential>,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "ResetServiceSpecificCredentialCommand"
  let make = (~serviceSpecificCredentialId, ~userName=?, ()) =>
    new({serviceSpecificCredentialId, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListUserPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the user to list policies for.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListUserPolicies</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of policy names.</p>") @as("PolicyNames") policyNames: policyNameListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListUserPoliciesCommand"
  let make = (~userName, ~maxItems=?, ~marker=?, ()) => new({maxItems, marker, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRolePolicies = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the role to list policies for.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListRolePolicies</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of policy names.</p>") @as("PolicyNames") policyNames: policyNameListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListRolePoliciesCommand"
  let make = (~roleName, ~maxItems=?, ~marker=?, ()) => new({maxItems, marker, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListGroupPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the group to list policies for.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListGroupPolicies</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of policy names.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyNames")
    policyNames: policyNameListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListGroupPoliciesCommand"
  let make = (~groupName, ~maxItems=?, ~marker=?, ()) => new({maxItems, marker, groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAccountAliases = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListAccountAliases</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of aliases associated with the account. Amazon Web Services supports only one alias per
            account.</p>")
    @as("AccountAliases")
    accountAliases: accountAliasListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListAccountAliasesCommand"
  let make = (~maxItems=?, ~marker=?, ()) => new({maxItems, marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSSHPublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the public key encoding format to use in the response. To retrieve the
            public key in ssh-rsa format, use <code>SSH</code>. To retrieve the public key in PEM
            format, use <code>PEM</code>.</p>")
    @as("Encoding")
    encoding: encodingType,
    @ocaml.doc("<p>The unique identifier for the SSH public key.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can 
    consist of any upper or lowercased letter or digit.</p>")
    @as("SSHPublicKeyId")
    sshpublicKeyId: publicKeyIdType,
    @ocaml.doc("<p>The name of the IAM user associated with the SSH public key.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetSSHPublicKey</a>
      request.</p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the SSH public key.</p>")
    @as("SSHPublicKey")
    sshpublicKey: option<sshpublicKey>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetSSHPublicKeyCommand"
  let make = (~encoding, ~sshpublicKeyId, ~userName, ()) =>
    new({encoding, sshpublicKeyId, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPolicyVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Identifies the policy version to retrieve.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that 
    consists of the lowercase letter 'v' followed by one or two digits, and optionally 
    followed by a period '.' and a string of letters and digits.</p>")
    @as("VersionId")
    versionId: policyVersionIdType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the managed policy that you want information
            about.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetPolicyVersion</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the policy version.</p>")
    @as("PolicyVersion")
    policyVersion: option<policyVersion>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetPolicyVersionCommand"
  let make = (~versionId, ~policyArn, ()) => new({versionId, policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLoginProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the user whose login profile you want to retrieve.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetLoginProfile</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A structure containing the user name and the profile creation date for the
            user.</p>")
    @as("LoginProfile")
    loginProfile: loginProfile,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetLoginProfileCommand"
  let make = (~userName, ()) => new({userName: userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetContextKeysForPrincipalPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>An optional list of additional policies for which you want the list of context keys
            that are referenced.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PolicyInputList")
    policyInputList: option<simulationPolicyListType>,
    @ocaml.doc("<p>The ARN of a user, group, or role whose policies contain the context keys that you
            want listed. If you specify a user, the list includes context keys that are found in all
            policies that are attached to the user. The list also includes all groups that the user
            is a member of. If you pick a group or a role, then it includes only those context keys
            that are found in policies attached to that entity. Note that all parameters are shown
            in unencoded form here for clarity, but must be URL encoded to be included as a part of
            a real HTML request.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicySourceArn")
    policySourceArn: arnType,
  }
  @ocaml.doc(
    "<p>Contains the response to a successful <a>GetContextKeysForPrincipalPolicy</a> or <a>GetContextKeysForCustomPolicy</a> request. </p>"
  )
  type response = {
    @ocaml.doc("<p>The list of context keys that are referenced in the input policies.</p>")
    @as("ContextKeyNames")
    contextKeyNames: option<contextKeyNamesResultListType>,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "GetContextKeysForPrincipalPolicyCommand"
  let make = (~policySourceArn, ~policyInputList=?, ()) => new({policyInputList, policySourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetContextKeysForCustomPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>A list of policies for which you want the list of context keys referenced in those
            policies. Each document is specified as a string containing the complete, valid JSON
            text of an IAM policy.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PolicyInputList")
    policyInputList: simulationPolicyListType,
  }
  @ocaml.doc(
    "<p>Contains the response to a successful <a>GetContextKeysForPrincipalPolicy</a> or <a>GetContextKeysForCustomPolicy</a> request. </p>"
  )
  type response = {
    @ocaml.doc("<p>The list of context keys that are referenced in the input policies.</p>")
    @as("ContextKeyNames")
    contextKeyNames: option<contextKeyNamesResultListType>,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "GetContextKeysForCustomPolicyCommand"
  let make = (~policyInputList, ()) => new({policyInputList: policyInputList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAccountSummary = {
  type t
  type request = {.}
  @ocaml.doc("<p>Contains the response to a successful <a>GetAccountSummary</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A set of key–value pairs containing information about IAM entity usage and
            IAM quotas.</p>")
    @as("SummaryMap")
    summaryMap: option<summaryMapType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetAccountSummaryCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAccountPasswordPolicy = {
  type t
  type request = {.}
  @ocaml.doc("<p>Contains the response to a successful <a>GetAccountPasswordPolicy</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>A structure that contains details about the account's password policy.</p>")
    @as("PasswordPolicy")
    passwordPolicy: passwordPolicy,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetAccountPasswordPolicyCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAccessKeyLastUsed = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of an access key.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can 
    consist of any upper or lowercased letter or digit.</p>")
    @as("AccessKeyId")
    accessKeyId: accessKeyIdType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetAccessKeyLastUsed</a> request.
      It is also returned as a member of the <a>AccessKeyMetaData</a> structure returned
      by the <a>ListAccessKeys</a> action.</p>")
  type response = {
    @ocaml.doc("<p>Contains information about the last time the access key was used.</p>")
    @as("AccessKeyLastUsed")
    accessKeyLastUsed: option<accessKeyLastUsed>,
    @ocaml.doc("<p>The name of the IAM user that owns this access key.</p>
        <p></p>")
    @as("UserName")
    userName: option<existingUserNameType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetAccessKeyLastUsedCommand"
  let make = (~accessKeyId, ()) => new({accessKeyId: accessKeyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateServiceSpecificCredential = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Amazon Web Services service that is to be associated with the credentials. The
            service you specify here is the only service that can be accessed using these
            credentials.</p>")
    @as("ServiceName")
    serviceName: serviceName,
    @ocaml.doc("<p>The name of the IAM user that is to be associated with the credentials. The new
            service-specific credentials have the same permissions as the associated user except
            that they can be used only to access the specified service.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains information about the newly created service-specific
            credential.</p>
        <important>
            <p>This is the only time that the password for this credential set is available. It
                cannot be recovered later. Instead, you must reset the password with <a>ResetServiceSpecificCredential</a>.</p>
        </important>")
    @as("ServiceSpecificCredential")
    serviceSpecificCredential: option<serviceSpecificCredential>,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "CreateServiceSpecificCredentialCommand"
  let make = (~serviceName, ~userName, ()) => new({serviceName, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePolicyVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether to set this version as the policy's default version.</p>
        <p>When this parameter is <code>true</code>, the new policy version becomes the operative
            version. That is, it becomes the version that is in effect for the IAM users, groups,
            and roles that the policy is attached to.</p>
        <p>For more information about managed policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for managed
                policies</a> in the <i>IAM User Guide</i>.</p>")
    @as("SetAsDefault")
    setAsDefault: option<booleanType>,
    @ocaml.doc("<p>The JSON policy document that you want to use as the content for this new version of
            the policy.</p>
        <p>You must provide policies in JSON format in IAM. However, for CloudFormation
            templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
            IAM.</p>
        <p>The maximum length of the policy document that you can pass in this operation,
            including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length\">IAM and STS character quotas</a>.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PolicyDocument")
    policyDocument: policyDocumentType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy to which you want to add a new
            version.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>CreatePolicyVersion</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the new policy version.</p>")
    @as("PolicyVersion")
    policyVersion: option<policyVersion>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreatePolicyVersionCommand"
  let make = (~policyDocument, ~policyArn, ~setAsDefault=?, ()) =>
    new({setAsDefault, policyDocument, policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateLoginProfile = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether the user is required to set a new password on next sign-in.</p>"
    )
    @as("PasswordResetRequired")
    passwordResetRequired: option<booleanType>,
    @ocaml.doc("<p>The new password for the user.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    that is used to validate this parameter is a string of characters. That string can include almost any printable 
    ASCII character from the space (<code>\\u0020</code>) through the end of the ASCII character range (<code>\\u00FF</code>). 
    You can also include the tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>) 
    characters. Any of these characters are valid in a password. However, many tools, such 
    as the Amazon Web Services Management Console, might restrict the ability to type certain characters because they have 
    special meaning within that tool.</p>")
    @as("Password")
    password: passwordType,
    @ocaml.doc("<p>The name of the IAM user to create a password for. The user must already
            exist.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>CreateLoginProfile</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A structure containing the user name and password create date.</p>")
    @as("LoginProfile")
    loginProfile: loginProfile,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreateLoginProfileCommand"
  let make = (~password, ~userName, ~passwordResetRequired=?, ()) =>
    new({passwordResetRequired, password, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the group to create. Do not include the path in this value.</p>
        <p>IAM user, group, role, and policy names must be unique within the account. Names are
            not distinguished by case. For example, you cannot create resources named both
            \"MyResource\" and \"myresource\".</p>")
    @as("GroupName")
    groupName: groupNameType,
    @ocaml.doc("<p> The path to the group. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
                identifiers</a> in the <i>IAM User Guide</i>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("Path")
    path: option<pathType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>CreateGroup</a> request. </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the new group.</p>") @as("Group")
    group: group,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreateGroupCommand"
  let make = (~groupName, ~path=?, ()) => new({groupName, path})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAccessKey = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the IAM user that the new key will belong to.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<existingUserNameType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>CreateAccessKey</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A structure with details about the access key.</p>") @as("AccessKey")
    accessKey: accessKey,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreateAccessKeyCommand"
  let make = (~userName=?, ()) => new({userName: userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UploadServerCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the new IAM server certificate resource.
      Each tag consists of a key name and an associated value. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>
         <note>
            <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
   fails and the resource is not created.</p>
         </note>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The contents of the certificate chain. This is typically a concatenation of the
            PEM-encoded public key certificates of the chain.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("CertificateChain")
    certificateChain: option<certificateChainType>,
    @ocaml.doc("<p>The contents of the private key in PEM-encoded format.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PrivateKey")
    privateKey: privateKeyType,
    @ocaml.doc("<p>The contents of the public key certificate in PEM-encoded format.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("CertificateBody")
    certificateBody: certificateBodyType,
    @ocaml.doc("<p>The name for the server certificate. Do not include the path in this value. The name
            of the certificate cannot contain any spaces.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("ServerCertificateName")
    serverCertificateName: serverCertificateNameType,
    @ocaml.doc("<p>The path for the server certificate. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
                identifiers</a> in the <i>IAM User Guide</i>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/).
            This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>
        <note>
            <p> If you are uploading a server certificate specifically for use with Amazon
                CloudFront distributions, you must specify a path using the <code>path</code>
                parameter. The path must begin with <code>/cloudfront</code> and must include a
                trailing slash (for example, <code>/cloudfront/test/</code>).</p>
        </note>")
    @as("Path")
    path: option<pathType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>UploadServerCertificate</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>A list of tags that are attached to the new IAM server certificate. The returned list of tags is sorted by tag key.
      For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The meta information of the uploaded server certificate without its certificate body,
            certificate chain, and private key.</p>")
    @as("ServerCertificateMetadata")
    serverCertificateMetadata: option<serverCertificateMetadata>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "UploadServerCertificateCommand"
  let make = (
    ~privateKey,
    ~certificateBody,
    ~serverCertificateName,
    ~tags=?,
    ~certificateChain=?,
    ~path=?,
    (),
  ) => new({tags, certificateChain, privateKey, certificateBody, serverCertificateName, path})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagUser = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of tags that you want to attach to the IAM user. Each tag consists of a key name and an associated value.</p>"
    )
    @as("Tags")
    tags: tagListType,
    @ocaml.doc("<p>The name of the IAM user to which you want to add tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "TagUserCommand"
  let make = (~tags, ~userName, ()) => new({tags, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagServerCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags that you want to attach to the IAM server certificate.
      Each tag consists of a key name and an associated value.</p>")
    @as("Tags")
    tags: tagListType,
    @ocaml.doc("<p>The name of the IAM server certificate to which you want to add tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("ServerCertificateName")
    serverCertificateName: serverCertificateNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "TagServerCertificateCommand"
  let make = (~tags, ~serverCertificateName, ()) => new({tags, serverCertificateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagSAMLProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags that you want to attach to the SAML identity provider in IAM.
      Each tag consists of a key name and an associated value.</p>")
    @as("Tags")
    tags: tagListType,
    @ocaml.doc("<p>The ARN of the SAML identity provider in IAM to which you want to add tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("SAMLProviderArn")
    samlproviderArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "TagSAMLProviderCommand"
  let make = (~tags, ~samlproviderArn, ()) => new({tags, samlproviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagRole = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of tags that you want to attach to the IAM role. Each tag consists of a key name and an associated value.</p>"
    )
    @as("Tags")
    tags: tagListType,
    @ocaml.doc("<p>The name of the IAM role to which you want to add tags.</p>
         <p>This parameter accepts (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "TagRoleCommand"
  let make = (~tags, ~roleName, ()) => new({tags, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags that you want to attach to the IAM customer managed policy.
      Each tag consists of a key name and an associated value.</p>")
    @as("Tags")
    tags: tagListType,
    @ocaml.doc("<p>The ARN of the IAM customer managed policy to which you want to add tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyArn")
    policyArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "TagPolicyCommand"
  let make = (~tags, ~policyArn, ()) => new({tags, policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagOpenIDConnectProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags that you want to attach to the OIDC identity provider in IAM.
      Each tag consists of a key name and an associated value.</p>")
    @as("Tags")
    tags: tagListType,
    @ocaml.doc("<p>The ARN of the OIDC identity provider in IAM to which you want to add tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("OpenIDConnectProviderArn")
    openIDConnectProviderArn: arnType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "TagOpenIDConnectProviderCommand"
  let make = (~tags, ~openIDConnectProviderArn, ()) => new({tags, openIDConnectProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagMFADevice = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags that you want to attach to the IAM virtual MFA device.
      Each tag consists of a key name and an associated value.</p>")
    @as("Tags")
    tags: tagListType,
    @ocaml.doc("<p>The unique identifier for the IAM virtual MFA device to which you want to add tags.
      For virtual MFA devices, the serial number is the same as the ARN.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("SerialNumber")
    serialNumber: serialNumberType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "TagMFADeviceCommand"
  let make = (~tags, ~serialNumber, ()) => new({tags, serialNumber})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagInstanceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags that you want to attach to the IAM instance profile.
      Each tag consists of a key name and an associated value.</p>")
    @as("Tags")
    tags: tagListType,
    @ocaml.doc("<p>The name of the IAM instance profile to which you want to add tags.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("InstanceProfileName")
    instanceProfileName: instanceProfileNameType,
  }
  type response = {.}
  @module("@aws-sdk/client-iam") @new external new: request => t = "TagInstanceProfileCommand"
  let make = (~tags, ~instanceProfileName, ()) => new({tags, instanceProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListUserTags = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the IAM user whose tags you want to see.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc(
      "<p>The list of tags that are currently attached to the user. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>"
    )
    @as("Tags")
    tags: tagListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListUserTagsCommand"
  let make = (~userName, ~maxItems=?, ~marker=?, ()) => new({maxItems, marker, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSigningCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the IAM user whose signing certificates you want to examine.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<existingUserNameType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListSigningCertificates</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of the user's signing certificate information.</p>") @as("Certificates")
    certificates: certificateListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListSigningCertificatesCommand"
  let make = (~maxItems=?, ~marker=?, ~userName=?, ()) => new({maxItems, marker, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServiceSpecificCredentials = {
  type t
  type request = {
    @ocaml.doc("<p>Filters the returned results to only those for the specified Amazon Web Services service. If not
            specified, then Amazon Web Services returns service-specific credentials for all services.</p>")
    @as("ServiceName")
    serviceName: option<serviceName>,
    @ocaml.doc("<p>The name of the user whose service-specific credentials you want information about. If
            this value is not specified, then the operation assumes the user whose credentials are
            used to call the operation.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<userNameType>,
  }
  type response = {
    @ocaml.doc("<p>A list of structures that each contain details about a service-specific
            credential.</p>")
    @as("ServiceSpecificCredentials")
    serviceSpecificCredentials: option<serviceSpecificCredentialsListType>,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "ListServiceSpecificCredentialsCommand"
  let make = (~serviceName=?, ~userName=?, ()) => new({serviceName, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServerCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p> The path prefix for filtering the results. For example:
                <code>/company/servercerts</code> would get all server certificates for which the
            path starts with <code>/company/servercerts</code>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
            all server certificates. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("PathPrefix")
    pathPrefix: option<pathPrefixType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListServerCertificates</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of server certificates.</p>") @as("ServerCertificateMetadataList")
    serverCertificateMetadataList: serverCertificateMetadataListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListServerCertificatesCommand"
  let make = (~maxItems=?, ~marker=?, ~pathPrefix=?, ()) => new({maxItems, marker, pathPrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServerCertificateTags = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the IAM server certificate whose tags you want to see.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("ServerCertificateName")
    serverCertificateName: serverCertificateNameType,
  }
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>The list of tags that are currently attached to the IAM server certificate.
      Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>")
    @as("Tags")
    tags: tagListType,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "ListServerCertificateTagsCommand"
  let make = (~serverCertificateName, ~maxItems=?, ~marker=?, ()) =>
    new({maxItems, marker, serverCertificateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSSHPublicKeys = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the IAM user to list SSH public keys for. If none is specified, the
                <code>UserName</code> field is determined implicitly based on the Amazon Web Services access key
            used to sign the request.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<userNameType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListSSHPublicKeys</a>
      request.</p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of the SSH public keys assigned to IAM user.</p>") @as("SSHPublicKeys")
    sshpublicKeys: option<sshpublicKeyListType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListSSHPublicKeysCommand"
  let make = (~maxItems=?, ~marker=?, ~userName=?, ()) => new({maxItems, marker, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSAMLProviders = {
  type t
  type request = {.}
  @ocaml.doc("<p>Contains the response to a successful <a>ListSAMLProviders</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>The list of SAML provider resource objects defined in IAM for this Amazon Web Services
            account.</p>")
    @as("SAMLProviderList")
    samlproviderList: option<samlproviderListType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListSAMLProvidersCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSAMLProviderTags = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The ARN of the Security Assertion Markup Language (SAML) identity provider whose tags
      you want to see.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("SAMLProviderArn")
    samlproviderArn: arnType,
  }
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>The list of tags that are currently attached to the Security Assertion Markup Language
      (SAML) identity provider. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>")
    @as("Tags")
    tags: tagListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListSAMLProviderTagsCommand"
  let make = (~samlproviderArn, ~maxItems=?, ~marker=?, ()) =>
    new({maxItems, marker, samlproviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRoleTags = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the IAM role for which you want to see the list of tags.</p>
         <p>This parameter accepts (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc(
      "<p>The list of tags that are currently attached to the role. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>"
    )
    @as("Tags")
    tags: tagListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListRoleTagsCommand"
  let make = (~roleName, ~maxItems=?, ~marker=?, ()) => new({maxItems, marker, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPolicyVersions = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy for which you want the
            versions.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListPolicyVersions</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of policy versions.</p>
        <p>For more information about managed policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for managed
                policies</a> in the <i>IAM User Guide</i>.</p>")
    @as("Versions")
    versions: option<policyDocumentVersionListType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListPolicyVersionsCommand"
  let make = (~policyArn, ~maxItems=?, ~marker=?, ()) => new({maxItems, marker, policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPolicyTags = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The ARN of the IAM customer managed policy whose tags you want to see.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("PolicyArn")
    policyArn: arnType,
  }
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>The list of tags that are currently attached to the IAM customer managed policy.
      Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>")
    @as("Tags")
    tags: tagListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListPolicyTagsCommand"
  let make = (~policyArn, ~maxItems=?, ~marker=?, ()) => new({maxItems, marker, policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListOpenIDConnectProviders = {
  type t
  type request = {.}
  @ocaml.doc("<p>Contains the response to a successful <a>ListOpenIDConnectProviders</a>
      request. </p>")
  type response = {
    @ocaml.doc(
      "<p>The list of IAM OIDC provider resource objects defined in the Amazon Web Services account.</p>"
    )
    @as("OpenIDConnectProviderList")
    openIDConnectProviderList: option<openIDConnectProviderListType>,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "ListOpenIDConnectProvidersCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListOpenIDConnectProviderTags = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The ARN of the OpenID Connect (OIDC) identity provider whose tags you want to
      see.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("OpenIDConnectProviderArn")
    openIDConnectProviderArn: arnType,
  }
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>The list of tags that are currently attached to the OpenID Connect (OIDC) identity
      provider. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>")
    @as("Tags")
    tags: tagListType,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "ListOpenIDConnectProviderTagsCommand"
  let make = (~openIDConnectProviderArn, ~maxItems=?, ~marker=?, ()) =>
    new({maxItems, marker, openIDConnectProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListMFADevices = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the user whose MFA devices you want to list.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<existingUserNameType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListMFADevices</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of MFA devices.</p>") @as("MFADevices") mfadevices: mfaDeviceListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListMFADevicesCommand"
  let make = (~maxItems=?, ~marker=?, ~userName=?, ()) => new({maxItems, marker, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListMFADeviceTags = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The unique identifier for the IAM virtual MFA device whose tags you want to see.
      For virtual MFA devices, the serial number is the same as the ARN.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("SerialNumber")
    serialNumber: serialNumberType,
  }
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc(
      "<p>The list of tags that are currently attached to the virtual MFA device. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>"
    )
    @as("Tags")
    tags: tagListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListMFADeviceTagsCommand"
  let make = (~serialNumber, ~maxItems=?, ~marker=?, ()) => new({maxItems, marker, serialNumber})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListInstanceProfileTags = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the IAM instance profile whose tags you want to see.</p>
         <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("InstanceProfileName")
    instanceProfileName: instanceProfileNameType,
  }
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc(
      "<p>The list of tags that are currently attached to the IAM instance profile. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>"
    )
    @as("Tags")
    tags: tagListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListInstanceProfileTagsCommand"
  let make = (~instanceProfileName, ~maxItems=?, ~marker=?, ()) =>
    new({maxItems, marker, instanceProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListGroupsForUser = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the user to list groups for.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: existingUserNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListGroupsForUser</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of groups.</p>") @as("Groups") groups: groupListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListGroupsForUserCommand"
  let make = (~userName, ~maxItems=?, ~marker=?, ()) => new({maxItems, marker, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListGroups = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p> The path prefix for filtering the results. For example, the prefix
                <code>/division_abc/subdivision_xyz/</code> gets all groups whose path starts with
                <code>/division_abc/subdivision_xyz/</code>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
            all groups. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("PathPrefix")
    pathPrefix: option<pathPrefixType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListGroups</a> request. </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of groups.</p>") @as("Groups") groups: groupListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListGroupsCommand"
  let make = (~maxItems=?, ~marker=?, ~pathPrefix=?, ()) => new({maxItems, marker, pathPrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEntitiesForPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The policy usage method to use for filtering the results.</p>
        <p>To list only permissions policies,
                set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only
            the policies used to set permissions boundaries, set the value
                to <code>PermissionsBoundary</code>.</p>
        <p>This parameter is optional. If it is not included, all policies are returned. </p>")
    @as("PolicyUsageFilter")
    policyUsageFilter: option<policyUsageType>,
    @ocaml.doc("<p>The path prefix for filtering the results. This parameter is optional. If it is not
            included, it defaults to a slash (/), listing all entities.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("PathPrefix")
    pathPrefix: option<pathType>,
    @ocaml.doc("<p>The entity type to use for filtering the results.</p>
        <p>For example, when <code>EntityFilter</code> is <code>Role</code>, only the roles that
            are attached to the specified policy are returned. This parameter is optional. If it is
            not included, all attached entities (users, groups, and roles) are returned. The
            argument for this parameter must be one of the valid values listed below.</p>")
    @as("EntityFilter")
    entityFilter: option<entityType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM policy for which you want the
            versions.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListEntitiesForPolicy</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of IAM roles that the policy is attached to.</p>") @as("PolicyRoles")
    policyRoles: option<policyRoleListType>,
    @ocaml.doc("<p>A list of IAM users that the policy is attached to.</p>") @as("PolicyUsers")
    policyUsers: option<policyUserListType>,
    @ocaml.doc("<p>A list of IAM groups that the policy is attached to.</p>") @as("PolicyGroups")
    policyGroups: option<policyGroupListType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListEntitiesForPolicyCommand"
  let make = (
    ~policyArn,
    ~maxItems=?,
    ~marker=?,
    ~policyUsageFilter=?,
    ~pathPrefix=?,
    ~entityFilter=?,
    (),
  ) => new({maxItems, marker, policyUsageFilter, pathPrefix, entityFilter, policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAttachedUserPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The path prefix for filtering the results. This parameter is optional. If it is not
            included, it defaults to a slash (/), listing all policies.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("PathPrefix")
    pathPrefix: option<policyPathType>,
    @ocaml.doc("<p>The name (friendly name, not ARN) of the user to list attached policies for.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: userNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListAttachedUserPolicies</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of the attached policies.</p>") @as("AttachedPolicies")
    attachedPolicies: option<attachedPoliciesListType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListAttachedUserPoliciesCommand"
  let make = (~userName, ~maxItems=?, ~marker=?, ~pathPrefix=?, ()) =>
    new({maxItems, marker, pathPrefix, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAttachedRolePolicies = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The path prefix for filtering the results. This parameter is optional. If it is not
            included, it defaults to a slash (/), listing all policies.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("PathPrefix")
    pathPrefix: option<policyPathType>,
    @ocaml.doc("<p>The name (friendly name, not ARN) of the role to list attached policies for.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListAttachedRolePolicies</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of the attached policies.</p>") @as("AttachedPolicies")
    attachedPolicies: option<attachedPoliciesListType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListAttachedRolePoliciesCommand"
  let make = (~roleName, ~maxItems=?, ~marker=?, ~pathPrefix=?, ()) =>
    new({maxItems, marker, pathPrefix, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAttachedGroupPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The path prefix for filtering the results. This parameter is optional. If it is not
            included, it defaults to a slash (/), listing all policies.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("PathPrefix")
    pathPrefix: option<policyPathType>,
    @ocaml.doc("<p>The name (friendly name, not ARN) of the group to list attached policies for.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListAttachedGroupPolicies</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of the attached policies.</p>") @as("AttachedPolicies")
    attachedPolicies: option<attachedPoliciesListType>,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "ListAttachedGroupPoliciesCommand"
  let make = (~groupName, ~maxItems=?, ~marker=?, ~pathPrefix=?, ()) =>
    new({maxItems, marker, pathPrefix, groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAccessKeys = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the user.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<existingUserNameType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListAccessKeys</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of objects containing metadata about the access keys.</p>")
    @as("AccessKeyMetadata")
    accessKeyMetadata: accessKeyMetadataListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListAccessKeysCommand"
  let make = (~maxItems=?, ~marker=?, ~userName=?, ()) => new({maxItems, marker, userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSAMLProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get
            information about.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("SAMLProviderArn")
    samlproviderArn: arnType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetSAMLProvider</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A list of tags that are attached to the specified IAM SAML provider. The returned list of tags is sorted by tag key.
      For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The expiration date and time for the SAML provider.</p>") @as("ValidUntil")
    validUntil: option<dateType>,
    @ocaml.doc("<p>The date and time when the SAML provider was created.</p>") @as("CreateDate")
    createDate: option<dateType>,
    @ocaml.doc(
      "<p>The XML metadata document that includes information about an identity provider.</p>"
    )
    @as("SAMLMetadataDocument")
    samlmetadataDocument: option<samlmetadataDocumentType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetSAMLProviderCommand"
  let make = (~samlproviderArn, ()) => new({samlproviderArn: samlproviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetOrganizationsAccessReport = {
  type t
  type request = {
    @ocaml.doc("<p>The key that is used to sort the results. If you choose the namespace key, the results
            are returned in alphabetical order. If you choose the time key, the results are sorted
            numerically by the date and time.</p>")
    @as("SortKey")
    sortKey: option<sortKeyType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc(
      "<p>The identifier of the request generated by the <a>GenerateOrganizationsAccessReport</a> operation.</p>"
    )
    @as("JobId")
    jobId: jobIDType,
  }
  type response = {
    @as("ErrorDetails") errorDetails: option<errorDetails>,
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>An object that contains details about the most recent attempt to access the
            service.</p>")
    @as("AccessDetails")
    accessDetails: option<accessDetails>,
    @ocaml.doc("<p>The number of services that account principals are allowed but did not attempt to
            access.</p>")
    @as("NumberOfServicesNotAccessed")
    numberOfServicesNotAccessed: option<integerType>,
    @ocaml.doc("<p>The number of services that the applicable SCPs allow account principals to
            access.</p>")
    @as("NumberOfServicesAccessible")
    numberOfServicesAccessible: option<integerType>,
    @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
                format</a>, when the generated report job was completed or failed.</p>
        <p>This field is null if the job is still in progress, as indicated by a job status value
            of <code>IN_PROGRESS</code>.</p>")
    @as("JobCompletionDate")
    jobCompletionDate: option<dateType>,
    @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
                format</a>, when the report job was created.</p>")
    @as("JobCreationDate")
    jobCreationDate: dateType,
    @ocaml.doc("<p>The status of the job.</p>") @as("JobStatus") jobStatus: jobStatusType,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "GetOrganizationsAccessReportCommand"
  let make = (~jobId, ~sortKey=?, ~marker=?, ~maxItems=?, ()) =>
    new({sortKey, marker, maxItems, jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetOpenIDConnectProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get
            information for. You can get a list of OIDC provider resource ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("OpenIDConnectProviderArn")
    openIDConnectProviderArn: arnType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetOpenIDConnectProvider</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>A list of tags that are attached to the specified IAM OIDC provider. The returned list of tags is sorted by tag key.
      For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The date and time when the IAM OIDC provider resource object was created in the
            Amazon Web Services account.</p>")
    @as("CreateDate")
    createDate: option<dateType>,
    @ocaml.doc("<p>A list of certificate thumbprints that are associated with the specified IAM OIDC
            provider resource object. For more information, see <a>CreateOpenIDConnectProvider</a>. </p>")
    @as("ThumbprintList")
    thumbprintList: option<thumbprintListType>,
    @ocaml.doc("<p>A list of client IDs (also known as audiences) that are associated with the specified
            IAM OIDC provider resource object. For more information, see <a>CreateOpenIDConnectProvider</a>.</p>")
    @as("ClientIDList")
    clientIDList: option<clientIDListType>,
    @ocaml.doc("<p>The URL that the IAM OIDC provider resource object is associated with. For more
            information, see <a>CreateOpenIDConnectProvider</a>.</p>")
    @as("Url")
    url: option<openIDConnectProviderUrlType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetOpenIDConnectProviderCommand"
  let make = (~openIDConnectProviderArn, ()) =>
    new({openIDConnectProviderArn: openIDConnectProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSAMLProvider = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the new IAM SAML provider.
      Each tag consists of a key name and an associated value. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>
         <note>
            <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
   fails and the resource is not created.</p>
         </note>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The name of the provider to create.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("Name")
    name: samlproviderNameType,
    @ocaml.doc("<p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The
            document includes the issuer's name, expiration information, and keys that can be used
            to validate the SAML authentication response (assertions) that are received from the
            IdP. You must generate the metadata document using the identity management software that
            is used as your organization's IdP.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html\">About SAML 2.0-based
                federation</a> in the <i>IAM User Guide</i>
        </p>")
    @as("SAMLMetadataDocument")
    samlmetadataDocument: samlmetadataDocumentType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>CreateSAMLProvider</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A list of tags that are attached to the new IAM SAML provider. The returned list of tags is sorted by tag key.
      For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the new SAML provider resource in IAM.</p>")
    @as("SAMLProviderArn")
    samlproviderArn: option<arnType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreateSAMLProviderCommand"
  let make = (~name, ~samlmetadataDocument, ~tags=?, ()) => new({tags, name, samlmetadataDocument})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateOpenIDConnectProvider = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the new IAM OpenID Connect (OIDC) provider.
      Each tag consists of a key name and an associated value. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>
         <note>
            <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
   fails and the resource is not created.</p>
         </note>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>A list of server certificate thumbprints for the OpenID Connect (OIDC) identity
            provider's server certificates. Typically this list includes only one entry. However,
            IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain
            multiple thumbprints if the identity provider is rotating certificates.</p>
        <p>The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509
            certificate used by the domain where the OpenID Connect provider makes its keys
            available. It is always a 40-character string.</p>
        <p>You must provide at least one thumbprint when creating an IAM OIDC provider. For
            example, assume that the OIDC provider is <code>server.example.com</code> and the
            provider stores its keys at https://keys.server.example.com/openid-connect. In that
            case, the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate
            used by <code>https://keys.server.example.com.</code>
         </p>
        <p>For more information about obtaining the OIDC provider thumbprint, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html\">Obtaining the
                thumbprint for an OpenID Connect provider</a> in the <i>IAM User
                Guide</i>.</p>")
    @as("ThumbprintList")
    thumbprintList: thumbprintListType,
    @ocaml.doc("<p>Provides a list of client IDs, also known as audiences. When a mobile or web app
            registers with an OpenID Connect provider, they establish a value that identifies the
            application. This is the value that's sent as the <code>client_id</code> parameter on
            OAuth requests.</p>
        <p>You can register multiple client IDs with the same provider. For example, you might
            have multiple applications that use the same OIDC provider. You cannot register more
            than 100 client IDs with a single IAM OIDC provider.</p>
        <p>There is no defined format for a client ID. The
                <code>CreateOpenIDConnectProviderRequest</code> operation accepts client IDs up to
            255 characters long.</p>")
    @as("ClientIDList")
    clientIDList: option<clientIDListType>,
    @ocaml.doc("<p>The URL of the identity provider. The URL must begin with <code>https://</code> and
            should correspond to the <code>iss</code> claim in the provider's OpenID Connect ID
            tokens. Per the OIDC standard, path components are allowed but query parameters are not.
            Typically the URL consists of only a hostname, like
                <code>https://server.example.org</code> or <code>https://example.com</code>. The URL
            should not contain a port number. </p>
        <p>You cannot register the same provider multiple times in a single Amazon Web Services account. If you
            try to submit a URL that has already been used for an OpenID Connect provider in the
            Amazon Web Services account, you will get an error.</p>")
    @as("Url")
    url: openIDConnectProviderUrlType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>CreateOpenIDConnectProvider</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>A list of tags that are attached to the new IAM OIDC provider. The returned list of
      tags is sorted by tag key. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the new IAM OpenID Connect provider that is
            created. For more information, see <a>OpenIDConnectProviderListEntry</a>.
        </p>")
    @as("OpenIDConnectProviderArn")
    openIDConnectProviderArn: option<arnType>,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "CreateOpenIDConnectProviderCommand"
  let make = (~thumbprintList, ~url, ~tags=?, ~clientIDList=?, ()) =>
    new({tags, thumbprintList, clientIDList, url})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateRoleDescription = {
  type t
  type request = {
    @ocaml.doc("<p>The new description that you want to apply to the specified role.</p>")
    @as("Description")
    description: roleDescriptionType,
    @ocaml.doc("<p>The name of the role that you want to modify.</p>") @as("RoleName")
    roleName: roleNameType,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains details about the modified role.</p>") @as("Role")
    role: option<role>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "UpdateRoleDescriptionCommand"
  let make = (~description, ~roleName, ()) => new({description, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUser = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the user to get information about.</p>
        <p>This parameter is optional. If it is not included, it defaults to the user making the
            request. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("UserName")
    userName: option<existingUserNameType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetUser</a> request. </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the IAM user.</p>
        <important>
            <p>Due to a service issue, password last used data does not include password use from
                May 3, 2018 22:50 PDT to May 23, 2018 14:08 PDT. This affects <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_finding-unused.html\">last sign-in</a> dates shown in the IAM console and password last used
                dates in the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html\">IAM credential
                    report</a>, and returned by this operation. If users signed in during the
                affected time, the password last used date that is returned is the date the user
                last signed in before May 3, 2018. For users that signed in after May 23, 2018 14:08
                PDT, the returned password last used date is accurate.</p>
            <p>You can use password last used information to identify unused credentials for
                deletion. For example, you might delete users who did not sign in to Amazon Web Services in the
                last 90 days. In cases like this, we recommend that you adjust your evaluation
                window to include dates after May 23, 2018. Alternatively, if your users use access
                keys to access Amazon Web Services programmatically you can refer to access key last used
                information because it is accurate for all dates. </p>
        </important>")
    @as("User")
    user: user,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetUserCommand"
  let make = (~userName=?, ()) => new({userName: userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetServiceLastAccessedDetailsWithEntities = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>The service namespace for an Amazon Web Services service. Provide the service namespace to learn
            when the IAM entity last attempted to access the specified service.</p>
        <p>To learn the service namespace for a service, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html\">Actions, resources, and condition keys for Amazon Web Services services</a> in the
                <i>IAM User Guide</i>. Choose the name of the service to view
            details for that service. In the first paragraph, find the service prefix. For example,
                <code>(service prefix: a4b)</code>. For more information about service namespaces,
            see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">Amazon Web Services
                service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespaceType,
    @ocaml.doc("<p>The ID of the request generated by the <code>GenerateServiceLastAccessedDetails</code>
            operation.</p>")
    @as("JobId")
    jobId: jobIDType,
  }
  type response = {
    @ocaml.doc("<p>An object that contains details about the reason the operation failed.</p>")
    @as("Error")
    error: option<errorDetails>,
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>An <code>EntityDetailsList</code> object that contains details about when an IAM
            entity (user or role) used group or policy permissions in an attempt to access the
            specified Amazon Web Services service.</p>")
    @as("EntityDetailsList")
    entityDetailsList: entityDetailsListType,
    @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
                format</a>, when the generated report job was completed or failed.</p>
        <p>This field is null if the job is still in progress, as indicated by a job status value
            of <code>IN_PROGRESS</code>.</p>")
    @as("JobCompletionDate")
    jobCompletionDate: dateType,
    @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
                format</a>, when the report job was created.</p>")
    @as("JobCreationDate")
    jobCreationDate: dateType,
    @ocaml.doc("<p>The status of the job.</p>") @as("JobStatus") jobStatus: jobStatusType,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "GetServiceLastAccessedDetailsWithEntitiesCommand"
  let make = (~serviceNamespace, ~jobId, ~marker=?, ~maxItems=?, ()) =>
    new({marker, maxItems, serviceNamespace, jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetServerCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the server certificate you want to retrieve information about.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("ServerCertificateName")
    serverCertificateName: serverCertificateNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetServerCertificate</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the server certificate.</p>")
    @as("ServerCertificate")
    serverCertificate: serverCertificate,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetServerCertificateCommand"
  let make = (~serverCertificateName, ()) => new({serverCertificateName: serverCertificateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRole = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the IAM role to get information about.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetRole</a> request. </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the IAM role.</p>") @as("Role") role: role,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetRoleCommand"
  let make = (~roleName, ()) => new({roleName: roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the managed policy that you want information
            about.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicyArn")
    policyArn: arnType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetPolicy</a> request. </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the policy.</p>") @as("Policy")
    policy: option<policy>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetPolicyCommand"
  let make = (~policyArn, ()) => new({policyArn: policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateUser = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the new user. Each tag consists of a key name and an associated value.
      For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>
         <note>
            <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
   fails and the resource is not created.</p>
         </note>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The ARN of the policy that is used to set the permissions boundary for the
            user.</p>")
    @as("PermissionsBoundary")
    permissionsBoundary: option<arnType>,
    @ocaml.doc("<p>The name of the user to create.</p>
        <p>IAM user, group, role, and policy names must be unique within the account. Names are
            not distinguished by case. For example, you cannot create resources named both
            \"MyResource\" and \"myresource\".</p>")
    @as("UserName")
    userName: userNameType,
    @ocaml.doc("<p> The path for the user name. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
                identifiers</a> in the <i>IAM User Guide</i>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("Path")
    path: option<pathType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>CreateUser</a> request. </p>")
  type response = {
    @ocaml.doc("<p>A structure with details about the new IAM user.</p>") @as("User")
    user: option<user>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreateUserCommand"
  let make = (~userName, ~tags=?, ~permissionsBoundary=?, ~path=?, ()) =>
    new({tags, permissionsBoundary, userName, path})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateServiceLinkedRole = {
  type t
  type request = {
    @ocaml.doc("<p></p>
        <p>A string that you provide, which is combined with the service-provided prefix to form
            the complete role name. If you make multiple requests for the same service, then you
            must supply a different <code>CustomSuffix</code> for each request. Otherwise the
            request fails with a duplicate role name error. For example, you could add
                <code>-1</code> or <code>-debug</code> to the suffix.</p>
        <p>Some services do not support the <code>CustomSuffix</code> parameter. If you provide
            an optional suffix and the operation fails, try the operation again without the
            suffix.</p>")
    @as("CustomSuffix")
    customSuffix: option<customSuffixType>,
    @ocaml.doc("<p>The description of the role.</p>") @as("Description")
    description: option<roleDescriptionType>,
    @ocaml.doc("<p>The service principal for the Amazon Web Services service to which this role is attached. You use a
            string similar to a URL but without the http:// in front. For example:
                <code>elasticbeanstalk.amazonaws.com</code>. </p>
        <p>Service principals are unique and case-sensitive. To find the exact service principal
            for your service-linked role, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html\">Amazon Web Services services
                that work with IAM</a> in the <i>IAM User Guide</i>. Look for
            the services that have <b>Yes </b>in the <b>Service-Linked Role</b> column. Choose the <b>Yes</b> link to view the service-linked role documentation for that
            service.</p>")
    @as("AWSServiceName")
    awsserviceName: groupNameType,
  }
  type response = {
    @ocaml.doc("<p>A <a>Role</a> object that contains details about the newly created
            role.</p>")
    @as("Role")
    role: option<role>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreateServiceLinkedRoleCommand"
  let make = (~awsserviceName, ~customSuffix=?, ~description=?, ()) =>
    new({customSuffix, description, awsserviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRole = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the new role. Each tag consists of a key name and an associated value.
      For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>
         <note>
            <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
   fails and the resource is not created.</p>
         </note>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The ARN of the policy that is used to set the permissions boundary for the
            role.</p>")
    @as("PermissionsBoundary")
    permissionsBoundary: option<arnType>,
    @ocaml.doc("<p>The maximum session duration (in seconds) that you want to set for the specified role.
            If you do not specify a value for this setting, the default maximum of one hour is
            applied. This setting can have a value from 1 hour to 12 hours.</p>
        <p>Anyone who assumes the role from the or API can use the <code>DurationSeconds</code>
            API parameter or the <code>duration-seconds</code> CLI parameter to request a longer
            session. The <code>MaxSessionDuration</code> setting determines the maximum duration
            that can be requested using the <code>DurationSeconds</code> parameter. If users don't
            specify a value for the <code>DurationSeconds</code> parameter, their security
            credentials are valid for one hour by default. This applies when you use the
                <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI
            operations but does not apply when you use those operations to create a console URL. For
            more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html\">Using IAM roles</a> in the <i>IAM User Guide</i>.</p>")
    @as("MaxSessionDuration")
    maxSessionDuration: option<roleMaxSessionDurationType>,
    @ocaml.doc("<p>A description of the role.</p>") @as("Description")
    description: option<roleDescriptionType>,
    @ocaml.doc("<p>The trust relationship policy document that grants an entity permission to assume the
            role.</p>
        <p>In IAM, you must provide a JSON policy that has been converted to a string. However,
            for CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML
            format. CloudFormation always converts a YAML policy to JSON format before submitting it to
            IAM.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>
        <p> Upon success, the response includes the same trust policy in JSON format.</p>")
    @as("AssumeRolePolicyDocument")
    assumeRolePolicyDocument: policyDocumentType,
    @ocaml.doc("<p>The name of the role to create.</p>
        <p>IAM user, group, role, and policy names must be unique within the account. Names are
            not distinguished by case. For example, you cannot create resources named both
            \"MyResource\" and \"myresource\".</p>")
    @as("RoleName")
    roleName: roleNameType,
    @ocaml.doc("<p> The path to the role. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
                Identifiers</a> in the <i>IAM User Guide</i>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("Path")
    path: option<pathType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>CreateRole</a> request. </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the new role.</p>") @as("Role") role: role,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreateRoleCommand"
  let make = (
    ~assumeRolePolicyDocument,
    ~roleName,
    ~tags=?,
    ~permissionsBoundary=?,
    ~maxSessionDuration=?,
    ~description=?,
    ~path=?,
    (),
  ) =>
    new({
      tags,
      permissionsBoundary,
      maxSessionDuration,
      description,
      assumeRolePolicyDocument,
      roleName,
      path,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the new IAM customer managed policy.
      Each tag consists of a key name and an associated value. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>
         <note>
            <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
   fails and the resource is not created.</p>
         </note>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>A friendly description of the policy.</p>
        <p>Typically used to store information about the permissions defined in the policy. For
            example, \"Grants access to production DynamoDB tables.\"</p>
        <p>The policy description is immutable. After a value is assigned, it cannot be
            changed.</p>")
    @as("Description")
    description: option<policyDescriptionType>,
    @ocaml.doc("<p>The JSON policy document that you want to use as the content for the new
            policy.</p>
        <p>You must provide policies in JSON format in IAM. However, for CloudFormation
            templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
            IAM.</p>
        <p>The maximum length of the policy document that you can pass in this operation,
            including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length\">IAM and STS character quotas</a>.</p>
        <p>To learn more about JSON policy grammar, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_grammar.html\">Grammar of the IAM JSON
                policy language</a> in the <i>IAM User Guide</i>. </p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PolicyDocument")
    policyDocument: policyDocumentType,
    @ocaml.doc("<p>The path for the policy.</p>
        <p>For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM identifiers</a> in the
                <i>IAM User Guide</i>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>
        <note>
            <p>You cannot use an asterisk (*) in the path name.</p>
        </note>")
    @as("Path")
    path: option<policyPathType>,
    @ocaml.doc("<p>The friendly name of the policy.</p>
        <p>IAM user, group, role, and policy names must be unique within the account. Names are
            not distinguished by case. For example, you cannot create resources named both
            \"MyResource\" and \"myresource\".</p>")
    @as("PolicyName")
    policyName: policyNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>CreatePolicy</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the new policy.</p>") @as("Policy")
    policy: option<policy>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreatePolicyCommand"
  let make = (~policyDocument, ~policyName, ~tags=?, ~description=?, ~path=?, ()) =>
    new({tags, description, policyDocument, path, policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListUsers = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p> The path prefix for filtering the results. For example:
                <code>/division_abc/subdivision_xyz/</code>, which would get all user names whose
            path starts with <code>/division_abc/subdivision_xyz/</code>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
            all user names. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("PathPrefix")
    pathPrefix: option<pathPrefixType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListUsers</a> request. </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of users.</p>") @as("Users") users: userListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListUsersCommand"
  let make = (~maxItems=?, ~marker=?, ~pathPrefix=?, ()) => new({maxItems, marker, pathPrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRoles = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p> The path prefix for filtering the results. For example, the prefix
                <code>/application_abc/component_xyz/</code> gets all roles whose path starts with
                <code>/application_abc/component_xyz/</code>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
            all roles. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("PathPrefix")
    pathPrefix: option<pathPrefixType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListRoles</a> request. </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of roles.</p>") @as("Roles") roles: roleListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListRolesCommand"
  let make = (~maxItems=?, ~marker=?, ~pathPrefix=?, ()) => new({maxItems, marker, pathPrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPoliciesGrantingServiceAccess = {
  type t
  type request = {
    @ocaml.doc("<p>The service namespace for the Amazon Web Services services whose policies you want to list.</p>
        <p>To learn the service namespace for a service, see <a href=\"https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html\">Actions, resources, and condition keys for Amazon Web Services services</a> in the
                <i>IAM User Guide</i>. Choose the name of the service to view
            details for that service. In the first paragraph, find the service prefix. For example,
                <code>(service prefix: a4b)</code>. For more information about service namespaces,
            see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">Amazon Web Services
                service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("ServiceNamespaces")
    serviceNamespaces: serviceNamespaceListType,
    @ocaml.doc("<p>The ARN of the IAM identity (user, group, or role) whose policies you want to
            list.</p>")
    @as("Arn")
    arn: arnType,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
  }
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your results were
            truncated, you can make a subsequent pagination request using the <code>Marker</code>
            request parameter to retrieve more items. We recommend that you check
                <code>IsTruncated</code> after every call to ensure that you receive all your
            results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A <code>ListPoliciesGrantingServiceAccess</code> object that contains details about
            the permissions policies attached to the specified identity (user, group, or
            role).</p>")
    @as("PoliciesGrantingServiceAccess")
    policiesGrantingServiceAccess: listPolicyGrantingServiceAccessResponseListType,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "ListPoliciesGrantingServiceAccessCommand"
  let make = (~serviceNamespaces, ~arn, ~marker=?, ()) => new({serviceNamespaces, arn, marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The policy usage method to use for filtering the results.</p>
        <p>To list only permissions policies,
                set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only
            the policies used to set permissions boundaries, set the value
                to <code>PermissionsBoundary</code>.</p>
        <p>This parameter is optional. If it is not included, all policies are returned. </p>")
    @as("PolicyUsageFilter")
    policyUsageFilter: option<policyUsageType>,
    @ocaml.doc("<p>The path prefix for filtering the results. This parameter is optional. If it is not
            included, it defaults to a slash (/), listing all policies. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("PathPrefix")
    pathPrefix: option<policyPathType>,
    @ocaml.doc("<p>A flag to filter the results to only the attached policies.</p>
        <p>When <code>OnlyAttached</code> is <code>true</code>, the returned list contains only
            the policies that are attached to an IAM user, group, or role. When
                <code>OnlyAttached</code> is <code>false</code>, or when the parameter is not
            included, all policies are returned.</p>")
    @as("OnlyAttached")
    onlyAttached: option<booleanType>,
    @ocaml.doc("<p>The scope to use for filtering the results.</p>
        <p>To list only Amazon Web Services managed policies, set <code>Scope</code> to <code>AWS</code>. To
            list only the customer managed policies in your Amazon Web Services account, set <code>Scope</code> to
                <code>Local</code>.</p>
        <p>This parameter is optional. If it is not included, or if it is set to
            <code>All</code>, all policies are returned.</p>")
    @as("Scope")
    scope: option<policyScopeType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListPolicies</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of policies.</p>") @as("Policies") policies: option<policyListType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListPoliciesCommand"
  let make = (
    ~maxItems=?,
    ~marker=?,
    ~policyUsageFilter=?,
    ~pathPrefix=?,
    ~onlyAttached=?,
    ~scope=?,
    (),
  ) => new({maxItems, marker, policyUsageFilter, pathPrefix, onlyAttached, scope})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetServiceLinkedRoleDeletionStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The deletion task identifier. This identifier is returned by the <a>DeleteServiceLinkedRole</a> operation in the format
                <code>task/aws-service-role/<service-principal-name>/<role-name>/<task-uuid></code>.</p>")
    @as("DeletionTaskId")
    deletionTaskId: deletionTaskIdType,
  }
  type response = {
    @ocaml.doc("<p>An object that contains details about the reason the deletion failed.</p>")
    @as("Reason")
    reason: option<deletionTaskFailureReasonType>,
    @ocaml.doc("<p>The status of the deletion.</p>") @as("Status") status: deletionTaskStatusType,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "GetServiceLinkedRoleDeletionStatusCommand"
  let make = (~deletionTaskId, ()) => new({deletionTaskId: deletionTaskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetServiceLastAccessedDetails = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>The ID of the request generated by the <a>GenerateServiceLastAccessedDetails</a> operation. The <code>JobId</code>
            returned by <code>GenerateServiceLastAccessedDetail</code> must be used by the same role
            within a session, or by the same user when used to call
                <code>GetServiceLastAccessedDetail</code>.</p>")
    @as("JobId")
    jobId: jobIDType,
  }
  type response = {
    @ocaml.doc("<p>An object that contains details about the reason the operation failed.</p>")
    @as("Error")
    error: option<errorDetails>,
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
                format</a>, when the generated report job was completed or failed.</p>
        <p>This field is null if the job is still in progress, as indicated by a job status value
            of <code>IN_PROGRESS</code>.</p>")
    @as("JobCompletionDate")
    jobCompletionDate: dateType,
    @ocaml.doc("<p> A <code>ServiceLastAccessed</code> object that contains details about the most recent
            attempt to access the service.</p>")
    @as("ServicesLastAccessed")
    servicesLastAccessed: servicesLastAccessed,
    @ocaml.doc("<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time
                format</a>, when the report job was created.</p>")
    @as("JobCreationDate")
    jobCreationDate: dateType,
    @ocaml.doc("<p>The type of job. Service jobs return information about when each service was last
            accessed. Action jobs also include information about when tracked actions within the
            service were last accessed.</p>")
    @as("JobType")
    jobType: option<accessAdvisorUsageGranularityType>,
    @ocaml.doc("<p>The status of the job.</p>") @as("JobStatus") jobStatus: jobStatusType,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "GetServiceLastAccessedDetailsCommand"
  let make = (~jobId, ~marker=?, ~maxItems=?, ()) => new({marker, maxItems, jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the group.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("GroupName")
    groupName: groupNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetGroup</a> request. </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of users in the group.</p>") @as("Users") users: userListType,
    @ocaml.doc("<p>A structure that contains details about the group.</p>") @as("Group")
    group: group,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetGroupCommand"
  let make = (~groupName, ~maxItems=?, ~marker=?, ()) => new({maxItems, marker, groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateVirtualMFADevice = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the new IAM virtual MFA device.
      Each tag consists of a key name and an associated value. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>
         <note>
            <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
   fails and the resource is not created.</p>
         </note>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The name of the virtual MFA device. Use with path to uniquely identify a virtual MFA
            device.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("VirtualMFADeviceName")
    virtualMFADeviceName: virtualMFADeviceName,
    @ocaml.doc("<p> The path for the virtual MFA device. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
                identifiers</a> in the <i>IAM User Guide</i>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("Path")
    path: option<pathType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>CreateVirtualMFADevice</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the new virtual MFA device.</p>")
    @as("VirtualMFADevice")
    virtualMFADevice: virtualMFADevice,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreateVirtualMFADeviceCommand"
  let make = (~virtualMFADeviceName, ~tags=?, ~path=?, ()) =>
    new({tags, virtualMFADeviceName, path})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListVirtualMFADevices = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p> The status (<code>Unassigned</code> or <code>Assigned</code>) of the devices to list.
            If you do not specify an <code>AssignmentStatus</code>, the operation defaults to
                <code>Any</code>, which lists both assigned and unassigned virtual MFA
            devices.,</p>")
    @as("AssignmentStatus")
    assignmentStatus: option<assignmentStatusType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListVirtualMFADevices</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and
            contains the value to use for the <code>Marker</code> parameter in a subsequent
            pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p> The list of virtual MFA devices in the current account that match the
                <code>AssignmentStatus</code> value that was passed in the request.</p>")
    @as("VirtualMFADevices")
    virtualMFADevices: virtualMFADeviceListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListVirtualMFADevicesCommand"
  let make = (~maxItems=?, ~marker=?, ~assignmentStatus=?, ()) =>
    new({maxItems, marker, assignmentStatus})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetInstanceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the instance profile to get information about.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("InstanceProfileName")
    instanceProfileName: instanceProfileNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetInstanceProfile</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the instance profile.</p>")
    @as("InstanceProfile")
    instanceProfile: instanceProfile,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "GetInstanceProfileCommand"
  let make = (~instanceProfileName, ()) => new({instanceProfileName: instanceProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateInstanceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you want to attach to the newly created IAM instance profile.
      Each tag consists of a key name and an associated value. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM resources</a> in the
      <i>IAM User Guide</i>.</p>
         <note>
            <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
   fails and the resource is not created.</p>
         </note>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p> The path to the instance profile. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM
                Identifiers</a> in the <i>IAM User Guide</i>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("Path")
    path: option<pathType>,
    @ocaml.doc("<p>The name of the instance profile to create.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("InstanceProfileName")
    instanceProfileName: instanceProfileNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>CreateInstanceProfile</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>A structure containing details about the new instance profile.</p>")
    @as("InstanceProfile")
    instanceProfile: instanceProfile,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "CreateInstanceProfileCommand"
  let make = (~instanceProfileName, ~tags=?, ~path=?, ()) => new({tags, path, instanceProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListInstanceProfilesForRole = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The name of the role to list instance profiles for.</p>
        <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    characters with no spaces. You can also include any of the following characters: _+=,.@-</p>")
    @as("RoleName")
    roleName: roleNameType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListInstanceProfilesForRole</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of instance profiles.</p>") @as("InstanceProfiles")
    instanceProfiles: instanceProfileListType,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "ListInstanceProfilesForRoleCommand"
  let make = (~roleName, ~maxItems=?, ~marker=?, ()) => new({maxItems, marker, roleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListInstanceProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p> The path prefix for filtering the results. For example, the prefix
                <code>/application_abc/component_xyz/</code> gets all instance profiles whose path
            starts with <code>/application_abc/component_xyz/</code>.</p>
        <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
            all instance profiles. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting 
    of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including 
    most punctuation characters, digits, and upper and lowercased letters.</p>")
    @as("PathPrefix")
    pathPrefix: option<pathPrefixType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>ListInstanceProfiles</a> request.
    </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list of instance profiles.</p>") @as("InstanceProfiles")
    instanceProfiles: instanceProfileListType,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "ListInstanceProfilesCommand"
  let make = (~maxItems=?, ~marker=?, ~pathPrefix=?, ()) => new({maxItems, marker, pathPrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SimulatePrincipalPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Specifies the type of simulation to run. Different API operations that support
            resource-based policies require different combinations of resources. By specifying the
            type of simulation to run, you enable the policy simulator to enforce the presence of
            the required resources to ensure reliable simulation results. If your simulation does
            not match one of the following scenarios, then you can omit this parameter. The
            following list shows each of the supported scenario values and the resources that you
            must define to run the simulation.</p>
        <p>Each of the EC2 scenarios requires that you specify instance, image, and security
            group resources. If your scenario includes an EBS volume, then you must specify that
            volume as a resource. If the EC2 scenario includes VPC, then you must supply the network
            interface resource. If it includes an IP subnet, then you must specify the subnet
            resource. For more information on the EC2 scenario options, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported platforms</a> in the <i>Amazon EC2 User
            Guide</i>.</p>
        <ul>
            <li>
                <p>
                    <b>EC2-Classic-InstanceStore</b>
                </p>
                <p>instance, image, security group</p>
            </li>
            <li>
                <p>
                    <b>EC2-Classic-EBS</b>
                </p>
                <p>instance, image, security group, volume</p>
            </li>
            <li>
                <p>
                    <b>EC2-VPC-InstanceStore</b>
                </p>
                <p>instance, image, security group, network interface</p>
            </li>
            <li>
                <p>
                    <b>EC2-VPC-InstanceStore-Subnet</b>
                </p>
                <p>instance, image, security group, network interface, subnet</p>
            </li>
            <li>
                <p>
                    <b>EC2-VPC-EBS</b>
                </p>
                <p>instance, image, security group, network interface, volume</p>
            </li>
            <li>
                <p>
                    <b>EC2-VPC-EBS-Subnet</b>
                </p>
                <p>instance, image, security group, network interface, subnet, volume</p>
            </li>
         </ul>")
    @as("ResourceHandlingOption")
    resourceHandlingOption: option<resourceHandlingOptionType>,
    @ocaml.doc("<p>A list of context keys and corresponding values for the simulation to use. Whenever a
            context key is evaluated in one of the simulated IAM permissions policies, the
            corresponding value is supplied.</p>")
    @as("ContextEntries")
    contextEntries: option<contextEntryListType>,
    @ocaml.doc("<p>The ARN of the IAM user that you want to specify as the simulated caller of the API
            operations. If you do not specify a <code>CallerArn</code>, it defaults to the ARN of
            the user that you specify in <code>PolicySourceArn</code>, if you specified a user. If
            you include both a <code>PolicySourceArn</code> (for example,
                <code>arn:aws:iam::123456789012:user/David</code>) and a <code>CallerArn</code> (for
            example, <code>arn:aws:iam::123456789012:user/Bob</code>), the result is that you
            simulate calling the API operations as Bob, as if Bob had David's policies.</p>
        <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an
            assumed role, federated user, or a service principal.</p>
        <p>
            <code>CallerArn</code> is required if you include a <code>ResourcePolicy</code> and
            the <code>PolicySourceArn</code> is not the ARN for an IAM user. This is required so
            that the resource-based policy's <code>Principal</code> element has a value to use in
            evaluating the policy.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("CallerArn")
    callerArn: option<resourceNameType>,
    @ocaml.doc("<p>An Amazon Web Services account ID that specifies the owner of any simulated resource that does not
            identify its owner in the resource ARN. Examples of resource ARNs include an S3 bucket
            or object. If <code>ResourceOwner</code> is specified, it is also used as the account
            owner of any <code>ResourcePolicy</code> included in the simulation. If the
                <code>ResourceOwner</code> parameter is not specified, then the owner of the
            resources and the resource policy defaults to the account of the identity provided in
                <code>CallerArn</code>. This parameter is required only if you specify a
            resource-based policy and account that owns the resource is different from the account
            that owns the simulated calling user <code>CallerArn</code>.</p>")
    @as("ResourceOwner")
    resourceOwner: option<resourceNameType>,
    @ocaml.doc("<p>A resource-based policy to include in the simulation provided as a string. Each
            resource in the simulation is treated as if it had this policy attached. You can include
            only one resource-based policy in a simulation.</p>
        <p>The maximum length of the policy document that you can pass in this operation,
            including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length\">IAM and STS character quotas</a>.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("ResourcePolicy")
    resourcePolicy: option<policyDocumentType>,
    @ocaml.doc("<p>A list of ARNs of Amazon Web Services resources to include in the simulation. If this parameter is
            not provided, then the value defaults to <code>*</code> (all resources). Each API in the
                <code>ActionNames</code> parameter is evaluated for each resource in this list. The
            simulation determines the access result (allowed or denied) of each combination and
            reports it in the response. You can simulate resources that don't exist in your
            account.</p>
        <p>The simulation does not automatically retrieve policies for the specified resources.
            If you want to include a resource policy in the simulation, then you must include the
            policy as a string in the <code>ResourcePolicy</code> parameter.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("ResourceArns")
    resourceArns: option<resourceNameListType>,
    @ocaml.doc("<p>A list of names of API operations to evaluate in the simulation. Each operation is
            evaluated for each resource. Each operation must include the service identifier, such as
                <code>iam:CreateUser</code>.</p>")
    @as("ActionNames")
    actionNames: actionNameListType,
    @ocaml.doc("<p>The IAM permissions boundary policy to simulate. The permissions boundary sets the
            maximum permissions that the entity can have. You can input only one permissions
            boundary when you pass a policy to this operation. An IAM entity can only have one
            permissions boundary in effect at a time. For example, if a permissions boundary is
            attached to an entity and you pass in a different permissions boundary policy using this
            parameter, then the new permissions boundary policy is used for the simulation. For more
            information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions boundaries for IAM
                entities</a> in the <i>IAM User Guide</i>. The policy input is
            specified as a string containing the complete, valid JSON text of a permissions boundary
            policy.</p>
        <p>The maximum length of the policy document that you can pass in this operation,
            including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length\">IAM and STS character quotas</a>.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PermissionsBoundaryPolicyInputList")
    permissionsBoundaryPolicyInputList: option<simulationPolicyListType>,
    @ocaml.doc("<p>An optional list of additional policy documents to include in the simulation. Each
            document is specified as a string containing the complete, valid JSON text of an IAM
            policy.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PolicyInputList")
    policyInputList: option<simulationPolicyListType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a user, group, or role whose policies you want to
            include in the simulation. If you specify a user, group, or role, the simulation
            includes all policies that are associated with that entity. If you specify a user, the
            simulation also includes all policies that are attached to any groups the user belongs
            to.</p>
        <p>The maximum length of the policy document that you can pass in this operation,
            including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length\">IAM and STS character quotas</a>.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("PolicySourceArn")
    policySourceArn: arnType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>SimulatePrincipalPolicy</a> or
      <a>SimulateCustomPolicy</a> request.</p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>The results of the simulation.</p>") @as("EvaluationResults")
    evaluationResults: option<evaluationResultsListType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "SimulatePrincipalPolicyCommand"
  let make = (
    ~actionNames,
    ~policySourceArn,
    ~marker=?,
    ~maxItems=?,
    ~resourceHandlingOption=?,
    ~contextEntries=?,
    ~callerArn=?,
    ~resourceOwner=?,
    ~resourcePolicy=?,
    ~resourceArns=?,
    ~permissionsBoundaryPolicyInputList=?,
    ~policyInputList=?,
    (),
  ) =>
    new({
      marker,
      maxItems,
      resourceHandlingOption,
      contextEntries,
      callerArn,
      resourceOwner,
      resourcePolicy,
      resourceArns,
      actionNames,
      permissionsBoundaryPolicyInputList,
      policyInputList,
      policySourceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SimulateCustomPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>Specifies the type of simulation to run. Different API operations that support
            resource-based policies require different combinations of resources. By specifying the
            type of simulation to run, you enable the policy simulator to enforce the presence of
            the required resources to ensure reliable simulation results. If your simulation does
            not match one of the following scenarios, then you can omit this parameter. The
            following list shows each of the supported scenario values and the resources that you
            must define to run the simulation.</p>
        <p>Each of the EC2 scenarios requires that you specify instance, image, and
            security-group resources. If your scenario includes an EBS volume, then you must specify
            that volume as a resource. If the EC2 scenario includes VPC, then you must supply the
            network-interface resource. If it includes an IP subnet, then you must specify the
            subnet resource. For more information on the EC2 scenario options, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported platforms</a> in the <i>Amazon EC2 User
            Guide</i>.</p>
        <ul>
            <li>
                <p>
                    <b>EC2-Classic-InstanceStore</b>
                </p>
                <p>instance, image, security-group</p>
            </li>
            <li>
                <p>
                    <b>EC2-Classic-EBS</b>
                </p>
                <p>instance, image, security-group, volume</p>
            </li>
            <li>
                <p>
                    <b>EC2-VPC-InstanceStore</b>
                </p>
                <p>instance, image, security-group, network-interface</p>
            </li>
            <li>
                <p>
                    <b>EC2-VPC-InstanceStore-Subnet</b>
                </p>
                <p>instance, image, security-group, network-interface, subnet</p>
            </li>
            <li>
                <p>
                    <b>EC2-VPC-EBS</b>
                </p>
                <p>instance, image, security-group, network-interface, volume</p>
            </li>
            <li>
                <p>
                    <b>EC2-VPC-EBS-Subnet</b>
                </p>
                <p>instance, image, security-group, network-interface, subnet, volume</p>
            </li>
         </ul>")
    @as("ResourceHandlingOption")
    resourceHandlingOption: option<resourceHandlingOptionType>,
    @ocaml.doc("<p>A list of context keys and corresponding values for the simulation to use. Whenever a
            context key is evaluated in one of the simulated IAM permissions policies, the
            corresponding value is supplied.</p>")
    @as("ContextEntries")
    contextEntries: option<contextEntryListType>,
    @ocaml.doc("<p>The ARN of the IAM user that you want to use as the simulated caller of the API
            operations. <code>CallerArn</code> is required if you include a
                <code>ResourcePolicy</code> so that the policy's <code>Principal</code> element has
            a value to use in evaluating the policy.</p>
        <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an
            assumed role, federated user, or a service principal.</p>")
    @as("CallerArn")
    callerArn: option<resourceNameType>,
    @ocaml.doc("<p>An ARN representing the Amazon Web Services account ID that specifies the owner of any simulated
            resource that does not identify its owner in the resource ARN. Examples of resource ARNs
            include an S3 bucket or object. If <code>ResourceOwner</code> is specified, it is also
            used as the account owner of any <code>ResourcePolicy</code> included in the simulation.
            If the <code>ResourceOwner</code> parameter is not specified, then the owner of the
            resources and the resource policy defaults to the account of the identity provided in
                <code>CallerArn</code>. This parameter is required only if you specify a
            resource-based policy and account that owns the resource is different from the account
            that owns the simulated calling user <code>CallerArn</code>.</p>
        <p>The ARN for an account uses the following syntax:
                    <code>arn:aws:iam::<i>AWS-account-ID</i>:root</code>. For example,
            to represent the account with the 112233445566 ID, use the following ARN:
                <code>arn:aws:iam::112233445566-ID:root</code>. </p>")
    @as("ResourceOwner")
    resourceOwner: option<resourceNameType>,
    @ocaml.doc("<p>A resource-based policy to include in the simulation provided as a string. Each
            resource in the simulation is treated as if it had this policy attached. You can include
            only one resource-based policy in a simulation.</p>
        <p>The maximum length of the policy document that you can pass in this operation,
            including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length\">IAM and STS character quotas</a>.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("ResourcePolicy")
    resourcePolicy: option<policyDocumentType>,
    @ocaml.doc("<p>A list of ARNs of Amazon Web Services resources to include in the simulation. If this parameter is
            not provided, then the value defaults to <code>*</code> (all resources). Each API in the
                <code>ActionNames</code> parameter is evaluated for each resource in this list. The
            simulation determines the access result (allowed or denied) of each combination and
            reports it in the response. You can simulate resources that don't exist in your
            account.</p>
        <p>The simulation does not automatically retrieve policies for the specified resources.
            If you want to include a resource policy in the simulation, then you must include the
            policy as a string in the <code>ResourcePolicy</code> parameter.</p>
        <p>If you include a <code>ResourcePolicy</code>, then it must be applicable to all of the
            resources included in the simulation or you receive an invalid input error.</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("ResourceArns")
    resourceArns: option<resourceNameListType>,
    @ocaml.doc("<p>A list of names of API operations to evaluate in the simulation. Each operation is
            evaluated against each resource. Each operation must include the service identifier,
            such as <code>iam:CreateUser</code>. This operation does not support using wildcards (*)
            in an action name.</p>")
    @as("ActionNames")
    actionNames: actionNameListType,
    @ocaml.doc("<p>The IAM permissions boundary policy to simulate. The permissions boundary sets the
            maximum permissions that an IAM entity can have. You can input only one permissions
            boundary when you pass a policy to this operation. For more information about
            permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions boundaries for IAM
                entities</a> in the <i>IAM User Guide</i>. The policy input is
            specified as a string that contains the complete, valid JSON text of a permissions
            boundary policy.</p>
        <p>The maximum length of the policy document that you can pass in this operation,
            including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length\">IAM and STS character quotas</a>.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PermissionsBoundaryPolicyInputList")
    permissionsBoundaryPolicyInputList: option<simulationPolicyListType>,
    @ocaml.doc("<p>A list of policy documents to include in the simulation. Each document is specified as
            a string containing the complete, valid JSON text of an IAM policy. Do not include any
            resource-based policies in this parameter. Any resource-based policy must be submitted
            with the <code>ResourcePolicy</code> parameter. The policies cannot be \"scope-down\"
            policies, such as you could include in a call to <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html\">GetFederationToken</a> or one of
            the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> API operations. In other words, do not use policies designed to
            restrict what a user can do while using the temporary credentials.</p>
        <p>The maximum length of the policy document that you can pass in this operation,
            including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length\">IAM and STS character quotas</a>.</p>
        <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> 
    used to validate this parameter is a string of characters consisting of the following:</p>
         <ul>
            <li>
               <p>Any printable ASCII 
    character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p>
            </li>
            <li>
               <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    (through <code>\\u00FF</code>)</p>
            </li>
            <li>
               <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and 
    carriage return (<code>\\u000D</code>)</p>
            </li>
         </ul>")
    @as("PolicyInputList")
    policyInputList: simulationPolicyListType,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>SimulatePrincipalPolicy</a> or
      <a>SimulateCustomPolicy</a> request.</p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>The results of the simulation.</p>") @as("EvaluationResults")
    evaluationResults: option<evaluationResultsListType>,
  }
  @module("@aws-sdk/client-iam") @new external new: request => t = "SimulateCustomPolicyCommand"
  let make = (
    ~actionNames,
    ~policyInputList,
    ~marker=?,
    ~maxItems=?,
    ~resourceHandlingOption=?,
    ~contextEntries=?,
    ~callerArn=?,
    ~resourceOwner=?,
    ~resourcePolicy=?,
    ~resourceArns=?,
    ~permissionsBoundaryPolicyInputList=?,
    (),
  ) =>
    new({
      marker,
      maxItems,
      resourceHandlingOption,
      contextEntries,
      callerArn,
      resourceOwner,
      resourcePolicy,
      resourceArns,
      actionNames,
      permissionsBoundaryPolicyInputList,
      policyInputList,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAccountAuthorizationDetails = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter only when paginating results and only after 
    you receive a response indicating that the results are truncated. Set it to the value of the
    <code>Marker</code> element in the response that you received to indicate where the next call 
    should start.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this only when paginating results to indicate the 
    maximum number of items you want in the response. If additional items exist beyond the maximum 
    you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
         <p>If you do not include this parameter, the number of items defaults to 100. Note that
    IAM might return fewer results, even when there are more results available. In that case, the
    <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    contains a value to include in the subsequent call that tells the service where to continue 
    from.</p>")
    @as("MaxItems")
    maxItems: option<maxItemsType>,
    @ocaml.doc("<p>A list of entity types used to filter the results. Only the entities that match the
            types you specify are included in the output. Use the value
                <code>LocalManagedPolicy</code> to include customer managed policies.</p>
        <p>The format for this parameter is a comma-separated (if more than one) list of strings.
            Each string value in the list must be one of the valid values listed below.</p>")
    @as("Filter")
    filter: option<entityListType>,
  }
  @ocaml.doc("<p>Contains the response to a successful <a>GetAccountAuthorizationDetails</a>
      request. </p>")
  type response = {
    @ocaml.doc("<p>When <code>IsTruncated</code> is <code>true</code>, this element
    is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    pagination request.</p>")
    @as("Marker")
    marker: option<responseMarkerType>,
    @ocaml.doc("<p>A flag that indicates whether there are more items to return. If your 
    results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    request parameter to retrieve more items. Note that IAM might return fewer than the 
    <code>MaxItems</code> number of results even when there are more results available. We recommend 
    that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    results.</p>")
    @as("IsTruncated")
    isTruncated: option<booleanType>,
    @ocaml.doc("<p>A list containing information about managed policies.</p>") @as("Policies")
    policies: option<managedPolicyDetailListType>,
    @ocaml.doc("<p>A list containing information about IAM roles.</p>") @as("RoleDetailList")
    roleDetailList: option<roleDetailListType>,
    @ocaml.doc("<p>A list containing information about IAM groups.</p>") @as("GroupDetailList")
    groupDetailList: option<groupDetailListType>,
    @ocaml.doc("<p>A list containing information about IAM users.</p>") @as("UserDetailList")
    userDetailList: option<userDetailListType>,
  }
  @module("@aws-sdk/client-iam") @new
  external new: request => t = "GetAccountAuthorizationDetailsCommand"
  let make = (~marker=?, ~maxItems=?, ~filter=?, ()) => new({marker, maxItems, filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
