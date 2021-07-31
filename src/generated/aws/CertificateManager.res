type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type validationMethod = [@as("DNS") #DNS | @as("EMAIL") #EMAIL]
type validationExceptionMessage = string
type tagValue = string
type tagKey = string
type tstamp = Js.Date.t;
type string_ = string
type serviceErrorMessage = string
type revocationReason = [@as("A_A_COMPROMISE") #AACOMPROMISE | @as("PRIVILEGE_WITHDRAWN") #PRIVILEGEWITHDRAWN | @as("REMOVE_FROM_CRL") #REMOVEFROMCRL | @as("CERTIFICATE_HOLD") #CERTIFICATEHOLD | @as("CESSATION_OF_OPERATION") #CESSATIONOFOPERATION | @as("SUPERCEDED") #SUPERCEDED | @as("AFFILIATION_CHANGED") #AFFILIATIONCHANGED | @as("CA_COMPROMISE") #CACOMPROMISE | @as("KEY_COMPROMISE") #KEYCOMPROMISE | @as("UNSPECIFIED") #UNSPECIFIED]
type renewalStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING_VALIDATION") #PENDINGVALIDATION | @as("PENDING_AUTO_RENEWAL") #PENDINGAUTORENEWAL]
type renewalEligibility = [@as("INELIGIBLE") #INELIGIBLE | @as("ELIGIBLE") #ELIGIBLE]
type recordType = [@as("CNAME") #CNAME]
type privateKeyBlob = NodeJs.Buffer.t
type privateKey = string
type positiveInteger = int
type passphraseBlob = NodeJs.Buffer.t
type nextToken = string
type maxItems = int
type keyUsageName = [@as("CUSTOM") #CUSTOM | @as("ANY") #ANY | @as("DECIPHER_ONLY") #DECIPHERONLY | @as("ENCIPHER_ONLY") #ENCIPHERONLY | @as("CRL_SIGNING") #CRLSIGNING | @as("CERTIFICATE_SIGNING") #CERTIFICATESIGNING | @as("KEY_AGREEMENT") #KEYAGREEMENT | @as("DATA_ENCIPHERMENT") #DATAENCIPHERMENT | @as("KEY_ENCIPHERMENT") #KEYENCIPHERMENT | @as("NON_REPUDIATION") #NONREPUDIATION | @as("DIGITAL_SIGNATURE") #DIGITALSIGNATURE]
type keyAlgorithm = [@as("EC_secp521r1") #ECSecp521r1 | @as("EC_secp384r1") #ECSecp384r1 | @as("EC_prime256v1") #ECPrime256v1 | @as("RSA_4096") #RSA4096 | @as("RSA_1024") #RSA1024 | @as("RSA_2048") #RSA2048]
type idempotencyToken = string
type failureReason = [@as("OTHER") #OTHER | @as("SLR_NOT_FOUND") #SLRNOTFOUND | @as("PCA_ACCESS_DENIED") #PCAACCESSDENIED | @as("PCA_INVALID_DURATION") #PCAINVALIDDURATION | @as("PCA_INVALID_ARGS") #PCAINVALIDARGS | @as("PCA_RESOURCE_NOT_FOUND") #PCARESOURCENOTFOUND | @as("PCA_NAME_CONSTRAINTS_VALIDATION") #PCANAMECONSTRAINTSVALIDATION | @as("PCA_REQUEST_FAILED") #PCAREQUESTFAILED | @as("PCA_INVALID_STATE") #PCAINVALIDSTATE | @as("PCA_INVALID_ARN") #PCAINVALIDARN | @as("PCA_LIMIT_EXCEEDED") #PCALIMITEXCEEDED | @as("CAA_ERROR") #CAAERROR | @as("DOMAIN_VALIDATION_DENIED") #DOMAINVALIDATIONDENIED | @as("INVALID_PUBLIC_DOMAIN") #INVALIDPUBLICDOMAIN | @as("DOMAIN_NOT_ALLOWED") #DOMAINNOTALLOWED | @as("ADDITIONAL_VERIFICATION_REQUIRED") #ADDITIONALVERIFICATIONREQUIRED | @as("NO_AVAILABLE_CONTACTS") #NOAVAILABLECONTACTS]
type extendedKeyUsageName = [@as("CUSTOM") #CUSTOM | @as("NONE") #NONE | @as("ANY") #ANY | @as("IPSEC_USER") #IPSECUSER | @as("IPSEC_TUNNEL") #IPSECTUNNEL | @as("IPSEC_END_SYSTEM") #IPSECENDSYSTEM | @as("OCSP_SIGNING") #OCSPSIGNING | @as("TIME_STAMPING") #TIMESTAMPING | @as("EMAIL_PROTECTION") #EMAILPROTECTION | @as("CODE_SIGNING") #CODESIGNING | @as("TLS_WEB_CLIENT_AUTHENTICATION") #TLSWEBCLIENTAUTHENTICATION | @as("TLS_WEB_SERVER_AUTHENTICATION") #TLSWEBSERVERAUTHENTICATION]
type domainStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING_VALIDATION") #PENDINGVALIDATION]
type domainNameString = string
type certificateType = [@as("PRIVATE") #PRIVATE | @as("AMAZON_ISSUED") #AMAZONISSUED | @as("IMPORTED") #IMPORTED]
type certificateTransparencyLoggingPreference = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type certificateStatus = [@as("FAILED") #FAILED | @as("REVOKED") #REVOKED | @as("VALIDATION_TIMED_OUT") #VALIDATIONTIMEDOUT | @as("EXPIRED") #EXPIRED | @as("INACTIVE") #INACTIVE | @as("ISSUED") #ISSUED | @as("PENDING_VALIDATION") #PENDINGVALIDATION]
type certificateChainBlob = NodeJs.Buffer.t
type certificateChain = string
type certificateBodyBlob = NodeJs.Buffer.t
type certificateBody = string
type availabilityErrorMessage = string
type arn = string
type validationEmailList = array<string_>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: tagKey
}
type resourceRecord = {
@as("Value") value: string_,
@as("Type") type_: recordType,
@as("Name") name: string_
}
type keyUsageFilterList = array<keyUsageName>
type keyUsage = {
@as("Name") name: option<keyUsageName>
}
type keyAlgorithmList = array<keyAlgorithm>
type inUseList = array<string_>
type extendedKeyUsageFilterList = array<extendedKeyUsageName>
type extendedKeyUsage = {
@as("OID") oid: option<string_>,
@as("Name") name: option<extendedKeyUsageName>
}
type expiryEventsConfiguration = {
@as("DaysBeforeExpiry") daysBeforeExpiry: option<positiveInteger>
}
type domainValidationOption = {
@as("ValidationDomain") validationDomain: domainNameString,
@as("DomainName") domainName: domainNameString
}
type domainList = array<domainNameString>
type certificateSummary = {
@as("DomainName") domainName: option<domainNameString>,
@as("CertificateArn") certificateArn: option<arn>
}
type certificateStatuses = array<certificateStatus>
type certificateOptions = {
@as("CertificateTransparencyLoggingPreference") certificateTransparencyLoggingPreference: option<certificateTransparencyLoggingPreference>
}
type tagList_ = array<tag>
type keyUsageList = array<keyUsage>
type filters = {
keyTypes: option<keyAlgorithmList>,
keyUsage: option<keyUsageFilterList>,
extendedKeyUsage: option<extendedKeyUsageFilterList>
}
type extendedKeyUsageList = array<extendedKeyUsage>
type domainValidationOptionList = array<domainValidationOption>
type domainValidation = {
@as("ValidationMethod") validationMethod: option<validationMethod>,
@as("ResourceRecord") resourceRecord: option<resourceRecord>,
@as("ValidationStatus") validationStatus: option<domainStatus>,
@as("ValidationDomain") validationDomain: option<domainNameString>,
@as("ValidationEmails") validationEmails: option<validationEmailList>,
@as("DomainName") domainName: domainNameString
}
type certificateSummaryList = array<certificateSummary>
type domainValidationList = array<domainValidation>
type renewalSummary = {
@as("UpdatedAt") updatedAt: tstamp,
@as("RenewalStatusReason") renewalStatusReason: option<failureReason>,
@as("DomainValidationOptions") domainValidationOptions: domainValidationList,
@as("RenewalStatus") renewalStatus: renewalStatus
}
type certificateDetail = {
@as("Options") options: option<certificateOptions>,
@as("RenewalEligibility") renewalEligibility: option<renewalEligibility>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>,
@as("ExtendedKeyUsages") extendedKeyUsages: option<extendedKeyUsageList>,
@as("KeyUsages") keyUsages: option<keyUsageList>,
@as("RenewalSummary") renewalSummary: option<renewalSummary>,
@as("Type") type_: option<certificateType>,
@as("FailureReason") failureReason: option<failureReason>,
@as("InUseBy") inUseBy: option<inUseList>,
@as("SignatureAlgorithm") signatureAlgorithm: option<string_>,
@as("KeyAlgorithm") keyAlgorithm: option<keyAlgorithm>,
@as("NotAfter") notAfter: option<tstamp>,
@as("NotBefore") notBefore: option<tstamp>,
@as("RevocationReason") revocationReason: option<revocationReason>,
@as("RevokedAt") revokedAt: option<tstamp>,
@as("Status") status: option<certificateStatus>,
@as("ImportedAt") importedAt: option<tstamp>,
@as("IssuedAt") issuedAt: option<tstamp>,
@as("CreatedAt") createdAt: option<tstamp>,
@as("Issuer") issuer: option<string_>,
@as("Subject") subject: option<string_>,
@as("Serial") serial: option<string_>,
@as("DomainValidationOptions") domainValidationOptions: option<domainValidationList>,
@as("SubjectAlternativeNames") subjectAlternativeNames: option<domainList>,
@as("DomainName") domainName: option<domainNameString>,
@as("CertificateArn") certificateArn: option<arn>
}
type awsServiceClient;
@module("@aws-sdk/client-acm") @new external createClient: unit => awsServiceClient = "CertificateManagerClient";
module ResendValidationEmail = {
  type t;
  type request = {
@as("ValidationDomain") validationDomain: domainNameString,
@as("Domain") domain: domainNameString,
@as("CertificateArn") certificateArn: arn
}
  
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "ResendValidationEmailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RenewCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: arn
}
  
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "RenewCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: arn
}
  type response = {
@as("CertificateChain") certificateChain: option<certificateChain>,
@as("Certificate") certificate: option<certificateBody>
}
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "GetCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExportCertificate = {
  type t;
  type request = {
@as("Passphrase") passphrase: passphraseBlob,
@as("CertificateArn") certificateArn: arn
}
  type response = {
@as("PrivateKey") privateKey: option<privateKey>,
@as("CertificateChain") certificateChain: option<certificateChain>,
@as("Certificate") certificate: option<certificateBody>
}
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "ExportCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: arn
}
  
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "DeleteCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateCertificateOptions = {
  type t;
  type request = {
@as("Options") options: certificateOptions,
@as("CertificateArn") certificateArn: arn
}
  
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "UpdateCertificateOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutAccountConfiguration = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("ExpiryEvents") expiryEvents: option<expiryEventsConfiguration>
}
  
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "PutAccountConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetAccountConfiguration = {
  type t;
  
  type response = {
@as("ExpiryEvents") expiryEvents: option<expiryEventsConfiguration>
}
  @module("@aws-sdk/client-acm") @new external new_: (unit) => t = "GetAccountConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RequestCertificate = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("CertificateAuthorityArn") certificateAuthorityArn: option<arn>,
@as("Options") options: option<certificateOptions>,
@as("DomainValidationOptions") domainValidationOptions: option<domainValidationOptionList>,
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("SubjectAlternativeNames") subjectAlternativeNames: option<domainList>,
@as("ValidationMethod") validationMethod: option<validationMethod>,
@as("DomainName") domainName: domainNameString
}
  type response = {
@as("CertificateArn") certificateArn: option<arn>
}
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "RequestCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromCertificate = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("CertificateArn") certificateArn: arn
}
  
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "RemoveTagsFromCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: arn
}
  type response = {
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "ListTagsForCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCertificates = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItems>,
@as("NextToken") nextToken: option<nextToken>,
@as("Includes") includes: option<filters>,
@as("CertificateStatuses") certificateStatuses: option<certificateStatuses>
}
  type response = {
@as("CertificateSummaryList") certificateSummaryList: option<certificateSummaryList>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "ListCertificatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportCertificate = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("CertificateChain") certificateChain: option<certificateChainBlob>,
@as("PrivateKey") privateKey: privateKeyBlob,
@as("Certificate") certificate: certificateBodyBlob,
@as("CertificateArn") certificateArn: option<arn>
}
  type response = {
@as("CertificateArn") certificateArn: option<arn>
}
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "ImportCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddTagsToCertificate = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("CertificateArn") certificateArn: arn
}
  
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "AddTagsToCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: arn
}
  type response = {
@as("Certificate") certificate: option<certificateDetail>
}
  @module("@aws-sdk/client-acm") @new external new_: (request) => t = "DescribeCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
