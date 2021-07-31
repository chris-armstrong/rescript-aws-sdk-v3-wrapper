type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type virtualMFADeviceName = string
type userNameType = string
type unrecognizedPublicKeyEncodingMessage = string
type unmodifiableEntityMessage = string
type thumbprintType = string
type tagValueType = string
type tagKeyType = string
type summaryValueType = int;
type summaryKeyType = [@as("GlobalEndpointTokenVersion") #GlobalEndpointTokenVersion | @as("VersionsPerPolicyQuota") #VersionsPerPolicyQuota | @as("PolicyVersionsInUseQuota") #PolicyVersionsInUseQuota | @as("PolicyVersionsInUse") #PolicyVersionsInUse | @as("PolicySizeQuota") #PolicySizeQuota | @as("PoliciesQuota") #PoliciesQuota | @as("Policies") #Policies | @as("AttachedPoliciesPerUserQuota") #AttachedPoliciesPerUserQuota | @as("AttachedPoliciesPerRoleQuota") #AttachedPoliciesPerRoleQuota | @as("AttachedPoliciesPerGroupQuota") #AttachedPoliciesPerGroupQuota | @as("AccountSigningCertificatesPresent") #AccountSigningCertificatesPresent | @as("AccountAccessKeysPresent") #AccountAccessKeysPresent | @as("AccountMFAEnabled") #AccountMFAEnabled | @as("MFADevicesInUse") #MFADevicesInUse | @as("MFADevices") #MFADevices | @as("AccessKeysPerUserQuota") #AccessKeysPerUserQuota | @as("SigningCertificatesPerUserQuota") #SigningCertificatesPerUserQuota | @as("GroupsPerUserQuota") #GroupsPerUserQuota | @as("GroupPolicySizeQuota") #GroupPolicySizeQuota | @as("UserPolicySizeQuota") #UserPolicySizeQuota | @as("ServerCertificatesQuota") #ServerCertificatesQuota | @as("ServerCertificates") #ServerCertificates | @as("GroupsQuota") #GroupsQuota | @as("Groups") #Groups | @as("UsersQuota") #UsersQuota | @as("Users") #Users]
type stringType = string
type statusType = [@as("Inactive") #Inactive | @as("Active") #Active]
type sortKeyType = [@as("LAST_AUTHENTICATED_TIME_DESCENDING") #LAST_AUTHENTICATED_TIME_DESCENDING | @as("LAST_AUTHENTICATED_TIME_ASCENDING") #LAST_AUTHENTICATED_TIME_ASCENDING | @as("SERVICE_NAMESPACE_DESCENDING") #SERVICE_NAMESPACE_DESCENDING | @as("SERVICE_NAMESPACE_ASCENDING") #SERVICE_NAMESPACE_ASCENDING]
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
type roleMaxSessionDurationType = int;
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
type passwordReusePreventionType = int;
type passwordPolicyViolationMessage = string
type organizationsPolicyIdType = string
type organizationsEntityPathType = string
type noSuchEntityMessage = string
type minimumPasswordLengthType = int;
type maxPasswordAgeType = int;
type maxItemsType = int;
type markerType = string
type malformedPolicyDocumentMessage = string
type malformedCertificateMessage = string
type limitExceededMessage = string
type keyPairMismatchMessage = string
type jobStatusType = [@as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS]
type jobIDType = string
type invalidUserTypeMessage = string
type invalidPublicKeyMessage = string
type invalidInputMessage = string
type invalidCertificateMessage = string
type invalidAuthenticationCodeMessage = string
type integerType = int;
type instanceProfileNameType = string
type idType = string
type groupNameType = string
type globalEndpointTokenVersion = [@as("v2Token") #v2Token | @as("v1Token") #v1Token]
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
type booleanType = bool;
type booleanObjectType = bool;
type authenticationCodeType = string
type attachmentCountType = int;
type assignmentStatusType = [@as("Any") #Any | @as("Unassigned") #Unassigned | @as("Assigned") #Assigned]
type arnType = string
type accountAliasType = string
type accessKeySecretType = string
type accessKeyIdType = string
type sAMLProviderNameType = string
type sAMLMetadataDocumentType = string
type resourceNameType = string
type resourceHandlingOptionType = string
type reportStateType = [@as("COMPLETE") #COMPLETE | @as("INPROGRESS") #INPROGRESS | @as("STARTED") #STARTED]
type reportStateDescriptionType = string
type reportFormatType = [@as("text/csv") #text_csv]
type reportContentType = NodeJs.Buffer.t;
type regionNameType = string
type reasonType = string
type policyUsageType = [@as("PermissionsBoundary") #PermissionsBoundary | @as("PermissionsPolicy") #PermissionsPolicy]
type policySourceType = [@as("none") #none | @as("resource") #resource | @as("user-managed") #user_managed | @as("aws-managed") #aws_managed | @as("role") #role | @as("group") #group | @as("user") #user]
type policyIdentifierType = string
type policyEvaluationDecisionType = [@as("implicitDeny") #implicitDeny | @as("explicitDeny") #explicitDeny | @as("allowed") #allowed]
type permissionsBoundaryAttachmentType = [@as("PermissionsBoundaryPolicy") #PermissionsBoundaryPolicy]
type openIDConnectProviderUrlType = string
type lineNumber = int;
type evalDecisionSourceType = string
type entityType = [@as("AWSManagedPolicy") #AWSManagedPolicy | @as("LocalManagedPolicy") #LocalManagedPolicy | @as("Group") #Group | @as("Role") #Role | @as("User") #User]
type deletionTaskStatusType = [@as("NOT_STARTED") #NOT_STARTED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS | @as("SUCCEEDED") #SUCCEEDED]
type deletionTaskIdType = string
type contextKeyValueType = string
type contextKeyTypeEnum = [@as("dateList") #dateList | @as("date") #date | @as("binaryList") #binaryList | @as("binary") #binary | @as("ipList") #ipList | @as("ip") #ip | @as("booleanList") #booleanList | @as("boolean") #boolean | @as("numericList") #numericList | @as("numeric") #numeric | @as("stringList") #stringList | @as("string") #string]
type contextKeyNameType = string
type concurrentModificationMessage = string
type columnNumber = int;
type bootstrapDatum = NodeJs.Buffer.t;
type actionNameType = string
type accessAdvisorUsageGranularityType = [@as("ACTION_LEVEL") #ACTION_LEVEL | @as("SERVICE_LEVEL") #SERVICE_LEVEL]
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
@as("LastAccessedRegion") lastAccessedRegion: stringType,
@as("LastAccessedTime") lastAccessedTime: dateType,
@as("LastAccessedEntity") lastAccessedEntity: arnType,
@as("ActionName") actionName: stringType
}
type tag = {
@as("Value") value: option<tagValueType>,
@as("Key") key: option<tagKeyType>
}
type simulationPolicyListType = array<policyDocumentType>
type signingCertificate = {
@as("UploadDate") uploadDate: dateType,
@as("Status") status: option<statusType>,
@as("CertificateBody") certificateBody: option<certificateBodyType>,
@as("CertificateId") certificateId: option<certificateIdType>,
@as("UserName") userName: option<userNameType>
}
type serviceSpecificCredentialMetadata = {
@as("ServiceName") serviceName: option<serviceName>,
@as("ServiceSpecificCredentialId") serviceSpecificCredentialId: option<serviceSpecificCredentialId>,
@as("CreateDate") createDate: option<dateType>,
@as("ServiceUserName") serviceUserName: option<serviceUserName>,
@as("Status") status: option<statusType>,
@as("UserName") userName: option<userNameType>
}
type serviceSpecificCredential = {
@as("Status") status: option<statusType>,
@as("UserName") userName: option<userNameType>,
@as("ServiceSpecificCredentialId") serviceSpecificCredentialId: option<serviceSpecificCredentialId>,
@as("ServicePassword") servicePassword: option<servicePassword>,
@as("ServiceUserName") serviceUserName: option<serviceUserName>,
@as("ServiceName") serviceName: option<serviceName>,
@as("CreateDate") createDate: option<dateType>
}
type serverCertificateMetadata = {
@as("Expiration") expiration: dateType,
@as("UploadDate") uploadDate: dateType,
@as("Arn") arn: option<arnType>,
@as("ServerCertificateId") serverCertificateId: option<idType>,
@as("ServerCertificateName") serverCertificateName: option<serverCertificateNameType>,
@as("Path") path: option<pathType>
}
type sSHPublicKeyMetadata = {
@as("UploadDate") uploadDate: option<dateType>,
@as("Status") status: option<statusType>,
@as("SSHPublicKeyId") sSHPublicKeyId: option<publicKeyIdType>,
@as("UserName") userName: option<userNameType>
}
type sSHPublicKey = {
@as("UploadDate") uploadDate: dateType,
@as("Status") status: option<statusType>,
@as("SSHPublicKeyBody") sSHPublicKeyBody: option<publicKeyMaterialType>,
@as("Fingerprint") fingerprint: option<publicKeyFingerprintType>,
@as("SSHPublicKeyId") sSHPublicKeyId: option<publicKeyIdType>,
@as("UserName") userName: option<userNameType>
}
type sAMLProviderListEntry = {
@as("CreateDate") createDate: dateType,
@as("ValidUntil") validUntil: dateType,
@as("Arn") arn: arnType
}
type roleLastUsed = {
@as("Region") region: stringType,
@as("LastUsedDate") lastUsedDate: dateType
}
type resourceNameListType = array<resourceNameType>
type position = {
@as("Column") column: columnNumber,
@as("Line") line: lineNumber
}
type policyVersion = {
@as("CreateDate") createDate: dateType,
@as("IsDefaultVersion") isDefaultVersion: booleanType,
@as("VersionId") versionId: policyVersionIdType,
@as("Document") document: policyDocumentType
}
type policyUser = {
@as("UserId") userId: idType,
@as("UserName") userName: userNameType
}
type policyRole = {
@as("RoleId") roleId: idType,
@as("RoleName") roleName: roleNameType
}
type policyGroup = {
@as("GroupId") groupId: idType,
@as("GroupName") groupName: groupNameType
}
type policyGrantingServiceAccess = {
@as("EntityName") entityName: entityNameType,
@as("EntityType") entityType: policyOwnerEntityType,
@as("PolicyArn") policyArn: arnType,
@as("PolicyType") policyType: option<policyType>,
@as("PolicyName") policyName: option<policyNameType>
}
type policyDetail = {
@as("PolicyDocument") policyDocument: policyDocumentType,
@as("PolicyName") policyName: policyNameType
}
type permissionsBoundaryDecisionDetail = {
@as("AllowedByPermissionsBoundary") allowedByPermissionsBoundary: booleanType
}
type passwordPolicy = {
@as("HardExpiry") hardExpiry: booleanObjectType,
@as("PasswordReusePrevention") passwordReusePrevention: passwordReusePreventionType,
@as("MaxPasswordAge") maxPasswordAge: maxPasswordAgeType,
@as("ExpirePasswords") expirePasswords: booleanType,
@as("AllowUsersToChangePassword") allowUsersToChangePassword: booleanType,
@as("RequireLowercaseCharacters") requireLowercaseCharacters: booleanType,
@as("RequireUppercaseCharacters") requireUppercaseCharacters: booleanType,
@as("RequireNumbers") requireNumbers: booleanType,
@as("RequireSymbols") requireSymbols: booleanType,
@as("MinimumPasswordLength") minimumPasswordLength: minimumPasswordLengthType
}
type organizationsDecisionDetail = {
@as("AllowedByOrganizations") allowedByOrganizations: booleanType
}
type openIDConnectProviderListEntry = {
@as("Arn") arn: arnType
}
type mFADevice = {
@as("EnableDate") enableDate: option<dateType>,
@as("SerialNumber") serialNumber: option<serialNumberType>,
@as("UserName") userName: option<userNameType>
}
type loginProfile = {
@as("PasswordResetRequired") passwordResetRequired: booleanType,
@as("CreateDate") createDate: option<dateType>,
@as("UserName") userName: option<userNameType>
}
type group = {
@as("CreateDate") createDate: option<dateType>,
@as("Arn") arn: option<arnType>,
@as("GroupId") groupId: option<idType>,
@as("GroupName") groupName: option<groupNameType>,
@as("Path") path: option<pathType>
}
type evalDecisionDetailsType = Js.Dict.t< policyEvaluationDecisionType>
type errorDetails = {
@as("Code") code: option<stringType>,
@as("Message") message: option<stringType>
}
type entityInfo = {
@as("Path") path: pathType,
@as("Id") id: option<idType>,
@as("Type") type_: option<policyOwnerEntityType>,
@as("Name") name: option<userNameType>,
@as("Arn") arn: option<arnType>
}
type contextKeyValueListType = array<contextKeyValueType>
type contextKeyNamesResultListType = array<contextKeyNameType>
type attachedPolicy = {
@as("PolicyArn") policyArn: arnType,
@as("PolicyName") policyName: policyNameType
}
type attachedPermissionsBoundary = {
@as("PermissionsBoundaryArn") permissionsBoundaryArn: arnType,
@as("PermissionsBoundaryType") permissionsBoundaryType: permissionsBoundaryAttachmentType
}
type arnListType = array<arnType>
type actionNameListType = array<actionNameType>
type accessKeyMetadata = {
@as("CreateDate") createDate: dateType,
@as("Status") status: statusType,
@as("AccessKeyId") accessKeyId: accessKeyIdType,
@as("UserName") userName: userNameType
}
type accessKeyLastUsed = {
@as("Region") region: option<stringType>,
@as("ServiceName") serviceName: option<stringType>,
@as("LastUsedDate") lastUsedDate: option<dateType>
}
type accessKey = {
@as("CreateDate") createDate: dateType,
@as("SecretAccessKey") secretAccessKey: option<accessKeySecretType>,
@as("Status") status: option<statusType>,
@as("AccessKeyId") accessKeyId: option<accessKeyIdType>,
@as("UserName") userName: option<userNameType>
}
type accessDetail = {
@as("TotalAuthenticatedEntities") totalAuthenticatedEntities: integerType,
@as("LastAuthenticatedTime") lastAuthenticatedTime: dateType,
@as("EntityPath") entityPath: organizationsEntityPathType,
@as("Region") region: stringType,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespaceType>,
@as("ServiceName") serviceName: option<serviceNameType>
}
type tagListType = array<tag>
type serverCertificateMetadataListType = array<serverCertificateMetadata>
type policyGrantingServiceAccessListType = array<policyGrantingServiceAccess>
type policyDocumentVersionListType = array<policyVersion>
type policyDetailListType = array<policyDetail>
type mfaDeviceListType = array<mFADevice>
type groupListType = array<group>
type certificateListType = array<signingCertificate>
type attachedPoliciesListType = array<attachedPolicy>
type accessKeyMetadataListType = array<accessKeyMetadata>
type trackedActionsLastAccessed = array<trackedActionLastAccessed>
type statement = {
@as("EndPosition") endPosition: position,
@as("StartPosition") startPosition: position,
@as("SourcePolicyType") sourcePolicyType: policySourceType,
@as("SourcePolicyId") sourcePolicyId: policyIdentifierType
}
type serviceSpecificCredentialsListType = array<serviceSpecificCredentialMetadata>
type sSHPublicKeyListType = array<sSHPublicKeyMetadata>
type sAMLProviderListType = array<sAMLProviderListEntry>
type roleUsageType = {
@as("Resources") resources: arnListType,
@as("Region") region: regionNameType
}
type policyUserListType = array<policyUser>
type policyRoleListType = array<policyRole>
type policyGroupListType = array<policyGroup>
type openIDConnectProviderListType = array<openIDConnectProviderListEntry>
type entityDetails = {
@as("LastAuthenticated") lastAuthenticated: dateType,
@as("EntityInfo") entityInfo: option<entityInfo>
}
type contextEntry = {
@as("ContextKeyType") contextKeyType: contextKeyTypeEnum,
@as("ContextKeyValues") contextKeyValues: contextKeyValueListType,
@as("ContextKeyName") contextKeyName: contextKeyNameType
}
type accessDetails = array<accessDetail>
type entityDetailsListType = array<entityDetails>
type userDetail = {
@as("Tags") tags: tagListType,
@as("PermissionsBoundary") permissionsBoundary: attachedPermissionsBoundary,
@as("AttachedManagedPolicies") attachedManagedPolicies: attachedPoliciesListType,
@as("GroupList") groupList: groupNameListType,
@as("UserPolicyList") userPolicyList: policyDetailListType,
@as("CreateDate") createDate: dateType,
@as("Arn") arn: arnType,
@as("UserId") userId: idType,
@as("UserName") userName: userNameType,
@as("Path") path: pathType
}
type user = {
@as("Tags") tags: tagListType,
@as("PermissionsBoundary") permissionsBoundary: attachedPermissionsBoundary,
@as("PasswordLastUsed") passwordLastUsed: dateType,
@as("CreateDate") createDate: option<dateType>,
@as("Arn") arn: option<arnType>,
@as("UserId") userId: option<idType>,
@as("UserName") userName: option<userNameType>,
@as("Path") path: option<pathType>
}
type statementListType = array<statement>
type serviceLastAccessed = {
@as("TrackedActionsLastAccessed") trackedActionsLastAccessed: trackedActionsLastAccessed,
@as("TotalAuthenticatedEntities") totalAuthenticatedEntities: integerType,
@as("LastAuthenticatedRegion") lastAuthenticatedRegion: stringType,
@as("LastAuthenticatedEntity") lastAuthenticatedEntity: arnType,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespaceType>,
@as("LastAuthenticated") lastAuthenticated: dateType,
@as("ServiceName") serviceName: option<serviceNameType>
}
type serverCertificate = {
@as("Tags") tags: tagListType,
@as("CertificateChain") certificateChain: certificateChainType,
@as("CertificateBody") certificateBody: option<certificateBodyType>,
@as("ServerCertificateMetadata") serverCertificateMetadata: option<serverCertificateMetadata>
}
type roleUsageListType = array<roleUsageType>
type role = {
@as("RoleLastUsed") roleLastUsed: roleLastUsed,
@as("Tags") tags: tagListType,
@as("PermissionsBoundary") permissionsBoundary: attachedPermissionsBoundary,
@as("MaxSessionDuration") maxSessionDuration: roleMaxSessionDurationType,
@as("Description") description: roleDescriptionType,
@as("AssumeRolePolicyDocument") assumeRolePolicyDocument: policyDocumentType,
@as("CreateDate") createDate: option<dateType>,
@as("Arn") arn: option<arnType>,
@as("RoleId") roleId: option<idType>,
@as("RoleName") roleName: option<roleNameType>,
@as("Path") path: option<pathType>
}
type policy = {
@as("Tags") tags: tagListType,
@as("UpdateDate") updateDate: dateType,
@as("CreateDate") createDate: dateType,
@as("Description") description: policyDescriptionType,
@as("IsAttachable") isAttachable: booleanType,
@as("PermissionsBoundaryUsageCount") permissionsBoundaryUsageCount: attachmentCountType,
@as("AttachmentCount") attachmentCount: attachmentCountType,
@as("DefaultVersionId") defaultVersionId: policyVersionIdType,
@as("Path") path: policyPathType,
@as("Arn") arn: arnType,
@as("PolicyId") policyId: idType,
@as("PolicyName") policyName: policyNameType
}
type managedPolicyDetail = {
@as("PolicyVersionList") policyVersionList: policyDocumentVersionListType,
@as("UpdateDate") updateDate: dateType,
@as("CreateDate") createDate: dateType,
@as("Description") description: policyDescriptionType,
@as("IsAttachable") isAttachable: booleanType,
@as("PermissionsBoundaryUsageCount") permissionsBoundaryUsageCount: attachmentCountType,
@as("AttachmentCount") attachmentCount: attachmentCountType,
@as("DefaultVersionId") defaultVersionId: policyVersionIdType,
@as("Path") path: policyPathType,
@as("Arn") arn: arnType,
@as("PolicyId") policyId: idType,
@as("PolicyName") policyName: policyNameType
}
type listPoliciesGrantingServiceAccessEntry = {
@as("Policies") policies: policyGrantingServiceAccessListType,
@as("ServiceNamespace") serviceNamespace: serviceNamespaceType
}
type groupDetail = {
@as("AttachedManagedPolicies") attachedManagedPolicies: attachedPoliciesListType,
@as("GroupPolicyList") groupPolicyList: policyDetailListType,
@as("CreateDate") createDate: dateType,
@as("Arn") arn: arnType,
@as("GroupId") groupId: idType,
@as("GroupName") groupName: groupNameType,
@as("Path") path: pathType
}
type contextEntryListType = array<contextEntry>
type userListType = array<user>
type userDetailListType = array<userDetail>
type roleListType = array<role>
type policyListType = array<policy>
type listPolicyGrantingServiceAccessResponseListType = array<listPoliciesGrantingServiceAccessEntry>
type groupDetailListType = array<groupDetail>
type virtualMFADevice = {
@as("Tags") tags: tagListType,
@as("EnableDate") enableDate: dateType,
@as("User") user: user,
@as("QRCodePNG") qRCodePNG: bootstrapDatum,
@as("Base32StringSeed") base32StringSeed: bootstrapDatum,
@as("SerialNumber") serialNumber: option<serialNumberType>
}
type servicesLastAccessed = array<serviceLastAccessed>
type resourceSpecificResult = {
@as("PermissionsBoundaryDecisionDetail") permissionsBoundaryDecisionDetail: permissionsBoundaryDecisionDetail,
@as("EvalDecisionDetails") evalDecisionDetails: evalDecisionDetailsType,
@as("MissingContextValues") missingContextValues: contextKeyNamesResultListType,
@as("MatchedStatements") matchedStatements: statementListType,
@as("EvalResourceDecision") evalResourceDecision: option<policyEvaluationDecisionType>,
@as("EvalResourceName") evalResourceName: option<resourceNameType>
}
type managedPolicyDetailListType = array<managedPolicyDetail>
type deletionTaskFailureReasonType = {
@as("RoleUsageList") roleUsageList: roleUsageListType,
@as("Reason") reason: reasonType
}
type virtualMFADeviceListType = array<virtualMFADevice>
type resourceSpecificResultListType = array<resourceSpecificResult>
type instanceProfile = {
@as("Tags") tags: tagListType,
@as("Roles") roles: option<roleListType>,
@as("CreateDate") createDate: option<dateType>,
@as("Arn") arn: option<arnType>,
@as("InstanceProfileId") instanceProfileId: option<idType>,
@as("InstanceProfileName") instanceProfileName: option<instanceProfileNameType>,
@as("Path") path: option<pathType>
}
type instanceProfileListType = array<instanceProfile>
type evaluationResult = {
@as("ResourceSpecificResults") resourceSpecificResults: resourceSpecificResultListType,
@as("EvalDecisionDetails") evalDecisionDetails: evalDecisionDetailsType,
@as("PermissionsBoundaryDecisionDetail") permissionsBoundaryDecisionDetail: permissionsBoundaryDecisionDetail,
@as("OrganizationsDecisionDetail") organizationsDecisionDetail: organizationsDecisionDetail,
@as("MissingContextValues") missingContextValues: contextKeyNamesResultListType,
@as("MatchedStatements") matchedStatements: statementListType,
@as("EvalDecision") evalDecision: option<policyEvaluationDecisionType>,
@as("EvalResourceName") evalResourceName: resourceNameType,
@as("EvalActionName") evalActionName: option<actionNameType>
}
type roleDetail = {
@as("RoleLastUsed") roleLastUsed: roleLastUsed,
@as("Tags") tags: tagListType,
@as("PermissionsBoundary") permissionsBoundary: attachedPermissionsBoundary,
@as("AttachedManagedPolicies") attachedManagedPolicies: attachedPoliciesListType,
@as("RolePolicyList") rolePolicyList: policyDetailListType,
@as("InstanceProfileList") instanceProfileList: instanceProfileListType,
@as("AssumeRolePolicyDocument") assumeRolePolicyDocument: policyDocumentType,
@as("CreateDate") createDate: dateType,
@as("Arn") arn: arnType,
@as("RoleId") roleId: idType,
@as("RoleName") roleName: roleNameType,
@as("Path") path: pathType
}
type evaluationResultsListType = array<evaluationResult>
type roleDetailListType = array<roleDetail>
type clientType;
@module("@aws-sdk/client-iam") @new external createClient: unit => clientType = "IAMClient";
module UpdateUser = {
  type t;
  type request = {
@as("NewUserName") newUserName: userNameType,
@as("NewPath") newPath: pathType,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateSigningCertificate = {
  type t;
  type request = {
@as("Status") status: option<statusType>,
@as("CertificateId") certificateId: option<certificateIdType>,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateSigningCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateServiceSpecificCredential = {
  type t;
  type request = {
@as("Status") status: option<statusType>,
@as("ServiceSpecificCredentialId") serviceSpecificCredentialId: option<serviceSpecificCredentialId>,
@as("UserName") userName: userNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateServiceSpecificCredentialCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateServerCertificate = {
  type t;
  type request = {
@as("NewServerCertificateName") newServerCertificateName: serverCertificateNameType,
@as("NewPath") newPath: pathType,
@as("ServerCertificateName") serverCertificateName: option<serverCertificateNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateServerCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateSSHPublicKey = {
  type t;
  type request = {
@as("Status") status: option<statusType>,
@as("SSHPublicKeyId") sSHPublicKeyId: option<publicKeyIdType>,
@as("UserName") userName: option<userNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateSSHPublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateSAMLProvider = {
  type t;
  type request = {
@as("SAMLProviderArn") sAMLProviderArn: option<arnType>,
@as("SAMLMetadataDocument") sAMLMetadataDocument: option<sAMLMetadataDocumentType>
}
  type response = {
@as("SAMLProviderArn") sAMLProviderArn: arnType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateSAMLProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRole = {
  type t;
  type request = {
@as("MaxSessionDuration") maxSessionDuration: roleMaxSessionDurationType,
@as("Description") description: roleDescriptionType,
@as("RoleName") roleName: option<roleNameType>
}
  type response = unit
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLoginProfile = {
  type t;
  type request = {
@as("PasswordResetRequired") passwordResetRequired: booleanObjectType,
@as("Password") password: passwordType,
@as("UserName") userName: option<userNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateLoginProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateGroup = {
  type t;
  type request = {
@as("NewGroupName") newGroupName: groupNameType,
@as("NewPath") newPath: pathType,
@as("GroupName") groupName: option<groupNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateAssumeRolePolicy = {
  type t;
  type request = {
@as("PolicyDocument") policyDocument: option<policyDocumentType>,
@as("RoleName") roleName: option<roleNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateAssumeRolePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateAccountPasswordPolicy = {
  type t;
  type request = {
@as("HardExpiry") hardExpiry: booleanObjectType,
@as("PasswordReusePrevention") passwordReusePrevention: passwordReusePreventionType,
@as("MaxPasswordAge") maxPasswordAge: maxPasswordAgeType,
@as("AllowUsersToChangePassword") allowUsersToChangePassword: booleanType,
@as("RequireLowercaseCharacters") requireLowercaseCharacters: booleanType,
@as("RequireUppercaseCharacters") requireUppercaseCharacters: booleanType,
@as("RequireNumbers") requireNumbers: booleanType,
@as("RequireSymbols") requireSymbols: booleanType,
@as("MinimumPasswordLength") minimumPasswordLength: minimumPasswordLengthType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateAccountPasswordPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateAccessKey = {
  type t;
  type request = {
@as("Status") status: option<statusType>,
@as("AccessKeyId") accessKeyId: option<accessKeyIdType>,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateAccessKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetSecurityTokenServicePreferences = {
  type t;
  type request = {
@as("GlobalEndpointTokenVersion") globalEndpointTokenVersion: option<globalEndpointTokenVersion>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "SetSecurityTokenServicePreferencesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetDefaultPolicyVersion = {
  type t;
  type request = {
@as("VersionId") versionId: option<policyVersionIdType>,
@as("PolicyArn") policyArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "SetDefaultPolicyVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ResyncMFADevice = {
  type t;
  type request = {
@as("AuthenticationCode2") authenticationCode2: option<authenticationCodeType>,
@as("AuthenticationCode1") authenticationCode1: option<authenticationCodeType>,
@as("SerialNumber") serialNumber: option<serialNumberType>,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ResyncMFADeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveUserFromGroup = {
  type t;
  type request = {
@as("UserName") userName: option<existingUserNameType>,
@as("GroupName") groupName: option<groupNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "RemoveUserFromGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveRoleFromInstanceProfile = {
  type t;
  type request = {
@as("RoleName") roleName: option<roleNameType>,
@as("InstanceProfileName") instanceProfileName: option<instanceProfileNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "RemoveRoleFromInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveClientIDFromOpenIDConnectProvider = {
  type t;
  type request = {
@as("ClientID") clientID: option<clientIDType>,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "RemoveClientIDFromOpenIDConnectProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutUserPolicy = {
  type t;
  type request = {
@as("PolicyDocument") policyDocument: option<policyDocumentType>,
@as("PolicyName") policyName: option<policyNameType>,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "PutUserPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutUserPermissionsBoundary = {
  type t;
  type request = {
@as("PermissionsBoundary") permissionsBoundary: option<arnType>,
@as("UserName") userName: option<userNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "PutUserPermissionsBoundaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutRolePolicy = {
  type t;
  type request = {
@as("PolicyDocument") policyDocument: option<policyDocumentType>,
@as("PolicyName") policyName: option<policyNameType>,
@as("RoleName") roleName: option<roleNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "PutRolePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutRolePermissionsBoundary = {
  type t;
  type request = {
@as("PermissionsBoundary") permissionsBoundary: option<arnType>,
@as("RoleName") roleName: option<roleNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "PutRolePermissionsBoundaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutGroupPolicy = {
  type t;
  type request = {
@as("PolicyDocument") policyDocument: option<policyDocumentType>,
@as("PolicyName") policyName: option<policyNameType>,
@as("GroupName") groupName: option<groupNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "PutGroupPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetUserPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: option<policyNameType>,
@as("UserName") userName: option<existingUserNameType>
}
  type response = {
@as("PolicyDocument") policyDocument: option<policyDocumentType>,
@as("PolicyName") policyName: option<policyNameType>,
@as("UserName") userName: option<existingUserNameType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetUserPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRolePolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: option<policyNameType>,
@as("RoleName") roleName: option<roleNameType>
}
  type response = {
@as("PolicyDocument") policyDocument: option<policyDocumentType>,
@as("PolicyName") policyName: option<policyNameType>,
@as("RoleName") roleName: option<roleNameType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetRolePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroupPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: option<policyNameType>,
@as("GroupName") groupName: option<groupNameType>
}
  type response = {
@as("PolicyDocument") policyDocument: option<policyDocumentType>,
@as("PolicyName") policyName: option<policyNameType>,
@as("GroupName") groupName: option<groupNameType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetGroupPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCredentialReport = {
  type t;
  
  type response = {
@as("GeneratedTime") generatedTime: dateType,
@as("ReportFormat") reportFormat: reportFormatType,
@as("Content") content: reportContentType
}
  @module("@aws-sdk/client-iam") @new external new_: (unit) => t = "GetCredentialReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateServiceLastAccessedDetails = {
  type t;
  type request = {
@as("Granularity") granularity: accessAdvisorUsageGranularityType,
@as("Arn") arn: option<arnType>
}
  type response = {
@as("JobId") jobId: jobIDType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GenerateServiceLastAccessedDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateOrganizationsAccessReport = {
  type t;
  type request = {
@as("OrganizationsPolicyId") organizationsPolicyId: organizationsPolicyIdType,
@as("EntityPath") entityPath: option<organizationsEntityPathType>
}
  type response = {
@as("JobId") jobId: jobIDType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GenerateOrganizationsAccessReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateCredentialReport = {
  type t;
  
  type response = {
@as("Description") description: reportStateDescriptionType,
@as("State") state: reportStateType
}
  @module("@aws-sdk/client-iam") @new external new_: (unit) => t = "GenerateCredentialReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableMFADevice = {
  type t;
  type request = {
@as("AuthenticationCode2") authenticationCode2: option<authenticationCodeType>,
@as("AuthenticationCode1") authenticationCode1: option<authenticationCodeType>,
@as("SerialNumber") serialNumber: option<serialNumberType>,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "EnableMFADeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DetachUserPolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: option<arnType>,
@as("UserName") userName: option<userNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DetachUserPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DetachRolePolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: option<arnType>,
@as("RoleName") roleName: option<roleNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DetachRolePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DetachGroupPolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: option<arnType>,
@as("GroupName") groupName: option<groupNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DetachGroupPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVirtualMFADevice = {
  type t;
  type request = {
@as("SerialNumber") serialNumber: option<serialNumberType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteVirtualMFADeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteUserPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: option<policyNameType>,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteUserPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteUserPermissionsBoundary = {
  type t;
  type request = {
@as("UserName") userName: option<userNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteUserPermissionsBoundaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSigningCertificate = {
  type t;
  type request = {
@as("CertificateId") certificateId: option<certificateIdType>,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteSigningCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteServiceSpecificCredential = {
  type t;
  type request = {
@as("ServiceSpecificCredentialId") serviceSpecificCredentialId: option<serviceSpecificCredentialId>,
@as("UserName") userName: userNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteServiceSpecificCredentialCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteServiceLinkedRole = {
  type t;
  type request = {
@as("RoleName") roleName: option<roleNameType>
}
  type response = {
@as("DeletionTaskId") deletionTaskId: option<deletionTaskIdType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteServiceLinkedRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteServerCertificate = {
  type t;
  type request = {
@as("ServerCertificateName") serverCertificateName: option<serverCertificateNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteServerCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSSHPublicKey = {
  type t;
  type request = {
@as("SSHPublicKeyId") sSHPublicKeyId: option<publicKeyIdType>,
@as("UserName") userName: option<userNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteSSHPublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSAMLProvider = {
  type t;
  type request = {
@as("SAMLProviderArn") sAMLProviderArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteSAMLProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRolePolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: option<policyNameType>,
@as("RoleName") roleName: option<roleNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteRolePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRolePermissionsBoundary = {
  type t;
  type request = {
@as("RoleName") roleName: option<roleNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteRolePermissionsBoundaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRole = {
  type t;
  type request = {
@as("RoleName") roleName: option<roleNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePolicyVersion = {
  type t;
  type request = {
@as("VersionId") versionId: option<policyVersionIdType>,
@as("PolicyArn") policyArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeletePolicyVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeletePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteOpenIDConnectProvider = {
  type t;
  type request = {
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteOpenIDConnectProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteLoginProfile = {
  type t;
  type request = {
@as("UserName") userName: option<userNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteLoginProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteInstanceProfile = {
  type t;
  type request = {
@as("InstanceProfileName") instanceProfileName: option<instanceProfileNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteGroupPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: option<policyNameType>,
@as("GroupName") groupName: option<groupNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteGroupPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteGroup = {
  type t;
  type request = {
@as("GroupName") groupName: option<groupNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccountPasswordPolicy = {
  type t;
  
  
  @module("@aws-sdk/client-iam") @new external new_: (unit) => t = "DeleteAccountPasswordPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccountAlias = {
  type t;
  type request = {
@as("AccountAlias") accountAlias: option<accountAliasType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteAccountAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccessKey = {
  type t;
  type request = {
@as("AccessKeyId") accessKeyId: option<accessKeyIdType>,
@as("UserName") userName: existingUserNameType
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeleteAccessKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeactivateMFADevice = {
  type t;
  type request = {
@as("SerialNumber") serialNumber: option<serialNumberType>,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "DeactivateMFADeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateAccountAlias = {
  type t;
  type request = {
@as("AccountAlias") accountAlias: option<accountAliasType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateAccountAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ChangePassword = {
  type t;
  type request = {
@as("NewPassword") newPassword: option<passwordType>,
@as("OldPassword") oldPassword: option<passwordType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ChangePasswordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AttachUserPolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: option<arnType>,
@as("UserName") userName: option<userNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AttachUserPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AttachRolePolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: option<arnType>,
@as("RoleName") roleName: option<roleNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AttachRolePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AttachGroupPolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: option<arnType>,
@as("GroupName") groupName: option<groupNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AttachGroupPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AddUserToGroup = {
  type t;
  type request = {
@as("UserName") userName: option<existingUserNameType>,
@as("GroupName") groupName: option<groupNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AddUserToGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AddRoleToInstanceProfile = {
  type t;
  type request = {
@as("RoleName") roleName: option<roleNameType>,
@as("InstanceProfileName") instanceProfileName: option<instanceProfileNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AddRoleToInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AddClientIDToOpenIDConnectProvider = {
  type t;
  type request = {
@as("ClientID") clientID: option<clientIDType>,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "AddClientIDToOpenIDConnectProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UploadSigningCertificate = {
  type t;
  type request = {
@as("CertificateBody") certificateBody: option<certificateBodyType>,
@as("UserName") userName: existingUserNameType
}
  type response = {
@as("Certificate") certificate: option<signingCertificate>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UploadSigningCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UploadSSHPublicKey = {
  type t;
  type request = {
@as("SSHPublicKeyBody") sSHPublicKeyBody: option<publicKeyMaterialType>,
@as("UserName") userName: option<userNameType>
}
  type response = {
@as("SSHPublicKey") sSHPublicKey: sSHPublicKey
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UploadSSHPublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateOpenIDConnectProviderThumbprint = {
  type t;
  type request = {
@as("ThumbprintList") thumbprintList: option<thumbprintListType>,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateOpenIDConnectProviderThumbprintCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagUser = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyListType>,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagServerCertificate = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyListType>,
@as("ServerCertificateName") serverCertificateName: option<serverCertificateNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagServerCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagSAMLProvider = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyListType>,
@as("SAMLProviderArn") sAMLProviderArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagSAMLProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagRole = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyListType>,
@as("RoleName") roleName: option<roleNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagPolicy = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyListType>,
@as("PolicyArn") policyArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagOpenIDConnectProvider = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyListType>,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagOpenIDConnectProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagMFADevice = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyListType>,
@as("SerialNumber") serialNumber: option<serialNumberType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagMFADeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagInstanceProfile = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyListType>,
@as("InstanceProfileName") instanceProfileName: option<instanceProfileNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UntagInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ResetServiceSpecificCredential = {
  type t;
  type request = {
@as("ServiceSpecificCredentialId") serviceSpecificCredentialId: option<serviceSpecificCredentialId>,
@as("UserName") userName: userNameType
}
  type response = {
@as("ServiceSpecificCredential") serviceSpecificCredential: serviceSpecificCredential
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ResetServiceSpecificCredentialCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUserPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("UserName") userName: option<existingUserNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("PolicyNames") policyNames: option<policyNameListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListUserPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRolePolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("RoleName") roleName: option<roleNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("PolicyNames") policyNames: option<policyNameListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListRolePoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroupPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("GroupName") groupName: option<groupNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("PolicyNames") policyNames: option<policyNameListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListGroupPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccountAliases = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("AccountAliases") accountAliases: option<accountAliasListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListAccountAliasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSSHPublicKey = {
  type t;
  type request = {
@as("Encoding") encoding: option<encodingType>,
@as("SSHPublicKeyId") sSHPublicKeyId: option<publicKeyIdType>,
@as("UserName") userName: option<userNameType>
}
  type response = {
@as("SSHPublicKey") sSHPublicKey: sSHPublicKey
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetSSHPublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPolicyVersion = {
  type t;
  type request = {
@as("VersionId") versionId: option<policyVersionIdType>,
@as("PolicyArn") policyArn: option<arnType>
}
  type response = {
@as("PolicyVersion") policyVersion: policyVersion
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetPolicyVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLoginProfile = {
  type t;
  type request = {
@as("UserName") userName: option<userNameType>
}
  type response = {
@as("LoginProfile") loginProfile: option<loginProfile>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetLoginProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContextKeysForPrincipalPolicy = {
  type t;
  type request = {
@as("PolicyInputList") policyInputList: simulationPolicyListType,
@as("PolicySourceArn") policySourceArn: option<arnType>
}
  type response = {
@as("ContextKeyNames") contextKeyNames: contextKeyNamesResultListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetContextKeysForPrincipalPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContextKeysForCustomPolicy = {
  type t;
  type request = {
@as("PolicyInputList") policyInputList: option<simulationPolicyListType>
}
  type response = {
@as("ContextKeyNames") contextKeyNames: contextKeyNamesResultListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetContextKeysForCustomPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccountSummary = {
  type t;
  
  type response = {
@as("SummaryMap") summaryMap: summaryMapType
}
  @module("@aws-sdk/client-iam") @new external new_: (unit) => t = "GetAccountSummaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccountPasswordPolicy = {
  type t;
  
  type response = {
@as("PasswordPolicy") passwordPolicy: option<passwordPolicy>
}
  @module("@aws-sdk/client-iam") @new external new_: (unit) => t = "GetAccountPasswordPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccessKeyLastUsed = {
  type t;
  type request = {
@as("AccessKeyId") accessKeyId: option<accessKeyIdType>
}
  type response = {
@as("AccessKeyLastUsed") accessKeyLastUsed: accessKeyLastUsed,
@as("UserName") userName: existingUserNameType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetAccessKeyLastUsedCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateServiceSpecificCredential = {
  type t;
  type request = {
@as("ServiceName") serviceName: option<serviceName>,
@as("UserName") userName: option<userNameType>
}
  type response = {
@as("ServiceSpecificCredential") serviceSpecificCredential: serviceSpecificCredential
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateServiceSpecificCredentialCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePolicyVersion = {
  type t;
  type request = {
@as("SetAsDefault") setAsDefault: booleanType,
@as("PolicyDocument") policyDocument: option<policyDocumentType>,
@as("PolicyArn") policyArn: option<arnType>
}
  type response = {
@as("PolicyVersion") policyVersion: policyVersion
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreatePolicyVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLoginProfile = {
  type t;
  type request = {
@as("PasswordResetRequired") passwordResetRequired: booleanType,
@as("Password") password: option<passwordType>,
@as("UserName") userName: option<userNameType>
}
  type response = {
@as("LoginProfile") loginProfile: option<loginProfile>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateLoginProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGroup = {
  type t;
  type request = {
@as("GroupName") groupName: option<groupNameType>,
@as("Path") path: pathType
}
  type response = {
@as("Group") group: option<group>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAccessKey = {
  type t;
  type request = {
@as("UserName") userName: existingUserNameType
}
  type response = {
@as("AccessKey") accessKey: option<accessKey>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateAccessKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UploadServerCertificate = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("CertificateChain") certificateChain: certificateChainType,
@as("PrivateKey") privateKey: option<privateKeyType>,
@as("CertificateBody") certificateBody: option<certificateBodyType>,
@as("ServerCertificateName") serverCertificateName: option<serverCertificateNameType>,
@as("Path") path: pathType
}
  type response = {
@as("Tags") tags: tagListType,
@as("ServerCertificateMetadata") serverCertificateMetadata: serverCertificateMetadata
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UploadServerCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagUser = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("UserName") userName: option<existingUserNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagServerCertificate = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("ServerCertificateName") serverCertificateName: option<serverCertificateNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagServerCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagSAMLProvider = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("SAMLProviderArn") sAMLProviderArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagSAMLProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagRole = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("RoleName") roleName: option<roleNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagPolicy = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("PolicyArn") policyArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagOpenIDConnectProvider = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: option<arnType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagOpenIDConnectProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagMFADevice = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("SerialNumber") serialNumber: option<serialNumberType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagMFADeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagInstanceProfile = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("InstanceProfileName") instanceProfileName: option<instanceProfileNameType>
}
  
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "TagInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListUserTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("UserName") userName: option<existingUserNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Tags") tags: option<tagListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListUserTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSigningCertificates = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("UserName") userName: existingUserNameType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Certificates") certificates: option<certificateListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListSigningCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServiceSpecificCredentials = {
  type t;
  type request = {
@as("ServiceName") serviceName: serviceName,
@as("UserName") userName: userNameType
}
  type response = {
@as("ServiceSpecificCredentials") serviceSpecificCredentials: serviceSpecificCredentialsListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListServiceSpecificCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServerCertificates = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PathPrefix") pathPrefix: pathPrefixType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("ServerCertificateMetadataList") serverCertificateMetadataList: option<serverCertificateMetadataListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListServerCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServerCertificateTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("ServerCertificateName") serverCertificateName: option<serverCertificateNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Tags") tags: option<tagListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListServerCertificateTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSSHPublicKeys = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("UserName") userName: userNameType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("SSHPublicKeys") sSHPublicKeys: sSHPublicKeyListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListSSHPublicKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSAMLProviders = {
  type t;
  type request = unit
  type response = {
@as("SAMLProviderList") sAMLProviderList: sAMLProviderListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListSAMLProvidersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSAMLProviderTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("SAMLProviderArn") sAMLProviderArn: option<arnType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Tags") tags: option<tagListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListSAMLProviderTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRoleTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("RoleName") roleName: option<roleNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Tags") tags: option<tagListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListRoleTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPolicyVersions = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PolicyArn") policyArn: option<arnType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Versions") versions: policyDocumentVersionListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListPolicyVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPolicyTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PolicyArn") policyArn: option<arnType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Tags") tags: option<tagListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListPolicyTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOpenIDConnectProviders = {
  type t;
  type request = unit
  type response = {
@as("OpenIDConnectProviderList") openIDConnectProviderList: openIDConnectProviderListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListOpenIDConnectProvidersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOpenIDConnectProviderTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: option<arnType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Tags") tags: option<tagListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListOpenIDConnectProviderTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMFADevices = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("UserName") userName: existingUserNameType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("MFADevices") mFADevices: option<mfaDeviceListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListMFADevicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMFADeviceTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("SerialNumber") serialNumber: option<serialNumberType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Tags") tags: option<tagListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListMFADeviceTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInstanceProfileTags = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("InstanceProfileName") instanceProfileName: option<instanceProfileNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Tags") tags: option<tagListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListInstanceProfileTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroupsForUser = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("UserName") userName: option<existingUserNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Groups") groups: option<groupListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListGroupsForUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroups = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PathPrefix") pathPrefix: pathPrefixType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Groups") groups: option<groupListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEntitiesForPolicy = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PolicyUsageFilter") policyUsageFilter: policyUsageType,
@as("PathPrefix") pathPrefix: pathType,
@as("EntityFilter") entityFilter: entityType,
@as("PolicyArn") policyArn: option<arnType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("PolicyRoles") policyRoles: policyRoleListType,
@as("PolicyUsers") policyUsers: policyUserListType,
@as("PolicyGroups") policyGroups: policyGroupListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListEntitiesForPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAttachedUserPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PathPrefix") pathPrefix: policyPathType,
@as("UserName") userName: option<userNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("AttachedPolicies") attachedPolicies: attachedPoliciesListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListAttachedUserPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAttachedRolePolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PathPrefix") pathPrefix: policyPathType,
@as("RoleName") roleName: option<roleNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("AttachedPolicies") attachedPolicies: attachedPoliciesListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListAttachedRolePoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAttachedGroupPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PathPrefix") pathPrefix: policyPathType,
@as("GroupName") groupName: option<groupNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("AttachedPolicies") attachedPolicies: attachedPoliciesListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListAttachedGroupPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccessKeys = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("UserName") userName: existingUserNameType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("AccessKeyMetadata") accessKeyMetadata: option<accessKeyMetadataListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListAccessKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSAMLProvider = {
  type t;
  type request = {
@as("SAMLProviderArn") sAMLProviderArn: option<arnType>
}
  type response = {
@as("Tags") tags: tagListType,
@as("ValidUntil") validUntil: dateType,
@as("CreateDate") createDate: dateType,
@as("SAMLMetadataDocument") sAMLMetadataDocument: sAMLMetadataDocumentType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetSAMLProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOrganizationsAccessReport = {
  type t;
  type request = {
@as("SortKey") sortKey: sortKeyType,
@as("Marker") marker: markerType,
@as("MaxItems") maxItems: maxItemsType,
@as("JobId") jobId: option<jobIDType>
}
  type response = {
@as("ErrorDetails") errorDetails: errorDetails,
@as("Marker") marker: markerType,
@as("IsTruncated") isTruncated: booleanType,
@as("AccessDetails") accessDetails: accessDetails,
@as("NumberOfServicesNotAccessed") numberOfServicesNotAccessed: integerType,
@as("NumberOfServicesAccessible") numberOfServicesAccessible: integerType,
@as("JobCompletionDate") jobCompletionDate: dateType,
@as("JobCreationDate") jobCreationDate: option<dateType>,
@as("JobStatus") jobStatus: option<jobStatusType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetOrganizationsAccessReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOpenIDConnectProvider = {
  type t;
  type request = {
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: option<arnType>
}
  type response = {
@as("Tags") tags: tagListType,
@as("CreateDate") createDate: dateType,
@as("ThumbprintList") thumbprintList: thumbprintListType,
@as("ClientIDList") clientIDList: clientIDListType,
@as("Url") url: openIDConnectProviderUrlType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetOpenIDConnectProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSAMLProvider = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("Name") name: option<sAMLProviderNameType>,
@as("SAMLMetadataDocument") sAMLMetadataDocument: option<sAMLMetadataDocumentType>
}
  type response = {
@as("Tags") tags: tagListType,
@as("SAMLProviderArn") sAMLProviderArn: arnType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateSAMLProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateOpenIDConnectProvider = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("ThumbprintList") thumbprintList: option<thumbprintListType>,
@as("ClientIDList") clientIDList: clientIDListType,
@as("Url") url: option<openIDConnectProviderUrlType>
}
  type response = {
@as("Tags") tags: tagListType,
@as("OpenIDConnectProviderArn") openIDConnectProviderArn: arnType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateOpenIDConnectProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRoleDescription = {
  type t;
  type request = {
@as("Description") description: option<roleDescriptionType>,
@as("RoleName") roleName: option<roleNameType>
}
  type response = {
@as("Role") role: role
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "UpdateRoleDescriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUser = {
  type t;
  type request = {
@as("UserName") userName: existingUserNameType
}
  type response = {
@as("User") user: option<user>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServiceLastAccessedDetailsWithEntities = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("MaxItems") maxItems: maxItemsType,
@as("ServiceNamespace") serviceNamespace: option<serviceNamespaceType>,
@as("JobId") jobId: option<jobIDType>
}
  type response = {
@as("Error") error: errorDetails,
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("EntityDetailsList") entityDetailsList: option<entityDetailsListType>,
@as("JobCompletionDate") jobCompletionDate: option<dateType>,
@as("JobCreationDate") jobCreationDate: option<dateType>,
@as("JobStatus") jobStatus: option<jobStatusType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetServiceLastAccessedDetailsWithEntitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServerCertificate = {
  type t;
  type request = {
@as("ServerCertificateName") serverCertificateName: option<serverCertificateNameType>
}
  type response = {
@as("ServerCertificate") serverCertificate: option<serverCertificate>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetServerCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRole = {
  type t;
  type request = {
@as("RoleName") roleName: option<roleNameType>
}
  type response = {
@as("Role") role: option<role>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPolicy = {
  type t;
  type request = {
@as("PolicyArn") policyArn: option<arnType>
}
  type response = {
@as("Policy") policy: policy
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("PermissionsBoundary") permissionsBoundary: arnType,
@as("UserName") userName: option<userNameType>,
@as("Path") path: pathType
}
  type response = {
@as("User") user: user
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateServiceLinkedRole = {
  type t;
  type request = {
@as("CustomSuffix") customSuffix: customSuffixType,
@as("Description") description: roleDescriptionType,
@as("AWSServiceName") aWSServiceName: option<groupNameType>
}
  type response = {
@as("Role") role: role
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateServiceLinkedRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRole = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("PermissionsBoundary") permissionsBoundary: arnType,
@as("MaxSessionDuration") maxSessionDuration: roleMaxSessionDurationType,
@as("Description") description: roleDescriptionType,
@as("AssumeRolePolicyDocument") assumeRolePolicyDocument: option<policyDocumentType>,
@as("RoleName") roleName: option<roleNameType>,
@as("Path") path: pathType
}
  type response = {
@as("Role") role: option<role>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePolicy = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("Description") description: policyDescriptionType,
@as("PolicyDocument") policyDocument: option<policyDocumentType>,
@as("Path") path: policyPathType,
@as("PolicyName") policyName: option<policyNameType>
}
  type response = {
@as("Policy") policy: policy
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreatePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PathPrefix") pathPrefix: pathPrefixType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Users") users: option<userListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRoles = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PathPrefix") pathPrefix: pathPrefixType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Roles") roles: option<roleListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListRolesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPoliciesGrantingServiceAccess = {
  type t;
  type request = {
@as("ServiceNamespaces") serviceNamespaces: option<serviceNamespaceListType>,
@as("Arn") arn: option<arnType>,
@as("Marker") marker: markerType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("PoliciesGrantingServiceAccess") policiesGrantingServiceAccess: option<listPolicyGrantingServiceAccessResponseListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListPoliciesGrantingServiceAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PolicyUsageFilter") policyUsageFilter: policyUsageType,
@as("PathPrefix") pathPrefix: policyPathType,
@as("OnlyAttached") onlyAttached: booleanType,
@as("Scope") scope: policyScopeType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Policies") policies: policyListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServiceLinkedRoleDeletionStatus = {
  type t;
  type request = {
@as("DeletionTaskId") deletionTaskId: option<deletionTaskIdType>
}
  type response = {
@as("Reason") reason: deletionTaskFailureReasonType,
@as("Status") status: option<deletionTaskStatusType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetServiceLinkedRoleDeletionStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServiceLastAccessedDetails = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("MaxItems") maxItems: maxItemsType,
@as("JobId") jobId: option<jobIDType>
}
  type response = {
@as("Error") error: errorDetails,
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("JobCompletionDate") jobCompletionDate: option<dateType>,
@as("ServicesLastAccessed") servicesLastAccessed: option<servicesLastAccessed>,
@as("JobCreationDate") jobCreationDate: option<dateType>,
@as("JobType") jobType: accessAdvisorUsageGranularityType,
@as("JobStatus") jobStatus: option<jobStatusType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetServiceLastAccessedDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroup = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("GroupName") groupName: option<groupNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Users") users: option<userListType>,
@as("Group") group: option<group>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVirtualMFADevice = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("VirtualMFADeviceName") virtualMFADeviceName: option<virtualMFADeviceName>,
@as("Path") path: pathType
}
  type response = {
@as("VirtualMFADevice") virtualMFADevice: option<virtualMFADevice>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateVirtualMFADeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVirtualMFADevices = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("AssignmentStatus") assignmentStatus: assignmentStatusType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("VirtualMFADevices") virtualMFADevices: option<virtualMFADeviceListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListVirtualMFADevicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstanceProfile = {
  type t;
  type request = {
@as("InstanceProfileName") instanceProfileName: option<instanceProfileNameType>
}
  type response = {
@as("InstanceProfile") instanceProfile: option<instanceProfile>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInstanceProfile = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("Path") path: pathType,
@as("InstanceProfileName") instanceProfileName: option<instanceProfileNameType>
}
  type response = {
@as("InstanceProfile") instanceProfile: option<instanceProfile>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "CreateInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInstanceProfilesForRole = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("RoleName") roleName: option<roleNameType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("InstanceProfiles") instanceProfiles: option<instanceProfileListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListInstanceProfilesForRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInstanceProfiles = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItemsType,
@as("Marker") marker: markerType,
@as("PathPrefix") pathPrefix: pathPrefixType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("InstanceProfiles") instanceProfiles: option<instanceProfileListType>
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "ListInstanceProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SimulatePrincipalPolicy = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("MaxItems") maxItems: maxItemsType,
@as("ResourceHandlingOption") resourceHandlingOption: resourceHandlingOptionType,
@as("ContextEntries") contextEntries: contextEntryListType,
@as("CallerArn") callerArn: resourceNameType,
@as("ResourceOwner") resourceOwner: resourceNameType,
@as("ResourcePolicy") resourcePolicy: policyDocumentType,
@as("ResourceArns") resourceArns: resourceNameListType,
@as("ActionNames") actionNames: option<actionNameListType>,
@as("PermissionsBoundaryPolicyInputList") permissionsBoundaryPolicyInputList: simulationPolicyListType,
@as("PolicyInputList") policyInputList: simulationPolicyListType,
@as("PolicySourceArn") policySourceArn: option<arnType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("EvaluationResults") evaluationResults: evaluationResultsListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "SimulatePrincipalPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SimulateCustomPolicy = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("MaxItems") maxItems: maxItemsType,
@as("ResourceHandlingOption") resourceHandlingOption: resourceHandlingOptionType,
@as("ContextEntries") contextEntries: contextEntryListType,
@as("CallerArn") callerArn: resourceNameType,
@as("ResourceOwner") resourceOwner: resourceNameType,
@as("ResourcePolicy") resourcePolicy: policyDocumentType,
@as("ResourceArns") resourceArns: resourceNameListType,
@as("ActionNames") actionNames: option<actionNameListType>,
@as("PermissionsBoundaryPolicyInputList") permissionsBoundaryPolicyInputList: simulationPolicyListType,
@as("PolicyInputList") policyInputList: option<simulationPolicyListType>
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("EvaluationResults") evaluationResults: evaluationResultsListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "SimulateCustomPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccountAuthorizationDetails = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("MaxItems") maxItems: maxItemsType,
@as("Filter") filter: entityListType
}
  type response = {
@as("Marker") marker: responseMarkerType,
@as("IsTruncated") isTruncated: booleanType,
@as("Policies") policies: managedPolicyDetailListType,
@as("RoleDetailList") roleDetailList: roleDetailListType,
@as("GroupDetailList") groupDetailList: groupDetailListType,
@as("UserDetailList") userDetailList: userDetailListType
}
  @module("@aws-sdk/client-iam") @new external new_: (request) => t = "GetAccountAuthorizationDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
