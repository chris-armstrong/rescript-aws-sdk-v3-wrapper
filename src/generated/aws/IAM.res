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
type virtualMFADeviceName = string
type userNameType = string
type unrecognizedPublicKeyEncodingMessage = string
type unmodifiableEntityMessage = string
type thumbprintType = string
type tagValueType = string
type tagKeyType = string
type summaryValueType = int
type summaryKeyType = [@as("GlobalEndpointTokenVersion") #GlobalEndpointTokenVersion | @as("VersionsPerPolicyQuota") #VersionsPerPolicyQuota | @as("PolicyVersionsInUseQuota") #PolicyVersionsInUseQuota | @as("PolicyVersionsInUse") #PolicyVersionsInUse | @as("PolicySizeQuota") #PolicySizeQuota | @as("PoliciesQuota") #PoliciesQuota | @as("Policies") #Policies | @as("AttachedPoliciesPerUserQuota") #AttachedPoliciesPerUserQuota | @as("AttachedPoliciesPerRoleQuota") #AttachedPoliciesPerRoleQuota | @as("AttachedPoliciesPerGroupQuota") #AttachedPoliciesPerGroupQuota | @as("AccountSigningCertificatesPresent") #AccountSigningCertificatesPresent | @as("AccountAccessKeysPresent") #AccountAccessKeysPresent | @as("AccountMFAEnabled") #AccountMFAEnabled | @as("MFADevicesInUse") #MFADevicesInUse | @as("MFADevices") #MFADevices | @as("AccessKeysPerUserQuota") #AccessKeysPerUserQuota | @as("SigningCertificatesPerUserQuota") #SigningCertificatesPerUserQuota | @as("GroupsPerUserQuota") #GroupsPerUserQuota | @as("GroupPolicySizeQuota") #GroupPolicySizeQuota | @as("UserPolicySizeQuota") #UserPolicySizeQuota | @as("ServerCertificatesQuota") #ServerCertificatesQuota | @as("ServerCertificates") #ServerCertificates | @as("GroupsQuota") #GroupsQuota | @as("Groups") #Groups | @as("UsersQuota") #UsersQuota | @as("Users") #Users]
type stringType = string
type statusType = [@as("Inactive") #Inactive | @as("Active") #Active]
type sortKeyType = [@as("LAST_AUTHENTICATED_TIME_DESCENDING") #LASTAUTHENTICATEDTIMEDESCENDING | @as("LAST_AUTHENTICATED_TIME_ASCENDING") #LASTAUTHENTICATEDTIMEASCENDING | @as("SERVICE_NAMESPACE_DESCENDING") #SERVICENAMESPACEDESCENDING | @as("SERVICE_NAMESPACE_ASCENDING") #SERVICENAMESPACEASCENDING]
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
type jobStatusType = [@as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #INPROGRESS]
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
type dateType = Js.Date.t;
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
type assignmentStatusType = [@as("Any") #Any | @as("Unassigned") #Unassigned | @as("Assigned") #Assigned]
type arnType = string
type accountAliasType = string
type accessKeySecretType = string
type accessKeyIdType = string
type samlproviderNameType = string
type samlmetadataDocumentType = string
type resourceNameType = string
type resourceHandlingOptionType = string
type reportStateType = [@as("COMPLETE") #COMPLETE | @as("INPROGRESS") #INPROGRESS | @as("STARTED") #STARTED]
type reportStateDescriptionType = string
type reportFormatType = [@as("text/csv") #TextCsv]
type reportContentType = NodeJs.Buffer.t
type regionNameType = string
type reasonType = string
type policyUsageType = [@as("PermissionsBoundary") #PermissionsBoundary | @as("PermissionsPolicy") #PermissionsPolicy]
type policySourceType = [@as("none") #None | @as("resource") #Resource | @as("user-managed") #UserManaged | @as("aws-managed") #AwsManaged | @as("role") #Role | @as("group") #Group | @as("user") #User]
type policyIdentifierType = string
type policyEvaluationDecisionType = [@as("implicitDeny") #ImplicitDeny | @as("explicitDeny") #ExplicitDeny | @as("allowed") #Allowed]
type permissionsBoundaryAttachmentType = [@as("PermissionsBoundaryPolicy") #PermissionsBoundaryPolicy]
type openIDConnectProviderUrlType = string
type lineNumber = int
type evalDecisionSourceType = string
type entityType = [@as("AWSManagedPolicy") #AWSManagedPolicy | @as("LocalManagedPolicy") #LocalManagedPolicy | @as("Group") #Group | @as("Role") #Role | @as("User") #User]
type deletionTaskStatusType = [@as("NOT_STARTED") #NOTSTARTED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #INPROGRESS | @as("SUCCEEDED") #SUCCEEDED]
type deletionTaskIdType = string
type contextKeyValueType = string
type contextKeyTypeEnum = [@as("dateList") #DateList | @as("date") #Date | @as("binaryList") #BinaryList | @as("binary") #Binary | @as("ipList") #IpList | @as("ip") #Ip | @as("booleanList") #BooleanList | @as("boolean") #Boolean | @as("numericList") #NumericList | @as("numeric") #Numeric | @as("stringList") #StringList | @as("string") #String]
type contextKeyNameType = string
type concurrentModificationMessage = string
type columnNumber = int
type bootstrapDatum = NodeJs.Buffer.t
type actionNameType = string
type accessAdvisorUsageGranularityType = [@as("ACTION_LEVEL") #ACTIONLEVEL | @as("SERVICE_LEVEL") #SERVICELEVEL]
type thumbprintListType = array<thumbprintType>
type tagKeyListType = array<tagKeyType>
type summaryMapType = Js.Dict.t< summaryValueType>
type serviceNamespaceListType = array<serviceNamespaceType>
type policyNameListType = array<policyNameType>
type groupNameListType = array<groupNameType>
type entityListType = array<entityType>
type clientIDListType = array<clientIDType>
type accountAliasListType = array<accountAliasType>
type trackedActionLastAccessed = {
@as("LastAccessedRegion") lastAccessedRegion: option<stringType>,
@as("LastAccessedTime") lastAccessedTime: option<dateType>,
@as("LastAccessedEntity") lastAccessedEntity: option<arnType>,
@as("ActionName") actionName: option<stringType>
}
type tag = {
@as("Value") value: tagValueType,
@as("Key") key: tagKeyType
}
type simulationPolicyListType = array<policyDocumentType>
type signingCertificate = {
@as("UploadDate") uploadDate: option<dateType>,
@as("Status") status: statusType,
@as("CertificateBody") certificateBody: certificateBodyType,
@as("CertificateId") certificateId: certificateIdType,
@as("UserName") userName: userNameType
}
type serviceSpecificCredentialMetadata = {
@as("ServiceName") serviceName: serviceName,
@as("ServiceSpecificCredentialId") serviceSpecificCredentialId: serviceSpecificCredentialId,
@as("CreateDate") createDate: dateType,
@as("ServiceUserName") serviceUserName: serviceUserName,
@as("Status") status: statusType,
@as("UserName") userName: userNameType
}
type serviceSpecificCredential = {
@as("Status") status: statusType,
@as("UserName") userName: userNameType,
@as("ServiceSpecificCredentialId") serviceSpecificCredentialId: serviceSpecificCredentialId,
@as("ServicePassword") servicePassword: servicePassword,
@as("ServiceUserName") serviceUserName: serviceUserName,
@as("ServiceName") serviceName: serviceName,
@as("CreateDate") createDate: dateType
}
type serverCertificateMetadata = {
@as("Expiration") expiration: option<dateType>,
@as("UploadDate") uploadDate: option<dateType>,
@as("Arn") arn: arnType,
@as("ServerCertificateId") serverCertificateId: idType,
@as("ServerCertificateName") serverCertificateName: serverCertificateNameType,
@as("Path") path: pathType
}
type sshpublicKeyMetadata = {
@as("UploadDate") uploadDate: dateType,
@as("Status") status: statusType,
@as("SSHPublicKeyId") sshpublicKeyId: publicKeyIdType,
@as("UserName") userName: userNameType
}
type sshpublicKey = {
@as("UploadDate") uploadDate: option<dateType>,
@as("Status") status: statusType,
@as("SSHPublicKeyBody") sshpublicKeyBody: publicKeyMaterialType,
@as("Fingerprint") fingerprint: publicKeyFingerprintType,
@as("SSHPublicKeyId") sshpublicKeyId: publicKeyIdType,
@as("UserName") userName: userNameType
}
type samlproviderListEntry = {
@as("CreateDate") createDate: option<dateType>,
@as("ValidUntil") validUntil: option<dateType>,
@as("Arn") arn: option<arnType>
}
type roleLastUsed = {
@as("Region") region: option<stringType>,
@as("LastUsedDate") lastUsedDate: option<dateType>
}
type resourceNameListType = array<resourceNameType>
type position = {
@as("Column") column: option<columnNumber>,
@as("Line") line: option<lineNumber>
}
type policyVersion = {
@as("CreateDate") createDate: option<dateType>,
@as("IsDefaultVersion") isDefaultVersion: option<booleanType>,
@as("VersionId") versionId: option<policyVersionIdType>,
@as("Document") document: option<policyDocumentType>
}
type policyUser = {
@as("UserId") userId: option<idType>,
@as("UserName") userName: option<userNameType>
}
type policyRole = {
@as("RoleId") roleId: option<idType>,
@as("RoleName") roleName: option<roleNameType>
}
type policyGroup = {
@as("GroupId") groupId: option<idType>,
@as("GroupName") groupName: option<groupNameType>
}
type policyGrantingServiceAccess = {
@as("EntityName") entityName: option<entityNameType>,
@as("EntityType") entityType: option<policyOwnerEntityType>,
@as("PolicyArn") policyArn: option<arnType>,
@as("PolicyType") policyType: policyType,
@as("PolicyName") policyName: policyNameType
}
type policyDetail = {
@as("PolicyDocument") policyDocument: option<policyDocumentType>,
@as("PolicyName") policyName: option<policyNameType>
}
type permissionsBoundaryDecisionDetail = {
@as("AllowedByPermissionsBoundary") allowedByPermissionsBoundary: option<booleanType>
}
type passwordPolicy = {
@as("HardExpiry") hardExpiry: option<booleanObjectType>,
@as("PasswordReusePrevention") passwordReusePrevention: option<passwordReusePreventionType>,
@as("MaxPasswordAge") maxPasswordAge: option<maxPasswordAgeType>,
@as("ExpirePasswords") expirePasswords: option<booleanType>,
@as("AllowUsersToChangePassword") allowUsersToChangePassword: option<booleanType>,
@as("RequireLowercaseCharacters") requireLowercaseCharacters: option<booleanType>,
@as("RequireUppercaseCharacters") requireUppercaseCharacters: option<booleanType>,
@as("RequireNumbers") requireNumbers: option<booleanType>,
@as("RequireSymbols") requireSymbols: option<booleanType>,
@as("MinimumPasswordLength") minimumPasswordLength: option<minimumPasswordLengthType>
}
type organizationsDecisionDetail = {
@as("AllowedByOrganizations") allowedByOrganizations: option<booleanType>
}
type openIDConnectProviderListEntry = {
@as("Arn") arn: option<arnType>
}
type mfadevice = {
@as("EnableDate") enableDate: dateType,
@as("SerialNumber") serialNumber: serialNumberType,
@as("UserName") userName: userNameType
}
type loginProfile = {
@as("PasswordResetRequired") passwordResetRequired: option<booleanType>,
@as("CreateDate") createDate: dateType,
@as("UserName") userName: userNameType
}
type group = {
@as("CreateDate") createDate: dateType,
@as("Arn") arn: arnType,
@as("GroupId") groupId: idType,
@as("GroupName") groupName: groupNameType,
@as("Path") path: pathType
}
type evalDecisionDetailsType = Js.Dict.t< policyEvaluationDecisionType>
type errorDetails = {
@as("Code") code: stringType,
@as("Message") message: stringType
}
type entityInfo = {
@as("Path") path: option<pathType>,
@as("Id") id: idType,
@as("Type") type_: policyOwnerEntityType,
@as("Name") name: userNameType,
@as("Arn") arn: arnType
}
type contextKeyValueListType = array<contextKeyValueType>
type contextKeyNamesResultListType = array<contextKeyNameType>
type attachedPolicy = {
@as("PolicyArn") policyArn: option<arnType>,
@as("PolicyName") policyName: option<policyNameType>
}
type attachedPermissionsBoundary = {
@as("PermissionsBoundaryArn") permissionsBoundaryArn: option<arnType>,
@as("PermissionsBoundaryType") permissionsBoundaryType: option<permissionsBoundaryAttachmentType>
}
type arnListType = array<arnType>
type actionNameListType = array<actionNameType>
type accessKeyMetadata = {
@as("CreateDate") createDate: option<dateType>,
@as("Status") status: option<statusType>,
@as("AccessKeyId") accessKeyId: option<accessKeyIdType>,
@as("UserName") userName: option<userNameType>
}
type accessKeyLastUsed = {
@as("Region") region: stringType,
@as("ServiceName") serviceName: stringType,
@as("LastUsedDate") lastUsedDate: dateType
}
type accessKey = {
@as("CreateDate") createDate: option<dateType>,
@as("SecretAccessKey") secretAccessKey: accessKeySecretType,
@as("Status") status: statusType,
@as("AccessKeyId") accessKeyId: accessKeyIdType,
@as("UserName") userName: userNameType
}
type accessDetail = {
@as("TotalAuthenticatedEntities") totalAuthenticatedEntities: option<integerType>,
@as("LastAuthenticatedTime") lastAuthenticatedTime: option<dateType>,
@as("EntityPath") entityPath: option<organizationsEntityPathType>,
@as("Region") region: option<stringType>,
@as("ServiceNamespace") serviceNamespace: serviceNamespaceType,
@as("ServiceName") serviceName: serviceNameType
}
type tagListType = array<tag>
type serverCertificateMetadataListType = array<serverCertificateMetadata>
type policyGrantingServiceAccessListType = array<policyGrantingServiceAccess>
type policyDocumentVersionListType = array<policyVersion>
type policyDetailListType = array<policyDetail>
type mfaDeviceListType = array<mfadevice>
type groupListType = array<group>
type certificateListType = array<signingCertificate>
type attachedPoliciesListType = array<attachedPolicy>
type accessKeyMetadataListType = array<accessKeyMetadata>
type trackedActionsLastAccessed = array<trackedActionLastAccessed>
type statement = {
@as("EndPosition") endPosition: option<position>,
@as("StartPosition") startPosition: option<position>,
@as("SourcePolicyType") sourcePolicyType: option<policySourceType>,
@as("SourcePolicyId") sourcePolicyId: option<policyIdentifierType>
}
type serviceSpecificCredentialsListType = array<serviceSpecificCredentialMetadata>
type sshpublicKeyListType = array<sshpublicKeyMetadata>
type samlproviderListType = array<samlproviderListEntry>
type roleUsageType = {
@as("Resources") resources: option<arnListType>,
@as("Region") region: option<regionNameType>
}
type policyUserListType = array<policyUser>
type policyRoleListType = array<policyRole>
type policyGroupListType = array<policyGroup>
type openIDConnectProviderListType = array<openIDConnectProviderListEntry>
type entityDetails = {
@as("LastAuthenticated") lastAuthenticated: option<dateType>,
@as("EntityInfo") entityInfo: entityInfo
}
type contextEntry = {
@as("ContextKeyType") contextKeyType: option<contextKeyTypeEnum>,
@as("ContextKeyValues") contextKeyValues: option<contextKeyValueListType>,
@as("ContextKeyName") contextKeyName: option<contextKeyNameType>
}
type accessDetails = array<accessDetail>
type entityDetailsListType = array<entityDetails>
type userDetail = {
@as("Tags") tags: option<tagListType>,
@as("PermissionsBoundary") permissionsBoundary: option<attachedPermissionsBoundary>,
@as("AttachedManagedPolicies") attachedManagedPolicies: option<attachedPoliciesListType>,
@as("GroupList") groupList: option<groupNameListType>,
@as("UserPolicyList") userPolicyList: option<policyDetailListType>,
@as("CreateDate") createDate: option<dateType>,
@as("Arn") arn: option<arnType>,
@as("UserId") userId: option<idType>,
@as("UserName") userName: option<userNameType>,
@as("Path") path: option<pathType>
}
type user = {
@as("Tags") tags: option<tagListType>,
@as("PermissionsBoundary") permissionsBoundary: option<attachedPermissionsBoundary>,
@as("PasswordLastUsed") passwordLastUsed: option<dateType>,
@as("CreateDate") createDate: dateType,
@as("Arn") arn: arnType,
@as("UserId") userId: idType,
@as("UserName") userName: userNameType,
@as("Path") path: pathType
}
type statementListType = array<statement>
type serviceLastAccessed = {
@as("TrackedActionsLastAccessed") trackedActionsLastAccessed: option<trackedActionsLastAccessed>,
@as("TotalAuthenticatedEntities") totalAuthenticatedEntities: option<integerType>,
@as("LastAuthenticatedRegion") lastAuthenticatedRegion: option<stringType>,
@as("LastAuthenticatedEntity") lastAuthenticatedEntity: option<arnType>,
@as("ServiceNamespace") serviceNamespace: serviceNamespaceType,
@as("LastAuthenticated") lastAuthenticated: option<dateType>,
@as("ServiceName") serviceName: serviceNameType
}
type serverCertificate = {
@as("Tags") tags: option<tagListType>,
@as("CertificateChain") certificateChain: option<certificateChainType>,
@as("CertificateBody") certificateBody: certificateBodyType,
@as("ServerCertificateMetadata") serverCertificateMetadata: serverCertificateMetadata
}
type roleUsageListType = array<roleUsageType>
type role = {
@as("RoleLastUsed") roleLastUsed: option<roleLastUsed>,
@as("Tags") tags: option<tagListType>,
@as("PermissionsBoundary") permissionsBoundary: option<attachedPermissionsBoundary>,
@as("MaxSessionDuration") maxSessionDuration: option<roleMaxSessionDurationType>,
@as("Description") description: option<roleDescriptionType>,
@as("AssumeRolePolicyDocument") assumeRolePolicyDocument: option<policyDocumentType>,
@as("CreateDate") createDate: dateType,
@as("Arn") arn: arnType,
@as("RoleId") roleId: idType,
@as("RoleName") roleName: roleNameType,
@as("Path") path: pathType
}
type policy = {
@as("Tags") tags: option<tagListType>,
@as("UpdateDate") updateDate: option<dateType>,
@as("CreateDate") createDate: option<dateType>,
@as("Description") description: option<policyDescriptionType>,
@as("IsAttachable") isAttachable: option<booleanType>,
@as("PermissionsBoundaryUsageCount") permissionsBoundaryUsageCount: option<attachmentCountType>,
@as("AttachmentCount") attachmentCount: option<attachmentCountType>,
@as("DefaultVersionId") defaultVersionId: option<policyVersionIdType>,
@as("Path") path: option<policyPathType>,
@as("Arn") arn: option<arnType>,
@as("PolicyId") policyId: option<idType>,
@as("PolicyName") policyName: option<policyNameType>
}
type managedPolicyDetail = {
@as("PolicyVersionList") policyVersionList: option<policyDocumentVersionListType>,
@as("UpdateDate") updateDate: option<dateType>,
@as("CreateDate") createDate: option<dateType>,
@as("Description") description: option<policyDescriptionType>,
@as("IsAttachable") isAttachable: option<booleanType>,
@as("PermissionsBoundaryUsageCount") permissionsBoundaryUsageCount: option<attachmentCountType>,
@as("AttachmentCount") attachmentCount: option<attachmentCountType>,
@as("DefaultVersionId") defaultVersionId: option<policyVersionIdType>,
@as("Path") path: option<policyPathType>,
@as("Arn") arn: option<arnType>,
@as("PolicyId") policyId: option<idType>,
@as("PolicyName") policyName: option<policyNameType>
}
type listPoliciesGrantingServiceAccessEntry = {
@as("Policies") policies: option<policyGrantingServiceAccessListType>,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespaceType>
}
type groupDetail = {
@as("AttachedManagedPolicies") attachedManagedPolicies: option<attachedPoliciesListType>,
@as("GroupPolicyList") groupPolicyList: option<policyDetailListType>,
@as("CreateDate") createDate: option<dateType>,
@as("Arn") arn: option<arnType>,
@as("GroupId") groupId: option<idType>,
@as("GroupName") groupName: option<groupNameType>,
@as("Path") path: option<pathType>
}
type contextEntryListType = array<contextEntry>
type userListType = array<user>
type userDetailListType = array<userDetail>
type roleListType = array<role>
type policyListType = array<policy>
type listPolicyGrantingServiceAccessResponseListType = array<listPoliciesGrantingServiceAccessEntry>
type groupDetailListType = array<groupDetail>
type virtualMFADevice = {
@as("Tags") tags: option<tagListType>,
@as("EnableDate") enableDate: option<dateType>,
@as("User") user: option<user>,
@as("QRCodePNG") qrcodePNG: option<bootstrapDatum>,
@as("Base32StringSeed") base32StringSeed: option<bootstrapDatum>,
@as("SerialNumber") serialNumber: serialNumberType
}
type servicesLastAccessed = array<serviceLastAccessed>
type resourceSpecificResult = {
@as("PermissionsBoundaryDecisionDetail") permissionsBoundaryDecisionDetail: option<permissionsBoundaryDecisionDetail>,
@as("EvalDecisionDetails") evalDecisionDetails: option<evalDecisionDetailsType>,
@as("MissingContextValues") missingContextValues: option<contextKeyNamesResultListType>,
@as("MatchedStatements") matchedStatements: option<statementListType>,
@as("EvalResourceDecision") evalResourceDecision: policyEvaluationDecisionType,
@as("EvalResourceName") evalResourceName: resourceNameType
}
type managedPolicyDetailListType = array<managedPolicyDetail>
type deletionTaskFailureReasonType = {
@as("RoleUsageList") roleUsageList: option<roleUsageListType>,
@as("Reason") reason: option<reasonType>
}
type virtualMFADeviceListType = array<virtualMFADevice>
type resourceSpecificResultListType = array<resourceSpecificResult>
type instanceProfile = {
@as("Tags") tags: option<tagListType>,
@as("Roles") roles: roleListType,
@as("CreateDate") createDate: dateType,
@as("Arn") arn: arnType,
@as("InstanceProfileId") instanceProfileId: idType,
@as("InstanceProfileName") instanceProfileName: instanceProfileNameType,
@as("Path") path: pathType
}
type instanceProfileListType = array<instanceProfile>
type evaluationResult = {
@as("ResourceSpecificResults") resourceSpecificResults: option<resourceSpecificResultListType>,
@as("EvalDecisionDetails") evalDecisionDetails: option<evalDecisionDetailsType>,
@as("PermissionsBoundaryDecisionDetail") permissionsBoundaryDecisionDetail: option<permissionsBoundaryDecisionDetail>,
@as("OrganizationsDecisionDetail") organizationsDecisionDetail: option<organizationsDecisionDetail>,
@as("MissingContextValues") missingContextValues: option<contextKeyNamesResultListType>,
@as("MatchedStatements") matchedStatements: option<statementListType>,
@as("EvalDecision") evalDecision: policyEvaluationDecisionType,
@as("EvalResourceName") evalResourceName: option<resourceNameType>,
@as("EvalActionName") evalActionName: actionNameType
}
type roleDetail = {
@as("RoleLastUsed") roleLastUsed: option<roleLastUsed>,
@as("Tags") tags: option<tagListType>,
@as("PermissionsBoundary") permissionsBoundary: option<attachedPermissionsBoundary>,
@as("AttachedManagedPolicies") attachedManagedPolicies: option<attachedPoliciesListType>,
@as("RolePolicyList") rolePolicyList: option<policyDetailListType>,
@as("InstanceProfileList") instanceProfileList: option<instanceProfileListType>,
@as("AssumeRolePolicyDocument") assumeRolePolicyDocument: option<policyDocumentType>,
@as("CreateDate") createDate: option<dateType>,
@as("Arn") arn: option<arnType>,
@as("RoleId") roleId: option<idType>,
@as("RoleName") roleName: option<roleNameType>,
@as("Path") path: option<pathType>
}
type evaluationResultsListType = array<evaluationResult>
type roleDetailListType = array<roleDetail>
type awsServiceClient;
@module("@aws-sdk/client-iam") @new external createClient: unit => awsServiceClient = "IAMClient";
module UpdateUser = {
  type t;
  type request = {
@as("NewUserName") newUserName: option<userNameType>,
@as("NewPath") newPath: option<pathType>,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateSigningCertificate = {
  type t;
  type request = {
@as("Status") status: statusType,
@as("CertificateId") certificateId: certificateIdType,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateSigningCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateServiceSpecificCredential = {
  type t;
  type request = {
@as("Status") status: statusType,
@as("ServiceSpecificCredentialId") serviceSpecificCredentialId: serviceSpecificCredentialId,
@as("UserName") userName: option<userNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateServiceSpecificCredentialCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateServerCertificate = {
  type t;
  type request = {
@as("NewServerCertificateName") newServerCertificateName: option<serverCertificateNameType>,
@as("NewPath") newPath: option<pathType>,
@as("ServerCertificateName") serverCertificateName: serverCertificateNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateServerCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateSSHPublicKey = {
  type t;
  type request = {
@as("Status") status: statusType,
@as("SSHPublicKeyId") sshpublicKeyId: publicKeyIdType,
@as("UserName") userName: userNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateSSHPublicKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateSAMLProvider = {
  type t;
  type request = {
@as("SAMLProviderArn") samlproviderArn: arnType,
@as("SAMLMetadataDocument") samlmetadataDocument: samlmetadataDocumentType
}
  type response = {
@as("SAMLProviderArn") samlproviderArn: option<arnType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateSAMLProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRole = {
  type t;
  type request = {
@as("MaxSessionDuration") maxSessionDuration: option<roleMaxSessionDurationType>,
@as("Description") description: option<roleDescriptionType>,
@as("RoleName") roleName: roleNameType
}
  type response = unit
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateLoginProfile = {
  type t;
  type request = {
@as("PasswordResetRequired") passwordResetRequired: option<booleanObjectType>,
@as("Password") password: option<passwordType>,
@as("UserName") userName: userNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateLoginProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateGroup = {
  type t;
  type request = {
@as("NewGroupName") newGroupName: option<groupNameType>,
@as("NewPath") newPath: option<pathType>,
@as("GroupName") groupName: groupNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateAssumeRolePolicy = {
  type t;
  type request = {
@as("PolicyDocument") policyDocument: policyDocumentType,
@as("RoleName") roleName: roleNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateAssumeRolePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateAccountPasswordPolicy = {
  type t;
  type request = {
@as("HardExpiry") hardExpiry: option<booleanObjectType>,
@as("PasswordReusePrevention") passwordReusePrevention: option<passwordReusePreventionType>,
@as("MaxPasswordAge") maxPasswordAge: option<maxPasswordAgeType>,
@as("AllowUsersToChangePassword") allowUsersToChangePassword: option<booleanType>,
@as("RequireLowercaseCharacters") requireLowercaseCharacters: option<booleanType>,
@as("RequireUppercaseCharacters") requireUppercaseCharacters: option<booleanType>,
@as("RequireNumbers") requireNumbers: option<booleanType>,
@as("RequireSymbols") requireSymbols: option<booleanType>,
@as("MinimumPasswordLength") minimumPasswordLength: option<minimumPasswordLengthType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateAccountPasswordPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateAccessKey = {
  type t;
  type request = {
@as("Status") status: statusType,
@as("AccessKeyId") accessKeyId: accessKeyIdType,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateAccessKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SetSecurityTokenServicePreferences = {
  type t;
  type request = {
@as("GlobalEndpointTokenVersion") globalEndpointTokenVersion: globalEndpointTokenVersion
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "SetSecurityTokenServicePreferencesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module SetDefaultPolicyVersion = {
  type t;
  type request = {
@as("VersionId") versionId: policyVersionIdType,
@as("PolicyArn") policyArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "SetDefaultPolicyVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ResyncMFADevice = {
  type t;
  type request = {
@as("AuthenticationCode2") authenticationCode2: authenticationCodeType,
@as("AuthenticationCode1") authenticationCode1: authenticationCodeType,
@as("SerialNumber") serialNumber: serialNumberType,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ResyncMFADeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RemoveUserFromGroup = {
  type t;
  type request = {
@as("UserName") userName: existingUserNameType,
@as("GroupName") groupName: groupNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "RemoveUserFromGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RemoveRoleFromInstanceProfile = {
  type t;
  type request = {
@as("RoleName") roleName: roleNameType,
@as("InstanceProfileName") instanceProfileName: instanceProfileNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "RemoveRoleFromInstanceProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RemoveClientIDFromOpenIDConnectProvider = {
  type t;
  type request = {
@as("ClientID") clientID: clientIDType,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "RemoveClientIDFromOpenIDConnectProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutUserPolicy = {
  type t;
  type request = {
@as("PolicyDocument") policyDocument: policyDocumentType,
@as("PolicyName") policyName: policyNameType,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "PutUserPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutUserPermissionsBoundary = {
  type t;
  type request = {
@as("PermissionsBoundary") permissionsBoundary: arnType,
@as("UserName") userName: userNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "PutUserPermissionsBoundaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutRolePolicy = {
  type t;
  type request = {
@as("PolicyDocument") policyDocument: policyDocumentType,
@as("PolicyName") policyName: policyNameType,
@as("RoleName") roleName: roleNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "PutRolePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutRolePermissionsBoundary = {
  type t;
  type request = {
@as("PermissionsBoundary") permissionsBoundary: arnType,
@as("RoleName") roleName: roleNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "PutRolePermissionsBoundaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutGroupPolicy = {
  type t;
  type request = {
@as("PolicyDocument") policyDocument: policyDocumentType,
@as("PolicyName") policyName: policyNameType,
@as("GroupName") groupName: groupNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "PutGroupPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetUserPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: policyNameType,
@as("UserName") userName: existingUserNameType
}
  type response = {
@as("PolicyDocument") policyDocument: policyDocumentType,
@as("PolicyName") policyName: policyNameType,
@as("UserName") userName: existingUserNameType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetUserPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRolePolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: policyNameType,
@as("RoleName") roleName: roleNameType
}
  type response = {
@as("PolicyDocument") policyDocument: policyDocumentType,
@as("PolicyName") policyName: policyNameType,
@as("RoleName") roleName: roleNameType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetRolePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetGroupPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: policyNameType,
@as("GroupName") groupName: groupNameType
}
  type response = {
@as("PolicyDocument") policyDocument: policyDocumentType,
@as("PolicyName") policyName: policyNameType,
@as("GroupName") groupName: groupNameType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetGroupPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCredentialReport = {
  type t;
  
  type response = {
@as("GeneratedTime") generatedTime: option<dateType>,
@as("ReportFormat") reportFormat: option<reportFormatType>,
@as("Content") content: option<reportContentType>
}
  @module("@aws-sdk/client-iam") @new external new_: (unit) => t = "GetCredentialReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GenerateServiceLastAccessedDetails = {
  type t;
  type request = {
@as("Granularity") granularity: option<accessAdvisorUsageGranularityType>,
@as("Arn") arn: arnType
}
  type response = {
@as("JobId") jobId: option<jobIDType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GenerateServiceLastAccessedDetailsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GenerateOrganizationsAccessReport = {
  type t;
  type request = {
@as("OrganizationsPolicyId") organizationsPolicyId: option<organizationsPolicyIdType>,
@as("EntityPath") entityPath: organizationsEntityPathType
}
  type response = {
@as("JobId") jobId: option<jobIDType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GenerateOrganizationsAccessReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GenerateCredentialReport = {
  type t;
  
  type response = {
@as("Description") description: option<reportStateDescriptionType>,
@as("State") state: option<reportStateType>
}
  @module("@aws-sdk/client-iam") @new external new_: (unit) => t = "GenerateCredentialReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableMFADevice = {
  type t;
  type request = {
@as("AuthenticationCode2") authenticationCode2: authenticationCodeType,
@as("AuthenticationCode1") authenticationCode1: authenticationCodeType,
@as("SerialNumber") serialNumber: serialNumberType,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "EnableMFADeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DetachUserPolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: arnType,
@as("UserName") userName: userNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DetachUserPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DetachRolePolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: arnType,
@as("RoleName") roleName: roleNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DetachRolePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DetachGroupPolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: arnType,
@as("GroupName") groupName: groupNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DetachGroupPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteVirtualMFADevice = {
  type t;
  type request = {
@as("SerialNumber") serialNumber: serialNumberType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteVirtualMFADeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteUserPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: policyNameType,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteUserPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteUserPermissionsBoundary = {
  type t;
  type request = {
@as("UserName") userName: userNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteUserPermissionsBoundaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteSigningCertificate = {
  type t;
  type request = {
@as("CertificateId") certificateId: certificateIdType,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteSigningCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteServiceSpecificCredential = {
  type t;
  type request = {
@as("ServiceSpecificCredentialId") serviceSpecificCredentialId: serviceSpecificCredentialId,
@as("UserName") userName: option<userNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteServiceSpecificCredentialCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteServiceLinkedRole = {
  type t;
  type request = {
@as("RoleName") roleName: roleNameType
}
  type response = {
@as("DeletionTaskId") deletionTaskId: deletionTaskIdType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteServiceLinkedRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteServerCertificate = {
  type t;
  type request = {
@as("ServerCertificateName") serverCertificateName: serverCertificateNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteServerCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteSSHPublicKey = {
  type t;
  type request = {
@as("SSHPublicKeyId") sshpublicKeyId: publicKeyIdType,
@as("UserName") userName: userNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteSSHPublicKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteSAMLProvider = {
  type t;
  type request = {
@as("SAMLProviderArn") samlproviderArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteSAMLProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteRolePolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: policyNameType,
@as("RoleName") roleName: roleNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteRolePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteRolePermissionsBoundary = {
  type t;
  type request = {
@as("RoleName") roleName: roleNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteRolePermissionsBoundaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteRole = {
  type t;
  type request = {
@as("RoleName") roleName: roleNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeletePolicyVersion = {
  type t;
  type request = {
@as("VersionId") versionId: policyVersionIdType,
@as("PolicyArn") policyArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeletePolicyVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeletePolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeletePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteOpenIDConnectProvider = {
  type t;
  type request = {
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteOpenIDConnectProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteLoginProfile = {
  type t;
  type request = {
@as("UserName") userName: userNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteLoginProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteInstanceProfile = {
  type t;
  type request = {
@as("InstanceProfileName") instanceProfileName: instanceProfileNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteInstanceProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteGroupPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: policyNameType,
@as("GroupName") groupName: groupNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteGroupPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteGroup = {
  type t;
  type request = {
@as("GroupName") groupName: groupNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccountPasswordPolicy = {
  type t;
  
  
  @module("@aws-sdk/client-iam") @new external new_: (unit) => t = "DeleteAccountPasswordPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccountAlias = {
  type t;
  type request = {
@as("AccountAlias") accountAlias: accountAliasType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteAccountAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccessKey = {
  type t;
  type request = {
@as("AccessKeyId") accessKeyId: accessKeyIdType,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteAccessKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeactivateMFADevice = {
  type t;
  type request = {
@as("SerialNumber") serialNumber: serialNumberType,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeactivateMFADeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateAccountAlias = {
  type t;
  type request = {
@as("AccountAlias") accountAlias: accountAliasType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateAccountAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ChangePassword = {
  type t;
  type request = {
@as("NewPassword") newPassword: passwordType,
@as("OldPassword") oldPassword: passwordType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ChangePasswordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AttachUserPolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: arnType,
@as("UserName") userName: userNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AttachUserPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AttachRolePolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: arnType,
@as("RoleName") roleName: roleNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AttachRolePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AttachGroupPolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: arnType,
@as("GroupName") groupName: groupNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AttachGroupPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AddUserToGroup = {
  type t;
  type request = {
@as("UserName") userName: existingUserNameType,
@as("GroupName") groupName: groupNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AddUserToGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AddRoleToInstanceProfile = {
  type t;
  type request = {
@as("RoleName") roleName: roleNameType,
@as("InstanceProfileName") instanceProfileName: instanceProfileNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AddRoleToInstanceProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AddClientIDToOpenIDConnectProvider = {
  type t;
  type request = {
@as("ClientID") clientID: clientIDType,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AddClientIDToOpenIDConnectProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UploadSigningCertificate = {
  type t;
  type request = {
@as("CertificateBody") certificateBody: certificateBodyType,
@as("UserName") userName: option<existingUserNameType>
}
  type response = {
@as("Certificate") certificate: signingCertificate
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UploadSigningCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UploadSSHPublicKey = {
  type t;
  type request = {
@as("SSHPublicKeyBody") sshpublicKeyBody: publicKeyMaterialType,
@as("UserName") userName: userNameType
}
  type response = {
@as("SSHPublicKey") sshpublicKey: option<sshpublicKey>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UploadSSHPublicKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateOpenIDConnectProviderThumbprint = {
  type t;
  type request = {
@as("ThumbprintList") thumbprintList: thumbprintListType,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateOpenIDConnectProviderThumbprintCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagUser = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyListType,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagServerCertificate = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyListType,
@as("ServerCertificateName") serverCertificateName: serverCertificateNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagServerCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagSAMLProvider = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyListType,
@as("SAMLProviderArn") samlproviderArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagSAMLProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagRole = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyListType,
@as("RoleName") roleName: roleNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagPolicy = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyListType,
@as("PolicyArn") policyArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagOpenIDConnectProvider = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyListType,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagOpenIDConnectProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagMFADevice = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyListType,
@as("SerialNumber") serialNumber: serialNumberType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagMFADeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagInstanceProfile = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyListType,
@as("InstanceProfileName") instanceProfileName: instanceProfileNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagInstanceProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ResetServiceSpecificCredential = {
  type t;
  type request = {
@as("ServiceSpecificCredentialId") serviceSpecificCredentialId: serviceSpecificCredentialId,
@as("UserName") userName: option<userNameType>
}
  type response = {
@as("ServiceSpecificCredential") serviceSpecificCredential: option<serviceSpecificCredential>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ResetServiceSpecificCredentialCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUserPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("UserName") userName: existingUserNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("PolicyNames") policyNames: policyNameListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListUserPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRolePolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("RoleName") roleName: roleNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("PolicyNames") policyNames: policyNameListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListRolePoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGroupPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("GroupName") groupName: groupNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("PolicyNames") policyNames: policyNameListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListGroupPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccountAliases = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("AccountAliases") accountAliases: accountAliasListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListAccountAliasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSSHPublicKey = {
  type t;
  type request = {
@as("Encoding") encoding: encodingType,
@as("SSHPublicKeyId") sshpublicKeyId: publicKeyIdType,
@as("UserName") userName: userNameType
}
  type response = {
@as("SSHPublicKey") sshpublicKey: option<sshpublicKey>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetSSHPublicKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPolicyVersion = {
  type t;
  type request = {
@as("VersionId") versionId: policyVersionIdType,
@as("PolicyArn") policyArn: arnType
}
  type response = {
@as("PolicyVersion") policyVersion: option<policyVersion>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetPolicyVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLoginProfile = {
  type t;
  type request = {
@as("UserName") userName: userNameType
}
  type response = {
@as("LoginProfile") loginProfile: loginProfile
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetLoginProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContextKeysForPrincipalPolicy = {
  type t;
  type request = {
@as("PolicyInputList") policyInputList: option<simulationPolicyListType>,
@as("PolicySourceArn") policySourceArn: arnType
}
  type response = {
@as("ContextKeyNames") contextKeyNames: option<contextKeyNamesResultListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetContextKeysForPrincipalPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContextKeysForCustomPolicy = {
  type t;
  type request = {
@as("PolicyInputList") policyInputList: simulationPolicyListType
}
  type response = {
@as("ContextKeyNames") contextKeyNames: option<contextKeyNamesResultListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetContextKeysForCustomPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccountSummary = {
  type t;
  
  type response = {
@as("SummaryMap") summaryMap: option<summaryMapType>
}
  @module("@aws-sdk/client-iam") @new external new_: (unit) => t = "GetAccountSummaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccountPasswordPolicy = {
  type t;
  
  type response = {
@as("PasswordPolicy") passwordPolicy: passwordPolicy
}
  @module("@aws-sdk/client-iam") @new external new_: (unit) => t = "GetAccountPasswordPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccessKeyLastUsed = {
  type t;
  type request = {
@as("AccessKeyId") accessKeyId: accessKeyIdType
}
  type response = {
@as("AccessKeyLastUsed") accessKeyLastUsed: option<accessKeyLastUsed>,
@as("UserName") userName: option<existingUserNameType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetAccessKeyLastUsedCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateServiceSpecificCredential = {
  type t;
  type request = {
@as("ServiceName") serviceName: serviceName,
@as("UserName") userName: userNameType
}
  type response = {
@as("ServiceSpecificCredential") serviceSpecificCredential: option<serviceSpecificCredential>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateServiceSpecificCredentialCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePolicyVersion = {
  type t;
  type request = {
@as("SetAsDefault") setAsDefault: option<booleanType>,
@as("PolicyDocument") policyDocument: policyDocumentType,
@as("PolicyArn") policyArn: arnType
}
  type response = {
@as("PolicyVersion") policyVersion: option<policyVersion>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreatePolicyVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLoginProfile = {
  type t;
  type request = {
@as("PasswordResetRequired") passwordResetRequired: option<booleanType>,
@as("Password") password: passwordType,
@as("UserName") userName: userNameType
}
  type response = {
@as("LoginProfile") loginProfile: loginProfile
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateLoginProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateGroup = {
  type t;
  type request = {
@as("GroupName") groupName: groupNameType,
@as("Path") path: option<pathType>
}
  type response = {
@as("Group") group: group
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAccessKey = {
  type t;
  type request = {
@as("UserName") userName: option<existingUserNameType>
}
  type response = {
@as("AccessKey") accessKey: accessKey
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateAccessKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UploadServerCertificate = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("CertificateChain") certificateChain: option<certificateChainType>,
@as("PrivateKey") privateKey: privateKeyType,
@as("CertificateBody") certificateBody: certificateBodyType,
@as("ServerCertificateName") serverCertificateName: serverCertificateNameType,
@as("Path") path: option<pathType>
}
  type response = {
@as("Tags") tags: option<tagListType>,
@as("ServerCertificateMetadata") serverCertificateMetadata: option<serverCertificateMetadata>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UploadServerCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagUser = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagServerCertificate = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("ServerCertificateName") serverCertificateName: serverCertificateNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagServerCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagSAMLProvider = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("SAMLProviderArn") samlproviderArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagSAMLProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagRole = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("RoleName") roleName: roleNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagPolicy = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("PolicyArn") policyArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagOpenIDConnectProvider = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: arnType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagOpenIDConnectProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagMFADevice = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("SerialNumber") serialNumber: serialNumberType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagMFADeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagInstanceProfile = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("InstanceProfileName") instanceProfileName: instanceProfileNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagInstanceProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListUserTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("UserName") userName: existingUserNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Tags") tags: tagListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListUserTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSigningCertificates = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("UserName") userName: option<existingUserNameType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Certificates") certificates: certificateListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListSigningCertificatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListServiceSpecificCredentials = {
  type t;
  type request = {
@as("ServiceName") serviceName: option<serviceName>,
@as("UserName") userName: option<userNameType>
}
  type response = {
@as("ServiceSpecificCredentials") serviceSpecificCredentials: option<serviceSpecificCredentialsListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListServiceSpecificCredentialsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListServerCertificates = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PathPrefix") pathPrefix: option<pathPrefixType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("ServerCertificateMetadataList") serverCertificateMetadataList: serverCertificateMetadataListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListServerCertificatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListServerCertificateTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("ServerCertificateName") serverCertificateName: serverCertificateNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Tags") tags: tagListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListServerCertificateTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSSHPublicKeys = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("UserName") userName: option<userNameType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("SSHPublicKeys") sshpublicKeys: option<sshpublicKeyListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListSSHPublicKeysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSAMLProviders = {
  type t;
  type request = unit
  type response = {
@as("SAMLProviderList") samlproviderList: option<samlproviderListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListSAMLProvidersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSAMLProviderTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("SAMLProviderArn") samlproviderArn: arnType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Tags") tags: tagListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListSAMLProviderTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRoleTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("RoleName") roleName: roleNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Tags") tags: tagListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListRoleTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPolicyVersions = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PolicyArn") policyArn: arnType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Versions") versions: option<policyDocumentVersionListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListPolicyVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPolicyTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PolicyArn") policyArn: arnType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Tags") tags: tagListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListPolicyTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOpenIDConnectProviders = {
  type t;
  type request = unit
  type response = {
@as("OpenIDConnectProviderList") openIDConnectProviderList: option<openIDConnectProviderListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListOpenIDConnectProvidersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOpenIDConnectProviderTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: arnType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Tags") tags: tagListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListOpenIDConnectProviderTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListMFADevices = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("UserName") userName: option<existingUserNameType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("MFADevices") mfadevices: mfaDeviceListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListMFADevicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListMFADeviceTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("SerialNumber") serialNumber: serialNumberType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Tags") tags: tagListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListMFADeviceTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInstanceProfileTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("InstanceProfileName") instanceProfileName: instanceProfileNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Tags") tags: tagListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListInstanceProfileTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGroupsForUser = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("UserName") userName: existingUserNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Groups") groups: groupListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListGroupsForUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGroups = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PathPrefix") pathPrefix: option<pathPrefixType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Groups") groups: groupListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEntitiesForPolicy = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PolicyUsageFilter") policyUsageFilter: option<policyUsageType>,
@as("PathPrefix") pathPrefix: option<pathType>,
@as("EntityFilter") entityFilter: option<entityType>,
@as("PolicyArn") policyArn: arnType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("PolicyRoles") policyRoles: option<policyRoleListType>,
@as("PolicyUsers") policyUsers: option<policyUserListType>,
@as("PolicyGroups") policyGroups: option<policyGroupListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListEntitiesForPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAttachedUserPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PathPrefix") pathPrefix: option<policyPathType>,
@as("UserName") userName: userNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("AttachedPolicies") attachedPolicies: option<attachedPoliciesListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListAttachedUserPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAttachedRolePolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PathPrefix") pathPrefix: option<policyPathType>,
@as("RoleName") roleName: roleNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("AttachedPolicies") attachedPolicies: option<attachedPoliciesListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListAttachedRolePoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAttachedGroupPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PathPrefix") pathPrefix: option<policyPathType>,
@as("GroupName") groupName: groupNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("AttachedPolicies") attachedPolicies: option<attachedPoliciesListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListAttachedGroupPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccessKeys = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("UserName") userName: option<existingUserNameType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("AccessKeyMetadata") accessKeyMetadata: accessKeyMetadataListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListAccessKeysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSAMLProvider = {
  type t;
  type request = {
@as("SAMLProviderArn") samlproviderArn: arnType
}
  type response = {
@as("Tags") tags: option<tagListType>,
@as("ValidUntil") validUntil: option<dateType>,
@as("CreateDate") createDate: option<dateType>,
@as("SAMLMetadataDocument") samlmetadataDocument: option<samlmetadataDocumentType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetSAMLProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetOrganizationsAccessReport = {
  type t;
  type request = {
@as("SortKey") sortKey: option<sortKeyType>,
@as("Marker") marker: option<markerType>,
@as("MaxItems") maxItems: option<maxItemsType>,
@as("JobId") jobId: jobIDType
}
  type response = {
@as("ErrorDetails") errorDetails: option<errorDetails>,
@as("Marker") marker: option<markerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("AccessDetails") accessDetails: option<accessDetails>,
@as("NumberOfServicesNotAccessed") numberOfServicesNotAccessed: option<integerType>,
@as("NumberOfServicesAccessible") numberOfServicesAccessible: option<integerType>,
@as("JobCompletionDate") jobCompletionDate: option<dateType>,
@as("JobCreationDate") jobCreationDate: dateType,
@as("JobStatus") jobStatus: jobStatusType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetOrganizationsAccessReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetOpenIDConnectProvider = {
  type t;
  type request = {
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: arnType
}
  type response = {
@as("Tags") tags: option<tagListType>,
@as("CreateDate") createDate: option<dateType>,
@as("ThumbprintList") thumbprintList: option<thumbprintListType>,
@as("ClientIDList") clientIDList: option<clientIDListType>,
@as("Url") url: option<openIDConnectProviderUrlType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetOpenIDConnectProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSAMLProvider = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("Name") name: samlproviderNameType,
@as("SAMLMetadataDocument") samlmetadataDocument: samlmetadataDocumentType
}
  type response = {
@as("Tags") tags: option<tagListType>,
@as("SAMLProviderArn") samlproviderArn: option<arnType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateSAMLProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateOpenIDConnectProvider = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("ThumbprintList") thumbprintList: thumbprintListType,
@as("ClientIDList") clientIDList: option<clientIDListType>,
@as("Url") url: openIDConnectProviderUrlType
}
  type response = {
@as("Tags") tags: option<tagListType>,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: option<arnType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateOpenIDConnectProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRoleDescription = {
  type t;
  type request = {
@as("Description") description: roleDescriptionType,
@as("RoleName") roleName: roleNameType
}
  type response = {
@as("Role") role: option<role>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateRoleDescriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetUser = {
  type t;
  type request = {
@as("UserName") userName: option<existingUserNameType>
}
  type response = {
@as("User") user: user
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetServiceLastAccessedDetailsWithEntities = {
  type t;
  type request = {
@as("Marker") marker: option<markerType>,
@as("MaxItems") maxItems: option<maxItemsType>,
@as("ServiceNamespace") serviceNamespace: serviceNamespaceType,
@as("JobId") jobId: jobIDType
}
  type response = {
@as("Error") error: option<errorDetails>,
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("EntityDetailsList") entityDetailsList: entityDetailsListType,
@as("JobCompletionDate") jobCompletionDate: dateType,
@as("JobCreationDate") jobCreationDate: dateType,
@as("JobStatus") jobStatus: jobStatusType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetServiceLastAccessedDetailsWithEntitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetServerCertificate = {
  type t;
  type request = {
@as("ServerCertificateName") serverCertificateName: serverCertificateNameType
}
  type response = {
@as("ServerCertificate") serverCertificate: serverCertificate
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetServerCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRole = {
  type t;
  type request = {
@as("RoleName") roleName: roleNameType
}
  type response = {
@as("Role") role: role
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: arnType
}
  type response = {
@as("Policy") policy: option<policy>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("PermissionsBoundary") permissionsBoundary: option<arnType>,
@as("UserName") userName: userNameType,
@as("Path") path: option<pathType>
}
  type response = {
@as("User") user: option<user>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateServiceLinkedRole = {
  type t;
  type request = {
@as("CustomSuffix") customSuffix: option<customSuffixType>,
@as("Description") description: option<roleDescriptionType>,
@as("AWSServiceName") awsserviceName: groupNameType
}
  type response = {
@as("Role") role: option<role>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateServiceLinkedRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRole = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("PermissionsBoundary") permissionsBoundary: option<arnType>,
@as("MaxSessionDuration") maxSessionDuration: option<roleMaxSessionDurationType>,
@as("Description") description: option<roleDescriptionType>,
@as("AssumeRolePolicyDocument") assumeRolePolicyDocument: policyDocumentType,
@as("RoleName") roleName: roleNameType,
@as("Path") path: option<pathType>
}
  type response = {
@as("Role") role: role
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePolicy = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("Description") description: option<policyDescriptionType>,
@as("PolicyDocument") policyDocument: policyDocumentType,
@as("Path") path: option<policyPathType>,
@as("PolicyName") policyName: policyNameType
}
  type response = {
@as("Policy") policy: option<policy>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreatePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PathPrefix") pathPrefix: option<pathPrefixType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Users") users: userListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListUsersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRoles = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PathPrefix") pathPrefix: option<pathPrefixType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Roles") roles: roleListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListRolesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPoliciesGrantingServiceAccess = {
  type t;
  type request = {
@as("ServiceNamespaces") serviceNamespaces: serviceNamespaceListType,
@as("Arn") arn: arnType,
@as("Marker") marker: option<markerType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("PoliciesGrantingServiceAccess") policiesGrantingServiceAccess: listPolicyGrantingServiceAccessResponseListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListPoliciesGrantingServiceAccessCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PolicyUsageFilter") policyUsageFilter: option<policyUsageType>,
@as("PathPrefix") pathPrefix: option<policyPathType>,
@as("OnlyAttached") onlyAttached: option<booleanType>,
@as("Scope") scope: option<policyScopeType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Policies") policies: option<policyListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetServiceLinkedRoleDeletionStatus = {
  type t;
  type request = {
@as("DeletionTaskId") deletionTaskId: deletionTaskIdType
}
  type response = {
@as("Reason") reason: option<deletionTaskFailureReasonType>,
@as("Status") status: deletionTaskStatusType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetServiceLinkedRoleDeletionStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetServiceLastAccessedDetails = {
  type t;
  type request = {
@as("Marker") marker: option<markerType>,
@as("MaxItems") maxItems: option<maxItemsType>,
@as("JobId") jobId: jobIDType
}
  type response = {
@as("Error") error: option<errorDetails>,
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("JobCompletionDate") jobCompletionDate: dateType,
@as("ServicesLastAccessed") servicesLastAccessed: servicesLastAccessed,
@as("JobCreationDate") jobCreationDate: dateType,
@as("JobType") jobType: option<accessAdvisorUsageGranularityType>,
@as("JobStatus") jobStatus: jobStatusType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetServiceLastAccessedDetailsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetGroup = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("GroupName") groupName: groupNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Users") users: userListType,
@as("Group") group: group
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateVirtualMFADevice = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("VirtualMFADeviceName") virtualMFADeviceName: virtualMFADeviceName,
@as("Path") path: option<pathType>
}
  type response = {
@as("VirtualMFADevice") virtualMFADevice: virtualMFADevice
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateVirtualMFADeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListVirtualMFADevices = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("AssignmentStatus") assignmentStatus: option<assignmentStatusType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("VirtualMFADevices") virtualMFADevices: virtualMFADeviceListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListVirtualMFADevicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInstanceProfile = {
  type t;
  type request = {
@as("InstanceProfileName") instanceProfileName: instanceProfileNameType
}
  type response = {
@as("InstanceProfile") instanceProfile: instanceProfile
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetInstanceProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateInstanceProfile = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("Path") path: option<pathType>,
@as("InstanceProfileName") instanceProfileName: instanceProfileNameType
}
  type response = {
@as("InstanceProfile") instanceProfile: instanceProfile
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateInstanceProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInstanceProfilesForRole = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("RoleName") roleName: roleNameType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("InstanceProfiles") instanceProfiles: instanceProfileListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListInstanceProfilesForRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInstanceProfiles = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Marker") marker: option<markerType>,
@as("PathPrefix") pathPrefix: option<pathPrefixType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("InstanceProfiles") instanceProfiles: instanceProfileListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListInstanceProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SimulatePrincipalPolicy = {
  type t;
  type request = {
@as("Marker") marker: option<markerType>,
@as("MaxItems") maxItems: option<maxItemsType>,
@as("ResourceHandlingOption") resourceHandlingOption: option<resourceHandlingOptionType>,
@as("ContextEntries") contextEntries: option<contextEntryListType>,
@as("CallerArn") callerArn: option<resourceNameType>,
@as("ResourceOwner") resourceOwner: option<resourceNameType>,
@as("ResourcePolicy") resourcePolicy: option<policyDocumentType>,
@as("ResourceArns") resourceArns: option<resourceNameListType>,
@as("ActionNames") actionNames: actionNameListType,
@as("PermissionsBoundaryPolicyInputList") permissionsBoundaryPolicyInputList: option<simulationPolicyListType>,
@as("PolicyInputList") policyInputList: option<simulationPolicyListType>,
@as("PolicySourceArn") policySourceArn: arnType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("EvaluationResults") evaluationResults: option<evaluationResultsListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "SimulatePrincipalPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SimulateCustomPolicy = {
  type t;
  type request = {
@as("Marker") marker: option<markerType>,
@as("MaxItems") maxItems: option<maxItemsType>,
@as("ResourceHandlingOption") resourceHandlingOption: option<resourceHandlingOptionType>,
@as("ContextEntries") contextEntries: option<contextEntryListType>,
@as("CallerArn") callerArn: option<resourceNameType>,
@as("ResourceOwner") resourceOwner: option<resourceNameType>,
@as("ResourcePolicy") resourcePolicy: option<policyDocumentType>,
@as("ResourceArns") resourceArns: option<resourceNameListType>,
@as("ActionNames") actionNames: actionNameListType,
@as("PermissionsBoundaryPolicyInputList") permissionsBoundaryPolicyInputList: option<simulationPolicyListType>,
@as("PolicyInputList") policyInputList: simulationPolicyListType
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("EvaluationResults") evaluationResults: option<evaluationResultsListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "SimulateCustomPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccountAuthorizationDetails = {
  type t;
  type request = {
@as("Marker") marker: option<markerType>,
@as("MaxItems") maxItems: option<maxItemsType>,
@as("Filter") filter: option<entityListType>
}
  type response = {
@as("Marker") marker: option<responseMarkerType>,
@as("IsTruncated") isTruncated: option<booleanType>,
@as("Policies") policies: option<managedPolicyDetailListType>,
@as("RoleDetailList") roleDetailList: option<roleDetailListType>,
@as("GroupDetailList") groupDetailList: option<groupDetailListType>,
@as("UserDetailList") userDetailList: option<userDetailListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetAccountAuthorizationDetailsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
