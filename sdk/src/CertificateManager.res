type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-acm") @new
external createClient: unit => awsServiceClient = "CertificateManagerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validationMethod = [@as("DNS") #DNS | @as("EMAIL") #EMAIL]
type validationExceptionMessage = string
type tagValue = string
type tagKey = string
type tstamp = Js.Date.t
type string_ = string
type serviceErrorMessage = string
type revocationReason = [
  | @as("A_A_COMPROMISE") #A_A_COMPROMISE
  | @as("PRIVILEGE_WITHDRAWN") #PRIVILEGE_WITHDRAWN
  | @as("REMOVE_FROM_CRL") #REMOVE_FROM_CRL
  | @as("CERTIFICATE_HOLD") #CERTIFICATE_HOLD
  | @as("CESSATION_OF_OPERATION") #CESSATION_OF_OPERATION
  | @as("SUPERCEDED") #SUPERCEDED
  | @as("AFFILIATION_CHANGED") #AFFILIATION_CHANGED
  | @as("CA_COMPROMISE") #CA_COMPROMISE
  | @as("KEY_COMPROMISE") #KEY_COMPROMISE
  | @as("UNSPECIFIED") #UNSPECIFIED
]
type renewalStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("PENDING_VALIDATION") #PENDING_VALIDATION
  | @as("PENDING_AUTO_RENEWAL") #PENDING_AUTO_RENEWAL
]
type renewalEligibility = [@as("INELIGIBLE") #INELIGIBLE | @as("ELIGIBLE") #ELIGIBLE]
type recordType = [@as("CNAME") #CNAME]
type privateKeyBlob = NodeJs.Buffer.t
type privateKey = string
type positiveInteger = int
type passphraseBlob = NodeJs.Buffer.t
type nextToken = string
type maxItems = int
type keyUsageName = [
  | @as("CUSTOM") #CUSTOM
  | @as("ANY") #ANY
  | @as("DECIPHER_ONLY") #DECIPHER_ONLY
  | @as("ENCIPHER_ONLY") #ENCIPHER_ONLY
  | @as("CRL_SIGNING") #CRL_SIGNING
  | @as("CERTIFICATE_SIGNING") #CERTIFICATE_SIGNING
  | @as("KEY_AGREEMENT") #KEY_AGREEMENT
  | @as("DATA_ENCIPHERMENT") #DATA_ENCIPHERMENT
  | @as("KEY_ENCIPHERMENT") #KEY_ENCIPHERMENT
  | @as("NON_REPUDIATION") #NON_REPUDIATION
  | @as("DIGITAL_SIGNATURE") #DIGITAL_SIGNATURE
]
type keyAlgorithm = [
  | @as("EC_secp521r1") #EC_Secp521r1
  | @as("EC_secp384r1") #EC_Secp384r1
  | @as("EC_prime256v1") #EC_Prime256v1
  | @as("RSA_4096") #RSA_4096
  | @as("RSA_3072") #RSA_3072
  | @as("RSA_2048") #RSA_2048
  | @as("RSA_1024") #RSA_1024
]
type idempotencyToken = string
type failureReason = [
  | @as("OTHER") #OTHER
  | @as("SLR_NOT_FOUND") #SLR_NOT_FOUND
  | @as("PCA_ACCESS_DENIED") #PCA_ACCESS_DENIED
  | @as("PCA_INVALID_DURATION") #PCA_INVALID_DURATION
  | @as("PCA_INVALID_ARGS") #PCA_INVALID_ARGS
  | @as("PCA_RESOURCE_NOT_FOUND") #PCA_RESOURCE_NOT_FOUND
  | @as("PCA_NAME_CONSTRAINTS_VALIDATION") #PCA_NAME_CONSTRAINTS_VALIDATION
  | @as("PCA_REQUEST_FAILED") #PCA_REQUEST_FAILED
  | @as("PCA_INVALID_STATE") #PCA_INVALID_STATE
  | @as("PCA_INVALID_ARN") #PCA_INVALID_ARN
  | @as("PCA_LIMIT_EXCEEDED") #PCA_LIMIT_EXCEEDED
  | @as("CAA_ERROR") #CAA_ERROR
  | @as("DOMAIN_VALIDATION_DENIED") #DOMAIN_VALIDATION_DENIED
  | @as("INVALID_PUBLIC_DOMAIN") #INVALID_PUBLIC_DOMAIN
  | @as("DOMAIN_NOT_ALLOWED") #DOMAIN_NOT_ALLOWED
  | @as("ADDITIONAL_VERIFICATION_REQUIRED") #ADDITIONAL_VERIFICATION_REQUIRED
  | @as("NO_AVAILABLE_CONTACTS") #NO_AVAILABLE_CONTACTS
]
type extendedKeyUsageName = [
  | @as("CUSTOM") #CUSTOM
  | @as("NONE") #NONE
  | @as("ANY") #ANY
  | @as("IPSEC_USER") #IPSEC_USER
  | @as("IPSEC_TUNNEL") #IPSEC_TUNNEL
  | @as("IPSEC_END_SYSTEM") #IPSEC_END_SYSTEM
  | @as("OCSP_SIGNING") #OCSP_SIGNING
  | @as("TIME_STAMPING") #TIME_STAMPING
  | @as("EMAIL_PROTECTION") #EMAIL_PROTECTION
  | @as("CODE_SIGNING") #CODE_SIGNING
  | @as("TLS_WEB_CLIENT_AUTHENTICATION") #TLS_WEB_CLIENT_AUTHENTICATION
  | @as("TLS_WEB_SERVER_AUTHENTICATION") #TLS_WEB_SERVER_AUTHENTICATION
]
type domainStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("PENDING_VALIDATION") #PENDING_VALIDATION
]
type domainNameString = string
type certificateType = [
  | @as("PRIVATE") #PRIVATE
  | @as("AMAZON_ISSUED") #AMAZON_ISSUED
  | @as("IMPORTED") #IMPORTED
]
type certificateTransparencyLoggingPreference = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
]
type certificateStatus = [
  | @as("FAILED") #FAILED
  | @as("REVOKED") #REVOKED
  | @as("VALIDATION_TIMED_OUT") #VALIDATION_TIMED_OUT
  | @as("EXPIRED") #EXPIRED
  | @as("INACTIVE") #INACTIVE
  | @as("ISSUED") #ISSUED
  | @as("PENDING_VALIDATION") #PENDING_VALIDATION
]
type certificateChainBlob = NodeJs.Buffer.t
type certificateChain = string
type certificateBodyBlob = NodeJs.Buffer.t
type certificateBody = string
type availabilityErrorMessage = string
type arn = string
type validationEmailList = array<string_>
@ocaml.doc("<p>A key-value pair that identifies or specifies metadata about an ACM resource.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: tagKey,
}
@ocaml.doc("<p>Contains a DNS record value that you can use to validate ownership or control
      of a domain. This is used by the <a>DescribeCertificate</a> action. </p>")
type resourceRecord = {
  @ocaml.doc("<p>The value of the CNAME record to add to your DNS database. This is supplied by
      ACM.</p>")
  @as("Value")
  value: string_,
  @ocaml.doc("<p>The type of DNS record. Currently this can be <code>CNAME</code>.</p>") @as("Type")
  type_: recordType,
  @ocaml.doc("<p>The name of the DNS record to create in your domain. This is supplied by ACM.</p>")
  @as("Name")
  name: string_,
}
type keyUsageFilterList = array<keyUsageName>
@ocaml.doc("<p>The Key Usage X.509 v3 extension defines the purpose of the public key contained in the
      certificate.</p>")
type keyUsage = {
  @ocaml.doc("<p>A string value that contains a Key Usage extension name.</p>") @as("Name")
  name: option<keyUsageName>,
}
type keyAlgorithmList = array<keyAlgorithm>
type inUseList = array<string_>
type extendedKeyUsageFilterList = array<extendedKeyUsageName>
@ocaml.doc("<p>The Extended Key Usage X.509 v3 extension defines one or more purposes for which the
      public key can be used. This is in addition to or in place of the basic purposes specified by
      the Key Usage extension. </p>")
type extendedKeyUsage = {
  @ocaml.doc("<p>An object identifier (OID) for the extension value. OIDs are strings of numbers separated
      by periods. The following OIDs are defined in RFC 3280 and RFC 5280. </p>

         <ul>
            <li>
               <p>
                  <code>1.3.6.1.5.5.7.3.1 (TLS_WEB_SERVER_AUTHENTICATION)</code>
               </p>
            </li>
            <li>
               <p>
                  <code>1.3.6.1.5.5.7.3.2 (TLS_WEB_CLIENT_AUTHENTICATION)</code>
               </p>
            </li>
            <li>
               <p>
                  <code>1.3.6.1.5.5.7.3.3 (CODE_SIGNING)</code>
               </p>
            </li>
            <li>
               <p>
                  <code>1.3.6.1.5.5.7.3.4 (EMAIL_PROTECTION)</code>
               </p>
            </li>
            <li>
               <p>
                  <code>1.3.6.1.5.5.7.3.8 (TIME_STAMPING)</code>
               </p>
            </li>
            <li>
               <p>
                  <code>1.3.6.1.5.5.7.3.9 (OCSP_SIGNING)</code>
               </p>
            </li>
            <li>
               <p>
                  <code>1.3.6.1.5.5.7.3.5 (IPSEC_END_SYSTEM)</code>
               </p>
            </li>
            <li>
               <p>
                  <code>1.3.6.1.5.5.7.3.6 (IPSEC_TUNNEL)</code>
               </p>
            </li>
            <li>
               <p>
                  <code>1.3.6.1.5.5.7.3.7 (IPSEC_USER)</code>
               </p>
            </li>
         </ul>")
  @as("OID")
  oid: option<string_>,
  @ocaml.doc("<p>The name of an Extended Key Usage value.</p>") @as("Name")
  name: option<extendedKeyUsageName>,
}
@ocaml.doc("<p>Object containing
      expiration events options associated with an Amazon Web Services account.</p>")
type expiryEventsConfiguration = {
  @ocaml.doc("<p>Specifies the number of days prior to certificate expiration when ACM starts generating
        <code>EventBridge</code> events. ACM sends one event per day per certificate until the
      certificate expires. By default, accounts receive events starting 45 days before certificate
      expiration.</p>")
  @as("DaysBeforeExpiry")
  daysBeforeExpiry: option<positiveInteger>,
}
@ocaml.doc("<p>Contains information about the domain names that you want ACM to use to send you emails
      that enable you to validate domain ownership.</p>")
type domainValidationOption = {
  @ocaml.doc("<p>The domain name that you want ACM to use to send you validation emails. This domain name
      is the suffix of the email addresses that you want ACM to use. This must be the same as the
        <code>DomainName</code> value or a superdomain of the <code>DomainName</code> value. For
      example, if you request a certificate for <code>testing.example.com</code>, you can specify
        <code>example.com</code> for this value. In that case, ACM sends domain validation emails
      to the following five addresses:</p>
         <ul>
            <li>
               <p>admin@example.com</p>
            </li>
            <li>
               <p>administrator@example.com</p>
            </li>
            <li>
               <p>hostmaster@example.com</p>
            </li>
            <li>
               <p>postmaster@example.com</p>
            </li>
            <li>
               <p>webmaster@example.com</p>
            </li>
         </ul>")
  @as("ValidationDomain")
  validationDomain: domainNameString,
  @ocaml.doc("<p>A fully qualified domain name (FQDN) in the certificate request.</p>")
  @as("DomainName")
  domainName: domainNameString,
}
type domainList = array<domainNameString>
@ocaml.doc("<p>This structure is returned in the response object of <a>ListCertificates</a>
      action. </p>")
type certificateSummary = {
  @ocaml.doc("<p>Fully qualified domain name (FQDN), such as www.example.com or example.com, for the
      certificate.</p>")
  @as("DomainName")
  domainName: option<domainNameString>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the certificate. This is of the form:</p>

         <p>
            <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
         </p>

         <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>.</p>")
  @as("CertificateArn")
  certificateArn: option<arn>,
}
type certificateStatuses = array<certificateStatus>
@ocaml.doc("<p>Structure that contains options for your certificate. Currently, you can use this only to
      specify whether to opt in to or out of certificate transparency logging. Some browsers require
      that public certificates issued for your domain be recorded in a log. Certificates that are
      not logged typically generate a browser error. Transparency makes it possible for you to
      detect SSL/TLS certificates that have been mistakenly or maliciously issued for your domain.
      For general information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency\">Certificate Transparency
        Logging</a>. </p>")
type certificateOptions = {
  @ocaml.doc("<p>You can opt out of certificate transparency logging by specifying the
        <code>DISABLED</code> option. Opt in by specifying <code>ENABLED</code>. </p>")
  @as("CertificateTransparencyLoggingPreference")
  certificateTransparencyLoggingPreference: option<certificateTransparencyLoggingPreference>,
}
type tagList_ = array<tag>
type keyUsageList = array<keyUsage>
@ocaml.doc("<p>This structure can be used in the <a>ListCertificates</a> action to filter the
      output of the certificate list. </p>")
type filters = {
  @ocaml.doc("<p>Specify one or more algorithms that can be used to generate key pairs.</p>
         <p>Default filtering returns only <code>RSA_1024</code> and <code>RSA_2048</code>
      certificates that have at least one domain. To return other certificate types, provide the
      desired type signatures in a comma-separated list. For example, <code>\"keyTypes\":
        [\"RSA_2048,RSA_4096\"]</code> returns both <code>RSA_2048</code> and <code>RSA_4096</code>
      certificates.</p>")
  keyTypes: option<keyAlgorithmList>,
  @ocaml.doc("<p>Specify one or more <a>KeyUsage</a> extension values.</p>")
  keyUsage: option<keyUsageFilterList>,
  @ocaml.doc("<p>Specify one or more <a>ExtendedKeyUsage</a> extension values.</p>")
  extendedKeyUsage: option<extendedKeyUsageFilterList>,
}
type extendedKeyUsageList = array<extendedKeyUsage>
type domainValidationOptionList = array<domainValidationOption>
@ocaml.doc(
  "<p>Contains information about the validation of each domain name in the certificate.</p>"
)
type domainValidation = {
  @ocaml.doc("<p>Specifies the domain validation method.</p>") @as("ValidationMethod")
  validationMethod: option<validationMethod>,
  @ocaml.doc("<p>Contains the CNAME record that you add to your DNS database for domain validation. For
      more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html\">Use DNS to Validate Domain Ownership</a>.</p>
         <p>Note: The CNAME information that you need does not include the name of your domain. If you
      include  your domain name in the DNS database CNAME record, validation fails.  For example, if
      the name is \"_a79865eb4cd1a6ab990a45779b4e0b96.yourdomain.com\", only
      \"_a79865eb4cd1a6ab990a45779b4e0b96\" must be used.</p>")
  @as("ResourceRecord")
  resourceRecord: option<resourceRecord>,
  @ocaml.doc("<p>The validation status of the domain name. This can be one of the following values:</p>

         <ul>
            <li>
               <p>
                  <code>PENDING_VALIDATION</code>
               </p>
            </li>
            <li>
               <p>
                  <code></code>SUCCESS</p>
            </li>
            <li>
               <p>
                  <code></code>FAILED</p>
            </li>
         </ul>")
  @as("ValidationStatus")
  validationStatus: option<domainStatus>,
  @ocaml.doc("<p>The domain name that ACM used to send domain validation emails.</p>")
  @as("ValidationDomain")
  validationDomain: option<domainNameString>,
  @ocaml.doc("<p>A list of email addresses that ACM used to send domain validation emails.</p>")
  @as("ValidationEmails")
  validationEmails: option<validationEmailList>,
  @ocaml.doc("<p>A fully qualified domain name (FQDN) in the certificate. For example,
        <code>www.example.com</code> or <code>example.com</code>. </p>")
  @as("DomainName")
  domainName: domainNameString,
}
type certificateSummaryList = array<certificateSummary>
type domainValidationList = array<domainValidation>
@ocaml.doc("<p>Contains information about the status of ACM's <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html\">managed renewal</a> for the certificate. This
      structure exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>")
type renewalSummary = {
  @ocaml.doc("<p>The time at which the renewal summary was last updated.</p>") @as("UpdatedAt")
  updatedAt: tstamp,
  @ocaml.doc("<p>The reason that a renewal request was unsuccessful.</p>")
  @as("RenewalStatusReason")
  renewalStatusReason: option<failureReason>,
  @ocaml.doc("<p>Contains information about the validation of each domain name in the certificate, as it
      pertains to ACM's <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html\">managed
        renewal</a>. This is different from the initial validation that occurs as a result of
      the <a>RequestCertificate</a> request. This field exists only when the certificate
      type is <code>AMAZON_ISSUED</code>.</p>")
  @as("DomainValidationOptions")
  domainValidationOptions: domainValidationList,
  @ocaml.doc(
    "<p>The status of ACM's <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html\">managed renewal</a> of the certificate.</p>"
  )
  @as("RenewalStatus")
  renewalStatus: renewalStatus,
}
@ocaml.doc("<p>Contains metadata about an ACM certificate. This structure is returned in the response
      to a <a>DescribeCertificate</a> request. </p>")
type certificateDetail = {
  @ocaml.doc("<p>Value that specifies whether to add the certificate to a transparency log. Certificate
      transparency makes it possible to detect SSL certificates that have been mistakenly or
      maliciously issued. A browser might respond to certificate that has not been logged by showing
      an error message. The logs are cryptographically secure. </p>")
  @as("Options")
  options: option<certificateOptions>,
  @ocaml.doc("<p>Specifies whether the certificate is eligible for renewal. At this time, only exported
      private certificates can be renewed with the <a>RenewCertificate</a>
      command.</p>")
  @as("RenewalEligibility")
  renewalEligibility: option<renewalEligibility>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the ACM PCA private certificate authority (CA) that issued
      the certificate. This has the following format: </p>
         <p>
            <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code>
         </p>")
  @as("CertificateAuthorityArn")
  certificateAuthorityArn: option<arn>,
  @ocaml.doc("<p>Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a
      purpose for which the certificate public key can be used and consists of a name and an object
      identifier (OID). </p>")
  @as("ExtendedKeyUsages")
  extendedKeyUsages: option<extendedKeyUsageList>,
  @ocaml.doc("<p>A list of Key Usage X.509 v3 extension objects. Each object is a string value that
      identifies the purpose of the public key contained in the certificate. Possible extension
      values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.</p>")
  @as("KeyUsages")
  keyUsages: option<keyUsageList>,
  @ocaml.doc("<p>Contains information about the status of ACM's <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html\">managed renewal</a> for the certificate. This field
      exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>")
  @as("RenewalSummary")
  renewalSummary: option<renewalSummary>,
  @ocaml.doc("<p>The source of the certificate. For certificates provided by ACM, this value is
        <code>AMAZON_ISSUED</code>. For certificates that you imported with <a>ImportCertificate</a>, this value is <code>IMPORTED</code>. ACM does not provide
        <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html\">managed renewal</a> for
      imported certificates. For more information about the differences between certificates that
      you import and those that ACM provides, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html\">Importing Certificates</a> in the
        <i>Amazon Web Services Certificate Manager User Guide</i>. </p>")
  @as("Type")
  type_: option<certificateType>,
  @ocaml.doc("<p>The reason the certificate request failed. This value exists only when the certificate
      status is <code>FAILED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed\">Certificate Request
        Failed</a> in the <i>Amazon Web Services Certificate Manager User Guide</i>. </p>")
  @as("FailureReason")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>A list of ARNs for the Amazon Web Services resources that are using the certificate. A certificate can
      be used by multiple Amazon Web Services resources. </p>")
  @as("InUseBy")
  inUseBy: option<inUseList>,
  @ocaml.doc("<p>The algorithm that was used to sign the certificate.</p>")
  @as("SignatureAlgorithm")
  signatureAlgorithm: option<string_>,
  @ocaml.doc("<p>The algorithm that was used to generate the public-private key pair.</p>")
  @as("KeyAlgorithm")
  keyAlgorithm: option<keyAlgorithm>,
  @ocaml.doc("<p>The time after which the certificate is not valid.</p>") @as("NotAfter")
  notAfter: option<tstamp>,
  @ocaml.doc("<p>The time before which the certificate is not valid.</p>") @as("NotBefore")
  notBefore: option<tstamp>,
  @ocaml.doc("<p>The reason the certificate was revoked. This value exists only when the certificate status
      is <code>REVOKED</code>. </p>")
  @as("RevocationReason")
  revocationReason: option<revocationReason>,
  @ocaml.doc("<p>The time at which the certificate was revoked. This value exists only when the certificate
      status is <code>REVOKED</code>. </p>")
  @as("RevokedAt")
  revokedAt: option<tstamp>,
  @ocaml.doc("<p>The status of the certificate.</p>") @as("Status")
  status: option<certificateStatus>,
  @ocaml.doc("<p>The date and time at which the certificate was imported. This value exists only when the
      certificate type is <code>IMPORTED</code>. </p>")
  @as("ImportedAt")
  importedAt: option<tstamp>,
  @ocaml.doc("<p>The time at which the certificate was issued. This value exists only when the certificate
      type is <code>AMAZON_ISSUED</code>. </p>")
  @as("IssuedAt")
  issuedAt: option<tstamp>,
  @ocaml.doc("<p>The time at which the certificate was requested.</p>") @as("CreatedAt")
  createdAt: option<tstamp>,
  @ocaml.doc("<p>The name of the certificate authority that issued and signed the certificate.</p>")
  @as("Issuer")
  issuer: option<string_>,
  @ocaml.doc("<p>The name of the entity that is associated with the public key contained in the
      certificate.</p>")
  @as("Subject")
  subject: option<string_>,
  @ocaml.doc("<p>The serial number of the certificate.</p>") @as("Serial") serial: option<string_>,
  @ocaml.doc("<p>Contains information about the initial validation of each domain name that occurs as a
      result of the <a>RequestCertificate</a> request. This field exists only when the
      certificate type is <code>AMAZON_ISSUED</code>. </p>")
  @as("DomainValidationOptions")
  domainValidationOptions: option<domainValidationList>,
  @ocaml.doc("<p>One or more domain names (subject alternative names) included in the certificate. This
      list contains the domain names that are bound to the public key that is contained in the
      certificate. The subject alternative names include the canonical domain name (CN) of the
      certificate and additional domain names that can be used to connect to the website. </p>")
  @as("SubjectAlternativeNames")
  subjectAlternativeNames: option<domainList>,
  @ocaml.doc("<p>The fully qualified domain name for the certificate, such as www.example.com or
      example.com.</p>")
  @as("DomainName")
  domainName: option<domainNameString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the certificate. For more information about ARNs, see
        <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in
      the <i>Amazon Web Services General Reference</i>.</p>")
  @as("CertificateArn")
  certificateArn: option<arn>,
}
@ocaml.doc("<fullname>Amazon Web Services Certificate Manager</fullname>
         <p>You can use Amazon Web Services Certificate Manager (ACM) to manage SSL/TLS certificates for your Amazon Web Services-based websites
      and applications. For more information about using ACM, see the <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/\">Amazon Web Services Certificate Manager User Guide</a>.</p>")
module ResendValidationEmail = {
  type t
  type request = {
    @ocaml.doc("<p>The base validation domain that will act as the suffix of the email addresses that are
      used to send the emails. This must be the same as the <code>Domain</code> value or a
      superdomain of the <code>Domain</code> value. For example, if you requested a certificate for
        <code>site.subdomain.example.com</code> and specify a <b>ValidationDomain</b> of <code>subdomain.example.com</code>, ACM sends email to the
      domain registrant, technical contact, and administrative contact in WHOIS and the following
      five addresses:</p>
         <ul>
            <li>
               <p>admin@subdomain.example.com</p>
            </li>
            <li>
               <p>administrator@subdomain.example.com</p>
            </li>
            <li>
               <p>hostmaster@subdomain.example.com</p>
            </li>
            <li>
               <p>postmaster@subdomain.example.com</p>
            </li>
            <li>
               <p>webmaster@subdomain.example.com</p>
            </li>
         </ul>")
    @as("ValidationDomain")
    validationDomain: domainNameString,
    @ocaml.doc("<p>The fully qualified domain name (FQDN) of the certificate that needs to be
      validated.</p>")
    @as("Domain")
    domain: domainNameString,
    @ocaml.doc("<p>String that contains the ARN of the requested certificate. The certificate ARN is
      generated and returned by the <a>RequestCertificate</a> action as soon as the
      request is made. By default, using this parameter causes email to be sent to all top-level
      domains you specified in the certificate request. The ARN must be of the form: </p>

         <p>
            <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
         </p>")
    @as("CertificateArn")
    certificateArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-acm") @new external new: request => t = "ResendValidationEmailCommand"
  let make = (~validationDomain, ~domain, ~certificateArn, ()) =>
    new({validationDomain, domain, certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RenewCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>String that contains the ARN of the ACM certificate to be renewed. This must be of the
      form:</p>
         <p>
            <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
         </p>
         <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>.</p>")
    @as("CertificateArn")
    certificateArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-acm") @new external new: request => t = "RenewCertificateCommand"
  let make = (~certificateArn, ()) => new({certificateArn: certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>String that contains a certificate ARN in the following format:</p>
         <p>
            <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
         </p>
         <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>.</p>")
    @as("CertificateArn")
    certificateArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Certificates forming the requested certificate's chain of trust. The chain consists of the
      certificate of the issuing CA and the intermediate certificates of any other subordinate CAs.
    </p>")
    @as("CertificateChain")
    certificateChain: option<certificateChain>,
    @ocaml.doc("<p>The ACM-issued certificate corresponding to the ARN specified as input.</p>")
    @as("Certificate")
    certificate: option<certificateBody>,
  }
  @module("@aws-sdk/client-acm") @new external new: request => t = "GetCertificateCommand"
  let make = (~certificateArn, ()) => new({certificateArn: certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ExportCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>Passphrase to associate with the encrypted exported private key. If you want to later
      decrypt the private key, you must have the passphrase. You can use the following OpenSSL
      command to decrypt a private key: </p>
         <p>
            <code>openssl rsa -in encrypted_key.pem -out decrypted_key.pem</code>
         </p>")
    @as("Passphrase")
    passphrase: passphraseBlob,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) of the issued certificate. This must be of the form:</p>
         <p>
            <code>arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012</code>
         </p>")
    @as("CertificateArn")
    certificateArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The encrypted private key associated with the public key in the certificate. The key is
      output in PKCS #8 format and is base64 PEM-encoded. </p>")
    @as("PrivateKey")
    privateKey: option<privateKey>,
    @ocaml.doc("<p>The base64 PEM-encoded certificate chain. This does not include the certificate that you
      are exporting.</p>")
    @as("CertificateChain")
    certificateChain: option<certificateChain>,
    @ocaml.doc("<p>The base64 PEM-encoded certificate.</p>") @as("Certificate")
    certificate: option<certificateBody>,
  }
  @module("@aws-sdk/client-acm") @new external new: request => t = "ExportCertificateCommand"
  let make = (~passphrase, ~certificateArn, ()) => new({passphrase, certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>String that contains the ARN of the ACM certificate to be deleted. This must be of the
      form:</p>
         <p>
            <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
         </p>
         <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>.</p>")
    @as("CertificateArn")
    certificateArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-acm") @new external new: request => t = "DeleteCertificateCommand"
  let make = (~certificateArn, ()) => new({certificateArn: certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateCertificateOptions = {
  type t
  type request = {
    @ocaml.doc("<p>Use to update the options for your certificate. Currently, you can specify whether to add
      your certificate to a transparency log. Certificate transparency makes it possible to detect
      SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have
      not been logged typically produce an error message in a browser. </p>")
    @as("Options")
    options: certificateOptions,
    @ocaml.doc("<p>ARN of the requested certificate to update. This must be of the form:</p>
         <p>
            <code>arn:aws:acm:us-east-1:<i>account</i>:certificate/<i>12345678-1234-1234-1234-123456789012</i>
            </code>
         </p>")
    @as("CertificateArn")
    certificateArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-acm") @new external new: request => t = "UpdateCertificateOptionsCommand"
  let make = (~options, ~certificateArn, ()) => new({options, certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutAccountConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Customer-chosen string
      used to distinguish between calls to <code>PutAccountConfiguration</code>. Idempotency tokens
      time out after one hour. If you call <code>PutAccountConfiguration</code> multiple times with
      the same unexpired idempotency token, ACM treats it as the same request and returns the
      original result. If you change the idempotency token for each call, ACM treats each call as
      a new request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>Specifies expiration
      events associated with an account.</p>")
    @as("ExpiryEvents")
    expiryEvents: option<expiryEventsConfiguration>,
  }
  type response = {.}
  @module("@aws-sdk/client-acm") @new external new: request => t = "PutAccountConfigurationCommand"
  let make = (~idempotencyToken, ~expiryEvents=?, ()) => new({idempotencyToken, expiryEvents})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetAccountConfiguration = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>Expiration events
      configuration options associated with the Amazon Web Services account.</p>")
    @as("ExpiryEvents")
    expiryEvents: option<expiryEventsConfiguration>,
  }
  @module("@aws-sdk/client-acm") @new external new: request => t = "GetAccountConfigurationCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RequestCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>One or more resource tags to associate with the certificate.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the private certificate authority (CA) that will be used
      to issue the certificate. If you do not provide an ARN and you are trying to request a private
      certificate, ACM will attempt to issue a public certificate. For more information about
      private CAs, see the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaWelcome.html\">Amazon Web Services Certificate Manager Private Certificate Authority (PCA)</a> user guide. The ARN must have the following form: </p>

         <p>
            <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code>
         </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: option<arn>,
    @ocaml.doc("<p>Currently, you can use this parameter to specify whether to add the certificate to a
      certificate transparency log. Certificate transparency makes it possible to detect SSL/TLS
      certificates that have been mistakenly or maliciously issued. Certificates that have not been
      logged typically produce an error message in a browser. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency\">Opting Out of Certificate Transparency Logging</a>.</p>")
    @as("Options")
    options: option<certificateOptions>,
    @ocaml.doc("<p>The domain name that you want ACM to use to send you emails so that you can validate
      domain ownership.</p>")
    @as("DomainValidationOptions")
    domainValidationOptions: option<domainValidationOptionList>,
    @ocaml.doc("<p>Customer chosen string that can be used to distinguish between calls to
        <code>RequestCertificate</code>. Idempotency tokens time out after one hour. Therefore, if
      you call <code>RequestCertificate</code> multiple times with the same idempotency token within
      one hour, ACM recognizes that you are requesting only one certificate and will issue only
      one. If you change the idempotency token for each call, ACM recognizes that you are
      requesting multiple certificates.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<idempotencyToken>,
    @ocaml.doc("<p>Additional FQDNs to be included in the Subject Alternative Name extension of the ACM
      certificate. For example, add the name www.example.net to a certificate for which the
        <code>DomainName</code> field is www.example.com if users can reach your site by using
      either name. The maximum number of domain names that you can add to an ACM certificate is
      100. However, the initial quota is 10 domain names. If you need more than 10 names, you must
      request a quota increase. For more information, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html\">Quotas</a>.</p>

         <p> The maximum length of a SAN DNS name is 253 octets. The name is made up of multiple
      labels separated by periods. No label can be longer than 63 octets. Consider the following
      examples: </p>

         <ul>
            <li>
               <p>
                  <code>(63 octets).(63 octets).(63 octets).(61 octets)</code> is legal because the
          total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63 octets.</p>
            </li>
            <li>
               <p>
                  <code>(64 octets).(63 octets).(63 octets).(61 octets)</code> is not legal because the
          total length exceeds 253 octets (64+1+63+1+63+1+61) and the first label exceeds 63
          octets.</p>
            </li>
            <li>
               <p>
                  <code>(63 octets).(63 octets).(63 octets).(62 octets)</code> is not legal because the
          total length of the DNS name (63+1+63+1+63+1+62) exceeds 253 octets.</p>
            </li>
         </ul>")
    @as("SubjectAlternativeNames")
    subjectAlternativeNames: option<domainList>,
    @ocaml.doc("<p>The method you want to use if you are requesting a public certificate to validate that you
      own or control domain. You can <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html\">validate with DNS</a> or <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html\">validate with
        email</a>. We recommend that you use DNS validation. </p>")
    @as("ValidationMethod")
    validationMethod: option<validationMethod>,
    @ocaml.doc("<p> Fully qualified domain name (FQDN), such as www.example.com, that you want to secure with
      an ACM certificate. Use an asterisk (*) to create a wildcard certificate that protects
      several sites in the same domain. For example, *.example.com protects www.example.com,
      site.example.com, and images.example.com. </p>

         <p> The first domain name you enter cannot exceed 64 octets, including periods. Each
      subsequent Subject Alternative Name (SAN), however, can be up to 253 octets in length. </p>")
    @as("DomainName")
    domainName: domainNameString,
  }
  type response = {
    @ocaml.doc("<p>String that contains the ARN of the issued certificate. This must be of the form:</p>
         <p>
            <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
         </p>")
    @as("CertificateArn")
    certificateArn: option<arn>,
  }
  @module("@aws-sdk/client-acm") @new external new: request => t = "RequestCertificateCommand"
  let make = (
    ~domainName,
    ~tags=?,
    ~certificateAuthorityArn=?,
    ~options=?,
    ~domainValidationOptions=?,
    ~idempotencyToken=?,
    ~subjectAlternativeNames=?,
    ~validationMethod=?,
    (),
  ) =>
    new({
      tags,
      certificateAuthorityArn,
      options,
      domainValidationOptions,
      idempotencyToken,
      subjectAlternativeNames,
      validationMethod,
      domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RemoveTagsFromCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The key-value pair that defines the tag to remove.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>String that contains the ARN of the ACM Certificate with one or more tags that you want
      to remove. This must be of the form:</p>

         <p>
            <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
         </p>

         <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>.</p>")
    @as("CertificateArn")
    certificateArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-acm") @new
  external new: request => t = "RemoveTagsFromCertificateCommand"
  let make = (~tags, ~certificateArn, ()) => new({tags, certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>String that contains the ARN of the ACM certificate for which you want to list the tags.
      This must have the following form:</p>
         <p>
            <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
         </p>
         <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>.</p>")
    @as("CertificateArn")
    certificateArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The key-value pairs that define the applied tags.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-acm") @new external new: request => t = "ListTagsForCertificateCommand"
  let make = (~certificateArn, ()) => new({certificateArn: certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter when paginating results to specify the maximum number of items to
      return in the response. If additional items exist beyond the number you specify, the
        <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code>
      value in a subsequent request to retrieve additional items.</p>")
    @as("MaxItems")
    maxItems: option<maxItems>,
    @ocaml.doc("<p>Use this parameter only when paginating results and only in a subsequent request after you
      receive a response with truncated results. Set it to the value of <code>NextToken</code> from
      the response you just received.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Filter the certificate list. For more information, see the <a>Filters</a>
      structure.</p>")
    @as("Includes")
    includes: option<filters>,
    @ocaml.doc("<p>Filter the certificate list by status value.</p>") @as("CertificateStatuses")
    certificateStatuses: option<certificateStatuses>,
  }
  type response = {
    @ocaml.doc("<p>A list of ACM certificates.</p>") @as("CertificateSummaryList")
    certificateSummaryList: option<certificateSummaryList>,
    @ocaml.doc("<p>When the list is truncated, this value is present and contains the value to use for the
        <code>NextToken</code> parameter in a subsequent pagination request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-acm") @new external new: request => t = "ListCertificatesCommand"
  let make = (~maxItems=?, ~nextToken=?, ~includes=?, ~certificateStatuses=?, ()) =>
    new({maxItems, nextToken, includes, certificateStatuses})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ImportCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>One or more resource tags to associate with the imported certificate. </p>
         <p>Note: You cannot apply tags when reimporting a certificate.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The PEM encoded certificate chain.</p>") @as("CertificateChain")
    certificateChain: option<certificateChainBlob>,
    @ocaml.doc("<p>The private key that matches the public key in the certificate.</p>")
    @as("PrivateKey")
    privateKey: privateKeyBlob,
    @ocaml.doc("<p>The certificate to import.</p>") @as("Certificate")
    certificate: certificateBodyBlob,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Name
        (ARN)</a> of an imported certificate to replace. To import a new certificate, omit this
      field. </p>")
    @as("CertificateArn")
    certificateArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Name
        (ARN)</a> of the imported certificate.</p>")
    @as("CertificateArn")
    certificateArn: option<arn>,
  }
  @module("@aws-sdk/client-acm") @new external new: request => t = "ImportCertificateCommand"
  let make = (~privateKey, ~certificate, ~tags=?, ~certificateChain=?, ~certificateArn=?, ()) =>
    new({tags, certificateChain, privateKey, certificate, certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddTagsToCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The key-value pair that defines the tag. The tag value is optional.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>String that contains the ARN of the ACM certificate to which the tag is to be applied.
      This must be of the form:</p>

         <p>
            <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
         </p>

         <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>.</p>")
    @as("CertificateArn")
    certificateArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-acm") @new external new: request => t = "AddTagsToCertificateCommand"
  let make = (~tags, ~certificateArn, ()) => new({tags, certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the ACM certificate. The ARN must have the following
      form:</p>
         <p>
            <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
         </p>
         <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>.</p>")
    @as("CertificateArn")
    certificateArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Metadata about an ACM certificate.</p>") @as("Certificate")
    certificate: option<certificateDetail>,
  }
  @module("@aws-sdk/client-acm") @new external new: request => t = "DescribeCertificateCommand"
  let make = (~certificateArn, ()) => new({certificateArn: certificateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
