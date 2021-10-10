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
@ocaml.doc("<p>Validity specifies the period of time during which a certificate is valid. Validity
			can be expressed as an explicit date and time when the validity of a certificate starts
			or expires, or as a span of time after issuance, stated in days, months, or years. For
			more information, see <a href=\"https://tools.ietf.org/html/rfc5280#section-4.1.2.5\">Validity</a> in RFC 5280.</p>
		       <p>ACM Private CA API consumes the <code>Validity</code> data type differently in two distinct
			parameters of the <code>IssueCertificate</code> action. The required parameter
				<code>IssueCertificate</code>:<code>Validity</code> specifies the end of a
			certificate's validity period. The optional parameter
				<code>IssueCertificate</code>:<code>ValidityNotBefore</code> specifies a customized
			starting time for the validity period.</p>")
type validity = {
  @ocaml.doc("<p>Determines how <i>ACM Private CA</i> interprets the <code>Value</code>
			parameter, an integer. Supported validity types include those listed below. Type
			definitions with values include a sample input value and the resulting output. </p>
		       <p>
            <code>END_DATE</code>: The specific date and time when the certificate will expire,
			expressed using UTCTime (YYMMDDHHMMSS) or GeneralizedTime (YYYYMMDDHHMMSS) format. When
			UTCTime is used, if the year field (YY) is greater than or equal to 50, the year is
			interpreted as 19YY. If the year field is less than 50, the year is interpreted as
			20YY.</p>
		       <ul>
            <li>
				           <p>Sample input value: 491231235959 (UTCTime format)</p>
			         </li>
            <li>
				           <p>Output expiration date/time: 12/31/2049 23:59:59</p>
			         </li>
         </ul>
		       <p>
            <code>ABSOLUTE</code>: The specific date and time when the validity of a certificate
			will start or expire, expressed in seconds since the Unix Epoch. </p>
		       <ul>
            <li>
				           <p>Sample input value: 2524608000</p>
			         </li>
            <li>
				           <p>Output expiration date/time: 01/01/2050 00:00:00</p>
			         </li>
         </ul>
		       <p>
            <code>DAYS</code>, <code>MONTHS</code>, <code>YEARS</code>: The relative time from the
			moment of issuance until the certificate will expire, expressed in days, months, or
			years. </p>
		       <p>Example if <code>DAYS</code>, issued on 10/12/2020 at 12:34:54 UTC:</p>
		       <ul>
            <li>
				           <p>Sample input value: 90</p>
			         </li>
            <li>
				           <p>Output expiration date: 01/10/2020 12:34:54 UTC</p>
			         </li>
         </ul>
		       <p>The minimum validity duration for a certificate using relative time
			(<code>DAYS</code>) is one day. The minimum validity for a certificate using absolute
			time (<code>ABSOLUTE</code> or <code>END_DATE</code>) is one second.</p>")
  @as("Type")
  type_: validityPeriodType,
  @ocaml.doc(
    "<p>A long integer interpreted according to the value of <code>Type</code>, below.</p>"
  )
  @as("Value")
  value: positiveLong,
}
@ocaml.doc("<p>Tags are labels that you can use to identify and organize your private CAs. Each tag
			consists of a key and an optional value. You can associate up to 50 tags with a private
			CA. To add one or more tags to a private CA, call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html\">TagCertificateAuthority</a>
			action. To remove a tag, call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UntagCertificateAuthority.html\">UntagCertificateAuthority</a> action. </p>")
type tag = {
  @ocaml.doc("<p>Value of the tag.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>Key (name) of the tag.</p>") @as("Key") key: tagKey,
}
@ocaml.doc("<p>Defines a <code>PolicyInformation</code> qualifier. ACM Private CA supports the <a href=\"https://tools.ietf.org/html/rfc5280#section-4.2.1.4\">certification practice
				statement (CPS) qualifier</a> defined in RFC 5280. </p>")
type qualifier = {
  @ocaml.doc("<p>Contains a pointer to a certification practice statement (CPS) published by the
			CA.</p>")
  @as("CpsUri")
  cpsUri: string256,
}
@ocaml.doc("<p>Defines a custom ASN.1 X.400 <code>GeneralName</code> using an object identifier (OID)
			and value. The OID must satisfy the regular expression shown below. For more
			information, see NIST's definition of <a href=\"https://csrc.nist.gov/glossary/term/Object_Identifier\">Object Identifier
				(OID)</a>.</p>")
type otherName = {
  @ocaml.doc("<p>Specifies an OID value.</p>") @as("Value") value: string256,
  @ocaml.doc("<p>Specifies an OID. </p>") @as("TypeId") typeId: customObjectIdentifier,
}
@ocaml.doc("<p>Defines one or more purposes for which the key contained in the certificate can be
			used. Default value for each option is false.</p>")
type keyUsage = {
  @ocaml.doc("<p>Key can be used only to decipher data.</p>") @as("DecipherOnly")
  decipherOnly: option<boolean_>,
  @ocaml.doc("<p>Key can be used only to encipher data.</p>") @as("EncipherOnly")
  encipherOnly: option<boolean_>,
  @ocaml.doc("<p>Key can be used to sign CRLs.</p>") @as("CRLSign") crlsign: option<boolean_>,
  @ocaml.doc("<p>Key can be used to sign certificates.</p>") @as("KeyCertSign")
  keyCertSign: option<boolean_>,
  @ocaml.doc("<p>Key can be used in a key-agreement protocol.</p>") @as("KeyAgreement")
  keyAgreement: option<boolean_>,
  @ocaml.doc("<p>Key can be used to decipher data.</p>") @as("DataEncipherment")
  dataEncipherment: option<boolean_>,
  @ocaml.doc("<p>Key can be used to encipher data.</p>") @as("KeyEncipherment")
  keyEncipherment: option<boolean_>,
  @ocaml.doc("<p>Key can be used for non-repudiation.</p>") @as("NonRepudiation")
  nonRepudiation: option<boolean_>,
  @ocaml.doc("<p> Key can be used for digital signing.</p>") @as("DigitalSignature")
  digitalSignature: option<boolean_>,
}
@ocaml.doc("<p>Specifies additional purposes for which the certified public key may be used other
			than basic purposes indicated in the <code>KeyUsage</code> extension.</p>")
type extendedKeyUsage = {
  @ocaml.doc("<p>Specifies a custom <code>ExtendedKeyUsage</code> with an object identifier
			(OID).</p>")
  @as("ExtendedKeyUsageObjectIdentifier")
  extendedKeyUsageObjectIdentifier: option<customObjectIdentifier>,
  @ocaml.doc(
    "<p>Specifies a standard <code>ExtendedKeyUsage</code> as defined as in <a href=\"https://tools.ietf.org/html/rfc5280#section-4.2.1.12\">RFC 5280</a>.</p>"
  )
  @as("ExtendedKeyUsageType")
  extendedKeyUsageType: option<extendedKeyUsageType>,
}
@ocaml.doc("<p>Describes an Electronic Data Interchange (EDI) entity as described in as defined in
				<a href=\"https://tools.ietf.org/html/rfc5280\">Subject Alternative Name</a> in
			RFC 5280.</p>")
type ediPartyName = {
  @ocaml.doc("<p>Specifies the name assigner.</p>") @as("NameAssigner")
  nameAssigner: option<string256>,
  @ocaml.doc("<p>Specifies the party name.</p>") @as("PartyName") partyName: string256,
}
@ocaml.doc("<p>Contains configuration information for a certificate revocation list (CRL). Your
			private certificate authority (CA) creates base CRLs. Delta CRLs are not supported. You
			can enable CRLs for your new or an existing private CA by setting the <b>Enabled</b> parameter to <code>true</code>. Your private CA
			writes CRLs to an S3 bucket that you specify in the <b>S3BucketName</b> parameter. You can hide the name of your bucket by
			specifying a value for the <b>CustomCname</b> parameter. Your
			private CA copies the CNAME or the S3 bucket name to the <b>CRL
				Distribution Points</b> extension of each certificate it issues. Your S3
			bucket policy must give write permission to ACM Private CA. </p>
		       <p>ACM Private CA assets that are stored in Amazon S3 can be protected with encryption. 
  For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#crl-encryption\">Encrypting Your
			CRLs</a>.</p>
		       <p>Your private CA uses the value in the <b>ExpirationInDays</b> parameter to calculate the <b>nextUpdate</b> field in the CRL. The CRL is refreshed at 1/2 the age of next
			update or when a certificate is revoked. When a certificate is revoked, it is recorded
			in the next CRL that is generated and in the next audit report. Only time valid
			certificates are listed in the CRL. Expired certificates are not included. </p>
		       <p>CRLs contain the following fields:</p>
		       <ul>
            <li>
				           <p>
                  <b>Version</b>: The current version number defined
					in RFC 5280 is V2. The integer value is 0x1. </p>
			         </li>
            <li>
				           <p>
                  <b>Signature Algorithm</b>: The name of the
					algorithm used to sign the CRL.</p>
			         </li>
            <li>
				           <p>
                  <b>Issuer</b>: The X.500 distinguished name of your
					private CA that issued the CRL.</p>
			         </li>
            <li>
				           <p>
                  <b>Last Update</b>: The issue date and time of this
					CRL.</p>
			         </li>
            <li>
				           <p>
                  <b>Next Update</b>: The day and time by which the
					next CRL will be issued.</p>
			         </li>
            <li>
				           <p>
                  <b>Revoked Certificates</b>: List of revoked
					certificates. Each list item contains the following information.</p>
				           <ul>
                  <li>
						               <p>
                        <b>Serial Number</b>: The serial number, in
							hexadecimal format, of the revoked certificate.</p>
					             </li>
                  <li>
						               <p>
                        <b>Revocation Date</b>: Date and time the
							certificate was revoked.</p>
					             </li>
                  <li>
						               <p>
                        <b>CRL Entry Extensions</b>: Optional
							extensions for the CRL entry.</p>
						               <ul>
                        <li>
								                   <p>
                              <b>X509v3 CRL Reason Code</b>:
									Reason the certificate was revoked.</p>
							                 </li>
                     </ul>
					             </li>
               </ul>
			         </li>
            <li>
				           <p>
                  <b>CRL Extensions</b>: Optional extensions for the
					CRL.</p>
				           <ul>
                  <li>
						               <p>
                        <b>X509v3 Authority Key Identifier</b>:
							Identifies the public key associated with the private key used to sign
							the certificate.</p>
					             </li>
                  <li>
						               <p>
                        <b>X509v3 CRL Number:</b>: Decimal sequence
							number for the CRL.</p>
					             </li>
               </ul>
			         </li>
            <li>
				           <p>
                  <b>Signature Algorithm</b>: Algorithm used by your
					private CA to sign the CRL.</p>
			         </li>
            <li>
				           <p>
                  <b>Signature Value</b>: Signature computed over the
					CRL.</p>
			         </li>
         </ul>
		       <p>Certificate revocation lists created by ACM Private CA are DER-encoded. You can use the
			following OpenSSL command to list a CRL.</p>
		       <p>
            <code>openssl crl -inform DER -text -in <i>crl_path</i>
			-noout</code>
         </p>")
type crlConfiguration = {
  @ocaml.doc("<p>Determines whether the CRL will be publicly readable or privately held in the CRL
			Amazon S3 bucket. If you choose PUBLIC_READ, the CRL will be accessible over the public
			internet. If you choose BUCKET_OWNER_FULL_CONTROL, only the owner of the CRL S3 bucket
			can access the CRL, and your PKI clients may need an alternative method of access. </p>
		       <p>If no value is specified, the default is <code>PUBLIC_READ</code>.</p>
		       <p>
            <i>Note:</i> This default can cause CA creation to fail in some
			circumstances. If you have have enabled the Block Public Access (BPA) feature in your S3
			account, then you must specify the value of this parameter as
				<code>BUCKET_OWNER_FULL_CONTROL</code>, and not doing so results in an error. If you
			have disabled BPA in S3, then you can specify either
				<code>BUCKET_OWNER_FULL_CONTROL</code> or <code>PUBLIC_READ</code> as the
			value.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#s3-bpa\">Blocking public access to the S3
				bucket</a>.</p>")
  @as("S3ObjectAcl")
  s3ObjectAcl: option<s3ObjectAcl>,
  @ocaml.doc("<p>Name of the S3 bucket that contains the CRL. If you do not provide a value for the
				<b>CustomCname</b> argument, the name of your S3 bucket
			is placed into the <b>CRL Distribution Points</b> extension of
			the issued certificate. You can change the name of your bucket by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html\">UpdateCertificateAuthority</a> action. You must specify a 
			<a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#s3-policies\">bucket policy</a> that
			allows ACM Private CA to write the CRL to your bucket.</p>")
  @as("S3BucketName")
  s3BucketName: option<string3To255>,
  @ocaml.doc("<p>Name inserted into the certificate <b>CRL Distribution
				Points</b> extension that enables the use of an alias for the CRL
			distribution point. Use this value if you don't want the name of your S3 bucket to be
			public.</p>")
  @as("CustomCname")
  customCname: option<string253>,
  @ocaml.doc("<p>Validity period of the CRL in days.</p>") @as("ExpirationInDays")
  expirationInDays: option<integer1To5000>,
  @ocaml.doc("<p>Boolean value that specifies whether certificate revocation lists (CRLs) are enabled.
			You can use this value to enable certificate revocation for a new CA when you call the
				<a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action or for an existing CA when you call the
				<a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html\">UpdateCertificateAuthority</a> action. </p>")
  @as("Enabled")
  enabled: boolean_,
}
type actionList = array<actionType>
@ocaml.doc("<p>Describes the type and format of extension access. Only one of
				<code>CustomObjectIdentifier</code> or <code>AccessMethodType</code> may be
			provided. Providing both results in <code>InvalidArgsException</code>.</p>")
type accessMethod = {
  @ocaml.doc("<p>Specifies the <code>AccessMethod</code>.</p>") @as("AccessMethodType")
  accessMethodType: option<accessMethodType>,
  @ocaml.doc("<p>An object identifier (OID) specifying the <code>AccessMethod</code>. The OID must
			satisfy the regular expression shown below. For more information, see NIST's definition
			of <a href=\"https://csrc.nist.gov/glossary/term/Object_Identifier\">Object Identifier
				(OID)</a>.</p>")
  @as("CustomObjectIdentifier")
  customObjectIdentifier: option<customObjectIdentifier>,
}
@ocaml.doc("<p>Contains information about the certificate subject. The <code>Subject</code> field in
			the certificate identifies the entity that owns or controls the public key in the
			certificate. The entity can be a user, computer, device, or service. The <code>Subject
			</code>must contain an X.500 distinguished name (DN). A DN is a sequence of relative
			distinguished names (RDNs). The RDNs are separated by commas in the certificate.</p>")
type asn1Subject = {
  @ocaml.doc("<p>Typically a qualifier appended to the name of an individual. Examples include Jr. for
			junior, Sr. for senior, and III for third.</p>")
  @as("GenerationQualifier")
  generationQualifier: option<string3>,
  @ocaml.doc("<p>Typically a shortened version of a longer <b>GivenName</b>.
			For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth,
			Liz, or Eliza.</p>")
  @as("Pseudonym")
  pseudonym: option<string128>,
  @ocaml.doc("<p>Concatenation that typically contains the first letter of the <b>GivenName</b>, the first letter of the middle name if one exists, and the
			first letter of the <b>Surname</b>.</p>")
  @as("Initials")
  initials: option<string5>,
  @ocaml.doc("<p>First name.</p>") @as("GivenName") givenName: option<string16>,
  @ocaml.doc("<p>Family name. In the US and the UK, for example, the surname of an individual is
			ordered last. In Asian cultures the surname is typically ordered first.</p>")
  @as("Surname")
  surname: option<string40>,
  @ocaml.doc("<p>A title such as Mr. or Ms., which is pre-pended to the name to refer formally to the
			certificate subject.</p>")
  @as("Title")
  title: option<string64>,
  @ocaml.doc("<p>The locality (such as a city or town) in which the certificate subject is
			located.</p>")
  @as("Locality")
  locality: option<string128>,
  @ocaml.doc("<p>The certificate serial number.</p>") @as("SerialNumber")
  serialNumber: option<asn1PrintableString64>,
  @ocaml.doc("<p>For CA and end-entity certificates in a private PKI, the common name (CN) can be any
			string within the length limit. </p>
		       <p>Note: In publicly trusted certificates, the common name must be a fully qualified
			domain name (FQDN) associated with the certificate subject.</p>")
  @as("CommonName")
  commonName: option<string64>,
  @ocaml.doc("<p>State in which the subject of the certificate is located.</p>") @as("State")
  state: option<string128>,
  @ocaml.doc("<p>Disambiguating information for the certificate subject.</p>")
  @as("DistinguishedNameQualifier")
  distinguishedNameQualifier: option<asn1PrintableString64>,
  @ocaml.doc("<p>A subdivision or unit of the organization (such as sales or finance) with which the
			certificate subject is affiliated.</p>")
  @as("OrganizationalUnit")
  organizationalUnit: option<string64>,
  @ocaml.doc("<p>Legal name of the organization with which the certificate subject is affiliated.
		</p>")
  @as("Organization")
  organization: option<string64>,
  @ocaml.doc("<p>Two-digit code that specifies the country in which the certificate subject
			located.</p>")
  @as("Country")
  country: option<countryCodeString>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Certificate revocation information used by the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> and <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html\">UpdateCertificateAuthority</a> actions. Your private certificate authority (CA)
			can create and maintain a certificate revocation list (CRL). A CRL contains information
			about certificates revoked by your CA. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html\">RevokeCertificate</a>.</p>")
type revocationConfiguration = {
  @ocaml.doc("<p>Configuration of the certificate revocation list (CRL), if any, maintained by your
			private CA.</p>")
  @as("CrlConfiguration")
  crlConfiguration: option<crlConfiguration>,
}
@ocaml.doc("<p>Modifies the <code>CertPolicyId</code> of a <code>PolicyInformation</code> object with
			a qualifier. ACM Private CA supports the certification practice statement (CPS) qualifier.</p>")
type policyQualifierInfo = {
  @ocaml.doc("<p>Defines the qualifier type. ACM Private CA supports the use of a URI for a CPS qualifier in
			this field.</p>")
  @as("Qualifier")
  qualifier: qualifier,
  @ocaml.doc("<p>Identifies the qualifier modifying a <code>CertPolicyId</code>.</p>")
  @as("PolicyQualifierId")
  policyQualifierId: policyQualifierId,
}
@ocaml.doc("<p>Permissions designate which private CA actions can be performed by an AWS service or
			entity. In order for ACM to automatically renew private certificates, you must give
			the ACM service principal all available permissions (<code>IssueCertificate</code>,
				<code>GetCertificate</code>, and <code>ListPermissions</code>). Permissions can be
			assigned with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html\">CreatePermission</a> action,
			removed with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html\">DeletePermission</a> action, and
			listed with the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListPermissions.html\">ListPermissions</a> action.</p>")
type permission = {
  @ocaml.doc("<p>The name of the policy that is associated with the permission.</p>") @as("Policy")
  policy: option<awspolicy>,
  @ocaml.doc("<p>The private CA actions that can be performed by the designated AWS service.</p>")
  @as("Actions")
  actions: option<actionList>,
  @ocaml.doc("<p>The ID of the account that assigned the permission.</p>") @as("SourceAccount")
  sourceAccount: option<accountId>,
  @ocaml.doc("<p>The AWS service or entity that holds the permission. At this time, the only valid
			principal is <code>acm.amazonaws.com</code>.</p>")
  @as("Principal")
  principal: option<principal>,
  @ocaml.doc("<p>The time at which the permission was created.</p>") @as("CreatedAt")
  createdAt: option<tstamp>,
  @ocaml.doc("<p>The Amazon Resource Number (ARN) of the private CA from which the permission was
			issued.</p>")
  @as("CertificateAuthorityArn")
  certificateAuthorityArn: option<arn>,
}
@ocaml.doc("<p>Describes an ASN.1 X.400 <code>GeneralName</code> as defined in <a href=\"https://tools.ietf.org/html/rfc5280\">RFC 5280</a>. Only one of the
			following naming options should be provided. Providing more than one option results in
			an <code>InvalidArgsException</code> error.</p>")
type generalName = {
  @ocaml.doc("<p> Represents <code>GeneralName</code> as an object identifier (OID).</p>")
  @as("RegisteredId")
  registeredId: option<customObjectIdentifier>,
  @ocaml.doc("<p>Represents <code>GeneralName</code> as an IPv4 or IPv6 address.</p>")
  @as("IpAddress")
  ipAddress: option<string39>,
  @ocaml.doc("<p>Represents <code>GeneralName</code> as a URI.</p>")
  @as("UniformResourceIdentifier")
  uniformResourceIdentifier: option<string253>,
  @ocaml.doc("<p>Represents <code>GeneralName</code> as an <code>EdiPartyName</code> object.</p>")
  @as("EdiPartyName")
  ediPartyName: option<ediPartyName>,
  @as("DirectoryName") directoryName: option<asn1Subject>,
  @ocaml.doc("<p>Represents <code>GeneralName</code> as a DNS name.</p>") @as("DnsName")
  dnsName: option<string253>,
  @ocaml.doc(
    "<p>Represents <code>GeneralName</code> as an <a href=\"https://tools.ietf.org/html/rfc822\">RFC 822</a> email address.</p>"
  )
  @as("Rfc822Name")
  rfc822Name: option<string256>,
  @ocaml.doc("<p>Represents <code>GeneralName</code> using an <code>OtherName</code> object.</p>")
  @as("OtherName")
  otherName: option<otherName>,
}
type extendedKeyUsageList = array<extendedKeyUsage>
type policyQualifierInfoList = array<policyQualifierInfo>
type permissionList = array<permission>
type generalNameList = array<generalName>
@ocaml.doc("<p>Provides access information used by the <code>authorityInfoAccess</code> and
				<code>subjectInfoAccess</code> extensions described in <a href=\"https://tools.ietf.org/html/rfc5280\">RFC 5280</a>.</p>")
type accessDescription = {
  @ocaml.doc("<p>The location of <code>AccessDescription</code> information.</p>")
  @as("AccessLocation")
  accessLocation: generalName,
  @ocaml.doc("<p>The type and format of <code>AccessDescription</code> information.</p>")
  @as("AccessMethod")
  accessMethod: accessMethod,
}
@ocaml.doc("<p>Defines the X.509 <code>CertificatePolicies</code> extension.</p>")
type policyInformation = {
  @ocaml.doc("<p>Modifies the given <code>CertPolicyId</code> with a qualifier. ACM Private CA supports the
			certification practice statement (CPS) qualifier.</p>")
  @as("PolicyQualifiers")
  policyQualifiers: option<policyQualifierInfoList>,
  @ocaml.doc("<p>Specifies the object identifier (OID) of the certificate policy under which the
			certificate was issued. For more information, see NIST's definition of <a href=\"https://csrc.nist.gov/glossary/term/Object_Identifier\">Object Identifier
				(OID)</a>.</p>")
  @as("CertPolicyId")
  certPolicyId: customObjectIdentifier,
}
type accessDescriptionList = array<accessDescription>
@ocaml.doc("<p>Describes the certificate extensions to be added to the certificate signing request
			(CSR).</p>")
type csrExtensions = {
  @ocaml.doc("<p>For CA certificates, provides a path to additional information pertaining to the CA,
			such as revocation and policy. For more information, see <a href=\"https://tools.ietf.org/html/rfc5280#section-4.2.2.2\">Subject Information
				Access</a> in RFC 5280.</p>")
  @as("SubjectInformationAccess")
  subjectInformationAccess: option<accessDescriptionList>,
  @ocaml.doc("<p>Indicates the purpose of the certificate and of the key contained in the
			certificate.</p>")
  @as("KeyUsage")
  keyUsage: option<keyUsage>,
}
type certificatePolicyList = array<policyInformation>
@ocaml.doc("<p>Contains X.509 extension information for a certificate.</p>")
type extensions = {
  @ocaml.doc("<p>The subject alternative name extension allows identities to be bound to the subject of
			the certificate. These identities may be included in addition to or in place of the
			identity in the subject field of the certificate.</p>")
  @as("SubjectAlternativeNames")
  subjectAlternativeNames: option<generalNameList>,
  @as("KeyUsage") keyUsage: option<keyUsage>,
  @ocaml.doc("<p>Specifies additional purposes for which the certified public key may be used other
			than basic purposes indicated in the <code>KeyUsage</code> extension.</p>")
  @as("ExtendedKeyUsage")
  extendedKeyUsage: option<extendedKeyUsageList>,
  @ocaml.doc("<p>Contains a sequence of one or more policy information terms, each of which consists of
			an object identifier (OID) and optional qualifiers. For more information, see NIST's
			definition of <a href=\"https://csrc.nist.gov/glossary/term/Object_Identifier\">Object
				Identifier (OID)</a>.</p>
		       <p>In an end-entity certificate, these terms indicate the policy under which the
			certificate was issued and the purposes for which it may be used. In a CA certificate,
			these terms limit the set of policies for certification paths that include this
			certificate.</p>")
  @as("CertificatePolicies")
  certificatePolicies: option<certificatePolicyList>,
}
@ocaml.doc("<p>Contains configuration information for your private certificate authority (CA). This
			includes information about the class of public key algorithm and the key pair that your
			private CA creates when it issues a certificate. It also includes the signature
			algorithm that it uses when issuing certificates, and its X.500 distinguished name. You
			must specify this information when you call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. </p>")
type certificateAuthorityConfiguration = {
  @ocaml.doc("<p>Specifies information to be added to the extension section of the certificate signing
			request (CSR).</p>")
  @as("CsrExtensions")
  csrExtensions: option<csrExtensions>,
  @ocaml.doc("<p>Structure that contains X.500 distinguished name information for your private
			CA.</p>")
  @as("Subject")
  subject: asn1Subject,
  @ocaml.doc("<p>Name of the algorithm your private CA uses to sign certificate requests.</p>
		       <p>This parameter should not be confused with the <code>SigningAlgorithm</code> parameter
			used to sign certificates when they are issued.</p>")
  @as("SigningAlgorithm")
  signingAlgorithm: signingAlgorithm,
  @ocaml.doc("<p>Type of the public key algorithm and size, in bits, of the key pair that your CA
			creates when it issues a certificate. When you create a subordinate CA, you must use a
			key algorithm supported by the parent CA.</p>")
  @as("KeyAlgorithm")
  keyAlgorithm: keyAlgorithm,
}
@ocaml.doc("<p>Contains information about your private certificate authority (CA). Your private CA
			can issue and revoke X.509 digital certificates. Digital certificates verify that the
			entity named in the certificate <b>Subject</b> field owns or
			controls the public key contained in the <b>Subject Public Key
				Info</b> field. Call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action to create your private CA. You must then
			call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificateAuthorityCertificate.html\">GetCertificateAuthorityCertificate</a> action to retrieve a private CA
			certificate signing request (CSR). Sign the CSR with your ACM Private CA-hosted or on-premises
			root or subordinate CA certificate. Call the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html\">ImportCertificateAuthorityCertificate</a> action to import the signed
			certificate into AWS Certificate Manager (ACM). </p>")
type certificateAuthority = {
  @ocaml.doc("<p>Defines a cryptographic key management compliance standard used for handling CA keys. </p>
		       <p>Default: FIPS_140_2_LEVEL_3_OR_HIGHER</p>
		       <p>Note: AWS Region ap-northeast-3 supports only FIPS_140_2_LEVEL_2_OR_HIGHER. You must
			explicitly specify this parameter and value when creating a CA in that Region.
			Specifying a different value (or no value) results in an
				<code>InvalidArgsException</code> with the message \"A certificate authority cannot
			be created in this region with the specified security standard.\"</p>")
  @as("KeyStorageSecurityStandard")
  keyStorageSecurityStandard: option<keyStorageSecurityStandard>,
  @ocaml.doc("<p>The period during which a deleted CA can be restored. For more information, see the
				<code>PermanentDeletionTimeInDays</code> parameter of the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthorityRequest.html\">DeleteCertificateAuthorityRequest</a> action. </p>")
  @as("RestorableUntil")
  restorableUntil: option<tstamp>,
  @ocaml.doc("<p>Information about the certificate revocation list (CRL) created and maintained by your
			private CA. </p>")
  @as("RevocationConfiguration")
  revocationConfiguration: option<revocationConfiguration>,
  @ocaml.doc("<p>Your private CA configuration.</p>") @as("CertificateAuthorityConfiguration")
  certificateAuthorityConfiguration: option<certificateAuthorityConfiguration>,
  @ocaml.doc("<p>Reason the request to create your private CA failed.</p>") @as("FailureReason")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>Date and time after which your private CA certificate is not valid.</p>")
  @as("NotAfter")
  notAfter: option<tstamp>,
  @ocaml.doc("<p>Date and time before which your private CA certificate is not valid.</p>")
  @as("NotBefore")
  notBefore: option<tstamp>,
  @ocaml.doc("<p>Status of your private CA.</p>") @as("Status")
  status: option<certificateAuthorityStatus>,
  @ocaml.doc("<p>Serial number of your private CA.</p>") @as("Serial") serial: option<string_>,
  @ocaml.doc("<p>Type of your private CA.</p>") @as("Type") type_: option<certificateAuthorityType>,
  @ocaml.doc("<p>Date and time at which your private CA was last updated.</p>")
  @as("LastStateChangeAt")
  lastStateChangeAt: option<tstamp>,
  @ocaml.doc("<p>Date and time at which your private CA was created.</p>") @as("CreatedAt")
  createdAt: option<tstamp>,
  @ocaml.doc("<p>The AWS account ID that owns the certificate authority.</p>") @as("OwnerAccount")
  ownerAccount: option<accountId>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) for your private certificate authority (CA). The format is
					<code>
               <i>12345678-1234-1234-1234-123456789012</i>
            </code>.</p>")
  @as("Arn")
  arn: option<arn>,
}
@ocaml.doc("<p>Contains X.509 certificate information to be placed in an issued certificate. An
				<code>APIPassthrough</code> or <code>APICSRPassthrough</code> template variant must
			be selected, or else this parameter is ignored. </p>
		       <p>If conflicting or duplicate certificate information is supplied from other sources,
			ACM Private CA applies <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html#template-order-of-operations\">order of
				operation rules</a> to determine what information is used.</p>")
type apiPassthrough = {
  @as("Subject") subject: option<asn1Subject>,
  @ocaml.doc("<p>Specifies X.509 extension information for a certificate.</p>") @as("Extensions")
  extensions: option<extensions>,
}
type certificateAuthorities = array<certificateAuthority>
@ocaml.doc("<p>This is the <i>ACM Private CA API Reference</i>. It provides descriptions,
			syntax, and usage examples for each of the actions and data types involved in creating
			and managing private certificate authorities (CA) for your organization.</p>
		       <p>The documentation for each action shows the Query API request parameters and the XML
			response. Alternatively, you can use one of the AWS SDKs to access an API that's
			tailored to the programming language or platform that you're using. For more
			information, see <a href=\"https://aws.amazon.com/tools/#SDKs\">AWS
			SDKs</a>.</p>
		       <note>
			         <p>Each ACM Private CA API action has a quota that determines the number of times the action
				can be called per second. For more information, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaLimits.html#PcaLimits-api\">API Rate Quotas in ACM Private CA</a>
				in the ACM Private CA user guide.</p>
		       </note>")
module RevokeCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies why you revoked the certificate.</p>") @as("RevocationReason")
    revocationReason: revocationReason,
    @ocaml.doc("<p>Serial number of the certificate to be revoked. This must be in hexadecimal format.
			You can retrieve the serial number by calling <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificate.html\">GetCertificate</a> with the Amazon
			Resource Name (ARN) of the certificate you want and the ARN of your private CA. The
				<b>GetCertificate</b> action retrieves the certificate in
			the PEM format. You can use the following OpenSSL command to list the certificate in
			text format and copy the hexadecimal serial number. </p>
		       <p>
            <code>openssl x509 -in <i>file_path</i> -text -noout</code>
         </p>
		       <p>You can also copy the serial number from the console or use the <a href=\"https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html\">DescribeCertificate</a> action in the <i>AWS Certificate Manager API
				Reference</i>. </p>")
    @as("CertificateSerial")
    certificateSerial: string128,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be
			revoked. This must be of the form:</p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>
		       </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new external new: request => t = "RevokeCertificateCommand"
  let make = (~revocationReason, ~certificateSerial, ~certificateAuthorityArn, ()) =>
    new({
      revocationReason: revocationReason,
      certificateSerial: certificateSerial,
      certificateAuthorityArn: certificateAuthorityArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RestoreCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that was returned when you called the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. This must be of the form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>
		       </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "RestoreCertificateAuthorityCommand"
  let make = (~certificateAuthorityArn, ()) =>
    new({certificateAuthorityArn: certificateAuthorityArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The path and file name of a JSON-formatted IAM policy to attach to the specified
			private CA resource. If this policy does not contain all required statements or if it
			includes any statement that is not allowed, the <code>PutPolicy</code> action returns an
				<code>InvalidPolicyException</code>. For information about IAM policy and
			statement structure, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json\">Overview of JSON Policies</a>.</p>")
    @as("Policy")
    policy: awspolicy,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the private CA to associate with the policy. The
			ARN of the CA can be found by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action.</p>
		       <p></p>")
    @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new external new: request => t = "PutPolicyCommand"
  let make = (~policy, ~resourceArn, ()) => new({policy: policy, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ImportCertificateAuthorityCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>A PEM-encoded file that contains all of your certificates, other than the certificate
			you're importing, chaining up to your root CA. Your ACM Private CA-hosted or on-premises root
			certificate is the last in the chain, and each certificate in the chain signs the one
			preceding. </p>
		       <p>This parameter must be supplied when you import a subordinate CA. When you import a
			root CA, there is no chain.</p>")
    @as("CertificateChain")
    certificateChain: option<certificateChainBlob>,
    @ocaml.doc("<p>The PEM-encoded certificate for a private CA. This may be a self-signed certificate in
			the case of a root CA, or it may be signed by another CA that you control.</p>")
    @as("Certificate")
    certificate: certificateBodyBlob,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p>
		       <p>
            <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>
         </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "ImportCertificateAuthorityCertificateCommand"
  let make = (~certificate, ~certificateAuthorityArn, ~certificateChain=?, ()) =>
    new({
      certificateChain: certificateChain,
      certificate: certificate,
      certificateAuthorityArn: certificateAuthorityArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the private CA that will have its policy
			retrieved. You can find the CA's ARN by calling the ListCertificateAuthorities action.
			
		</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The policy attached to the private CA as a JSON document.</p>") @as("Policy")
    policy: option<awspolicy>,
  }
  @module("@aws-sdk/client-acm-pca") @new external new: request => t = "GetPolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCertificateAuthorityCsr = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that was returned when you called the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. This must be of the form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>
		       </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The base64 PEM-encoded certificate signing request (CSR) for your private CA
			certificate.</p>")
    @as("Csr")
    csr: option<csrBody>,
  }
  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "GetCertificateAuthorityCsrCommand"
  let make = (~certificateAuthorityArn, ()) =>
    new({certificateAuthorityArn: certificateAuthorityArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCertificateAuthorityCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of your private CA. This is of the form:</p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>.
		</p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Base64-encoded certificate chain that includes any intermediate certificates and
			chains up to root certificate that you used to sign your private CA certificate. The
			chain does not include your private CA certificate. If this is a root CA, the value will
			be null.</p>")
    @as("CertificateChain")
    certificateChain: option<certificateChain>,
    @ocaml.doc("<p>Base64-encoded certificate authority (CA) certificate.</p>") @as("Certificate")
    certificate: option<certificateBody>,
  }
  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "GetCertificateAuthorityCertificateCommand"
  let make = (~certificateAuthorityArn, ()) =>
    new({certificateAuthorityArn: certificateAuthorityArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the issued certificate. The ARN contains the certificate serial number and
			must be in the following form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i>
            </code>
		       </p>")
    @as("CertificateArn")
    certificateArn: arn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>.
		</p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The base64 PEM-encoded certificate chain that chains up to the root CA certificate
			that you used to sign your private CA certificate. </p>")
    @as("CertificateChain")
    certificateChain: option<certificateChain>,
    @ocaml.doc("<p>The base64 PEM-encoded certificate specified by the <code>CertificateArn</code>
			parameter.</p>")
    @as("Certificate")
    certificate: option<certificateBody>,
  }
  @module("@aws-sdk/client-acm-pca") @new external new: request => t = "GetCertificateCommand"
  let make = (~certificateArn, ~certificateAuthorityArn, ()) =>
    new({certificateArn: certificateArn, certificateAuthorityArn: certificateAuthorityArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCertificateAuthorityAuditReport = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The report ID returned by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html\">CreateCertificateAuthorityAuditReport</a> action.</p>"
    )
    @as("AuditReportId")
    auditReportId: auditReportId,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the private CA. This must be of the form:</p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>.
		</p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The date and time at which the report was created.</p>") @as("CreatedAt")
    createdAt: option<tstamp>,
    @ocaml.doc("<p>S3 <b>key</b> that uniquely identifies the report file in
			your S3 bucket.</p>")
    @as("S3Key")
    s3Key: option<s3Key>,
    @ocaml.doc("<p>Name of the S3 bucket that contains the report.</p>") @as("S3BucketName")
    s3BucketName: option<s3BucketName>,
    @ocaml.doc(
      "<p>Specifies whether report creation is in progress, has succeeded, or has failed.</p>"
    )
    @as("AuditReportStatus")
    auditReportStatus: option<auditReportStatus>,
  }
  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "DescribeCertificateAuthorityAuditReportCommand"
  let make = (~auditReportId, ~certificateAuthorityArn, ()) =>
    new({auditReportId: auditReportId, certificateAuthorityArn: certificateAuthorityArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the private CA that will have its policy deleted.
			You can find the CA's ARN by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. The ARN value must have the form
				<code>arn:aws:acm-pca:region:account:certificate-authority/01234567-89ab-cdef-0123-0123456789ab</code>.
		</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new external new: request => t = "DeletePolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePermission = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS account that calls this action.</p>") @as("SourceAccount")
    sourceAccount: option<accountId>,
    @ocaml.doc("<p>The AWS service or identity that will have its CA permissions revoked. At this time,
			the only valid service principal is <code>acm.amazonaws.com</code>
         </p>")
    @as("Principal")
    principal: principal,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the private CA that issued the permissions. You
			can find the CA's ARN by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. This must have the following form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>.
		</p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new external new: request => t = "DeletePermissionCommand"
  let make = (~principal, ~certificateAuthorityArn, ~sourceAccount=?, ()) =>
    new({
      sourceAccount: sourceAccount,
      principal: principal,
      certificateAuthorityArn: certificateAuthorityArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("<p>The number of days to make a CA restorable after it has been deleted. This can be
			anywhere from 7 to 30 days, with 30 being the default.</p>")
    @as("PermanentDeletionTimeInDays")
    permanentDeletionTimeInDays: option<permanentDeletionTimeInDays>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must have the following form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>.
		</p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "DeleteCertificateAuthorityCommand"
  let make = (~certificateAuthorityArn, ~permanentDeletionTimeInDays=?, ()) =>
    new({
      permanentDeletionTimeInDays: permanentDeletionTimeInDays,
      certificateAuthorityArn: certificateAuthorityArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateCertificateAuthorityAuditReport = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The format in which to create the report. This can be either <b>JSON</b> or <b>CSV</b>.</p>"
    )
    @as("AuditReportResponseFormat")
    auditReportResponseFormat: auditReportResponseFormat,
    @ocaml.doc("<p>The name of the S3 bucket that will contain the audit report.</p>")
    @as("S3BucketName")
    s3BucketName: s3BucketName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CA to be audited. This is of the form:</p>
		       <p>
            <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>.</p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The <b>key</b> that uniquely identifies the report file in
			your S3 bucket.</p>")
    @as("S3Key")
    s3Key: option<s3Key>,
    @ocaml.doc("<p>An alphanumeric string that contains a report identifier.</p>")
    @as("AuditReportId")
    auditReportId: option<auditReportId>,
  }
  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "CreateCertificateAuthorityAuditReportCommand"
  let make = (~auditReportResponseFormat, ~s3BucketName, ~certificateAuthorityArn, ()) =>
    new({
      auditReportResponseFormat: auditReportResponseFormat,
      s3BucketName: s3BucketName,
      certificateAuthorityArn: certificateAuthorityArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePermission = {
  type t
  type request = {
    @ocaml.doc("<p>The actions that the specified AWS service principal can use. These include
				<code>IssueCertificate</code>, <code>GetCertificate</code>, and
				<code>ListPermissions</code>.</p>")
    @as("Actions")
    actions: actionList,
    @ocaml.doc("<p>The ID of the calling account.</p>") @as("SourceAccount")
    sourceAccount: option<accountId>,
    @ocaml.doc("<p>The AWS service or identity that receives the permission. At this time, the only
			valid principal is <code>acm.amazonaws.com</code>.</p>")
    @as("Principal")
    principal: principal,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CA that grants the permissions. You can find the
			ARN by calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. This must have the following form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>.
		</p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new external new: request => t = "CreatePermissionCommand"
  let make = (~actions, ~principal, ~certificateAuthorityArn, ~sourceAccount=?, ()) =>
    new({
      actions: actions,
      sourceAccount: sourceAccount,
      principal: principal,
      certificateAuthorityArn: certificateAuthorityArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("<p>Status of your private CA.</p>") @as("Status")
    status: option<certificateAuthorityStatus>,
    @ocaml.doc("<p>Revocation information for your private CA.</p>") @as("RevocationConfiguration")
    revocationConfiguration: option<revocationConfiguration>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be
			revoked. This must be of the form:</p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>
		       </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "UpdateCertificateAuthorityCommand"
  let make = (~certificateAuthorityArn, ~status=?, ~revocationConfiguration=?, ()) =>
    new({
      status: status,
      revocationConfiguration: revocationConfiguration,
      certificateAuthorityArn: certificateAuthorityArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("<p>List of tags to be removed from the CA.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>
		       </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "UntagCertificateAuthorityCommand"
  let make = (~tags, ~certificateAuthorityArn, ()) =>
    new({tags: tags, certificateAuthorityArn: certificateAuthorityArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("<p>List of tags to be associated with the CA.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>
		       </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }

  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "TagCertificateAuthorityCommand"
  let make = (~tags, ~certificateAuthorityArn, ()) =>
    new({tags: tags, certificateAuthorityArn: certificateAuthorityArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTags = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter when paginating results to specify the maximum number of items to
			return in the response. If additional items exist beyond the number you specify, the
				<b>NextToken</b> element is sent in the response. Use this
				<b>NextToken</b> value in a subsequent request to retrieve
			additional items.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Use this parameter when paginating results in a subsequent request after you receive a
			response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that was returned when you called the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. This must be of the form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>
		       </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }
  type response = {
    @ocaml.doc("<p>When the list is truncated, this value is present and should be used for the <b>NextToken</b> parameter in a subsequent pagination request.
		</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The tags associated with your private CA.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-acm-pca") @new external new: request => t = "ListTagsCommand"
  let make = (~certificateAuthorityArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      certificateAuthorityArn: certificateAuthorityArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>When paginating results, use this parameter to specify the maximum number of items to
			return in the response. If additional items exist beyond the number you specify, the
				<b>NextToken</b> element is sent in the response. Use this
				<b>NextToken</b> value in a subsequent request to retrieve
			additional items.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>When paginating results, use this parameter in a subsequent request after you receive
			a response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the private CA to inspect. You can find the ARN by
			calling the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. This must be of the form:
				<code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code>
			You can get a private CA's ARN by running the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action.</p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }
  type response = {
    @ocaml.doc("<p>When the list is truncated, this value is present and should be used for the <b>NextToken</b> parameter in a subsequent pagination request.
		</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information about each permission assigned by the specified private CA,
			including the action enabled, the policy provided, and the time of creation.</p>")
    @as("Permissions")
    permissions: option<permissionList>,
  }
  @module("@aws-sdk/client-acm-pca") @new external new: request => t = "ListPermissionsCommand"
  let make = (~certificateAuthorityArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      certificateAuthorityArn: certificateAuthorityArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("<p>Key-value pairs that will be attached to the new private CA. You can associate up to
			50 tags with a private CA. For information using tags with IAM to manage permissions,
			see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM Tags</a>.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Specifies a
			cryptographic key management compliance standard used for handling CA keys.</p>
		       <p>Default: FIPS_140_2_LEVEL_3_OR_HIGHER</p>
		       <p>Note: <code>FIPS_140_2_LEVEL_3_OR_HIGHER</code> is not supported in Region
			ap-northeast-3. When creating a CA in the ap-northeast-3, you must provide
				<code>FIPS_140_2_LEVEL_2_OR_HIGHER</code> as the argument for
				<code>KeyStorageSecurityStandard</code>. Failure to do this results in an
				<code>InvalidArgsException</code> with the message, \"A certificate authority cannot
			be created in this region with the specified security standard.\"</p>")
    @as("KeyStorageSecurityStandard")
    keyStorageSecurityStandard: option<keyStorageSecurityStandard>,
    @ocaml.doc("<p>Custom string that can be used to distinguish between calls to the <b>CreateCertificateAuthority</b> action. Idempotency tokens for
				<b>CreateCertificateAuthority</b> time out after five
			minutes. Therefore, if you call <b>CreateCertificateAuthority</b> multiple times with the same idempotency
			token within five minutes, ACM Private CA recognizes that you are requesting only certificate
			authority and will issue only one. If you change the idempotency token for each call,
			PCA recognizes that you are requesting multiple certificate authorities.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<idempotencyToken>,
    @ocaml.doc("<p>The type of the certificate authority.</p>") @as("CertificateAuthorityType")
    certificateAuthorityType: certificateAuthorityType,
    @ocaml.doc("<p>Contains a Boolean value that you can use to enable a certification revocation list
			(CRL) for the CA, the name of the S3 bucket to which ACM Private CA will write the CRL, and an
			optional CNAME alias that you can use to hide the name of your bucket in the <b>CRL Distribution Points</b> extension of your CA certificate. For
			more information, see the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CrlConfiguration.html\">CrlConfiguration</a> structure.
		</p>")
    @as("RevocationConfiguration")
    revocationConfiguration: option<revocationConfiguration>,
    @ocaml.doc("<p>Name and bit size of the private key algorithm, the name of the signing algorithm, and
			X.500 certificate subject information.</p>")
    @as("CertificateAuthorityConfiguration")
    certificateAuthorityConfiguration: certificateAuthorityConfiguration,
  }
  type response = {
    @ocaml.doc("<p>If successful, the Amazon Resource Name (ARN) of the certificate authority (CA). This
			is of the form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>.
		</p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: option<arn>,
  }
  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "CreateCertificateAuthorityCommand"
  let make = (
    ~certificateAuthorityType,
    ~certificateAuthorityConfiguration,
    ~tags=?,
    ~keyStorageSecurityStandard=?,
    ~idempotencyToken=?,
    ~revocationConfiguration=?,
    (),
  ) =>
    new({
      tags: tags,
      keyStorageSecurityStandard: keyStorageSecurityStandard,
      idempotencyToken: idempotencyToken,
      certificateAuthorityType: certificateAuthorityType,
      revocationConfiguration: revocationConfiguration,
      certificateAuthorityConfiguration: certificateAuthorityConfiguration,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module IssueCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>Alphanumeric string that can be used to distinguish between calls to the <b>IssueCertificate</b> action. Idempotency tokens for <b>IssueCertificate</b> time out after one minute. Therefore, if you
			call <b>IssueCertificate</b> multiple times with the same
			idempotency token within one minute, ACM Private CA recognizes that you are requesting only one
			certificate and will issue only one. If you change the idempotency token for each call,
			PCA recognizes that you are requesting multiple certificates.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<idempotencyToken>,
    @ocaml.doc("<p>Information describing the start of the validity period of the certificate. This
			parameter sets the “Not Before\" date for the certificate.</p>
		       <p>By default, when issuing a certificate, ACM Private CA sets the \"Not Before\" date to the
			issuance time minus 60 minutes. This compensates for clock inconsistencies across
			computer systems. The <code>ValidityNotBefore</code> parameter can be used to customize
			the “Not Before” value. </p>
		       <p>Unlike the <code>Validity</code> parameter, the <code>ValidityNotBefore</code>
			parameter is optional.</p>
		       <p>The <code>ValidityNotBefore</code> value is expressed as an explicit date and time,
			using the <code>Validity</code> type value <code>ABSOLUTE</code>. For more information,
			see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_Validity.html\">Validity</a> in this API reference and <a href=\"https://tools.ietf.org/html/rfc5280#section-4.1.2.5\">Validity</a> in RFC
			5280.</p>")
    @as("ValidityNotBefore")
    validityNotBefore: option<validity>,
    @ocaml.doc("<p>Information describing the end of the validity period of the certificate. This
			parameter sets the “Not After” date for the certificate.</p>
		       <p>Certificate validity is the period of time during which a certificate is valid.
			Validity can be expressed as an explicit date and time when the certificate expires, or
			as a span of time after issuance, stated in days, months, or years. For more
			information, see <a href=\"https://tools.ietf.org/html/rfc5280#section-4.1.2.5\">Validity</a> in RFC 5280. </p>
		       <p>This value is unaffected when <code>ValidityNotBefore</code> is also specified. For
			example, if <code>Validity</code> is set to 20 days in the future, the certificate will
			expire 20 days from issuance time regardless of the <code>ValidityNotBefore</code>
			value.</p>
		       <p>The end of the validity period configured on a certificate must not exceed the limit
			set on its parents in the CA hierarchy.</p>")
    @as("Validity")
    validity: validity,
    @ocaml.doc("<p>Specifies a custom configuration template to use when issuing a certificate. If this
			parameter is not provided, ACM Private CA defaults to the <code>EndEntityCertificate/V1</code>
			template. For CA certificates, you should choose the shortest path length that meets
			your needs. The path length is indicated by the PathLen<i>N</i> portion of
			the ARN, where <i>N</i> is the <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaTerms.html#terms-cadepth\">CA depth</a>.</p>
		       <p>Note: The CA depth configured on a subordinate CA certificate must not exceed the
			limit set by its parents in the CA hierarchy.</p>
		       <p>For a list of <code>TemplateArn</code> values supported by ACM Private CA, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html\">Understanding Certificate
				Templates</a>.</p>")
    @as("TemplateArn")
    templateArn: option<arn>,
    @ocaml.doc("<p>The name of the algorithm that will be used to sign the certificate to be issued. </p>
		       <p>This parameter should not be confused with the <code>SigningAlgorithm</code> parameter
			used to sign a CSR in the <code>CreateCertificateAuthority</code> action.</p>")
    @as("SigningAlgorithm")
    signingAlgorithm: signingAlgorithm,
    @ocaml.doc("<p>The certificate signing request (CSR) for the certificate you want to issue. As an
			example, you can use the following OpenSSL command to create the CSR and a 2048 bit RSA
			private key. </p>
		       <p>
			         <code>openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem
				-out csr/test_cert_.csr</code>
		       </p>
		       <p>If you have a configuration file, you can then use the following OpenSSL command. The
				<code>usr_cert</code> block in the configuration file contains your X509 version 3
			extensions. </p>
		       <p>
            <code>openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048
				-days -365 -keyout private/test_cert_priv_key.pem -out
			csr/test_cert_.csr</code>
         </p>
		       <p>Note: A CSR must provide either a <i>subject name</i> or a
				<i>subject alternative name</i> or the request will be rejected.
		</p>")
    @as("Csr")
    csr: csrBlob,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form:</p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>
		       </p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
    @ocaml.doc("<p>Specifies X.509 certificate information to be included in the issued certificate. An
				<code>APIPassthrough</code> or <code>APICSRPassthrough</code> template variant must
			be selected, or else this parameter is ignored. For more information about using these
			templates, see <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html\">Understanding Certificate Templates</a>.</p>
		       <p>If conflicting or duplicate certificate information is supplied during certificate
			issuance, ACM Private CA applies <a href=\"https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html#template-order-of-operations\">order of
				operation rules</a> to determine what information is used.</p>")
    @as("ApiPassthrough")
    apiPassthrough: option<apiPassthrough>,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the issued certificate and the certificate serial
			number. This is of the form:</p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i>
            </code>
		       </p>")
    @as("CertificateArn")
    certificateArn: option<arn>,
  }
  @module("@aws-sdk/client-acm-pca") @new external new: request => t = "IssueCertificateCommand"
  let make = (
    ~validity,
    ~signingAlgorithm,
    ~csr,
    ~certificateAuthorityArn,
    ~idempotencyToken=?,
    ~validityNotBefore=?,
    ~templateArn=?,
    ~apiPassthrough=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      validityNotBefore: validityNotBefore,
      validity: validity,
      templateArn: templateArn,
      signingAlgorithm: signingAlgorithm,
      csr: csr,
      certificateAuthorityArn: certificateAuthorityArn,
      apiPassthrough: apiPassthrough,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p>
		       <p>
			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
            </code>.
		</p>")
    @as("CertificateAuthorityArn")
    certificateAuthorityArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A <a href=\"https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CertificateAuthority.html\">CertificateAuthority</a> structure that contains information about your private
			CA.</p>")
    @as("CertificateAuthority")
    certificateAuthority: option<certificateAuthority>,
  }
  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "DescribeCertificateAuthorityCommand"
  let make = (~certificateAuthorityArn, ()) =>
    new({certificateAuthorityArn: certificateAuthorityArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCertificateAuthorities = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter to filter the returned set of certificate authorities based on
			their owner. The default is SELF.</p>")
    @as("ResourceOwner")
    resourceOwner: option<resourceOwner>,
    @ocaml.doc("<p>Use this parameter when paginating results to specify the maximum number of items to
			return in the response on each page. If additional items exist beyond the number you
			specify, the <code>NextToken</code> element is sent in the response. Use this
				<code>NextToken</code> value in a subsequent request to retrieve additional
			items.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Use this parameter when paginating results in a subsequent request after you receive a
			response with truncated results. Set it to the value of the <code>NextToken</code>
			parameter from the response you just received.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>When the list is truncated, this value is present and should be used for the
				<code>NextToken</code> parameter in a subsequent pagination request.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information about each certificate authority you have created.</p>")
    @as("CertificateAuthorities")
    certificateAuthorities: option<certificateAuthorities>,
  }
  @module("@aws-sdk/client-acm-pca") @new
  external new: request => t = "ListCertificateAuthoritiesCommand"
  let make = (~resourceOwner=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({resourceOwner: resourceOwner, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
