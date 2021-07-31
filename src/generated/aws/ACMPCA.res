type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validityPeriodType = [@as("YEARS") #YEARS | @as("MONTHS") #MONTHS | @as("DAYS") #DAYS | @as("ABSOLUTE") #ABSOLUTE | @as("END_DATE") #END_DATE]
type tagValue = string
type tagKey = string
type tStamp = Js.Date.t;
type string64 = string
type string5 = string
type string40 = string
type string3To255 = string
type string39 = string
type string3 = string
type string256 = string
type string253 = string
type string16 = string
type string128 = string
type amazonawsString = string
type signingAlgorithm = [@as("SHA512WITHRSA") #SHA512WITHRSA | @as("SHA384WITHRSA") #SHA384WITHRSA | @as("SHA256WITHRSA") #SHA256WITHRSA | @as("SHA512WITHECDSA") #SHA512WITHECDSA | @as("SHA384WITHECDSA") #SHA384WITHECDSA | @as("SHA256WITHECDSA") #SHA256WITHECDSA]
type s3ObjectAcl = [@as("BUCKET_OWNER_FULL_CONTROL") #BUCKET_OWNER_FULL_CONTROL | @as("PUBLIC_READ") #PUBLIC_READ]
type s3Key = string
type s3BucketName = string
type revocationReason = [@as("A_A_COMPROMISE") #A_A_COMPROMISE | @as("PRIVILEGE_WITHDRAWN") #PRIVILEGE_WITHDRAWN | @as("CESSATION_OF_OPERATION") #CESSATION_OF_OPERATION | @as("SUPERSEDED") #SUPERSEDED | @as("AFFILIATION_CHANGED") #AFFILIATION_CHANGED | @as("CERTIFICATE_AUTHORITY_COMPROMISE") #CERTIFICATE_AUTHORITY_COMPROMISE | @as("KEY_COMPROMISE") #KEY_COMPROMISE | @as("UNSPECIFIED") #UNSPECIFIED]
type resourceOwner = [@as("OTHER_ACCOUNTS") #OTHER_ACCOUNTS | @as("SELF") #SELF]
type principal = string
type positiveLong = float;
type policyQualifierId = [@as("CPS") #CPS]
type permanentDeletionTimeInDays = int;
type nextToken = string
type maxResults = int;
type keyStorageSecurityStandard = [@as("FIPS_140_2_LEVEL_3_OR_HIGHER") #FIPS_140_2_LEVEL_3_OR_HIGHER | @as("FIPS_140_2_LEVEL_2_OR_HIGHER") #FIPS_140_2_LEVEL_2_OR_HIGHER]
type keyAlgorithm = [@as("EC_secp384r1") #EC_secp384r1 | @as("EC_prime256v1") #EC_prime256v1 | @as("RSA_4096") #RSA_4096 | @as("RSA_2048") #RSA_2048]
type integer1To5000 = int;
type idempotencyToken = string
type failureReason = [@as("OTHER") #OTHER | @as("UNSUPPORTED_ALGORITHM") #UNSUPPORTED_ALGORITHM | @as("REQUEST_TIMED_OUT") #REQUEST_TIMED_OUT]
type extendedKeyUsageType = [@as("CERTIFICATE_TRANSPARENCY") #CERTIFICATE_TRANSPARENCY | @as("DOCUMENT_SIGNING") #DOCUMENT_SIGNING | @as("SMART_CARD_LOGIN") #SMART_CARD_LOGIN | @as("OCSP_SIGNING") #OCSP_SIGNING | @as("TIME_STAMPING") #TIME_STAMPING | @as("EMAIL_PROTECTION") #EMAIL_PROTECTION | @as("CODE_SIGNING") #CODE_SIGNING | @as("CLIENT_AUTH") #CLIENT_AUTH | @as("SERVER_AUTH") #SERVER_AUTH]
type customObjectIdentifier = string
type csrBody = string
type csrBlob = NodeJs.Buffer.t;
type countryCodeString = string
type certificateChainBlob = NodeJs.Buffer.t;
type certificateChain = string
type certificateBodyBlob = NodeJs.Buffer.t;
type certificateBody = string
type certificateAuthorityType = [@as("SUBORDINATE") #SUBORDINATE | @as("ROOT") #ROOT]
type certificateAuthorityStatus = [@as("FAILED") #FAILED | @as("EXPIRED") #EXPIRED | @as("DISABLED") #DISABLED | @as("DELETED") #DELETED | @as("ACTIVE") #ACTIVE | @as("PENDING_CERTIFICATE") #PENDING_CERTIFICATE | @as("CREATING") #CREATING]
type amazonawsBoolean = bool;
type auditReportStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("CREATING") #CREATING]
type auditReportResponseFormat = [@as("CSV") #CSV | @as("JSON") #JSON]
type auditReportId = string
type arn = string
type actionType = [@as("ListPermissions") #ListPermissions | @as("GetCertificate") #GetCertificate | @as("IssueCertificate") #IssueCertificate]
type accountId = string
type accessMethodType = [@as("RESOURCE_PKI_NOTIFY") #RESOURCE_PKI_NOTIFY | @as("RESOURCE_PKI_MANIFEST") #RESOURCE_PKI_MANIFEST | @as("CA_REPOSITORY") #CA_REPOSITORY]
type aWSPolicy = string
type aSN1PrintableString64 = string
type validity = {
@as("Type") type_: option<validityPeriodType>,
@as("Value") value: option<positiveLong>
}
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type qualifier = {
@as("CpsUri") cpsUri: option<string256>
}
type otherName = {
@as("Value") value: option<string256>,
@as("TypeId") typeId: option<customObjectIdentifier>
}
type keyUsage = {
@as("DecipherOnly") decipherOnly: amazonawsBoolean,
@as("EncipherOnly") encipherOnly: amazonawsBoolean,
@as("CRLSign") cRLSign: amazonawsBoolean,
@as("KeyCertSign") keyCertSign: amazonawsBoolean,
@as("KeyAgreement") keyAgreement: amazonawsBoolean,
@as("DataEncipherment") dataEncipherment: amazonawsBoolean,
@as("KeyEncipherment") keyEncipherment: amazonawsBoolean,
@as("NonRepudiation") nonRepudiation: amazonawsBoolean,
@as("DigitalSignature") digitalSignature: amazonawsBoolean
}
type extendedKeyUsage = {
@as("ExtendedKeyUsageObjectIdentifier") extendedKeyUsageObjectIdentifier: customObjectIdentifier,
@as("ExtendedKeyUsageType") extendedKeyUsageType: extendedKeyUsageType
}
type ediPartyName = {
@as("NameAssigner") nameAssigner: string256,
@as("PartyName") partyName: option<string256>
}
type crlConfiguration = {
@as("S3ObjectAcl") s3ObjectAcl: s3ObjectAcl,
@as("S3BucketName") s3BucketName: string3To255,
@as("CustomCname") customCname: string253,
@as("ExpirationInDays") expirationInDays: integer1To5000,
@as("Enabled") enabled: option<amazonawsBoolean>
}
type actionList = array<actionType>
type accessMethod = {
@as("AccessMethodType") accessMethodType: accessMethodType,
@as("CustomObjectIdentifier") customObjectIdentifier: customObjectIdentifier
}
type aSN1Subject = {
@as("GenerationQualifier") generationQualifier: string3,
@as("Pseudonym") pseudonym: string128,
@as("Initials") initials: string5,
@as("GivenName") givenName: string16,
@as("Surname") surname: string40,
@as("Title") title: string64,
@as("Locality") locality: string128,
@as("SerialNumber") serialNumber: aSN1PrintableString64,
@as("CommonName") commonName: string64,
@as("State") state: string128,
@as("DistinguishedNameQualifier") distinguishedNameQualifier: aSN1PrintableString64,
@as("OrganizationalUnit") organizationalUnit: string64,
@as("Organization") organization: string64,
@as("Country") country: countryCodeString
}
type tagList = array<tag>
type revocationConfiguration = {
@as("CrlConfiguration") crlConfiguration: crlConfiguration
}
type policyQualifierInfo = {
@as("Qualifier") qualifier: option<qualifier>,
@as("PolicyQualifierId") policyQualifierId: option<policyQualifierId>
}
type permission = {
@as("Policy") policy: aWSPolicy,
@as("Actions") actions: actionList,
@as("SourceAccount") sourceAccount: accountId,
@as("Principal") principal: principal,
@as("CreatedAt") createdAt: tStamp,
@as("CertificateAuthorityArn") certificateAuthorityArn: arn
}
type generalName = {
@as("RegisteredId") registeredId: customObjectIdentifier,
@as("IpAddress") ipAddress: string39,
@as("UniformResourceIdentifier") uniformResourceIdentifier: string253,
@as("EdiPartyName") ediPartyName: ediPartyName,
@as("DirectoryName") directoryName: aSN1Subject,
@as("DnsName") dnsName: string253,
@as("Rfc822Name") rfc822Name: string256,
@as("OtherName") otherName: otherName
}
type extendedKeyUsageList = array<extendedKeyUsage>
type policyQualifierInfoList = array<policyQualifierInfo>
type permissionList = array<permission>
type generalNameList = array<generalName>
type accessDescription = {
@as("AccessLocation") accessLocation: option<generalName>,
@as("AccessMethod") accessMethod: option<accessMethod>
}
type policyInformation = {
@as("PolicyQualifiers") policyQualifiers: policyQualifierInfoList,
@as("CertPolicyId") certPolicyId: option<customObjectIdentifier>
}
type accessDescriptionList = array<accessDescription>
type csrExtensions = {
@as("SubjectInformationAccess") subjectInformationAccess: accessDescriptionList,
@as("KeyUsage") keyUsage: keyUsage
}
type certificatePolicyList = array<policyInformation>
type extensions = {
@as("SubjectAlternativeNames") subjectAlternativeNames: generalNameList,
@as("KeyUsage") keyUsage: keyUsage,
@as("ExtendedKeyUsage") extendedKeyUsage: extendedKeyUsageList,
@as("CertificatePolicies") certificatePolicies: certificatePolicyList
}
type certificateAuthorityConfiguration = {
@as("CsrExtensions") csrExtensions: csrExtensions,
@as("Subject") subject: option<aSN1Subject>,
@as("SigningAlgorithm") signingAlgorithm: option<signingAlgorithm>,
@as("KeyAlgorithm") keyAlgorithm: option<keyAlgorithm>
}
type certificateAuthority = {
@as("KeyStorageSecurityStandard") keyStorageSecurityStandard: keyStorageSecurityStandard,
@as("RestorableUntil") restorableUntil: tStamp,
@as("RevocationConfiguration") revocationConfiguration: revocationConfiguration,
@as("CertificateAuthorityConfiguration") certificateAuthorityConfiguration: certificateAuthorityConfiguration,
@as("FailureReason") failureReason: failureReason,
@as("NotAfter") notAfter: tStamp,
@as("NotBefore") notBefore: tStamp,
@as("Status") status: certificateAuthorityStatus,
@as("Serial") serial: amazonawsString,
@as("Type") type_: certificateAuthorityType,
@as("LastStateChangeAt") lastStateChangeAt: tStamp,
@as("CreatedAt") createdAt: tStamp,
@as("OwnerAccount") ownerAccount: accountId,
@as("Arn") arn: arn
}
type apiPassthrough = {
@as("Subject") subject: aSN1Subject,
@as("Extensions") extensions: extensions
}
type certificateAuthorities = array<certificateAuthority>
type clientType;
@module("@aws-sdk/client-acm-pca") @new external createClient: unit => clientType = "ACMPCAClient";
module RevokeCertificate = {
  type t;
  type request = {
@as("RevocationReason") revocationReason: option<revocationReason>,
@as("CertificateSerial") certificateSerial: option<string128>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "RevokeCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RestoreCertificateAuthority = {
  type t;
  type request = {
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "RestoreCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutPolicy = {
  type t;
  type request = {
@as("Policy") policy: option<aWSPolicy>,
@as("ResourceArn") resourceArn: option<arn>
}
  
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "PutPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ImportCertificateAuthorityCertificate = {
  type t;
  type request = {
@as("CertificateChain") certificateChain: certificateChainBlob,
@as("Certificate") certificate: option<certificateBodyBlob>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "ImportCertificateAuthorityCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetPolicy = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("Policy") policy: aWSPolicy
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "GetPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCertificateAuthorityCsr = {
  type t;
  type request = {
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  type response = {
@as("Csr") csr: csrBody
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "GetCertificateAuthorityCsrCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCertificateAuthorityCertificate = {
  type t;
  type request = {
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  type response = {
@as("CertificateChain") certificateChain: certificateChain,
@as("Certificate") certificate: certificateBody
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "GetCertificateAuthorityCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: option<arn>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  type response = {
@as("CertificateChain") certificateChain: certificateChain,
@as("Certificate") certificate: certificateBody
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "GetCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCertificateAuthorityAuditReport = {
  type t;
  type request = {
@as("AuditReportId") auditReportId: option<auditReportId>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  type response = {
@as("CreatedAt") createdAt: tStamp,
@as("S3Key") s3Key: s3Key,
@as("S3BucketName") s3BucketName: s3BucketName,
@as("AuditReportStatus") auditReportStatus: auditReportStatus
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "DescribeCertificateAuthorityAuditReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePolicy = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "DeletePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePermission = {
  type t;
  type request = {
@as("SourceAccount") sourceAccount: accountId,
@as("Principal") principal: option<principal>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "DeletePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCertificateAuthority = {
  type t;
  type request = {
@as("PermanentDeletionTimeInDays") permanentDeletionTimeInDays: permanentDeletionTimeInDays,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "DeleteCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateCertificateAuthorityAuditReport = {
  type t;
  type request = {
@as("AuditReportResponseFormat") auditReportResponseFormat: option<auditReportResponseFormat>,
@as("S3BucketName") s3BucketName: option<s3BucketName>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  type response = {
@as("S3Key") s3Key: s3Key,
@as("AuditReportId") auditReportId: auditReportId
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "CreateCertificateAuthorityAuditReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePermission = {
  type t;
  type request = {
@as("Actions") actions: option<actionList>,
@as("SourceAccount") sourceAccount: accountId,
@as("Principal") principal: option<principal>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "CreatePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateCertificateAuthority = {
  type t;
  type request = {
@as("Status") status: certificateAuthorityStatus,
@as("RevocationConfiguration") revocationConfiguration: revocationConfiguration,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "UpdateCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagCertificateAuthority = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "UntagCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagCertificateAuthority = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "TagCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "ListTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPermissions = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Permissions") permissions: permissionList
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "ListPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCertificateAuthority = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("KeyStorageSecurityStandard") keyStorageSecurityStandard: keyStorageSecurityStandard,
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("CertificateAuthorityType") certificateAuthorityType: option<certificateAuthorityType>,
@as("RevocationConfiguration") revocationConfiguration: revocationConfiguration,
@as("CertificateAuthorityConfiguration") certificateAuthorityConfiguration: option<certificateAuthorityConfiguration>
}
  type response = {
@as("CertificateAuthorityArn") certificateAuthorityArn: arn
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "CreateCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module IssueCertificate = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("ValidityNotBefore") validityNotBefore: validity,
@as("Validity") validity: option<validity>,
@as("TemplateArn") templateArn: arn,
@as("SigningAlgorithm") signingAlgorithm: option<signingAlgorithm>,
@as("Csr") csr: option<csrBlob>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>,
@as("ApiPassthrough") apiPassthrough: apiPassthrough
}
  type response = {
@as("CertificateArn") certificateArn: arn
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "IssueCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCertificateAuthority = {
  type t;
  type request = {
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>
}
  type response = {
@as("CertificateAuthority") certificateAuthority: certificateAuthority
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "DescribeCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCertificateAuthorities = {
  type t;
  type request = {
@as("ResourceOwner") resourceOwner: resourceOwner,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("CertificateAuthorities") certificateAuthorities: certificateAuthorities
}
  @module("@aws-sdk/client-acm-pca") @new external new_: (Js.Promise.t<request>) => t = "ListCertificateAuthoritiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
