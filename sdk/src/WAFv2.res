type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-wafv2") @new
external createClient: unit => awsServiceClient = "WAFv2Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vendorName = string
@ocaml.doc("<p>The path component of the URI of a web request. This is the part of a web request that identifies a resource, for example, <code>/images/daily-ad.jpg</code>.</p>
         <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>")
type uriPath = unit
type uristring = string
type timestamp_ = Js.Date.t
type textTransformationType = [
  | @as("URL_DECODE") #URL_DECODE
  | @as("CMD_LINE") #CMD_LINE
  | @as("LOWERCASE") #LOWERCASE
  | @as("HTML_ENTITY_DECODE") #HTML_ENTITY_DECODE
  | @as("COMPRESS_WHITE_SPACE") #COMPRESS_WHITE_SPACE
  | @as("NONE") #NONE
]
type textTransformationPriority = int
type tagValue = string
type tagKey = string
type size = float
type searchString = NodeJs.Buffer.t
type scope = [@as("REGIONAL") #REGIONAL | @as("CLOUDFRONT") #CLOUDFRONT]
type sampleWeight = float
type rulePriority = int
type responseStatusCode = int
type responseContentType = [
  | @as("APPLICATION_JSON") #APPLICATION_JSON
  | @as("TEXT_HTML") #TEXT_HTML
  | @as("TEXT_PLAIN") #TEXT_PLAIN
]
type responseContent = string
type resourceType = [
  | @as("APPSYNC") #APPSYNC
  | @as("API_GATEWAY") #API_GATEWAY
  | @as("APPLICATION_LOAD_BALANCER") #APPLICATION_LOAD_BALANCER
]
type resourceArn = string
type regexPatternString = string
type rateLimit = float
type rateBasedStatementAggregateKeyType = [@as("FORWARDED_IP") #FORWARDED_IP | @as("IP") #IP]
@ocaml.doc("<p>The query string of a web request. This is the part of a URL that appears after a <code>?</code> character, if any.</p>
           <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>")
type queryString = unit
type positionalConstraint = [
  | @as("CONTAINS_WORD") #CONTAINS_WORD
  | @as("CONTAINS") #CONTAINS
  | @as("ENDS_WITH") #ENDS_WITH
  | @as("STARTS_WITH") #STARTS_WITH
  | @as("EXACTLY") #EXACTLY
]
type populationSize = float
type policyString = string
type parameterExceptionParameter = string
type parameterExceptionField = [
  | @as("FILTER_CONDITION") #FILTER_CONDITION
  | @as("LOGGING_FILTER") #LOGGING_FILTER
  | @as("BODY_PARSING_FALLBACK_BEHAVIOR") #BODY_PARSING_FALLBACK_BEHAVIOR
  | @as("JSON_MATCH_SCOPE") #JSON_MATCH_SCOPE
  | @as("JSON_MATCH_PATTERN") #JSON_MATCH_PATTERN
  | @as("CUSTOM_RESPONSE_BODY") #CUSTOM_RESPONSE_BODY
  | @as("CUSTOM_RESPONSE") #CUSTOM_RESPONSE
  | @as("RESPONSE_CONTENT_TYPE") #RESPONSE_CONTENT_TYPE
  | @as("CUSTOM_REQUEST_HANDLING") #CUSTOM_REQUEST_HANDLING
  | @as("HEADER_NAME") #HEADER_NAME
  | @as("IP_SET_FORWARDED_IP_CONFIG") #IP_SET_FORWARDED_IP_CONFIG
  | @as("FORWARDED_IP_CONFIG") #FORWARDED_IP_CONFIG
  | @as("POSITION") #POSITION
  | @as("FALLBACK_BEHAVIOR") #FALLBACK_BEHAVIOR
  | @as("FIREWALL_MANAGER_STATEMENT") #FIREWALL_MANAGER_STATEMENT
  | @as("METRIC_NAME") #METRIC_NAME
  | @as("TAG_KEYS") #TAG_KEYS
  | @as("TAGS") #TAGS
  | @as("RESOURCE_TYPE") #RESOURCE_TYPE
  | @as("RESOURCE_ARN") #RESOURCE_ARN
  | @as("SCOPE_VALUE") #SCOPE_VALUE
  | @as("OVERRIDE_ACTION") #OVERRIDE_ACTION
  | @as("ENTITY_LIMIT") #ENTITY_LIMIT
  | @as("RULE_ACTION") #RULE_ACTION
  | @as("DEFAULT_ACTION") #DEFAULT_ACTION
  | @as("SINGLE_HEADER") #SINGLE_HEADER
  | @as("SINGLE_QUERY_ARGUMENT") #SINGLE_QUERY_ARGUMENT
  | @as("TEXT_TRANSFORMATION") #TEXT_TRANSFORMATION
  | @as("FIELD_TO_MATCH") #FIELD_TO_MATCH
  | @as("IP_ADDRESS_VERSION") #IP_ADDRESS_VERSION
  | @as("IP_ADDRESS") #IP_ADDRESS
  | @as("NOT_STATEMENT") #NOT_STATEMENT
  | @as("OR_STATEMENT") #OR_STATEMENT
  | @as("AND_STATEMENT") #AND_STATEMENT
  | @as("LABEL_MATCH_STATEMENT") #LABEL_MATCH_STATEMENT
  | @as("MANAGED_RULE_SET_STATEMENT") #MANAGED_RULE_SET_STATEMENT
  | @as("IP_SET_REFERENCE_STATEMENT") #IP_SET_REFERENCE_STATEMENT
  | @as("REGEX_PATTERN_REFERENCE_STATEMENT") #REGEX_PATTERN_REFERENCE_STATEMENT
  | @as("RULE_GROUP_REFERENCE_STATEMENT") #RULE_GROUP_REFERENCE_STATEMENT
  | @as("RATE_BASED_STATEMENT") #RATE_BASED_STATEMENT
  | @as("GEO_MATCH_STATEMENT") #GEO_MATCH_STATEMENT
  | @as("SIZE_CONSTRAINT_STATEMENT") #SIZE_CONSTRAINT_STATEMENT
  | @as("XSS_MATCH_STATEMENT") #XSS_MATCH_STATEMENT
  | @as("SQLI_MATCH_STATEMENT") #SQLI_MATCH_STATEMENT
  | @as("BYTE_MATCH_STATEMENT") #BYTE_MATCH_STATEMENT
  | @as("STATEMENT") #STATEMENT
  | @as("EXCLUDED_RULE") #EXCLUDED_RULE
  | @as("RULE") #RULE
  | @as("MANAGED_RULE_SET") #MANAGED_RULE_SET
  | @as("IP_SET") #IP_SET
  | @as("REGEX_PATTERN_SET") #REGEX_PATTERN_SET
  | @as("RULE_GROUP") #RULE_GROUP
  | @as("WEB_ACL") #WEB_ACL
]
type paginationLimit = int
@ocaml.doc("<p>Specifies that AWS WAF should do nothing. This is generally used to try out a rule without performing any actions. You set the <code>OverrideAction</code> on the <a>Rule</a>. </p>
           <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>")
type noneAction = unit
type nextMarker = string
type metricName = string
@ocaml.doc("<p>The HTTP method of a web request. The method indicates the type of operation that the request is asking the origin to perform. </p>
           <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>")
type method = unit
type lockToken = string
type listMaxItems = float
type labelName = string
type labelMatchScope = [@as("NAMESPACE") #NAMESPACE | @as("LABEL") #LABEL]
type labelMatchKey = string
type jsonPointerPath = string
type jsonMatchScope = [@as("VALUE") #VALUE | @as("KEY") #KEY | @as("ALL") #ALL]
type ipstring = string
type ipaddressVersion = [@as("IPV6") #IPV6 | @as("IPV4") #IPV4]
type ipaddress = string
type headerValue = string
type headerName = string
type httpversion = string
type httpmethod = string
type forwardedIPPosition = [@as("ANY") #ANY | @as("LAST") #LAST | @as("FIRST") #FIRST]
type forwardedIPHeaderName = string
type filterRequirement = [@as("MEETS_ANY") #MEETS_ANY | @as("MEETS_ALL") #MEETS_ALL]
type filterBehavior = [@as("DROP") #DROP | @as("KEEP") #KEEP]
type fieldToMatchData = string
type fallbackBehavior = [@as("NO_MATCH") #NO_MATCH | @as("MATCH") #MATCH]
type errorReason = string
type errorMessage = string
type entityName = string
type entityId = string
type entityDescription = string
type customHTTPHeaderValue = string
type customHTTPHeaderName = string
type countryCode = [
  | @as("ZW") #ZW
  | @as("ZM") #ZM
  | @as("YE") #YE
  | @as("EH") #EH
  | @as("WF") #WF
  | @as("VI") #VI
  | @as("VG") #VG
  | @as("VN") #VN
  | @as("VE") #VE
  | @as("VU") #VU
  | @as("UZ") #UZ
  | @as("UY") #UY
  | @as("UM") #UM
  | @as("US") #US
  | @as("GB") #GB
  | @as("AE") #AE
  | @as("UA") #UA
  | @as("UG") #UG
  | @as("TV") #TV
  | @as("TC") #TC
  | @as("TM") #TM
  | @as("TR") #TR
  | @as("TN") #TN
  | @as("TT") #TT
  | @as("TO") #TO
  | @as("TK") #TK
  | @as("TG") #TG
  | @as("TL") #TL
  | @as("TH") #TH
  | @as("TZ") #TZ
  | @as("TJ") #TJ
  | @as("TW") #TW
  | @as("SY") #SY
  | @as("CH") #CH
  | @as("SE") #SE
  | @as("SZ") #SZ
  | @as("SJ") #SJ
  | @as("SR") #SR
  | @as("SD") #SD
  | @as("LK") #LK
  | @as("ES") #ES
  | @as("SS") #SS
  | @as("GS") #GS
  | @as("ZA") #ZA
  | @as("SO") #SO
  | @as("SB") #SB
  | @as("SI") #SI
  | @as("SK") #SK
  | @as("SX") #SX
  | @as("SG") #SG
  | @as("SL") #SL
  | @as("SC") #SC
  | @as("RS") #RS
  | @as("SN") #SN
  | @as("SA") #SA
  | @as("ST") #ST
  | @as("SM") #SM
  | @as("WS") #WS
  | @as("VC") #VC
  | @as("PM") #PM
  | @as("MF") #MF
  | @as("LC") #LC
  | @as("KN") #KN
  | @as("SH") #SH
  | @as("BL") #BL
  | @as("RW") #RW
  | @as("RU") #RU
  | @as("RO") #RO
  | @as("RE") #RE
  | @as("QA") #QA
  | @as("PR") #PR
  | @as("PT") #PT
  | @as("PL") #PL
  | @as("PN") #PN
  | @as("PH") #PH
  | @as("PE") #PE
  | @as("PY") #PY
  | @as("PG") #PG
  | @as("PA") #PA
  | @as("PS") #PS
  | @as("PW") #PW
  | @as("PK") #PK
  | @as("OM") #OM
  | @as("NO") #NO
  | @as("MP") #MP
  | @as("NF") #NF
  | @as("NU") #NU
  | @as("NG") #NG
  | @as("NE") #NE
  | @as("NI") #NI
  | @as("NZ") #NZ
  | @as("NC") #NC
  | @as("NL") #NL
  | @as("NP") #NP
  | @as("NR") #NR
  | @as("NA") #NA
  | @as("MM") #MM
  | @as("MZ") #MZ
  | @as("MA") #MA
  | @as("MS") #MS
  | @as("ME") #ME
  | @as("MN") #MN
  | @as("MC") #MC
  | @as("MD") #MD
  | @as("FM") #FM
  | @as("MX") #MX
  | @as("YT") #YT
  | @as("MU") #MU
  | @as("MR") #MR
  | @as("MQ") #MQ
  | @as("MH") #MH
  | @as("MT") #MT
  | @as("ML") #ML
  | @as("MV") #MV
  | @as("MY") #MY
  | @as("MW") #MW
  | @as("MG") #MG
  | @as("MK") #MK
  | @as("MO") #MO
  | @as("LU") #LU
  | @as("LT") #LT
  | @as("LI") #LI
  | @as("LY") #LY
  | @as("LR") #LR
  | @as("LS") #LS
  | @as("LB") #LB
  | @as("LV") #LV
  | @as("LA") #LA
  | @as("KG") #KG
  | @as("KW") #KW
  | @as("KR") #KR
  | @as("KP") #KP
  | @as("KI") #KI
  | @as("KE") #KE
  | @as("KZ") #KZ
  | @as("JO") #JO
  | @as("JE") #JE
  | @as("JP") #JP
  | @as("JM") #JM
  | @as("IT") #IT
  | @as("IL") #IL
  | @as("IM") #IM
  | @as("IE") #IE
  | @as("IQ") #IQ
  | @as("IR") #IR
  | @as("ID") #ID
  | @as("IN") #IN
  | @as("IS") #IS
  | @as("HU") #HU
  | @as("HK") #HK
  | @as("HN") #HN
  | @as("VA") #VA
  | @as("HM") #HM
  | @as("HT") #HT
  | @as("GY") #GY
  | @as("GW") #GW
  | @as("GN") #GN
  | @as("GG") #GG
  | @as("GT") #GT
  | @as("GU") #GU
  | @as("GP") #GP
  | @as("GD") #GD
  | @as("GL") #GL
  | @as("GR") #GR
  | @as("GI") #GI
  | @as("GH") #GH
  | @as("DE") #DE
  | @as("GE") #GE
  | @as("GM") #GM
  | @as("GA") #GA
  | @as("TF") #TF
  | @as("PF") #PF
  | @as("GF") #GF
  | @as("FR") #FR
  | @as("FI") #FI
  | @as("FJ") #FJ
  | @as("FO") #FO
  | @as("FK") #FK
  | @as("ET") #ET
  | @as("EE") #EE
  | @as("ER") #ER
  | @as("GQ") #GQ
  | @as("SV") #SV
  | @as("EG") #EG
  | @as("EC") #EC
  | @as("DO") #DO
  | @as("DM") #DM
  | @as("DJ") #DJ
  | @as("DK") #DK
  | @as("CZ") #CZ
  | @as("CY") #CY
  | @as("CW") #CW
  | @as("CU") #CU
  | @as("HR") #HR
  | @as("CI") #CI
  | @as("CR") #CR
  | @as("CK") #CK
  | @as("CD") #CD
  | @as("CG") #CG
  | @as("KM") #KM
  | @as("CO") #CO
  | @as("CC") #CC
  | @as("CX") #CX
  | @as("CN") #CN
  | @as("CL") #CL
  | @as("TD") #TD
  | @as("CF") #CF
  | @as("KY") #KY
  | @as("CV") #CV
  | @as("CA") #CA
  | @as("CM") #CM
  | @as("KH") #KH
  | @as("BI") #BI
  | @as("BF") #BF
  | @as("BG") #BG
  | @as("BN") #BN
  | @as("IO") #IO
  | @as("BR") #BR
  | @as("BV") #BV
  | @as("BW") #BW
  | @as("BA") #BA
  | @as("BQ") #BQ
  | @as("BO") #BO
  | @as("BT") #BT
  | @as("BM") #BM
  | @as("BJ") #BJ
  | @as("BZ") #BZ
  | @as("BE") #BE
  | @as("BY") #BY
  | @as("BB") #BB
  | @as("BD") #BD
  | @as("BH") #BH
  | @as("BS") #BS
  | @as("AZ") #AZ
  | @as("AT") #AT
  | @as("AU") #AU
  | @as("AW") #AW
  | @as("AM") #AM
  | @as("AR") #AR
  | @as("AG") #AG
  | @as("AQ") #AQ
  | @as("AI") #AI
  | @as("AO") #AO
  | @as("AD") #AD
  | @as("AS") #AS
  | @as("DZ") #DZ
  | @as("AL") #AL
  | @as("AX") #AX
  | @as("AF") #AF
]
type country = string
type consumedCapacity = float
type comparisonOperator = [
  | @as("GT") #GT
  | @as("GE") #GE
  | @as("LT") #LT
  | @as("LE") #LE
  | @as("NE") #NE
  | @as("EQ") #EQ
]
type capacityUnit = float
type boolean_ = bool
type bodyParsingFallbackBehavior = [
  | @as("EVALUATE_AS_STRING") #EVALUATE_AS_STRING
  | @as("NO_MATCH") #NO_MATCH
  | @as("MATCH") #MATCH
]
@ocaml.doc("<p>The body of a web request. This immediately follows the request headers.</p>
           <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>")
type body = unit
@ocaml.doc("<p>All query arguments of a web request. </p>
           <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>")
type allQueryArguments = unit
@ocaml.doc("<p>Inspect all of the elements that AWS WAF has parsed and extracted from the web request JSON body that are within the <a>JsonBody</a> 
            <code>MatchScope</code>. This is used with the <a>FieldToMatch</a> option <code>JsonBody</code>.  </p>
         <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>")
type all = unit
type actionValue = [@as("COUNT") #COUNT | @as("BLOCK") #BLOCK | @as("ALLOW") #ALLOW]
type action = string
@ocaml.doc(
  "<p>High-level information about a <a>WebACL</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>WebACL</code>, and the ARN, that you provide to operations like <a>AssociateWebACL</a>.</p>"
)
type webACLSummary = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the entity.</p>") @as("ARN")
  arn: option<resourceArn>,
  @ocaml.doc(
    "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
  )
  @as("LockToken")
  lockToken: option<lockToken>,
  @ocaml.doc("<p>A description of the Web ACL that helps with identification. </p>")
  @as("Description")
  description: option<entityDescription>,
  @ocaml.doc(
    "<p>The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
  )
  @as("Id")
  id: option<entityId>,
  @ocaml.doc(
    "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
  )
  @as("Name")
  name: option<entityName>,
}
@ocaml.doc(
  "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>"
)
type visibilityConfig = {
  @ocaml.doc("<p>A name of the CloudWatch metric. The name can contain only the characters: A-Z, a-z, 0-9, - (hyphen), and _ (underscore). The name can be from one to 128 characters long. It can't contain
         whitespace or metric names reserved for AWS WAF, for example \"All\" and \"Default_Action.\" </p>")
  @as("MetricName")
  metricName: metricName,
  @ocaml.doc(
    "<p>A boolean indicating whether the associated resource sends metrics to CloudWatch. For the list of available metrics, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics\">AWS WAF Metrics</a>.</p>"
  )
  @as("CloudWatchMetricsEnabled")
  cloudWatchMetricsEnabled: boolean_,
  @ocaml.doc("<p>A boolean indicating whether AWS WAF should store a sampling of the web 
           requests that match the rules. You can view the sampled requests through the 
           AWS WAF console. </p>")
  @as("SampledRequestsEnabled")
  sampledRequestsEnabled: boolean_,
}
@ocaml.doc("<p>In a <a>GetSampledRequests</a> request, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range 
         for which you want AWS WAF to return a sample of web requests.</p>
         <p>You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. You can specify any time range in the previous three hours.</p>
         <p>In a <a>GetSampledRequests</a> response, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range 
         for which AWS WAF actually returned a sample of web requests. AWS WAF gets the specified number of requests from among the first 
         5,000 requests that your AWS resource receives during the specified time period. If your resource receives more than 5,000 
         requests during that period, AWS WAF stops sampling after the 5,000th request. In that case, <code>EndTime</code> 
         is the time that AWS WAF received the 5,000th request.</p>")
type timeWindow = {
  @ocaml.doc("<p>The end of the time range from which you want <code>GetSampledRequests</code> to return a sample of the requests that your 
         AWS resource received. You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. You can specify any time range in the previous three hours.</p>")
  @as("EndTime")
  endTime: timestamp_,
  @ocaml.doc("<p>The beginning of the time range from which you want <code>GetSampledRequests</code> to return a sample of the requests that your 
         AWS resource received. You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. You can specify any time range in the previous three hours.</p>")
  @as("StartTime")
  startTime: timestamp_,
}
@ocaml.doc("<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. 
         </p>")
type textTransformation = {
  @ocaml.doc("<p>You can specify the following transformation types:</p>
         <p>
            <b>CMD_LINE</b>
         </p>
         <p>When you're concerned that attackers are injecting an operating system command line
         command and using unusual formatting to disguise some or all of the command, use this
         option to perform the following transformations:</p>
         <ul>
            <li>
               <p>Delete the following characters: \\ \" ' ^</p>
            </li>
            <li>
               <p>Delete spaces before the following characters: / (</p>
            </li>
            <li>
               <p>Replace the following characters with a space: , ;</p>
            </li>
            <li>
               <p>Replace multiple spaces with one space</p>
            </li>
            <li>
               <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p>
            </li>
         </ul>
      
         <p>
            <b>COMPRESS_WHITE_SPACE</b>
         </p>
         <p>Use this option to replace the following characters with a space character (decimal 32):</p>
         <ul>
            <li>
               <p>\\f, formfeed, decimal 12</p>
            </li>
            <li>
               <p>\\t, tab, decimal 9</p>
            </li>
            <li>
               <p>\\n, newline, decimal 10</p>
            </li>
            <li>
               <p>\\r, carriage return, decimal 13</p>
            </li>
            <li>
               <p>\\v, vertical tab, decimal 11</p>
            </li>
            <li>
               <p>non-breaking space, decimal 160</p>
            </li>
         </ul>
         <p>
            <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p>		
         <p>
            <b>HTML_ENTITY_DECODE</b>
         </p>
         <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs 
         the following operations:</p>
         <ul>
            <li>
               <p>Replaces <code>(ampersand)quot;</code> with <code>\"</code>
               </p>
            </li>
            <li>
               <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p>
            </li>
            <li>
               <p>Replaces <code>(ampersand)lt;</code> with a \"less than\" symbol</p>
            </li>
            <li>
               <p>Replaces <code>(ampersand)gt;</code> with <code>></code>
               </p>
            </li>
            <li>
               <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding characters</p>
            </li>
            <li>
               <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding 
               characters</p>
            </li>
         </ul>		
         <p>
            <b>LOWERCASE</b>
         </p>
         <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p>		
         <p>
            <b>URL_DECODE</b>
         </p>
         <p>Use this option to decode a URL-encoded value.</p>		
         <p>
            <b>NONE</b>
         </p>
         <p>Specify <code>NONE</code> if you don't want any text transformations.</p>")
  @as("Type")
  type_: textTransformationType,
  @ocaml.doc("<p>Sets the relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all
         transformations, from lowest priority to highest, before inspecting the transformed content. The priorities don't need to be consecutive, but they must all be different. </p>")
  @as("Priority")
  priority: textTransformationPriority,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A tag associated with an AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing or other management. Typically, the tag key represents a category, such as \"environment\", and the tag value represents a      
  specific value within that category, such as \"test,\" \"development,\" or \"production\". Or you might set the tag key to \"customer\" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p>
        <p>You can tag the AWS resources that you manage through AWS WAF: web ACLs, rule groups, IP      
  sets, and regex pattern sets. You can't manage or view tags through the AWS WAF console. </p>")
type tag = {
  @ocaml.doc(
    "<p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as \"companyA\" or \"companyB.\" Tag values are case-sensitive.</p>"
  )
  @as("Value")
  value: tagValue,
  @ocaml.doc(
    "<p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as \"customer.\" Tag keys are case-sensitive.</p>"
  )
  @as("Key")
  key: tagKey,
}
@ocaml.doc(
  "<p>One query argument in a web request, identified by name, for example <i>UserName</i> or <i>SalesRegion</i>. The name can be up to 30 characters long and isn't case sensitive. </p>"
)
type singleQueryArgument = {
  @ocaml.doc("<p>The name of the query argument to inspect.</p>") @as("Name")
  name: fieldToMatchData,
}
@ocaml.doc("<p>One of the headers in a web request, identified by name, for example, <code>User-Agent</code> or <code>Referer</code>. This setting isn't case sensitive.</p>
           <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>")
type singleHeader = {
  @ocaml.doc("<p>The name of the query header to inspect.</p>") @as("Name") name: fieldToMatchData,
}
@ocaml.doc(
  "<p>High-level information about a <a>RuleGroup</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>"
)
type ruleGroupSummary = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the entity.</p>") @as("ARN")
  arn: option<resourceArn>,
  @ocaml.doc(
    "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
  )
  @as("LockToken")
  lockToken: option<lockToken>,
  @ocaml.doc("<p>A description of the rule group that helps with identification. </p>")
  @as("Description")
  description: option<entityDescription>,
  @ocaml.doc(
    "<p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
  )
  @as("Id")
  id: option<entityId>,
  @ocaml.doc(
    "<p>The name of the data type instance. You cannot change the name after you create the instance.</p>"
  )
  @as("Name")
  name: option<entityName>,
}
type resourceArns = array<resourceArn>
@ocaml.doc(
  "<p>High-level information about a <a>RegexPatternSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RegexPatternSet</code>, and the ARN, that you provide to the <a>RegexPatternSetReferenceStatement</a> to use the pattern set in a <a>Rule</a>.</p>"
)
type regexPatternSetSummary = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the entity.</p>") @as("ARN")
  arn: option<resourceArn>,
  @ocaml.doc(
    "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
  )
  @as("LockToken")
  lockToken: option<lockToken>,
  @ocaml.doc("<p>A description of the set that helps with identification. </p>") @as("Description")
  description: option<entityDescription>,
  @ocaml.doc(
    "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
  )
  @as("Id")
  id: option<entityId>,
  @ocaml.doc(
    "<p>The name of the data type instance. You cannot change the name after you create the instance.</p>"
  )
  @as("Name")
  name: option<entityName>,
}
@ocaml.doc("<p>A single regular expression. This is used in a <a>RegexPatternSet</a>.</p>")
type regex = {
  @ocaml.doc("<p>The string representing the regular expression.</p>") @as("RegexString")
  regexString: option<regexPatternString>,
}
@ocaml.doc(
  "<p>High-level information about a managed rule group, returned by <a>ListAvailableManagedRuleGroups</a>. This provides information like the name and vendor name, that you provide when you add a <a>ManagedRuleGroupStatement</a> to a web ACL. Managed rule groups include AWS Managed Rules rule groups, which are free of charge to AWS WAF customers, and AWS Marketplace managed rule groups, which you can subscribe to through AWS Marketplace. </p>"
)
type managedRuleGroupSummary = {
  @ocaml.doc(
    "<p>The description of the managed rule group, provided by AWS Managed Rules or the AWS Marketplace seller who manages it.</p>"
  )
  @as("Description")
  description: option<entityDescription>,
  @ocaml.doc(
    "<p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>"
  )
  @as("Name")
  name: option<entityName>,
  @ocaml.doc(
    "<p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>"
  )
  @as("VendorName")
  vendorName: option<vendorName>,
}
type logDestinationConfigs = array<resourceArn>
@ocaml.doc("<p>List of labels used by one or more of the rules of a <a>RuleGroup</a>. This summary object is used for the following rule group lists: </p>
         <ul>
            <li>
               <p>
                  <code>AvailableLabels</code> - Labels that rules add to matching requests. These labels are defined in the <code>RuleLabels</code> for a <a>Rule</a>. </p>
            </li>
            <li>
               <p>
                  <code>ConsumedLabels</code> - Labels that rules match against. These labels are defined in a <code>LabelMatchStatement</code> specification, in the <a>Statement</a> definition of a rule.  </p>
            </li>
         </ul>")
type labelSummary = {
  @ocaml.doc("<p>An individual label specification.</p>") @as("Name") name: option<labelName>,
}
@ocaml.doc("<p>A single label name condition for a <a>Condition</a> in a logging filter.</p>")
type labelNameCondition = {
  @ocaml.doc(
    "<p>The label name that a log record must contain in order to meet the condition. This must be a fully qualified label name. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.  </p>"
  )
  @as("LabelName")
  labelName: labelName,
}
@ocaml.doc("<p>A rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. </p>
         <p>The label match statement provides the label or namespace string to search for. The label string can represent a part or all of the fully qualified label name that had been added to the web request. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.  If you do not provide the fully qualified name in your label match string, AWS WAF performs the search for labels that were added in the same context as the label match statement. </p>")
type labelMatchStatement = {
  @ocaml.doc("<p>The string to match against. The setting you provide for this depends on the match statement's <code>Scope</code> settings: </p>
         <ul>
            <li>
               <p>If the <code>Scope</code> indicates <code>LABEL</code>, then this specification must include the name and can include any number of preceding namespace specifications and prefix up to providing the fully qualified label name. </p>
            </li>
            <li>
               <p>If the <code>Scope</code> indicates <code>NAMESPACE</code>, then this specification can include any number of contiguous namespace strings, and can include the entire label namespace prefix from the rule group or web ACL where the label originates.</p>
            </li>
         </ul>
         <p>Labels are case sensitive and components of a label must be separated by colon, for example <code>NS1:NS2:name</code>.</p>")
  @as("Key")
  key: labelMatchKey,
  @ocaml.doc(
    "<p>Specify whether you want to match using the label name or just the namespace. </p>"
  )
  @as("Scope")
  scope: labelMatchScope,
}
@ocaml.doc(
  "<p>A single label container. This is used as an element of a label array in multiple contexts, for example, in <code>RuleLabels</code> inside a <a>Rule</a> and in <code>Labels</code> inside a <a>SampledHTTPRequest</a>. </p>"
)
type label = {@ocaml.doc("<p>The label string. </p>") @as("Name") name: labelName}
type jsonPointerPaths = array<jsonPointerPath>
@ocaml.doc(
  "<p>High-level information about an <a>IPSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage an <code>IPSet</code>, and the ARN, that you provide to the <a>IPSetReferenceStatement</a> to use the address set in a <a>Rule</a>.</p>"
)
type ipsetSummary = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the entity.</p>") @as("ARN")
  arn: option<resourceArn>,
  @ocaml.doc(
    "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
  )
  @as("LockToken")
  lockToken: option<lockToken>,
  @ocaml.doc("<p>A description of the IP set that helps with identification. </p>")
  @as("Description")
  description: option<entityDescription>,
  @ocaml.doc(
    "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
  )
  @as("Id")
  id: option<entityId>,
  @ocaml.doc(
    "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
  )
  @as("Name")
  name: option<entityName>,
}
@ocaml.doc("<p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    
         <note>
            <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p>
         </note> 
        
    
         <p>This configuration is used only for <a>IPSetReferenceStatement</a>. For <a>GeoMatchStatement</a> and <a>RateBasedStatement</a>, use <a>ForwardedIPConfig</a> instead.  </p>")
type ipsetForwardedIPConfig = {
  @ocaml.doc("<p>The position in the header to search for the IP address. The header can contain IP addresses of the original client and also of proxies. For example, the header value could be <code>10.1.1.1, 127.0.0.0, 10.10.10.10</code> where the first IP address identifies the original client and the rest identify proxies that the request went through. </p>
         <p>The options for this setting are the following: </p>
         <ul>
            <li>
               <p>FIRST - Inspect the first IP address in the list of IP addresses in the header. This is usually the client's original IP.</p>
            </li>
            <li>
               <p>LAST - Inspect the last IP address in the list of IP addresses in the header.</p>
            </li>
            <li>
               <p>ANY - Inspect all IP addresses in the header for a match. If the header contains more than 10 IP addresses, AWS WAF inspects the last 10.</p>
            </li>
         </ul>")
  @as("Position")
  position: forwardedIPPosition,
  @ocaml.doc("<p>The match status to assign to the web request if the request doesn't have a valid IP address in the specified position.</p>
      
         <note>
            <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p>
         </note> 
        
         <p>You can specify the following fallback behaviors:</p>
         <ul>
            <li>
               <p>
                  <code>MATCH</code> - Treat the web request as matching the rule statement. AWS WAF applies the rule action to the request.</p>
            </li>
            <li>
               <p>
                  <code>NO_MATCH</code> - Treat the web request as not matching the rule statement.</p>
            </li>
         </ul>")
  @as("FallbackBehavior")
  fallbackBehavior: fallbackBehavior,
  @ocaml.doc("<p>The name of the HTTP header to use for the IP address. For example, to use the X-Forwarded-For (XFF) header, set this to <code>X-Forwarded-For</code>.</p>
    
         <note>
            <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p>
         </note>")
  @as("HeaderName")
  headerName: forwardedIPHeaderName,
}
type ipaddresses = array<ipaddress>
@ocaml.doc("<p>Part of the response from <a>GetSampledRequests</a>. This is a complex type that 
         appears as <code>Headers</code> in the response syntax. <code>HTTPHeader</code> contains the names and values of 
         all of the headers that appear in one of the web requests. </p>")
type httpheader = {
  @ocaml.doc("<p>The value of the HTTP header.</p>") @as("Value") value: option<headerValue>,
  @ocaml.doc("<p>The name of the HTTP header.</p>") @as("Name") name: option<headerName>,
}
@ocaml.doc("<p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    
         <note>
            <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p>
         </note> 
        
    
         <p>This configuration is used for <a>GeoMatchStatement</a> and <a>RateBasedStatement</a>. 
           For <a>IPSetReferenceStatement</a>, use <a>IPSetForwardedIPConfig</a> instead.  </p>
         <p>AWS WAF only evaluates the first IP address found in the specified HTTP header. </p>")
type forwardedIPConfig = {
  @ocaml.doc("<p>The match status to assign to the web request if the request doesn't have a valid IP address in the specified position.</p>
      
         <note>
            <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p>
         </note> 
        
         <p>You can specify the following fallback behaviors:</p>
         <ul>
            <li>
               <p>
                  <code>MATCH</code> - Treat the web request as matching the rule statement. AWS WAF applies the rule action to the request.</p>
            </li>
            <li>
               <p>
                  <code>NO_MATCH</code> - Treat the web request as not matching the rule statement.</p>
            </li>
         </ul>")
  @as("FallbackBehavior")
  fallbackBehavior: fallbackBehavior,
  @ocaml.doc("<p>The name of the HTTP header to use for the IP address. For example, to use the X-Forwarded-For (XFF) header, set this to <code>X-Forwarded-For</code>.</p>
    
         <note>
            <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p>
         </note>")
  @as("HeaderName")
  headerName: forwardedIPHeaderName,
}
@ocaml.doc("<p>Specifies a single rule to exclude from the rule group. Excluding a rule overrides 
         its action setting for the rule group in the web ACL, setting it to <code>COUNT</code>. 
         This effectively excludes the rule from acting on web requests.  </p>")
type excludedRule = {
  @ocaml.doc("<p>The name of the rule to exclude.</p>") @as("Name") name: entityName,
}
@ocaml.doc("<p>The response body to use in a custom response to a web request. This is referenced by key from <a>CustomResponse</a> 
            <code>CustomResponseBodyKey</code>.</p>")
type customResponseBody = {
  @ocaml.doc("<p>The payload of the custom response. </p>
         <p>You can use JSON escape strings in JSON content. To do this, you must specify JSON content in the <code>ContentType</code> setting. </p>
         <p>For information about the limits on count and size for custom request and response settings, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/limits.html\">AWS WAF quotas</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
  @as("Content")
  content: responseContent,
  @ocaml.doc(
    "<p>The type of content in the payload that you are defining in the <code>Content</code> string.</p>"
  )
  @as("ContentType")
  contentType: responseContentType,
}
@ocaml.doc(
  "<p>A custom header for custom request and response handling. This is used in <a>CustomResponse</a> and <a>CustomRequestHandling</a>.</p>"
)
type customHTTPHeader = {
  @ocaml.doc("<p>The value of the custom header.</p>") @as("Value") value: customHTTPHeaderValue,
  @ocaml.doc("<p>The name of the custom header. </p>
         <p>For custom request header insertion, when AWS WAF inserts the header into the request, it prefixes this name <code>x-amzn-waf-</code>, to avoid confusion with the headers that are already in the request. For example, for the header name <code>sample</code>, AWS WAF inserts the header <code>x-amzn-waf-sample</code>.</p>")
  @as("Name")
  name: customHTTPHeaderName,
}
type countryCodes = array<countryCode>
@ocaml.doc("<p>A single action condition for a <a>Condition</a> in a logging filter.</p>")
type actionCondition = {
  @ocaml.doc(
    "<p>The action setting that a log record must contain in order to meet the condition. </p>"
  )
  @as("Action")
  action: actionValue,
}
type webACLSummaries = array<webACLSummary>
type textTransformations = array<textTransformation>
type tagList_ = array<tag>
type ruleGroupSummaries = array<ruleGroupSummary>
type regularExpressionList = array<regex>
type regexPatternSetSummaries = array<regexPatternSetSummary>
@ocaml.doc("<p>The set of IP addresses that are currently blocked for a rate-based statement.</p>")
type rateBasedStatementManagedKeysIPSet = {
  @ocaml.doc("<p>The IP addresses that are currently blocked.</p>") @as("Addresses")
  addresses: option<ipaddresses>,
  @as("IPAddressVersion") ipaddressVersion: option<ipaddressVersion>,
}
type managedRuleGroupSummaries = array<managedRuleGroupSummary>
type labels = array<label>
type labelSummaries = array<labelSummary>
@ocaml.doc(
  "<p>The patterns to look for in the JSON body. AWS WAF inspects the results of these pattern matches against the rule inspection criteria. This is used with the <a>FieldToMatch</a> option <code>JsonBody</code>. </p>"
)
type jsonMatchPattern = {
  @ocaml.doc("<p>Match only the specified include paths. See also <code>MatchScope</code> in <a>JsonBody</a>. </p>
         <p>Provide the include paths using JSON Pointer syntax. For example, <code>\"IncludedPaths\": [\"/dogs/0/name\", \"/dogs/1/name\"]</code>. For information about this syntax, see the Internet Engineering Task Force (IETF) documentation 
       <a href=\"https://tools.ietf.org/html/rfc6901\">JavaScript Object Notation (JSON) Pointer</a>. </p>
         <p>You must specify either this setting or the <code>All</code> setting, but not both.</p>
         <note>
            <p>Don't use this option to include all paths. Instead, use the <code>All</code> setting. </p>
         </note>")
  @as("IncludedPaths")
  includedPaths: option<jsonPointerPaths>,
  @ocaml.doc("<p>Match all of the elements. See also <code>MatchScope</code> in <a>JsonBody</a>. </p>
        <p>You must specify either this setting or the <code>IncludedPaths</code> setting, but not both.</p>")
  @as("All")
  all: option<all>,
}
type ipsetSummaries = array<ipsetSummary>
@ocaml.doc("<p>A rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an <a>IPSet</a> that specifies the addresses you want to detect, then use the ARN of that set in this statement. To create an IP set, see <a>CreateIPSet</a>.</p> 
         <p>Each IP set rule statement references an IP set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, AWS WAF automatically updates all rules that reference it.</p>")
type ipsetReferenceStatement = {
  @ocaml.doc("<p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    
         <note>
            <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p>
         </note>")
  @as("IPSetForwardedIPConfig")
  ipsetForwardedIPConfig: option<ipsetForwardedIPConfig>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the <a>IPSet</a> that this statement references.</p>"
  )
  @as("ARN")
  arn: resourceArn,
}
@ocaml.doc("<p>Contains one or more IP addresses or blocks of IP addresses specified in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports all IPv4 and IPv6 CIDR ranges except for /0. For information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless
            Inter-Domain Routing</a>. </p>
         <p>AWS WAF assigns an ARN to each <code>IPSet</code> that you create. To use an IP set in a rule, you provide the ARN to the <a>Rule</a> statement <a>IPSetReferenceStatement</a>. </p>")
type ipset = {
  @ocaml.doc("<p>Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports all IPv4 and IPv6 CIDR ranges except for /0. </p>
         <p>Examples: </p>
         <ul>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
            </li>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify 
               <code>192.0.2.0/24</code>.</p>
            </li>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
            </li>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
            </li>
         </ul>
         <p>For more information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless
         Inter-Domain Routing</a>.</p>")
  @as("Addresses")
  addresses: ipaddresses,
  @ocaml.doc("<p>Specify IPV4 or IPV6. </p>") @as("IPAddressVersion")
  ipaddressVersion: ipaddressVersion,
  @ocaml.doc("<p>A description of the IP set that helps with identification. </p>")
  @as("Description")
  description: option<entityDescription>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the entity.</p>") @as("ARN") arn: resourceArn,
  @ocaml.doc(
    "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
  )
  @as("Id")
  id: entityId,
  @ocaml.doc(
    "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
  )
  @as("Name")
  name: entityName,
}
type httpheaders = array<httpheader>
@ocaml.doc("<p>A rule statement used to identify web requests based on country of origin.  </p>")
type geoMatchStatement = {
  @ocaml.doc("<p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    
         <note>
            <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p>
         </note>")
  @as("ForwardedIPConfig")
  forwardedIPConfig: option<forwardedIPConfig>,
  @ocaml.doc(
    "<p>An array of two-character country codes, for example, <code>[ \"US\", \"CN\" ]</code>, from the alpha-2 country ISO codes of the ISO 3166 international standard. </p>"
  )
  @as("CountryCodes")
  countryCodes: option<countryCodes>,
}
type excludedRules = array<excludedRule>
type customResponseBodies = Js.Dict.t<customResponseBody>
type customHTTPHeaders = array<customHTTPHeader>
@ocaml.doc("<p>A single match condition for a <a>Filter</a>.</p>")
type condition = {
  @ocaml.doc("<p>A single label name condition.</p>") @as("LabelNameCondition")
  labelNameCondition: option<labelNameCondition>,
  @ocaml.doc("<p>A single action condition.</p>") @as("ActionCondition")
  actionCondition: option<actionCondition>,
}
@ocaml.doc("<p>The collection of tagging definitions for an AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing or other management. Typically, the tag key represents a category, such as \"environment\", and the tag value represents a      
  specific value within that category, such as \"test,\" \"development,\" or \"production\". Or you might set the tag key to \"customer\" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p>
        <p>You can tag the AWS resources that you manage through AWS WAF: web ACLs, rule groups, IP      
  sets, and regex pattern sets. You can't manage or view tags through the AWS WAF console. </p>")
type tagInfoForResource = {
  @ocaml.doc("<p>The array of <a>Tag</a> objects defined for the resource. </p>") @as("TagList")
  tagList_: option<tagList_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceARN")
  resourceARN: option<resourceArn>,
}
@ocaml.doc("<p>A rule statement used to run the rules that are defined in a <a>RuleGroup</a>. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.</p>
         <p>You cannot nest a <code>RuleGroupReferenceStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>")
type ruleGroupReferenceStatement = {
  @ocaml.doc(
    "<p>The names of rules that are in the referenced rule group, but that you want AWS WAF to exclude from processing for this rule statement. </p>"
  )
  @as("ExcludedRules")
  excludedRules: option<excludedRules>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the entity.</p>") @as("ARN") arn: resourceArn,
}
@ocaml.doc("<p>Contains one or more regular expressions. </p>
         <p>AWS WAF assigns an ARN to each <code>RegexPatternSet</code> that you create. To use a set in a rule, you provide the ARN to the <a>Rule</a> statement <a>RegexPatternSetReferenceStatement</a>. </p>")
type regexPatternSet = {
  @ocaml.doc("<p>The regular expression patterns in the set.</p>") @as("RegularExpressionList")
  regularExpressionList: option<regularExpressionList>,
  @ocaml.doc("<p>A description of the set that helps with identification. </p>") @as("Description")
  description: option<entityDescription>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the entity.</p>") @as("ARN")
  arn: option<resourceArn>,
  @ocaml.doc(
    "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
  )
  @as("Id")
  id: option<entityId>,
  @ocaml.doc("<p>The name of the set. You cannot change the name after you create the set.</p>")
  @as("Name")
  name: option<entityName>,
}
@ocaml.doc("<p>The body of a web request, inspected as JSON. The body immediately follows the request headers. This is used in the <a>FieldToMatch</a> specification.</p>
         <p>Use the specifications in this object to indicate which parts of the JSON body to inspect using the rule's inspection criteria. AWS WAF inspects only the parts of the JSON that result from the matches that you indicate.  </p>")
type jsonBody = {
  @ocaml.doc("<p>What AWS WAF should do if it fails to completely parse the JSON body. The options are the following:</p>
          <ul>
            <li>
          		   <p>
                  <code>EVALUATE_AS_STRING</code> - Inspect the body as
          			plain text. AWS WAF applies the text transformations and
          			inspection criteria that you defined for the JSON inspection to
          			the body text string.</p>
          	</li>
            <li>
          		   <p>
                  <code>MATCH</code> - Treat the web request as matching
          			the rule statement. AWS WAF applies the rule action to the
          			request.</p>
          	</li>
            <li>
          		   <p>
                  <code>NO_MATCH</code> - Treat the web request as not
          			matching the rule statement.</p>
          	</li>
         </ul>
          <p>If you don't provide this setting, AWS WAF parses and evaluates the content only up to the first parsing failure that it encounters. </p>
          <p>AWS WAF does its best to parse the entire JSON body, but might be forced
          	to stop for reasons such as invalid characters, duplicate keys,
          	truncation, and any content whose root node isn't an object or an array. </p>
          <p>AWS WAF parses the JSON in the following examples as two valid key,
          	value pairs: </p>
          <ul>
            <li>
          		   <p>Missing comma:
          			<code>{\"key1\":\"value1\"\"key2\":\"value2\"}</code>
               </p>
          	</li>
            <li>
          		   <p>Missing colon:
          			<code>{\"key1\":\"value1\",\"key2\"\"value2\"}</code>
               </p>
          	</li>
            <li>
          		   <p>Extra colons:
          			<code>{\"key1\"::\"value1\",\"key2\"\"value2\"}</code>
               </p>
          	</li>
         </ul>")
  @as("InvalidFallbackBehavior")
  invalidFallbackBehavior: option<bodyParsingFallbackBehavior>,
  @ocaml.doc(
    "<p>The parts of the JSON to match against using the <code>MatchPattern</code>. If you specify <code>All</code>, AWS WAF matches against keys and values. </p>"
  )
  @as("MatchScope")
  matchScope: jsonMatchScope,
  @ocaml.doc(
    "<p>The patterns to look for in the JSON body. AWS WAF inspects the results of these pattern matches against the rule inspection criteria. </p>"
  )
  @as("MatchPattern")
  matchPattern: jsonMatchPattern,
}
@ocaml.doc("<p>Part of the response from <a>GetSampledRequests</a>.  This is a complex type that 
         appears as <code>Request</code> in the response syntax. <code>HTTPRequest</code> contains information about 
         one of the web requests. </p>")
type httprequest = {
  @ocaml.doc(
    "<p>A complex type that contains the name and value for each header in the sampled web request.</p>"
  )
  @as("Headers")
  headers: option<httpheaders>,
  @ocaml.doc(
    "<p>The HTTP version specified in the sampled web request, for example, <code>HTTP/1.1</code>.</p>"
  )
  @as("HTTPVersion")
  httpversion: option<httpversion>,
  @ocaml.doc("<p>The HTTP method specified in the sampled web request. </p>") @as("Method")
  method: option<httpmethod>,
  @ocaml.doc(
    "<p>The URI path of the request, which identifies the resource, for example, <code>/images/daily-ad.jpg</code>.</p>"
  )
  @as("URI")
  uri: option<uristring>,
  @ocaml.doc("<p>The two-letter country code for the country that the request originated from. For a current list of country codes, 
         see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2\">ISO 3166-1 alpha-2</a>.</p>")
  @as("Country")
  country: option<country>,
  @ocaml.doc("<p>The IP address that the request originated from. If the web ACL is associated with a CloudFront distribution, 
         this is the value of one of the following fields in CloudFront access logs:</p>
         <ul>
            <li>
               <p>
                  <code>c-ip</code>, if the viewer did not use an HTTP proxy or a load balancer to send the request</p>
            </li>
            <li>
               <p>
                  <code>x-forwarded-for</code>, if the viewer did use an HTTP proxy or a load balancer to send the request</p>
            </li>
         </ul>")
  @as("ClientIP")
  clientIP: option<ipstring>,
}
@ocaml.doc("<p>A custom response to send to the client. You can define a custom response for rule actions and default web ACL actions that are set to <a>BlockAction</a>. </p>
         <p>For information about customizing web requests and responses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html\">Customizing web requests and responses in AWS WAF</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
type customResponse = {
  @ocaml.doc("<p>The HTTP headers to use in the response. Duplicate header names are not allowed. </p>
         <p>For information about the limits on count and size for custom request and response settings, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/limits.html\">AWS WAF quotas</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
  @as("ResponseHeaders")
  responseHeaders: option<customHTTPHeaders>,
  @ocaml.doc("<p>References the response body that you want AWS WAF to return to the web request client. You can define a custom response for a rule action or a default web ACL action that is set to block. To do this, you first 
       define the response body key and value in the <code>CustomResponseBodies</code> setting for the <a>WebACL</a> or <a>RuleGroup</a> where you want to use it. Then, in the rule action or web ACL default action <code>BlockAction</code> setting, you reference
       the response body using this key. </p>")
  @as("CustomResponseBodyKey")
  customResponseBodyKey: option<entityName>,
  @ocaml.doc("<p>The HTTP status code to return to the client. </p>
         <p>For a list of status codes that you can use in your custom reqponses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/customizing-the-response-status-codes.html\">Supported status codes for custom response</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
  @as("ResponseCode")
  responseCode: responseStatusCode,
}
@ocaml.doc("<p>Custom request handling behavior that inserts custom headers into a web request. You can add custom request handling for the rule actions allow and count. </p>
         <p>For information about customizing web requests and responses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html\">Customizing web requests and responses in AWS WAF</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
type customRequestHandling = {
  @ocaml.doc("<p>The HTTP headers to insert into the request. Duplicate header names are not allowed. </p>
         <p>For information about the limits on count and size for custom request and response settings, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/limits.html\">AWS WAF quotas</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
  @as("InsertHeaders")
  insertHeaders: customHTTPHeaders,
}
type conditions = array<condition>
@ocaml.doc("<p>Represents a single sampled web request. The response from <a>GetSampledRequests</a> includes a <code>SampledHTTPRequests</code> complex type that 
         appears as <code>SampledRequests</code> in the response syntax. <code>SampledHTTPRequests</code> contains an array of <code>SampledHTTPRequest</code> objects.</p>")
type sampledHTTPRequest = {
  @ocaml.doc("<p>Labels applied to the web request by matching rules. AWS WAF applies fully qualified labels to matching web requests. A fully qualified label is the concatenation of a label namespace and a rule label. The rule's rule group or web ACL defines the label namespace. </p>
         <p>For example, <code>awswaf:111122223333:myRuleGroup:testRules:testNS1:testNS2:labelNameA</code> or <code>awswaf:managed:aws:managed-rule-set:header:encoding:utf8</code>.  </p>")
  @as("Labels")
  labels: option<labels>,
  @ocaml.doc("<p>The response code that was sent for the request.</p>") @as("ResponseCodeSent")
  responseCodeSent: option<responseStatusCode>,
  @ocaml.doc(
    "<p>Custom request headers inserted by AWS WAF into the request, according to the custom request configuration for the matching rule action.</p>"
  )
  @as("RequestHeadersInserted")
  requestHeadersInserted: option<httpheaders>,
  @ocaml.doc("<p>The name of the <code>Rule</code> that the request matched. For managed rule groups, the format for this name is <code><vendor name>#<managed rule group name>#<rule name></code>. For your own rule
         groups, the format for this name is <code><rule group name>#<rule name></code>. If the rule is not in a rule group, this field is absent. </p>")
  @as("RuleNameWithinRuleGroup")
  ruleNameWithinRuleGroup: option<entityName>,
  @ocaml.doc(
    "<p>The action for the <code>Rule</code> that the request matched: <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p>"
  )
  @as("Action")
  action: option<action>,
  @ocaml.doc(
    "<p>The time at which AWS WAF received the request from your AWS resource, in Unix time format (in seconds).</p>"
  )
  @as("Timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>A value that indicates how one result in the response relates 
         proportionally to other results in the response. 
         For example, a result that has a weight of <code>2</code> represents roughly twice 
         as many web requests as a result 
         that has a weight of <code>1</code>.</p>")
  @as("Weight")
  weight: sampleWeight,
  @ocaml.doc("<p>A complex type that contains detailed information about the request.</p>")
  @as("Request")
  request: httprequest,
}
@ocaml.doc("<p>A single logging filter, used in <a>LoggingFilter</a>. </p>")
type filter = {
  @ocaml.doc("<p>Match conditions for the filter.</p>") @as("Conditions") conditions: conditions,
  @ocaml.doc(
    "<p>Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.</p>"
  )
  @as("Requirement")
  requirement: filterRequirement,
  @ocaml.doc("<p>How to handle logs that satisfy the filter's conditions and requirement. </p>")
  @as("Behavior")
  behavior: filterBehavior,
}
@ocaml.doc(
  "<p>The part of a web request that you want AWS WAF to inspect. Include the single <code>FieldToMatch</code> type that you want to inspect, with additional specifications as needed, according to the type. You specify a single request component in <code>FieldToMatch</code> for each rule statement that requires it. To inspect more than one component of a web request, create a separate rule statement for each component.</p>"
)
type fieldToMatch = {
  @ocaml.doc("<p>Inspect the request body as JSON. The request body immediately follows the request headers. This is the part of a request that contains any 
         additional data that you want to send to your web server as the HTTP request body, such as data from a form. </p>
         <p>Note that only the first 8 KB (8192 bytes) of the request body are forwarded to AWS WAF for inspection by the underlying host service. If you don't need to inspect more than 8 KB, you can guarantee that you don't allow additional bytes in by combining a statement that inspects the body of the web request, such as <a>ByteMatchStatement</a> or <a>RegexPatternSetReferenceStatement</a>, with a <a>SizeConstraintStatement</a> that enforces an 8 KB size limit on the body of the request. AWS WAF doesn't support inspecting the entire contents of web requests whose bodies exceed the 8 KB limit.</p>")
  @as("JsonBody")
  jsonBody: option<jsonBody>,
  @ocaml.doc(
    "<p>Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform. </p>"
  )
  @as("Method")
  method: option<method>,
  @ocaml.doc("<p>Inspect the request body as plain text. The request body immediately follows the request headers. This is the part of a request that contains any 
         additional data that you want to send to your web server as the HTTP request body, such as data from a form. </p>
         <p>Note that only the first 8 KB (8192 bytes) of the request body are forwarded to AWS WAF for inspection by the underlying host service. If you don't need to inspect more than 8 KB, you can guarantee that you don't allow additional bytes in by combining a statement that inspects the body of the web request, such as <a>ByteMatchStatement</a> or <a>RegexPatternSetReferenceStatement</a>, with a <a>SizeConstraintStatement</a> that enforces an 8 KB size limit on the body of the request. AWS WAF doesn't support inspecting the entire contents of web requests whose bodies exceed the 8 KB limit.</p>")
  @as("Body")
  body: option<body>,
  @ocaml.doc(
    "<p>Inspect the query string. This is the part of a URL that appears after a <code>?</code> character, if any.</p>"
  )
  @as("QueryString")
  queryString: option<queryString>,
  @ocaml.doc(
    "<p>Inspect the request URI path. This is the part of a web request that identifies a resource, for example, <code>/images/daily-ad.jpg</code>.</p>"
  )
  @as("UriPath")
  uriPath: option<uriPath>,
  @ocaml.doc("<p>Inspect all query arguments. </p>") @as("AllQueryArguments")
  allQueryArguments: option<allQueryArguments>,
  @ocaml.doc("<p>Inspect a single query argument. Provide the name of the query argument to inspect, such as <i>UserName</i> or <i>SalesRegion</i>. The name can be up to 30 characters long and isn't case sensitive. </p>
           <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p> 
         <p>Example JSON: <code>\"SingleQueryArgument\": { \"Name\": \"myArgument\" }</code>
         </p>")
  @as("SingleQueryArgument")
  singleQueryArgument: option<singleQueryArgument>,
  @ocaml.doc("<p>Inspect a single header. Provide the name of the header to inspect, for example, <code>User-Agent</code> or <code>Referer</code>. This setting isn't case sensitive.</p>
         <p>Example JSON: <code>\"SingleHeader\": { \"Name\": \"haystack\" }</code>
         </p>")
  @as("SingleHeader")
  singleHeader: option<singleHeader>,
}
@ocaml.doc("<p>Specifies that AWS WAF should count the request. Optionally defines additional custom handling for the request.</p>
           <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>")
type countAction = {
  @ocaml.doc("<p>Defines custom handling for the web request.</p>
         <p>For information about customizing web requests and responses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html\">Customizing web requests and responses in AWS WAF</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
  @as("CustomRequestHandling")
  customRequestHandling: option<customRequestHandling>,
}
@ocaml.doc("<p>Specifies that AWS WAF should block the request and optionally defines additional custom handling for the response to the web request.</p>
           <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>")
type blockAction = {
  @ocaml.doc("<p>Defines a custom response for the web request.</p>
         <p>For information about customizing web requests and responses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html\">Customizing web requests and responses in AWS WAF</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
  @as("CustomResponse")
  customResponse: option<customResponse>,
}
@ocaml.doc("<p>Specifies that AWS WAF should allow the request and optionally defines additional custom handling for the request.</p>
           <p>This is used in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>")
type allowAction = {
  @ocaml.doc("<p>Defines custom handling for the web request.</p>
         <p>For information about customizing web requests and responses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html\">Customizing web requests and responses in AWS WAF</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
  @as("CustomRequestHandling")
  customRequestHandling: option<customRequestHandling>,
}
@ocaml.doc("<p>A rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. 
         XSS attacks are those where the attacker uses vulnerabilities in a benign website as a vehicle to inject malicious 
         client-site scripts into other legitimate web browsers.  
         The XSS match statement provides the location in requests that you want AWS WAF to search and text transformations 
         to use on the search area before AWS WAF searches for character sequences that are likely to be malicious strings. </p>")
type xssMatchStatement = {
  @ocaml.doc("<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. 
         If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the 
         content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>")
  @as("TextTransformations")
  textTransformations: textTransformations,
  @ocaml.doc(
    "<p>The part of a web request that you want AWS WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>"
  )
  @as("FieldToMatch")
  fieldToMatch: fieldToMatch,
}
@ocaml.doc(
  "<p>Attackers sometimes insert malicious SQL code into web requests in an effort to extract data from your database. To allow or block web requests that appear to contain malicious SQL code, create one or more SQL injection match conditions. An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. Later in the process, when you create a web ACL, you specify whether to allow or block requests that appear to contain malicious SQL code.</p>"
)
type sqliMatchStatement = {
  @ocaml.doc("<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. 
         If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the 
         content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>")
  @as("TextTransformations")
  textTransformations: textTransformations,
  @ocaml.doc(
    "<p>The part of a web request that you want AWS WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>"
  )
  @as("FieldToMatch")
  fieldToMatch: fieldToMatch,
}
@ocaml.doc("<p>A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). For example, you can use a size constraint statement to look for query strings that are longer than 100 bytes. </p>
         <p>If you configure AWS WAF to inspect the request body, AWS WAF inspects only the first 8192 bytes (8 KB). If the request body for your web requests never exceeds 8192 bytes, you can create a size constraint condition and block requests that have a request body greater than 8192 bytes.</p> 
         <p>If you choose URI for the value of Part of the request to filter on, the slash (/) in the URI counts as one character. For example, the URI <code>/logo.jpg</code> is nine characters long.</p>")
type sizeConstraintStatement = {
  @ocaml.doc("<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. 
         If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the 
         content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>")
  @as("TextTransformations")
  textTransformations: textTransformations,
  @ocaml.doc("<p>The size, in byte, to compare to the request part, after any transformations.</p>")
  @as("Size")
  size: size,
  @ocaml.doc("<p>The operator to use to compare the request part to the size setting. </p>")
  @as("ComparisonOperator")
  comparisonOperator: comparisonOperator,
  @ocaml.doc(
    "<p>The part of a web request that you want AWS WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>"
  )
  @as("FieldToMatch")
  fieldToMatch: fieldToMatch,
}
type sampledHTTPRequests = array<sampledHTTPRequest>
@ocaml.doc(
  "<p>The action that AWS WAF should take on a web request when it matches a rule's statement. Settings at the web ACL level can override the rule action setting. </p>"
)
type ruleAction = {
  @ocaml.doc("<p>Instructs AWS WAF to count the web request and allow it.</p>") @as("Count")
  count: option<countAction>,
  @ocaml.doc("<p>Instructs AWS WAF to allow the web request.</p>") @as("Allow")
  allow: option<allowAction>,
  @ocaml.doc("<p>Instructs AWS WAF to block the web request.</p>") @as("Block")
  block: option<blockAction>,
}
@ocaml.doc("<p>A rule statement used to search web request components for matches with regular expressions. To use this, create a <a>RegexPatternSet</a> that specifies the expressions that you want to detect, then use the ARN of that set in this statement. A web request matches the pattern set rule statement if the request component matches any of the patterns in the set. To create a regex pattern set, see <a>CreateRegexPatternSet</a>.</p> 
         <p>Each regex pattern set rule statement references a regex pattern set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, AWS WAF automatically updates all rules that reference it.</p>")
type regexPatternSetReferenceStatement = {
  @ocaml.doc("<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. 
         If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the 
         content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>")
  @as("TextTransformations")
  textTransformations: textTransformations,
  @ocaml.doc(
    "<p>The part of a web request that you want AWS WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>"
  )
  @as("FieldToMatch")
  fieldToMatch: fieldToMatch,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the <a>RegexPatternSet</a> that this statement references.</p>"
  )
  @as("ARN")
  arn: resourceArn,
}
type redactedFields = array<fieldToMatch>
@ocaml.doc("<p>The override action to apply to the rules in a rule group. Used only for rule statements that reference a rule group, 
           like <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p>
        <p>Set the override action to none to leave the rule actions in effect. Set it to count to only count matches, regardless of the rule action settings. </p> 
        <p>In a <a>Rule</a>, you must specify either this <code>OverrideAction</code> setting or the rule <code>Action</code> setting, but not both:</p>
         <ul>
            <li>
               <p>If the rule statement references a rule group, use this override action setting and not the action setting.  </p>
            </li>
            <li>
               <p>If the rule statement does not reference a rule group, use the rule action setting and not this rule override action setting. </p> 
            </li>
         </ul>")
type overrideAction = {
  @ocaml.doc("<p>Don't override the rule action setting.</p>") @as("None") none: option<noneAction>,
  @ocaml.doc("<p>Override the rule action setting to count.</p>") @as("Count")
  count: option<countAction>,
}
type filters = array<filter>
@ocaml.doc("<p>In a <a>WebACL</a>, this is the action that you want AWS WAF 
         to perform when a web request doesn't match any of the rules in the <code>WebACL</code>. The default action must be a terminating action, so you can't use count.</p>")
type defaultAction = {
  @ocaml.doc("<p>Specifies that AWS WAF should allow requests by default.</p>") @as("Allow")
  allow: option<allowAction>,
  @ocaml.doc("<p>Specifies that AWS WAF should block requests by default. </p>") @as("Block")
  block: option<blockAction>,
}
@ocaml.doc(
  "<p>A rule statement that defines a string match search for AWS WAF to apply to web requests. The byte match statement provides the bytes to search for, the location in requests that you want AWS WAF to search, and other settings. The bytes to search for are typically a string that corresponds with ASCII characters. In the AWS WAF console and the developer guide, this is refered to as a string match statement.</p>"
)
type byteMatchStatement = {
  @ocaml.doc("<p>The area within the portion of a web request that you want AWS WAF to search for <code>SearchString</code>. Valid values include the following:</p>
         <p>
            <b>CONTAINS</b>
         </p>
         <p>The specified part of the web request must include the value of <code>SearchString</code>, but the location doesn't matter.</p>		
         <p>
            <b>CONTAINS_WORD</b>
         </p>
         <p>The specified part of the web request must include the value of <code>SearchString</code>, and 
         <code>SearchString</code> must contain only alphanumeric characters or underscore (A-Z, a-z, 0-9, or _). In addition, 
         <code>SearchString</code> must be a word, which means that both of the following are true:</p>
         <ul>
            <li>
               <p>
                  <code>SearchString</code> is at the beginning of the specified part of the web request or is 
                  preceded by a character other than an alphanumeric character or underscore (_). 
                  Examples include the value of a header and <code>;BadBot</code>.</p>
            </li>
            <li>
               <p>
                  <code>SearchString</code> is at the end of the specified part of the web request or is 
                  followed by a character other than an alphanumeric character or underscore (_), for example,
                  <code>BadBot;</code> and <code>-BadBot;</code>.</p>
            </li>
         </ul>
         <p>
            <b>EXACTLY</b>
         </p>
         <p>The value of the specified part of the web request must exactly match the value of <code>SearchString</code>.</p>
         <p>
            <b>STARTS_WITH</b>
         </p>
         <p>The value of <code>SearchString</code> must appear at the beginning of the specified part of the web request.</p>		
         <p>
            <b>ENDS_WITH</b>
         </p>
         <p>The value of <code>SearchString</code> must appear at the end of the specified part of the web request.</p>")
  @as("PositionalConstraint")
  positionalConstraint: positionalConstraint,
  @ocaml.doc("<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. 
         If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the 
         content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>")
  @as("TextTransformations")
  textTransformations: textTransformations,
  @ocaml.doc(
    "<p>The part of a web request that you want AWS WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>"
  )
  @as("FieldToMatch")
  fieldToMatch: fieldToMatch,
  @ocaml.doc("<p>A string value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in <a>FieldToMatch</a>. The maximum length of the value is 50 bytes.</p>
         <p>Valid values depend on the component that you specify for inspection in <code>FieldToMatch</code>:</p>		
         <ul>
            <li>
               <p>
                  <code>Method</code>: The HTTP method that you want AWS WAF to search for. This indicates the type of operation specified in the request. </p>
            </li>
            <li>
               <p>
                  <code>UriPath</code>: The value that you want AWS WAF to search for in the URI path,
               for example, <code>/images/daily-ad.jpg</code>. </p>
            </li>
         </ul>
      
         <p>If <code>SearchString</code> includes alphabetic characters A-Z and a-z, note that the value is case sensitive.</p>
         <p>
            <b>If you're using the AWS WAF API</b>
         </p>
         <p>Specify a base64-encoded version of the value. The maximum length of the value before you base64-encode it is 50 bytes.</p>
         <p>For example, suppose the value of <code>Type</code> is <code>HEADER</code> and the
         value of <code>Data</code> is <code>User-Agent</code>. If you want to search the
         <code>User-Agent</code> header for the value <code>BadBot</code>, you base64-encode
         <code>BadBot</code> using MIME
         base64-encoding
         and include the resulting value, <code>QmFkQm90</code>, in the value of
         <code>SearchString</code>.</p>
         <p>
            <b>If you're using the AWS CLI or one of the AWS SDKs</b>
         </p>
         <p>The value that you want AWS WAF to search for. The SDK automatically base64 encodes the value.</p>")
  @as("SearchString")
  searchString: searchString,
}
@ocaml.doc(
  "<p>High-level information about a <a>Rule</a>, returned by operations like <a>DescribeManagedRuleGroup</a>. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>"
)
type ruleSummary = {
  @as("Action") action: option<ruleAction>,
  @ocaml.doc("<p>The name of the rule. </p>") @as("Name") name: option<entityName>,
}
@ocaml.doc("<p>Filtering that specifies which web requests are kept in the logs and which are dropped, defined for a web ACL's <a>LoggingConfiguration</a>. </p>
         <p>You can filter on the rule action and on the web request labels that were applied by matching rules during web ACL evaluation.  </p>")
type loggingFilter = {
  @ocaml.doc(
    "<p>Default handling for logs that don't match any of the specified filtering conditions. </p>"
  )
  @as("DefaultBehavior")
  defaultBehavior: filterBehavior,
  @ocaml.doc("<p>The filters that you want to apply to the logs. </p>") @as("Filters")
  filters: filters,
}
type ruleSummaries = array<ruleSummary>
@ocaml.doc("<p>Defines an association between Amazon Kinesis Data Firehose destinations and a web ACL resource, for 
         logging from AWS WAF.
      As part of the association, you can specify parts of the standard logging fields to keep out of the logs and you 
      can specify filters so that you log only a subset of the logging records. </p>")
type loggingConfiguration = {
  @ocaml.doc(
    "<p>Filtering that specifies which web requests are kept in the logs and which are dropped. You can filter on the rule action and on the web request labels that were applied by matching rules during web ACL evaluation.  </p>"
  )
  @as("LoggingFilter")
  loggingFilter: option<loggingFilter>,
  @ocaml.doc("<p>Indicates whether the logging configuration was created by AWS Firewall Manager, as part of an AWS WAF policy configuration. If true, only 
   Firewall Manager can modify or delete the configuration. </p>")
  @as("ManagedByFirewallManager")
  managedByFirewallManager: option<boolean_>,
  @ocaml.doc("<p>The parts of the request that you want to keep out of the logs. For
          example, if you redact the <code>HEADER</code> field, the <code>HEADER</code> field in the firehose will be <code>xxx</code>. </p>
         <note>
           <p>You must use one of the following values: <code>URI</code>, <code>QUERY_STRING</code>, <code>HEADER</code>, or <code>METHOD</code>.</p>
        </note>")
  @as("RedactedFields")
  redactedFields: option<redactedFields>,
  @ocaml.doc(
    "<p>The Amazon Kinesis Data Firehose Amazon Resource Name (ARNs) that you want to associate with the web ACL.</p>"
  )
  @as("LogDestinationConfigs")
  logDestinationConfigs: logDestinationConfigs,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with
         <code>LogDestinationConfigs</code>.</p>")
  @as("ResourceArn")
  resourceArn: resourceArn,
}
type loggingConfigurations = array<loggingConfiguration>
type rec statement = {
  @ocaml.doc("<p>A rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. </p>
         <p>The label match statement provides the label or namespace string to search for. The label string can represent a part or all of the fully qualified label name that had been added to the web request. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.  If you do not provide the fully qualified name in your label match string, AWS WAF performs the search for labels that were added in the same context as the label match statement. </p>")
  @as("LabelMatchStatement")
  labelMatchStatement: option<labelMatchStatement>,
  @ocaml.doc("<p>A rule statement used to run the rules that are defined in a managed rule group. To use this, provide the vendor name and the name of the rule group in this statement. You can retrieve the required names by calling <a>ListAvailableManagedRuleGroups</a>.</p>
         <p>You can't nest a <code>ManagedRuleGroupStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>")
  @as("ManagedRuleGroupStatement")
  managedRuleGroupStatement: option<managedRuleGroupStatement>,
  @ocaml.doc(
    "<p>A logical rule statement used to negate the results of another rule statement. You provide one <a>Statement</a> within the <code>NotStatement</code>.</p>"
  )
  @as("NotStatement")
  notStatement: option<notStatement>,
  @ocaml.doc(
    "<p>A logical rule statement used to combine other rule statements with OR logic. You provide more than one <a>Statement</a> within the <code>OrStatement</code>. </p>"
  )
  @as("OrStatement")
  orStatement: option<orStatement>,
  @ocaml.doc(
    "<p>A logical rule statement used to combine other rule statements with AND logic. You provide more than one <a>Statement</a> within the <code>AndStatement</code>. </p>"
  )
  @as("AndStatement")
  andStatement: option<andStatement>,
  @ocaml.doc("<p>A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that is sending excessive requests.</p>
         <p>When the rule action triggers, AWS WAF blocks additional requests from the IP address until the request rate falls below the limit.</p>
         <p>You can optionally nest another statement inside the rate-based statement, to narrow the scope of the rule so that it only counts requests that match the nested statement. For example, based on recent requests that you have seen from an attacker, you might create a rate-based rule with a nested AND rule statement that contains the following nested statements:</p>
         <ul>
            <li>
               <p>An IP match statement with an IP set that specified the address 192.0.2.44.</p>
            </li>
            <li>
               <p>A string match statement that searches in the User-Agent header for the string BadBot.</p>
            </li>
         </ul>
         <p>In this rate-based rule, you also define a rate limit. For this example, the rate limit is 1,000. Requests that meet both of the conditions in the statements are counted. If the count exceeds 1,000 requests per five minutes, the rule action triggers. Requests that do not meet both conditions are not counted towards the rate limit and are not affected by this rule.</p>
         <p>You cannot nest a <code>RateBasedStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>")
  @as("RateBasedStatement")
  rateBasedStatement: option<rateBasedStatement>,
  @ocaml.doc("<p>A rule statement used to search web request components for matches with regular expressions. To use this, create a <a>RegexPatternSet</a> that specifies the expressions that you want to detect, then use the ARN of that set in this statement. A web request matches the pattern set rule statement if the request component matches any of the patterns in the set. To create a regex pattern set, see <a>CreateRegexPatternSet</a>.</p> 
         <p>Each regex pattern set rule statement references a regex pattern set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, AWS WAF automatically updates all rules that reference it.</p>")
  @as("RegexPatternSetReferenceStatement")
  regexPatternSetReferenceStatement: option<regexPatternSetReferenceStatement>,
  @ocaml.doc("<p>A rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an <a>IPSet</a> that specifies the addresses you want to detect, then use the ARN of that set in this statement. To create an IP set, see <a>CreateIPSet</a>.</p> 
         <p>Each IP set rule statement references an IP set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, AWS WAF automatically updates all rules that reference it.</p>")
  @as("IPSetReferenceStatement")
  ipsetReferenceStatement: option<ipsetReferenceStatement>,
  @ocaml.doc("<p>A rule statement used to run the rules that are defined in a <a>RuleGroup</a>. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.</p>
         <p>You cannot nest a <code>RuleGroupReferenceStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>")
  @as("RuleGroupReferenceStatement")
  ruleGroupReferenceStatement: option<ruleGroupReferenceStatement>,
  @ocaml.doc("<p>A rule statement used to identify web requests based on country of origin.  </p>")
  @as("GeoMatchStatement")
  geoMatchStatement: option<geoMatchStatement>,
  @ocaml.doc("<p>A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). For example, you can use a size constraint statement to look for query strings that are longer than 100 bytes. </p>
         <p>If you configure AWS WAF to inspect the request body, AWS WAF inspects only the first 8192 bytes (8 KB). If the request body for your web requests never exceeds 8192 bytes, you can create a size constraint condition and block requests that have a request body greater than 8192 bytes.</p> 
         <p>If you choose URI for the value of Part of the request to filter on, the slash (/) in the URI counts as one character. For example, the URI <code>/logo.jpg</code> is nine characters long.</p>")
  @as("SizeConstraintStatement")
  sizeConstraintStatement: option<sizeConstraintStatement>,
  @ocaml.doc("<p>A rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. 
         XSS attacks are those where the attacker uses vulnerabilities in a benign website as a vehicle to inject malicious 
         client-site scripts into other legitimate web browsers.  
         The XSS match statement provides the location in requests that you want AWS WAF to search and text transformations 
         to use on the search area before AWS WAF searches for character sequences that are likely to be malicious strings. </p>")
  @as("XssMatchStatement")
  xssMatchStatement: option<xssMatchStatement>,
  @ocaml.doc(
    "<p>Attackers sometimes insert malicious SQL code into web requests in an effort to extract data from your database. To allow or block web requests that appear to contain malicious SQL code, create one or more SQL injection match conditions. An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. Later in the process, when you create a web ACL, you specify whether to allow or block requests that appear to contain malicious SQL code.</p>"
  )
  @as("SqliMatchStatement")
  sqliMatchStatement: option<sqliMatchStatement>,
  @ocaml.doc(
    "<p>A rule statement that defines a string match search for AWS WAF to apply to web requests. The byte match statement provides the bytes to search for, the location in requests that you want AWS WAF to search, and other settings. The bytes to search for are typically a string that corresponds with ASCII characters. In the AWS WAF console and the developer guide, this is refered to as a string match statement.</p>"
  )
  @as("ByteMatchStatement")
  byteMatchStatement: option<byteMatchStatement>,
}
and rateBasedStatement = {
  @ocaml.doc("<p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    
         <note>
            <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p>
         </note> 
        
    
         <p>This is required if <code>AggregateKeyType</code> is set to <code>FORWARDED_IP</code>.</p>")
  @as("ForwardedIPConfig")
  forwardedIPConfig: option<forwardedIPConfig>,
  @ocaml.doc(
    "<p>An optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement.</p>"
  )
  @as("ScopeDownStatement")
  scopeDownStatement: option<statement>,
  @ocaml.doc("<p>Setting that indicates how to aggregate the request counts. The options are the following:</p> 
         <ul>
            <li>
               <p>IP - Aggregate the request counts on the IP address from the web request origin.</p>
            </li>
            <li>
               <p>FORWARDED_IP - Aggregate the request counts on the first IP address in an HTTP header. If you use this, configure the <code>ForwardedIPConfig</code>, to specify the header to use. </p>
            </li>
         </ul>")
  @as("AggregateKeyType")
  aggregateKeyType: rateBasedStatementAggregateKeyType,
  @ocaml.doc(
    "<p>The limit on requests per 5-minute period for a single originating IP address. If the statement includes a <code>ScopeDownStatement</code>, this limit is applied only to the requests that match the statement.</p>"
  )
  @as("Limit")
  limit: rateLimit,
}
and orStatement = {
  @ocaml.doc(
    "<p>The statements to combine with OR logic. You can use any statements that can be nested.</p>"
  )
  @as("Statements")
  statements: statements,
}
and statements = array<statement>
and notStatement = {
  @ocaml.doc("<p>The statement to negate. You can use any statement that can be nested.</p>")
  @as("Statement")
  statement: statement,
}
and managedRuleGroupStatement = {
  @as("ScopeDownStatement") scopeDownStatement: option<statement>,
  @ocaml.doc(
    "<p>The rules whose actions are set to <code>COUNT</code> by the web ACL, regardless of the action that is set on the rule. This effectively excludes the rule from acting on web requests.  </p>"
  )
  @as("ExcludedRules")
  excludedRules: option<excludedRules>,
  @ocaml.doc(
    "<p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>"
  )
  @as("Name")
  name: entityName,
  @ocaml.doc(
    "<p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>"
  )
  @as("VendorName")
  vendorName: vendorName,
}
and andStatement = {
  @ocaml.doc(
    "<p>The statements to combine with AND logic. You can use any statements that can be nested. </p>"
  )
  @as("Statements")
  statements: statements,
}
@ocaml.doc("<p>A single rule, which you can use in a <a>WebACL</a> or <a>RuleGroup</a> to identify 
         web requests that you want to allow, block, or count. 
         Each rule includes one top-level <a>Statement</a> that AWS WAF uses to identify matching  
         web requests, and parameters that govern how AWS WAF handles them. </p>")
type rule = {
  @ocaml.doc(
    "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>"
  )
  @as("VisibilityConfig")
  visibilityConfig: visibilityConfig,
  @ocaml.doc("<p>Labels to apply to web requests that match the rule match statement. AWS WAF applies fully qualified labels to matching web requests. A fully qualified label is the concatenation of a label namespace and a rule label. The rule's rule group or web ACL defines the label namespace. </p>
         <p>Rules that run after this rule in the web ACL can match against these labels using a <code>LabelMatchStatement</code>.</p>
         <p>For each label, provide a case-sensitive string containing optional namespaces and a label name, according to the following guidelines:</p>
         <ul>
            <li>
               <p>Separate each component of the label with a colon. </p>
            </li>
            <li>
               <p>Each namespace or name can have up to 128 characters.</p>
            </li>
            <li>
               <p>You can specify up to 5 namespaces in a label.</p>
            </li>
            <li>
               <p>Don't use the following reserved words in your label specification: <code>aws</code>, <code>waf</code>, <code>managed</code>, <code>rulegroup</code>, <code>webacl</code>, <code>regexpatternset</code>, or <code>ipset</code>.</p>
            </li>
         </ul>
         <p>For example, <code>myLabelName</code> or <code>nameSpace1:nameSpace2:myLabelName</code>.  </p>")
  @as("RuleLabels")
  ruleLabels: option<labels>,
  @ocaml.doc("<p>The override action to apply to the rules in a rule group. Used only for rule statements that reference a rule group, 
           like <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p>
        <p>Set the override action to none to leave the rule actions in effect. Set it to count to only count matches, regardless of the rule action settings. </p> 
        <p>In a <a>Rule</a>, you must specify either this <code>OverrideAction</code> setting or the rule <code>Action</code> setting, but not both:</p>
         <ul>
            <li>
               <p>If the rule statement references a rule group, use this override action setting and not the action setting.  </p>
            </li>
            <li>
               <p>If the rule statement does not reference a rule group, use the rule action setting and not this rule override action setting. </p> 
            </li>
         </ul>")
  @as("OverrideAction")
  overrideAction: option<overrideAction>,
  @ocaml.doc("<p>The action that AWS WAF should take on a web request when it matches the rule statement. Settings at the web ACL level can override the rule action setting. </p>
        <p>This is used only for rules whose statements do not reference a rule group. Rule statements that reference a rule group include <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p>
         <p>You must specify either this <code>Action</code> setting or the rule <code>OverrideAction</code> setting, but not both:</p>
         <ul>
            <li>
               <p>If the rule statement does not reference a rule group, use this rule action setting and not the rule override action setting. </p> 
            </li>
            <li>
               <p>If the rule statement references a rule group, use the override action setting and not this action setting.  </p>
            </li>
         </ul>")
  @as("Action")
  action: option<ruleAction>,
  @ocaml.doc(
    "<p>The AWS WAF processing statement for the rule, for example <a>ByteMatchStatement</a> or <a>SizeConstraintStatement</a>. </p>"
  )
  @as("Statement")
  statement: statement,
  @ocaml.doc("<p>If you define more than one <code>Rule</code> in a
         <code>WebACL</code>, AWS WAF evaluates each request against the <code>Rules</code>
         in order based on the value of <code>Priority</code>.  
         AWS WAF processes rules with lower priority first. The priorities don't need to be consecutive, but they must all be different.</p>")
  @as("Priority")
  priority: rulePriority,
  @ocaml.doc(
    "<p>The name of the rule. You can't change the name of a <code>Rule</code> after you create it. </p>"
  )
  @as("Name")
  name: entityName,
}
@ocaml.doc(
  "<p>The processing guidance for an AWS Firewall Manager rule. This is like a regular rule <a>Statement</a>, but it can only contain a rule group reference.</p>"
)
type firewallManagerStatement = {
  @as("RuleGroupReferenceStatement")
  ruleGroupReferenceStatement: option<ruleGroupReferenceStatement>,
  @as("ManagedRuleGroupStatement") managedRuleGroupStatement: option<managedRuleGroupStatement>,
}
type rules = array<rule>
@ocaml.doc("<p>A rule group that's defined for an AWS Firewall Manager WAF policy.</p>")
type firewallManagerRuleGroup = {
  @as("VisibilityConfig") visibilityConfig: visibilityConfig,
  @as("OverrideAction") overrideAction: overrideAction,
  @ocaml.doc(
    "<p>The processing guidance for an AWS Firewall Manager rule. This is like a regular rule <a>Statement</a>, but it can only contain a rule group reference.</p>"
  )
  @as("FirewallManagerStatement")
  firewallManagerStatement: firewallManagerStatement,
  @ocaml.doc("<p>If you define more than one rule group in the first or last Firewall Manager rule groups,
          AWS WAF evaluates each request against the rule groups in order, starting from the lowest priority setting. 
         The priorities don't need to be consecutive, but they must all be different.</p>")
  @as("Priority")
  priority: rulePriority,
  @ocaml.doc(
    "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
  )
  @as("Name")
  name: entityName,
}
@ocaml.doc(
  "<p> A rule group defines a collection of rules to inspect and control web requests that you can use in a <a>WebACL</a>. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. </p>"
)
type ruleGroup = {
  @ocaml.doc(
    "<p>The labels that one or more rules in this rule group match against in label match statements. These labels are defined in a <code>LabelMatchStatement</code> specification, in the <a>Statement</a> definition of a rule.  </p>"
  )
  @as("ConsumedLabels")
  consumedLabels: option<labelSummaries>,
  @ocaml.doc(
    "<p>The labels that one or more rules in this rule group add to matching web ACLs. These labels are defined in the <code>RuleLabels</code> for a <a>Rule</a>.</p>"
  )
  @as("AvailableLabels")
  availableLabels: option<labelSummaries>,
  @ocaml.doc("<p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p> 
         <p>For information about customizing web requests and responses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html\">Customizing web requests and responses in AWS WAF</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>
         <p>For information about the limits on count and size for custom request and response settings, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/limits.html\">AWS WAF quotas</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
  @as("CustomResponseBodies")
  customResponseBodies: option<customResponseBodies>,
  @ocaml.doc("<p>The label namespace prefix for this rule group. All labels added by rules in this rule group have this prefix. </p>
         <ul>
            <li>
               <p>The syntax for the label namespace prefix for your rule groups is the following: </p>
               <p>
                  <code>awswaf:<account ID>:rulegroup:<rule group name>:</code>
               </p>
            </li>
            <li>
               <p>When a rule with a label matches a web request, AWS WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
               <p>
                  <code><label namespace>:<label from rule></code>
               </p>
 
            </li>
         </ul>")
  @as("LabelNamespace")
  labelNamespace: option<labelName>,
  @ocaml.doc(
    "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>"
  )
  @as("VisibilityConfig")
  visibilityConfig: visibilityConfig,
  @ocaml.doc("<p>The <a>Rule</a> statements used to identify the web requests that you 
         want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching  
         web requests, and parameters that govern how AWS WAF handles them. 
      </p>")
  @as("Rules")
  rules: option<rules>,
  @ocaml.doc("<p>A description of the rule group that helps with identification. </p>")
  @as("Description")
  description: option<entityDescription>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the entity.</p>") @as("ARN") arn: resourceArn,
  @ocaml.doc("<p>The web ACL capacity units (WCUs) required for this rule group.</p> 
          <p>When you create your own rule group, you define this, and you cannot change it after creation. 
          When you add or modify the rules in a rule group, AWS WAF enforces this limit. You can check the capacity 
          for a set of rules using <a>CheckCapacity</a>.</p> 
          <p>AWS WAF uses WCUs to calculate and control the operating
         resources that are used to run your rules, rule groups, and web ACLs. AWS WAF
         calculates capacity differently for each rule type, to reflect the relative cost of each rule. 
         Simple rules that cost little to run use fewer WCUs than more complex rules
				that use more processing power. 
				Rule group capacity is fixed at creation, which helps users plan their  
         web ACL WCU usage when they use a rule group. 
         The WCU limit for web ACLs is 1,500.  </p>")
  @as("Capacity")
  capacity: capacityUnit,
  @ocaml.doc(
    "<p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
  )
  @as("Id")
  id: entityId,
  @ocaml.doc(
    "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
  )
  @as("Name")
  name: entityName,
}
type firewallManagerRuleGroups = array<firewallManagerRuleGroup>
@ocaml.doc(
  "<p> A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types <a>Rule</a>, <a>RuleGroup</a>, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway REST API, an Application Load Balancer, or an AWS AppSync GraphQL API.  </p>"
)
type webACL = {
  @ocaml.doc("<p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p> 
         <p>For information about customizing web requests and responses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html\">Customizing web requests and responses in AWS WAF</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>
         <p>For information about the limits on count and size for custom request and response settings, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/limits.html\">AWS WAF quotas</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
  @as("CustomResponseBodies")
  customResponseBodies: option<customResponseBodies>,
  @ocaml.doc("<p>The label namespace prefix for this web ACL. All labels added by rules in this web ACL have this prefix. </p>
         <ul>
            <li>
               <p>The syntax for the label namespace prefix for a web ACL is the following: </p>
               <p>
                  <code>awswaf:<account ID>:webacl:<web ACL name>:</code>
               </p>
            </li>
            <li>
               <p>When a rule with a label matches a web request, AWS WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
               <p>
                  <code><label namespace>:<label from rule></code>
               </p>
 
            </li>
         </ul>")
  @as("LabelNamespace")
  labelNamespace: option<labelName>,
  @ocaml.doc(
    "<p>Indicates whether this web ACL is managed by AWS Firewall Manager. If true, then only AWS Firewall Manager can delete the web ACL or any Firewall Manager rule groups in the web ACL. </p>"
  )
  @as("ManagedByFirewallManager")
  managedByFirewallManager: option<boolean_>,
  @ocaml.doc("<p>The last set of rules for AWS WAF to process in the web ACL. This is defined in an AWS Firewall Manager WAF policy and 
           contains only rule group references. You can't alter these. Any rules and rule groups that you define for the web ACL are 
           prioritized before these. </p>
         <p>In the Firewall Manager WAF policy, the Firewall Manager administrator can define a set of rule groups to run first in the web ACL 
           and a set of rule groups to run last. Within each set, the administrator prioritizes the rule groups, to
          determine their relative processing order.</p>")
  @as("PostProcessFirewallManagerRuleGroups")
  postProcessFirewallManagerRuleGroups: option<firewallManagerRuleGroups>,
  @ocaml.doc("<p>The first set of rules for AWS WAF to process in the web ACL. This is defined in an AWS Firewall Manager WAF policy and 
           contains only rule group references. You can't alter these. Any rules and rule groups that you define for the web ACL are 
           prioritized after these. </p>
         <p>In the Firewall Manager WAF policy, the Firewall Manager administrator can define a set of rule groups to run first in the web ACL 
           and a set of rule groups to run last. Within each set, the administrator prioritizes the rule groups, to
          determine their relative processing order.</p>")
  @as("PreProcessFirewallManagerRuleGroups")
  preProcessFirewallManagerRuleGroups: option<firewallManagerRuleGroups>,
  @ocaml.doc("<p>The web ACL capacity units (WCUs) currently being used by this web ACL. </p>
         <p>AWS WAF uses WCUs to calculate and control the operating
         resources that are used to run your rules, rule groups, and web ACLs. AWS WAF
         calculates capacity differently for each rule type, to reflect the relative cost of each rule. 
         Simple rules that cost little to run use fewer WCUs than more complex rules
				that use more processing power. 
				Rule group capacity is fixed at creation, which helps users plan their  
         web ACL WCU usage when they use a rule group. 
         The WCU limit for web ACLs is 1,500.  </p>")
  @as("Capacity")
  capacity: option<consumedCapacity>,
  @ocaml.doc(
    "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>"
  )
  @as("VisibilityConfig")
  visibilityConfig: visibilityConfig,
  @ocaml.doc("<p>The <a>Rule</a> statements used to identify the web requests that you 
         want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching  
         web requests, and parameters that govern how AWS WAF handles them. 
      </p>")
  @as("Rules")
  rules: option<rules>,
  @ocaml.doc("<p>A description of the Web ACL that helps with identification. </p>")
  @as("Description")
  description: option<entityDescription>,
  @ocaml.doc(
    "<p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>"
  )
  @as("DefaultAction")
  defaultAction: defaultAction,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource.</p>"
  )
  @as("ARN")
  arn: resourceArn,
  @ocaml.doc(
    "<p>A unique identifier for the <code>WebACL</code>. This ID is returned in the responses to create and list commands. You use this ID to do things like get, update, and delete a <code>WebACL</code>.</p>"
  )
  @as("Id")
  id: entityId,
  @ocaml.doc(
    "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
  )
  @as("Name")
  name: entityName,
}
@ocaml.doc("<note>
            <p>This is the latest version of the <b>AWS WAF</b> API, released in
            November, 2019. The names of the entities that you use to access this API, like
            endpoints and namespaces, all have the versioning information added, like \"V2\" or \"v2\",
            to distinguish from the prior version. We recommend migrating your resources to this
            version, because it has a number of significant improvements.</p>
            <p>If you used AWS WAF prior to this release, you can't use this AWS WAFV2 API to access
            any AWS WAF resources that you created before. You can access your old rules, web ACLs,
            and other AWS WAF resources only through the AWS WAF Classic APIs. The AWS WAF Classic
            APIs have retained the prior names, endpoints, and namespaces. </p>
            <p>For information, including how to migrate your AWS WAF resources to this version, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF
               Developer Guide</a>. </p>
         </note>
         <p>AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests
         that are forwarded to Amazon CloudFront, an Amazon API Gateway REST API, an Application Load
         Balancer, or an AWS AppSync GraphQL API. AWS WAF also lets you control access to your content. Based on conditions that
         you specify, such as the IP addresses that requests originate from or the values of query
          strings, the API Gateway REST API, CloudFront distribution, the Application Load Balancer, 
          or the AWS AppSync GraphQL API responds to requests
         either with the requested content or with an HTTP 403 status code (Forbidden). You also can
         configure CloudFront to return a custom error page when a request is blocked.</p>
         <p>This API guide is for developers who need detailed information about AWS WAF API
         actions, data types, and errors. For detailed information about AWS WAF features and an
         overview of how to use AWS WAF, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/\">AWS WAF Developer Guide</a>.</p>
         <p>You can make calls using the endpoints listed in <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region\">AWS Service Endpoints for AWS WAF</a>. </p>
         <ul>
            <li>
               <p>For regional applications, you can use any of the endpoints in the list.
               A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API. </p>
            </li>
            <li>
               <p>For AWS CloudFront applications, you must use the API endpoint listed for
               US East (N. Virginia): us-east-1.</p>
            </li>
         </ul>
         <p>Alternatively, you can use one of the AWS SDKs to access an API that's tailored to the
         programming language or platform that you're using. For more information, see <a href=\"http://aws.amazon.com/tools/#SDKs\">AWS SDKs</a>.</p>
         <p>We currently provide two versions of the AWS WAF API: this API and the prior versions,
         the classic AWS WAF APIs. This new API provides the same functionality as the older
         versions, with the following major improvements:</p>
         <ul>
            <li>
               <p>You use one API for both global and regional applications. Where you need to
               distinguish the scope, you specify a <code>Scope</code> parameter and set it to
                  <code>CLOUDFRONT</code> or <code>REGIONAL</code>. </p>
            </li>
            <li>
               <p>You can define a Web ACL or rule group with a single call, and update it with a
               single call. You define all rule specifications in JSON format, and pass them to your
               rule group or Web ACL calls.</p>
            </li>
            <li>
               <p>The limits AWS WAF places on the use of rules more closely reflects the cost of
               running each type of rule. Rule groups include capacity settings, so you know the
               maximum cost of a rule group when you use it.</p>
            </li>
         </ul>")
module PutPermissionPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The policy to attach to the specified rule group. </p>
       
         <p>The policy specifications must conform to the following:</p>
         <ul>
            <li> 
               <p>The policy must be composed using IAM Policy version 2012-10-17 or version 2015-01-01.</p>
            </li>
            <li>
               <p>The policy must include specifications for <code>Effect</code>, <code>Action</code>, and <code>Principal</code>.</p>
            </li>
            <li>
               <p>
                  <code>Effect</code> must specify <code>Allow</code>.</p>
            </li>
            <li>
               <p>
                  <code>Action</code> must specify <code>wafv2:CreateWebACL</code>, <code>wafv2:UpdateWebACL</code>, and <code>wafv2:PutFirewallManagerRuleGroups</code>. AWS WAF rejects any extra actions or wildcard actions in the policy.</p>
            </li>
            <li>
               <p>The policy must not include a <code>Resource</code> parameter.</p>
            </li>
         </ul>     
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html\">IAM Policies</a>.  </p>")
    @as("Policy")
    policy: policyString,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the <a>RuleGroup</a> to which you want to attach the policy.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-wafv2") @new external new: request => t = "PutPermissionPolicyCommand"
  let make = (~policy, ~resourceArn, ()) => new({policy: policy, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetPermissionPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the rule group for which you want to get the policy.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The IAM policy that is attached to the specified rule group.</p>") @as("Policy")
    policy: option<policyString>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetPermissionPolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateWebACL = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to disassociate from the web ACL. </p>
       
         <p>The ARN must be in one of the following formats:</p>
         <ul>
            <li>
               <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For an API Gateway REST API: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For an AppSync GraphQL API: <code>arn:aws:appsync:<i>region</i>:<i>account-id</i>:apis/<i>GraphQLApiId</i>
                  </code>
               </p>
            </li>
         </ul>")
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DisassociateWebACLCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWebACL = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: lockToken,
    @ocaml.doc(
      "<p>The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }

  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DeleteWebACLCommand"
  let make = (~lockToken, ~id, ~scope, ~name, ()) =>
    new({lockToken: lockToken, id: id, scope: scope, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRuleGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: lockToken,
    @ocaml.doc(
      "<p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }

  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DeleteRuleGroupCommand"
  let make = (~lockToken, ~id, ~scope, ~name, ()) =>
    new({lockToken: lockToken, id: id, scope: scope, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRegexPatternSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: lockToken,
    @ocaml.doc(
      "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc("<p>The name of the set. You cannot change the name after you create the set.</p>")
    @as("Name")
    name: entityName,
  }

  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DeleteRegexPatternSetCommand"
  let make = (~lockToken, ~id, ~scope, ~name, ()) =>
    new({lockToken: lockToken, id: id, scope: scope, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePermissionPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule group from which you want to delete the policy.</p>
        <p>You must be the owner of the rule group to perform this operation.</p>")
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DeletePermissionPolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLoggingConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the web ACL from which you want to delete the <a>LoggingConfiguration</a>.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "DeleteLoggingConfigurationCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIPSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: lockToken,
    @ocaml.doc(
      "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }

  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DeleteIPSetCommand"
  let make = (~lockToken, ~id, ~scope, ~name, ()) =>
    new({lockToken: lockToken, id: id, scope: scope, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFirewallManagerRuleGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("WebACLLockToken")
    webACLLockToken: lockToken,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the web ACL.</p>") @as("WebACLArn")
    webACLArn: resourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("NextWebACLLockToken")
    nextWebACLLockToken: option<lockToken>,
  }
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "DeleteFirewallManagerRuleGroupsCommand"
  let make = (~webACLLockToken, ~webACLArn, ()) =>
    new({webACLLockToken: webACLLockToken, webACLArn: webACLArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateWebACL = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to associate with the web ACL. </p>
       
         <p>The ARN must be in one of the following formats:</p>
         <ul>
            <li>
               <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For an API Gateway REST API: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For an AppSync GraphQL API: <code>arn:aws:appsync:<i>region</i>:<i>account-id</i>:apis/<i>GraphQLApiId</i>
                  </code>
               </p>
            </li>
         </ul>")
    @as("ResourceArn")
    resourceArn: resourceArn,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource.</p>"
    )
    @as("WebACLArn")
    webACLArn: resourceArn,
  }

  @module("@aws-sdk/client-wafv2") @new external new: request => t = "AssociateWebACLCommand"
  let make = (~resourceArn, ~webACLArn, ()) => new({resourceArn: resourceArn, webACLArn: webACLArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateIPSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: lockToken,
    @ocaml.doc("<p>Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports all IPv4 and IPv6 CIDR ranges except for /0. </p>
         <p>Examples: </p>
         <ul>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
            </li>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify 
               <code>192.0.2.0/24</code>.</p>
            </li>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
            </li>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
            </li>
         </ul>
         <p>For more information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless
         Inter-Domain Routing</a>.</p>")
    @as("Addresses")
    addresses: ipaddresses,
    @ocaml.doc("<p>A description of the IP set that helps with identification. </p>")
    @as("Description")
    description: option<entityDescription>,
    @ocaml.doc(
      "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns this token to your update requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>"
    )
    @as("NextLockToken")
    nextLockToken: option<lockToken>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "UpdateIPSetCommand"
  let make = (~lockToken, ~addresses, ~id, ~scope, ~name, ~description=?, ()) =>
    new({
      lockToken: lockToken,
      addresses: addresses,
      description: description,
      id: id,
      scope: scope,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>An array of keys identifying the tags to disassociate from the resource.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceARN")
    resourceARN: resourceArn,
  }

  @module("@aws-sdk/client-wafv2") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListResourcesForWebACL = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Used for web ACLs that are scoped for regional applications. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API. </p>"
    )
    @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Web ACL.</p>") @as("WebACLArn")
    webACLArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The array of Amazon Resource Names (ARNs) of the associated resources.</p>")
    @as("ResourceArns")
    resourceArns: option<resourceArns>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListResourcesForWebACLCommand"
  let make = (~webACLArn, ~resourceType=?, ()) =>
    new({resourceType: resourceType, webACLArn: webACLArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRegexPatternSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: lockToken,
    @ocaml.doc("<p></p>") @as("RegularExpressionList") regularExpressionList: regularExpressionList,
    @ocaml.doc("<p>A description of the set that helps with identification. </p>")
    @as("Description")
    description: option<entityDescription>,
    @ocaml.doc(
      "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc("<p>The name of the set. You cannot change the name after you create the set.</p>")
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns this token to your update requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>"
    )
    @as("NextLockToken")
    nextLockToken: option<lockToken>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "UpdateRegexPatternSetCommand"
  let make = (~lockToken, ~regularExpressionList, ~id, ~scope, ~name, ~description=?, ()) =>
    new({
      lockToken: lockToken,
      regularExpressionList: regularExpressionList,
      description: description,
      id: id,
      scope: scope,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>An array of key:value pairs to associate with the resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceARN")
    resourceARN: resourceArn,
  }

  @module("@aws-sdk/client-wafv2") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListWebACLs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects that you want AWS WAF to return for this request. If more 
          objects are available, in the response, AWS WAF provides a 
         <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("WebACLs") webACLs: option<webACLSummaries>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListWebACLsCommand"
  let make = (~scope, ~limit=?, ~nextMarker=?, ()) =>
    new({limit: limit, nextMarker: nextMarker, scope: scope})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRuleGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects that you want AWS WAF to return for this request. If more 
          objects are available, in the response, AWS WAF provides a 
         <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("RuleGroups") ruleGroups: option<ruleGroupSummaries>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListRuleGroupsCommand"
  let make = (~scope, ~limit=?, ~nextMarker=?, ()) =>
    new({limit: limit, nextMarker: nextMarker, scope: scope})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRegexPatternSets = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects that you want AWS WAF to return for this request. If more 
          objects are available, in the response, AWS WAF provides a 
         <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("RegexPatternSets")
    regexPatternSets: option<regexPatternSetSummaries>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListRegexPatternSetsCommand"
  let make = (~scope, ~limit=?, ~nextMarker=?, ()) =>
    new({limit: limit, nextMarker: nextMarker, scope: scope})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIPSets = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects that you want AWS WAF to return for this request. If more 
          objects are available, in the response, AWS WAF provides a 
         <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
  }
  type response = {
    @ocaml.doc(
      "<p>Array of IPSets. This may not be the full list of IPSets that you have defined. See the <code>Limit</code> specification for this request.</p>"
    )
    @as("IPSets")
    ipsets: option<ipsetSummaries>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListIPSetsCommand"
  let make = (~scope, ~limit=?, ~nextMarker=?, ()) =>
    new({limit: limit, nextMarker: nextMarker, scope: scope})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAvailableManagedRuleGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects that you want AWS WAF to return for this request. If more 
          objects are available, in the response, AWS WAF provides a 
         <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("ManagedRuleGroups")
    managedRuleGroups: option<managedRuleGroupSummaries>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "ListAvailableManagedRuleGroupsCommand"
  let make = (~scope, ~limit=?, ~nextMarker=?, ()) =>
    new({limit: limit, nextMarker: nextMarker, scope: scope})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRateBasedStatementManagedKeys = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the rate-based rule to get the keys for.</p>") @as("RuleName")
    ruleName: entityName,
    @ocaml.doc(
      "<p>The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("WebACLId")
    webACLId: entityId,
    @ocaml.doc(
      "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
    )
    @as("WebACLName")
    webACLName: entityName,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
  }
  type response = {
    @ocaml.doc("<p>The keys that are of Internet Protocol version 6 (IPv6). </p>")
    @as("ManagedKeysIPV6")
    managedKeysIPV6: option<rateBasedStatementManagedKeysIPSet>,
    @ocaml.doc("<p>The keys that are of Internet Protocol version 4 (IPv4). </p>")
    @as("ManagedKeysIPV4")
    managedKeysIPV4: option<rateBasedStatementManagedKeysIPSet>,
  }
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "GetRateBasedStatementManagedKeysCommand"
  let make = (~ruleName, ~webACLId, ~webACLName, ~scope, ()) =>
    new({ruleName: ruleName, webACLId: webACLId, webACLName: webACLName, scope: scope})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIPSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: option<lockToken>,
    @ocaml.doc("<p></p>") @as("IPSet") ipset: option<ipset>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetIPSetCommand"
  let make = (~id, ~scope, ~name, ()) => new({id: id, scope: scope, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRegexPatternSet = {
  type t
  type request = {
    @ocaml.doc("<p>An array of key:value pairs to associate with the resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Array of regular expression strings. </p>") @as("RegularExpressionList")
    regularExpressionList: regularExpressionList,
    @ocaml.doc("<p>A description of the set that helps with identification. </p>")
    @as("Description")
    description: option<entityDescription>,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc("<p>The name of the set. You cannot change the name after you create the set.</p>")
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>High-level information about a <a>RegexPatternSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RegexPatternSet</code>, and the ARN, that you provide to the <a>RegexPatternSetReferenceStatement</a> to use the pattern set in a <a>Rule</a>.</p>"
    )
    @as("Summary")
    summary: option<regexPatternSetSummary>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "CreateRegexPatternSetCommand"
  let make = (~regularExpressionList, ~scope, ~name, ~tags=?, ~description=?, ()) =>
    new({
      tags: tags,
      regularExpressionList: regularExpressionList,
      description: description,
      scope: scope,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIPSet = {
  type t
  type request = {
    @ocaml.doc("<p>An array of key:value pairs to associate with the resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports all IPv4 and IPv6 CIDR ranges except for /0. </p>
         <p>Examples: </p>
         <ul>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
            </li>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify 
               <code>192.0.2.0/24</code>.</p>
            </li>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
            </li>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
            </li>
         </ul>
         <p>For more information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless
         Inter-Domain Routing</a>.</p>")
    @as("Addresses")
    addresses: ipaddresses,
    @ocaml.doc("<p>Specify IPV4 or IPV6. </p>") @as("IPAddressVersion")
    ipaddressVersion: ipaddressVersion,
    @ocaml.doc("<p>A description of the IP set that helps with identification. </p>")
    @as("Description")
    description: option<entityDescription>,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>High-level information about an <a>IPSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage an <code>IPSet</code>, and the ARN, that you provide to the <a>IPSetReferenceStatement</a> to use the address set in a <a>Rule</a>.</p>"
    )
    @as("Summary")
    summary: option<ipsetSummary>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "CreateIPSetCommand"
  let make = (~addresses, ~ipaddressVersion, ~scope, ~name, ~tags=?, ~description=?, ()) =>
    new({
      tags: tags,
      addresses: addresses,
      ipaddressVersion: ipaddressVersion,
      description: description,
      scope: scope,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceARN")
    resourceARN: resourceArn,
    @ocaml.doc("<p>The maximum number of objects that you want AWS WAF to return for this request. If more 
          objects are available, in the response, AWS WAF provides a 
         <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>The collection of tagging definitions for the resource. </p>")
    @as("TagInfoForResource")
    tagInfoForResource: option<tagInfoForResource>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ~limit=?, ~nextMarker=?, ()) =>
    new({resourceARN: resourceARN, limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRegexPatternSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc("<p>The name of the set. You cannot change the name after you create the set.</p>")
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: option<lockToken>,
    @ocaml.doc("<p></p>") @as("RegexPatternSet") regexPatternSet: option<regexPatternSet>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetRegexPatternSetCommand"
  let make = (~id, ~scope, ~name, ()) => new({id: id, scope: scope, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSampledRequests = {
  type t
  type request = {
    @ocaml.doc("<p>The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received
         during the time range. If your resource received fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code> 
         returns information about all of them. </p>")
    @as("MaxItems")
    maxItems: listMaxItems,
    @ocaml.doc("<p>The start date and time and the end date and time of the range for which you want <code>GetSampledRequests</code> to return a 
          sample of requests. You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. You can specify any time range in the previous three hours. If you specify a start time that's earlier than three hours ago, AWS WAF sets it to three hours ago.</p>")
    @as("TimeWindow")
    timeWindow: timeWindow,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The metric name assigned to the <code>Rule</code> or <code>RuleGroup</code> for which you want a sample of requests.</p>"
    )
    @as("RuleMetricName")
    ruleMetricName: metricName,
    @ocaml.doc(
      "<p>The Amazon resource name (ARN) of the <code>WebACL</code> for which you want a sample of requests.</p>"
    )
    @as("WebAclArn")
    webAclArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>Usually, <code>TimeWindow</code> is the time range that you specified in the <code>GetSampledRequests</code> request. 
            However, if your AWS resource received more than 5,000 requests during the time range that you specified in the request, 
         <code>GetSampledRequests</code> returns the time range for the first 5,000 requests. Times are in Coordinated Universal Time (UTC) format.</p>")
    @as("TimeWindow")
    timeWindow: option<timeWindow>,
    @ocaml.doc("<p>The total number of requests from which <code>GetSampledRequests</code> got a sample of <code>MaxItems</code> requests. 
         If <code>PopulationSize</code> is less than <code>MaxItems</code>, the sample includes every request that your AWS resource 
         received during the specified time range.</p>")
    @as("PopulationSize")
    populationSize: option<populationSize>,
    @ocaml.doc(
      "<p>A complex type that contains detailed information about each of the requests in the sample.</p>"
    )
    @as("SampledRequests")
    sampledRequests: option<sampledHTTPRequests>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetSampledRequestsCommand"
  let make = (~maxItems, ~timeWindow, ~scope, ~ruleMetricName, ~webAclArn, ()) =>
    new({
      maxItems: maxItems,
      timeWindow: timeWindow,
      scope: scope,
      ruleMetricName: ruleMetricName,
      webAclArn: webAclArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutLoggingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("LoggingConfiguration") loggingConfiguration: loggingConfiguration,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("LoggingConfiguration")
    loggingConfiguration: option<loggingConfiguration>,
  }
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "PutLoggingConfigurationCommand"
  let make = (~loggingConfiguration, ()) => new({loggingConfiguration: loggingConfiguration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLoggingConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the web ACL for which you want to get the <a>LoggingConfiguration</a>.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The <a>LoggingConfiguration</a> for the specified web ACL.</p>")
    @as("LoggingConfiguration")
    loggingConfiguration: option<loggingConfiguration>,
  }
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "GetLoggingConfigurationCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeManagedRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>"
    )
    @as("Name")
    name: entityName,
    @ocaml.doc(
      "<p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>"
    )
    @as("VendorName")
    vendorName: vendorName,
  }
  type response = {
    @ocaml.doc(
      "<p>The labels that one or more rules in this rule group match against in label match statements. These labels are defined in a <code>LabelMatchStatement</code> specification, in the <a>Statement</a> definition of a rule.  </p>"
    )
    @as("ConsumedLabels")
    consumedLabels: option<labelSummaries>,
    @ocaml.doc(
      "<p>The labels that one or more rules in this rule group add to matching web ACLs. These labels are defined in the <code>RuleLabels</code> for a <a>Rule</a>.</p>"
    )
    @as("AvailableLabels")
    availableLabels: option<labelSummaries>,
    @ocaml.doc("<p>The label namespace prefix for this rule group. All labels added by rules in this rule group have this prefix. </p>
         <ul>
            <li>
               <p>The syntax for the label namespace prefix for a managed rule group is the following: </p>
               <p>
                  <code>awswaf:managed:<vendor>:<rule group name></code>:</p>
            </li>
            <li>
               <p>When a rule with a label matches a web request, AWS WAF adds the fully qualified label to the request. A fully qualified label is made up of the label namespace from the rule group or web ACL where the rule is defined and the label from the rule, separated by a colon: </p>
               <p>
                  <code><label namespace>:<label from rule></code>
               </p>
 
            </li>
         </ul>")
    @as("LabelNamespace")
    labelNamespace: option<labelName>,
    @ocaml.doc("<p></p>") @as("Rules") rules: option<ruleSummaries>,
    @ocaml.doc("<p>The web ACL capacity units (WCUs) required for this rule group. 
         AWS WAF uses web ACL capacity units (WCU) to calculate and control the operating
         resources that are used to run your rules, rule groups, and web ACLs. AWS WAF
         calculates capacity differently for each rule type, to reflect each rule's relative
         cost. Rule group capacity is fixed at creation, so users can plan their  
         web ACL WCU usage when they use a rule group. 
         The WCU limit for web ACLs is 1,500.  </p>")
    @as("Capacity")
    capacity: option<capacityUnit>,
  }
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "DescribeManagedRuleGroupCommand"
  let make = (~scope, ~name, ~vendorName, ()) =>
    new({scope: scope, name: name, vendorName: vendorName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLoggingConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects that you want AWS WAF to return for this request. If more 
          objects are available, in the response, AWS WAF provides a 
         <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: option<scope>,
  }
  type response = {
    @ocaml.doc("<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available
         for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> 
         value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc("<p></p>") @as("LoggingConfigurations")
    loggingConfigurations: option<loggingConfigurations>,
  }
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "ListLoggingConfigurationsCommand"
  let make = (~limit=?, ~nextMarker=?, ~scope=?, ()) =>
    new({limit: limit, nextMarker: nextMarker, scope: scope})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWebACL = {
  type t
  type request = {
    @ocaml.doc("<p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p> 
         <p>For information about customizing web requests and responses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html\">Customizing web requests and responses in AWS WAF</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>
         <p>For information about the limits on count and size for custom request and response settings, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/limits.html\">AWS WAF quotas</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
    @as("CustomResponseBodies")
    customResponseBodies: option<customResponseBodies>,
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: lockToken,
    @ocaml.doc(
      "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>"
    )
    @as("VisibilityConfig")
    visibilityConfig: visibilityConfig,
    @ocaml.doc("<p>The <a>Rule</a> statements used to identify the web requests that you 
         want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching  
         web requests, and parameters that govern how AWS WAF handles them. 
      </p>")
    @as("Rules")
    rules: option<rules>,
    @ocaml.doc("<p>A description of the Web ACL that helps with identification. </p>")
    @as("Description")
    description: option<entityDescription>,
    @ocaml.doc(
      "<p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>"
    )
    @as("DefaultAction")
    defaultAction: defaultAction,
    @ocaml.doc(
      "<p>The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns this token to your update requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>"
    )
    @as("NextLockToken")
    nextLockToken: option<lockToken>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "UpdateWebACLCommand"
  let make = (
    ~lockToken,
    ~visibilityConfig,
    ~defaultAction,
    ~id,
    ~scope,
    ~name,
    ~customResponseBodies=?,
    ~rules=?,
    ~description=?,
    (),
  ) =>
    new({
      customResponseBodies: customResponseBodies,
      lockToken: lockToken,
      visibilityConfig: visibilityConfig,
      rules: rules,
      description: description,
      defaultAction: defaultAction,
      id: id,
      scope: scope,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p> 
         <p>For information about customizing web requests and responses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html\">Customizing web requests and responses in AWS WAF</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>
         <p>For information about the limits on count and size for custom request and response settings, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/limits.html\">AWS WAF quotas</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
    @as("CustomResponseBodies")
    customResponseBodies: option<customResponseBodies>,
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: lockToken,
    @ocaml.doc(
      "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>"
    )
    @as("VisibilityConfig")
    visibilityConfig: visibilityConfig,
    @ocaml.doc("<p>The <a>Rule</a> statements used to identify the web requests that you 
         want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching  
         web requests, and parameters that govern how AWS WAF handles them. 
      </p>")
    @as("Rules")
    rules: option<rules>,
    @ocaml.doc("<p>A description of the rule group that helps with identification. </p>")
    @as("Description")
    description: option<entityDescription>,
    @ocaml.doc(
      "<p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns this token to your update requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>"
    )
    @as("NextLockToken")
    nextLockToken: option<lockToken>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "UpdateRuleGroupCommand"
  let make = (
    ~lockToken,
    ~visibilityConfig,
    ~id,
    ~scope,
    ~name,
    ~customResponseBodies=?,
    ~rules=?,
    ~description=?,
    (),
  ) =>
    new({
      customResponseBodies: customResponseBodies,
      lockToken: lockToken,
      visibilityConfig: visibilityConfig,
      rules: rules,
      description: description,
      id: id,
      scope: scope,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWebACL = {
  type t
  type request = {
    @ocaml.doc("<p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the web ACL, and then use them in the rules and default actions that you define in the web ACL. </p> 
         <p>For information about customizing web requests and responses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html\">Customizing web requests and responses in AWS WAF</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>
         <p>For information about the limits on count and size for custom request and response settings, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/limits.html\">AWS WAF quotas</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
    @as("CustomResponseBodies")
    customResponseBodies: option<customResponseBodies>,
    @ocaml.doc("<p>An array of key:value pairs to associate with the resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>"
    )
    @as("VisibilityConfig")
    visibilityConfig: visibilityConfig,
    @ocaml.doc("<p>The <a>Rule</a> statements used to identify the web requests that you 
         want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching  
         web requests, and parameters that govern how AWS WAF handles them. 
      </p>")
    @as("Rules")
    rules: option<rules>,
    @ocaml.doc("<p>A description of the Web ACL that helps with identification. </p>")
    @as("Description")
    description: option<entityDescription>,
    @ocaml.doc(
      "<p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>"
    )
    @as("DefaultAction")
    defaultAction: defaultAction,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>High-level information about a <a>WebACL</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>WebACL</code>, and the ARN, that you provide to operations like <a>AssociateWebACL</a>.</p>"
    )
    @as("Summary")
    summary: option<webACLSummary>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "CreateWebACLCommand"
  let make = (
    ~visibilityConfig,
    ~defaultAction,
    ~scope,
    ~name,
    ~customResponseBodies=?,
    ~tags=?,
    ~rules=?,
    ~description=?,
    (),
  ) =>
    new({
      customResponseBodies: customResponseBodies,
      tags: tags,
      visibilityConfig: visibilityConfig,
      rules: rules,
      description: description,
      defaultAction: defaultAction,
      scope: scope,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A map of custom response keys and content bodies. When you create a rule with a block action, you can send a custom response to the web request. You define these for the rule group, and then use them in the rules that you define in the rule group. </p> 
         <p>For information about customizing web requests and responses, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html\">Customizing web requests and responses in AWS WAF</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>
         <p>For information about the limits on count and size for custom request and response settings, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/limits.html\">AWS WAF quotas</a> in the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p>")
    @as("CustomResponseBodies")
    customResponseBodies: option<customResponseBodies>,
    @ocaml.doc("<p>An array of key:value pairs to associate with the resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>"
    )
    @as("VisibilityConfig")
    visibilityConfig: visibilityConfig,
    @ocaml.doc("<p>The <a>Rule</a> statements used to identify the web requests that you 
         want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching  
         web requests, and parameters that govern how AWS WAF handles them. 
      </p>")
    @as("Rules")
    rules: option<rules>,
    @ocaml.doc("<p>A description of the rule group that helps with identification. </p>")
    @as("Description")
    description: option<entityDescription>,
    @ocaml.doc("<p>The web ACL capacity units (WCUs) required for this rule group.</p> 
          <p>When you create your own rule group, you define this, and you cannot change it after creation. 
          When you add or modify the rules in a rule group, AWS WAF enforces this limit. You can check the capacity 
          for a set of rules using <a>CheckCapacity</a>.</p> 
          <p>AWS WAF uses WCUs to calculate and control the operating
         resources that are used to run your rules, rule groups, and web ACLs. AWS WAF
         calculates capacity differently for each rule type, to reflect the relative cost of each rule. 
         Simple rules that cost little to run use fewer WCUs than more complex rules
				that use more processing power. 
				Rule group capacity is fixed at creation, which helps users plan their  
         web ACL WCU usage when they use a rule group. 
         The WCU limit for web ACLs is 1,500.  </p>")
    @as("Capacity")
    capacity: capacityUnit,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>High-level information about a <a>RuleGroup</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>"
    )
    @as("Summary")
    summary: option<ruleGroupSummary>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "CreateRuleGroupCommand"
  let make = (
    ~visibilityConfig,
    ~capacity,
    ~scope,
    ~name,
    ~customResponseBodies=?,
    ~tags=?,
    ~rules=?,
    ~description=?,
    (),
  ) =>
    new({
      customResponseBodies: customResponseBodies,
      tags: tags,
      visibilityConfig: visibilityConfig,
      rules: rules,
      description: description,
      capacity: capacity,
      scope: scope,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CheckCapacity = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of <a>Rule</a> that you're configuring to use in a rule group or web ACL. </p>"
    )
    @as("Rules")
    rules: rules,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
  }
  type response = {
    @ocaml.doc("<p>The capacity required by the rules and scope.</p>") @as("Capacity")
    capacity: option<consumedCapacity>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "CheckCapacityCommand"
  let make = (~rules, ~scope, ()) => new({rules: rules, scope: scope})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRuleGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: option<lockToken>,
    @ocaml.doc("<p></p>") @as("RuleGroup") ruleGroup: option<ruleGroup>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetRuleGroupCommand"
  let make = (~id, ~scope, ~name, ()) => new({id: id, scope: scope, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWebACLForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN (Amazon Resource Name) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Web ACL that is associated with the resource. If there is no associated resource, AWS WAF returns a null Web ACL.</p>"
    )
    @as("WebACL")
    webACL: option<webACL>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetWebACLForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWebACL = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
    )
    @as("Id")
    id: entityId,
    @ocaml.doc("<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
         <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
         <ul>
            <li>
               <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
            </li>
            <li>
               <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
            </li>
         </ul>")
    @as("Scope")
    scope: scope,
    @ocaml.doc(
      "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
    )
    @as("Name")
    name: entityName,
  }
  type response = {
    @ocaml.doc(
      "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
    )
    @as("LockToken")
    lockToken: option<lockToken>,
    @ocaml.doc(
      "<p>The Web ACL specification. You can modify the settings in this Web ACL and use it to update this Web ACL or create a new one.</p>"
    )
    @as("WebACL")
    webACL: option<webACL>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetWebACLCommand"
  let make = (~id, ~scope, ~name, ()) => new({id: id, scope: scope, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
