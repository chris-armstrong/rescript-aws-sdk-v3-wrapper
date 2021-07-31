type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validationMethod = [@as("DNS") #DNS | @as("EMAIL") #EMAIL]
type validationExceptionMessage = string
type tagValue = string
type tagKey = string
type tStamp = Js.Date.t;
type amazonawsString = string
type serviceErrorMessage = string
type revocationReason = [@as("A_A_COMPROMISE") #A_A_COMPROMISE | @as("PRIVILEGE_WITHDRAWN") #PRIVILEGE_WITHDRAWN | @as("REMOVE_FROM_CRL") #REMOVE_FROM_CRL | @as("CERTIFICATE_HOLD") #CERTIFICATE_HOLD | @as("CESSATION_OF_OPERATION") #CESSATION_OF_OPERATION | @as("SUPERCEDED") #SUPERCEDED | @as("AFFILIATION_CHANGED") #AFFILIATION_CHANGED | @as("CA_COMPROMISE") #CA_COMPROMISE | @as("KEY_COMPROMISE") #KEY_COMPROMISE | @as("UNSPECIFIED") #UNSPECIFIED]
type renewalStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING_VALIDATION") #PENDING_VALIDATION | @as("PENDING_AUTO_RENEWAL") #PENDING_AUTO_RENEWAL]
type renewalEligibility = [@as("INELIGIBLE") #INELIGIBLE | @as("ELIGIBLE") #ELIGIBLE]
type recordType = [@as("CNAME") #CNAME]
type privateKeyBlob = NodeJs.Buffer.t;
type privateKey = string
type positiveInteger = int;
type passphraseBlob = NodeJs.Buffer.t;
type nextToken = string
type maxItems = int;
type keyUsageName = [@as("CUSTOM") #CUSTOM | @as("ANY") #ANY | @as("DECIPHER_ONLY") #DECIPHER_ONLY | @as("ENCIPHER_ONLY") #ENCIPHER_ONLY | @as("CRL_SIGNING") #CRL_SIGNING | @as("CERTIFICATE_SIGNING") #CERTIFICATE_SIGNING | @as("KEY_AGREEMENT") #KEY_AGREEMENT | @as("DATA_ENCIPHERMENT") #DATA_ENCIPHERMENT | @as("KEY_ENCIPHERMENT") #KEY_ENCIPHERMENT | @as("NON_REPUDIATION") #NON_REPUDIATION | @as("DIGITAL_SIGNATURE") #DIGITAL_SIGNATURE]
type keyAlgorithm = [@as("EC_secp521r1") #EC_secp521r1 | @as("EC_secp384r1") #EC_secp384r1 | @as("EC_prime256v1") #EC_prime256v1 | @as("RSA_4096") #RSA_4096 | @as("RSA_1024") #RSA_1024 | @as("RSA_2048") #RSA_2048]
type idempotencyToken = string
type failureReason = [@as("OTHER") #OTHER | @as("SLR_NOT_FOUND") #SLR_NOT_FOUND | @as("PCA_ACCESS_DENIED") #PCA_ACCESS_DENIED | @as("PCA_INVALID_DURATION") #PCA_INVALID_DURATION | @as("PCA_INVALID_ARGS") #PCA_INVALID_ARGS | @as("PCA_RESOURCE_NOT_FOUND") #PCA_RESOURCE_NOT_FOUND | @as("PCA_NAME_CONSTRAINTS_VALIDATION") #PCA_NAME_CONSTRAINTS_VALIDATION | @as("PCA_REQUEST_FAILED") #PCA_REQUEST_FAILED | @as("PCA_INVALID_STATE") #PCA_INVALID_STATE | @as("PCA_INVALID_ARN") #PCA_INVALID_ARN | @as("PCA_LIMIT_EXCEEDED") #PCA_LIMIT_EXCEEDED | @as("CAA_ERROR") #CAA_ERROR | @as("DOMAIN_VALIDATION_DENIED") #DOMAIN_VALIDATION_DENIED | @as("INVALID_PUBLIC_DOMAIN") #INVALID_PUBLIC_DOMAIN | @as("DOMAIN_NOT_ALLOWED") #DOMAIN_NOT_ALLOWED | @as("ADDITIONAL_VERIFICATION_REQUIRED") #ADDITIONAL_VERIFICATION_REQUIRED | @as("NO_AVAILABLE_CONTACTS") #NO_AVAILABLE_CONTACTS]
type extendedKeyUsageName = [@as("CUSTOM") #CUSTOM | @as("NONE") #NONE | @as("ANY") #ANY | @as("IPSEC_USER") #IPSEC_USER | @as("IPSEC_TUNNEL") #IPSEC_TUNNEL | @as("IPSEC_END_SYSTEM") #IPSEC_END_SYSTEM | @as("OCSP_SIGNING") #OCSP_SIGNING | @as("TIME_STAMPING") #TIME_STAMPING | @as("EMAIL_PROTECTION") #EMAIL_PROTECTION | @as("CODE_SIGNING") #CODE_SIGNING | @as("TLS_WEB_CLIENT_AUTHENTICATION") #TLS_WEB_CLIENT_AUTHENTICATION | @as("TLS_WEB_SERVER_AUTHENTICATION") #TLS_WEB_SERVER_AUTHENTICATION]
type domainStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING_VALIDATION") #PENDING_VALIDATION]
type domainNameString = string
type certificateType = [@as("PRIVATE") #PRIVATE | @as("AMAZON_ISSUED") #AMAZON_ISSUED | @as("IMPORTED") #IMPORTED]
type certificateTransparencyLoggingPreference = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type certificateStatus = [@as("FAILED") #FAILED | @as("REVOKED") #REVOKED | @as("VALIDATION_TIMED_OUT") #VALIDATION_TIMED_OUT | @as("EXPIRED") #EXPIRED | @as("INACTIVE") #INACTIVE | @as("ISSUED") #ISSUED | @as("PENDING_VALIDATION") #PENDING_VALIDATION]
type certificateChainBlob = NodeJs.Buffer.t;
type certificateChain = string
type certificateBodyBlob = NodeJs.Buffer.t;
type certificateBody = string
type availabilityErrorMessage = string
type arn = string
type validationEmailList = array<amazonawsString>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type resourceRecord = {
@as("Value") value: option<amazonawsString>,
@as("Type") type_: option<recordType>,
@as("Name") name: option<amazonawsString>
}
type keyUsageFilterList = array<keyUsageName>
type keyUsage = {
@as("Name") name: keyUsageName
}
type keyAlgorithmList = array<keyAlgorithm>
type inUseList = array<amazonawsString>
type extendedKeyUsageFilterList = array<extendedKeyUsageName>
type extendedKeyUsage = {
@as("OID") oID: amazonawsString,
@as("Name") name: extendedKeyUsageName
}
type expiryEventsConfiguration = {
@as("DaysBeforeExpiry") daysBeforeExpiry: positiveInteger
}
type domainValidationOption = {
@as("ValidationDomain") validationDomain: option<domainNameString>,
@as("DomainName") domainName: option<domainNameString>
}
type domainList = array<domainNameString>
type certificateSummary = {
@as("DomainName") domainName: domainNameString,
@as("CertificateArn") certificateArn: arn
}
type certificateStatuses = array<certificateStatus>
type certificateOptions = {
@as("CertificateTransparencyLoggingPreference") certificateTransparencyLoggingPreference: certificateTransparencyLoggingPreference
}
type tagList = array<tag>
type keyUsageList = array<keyUsage>
type filters = {
@as("keyTypes") keyTypes: keyAlgorithmList,
@as("keyUsage") keyUsage: keyUsageFilterList,
@as("extendedKeyUsage") extendedKeyUsage: extendedKeyUsageFilterList
}
type extendedKeyUsageList = array<extendedKeyUsage>
type domainValidationOptionList = array<domainValidationOption>
type domainValidation = {
@as("ValidationMethod") validationMethod: validationMethod,
@as("ResourceRecord") resourceRecord: resourceRecord,
@as("ValidationStatus") validationStatus: domainStatus,
@as("ValidationDomain") validationDomain: domainNameString,
@as("ValidationEmails") validationEmails: validationEmailList,
@as("DomainName") domainName: option<domainNameString>
}
type certificateSummaryList = array<certificateSummary>
type domainValidationList = array<domainValidation>
type renewalSummary = {
@as("UpdatedAt") updatedAt: option<tStamp>,
@as("RenewalStatusReason") renewalStatusReason: failureReason,
@as("DomainValidationOptions") domainValidationOptions: option<domainValidationList>,
@as("RenewalStatus") renewalStatus: option<renewalStatus>
}
type certificateDetail = {
@as("Options") options: certificateOptions,
@as("RenewalEligibility") renewalEligibility: renewalEligibility,
@as("CertificateAuthorityArn") certificateAuthorityArn: arn,
@as("ExtendedKeyUsages") extendedKeyUsages: extendedKeyUsageList,
@as("KeyUsages") keyUsages: keyUsageList,
@as("RenewalSummary") renewalSummary: renewalSummary,
@as("Type") type_: certificateType,
@as("FailureReason") failureReason: failureReason,
@as("InUseBy") inUseBy: inUseList,
@as("SignatureAlgorithm") signatureAlgorithm: amazonawsString,
@as("KeyAlgorithm") keyAlgorithm: keyAlgorithm,
@as("NotAfter") notAfter: tStamp,
@as("NotBefore") notBefore: tStamp,
@as("RevocationReason") revocationReason: revocationReason,
@as("RevokedAt") revokedAt: tStamp,
@as("Status") status: certificateStatus,
@as("ImportedAt") importedAt: tStamp,
@as("IssuedAt") issuedAt: tStamp,
@as("CreatedAt") createdAt: tStamp,
@as("Issuer") issuer: amazonawsString,
@as("Subject") subject: amazonawsString,
@as("Serial") serial: amazonawsString,
@as("DomainValidationOptions") domainValidationOptions: domainValidationList,
@as("SubjectAlternativeNames") subjectAlternativeNames: domainList,
@as("DomainName") domainName: domainNameString,
@as("CertificateArn") certificateArn: arn
}
type clientType;
@module("@aws-sdk/client-acm") @new external createClient: unit => clientType = "CertificateManagerClient";
module ResendValidationEmail = {
  type t;
  type request = {
@as("ValidationDomain") validationDomain: option<domainNameString>,
@as("Domain") domain: option<domainNameString>,
@as("CertificateArn") certificateArn: option<arn>
}
  
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "ResendValidationEmailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RenewCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: option<arn>
}
  
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "RenewCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: option<arn>
}
  type response = {
@as("CertificateChain") certificateChain: certificateChain,
@as("Certificate") certificate: certificateBody
}
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "GetCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportCertificate = {
  type t;
  type request = {
@as("Passphrase") passphrase: option<passphraseBlob>,
@as("CertificateArn") certificateArn: option<arn>
}
  type response = {
@as("PrivateKey") privateKey: privateKey,
@as("CertificateChain") certificateChain: certificateChain,
@as("Certificate") certificate: certificateBody
}
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "ExportCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: option<arn>
}
  
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "DeleteCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateCertificateOptions = {
  type t;
  type request = {
@as("Options") options: option<certificateOptions>,
@as("CertificateArn") certificateArn: option<arn>
}
  
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "UpdateCertificateOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutAccountConfiguration = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("ExpiryEvents") expiryEvents: expiryEventsConfiguration
}
  
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "PutAccountConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetAccountConfiguration = {
  type t;
  
  type response = {
@as("ExpiryEvents") expiryEvents: expiryEventsConfiguration
}
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<unit>) => t = "GetAccountConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RequestCertificate = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("CertificateAuthorityArn") certificateAuthorityArn: arn,
@as("Options") options: certificateOptions,
@as("DomainValidationOptions") domainValidationOptions: domainValidationOptionList,
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("SubjectAlternativeNames") subjectAlternativeNames: domainList,
@as("ValidationMethod") validationMethod: validationMethod,
@as("DomainName") domainName: option<domainNameString>
}
  type response = {
@as("CertificateArn") certificateArn: arn
}
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "RequestCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromCertificate = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("CertificateArn") certificateArn: option<arn>
}
  
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "RemoveTagsFromCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: option<arn>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCertificates = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItems,
@as("NextToken") nextToken: nextToken,
@as("Includes") includes: filters,
@as("CertificateStatuses") certificateStatuses: certificateStatuses
}
  type response = {
@as("CertificateSummaryList") certificateSummaryList: certificateSummaryList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "ListCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportCertificate = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("CertificateChain") certificateChain: certificateChainBlob,
@as("PrivateKey") privateKey: option<privateKeyBlob>,
@as("Certificate") certificate: option<certificateBodyBlob>,
@as("CertificateArn") certificateArn: arn
}
  type response = {
@as("CertificateArn") certificateArn: arn
}
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "ImportCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTagsToCertificate = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("CertificateArn") certificateArn: option<arn>
}
  
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "AddTagsToCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: option<arn>
}
  type response = {
@as("Certificate") certificate: certificateDetail
}
  @module("@aws-sdk/client-acm") @new external new_: (Js.Promise.t<request>) => t = "DescribeCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
