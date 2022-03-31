type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cloudfront") @new
external createClient: unit => awsServiceClient = "CloudFrontClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type string_ = string
type sensitiveStringType = string
type long = float
type listConflictingAliasesMaxItemsInteger = int
type integer_ = int
type distributionIdString = string
type boolean_ = bool
type aliasString = string
type viewerProtocolPolicy = [
  | @as("redirect-to-https") #Redirect_To_Https
  | @as("https-only") #Https_Only
  | @as("allow-all") #Allow_All
]
type tagValue = string
@ocaml.doc("<p> A string that contains <code>Tag</code> key.</p> 
		       <p>The string length should be between 1 and 128 characters. Valid characters include 
				<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters 
				<code>_ - . : / = + @</code>.</p>")
type tagKey = string
type sslProtocol = [
  | @as("TLSv1.2") #TLSv1_2
  | @as("TLSv1.1") #TLSv1_1
  | @as("TLSv1") #TLSv1
  | @as("SSLv3") #SSLv3
]
type sslsupportMethod = [@as("static-ip") #Static_Ip | @as("vip") #Vip | @as("sni-only") #Sni_Only]
type responseHeadersPolicyType = [@as("custom") #Custom | @as("managed") #Managed]
type responseHeadersPolicyAccessControlAllowMethodsValues = [
  | @as("ALL") #ALL
  | @as("HEAD") #HEAD
  | @as("PATCH") #PATCH
  | @as("DELETE") #DELETE
  | @as("PUT") #PUT
  | @as("OPTIONS") #OPTIONS
  | @as("POST") #POST
  | @as("GET") #GET
]
type resourceARN = string
type referrerPolicyList = [
  | @as("unsafe-url") #Unsafe_Url
  | @as("strict-origin-when-cross-origin") #Strict_Origin_When_Cross_Origin
  | @as("strict-origin") #Strict_Origin
  | @as("same-origin") #Same_Origin
  | @as("origin-when-cross-origin") #Origin_When_Cross_Origin
  | @as("origin") #Origin
  | @as("no-referrer-when-downgrade") #No_Referrer_When_Downgrade
  | @as("no-referrer") #No_Referrer
]
type realtimeMetricsSubscriptionStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type priceClass = [
  | @as("PriceClass_All") #PriceClass_All
  | @as("PriceClass_200") #PriceClass_200
  | @as("PriceClass_100") #PriceClass_100
]
type originShieldRegion = string
type originRequestPolicyType = [@as("custom") #Custom | @as("managed") #Managed]
type originRequestPolicyQueryStringBehavior = [
  | @as("all") #All
  | @as("whitelist") #Whitelist
  | @as("none") #None
]
type originRequestPolicyHeaderBehavior = [
  | @as("allViewerAndWhitelistCloudFront") #AllViewerAndWhitelistCloudFront
  | @as("allViewer") #AllViewer
  | @as("whitelist") #Whitelist
  | @as("none") #None
]
type originRequestPolicyCookieBehavior = [
  | @as("all") #All
  | @as("whitelist") #Whitelist
  | @as("none") #None
]
type originProtocolPolicy = [
  | @as("https-only") #Https_Only
  | @as("match-viewer") #Match_Viewer
  | @as("http-only") #Http_Only
]
type minimumProtocolVersion = [
  | @as("TLSv1.2_2021") #TLSv1_2_2021
  | @as("TLSv1.2_2019") #TLSv1_2_2019
  | @as("TLSv1.2_2018") #TLSv1_2_2018
  | @as("TLSv1.1_2016") #TLSv1_1_2016
  | @as("TLSv1_2016") #TLSv1_2016
  | @as("TLSv1") #TLSv1
  | @as("SSLv3") #SSLv3
]
type method = [
  | @as("DELETE") #DELETE
  | @as("OPTIONS") #OPTIONS
  | @as("PATCH") #PATCH
  | @as("PUT") #PUT
  | @as("POST") #POST
  | @as("HEAD") #HEAD
  | @as("GET") #GET
]
type lambdaFunctionARN = string
type itemSelection = [@as("all") #All | @as("whitelist") #Whitelist | @as("none") #None]
type icprecordalStatus = [
  | @as("PENDING") #PENDING
  | @as("SUSPENDED") #SUSPENDED
  | @as("APPROVED") #APPROVED
]
type httpVersion = [@as("http2") #Http2 | @as("http1.1") #Http1_1]
type geoRestrictionType = [
  | @as("none") #None
  | @as("whitelist") #Whitelist
  | @as("blacklist") #Blacklist
]
type functionStage = [@as("LIVE") #LIVE | @as("DEVELOPMENT") #DEVELOPMENT]
type functionRuntime = [@as("cloudfront-js-1.0") #Cloudfront_Js_1_0]
type functionName = string
type functionEventObject = NodeJs.Buffer.t
type functionBlob = NodeJs.Buffer.t
type functionARN = string
type frameOptionsList = [@as("SAMEORIGIN") #SAMEORIGIN | @as("DENY") #DENY]
type format = [@as("URLEncoded") #URLEncoded]
type eventType = [
  | @as("origin-response") #Origin_Response
  | @as("origin-request") #Origin_Request
  | @as("viewer-response") #Viewer_Response
  | @as("viewer-request") #Viewer_Request
]
type commentType = string
type certificateSource = [@as("acm") #Acm | @as("iam") #Iam | @as("cloudfront") #Cloudfront]
type cachePolicyType = [@as("custom") #Custom | @as("managed") #Managed]
type cachePolicyQueryStringBehavior = [
  | @as("all") #All
  | @as("allExcept") #AllExcept
  | @as("whitelist") #Whitelist
  | @as("none") #None
]
type cachePolicyHeaderBehavior = [@as("whitelist") #Whitelist | @as("none") #None]
type cachePolicyCookieBehavior = [
  | @as("all") #All
  | @as("allExcept") #AllExcept
  | @as("whitelist") #Whitelist
  | @as("none") #None
]
@ocaml.doc("<p>A complex type that determines the distribution’s SSL/TLS configuration for communicating
			with viewers.</p>
		       <p>If the distribution doesn’t use <code>Aliases</code> (also known as alternate domain
			names or CNAMEs)—that is, if the distribution uses the CloudFront domain name such as
			<code>d111111abcdef8.cloudfront.net</code>—set <code>CloudFrontDefaultCertificate</code>
			to <code>true</code> and leave all other fields empty.</p>
		       <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), use
			the fields in this type to specify the following settings:</p> 
		       <ul>
            <li> 
				           <p>Which viewers the distribution accepts HTTPS connections from: only viewers that support
					<a href=\"https://en.wikipedia.org/wiki/Server_Name_Indication\">server name
					indication (SNI)</a> (recommended), or all viewers including those that
					don’t support SNI.</p>
				           <ul>
                  <li>
						               <p>To accept HTTPS connections from only viewers that support SNI, set
							<code>SSLSupportMethod</code> to <code>sni-only</code>. This is
							recommended. Most browsers and clients support
                            SNI.
                            </p>
					             </li>
                  <li>
						               <p>To accept HTTPS connections from all viewers, including those that don’t support SNI,
							set <code>SSLSupportMethod</code> to <code>vip</code>. This is not
							recommended, and results in additional monthly charges from
							CloudFront.</p>
					             </li>
               </ul> 
			         </li>
            <li>
				           <p>The minimum SSL/TLS protocol version that the distribution can use to
					communicate with viewers. To specify a minimum version, choose a value for
					<code>MinimumProtocolVersion</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy\">Security Policy</a> in the
					<i>Amazon CloudFront Developer Guide</i>.</p>
			         </li>
            <li> 
				           <p>The location of the SSL/TLS certificate, <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html\">Certificate Manager (ACM)</a> (recommended) or <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html\">Identity and Access Management (IAM)</a>. You specify the location
					by setting a value in one of the following fields (not both):</p>
				           <ul>
                  <li>
						               <p>
                        <code>ACMCertificateArn</code>
                     </p>
					             </li>
                  <li>
						               <p>
                        <code>IAMCertificateId</code>
                     </p>
					             </li>
               </ul> 
			         </li>
         </ul>
		       <p>All distributions support HTTPS connections from viewers. To require viewers to use
			HTTPS only, or to redirect them from HTTP to HTTPS, use
			<code>ViewerProtocolPolicy</code> in the <code>CacheBehavior</code> or
			<code>DefaultCacheBehavior</code>. To specify how CloudFront should use SSL/TLS to
			communicate with your custom origin, use <code>CustomOriginConfig</code>.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https.html\">Using
			HTTPS with CloudFront</a> and <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-alternate-domain-names.html\">
			Using Alternate Domain Names and HTTPS</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
type viewerCertificate = {
  @ocaml.doc("<p>This field is deprecated. Use one of the following fields instead:</p>
		       <ul>
            <li>
				           <p>
                  <code>ACMCertificateArn</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>IAMCertificateId</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>CloudFrontDefaultCertificate</code>
               </p>
			         </li>
         </ul>")
  @as("CertificateSource")
  certificateSource: option<certificateSource>,
  @ocaml.doc("<p>This field is deprecated. Use one of the following fields instead:</p>
		       <ul>
            <li>
				           <p>
                  <code>ACMCertificateArn</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>IAMCertificateId</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>CloudFrontDefaultCertificate</code>
               </p>
			         </li>
         </ul>")
  @as("Certificate")
  certificate: option<string_>,
  @ocaml.doc("<p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs),
			specify the security policy that you want CloudFront to use for HTTPS connections with
			viewers. The security policy determines two settings:</p>
		       <ul>
            <li>
				           <p>The minimum SSL/TLS protocol that CloudFront can use to communicate with
					viewers.</p>
			         </li>
            <li>
				           <p>The ciphers that CloudFront can use to encrypt the content that it returns to
					viewers.</p>
			         </li>
         </ul>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy\">Security Policy</a> and <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers\">Supported Protocols and Ciphers Between Viewers and
			CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
		       <note>
			         <p>On the CloudFront console, this setting is called <b>Security
				Policy</b>.</p>
		       </note>
		       <p>When you’re using SNI only (you set <code>SSLSupportMethod</code> to <code>sni-only</code>),
			you must specify <code>TLSv1</code> or higher.</p>
		       <p>If the distribution uses the CloudFront domain name such as
			<code>d111111abcdef8.cloudfront.net</code> (you set
			<code>CloudFrontDefaultCertificate</code> to <code>true</code>), CloudFront automatically sets
			the security policy to <code>TLSv1</code> regardless of the value that you set
			here.</p>")
  @as("MinimumProtocolVersion")
  minimumProtocolVersion: option<minimumProtocolVersion>,
  @ocaml.doc("<p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), specify
			which viewers the distribution accepts HTTPS connections from.</p> 
		       <ul>
            <li> 
				           <p>
                  <code>sni-only</code> – The distribution accepts HTTPS connections from only viewers that
					support <a href=\"https://en.wikipedia.org/wiki/Server_Name_Indication\">server
					name indication (SNI)</a>. This is recommended. Most browsers and clients support SNI.</p>
			         </li>
            <li> 
				           <p>
                  <code>vip</code> – The distribution accepts HTTPS connections from all viewers including
					those that don’t support SNI. This is not recommended, and results in additional
					monthly charges from CloudFront.</p>
			         </li>
            <li>
				           <p>
                  <code>static-ip</code> - Do not specify this value unless your distribution
					has been enabled for this feature by the CloudFront team. If you have a use case
					that requires static IP addresses for a distribution, contact CloudFront through
					the <a href=\"https://console.aws.amazon.com/support/home\">Amazon Web Services Support Center</a>.</p>
			         </li>
         </ul> 
		       <p>If the distribution uses the CloudFront domain name such as
			<code>d111111abcdef8.cloudfront.net</code>, don’t set a value for this field.</p>")
  @as("SSLSupportMethod")
  sslsupportMethod: option<sslsupportMethod>,
  @ocaml.doc("<p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs) and
			the SSL/TLS certificate is stored in <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html\">Certificate Manager (ACM)</a>, provide the Amazon Resource
			Name (ARN) of the ACM certificate. CloudFront only supports ACM certificates in the US
			East (N. Virginia) Region (<code>us-east-1</code>).</p>
		       <p>If you specify an ACM certificate ARN, you must also specify values for
			<code>MinimumProtocolVersion</code> and <code>SSLSupportMethod</code>.</p>")
  @as("ACMCertificateArn")
  acmcertificateArn: option<string_>,
  @ocaml.doc("<p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs) and
			the SSL/TLS certificate is stored in <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html\">Identity and Access Management (IAM)</a>, provide the ID of the IAM
			certificate.</p>
		       <p>If you specify an IAM certificate ID, you must also specify values for
			<code>MinimumProtocolVersion</code> and <code>SSLSupportMethod</code>. </p>")
  @as("IAMCertificateId")
  iamcertificateId: option<string_>,
  @ocaml.doc("<p>If the distribution uses the CloudFront domain name such as
			<code>d111111abcdef8.cloudfront.net</code>, set this field to <code>true</code>.</p>
		       <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), set
			this field to <code>false</code> and specify values for the following fields:</p>
		       <ul>
            <li>
				           <p>
                  <code>ACMCertificateArn</code> or <code>IAMCertificateId</code> (specify a value for one,
					not both)</p>
				
			         </li>
            <li>
				           <p>
                  <code>MinimumProtocolVersion</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>SSLSupportMethod</code>
               </p>
			         </li>
         </ul>")
  @as("CloudFrontDefaultCertificate")
  cloudFrontDefaultCertificate: option<boolean_>,
}
type trustedKeyGroupIdList = array<string_>
type tagKeyList = array<tagKey>
@ocaml.doc("<p> A complex type that contains <code>Tag</code> key and <code>Tag</code> value.</p>")
type tag = {
  @ocaml.doc("<p> A string that contains an optional <code>Tag</code> value.</p> 
		       <p>The string length should be between 0 and 256 characters. Valid characters include 
				<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters 
				<code>_ - . : / = + @</code>.</p>")
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p> A string that contains <code>Tag</code> key.</p> 
		       <p>The string length should be between 1 and 128 characters. Valid characters include 
				<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters 
				<code>_ - . : / = + @</code>.</p>")
  @as("Key")
  key: tagKey,
}
@ocaml.doc(
  "<p>A complex type that controls whether access logs are written for this streaming distribution.</p>"
)
type streamingLoggingConfig = {
  @ocaml.doc("<p>An optional string that you want CloudFront to prefix to the access log filenames for this streaming distribution, for example, 
			<code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include 
			an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>")
  @as("Prefix")
  prefix: string_,
  @ocaml.doc(
    "<p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>"
  )
  @as("Bucket")
  bucket: string_,
  @ocaml.doc("<p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't 
			want to enable logging when you create a streaming distribution or if you want to disable 
			logging for an existing streaming distribution, specify <code>false</code> for 
				<code>Enabled</code>, and specify <code>empty Bucket</code> and <code>Prefix</code> 
			elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values 
			for <code>Bucket</code> and <code>Prefix</code>, the values are automatically deleted. 
		</p>")
  @as("Enabled")
  enabled: boolean_,
}
@ocaml.doc("<p>List of status codes for origin failover.</p>") type statusCodeList = array<integer_>
type sslProtocolsList = array<sslProtocol>
@ocaml.doc("<p>A complex type that contains information about the Amazon S3 origin. If the origin is a
			custom origin or an S3 bucket that is configured as a website endpoint, use the
            <code>CustomOriginConfig</code> element instead.</p>")
type s3OriginConfig = {
  @ocaml.doc("<p>The CloudFront origin access identity to associate with the origin. Use an origin access 
			identity to configure the origin so that viewers can <i>only</i> access objects 
			in an Amazon S3 bucket through CloudFront. The format of the value is:</p> 
		       <p>origin-access-identity/cloudfront/<i>ID-of-origin-access-identity</i>
         </p> 
		       <p>where <code>
               <i>ID-of-origin-access-identity</i>
            </code> is the value that 
			CloudFront returned in the <code>ID</code> element when you created the origin access 
			identity.</p> 
		       <p>If you want viewers to be able to access objects using either the CloudFront URL or the Amazon S3 
			URL, specify an empty <code>OriginAccessIdentity</code> element.</p> 
		       <p>To delete the origin access identity from an existing distribution, update the 
			distribution configuration and include an empty <code>OriginAccessIdentity</code> 
			element.</p> 
		       <p>To replace the origin access identity, update the distribution configuration and 
			specify the new origin access identity.</p> 
		       <p>For more information about the origin access identity, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the 
				<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("OriginAccessIdentity")
  originAccessIdentity: string_,
}
@ocaml.doc("<p>A complex type that contains information about the Amazon S3 bucket from which you want 
			CloudFront to get your media files for distribution.</p>")
type s3Origin = {
  @ocaml.doc("<p>The CloudFront origin access identity to associate with the distribution. Use an origin 
			access identity to configure the distribution so that end users can only access objects in an 
			Amazon S3 bucket through CloudFront.</p> 
		       <p>If you want end users to be able to access objects using either the CloudFront URL or the 
			Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> 
		       <p>To delete the origin access identity from an existing distribution, update the 
			distribution configuration and include an empty <code>OriginAccessIdentity</code> 
			element.</p> 
		       <p>To replace the origin access identity, update the distribution configuration and 
			specify the new origin access identity.</p> 
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html\">Using an Origin Access 
				Identity to Restrict Access to Your Amazon S3 Content</a> in the <i>
				Amazon CloudFront Developer Guide</i>.</p>")
  @as("OriginAccessIdentity")
  originAccessIdentity: string_,
  @ocaml.doc("<p>The DNS name of the Amazon S3 origin. </p>") @as("DomainName") domainName: string_,
}
@ocaml.doc("<p>Determines whether CloudFront includes the <code>X-XSS-Protection</code> HTTP response header and
			the header’s value.</p>
		       <p>For more information about the <code>X-XSS-Protection</code> HTTP response header, see
				<a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection\">X-XSS-Protection</a> in the MDN Web Docs.</p>")
type responseHeadersPolicyXSSProtection = {
  @ocaml.doc("<p>A reporting URI, which CloudFront uses as the value of the <code>report</code> directive in the
			<code>X-XSS-Protection</code> header.</p>
		       <p>You cannot specify a <code>ReportUri</code> when <code>ModeBlock</code> is
			<code>true</code>.</p>
		       <p>For more information about using a reporting URL, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection\">X-XSS-Protection</a> in the MDN Web Docs.</p>")
  @as("ReportUri")
  reportUri: option<string_>,
  @ocaml.doc("<p>A Boolean that determines whether CloudFront includes the <code>mode=block</code> directive in the
			<code>X-XSS-Protection</code> header.</p>
		       <p>For more information about this directive, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection\">X-XSS-Protection</a> in the MDN Web Docs.</p>")
  @as("ModeBlock")
  modeBlock: option<boolean_>,
  @ocaml.doc("<p>A Boolean that determines the value of the <code>X-XSS-Protection</code> HTTP response
			header. When this setting is <code>true</code>, the value of the
			<code>X-XSS-Protection</code> header is <code>1</code>. When this setting is
			<code>false</code>, the value of the <code>X-XSS-Protection</code> header is
			<code>0</code>.</p>
		       <p>For more information about these settings, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection\">X-XSS-Protection</a> in the MDN Web Docs.</p>")
  @as("Protection")
  protection: boolean_,
  @ocaml.doc("<p>A Boolean that determines whether CloudFront overrides the <code>X-XSS-Protection</code> HTTP
			response header received from the origin with the one specified in this response headers
			policy.</p>")
  @as("Override")
  override: boolean_,
}
@ocaml.doc("<p>Determines whether CloudFront includes the <code>Strict-Transport-Security</code> HTTP response
			header and the header’s value.</p>
		       <p>For more information about the <code>Strict-Transport-Security</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security\">Strict-Transport-Security</a> in the MDN Web Docs.</p>")
type responseHeadersPolicyStrictTransportSecurity = {
  @ocaml.doc("<p>A number that CloudFront uses as the value for the <code>max-age</code> directive in the
				<code>Strict-Transport-Security</code> HTTP response header.</p>")
  @as("AccessControlMaxAgeSec")
  accessControlMaxAgeSec: integer_,
  @ocaml.doc("<p>A Boolean that determines whether CloudFront includes the <code>preload</code> directive in the
			<code>Strict-Transport-Security</code> HTTP response header.</p>")
  @as("Preload")
  preload: option<boolean_>,
  @ocaml.doc("<p>A Boolean that determines whether CloudFront includes the <code>includeSubDomains</code> directive
			in the <code>Strict-Transport-Security</code> HTTP response header.</p>")
  @as("IncludeSubdomains")
  includeSubdomains: option<boolean_>,
  @ocaml.doc("<p>A Boolean that determines whether CloudFront overrides the <code>Strict-Transport-Security</code>
			HTTP response header received from the origin with the one specified in this response
			headers policy.</p>")
  @as("Override")
  override: boolean_,
}
@ocaml.doc("<p>Determines whether CloudFront includes the <code>Referrer-Policy</code> HTTP response header and
			the header’s value.</p>
		       <p>For more information about the <code>Referrer-Policy</code> HTTP response header, see
				<a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy\">Referrer-Policy</a> in the MDN Web Docs.</p>")
type responseHeadersPolicyReferrerPolicy = {
  @ocaml.doc("<p>The value of the <code>Referrer-Policy</code> HTTP response header. Valid values
			are:</p>
		       <ul>
            <li>
				           <p>
                  <code>no-referrer</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>no-referrer-when-downgrade</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>origin</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>origin-when-cross-origin</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>same-origin</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>strict-origin</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>strict-origin-when-cross-origin</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>unsafe-url</code>
               </p>
			         </li>
         </ul>
		       <p>For more information about these values, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy\">Referrer-Policy</a> in the MDN Web Docs.</p>")
  @as("ReferrerPolicy")
  referrerPolicy: referrerPolicyList,
  @ocaml.doc("<p>A Boolean that determines whether CloudFront overrides the <code>Referrer-Policy</code> HTTP
			response header received from the origin with the one specified in this response headers
			policy.</p>")
  @as("Override")
  override: boolean_,
}
@ocaml.doc("<p>Determines whether CloudFront includes the <code>X-Frame-Options</code> HTTP response header and
			the header’s value.</p>
		       <p>For more information about the <code>X-Frame-Options</code> HTTP response header, see
				<a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options\">X-Frame-Options</a> in the MDN Web Docs.</p>")
type responseHeadersPolicyFrameOptions = {
  @ocaml.doc("<p>The value of the <code>X-Frame-Options</code> HTTP response header. Valid values are
				<code>DENY</code> and <code>SAMEORIGIN</code>. </p>
		       <p>For more information about these values, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options\">X-Frame-Options</a> in the MDN Web Docs.</p>")
  @as("FrameOption")
  frameOption: frameOptionsList,
  @ocaml.doc("<p>A Boolean that determines whether CloudFront overrides the <code>X-Frame-Options</code> HTTP
			response header received from the origin with the one specified in this response headers
			policy.</p>")
  @as("Override")
  override: boolean_,
}
@ocaml.doc("<p>An HTTP response header name and its value. CloudFront includes this header in HTTP responses that
			it sends for requests that match a cache behavior that’s associated with this response
			headers policy.</p>")
type responseHeadersPolicyCustomHeader = {
  @ocaml.doc("<p>A Boolean that determines whether CloudFront overrides a response header with the same name
			received from the origin with the header specified here.</p>")
  @as("Override")
  override: boolean_,
  @ocaml.doc("<p>The value for the HTTP response header.</p>") @as("Value") value: string_,
  @ocaml.doc("<p>The HTTP response header name.</p>") @as("Header") header: string_,
}
@ocaml.doc("<p>Determines whether CloudFront includes the <code>X-Content-Type-Options</code> HTTP response
			header with its value set to <code>nosniff</code>.</p>
		       <p>For more information about the <code>X-Content-Type-Options</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options\">X-Content-Type-Options</a> in the MDN Web Docs.</p>")
type responseHeadersPolicyContentTypeOptions = {
  @ocaml.doc("<p>A Boolean that determines whether CloudFront overrides the <code>X-Content-Type-Options</code>
			HTTP response header received from the origin with the one specified in this response
			headers policy.</p>")
  @as("Override")
  override: boolean_,
}
@ocaml.doc("<p>The policy directives and their values that CloudFront includes as values for the
				<code>Content-Security-Policy</code> HTTP response header.</p>
		       <p>For more information about the <code>Content-Security-Policy</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy\">Content-Security-Policy</a> in the MDN Web Docs.</p>")
type responseHeadersPolicyContentSecurityPolicy = {
  @ocaml.doc("<p>The policy directives and their values that CloudFront includes as values for the
				<code>Content-Security-Policy</code> HTTP response header.</p>")
  @as("ContentSecurityPolicy")
  contentSecurityPolicy: string_,
  @ocaml.doc("<p>A Boolean that determines whether CloudFront overrides the <code>Content-Security-Policy</code>
			HTTP response header received from the origin with the one specified in this response
			headers policy.</p>")
  @as("Override")
  override: boolean_,
}
@ocaml.doc("<p>A subscription configuration for additional CloudWatch metrics.</p>")
type realtimeMetricsSubscriptionConfig = {
  @ocaml.doc("<p>A flag that indicates whether additional CloudWatch metrics are enabled for a given
			CloudFront distribution.</p>")
  @as("RealtimeMetricsSubscriptionStatus")
  realtimeMetricsSubscriptionStatus: realtimeMetricsSubscriptionStatus,
}
type queryStringNamesList = array<string_>
type queryStringCacheKeysList = array<string_>
@ocaml.doc("<p>Query argument-profile mapping for field-level encryption.</p>")
type queryArgProfile = {
  @ocaml.doc(
    "<p>ID of profile to use for field-level encryption query argument-profile mapping</p>"
  )
  @as("ProfileId")
  profileId: string_,
  @ocaml.doc("<p>Query argument for field-level encryption query argument-profile mapping.</p>")
  @as("QueryArg")
  queryArg: string_,
}
@ocaml.doc("<p>Contains information about a public key.</p>")
type publicKeySummary = {
  @ocaml.doc("<p>A comment to describe the public key. The comment cannot be longer than 128
			characters.</p>")
  @as("Comment")
  comment: option<string_>,
  @ocaml.doc("<p>The public key.</p>") @as("EncodedKey") encodedKey: string_,
  @ocaml.doc("<p>The date and time when the public key was uploaded.</p>") @as("CreatedTime")
  createdTime: timestamp_,
  @ocaml.doc("<p>A name to help identify the public key.</p>") @as("Name") name: string_,
  @ocaml.doc("<p>The identifier of the public key.</p>") @as("Id") id: string_,
}
type publicKeyIdList = array<string_>
@ocaml.doc(
  "<p>Configuration information about a public key that you can use with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">signed URLs and signed cookies</a>, or with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html\">field-level encryption</a>.</p>"
)
type publicKeyConfig = {
  @ocaml.doc("<p>A comment to describe the public key. The comment cannot be longer than 128
			characters.</p>")
  @as("Comment")
  comment: option<string_>,
  @ocaml.doc(
    "<p>The public key that you can use with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">signed URLs and signed cookies</a>, or with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html\">field-level encryption</a>.</p>"
  )
  @as("EncodedKey")
  encodedKey: string_,
  @ocaml.doc("<p>A name to help identify the public key.</p>") @as("Name") name: string_,
  @ocaml.doc("<p>A string included in the request to help make sure that the request can’t be
			replayed.</p>")
  @as("CallerReference")
  callerReference: string_,
}
type pathList = array<string_>
@ocaml.doc("<p>CloudFront Origin Shield.</p>
		       <p>Using Origin Shield can help reduce the load on your origin. For more
            information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html\">Using Origin Shield</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
type originShield = {
  @ocaml.doc("<p>The Amazon Web Services Region for Origin Shield.</p>
		       <p>Specify the Amazon Web Services Region that has the lowest latency to your origin.
            To specify a region, use the region code, not the region name.
            For example, specify the US East (Ohio) region as <code>us-east-2</code>.</p>
        <p>When you enable CloudFront Origin Shield, you must specify the Amazon Web Services Region for Origin
            Shield. For the list of Amazon Web Services Regions that you can specify, and for help choosing the best
            Region for your origin, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html#choose-origin-shield-region\">Choosing the Amazon Web Services Region for Origin Shield</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("OriginShieldRegion")
  originShieldRegion: option<originShieldRegion>,
  @ocaml.doc("<p>A flag that specifies whether Origin Shield is enabled.</p>
		       <p>When it’s enabled, CloudFront routes all requests through Origin Shield, which can
            help protect your origin. When it’s disabled, CloudFront might send requests directly to
            your origin from multiple edge locations or regional edge caches.</p>")
  @as("Enabled")
  enabled: boolean_,
}
@ocaml.doc("<p>An origin in an origin group.</p>")
type originGroupMember = {
  @ocaml.doc("<p>The ID for an origin in an origin group.</p>") @as("OriginId") originId: string_,
}
@ocaml.doc("<p>A complex type that contains <code>HeaderName</code> and <code>HeaderValue</code> 
			elements, if any, for this distribution. </p>")
type originCustomHeader = {
  @ocaml.doc("<p>The value for the header that you specified in the <code>HeaderName</code> 
			field.</p>")
  @as("HeaderValue")
  headerValue: sensitiveStringType,
  @ocaml.doc("<p>The name of a header that you want CloudFront to send to your origin. For more information, see
			<a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html\">Adding Custom
			Headers to Origin Requests</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>")
  @as("HeaderName")
  headerName: string_,
}
type methodsList = array<method>
@ocaml.doc("<p>A complex type that controls whether access logs are written for the 
			distribution.</p>")
type loggingConfig = {
  @ocaml.doc("<p>An optional string that you want CloudFront to prefix to the access log 
				<code>filenames</code> for this distribution, for example, <code>myprefix/</code>. If you 
			want to enable logging, but you don't want to specify a prefix, you still must include an 
			empty <code>Prefix</code> element in the <code>Logging</code> element.</p>")
  @as("Prefix")
  prefix: string_,
  @ocaml.doc("<p>The Amazon S3 bucket to store the access logs in, for example, 
				<code>myawslogbucket.s3.amazonaws.com</code>.</p>")
  @as("Bucket")
  bucket: string_,
  @ocaml.doc("<p>Specifies whether you want CloudFront to include cookies in access logs, specify 
				<code>true</code> for <code>IncludeCookies</code>. If you choose to include cookies in logs, 
			CloudFront logs all cookies regardless of how you configure the cache behaviors for this 
			distribution. If you don't want to include cookies when you create a distribution or if you 
			want to disable include cookies for an existing distribution, specify <code>false</code> for 
				<code>IncludeCookies</code>.</p>")
  @as("IncludeCookies")
  includeCookies: boolean_,
  @ocaml.doc("<p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't 
			want to enable logging when you create a distribution or if you want to disable logging for an 
			existing distribution, specify <code>false</code> for <code>Enabled</code>, and specify empty 
				<code>Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for 
				<code>Enabled</code> but you specify values for <code>Bucket</code>, <code>prefix</code>, 
			and <code>IncludeCookies</code>, the values are automatically deleted.</p>")
  @as("Enabled")
  enabled: boolean_,
}
type locationList = array<string_>
@ocaml.doc("<p>A complex type that contains a Lambda@Edge function association.</p>")
type lambdaFunctionAssociation = {
  @ocaml.doc("<p>A flag that allows a Lambda@Edge function to have read access to the body content. For more information, 
			see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html\">Accessing the Request Body by Choosing the 
				Include Body Option</a> in the Amazon CloudFront Developer Guide.</p>")
  @as("IncludeBody")
  includeBody: option<boolean_>,
  @ocaml.doc("<p>Specifies the event type that triggers a Lambda@Edge function invocation. You can specify the following values:</p> 
		       <ul>
            <li>
               <p>
                  <code>viewer-request</code>: The function executes when CloudFront receives a request from a viewer 
				and before it checks to see whether the requested object is in the edge cache. </p>
            </li>
            <li>
               <p>
                  <code>origin-request</code>: The function executes only when CloudFront sends a request to your
					origin. When the requested object is in the edge cache, the function doesn't
					execute.</p>
            </li>
            <li>
               <p>
                  <code>origin-response</code>: The function executes after CloudFront receives a response from the origin and 
				before it caches the object in the response. When the requested object is in the edge cache, the function doesn't execute.</p>
			         </li>
            <li>
               <p>
                  <code>viewer-response</code>: The function executes before CloudFront returns the requested object to the viewer. 
				The function executes regardless of whether the object was already in the edge cache.</p>
				           <p>If the origin returns an HTTP status code other than HTTP 200 (OK), the function doesn't execute.</p>
			         </li>
         </ul>")
  @as("EventType")
  eventType: eventType,
  @ocaml.doc("<p>The ARN of the Lambda@Edge function. You must specify the ARN of a function version; you can't specify an alias 
			or $LATEST.</p>")
  @as("LambdaFunctionARN")
  lambdaFunctionARN: lambdaFunctionARN,
}
@ocaml.doc("<p>Contains information about the Amazon Kinesis data stream where you are sending
			real-time log data.</p>")
type kinesisStreamConfig = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Kinesis data stream where you are sending real-time
			log data.</p>")
  @as("StreamARN")
  streamARN: string_,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that
			CloudFront can use to send real-time log data to your Kinesis data stream.</p>
		       <p>For more information the IAM role, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-iam-role\">Real-time log configuration IAM role</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("RoleARN")
  roleARN: string_,
}
type keyPairIdList = array<string_>
@ocaml.doc("<p>A summary of an invalidation request.</p>")
type invalidationSummary = {
  @ocaml.doc("<p>The status of an invalidation request.</p>") @as("Status") status: string_,
  @ocaml.doc("<p>The time that an invalidation request was created.</p>") @as("CreateTime")
  createTime: timestamp_,
  @ocaml.doc("<p>The unique ID for an invalidation request.</p>") @as("Id") id: string_,
}
type headerList = array<string_>
@ocaml.doc("<p>Contains metadata about a CloudFront function.</p>")
type functionMetadata = {
  @ocaml.doc("<p>The date and time when the function was most recently updated.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p>The date and time when the function was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The stage that the function is in, either <code>DEVELOPMENT</code> or
			<code>LIVE</code>.</p>
		       <p>When a function is in the <code>DEVELOPMENT</code> stage, you can test the function with
				<code>TestFunction</code>, and update it with <code>UpdateFunction</code>.</p>
		       <p>When a function is in the <code>LIVE</code> stage, you can attach the function to a
			distribution’s cache behavior, using the function’s ARN.</p>")
  @as("Stage")
  stage: option<functionStage>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the function. The ARN uniquely identifies the
			function.</p>")
  @as("FunctionARN")
  functionARN: string_,
}
type functionExecutionLogList = array<string_>
@ocaml.doc("<p>Contains configuration information about a CloudFront function.</p>")
type functionConfig = {
  @ocaml.doc("<p>The function’s runtime environment. The only valid value is
			<code>cloudfront-js-1.0</code>.</p>")
  @as("Runtime")
  runtime: functionRuntime,
  @ocaml.doc("<p>A comment to describe the function.</p>") @as("Comment") comment: string_,
}
@ocaml.doc("<p>A CloudFront function that is associated with a cache behavior in a CloudFront
			distribution.</p>")
type functionAssociation = {
  @ocaml.doc("<p>The event type of the function, either <code>viewer-request</code> or
			<code>viewer-response</code>. You cannot use origin-facing event types
			(<code>origin-request</code> and <code>origin-response</code>) with a CloudFront
			function.</p>")
  @as("EventType")
  eventType: eventType,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the function.</p>") @as("FunctionARN")
  functionARN: functionARN,
}
type fieldPatternList = array<string_>
type fieldList = array<string_>
type distributionIdListSummary = array<string_>
@ocaml.doc("<p>A complex type that controls:</p> 
		       <ul>
            <li> 
				           <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error 
					messages before returning the response to the viewer. </p> 
			         </li>
            <li> 
				           <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> 
			         </li>
         </ul> 
		       <p>For more information about custom error pages, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the 
				<i>Amazon CloudFront Developer Guide</i>.</p>")
type customErrorResponse = {
  @ocaml.doc("<p>The minimum amount of time, in seconds, that you want CloudFront to cache the HTTP status 
			code specified in <code>ErrorCode</code>. When this time period has elapsed, CloudFront queries your 
			origin to see whether the problem that caused the error has been resolved and the requested 
			object is now available.</p> 
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing 
				Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("ErrorCachingMinTTL")
  errorCachingMinTTL: option<long>,
  @ocaml.doc("<p>The HTTP status code that you want CloudFront to return to the viewer along with the custom 
			error page. There are a variety of reasons that you might want CloudFront to return a status code 
			different from the status code that your origin returned to CloudFront, for example:</p> 
		       <ul>
            <li> 
				           <p>Some Internet devices (some firewalls and corporate proxies, for example) intercept 
					HTTP 4xx and 5xx and prevent the response from being returned to the viewer. If you 
					substitute <code>200</code>, the response typically won't be intercepted.</p> 
			         </li>
            <li> 
				           <p>If you don't care about distinguishing among different client errors or server 
					errors, you can specify <code>400</code> or <code>500</code> as the 
						<code>ResponseCode</code> for all 4xx or 5xx errors.</p> 
			         </li>
            <li> 
				           <p>You might want to return a <code>200</code> status code (OK) and static website so 
					your customers don't know that your website is down.</p> 
			         </li>
         </ul> 
		       <p>If you specify a value for <code>ResponseCode</code>, you must also specify a value for
			<code>ResponsePagePath</code>.</p>")
  @as("ResponseCode")
  responseCode: option<string_>,
  @ocaml.doc("<p>The path to the custom error page that you want CloudFront to return to a viewer when your 
			origin returns the HTTP status code specified by <code>ErrorCode</code>, for example, 
				<code>/4xx-errors/403-forbidden.html</code>. If you want to store your objects and your 
			custom error pages in different locations, your distribution must include a cache behavior for 
			which the following is true:</p> 
		       <ul>
            <li> 
				           <p>The value of <code>PathPattern</code> matches the path to your custom error 
					messages. For example, suppose you saved custom error pages for 4xx errors in an Amazon S3 
					bucket in a directory named <code>/4xx-errors</code>. Your distribution must include a 
					cache behavior for which the path pattern routes requests for your custom error pages to 
					that location, for example, <code>/4xx-errors/*</code>. </p> 
			         </li>
            <li> 
				           <p>The value of <code>TargetOriginId</code> specifies the value of the <code>ID</code> 
					element for the origin that contains your custom error pages.</p> 
			         </li>
         </ul> 
		       <p>If you specify a value for <code>ResponsePagePath</code>, you must also specify a value
			for <code>ResponseCode</code>.</p> 
		       <p>We recommend that you store custom error pages in an Amazon S3 bucket. If you store custom 
			error pages on an HTTP server and the server starts to return 5xx errors, CloudFront can't get the 
			files that you want to return to viewers because the origin server is unavailable.</p>")
  @as("ResponsePagePath")
  responsePagePath: option<string_>,
  @ocaml.doc("<p>The HTTP status code for which you want to specify a custom error page and/or a caching 
			duration.</p>")
  @as("ErrorCode")
  errorCode: integer_,
}
type cookieNameList = array<string_>
@ocaml.doc("<p>A field-level encryption content type profile. </p>")
type contentTypeProfile = {
  @ocaml.doc("<p>The content type for a field-level encryption content type-profile mapping. </p>")
  @as("ContentType")
  contentType: string_,
  @ocaml.doc("<p>The profile ID for a field-level encryption content type-profile mapping. </p>")
  @as("ProfileId")
  profileId: option<string_>,
  @ocaml.doc("<p>The format for a field-level encryption content type-profile mapping. </p>")
  @as("Format")
  format: format,
}
@ocaml.doc("<p>An alias (also called a CNAME) and the CloudFront distribution and Amazon Web Services account ID that it’s
			associated with. The distribution and account IDs are partially hidden, which allows you
			to identify the distributions and accounts that you own, but helps to protect the
			information of ones that you don’t own.</p>")
type conflictingAlias = {
  @ocaml.doc("<p>The (partially hidden) ID of the Amazon Web Services account that owns the distribution that’s
			associated with the alias.</p>")
  @as("AccountId")
  accountId: option<string_>,
  @ocaml.doc(
    "<p>The (partially hidden) ID of the CloudFront distribution associated with the alias.</p>"
  )
  @as("DistributionId")
  distributionId: option<string_>,
  @ocaml.doc("<p>An alias (also called a CNAME).</p>") @as("Alias") alias: option<string_>,
}
@ocaml.doc("<p>Summary of the information about a CloudFront origin access identity.</p>")
type cloudFrontOriginAccessIdentitySummary = {
  @ocaml.doc("<p>The comment for this origin access identity, as originally specified when 
			created.</p>")
  @as("Comment")
  comment: string_,
  @ocaml.doc("<p>The Amazon S3 canonical user ID for the origin access identity, which you use when giving 
			the origin access identity read permission to an object in Amazon S3.</p>")
  @as("S3CanonicalUserId")
  s3CanonicalUserId: string_,
  @ocaml.doc("<p>The ID for the origin access identity. For example: 
			<code>E74FTE3AJFJ256A</code>.</p>")
  @as("Id")
  id: string_,
}
@ocaml.doc("<p>Origin access identity configuration. Send a <code>GET</code> request to the 
					<code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code> resource. 
		</p>")
type cloudFrontOriginAccessIdentityConfig = {
  @ocaml.doc("<p>A comment to describe the origin access identity. The comment cannot be longer
			than 128 characters.</p>")
  @as("Comment")
  comment: string_,
  @ocaml.doc("<p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> 
		       <p>If the value of <code>CallerReference</code> is new (regardless of the content of the 
			<code>CloudFrontOriginAccessIdentityConfig</code> object), a new origin access identity is 
			created.</p> 
		       <p>If the <code>CallerReference</code> is a value already sent in a previous identity 
			request, and the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is identical 
			to the original request (ignoring white space), the response includes the same information 
			returned to the original request. </p> 
		       <p>If the <code>CallerReference</code> is a value you already sent in a previous request 
			to create an identity, but the content of the 
			<code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, 
			CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>")
  @as("CallerReference")
  callerReference: string_,
}
type awsAccountNumberList = array<string_>
type aliasList = array<string_>
@ocaml.doc("<p>Amazon Web Services services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content 
			publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP 
			recordal status for CNAMEs associated with distributions. The status is returned in the CloudFront response; you can't configure
			it yourself.</p>
		       <p>For more information about ICP recordals, see  <a href=\"https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html\">
			Signup, Accounts, and Credentials</a> in <i>Getting Started with Amazon Web Services services in China</i>.</p>")
type aliasICPRecordal = {
  @ocaml.doc("<p>The Internet Content Provider (ICP) recordal status for a CNAME. The ICPRecordalStatus is set to 
			APPROVED for all CNAMEs (aliases) in regions outside of China. </p>
		       <p>The status values returned are the following:</p>
		       <ul>
            <li>
               <p>
                  <b>APPROVED</b> indicates that the associated CNAME has a valid ICP recordal number.
			Multiple CNAMEs can be associated with a distribution, and CNAMEs can correspond to different ICP recordals. To be marked as
			APPROVED, that is, valid to use with China region, a CNAME must have one ICP recordal number associated with it.</p>
            </li>
            <li>
               <p>
                  <b>SUSPENDED</b> indicates that the associated CNAME does not have a valid ICP recordal 
				number.</p>
            </li>
            <li>
               <p>
                  <b>PENDING</b> indicates that CloudFront can't determine the ICP recordal status of the 
				CNAME associated with the distribution because there was an error in trying to determine the status. You can try again
				to see if the error is resolved in which case CloudFront returns an APPROVED or SUSPENDED status.</p>
            </li>
         </ul>")
  @as("ICPRecordalStatus")
  icprecordalStatus: option<icprecordalStatus>,
  @ocaml.doc("<p>A domain name associated with a distribution. </p>") @as("CNAME")
  cname: option<string_>,
}
type accessControlExposeHeadersList = array<string_>
type accessControlAllowOriginsList = array<string_>
type accessControlAllowMethodsList = array<responseHeadersPolicyAccessControlAllowMethodsValues>
type accessControlAllowHeadersList = array<string_>
@ocaml.doc("<p>A list of Amazon Web Services accounts whose public keys CloudFront can use to verify the signatures of signed
			URLs and signed cookies.</p>")
type trustedSigners = {
  @ocaml.doc("<p>A list of Amazon Web Services account identifiers.</p>") @as("Items")
  items: option<awsAccountNumberList>,
  @ocaml.doc("<p>The number of Amazon Web Services accounts in the list.</p>") @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>This field is <code>true</code> if any of the Amazon Web Services accounts have public keys that CloudFront can
			use to verify the signatures of signed URLs and signed cookies. If not, this field is
			<code>false</code>.</p>")
  @as("Enabled")
  enabled: boolean_,
}
@ocaml.doc("<p>A list of key groups whose public keys CloudFront can use to verify the signatures of signed
			URLs and signed cookies.</p>")
type trustedKeyGroups = {
  @ocaml.doc("<p>A list of key groups identifiers.</p>") @as("Items")
  items: option<trustedKeyGroupIdList>,
  @ocaml.doc("<p>The number of key groups in the list.</p>") @as("Quantity") quantity: integer_,
  @ocaml.doc("<p>This field is <code>true</code> if any of the key groups in the list have public keys that
			CloudFront can use to verify the signatures of signed URLs and signed cookies. If not, this
			field is <code>false</code>.</p>")
  @as("Enabled")
  enabled: boolean_,
}
type tagList_ = array<tag>
@ocaml.doc("<p> A complex type that contains zero or more <code>Tag</code> elements.</p>")
type tagKeys = {
  @ocaml.doc("<p> A complex type that contains <code>Tag</code> key elements.</p>") @as("Items")
  items: option<tagKeyList>,
}
@ocaml.doc("<p>A complex data type for the status codes that you specify that, when returned by a primary origin, trigger
		CloudFront to failover to a second origin.</p>")
type statusCodes = {
  @ocaml.doc("<p>The items (status codes) for an origin group.</p>") @as("Items")
  items: statusCodeList,
  @ocaml.doc("<p>The number of status codes.</p>") @as("Quantity") quantity: integer_,
}
@ocaml.doc("<p>A configuration for a set of security-related HTTP response headers. CloudFront adds these headers
			to HTTP responses that it sends for requests that match a cache behavior associated with
			this response headers policy.</p>")
type responseHeadersPolicySecurityHeadersConfig = {
  @ocaml.doc("<p>Determines whether CloudFront includes the <code>Strict-Transport-Security</code> HTTP response
			header and the header’s value.</p>
		       <p>For more information about the <code>Strict-Transport-Security</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security\">Strict-Transport-Security</a> in the MDN Web Docs.</p>")
  @as("StrictTransportSecurity")
  strictTransportSecurity: option<responseHeadersPolicyStrictTransportSecurity>,
  @ocaml.doc("<p>Determines whether CloudFront includes the <code>X-Content-Type-Options</code> HTTP response
			header with its value set to <code>nosniff</code>.</p>
		       <p>For more information about the <code>X-Content-Type-Options</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options\">X-Content-Type-Options</a> in the MDN Web Docs.</p>")
  @as("ContentTypeOptions")
  contentTypeOptions: option<responseHeadersPolicyContentTypeOptions>,
  @ocaml.doc("<p>The policy directives and their values that CloudFront includes as values for the
				<code>Content-Security-Policy</code> HTTP response header.</p>
		       <p>For more information about the <code>Content-Security-Policy</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy\">Content-Security-Policy</a> in the MDN Web Docs.</p>")
  @as("ContentSecurityPolicy")
  contentSecurityPolicy: option<responseHeadersPolicyContentSecurityPolicy>,
  @ocaml.doc("<p>Determines whether CloudFront includes the <code>Referrer-Policy</code> HTTP response header and
			the header’s value.</p>
		       <p>For more information about the <code>Referrer-Policy</code> HTTP response header, see
			<a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy\">Referrer-Policy</a> in the MDN Web Docs.</p>")
  @as("ReferrerPolicy")
  referrerPolicy: option<responseHeadersPolicyReferrerPolicy>,
  @ocaml.doc("<p>Determines whether CloudFront includes the <code>X-Frame-Options</code> HTTP response header and
			the header’s value.</p>
		       <p>For more information about the <code>X-Frame-Options</code> HTTP response header, see
			<a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options\">X-Frame-Options</a> in the MDN Web Docs.</p>")
  @as("FrameOptions")
  frameOptions: option<responseHeadersPolicyFrameOptions>,
  @ocaml.doc("<p>Determines whether CloudFront includes the <code>X-XSS-Protection</code> HTTP response header and
			the header’s value.</p>
		       <p>For more information about the <code>X-XSS-Protection</code> HTTP response header, see
			<a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection\">X-XSS-Protection</a> in the MDN Web Docs.</p>")
  @as("XSSProtection")
  xssprotection: option<responseHeadersPolicyXSSProtection>,
}
type responseHeadersPolicyCustomHeaderList = array<responseHeadersPolicyCustomHeader>
@ocaml.doc("<p>A list of HTTP headers that CloudFront includes as values for the
				<code>Access-Control-Expose-Headers</code> HTTP response header.</p>
		       <p>For more information about the <code>Access-Control-Expose-Headers</code> HTTP
			response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Expose-Headers\">Access-Control-Expose-Headers</a> in the MDN Web Docs.</p>")
type responseHeadersPolicyAccessControlExposeHeaders = {
  @ocaml.doc(
    "<p>The list of HTTP headers. You can specify <code>*</code> to expose all headers.</p>"
  )
  @as("Items")
  items: option<accessControlExposeHeadersList>,
  @ocaml.doc("<p>The number of HTTP headers in the list.</p>") @as("Quantity") quantity: integer_,
}
@ocaml.doc("<p>A list of origins (domain names) that CloudFront can use as the value for the
			<code>Access-Control-Allow-Origin</code> HTTP response header.</p>
		       <p>For more information about the <code>Access-Control-Allow-Origin</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin\">Access-Control-Allow-Origin</a> in the MDN Web Docs.</p>")
type responseHeadersPolicyAccessControlAllowOrigins = {
  @ocaml.doc("<p>The list of origins (domain names). You can specify <code>*</code> to allow all
			origins.</p>")
  @as("Items")
  items: accessControlAllowOriginsList,
  @ocaml.doc("<p>The number of origins in the list.</p>") @as("Quantity") quantity: integer_,
}
@ocaml.doc("<p>A list of HTTP methods that CloudFront includes as values for the
				<code>Access-Control-Allow-Methods</code> HTTP response header.</p>
		       <p>For more information about the <code>Access-Control-Allow-Methods</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods\">Access-Control-Allow-Methods</a> in the MDN Web Docs.</p>")
type responseHeadersPolicyAccessControlAllowMethods = {
  @ocaml.doc("<p>The list of HTTP methods. Valid values are:</p>
		       <ul>
            <li>
				           <p>
                  <code>GET</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>DELETE</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>HEAD</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>OPTIONS</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>PATCH</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>POST</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>PUT</code>
               </p>
			         </li>
            <li>
				           <p>
                  <code>ALL</code>
               </p>
			         </li>
         </ul>
		       <p>
            <code>ALL</code> is a special value that includes all of the listed HTTP
			methods.</p>")
  @as("Items")
  items: accessControlAllowMethodsList,
  @ocaml.doc("<p>The number of HTTP methods in the list.</p>") @as("Quantity") quantity: integer_,
}
@ocaml.doc("<p>A list of HTTP header names that CloudFront includes as values for the
				<code>Access-Control-Allow-Headers</code> HTTP response header.</p>
		       <p>For more information about the <code>Access-Control-Allow-Headers</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers\">Access-Control-Allow-Headers</a> in the MDN Web Docs.</p>")
type responseHeadersPolicyAccessControlAllowHeaders = {
  @ocaml.doc(
    "<p>The list of HTTP header names. You can specify <code>*</code> to allow all headers.</p>"
  )
  @as("Items")
  items: accessControlAllowHeadersList,
  @ocaml.doc("<p>The number of HTTP header names in the list.</p>") @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>Contains a list of query string names.</p>")
type queryStringNames = {
  @ocaml.doc("<p>A list of query string names.</p>") @as("Items")
  items: option<queryStringNamesList>,
  @ocaml.doc("<p>The number of query string names in the <code>Items</code> list.</p>")
  @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>This field is deprecated. We recommend that you use a cache policy or an origin
			request policy instead of this field.</p>
		       <p>If you want to include query strings in the cache key, use
			<code>QueryStringsConfig</code> in a cache policy. See
			<code>CachePolicy</code>.</p>
		       <p>If you want to send query strings to the origin but not include them in the cache key,
			use <code>QueryStringsConfig</code> in an origin request policy. See
			<code>OriginRequestPolicy</code>.</p>
		       <p>A complex type that contains information about the query string parameters that you want
			CloudFront to use for caching for a cache behavior.
		</p>")
type queryStringCacheKeys = {
  @ocaml.doc("<p>A list that contains the query string parameters that you want CloudFront to use 
			as a basis for caching for a cache behavior. If <code>Quantity</code> is 0, you can omit 
			<code>Items</code>. </p>")
  @as("Items")
  items: option<queryStringCacheKeysList>,
  @ocaml.doc("<p>The number of <code>whitelisted</code> query string parameters for a cache 
			behavior.</p>")
  @as("Quantity")
  quantity: integer_,
}
type queryArgProfileList = array<queryArgProfile>
type publicKeySummaryList = array<publicKeySummary>
@ocaml.doc(
  "<p>A public key that you can use with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">signed URLs and signed cookies</a>, or with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html\">field-level encryption</a>.</p>"
)
type publicKey = {
  @ocaml.doc(
    "<p>Configuration information about a public key that you can use with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">signed URLs and signed cookies</a>, or with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html\">field-level encryption</a>.</p>"
  )
  @as("PublicKeyConfig")
  publicKeyConfig: publicKeyConfig,
  @ocaml.doc("<p>The date and time when the public key was uploaded.</p>") @as("CreatedTime")
  createdTime: timestamp_,
  @ocaml.doc("<p>The identifier of the public key.</p>") @as("Id") id: string_,
}
@ocaml.doc("<p>A complex type that contains information about the objects that you want to invalidate. 
			For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects\">Specifying the Objects 
				to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>")
type paths = {
  @ocaml.doc("<p>A complex type that contains a list of the paths that you want to invalidate.</p>")
  @as("Items")
  items: option<pathList>,
  @ocaml.doc(
    "<p>The number of invalidation paths specified for the objects that you want to invalidate.</p>"
  )
  @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use 
			when establishing an HTTPS connection with your origin. </p>")
type originSslProtocols = {
  @ocaml.doc("<p>A list that contains allowed SSL/TLS protocols for this distribution.</p>")
  @as("Items")
  items: sslProtocolsList,
  @ocaml.doc("<p>The number of SSL/TLS protocols that you want to allow CloudFront to use when establishing an 
			HTTPS connection with this origin. </p>")
  @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>List of origins in an origin group.</p>")
type originGroupMemberList = array<originGroupMember>
type originCustomHeadersList = array<originCustomHeader>
@ocaml.doc("<p>A monitoring subscription. This structure contains information about whether additional
			CloudWatch metrics are enabled for a given CloudFront distribution.</p>")
type monitoringSubscription = {
  @ocaml.doc("<p>A subscription configuration for additional CloudWatch metrics.</p>")
  @as("RealtimeMetricsSubscriptionConfig")
  realtimeMetricsSubscriptionConfig: option<realtimeMetricsSubscriptionConfig>,
}
type lambdaFunctionAssociationList = array<lambdaFunctionAssociation>
@ocaml.doc("<p>A list of CloudFront key pair identifiers.</p>")
type keyPairIds = {
  @ocaml.doc("<p>A list of CloudFront key pair identifiers.</p>") @as("Items")
  items: option<keyPairIdList>,
  @ocaml.doc("<p>The number of key pair identifiers in the list.</p>") @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>A key group configuration.</p>
		       <p>A key group contains a list of public keys that you can use with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">CloudFront signed URLs and signed cookies</a>.</p>")
type keyGroupConfig = {
  @ocaml.doc("<p>A comment to describe the key group. The comment cannot be longer than 128
			characters.</p>")
  @as("Comment")
  comment: option<string_>,
  @ocaml.doc("<p>A list of the identifiers of the public keys in the key group.</p>") @as("Items")
  items: publicKeyIdList,
  @ocaml.doc("<p>A name to identify the key group.</p>") @as("Name") name: string_,
}
type invalidationSummaryList = array<invalidationSummary>
@ocaml.doc("<p>Contains a list of HTTP header names.</p>")
type headers = {
  @ocaml.doc("<p>A list of HTTP header names.</p>") @as("Items") items: option<headerList>,
  @ocaml.doc("<p>The number of header names in the <code>Items</code> list.</p>") @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>A complex type that controls the countries in which your content is distributed. CloudFront 
			determines the location of your users using <code>MaxMind</code> GeoIP databases. </p>")
type geoRestriction = {
  @ocaml.doc("<p> A complex type that contains a <code>Location</code> element for each country in which 
			you want CloudFront either to distribute your content (<code>whitelist</code>) or not distribute 
			your content (<code>blacklist</code>).</p> 
		       <p>The <code>Location</code> element is a two-letter, uppercase country code for a country 
			that you want to include in your <code>blacklist</code> or <code>whitelist</code>. Include one 
				<code>Location</code> element for each country.</p> 
		       <p>CloudFront and <code>MaxMind</code> both use <code>ISO 3166</code> country codes. For the 
			current list of countries and the corresponding codes, see <code>ISO 3166-1-alpha-2</code> 
			code on the <i>International Organization for Standardization</i> website. You 
			can also refer to the country list on the CloudFront console, which includes both country names and 
			codes.</p>")
  @as("Items")
  items: option<locationList>,
  @ocaml.doc("<p>When geo restriction is <code>enabled</code>, this is the number of countries in your 
				<code>whitelist</code> or <code>blacklist</code>. Otherwise, when it is not enabled, 
				<code>Quantity</code> is <code>0</code>, and you can omit <code>Items</code>.</p>")
  @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>The method that you want to use to restrict distribution of your content by 
			country:</p> 
		       <ul>
            <li> 
				           <p>
                  <code>none</code>: No geo restriction is enabled, meaning access to content is not 
					restricted by client geo location.</p> 
			         </li>
            <li> 
				           <p>
                  <code>blacklist</code>: The <code>Location</code> elements specify the countries in 
					which you don't want CloudFront to distribute your content.</p> 
			         </li>
            <li> 
				           <p>
                  <code>whitelist</code>: The <code>Location</code> elements specify the countries in 
					which you want CloudFront to distribute your content.</p> 
			         </li>
         </ul>")
  @as("RestrictionType")
  restrictionType: geoRestrictionType,
}
@ocaml.doc("<p>Contains configuration information and metadata about a CloudFront function.</p>")
type functionSummary = {
  @ocaml.doc("<p>Contains metadata about a CloudFront function.</p>") @as("FunctionMetadata")
  functionMetadata: functionMetadata,
  @ocaml.doc("<p>Contains configuration information about a CloudFront function.</p>")
  @as("FunctionConfig")
  functionConfig: functionConfig,
  @ocaml.doc("<p>The status of the CloudFront function.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The name of the CloudFront function.</p>") @as("Name") name: functionName,
}
type functionAssociationList = array<functionAssociation>
@ocaml.doc(
  "<p>A complex data type that includes the field patterns to match for field-level encryption.</p>"
)
type fieldPatterns = {
  @ocaml.doc("<p>An array of the field-level encryption field patterns.</p>") @as("Items")
  items: option<fieldPatternList>,
  @ocaml.doc("<p>The number of field-level encryption field patterns.</p>") @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>Contains information about the Amazon Kinesis data stream where you are sending real-time
			log data in a real-time log configuration.</p>")
type endPoint = {
  @ocaml.doc("<p>Contains information about the Amazon Kinesis data stream where you are sending
			real-time log data.</p>")
  @as("KinesisStreamConfig")
  kinesisStreamConfig: option<kinesisStreamConfig>,
  @ocaml.doc("<p>The type of data stream where you are sending real-time log data. The only valid value is
			<code>Kinesis</code>.</p>")
  @as("StreamType")
  streamType: string_,
}
@ocaml.doc("<p>A list of distribution IDs.</p>")
type distributionIdList = {
  @ocaml.doc("<p>Contains the distribution IDs in the list.</p>") @as("Items")
  items: option<distributionIdListSummary>,
  @ocaml.doc("<p>The total number of distribution IDs returned in the response.</p>")
  @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>A flag that indicates whether more distribution IDs remain to be listed. If your
			results were truncated, you can make a subsequent request using the <code>Marker</code>
			request field to retrieve more distribution IDs in the list.</p>")
  @as("IsTruncated")
  isTruncated: boolean_,
  @ocaml.doc("<p>The maximum number of distribution IDs requested.</p>") @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>Contains the value that you should use in the <code>Marker</code> field of a
			subsequent request to continue listing distribution IDs where you left off.</p>")
  @as("NextMarker")
  nextMarker: option<string_>,
  @ocaml.doc("<p>The value provided in the <code>Marker</code> request field.</p>") @as("Marker")
  marker: string_,
}
type customErrorResponseList = array<customErrorResponse>
@ocaml.doc("<p>Contains a list of cookie names.</p>")
type cookieNames = {
  @ocaml.doc("<p>A list of cookie names.</p>") @as("Items") items: option<cookieNameList>,
  @ocaml.doc("<p>The number of cookie names in the <code>Items</code> list.</p>") @as("Quantity")
  quantity: integer_,
}
type contentTypeProfileList = array<contentTypeProfile>
type conflictingAliases = array<conflictingAlias>
type cloudFrontOriginAccessIdentitySummaryList = array<cloudFrontOriginAccessIdentitySummary>
@ocaml.doc("<p>CloudFront origin access identity.</p>")
type cloudFrontOriginAccessIdentity = {
  @ocaml.doc("<p>The current configuration information for the identity. </p>")
  @as("CloudFrontOriginAccessIdentityConfig")
  cloudFrontOriginAccessIdentityConfig: option<cloudFrontOriginAccessIdentityConfig>,
  @ocaml.doc("<p>The Amazon S3 canonical user ID for the origin access identity, used when giving the origin 
			access identity read permission to an object in Amazon S3. </p>")
  @as("S3CanonicalUserId")
  s3CanonicalUserId: string_,
  @ocaml.doc("<p>The ID for the origin access identity, for example, <code>E74FTE3AJFJ256A</code>. 
		</p>")
  @as("Id")
  id: string_,
}
@ocaml.doc("<p>A complex type that controls whether CloudFront caches the response to requests using the 
			specified HTTP methods. There are two choices:</p> 
		       <ul>
            <li> 
				           <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p> 
			         </li>
            <li> 
				           <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and 
						<code>OPTIONS</code> requests.</p> 
			         </li>
         </ul> 
		       <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward 
			Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the 
			responses to be cached correctly. </p>")
type cachedMethods = {
  @ocaml.doc("<p>A complex type that contains the HTTP methods that you want CloudFront to cache responses 
			to.</p>")
  @as("Items")
  items: methodsList,
  @ocaml.doc("<p>The number of HTTP methods for which you want CloudFront to cache responses. Valid values are 
				<code>2</code> (for caching responses to <code>GET</code> and <code>HEAD</code> requests) 
			and <code>3</code> (for caching responses to <code>GET</code>, <code>HEAD</code>, and 
				<code>OPTIONS</code> requests).</p>")
  @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>A complex type that contains information about CNAMEs (alternate domain names), if any, 
			for this distribution. </p>")
type aliases = {
  @ocaml.doc("<p>A complex type that contains the CNAME aliases, if any, that you want to associate with 
			this distribution.</p>")
  @as("Items")
  items: option<aliasList>,
  @ocaml.doc("<p>The number of CNAME aliases, if any, that you want to associate with this 
			distribution.</p>")
  @as("Quantity")
  quantity: integer_,
}
type aliasICPRecordals = array<aliasICPRecordal>
@ocaml.doc(
  "<p>Contains the result of testing a CloudFront function with <code>TestFunction</code>.</p>"
)
type testResult = {
  @ocaml.doc("<p>The event object returned by the function. For more information about the structure of the
			event object, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/functions-event-structure.html\">Event object
			structure</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("FunctionOutput")
  functionOutput: option<sensitiveStringType>,
  @ocaml.doc("<p>If the result of testing the function was an error, this field contains the error
			message.</p>")
  @as("FunctionErrorMessage")
  functionErrorMessage: option<sensitiveStringType>,
  @ocaml.doc(
    "<p>Contains the log lines that the function wrote (if any) when running the test.</p>"
  )
  @as("FunctionExecutionLogs")
  functionExecutionLogs: option<functionExecutionLogList>,
  @ocaml.doc("<p>The amount of time that the function took to run as a percentage of the maximum
			allowed time. For example, a compute utilization of 35 means that the function completed
			in 35% of the maximum allowed time.</p>")
  @as("ComputeUtilization")
  computeUtilization: option<string_>,
  @ocaml.doc("<p>Contains configuration information and metadata about the CloudFront function that was
			tested.</p>")
  @as("FunctionSummary")
  functionSummary: option<functionSummary>,
}
@ocaml.doc("<p> A complex type that contains zero or more <code>Tag</code> elements.</p>")
type tags = {
  @ocaml.doc("<p> A complex type that contains <code>Tag</code> elements.</p>") @as("Items")
  items: option<tagList_>,
}
@ocaml.doc("<p> A summary of the information for a CloudFront streaming distribution.</p>")
type streamingDistributionSummary = {
  @ocaml.doc("<p>Whether the distribution is enabled to accept end user requests for content.</p>")
  @as("Enabled")
  enabled: boolean_,
  @ocaml.doc("<p>A complex type that contains information about price class for this streaming 
			distribution. </p>")
  @as("PriceClass")
  priceClass: priceClass,
  @ocaml.doc("<p>The comment originally specified when this distribution was created.</p>")
  @as("Comment")
  comment: string_,
  @ocaml.doc("<p>A complex type that specifies the Amazon Web Services accounts, if any, that you want to allow to 
			create signed URLs for private content. If you want to require signed URLs in requests for 
			objects in the target origin that match the <code>PathPattern</code> for this cache behavior, 
			specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for 
				<code>Quantity</code> and <code>Items</code>.If you don't want to require signed URLs in 
			requests for objects that match <code>PathPattern</code>, specify <code>false</code> for 
				<code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>. 
			To add, change, or remove one or more trusted signers, change <code>Enabled</code> to 
				<code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as 
			applicable, and specify all of the trusted signers that you want to include in the updated 
			distribution.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private 
			Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>")
  @as("TrustedSigners")
  trustedSigners: trustedSigners,
  @ocaml.doc("<p>A complex type that contains information about CNAMEs (alternate domain names), if any, 
			for this streaming distribution.</p>")
  @as("Aliases")
  aliases: aliases,
  @ocaml.doc("<p>A complex type that contains information about the Amazon S3 bucket from which you want 
			CloudFront to get your media files for distribution.</p>")
  @as("S3Origin")
  s3Origin: s3Origin,
  @ocaml.doc(
    "<p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>"
  )
  @as("DomainName")
  domainName: string_,
  @ocaml.doc("<p>The date and time the distribution was last modified.</p>") @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p> Indicates the current status of the distribution. When the status is 
			<code>Deployed</code>, the distribution's information is fully propagated throughout the 
			Amazon CloudFront system.</p>")
  @as("Status")
  status: string_,
  @ocaml.doc("<p> The ARN (Amazon Resource Name) for the streaming distribution. For example: 
				<code>arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5</code>, where 
				<code>123456789012</code> is your Amazon Web Services account ID.</p>")
  @as("ARN")
  arn: string_,
  @ocaml.doc(
    "<p>The identifier for the distribution, for example, <code>EDFDVBD632BHDS5</code>.</p>"
  )
  @as("Id")
  id: string_,
}
@ocaml.doc("<p>The RTMP distribution's configuration information.</p>")
type streamingDistributionConfig = {
  @ocaml.doc("<p>Whether the streaming distribution is enabled to accept user requests for 
			content.</p>")
  @as("Enabled")
  enabled: boolean_,
  @ocaml.doc("<p>A complex type that contains information about price class for this streaming 
			distribution. </p>")
  @as("PriceClass")
  priceClass: option<priceClass>,
  @ocaml.doc("<p>A complex type that specifies any Amazon Web Services accounts that you want to permit to create signed 
			URLs for private content. If you want the distribution to use signed URLs, include this 
			element; if you want the distribution to use public URLs, remove this element. For more 
			information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through 
				CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>")
  @as("TrustedSigners")
  trustedSigners: trustedSigners,
  @ocaml.doc("<p>A complex type that controls whether access logs are written for the streaming 
			distribution. </p>")
  @as("Logging")
  logging: option<streamingLoggingConfig>,
  @ocaml.doc("<p>Any comments you want to include about the streaming distribution. </p>")
  @as("Comment")
  comment: string_,
  @ocaml.doc("<p>A complex type that contains information about CNAMEs (alternate domain names), if any, 
			for this streaming distribution. </p>")
  @as("Aliases")
  aliases: option<aliases>,
  @ocaml.doc("<p>A complex type that contains information about the Amazon S3 bucket from which you want 
			CloudFront to get your media files for distribution. </p>")
  @as("S3Origin")
  s3Origin: s3Origin,
  @ocaml.doc("<p>A unique value (for example, a date-time stamp) that ensures that the request can't be 
			replayed.</p>
		       <p>If the value of <code>CallerReference</code> is new (regardless of the content of the 
			<code>StreamingDistributionConfig</code> object), CloudFront creates a new distribution.</p> 
		       <p>If <code>CallerReference</code> is a value that you already sent in a previous request to 
			create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>")
  @as("CallerReference")
  callerReference: string_,
}
@ocaml.doc("<p>A list of Amazon Web Services accounts and the active CloudFront key pairs in each account that CloudFront can use to
			verify the signatures of signed URLs and signed cookies.</p>")
type signer = {
  @ocaml.doc("<p>A list of CloudFront key pair identifiers.</p>") @as("KeyPairIds")
  keyPairIds: option<keyPairIds>,
  @ocaml.doc("<p>An Amazon Web Services account number that contains active CloudFront key pairs that CloudFront can use to verify the
			signatures of signed URLs and signed cookies. If the Amazon Web Services account that owns the key pairs
			is the same account that owns the CloudFront distribution, the value of this field is
			<code>self</code>.</p>")
  @as("AwsAccountNumber")
  awsAccountNumber: option<string_>,
}
@ocaml.doc("<p>A complex type that identifies ways in which you want to restrict distribution of your 
			content.</p>")
type restrictions = {
  @ocaml.doc("<p>A complex type that controls the countries in which your content is distributed. CloudFront 
			determines the location of your users using <code>MaxMind</code> GeoIP databases.</p>")
  @as("GeoRestriction")
  geoRestriction: geoRestriction,
}
@ocaml.doc("<p>A list of HTTP response header names and their values. CloudFront includes these headers in HTTP
			responses that it sends for requests that match a cache behavior that’s associated with
			this response headers policy.</p>")
type responseHeadersPolicyCustomHeadersConfig = {
  @ocaml.doc("<p>The list of HTTP response headers and their values.</p>") @as("Items")
  items: option<responseHeadersPolicyCustomHeaderList>,
  @ocaml.doc("<p>The number of HTTP response headers in the list.</p>") @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>A configuration for a set of HTTP response headers that are used for cross-origin resource
			sharing (CORS). CloudFront adds these headers to HTTP responses that it sends for CORS
			requests that match a cache behavior associated with this response headers
			policy.</p>
		       <p>For more information about CORS, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS\">Cross-Origin Resource
				Sharing (CORS)</a> in the MDN Web Docs.</p>")
type responseHeadersPolicyCorsConfig = {
  @ocaml.doc("<p>A Boolean that determines whether CloudFront overrides HTTP response headers received from the
			origin with the ones specified in this response headers policy.</p>")
  @as("OriginOverride")
  originOverride: boolean_,
  @ocaml.doc("<p>A number that CloudFront uses as the value for the <code>Access-Control-Max-Age</code> HTTP
			response header.</p>
		       <p>For more information about the <code>Access-Control-Max-Age</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Max-Age\">Access-Control-Max-Age</a> in the MDN Web Docs.</p>")
  @as("AccessControlMaxAgeSec")
  accessControlMaxAgeSec: option<integer_>,
  @ocaml.doc("<p>A list of HTTP headers that CloudFront includes as values for the
				<code>Access-Control-Expose-Headers</code> HTTP response header.</p>
		       <p>For more information about the <code>Access-Control-Expose-Headers</code> HTTP
			response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Expose-Headers\">Access-Control-Expose-Headers</a> in the MDN Web Docs.</p>")
  @as("AccessControlExposeHeaders")
  accessControlExposeHeaders: option<responseHeadersPolicyAccessControlExposeHeaders>,
  @ocaml.doc("<p>A Boolean that CloudFront uses as the value for the <code>Access-Control-Allow-Credentials</code>
			HTTP response header.</p>
		       <p>For more information about the <code>Access-Control-Allow-Credentials</code> HTTP
			response header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Credentials\">Access-Control-Allow-Credentials</a> in the MDN Web Docs.</p>")
  @as("AccessControlAllowCredentials")
  accessControlAllowCredentials: boolean_,
  @ocaml.doc("<p>A list of HTTP methods that CloudFront includes as values for the
				<code>Access-Control-Allow-Methods</code> HTTP response header.</p>
		       <p>For more information about the <code>Access-Control-Allow-Methods</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods\">Access-Control-Allow-Methods</a> in the MDN Web Docs.</p>")
  @as("AccessControlAllowMethods")
  accessControlAllowMethods: responseHeadersPolicyAccessControlAllowMethods,
  @ocaml.doc("<p>A list of HTTP header names that CloudFront includes as values for the
				<code>Access-Control-Allow-Headers</code> HTTP response header.</p>
		       <p>For more information about the <code>Access-Control-Allow-Headers</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers\">Access-Control-Allow-Headers</a> in the MDN Web Docs.</p>")
  @as("AccessControlAllowHeaders")
  accessControlAllowHeaders: responseHeadersPolicyAccessControlAllowHeaders,
  @ocaml.doc("<p>A list of origins (domain names) that CloudFront can use as the value for the
			<code>Access-Control-Allow-Origin</code> HTTP response header.</p>
		       <p>For more information about the <code>Access-Control-Allow-Origin</code> HTTP response
			header, see <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin\">Access-Control-Allow-Origin</a> in the MDN Web Docs.</p>")
  @as("AccessControlAllowOrigins")
  accessControlAllowOrigins: responseHeadersPolicyAccessControlAllowOrigins,
}
@ocaml.doc("<p>Query argument-profile mapping for field-level encryption.</p>")
type queryArgProfiles = {
  @ocaml.doc(
    "<p>Number of items for query argument-profile mapping for field-level encryption.</p>"
  )
  @as("Items")
  items: option<queryArgProfileList>,
  @ocaml.doc(
    "<p>Number of profiles for query argument-profile mapping for field-level encryption.</p>"
  )
  @as("Quantity")
  quantity: integer_,
}
@ocaml.doc(
  "<p>A list of public keys that you can use with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">signed URLs and signed cookies</a>, or with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html\">field-level encryption</a>.</p>"
)
type publicKeyList = {
  @ocaml.doc("<p>A list of public keys.</p>") @as("Items") items: option<publicKeySummaryList>,
  @ocaml.doc("<p>The number of public keys in the list.</p>") @as("Quantity") quantity: integer_,
  @ocaml.doc("<p>The maximum number of public keys you want in the response.</p>") @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If there are more elements to be listed, this element is present and contains
			the value that you can use for the <code>Marker</code> request parameter to continue
			listing your public keys where you left off.</p>")
  @as("NextMarker")
  nextMarker: option<string_>,
}
@ocaml.doc("<p>An object that determines whether any URL query strings in viewer requests (and if so, which
			query strings) are included in requests that CloudFront sends to the origin.</p>")
type originRequestPolicyQueryStringsConfig = {
  @ocaml.doc("<p>Contains a list of the query strings in viewer requests that are included in requests that
			CloudFront sends to the origin.</p>")
  @as("QueryStrings")
  queryStrings: option<queryStringNames>,
  @ocaml.doc("<p>Determines whether any URL query strings in viewer requests are included in requests that
			CloudFront sends to the origin. Valid values are:</p>
		       <ul>
            <li>
				           <p>
                  <code>none</code> – Query strings in viewer requests are not included in requests that
					CloudFront sends to the origin. Even when this field is set to <code>none</code>, any
					query strings that are listed in a <code>CachePolicy</code>
					             <i>are</i> included in origin requests.</p>
			         </li>
            <li>
				           <p>
                  <code>whitelist</code> – The query strings in viewer requests that are listed in the
					<code>QueryStringNames</code> type are included in requests that CloudFront sends to
					the origin.</p>
			         </li>
            <li>
				           <p>
                  <code>all</code> – All query strings in viewer requests are included in requests that CloudFront
					sends to the origin.</p>
			         </li>
         </ul>")
  @as("QueryStringBehavior")
  queryStringBehavior: originRequestPolicyQueryStringBehavior,
}
@ocaml.doc("<p>An object that determines whether any HTTP headers (and if so, which headers) are included
			in requests that CloudFront sends to the origin.</p>")
type originRequestPolicyHeadersConfig = {
  @as("Headers") headers: option<headers>,
  @ocaml.doc("<p>Determines whether any HTTP headers are included in requests that CloudFront sends to the origin.
			Valid values are:</p>
		       <ul>
            <li>
				           <p>
                  <code>none</code> – HTTP headers are not included in requests that CloudFront sends to the
					origin. Even when this field is set to <code>none</code>, any headers that are
					listed in a <code>CachePolicy</code> 
                  <i>are</i> included in origin
					requests.</p>
			         </li>
            <li>
				           <p>
                  <code>whitelist</code> – The HTTP headers that are listed in the <code>Headers</code> type
					are included in requests that CloudFront sends to the origin.</p>
			         </li>
            <li>
				           <p>
                  <code>allViewer</code> – All HTTP headers in viewer requests are included in requests that
					CloudFront sends to the origin.</p>
			         </li>
            <li>
				           <p>
                  <code>allViewerAndWhitelistCloudFront</code> – All HTTP headers in viewer requests and the
					additional CloudFront headers that are listed in the <code>Headers</code> type are
					included in requests that CloudFront sends to the origin. The additional headers are
					added by CloudFront.</p>
			         </li>
         </ul>")
  @as("HeaderBehavior")
  headerBehavior: originRequestPolicyHeaderBehavior,
}
@ocaml.doc("<p>An object that determines whether any cookies in viewer requests (and if so, which cookies)
			are included in requests that CloudFront sends to the origin.</p>")
type originRequestPolicyCookiesConfig = {
  @as("Cookies") cookies: option<cookieNames>,
  @ocaml.doc("<p>Determines whether cookies in viewer requests are included in requests that CloudFront sends to
			the origin. Valid values are:</p>
		       <ul>
            <li>
				           <p>
                  <code>none</code> – Cookies in viewer requests are not included in requests that CloudFront
					sends to the origin. Even when this field is set to <code>none</code>, any
					cookies that are listed in a <code>CachePolicy</code> 
                  <i>are</i>
					included in origin requests.</p>
			         </li>
            <li>
				           <p>
                  <code>whitelist</code> – The cookies in viewer requests that are listed in the
					<code>CookieNames</code> type are included in requests that CloudFront sends to the
					origin.</p>
			         </li>
            <li>
				           <p>
                  <code>all</code> – All cookies in viewer requests are included in requests that CloudFront sends
					to the origin.</p>
			         </li>
         </ul>")
  @as("CookieBehavior")
  cookieBehavior: originRequestPolicyCookieBehavior,
}
@ocaml.doc("<p>A complex data type for the origins included in an origin group.</p>")
type originGroupMembers = {
  @ocaml.doc("<p>Items (origins) in an origin group.</p>") @as("Items")
  items: originGroupMemberList,
  @ocaml.doc("<p>The number of origins in an origin group.</p>") @as("Quantity") quantity: integer_,
}
@ocaml.doc("<p>A complex data type that includes information about the failover criteria for an origin group, including
		the status codes for which CloudFront will failover from the primary origin to the second origin.</p>")
type originGroupFailoverCriteria = {
  @ocaml.doc("<p>The status codes that, when returned from the primary origin, will trigger CloudFront to failover 
		to the second origin.</p>")
  @as("StatusCodes")
  statusCodes: statusCodes,
}
@ocaml.doc("<p>A complex type that specifies a list of Lambda@Edge functions associations for a cache 
			behavior.</p>
 
		       <p>If you want to invoke one or more Lambda@Edge functions triggered by requests that match the 
				<code>PathPattern</code> of the cache behavior, specify the applicable values for 
				<code>Quantity</code> and <code>Items</code>. Note that there can be up to 4 
				<code>LambdaFunctionAssociation</code> items in this list (one for each possible value of 
				<code>EventType</code>) and each <code>EventType</code> can be associated with only one function.</p>
 
		       <p>If you don't want to invoke any Lambda@Edge functions for the requests that match 
				<code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code> and omit 
				<code>Items</code>. </p>")
type lambdaFunctionAssociations = {
  @ocaml.doc("<p>
            <b>Optional</b>: A complex type that contains <code>LambdaFunctionAssociation</code> items 
			for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>")
  @as("Items")
  items: option<lambdaFunctionAssociationList>,
  @ocaml.doc("<p>The number of Lambda@Edge function associations for this cache behavior.</p>")
  @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>A key group.</p>
		       <p>A key group contains a list of public keys that you can use with <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">CloudFront signed URLs and signed cookies</a>.</p>")
type keyGroup = {
  @ocaml.doc("<p>The key group configuration.</p>") @as("KeyGroupConfig")
  keyGroupConfig: keyGroupConfig,
  @ocaml.doc("<p>The date and time when the key group was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p>The identifier for the key group.</p>") @as("Id") id: string_,
}
@ocaml.doc("<p>A list of identifiers for the public keys that CloudFront can use to verify the
			signatures of signed URLs and signed cookies.</p>")
type kgkeyPairIds = {
  @as("KeyPairIds") keyPairIds: option<keyPairIds>,
  @ocaml.doc("<p>The identifier of the key group that contains the public keys.</p>")
  @as("KeyGroupId")
  keyGroupId: option<string_>,
}
@ocaml.doc("<p>The <code>InvalidationList</code> complex type describes the list of invalidation 
			objects. For more information about invalidation, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html\">Invalidating Objects (Web Distributions Only)</a> in 
			the <i>Amazon CloudFront Developer Guide</i>.</p>")
type invalidationList = {
  @ocaml.doc("<p>A complex type that contains one <code>InvalidationSummary</code> element for each 
			invalidation batch created by the current Amazon Web Services account.</p>")
  @as("Items")
  items: option<invalidationSummaryList>,
  @ocaml.doc("<p>The number of invalidation batches that were created by the current Amazon Web Services account. 
		</p>")
  @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>A flag that indicates whether more invalidation batch requests remain to be listed. If 
			your results were truncated, you can make a follow-up pagination request using the 
				<code>Marker</code> request parameter to retrieve more invalidation batches in the 
			list.</p>")
  @as("IsTruncated")
  isTruncated: boolean_,
  @ocaml.doc("<p>The value that you provided for the <code>MaxItems</code> request parameter.</p>")
  @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains 
			the value that you can use for the <code>Marker</code> request parameter to continue listing 
			your invalidation batches where they left off.</p>")
  @as("NextMarker")
  nextMarker: option<string_>,
  @ocaml.doc("<p>The value that you provided for the <code>Marker</code> request parameter.</p>")
  @as("Marker")
  marker: string_,
}
@ocaml.doc("<p>An invalidation batch.</p>")
type invalidationBatch = {
  @ocaml.doc("<p>A value that you specify to uniquely identify an invalidation request. CloudFront uses the 
			value to prevent you from accidentally resubmitting an identical request. Whenever you create 
			a new invalidation request, you must specify a new value for <code>CallerReference</code> and 
			change other values in the request as applicable. One way to ensure that the value of 
				<code>CallerReference</code> is unique is to use a <code>timestamp</code>, for example, 
				<code>20120301090000</code>.</p> 
		       <p>If you make a second invalidation request with the same value for 
				<code>CallerReference</code>, and if the rest of the request is the same, CloudFront doesn't 
			create a new invalidation request. Instead, CloudFront returns information about the invalidation 
			request that you previously created with the same <code>CallerReference</code>.</p> 
		       <p>If <code>CallerReference</code> is a value you already sent in a previous invalidation 
			batch request but the content of any <code>Path</code> is different from the original request, 
			CloudFront returns an <code>InvalidationBatchAlreadyExists</code> error.</p>")
  @as("CallerReference")
  callerReference: string_,
  @ocaml.doc("<p>A complex type that contains information about the objects that you want to invalidate. 
			For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects\">Specifying the Objects 
				to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>")
  @as("Paths")
  paths: paths,
}
type functionSummaryList = array<functionSummary>
@ocaml.doc("<p>A list of CloudFront functions that are associated with a cache behavior in a CloudFront distribution.
			CloudFront functions must be published to the <code>LIVE</code> stage to associate them with a
			cache behavior.</p>")
type functionAssociations = {
  @ocaml.doc("<p>The CloudFront functions that are associated with a cache behavior in a CloudFront distribution.  CloudFront
			functions must be published to the <code>LIVE</code> stage to associate them with a
			cache behavior.</p>")
  @as("Items")
  items: option<functionAssociationList>,
  @ocaml.doc("<p>The number of CloudFront functions in the list.</p>") @as("Quantity")
  quantity: integer_,
}
type endPointList = array<endPoint>
@ocaml.doc(
  "<p>Complex data type for field-level encryption profiles that includes the encryption key and field pattern specifications. </p>"
)
type encryptionEntity = {
  @ocaml.doc("<p>Field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted. You can provide the 
			full field name, or any beginning characters followed by a wildcard (*). You can't overlap field patterns. For example, you can't have
			both ABC* and AB*. Note that field patterns are case-sensitive. </p>")
  @as("FieldPatterns")
  fieldPatterns: fieldPatterns,
  @ocaml.doc("<p>The provider associated with the public key being used for encryption. This value must also be provided with the private key
		for applications to be able to decrypt data.</p>")
  @as("ProviderId")
  providerId: string_,
  @ocaml.doc("<p>The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match
			the patterns. </p>")
  @as("PublicKeyId")
  publicKeyId: string_,
}
@ocaml.doc("<p>A custom origin. A custom origin is any origin that is <i>not</i> an Amazon S3
			bucket, with one exception. An Amazon S3 bucket that is <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html\">configured with
			static website hosting</a> 
            <i>is</i> a custom origin.</p>")
type customOriginConfig = {
  @ocaml.doc("<p>Specifies how long, in seconds, CloudFront persists its connection to the origin. The minimum
			timeout is 1 second, the maximum is 60 seconds, and the default (if you don’t specify
			otherwise) is 5 seconds.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginKeepaliveTimeout\">Origin Keep-alive Timeout</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("OriginKeepaliveTimeout")
  originKeepaliveTimeout: option<integer_>,
  @ocaml.doc("<p>Specifies how long, in seconds, CloudFront waits for a response from the origin. This is also
			known as the <i>origin response timeout</i>. The minimum timeout is 1
			second, the maximum is 60 seconds, and the default (if you don’t specify otherwise) is
			30 seconds.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout\">Origin Response Timeout</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("OriginReadTimeout")
  originReadTimeout: option<integer_>,
  @ocaml.doc("<p>Specifies the minimum SSL/TLS protocol that CloudFront uses when connecting to your origin over
			HTTPS. Valid values include <code>SSLv3</code>, <code>TLSv1</code>,
			<code>TLSv1.1</code>, and <code>TLSv1.2</code>.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginSSLProtocols\">Minimum Origin SSL Protocol</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("OriginSslProtocols")
  originSslProtocols: option<originSslProtocols>,
  @ocaml.doc("<p>Specifies the protocol (HTTP or HTTPS) that CloudFront uses to connect to the origin. Valid values
			are:</p>
		       <ul>
            <li>
				           <p>
                  <code>http-only</code> – CloudFront always uses HTTP to connect to the
					origin.</p>
			         </li>
            <li>
				           <p>
                  <code>match-viewer</code> – CloudFront connects to the origin using the same
					protocol that the viewer used to connect to CloudFront.</p>
			         </li>
            <li>
				           <p>
                  <code>https-only</code> – CloudFront always uses HTTPS to connect to the
					origin.</p>
			         </li>
         </ul>")
  @as("OriginProtocolPolicy")
  originProtocolPolicy: originProtocolPolicy,
  @ocaml.doc("<p>The HTTPS port that CloudFront uses to connect to the origin. Specify the HTTPS port that the
			origin listens on.</p>")
  @as("HTTPSPort")
  httpsport: integer_,
  @ocaml.doc("<p>The HTTP port that CloudFront uses to connect to the origin. Specify the HTTP port that the origin
			listens on.</p>")
  @as("HTTPPort")
  httpport: integer_,
}
@ocaml.doc("<p>A complex type that contains the list of Custom Headers for each origin. </p>")
type customHeaders = {
  @ocaml.doc("<p>
            <b>Optional</b>: A list that contains one 
				<code>OriginCustomHeader</code> element for each custom header that you want CloudFront to forward 
			to the origin. If Quantity is <code>0</code>, omit <code>Items</code>.</p>")
  @as("Items")
  items: option<originCustomHeadersList>,
  @ocaml.doc("<p>The number of custom headers, if any, for this distribution.</p>") @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>A complex type that controls:</p> 
		       <ul>
            <li> 
				           <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error 
					messages before returning the response to the viewer.</p> 
			         </li>
            <li> 
				           <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> 
			         </li>
         </ul> 
		       <p>For more information about custom error pages, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the 
				<i>Amazon CloudFront Developer Guide</i>.</p>")
type customErrorResponses = {
  @ocaml.doc("<p>A complex type that contains a <code>CustomErrorResponse</code> element for each HTTP 
			status code for which you want to specify a custom error page and/or a caching duration. 
		</p>")
  @as("Items")
  items: option<customErrorResponseList>,
  @ocaml.doc("<p>The number of HTTP status codes for which you want to specify a custom error page 
			and/or a caching duration. If <code>Quantity</code> is <code>0</code>, you can omit 
				<code>Items</code>.</p>")
  @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>This field is deprecated. We recommend that you use a cache policy or an origin
			request policy instead of this field.</p>
		       <p>If you want to include cookies in the cache key, use <code>CookiesConfig</code> in a
			cache policy. See <code>CachePolicy</code>.</p>
		       <p>If you want to send cookies to the origin but not include them in the cache key, use
			<code>CookiesConfig</code> in an origin request policy. See
			<code>OriginRequestPolicy</code>.</p> 
		       <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin 
			and, if so, which ones. For more information about forwarding cookies to the origin, see 
			<a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html\">Caching Content 
				Based on Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
type cookiePreference = {
  @ocaml.doc("<p>This field is deprecated. We recommend that you use a cache policy or an origin
			request policy instead of this field.</p>
		       <p>If you want to include cookies in the cache key, use a cache policy. For more information,
			see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you want to send cookies to the origin but not include them in the cache key, use an
			origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p> 
		       <p>Required if you specify <code>whitelist</code> for the value of <code>Forward</code>. 
			A complex type that specifies how many different cookies you want CloudFront to forward to the 
			origin for this cache behavior and, if you want to forward selected cookies, the names of 
			those cookies.</p> 
		       <p>If you specify <code>all</code> or <code>none</code> for the value of <code>Forward</code>, omit 
				<code>WhitelistedNames</code>. If you change the value of <code>Forward</code> from 
			<code>whitelist</code> to <code>all</code> or <code>none</code> and you don't delete the <code>WhitelistedNames</code> 
			element and its child elements, CloudFront deletes them automatically.</p> 
		       <p>For the current limit on the number of cookie names that you can whitelist for each 
			cache behavior, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/xrefaws_service_limits.html#limits_cloudfront\">
				CloudFront Limits</a> in the <i>Amazon Web Services General Reference</i>.</p>")
  @as("WhitelistedNames")
  whitelistedNames: option<cookieNames>,
  @ocaml.doc("<p>This field is deprecated. We recommend that you use a cache policy or an origin
			request policy instead of this field.</p>
		       <p>If you want to include cookies in the cache key, use a cache policy. For more information,
			see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you want to send cookies to the origin but not include them in the cache key, use origin
			request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p> 
		       <p>Specifies which cookies to forward to the origin for this cache behavior: all, none, or 
			the list of cookies specified in the <code>WhitelistedNames</code> complex type.</p> 
		       <p>Amazon S3 doesn't process cookies. When the cache behavior is forwarding requests to an 
			Amazon S3 origin, specify none for the <code>Forward</code> element.</p>")
  @as("Forward")
  forward: itemSelection,
}
@ocaml.doc("<p>Field-level encryption content type-profile. </p>")
type contentTypeProfiles = {
  @ocaml.doc("<p>Items in a field-level encryption content type-profile mapping. </p>") @as("Items")
  items: option<contentTypeProfileList>,
  @ocaml.doc("<p>The number of field-level encryption content type-profile mappings. </p>")
  @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>A list of aliases (also called CNAMEs) and the CloudFront distributions and Amazon Web Services accounts that
			they are associated with. In the list, the distribution and account IDs are partially
			hidden, which allows you to identify the distributions and accounts that you own, but
			helps to protect the information of ones that you don’t own.</p>")
type conflictingAliasesList = {
  @ocaml.doc("<p>Contains the conflicting aliases in the list.</p>") @as("Items")
  items: option<conflictingAliases>,
  @ocaml.doc("<p>The number of conflicting aliases returned in the response.</p>") @as("Quantity")
  quantity: option<integer_>,
  @ocaml.doc("<p>The maximum number of conflicting aliases requested.</p>") @as("MaxItems")
  maxItems: option<integer_>,
  @ocaml.doc("<p>If there are more items in the list than are in this response, this element is present. It
			contains the value that you should use in the <code>Marker</code> field of a subsequent
			request to continue listing conflicting aliases where you left off.</p>")
  @as("NextMarker")
  nextMarker: option<string_>,
}
@ocaml.doc("<p>Lists the origin access identities for CloudFront.Send a <code>GET</code> request to the 
					<code>/<i>CloudFront API version</i>/origin-access-identity/cloudfront</code> 
			resource. The response includes a <code>CloudFrontOriginAccessIdentityList</code> element with 
			zero or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements. By default, 
			your entire list of origin access identities is returned in one single page. If the list is 
			long, you can paginate it using the <code>MaxItems</code> and <code>Marker</code> 
			parameters.</p>")
type cloudFrontOriginAccessIdentityList = {
  @ocaml.doc("<p>A complex type that contains one <code>CloudFrontOriginAccessIdentitySummary</code> 
			element for each origin access identity that was created by the current Amazon Web Services account.</p>")
  @as("Items")
  items: option<cloudFrontOriginAccessIdentitySummaryList>,
  @ocaml.doc(
    "<p>The number of CloudFront origin access identities that were created by the current Amazon Web Services account.</p>"
  )
  @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>A flag that indicates whether more origin access identities remain to be listed. If 
			your results were truncated, you can make a follow-up pagination request using the 
				<code>Marker</code> request parameter to retrieve more items in the list.</p>")
  @as("IsTruncated")
  isTruncated: boolean_,
  @ocaml.doc("<p>The maximum number of origin access identities you want in the response body. 
		</p>")
  @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains 
			the value you can use for the <code>Marker</code> request parameter to continue listing your 
			origin access identities where they left off. </p>")
  @as("NextMarker")
  nextMarker: option<string_>,
  @ocaml.doc("<p>Use this when paginating results to indicate where to begin in your list of origin 
			access identities. The results include identities in the list that occur after the marker. To 
			get the next page of results, set the <code>Marker</code> to the value of the 
				<code>NextMarker</code> from the current page's response (which is also the ID of the last 
			identity on that page). </p>")
  @as("Marker")
  marker: string_,
}
@ocaml.doc("<p>An object that determines whether any URL query strings in viewer requests (and if so, which
			query strings) are included in the cache key and automatically included in requests that
			CloudFront sends to the origin.</p>")
type cachePolicyQueryStringsConfig = {
  @ocaml.doc("<p>Contains the specific query strings in viewer requests that either <i>
               <b>are</b>
            </i> or <i>
               <b>are
			not</b>
            </i> included in the cache key and automatically included in
			requests that CloudFront sends to the origin. The behavior depends on whether the
			<code>QueryStringBehavior</code> field in the <code>CachePolicyQueryStringsConfig</code>
			type is set to <code>whitelist</code> (the listed query strings <i>
               <b>are</b>
            </i> included) or <code>allExcept</code> (the listed
			query strings <i>
               <b>are not</b>
            </i> included,
			but all other query strings are).</p>")
  @as("QueryStrings")
  queryStrings: option<queryStringNames>,
  @ocaml.doc("<p>Determines whether any URL query strings in viewer requests are included in the cache key
			and automatically included in requests that CloudFront sends to the origin. Valid values
			are:</p>
		       <ul>
            <li>
				           <p>
                  <code>none</code> – Query strings in viewer requests are not included in the cache key and
					are not automatically included in requests that CloudFront sends to the origin. Even
					when this field is set to <code>none</code>, any query strings that are listed
					in an <code>OriginRequestPolicy</code> 
                  <i>are</i> included in
					origin requests.</p>
			         </li>
            <li>
				           <p>
                  <code>whitelist</code> – The query strings in viewer requests that are listed in the
					<code>QueryStringNames</code> type are included in the cache key and
					automatically included in requests that CloudFront sends to the origin.</p>
			         </li>
            <li>
				           <p>
                  <code>allExcept</code> – All query strings in viewer requests that are <i>
                     <b>not</b>
                  </i> listed in the
					<code>QueryStringNames</code> type are included in the cache key and
					automatically included in requests that CloudFront sends to the origin.</p>
			         </li>
            <li>
				           <p>
                  <code>all</code> – All query strings in viewer requests are included in the cache key and
					are automatically included in requests that CloudFront sends to the origin.</p>
			         </li>
         </ul>")
  @as("QueryStringBehavior")
  queryStringBehavior: cachePolicyQueryStringBehavior,
}
@ocaml.doc("<p>An object that determines whether any HTTP headers (and if so, which headers) are included
			in the cache key and automatically included in requests that CloudFront sends to the
			origin.</p>")
type cachePolicyHeadersConfig = {
  @as("Headers") headers: option<headers>,
  @ocaml.doc("<p>Determines whether any HTTP headers are included in the cache key and automatically
			included in requests that CloudFront sends to the origin. Valid values are:</p>
		       <ul>
            <li>
				           <p>
                  <code>none</code> – HTTP headers are not included in the cache key and are not
					automatically included in requests that CloudFront sends to the origin. Even when this
					field is set to <code>none</code>, any headers that are listed in an
					<code>OriginRequestPolicy</code> 
                  <i>are</i> included in origin
					requests.</p>
			         </li>
            <li>
				           <p>
                  <code>whitelist</code> – The HTTP headers that are listed in the <code>Headers</code> type
					are included in the cache key and are automatically included in requests that
					CloudFront sends to the origin.</p>
			         </li>
         </ul>")
  @as("HeaderBehavior")
  headerBehavior: cachePolicyHeaderBehavior,
}
@ocaml.doc("<p>An object that determines whether any cookies in viewer requests (and if so, which cookies)
			are included in the cache key and automatically included in requests that CloudFront sends to
			the origin.</p>")
type cachePolicyCookiesConfig = {
  @as("Cookies") cookies: option<cookieNames>,
  @ocaml.doc("<p>Determines whether any cookies in viewer requests are included in the cache key and
			automatically included in requests that CloudFront sends to the origin. Valid values
			are:</p>
		       <ul>
            <li>
				           <p>
                  <code>none</code> – Cookies in viewer requests are not included in the cache key and are
					not automatically included in requests that CloudFront sends to the origin. Even when
					this field is set to <code>none</code>, any cookies that are listed in an
					<code>OriginRequestPolicy</code> 
                  <i>are</i> included in origin
					requests.</p>
			         </li>
            <li>
				           <p>
                  <code>whitelist</code> – The cookies in viewer requests that are listed in the
					<code>CookieNames</code> type are included in the cache key and automatically
					included in requests that CloudFront sends to the origin.</p>
			         </li>
            <li>
				           <p>
                  <code>allExcept</code> – All cookies in viewer requests that are <i>
                     <b>not</b>
                  </i> listed in the <code>CookieNames</code>
					type are included in the cache key and automatically included in requests that
					CloudFront sends to the origin.</p>
			         </li>
            <li>
				           <p>
                  <code>all</code> – All cookies in viewer requests are included in the cache key and are
					automatically included in requests that CloudFront sends to the origin.</p>
			         </li>
         </ul>")
  @as("CookieBehavior")
  cookieBehavior: cachePolicyCookieBehavior,
}
@ocaml.doc("<p>A complex type that controls which HTTP methods CloudFront processes and forwards to your 
			Amazon S3 bucket or your custom origin. There are three choices:</p> 
		       <ul>
            <li> 
				           <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> 
			         </li>
            <li> 
				           <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> 
					requests.</p> 
			         </li>
            <li> 
				           <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and 
						<code>DELETE</code> requests.</p> 
			         </li>
         </ul> 
		       <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or 
			to your custom origin so users can't perform operations that you don't want them to. For 
			example, you might not want users to have permissions to delete objects from your 
			origin.</p>")
type allowedMethods = {
  @as("CachedMethods") cachedMethods: option<cachedMethods>,
  @ocaml.doc("<p>A complex type that contains the HTTP methods that you want CloudFront to process and forward 
			to your origin.</p>")
  @as("Items")
  items: methodsList,
  @ocaml.doc("<p>The number of HTTP methods that you want CloudFront to forward to your origin. Valid values 
			are 2 (for <code>GET</code> and <code>HEAD</code> requests), 3 (for <code>GET</code>, 
				<code>HEAD</code>, and <code>OPTIONS</code> requests) and 7 (for <code>GET, HEAD, OPTIONS, 
				PUT, PATCH, POST</code>, and <code>DELETE</code> requests).</p>")
  @as("Quantity")
  quantity: integer_,
}
type streamingDistributionSummaryList = array<streamingDistributionSummary>
@ocaml.doc("<p>A streaming distribution Configuration and a list of tags to be associated with the 
			streaming distribution.</p>")
type streamingDistributionConfigWithTags = {
  @ocaml.doc("<p>A complex type that contains zero or more <code>Tag</code> elements.</p>")
  @as("Tags")
  tags: tags,
  @ocaml.doc("<p>A streaming distribution Configuration.</p>") @as("StreamingDistributionConfig")
  streamingDistributionConfig: streamingDistributionConfig,
}
type signerList = array<signer>
@ocaml.doc("<p>A response headers policy configuration.</p>
		       <p>A response headers policy configuration contains metadata about the response headers policy,
			and configurations for sets of HTTP response headers and their values. CloudFront adds the
			headers in the policy to HTTP responses that it sends for requests that match a cache
			behavior associated with the policy.</p>")
type responseHeadersPolicyConfig = {
  @ocaml.doc("<p>A configuration for a set of custom HTTP response headers.</p>")
  @as("CustomHeadersConfig")
  customHeadersConfig: option<responseHeadersPolicyCustomHeadersConfig>,
  @ocaml.doc("<p>A configuration for a set of security-related HTTP response headers.</p>")
  @as("SecurityHeadersConfig")
  securityHeadersConfig: option<responseHeadersPolicySecurityHeadersConfig>,
  @ocaml.doc("<p>A configuration for a set of HTTP response headers that are used for cross-origin
			resource sharing (CORS).</p>")
  @as("CorsConfig")
  corsConfig: option<responseHeadersPolicyCorsConfig>,
  @ocaml.doc("<p>A name to identify the response headers policy.</p>
		       <p>The name must be unique for response headers policies in this Amazon Web Services account.</p>")
  @as("Name")
  name: string_,
  @ocaml.doc("<p>A comment to describe the response headers policy.</p>
		       <p>The comment cannot be longer than 128 characters.</p>")
  @as("Comment")
  comment: option<string_>,
}
@ocaml.doc("<p>A real-time log configuration.</p>")
type realtimeLogConfig = {
  @ocaml.doc("<p>A list of fields that are included in each real-time log record. In an API response, the
			fields are provided in the same order in which they are sent to the Amazon Kinesis data
			stream.</p>
		       <p>For more information about fields, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields\">Real-time log configuration fields</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("Fields")
  fields: fieldList,
  @ocaml.doc("<p>Contains information about the Amazon Kinesis data stream where you are sending real-time
			log data for this real-time log configuration.</p>")
  @as("EndPoints")
  endPoints: endPointList,
  @ocaml.doc("<p>The sampling rate for this real-time log configuration. The sampling rate determines the
			percentage of viewer requests that are represented in the real-time log data. The
			sampling rate is an integer between 1 and 100, inclusive.</p>")
  @as("SamplingRate")
  samplingRate: long,
  @ocaml.doc("<p>The unique name of this real-time log configuration.</p>") @as("Name")
  name: string_,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of this real-time log configuration.</p>")
  @as("ARN")
  arn: string_,
}
@ocaml.doc("<p>Configuration for query argument-profile mapping for field-level encryption.</p>")
type queryArgProfileConfig = {
  @ocaml.doc(
    "<p>Profiles specified for query argument-profile mapping for field-level encryption.</p>"
  )
  @as("QueryArgProfiles")
  queryArgProfiles: option<queryArgProfiles>,
  @ocaml.doc("<p>Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument,
			fle-profile, is unknown.</p>")
  @as("ForwardWhenQueryArgProfileIsUnknown")
  forwardWhenQueryArgProfileIsUnknown: boolean_,
}
@ocaml.doc("<p>This object determines the values that CloudFront includes in the cache key. These values can
			include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an
			object in its cache that it can return to the viewer.</p>
		       <p>The headers, cookies, and query strings that are included in the cache key are automatically
			included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t
			find an object in its cache that matches the request’s cache key. If you want to send
			values to the origin but <i>not</i> include them in the cache key, use
			<code>OriginRequestPolicy</code>.</p>")
type parametersInCacheKeyAndForwardedToOrigin = {
  @ocaml.doc("<p>An object that determines whether any URL query strings in viewer requests (and if so, which
			query strings) are included in the cache key and automatically included in requests that
			CloudFront sends to the origin.</p>")
  @as("QueryStringsConfig")
  queryStringsConfig: cachePolicyQueryStringsConfig,
  @ocaml.doc("<p>An object that determines whether any cookies in viewer requests (and if so, which cookies)
			are included in the cache key and automatically included in requests that CloudFront sends to
			the origin.</p>")
  @as("CookiesConfig")
  cookiesConfig: cachePolicyCookiesConfig,
  @ocaml.doc("<p>An object that determines whether any HTTP headers (and if so, which headers) are
			included in the cache key and automatically included in requests that CloudFront sends to the
			origin.</p>")
  @as("HeadersConfig")
  headersConfig: cachePolicyHeadersConfig,
  @ocaml.doc("<p>A flag that can affect whether the <code>Accept-Encoding</code> HTTP header is
			included in the cache key and included in requests that CloudFront sends to the origin.</p>
		       <p>This field is related to the <code>EnableAcceptEncodingGzip</code> field. If one or
			both of these fields is <code>true</code> 
            <i>and</i> the viewer request
			includes the <code>Accept-Encoding</code> header, then CloudFront does the following:</p>
		       <ul>
            <li>
				           <p>Normalizes the value of the viewer’s <code>Accept-Encoding</code>
					header</p>
			         </li>
            <li>
				           <p>Includes the normalized header in the cache key</p>
			         </li>
            <li>
				           <p>Includes the normalized header in the request to the origin, if a request is necessary</p>
			         </li>
         </ul>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects\">Compression support</a> in the
            <i>Amazon CloudFront Developer Guide</i>.</p>
        <p>If you set this value to <code>true</code>, and this cache behavior also has an origin
			request policy attached, do not include the <code>Accept-Encoding</code> header in the
			origin request policy. CloudFront always includes the <code>Accept-Encoding</code> header in
			origin requests when the value of this field is <code>true</code>, so including this
			header in an origin request policy has no effect.</p>
		       <p>If both of these fields are <code>false</code>, then CloudFront treats the
			<code>Accept-Encoding</code> header the same as any other HTTP header in the viewer
			request. By default, it’s not included in the cache key and it’s not included in origin
			requests. In this case, you can manually add <code>Accept-Encoding</code> to the headers
			whitelist like any other HTTP header.</p>")
  @as("EnableAcceptEncodingBrotli")
  enableAcceptEncodingBrotli: option<boolean_>,
  @ocaml.doc("<p>A flag that can affect whether the <code>Accept-Encoding</code> HTTP header is
			included in the cache key and included in requests that CloudFront sends to the origin.</p>
		       <p>This field is related to the <code>EnableAcceptEncodingBrotli</code> field. If one or
			both of these fields is <code>true</code> 
            <i>and</i> the viewer request
			includes the <code>Accept-Encoding</code> header, then CloudFront does the following:</p>
		       <ul>
            <li>
				           <p>Normalizes the value of the viewer’s <code>Accept-Encoding</code>
					header</p>
			         </li>
            <li>
				           <p>Includes the normalized header in the cache key</p>
			         </li>
            <li>
				           <p>Includes the normalized header in the request to the origin, if a request is necessary</p>
			         </li>
         </ul>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects\">Compression support</a> in the
            <i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you set this value to <code>true</code>, and this cache behavior also has an origin
			request policy attached, do not include the <code>Accept-Encoding</code> header in the
			origin request policy. CloudFront always includes the <code>Accept-Encoding</code> header in
			origin requests when the value of this field is <code>true</code>, so including this
			header in an origin request policy has no effect.</p>
		       <p>If both of these fields are <code>false</code>, then CloudFront treats the
			<code>Accept-Encoding</code> header the same as any other HTTP header in the viewer
			request. By default, it’s not included in the cache key and it’s not included in origin
			requests. In this case, you can manually add <code>Accept-Encoding</code> to the headers
			whitelist like any other HTTP header.</p>")
  @as("EnableAcceptEncodingGzip")
  enableAcceptEncodingGzip: boolean_,
}
@ocaml.doc("<p>An origin request policy configuration.</p>
		       <p>This configuration determines the values that CloudFront includes in requests that it sends to the
			origin. Each request that CloudFront sends to the origin includes the following:</p>
		       <ul>
            <li>
				           <p>The request body and the URL path (without the domain name) from the viewer
					request.</p>
			         </li>
            <li>
				           <p>The headers that CloudFront automatically includes in every origin request, including
					<code>Host</code>, <code>User-Agent</code>, and <code>X-Amz-Cf-Id</code>.</p>
			         </li>
            <li>
				           <p>All HTTP headers, cookies, and URL query strings that are specified in the
					cache policy or the origin request policy. These can include items from the
					viewer request and, in the case of headers, additional ones that are added by
					CloudFront.</p>
			         </li>
         </ul>
		       <p>CloudFront sends a request when it can’t find an object in its cache that matches the request. If
			you want to send values to the origin and also include them in the cache key, use
			<code>CachePolicy</code>.</p>")
type originRequestPolicyConfig = {
  @ocaml.doc("<p>The URL query strings from viewer requests to include in origin requests.</p>")
  @as("QueryStringsConfig")
  queryStringsConfig: originRequestPolicyQueryStringsConfig,
  @ocaml.doc("<p>The cookies from viewer requests to include in origin requests.</p>")
  @as("CookiesConfig")
  cookiesConfig: originRequestPolicyCookiesConfig,
  @ocaml.doc("<p>The HTTP headers to include in origin requests. These can include headers from viewer
			requests and additional headers added by CloudFront.</p>")
  @as("HeadersConfig")
  headersConfig: originRequestPolicyHeadersConfig,
  @ocaml.doc("<p>A unique name to identify the origin request policy.</p>") @as("Name")
  name: string_,
  @ocaml.doc("<p>A comment to describe the origin request policy. The comment cannot be longer than 128
			characters.</p>")
  @as("Comment")
  comment: option<string_>,
}
@ocaml.doc("<p>An origin group includes two origins (a primary origin and a second origin to failover to) and a failover criteria that you specify.
		You create an origin group to support origin failover in CloudFront. When you create or update a distribution, you can specifiy 
		the origin group instead of a single origin, and CloudFront will failover from the primary origin to the second origin
		under the failover conditions that you've chosen.</p>")
type originGroup = {
  @ocaml.doc(
    "<p>A complex type that contains information about the origins in an origin group.</p>"
  )
  @as("Members")
  members: originGroupMembers,
  @ocaml.doc(
    "<p>A complex type that contains information about the failover criteria for an origin group.</p>"
  )
  @as("FailoverCriteria")
  failoverCriteria: originGroupFailoverCriteria,
  @ocaml.doc("<p>The origin group's ID.</p>") @as("Id") id: string_,
}
@ocaml.doc("<p>An origin.</p>
		       <p>An origin is the location where content is stored, and from which CloudFront gets content to
			serve to viewers. To specify an origin:</p>
		       <ul>
            <li>
                <p>Use <code>S3OriginConfig</code> to specify an Amazon S3 bucket that is not
					configured with static website hosting.</p>
			         </li>
            <li>
				           <p>Use <code>CustomOriginConfig</code> to specify all other kinds of origins,
					including:</p>
				           <ul>
                  <li>
						               <p>An Amazon S3 bucket that is configured with static website hosting</p>
					             </li>
                  <li>
						               <p>An Elastic Load Balancing load balancer</p>
					             </li>
                  <li>
						               <p>An AWS Elemental MediaPackage endpoint</p>
					             </li>
                  <li>
						               <p>An AWS Elemental MediaStore container</p>
					             </li>
                  <li>
						               <p>Any other HTTP server, running on an Amazon EC2 instance or any other
							kind of host</p>
					             </li>
               </ul>
			         </li>
         </ul> 
		       <p>For the current maximum number of origins that you can specify per distribution, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html#limits-web-distributions\">General Quotas on Web Distributions</a> in the <i>Amazon CloudFront Developer Guide</i>
			(quotas were formerly referred to as limits).</p>")
type origin = {
  @ocaml.doc("<p>CloudFront Origin Shield. Using Origin Shield can help reduce the load on your
            origin.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html\">Using Origin Shield</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("OriginShield")
  originShield: option<originShield>,
  @ocaml.doc("<p>The number of seconds that CloudFront waits when trying to establish a connection to the origin.
			The minimum timeout is 1 second, the maximum is 10 seconds, and the default (if you
			don’t specify otherwise) is 10 seconds.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-timeout\">Origin Connection Timeout</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("ConnectionTimeout")
  connectionTimeout: option<integer_>,
  @ocaml.doc("<p>The number of times that CloudFront attempts to connect to the origin. The minimum number
            is 1, the maximum is 3, and the default (if you don’t specify otherwise) is 3.</p>
        <p>For a custom origin (including an Amazon S3 bucket that’s configured with static
            website hosting), this value also specifies the number of times that CloudFront attempts to
            get a response from the origin, in the case of an <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout\">Origin Response Timeout</a>.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-attempts\">Origin Connection Attempts</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("ConnectionAttempts")
  connectionAttempts: option<integer_>,
  @ocaml.doc("<p>Use this type to specify an origin that is not an Amazon S3 bucket, with one exception. If the
			Amazon S3 bucket is configured with static website hosting, use this type. If the Amazon S3 bucket
			is not configured with static website hosting, use the <code>S3OriginConfig</code> type
			instead.</p>")
  @as("CustomOriginConfig")
  customOriginConfig: option<customOriginConfig>,
  @ocaml.doc("<p>Use this type to specify an origin that is an Amazon S3 bucket that is not configured with static
			website hosting. To specify any other type of origin, including an Amazon S3 bucket that is
			configured with static website hosting, use the <code>CustomOriginConfig</code> type
			instead.</p>")
  @as("S3OriginConfig")
  s3OriginConfig: option<s3OriginConfig>,
  @ocaml.doc("<p>A list of HTTP header names and values that CloudFront adds to the requests that it sends to
            the origin.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/add-origin-custom-headers.html\">Adding Custom Headers to Origin Requests</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("CustomHeaders")
  customHeaders: option<customHeaders>,
  @ocaml.doc("<p>An optional path that CloudFront appends to the origin domain name when CloudFront requests content from
			the origin.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginPath\">Origin Path</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("OriginPath")
  originPath: option<string_>,
  @ocaml.doc("<p>The domain name for the origin.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName\">Origin Domain Name</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("DomainName")
  domainName: string_,
  @ocaml.doc("<p>A unique identifier for the origin. This value must be unique within the
			distribution.</p>
        <p>Use this value to specify the <code>TargetOriginId</code> in a
            <code>CacheBehavior</code> or <code>DefaultCacheBehavior</code>.</p>")
  @as("Id")
  id: string_,
}
@ocaml.doc("<p>Contains information about a key group.</p>")
type keyGroupSummary = {@ocaml.doc("<p>A key group.</p>") @as("KeyGroup") keyGroup: keyGroup}
type kgkeyPairIdsList = array<kgkeyPairIds>
@ocaml.doc("<p>An invalidation. </p>")
type invalidation = {
  @ocaml.doc("<p>The current invalidation information for the batch request. </p>")
  @as("InvalidationBatch")
  invalidationBatch: invalidationBatch,
  @ocaml.doc("<p>The date and time the invalidation request was first made. </p>") @as("CreateTime")
  createTime: timestamp_,
  @ocaml.doc("<p>The status of the invalidation request. When the invalidation batch is finished, the 
			status is <code>Completed</code>.</p>")
  @as("Status")
  status: string_,
  @ocaml.doc("<p>The identifier for the invalidation request. For example: 
			<code>IDFDVBD632BHDS5</code>.</p>")
  @as("Id")
  id: string_,
}
@ocaml.doc("<p>A list of CloudFront functions.</p>")
type functionList = {
  @ocaml.doc("<p>Contains the functions in the list.</p>") @as("Items")
  items: option<functionSummaryList>,
  @ocaml.doc("<p>The number of functions returned in the response.</p>") @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>The maximum number of functions requested.</p>") @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If there are more items in the list than are in this response, this element is
			present. It contains the value that you should use in the <code>Marker</code> field of a
			subsequent request to continue listing functions where you left off.</p>")
  @as("NextMarker")
  nextMarker: option<string_>,
}
@ocaml.doc("<p>This field is deprecated. We recommend that you use a cache policy or an origin
			request policy instead of this field.</p>
		       <p>If you want to include values in the cache key, use a cache policy. For more information,
			see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you want to send values to the origin but not include them in the cache key, use an
			origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p> 
		       <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>")
type forwardedValues = {
  @ocaml.doc("<p>This field is deprecated. We recommend that you use a cache policy or an origin
			request policy instead of this field.</p>
		       <p>If you want to include query strings in the cache key, use a cache policy. For more
			information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you want to send query strings to the origin but not include them in the cache key, use
			an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p> 
		       <p>A complex type that contains information about the query string parameters that you 
			want CloudFront to use for caching for this cache behavior.</p>")
  @as("QueryStringCacheKeys")
  queryStringCacheKeys: option<queryStringCacheKeys>,
  @ocaml.doc("<p>This field is deprecated. We recommend that you use a cache policy or an origin
			request policy instead of this field.</p>
		       <p>If you want to include headers in the cache key, use a cache policy. For more information,
			see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you want to send headers to the origin but not include them in the cache key, use an
			origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p> 
		       <p>A complex type that specifies the <code>Headers</code>, if any, that you want CloudFront to forward to the 
			origin for this cache behavior (whitelisted headers). For the headers that you specify, CloudFront also caches 
			separate versions of a specified object that is based on the header values in viewer requests.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html\">
			Caching Content Based on Request Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("Headers")
  headers: option<headers>,
  @ocaml.doc("<p>This field is deprecated. We recommend that you use a cache policy or an origin
			request policy instead of this field.</p>
		       <p>If you want to include cookies in the cache key, use a cache policy. For more
			information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you want to send cookies to the origin but not include them in the cache key, use an
			origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin
			and, if so, which ones. For more information about forwarding cookies to the origin, see
			<a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html\">How CloudFront Forwards, Caches, and Logs Cookies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("Cookies")
  cookies: cookiePreference,
  @ocaml.doc("<p>This field is deprecated. We recommend that you use a cache policy or an origin
			request policy instead of this field.</p>
		       <p>If you want to include query strings in the cache key, use a cache policy. For more
			information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you want to send query strings to the origin but not include them in the cache key, use
			an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p> 
		       <p>Indicates whether you want CloudFront to forward query strings to the origin that is 
			associated with this cache behavior and cache based on the query string parameters. CloudFront 
			behavior depends on the value of <code>QueryString</code> and on the values that you specify 
			for <code>QueryStringCacheKeys</code>, if any:</p> 
		       <p>If you specify true for <code>QueryString</code> and you don't specify any values for 
				<code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin 
			and caches based on all query string parameters. Depending on how many query string parameters 
			and values you have, this can adversely affect performance because CloudFront must forward more 
			requests to the origin.</p> 
		       <p>If you specify true for <code>QueryString</code> and you specify one or more values for 
				<code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin, 
			but it only caches based on the query string parameters that you specify.</p> 
		       <p>If you specify false for <code>QueryString</code>, CloudFront doesn't forward any query 
			string parameters to the origin, and doesn't cache based on query string parameters.</p> 
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html\">Configuring CloudFront to Cache Based on Query String Parameters</a> in the 
				<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("QueryString")
  queryString: boolean_,
}
type encryptionEntityList = array<encryptionEntity>
@ocaml.doc("<p>The configuration for a field-level encryption content type-profile mapping. </p>")
type contentTypeProfileConfig = {
  @ocaml.doc("<p>The configuration for a field-level encryption content type-profile. </p>")
  @as("ContentTypeProfiles")
  contentTypeProfiles: option<contentTypeProfiles>,
  @ocaml.doc("<p>The setting in a field-level encryption content type-profile mapping that specifies what to do
			when an unknown content type is provided for the profile. If true, content is
			forwarded without being encrypted when the content type is unknown. If false (the
			default), an error is returned when the content type is unknown. </p>")
  @as("ForwardWhenContentTypeIsUnknown")
  forwardWhenContentTypeIsUnknown: boolean_,
}
@ocaml.doc("<p>A streaming distribution list. </p>")
type streamingDistributionList = {
  @ocaml.doc("<p>A complex type that contains one <code>StreamingDistributionSummary</code> element for 
			each distribution that was created by the current Amazon Web Services account.</p>")
  @as("Items")
  items: option<streamingDistributionSummaryList>,
  @ocaml.doc("<p>The number of streaming distributions that were created by the current Amazon Web Services account. 
		</p>")
  @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>A flag that indicates whether more streaming distributions remain to be listed. If your 
			results were truncated, you can make a follow-up pagination request using the 
				<code>Marker</code> request parameter to retrieve more distributions in the list. </p>")
  @as("IsTruncated")
  isTruncated: boolean_,
  @ocaml.doc("<p>The value you provided for the <code>MaxItems</code> request parameter. </p>")
  @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains 
			the value you can use for the <code>Marker</code> request parameter to continue listing your 
			RTMP distributions where they left off. </p>")
  @as("NextMarker")
  nextMarker: option<string_>,
  @ocaml.doc("<p>The value you provided for the <code>Marker</code> request parameter. </p>")
  @as("Marker")
  marker: string_,
}
@ocaml.doc("<p>A response headers policy.</p>
		       <p>A response headers policy contains information about a set of HTTP response headers
			and their values.</p>
		       <p>After you create a response headers policy, you can use its ID to attach it to one or more
			cache behaviors in a CloudFront distribution. When it’s attached to a cache behavior, CloudFront
			adds the headers in the policy to HTTP responses that it sends for requests that match
			the cache behavior.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/adding-response-headers.html\">Adding HTTP headers to CloudFront responses</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
type responseHeadersPolicy = {
  @ocaml.doc("<p>A response headers policy configuration.</p>
		       <p>A response headers policy contains information about a set of HTTP response headers and
			their values. CloudFront adds the headers in the policy to HTTP responses that it sends for
			requests that match a cache behavior that’s associated with the policy.</p>")
  @as("ResponseHeadersPolicyConfig")
  responseHeadersPolicyConfig: responseHeadersPolicyConfig,
  @ocaml.doc("<p>The date and time when the response headers policy was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p>The identifier for the response headers policy.</p>") @as("Id") id: string_,
}
type realtimeLogConfigList = array<realtimeLogConfig>
@ocaml.doc("<p>An origin request policy.</p>
		       <p>When it’s attached to a cache behavior, the origin request policy determines the values that
			CloudFront includes in requests that it sends to the origin. Each request that CloudFront sends to
			the origin includes the following:</p>
		       <ul>
            <li>
				           <p>The request body and the URL path (without the domain name) from the viewer
					request.</p>
			         </li>
            <li>
				           <p>The headers that CloudFront automatically includes in every origin request, including
					<code>Host</code>, <code>User-Agent</code>, and <code>X-Amz-Cf-Id</code>.</p>
			         </li>
            <li>
				           <p>All HTTP headers, cookies, and URL query strings that are specified in the
					cache policy or the origin request policy. These can include items from the
					viewer request and, in the case of headers, additional ones that are added by
					CloudFront.</p>
			         </li>
         </ul>
		       <p>CloudFront sends a request when it can’t find an object in its cache that matches the request. If
			you want to send values to the origin and also include them in the cache key, use
			<code>CachePolicy</code>.</p>")
type originRequestPolicy = {
  @ocaml.doc("<p>The origin request policy configuration.</p>") @as("OriginRequestPolicyConfig")
  originRequestPolicyConfig: originRequestPolicyConfig,
  @ocaml.doc("<p>The date and time when the origin request policy was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p>The unique identifier for the origin request policy.</p>") @as("Id") id: string_,
}
type originList = array<origin>
@ocaml.doc("<p>List of origin groups for a distribution.</p>")
type originGroupList = array<originGroup>
type keyGroupSummaryList = array<keyGroupSummary>
@ocaml.doc("<p>A summary of a field-level encryption item.</p>")
type fieldLevelEncryptionSummary = {
  @ocaml.doc("<p>
			A summary of a content type-profile mapping.
		</p>")
  @as("ContentTypeProfileConfig")
  contentTypeProfileConfig: option<contentTypeProfileConfig>,
  @ocaml.doc("<p>
			A summary of a query argument-profile mapping.
		</p>")
  @as("QueryArgProfileConfig")
  queryArgProfileConfig: option<queryArgProfileConfig>,
  @ocaml.doc("<p>An optional comment about the field-level encryption item. The comment cannot be longer than
			128 characters.</p>")
  @as("Comment")
  comment: option<string_>,
  @ocaml.doc("<p>The last time that the summary of field-level encryption items was modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p>The unique ID of a field-level encryption item.</p>") @as("Id") id: string_,
}
@ocaml.doc(
  "<p>A complex data type that includes the profile configurations specified for field-level encryption. </p>"
)
type fieldLevelEncryptionConfig = {
  @ocaml.doc("<p>A complex data type that specifies when to forward content if a content type isn't recognized and profiles to use as by default 
			in a request if a query argument doesn't specify a profile to use.</p>")
  @as("ContentTypeProfileConfig")
  contentTypeProfileConfig: option<contentTypeProfileConfig>,
  @ocaml.doc("<p>A complex data type that specifies when to forward content if a profile isn't found and the profile that can be provided as a 
			query argument in a request.</p>")
  @as("QueryArgProfileConfig")
  queryArgProfileConfig: option<queryArgProfileConfig>,
  @ocaml.doc("<p>An optional comment about the configuration. The comment cannot be longer than 128
			characters.</p>")
  @as("Comment")
  comment: option<string_>,
  @ocaml.doc("<p>A unique number that ensures the request can't be replayed.</p>")
  @as("CallerReference")
  callerReference: string_,
}
@ocaml.doc(
  "<p>Complex data type for field-level encryption profiles that includes all of the encryption entities. </p>"
)
type encryptionEntities = {
  @ocaml.doc(
    "<p>An array of field patterns in a field-level encryption content type-profile mapping. </p>"
  )
  @as("Items")
  items: option<encryptionEntityList>,
  @ocaml.doc(
    "<p>Number of field pattern items in a field-level encryption content type-profile mapping. </p>"
  )
  @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>A complex type that describes the default cache behavior if you don’t specify a
			<code>CacheBehavior</code> element or if request URLs don’t match any of the values of
			<code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly
			one default cache behavior.</p>")
type defaultCacheBehavior = {
  @ocaml.doc("<p>This field is deprecated. We recommend that you use the <code>MaxTTL</code> field in a cache
			policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront 
			forwards another request to your origin to determine whether the object has been updated. The 
			value that you specify applies only when your origin adds HTTP headers such as 
			<code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and 
			<code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays 
				in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("MaxTTL")
  maxTTL: option<long>,
  @ocaml.doc("<p>This field is deprecated. We recommend that you use the <code>DefaultTTL</code> field in a
			cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront 
			forwards another request to your origin to determine whether the object has been updated. The 
			value that you specify applies only when your origin does not add HTTP headers such as 
				<code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and 
				<code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays 
					in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("DefaultTTL")
  defaultTTL: option<long>,
  @ocaml.doc("<p>This field is deprecated. We recommend that you use the <code>MinTTL</code> field in a cache
			policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront 
			forwards another request to your origin to determine whether the object has been updated. For 
			more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays 
				in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> 
		       <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to 
			forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> 
			for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>")
  @as("MinTTL")
  minTTL: option<long>,
  @ocaml.doc("<p>This field is deprecated. We recommend that you use a cache policy or an origin request
			policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html\">Working with policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you want to include values in the cache key, use a cache policy. For more information,
			see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you want to send values to the origin but not include them in the cache key, use an
			origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the
            <i>Amazon CloudFront Developer Guide</i>.</p>
        <p>A <code>DefaultCacheBehavior</code> must include either a
            <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you
            use a <code>CachePolicyId</code>.</p>
		       <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>")
  @as("ForwardedValues")
  forwardedValues: option<forwardedValues>,
  @ocaml.doc("<p>The identifier for a response headers policy.</p>") @as("ResponseHeadersPolicyId")
  responseHeadersPolicyId: option<string_>,
  @ocaml.doc("<p>The unique identifier of the origin request policy that is attached to the default cache
			behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("OriginRequestPolicyId")
  originRequestPolicyId: option<string_>,
  @ocaml.doc("<p>The unique identifier of the cache policy that is attached to the default cache behavior.
			For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the
            <i>Amazon CloudFront Developer Guide</i>.</p>
        <p>A <code>DefaultCacheBehavior</code> must include either a
            <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you
            use a <code>CachePolicyId</code>.</p>")
  @as("CachePolicyId")
  cachePolicyId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this
			cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html\">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("RealtimeLogConfigArn")
  realtimeLogConfigArn: option<string_>,
  @ocaml.doc("<p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront
			to use for encrypting specific fields of data for the default cache behavior.</p>")
  @as("FieldLevelEncryptionId")
  fieldLevelEncryptionId: option<string_>,
  @ocaml.doc("<p>A list of CloudFront functions that are associated with this cache behavior. CloudFront functions must
			be published to the <code>LIVE</code> stage to associate them with a cache
			behavior.</p>")
  @as("FunctionAssociations")
  functionAssociations: option<functionAssociations>,
  @ocaml.doc("<p>A complex type that contains zero or more Lambda@Edge function associations for a cache 
			behavior.</p>")
  @as("LambdaFunctionAssociations")
  lambdaFunctionAssociations: option<lambdaFunctionAssociations>,
  @ocaml.doc("<p>Whether you want CloudFront to automatically compress certain files for this cache behavior. 
			If so, specify <code>true</code>; if not, specify <code>false</code>. For more information, 
			see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html\">Serving Compressed Files</a> in 
			the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("Compress")
  compress: option<boolean_>,
  @ocaml.doc("<p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming 
			format using the origin that is associated with this cache behavior. If so, specify 
				<code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for 
				<code>SmoothStreaming</code>, you can still distribute other content using this cache 
			behavior if the content matches the value of <code>PathPattern</code>. </p>")
  @as("SmoothStreaming")
  smoothStreaming: option<boolean_>,
  @as("AllowedMethods") allowedMethods: option<allowedMethods>,
  @ocaml.doc("<p>The protocol that viewers can use to access the files in the origin specified by 
				<code>TargetOriginId</code> when a request matches the path pattern in 
				<code>PathPattern</code>. You can specify the following options:</p> 
		       <ul>
            <li> 
				           <p>
                  <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> 
			         </li>
            <li> 
				           <p>
                  <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns 
					an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The 
					viewer then resubmits the request using the new URL.</p> 
			         </li>
            <li> 
				           <p>
                  <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP 
					status code of 403 (Forbidden).</p> 
			         </li>
         </ul> 
		       <p>For more information about requiring the HTTPS protocol, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html\">Requiring HTTPS Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> 
		       <note> 
			         <p>The only way to guarantee that viewers retrieve an object that was fetched from
				the origin using HTTPS is never to use any other protocol to fetch the object. If
				you have recently changed from HTTP to HTTPS, we recommend that you clear your
				objects’ cache because cached objects are protocol agnostic. That means that an edge
				location will return an object from the cache regardless of whether the current
				request protocol matches the protocol used previously. For more information, see
				<a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing Cache
				Expiration</a> in the 
					<i>Amazon CloudFront Developer Guide</i>.</p> 
		       </note>")
  @as("ViewerProtocolPolicy")
  viewerProtocolPolicy: viewerProtocolPolicy,
  @ocaml.doc("<p>A list of key groups that CloudFront can use to validate signed URLs or signed cookies.</p>
		       <p>When a cache behavior contains trusted key groups, CloudFront requires signed URLs or signed
			cookies for all requests that match the cache behavior. The URLs or cookies must be
			signed with a private key whose corresponding public key is in the key group. The signed
			URL or cookie contains information about which public key CloudFront should use to verify the
			signature. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("TrustedKeyGroups")
  trustedKeyGroups: option<trustedKeyGroups>,
  @ocaml.doc("<important>
			         <p>We recommend using <code>TrustedKeyGroups</code> instead of
				<code>TrustedSigners</code>.</p>
		       </important>
		       <p>A list of Amazon Web Services account IDs whose public keys CloudFront can use to validate signed URLs or signed
			cookies.</p>
		       <p>When a cache behavior contains trusted signers, CloudFront requires signed URLs or signed cookies
			for all requests that match the cache behavior. The URLs or cookies must be signed with
			the private key of a CloudFront key pair in a trusted signer’s Amazon Web Services account. The signed URL or
			cookie contains information about which public key CloudFront should use to verify the
			signature. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("TrustedSigners")
  trustedSigners: option<trustedSigners>,
  @ocaml.doc("<p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when
			they use the default cache behavior.</p>")
  @as("TargetOriginId")
  targetOriginId: string_,
}
@ocaml.doc("<p>A cache policy configuration.</p>
		       <p>This configuration determines the following:</p>
		       <ul>
            <li>
				           <p>The values that CloudFront includes in the cache key. These values can include HTTP headers,
					cookies, and URL query strings. CloudFront uses the cache key to find an object in its
					cache that it can return to the viewer.</p>
			         </li>
            <li>
				           <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay
					in the CloudFront cache.</p>
			         </li>
         </ul>
		       <p>The headers, cookies, and query strings that are included in the cache key are automatically
			included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t
			find a valid object in its cache that matches the request’s cache key. If you want to
			send values to the origin but <i>not</i> include them in the cache key,
			use <code>OriginRequestPolicy</code>.</p>")
type cachePolicyConfig = {
  @ocaml.doc("<p>The HTTP headers, cookies, and URL query strings to include in the cache key. The
			values included in the cache key are automatically included in requests that CloudFront sends
			to the origin.</p>")
  @as("ParametersInCacheKeyAndForwardedToOrigin")
  parametersInCacheKeyAndForwardedToOrigin: option<parametersInCacheKeyAndForwardedToOrigin>,
  @ocaml.doc("<p>The minimum amount of time, in seconds, that you want objects to stay in the CloudFront
			cache before CloudFront sends another request to the origin to see if the object has been
			updated. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("MinTTL")
  minTTL: long,
  @ocaml.doc("<p>The maximum amount of time, in seconds, that objects stay in the CloudFront cache
			before CloudFront sends another request to the origin to see if the object has been updated.
			CloudFront uses this value only when the origin sends <code>Cache-Control</code> or
			<code>Expires</code> headers with the object. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>The default value for this field is 31536000 seconds (one year). If the value of
			<code>MinTTL</code> or <code>DefaultTTL</code> is more than 31536000 seconds, then the
			default value for this field is the same as the value of <code>DefaultTTL</code>.</p>")
  @as("MaxTTL")
  maxTTL: option<long>,
  @ocaml.doc("<p>The default amount of time, in seconds, that you want objects to stay in the CloudFront
			cache before CloudFront sends another request to the origin to see if the object has been
			updated. CloudFront uses this value as the object’s time to live (TTL) only when the origin
			does <i>not</i> send <code>Cache-Control</code> or <code>Expires</code>
			headers with the object. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>The default value for this field is 86400 seconds (one day). If the value of
			<code>MinTTL</code> is more than 86400 seconds, then the default value for this field is
			the same as the value of <code>MinTTL</code>.</p>")
  @as("DefaultTTL")
  defaultTTL: option<long>,
  @ocaml.doc("<p>A unique name to identify the cache policy.</p>") @as("Name") name: string_,
  @ocaml.doc("<p>A comment to describe the cache policy. The comment cannot be longer than 128
			characters.</p>")
  @as("Comment")
  comment: option<string_>,
}
@ocaml.doc("<p>A complex type that describes how CloudFront processes requests.</p> 
		       <p>You must create at least as many cache behaviors (including the default cache behavior) as
			you have origins if you want CloudFront to serve objects from all of the origins. Each cache
			behavior specifies the one origin from which you want CloudFront to get objects. If you have
			two origins and only the default cache behavior, the default cache behavior will cause
			CloudFront to get objects from one of the origins, but the other origin is never used.</p> 
		       <p>For the current quota (formerly known as limit) on the number of cache behaviors that you
			can add to a distribution, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html\">Quotas</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> 
		       <p>If you don’t want to specify any cache behaviors, include only an empty
			<code>CacheBehaviors</code> element. Don’t include an empty <code>CacheBehavior</code>
			element because this is invalid.</p> 
		       <p>To delete all cache behaviors in an existing distribution, update the distribution 
			configuration and include only an empty <code>CacheBehaviors</code> element.</p> 
		       <p>To add, change, or remove one or more cache behaviors, update the distribution 
			configuration and specify all of the cache behaviors that you want to include in the updated 
			distribution.</p> 
		       <p>For more information about cache behaviors, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior\">Cache Behavior Settings</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
type cacheBehavior = {
  @ocaml.doc("<p>This field is deprecated. We recommend that you use the <code>MaxTTL</code> field in a cache
			policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront 
			forwards another request to your origin to determine whether the object has been updated. The 
			value that you specify applies only when your origin adds HTTP headers such as 
				<code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and 
				<code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays 
				in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("MaxTTL")
  maxTTL: option<long>,
  @ocaml.doc("<p>This field is deprecated. We recommend that you use the <code>DefaultTTL</code> field in a
			cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront 
			forwards another request to your origin to determine whether the object has been updated. The 
			value that you specify applies only when your origin does not add HTTP headers such as 
				<code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and 
				<code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays 
				in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("DefaultTTL")
  defaultTTL: option<long>,
  @ocaml.doc("<p>This field is deprecated. We recommend that you use the <code>MinTTL</code> field in a cache
			policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront 
			forwards another request to your origin to determine whether the object has been updated. For 
			more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">
				Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>
				Amazon CloudFront Developer Guide</i>.</p> 
		       <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to 
			forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> 
			for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>")
  @as("MinTTL")
  minTTL: option<long>,
  @ocaml.doc("<p>This field is deprecated. We recommend that you use a cache policy or an origin
			request policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html\">Working with policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you want to include values in the cache key, use a cache policy. For more
			information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>
		       <p>If you want to send values to the origin but not include them in the cache key, use an
			origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the
            <i>Amazon CloudFront Developer Guide</i>.</p>
        <p>A <code>CacheBehavior</code> must include either a
            <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you
            use a <code>CachePolicyId</code>.</p>
		       <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>")
  @as("ForwardedValues")
  forwardedValues: option<forwardedValues>,
  @ocaml.doc("<p>The identifier for a response headers policy.</p>") @as("ResponseHeadersPolicyId")
  responseHeadersPolicyId: option<string_>,
  @ocaml.doc("<p>The unique identifier of the origin request policy that is attached to this cache behavior.
			For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("OriginRequestPolicyId")
  originRequestPolicyId: option<string_>,
  @ocaml.doc("<p>The unique identifier of the cache policy that is attached to this cache behavior. For more
			information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the
            <i>Amazon CloudFront Developer Guide</i>.</p>
        <p>A <code>CacheBehavior</code> must include either a
            <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you
            use a <code>CachePolicyId</code>.</p>")
  @as("CachePolicyId")
  cachePolicyId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this
			cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html\">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("RealtimeLogConfigArn")
  realtimeLogConfigArn: option<string_>,
  @ocaml.doc("<p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront
			to use for encrypting specific fields of data for this cache behavior.</p>")
  @as("FieldLevelEncryptionId")
  fieldLevelEncryptionId: option<string_>,
  @ocaml.doc("<p>A list of CloudFront functions that are associated with this cache behavior. CloudFront functions must
			be published to the <code>LIVE</code> stage to associate them with a cache
			behavior.</p>")
  @as("FunctionAssociations")
  functionAssociations: option<functionAssociations>,
  @ocaml.doc("<p>A complex type that contains zero or more Lambda@Edge function associations for a cache 
			behavior.</p>")
  @as("LambdaFunctionAssociations")
  lambdaFunctionAssociations: option<lambdaFunctionAssociations>,
  @ocaml.doc("<p>Whether you want CloudFront to automatically compress certain files for this cache behavior. 
			If so, specify true; if not, specify false. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html\">Serving Compressed Files</a> in the 
				<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("Compress")
  compress: option<boolean_>,
  @ocaml.doc("<p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming 
			format using the origin that is associated with this cache behavior. If so, specify 
				<code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for 
				<code>SmoothStreaming</code>, you can still distribute other content using this cache 
			behavior if the content matches the value of <code>PathPattern</code>. </p>")
  @as("SmoothStreaming")
  smoothStreaming: option<boolean_>,
  @as("AllowedMethods") allowedMethods: option<allowedMethods>,
  @ocaml.doc("<p>The protocol that viewers can use to access the files in the origin specified by 
				<code>TargetOriginId</code> when a request matches the path pattern in 
				<code>PathPattern</code>. You can specify the following options:</p> 
		       <ul>
            <li> 
				           <p>
                  <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> 
			         </li>
            <li> 
				           <p>
                  <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns 
					an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The 
					viewer then resubmits the request using the new URL. </p> 
			         </li>
            <li> 
				           <p>
                  <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP 
					status code of 403 (Forbidden). </p> 
			         </li>
         </ul> 
		       <p>For more information about requiring the HTTPS protocol, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html\">Requiring HTTPS Between Viewers and CloudFront</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p> 
		       <note> 
			         <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin
				using HTTPS is never to use any other protocol to fetch the object. If you have
				recently changed from HTTP to HTTPS, we recommend that you clear your objects’ cache
				because cached objects are protocol agnostic. That means that an edge location will
				return an object from the cache regardless of whether the current request protocol
				matches the protocol used previously. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing Cache Expiration</a> in the
				<i>Amazon CloudFront Developer Guide</i>.</p> 
		       </note>")
  @as("ViewerProtocolPolicy")
  viewerProtocolPolicy: viewerProtocolPolicy,
  @ocaml.doc("<p>A list of key groups that CloudFront can use to validate signed URLs or signed cookies.</p>
		       <p>When a cache behavior contains trusted key groups, CloudFront requires signed URLs or signed
			cookies for all requests that match the cache behavior. The URLs or cookies must be
			signed with a private key whose corresponding public key is in the key group. The signed
			URL or cookie contains information about which public key CloudFront should use to verify the
			signature. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("TrustedKeyGroups")
  trustedKeyGroups: option<trustedKeyGroups>,
  @ocaml.doc("<important>
			         <p>We recommend using <code>TrustedKeyGroups</code> instead of
				<code>TrustedSigners</code>.</p>
		       </important>
		       <p>A list of Amazon Web Services account IDs whose public keys CloudFront can use to validate signed URLs or signed
			cookies.</p>
		       <p>When a cache behavior contains trusted signers, CloudFront requires signed URLs or signed cookies
			for all requests that match the cache behavior. The URLs or cookies must be signed with
			the private key of a CloudFront key pair in the trusted signer’s Amazon Web Services account. The signed URL
			or cookie contains information about which public key CloudFront should use to verify the
			signature. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("TrustedSigners")
  trustedSigners: option<trustedSigners>,
  @ocaml.doc("<p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to
			when they match this cache behavior.</p>")
  @as("TargetOriginId")
  targetOriginId: string_,
  @ocaml.doc("<p>The pattern (for example, <code>images/*.jpg</code>) that specifies which requests to 
			apply the behavior to. When CloudFront receives a viewer request, the requested path is compared 
			with path patterns in the order in which cache behaviors are listed in the 
			distribution.</p> 
		       <note> 
			         <p>You can optionally include a slash (<code>/</code>) at the beginning of the path 
				pattern. For example, <code>/images/*.jpg</code>. CloudFront behavior is the same with or without 
				the leading <code>/</code>.</p> 
		       </note> 
		       <p>The path pattern for the default cache behavior is <code>*</code> and cannot be 
			changed. If the request for an object does not match the path pattern for any cache behaviors, 
			CloudFront applies the behavior in the default cache behavior.</p> 
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern\">Path 
				Pattern</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>")
  @as("PathPattern")
  pathPattern: string_,
}
@ocaml.doc("<p>A list of Amazon Web Services accounts and the active CloudFront key pairs in each account that CloudFront can use
			to verify the signatures of signed URLs and signed cookies.</p>")
type activeTrustedSigners = {
  @ocaml.doc("<p>A list of Amazon Web Services accounts and the identifiers of active CloudFront key pairs in each account that
			CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>")
  @as("Items")
  items: option<signerList>,
  @ocaml.doc("<p>The number of Amazon Web Services accounts in the list.</p>") @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>This field is <code>true</code> if any of the Amazon Web Services accounts in the list have active CloudFront
			key pairs that CloudFront can use to verify the signatures of signed URLs and signed cookies.
			If not, this field is <code>false</code>.</p>")
  @as("Enabled")
  enabled: boolean_,
}
@ocaml.doc("<p>A list of key groups, and the public keys in each key group,
			that CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>")
type activeTrustedKeyGroups = {
  @ocaml.doc("<p>A list of key groups, including the identifiers of the public keys in each key group that
			CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>")
  @as("Items")
  items: option<kgkeyPairIdsList>,
  @ocaml.doc("<p>The number of key groups in the list.</p>") @as("Quantity") quantity: integer_,
  @ocaml.doc("<p>This field is <code>true</code> if any of the key groups have public keys that CloudFront can use
			to verify the signatures of signed URLs and signed cookies. If not, this field is
			<code>false</code>.</p>")
  @as("Enabled")
  enabled: boolean_,
}
@ocaml.doc("<p>A streaming distribution tells CloudFront where you want RTMP content to be delivered from, and the details about how to 
			track and manage content delivery.</p>")
type streamingDistribution = {
  @ocaml.doc("<p>The current configuration information for the RTMP distribution.</p>")
  @as("StreamingDistributionConfig")
  streamingDistributionConfig: streamingDistributionConfig,
  @ocaml.doc("<p>A complex type that lists the Amazon Web Services accounts, if any, that you included in the 
				<code>TrustedSigners</code> complex type for this distribution. These are the accounts that 
			you want to allow to create signed URLs for private content.</p> 
		       <p>The <code>Signer</code> complex type lists the Amazon Web Services account number of the trusted 
			signer or <code>self</code> if the signer is the Amazon Web Services account that created the distribution. 
			The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are 
			associated with the trusted signer's Amazon Web Services account. If no <code>KeyPairId</code> element 
			appears for a <code>Signer</code>, that signer can't create signed URLs.</p> 
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private 
				Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>")
  @as("ActiveTrustedSigners")
  activeTrustedSigners: activeTrustedSigners,
  @ocaml.doc(
    "<p>The domain name that corresponds to the streaming distribution, for example, <code>s5c39gqb8ow64r.cloudfront.net</code>. </p>"
  )
  @as("DomainName")
  domainName: string_,
  @ocaml.doc("<p>The date and time that the distribution was last modified. </p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<timestamp_>,
  @ocaml.doc("<p>The current status of the RTMP distribution. When the status is <code>Deployed</code>, 
			the distribution's information is propagated to all CloudFront edge locations.</p>")
  @as("Status")
  status: string_,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) for the distribution. For example: 
			<code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where 
			<code>123456789012</code> is your Amazon Web Services account ID.</p>")
  @as("ARN")
  arn: string_,
  @ocaml.doc("<p>The identifier for the RTMP distribution. For example: 
			<code>EGTXBD79EXAMPLE</code>.</p>")
  @as("Id")
  id: string_,
}
@ocaml.doc("<p>Contains a response headers policy.</p>")
type responseHeadersPolicySummary = {
  @ocaml.doc("<p>The response headers policy.</p>") @as("ResponseHeadersPolicy")
  responseHeadersPolicy: responseHeadersPolicy,
  @ocaml.doc("<p>The type of response headers policy, either <code>managed</code> (created by Amazon Web Services) or
				<code>custom</code> (created in this Amazon Web Services account).</p>")
  @as("Type")
  type_: responseHeadersPolicyType,
}
@ocaml.doc("<p>A list of real-time log configurations.</p>")
type realtimeLogConfigs = {
  @ocaml.doc("<p>If there are more items in the list than are in this response, this element is present. It
			contains the value that you should use in the <code>Marker</code> field of a subsequent
			request to continue listing real-time log configurations where you left off. </p>")
  @as("NextMarker")
  nextMarker: option<string_>,
  @ocaml.doc("<p>This parameter indicates where this list of real-time log configurations begins. This list
			includes real-time log configurations that occur after the marker.</p>")
  @as("Marker")
  marker: string_,
  @ocaml.doc("<p>A flag that indicates whether there are more real-time log configurations than are contained
			in this list.</p>")
  @as("IsTruncated")
  isTruncated: boolean_,
  @ocaml.doc("<p>Contains the list of real-time log configurations.</p>") @as("Items")
  items: option<realtimeLogConfigList>,
  @ocaml.doc("<p>The maximum number of real-time log configurations requested.</p>") @as("MaxItems")
  maxItems: integer_,
}
@ocaml.doc("<p>Contains information about the origins for this distribution.</p>")
type origins = {
  @ocaml.doc("<p>A list of origins.</p>") @as("Items") items: originList,
  @ocaml.doc("<p>The number of origins for this distribution.</p>") @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>Contains an origin request policy.</p>")
type originRequestPolicySummary = {
  @ocaml.doc("<p>The origin request policy.</p>") @as("OriginRequestPolicy")
  originRequestPolicy: originRequestPolicy,
  @ocaml.doc("<p>The type of origin request policy, either <code>managed</code> (created by Amazon Web Services) or
			<code>custom</code> (created in this Amazon Web Services account).</p>")
  @as("Type")
  type_: originRequestPolicyType,
}
@ocaml.doc("<p>A complex data type for the origin groups specified for a distribution.</p>")
type originGroups = {
  @ocaml.doc("<p>The items (origin groups) in a distribution.</p>") @as("Items")
  items: option<originGroupList>,
  @ocaml.doc("<p>The number of origin groups.</p>") @as("Quantity") quantity: integer_,
}
@ocaml.doc("<p>A list of key groups.</p>")
type keyGroupList = {
  @ocaml.doc("<p>A list of key groups.</p>") @as("Items") items: option<keyGroupSummaryList>,
  @ocaml.doc("<p>The number of key groups returned in the response.</p>") @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>The maximum number of key groups requested.</p>") @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If there are more items in the list than are in this response, this element is present. It
			contains the value that you should use in the <code>Marker</code> field of a subsequent
			request to continue listing key groups.</p>")
  @as("NextMarker")
  nextMarker: option<string_>,
}
type fieldLevelEncryptionSummaryList = array<fieldLevelEncryptionSummary>
@ocaml.doc("<p>The field-level encryption profile summary.</p>")
type fieldLevelEncryptionProfileSummary = {
  @ocaml.doc("<p>An optional comment for the field-level encryption profile summary. The comment cannot be
			longer than 128 characters.</p>")
  @as("Comment")
  comment: option<string_>,
  @ocaml.doc("<p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and
			field patterns for specifying which fields to encrypt with this key.</p>")
  @as("EncryptionEntities")
  encryptionEntities: encryptionEntities,
  @ocaml.doc("<p>Name for the field-level encryption profile summary.</p>") @as("Name")
  name: string_,
  @ocaml.doc(
    "<p>The time when the the field-level encryption profile summary was last updated.</p>"
  )
  @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p>ID for the field-level encryption profile summary.</p>") @as("Id") id: string_,
}
@ocaml.doc("<p>A complex data type of profiles for the field-level encryption.</p>")
type fieldLevelEncryptionProfileConfig = {
  @ocaml.doc("<p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and
			field patterns for specifying which fields to encrypt with this key.</p>")
  @as("EncryptionEntities")
  encryptionEntities: encryptionEntities,
  @ocaml.doc("<p>An optional comment for the field-level encryption profile. The comment cannot be longer
			than 128 characters.</p>")
  @as("Comment")
  comment: option<string_>,
  @ocaml.doc("<p>A unique number that ensures that the request can't be replayed.</p>")
  @as("CallerReference")
  callerReference: string_,
  @ocaml.doc("<p>Profile name for the field-level encryption profile.</p>") @as("Name")
  name: string_,
}
@ocaml.doc(
  "<p>A complex data type that includes the profile configurations and other options specified for field-level encryption. </p>"
)
type fieldLevelEncryption = {
  @ocaml.doc(
    "<p>A complex data type that includes the profile configurations specified for field-level encryption. </p>"
  )
  @as("FieldLevelEncryptionConfig")
  fieldLevelEncryptionConfig: fieldLevelEncryptionConfig,
  @ocaml.doc("<p>The last time the field-level encryption configuration was changed. </p>")
  @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p>The configuration ID for a field-level encryption configuration which includes a set of profiles that specify certain
		selected data fields to be encrypted by specific public keys.</p>")
  @as("Id")
  id: string_,
}
@ocaml.doc("<p>A cache policy.</p>
		       <p>When it’s attached to a cache behavior, the cache policy determines the
			following:</p>
		       <ul>
            <li>
				           <p>The values that CloudFront includes in the cache key. These values can include HTTP headers,
					cookies, and URL query strings. CloudFront uses the cache key to find an object in its
					cache that it can return to the viewer.</p>
			         </li>
            <li>
				           <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay
					in the CloudFront cache.</p>
			         </li>
         </ul>
		       <p>The headers, cookies, and query strings that are included in the cache key are automatically
			included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t
			find a valid object in its cache that matches the request’s cache key. If you want to
			send values to the origin but <i>not</i> include them in the cache key,
			use <code>OriginRequestPolicy</code>.</p>")
type cachePolicy = {
  @ocaml.doc("<p>The cache policy configuration.</p>") @as("CachePolicyConfig")
  cachePolicyConfig: cachePolicyConfig,
  @ocaml.doc("<p>The date and time when the cache policy was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p>The unique identifier for the cache policy.</p>") @as("Id") id: string_,
}
type cacheBehaviorList = array<cacheBehavior>
type responseHeadersPolicySummaryList = array<responseHeadersPolicySummary>
type originRequestPolicySummaryList = array<originRequestPolicySummary>
type fieldLevelEncryptionProfileSummaryList = array<fieldLevelEncryptionProfileSummary>
@ocaml.doc("<p>A complex data type for field-level encryption profiles.</p>")
type fieldLevelEncryptionProfile = {
  @ocaml.doc(
    "<p>A complex data type that includes the profile name and the encryption entities for the field-level encryption profile.</p>"
  )
  @as("FieldLevelEncryptionProfileConfig")
  fieldLevelEncryptionProfileConfig: fieldLevelEncryptionProfileConfig,
  @ocaml.doc("<p>The last time the field-level encryption profile was updated.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p>The ID for a field-level encryption profile configuration which includes a set of profiles that specify certain
			selected data fields to be encrypted by specific public keys.</p>")
  @as("Id")
  id: string_,
}
@ocaml.doc("<p>List of field-level encrpytion configurations.</p>")
type fieldLevelEncryptionList = {
  @ocaml.doc("<p>An array of field-level encryption items.</p>") @as("Items")
  items: option<fieldLevelEncryptionSummaryList>,
  @ocaml.doc("<p>The number of field-level encryption items.</p>") @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>The maximum number of elements you want in the response body. </p>")
  @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If there are more elements to be listed, this element is present and contains
			the value that you can use for the <code>Marker</code> request parameter to continue
			listing your configurations where you left off.</p>")
  @as("NextMarker")
  nextMarker: option<string_>,
}
@ocaml.doc("<p>Contains a cache policy.</p>")
type cachePolicySummary = {
  @ocaml.doc("<p>The cache policy.</p>") @as("CachePolicy") cachePolicy: cachePolicy,
  @ocaml.doc("<p>The type of cache policy, either <code>managed</code> (created by Amazon Web Services) or
			<code>custom</code> (created in this Amazon Web Services account).</p>")
  @as("Type")
  type_: cachePolicyType,
}
@ocaml.doc("<p>A complex type that contains zero or more <code>CacheBehavior</code> elements. 
		</p>")
type cacheBehaviors = {
  @ocaml.doc("<p>Optional: A complex type that contains cache behaviors for this distribution. If 
				<code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>")
  @as("Items")
  items: option<cacheBehaviorList>,
  @ocaml.doc("<p>The number of cache behaviors for this distribution. </p>") @as("Quantity")
  quantity: integer_,
}
@ocaml.doc("<p>A list of response headers policies.</p>")
type responseHeadersPolicyList = {
  @ocaml.doc("<p>The response headers policies in the list.</p>") @as("Items")
  items: option<responseHeadersPolicySummaryList>,
  @ocaml.doc("<p>The number of response headers policies returned.</p>") @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>The maximum number of response headers policies requested.</p>") @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If there are more items in the list than are in this response, this element is present. It
			contains the value that you should use in the <code>Marker</code> field of a subsequent
			request to continue listing response headers policies where you left off.</p>")
  @as("NextMarker")
  nextMarker: option<string_>,
}
@ocaml.doc("<p>A list of origin request policies.</p>")
type originRequestPolicyList = {
  @ocaml.doc("<p>Contains the origin request policies in the list.</p>") @as("Items")
  items: option<originRequestPolicySummaryList>,
  @ocaml.doc("<p>The total number of origin request policies returned in the response.</p>")
  @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>The maximum number of origin request policies requested.</p>") @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If there are more items in the list than are in this response, this element is
			present. It contains the value that you should use in the <code>Marker</code> field of a
			subsequent request to continue listing origin request policies where you left
			off.</p>")
  @as("NextMarker")
  nextMarker: option<string_>,
}
@ocaml.doc("<p>List of field-level encryption profiles.</p>")
type fieldLevelEncryptionProfileList = {
  @ocaml.doc("<p>The field-level encryption profile items.</p>") @as("Items")
  items: option<fieldLevelEncryptionProfileSummaryList>,
  @ocaml.doc("<p>The number of field-level encryption profiles.</p>") @as("Quantity")
  quantity: integer_,
  @ocaml.doc(
    "<p>The maximum number of field-level encryption profiles you want in the response body. </p>"
  )
  @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If there are more elements to be listed, this element is present and contains
			the value that you can use for the <code>Marker</code> request parameter to continue
			listing your profiles where you left off.</p>")
  @as("NextMarker")
  nextMarker: option<string_>,
}
@ocaml.doc("<p>A summary of the information about a CloudFront distribution.</p>")
type distributionSummary = {
  @ocaml.doc("<p>Amazon Web Services services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content 
			publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP 
			recordal status for CNAMEs associated with distributions.</p>
		       <p>For more information about ICP recordals, see  <a href=\"https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html\">
			Signup, Accounts, and Credentials</a> in <i>Getting Started with Amazon Web Services services in China</i>.</p>")
  @as("AliasICPRecordals")
  aliasICPRecordals: option<aliasICPRecordals>,
  @ocaml.doc("<p>Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your 
			distribution.</p>")
  @as("IsIPV6Enabled")
  isIPV6Enabled: boolean_,
  @ocaml.doc("<p> Specify the maximum HTTP version that you want viewers to use to communicate with 
			CloudFront. The default value for new web distributions is <code>http2</code>. Viewers that don't 
			support <code>HTTP/2</code> will automatically use an earlier version.</p>")
  @as("HttpVersion")
  httpVersion: httpVersion,
  @ocaml.doc("<p>The Web ACL Id (if any) associated with the distribution.</p>") @as("WebACLId")
  webACLId: string_,
  @ocaml.doc("<p>A complex type that identifies ways in which you want to restrict distribution of your 
			content.</p>")
  @as("Restrictions")
  restrictions: restrictions,
  @ocaml.doc("<p>A complex type that determines the distribution’s SSL/TLS configuration for
			communicating with viewers.</p>")
  @as("ViewerCertificate")
  viewerCertificate: viewerCertificate,
  @ocaml.doc("<p>Whether the distribution is enabled to accept user requests for content.</p>")
  @as("Enabled")
  enabled: boolean_,
  @ocaml.doc("<p>A complex type that contains information about price class for this streaming 
			distribution. </p>")
  @as("PriceClass")
  priceClass: priceClass,
  @ocaml.doc("<p>The comment originally specified when this distribution was created.</p>")
  @as("Comment")
  comment: string_,
  @ocaml.doc("<p>A complex type that contains zero or more <code>CustomErrorResponses</code> 
			elements.</p>")
  @as("CustomErrorResponses")
  customErrorResponses: customErrorResponses,
  @ocaml.doc("<p>A complex type that contains zero or more <code>CacheBehavior</code> 
			elements.</p>")
  @as("CacheBehaviors")
  cacheBehaviors: cacheBehaviors,
  @ocaml.doc("<p>A complex type that describes the default cache behavior if you don't specify a 
				<code>CacheBehavior</code> element or if files don't match any of the values of 
				<code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one 
			default cache behavior.</p>")
  @as("DefaultCacheBehavior")
  defaultCacheBehavior: defaultCacheBehavior,
  @ocaml.doc("<p> A complex type that contains information about origin groups for this 
			distribution.</p>")
  @as("OriginGroups")
  originGroups: option<originGroups>,
  @ocaml.doc("<p>A complex type that contains information about origins for this distribution.</p>")
  @as("Origins")
  origins: origins,
  @ocaml.doc("<p>A complex type that contains information about CNAMEs (alternate domain names), if any, 
			for this distribution.</p>")
  @as("Aliases")
  aliases: aliases,
  @ocaml.doc(
    "<p>The domain name that corresponds to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>"
  )
  @as("DomainName")
  domainName: string_,
  @ocaml.doc("<p>The date and time the distribution was last modified.</p>") @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p>The current status of the distribution. When the status is <code>Deployed</code>, the 
			distribution's information is propagated to all CloudFront edge locations.</p>")
  @as("Status")
  status: string_,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) for the distribution. For example: 
				<code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where 
				<code>123456789012</code> is your Amazon Web Services account ID.</p>")
  @as("ARN")
  arn: string_,
  @ocaml.doc("<p>The identifier for the distribution. For example: 
			<code>EDFDVBD632BHDS5</code>.</p>")
  @as("Id")
  id: string_,
}
@ocaml.doc("<p>A distribution configuration.</p>")
type distributionConfig = {
  @ocaml.doc("<p>If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your 
			distribution, specify <code>true</code>. If you specify <code>false</code>, CloudFront responds to 
			IPv6 DNS requests with the DNS response code <code>NOERROR</code> and with no IP addresses. 
			This allows viewers to submit a second request, for an IPv4 address for your distribution. </p> 
		       <p>In general, you should enable IPv6 if you have users on IPv6 networks who want to 
			access your content. However, if you're using signed URLs or signed cookies to restrict access 
			to your content, and if you're using a custom policy that includes the <code>IpAddress</code> 
			parameter to restrict the IP addresses that can access your content, don't enable IPv6. If 
			you want to restrict access to some content by IP address and not restrict access to other 
			content (or restrict access but not by IP address), you can create two distributions. For more 
			information, see  
			<a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html\">Creating a Signed URL Using a Custom Policy</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> 
		       <p>If you're using an Route 53 Amazon Web Services Integration alias resource record set to route traffic to your CloudFront 
			distribution, you need to create a second alias resource record set when both of the following 
			are true:</p> 
		       <ul>
            <li> 
				           <p>You enable IPv6 for the distribution</p> 
			         </li>
            <li> 
				           <p>You're using alternate domain names in the URLs for your objects</p> 
			         </li>
         </ul> 
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html\">Routing Traffic 
				to an Amazon CloudFront Web Distribution by Using Your Domain Name</a> in the <i>Route 53 Amazon Web Services Integration 
				Developer Guide</i>.</p> 
		       <p>If you created a CNAME resource record set, either with Route 53 Amazon Web Services Integration or with another DNS 
			service, you don't need to make any changes. A CNAME record will route traffic to your 
			distribution regardless of the IP address format of the viewer request.</p>")
  @as("IsIPV6Enabled")
  isIPV6Enabled: option<boolean_>,
  @ocaml.doc("<p>(Optional) Specify the maximum HTTP version that you want viewers to use to communicate 
			with CloudFront. The default value for new web distributions is http2. Viewers that don't support 
			HTTP/2 automatically use an earlier HTTP version.</p> 
		       <p>For viewers and CloudFront to use HTTP/2, viewers must support TLS 1.2 or later, and must 
			support Server Name Identification (SNI).</p> 
		       <p>In general, configuring CloudFront to communicate with viewers using HTTP/2 reduces latency. 
			You can improve performance by optimizing for HTTP/2. For more information, do an Internet 
			search for \"http/2 optimization.\" </p>")
  @as("HttpVersion")
  httpVersion: option<httpVersion>,
  @ocaml.doc("<p>A unique identifier that specifies the WAF web ACL, if any, to associate
			with this distribution. To specify a web ACL created using the latest version of
            WAF, use the ACL ARN, for example
			<code>arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/473e64fd-f30b-4765-81a0-62ad96dd167a</code>.
			To specify a web ACL created using WAF Classic, use the ACL ID, for example
			<code>473e64fd-f30b-4765-81a0-62ad96dd167a</code>.</p>
		       <p>WAF is a web application firewall that lets you monitor the HTTP and HTTPS 
			requests that are forwarded to CloudFront, and lets you control access to your content. Based on 
			conditions that you specify, such as the IP addresses that requests originate from or the 
			values of query strings, CloudFront responds to requests either with the requested content or with 
			an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page 
			when a request is blocked. For more information about WAF, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html\">WAF 
				Developer Guide</a>. </p>")
  @as("WebACLId")
  webACLId: option<string_>,
  @ocaml.doc("<p>A complex type that identifies ways in which you want to restrict distribution of your 
			content.</p>")
  @as("Restrictions")
  restrictions: option<restrictions>,
  @ocaml.doc("<p>A complex type that determines the distribution’s SSL/TLS configuration for
			communicating with viewers.</p>")
  @as("ViewerCertificate")
  viewerCertificate: option<viewerCertificate>,
  @ocaml.doc("<p>From this field, you can enable or disable the selected distribution.</p>")
  @as("Enabled")
  enabled: boolean_,
  @ocaml.doc("<p>The price class that corresponds with the maximum price that you want to pay for CloudFront 
			service. If you specify <code>PriceClass_All</code>, CloudFront responds to requests for your 
			objects from all CloudFront edge locations.</p> 
		       <p>If you specify a price class other than <code>PriceClass_All</code>, CloudFront serves your 
			objects from the CloudFront edge location that has the lowest latency among the edge locations in 
			your price class. Viewers who are in or near regions that are excluded from your specified 
			price class may encounter slower performance.</p> 
		       <p>For more information about price classes, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html\">Choosing the Price Class
			for a CloudFront Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>. For
			information about CloudFront pricing, including how price classes (such as Price Class 100)
			map to CloudFront regions, see <a href=\"http://aws.amazon.com/cloudfront/pricing/\">Amazon CloudFront
			Pricing</a>.</p>")
  @as("PriceClass")
  priceClass: option<priceClass>,
  @ocaml.doc("<p>A complex type that controls whether access logs are written for the 
			distribution.</p> 
		       <p>For more information about logging, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html\">Access 
				Logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("Logging")
  logging: option<loggingConfig>,
  @ocaml.doc("<p>An optional comment to describe the distribution. The comment cannot be longer than 128
			characters.</p>")
  @as("Comment")
  comment: commentType,
  @ocaml.doc("<p>A complex type that controls the following:</p> 
		       <ul>
            <li> 
				           <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error 
					messages before returning the response to the viewer.</p> 
			         </li>
            <li> 
				           <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> 
			         </li>
         </ul> 
		       <p>For more information about custom error pages, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the 
				<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("CustomErrorResponses")
  customErrorResponses: option<customErrorResponses>,
  @ocaml.doc("<p>A complex type that contains zero or more <code>CacheBehavior</code> elements. 
		</p>")
  @as("CacheBehaviors")
  cacheBehaviors: option<cacheBehaviors>,
  @ocaml.doc("<p>A complex type that describes the default cache behavior if you don't specify a 
				<code>CacheBehavior</code> element or if files don't match any of the values of 
				<code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one 
			default cache behavior.</p>")
  @as("DefaultCacheBehavior")
  defaultCacheBehavior: defaultCacheBehavior,
  @ocaml.doc("<p> A complex type that contains information about origin groups for this 
			distribution.</p>")
  @as("OriginGroups")
  originGroups: option<originGroups>,
  @ocaml.doc("<p>A complex type that contains information about origins for this distribution. 
		</p>")
  @as("Origins")
  origins: origins,
  @ocaml.doc("<p>The object that you want CloudFront to request from your origin (for example, 
				<code>index.html</code>) when a viewer requests the root URL for your distribution 
				(<code>http://www.example.com</code>) instead of an object in your distribution 
				(<code>http://www.example.com/product-description.html</code>). Specifying a default root 
			object avoids exposing the contents of your distribution.</p> 
		       <p>Specify only the object name, for example, <code>index.html</code>. Don't add a 
				<code>/</code> before the object name.</p> 
		       <p>If you don't want to specify a default root object when you create a distribution, 
			include an empty <code>DefaultRootObject</code> element.</p> 
		       <p>To delete the default root object from an existing distribution, update the 
			distribution configuration and include an empty <code>DefaultRootObject</code> 
			element.</p> 
		       <p>To replace the default root object, update the distribution configuration and specify 
			the new object.</p> 
		       <p>For more information about the default root object, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html\">Creating a Default Root Object</a> in the 
				<i>Amazon CloudFront Developer Guide</i>.</p>")
  @as("DefaultRootObject")
  defaultRootObject: option<string_>,
  @ocaml.doc("<p>A complex type that contains information about CNAMEs (alternate domain names), if any, 
			for this distribution.</p>")
  @as("Aliases")
  aliases: option<aliases>,
  @ocaml.doc("<p>A unique value (for example, a date-time stamp) that ensures that the request can't be 
			replayed.</p> 
		       <p>If the value of <code>CallerReference</code> is new (regardless of the content of the 
				<code>DistributionConfig</code> object), CloudFront creates a new distribution.</p> 
		       <p>If <code>CallerReference</code> is a value that you already sent in a previous request to 
			create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>")
  @as("CallerReference")
  callerReference: string_,
}
type cachePolicySummaryList = array<cachePolicySummary>
type distributionSummaryList = array<distributionSummary>
@ocaml.doc("<p>A distribution Configuration and a list of tags to be associated with the 
			distribution.</p>")
type distributionConfigWithTags = {
  @ocaml.doc("<p>A complex type that contains zero or more <code>Tag</code> elements.</p>")
  @as("Tags")
  tags: tags,
  @ocaml.doc("<p>A distribution configuration.</p>") @as("DistributionConfig")
  distributionConfig: distributionConfig,
}
@ocaml.doc("<p>A distribution tells CloudFront where you want content to be delivered from, and the details about how to 
			track and manage content delivery.</p>")
type distribution = {
  @ocaml.doc("<p>Amazon Web Services services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content 
			publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP 
			recordal status for CNAMEs associated with distributions.</p>
		       <p>For more information about ICP recordals, see  <a href=\"https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html\">
			Signup, Accounts, and Credentials</a> in <i>Getting Started with Amazon Web Services services in China</i>.</p>")
  @as("AliasICPRecordals")
  aliasICPRecordals: option<aliasICPRecordals>,
  @ocaml.doc("<p>The current configuration information for the distribution. Send a <code>GET</code> 
			request to the <code>/<i>CloudFront API version</i>/distribution ID/config</code> 
			resource.</p>")
  @as("DistributionConfig")
  distributionConfig: distributionConfig,
  @ocaml.doc("<p>CloudFront automatically adds this field to the response if you’ve configured a cache
			behavior in this distribution to serve private content using key groups. This field
			contains a list of key groups and the public keys in each key group that CloudFront can use to
			verify the signatures of signed URLs or signed cookies.</p>")
  @as("ActiveTrustedKeyGroups")
  activeTrustedKeyGroups: option<activeTrustedKeyGroups>,
  @ocaml.doc("<important>
			         <p>We recommend using <code>TrustedKeyGroups</code> instead of
				<code>TrustedSigners</code>.</p>
		       </important>
		       <p>CloudFront automatically adds this field to the response if you’ve configured a cache behavior in
			this distribution to serve private content using trusted signers. This field contains a
			list of Amazon Web Services account IDs and the active CloudFront key pairs in each account that CloudFront can use
			to verify the signatures of signed URLs or signed cookies.</p>")
  @as("ActiveTrustedSigners")
  activeTrustedSigners: option<activeTrustedSigners>,
  @ocaml.doc(
    "<p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>. </p>"
  )
  @as("DomainName")
  domainName: string_,
  @ocaml.doc("<p>The number of invalidation batches currently in progress. </p>")
  @as("InProgressInvalidationBatches")
  inProgressInvalidationBatches: integer_,
  @ocaml.doc("<p>The date and time the distribution was last modified. </p>")
  @as("LastModifiedTime")
  lastModifiedTime: timestamp_,
  @ocaml.doc("<p>This response element indicates the current status of the distribution. When the status 
			is <code>Deployed</code>, the distribution's information is fully propagated to all CloudFront edge 
			locations. </p>")
  @as("Status")
  status: string_,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) for the distribution. For example: 
				<code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where 
				<code>123456789012</code> is your Amazon Web Services account ID.</p>")
  @as("ARN")
  arn: string_,
  @ocaml.doc("<p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>. 
		</p>")
  @as("Id")
  id: string_,
}
@ocaml.doc("<p>A list of cache policies.</p>")
type cachePolicyList = {
  @ocaml.doc("<p>Contains the cache policies in the list.</p>") @as("Items")
  items: option<cachePolicySummaryList>,
  @ocaml.doc("<p>The total number of cache policies returned in the response.</p>") @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>The maximum number of cache policies requested.</p>") @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If there are more items in the list than are in this response, this element is
			present. It contains the value that you should use in the <code>Marker</code> field of a
			subsequent request to continue listing cache policies where you left off.</p>")
  @as("NextMarker")
  nextMarker: option<string_>,
}
@ocaml.doc("<p>A distribution list.</p>")
type distributionList = {
  @ocaml.doc("<p>A complex type that contains one <code>DistributionSummary</code> element for each 
			distribution that was created by the current Amazon Web Services account.</p>")
  @as("Items")
  items: option<distributionSummaryList>,
  @ocaml.doc(
    "<p>The number of distributions that were created by the current Amazon Web Services account.</p>"
  )
  @as("Quantity")
  quantity: integer_,
  @ocaml.doc("<p>A flag that indicates whether more distributions remain to be listed. If your results 
			were truncated, you can make a follow-up pagination request using the <code>Marker</code> 
			request parameter to retrieve more distributions in the list.</p>")
  @as("IsTruncated")
  isTruncated: boolean_,
  @ocaml.doc("<p>The value you provided for the <code>MaxItems</code> request parameter.</p>")
  @as("MaxItems")
  maxItems: integer_,
  @ocaml.doc("<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains 
			the value you can use for the <code>Marker</code> request parameter to continue listing your 
			distributions where they left off. </p>")
  @as("NextMarker")
  nextMarker: option<string_>,
  @ocaml.doc("<p>The value you provided for the <code>Marker</code> request parameter.</p>")
  @as("Marker")
  marker: string_,
}
@ocaml.doc("<fullname>Amazon CloudFront</fullname>
		       <p>This is the <i>Amazon CloudFront API Reference</i>. This guide
            is for developers who need detailed information about 
			CloudFront API actions, data types, and errors. For detailed information about CloudFront features, see the <i>Amazon CloudFront Developer Guide</i>.</p>")
module GetFunction = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The function’s stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>"
    )
    @as("Stage")
    stage: option<functionStage>,
    @ocaml.doc("<p>The name of the function whose code you are getting.</p>") @as("Name")
    name: string_,
  }
  type response = {
    @ocaml.doc("<p>The content type (media type) of the response.</p>") @as("ContentType")
    contentType: option<string_>,
    @ocaml.doc("<p>The version identifier for the current version of the CloudFront function.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The function code of a CloudFront function.</p>") @as("FunctionCode")
    functionCode: option<functionBlob>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetFunctionCommand"
  let make = (~name, ~stage=?, ()) => new({stage: stage, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStreamingDistribution = {
  type t
  @ocaml.doc("<p>The request to delete a streaming distribution.</p>")
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when you disabled the 
			streaming distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The distribution ID. </p>") @as("Id") id: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteStreamingDistributionCommand"
  let make = (~id, ~ifMatch=?, ()) => new({ifMatch: ifMatch, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResponseHeadersPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the response headers policy that you are deleting.</p>
		       <p>The version is the response headers policy’s <code>ETag</code> value, which you can
			get using <code>ListResponseHeadersPolicies</code>,
				<code>GetResponseHeadersPolicy</code>, or
				<code>GetResponseHeadersPolicyConfig</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The identifier for the response headers policy that you are deleting.</p>
		       <p>To get the identifier, you can use <code>ListResponseHeadersPolicies</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteResponseHeadersPolicyCommand"
  let make = (~id, ~ifMatch=?, ()) => new({ifMatch: ifMatch, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRealtimeLogConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the real-time log configuration to delete.</p>"
    )
    @as("ARN")
    arn: option<string_>,
    @ocaml.doc("<p>The name of the real-time log configuration to delete.</p>") @as("Name")
    name: option<string_>,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteRealtimeLogConfigCommand"
  let make = (~arn=?, ~name=?, ()) => new({arn: arn, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when retrieving the 
			public key identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The ID of the public key you want to remove from CloudFront.</p>") @as("Id")
    id: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "DeletePublicKeyCommand"
  let make = (~id, ~ifMatch=?, ()) => new({ifMatch: ifMatch, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOriginRequestPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the origin request policy that you are deleting. The version is the origin
			request policy’s <code>ETag</code> value, which you can get using
			<code>ListOriginRequestPolicies</code>, <code>GetOriginRequestPolicy</code>, or
			<code>GetOriginRequestPolicyConfig</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The unique identifier for the origin request policy that you are deleting. To get the
			identifier, you can use <code>ListOriginRequestPolicies</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteOriginRequestPolicyCommand"
  let make = (~id, ~ifMatch=?, ()) => new({ifMatch: ifMatch, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMonitoringSubscription = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the distribution that you are disabling metrics for.</p>")
    @as("DistributionId")
    distributionId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteMonitoringSubscriptionCommand"
  let make = (~distributionId, ()) => new({distributionId: distributionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteKeyGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the key group that you are deleting. The version is the key group’s
			<code>ETag</code> value. To get the <code>ETag</code>, use <code>GetKeyGroup</code> or
			<code>GetKeyGroupConfig</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The identifier of the key group that you are deleting. To get the identifier, use
			<code>ListKeyGroups</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "DeleteKeyGroupCommand"
  let make = (~id, ~ifMatch=?, ()) => new({ifMatch: ifMatch, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The current version (<code>ETag</code> value) of the function that you are deleting, which
			you can get using <code>DescribeFunction</code>.</p>")
    @as("IfMatch")
    ifMatch: string_,
    @ocaml.doc("<p>The name of the function that you are deleting.</p>") @as("Name") name: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "DeleteFunctionCommand"
  let make = (~ifMatch, ~name, ()) => new({ifMatch: ifMatch, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFieldLevelEncryptionProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when retrieving the 
			profile to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>Request the ID of the profile you want to delete from CloudFront.</p>") @as("Id")
    id: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteFieldLevelEncryptionProfileCommand"
  let make = (~id, ~ifMatch=?, ()) => new({ifMatch: ifMatch, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFieldLevelEncryptionConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when retrieving the 
			configuration identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The ID of the configuration you want to delete from CloudFront.</p>") @as("Id")
    id: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteFieldLevelEncryptionConfigCommand"
  let make = (~id, ~ifMatch=?, ()) => new({ifMatch: ifMatch, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDistribution = {
  type t
  @ocaml.doc("<p>This action deletes a web distribution. To delete a web distribution using the CloudFront 
			API, perform the following steps.</p> 
		       <p> 
			         <b>To delete a web distribution using the CloudFront API:</b> 
		       </p> 
		       <ol>
            <li> 
				           <p>Disable the web distribution </p> 
			         </li>
            <li> 
				           <p>Submit a <code>GET Distribution Config</code> request to get the current 
					configuration and the <code>Etag</code> header for the distribution.</p> 
			         </li>
            <li> 
				           <p>Update the XML document that was returned in the response to your <code>GET 
						Distribution Config</code> request to change the value of <code>Enabled</code> to 
						<code>false</code>.</p> 
			         </li>
            <li> 
				           <p>Submit a <code>PUT Distribution Config</code> request to update the configuration 
					for your distribution. In the request body, include the XML document that you updated in 
					Step 3. Set the value of the HTTP <code>If-Match</code> header to the value of the 
						<code>ETag</code> header that CloudFront returned when you submitted the <code>GET 
						Distribution Config</code> request in Step 2.</p> 
			         </li>
            <li> 
				           <p>Review the response to the <code>PUT Distribution Config</code> request to confirm 
					that the distribution was successfully disabled.</p> 
			         </li>
            <li> 
				           <p>Submit a <code>GET Distribution</code> request to confirm that your changes have 
					propagated. When propagation is complete, the value of <code>Status</code> is 
						<code>Deployed</code>.</p> 
			         </li>
            <li> 
				           <p>Submit a <code>DELETE Distribution</code> request. Set the value of the HTTP 
						<code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront 
					returned when you submitted the <code>GET Distribution Config</code> request in Step 
					6.</p> 
			         </li>
            <li> 
				           <p>Review the response to your <code>DELETE Distribution</code> request to confirm 
					that the distribution was successfully deleted.</p> 
			         </li>
         </ol> 
		       <p>For information about deleting a distribution using the CloudFront console, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html\">Deleting a Distribution</a> in the 
				<i>Amazon CloudFront Developer Guide</i>.</p>")
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when you disabled the 
			distribution. For example: <code>E2QWRUHAPOMQZL</code>. </p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The distribution ID. </p>") @as("Id") id: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteDistributionCommand"
  let make = (~id, ~ifMatch=?, ()) => new({ifMatch: ifMatch, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCloudFrontOriginAccessIdentity = {
  type t
  @ocaml.doc("<p>Deletes a origin access identity.</p>")
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header you received from a previous <code>GET</code> 
			or <code>PUT</code> request. For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The origin access identity's ID.</p>") @as("Id") id: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteCloudFrontOriginAccessIdentityCommand"
  let make = (~id, ~ifMatch=?, ()) => new({ifMatch: ifMatch, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCachePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the cache policy that you are deleting. The version is the cache
			policy’s <code>ETag</code> value, which you can get using
			<code>ListCachePolicies</code>, <code>GetCachePolicy</code>, or
			<code>GetCachePolicyConfig</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The unique identifier for the cache policy that you are deleting. To get the
			identifier, you can use <code>ListCachePolicies</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "DeleteCachePolicyCommand"
  let make = (~id, ~ifMatch=?, ()) => new({ifMatch: ifMatch, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The alias (also known as a CNAME) to add to the target distribution.</p>")
    @as("Alias")
    alias: string_,
    @ocaml.doc("<p>The ID of the distribution that you’re associating the alias with.</p>")
    @as("TargetDistributionId")
    targetDistributionId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "AssociateAliasCommand"
  let make = (~alias, ~targetDistributionId, ()) =>
    new({alias: alias, targetDistributionId: targetDistributionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetPublicKeyConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the public key whose configuration you are getting.</p>")
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc("<p>The identifier for this version of the public key configuration.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>A public key configuration.</p>") @as("PublicKeyConfig")
    publicKeyConfig: option<publicKeyConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetPublicKeyConfigCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCloudFrontOriginAccessIdentityConfig = {
  type t
  @ocaml.doc("<p>The origin access identity's configuration information. For more information, see 
			<a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CloudFrontOriginAccessIdentityConfig.html\">CloudFrontOriginAccessIdentityConfig</a>.</p>")
  type request = {@ocaml.doc("<p>The identity's ID. </p>") @as("Id") id: string_}
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the configuration. For example: 
			<code>E2QWRUHAPOMQZL</code>.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The origin access identity's configuration information. </p>")
    @as("CloudFrontOriginAccessIdentityConfig")
    cloudFrontOriginAccessIdentityConfig: option<cloudFrontOriginAccessIdentityConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetCloudFrontOriginAccessIdentityConfigCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when retrieving the public key to update. 
			For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The identifier of the public key that you are updating.</p>") @as("Id")
    id: string_,
    @ocaml.doc("<p>A public key configuration.</p>") @as("PublicKeyConfig")
    publicKeyConfig: publicKeyConfig,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the current version of the public key.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The public key.</p>") @as("PublicKey") publicKey: option<publicKey>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "UpdatePublicKeyCommand"
  let make = (~id, ~publicKeyConfig, ~ifMatch=?, ()) =>
    new({ifMatch: ifMatch, id: id, publicKeyConfig: publicKeyConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The function code. For more information about writing a CloudFront function, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html\">Writing function
			code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
    @as("FunctionCode")
    functionCode: functionBlob,
    @ocaml.doc("<p>Configuration information about the function.</p>") @as("FunctionConfig")
    functionConfig: functionConfig,
    @ocaml.doc("<p>The current version (<code>ETag</code> value) of the function that you are updating, which
			you can get using <code>DescribeFunction</code>.</p>")
    @as("IfMatch")
    ifMatch: string_,
    @ocaml.doc("<p>The name of the function that you are updating.</p>") @as("Name") name: string_,
  }
  type response = {
    @ocaml.doc("<p>The version identifier for the current version of the CloudFront function.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc(
      "<p>Contains configuration information and metadata about a CloudFront function.</p>"
    )
    @as("FunctionSummary")
    functionSummary: option<functionSummary>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "UpdateFunctionCommand"
  let make = (~functionCode, ~functionConfig, ~ifMatch, ~name, ()) =>
    new({functionCode: functionCode, functionConfig: functionConfig, ifMatch: ifMatch, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCloudFrontOriginAccessIdentity = {
  type t
  @ocaml.doc("<p>The request to update an origin access identity.</p>")
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when retrieving the 
			identity's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The identity's id.</p>") @as("Id") id: string_,
    @ocaml.doc("<p>The identity's configuration information.</p>")
    @as("CloudFrontOriginAccessIdentityConfig")
    cloudFrontOriginAccessIdentityConfig: cloudFrontOriginAccessIdentityConfig,
  }
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the configuration. For example: 
			<code>E2QWRUHAPOMQZL</code>.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The origin access identity's information.</p>")
    @as("CloudFrontOriginAccessIdentity")
    cloudFrontOriginAccessIdentity: option<cloudFrontOriginAccessIdentity>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateCloudFrontOriginAccessIdentityCommand"
  let make = (~id, ~cloudFrontOriginAccessIdentityConfig, ~ifMatch=?, ()) =>
    new({
      ifMatch: ifMatch,
      id: id,
      cloudFrontOriginAccessIdentityConfig: cloudFrontOriginAccessIdentityConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  @ocaml.doc("<p> The request to remove tags from a CloudFront resource.</p>")
  type request = {
    @ocaml.doc("<p> A complex type that contains zero or more <code>Tag</code> key elements.</p>")
    @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc("<p> An ARN of a CloudFront resource.</p>") @as("Resource") resource: resourceARN,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resource, ()) => new({tagKeys: tagKeys, resource: resource})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PublishFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The current version (<code>ETag</code> value) of the function that you are publishing, which
			you can get using <code>DescribeFunction</code>.</p>")
    @as("IfMatch")
    ifMatch: string_,
    @ocaml.doc("<p>The name of the function that you are publishing.</p>") @as("Name")
    name: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>Contains configuration information and metadata about a CloudFront function.</p>"
    )
    @as("FunctionSummary")
    functionSummary: option<functionSummary>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "PublishFunctionCommand"
  let make = (~ifMatch, ~name, ()) => new({ifMatch: ifMatch, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionsByResponseHeadersPolicyId = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the response headers policy whose associated distribution IDs you want to
			list.</p>")
    @as("ResponseHeadersPolicyId")
    responseHeadersPolicyId: string_,
    @ocaml.doc(
      "<p>The maximum number of distribution IDs that you want to get in the response.</p>"
    )
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in your list of
			distribution IDs. The response includes distribution IDs in the list that occur after
			the marker. To get the next page of the list, set this field’s value to the value of
				<code>NextMarker</code> from the current page’s response.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  type response = {@as("DistributionIdList") distributionIdList: option<distributionIdList>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListDistributionsByResponseHeadersPolicyIdCommand"
  let make = (~responseHeadersPolicyId, ~maxItems=?, ~marker=?, ()) =>
    new({responseHeadersPolicyId: responseHeadersPolicyId, maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionsByOriginRequestPolicyId = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the origin request policy whose associated distribution IDs you want to
			list.</p>")
    @as("OriginRequestPolicyId")
    originRequestPolicyId: string_,
    @ocaml.doc("<p>The maximum number of distribution IDs that you want in the response.</p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in your list of
			distribution IDs. The response includes distribution IDs in the list that occur after
			the marker. To get the next page of the list, set this field’s value to the value of
			<code>NextMarker</code> from the current page’s response.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A list of distribution IDs.</p>") @as("DistributionIdList")
    distributionIdList: option<distributionIdList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListDistributionsByOriginRequestPolicyIdCommand"
  let make = (~originRequestPolicyId, ~maxItems=?, ~marker=?, ()) =>
    new({originRequestPolicyId: originRequestPolicyId, maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionsByKeyGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the key group whose associated distribution IDs you are listing.</p>")
    @as("KeyGroupId")
    keyGroupId: string_,
    @ocaml.doc("<p>The maximum number of distribution IDs that you want in the response.</p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in your list of
			distribution IDs. The response includes distribution IDs in the list that occur after
			the marker. To get the next page of the list, set this field’s value to the value of
			<code>NextMarker</code> from the current page’s response.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  type response = {@as("DistributionIdList") distributionIdList: option<distributionIdList>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListDistributionsByKeyGroupCommand"
  let make = (~keyGroupId, ~maxItems=?, ~marker=?, ()) =>
    new({keyGroupId: keyGroupId, maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionsByCachePolicyId = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the cache policy whose associated distribution IDs you want to list.</p>"
    )
    @as("CachePolicyId")
    cachePolicyId: string_,
    @ocaml.doc("<p>The maximum number of distribution IDs that you want in the response.</p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in your list of
			distribution IDs. The response includes distribution IDs in the list that occur after
			the marker. To get the next page of the list, set this field’s value to the value of
			<code>NextMarker</code> from the current page’s response.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A list of distribution IDs.</p>") @as("DistributionIdList")
    distributionIdList: option<distributionIdList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListDistributionsByCachePolicyIdCommand"
  let make = (~cachePolicyId, ~maxItems=?, ~marker=?, ()) =>
    new({cachePolicyId: cachePolicyId, maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the public key you are getting.</p>") @as("Id") id: string_,
  }
  type response = {
    @ocaml.doc("<p>The identifier for this version of the public key.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The public key.</p>") @as("PublicKey") publicKey: option<publicKey>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetPublicKeyCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMonitoringSubscription = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the distribution that you are getting metrics information for.</p>")
    @as("DistributionId")
    distributionId: string_,
  }
  type response = {
    @ocaml.doc("<p>A monitoring subscription. This structure contains information about whether additional
			CloudWatch metrics are enabled for a given CloudFront distribution.</p>")
    @as("MonitoringSubscription")
    monitoringSubscription: option<monitoringSubscription>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetMonitoringSubscriptionCommand"
  let make = (~distributionId, ()) => new({distributionId: distributionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKeyGroupConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the key group whose configuration you are getting. To get the
			identifier, use <code>ListKeyGroups</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc("<p>The identifier for this version of the key group.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The key group configuration.</p>") @as("KeyGroupConfig")
    keyGroupConfig: option<keyGroupConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetKeyGroupConfigCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCloudFrontOriginAccessIdentity = {
  type t
  @ocaml.doc("<p>The request to get an origin access identity's information.</p>")
  type request = {@ocaml.doc("<p>The identity's ID.</p>") @as("Id") id: string_}
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the origin access identity's information. For example: 
				<code>E2QWRUHAPOMQZL</code>.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The origin access identity's information.</p>")
    @as("CloudFrontOriginAccessIdentity")
    cloudFrontOriginAccessIdentity: option<cloudFrontOriginAccessIdentity>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetCloudFrontOriginAccessIdentityCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFunction = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The function’s stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>"
    )
    @as("Stage")
    stage: option<functionStage>,
    @ocaml.doc("<p>The name of the function that you are getting information about.</p>")
    @as("Name")
    name: string_,
  }
  type response = {
    @ocaml.doc("<p>The version identifier for the current version of the CloudFront function.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc(
      "<p>Contains configuration information and metadata about a CloudFront function.</p>"
    )
    @as("FunctionSummary")
    functionSummary: option<functionSummary>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "DescribeFunctionCommand"
  let make = (~name, ~stage=?, ()) => new({stage: stage, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>A CloudFront public key configuration.</p>") @as("PublicKeyConfig")
    publicKeyConfig: publicKeyConfig,
  }
  type response = {
    @ocaml.doc("<p>The identifier for this version of the public key.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The URL of the public key.</p>") @as("Location") location: option<string_>,
    @ocaml.doc("<p>The public key.</p>") @as("PublicKey") publicKey: option<publicKey>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "CreatePublicKeyCommand"
  let make = (~publicKeyConfig, ()) => new({publicKeyConfig: publicKeyConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMonitoringSubscription = {
  type t
  type request = {
    @ocaml.doc("<p>A monitoring subscription. This structure contains information about whether additional
			CloudWatch metrics are enabled for a given CloudFront distribution.</p>")
    @as("MonitoringSubscription")
    monitoringSubscription: monitoringSubscription,
    @ocaml.doc("<p>The ID of the distribution that you are enabling metrics for.</p>")
    @as("DistributionId")
    distributionId: string_,
  }
  type response = {
    @ocaml.doc("<p>A monitoring subscription. This structure contains information about whether additional
			CloudWatch metrics are enabled for a given CloudFront distribution.</p>")
    @as("MonitoringSubscription")
    monitoringSubscription: option<monitoringSubscription>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateMonitoringSubscriptionCommand"
  let make = (~monitoringSubscription, ~distributionId, ()) =>
    new({monitoringSubscription: monitoringSubscription, distributionId: distributionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The function code. For more information about writing a CloudFront function, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html\">Writing function
			code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
    @as("FunctionCode")
    functionCode: functionBlob,
    @ocaml.doc("<p>Configuration information about the function, including an optional comment and the
			function’s runtime.</p>")
    @as("FunctionConfig")
    functionConfig: functionConfig,
    @ocaml.doc("<p>A name to identify the function.</p>") @as("Name") name: functionName,
  }
  type response = {
    @ocaml.doc("<p>The version identifier for the current version of the CloudFront function.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The URL of the CloudFront function. Use the URL to manage the function with the CloudFront
			API.</p>")
    @as("Location")
    location: option<string_>,
    @ocaml.doc(
      "<p>Contains configuration information and metadata about a CloudFront function.</p>"
    )
    @as("FunctionSummary")
    functionSummary: option<functionSummary>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "CreateFunctionCommand"
  let make = (~functionCode, ~functionConfig, ~name, ()) =>
    new({functionCode: functionCode, functionConfig: functionConfig, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCloudFrontOriginAccessIdentity = {
  type t
  @ocaml.doc("<p>The request to create a new origin access identity (OAI). An origin access identity is a 
			special CloudFront user that you can associate with Amazon S3 origins, so that you can secure all or 
			just some of your Amazon S3 content. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html\">
			Restricting Access to Amazon S3 Content by Using an Origin Access Identity</a> in the 
			<i>Amazon CloudFront Developer Guide</i>. </p>")
  type request = {
    @ocaml.doc("<p>The current configuration information for the identity.</p>")
    @as("CloudFrontOriginAccessIdentityConfig")
    cloudFrontOriginAccessIdentityConfig: cloudFrontOriginAccessIdentityConfig,
  }
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the origin access identity created.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The fully qualified URI of the new origin access identity just created.</p>")
    @as("Location")
    location: option<string_>,
    @ocaml.doc("<p>The origin access identity's information.</p>")
    @as("CloudFrontOriginAccessIdentity")
    cloudFrontOriginAccessIdentity: option<cloudFrontOriginAccessIdentity>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateCloudFrontOriginAccessIdentityCommand"
  let make = (~cloudFrontOriginAccessIdentityConfig, ()) =>
    new({cloudFrontOriginAccessIdentityConfig: cloudFrontOriginAccessIdentityConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateKeyGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the key group that you are updating. The version is the key group’s
			<code>ETag</code> value.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The identifier of the key group that you are updating.</p>") @as("Id")
    id: string_,
    @ocaml.doc("<p>The key group configuration.</p>") @as("KeyGroupConfig")
    keyGroupConfig: keyGroupConfig,
  }
  type response = {
    @ocaml.doc("<p>The identifier for this version of the key group.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The key group that was just updated.</p>") @as("KeyGroup")
    keyGroup: option<keyGroup>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "UpdateKeyGroupCommand"
  let make = (~id, ~keyGroupConfig, ~ifMatch=?, ()) =>
    new({ifMatch: ifMatch, id: id, keyGroupConfig: keyGroupConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The event object to test the function with. For more information about the structure of the
			event object, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function\">Testing functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>")
    @as("EventObject")
    eventObject: functionEventObject,
    @ocaml.doc("<p>The stage of the function that you are testing, either <code>DEVELOPMENT</code> or
			<code>LIVE</code>.</p>")
    @as("Stage")
    stage: option<functionStage>,
    @ocaml.doc("<p>The current version (<code>ETag</code> value) of the function that you are testing, which
			you can get using <code>DescribeFunction</code>.</p>")
    @as("IfMatch")
    ifMatch: string_,
    @ocaml.doc("<p>The name of the function that you are testing.</p>") @as("Name") name: string_,
  }
  type response = {
    @ocaml.doc("<p>An object that represents the result of running the function with the provided event
			object.</p>")
    @as("TestResult")
    testResult: option<testResult>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "TestFunctionCommand"
  let make = (~eventObject, ~ifMatch, ~name, ~stage=?, ()) =>
    new({eventObject: eventObject, stage: stage, ifMatch: ifMatch, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  @ocaml.doc("<p> The request to add tags to a CloudFront resource.</p>")
  type request = {
    @ocaml.doc("<p> A complex type that contains zero or more <code>Tag</code> elements.</p>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p> An ARN of a CloudFront resource.</p>") @as("Resource") resource: resourceARN,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resource, ()) => new({tags: tags, resource: resource})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  @ocaml.doc("<p> The request to list tags for a CloudFront resource.</p>")
  type request = {
    @ocaml.doc("<p> An ARN of a CloudFront resource.</p>") @as("Resource") resource: resourceARN,
  }
  @ocaml.doc("<p> The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p> A complex type that contains zero or more <code>Tag</code> elements.</p>")
    @as("Tags")
    tags: tags,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resource, ()) => new({resource: resource})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPublicKeys = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of public keys you want in the response body. </p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this when paginating results to indicate where to begin in your list of public keys. The results include public keys in the list that 
			occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the 
			<code>NextMarker</code> from the current page's response (which is also the ID of the last public key on that page). </p>")
    @as("Marker")
    marker: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>Returns a list of all public keys that have been added to CloudFront for this account.</p>"
    )
    @as("PublicKeyList")
    publicKeyList: option<publicKeyList>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListPublicKeysCommand"
  let make = (~maxItems=?, ~marker=?, ()) => new({maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInvalidations = {
  type t
  @ocaml.doc("<p>The request to list invalidations. </p>")
  type request = {
    @ocaml.doc("<p>The maximum number of invalidation batches that you want in the response 
			body.</p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this parameter when paginating results to indicate where to begin in your list of 
			invalidation batches. Because the results are returned in decreasing order from most recent to 
			oldest, the most recent results are on the first page, the second page will contain earlier 
			results, and so on. To get the next page of results, set <code>Marker</code> to the value of 
			the <code>NextMarker</code> from the current page's response. This value is the same as the ID 
			of the last invalidation batch on that page. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The distribution's ID.</p>") @as("DistributionId") distributionId: string_,
  }
  @ocaml.doc("<p>The returned result of the corresponding request. </p>")
  type response = {
    @ocaml.doc("<p>Information about invalidation batches. </p>") @as("InvalidationList")
    invalidationList: option<invalidationList>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListInvalidationsCommand"
  let make = (~distributionId, ~maxItems=?, ~marker=?, ()) =>
    new({maxItems: maxItems, marker: marker, distributionId: distributionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConflictingAliases = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of conflicting aliases that you want in the response.</p>")
    @as("MaxItems")
    maxItems: option<listConflictingAliasesMaxItemsInteger>,
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in the list of
			conflicting aliases. The response includes conflicting aliases in the list that occur
			after the marker. To get the next page of the list, set this field’s value to the value
			of <code>NextMarker</code> from the current page’s response.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The alias (also called a CNAME) to search for conflicting aliases.</p>")
    @as("Alias")
    alias: aliasString,
    @ocaml.doc("<p>The ID of a distribution in your account that has an attached SSL/TLS certificate that
			includes the provided alias.</p>")
    @as("DistributionId")
    distributionId: distributionIdString,
  }
  type response = {
    @ocaml.doc("<p>A list of conflicting aliases.</p>") @as("ConflictingAliasesList")
    conflictingAliasesList: option<conflictingAliasesList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListConflictingAliasesCommand"
  let make = (~alias, ~distributionId, ~maxItems=?, ~marker=?, ()) =>
    new({maxItems: maxItems, marker: marker, alias: alias, distributionId: distributionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCloudFrontOriginAccessIdentities = {
  type t
  @ocaml.doc("<p>The request to list origin access identities. </p>")
  type request = {
    @ocaml.doc("<p>The maximum number of origin access identities you want in the response body. 
		</p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this when paginating results to indicate where to begin in your list of origin 
			access identities. The results include identities in the list that occur after the marker. To 
			get the next page of results, set the <code>Marker</code> to the value of the 
				<code>NextMarker</code> from the current page's response (which is also the ID of the last 
			identity on that page).</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @ocaml.doc("<p>The returned result of the corresponding request. </p>")
  type response = {
    @ocaml.doc("<p>The <code>CloudFrontOriginAccessIdentityList</code> type. </p>")
    @as("CloudFrontOriginAccessIdentityList")
    cloudFrontOriginAccessIdentityList: option<cloudFrontOriginAccessIdentityList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListCloudFrontOriginAccessIdentitiesCommand"
  let make = (~maxItems=?, ~marker=?, ()) => new({maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStreamingDistributionConfig = {
  type t
  @ocaml.doc("<p>To request to get a streaming distribution configuration.</p>")
  type request = {@ocaml.doc("<p>The streaming distribution's ID.</p>") @as("Id") id: string_}
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>. 
		</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The streaming distribution's configuration information.</p>")
    @as("StreamingDistributionConfig")
    streamingDistributionConfig: option<streamingDistributionConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetStreamingDistributionConfigCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKeyGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the key group that you are getting. To get the identifier, use
			<code>ListKeyGroups</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc("<p>The identifier for this version of the key group.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The key group.</p>") @as("KeyGroup") keyGroup: option<keyGroup>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetKeyGroupCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateKeyGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A key group configuration.</p>") @as("KeyGroupConfig")
    keyGroupConfig: keyGroupConfig,
  }
  type response = {
    @ocaml.doc("<p>The identifier for this version of the key group.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The URL of the key group.</p>") @as("Location") location: option<string_>,
    @ocaml.doc("<p>The key group that was just created.</p>") @as("KeyGroup")
    keyGroup: option<keyGroup>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "CreateKeyGroupCommand"
  let make = (~keyGroupConfig, ()) => new({keyGroupConfig: keyGroupConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRealtimeLogConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The sampling rate for this real-time log configuration. The sampling rate determines the
			percentage of viewer requests that are represented in the real-time log data. You must
			provide an integer between 1 and 100, inclusive.</p>")
    @as("SamplingRate")
    samplingRate: option<long>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for this real-time log configuration.</p>")
    @as("ARN")
    arn: option<string_>,
    @ocaml.doc("<p>The name for this real-time log configuration.</p>") @as("Name")
    name: option<string_>,
    @ocaml.doc("<p>A list of fields to include in each real-time log record.</p>
		       <p>For more information about fields, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields\">Real-time log configuration fields</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
    @as("Fields")
    fields: option<fieldList>,
    @ocaml.doc("<p>Contains information about the Amazon Kinesis data stream where you are sending real-time
			log data.</p>")
    @as("EndPoints")
    endPoints: option<endPointList>,
  }
  type response = {
    @ocaml.doc("<p>A real-time log configuration.</p>") @as("RealtimeLogConfig")
    realtimeLogConfig: option<realtimeLogConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateRealtimeLogConfigCommand"
  let make = (~samplingRate=?, ~arn=?, ~name=?, ~fields=?, ~endPoints=?, ()) =>
    new({samplingRate: samplingRate, arn: arn, name: name, fields: fields, endPoints: endPoints})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFunctions = {
  type t
  type request = {
    @ocaml.doc("<p>An optional filter to return only the functions that are in the specified stage,
			either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>")
    @as("Stage")
    stage: option<functionStage>,
    @ocaml.doc("<p>The maximum number of functions that you want in the response.</p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in your list of
			functions. The response includes functions in the list that occur after the marker. To
			get the next page of the list, set this field’s value to the value of
			<code>NextMarker</code> from the current page’s response.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A list of CloudFront functions.</p>") @as("FunctionList")
    functionList: option<functionList>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListFunctionsCommand"
  let make = (~stage=?, ~maxItems=?, ~marker=?, ()) =>
    new({stage: stage, maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResponseHeadersPolicyConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the response headers policy.</p>
		       <p>If the response headers policy is attached to a distribution’s cache behavior, you can
			get the policy’s identifier using <code>ListDistributions</code> or
				<code>GetDistribution</code>. If the response headers policy is not attached to a
			cache behavior, you can get the identifier using
				<code>ListResponseHeadersPolicies</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The version identifier for the current version of the response headers policy.</p>"
    )
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>Contains a response headers policy.</p>") @as("ResponseHeadersPolicyConfig")
    responseHeadersPolicyConfig: option<responseHeadersPolicyConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetResponseHeadersPolicyConfigCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRealtimeLogConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the real-time log configuration to get.</p>")
    @as("ARN")
    arn: option<string_>,
    @ocaml.doc("<p>The name of the real-time log configuration to get.</p>") @as("Name")
    name: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A real-time log configuration.</p>") @as("RealtimeLogConfig")
    realtimeLogConfig: option<realtimeLogConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetRealtimeLogConfigCommand"
  let make = (~arn=?, ~name=?, ()) => new({arn: arn, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOriginRequestPolicyConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the origin request policy. If the origin request policy is
			attached to a distribution’s cache behavior, you can get the policy’s identifier using
			<code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request
			policy is not attached to a cache behavior, you can get the identifier using
			<code>ListOriginRequestPolicies</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc("<p>The current version of the origin request policy.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The origin request policy configuration.</p>") @as("OriginRequestPolicyConfig")
    originRequestPolicyConfig: option<originRequestPolicyConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetOriginRequestPolicyConfigCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInvalidation = {
  type t
  @ocaml.doc("<p>The request to get an invalidation's information. </p>")
  type request = {
    @ocaml.doc("<p>The identifier for the invalidation request, for example, 
			<code>IDFDVBD632BHDS5</code>.</p>")
    @as("Id")
    id: string_,
    @ocaml.doc("<p>The distribution's ID.</p>") @as("DistributionId") distributionId: string_,
  }
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc(
      "<p>The invalidation's information. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html\">Invalidation Complex Type</a>. </p>"
    )
    @as("Invalidation")
    invalidation: option<invalidation>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetInvalidationCommand"
  let make = (~id, ~distributionId, ()) => new({id: id, distributionId: distributionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRealtimeLogConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The sampling rate for this real-time log configuration. The sampling rate determines the
			percentage of viewer requests that are represented in the real-time log data. You must
			provide an integer between 1 and 100, inclusive.</p>")
    @as("SamplingRate")
    samplingRate: long,
    @ocaml.doc("<p>A unique name to identify this real-time log configuration.</p>") @as("Name")
    name: string_,
    @ocaml.doc("<p>A list of fields to include in each real-time log record.</p>
		       <p>For more information about fields, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields\">Real-time log configuration fields</a> in the
			<i>Amazon CloudFront Developer Guide</i>.</p>")
    @as("Fields")
    fields: fieldList,
    @ocaml.doc("<p>Contains information about the Amazon Kinesis data stream where you are sending real-time
			log data.</p>")
    @as("EndPoints")
    endPoints: endPointList,
  }
  type response = {
    @ocaml.doc("<p>A real-time log configuration.</p>") @as("RealtimeLogConfig")
    realtimeLogConfig: option<realtimeLogConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateRealtimeLogConfigCommand"
  let make = (~samplingRate, ~name, ~fields, ~endPoints, ()) =>
    new({samplingRate: samplingRate, name: name, fields: fields, endPoints: endPoints})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInvalidation = {
  type t
  @ocaml.doc("<p>The request to create an invalidation.</p>")
  type request = {
    @ocaml.doc("<p>The batch information for the invalidation.</p>") @as("InvalidationBatch")
    invalidationBatch: invalidationBatch,
    @ocaml.doc("<p>The distribution's id.</p>") @as("DistributionId") distributionId: string_,
  }
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The invalidation's information.</p>") @as("Invalidation")
    invalidation: option<invalidation>,
    @ocaml.doc("<p>The fully qualified URI of the distribution and invalidation batch request, including 
			the <code>Invalidation ID</code>.</p>")
    @as("Location")
    location: option<string_>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateInvalidationCommand"
  let make = (~invalidationBatch, ~distributionId, ()) =>
    new({invalidationBatch: invalidationBatch, distributionId: distributionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResponseHeadersPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the response headers policy that you are updating.</p>
		       <p>The version is returned in the cache policy’s <code>ETag</code> field in the response
			to <code>GetResponseHeadersPolicyConfig</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The identifier for the response headers policy that you are updating.</p>")
    @as("Id")
    id: string_,
    @ocaml.doc("<p>A response headers policy configuration.</p>") @as("ResponseHeadersPolicyConfig")
    responseHeadersPolicyConfig: responseHeadersPolicyConfig,
  }
  type response = {
    @ocaml.doc("<p>The current version of the response headers policy.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>A response headers policy.</p>") @as("ResponseHeadersPolicy")
    responseHeadersPolicy: option<responseHeadersPolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateResponseHeadersPolicyCommand"
  let make = (~id, ~responseHeadersPolicyConfig, ~ifMatch=?, ()) =>
    new({ifMatch: ifMatch, id: id, responseHeadersPolicyConfig: responseHeadersPolicyConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateOriginRequestPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the origin request policy that you are updating. The version is returned in
			the origin request policy’s <code>ETag</code> field in the response to
			<code>GetOriginRequestPolicyConfig</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The unique identifier for the origin request policy that you are updating. The identifier is
			returned in a cache behavior’s <code>OriginRequestPolicyId</code> field in the response
			to <code>GetDistributionConfig</code>.</p>")
    @as("Id")
    id: string_,
    @ocaml.doc("<p>An origin request policy configuration.</p>") @as("OriginRequestPolicyConfig")
    originRequestPolicyConfig: originRequestPolicyConfig,
  }
  type response = {
    @ocaml.doc("<p>The current version of the origin request policy.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>An origin request policy.</p>") @as("OriginRequestPolicy")
    originRequestPolicy: option<originRequestPolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateOriginRequestPolicyCommand"
  let make = (~id, ~originRequestPolicyConfig, ~ifMatch=?, ()) =>
    new({ifMatch: ifMatch, id: id, originRequestPolicyConfig: originRequestPolicyConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreamingDistributions = {
  type t
  @ocaml.doc("<p>The request to list your streaming distributions. </p>")
  type request = {
    @ocaml.doc(
      "<p>The value that you provided for the <code>MaxItems</code> request parameter.</p>"
    )
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>The value that you provided for the <code>Marker</code> request parameter.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @ocaml.doc("<p>The returned result of the corresponding request. </p>")
  type response = {
    @ocaml.doc("<p>The <code>StreamingDistributionList</code> type. </p>")
    @as("StreamingDistributionList")
    streamingDistributionList: option<streamingDistributionList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListStreamingDistributionsCommand"
  let make = (~maxItems=?, ~marker=?, ()) => new({maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResponseHeadersPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the response headers policy.</p>
		       <p>If the response headers policy is attached to a distribution’s cache behavior, you can
			get the policy’s identifier using <code>ListDistributions</code> or
				<code>GetDistribution</code>. If the response headers policy is not attached to a
			cache behavior, you can get the identifier using
				<code>ListResponseHeadersPolicies</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The version identifier for the current version of the response headers policy.</p>"
    )
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>Contains a response headers policy.</p>") @as("ResponseHeadersPolicy")
    responseHeadersPolicy: option<responseHeadersPolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetResponseHeadersPolicyCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOriginRequestPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the origin request policy. If the origin request policy is
			attached to a distribution’s cache behavior, you can get the policy’s identifier using
			<code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request
			policy is not attached to a cache behavior, you can get the identifier using
			<code>ListOriginRequestPolicies</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc("<p>The current version of the origin request policy.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The origin request policy.</p>") @as("OriginRequestPolicy")
    originRequestPolicy: option<originRequestPolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetOriginRequestPolicyCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFieldLevelEncryptionConfig = {
  type t
  type request = {
    @ocaml.doc("<p>Request the ID for the field-level encryption configuration information.</p>")
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>"
    )
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>Return the field-level encryption configuration information.</p>")
    @as("FieldLevelEncryptionConfig")
    fieldLevelEncryptionConfig: option<fieldLevelEncryptionConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetFieldLevelEncryptionConfigCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCachePolicyConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the cache policy. If the cache policy is attached to a
			distribution’s cache behavior, you can get the policy’s identifier using
			<code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is
			not attached to a cache behavior, you can get the identifier using
			<code>ListCachePolicies</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc("<p>The current version of the cache policy.</p>") @as("ETag") etag: option<string_>,
    @ocaml.doc("<p>The cache policy configuration.</p>") @as("CachePolicyConfig")
    cachePolicyConfig: option<cachePolicyConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetCachePolicyConfigCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResponseHeadersPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Contains metadata about the response headers policy, and a set of configurations that
			specify the response headers.</p>")
    @as("ResponseHeadersPolicyConfig")
    responseHeadersPolicyConfig: responseHeadersPolicyConfig,
  }
  type response = {
    @ocaml.doc(
      "<p>The version identifier for the current version of the response headers policy.</p>"
    )
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The URL of the response headers policy.</p>") @as("Location")
    location: option<string_>,
    @ocaml.doc("<p>Contains a response headers policy.</p>") @as("ResponseHeadersPolicy")
    responseHeadersPolicy: option<responseHeadersPolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateResponseHeadersPolicyCommand"
  let make = (~responseHeadersPolicyConfig, ()) =>
    new({responseHeadersPolicyConfig: responseHeadersPolicyConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOriginRequestPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>An origin request policy configuration.</p>") @as("OriginRequestPolicyConfig")
    originRequestPolicyConfig: originRequestPolicyConfig,
  }
  type response = {
    @ocaml.doc("<p>The current version of the origin request policy.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The fully qualified URI of the origin request policy just created.</p>")
    @as("Location")
    location: option<string_>,
    @ocaml.doc("<p>An origin request policy.</p>") @as("OriginRequestPolicy")
    originRequestPolicy: option<originRequestPolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateOriginRequestPolicyCommand"
  let make = (~originRequestPolicyConfig, ()) =>
    new({originRequestPolicyConfig: originRequestPolicyConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStreamingDistribution = {
  type t
  @ocaml.doc("<p>The request to update a streaming distribution.</p>")
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when retrieving the 
			streaming distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The streaming distribution's id.</p>") @as("Id") id: string_,
    @ocaml.doc("<p>The streaming distribution's configuration information.</p>")
    @as("StreamingDistributionConfig")
    streamingDistributionConfig: streamingDistributionConfig,
  }
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the configuration. For example: 
			<code>E2QWRUHAPOMQZL</code>.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The streaming distribution's information.</p>") @as("StreamingDistribution")
    streamingDistribution: option<streamingDistribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateStreamingDistributionCommand"
  let make = (~id, ~streamingDistributionConfig, ~ifMatch=?, ()) =>
    new({ifMatch: ifMatch, id: id, streamingDistributionConfig: streamingDistributionConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFieldLevelEncryptionConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to update. 
			For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The ID of the configuration you want to update.</p>") @as("Id") id: string_,
    @ocaml.doc("<p>Request to update a field-level encryption configuration. </p>")
    @as("FieldLevelEncryptionConfig")
    fieldLevelEncryptionConfig: fieldLevelEncryptionConfig,
  }
  type response = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when updating the configuration. 
			For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>Return the results of updating the configuration.</p>")
    @as("FieldLevelEncryption")
    fieldLevelEncryption: option<fieldLevelEncryption>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateFieldLevelEncryptionConfigCommand"
  let make = (~id, ~fieldLevelEncryptionConfig, ~ifMatch=?, ()) =>
    new({ifMatch: ifMatch, id: id, fieldLevelEncryptionConfig: fieldLevelEncryptionConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCachePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the cache policy that you are updating. The version is returned in the cache
			policy’s <code>ETag</code> field in the response to
			<code>GetCachePolicyConfig</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The unique identifier for the cache policy that you are updating. The identifier is returned
			in a cache behavior’s <code>CachePolicyId</code> field in the response to
			<code>GetDistributionConfig</code>.</p>")
    @as("Id")
    id: string_,
    @ocaml.doc("<p>A cache policy configuration.</p>") @as("CachePolicyConfig")
    cachePolicyConfig: cachePolicyConfig,
  }
  type response = {
    @ocaml.doc("<p>The current version of the cache policy.</p>") @as("ETag") etag: option<string_>,
    @ocaml.doc("<p>A cache policy.</p>") @as("CachePolicy") cachePolicy: option<cachePolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "UpdateCachePolicyCommand"
  let make = (~id, ~cachePolicyConfig, ~ifMatch=?, ()) =>
    new({ifMatch: ifMatch, id: id, cachePolicyConfig: cachePolicyConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRealtimeLogConfigs = {
  type t
  type request = {
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in your list of real-time
			log configurations. The response includes real-time log configurations in the list that
			occur after the marker. To get the next page of the list, set this field’s value to the
			value of <code>NextMarker</code> from the current page’s response.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of real-time log configurations that you want in the response.</p>"
    )
    @as("MaxItems")
    maxItems: option<baseInteger>,
  }
  type response = {
    @ocaml.doc("<p>A list of real-time log configurations.</p>") @as("RealtimeLogConfigs")
    realtimeLogConfigs: option<realtimeLogConfigs>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListRealtimeLogConfigsCommand"
  let make = (~marker=?, ~maxItems=?, ()) => new({marker: marker, maxItems: maxItems})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListKeyGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of key groups that you want in the response.</p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in your list of key
			groups. The response includes key groups in the list that occur after the marker. To get
			the next page of the list, set this field’s value to the value of
			<code>NextMarker</code> from the current page’s response.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A list of key groups.</p>") @as("KeyGroupList")
    keyGroupList: option<keyGroupList>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListKeyGroupsCommand"
  let make = (~maxItems=?, ~marker=?, ()) => new({maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStreamingDistribution = {
  type t
  @ocaml.doc("<p>The request to get a streaming distribution's information.</p>")
  type request = {@ocaml.doc("<p>The streaming distribution's ID.</p>") @as("Id") id: string_}
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the streaming distribution's information. For example: 
				<code>E2QWRUHAPOMQZL</code>.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The streaming distribution's information.</p>") @as("StreamingDistribution")
    streamingDistribution: option<streamingDistribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetStreamingDistributionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFieldLevelEncryptionProfileConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Get the ID for the field-level encryption profile configuration information.</p>"
    )
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The current version of the field-level encryption profile configuration result. For example: <code>E2QWRUHAPOMQZL</code>.</p>"
    )
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>Return the field-level encryption profile configuration information.</p>")
    @as("FieldLevelEncryptionProfileConfig")
    fieldLevelEncryptionProfileConfig: option<fieldLevelEncryptionProfileConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetFieldLevelEncryptionProfileConfigCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFieldLevelEncryption = {
  type t
  type request = {
    @ocaml.doc("<p>Request the ID for the field-level encryption configuration information.</p>")
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>"
    )
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>Return the field-level encryption configuration information.</p>")
    @as("FieldLevelEncryption")
    fieldLevelEncryption: option<fieldLevelEncryption>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetFieldLevelEncryptionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCachePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the cache policy. If the cache policy is attached to a
			distribution’s cache behavior, you can get the policy’s identifier using
			<code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is
			not attached to a cache behavior, you can get the identifier using
			<code>ListCachePolicies</code>.</p>")
    @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc("<p>The current version of the cache policy.</p>") @as("ETag") etag: option<string_>,
    @ocaml.doc("<p>The cache policy.</p>") @as("CachePolicy") cachePolicy: option<cachePolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetCachePolicyCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStreamingDistributionWithTags = {
  type t
  @ocaml.doc("<p>The request to create a new streaming distribution with tags.</p>")
  type request = {
    @ocaml.doc("<p> The streaming distribution's configuration information. </p>")
    @as("StreamingDistributionConfigWithTags")
    streamingDistributionConfigWithTags: streamingDistributionConfigWithTags,
  }
  @ocaml.doc("<p>The returned result of the corresponding request. </p>")
  type response = {
    @ocaml.doc("<p>The current version of the distribution created.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc(
      "<p>The fully qualified URI of the new streaming distribution resource just created.</p>"
    )
    @as("Location")
    location: option<string_>,
    @ocaml.doc("<p>The streaming distribution's information. </p>") @as("StreamingDistribution")
    streamingDistribution: option<streamingDistribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateStreamingDistributionWithTagsCommand"
  let make = (~streamingDistributionConfigWithTags, ()) =>
    new({streamingDistributionConfigWithTags: streamingDistributionConfigWithTags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStreamingDistribution = {
  type t
  @ocaml.doc("<p>The request to create a new streaming distribution.</p>")
  type request = {
    @ocaml.doc("<p>The streaming distribution's configuration information.</p>")
    @as("StreamingDistributionConfig")
    streamingDistributionConfig: streamingDistributionConfig,
  }
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the streaming distribution created.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc(
      "<p>The fully qualified URI of the new streaming distribution resource just created.</p>"
    )
    @as("Location")
    location: option<string_>,
    @ocaml.doc("<p>The streaming distribution's information.</p>") @as("StreamingDistribution")
    streamingDistribution: option<streamingDistribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateStreamingDistributionCommand"
  let make = (~streamingDistributionConfig, ()) =>
    new({streamingDistributionConfig: streamingDistributionConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFieldLevelEncryptionConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The request to create a new field-level encryption configuration.</p>")
    @as("FieldLevelEncryptionConfig")
    fieldLevelEncryptionConfig: fieldLevelEncryptionConfig,
  }
  type response = {
    @ocaml.doc(
      "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>"
    )
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The fully qualified URI of the new configuration resource just created.</p>")
    @as("Location")
    location: option<string_>,
    @ocaml.doc("<p>Returned when you create a new field-level encryption configuration.</p>")
    @as("FieldLevelEncryption")
    fieldLevelEncryption: option<fieldLevelEncryption>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateFieldLevelEncryptionConfigCommand"
  let make = (~fieldLevelEncryptionConfig, ()) =>
    new({fieldLevelEncryptionConfig: fieldLevelEncryptionConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCachePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>A cache policy configuration.</p>") @as("CachePolicyConfig")
    cachePolicyConfig: cachePolicyConfig,
  }
  type response = {
    @ocaml.doc("<p>The current version of the cache policy.</p>") @as("ETag") etag: option<string_>,
    @ocaml.doc("<p>The fully qualified URI of the cache policy just created.</p>") @as("Location")
    location: option<string_>,
    @ocaml.doc("<p>A cache policy.</p>") @as("CachePolicy") cachePolicy: option<cachePolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "CreateCachePolicyCommand"
  let make = (~cachePolicyConfig, ()) => new({cachePolicyConfig: cachePolicyConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFieldLevelEncryptionProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when retrieving the profile identity to update. 
			For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The ID of the field-level encryption profile request. </p>") @as("Id")
    id: string_,
    @ocaml.doc("<p>Request to update a field-level encryption profile. </p>")
    @as("FieldLevelEncryptionProfileConfig")
    fieldLevelEncryptionProfileConfig: fieldLevelEncryptionProfileConfig,
  }
  type response = {
    @ocaml.doc("<p>The result of the field-level encryption profile request. </p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>Return the results of updating the profile.</p>")
    @as("FieldLevelEncryptionProfile")
    fieldLevelEncryptionProfile: option<fieldLevelEncryptionProfile>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateFieldLevelEncryptionProfileCommand"
  let make = (~id, ~fieldLevelEncryptionProfileConfig, ~ifMatch=?, ()) =>
    new({
      ifMatch: ifMatch,
      id: id,
      fieldLevelEncryptionProfileConfig: fieldLevelEncryptionProfileConfig,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFieldLevelEncryptionConfigs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of field-level encryption configurations you want in the response body. </p>"
    )
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this when paginating results to indicate where to begin in your list of configurations. The results include configurations in the list that 
			occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the 
			<code>NextMarker</code> from the current page's response (which is also the ID of the last configuration on that page). </p>")
    @as("Marker")
    marker: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>Returns a list of all field-level encryption configurations that have been created in CloudFront for this account.</p>"
    )
    @as("FieldLevelEncryptionList")
    fieldLevelEncryptionList: option<fieldLevelEncryptionList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListFieldLevelEncryptionConfigsCommand"
  let make = (~maxItems=?, ~marker=?, ()) => new({maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFieldLevelEncryptionProfile = {
  type t
  type request = {
    @ocaml.doc("<p>Get the ID for the field-level encryption profile information.</p>") @as("Id")
    id: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>"
    )
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>Return the field-level encryption profile information.</p>")
    @as("FieldLevelEncryptionProfile")
    fieldLevelEncryptionProfile: option<fieldLevelEncryptionProfile>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetFieldLevelEncryptionProfileCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFieldLevelEncryptionProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The request to create a field-level encryption profile.</p>")
    @as("FieldLevelEncryptionProfileConfig")
    fieldLevelEncryptionProfileConfig: fieldLevelEncryptionProfileConfig,
  }
  type response = {
    @ocaml.doc(
      "<p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>"
    )
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The fully qualified URI of the new profile resource just created.</p>")
    @as("Location")
    location: option<string_>,
    @ocaml.doc("<p>Returned when you create a new field-level encryption profile.</p>")
    @as("FieldLevelEncryptionProfile")
    fieldLevelEncryptionProfile: option<fieldLevelEncryptionProfile>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateFieldLevelEncryptionProfileCommand"
  let make = (~fieldLevelEncryptionProfileConfig, ()) =>
    new({fieldLevelEncryptionProfileConfig: fieldLevelEncryptionProfileConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResponseHeadersPolicies = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of response headers policies that you want to get in the response.</p>"
    )
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in your list of response
			headers policies. The response includes response headers policies in the list that occur
			after the marker. To get the next page of the list, set this field’s value to the value
			of <code>NextMarker</code> from the current page’s response. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A filter to get only the specified kind of response headers policies. Valid values
			are:</p>
		       <ul>
            <li>
				           <p>
                  <code>managed</code> – Gets only the managed policies created by Amazon Web Services.</p>
			         </li>
            <li>
				           <p>
                  <code>custom</code> – Gets only the custom policies created in your
					Amazon Web Services account.</p>
			         </li>
         </ul>")
    @as("Type")
    type_: option<responseHeadersPolicyType>,
  }
  type response = {
    @ocaml.doc("<p>A list of response headers policies.</p>") @as("ResponseHeadersPolicyList")
    responseHeadersPolicyList: option<responseHeadersPolicyList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListResponseHeadersPoliciesCommand"
  let make = (~maxItems=?, ~marker=?, ~type_=?, ()) =>
    new({maxItems: maxItems, marker: marker, type_: type_})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOriginRequestPolicies = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of origin request policies that you want in the response.</p>"
    )
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in your list of
			origin request policies. The response includes origin request policies in the list that
			occur after the marker. To get the next page of the list, set this field’s value to the
			value of <code>NextMarker</code> from the current page’s response.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A filter to return only the specified kinds of origin request policies. Valid values
			are:</p>
		       <ul>
            <li>
				           <p>
                  <code>managed</code> – Returns only the managed policies created by Amazon Web Services.</p>
			         </li>
            <li>
				           <p>
                  <code>custom</code> – Returns only the custom policies created in your Amazon Web Services account.</p>
			         </li>
         </ul>")
    @as("Type")
    type_: option<originRequestPolicyType>,
  }
  type response = {
    @ocaml.doc("<p>A list of origin request policies.</p>") @as("OriginRequestPolicyList")
    originRequestPolicyList: option<originRequestPolicyList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListOriginRequestPoliciesCommand"
  let make = (~maxItems=?, ~marker=?, ~type_=?, ()) =>
    new({maxItems: maxItems, marker: marker, type_: type_})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFieldLevelEncryptionProfiles = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of field-level encryption profiles you want in the response body. </p>"
    )
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this when paginating results to indicate where to begin in your list of profiles. The results include profiles in the list that 
			occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the 
			<code>NextMarker</code> from the current page's response (which is also the ID of the last profile on that page). </p>")
    @as("Marker")
    marker: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>Returns a list of the field-level encryption profiles that have been created in CloudFront for this account.</p>"
    )
    @as("FieldLevelEncryptionProfileList")
    fieldLevelEncryptionProfileList: option<fieldLevelEncryptionProfileList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListFieldLevelEncryptionProfilesCommand"
  let make = (~maxItems=?, ~marker=?, ()) => new({maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDistributionConfig = {
  type t
  @ocaml.doc("<p>The request to get a distribution configuration.</p>")
  type request = {
    @ocaml.doc(
      "<p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>"
    )
    @as("Id")
    id: string_,
  }
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the configuration. For example: 
			<code>E2QWRUHAPOMQZL</code>.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The distribution's configuration information.</p>") @as("DistributionConfig")
    distributionConfig: option<distributionConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetDistributionConfigCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDistribution = {
  type t
  @ocaml.doc("<p>The request to update a distribution.</p>")
  type request = {
    @ocaml.doc("<p>The value of the <code>ETag</code> header that you received when retrieving the 
			distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>")
    @as("IfMatch")
    ifMatch: option<string_>,
    @ocaml.doc("<p>The distribution's id.</p>") @as("Id") id: string_,
    @ocaml.doc("<p>The distribution's configuration information.</p>") @as("DistributionConfig")
    distributionConfig: distributionConfig,
  }
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the configuration. For example: 
			<code>E2QWRUHAPOMQZL</code>.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The distribution's information.</p>") @as("Distribution")
    distribution: option<distribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateDistributionCommand"
  let make = (~id, ~distributionConfig, ~ifMatch=?, ()) =>
    new({ifMatch: ifMatch, id: id, distributionConfig: distributionConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCachePolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of cache policies that you want in the response.</p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in your list of
			cache policies. The response includes cache policies in the list that occur after the
			marker. To get the next page of the list, set this field’s value to the value of
			<code>NextMarker</code> from the current page’s response.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A filter to return only the specified kinds of cache policies. Valid values
			are:</p>
		       <ul>
            <li>
				           <p>
                  <code>managed</code> – Returns only the managed policies created by Amazon Web Services.</p>
			         </li>
            <li>
				           <p>
                  <code>custom</code> – Returns only the custom policies created in your Amazon Web Services account.</p>
			         </li>
         </ul>")
    @as("Type")
    type_: option<cachePolicyType>,
  }
  type response = {
    @ocaml.doc("<p>A list of cache policies.</p>") @as("CachePolicyList")
    cachePolicyList: option<cachePolicyList>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListCachePoliciesCommand"
  let make = (~maxItems=?, ~marker=?, ~type_=?, ()) =>
    new({maxItems: maxItems, marker: marker, type_: type_})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDistribution = {
  type t
  @ocaml.doc("<p>The request to get a distribution's information.</p>")
  type request = {
    @ocaml.doc(
      "<p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>"
    )
    @as("Id")
    id: string_,
  }
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the distribution's information. For example: 
				<code>E2QWRUHAPOMQZL</code>.</p>")
    @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The distribution's information.</p>") @as("Distribution")
    distribution: option<distribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetDistributionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDistributionWithTags = {
  type t
  @ocaml.doc("<p>The request to create a new distribution with tags. </p>")
  type request = {
    @ocaml.doc("<p>The distribution's configuration information. </p>")
    @as("DistributionConfigWithTags")
    distributionConfigWithTags: distributionConfigWithTags,
  }
  @ocaml.doc("<p>The returned result of the corresponding request. </p>")
  type response = {
    @ocaml.doc("<p>The current version of the distribution created.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The fully qualified URI of the new distribution resource just created.</p>")
    @as("Location")
    location: option<string_>,
    @ocaml.doc("<p>The distribution's information. </p>") @as("Distribution")
    distribution: option<distribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateDistributionWithTagsCommand"
  let make = (~distributionConfigWithTags, ()) =>
    new({distributionConfigWithTags: distributionConfigWithTags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDistribution = {
  type t
  @ocaml.doc("<p>The request to create a new distribution.</p>")
  type request = {
    @ocaml.doc("<p>The distribution's configuration information.</p>") @as("DistributionConfig")
    distributionConfig: distributionConfig,
  }
  @ocaml.doc("<p>The returned result of the corresponding request.</p>")
  type response = {
    @ocaml.doc("<p>The current version of the distribution created.</p>") @as("ETag")
    etag: option<string_>,
    @ocaml.doc("<p>The fully qualified URI of the new distribution resource just created.</p>")
    @as("Location")
    location: option<string_>,
    @ocaml.doc("<p>The distribution's information.</p>") @as("Distribution")
    distribution: option<distribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateDistributionCommand"
  let make = (~distributionConfig, ()) => new({distributionConfig: distributionConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionsByWebACLId = {
  type t
  @ocaml.doc("<p>The request to list distributions that are associated with a specified WAF web 
			ACL.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the WAF web ACL that you want to list the associated distributions. 
			If you specify \"null\" for the ID, the request returns a list of the distributions that aren't 
			associated with a web ACL.</p>")
    @as("WebACLId")
    webACLId: string_,
    @ocaml.doc("<p>The maximum number of distributions that you want CloudFront to return in the response body. 
			The maximum and default values are both 100.</p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use <code>Marker</code> and <code>MaxItems</code> to control pagination of results. If 
			you have more than <code>MaxItems</code> distributions that satisfy the request, the response 
			includes a <code>NextMarker</code> element. To get the next page of results, submit another 
			request. For the value of <code>Marker</code>, specify the value of <code>NextMarker</code> 
			from the last response. (For the first request, omit <code>Marker</code>.) </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @ocaml.doc("<p>The response to a request to list the distributions that are associated with a 
			specified WAF web ACL.</p>")
  type response = {
    @ocaml.doc("<p>The <code>DistributionList</code> type. </p>") @as("DistributionList")
    distributionList: option<distributionList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListDistributionsByWebACLIdCommand"
  let make = (~webACLId, ~maxItems=?, ~marker=?, ()) =>
    new({webACLId: webACLId, maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionsByRealtimeLogConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the real-time log configuration whose associated
			distributions you want to list.</p>")
    @as("RealtimeLogConfigArn")
    realtimeLogConfigArn: option<string_>,
    @ocaml.doc("<p>The name of the real-time log configuration whose associated distributions you want to
			list.</p>")
    @as("RealtimeLogConfigName")
    realtimeLogConfigName: option<string_>,
    @ocaml.doc("<p>The maximum number of distributions that you want in the response.</p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this field when paginating results to indicate where to begin in your list of
			distributions. The response includes distributions in the list that occur after the
			marker. To get the next page of the list, set this field’s value to the value of
			<code>NextMarker</code> from the current page’s response.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  type response = {@as("DistributionList") distributionList: option<distributionList>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListDistributionsByRealtimeLogConfigCommand"
  let make = (~realtimeLogConfigArn=?, ~realtimeLogConfigName=?, ~maxItems=?, ~marker=?, ()) =>
    new({
      realtimeLogConfigArn: realtimeLogConfigArn,
      realtimeLogConfigName: realtimeLogConfigName,
      maxItems: maxItems,
      marker: marker,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributions = {
  type t
  @ocaml.doc("<p>The request to list your distributions. </p>")
  type request = {
    @ocaml.doc("<p>The maximum number of distributions you want in the response body.</p>")
    @as("MaxItems")
    maxItems: option<baseInteger>,
    @ocaml.doc("<p>Use this when paginating results to indicate where to begin in your list of 
			distributions. The results include distributions in the list that occur after the marker. To 
			get the next page of results, set the <code>Marker</code> to the value of the 
				<code>NextMarker</code> from the current page's response (which is also the ID of the last 
			distribution on that page).</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @ocaml.doc("<p>The returned result of the corresponding request. </p>")
  type response = {
    @ocaml.doc("<p>The <code>DistributionList</code> type. </p>") @as("DistributionList")
    distributionList: option<distributionList>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListDistributionsCommand"
  let make = (~maxItems=?, ~marker=?, ()) => new({maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
