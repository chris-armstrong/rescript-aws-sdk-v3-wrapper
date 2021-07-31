type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-acm-pca") @new
external createClient: unit => awsServiceClient = "ACMPCAClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validityPeriodType = [
  | @as("YEARS") #YEARS
  | @as("MONTHS") #MONTHS
  | @as("DAYS") #DAYS
  | @as("ABSOLUTE") #ABSOLUTE
  | @as("END_DATE") #END_DATE
]
type tagValue = string
type tagKey = string
type tstamp = Js.Date.t
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
type string_ = string
type signingAlgorithm = [
  | @as("SHA512WITHRSA") #SHA512WITHRSA
  | @as("SHA384WITHRSA") #SHA384WITHRSA
  | @as("SHA256WITHRSA") #SHA256WITHRSA
  | @as("SHA512WITHECDSA") #SHA512WITHECDSA
  | @as("SHA384WITHECDSA") #SHA384WITHECDSA
  | @as("SHA256WITHECDSA") #SHA256WITHECDSA
]
type s3ObjectAcl = [
  | @as("BUCKET_OWNER_FULL_CONTROL") #BUCKET_OWNER_FULL_CONTROL
  | @as("PUBLIC_READ") #PUBLIC_READ
]
type s3Key = string
type s3BucketName = string
type revocationReason = [
  | @as("A_A_COMPROMISE") #A_A_COMPROMISE
  | @as("PRIVILEGE_WITHDRAWN") #PRIVILEGE_WITHDRAWN
  | @as("CESSATION_OF_OPERATION") #CESSATION_OF_OPERATION
  | @as("SUPERSEDED") #SUPERSEDED
  | @as("AFFILIATION_CHANGED") #AFFILIATION_CHANGED
  | @as("CERTIFICATE_AUTHORITY_COMPROMISE") #CERTIFICATE_AUTHORITY_COMPROMISE
  | @as("KEY_COMPROMISE") #KEY_COMPROMISE
  | @as("UNSPECIFIED") #UNSPECIFIED
]
type resourceOwner = [@as("OTHER_ACCOUNTS") #OTHER_ACCOUNTS | @as("SELF") #SELF]
type principal = string
type positiveLong = float
type policyQualifierId = [@as("CPS") #CPS]
type permanentDeletionTimeInDays = int
type nextToken = string
type maxResults = int
type keyStorageSecurityStandard = [
  | @as("FIPS_140_2_LEVEL_3_OR_HIGHER") #FIPS_140_2_LEVEL_3_OR_HIGHER
  | @as("FIPS_140_2_LEVEL_2_OR_HIGHER") #FIPS_140_2_LEVEL_2_OR_HIGHER
]
type keyAlgorithm = [
  | @as("EC_secp384r1") #EC_Secp384r1
  | @as("EC_prime256v1") #EC_Prime256v1
  | @as("RSA_4096") #RSA_4096
  | @as("RSA_2048") #RSA_2048
]
type integer1To5000 = int
type idempotencyToken = string
type failureReason = [
  | @as("OTHER") #OTHER
  | @as("UNSUPPORTED_ALGORITHM") #UNSUPPORTED_ALGORITHM
  | @as("REQUEST_TIMED_OUT") #REQUEST_TIMED_OUT
]
type extendedKeyUsageType = [
  | @as("CERTIFICATE_TRANSPARENCY") #CERTIFICATE_TRANSPARENCY
  | @as("DOCUMENT_SIGNING") #DOCUMENT_SIGNING
  | @as("SMART_CARD_LOGIN") #SMART_CARD_LOGIN
  | @as("OCSP_SIGNING") #OCSP_SIGNING
  | @as("TIME_STAMPING") #TIME_STAMPING
  | @as("EMAIL_PROTECTION") #EMAIL_PROTECTION
  | @as("CODE_SIGNING") #CODE_SIGNING
  | @as("CLIENT_AUTH") #CLIENT_AUTH
  | @as("SERVER_AUTH") #SERVER_AUTH
]
type customObjectIdentifier = string
type csrBody = string
type csrBlob = NodeJs.Buffer.t
type countryCodeString = string
type certificateChainBlob = NodeJs.Buffer.t
type certificateChain = string
type certificateBodyBlob = NodeJs.Buffer.t
type certificateBody = string
type certificateAuthorityType = [@as("SUBORDINATE") #SUBORDINATE | @as("ROOT") #ROOT]
type certificateAuthorityStatus = [
  | @as("FAILED") #FAILED
  | @as("EXPIRED") #EXPIRED
  | @as("DISABLED") #DISABLED
  | @as("DELETED") #DELETED
  | @as("ACTIVE") #ACTIVE
  | @as("PENDING_CERTIFICATE") #PENDING_CERTIFICATE
  | @as("CREATING") #CREATING
]
type boolean_ = bool
type auditReportStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("CREATING") #CREATING
]
type auditReportResponseFormat = [@as("CSV") #CSV | @as("JSON") #JSON]
type auditReportId = string
type arn = string
type actionType = [
  | @as("ListPermissions") #ListPermissions
  | @as("GetCertificate") #GetCertificate
  | @as("IssueCertificate") #IssueCertificate
]
type accountId = string
type accessMethodType = [
  | @as("RESOURCE_PKI_NOTIFY") #RESOURCE_PKI_NOTIFY
  | @as("RESOURCE_PKI_MANIFEST") #RESOURCE_PKI_MANIFEST
  | @as("CA_REPOSITORY") #CA_REPOSITORY
]
type awspolicy = string
type asn1PrintableString64 = string
type validity = {
  @as("Type") type_: validityPeriodType,
  @as("Value") value: positiveLong,
}
type tag = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: tagKey,
}
type qualifier = {@as("CpsUri") cpsUri: string256}
type otherName = {
  @as("Value") value: string256,
  @as("TypeId") typeId: customObjectIdentifier,
}
type keyUsage = {
  @as("DecipherOnly") decipherOnly: option<boolean_>,
  @as("EncipherOnly") encipherOnly: option<boolean_>,
  @as("CRLSign") crlsign: option<boolean_>,
  @as("KeyCertSign") keyCertSign: option<boolean_>,
  @as("KeyAgreement") keyAgreement: option<boolean_>,
  @as("DataEncipherment") dataEncipherment: option<boolean_>,
  @as("KeyEncipherment") keyEncipherment: option<boolean_>,
  @as("NonRepudiation") nonRepudiation: option<boolean_>,
  @as("DigitalSignature") digitalSignature: option<boolean_>,
}
type extendedKeyUsage = {
  @as("ExtendedKeyUsageObjectIdentifier")
  extendedKeyUsageObjectIdentifier: option<customObjectIdentifier>,
  @as("ExtendedKeyUsageType") extendedKeyUsageType: option<extendedKeyUsageType>,
}
type ediPartyName = {
  @as("NameAssigner") nameAssigner: option<string256>,
  @as("PartyName") partyName: string256,
}
type crlConfiguration = {
  @as("S3ObjectAcl") s3ObjectAcl: option<s3ObjectAcl>,
  @as("S3BucketName") s3BucketName: option<string3To255>,
  @as("CustomCname") customCname: option<string253>,
  @as("ExpirationInDays") expirationInDays: option<integer1To5000>,
  @as("Enabled") enabled: boolean_,
}
type actionList = array<actionType>
type accessMethod = {
  @as("AccessMethodType") accessMethodType: option<accessMethodType>,
  @as("CustomObjectIdentifier") customObjectIdentifier: option<customObjectIdentifier>,
}
type asn1Subject = {
  @as("GenerationQualifier") generationQualifier: option<string3>,
  @as("Pseudonym") pseudonym: option<string128>,
  @as("Initials") initials: option<string5>,
  @as("GivenName") givenName: option<string16>,
  @as("Surname") surname: option<string40>,
  @as("Title") title: option<string64>,
  @as("Locality") locality: option<string128>,
  @as("SerialNumber") serialNumber: option<asn1PrintableString64>,
  @as("CommonName") commonName: option<string64>,
  @as("State") state: option<string128>,
  @as("DistinguishedNameQualifier") distinguishedNameQualifier: option<asn1PrintableString64>,
  @as("OrganizationalUnit") organizationalUnit: option<string64>,
  @as("Organization") organization: option<string64>,
  @as("Country") country: option<countryCodeString>,
}
type tagList_ = array<tag>
type revocationConfiguration = {@as("CrlConfiguration") crlConfiguration: option<crlConfiguration>}
type policyQualifierInfo = {
  @as("Qualifier") qualifier: qualifier,
  @as("PolicyQualifierId") policyQualifierId: policyQualifierId,
}
type permission = {
  @as("Policy") policy: option<awspolicy>,
  @as("Actions") actions: option<actionList>,
  @as("SourceAccount") sourceAccount: option<accountId>,
  @as("Principal") principal: option<principal>,
  @as("CreatedAt") createdAt: option<tstamp>,
  @as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>,
}
type generalName = {
  @as("RegisteredId") registeredId: option<customObjectIdentifier>,
  @as("IpAddress") ipAddress: option<string39>,
  @as("UniformResourceIdentifier") uniformResourceIdentifier: option<string253>,
  @as("EdiPartyName") ediPartyName: option<ediPartyName>,
  @as("DirectoryName") directoryName: option<asn1Subject>,
  @as("DnsName") dnsName: option<string253>,
  @as("Rfc822Name") rfc822Name: option<string256>,
  @as("OtherName") otherName: option<otherName>,
}
type extendedKeyUsageList = array<extendedKeyUsage>
type policyQualifierInfoList = array<policyQualifierInfo>
type permissionList = array<permission>
type generalNameList = array<generalName>
type accessDescription = {
  @as("AccessLocation") accessLocation: generalName,
  @as("AccessMethod") accessMethod: accessMethod,
}
type policyInformation = {
  @as("PolicyQualifiers") policyQualifiers: option<policyQualifierInfoList>,
  @as("CertPolicyId") certPolicyId: customObjectIdentifier,
}
type accessDescriptionList = array<accessDescription>
type csrExtensions = {
  @as("SubjectInformationAccess") subjectInformationAccess: option<accessDescriptionList>,
  @as("KeyUsage") keyUsage: option<keyUsage>,
}
type certificatePolicyList = array<policyInformation>
type extensions = {
  @as("SubjectAlternativeNames") subjectAlternativeNames: option<generalNameList>,
  @as("KeyUsage") keyUsage: option<keyUsage>,
  @as("ExtendedKeyUsage") extendedKeyUsage: option<extendedKeyUsageList>,
  @as("CertificatePolicies") certificatePolicies: option<certificatePolicyList>,
}
type certificateAuthorityConfiguration = {
  @as("CsrExtensions") csrExtensions: option<csrExtensions>,
  @as("Subject") subject: asn1Subject,
  @as("SigningAlgorithm") signingAlgorithm: signingAlgorithm,
  @as("KeyAlgorithm") keyAlgorithm: keyAlgorithm,
}
type certificateAuthority = {
  @as("KeyStorageSecurityStandard") keyStorageSecurityStandard: option<keyStorageSecurityStandard>,
  @as("RestorableUntil") restorableUntil: option<tstamp>,
  @as("RevocationConfiguration") revocationConfiguration: option<revocationConfiguration>,
  @as("CertificateAuthorityConfiguration")
  certificateAuthorityConfiguration: option<certificateAuthorityConfiguration>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("NotAfter") notAfter: option<tstamp>,
  @as("NotBefore") notBefore: option<tstamp>,
  @as("Status") status: option<certificateAuthorityStatus>,
  @as("Serial") serial: option<string_>,
  @as("Type") type_: option<certificateAuthorityType>,
  @as("LastStateChangeAt") lastStateChangeAt: option<tstamp>,
  @as("CreatedAt") createdAt: option<tstamp>,
  @as("OwnerAccount") ownerAccount: option<accountId>,
  @as("Arn") arn: option<arn>,
}
type apiPassthrough = {
  @as("Subject") subject: option<asn1Subject>,
  @as("Extensions") extensions: option<extensions>,
}
type certificateAuthorities = array<certificateAuthority>

module RevokeCertificate = {
  type t
  type request = {
    @as("RevocationReason") revocationReason: revocationReason,
    @as("CertificateSerial") certificateSerial: string128,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new external new_: request => t = "RevokeCertificateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RestoreCertificateAuthority = {
  type t
  type request = {@as("CertificateAuthorityArn") certificateAuthorityArn: arn}

  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "RestoreCertificateAuthorityCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutPolicy = {
  type t
  type request = {
    @as("Policy") policy: awspolicy,
    @as("ResourceArn") resourceArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new external new_: request => t = "PutPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ImportCertificateAuthorityCertificate = {
  type t
  type request = {
    @as("CertificateChain") certificateChain: option<certificateChainBlob>,
    @as("Certificate") certificate: certificateBodyBlob,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "ImportCertificateAuthorityCertificateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetPolicy = {
  type t
  type request = {@as("ResourceArn") resourceArn: arn}
  type response = {@as("Policy") policy: option<awspolicy>}
  @module("@aws-sdk/client-acm-pca") @new external new_: request => t = "GetPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCertificateAuthorityCsr = {
  type t
  type request = {@as("CertificateAuthorityArn") certificateAuthorityArn: arn}
  type response = {@as("Csr") csr: option<csrBody>}
  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "GetCertificateAuthorityCsrCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCertificateAuthorityCertificate = {
  type t
  type request = {@as("CertificateAuthorityArn") certificateAuthorityArn: arn}
  type response = {
    @as("CertificateChain") certificateChain: option<certificateChain>,
    @as("Certificate") certificate: option<certificateBody>,
  }
  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "GetCertificateAuthorityCertificateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCertificate = {
  type t
  type request = {
    @as("CertificateArn") certificateArn: arn,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }
  type response = {
    @as("CertificateChain") certificateChain: option<certificateChain>,
    @as("Certificate") certificate: option<certificateBody>,
  }
  @module("@aws-sdk/client-acm-pca") @new external new_: request => t = "GetCertificateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCertificateAuthorityAuditReport = {
  type t
  type request = {
    @as("AuditReportId") auditReportId: auditReportId,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }
  type response = {
    @as("CreatedAt") createdAt: option<tstamp>,
    @as("S3Key") s3Key: option<s3Key>,
    @as("S3BucketName") s3BucketName: option<s3BucketName>,
    @as("AuditReportStatus") auditReportStatus: option<auditReportStatus>,
  }
  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "DescribeCertificateAuthorityAuditReportCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePolicy = {
  type t
  type request = {@as("ResourceArn") resourceArn: arn}

  @module("@aws-sdk/client-acm-pca") @new external new_: request => t = "DeletePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePermission = {
  type t
  type request = {
    @as("SourceAccount") sourceAccount: option<accountId>,
    @as("Principal") principal: principal,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new external new_: request => t = "DeletePermissionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCertificateAuthority = {
  type t
  type request = {
    @as("PermanentDeletionTimeInDays")
    permanentDeletionTimeInDays: option<permanentDeletionTimeInDays>,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "DeleteCertificateAuthorityCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateCertificateAuthorityAuditReport = {
  type t
  type request = {
    @as("AuditReportResponseFormat") auditReportResponseFormat: auditReportResponseFormat,
    @as("S3BucketName") s3BucketName: s3BucketName,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }
  type response = {
    @as("S3Key") s3Key: option<s3Key>,
    @as("AuditReportId") auditReportId: option<auditReportId>,
  }
  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "CreateCertificateAuthorityAuditReportCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePermission = {
  type t
  type request = {
    @as("Actions") actions: actionList,
    @as("SourceAccount") sourceAccount: option<accountId>,
    @as("Principal") principal: principal,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new external new_: request => t = "CreatePermissionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateCertificateAuthority = {
  type t
  type request = {
    @as("Status") status: option<certificateAuthorityStatus>,
    @as("RevocationConfiguration") revocationConfiguration: option<revocationConfiguration>,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "UpdateCertificateAuthorityCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagCertificateAuthority = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "UntagCertificateAuthorityCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagCertificateAuthority = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "TagCertificateAuthorityCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTags = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-acm-pca") @new external new_: request => t = "ListTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPermissions = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Permissions") permissions: option<permissionList>,
  }
  @module("@aws-sdk/client-acm-pca") @new external new_: request => t = "ListPermissionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCertificateAuthority = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("KeyStorageSecurityStandard")
    keyStorageSecurityStandard: option<keyStorageSecurityStandard>,
    @as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
    @as("CertificateAuthorityType") certificateAuthorityType: certificateAuthorityType,
    @as("RevocationConfiguration") revocationConfiguration: option<revocationConfiguration>,
    @as("CertificateAuthorityConfiguration")
    certificateAuthorityConfiguration: certificateAuthorityConfiguration,
  }
  type response = {@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>}
  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "CreateCertificateAuthorityCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module IssueCertificate = {
  type t
  type request = {
    @as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
    @as("ValidityNotBefore") validityNotBefore: option<validity>,
    @as("Validity") validity: validity,
    @as("TemplateArn") templateArn: option<arn>,
    @as("SigningAlgorithm") signingAlgorithm: signingAlgorithm,
    @as("Csr") csr: csrBlob,
    @as("CertificateAuthorityArn") certificateAuthorityArn: arn,
    @as("ApiPassthrough") apiPassthrough: option<apiPassthrough>,
  }
  type response = {@as("CertificateArn") certificateArn: option<arn>}
  @module("@aws-sdk/client-acm-pca") @new external new_: request => t = "IssueCertificateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCertificateAuthority = {
  type t
  type request = {@as("CertificateAuthorityArn") certificateAuthorityArn: arn}
  type response = {@as("CertificateAuthority") certificateAuthority: option<certificateAuthority>}
  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "DescribeCertificateAuthorityCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCertificateAuthorities = {
  type t
  type request = {
    @as("ResourceOwner") resourceOwner: option<resourceOwner>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("CertificateAuthorities") certificateAuthorities: option<certificateAuthorities>,
  }
  @module("@aws-sdk/client-acm-pca") @new
  external new_: request => t = "ListCertificateAuthoritiesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
