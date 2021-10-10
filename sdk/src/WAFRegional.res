type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-waf-regional") @new
external createClient: unit => awsServiceClient = "WAFRegionalClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type wafRuleType = [@as("GROUP") #GROUP | @as("RATE_BASED") #RATE_BASED | @as("REGULAR") #REGULAR]
type wafOverrideActionType = [@as("COUNT") #COUNT | @as("NONE") #NONE]
type wafActionType = [@as("COUNT") #COUNT | @as("ALLOW") #ALLOW | @as("BLOCK") #BLOCK]
type uristring = string
type timestamp_ = Js.Date.t
type textTransformation = [
  | @as("URL_DECODE") #URL_DECODE
  | @as("CMD_LINE") #CMD_LINE
  | @as("LOWERCASE") #LOWERCASE
  | @as("HTML_ENTITY_DECODE") #HTML_ENTITY_DECODE
  | @as("COMPRESS_WHITE_SPACE") #COMPRESS_WHITE_SPACE
  | @as("NONE") #NONE
]
type tagValue = string
type tagKey = string
type size = float
type sampleWeight = float
type s3ObjectUrl = string
type s3BucketName = string
type rulePriority = int
type resourceType = [
  | @as("API_GATEWAY") #API_GATEWAY
  | @as("APPLICATION_LOAD_BALANCER") #APPLICATION_LOAD_BALANCER
]
type resourceName = string
type resourceId = string
type resourceArn = string
type regexPatternString = string
type rateLimit = float
type rateKey = [@as("IP") #IP]
type predicateType = [
  | @as("RegexMatch") #RegexMatch
  | @as("XssMatch") #XssMatch
  | @as("SizeConstraint") #SizeConstraint
  | @as("GeoMatch") #GeoMatch
  | @as("SqlInjectionMatch") #SqlInjectionMatch
  | @as("ByteMatch") #ByteMatch
  | @as("IPMatch") #IPMatch
]
type positionalConstraint = [
  | @as("CONTAINS_WORD") #CONTAINS_WORD
  | @as("CONTAINS") #CONTAINS
  | @as("ENDS_WITH") #ENDS_WITH
  | @as("STARTS_WITH") #STARTS_WITH
  | @as("EXACTLY") #EXACTLY
]
type populationSize = float
type policyString = string
type parameterExceptionReason = [
  | @as("INVALID_TAG_KEY") #INVALID_TAG_KEY
  | @as("ILLEGAL_ARGUMENT") #ILLEGAL_ARGUMENT
  | @as("ILLEGAL_COMBINATION") #ILLEGAL_COMBINATION
  | @as("INVALID_OPTION") #INVALID_OPTION
]
type parameterExceptionParameter = string
type parameterExceptionField = [
  | @as("TAG_KEYS") #TAG_KEYS
  | @as("TAGS") #TAGS
  | @as("RESOURCE_ARN") #RESOURCE_ARN
  | @as("NEXT_MARKER") #NEXT_MARKER
  | @as("RULE_TYPE") #RULE_TYPE
  | @as("RATE_KEY") #RATE_KEY
  | @as("GEO_MATCH_LOCATION_VALUE") #GEO_MATCH_LOCATION_VALUE
  | @as("GEO_MATCH_LOCATION_TYPE") #GEO_MATCH_LOCATION_TYPE
  | @as("SIZE_CONSTRAINT_COMPARISON_OPERATOR") #SIZE_CONSTRAINT_COMPARISON_OPERATOR
  | @as("BYTE_MATCH_POSITIONAL_CONSTRAINT") #BYTE_MATCH_POSITIONAL_CONSTRAINT
  | @as("BYTE_MATCH_TEXT_TRANSFORMATION") #BYTE_MATCH_TEXT_TRANSFORMATION
  | @as("SQL_INJECTION_MATCH_FIELD_TYPE") #SQL_INJECTION_MATCH_FIELD_TYPE
  | @as("BYTE_MATCH_FIELD_TYPE") #BYTE_MATCH_FIELD_TYPE
  | @as("IPSET_TYPE") #IPSET_TYPE
  | @as("PREDICATE_TYPE") #PREDICATE_TYPE
  | @as("WAF_OVERRIDE_ACTION") #WAF_OVERRIDE_ACTION
  | @as("WAF_ACTION") #WAF_ACTION
  | @as("CHANGE_ACTION") #CHANGE_ACTION
]
type paginationLimit = int
type nextMarker = string
type negated = bool
type migrationErrorType = [
  | @as("S3_INTERNAL_ERROR") #S3_INTERNAL_ERROR
  | @as("S3_BUCKET_INVALID_REGION") #S3_BUCKET_INVALID_REGION
  | @as("S3_BUCKET_NOT_FOUND") #S3_BUCKET_NOT_FOUND
  | @as("S3_BUCKET_NOT_ACCESSIBLE") #S3_BUCKET_NOT_ACCESSIBLE
  | @as("S3_BUCKET_NO_PERMISSION") #S3_BUCKET_NO_PERMISSION
  | @as("ENTITY_NOT_FOUND") #ENTITY_NOT_FOUND
  | @as("ENTITY_NOT_SUPPORTED") #ENTITY_NOT_SUPPORTED
]
type metricName = string
type matchFieldType = [
  | @as("ALL_QUERY_ARGS") #ALL_QUERY_ARGS
  | @as("SINGLE_QUERY_ARG") #SINGLE_QUERY_ARG
  | @as("BODY") #BODY
  | @as("METHOD") #METHOD
  | @as("HEADER") #HEADER
  | @as("QUERY_STRING") #QUERY_STRING
  | @as("URI") #URI
]
type matchFieldData = string
type managedKey = string
type ignoreUnsupportedType = bool
type ipstring = string
type ipsetDescriptorValue = string
type ipsetDescriptorType = [@as("IPV6") #IPV6 | @as("IPV4") #IPV4]
type headerValue = string
type headerName = string
type httpversion = string
type httpmethod = string
type getSampledRequestsMaxItems = float
type geoMatchConstraintValue = [
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
type geoMatchConstraintType = [@as("Country") #Country]
type errorReason = string
type country = string
type comparisonOperator = [
  | @as("GT") #GT
  | @as("GE") #GE
  | @as("LT") #LT
  | @as("LE") #LE
  | @as("NE") #NE
  | @as("EQ") #EQ
]
type changeTokenStatus = [
  | @as("INSYNC") #INSYNC
  | @as("PENDING") #PENDING
  | @as("PROVISIONED") #PROVISIONED
]
type changeToken = string
type changeAction = [@as("DELETE") #DELETE | @as("INSERT") #INSERT]
type byteMatchTargetString = NodeJs.Buffer.t
type action = string
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>The <code>Id</code> and <code>Name</code> of an <code>XssMatchSet</code>.</p>")
type xssMatchSetSummary = {
  @ocaml.doc(
    "<p>The name of the <code>XssMatchSet</code>, if any, specified by <code>Id</code>.</p>"
  )
  @as("Name")
  name: resourceName,
  @ocaml.doc("<p>A unique identifier for an <code>XssMatchSet</code>. You use <code>XssMatchSetId</code> to get information about a 
			<code>XssMatchSet</code> (see <a>GetXssMatchSet</a>), update an <code>XssMatchSet</code> 
			(see <a>UpdateXssMatchSet</a>), insert an <code>XssMatchSet</code> into a <code>Rule</code> or 
			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete an <code>XssMatchSet</code> from AWS WAF 
			(see <a>DeleteXssMatchSet</a>).</p>
		       <p>
            <code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>")
  @as("XssMatchSetId")
  xssMatchSetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Contains the identifier and the name or description of the <a>WebACL</a>.</p>")
type webACLSummary = {
  @ocaml.doc(
    "<p>A friendly name or description of the <a>WebACL</a>. You can't change the name of a <code>WebACL</code> after you create it.</p>"
  )
  @as("Name")
  name: resourceName,
  @ocaml.doc("<p>A unique identifier for a <code>WebACL</code>. You use <code>WebACLId</code> to get information about a <code>WebACL</code> 
			(see <a>GetWebACL</a>), update a <code>WebACL</code> (see <a>UpdateWebACL</a>), and delete a <code>WebACL</code> from AWS WAF 
			(see <a>DeleteWebACL</a>).</p>
		       <p>
            <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>")
  @as("WebACLId")
  webACLId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>The action to take if any rule within the <code>RuleGroup</code> matches a request. </p>")
type wafOverrideAction = {
  @ocaml.doc("<p>
            <code>COUNT</code> overrides the action specified by the individual rule within a <code>RuleGroup</code> . If set to <code>NONE</code>, the rule's action will take place.</p>")
  @as("Type")
  type_: wafOverrideActionType,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>For the action that is associated with a rule in a <code>WebACL</code>, specifies the action that you want AWS WAF to perform when a 
			web request matches all of the conditions in a rule. For the default action in a <code>WebACL</code>, specifies the action that you want 
			AWS WAF to take when a web request doesn't match all of the conditions in any of the rules in a <code>WebACL</code>. </p>")
type wafAction = {
  @ocaml.doc("<p>Specifies how you want AWS WAF to respond to requests that match the settings in a <code>Rule</code>. Valid settings include the following:</p>
		       <ul>
            <li>
               <p>
                  <code>ALLOW</code>: AWS WAF allows requests</p>
            </li>
            <li>
               <p>
                  <code>BLOCK</code>: AWS WAF blocks requests</p>
            </li>
            <li>
               <p>
                  <code>COUNT</code>: AWS WAF increments a counter of the requests that match all of the conditions in the rule. 
				AWS WAF then continues to inspect the web request based on the remaining rules in the web ACL. You can't specify <code>COUNT</code> 
				for the default action for a <code>WebACL</code>.</p>
            </li>
         </ul>")
  @as("Type")
  type_: wafActionType,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>In a <a>GetSampledRequests</a> request, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range 
			for which you want AWS WAF to return a sample of web requests.</p>
                    <p>You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special  
                        designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. </p>
		       <p>In a <a>GetSampledRequests</a> response, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range 
			for which AWS WAF actually returned a sample of web requests. AWS WAF gets the specified number of requests from among the first 
			5,000 requests that your AWS resource receives during the specified time period. If your resource receives more than 5,000 
			requests during that period, AWS WAF stops sampling after the 5,000th request. In that case, <code>EndTime</code> 
			is the time that AWS WAF received the 5,000th request. </p>")
type timeWindow = {
  @ocaml.doc("<p>The end of the time range from which you want <code>GetSampledRequests</code> to return a sample of the 
                  requests that your AWS resource received. You must specify the date and time in Coordinated Universal Time (UTC) format. 
                  UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. 
                      You can specify any time range in the previous three hours.</p>")
  @as("EndTime")
  endTime: timestamp_,
  @ocaml.doc("<p>The beginning of the time range from which you want <code>GetSampledRequests</code> to return a sample of the 
                  requests that your AWS resource received. You must specify the date and time in Coordinated Universal Time (UTC) format. 
                  UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. 
                      You can specify any time range in the previous three hours.</p>")
  @as("StartTime")
  startTime: timestamp_,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
        <p>A tag associated with an AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to \"customer\" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p>
        <p>Tagging is only available through the API, SDKs, and CLI. You can't manage or view tags through the AWS WAF Classic console. You can tag the AWS resources that you manage through AWS WAF Classic: web ACLs, rule groups, and rules.  </p>")
type tag = {
  @ocaml.doc("<p></p>") @as("Value") value: tagValue,
  @ocaml.doc("<p></p>") @as("Key") key: tagKey,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>A summary of the rule groups you are subscribed to.</p>")
type subscribedRuleGroupSummary = {
  @ocaml.doc("<p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>")
  @as("MetricName")
  metricName: metricName,
  @ocaml.doc(
    "<p>A friendly name or description of the <code>RuleGroup</code>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>"
  )
  @as("Name")
  name: resourceName,
  @ocaml.doc("<p>A unique identifier for a <code>RuleGroup</code>.</p>") @as("RuleGroupId")
  ruleGroupId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>The <code>Id</code> and <code>Name</code> of a <code>SqlInjectionMatchSet</code>.</p>")
type sqlInjectionMatchSetSummary = {
  @ocaml.doc(
    "<p>The name of the <code>SqlInjectionMatchSet</code>, if any, specified by <code>Id</code>.</p>"
  )
  @as("Name")
  name: resourceName,
  @ocaml.doc("<p>A unique identifier for a <code>SqlInjectionMatchSet</code>. You use <code>SqlInjectionMatchSetId</code> to get information about a 
			<code>SqlInjectionMatchSet</code> (see <a>GetSqlInjectionMatchSet</a>), update a <code>SqlInjectionMatchSet</code> 
			(see <a>UpdateSqlInjectionMatchSet</a>), insert a <code>SqlInjectionMatchSet</code> into a <code>Rule</code> or 
			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SqlInjectionMatchSet</code> from AWS WAF 
			(see <a>DeleteSqlInjectionMatchSet</a>).</p>
		       <p>
            <code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>")
  @as("SqlInjectionMatchSetId")
  sqlInjectionMatchSetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>The <code>Id</code> and <code>Name</code> of a <code>SizeConstraintSet</code>.</p>")
type sizeConstraintSetSummary = {
  @ocaml.doc("<p>The name of the <code>SizeConstraintSet</code>, if any.</p>") @as("Name")
  name: resourceName,
  @ocaml.doc("<p>A unique identifier for a <code>SizeConstraintSet</code>. You use <code>SizeConstraintSetId</code> to get information about a 
			<code>SizeConstraintSet</code> (see <a>GetSizeConstraintSet</a>), update a <code>SizeConstraintSet</code> 
			(see <a>UpdateSizeConstraintSet</a>), insert a <code>SizeConstraintSet</code> into a <code>Rule</code> or 
			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SizeConstraintSet</code> from AWS WAF 
			(see <a>DeleteSizeConstraintSet</a>).</p>
		       <p>
            <code>SizeConstraintSetId</code> is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>")
  @as("SizeConstraintSetId")
  sizeConstraintSetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Contains the identifier and the friendly name or description of the <code>Rule</code>.</p>")
type ruleSummary = {
  @ocaml.doc(
    "<p>A friendly name or description of the <a>Rule</a>. You can't change the name of a <code>Rule</code> after you create it.</p>"
  )
  @as("Name")
  name: resourceName,
  @ocaml.doc("<p>A unique identifier for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>), 
			update a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete 
			one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p>
		       <p>
            <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>")
  @as("RuleId")
  ruleId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>Contains the identifier and the friendly name or description of the <code>RuleGroup</code>.</p>")
type ruleGroupSummary = {
  @ocaml.doc(
    "<p>A friendly name or description of the <a>RuleGroup</a>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>"
  )
  @as("Name")
  name: resourceName,
  @ocaml.doc("<p>A unique identifier for a <code>RuleGroup</code>. You use <code>RuleGroupId</code> to get more information about a <code>RuleGroup</code> (see <a>GetRuleGroup</a>), 
         update a <code>RuleGroup</code> (see <a>UpdateRuleGroup</a>), insert a <code>RuleGroup</code> into a <code>WebACL</code> or delete 
         one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RuleGroup</code> from AWS WAF (see <a>DeleteRuleGroup</a>).</p>
         <p>
            <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>")
  @as("RuleGroupId")
  ruleGroupId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>A collection of predefined rules that you can add to a web ACL.</p>
	        <p>Rule groups are subject to the following limits:</p>
	        <ul>
            <li>
               <p>Three rule groups per account. You can request an increase to this limit by contacting customer support.</p>
            </li>
            <li>
               <p>One rule group per web ACL.</p>
            </li>
            <li>
               <p>Ten rules per rule group.</p>
            </li>
         </ul>")
type ruleGroup = {
  @ocaml.doc("<p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>")
  @as("MetricName")
  metricName: option<metricName>,
  @ocaml.doc(
    "<p>The friendly name or description for the <code>RuleGroup</code>. You can't change the name of a <code>RuleGroup</code> after you create it.</p>"
  )
  @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>A unique identifier for a <code>RuleGroup</code>. You use <code>RuleGroupId</code> to get more information about a <code>RuleGroup</code> (see <a>GetRuleGroup</a>), 
         update a <code>RuleGroup</code> (see <a>UpdateRuleGroup</a>), insert a <code>RuleGroup</code> into a <code>WebACL</code> or delete a 
         one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RuleGroup</code> from AWS WAF (see <a>DeleteRuleGroup</a>).</p>
         <p>
            <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by <a>ListRuleGroups</a>.</p>")
  @as("RuleGroupId")
  ruleGroupId: resourceId,
}
type resourceArns = array<resourceArn>
type regexPatternStrings = array<regexPatternString>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>In an <a>UpdateRegexPatternSet</a> request, <code>RegexPatternSetUpdate</code> specifies whether to insert or delete a 
         <code>RegexPatternString</code> and includes the settings for the <code>RegexPatternString</code>.</p>")
type regexPatternSetUpdate = {
  @ocaml.doc(
    "<p>Specifies the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>.</p>"
  )
  @as("RegexPatternString")
  regexPatternString: regexPatternString,
  @ocaml.doc("<p>Specifies whether to insert or delete a <code>RegexPatternString</code>.</p>")
  @as("Action")
  action: changeAction,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>Returned by <a>ListRegexPatternSets</a>. Each <code>RegexPatternSetSummary</code> object includes the <code>Name</code> and 
         <code>RegexPatternSetId</code> for one <a>RegexPatternSet</a>.</p>")
type regexPatternSetSummary = {
  @ocaml.doc(
    "<p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a <code>RegexPatternSet</code>.</p>"
  )
  @as("Name")
  name: resourceName,
  @ocaml.doc("<p>The <code>RegexPatternSetId</code> for a <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a <code>RegexPatternSet</code>,
         update a <code>RegexPatternSet</code>, remove a <code>RegexPatternSet</code> from a <code>RegexMatchSet</code>, and delete a <code>RegexPatternSet</code> from AWS WAF.</p>
         <p>
            <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>")
  @as("RegexPatternSetId")
  regexPatternSetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>Returned by <a>ListRegexMatchSets</a>. Each <code>RegexMatchSetSummary</code> object includes the <code>Name</code> and 
			<code>RegexMatchSetId</code> for one <a>RegexMatchSet</a>.</p>")
type regexMatchSetSummary = {
  @ocaml.doc(
    "<p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a <code>RegexMatchSet</code>.</p>"
  )
  @as("Name")
  name: resourceName,
  @ocaml.doc("<p>The <code>RegexMatchSetId</code> for a <code>RegexMatchSet</code>. You use <code>RegexMatchSetId</code> to get information about a <code>RegexMatchSet</code>,
			update a <code>RegexMatchSet</code>, remove a <code>RegexMatchSet</code> from a <code>Rule</code>, and delete a <code>RegexMatchSet</code> from AWS WAF.</p>
		       <p>
            <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>")
  @as("RegexMatchSetId")
  regexMatchSetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
	        <p>Specifies the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>,  <a>GeoMatchSet</a>, and <a>SizeConstraintSet</a> objects 
			that you want to add to a <code>Rule</code> and, for each object, indicates whether you want to negate the settings, for example, requests that do 
			NOT originate from the IP address 192.0.2.44. </p>")
type predicate = {
  @ocaml.doc("<p>A unique identifier for a predicate in a <code>Rule</code>, such as <code>ByteMatchSetId</code> or <code>IPSetId</code>. 
			The ID is returned by the corresponding <code>Create</code> or <code>List</code> command.</p>")
  @as("DataId")
  dataId: resourceId,
  @ocaml.doc(
    "<p>The type of predicate in a <code>Rule</code>, such as <code>ByteMatch</code> or <code>IPSet</code>.</p>"
  )
  @as("Type")
  type_: predicateType,
  @ocaml.doc("<p>Set <code>Negated</code> to <code>False</code> if you want AWS WAF to allow, block, or count requests based on the settings in the 
		       specified <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>,  <a>GeoMatchSet</a>,  or <a>SizeConstraintSet</a>.
			For example, if an <code>IPSet</code> includes the IP address <code>192.0.2.44</code>, AWS WAF will allow or block requests based on that IP address.</p> 
		       <p>Set <code>Negated</code> to <code>True</code> if you want AWS WAF to allow or block a request based on the negation 
		       of the settings in the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>,  <a>GeoMatchSet</a>, or <a>SizeConstraintSet</a>.
			For example, if an <code>IPSet</code> includes the IP address <code>192.0.2.44</code>, AWS WAF will allow, block, or count requests based on 
			all IP addresses <i>except</i> 
            <code>192.0.2.44</code>.</p>")
  @as("Negated")
  negated: negated,
}
type managedKeys = array<managedKey>
type logDestinationConfigs = array<resourceArn>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Contains the identifier and the name of the <code>IPSet</code>.</p>")
type ipsetSummary = {
  @ocaml.doc(
    "<p>A friendly name or description of the <a>IPSet</a>. You can't change the name of an <code>IPSet</code> after you create it.</p>"
  )
  @as("Name")
  name: resourceName,
  @ocaml.doc("<p>The <code>IPSetId</code> for an <a>IPSet</a>. You can use <code>IPSetId</code> in a <a>GetIPSet</a> request to get detailed 
			information about an <a>IPSet</a>.</p>")
  @as("IPSetId")
  ipsetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Specifies the IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR format) that web requests originate from.</p>")
type ipsetDescriptor = {
  @ocaml.doc("<p>Specify an IPv4 address by using CIDR notation. For example:</p>
		       <ul>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
            </li>
            <li>
               <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify 
				<code>192.0.2.0/24</code>.</p>
            </li>
         </ul>
		    
	        <p>For more information about CIDR notation, see the Wikipedia entry 
	      <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless Inter-Domain Routing</a>.</p>
	        <p>Specify an IPv6 address by using CIDR notation. For example:</p>
	        <ul>
            <li>
	              <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
	           </li>
            <li>
	              <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
	           </li>
         </ul>")
  @as("Value")
  value: ipsetDescriptorValue,
  @ocaml.doc("<p>Specify <code>IPV4</code> or <code>IPV6</code>.</p>") @as("Type")
  type_: ipsetDescriptorType,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPHeader</code> complex type that 
			appears as <code>Headers</code> in the response syntax. <code>HTTPHeader</code> contains the names and values of 
			all of the headers that appear in one of the web requests that were returned by <code>GetSampledRequests</code>. </p>")
type httpheader = {
  @ocaml.doc("<p>The value of one of the headers in the sampled web request.</p>") @as("Value")
  value: option<headerValue>,
  @ocaml.doc("<p>The name of one of the headers in the sampled web request.</p>") @as("Name")
  name: option<headerName>,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>Contains the identifier and the name of the <code>GeoMatchSet</code>.</p>")
type geoMatchSetSummary = {
  @ocaml.doc(
    "<p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change the name of an <code>GeoMatchSet</code> after you create it.</p>"
  )
  @as("Name")
  name: resourceName,
  @ocaml.doc(
    "<p>The <code>GeoMatchSetId</code> for an <a>GeoMatchSet</a>. You can use <code>GeoMatchSetId</code> in a <a>GetGeoMatchSet</a> request to get detailed	information about an <a>GeoMatchSet</a>.</p>"
  )
  @as("GeoMatchSetId")
  geoMatchSetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>The country from which web requests originate that you want AWS WAF to search for.</p>")
type geoMatchConstraint = {
  @ocaml.doc("<p>The country that you want AWS WAF to search for.</p>") @as("Value")
  value: geoMatchConstraintValue,
  @ocaml.doc(
    "<p>The type of geographical area you want AWS WAF to search for. Currently <code>Country</code> is the only valid value.</p>"
  )
  @as("Type")
  type_: geoMatchConstraintType,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Specifies where in a web request to look for <code>TargetString</code>.</p>")
type fieldToMatch = {
  @ocaml.doc("<p>When the value of <code>Type</code> is <code>HEADER</code>, enter the name of the header that you want AWS WAF to search, 
			for example, <code>User-Agent</code> or <code>Referer</code>. The name of the header is not case sensitive.</p>
	        <p>When the value of <code>Type</code> is <code>SINGLE_QUERY_ARG</code>, enter the name of the parameter that you want AWS WAF to search, 
	        for example, <code>UserName</code> or <code>SalesRegion</code>. The parameter name is not case sensitive.</p>
	        <p>If the value of <code>Type</code> is any other value, omit <code>Data</code>.</p>")
  @as("Data")
  data: option<matchFieldData>,
  @ocaml.doc("<p>The part of the web request that you want AWS WAF to search for a specified string. Parts of a request that you can search include the following:</p>
		       <ul>
            <li>
               <p>
                  <code>HEADER</code>: A specified request header, for example, the value of the <code>User-Agent</code> or <code>Referer</code> header. 
				If you choose <code>HEADER</code> for the type, specify the name of the header in <code>Data</code>.</p>
            </li>
            <li>
               <p>
                  <code>METHOD</code>: The HTTP method, which indicated the type of operation that the request is asking the origin to perform. 
				Amazon CloudFront supports the following methods: <code>DELETE</code>, <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PATCH</code>, 
				<code>POST</code>, and <code>PUT</code>.</p>
            </li>
            <li>
               <p>
                  <code>QUERY_STRING</code>: A query string, which is the part of a URL that appears after a <code>?</code> character, if any.</p>
            </li>
            <li>
               <p>
                  <code>URI</code>: The part of a web request that identifies a resource, for example, <code>/images/daily-ad.jpg</code>.</p>
            </li>
            <li>
               <p>
                  <code>BODY</code>: The part of a request that contains any additional data that you want to send to your web server 
				as the HTTP request body, such as data from a form. The request body immediately follows the request headers. 
				Note that only the first <code>8192</code> bytes of the request body are forwarded to AWS WAF for inspection. 
				To allow or block requests based on the length of the body, you can create a size constraint set. 
				For more information, see <a>CreateSizeConstraintSet</a>. </p>
            </li>
            <li>
		             <p>
		                <code>SINGLE_QUERY_ARG</code>: The parameter in the query string that you will inspect, such as <i>UserName</i> or <i>SalesRegion</i>. The maximum length for <code>SINGLE_QUERY_ARG</code> is 30 characters.</p>
		          </li>
            <li>
		             <p>
		                <code>ALL_QUERY_ARGS</code>: Similar to <code>SINGLE_QUERY_ARG</code>, but rather than inspecting a single parameter, AWS WAF will inspect all parameters within the query for the value or regex pattern that you specify in 
		             <code>TargetString</code>.</p>
		          </li>
         </ul>")
  @as("Type")
  type_: matchFieldType,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>The rule to exclude from a rule group. This is applicable only when the
            <code>ActivatedRule</code> refers to a <code>RuleGroup</code>. The rule must belong to
         the <code>RuleGroup</code> that is specified by the <code>ActivatedRule</code>. </p>")
type excludedRule = {
  @ocaml.doc("<p>The unique identifier for the rule to exclude from the rule group.</p>")
  @as("RuleId")
  ruleId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Returned by <a>ListByteMatchSets</a>. Each <code>ByteMatchSetSummary</code> object includes the <code>Name</code> and 
			<code>ByteMatchSetId</code> for one <a>ByteMatchSet</a>.</p>")
type byteMatchSetSummary = {
  @ocaml.doc(
    "<p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a <code>ByteMatchSet</code>.</p>"
  )
  @as("Name")
  name: resourceName,
  @ocaml.doc("<p>The <code>ByteMatchSetId</code> for a <code>ByteMatchSet</code>. You use <code>ByteMatchSetId</code> to get information about a <code>ByteMatchSet</code>,
			update a <code>ByteMatchSet</code>, remove a <code>ByteMatchSet</code> from a <code>Rule</code>, and delete a <code>ByteMatchSet</code> from AWS WAF.</p>
		       <p>
            <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>")
  @as("ByteMatchSetId")
  byteMatchSetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>")
type xssMatchTuple = {
  @ocaml.doc("<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. 
			If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>	
         <p>You can only specify a single type of TextTransformation.</p>			
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
               <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding 
				characters</p>
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
		       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>")
  @as("TextTransformation")
  textTransformation: textTransformation,
  @ocaml.doc("<p>Specifies where in a web request to look for cross-site scripting attacks.</p>")
  @as("FieldToMatch")
  fieldToMatch: fieldToMatch,
}
type xssMatchSetSummaries = array<xssMatchSetSummary>
type webACLSummaries = array<webACLSummary>
type tagList_ = array<tag>
type subscribedRuleGroupSummaries = array<subscribedRuleGroupSummary>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.</p>")
type sqlInjectionMatchTuple = {
  @ocaml.doc("<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. 
			If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>
         <p>You can only specify a single type of TextTransformation.</p>			
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
               <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding 
				characters</p>
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
		       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>")
  @as("TextTransformation")
  textTransformation: textTransformation,
  @ocaml.doc("<p>Specifies where in a web request to look for snippets of malicious SQL code.</p>")
  @as("FieldToMatch")
  fieldToMatch: fieldToMatch,
}
type sqlInjectionMatchSetSummaries = array<sqlInjectionMatchSetSummary>
type sizeConstraintSetSummaries = array<sizeConstraintSetSummary>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Specifies a constraint on the size of a part of the web request. AWS WAF uses the <code>Size</code>, <code>ComparisonOperator</code>, and <code>FieldToMatch</code> to build
			an expression in the form of \"<code>Size</code> 
            <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>\". If that expression is true, the 
			<code>SizeConstraint</code> is considered to match.</p>")
type sizeConstraint = {
  @ocaml.doc("<p>The size in bytes that you want AWS WAF to compare against the size of the specified <code>FieldToMatch</code>. AWS WAF uses this in combination 
			with <code>ComparisonOperator</code> and <code>FieldToMatch</code> to build an expression in the form of \"<code>Size</code> 
            <code>ComparisonOperator</code> size 
			in bytes of <code>FieldToMatch</code>\". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p>
		       <p>Valid values for size are 0 - 21474836480 bytes (0 - 20 GB).</p>
		       <p>If you specify <code>URI</code> for the value of <code>Type</code>, the / in the URI counts as one character. 
			For example, the URI <code>/logo.jpg</code> is nine characters long.</p>")
  @as("Size")
  size: size,
  @ocaml.doc("<p>The type of comparison you want AWS WAF to perform. AWS WAF uses this in combination with the provided <code>Size</code> and <code>FieldToMatch</code>
			to build an expression in the form of \"<code>Size</code> 
            <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>\". If that expression
			is true, the <code>SizeConstraint</code> is considered to match.</p>
		       <p>
            <b>EQ</b>: Used to test if the <code>Size</code> is equal to the size of the <code>FieldToMatch</code>
         </p>
		       <p>
            <b>NE</b>: Used to test if the <code>Size</code> is not equal to the size of the <code>FieldToMatch</code>
         </p>
		       <p>
            <b>LE</b>: Used to test if the <code>Size</code> is less than or equal to the size of the <code>FieldToMatch</code>
         </p>
		       <p>
            <b>LT</b>: Used to test if the <code>Size</code> is strictly less than the size of the <code>FieldToMatch</code>
         </p>
		       <p>
            <b>GE</b>: Used to test if the <code>Size</code> is greater than or equal to the size of the <code>FieldToMatch</code>
         </p>
		       <p>
            <b>GT</b>: Used to test if the <code>Size</code> is strictly greater than the size of the <code>FieldToMatch</code>
         </p>")
  @as("ComparisonOperator")
  comparisonOperator: comparisonOperator,
  @ocaml.doc("<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. 
			If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>
         <p>You can only specify a single type of TextTransformation.</p>			
		       <p>Note that if you choose <code>BODY</code> for the value of <code>Type</code>, you must choose <code>NONE</code> for <code>TextTransformation</code> 
			because CloudFront forwards only the first 8192 bytes for inspection. </p>		
		       <p>
            <b>NONE</b>
         </p>
		       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>		
		       <p>
            <b>CMD_LINE</b>
         </p>
		       <p>When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p>
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
               <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding 
				characters</p>
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
		       <p>Use this option to decode a URL-encoded value.</p>")
  @as("TextTransformation")
  textTransformation: textTransformation,
  @ocaml.doc("<p>Specifies where in a web request to look for the size constraint.</p>")
  @as("FieldToMatch")
  fieldToMatch: fieldToMatch,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Specifies a <code>Predicate</code> (such as an <code>IPSet</code>) and indicates whether you want to add it to a 
			<code>Rule</code> or delete it from a <code>Rule</code>.</p>")
type ruleUpdate = {
  @ocaml.doc(
    "<p>The ID of the <code>Predicate</code> (such as an <code>IPSet</code>) that you want to add to a <code>Rule</code>.</p>"
  )
  @as("Predicate")
  predicate: predicate,
  @ocaml.doc("<p>Specify <code>INSERT</code> to add a <code>Predicate</code> to a <code>Rule</code>. Use <code>DELETE</code> to remove a 
			<code>Predicate</code> from a <code>Rule</code>.</p>")
  @as("Action")
  action: changeAction,
}
type ruleSummaries = array<ruleSummary>
type ruleGroupSummaries = array<ruleGroupSummary>
type regexPatternSetUpdates = array<regexPatternSetUpdate>
type regexPatternSetSummaries = array<regexPatternSetSummary>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>The <code>RegexPatternSet</code> specifies the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>")
type regexPatternSet = {
  @ocaml.doc(
    "<p>Specifies the regular expression (regex) patterns that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>.</p>"
  )
  @as("RegexPatternStrings")
  regexPatternStrings: regexPatternStrings,
  @ocaml.doc(
    "<p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a <code>RegexPatternSet</code>.</p>"
  )
  @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>The identifier for the <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a <code>RegexPatternSet</code>,
         update a <code>RegexPatternSet</code>, remove a <code>RegexPatternSet</code> from a <code>RegexMatchSet</code>, and delete a <code>RegexPatternSet</code> from AWS WAF.</p>
         <p>
            <code>RegexMatchSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>")
  @as("RegexPatternSetId")
  regexPatternSetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. Each <code>RegexMatchTuple</code> object contains: </p>
		       <ul>
            <li>
               <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p>
            </li>
            <li>
               <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>. </p>
            </li>
            <li>
               <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p>
			         </li>
         </ul>")
type regexMatchTuple = {
  @ocaml.doc("<p>The <code>RegexPatternSetId</code> for a <code>RegexPatternSet</code>. You use <code>RegexPatternSetId</code> to get information about a 
			<code>RegexPatternSet</code> (see <a>GetRegexPatternSet</a>), update a <code>RegexPatternSet</code> (see <a>UpdateRegexPatternSet</a>), 
			insert a <code>RegexPatternSet</code> into a <code>RegexMatchSet</code> or delete one from a <code>RegexMatchSet</code> (see <a>UpdateRegexMatchSet</a>), and 
			delete an <code>RegexPatternSet</code> from AWS WAF (see <a>DeleteRegexPatternSet</a>).</p>
		       <p>
		          <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>")
  @as("RegexPatternSetId")
  regexPatternSetId: resourceId,
  @ocaml.doc("<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. 
			If you specify a transformation, AWS WAF performs the transformation on <code>RegexPatternSet</code> before inspecting a request for a match.</p>	
         <p>You can only specify a single type of TextTransformation.</p>			
		       <p>
            <b>CMD_LINE</b>
         </p>
		       <p>When you're concerned that attackers are injecting an operating system commandline command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p>
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
               <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding 
				characters</p>
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
		       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>")
  @as("TextTransformation")
  textTransformation: textTransformation,
  @ocaml.doc(
    "<p>Specifies where in a web request to look for the <code>RegexPatternSet</code>.</p>"
  )
  @as("FieldToMatch")
  fieldToMatch: fieldToMatch,
}
type regexMatchSetSummaries = array<regexMatchSetSummary>
type redactedFields = array<fieldToMatch>
type predicates = array<predicate>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Specifies the type of update to perform to an <a>IPSet</a> with <a>UpdateIPSet</a>.</p>")
type ipsetUpdate = {
  @ocaml.doc(
    "<p>The IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR notation) that web requests originate from.</p>"
  )
  @as("IPSetDescriptor")
  ipsetDescriptor: ipsetDescriptor,
  @ocaml.doc("<p>Specifies whether to insert or delete an IP address with <a>UpdateIPSet</a>.</p>")
  @as("Action")
  action: changeAction,
}
type ipsetSummaries = array<ipsetSummary>
type ipsetDescriptors = array<ipsetDescriptor>
type httpheaders = array<httpheader>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>Specifies the type of update to perform to an <a>GeoMatchSet</a> with <a>UpdateGeoMatchSet</a>.</p>")
type geoMatchSetUpdate = {
  @ocaml.doc(
    "<p>The country from which web requests originate that you want AWS WAF to search for.</p>"
  )
  @as("GeoMatchConstraint")
  geoMatchConstraint: geoMatchConstraint,
  @ocaml.doc(
    "<p>Specifies whether to insert or delete a country with <a>UpdateGeoMatchSet</a>.</p>"
  )
  @as("Action")
  action: changeAction,
}
type geoMatchSetSummaries = array<geoMatchSetSummary>
type geoMatchConstraints = array<geoMatchConstraint>
type excludedRules = array<excludedRule>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.</p>")
type byteMatchTuple = {
  @ocaml.doc("<p>Within the portion of a web request that you want to search (for example, in the query string, if any), specify where you want AWS WAF to search. Valid values include the following:</p>
		       <p>
            <b>CONTAINS</b>
         </p>
		       <p>The specified part of the web request must include the value of <code>TargetString</code>, but the location doesn't matter.</p>		
		       <p>
            <b>CONTAINS_WORD</b>
         </p>
		       <p>The specified part of the web request must include the value of <code>TargetString</code>, and 
			<code>TargetString</code> must contain only alphanumeric characters or underscore (A-Z, a-z, 0-9, or _). In addition, 
			<code>TargetString</code> must be a word, which means one of the following:</p>
			      <ul>
            <li>
               <p>
                  <code>TargetString</code> exactly matches the value of the specified part of the web request, such as the value of a 
					header.</p>
            </li>
            <li>
               <p>
                  <code>TargetString</code> is at the beginning of the specified part of the web request and is followed by a character 
					other than an alphanumeric character or underscore (_), for example, <code>BadBot;</code>.</p>
            </li>
            <li>
               <p>
                  <code>TargetString</code> is at the end of the specified part of the web request and is preceded by a character 
					other than an alphanumeric character or underscore (_), for example, <code>;BadBot</code>.</p>
            </li>
            <li>
               <p>
                  <code>TargetString</code> is in the middle of the specified part of the web request and is preceded and followed 
					by characters other than alphanumeric characters or underscore (_), for example, <code>-BadBot;</code>.</p>
            </li>
         </ul>
		       <p>
            <b>EXACTLY</b>
         </p>
		       <p>The value of the specified part of the web request must exactly match the value of <code>TargetString</code>.</p>
		       <p>
            <b>STARTS_WITH</b>
         </p>
		       <p>The value of <code>TargetString</code> must appear at the beginning of the specified part of the web request.</p>		
		       <p>
            <b>ENDS_WITH</b>
         </p>
		       <p>The value of <code>TargetString</code> must appear at the end of the specified part of the web request.</p>")
  @as("PositionalConstraint")
  positionalConstraint: positionalConstraint,
  @ocaml.doc("<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF. 
			If you specify a transformation, AWS WAF performs the transformation on <code>FieldToMatch</code> before inspecting it for a match.</p>
         <p>You can only specify a single type of TextTransformation.</p>			
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
               <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding 
				characters</p>
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
		       <p>Specify <code>NONE</code> if you don't want to perform any text transformations.</p>")
  @as("TextTransformation")
  textTransformation: textTransformation,
  @ocaml.doc("<p>The value that you want AWS WAF to search for. AWS WAF searches for the specified string in the part of web requests that you 
			specified in <code>FieldToMatch</code>. The maximum length of the value is 50 bytes.</p>
		       <p>Valid values depend on the values that you specified for <code>FieldToMatch</code>:</p>		
		       <ul>
            <li>
               <p>
                  <code>HEADER</code>: The value that you want AWS WAF to search for in the request header that you specified in 
				<a>FieldToMatch</a>, for example, the value of the <code>User-Agent</code> or <code>Referer</code> header.</p>
            </li>
            <li>
               <p>
                  <code>METHOD</code>: The HTTP method, which indicates the type of operation specified in the request. 
				CloudFront supports the following methods: <code>DELETE</code>, <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, 
				<code>PATCH</code>, <code>POST</code>, and <code>PUT</code>.</p>
            </li>
            <li>
               <p>
                  <code>QUERY_STRING</code>: The value that you want AWS WAF to search for in the query string, which is the part 
				of a URL that appears after a <code>?</code> character.</p>
            </li>
            <li>
               <p>
                  <code>URI</code>: The value that you want AWS WAF to search for in the part of a URL that identifies a resource, 
				for example, <code>/images/daily-ad.jpg</code>.</p>
            </li>
            <li>
               <p>
                  <code>BODY</code>: The part of a request that contains any additional data that you want to send to your web server 
				as the HTTP request body, such as data from a form. The request body immediately follows the request headers. 
				Note that only the first <code>8192</code> bytes of the request body are forwarded to AWS WAF for inspection. 
				To allow or block requests based on the length of the body, you can create a size constraint set. 
				For more information, see <a>CreateSizeConstraintSet</a>. </p>
            </li>
            <li>
		             <p>
		                <code>SINGLE_QUERY_ARG</code>: The parameter in the query string that you will inspect, such as <i>UserName</i> or <i>SalesRegion</i>. The maximum length for <code>SINGLE_QUERY_ARG</code> is 30 characters.</p>
		          </li>
            <li>
		             <p>
                  <code>ALL_QUERY_ARGS</code>: Similar to <code>SINGLE_QUERY_ARG</code>, but instead of
               inspecting a single parameter, AWS WAF inspects all parameters within the query
               string for the value or regex pattern that you specify in
               <code>TargetString</code>.</p>
		          </li>
         </ul>
		
		       <p>If <code>TargetString</code> includes alphabetic characters A-Z and a-z, note that the value is case sensitive.</p>
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
            <code>TargetString</code>.</p>
		       <p>
            <b>If you're using the AWS CLI or one of the AWS SDKs</b>
         </p>
		       <p>The value that you want AWS WAF to search for. The SDK automatically base64 encodes the value.</p>")
  @as("TargetString")
  targetString: byteMatchTargetString,
  @ocaml.doc("<p>The part of a web request that you want AWS WAF to search, such as a specified header or a query string. For more information, see 
			<a>FieldToMatch</a>.</p>")
  @as("FieldToMatch")
  fieldToMatch: fieldToMatch,
}
type byteMatchSetSummaries = array<byteMatchSetSummary>
type xssMatchTuples = array<xssMatchTuple>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Specifies the part of a web request that you want to inspect for cross-site scripting attacks and indicates whether you want to 
			add the specification to an <a>XssMatchSet</a> or delete it from an <code>XssMatchSet</code>.</p>")
type xssMatchSetUpdate = {
  @ocaml.doc(
    "<p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>"
  )
  @as("XssMatchTuple")
  xssMatchTuple: xssMatchTuple,
  @ocaml.doc("<p>Specify <code>INSERT</code> to add an
         <a>XssMatchSetUpdate</a> to an <a>XssMatchSet</a>. Use
            <code>DELETE</code> to remove an
         <code>XssMatchSetUpdate</code> from an <code>XssMatchSet</code>.</p>")
  @as("Action")
  action: changeAction,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
        <p>Information for a tag associated with an AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to \"customer\" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p>
        <p>Tagging is only available through the API, SDKs, and CLI. You can't manage or view tags through the AWS WAF Classic console. You can tag the AWS resources that you manage through AWS WAF Classic: web ACLs, rule groups, and rules.  </p>")
type tagInfoForResource = {
  @ocaml.doc("<p></p>") @as("TagList") tagList_: option<tagList_>,
  @ocaml.doc("<p></p>") @as("ResourceARN") resourceARN: option<resourceArn>,
}
type sqlInjectionMatchTuples = array<sqlInjectionMatchTuple>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Specifies the part of a web request that you want to inspect for snippets of malicious SQL code and indicates whether you want to 
			add the specification to a <a>SqlInjectionMatchSet</a> or delete it from a <code>SqlInjectionMatchSet</code>.</p>")
type sqlInjectionMatchSetUpdate = {
  @ocaml.doc(
    "<p>Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.</p>"
  )
  @as("SqlInjectionMatchTuple")
  sqlInjectionMatchTuple: sqlInjectionMatchTuple,
  @ocaml.doc("<p>Specify <code>INSERT</code> to add a <a>SqlInjectionMatchSetUpdate</a> to a <a>SqlInjectionMatchSet</a>. 
			Use <code>DELETE</code> to remove a <code>SqlInjectionMatchSetUpdate</code> from a <code>SqlInjectionMatchSet</code>.</p>")
  @as("Action")
  action: changeAction,
}
type sizeConstraints = array<sizeConstraint>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Specifies the part of a web request that you want to inspect the size of and indicates whether you want to 
			add the specification to a <a>SizeConstraintSet</a> or delete it from a <code>SizeConstraintSet</code>.</p>")
type sizeConstraintSetUpdate = {
  @ocaml.doc("<p>Specifies a constraint on the size of a part of the web request. AWS WAF uses the <code>Size</code>, <code>ComparisonOperator</code>, and <code>FieldToMatch</code> to build
			an expression in the form of \"<code>Size</code> 
            <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>\". If that expression is true, the
			<code>SizeConstraint</code> is considered to match.</p>")
  @as("SizeConstraint")
  sizeConstraint: sizeConstraint,
  @ocaml.doc("<p>Specify <code>INSERT</code> to add a <a>SizeConstraintSetUpdate</a> to a <a>SizeConstraintSet</a>. 
			Use <code>DELETE</code> to remove a <code>SizeConstraintSetUpdate</code> from a <code>SizeConstraintSet</code>.</p>")
  @as("Action")
  action: changeAction,
}
type ruleUpdates = array<ruleUpdate>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>A combination of <a>ByteMatchSet</a>, <a>IPSet</a>, and/or <a>SqlInjectionMatchSet</a> objects that identify the web requests that you 
			want to allow, block, or count. For example, you might create a <code>Rule</code> that includes the following predicates:</p>
		       <ul>
            <li>
               <p>An <code>IPSet</code> that causes AWS WAF to search for web requests that originate from the IP address <code>192.0.2.44</code>
               </p>
            </li>
            <li>
               <p>A <code>ByteMatchSet</code> that causes AWS WAF to search for web requests for which the value of the <code>User-Agent</code>
				header is <code>BadBot</code>.</p>
            </li>
         </ul>
		       <p>To match the settings in this <code>Rule</code>, a request must originate from <code>192.0.2.44</code> AND include a <code>User-Agent</code>
			header for which the value is <code>BadBot</code>.</p>")
type rule = {
  @ocaml.doc("<p>The <code>Predicates</code> object contains one <code>Predicate</code> element for each <a>ByteMatchSet</a>, <a>IPSet</a>, or 
			<a>SqlInjectionMatchSet</a> object that you want to include in a <code>Rule</code>.</p>")
  @as("Predicates")
  predicates: predicates,
  @ocaml.doc("<p>A friendly name or description for the metrics for this <code>Rule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change <code>MetricName</code> after you create the <code>Rule</code>.</p>")
  @as("MetricName")
  metricName: option<metricName>,
  @ocaml.doc(
    "<p>The friendly name or description for the <code>Rule</code>. You can't change the name of a <code>Rule</code> after you create it.</p>"
  )
  @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>A unique identifier for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>), 
			update a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete a 
			one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p>
		       <p>
            <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>")
  @as("RuleId")
  ruleId: resourceId,
}
type regexMatchTuples = array<regexMatchTuple>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>In an <a>UpdateRegexMatchSet</a> request, <code>RegexMatchSetUpdate</code> specifies whether to insert or delete a 
         <a>RegexMatchTuple</a> and includes the settings for the <code>RegexMatchTuple</code>.</p>")
type regexMatchSetUpdate = {
  @ocaml.doc("<p>Information about the part of a web request that you want AWS WAF to inspect and the identifier of the regular expression (regex) pattern that you want AWS WAF to search for.
         If you specify <code>DELETE</code> for the value of <code>Action</code>, the <code>RegexMatchTuple</code> values must 
         exactly match the values in the <code>RegexMatchTuple</code> that you want to delete from the <code>RegexMatchSet</code>.</p>")
  @as("RegexMatchTuple")
  regexMatchTuple: regexMatchTuple,
  @ocaml.doc("<p>Specifies whether to insert or delete a <a>RegexMatchTuple</a>.</p>") @as("Action")
  action: changeAction,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>A <code>RateBasedRule</code> is identical to a regular <a>Rule</a>, with
         one addition: a <code>RateBasedRule</code> counts the number of requests that arrive from a
         specified IP address every five minutes. For example, based on recent requests that you've
         seen from an attacker, you might create a <code>RateBasedRule</code> that includes the
         following conditions: </p>
         <ul>
            <li>
               <p>The requests come from 192.0.2.44.</p>
            </li>
            <li>
               <p>They contain the value <code>BadBot</code> in the <code>User-Agent</code>
               header.</p>
            </li>
         </ul>
         <p>In the rule, you also define the rate limit as 1,000.</p>
         <p>Requests that meet both of these conditions and exceed 1,000 requests every five
         minutes trigger the rule's action (block or count), which is defined in the web
         ACL.</p>")
type rateBasedRule = {
  @ocaml.doc("<p>The maximum number of requests, which have an identical value in the field specified
         by the <code>RateKey</code>, allowed in a five-minute period. If the number of requests
         exceeds the <code>RateLimit</code> and the other predicates specified in the rule are also
         met, AWS WAF triggers the action that is specified for this rule.</p>")
  @as("RateLimit")
  rateLimit: rateLimit,
  @ocaml.doc("<p>The field that AWS WAF uses to determine if requests are likely arriving from single
         source and thus subject to rate monitoring. The only valid value for <code>RateKey</code>
         is <code>IP</code>. <code>IP</code> indicates that requests arriving from the same IP
         address are subject to the <code>RateLimit</code> that is specified in the
            <code>RateBasedRule</code>.</p>")
  @as("RateKey")
  rateKey: rateKey,
  @ocaml.doc("<p>The <code>Predicates</code> object contains one <code>Predicate</code> element for
         each <a>ByteMatchSet</a>, <a>IPSet</a>, or <a>SqlInjectionMatchSet</a> object that you want to include in a
            <code>RateBasedRule</code>.</p>")
  @as("MatchPredicates")
  matchPredicates: predicates,
  @ocaml.doc("<p>A friendly name or description for the metrics for a <code>RateBasedRule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the
            <code>RateBasedRule</code>.</p>")
  @as("MetricName")
  metricName: option<metricName>,
  @ocaml.doc("<p>A friendly name or description for a <code>RateBasedRule</code>. You can't change the
         name of a <code>RateBasedRule</code> after you create it.</p>")
  @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>A unique identifier for a <code>RateBasedRule</code>. You use <code>RuleId</code> to
         get more information about a <code>RateBasedRule</code> (see <a>GetRateBasedRule</a>), update a <code>RateBasedRule</code> (see <a>UpdateRateBasedRule</a>), insert a <code>RateBasedRule</code> into a
            <code>WebACL</code> or delete one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>RateBasedRule</code> from AWS WAF (see <a>DeleteRateBasedRule</a>).</p>")
  @as("RuleId")
  ruleId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>The Amazon Kinesis Data Firehose, <code>RedactedFields</code>
         information, and the web ACL Amazon Resource Name (ARN).</p>")
type loggingConfiguration = {
  @ocaml.doc("<p>The parts of the request that you want redacted from the logs. For
         example,
         if you redact the cookie field, the cookie field in the firehose will be
            <code>xxx</code>. </p>")
  @as("RedactedFields")
  redactedFields: option<redactedFields>,
  @ocaml.doc("<p>An array of Amazon Kinesis Data Firehose ARNs.</p>") @as("LogDestinationConfigs")
  logDestinationConfigs: logDestinationConfigs,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with
            <code>LogDestinationConfigs</code>.</p>")
  @as("ResourceArn")
  resourceArn: resourceArn,
}
type ipsetUpdates = array<ipsetUpdate>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
	        <p>Contains one or more IP addresses or blocks of IP addresses specified in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports IPv4 address ranges: /8 and any range between /16 through /32.  AWS WAF supports IPv6 address ranges: /24, /32, /48, /56, /64, and /128.</p>
	        <p>To specify an individual IP address, you specify the four-part IP address followed by a
            <code>/32</code>, for example, 192.0.2.0/32. To block a range of IP addresses, you can
         specify /8 or any range between /16 through /32 (for IPv4) or /24, /32, /48, /56, /64, or
         /128 (for IPv6). For more information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless
            Inter-Domain Routing</a>. </p>")
type ipset = {
  @ocaml.doc("<p>The IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR notation) that web requests originate from. 
			If the <code>WebACL</code> is associated with a CloudFront distribution and the viewer did not use an HTTP proxy or a load balancer to send the request, this is the value of the c-ip field in the CloudFront access logs.</p>")
  @as("IPSetDescriptors")
  ipsetDescriptors: ipsetDescriptors,
  @ocaml.doc(
    "<p>A friendly name or description of the <a>IPSet</a>. You can't change the name of an <code>IPSet</code> after you create it.</p>"
  )
  @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>The <code>IPSetId</code> for an <code>IPSet</code>. You use <code>IPSetId</code> to get information about an 
			<code>IPSet</code> (see <a>GetIPSet</a>), update an <code>IPSet</code> (see <a>UpdateIPSet</a>), 
			insert an <code>IPSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and 
			delete an <code>IPSet</code> from AWS WAF (see <a>DeleteIPSet</a>).</p>
		       <p>
            <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by <a>ListIPSets</a>.</p>")
  @as("IPSetId")
  ipsetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPRequest</code> complex type that 
			appears as <code>Request</code> in the response syntax. <code>HTTPRequest</code> contains information about 
			one of the web requests that were returned by <code>GetSampledRequests</code>. </p>")
type httprequest = {
  @ocaml.doc(
    "<p>A complex type that contains two values for each header in the sampled web request: the name of the header and the value of the header.</p>"
  )
  @as("Headers")
  headers: option<httpheaders>,
  @ocaml.doc(
    "<p>The HTTP version specified in the sampled web request, for example, <code>HTTP/1.1</code>.</p>"
  )
  @as("HTTPVersion")
  httpversion: option<httpversion>,
  @ocaml.doc("<p>The HTTP method specified in the sampled web request. CloudFront supports the following methods: <code>DELETE</code>, 
			<code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PATCH</code>, <code>POST</code>, and <code>PUT</code>. </p>")
  @as("Method")
  method: option<httpmethod>,
  @ocaml.doc(
    "<p>The part of a web request that identifies the resource, for example, <code>/images/daily-ad.jpg</code>.</p>"
  )
  @as("URI")
  uri: option<uristring>,
  @ocaml.doc("<p>The two-letter country code for the country that the request originated from. For a current list of country codes, 
			see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2\">ISO 3166-1 alpha-2</a>.</p>")
  @as("Country")
  country: option<country>,
  @ocaml.doc("<p>The IP address that the request originated from. If the <code>WebACL</code> is associated with a CloudFront distribution, 
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
type geoMatchSetUpdates = array<geoMatchSetUpdate>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>Contains one or more countries that AWS WAF will search for.</p>")
type geoMatchSet = {
  @ocaml.doc(
    "<p>An array of <a>GeoMatchConstraint</a> objects, which contain the country that you want AWS WAF to search for.</p>"
  )
  @as("GeoMatchConstraints")
  geoMatchConstraints: geoMatchConstraints,
  @ocaml.doc(
    "<p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change the name of an <code>GeoMatchSet</code> after you create it.</p>"
  )
  @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>The <code>GeoMatchSetId</code> for an <code>GeoMatchSet</code>. You use <code>GeoMatchSetId</code> to get information about a 
			<code>GeoMatchSet</code> (see <a>GeoMatchSet</a>), update a <code>GeoMatchSet</code> (see <a>UpdateGeoMatchSet</a>), insert a <code>GeoMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>GeoMatchSet</code> from AWS WAF (see <a>DeleteGeoMatchSet</a>).</p>
		       <p>
            <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by <a>ListGeoMatchSets</a>.</p>")
  @as("GeoMatchSetId")
  geoMatchSetId: resourceId,
}
type byteMatchTuples = array<byteMatchTuple>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>In an <a>UpdateByteMatchSet</a> request, <code>ByteMatchSetUpdate</code> specifies whether to insert or delete a 
			<a>ByteMatchTuple</a> and includes the settings for the <code>ByteMatchTuple</code>.</p>")
type byteMatchSetUpdate = {
  @ocaml.doc("<p>Information about the part of a web request that you want AWS WAF to inspect and the value that you want AWS WAF to search for.
			If you specify <code>DELETE</code> for the value of <code>Action</code>, the <code>ByteMatchTuple</code> values must 
			exactly match the values in the <code>ByteMatchTuple</code> that you want to delete from the <code>ByteMatchSet</code>.</p>")
  @as("ByteMatchTuple")
  byteMatchTuple: byteMatchTuple,
  @ocaml.doc("<p>Specifies whether to insert or delete a <a>ByteMatchTuple</a>.</p>") @as("Action")
  action: changeAction,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>The <code>ActivatedRule</code> object in an <a>UpdateWebACL</a> request specifies a <code>Rule</code> that you want to insert or delete, 
			the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> 
			(<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p>
		       <p>To specify whether to insert or delete a <code>Rule</code>, use the <code>Action</code> parameter in the <a>WebACLUpdate</a> data type.</p>")
type activatedRule = {
  @ocaml.doc("<p>An array of rules to exclude from a rule group. This is applicable only when the <code>ActivatedRule</code> refers to a <code>RuleGroup</code>.</p>
         <p>Sometimes it is necessary to troubleshoot rule groups that are blocking traffic
         unexpectedly (false positives). One troubleshooting technique is to identify the specific
         rule within the rule group that is blocking the legitimate traffic and then disable
         (exclude) that particular rule. You can exclude rules from both your own rule groups and
         AWS Marketplace rule groups that have been associated with a web ACL.</p>
         <p>Specifying <code>ExcludedRules</code> does not remove those rules from the rule group.
         Rather, it changes the action for the rules to <code>COUNT</code>. Therefore, requests that
         match an <code>ExcludedRule</code> are counted but not blocked. The <code>RuleGroup</code>
         owner will receive COUNT metrics for each <code>ExcludedRule</code>.</p>
         <p>If you want to exclude rules from a rule group that is already associated with a web ACL, perform the following steps:</p>
         <ol>
            <li>
               <p>Use the AWS WAF logs to identify the IDs of the rules that you want to exclude.
               For more information about the logs, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/logging.html\">Logging Web ACL Traffic
                  Information</a>.</p>
            </li>
            <li>
               <p>Submit an <a>UpdateWebACL</a> request that has two actions:</p>
               <ul>
                  <li>
                     <p>The first action
                     deletes
                     the existing rule group from the web ACL. That is, in the <a>UpdateWebACL</a> request, the first <code>Updates:Action</code>
                     should be <code>DELETE</code> and <code>Updates:ActivatedRule:RuleId</code>
                     should be the rule group that contains the rules that you want to
                     exclude.</p>
                  </li>
                  <li>
                     <p>The second action
                     inserts
                     the same rule group back in, but specifying the rules to exclude. That is, the
                     second <code>Updates:Action</code> should be <code>INSERT</code>,
                        <code>Updates:ActivatedRule:RuleId</code> should be the rule group that you
                     just removed, and <code>ExcludedRules</code> should contain the rules that you
                     want to exclude.</p>
                  </li>
               </ul>
          
            </li>
         </ol>")
  @as("ExcludedRules")
  excludedRules: option<excludedRules>,
  @ocaml.doc("<p>The rule type, either <code>REGULAR</code>, as defined by <a>Rule</a>, <code>RATE_BASED</code>, as defined by <a>RateBasedRule</a>, or <code>GROUP</code>, as defined by <a>RuleGroup</a>. The default is REGULAR. Although this field is optional, be aware that if you try to add a RATE_BASED rule to a web ACL without setting the type, the  <a>UpdateWebACL</a> request will fail because the request tries to add a REGULAR rule with the specified ID, which does not exist. 		
			</p>")
  @as("Type")
  type_: option<wafRuleType>,
  @ocaml.doc("<p>Use the <code>OverrideAction</code> to test your <code>RuleGroup</code>.</p>
         <p>Any rule in a <code>RuleGroup</code> can potentially block a request. If you set the <code>OverrideAction</code> to <code>None</code>, the <code>RuleGroup</code> will block a request if any individual rule in the <code>RuleGroup</code> matches the request and is configured to block that request. However if you first want to test the <code>RuleGroup</code>, set the  <code>OverrideAction</code> to <code>Count</code>. The <code>RuleGroup</code> will then override any block action specified by individual rules contained within the group. Instead of blocking matching requests, those requests will be counted. You can view a record of counted requests using  <a>GetSampledRequests</a>. </p>
	        <p>
            <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>.  For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>.</p>")
  @as("OverrideAction")
  overrideAction: option<wafOverrideAction>,
  @ocaml.doc("<p>Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the <code>Rule</code>.   
			Valid values for <code>Action</code> include the following:</p>
			      <ul>
            <li>
               <p>
                  <code>ALLOW</code>: CloudFront responds with the requested object.</p>
            </li>
            <li>
               <p>
                  <code>BLOCK</code>: CloudFront responds with an HTTP 403 (Forbidden) status code.</p>
            </li>
            <li>
               <p>
                  <code>COUNT</code>: AWS WAF increments a counter of requests that match the conditions in the rule and then continues to 
					inspect the web request based on the remaining rules in the web ACL. </p>
            </li>
         </ul>
	        <p>
            <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a
            <code>RuleGroup</code> to a <code>WebACL</code>. In this
         case,
         you do not use <code>ActivatedRule|Action</code>. For all other update requests,
            <code>ActivatedRule|Action</code> is used instead of
            <code>ActivatedRule|OverrideAction</code>.</p>")
  @as("Action")
  action: option<wafAction>,
  @ocaml.doc("<p>The <code>RuleId</code> for a <code>Rule</code>. You use <code>RuleId</code> to get more information about a <code>Rule</code> (see <a>GetRule</a>), 
			update a <code>Rule</code> (see <a>UpdateRule</a>), insert a <code>Rule</code> into a <code>WebACL</code> or delete a 
			one from a <code>WebACL</code> (see <a>UpdateWebACL</a>), or delete a <code>Rule</code> from AWS WAF (see <a>DeleteRule</a>).</p>
		       <p>
            <code>RuleId</code> is returned by <a>CreateRule</a> and by <a>ListRules</a>.</p>")
  @as("RuleId")
  ruleId: resourceId,
  @ocaml.doc("<p>Specifies the order in which the <code>Rules</code> in a <code>WebACL</code> are evaluated. Rules with a lower value for 
			<code>Priority</code> are evaluated before <code>Rules</code> with a higher value. The value must be a unique integer. If you add multiple 
			<code>Rules</code> to a <code>WebACL</code>, the values don't need to be consecutive.</p>")
  @as("Priority")
  priority: rulePriority,
}
type xssMatchSetUpdates = array<xssMatchSetUpdate>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>A complex type that contains <code>XssMatchTuple</code> objects, which specify the parts of web requests that you 
			want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header. If a 
			<code>XssMatchSet</code> contains more than one <code>XssMatchTuple</code> object, a request needs to 
			include cross-site scripting attacks in only one of the specified parts of the request to be considered a match.</p>")
type xssMatchSet = {
  @ocaml.doc(
    "<p>Specifies the parts of web requests that you want to inspect for cross-site scripting attacks.</p>"
  )
  @as("XssMatchTuples")
  xssMatchTuples: xssMatchTuples,
  @ocaml.doc("<p>The name, if any, of the <code>XssMatchSet</code>.</p>") @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>A unique identifier for an <code>XssMatchSet</code>. You use <code>XssMatchSetId</code> to get information about an 
			<code>XssMatchSet</code> (see <a>GetXssMatchSet</a>), update an <code>XssMatchSet</code> 
			(see <a>UpdateXssMatchSet</a>), insert an <code>XssMatchSet</code> into a <code>Rule</code> or 
			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete an <code>XssMatchSet</code> from AWS WAF 
			(see <a>DeleteXssMatchSet</a>).</p>
		       <p>
            <code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>")
  @as("XssMatchSetId")
  xssMatchSetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Specifies whether to insert a <code>Rule</code> into or delete a <code>Rule</code> from a <code>WebACL</code>.</p>")
type webACLUpdate = {
  @ocaml.doc("<p>The <code>ActivatedRule</code> object in an <a>UpdateWebACL</a> request specifies a <code>Rule</code> that you want to insert or delete, 
         the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> 
         (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p>")
  @as("ActivatedRule")
  activatedRule: activatedRule,
  @ocaml.doc(
    "<p>Specifies whether to insert a <code>Rule</code> into or delete a <code>Rule</code> from a <code>WebACL</code>.</p>"
  )
  @as("Action")
  action: changeAction,
}
type sqlInjectionMatchSetUpdates = array<sqlInjectionMatchSetUpdate>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>A complex type that contains <code>SqlInjectionMatchTuple</code> objects, which specify the parts of web requests that you 
			want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header. If a 
			<code>SqlInjectionMatchSet</code> contains more than one <code>SqlInjectionMatchTuple</code> object, a request needs to 
			include snippets of SQL code in only one of the specified parts of the request to be considered a match.</p>")
type sqlInjectionMatchSet = {
  @ocaml.doc(
    "<p>Specifies the parts of web requests that you want to inspect for snippets of malicious SQL code.</p>"
  )
  @as("SqlInjectionMatchTuples")
  sqlInjectionMatchTuples: sqlInjectionMatchTuples,
  @ocaml.doc("<p>The name, if any, of the <code>SqlInjectionMatchSet</code>.</p>") @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>A unique identifier for a <code>SqlInjectionMatchSet</code>. You use <code>SqlInjectionMatchSetId</code> to get information about a 
			<code>SqlInjectionMatchSet</code> (see <a>GetSqlInjectionMatchSet</a>), update a <code>SqlInjectionMatchSet</code> 
			(see <a>UpdateSqlInjectionMatchSet</a>), insert a <code>SqlInjectionMatchSet</code> into a <code>Rule</code> or 
			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SqlInjectionMatchSet</code> from AWS WAF 
			(see <a>DeleteSqlInjectionMatchSet</a>).</p>
		       <p>
            <code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>")
  @as("SqlInjectionMatchSetId")
  sqlInjectionMatchSetId: resourceId,
}
type sizeConstraintSetUpdates = array<sizeConstraintSetUpdate>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>A complex type that contains <code>SizeConstraint</code> objects, which specify the parts of web requests that you 
			want AWS WAF to inspect the size of. If a <code>SizeConstraintSet</code> contains more than one <code>SizeConstraint</code>
			object, a request only needs to match one constraint to be considered a match.</p>")
type sizeConstraintSet = {
  @ocaml.doc("<p>Specifies the parts of web requests that you want to inspect the size of.</p>")
  @as("SizeConstraints")
  sizeConstraints: sizeConstraints,
  @ocaml.doc("<p>The name, if any, of the <code>SizeConstraintSet</code>.</p>") @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>A unique identifier for a <code>SizeConstraintSet</code>. You use <code>SizeConstraintSetId</code> to get information about a 
			<code>SizeConstraintSet</code> (see <a>GetSizeConstraintSet</a>), update a <code>SizeConstraintSet</code> 
			(see <a>UpdateSizeConstraintSet</a>), insert a <code>SizeConstraintSet</code> into a <code>Rule</code> or 
			delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and delete a <code>SizeConstraintSet</code> from AWS WAF 
			(see <a>DeleteSizeConstraintSet</a>).</p>
		       <p>
            <code>SizeConstraintSetId</code> is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>")
  @as("SizeConstraintSetId")
  sizeConstraintSetId: resourceId,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>The response from a <a>GetSampledRequests</a> request includes a <code>SampledHTTPRequests</code> complex type that 
			appears as <code>SampledRequests</code> in the response syntax. <code>SampledHTTPRequests</code> contains one 
			<code>SampledHTTPRequest</code> object for each web request that is returned by <code>GetSampledRequests</code>.</p>")
type sampledHTTPRequest = {
  @ocaml.doc(
    "<p>This value is returned if the <code>GetSampledRequests</code>  request specifies the ID of a <code>RuleGroup</code> rather than the ID of an individual rule. <code>RuleWithinRuleGroup</code> is the rule within the specified <code>RuleGroup</code> that matched the request listed in the response.</p>"
  )
  @as("RuleWithinRuleGroup")
  ruleWithinRuleGroup: option<resourceId>,
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
  @ocaml.doc("<p>A value that indicates how one result in the response relates proportionally to other results in the response. 
			A result that has a weight of <code>2</code> represents roughly twice as many CloudFront web requests as a result 
			that has a weight of <code>1</code>.</p>")
  @as("Weight")
  weight: sampleWeight,
  @ocaml.doc("<p>A complex type that contains detailed information about the request.</p>")
  @as("Request")
  request: httprequest,
}
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>Specifies an <code>ActivatedRule</code> and indicates whether you want to add it to a 
         <code>RuleGroup</code> or delete it from a <code>RuleGroup</code>.</p>")
type ruleGroupUpdate = {
  @ocaml.doc("<p>The <code>ActivatedRule</code> object specifies a <code>Rule</code> that you want to insert or delete, 
         the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> 
         (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p>")
  @as("ActivatedRule")
  activatedRule: activatedRule,
  @ocaml.doc("<p>Specify <code>INSERT</code> to add an <code>ActivatedRule</code> to a <code>RuleGroup</code>. Use <code>DELETE</code> to remove an 
         <code>ActivatedRule</code> from a <code>RuleGroup</code>.</p>")
  @as("Action")
  action: changeAction,
}
type regexMatchSetUpdates = array<regexMatchSetUpdate>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>In a <a>GetRegexMatchSet</a> request, <code>RegexMatchSet</code> is a complex type that contains the <code>RegexMatchSetId</code> and 
			<code>Name</code> of a <code>RegexMatchSet</code>, and the values that you specified when you updated the <code>RegexMatchSet</code>.</p>
         <p> The values are contained in a <code>RegexMatchTuple</code> object, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>RegexMatchSet</code> contains more than one 
			<code>RegexMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code> 
			to be considered a match.</p>")
type regexMatchSet = {
  @ocaml.doc("<p>Contains an array of <a>RegexMatchTuple</a> objects. Each <code>RegexMatchTuple</code> 
				object contains: </p>
		       <ul>
            <li>
               <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p>
            </li>
            <li>
               <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>.</p>
            </li>
            <li>
               <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p>
			         </li>
         </ul>")
  @as("RegexMatchTuples")
  regexMatchTuples: option<regexMatchTuples>,
  @ocaml.doc("<p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a 
			<code>RegexMatchSet</code>.</p>")
  @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>The <code>RegexMatchSetId</code> for a <code>RegexMatchSet</code>. You use <code>RegexMatchSetId</code> to get information about a 
			<code>RegexMatchSet</code> (see <a>GetRegexMatchSet</a>), update a <code>RegexMatchSet</code> (see <a>UpdateRegexMatchSet</a>), 
			insert a <code>RegexMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and  
			delete a <code>RegexMatchSet</code> from AWS WAF (see <a>DeleteRegexMatchSet</a>).</p>
		       <p>
            <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>")
  @as("RegexMatchSetId")
  regexMatchSetId: option<resourceId>,
}
type loggingConfigurations = array<loggingConfiguration>
type byteMatchSetUpdates = array<byteMatchSetUpdate>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>In a <a>GetByteMatchSet</a> request, <code>ByteMatchSet</code> is a complex type that contains the <code>ByteMatchSetId</code> and 
			<code>Name</code> of a <code>ByteMatchSet</code>, and the values that you specified when you updated the <code>ByteMatchSet</code>. </p>
		       <p>A complex type that contains <code>ByteMatchTuple</code> objects, which specify the parts of web requests that you 
			want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>ByteMatchSet</code> contains more than one 
			<code>ByteMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code> 
			to be considered a match.</p>")
type byteMatchSet = {
  @ocaml.doc(
    "<p>Specifies the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.</p>"
  )
  @as("ByteMatchTuples")
  byteMatchTuples: byteMatchTuples,
  @ocaml.doc(
    "<p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a <code>ByteMatchSet</code>.</p>"
  )
  @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>The <code>ByteMatchSetId</code> for a <code>ByteMatchSet</code>. You use <code>ByteMatchSetId</code> to get information about a 
			<code>ByteMatchSet</code> (see <a>GetByteMatchSet</a>), update a <code>ByteMatchSet</code> (see <a>UpdateByteMatchSet</a>), 
			insert a <code>ByteMatchSet</code> into a <code>Rule</code> or delete one from a <code>Rule</code> (see <a>UpdateRule</a>), and  
			delete a <code>ByteMatchSet</code> from AWS WAF (see <a>DeleteByteMatchSet</a>).</p>
		       <p>
            <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>")
  @as("ByteMatchSetId")
  byteMatchSetId: resourceId,
}
type activatedRules = array<activatedRule>
type webACLUpdates = array<webACLUpdate>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
		       <p>Contains the <code>Rules</code> that identify the requests that you want to allow, block, or count. In a <code>WebACL</code>, you also specify a 
			default action (<code>ALLOW</code> or <code>BLOCK</code>), and the action for each <code>Rule</code> that you add to a 
			<code>WebACL</code>, for example, block requests from specified IP addresses or block requests from specified referrers. 
			You also associate the <code>WebACL</code> with a CloudFront distribution to identify the requests that you want AWS WAF to filter. 
			If you add more than one <code>Rule</code> to a <code>WebACL</code>, a request needs to match only one of the specifications 
			to be allowed, blocked, or counted. For more information, see <a>UpdateWebACL</a>.</p>")
type webACL = {
  @ocaml.doc("<p>Tha Amazon Resource Name (ARN) of the web ACL.</p>") @as("WebACLArn")
  webACLArn: option<resourceArn>,
  @ocaml.doc("<p>An array that contains the action for each <code>Rule</code> in a <code>WebACL</code>, the priority of the <code>Rule</code>, 
			and the ID of the <code>Rule</code>.</p>")
  @as("Rules")
  rules: activatedRules,
  @ocaml.doc("<p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. The action is specified by the 
			<a>WafAction</a> object.</p>")
  @as("DefaultAction")
  defaultAction: wafAction,
  @ocaml.doc("<p>A friendly name or description for the metrics for this <code>WebACL</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change <code>MetricName</code> after you create the <code>WebACL</code>.</p>")
  @as("MetricName")
  metricName: option<metricName>,
  @ocaml.doc(
    "<p>A friendly name or description of the <code>WebACL</code>. You can't change the name of a <code>WebACL</code> after you create it.</p>"
  )
  @as("Name")
  name: option<resourceName>,
  @ocaml.doc("<p>A unique identifier for a <code>WebACL</code>. You use <code>WebACLId</code> to get information about a <code>WebACL</code> 
			(see <a>GetWebACL</a>), update a <code>WebACL</code> (see <a>UpdateWebACL</a>), and delete a <code>WebACL</code> from AWS WAF 
			(see <a>DeleteWebACL</a>).</p>
		       <p>
            <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>")
  @as("WebACLId")
  webACLId: resourceId,
}
type sampledHTTPRequests = array<sampledHTTPRequest>
type ruleGroupUpdates = array<ruleGroupUpdate>
@ocaml.doc("<note>
            <p>This is <b>AWS WAF Classic Regional</b> documentation. For
      more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
      WAF Classic</a> in the developer guide.</p>
            <p>
               <b>For the latest version of AWS
      WAF</b>, use the AWS WAFV2 API and see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
         </note> 
         <p>This is the <i>AWS WAF Regional Classic API Reference</i> for using AWS WAF Classic with the AWS resources, Elastic Load Balancing (ELB) Application Load Balancers and API Gateway APIs. The AWS WAF Classic actions and data types listed in the reference are available for protecting Elastic Load Balancing (ELB) Application Load Balancers and API Gateway APIs. You can use these actions and data types by means of the endpoints listed in <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region\">AWS Regions and Endpoints</a>. This guide is for developers who need detailed information about the AWS WAF Classic API actions, data types, and errors. For detailed information about AWS WAF Classic features and an overview of how to use the AWS WAF Classic API, see the 
      <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html\">AWS
        WAF Classic</a> in the developer guide.</p>")
module PutPermissionPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The policy to attach to the specified RuleGroup.</p>") @as("Policy")
    policy: policyString,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the RuleGroup to which you want to attach the policy.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "PutPermissionPolicyCommand"
  let make = (~policy, ~resourceArn, ()) => new({policy: policy, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetPermissionPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the RuleGroup for which you want to get the policy.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The IAM policy attached to the specified RuleGroup.</p>") @as("Policy")
    policy: option<policyString>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "GetPermissionPolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetChangeTokenStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The change token for which you want to get the status. This change token was previously returned in the <code>GetChangeToken</code> response.</p>"
    )
    @as("ChangeToken")
    changeToken: changeToken,
  }
  type response = {
    @ocaml.doc("<p>The status of the change token.</p>") @as("ChangeTokenStatus")
    changeTokenStatus: option<changeTokenStatus>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "GetChangeTokenStatusCommand"
  let make = (~changeToken, ()) => new({changeToken: changeToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetChangeToken = {
  type t

  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used in the request. Use this value in a <code>GetChangeTokenStatus</code> request 
			to get the current status of the request. </p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: unit => t = "GetChangeTokenCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateWebACL = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN (Amazon Resource Name) of the resource from which the web ACL is being removed, either an application load balancer or Amazon API Gateway stage.</p>
         <p>The ARN should be in one of the following formats:</p>
         <ul>
            <li>
               <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For an Amazon API Gateway stage: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
                  </code>
               </p>
            </li>
         </ul>")
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "DisassociateWebACLCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteXssMatchSet = {
  type t
  @ocaml.doc("<p>A request to delete an <a>XssMatchSet</a> from AWS WAF.</p>")
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to delete. 
			<code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>")
    @as("XssMatchSetId")
    xssMatchSetId: resourceId,
  }
  @ocaml.doc("<p>The response to a request to delete an <a>XssMatchSet</a> from AWS WAF.</p>")
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteXssMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "DeleteXssMatchSetCommand"
  let make = (~changeToken, ~xssMatchSetId, ()) =>
    new({changeToken: changeToken, xssMatchSetId: xssMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWebACL = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to delete. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by 
			<a>ListWebACLs</a>.</p>")
    @as("WebACLId")
    webACLId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteWebACL</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "DeleteWebACLCommand"
  let make = (~changeToken, ~webACLId, ()) => new({changeToken: changeToken, webACLId: webACLId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSqlInjectionMatchSet = {
  type t
  @ocaml.doc("<p>A request to delete a <a>SqlInjectionMatchSet</a> from AWS WAF.</p>")
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to delete. 
			<code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>")
    @as("SqlInjectionMatchSetId")
    sqlInjectionMatchSetId: resourceId,
  }
  @ocaml.doc(
    "<p>The response to a request to delete a <a>SqlInjectionMatchSet</a> from AWS WAF.</p>"
  )
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteSqlInjectionMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "DeleteSqlInjectionMatchSetCommand"
  let make = (~changeToken, ~sqlInjectionMatchSetId, ()) =>
    new({changeToken: changeToken, sqlInjectionMatchSetId: sqlInjectionMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSizeConstraintSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to delete. <code>SizeConstraintSetId</code> 
			is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>")
    @as("SizeConstraintSetId")
    sizeConstraintSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteSizeConstraintSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "DeleteSizeConstraintSetCommand"
  let make = (~changeToken, ~sizeConstraintSetId, ()) =>
    new({changeToken: changeToken, sizeConstraintSetId: sizeConstraintSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to delete. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by 
         <a>ListRuleGroups</a>.</p>")
    @as("RuleGroupId")
    ruleGroupId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRuleGroup</code> request. You can also use this value 
         to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "DeleteRuleGroupCommand"
  let make = (~changeToken, ~ruleGroupId, ()) =>
    new({changeToken: changeToken, ruleGroupId: ruleGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRule = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>RuleId</code> of the <a>Rule</a> that you want to delete. <code>RuleId</code> is returned by <a>CreateRule</a> and by 
			<a>ListRules</a>.</p>")
    @as("RuleId")
    ruleId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRule</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "DeleteRuleCommand"
  let make = (~changeToken, ~ruleId, ()) => new({changeToken: changeToken, ruleId: ruleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRegexPatternSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to delete. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by 
			<a>ListRegexPatternSets</a>.</p>")
    @as("RegexPatternSetId")
    regexPatternSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRegexPatternSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "DeleteRegexPatternSetCommand"
  let make = (~changeToken, ~regexPatternSetId, ()) =>
    new({changeToken: changeToken, regexPatternSetId: regexPatternSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRegexMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to delete. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by 
			<a>ListRegexMatchSets</a>.</p>")
    @as("RegexMatchSetId")
    regexMatchSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteRegexMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "DeleteRegexMatchSetCommand"
  let make = (~changeToken, ~regexMatchSetId, ()) =>
    new({changeToken: changeToken, regexMatchSetId: regexMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRateBasedRule = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to
         delete. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by
            <a>ListRateBasedRules</a>.</p>")
    @as("RuleId")
    ruleId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the
            <code>DeleteRateBasedRule</code> request. You can also use this value to query the
         status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "DeleteRateBasedRuleCommand"
  let make = (~changeToken, ~ruleId, ()) => new({changeToken: changeToken, ruleId: ruleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePermissionPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the RuleGroup from which you want to delete the policy.</p>
         <p>The user making the request must be the owner of the RuleGroup.</p>")
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "DeletePermissionPolicyCommand"
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

  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "DeleteLoggingConfigurationCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIPSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to delete. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by 
			<a>ListIPSets</a>.</p>")
    @as("IPSetId")
    ipsetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteIPSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "DeleteIPSetCommand"
  let make = (~changeToken, ~ipsetId, ()) => new({changeToken: changeToken, ipsetId: ipsetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGeoMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>GeoMatchSetID</code> of the <a>GeoMatchSet</a> that you want to delete. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by 
			<a>ListGeoMatchSets</a>.</p>")
    @as("GeoMatchSetId")
    geoMatchSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteGeoMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "DeleteGeoMatchSetCommand"
  let make = (~changeToken, ~geoMatchSetId, ()) =>
    new({changeToken: changeToken, geoMatchSetId: geoMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteByteMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to delete. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by 
			<a>ListByteMatchSets</a>.</p>")
    @as("ByteMatchSetId")
    byteMatchSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>DeleteByteMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "DeleteByteMatchSetCommand"
  let make = (~changeToken, ~byteMatchSetId, ()) =>
    new({changeToken: changeToken, byteMatchSetId: byteMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWebACLMigrationStack = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to exclude entities that can't be migrated or to stop the migration.
           Set this to true to ignore unsupported entities in the web ACL during the migration. Otherwise, if AWS WAF encounters unsupported 
           entities, it stops the process and throws an exception. </p>")
    @as("IgnoreUnsupportedType")
    ignoreUnsupportedType: ignoreUnsupportedType,
    @ocaml.doc("<p>The name of the Amazon S3 bucket to store the CloudFormation template in. The S3 bucket must be 
           configured as follows for the migration:  </p>
         <ul>
            <li>
               <p>The bucket name must start with <code>aws-waf-migration-</code>. For example, <code>aws-waf-migration-my-web-acl</code>.</p>
            </li>
            <li>
               <p>The bucket must be in the Region where you are deploying the template. For example, for a web ACL in us-west-2, you must use an Amazon S3 bucket in us-west-2 and you must deploy the template stack to us-west-2. </p>
            </li>
            <li>
               <p>The bucket policies must permit the migration process to write data. For listings of the 
       bucket policies, see the Examples section. </p>
           </li>
         </ul>")
    @as("S3BucketName")
    s3BucketName: s3BucketName,
    @ocaml.doc("<p>The UUID of the WAF Classic web ACL that you want to migrate to WAF v2.</p>")
    @as("WebACLId")
    webACLId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The URL of the template created in Amazon S3. </p>") @as("S3ObjectUrl")
    s3ObjectUrl: s3ObjectUrl,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "CreateWebACLMigrationStackCommand"
  let make = (~ignoreUnsupportedType, ~s3BucketName, ~webACLId, ()) =>
    new({
      ignoreUnsupportedType: ignoreUnsupportedType,
      s3BucketName: s3BucketName,
      webACLId: webACLId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateWebACL = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN (Amazon Resource Name) of the resource to be protected, either an application load balancer or Amazon API Gateway stage.  </p>
         <p>The ARN should be in one of the following formats:</p>
         <ul>
            <li>
               <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For an Amazon API Gateway stage: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
                  </code>
               </p>
            </li>
         </ul>")
    @as("ResourceArn")
    resourceArn: resourceArn,
    @ocaml.doc("<p>A unique identifier (ID) for the web ACL. </p>") @as("WebACLId")
    webACLId: resourceId,
  }

  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "AssociateWebACLCommand"
  let make = (~resourceArn, ~webACLId, ()) => new({resourceArn: resourceArn, webACLId: webACLId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p></p>") @as("ResourceARN") resourceARN: resourceArn,
  }

  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListResourcesForWebACL = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The type of resource to list, either an application load balancer or Amazon API Gateway.</p>"
    )
    @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc(
      "<p>The unique identifier (ID) of the web ACL for which to list the associated resources.</p>"
    )
    @as("WebACLId")
    webACLId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of ARNs (Amazon Resource Names) of the resources associated with the specified web ACL. An array with zero elements is returned if there are no resources associated with the web ACL.</p>"
    )
    @as("ResourceArns")
    resourceArns: option<resourceArns>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListResourcesForWebACLCommand"
  let make = (~webACLId, ~resourceType=?, ()) =>
    new({resourceType: resourceType, webACLId: webACLId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWebACLForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN (Amazon Resource Name) of the resource for which to get the web ACL, either an application load balancer or Amazon API Gateway stage.</p>
         <p>The ARN should be in one of the following formats:</p>
         <ul>
            <li>
               <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For an Amazon API Gateway stage: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i>
                  </code>
               </p>
            </li>
         </ul>")
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the web ACL that you specified in the <code>GetWebACLForResource</code> request. If there is no associated resource, a null WebACLSummary is returned.</p>"
    )
    @as("WebACLSummary")
    webACLSummary: option<webACLSummary>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "GetWebACLForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to get. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by 
         <a>ListRuleGroups</a>.</p>")
    @as("RuleGroupId")
    ruleGroupId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the <a>RuleGroup</a> that you specified in the <code>GetRuleGroup</code> request. </p>"
    )
    @as("RuleGroup")
    ruleGroup: option<ruleGroup>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "GetRuleGroupCommand"
  let make = (~ruleGroupId, ()) => new({ruleGroupId: ruleGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRateBasedRuleManagedKeys = {
  type t
  type request = {
    @ocaml.doc("<p>A null value and not currently used. Do not include this in your request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc("<p>The <code>RuleId</code> of the <a>RateBasedRule</a> for which you want to
         get a list of <code>ManagedKeys</code>. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>")
    @as("RuleId")
    ruleId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>A null value and not currently used.</p>") @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc(
      "<p>An array of IP addresses that currently are blocked by the specified <a>RateBasedRule</a>. </p>"
    )
    @as("ManagedKeys")
    managedKeys: option<managedKeys>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "GetRateBasedRuleManagedKeysCommand"
  let make = (~ruleId, ~nextMarker=?, ()) => new({nextMarker: nextMarker, ruleId: ruleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRegexPatternSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc(
      "<p>An array of <code>RegexPatternSetUpdate</code> objects that you want to insert into or delete from a <a>RegexPatternSet</a>.</p>"
    )
    @as("Updates")
    updates: regexPatternSetUpdates,
    @ocaml.doc("<p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to update. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by 
			<a>ListRegexPatternSets</a>.</p>")
    @as("RegexPatternSetId")
    regexPatternSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRegexPatternSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "UpdateRegexPatternSetCommand"
  let make = (~changeToken, ~updates, ~regexPatternSetId, ()) =>
    new({changeToken: changeToken, updates: updates, regexPatternSetId: regexPatternSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p></p>") @as("ResourceARN") resourceARN: resourceArn,
  }

  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListXssMatchSets = {
  type t
  @ocaml.doc(
    "<p>A request to list the <a>XssMatchSet</a> objects created by the current AWS account.</p>"
  )
  type request = {
    @ocaml.doc("<p>Specifies the number of <a>XssMatchSet</a> objects that you want AWS WAF to return for this request. If you have more 
			<code>XssMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <a>XssMatchSet</a> objects than the value of 
			<code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of 
			<code>XssMatchSets</code>. For the second and subsequent <code>ListXssMatchSets</code> requests, specify the 
			value of <code>NextMarker</code> from the previous response to get information about another batch of <code>XssMatchSets</code>.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @ocaml.doc("<p>The response to a <a>ListXssMatchSets</a> request.</p>")
  type response = {
    @ocaml.doc("<p>An array of <a>XssMatchSetSummary</a> objects.</p>") @as("XssMatchSets")
    xssMatchSets: option<xssMatchSetSummaries>,
    @ocaml.doc("<p>If you have more <a>XssMatchSet</a> objects than the number that you specified for <code>Limit</code> in the request, 
			the response includes a <code>NextMarker</code> value. To list more <code>XssMatchSet</code> objects, submit another 
			<code>ListXssMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the 
			<code>NextMarker</code> value in the next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListXssMatchSetsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWebACLs = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>WebACL</code> objects that you want AWS WAF to return for this request. If you have more 
			<code>WebACL</code> objects than the number that you specify for <code>Limit</code>, the response includes a 
			<code>NextMarker</code> value that you can use to get another batch of <code>WebACL</code> objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>WebACL</code> objects than the number that you specify 
			for <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of 
			<code>WebACL</code> objects. For the second and subsequent <code>ListWebACLs</code> requests, specify the value of <code>NextMarker</code> 
			from the previous response to get information about another batch of <code>WebACL</code> objects.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>WebACLSummary</a> objects.</p>") @as("WebACLs")
    webACLs: option<webACLSummaries>,
    @ocaml.doc("<p>If you have more <code>WebACL</code> objects than the number that you specified for <code>Limit</code> in the request, 
			the response includes a <code>NextMarker</code> value. To list more <code>WebACL</code> objects, submit another 
			<code>ListWebACLs</code> request, and specify the <code>NextMarker</code> value from the response in the 
			<code>NextMarker</code> value in the next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "ListWebACLsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSubscribedRuleGroups = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of subscribed rule groups that you want AWS WAF to return for this request. If you have more 
			objects than the number you specify for <code>Limit</code>, the response includes a 
			<code>NextMarker</code> value that you can use to get another batch of objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code>subscribed rule groups than the value of <code>Limit</code>, 
			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of subscribed rule groups. 
			For the second and subsequent <code>ListSubscribedRuleGroupsRequest</code> requests, specify the value of <code>NextMarker</code> 
			from the previous response to get information about another batch of subscribed rule groups.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>RuleGroup</a> objects.</p>") @as("RuleGroups")
    ruleGroups: option<subscribedRuleGroupSummaries>,
    @ocaml.doc("<p>If you have more objects than the number that you specified for <code>Limit</code> in the request, 
			the response includes a <code>NextMarker</code> value. To list more objects, submit another 
			<code>ListSubscribedRuleGroups</code> request, and specify the <code>NextMarker</code> value from the response in the 
			<code>NextMarker</code> value in the next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListSubscribedRuleGroupsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSqlInjectionMatchSets = {
  type t
  @ocaml.doc(
    "<p>A request to list the <a>SqlInjectionMatchSet</a> objects created by the current AWS account.</p>"
  )
  type request = {
    @ocaml.doc("<p>Specifies the number of <a>SqlInjectionMatchSet</a> objects that you want AWS WAF to return for this request. If you have more 
			<code>SqlInjectionMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <a>SqlInjectionMatchSet</a> objects than the value of 
			<code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of 
			<code>SqlInjectionMatchSets</code>. For the second and subsequent <code>ListSqlInjectionMatchSets</code> requests, specify the 
			value of <code>NextMarker</code> from the previous response to get information about another batch of <code>SqlInjectionMatchSets</code>.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @ocaml.doc("<p>The response to a <a>ListSqlInjectionMatchSets</a> request.</p>")
  type response = {
    @ocaml.doc("<p>An array of <a>SqlInjectionMatchSetSummary</a> objects.</p>")
    @as("SqlInjectionMatchSets")
    sqlInjectionMatchSets: option<sqlInjectionMatchSetSummaries>,
    @ocaml.doc("<p>If you have more <a>SqlInjectionMatchSet</a> objects than the number that you specified for <code>Limit</code> in the request, 
			the response includes a <code>NextMarker</code> value. To list more <code>SqlInjectionMatchSet</code> objects, submit another 
			<code>ListSqlInjectionMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the 
			<code>NextMarker</code> value in the next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListSqlInjectionMatchSetsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSizeConstraintSets = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>SizeConstraintSet</code> objects that you want AWS WAF to return for this request. If you have more 
			<code>SizeConstraintSets</code> objects than the number you specify for <code>Limit</code>, the response includes a 
			<code>NextMarker</code> value that you can use to get another batch of <code>SizeConstraintSet</code> objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>SizeConstraintSets</code> than the value of <code>Limit</code>, 
			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>SizeConstraintSets</code>. 
			For the second and subsequent <code>ListSizeConstraintSets</code> requests, specify the value of <code>NextMarker</code> 			from the previous response to get information about another batch of <code>SizeConstraintSets</code>.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>SizeConstraintSetSummary</a> objects.</p>")
    @as("SizeConstraintSets")
    sizeConstraintSets: option<sizeConstraintSetSummaries>,
    @ocaml.doc("<p>If you have more <code>SizeConstraintSet</code> objects than the number that you specified for <code>Limit</code> in the request, 
			the response includes a <code>NextMarker</code> value. To list more <code>SizeConstraintSet</code> objects, submit another 
			<code>ListSizeConstraintSets</code> request, and specify the <code>NextMarker</code> value from the response in the 
			<code>NextMarker</code> value in the next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListSizeConstraintSetsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRules = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this request. If you have more 			<code>Rules</code> than the number that you specify for <code>Limit</code>, the response includes a 
			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code> than the value of <code>Limit</code>, 
			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>Rules</code>. 
			For the second and subsequent <code>ListRules</code> requests, specify the value of <code>NextMarker</code> 
			from the previous response to get information about another batch of <code>Rules</code>.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>RuleSummary</a> objects.</p>") @as("Rules")
    rules: option<ruleSummaries>,
    @ocaml.doc("<p>If you have more <code>Rules</code> than the number that you specified for <code>Limit</code> in the request, 			the response includes a <code>NextMarker</code> value. To list more <code>Rules</code>, submit another 
			<code>ListRules</code> request, and specify the <code>NextMarker</code> value from the response in the 
			<code>NextMarker</code> value in the next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "ListRulesCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRuleGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies the number of <code>RuleGroups</code> that you want AWS WAF to return for this request. If you have more <code>RuleGroups</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>RuleGroups</code>.</p>"
    )
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>RuleGroups</code> than the value of <code>Limit</code>, 
         AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RuleGroups</code>. 
         For the second and subsequent <code>ListRuleGroups</code> requests, specify the value of <code>NextMarker</code> 
         from the previous response to get information about another batch of <code>RuleGroups</code>.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>RuleGroup</a> objects.</p>") @as("RuleGroups")
    ruleGroups: option<ruleGroupSummaries>,
    @ocaml.doc(
      "<p>If you have more <code>RuleGroups</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>RuleGroups</code>, submit another <code>ListRuleGroups</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>"
    )
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "ListRuleGroupsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRegexPatternSets = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>RegexPatternSet</code> objects that you want AWS WAF to return for this request. If you have more 
			<code>RegexPatternSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
			<code>NextMarker</code> value that you can use to get another batch of <code>RegexPatternSet</code> objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>RegexPatternSet</code> objects than the value of <code>Limit</code>, 
			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RegexPatternSet</code> objects. 
			For the second and subsequent <code>ListRegexPatternSets</code> requests, specify the value of <code>NextMarker</code> 
			from the previous response to get information about another batch of <code>RegexPatternSet</code> objects.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>RegexPatternSetSummary</a> objects.</p>") @as("RegexPatternSets")
    regexPatternSets: option<regexPatternSetSummaries>,
    @ocaml.doc("<p>If you have more <code>RegexPatternSet</code> objects than the number that you specified for <code>Limit</code> in the request, 
			the response includes a <code>NextMarker</code> value. To list more <code>RegexPatternSet</code> objects, submit another 
			<code>ListRegexPatternSets</code> request, and specify the <code>NextMarker</code> value from the response in the 
			<code>NextMarker</code> value in the next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListRegexPatternSetsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRegexMatchSets = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>RegexMatchSet</code> objects that you want AWS WAF to return for this request. If you have more 
			<code>RegexMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
			<code>NextMarker</code> value that you can use to get another batch of <code>RegexMatchSet</code> objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>RegexMatchSet</code> objects than the value of <code>Limit</code>, 
			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>. 
			For the second and subsequent <code>ListRegexMatchSets</code> requests, specify the value of <code>NextMarker</code> 
			from the previous response to get information about another batch of <code>RegexMatchSet</code> objects.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>RegexMatchSetSummary</a> objects.</p>") @as("RegexMatchSets")
    regexMatchSets: option<regexMatchSetSummaries>,
    @ocaml.doc("<p>If you have more <code>RegexMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request, 
			the response includes a <code>NextMarker</code> value. To list more <code>RegexMatchSet</code> objects, submit another 
			<code>ListRegexMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the 
			<code>NextMarker</code> value in the next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListRegexMatchSetsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRateBasedRules = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this
         request. If you have more <code>Rules</code> than the number that you specify for
            <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can
         use to get another batch of <code>Rules</code>.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code>
         than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the
         response that allows you to list another group of <code>Rules</code>. For the second and
         subsequent <code>ListRateBasedRules</code> requests, specify the value of
            <code>NextMarker</code> from the previous response to get information about another
         batch of <code>Rules</code>.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>RuleSummary</a> objects.</p>") @as("Rules")
    rules: option<ruleSummaries>,
    @ocaml.doc("<p>If you have more <code>Rules</code> than the number that you specified for
            <code>Limit</code> in the request, the response includes a <code>NextMarker</code>
         value. To list more <code>Rules</code>, submit another <code>ListRateBasedRules</code>
         request, and specify the <code>NextMarker</code> value from the response in the
            <code>NextMarker</code> value in the next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListRateBasedRulesCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIPSets = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>IPSet</code> objects that you want AWS WAF to return for this request. If you have more 
			<code>IPSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
			<code>NextMarker</code> value that you can use to get another batch of <code>IPSet</code> objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>AWS WAF returns a <code>NextMarker</code> value in the response that allows you to
         list another group of <code>IPSets</code>. For the second and subsequent
            <code>ListIPSets</code> requests, specify the value of <code>NextMarker</code> from the
         previous response to get information about another batch of <code>IPSets</code>.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>IPSetSummary</a> objects.</p>") @as("IPSets")
    ipsets: option<ipsetSummaries>,
    @ocaml.doc("<p>To list more <code>IPSet</code> objects, submit another <code>ListIPSets</code>
         request, and in the next request use the <code>NextMarker</code> response value as the
            <code>NextMarker</code> value.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "ListIPSetsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGeoMatchSets = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>GeoMatchSet</code> objects that you want AWS WAF to return for this request. If you have more 
			<code>GeoMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
			<code>NextMarker</code> value that you can use to get another batch of <code>GeoMatchSet</code> objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>GeoMatchSet</code>s than the value of <code>Limit</code>, 
			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>GeoMatchSet</code> objects. 
			For the second and subsequent <code>ListGeoMatchSets</code> requests, specify the value of <code>NextMarker</code> 
			from the previous response to get information about another batch of <code>GeoMatchSet</code> objects.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>GeoMatchSetSummary</a> objects.</p>") @as("GeoMatchSets")
    geoMatchSets: option<geoMatchSetSummaries>,
    @ocaml.doc("<p>If you have more <code>GeoMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request, 
			the response includes a <code>NextMarker</code> value. To list more <code>GeoMatchSet</code> objects, submit another 
			<code>ListGeoMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the 
			<code>NextMarker</code> value in the next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListGeoMatchSetsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListByteMatchSets = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>ByteMatchSet</code> objects that you want AWS WAF to return for this request. If you have more 
			<code>ByteMatchSets</code> objects than the number you specify for <code>Limit</code>, the response includes a 
			<code>NextMarker</code> value that you can use to get another batch of <code>ByteMatchSet</code> objects.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code> than the value of <code>Limit</code>, 
			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>. 
			For the second and subsequent <code>ListByteMatchSets</code> requests, specify the value of <code>NextMarker</code> 
			from the previous response to get information about another batch of <code>ByteMatchSets</code>.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p>An array of <a>ByteMatchSetSummary</a> objects.</p>") @as("ByteMatchSets")
    byteMatchSets: option<byteMatchSetSummaries>,
    @ocaml.doc("<p>If you have more <code>ByteMatchSet</code> objects than the number that you specified for <code>Limit</code> in the request, 
			the response includes a <code>NextMarker</code> value. To list more <code>ByteMatchSet</code> objects, submit another 
			<code>ListByteMatchSets</code> request, and specify the <code>NextMarker</code> value from the response in the 
			<code>NextMarker</code> value in the next request.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListByteMatchSetsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRegexPatternSet = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to get. <code>RegexPatternSetId</code> is returned by 
			<a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>")
    @as("RegexPatternSetId")
    regexPatternSetId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the <a>RegexPatternSet</a> that you specified in the <code>GetRegexPatternSet</code> request, including the identifier of the pattern set and the regular expression patterns you want AWS WAF to search for. </p>"
    )
    @as("RegexPatternSet")
    regexPatternSet: option<regexPatternSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "GetRegexPatternSetCommand"
  let make = (~regexPatternSetId, ()) => new({regexPatternSetId: regexPatternSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
         whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>")
    @as("MetricName")
    metricName: metricName,
    @ocaml.doc("<p>A friendly name or description of the <a>RuleGroup</a>. You can't change <code>Name</code> after you create a 
         <code>RuleGroup</code>.</p>")
    @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>CreateRuleGroup</code> request. You can also use this value 
         to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc("<p>An empty  <a>RuleGroup</a>.</p>") @as("RuleGroup") ruleGroup: option<ruleGroup>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "CreateRuleGroupCommand"
  let make = (~changeToken, ~metricName, ~name, ~tags=?, ()) =>
    new({tags: tags, changeToken: changeToken, metricName: metricName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRegexPatternSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a 
			<code>RegexPatternSet</code>.</p>")
    @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>CreateRegexPatternSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc("<p>A <a>RegexPatternSet</a> that contains no objects.</p>") @as("RegexPatternSet")
    regexPatternSet: option<regexPatternSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "CreateRegexPatternSetCommand"
  let make = (~changeToken, ~name, ()) => new({changeToken: changeToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRule = {
  type t
  type request = {
    @ocaml.doc("<p>An array of <code>RuleUpdate</code> objects that you want to insert into or delete from a 
			<a>Rule</a>. For more information, see the applicable data types:</p>
		       <ul>
            <li>
               <p>
                  <a>RuleUpdate</a>: Contains <code>Action</code> and <code>Predicate</code>
               </p>
            </li>
            <li>
               <p>
                  <a>Predicate</a>: Contains <code>DataId</code>, <code>Negated</code>, and <code>Type</code>
               </p>
            </li>
            <li>
               <p>
                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
               </p>
            </li>
         </ul>")
    @as("Updates")
    updates: ruleUpdates,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>RuleId</code> of the <code>Rule</code> that you want to update. <code>RuleId</code> is returned by 
			<code>CreateRule</code> and by <a>ListRules</a>.</p>")
    @as("RuleId")
    ruleId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRule</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "UpdateRuleCommand"
  let make = (~updates, ~changeToken, ~ruleId, ()) =>
    new({updates: updates, changeToken: changeToken, ruleId: ruleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRateBasedRule = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of requests, which have an identical value in the field specified by the <code>RateKey</code>, allowed in a
         five-minute period. If the number of requests exceeds the <code>RateLimit</code> and the other
         predicates specified in the rule are also met,
         AWS WAF triggers the action that is specified for this rule.</p>")
    @as("RateLimit")
    rateLimit: rateLimit,
    @ocaml.doc("<p>An array of <code>RuleUpdate</code> objects that you want to insert into or delete
         from a <a>RateBasedRule</a>. </p>")
    @as("Updates")
    updates: ruleUpdates,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>RuleId</code> of the <code>RateBasedRule</code> that you want to update.
            <code>RuleId</code> is returned by <code>CreateRateBasedRule</code> and by <a>ListRateBasedRules</a>.</p>")
    @as("RuleId")
    ruleId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the
            <code>UpdateRateBasedRule</code> request. You can also use this value to query the
         status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "UpdateRateBasedRuleCommand"
  let make = (~rateLimit, ~updates, ~changeToken, ~ruleId, ()) =>
    new({rateLimit: rateLimit, updates: updates, changeToken: changeToken, ruleId: ruleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIPSet = {
  type t
  type request = {
    @ocaml.doc("<p>An array of <code>IPSetUpdate</code> objects that you want to insert into or delete from an <a>IPSet</a>. 
			For more information, see the applicable data types:</p>
		       <ul>
            <li>
               <p>
                  <a>IPSetUpdate</a>: Contains <code>Action</code> and <code>IPSetDescriptor</code>
               </p>
            </li>
            <li>
               <p>
                  <a>IPSetDescriptor</a>: Contains <code>Type</code> and <code>Value</code>
               </p>
            </li>
         </ul>
	        <p>You can insert a maximum of 1000 addresses in a single request.</p>")
    @as("Updates")
    updates: ipsetUpdates,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to update. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by 
			<a>ListIPSets</a>.</p>")
    @as("IPSetId")
    ipsetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateIPSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "UpdateIPSetCommand"
  let make = (~updates, ~changeToken, ~ipsetId, ()) =>
    new({updates: updates, changeToken: changeToken, ipsetId: ipsetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGeoMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>An array of <code>GeoMatchSetUpdate</code> objects that you want to insert into or delete from an <a>GeoMatchSet</a>.
			For more information, see the applicable data types:</p>
		       <ul>
            <li>
               <p>
                  <a>GeoMatchSetUpdate</a>: Contains <code>Action</code> and <code>GeoMatchConstraint</code>
               </p>
            </li>
            <li>
               <p>
                  <a>GeoMatchConstraint</a>: Contains <code>Type</code> and <code>Value</code>
               </p>
			            <p>You can have only one <code>Type</code> and <code>Value</code> per <code>GeoMatchConstraint</code>. To add multiple countries, include multiple <code>GeoMatchSetUpdate</code> objects in your request.</p>      
            </li>
         </ul>")
    @as("Updates")
    updates: geoMatchSetUpdates,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to update. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by 
			<a>ListGeoMatchSets</a>.</p>")
    @as("GeoMatchSetId")
    geoMatchSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateGeoMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "UpdateGeoMatchSetCommand"
  let make = (~updates, ~changeToken, ~geoMatchSetId, ()) =>
    new({updates: updates, changeToken: changeToken, geoMatchSetId: geoMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutLoggingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Kinesis Data Firehose that contains the inspected traffic
         information, the redacted fields details, and the Amazon Resource Name (ARN) of the web ACL
         to monitor.</p>
         <note>
            <p>When specifying <code>Type</code> in <code>RedactedFields</code>, you must use one of
            the following values: <code>URI</code>, <code>QUERY_STRING</code>, <code>HEADER</code>,
            or <code>METHOD</code>.</p>
         </note>")
    @as("LoggingConfiguration")
    loggingConfiguration: loggingConfiguration,
  }
  type response = {
    @ocaml.doc("<p>The <a>LoggingConfiguration</a> that you submitted in the request.</p>")
    @as("LoggingConfiguration")
    loggingConfiguration: option<loggingConfiguration>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "PutLoggingConfigurationCommand"
  let make = (~loggingConfiguration, ()) => new({loggingConfiguration: loggingConfiguration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("ResourceARN") resourceARN: resourceArn,
    @ocaml.doc("<p></p>") @as("Limit") limit: option<paginationLimit>,
    @ocaml.doc("<p></p>") @as("NextMarker") nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("TagInfoForResource") tagInfoForResource: option<tagInfoForResource>,
    @ocaml.doc("<p></p>") @as("NextMarker") nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ~limit=?, ~nextMarker=?, ()) =>
    new({resourceARN: resourceARN, limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRule = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>RuleId</code> of the <a>Rule</a> that you want to get. <code>RuleId</code> is returned by <a>CreateRule</a> and by 
			<a>ListRules</a>.</p>")
    @as("RuleId")
    ruleId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the <a>Rule</a> that you specified in the <code>GetRule</code> request. 
			For more information, see the following topics:</p>
		       <ul>
            <li>
               <p>
                  <a>Rule</a>: Contains <code>MetricName</code>, <code>Name</code>, an array of <code>Predicate</code> objects, 
				and <code>RuleId</code>
               </p>
            </li>
            <li>
               <p>
                  <a>Predicate</a>: Each <code>Predicate</code> object contains <code>DataId</code>, <code>Negated</code>, and 
				<code>Type</code>
               </p>
            </li>
         </ul>")
    @as("Rule")
    rule: option<rule>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "GetRuleCommand"
  let make = (~ruleId, ()) => new({ruleId: ruleId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRateBasedRule = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to get.
            <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>")
    @as("RuleId")
    ruleId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the <a>RateBasedRule</a> that you specified in the
            <code>GetRateBasedRule</code> request.</p>")
    @as("Rule")
    rule: option<rateBasedRule>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "GetRateBasedRuleCommand"
  let make = (~ruleId, ()) => new({ruleId: ruleId})
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
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "GetLoggingConfigurationCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIPSet = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to get. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by 
			<a>ListIPSets</a>.</p>")
    @as("IPSetId")
    ipsetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the <a>IPSet</a> that you specified in the <code>GetIPSet</code> request. For more information, see the 
			following topics:</p>
		       <ul>
            <li>
               <p>
                  <a>IPSet</a>: Contains <code>IPSetDescriptors</code>, <code>IPSetId</code>, and <code>Name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>IPSetDescriptors</code>: Contains an array of <a>IPSetDescriptor</a> objects. Each <code>IPSetDescriptor</code> 
				object contains <code>Type</code> and <code>Value</code>
               </p>
            </li>
         </ul>")
    @as("IPSet")
    ipset: option<ipset>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "GetIPSetCommand"
  let make = (~ipsetId, ()) => new({ipsetId: ipsetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGeoMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to get. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by 
			<a>ListGeoMatchSets</a>.</p>")
    @as("GeoMatchSetId")
    geoMatchSetId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the <a>GeoMatchSet</a> that you specified in the <code>GetGeoMatchSet</code> request. This includes the <code>Type</code>, which for a <code>GeoMatchContraint</code> is always <code>Country</code>, as well as the <code>Value</code>, which is the identifier for a specific country.</p>"
    )
    @as("GeoMatchSet")
    geoMatchSet: option<geoMatchSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "GetGeoMatchSetCommand"
  let make = (~geoMatchSetId, ()) => new({geoMatchSetId: geoMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRule = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>A friendly name or description for the metrics for this <code>Rule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
	        whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the
            <code>Rule</code>.</p>")
    @as("MetricName")
    metricName: metricName,
    @ocaml.doc(
      "<p>A friendly name or description of the <a>Rule</a>. You can't change the name of a <code>Rule</code> after you create it.</p>"
    )
    @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>CreateRule</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc("<p>The <a>Rule</a> returned in the <code>CreateRule</code> response.</p>")
    @as("Rule")
    rule: option<rule>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "CreateRuleCommand"
  let make = (~changeToken, ~metricName, ~name, ~tags=?, ()) =>
    new({tags: tags, changeToken: changeToken, metricName: metricName, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRateBasedRule = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the
            <code>CreateRateBasedRule</code> request. You can also use this value to query the
         status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The maximum number of requests, which have an identical value in the field that is
         specified by <code>RateKey</code>, allowed in a five-minute period. If the number of
         requests exceeds the <code>RateLimit</code> and the other predicates specified in the rule
         are also met, AWS WAF triggers the action that is specified for this rule.</p>")
    @as("RateLimit")
    rateLimit: rateLimit,
    @ocaml.doc("<p>The field that AWS WAF uses to determine if requests are likely arriving from a single
         source and thus subject to rate monitoring. The only valid value for <code>RateKey</code>
         is <code>IP</code>. <code>IP</code> indicates that requests that arrive from the same IP
         address are subject to the <code>RateLimit</code> that is specified in
         the <code>RateBasedRule</code>.</p>")
    @as("RateKey")
    rateKey: rateKey,
    @ocaml.doc("<p>A friendly name or description for the metrics for this <code>RateBasedRule</code>.
          The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
          whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change the name of the metric after you create the
            <code>RateBasedRule</code>.</p>")
    @as("MetricName")
    metricName: metricName,
    @ocaml.doc("<p>A friendly name or description of the <a>RateBasedRule</a>. You can't
         change the name of a <code>RateBasedRule</code> after you create it.</p>")
    @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the
            <code>CreateRateBasedRule</code> request. You can also use this value to query the
         status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc("<p>The <a>RateBasedRule</a>
         that is returned in the <code>CreateRateBasedRule</code> response.</p>")
    @as("Rule")
    rule: option<rateBasedRule>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "CreateRateBasedRuleCommand"
  let make = (~changeToken, ~rateLimit, ~rateKey, ~metricName, ~name, ~tags=?, ()) =>
    new({
      tags: tags,
      changeToken: changeToken,
      rateLimit: rateLimit,
      rateKey: rateKey,
      metricName: metricName,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIPSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc(
      "<p>A friendly name or description of the <a>IPSet</a>. You can't change <code>Name</code> after you create the <code>IPSet</code>.</p>"
    )
    @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>CreateIPSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc("<p>The <a>IPSet</a> returned in the <code>CreateIPSet</code> response.</p>")
    @as("IPSet")
    ipset: option<ipset>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "CreateIPSetCommand"
  let make = (~changeToken, ~name, ()) => new({changeToken: changeToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGeoMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc(
      "<p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change <code>Name</code> after you create the <code>GeoMatchSet</code>.</p>"
    )
    @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>CreateGeoMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc(
      "<p>The <a>GeoMatchSet</a> returned in the <code>CreateGeoMatchSet</code> response. The <code>GeoMatchSet</code> contains no <code>GeoMatchConstraints</code>.</p>"
    )
    @as("GeoMatchSet")
    geoMatchSet: option<geoMatchSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "CreateGeoMatchSetCommand"
  let make = (~changeToken, ~name, ()) => new({changeToken: changeToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateXssMatchSet = {
  type t
  @ocaml.doc("<p>A request to update an <a>XssMatchSet</a>.</p>")
  type request = {
    @ocaml.doc("<p>An array of <code>XssMatchSetUpdate</code> objects that you want to insert into or
         delete from an
         <a>XssMatchSet</a>. For more information, see the applicable data
         types:</p>
		       <ul>
            <li>
               <p>
                  <a>XssMatchSetUpdate</a>: Contains <code>Action</code> and <code>XssMatchTuple</code>
               </p>
            </li>
            <li>
               <p>
                  <a>XssMatchTuple</a>: Contains <code>FieldToMatch</code> and <code>TextTransformation</code>
               </p>
            </li>
            <li>
               <p>
                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
               </p>
            </li>
         </ul>")
    @as("Updates")
    updates: xssMatchSetUpdates,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>XssMatchSetId</code> of the <code>XssMatchSet</code> that you want to update. 
			<code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>")
    @as("XssMatchSetId")
    xssMatchSetId: resourceId,
  }
  @ocaml.doc("<p>The response to an <a>UpdateXssMatchSets</a> request.</p>")
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateXssMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "UpdateXssMatchSetCommand"
  let make = (~updates, ~changeToken, ~xssMatchSetId, ()) =>
    new({updates: updates, changeToken: changeToken, xssMatchSetId: xssMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSqlInjectionMatchSet = {
  type t
  @ocaml.doc("<p>A request to update a <a>SqlInjectionMatchSet</a>.</p>")
  type request = {
    @ocaml.doc("<p>An array of <code>SqlInjectionMatchSetUpdate</code> objects that you want to insert into or delete from a 
			<a>SqlInjectionMatchSet</a>. For more information, see the applicable data types:</p>
		       <ul>
            <li>
               <p>
                  <a>SqlInjectionMatchSetUpdate</a>: Contains <code>Action</code> and <code>SqlInjectionMatchTuple</code>
               </p>
            </li>
            <li>
               <p>
                  <a>SqlInjectionMatchTuple</a>: Contains <code>FieldToMatch</code> and <code>TextTransformation</code>
               </p>
            </li>
            <li>
               <p>
                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
               </p>
            </li>
         </ul>")
    @as("Updates")
    updates: sqlInjectionMatchSetUpdates,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>SqlInjectionMatchSetId</code> of the <code>SqlInjectionMatchSet</code> that you want to update. 
			<code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>")
    @as("SqlInjectionMatchSetId")
    sqlInjectionMatchSetId: resourceId,
  }
  @ocaml.doc("<p>The response to an <a>UpdateSqlInjectionMatchSets</a> request.</p>")
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateSqlInjectionMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "UpdateSqlInjectionMatchSetCommand"
  let make = (~updates, ~changeToken, ~sqlInjectionMatchSetId, ()) =>
    new({
      updates: updates,
      changeToken: changeToken,
      sqlInjectionMatchSetId: sqlInjectionMatchSetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSizeConstraintSet = {
  type t
  type request = {
    @ocaml.doc("<p>An array of <code>SizeConstraintSetUpdate</code> objects that you want to insert into or delete from a <a>SizeConstraintSet</a>. 
			For more information, see the applicable data types:</p>
		       <ul>
            <li>
               <p>
                  <a>SizeConstraintSetUpdate</a>: Contains <code>Action</code> and <code>SizeConstraint</code>
               </p>
            </li>
            <li>
               <p>
                  <a>SizeConstraint</a>: Contains <code>FieldToMatch</code>, <code>TextTransformation</code>, <code>ComparisonOperator</code>, 
				and <code>Size</code>
               </p>
            </li>
            <li>
               <p>
                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
               </p>
            </li>
         </ul>")
    @as("Updates")
    updates: sizeConstraintSetUpdates,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to update. <code>SizeConstraintSetId</code> 
			is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>")
    @as("SizeConstraintSetId")
    sizeConstraintSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateSizeConstraintSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "UpdateSizeConstraintSetCommand"
  let make = (~updates, ~changeToken, ~sizeConstraintSetId, ()) =>
    new({updates: updates, changeToken: changeToken, sizeConstraintSetId: sizeConstraintSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRegexMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>An array of <code>RegexMatchSetUpdate</code> objects that you want to insert into or delete from a <a>RegexMatchSet</a>. 
			For more information, see <a>RegexMatchTuple</a>.</p>")
    @as("Updates")
    updates: regexMatchSetUpdates,
    @ocaml.doc("<p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to update. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by 
			<a>ListRegexMatchSets</a>.</p>")
    @as("RegexMatchSetId")
    regexMatchSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRegexMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "UpdateRegexMatchSetCommand"
  let make = (~changeToken, ~updates, ~regexMatchSetId, ()) =>
    new({changeToken: changeToken, updates: updates, regexMatchSetId: regexMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateByteMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>An array of <code>ByteMatchSetUpdate</code> objects that you want to insert into or delete from a <a>ByteMatchSet</a>. 
			For more information, see the applicable data types:</p>
		       <ul>
            <li>
               <p>
                  <a>ByteMatchSetUpdate</a>: Contains <code>Action</code> and <code>ByteMatchTuple</code>
               </p>
            </li>
            <li>
               <p>
                  <a>ByteMatchTuple</a>: Contains <code>FieldToMatch</code>, <code>PositionalConstraint</code>, <code>TargetString</code>, 
				and <code>TextTransformation</code>
               </p>
            </li>
            <li>
               <p>
                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
               </p>
            </li>
         </ul>")
    @as("Updates")
    updates: byteMatchSetUpdates,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to update. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by 
			<a>ListByteMatchSets</a>.</p>")
    @as("ByteMatchSetId")
    byteMatchSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateByteMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "UpdateByteMatchSetCommand"
  let make = (~updates, ~changeToken, ~byteMatchSetId, ()) =>
    new({updates: updates, changeToken: changeToken, byteMatchSetId: byteMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLoggingConfigurations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies the number of <code>LoggingConfigurations</code> that you want AWS WAF to return for this request. If you have more <code>LoggingConfigurations</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>LoggingConfigurations</code>.</p>"
    )
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>LoggingConfigurations</code> than the value of <code>Limit</code>, 
			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>LoggingConfigurations</code>. 
			For the second and subsequent <code>ListLoggingConfigurations</code> requests, specify the value of <code>NextMarker</code> 
			from the previous response to get information about another batch of <code>ListLoggingConfigurations</code>.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  type response = {
    @ocaml.doc(
      "<p>If you have more <code>LoggingConfigurations</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>LoggingConfigurations</code>, submit another <code>ListLoggingConfigurations</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>"
    )
    @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc("<p>An array of <a>LoggingConfiguration</a> objects.</p>")
    @as("LoggingConfigurations")
    loggingConfigurations: option<loggingConfigurations>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListLoggingConfigurationsCommand"
  let make = (~limit=?, ~nextMarker=?, ()) => new({limit: limit, nextMarker: nextMarker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActivatedRulesInRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>ActivatedRules</code> that you want AWS WAF to return for this request. If you have more <code>ActivatedRules</code> than the number that you specify for <code>Limit</code>, the response includes a 
         <code>NextMarker</code> value that you can use to get another batch of <code>ActivatedRules</code>.</p>")
    @as("Limit")
    limit: option<paginationLimit>,
    @ocaml.doc("<p>If you specify a value for <code>Limit</code> and you have more <code>ActivatedRules</code> than the value of <code>Limit</code>, 
         AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ActivatedRules</code>. 
         For the second and subsequent <code>ListActivatedRulesInRuleGroup</code> requests, specify the value of <code>NextMarker</code> 
         from the previous response to get information about another batch of <code>ActivatedRules</code>.</p>")
    @as("NextMarker")
    nextMarker: option<nextMarker>,
    @ocaml.doc(
      "<p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> for which you want to get a list of <a>ActivatedRule</a> objects.</p>"
    )
    @as("RuleGroupId")
    ruleGroupId: option<resourceId>,
  }
  type response = {
    @ocaml.doc("<p>An array of <code>ActivatedRules</code> objects.</p>") @as("ActivatedRules")
    activatedRules: option<activatedRules>,
    @ocaml.doc(
      "<p>If you have more <code>ActivatedRules</code> than the number that you specified for <code>Limit</code> in the request, the response includes a <code>NextMarker</code> value. To list more <code>ActivatedRules</code>, submit another <code>ListActivatedRulesInRuleGroup</code> request, and specify the <code>NextMarker</code> value from the response in the <code>NextMarker</code> value in the next request.</p>"
    )
    @as("NextMarker")
    nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "ListActivatedRulesInRuleGroupCommand"
  let make = (~limit=?, ~nextMarker=?, ~ruleGroupId=?, ()) =>
    new({limit: limit, nextMarker: nextMarker, ruleGroupId: ruleGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetXssMatchSet = {
  type t
  @ocaml.doc("<p>A request to get an <a>XssMatchSet</a>.</p>")
  type request = {
    @ocaml.doc("<p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to get. <code>XssMatchSetId</code> 
			is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>")
    @as("XssMatchSetId")
    xssMatchSetId: resourceId,
  }
  @ocaml.doc("<p>The response to a <a>GetXssMatchSet</a> request.</p>")
  type response = {
    @ocaml.doc("<p>Information about the <a>XssMatchSet</a> that you specified in the <code>GetXssMatchSet</code> request. 
			For more information, see the following topics:</p>
		       <ul>
            <li>
               <p>
                  <a>XssMatchSet</a>: Contains <code>Name</code>, <code>XssMatchSetId</code>, and an array of 
				<code>XssMatchTuple</code> objects</p>
            </li>
            <li>
               <p>
                  <a>XssMatchTuple</a>: Each <code>XssMatchTuple</code> object contains <code>FieldToMatch</code> and 
				<code>TextTransformation</code>
               </p>
            </li>
            <li>
               <p>
                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
               </p>
            </li>
         </ul>")
    @as("XssMatchSet")
    xssMatchSet: option<xssMatchSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "GetXssMatchSetCommand"
  let make = (~xssMatchSetId, ()) => new({xssMatchSetId: xssMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSqlInjectionMatchSet = {
  type t
  @ocaml.doc("<p>A request to get a <a>SqlInjectionMatchSet</a>.</p>")
  type request = {
    @ocaml.doc("<p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to get. <code>SqlInjectionMatchSetId</code> 
			is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>")
    @as("SqlInjectionMatchSetId")
    sqlInjectionMatchSetId: resourceId,
  }
  @ocaml.doc("<p>The response to a <a>GetSqlInjectionMatchSet</a> request.</p>")
  type response = {
    @ocaml.doc("<p>Information about the <a>SqlInjectionMatchSet</a> that you specified in the <code>GetSqlInjectionMatchSet</code> request. 
			For more information, see the following topics:</p>
		       <ul>
            <li>
               <p>
                  <a>SqlInjectionMatchSet</a>: Contains <code>Name</code>, <code>SqlInjectionMatchSetId</code>, and an array of 
				<code>SqlInjectionMatchTuple</code> objects</p>
            </li>
            <li>
               <p>
                  <a>SqlInjectionMatchTuple</a>: Each <code>SqlInjectionMatchTuple</code> object contains <code>FieldToMatch</code> and 
				<code>TextTransformation</code>
               </p>
            </li>
            <li>
               <p>
                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
               </p>
            </li>
         </ul>")
    @as("SqlInjectionMatchSet")
    sqlInjectionMatchSet: option<sqlInjectionMatchSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "GetSqlInjectionMatchSetCommand"
  let make = (~sqlInjectionMatchSetId, ()) => new({sqlInjectionMatchSetId: sqlInjectionMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSizeConstraintSet = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to get. <code>SizeConstraintSetId</code> is returned by 
			<a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>")
    @as("SizeConstraintSetId")
    sizeConstraintSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the <a>SizeConstraintSet</a> that you specified in the <code>GetSizeConstraintSet</code> request. For more information, see the 
			following topics:</p>
		       <ul>
            <li>
               <p>
                  <a>SizeConstraintSet</a>: Contains <code>SizeConstraintSetId</code>, <code>SizeConstraints</code>, and <code>Name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SizeConstraints</code>: Contains an array of <a>SizeConstraint</a> objects. Each <code>SizeConstraint</code> 
				object contains <a>FieldToMatch</a>, <code>TextTransformation</code>, <code>ComparisonOperator</code>, 
				and <code>Size</code>
               </p>
            </li>
            <li>
               <p>
                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
               </p>
            </li>
         </ul>")
    @as("SizeConstraintSet")
    sizeConstraintSet: option<sizeConstraintSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "GetSizeConstraintSetCommand"
  let make = (~sizeConstraintSetId, ()) => new({sizeConstraintSetId: sizeConstraintSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRegexMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to get. <code>RegexMatchSetId</code> is returned by 
			<a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>")
    @as("RegexMatchSetId")
    regexMatchSetId: resourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>Information about the <a>RegexMatchSet</a> that you specified in the <code>GetRegexMatchSet</code> request. For more information, see <a>RegexMatchTuple</a>.</p>"
    )
    @as("RegexMatchSet")
    regexMatchSet: option<regexMatchSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "GetRegexMatchSetCommand"
  let make = (~regexMatchSetId, ()) => new({regexMatchSetId: regexMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetByteMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to get. <code>ByteMatchSetId</code> is returned by 
			<a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>")
    @as("ByteMatchSetId")
    byteMatchSetId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the <a>ByteMatchSet</a> that you specified in the <code>GetByteMatchSet</code> request. For more information, see the 
			following topics:</p>
		       <ul>
            <li>
               <p>
                  <a>ByteMatchSet</a>: Contains <code>ByteMatchSetId</code>, <code>ByteMatchTuples</code>, and <code>Name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ByteMatchTuples</code>: Contains an array of <a>ByteMatchTuple</a> objects. Each <code>ByteMatchTuple</code> 
				object contains <a>FieldToMatch</a>, <code>PositionalConstraint</code>, <code>TargetString</code>, 
				and <code>TextTransformation</code>
               </p>
            </li>
            <li>
               <p>
                  <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
               </p>
            </li>
         </ul>")
    @as("ByteMatchSet")
    byteMatchSet: option<byteMatchSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "GetByteMatchSetCommand"
  let make = (~byteMatchSetId, ()) => new({byteMatchSetId: byteMatchSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateXssMatchSet = {
  type t
  @ocaml.doc("<p>A request to create an <a>XssMatchSet</a>.</p>")
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>A friendly name or description for the <a>XssMatchSet</a> that you're creating. You can't change <code>Name</code> 
			after you create the <code>XssMatchSet</code>.</p>")
    @as("Name")
    name: resourceName,
  }
  @ocaml.doc("<p>The response to a <code>CreateXssMatchSet</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>CreateXssMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc("<p>An <a>XssMatchSet</a>.</p>") @as("XssMatchSet") xssMatchSet: option<xssMatchSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "CreateXssMatchSetCommand"
  let make = (~changeToken, ~name, ()) => new({changeToken: changeToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSqlInjectionMatchSet = {
  type t
  @ocaml.doc("<p>A request to create a <a>SqlInjectionMatchSet</a>.</p>")
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>A friendly name or description for the <a>SqlInjectionMatchSet</a> that you're creating. You can't change <code>Name</code> 
			after you create the <code>SqlInjectionMatchSet</code>.</p>")
    @as("Name")
    name: resourceName,
  }
  @ocaml.doc("<p>The response to a <code>CreateSqlInjectionMatchSet</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>CreateSqlInjectionMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc("<p>A <a>SqlInjectionMatchSet</a>.</p>") @as("SqlInjectionMatchSet")
    sqlInjectionMatchSet: option<sqlInjectionMatchSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "CreateSqlInjectionMatchSetCommand"
  let make = (~changeToken, ~name, ()) => new({changeToken: changeToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSizeConstraintSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>A friendly name or description of the <a>SizeConstraintSet</a>. You can't change <code>Name</code> after you create a 
			<code>SizeConstraintSet</code>.</p>")
    @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>CreateSizeConstraintSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc(
      "<p>A <a>SizeConstraintSet</a> that contains no <code>SizeConstraint</code> objects.</p>"
    )
    @as("SizeConstraintSet")
    sizeConstraintSet: option<sizeConstraintSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "CreateSizeConstraintSetCommand"
  let make = (~changeToken, ~name, ()) => new({changeToken: changeToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRegexMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a 
			<code>RegexMatchSet</code>.</p>")
    @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>CreateRegexMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc(
      "<p>A <a>RegexMatchSet</a> that contains no <code>RegexMatchTuple</code> objects.</p>"
    )
    @as("RegexMatchSet")
    regexMatchSet: option<regexMatchSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "CreateRegexMatchSetCommand"
  let make = (~changeToken, ~name, ()) => new({changeToken: changeToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateByteMatchSet = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a 
			<code>ByteMatchSet</code>.</p>")
    @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>CreateByteMatchSet</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc("<p>A <a>ByteMatchSet</a> that contains no <code>ByteMatchTuple</code> objects.</p>")
    @as("ByteMatchSet")
    byteMatchSet: option<byteMatchSet>,
  }
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "CreateByteMatchSetCommand"
  let make = (~changeToken, ~name, ()) => new({changeToken: changeToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWebACL = {
  type t
  type request = {
    @ocaml.doc("<p>A default action for the web ACL, either ALLOW or BLOCK. AWS WAF performs the default
         action if a request doesn't match the criteria in any of the rules in a web ACL.</p>")
    @as("DefaultAction")
    defaultAction: option<wafAction>,
    @ocaml.doc("<p>An array of updates to make to the <a>WebACL</a>.</p>		
		       <p>An array of <code>WebACLUpdate</code> objects that you want to insert into or delete from a 
			<a>WebACL</a>. For more information, see the applicable data types:</p>
		       <ul>
            <li>
               <p>
                  <a>WebACLUpdate</a>: Contains <code>Action</code> and <code>ActivatedRule</code>
               </p>
            </li>
            <li>
               <p>
                  <a>ActivatedRule</a>: Contains <code>Action</code>,
                  <code>OverrideAction</code>, <code>Priority</code>, <code>RuleId</code>, and
                  <code>Type</code>. <code>ActivatedRule|OverrideAction</code> applies only when
               updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this
               case,
               you do not use <code>ActivatedRule|Action</code>. For all other update requests,
                  <code>ActivatedRule|Action</code> is used instead of
                  <code>ActivatedRule|OverrideAction</code>. </p>
            </li>
            <li>
               <p>
                  <a>WafAction</a>: Contains <code>Type</code>
               </p>
            </li>
         </ul>")
    @as("Updates")
    updates: option<webACLUpdates>,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to update. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by 
			<a>ListWebACLs</a>.</p>")
    @as("WebACLId")
    webACLId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateWebACL</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "UpdateWebACLCommand"
  let make = (~changeToken, ~webACLId, ~defaultAction=?, ~updates=?, ()) =>
    new({
      defaultAction: defaultAction,
      updates: updates,
      changeToken: changeToken,
      webACLId: webACLId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>An array of <code>RuleGroupUpdate</code> objects that you want to insert into or delete from a 
         <a>RuleGroup</a>.</p>
		       <p>You can only insert <code>REGULAR</code> rules into a rule group.</p>
		       <p>
            <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>.  For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>.</p>")
    @as("Updates")
    updates: ruleGroupUpdates,
    @ocaml.doc("<p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to update. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by 
         <a>ListRuleGroups</a>.</p>")
    @as("RuleGroupId")
    ruleGroupId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>UpdateRuleGroup</code> request. You can also use this value 
         to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "UpdateRuleGroupCommand"
  let make = (~changeToken, ~updates, ~ruleGroupId, ()) =>
    new({changeToken: changeToken, updates: updates, ruleGroupId: ruleGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWebACL = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to get. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by 
			<a>ListWebACLs</a>.</p>")
    @as("WebACLId")
    webACLId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the <a>WebACL</a> that you specified in the <code>GetWebACL</code> request. 
			For more information, see the following topics:</p>
		       <ul>
            <li>
               <p>
                  <a>WebACL</a>: Contains <code>DefaultAction</code>, <code>MetricName</code>, <code>Name</code>, an array of 
				<code>Rule</code> objects, and <code>WebACLId</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DefaultAction</code> (Data type is <a>WafAction</a>): Contains <code>Type</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Rules</code>: Contains an array of <code>ActivatedRule</code> objects, which contain <code>Action</code>, 
				<code>Priority</code>, and <code>RuleId</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Action</code>: Contains <code>Type</code>
               </p>
            </li>
         </ul>")
    @as("WebACL")
    webACL: option<webACL>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "GetWebACLCommand"
  let make = (~webACLId, ()) => new({webACLId: webACLId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSampledRequests = {
  type t
  type request = {
    @ocaml.doc("<p>The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received
			during the time range. If your resource received fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code> 
			returns information about all of them. </p>")
    @as("MaxItems")
    maxItems: getSampledRequestsMaxItems,
    @ocaml.doc("<p>The start date and time and the end date and time of the range for which you want <code>GetSampledRequests</code> to return a 
                        sample of requests. You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special  
                        designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. You can specify any time range in the previous three hours.</p>")
    @as("TimeWindow")
    timeWindow: timeWindow,
    @ocaml.doc("<p>
            <code>RuleId</code> is one of three values:</p>
			      <ul>
            <li>
				           <p>The <code>RuleId</code> of the <code>Rule</code> or the <code>RuleGroupId</code> of the <code>RuleGroup</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p>
            </li>
            <li>
               <p>
                  <code>Default_Action</code>, which causes <code>GetSampledRequests</code> to return a sample of the requests that 
					didn't match any of the rules in the specified <code>WebACL</code>.</p>
            </li>
         </ul>")
    @as("RuleId")
    ruleId: resourceId,
    @ocaml.doc(
      "<p>The <code>WebACLId</code> of the <code>WebACL</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p>"
    )
    @as("WebAclId")
    webAclId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>Usually, <code>TimeWindow</code> is the time range that you specified in the <code>GetSampledRequests</code> request. However, 
			if your AWS resource received more than 5,000 requests during the time range that you specified in the request, 
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
  @module("@aws-sdk/client-waf-regional") @new
  external new: request => t = "GetSampledRequestsCommand"
  let make = (~maxItems, ~timeWindow, ~ruleId, ~webAclId, ()) =>
    new({maxItems: maxItems, timeWindow: timeWindow, ruleId: ruleId, webAclId: webAclId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWebACL = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>")
    @as("ChangeToken")
    changeToken: changeToken,
    @ocaml.doc("<p>The action that you want  AWS WAF to take when a request doesn't match the criteria specified in any of the <code>Rule</code> 
			objects that are associated with the <code>WebACL</code>.</p>")
    @as("DefaultAction")
    defaultAction: wafAction,
    @ocaml.doc("<p>A friendly name or description for the metrics for this <code>WebACL</code>.The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
	        whitespace or metric names reserved for AWS WAF, including \"All\" and \"Default_Action.\" You can't change <code>MetricName</code> after you create the
            <code>WebACL</code>.</p>")
    @as("MetricName")
    metricName: metricName,
    @ocaml.doc(
      "<p>A friendly name or description of the <a>WebACL</a>. You can't change <code>Name</code> after you create the <code>WebACL</code>.</p>"
    )
    @as("Name")
    name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>ChangeToken</code> that you used to submit the <code>CreateWebACL</code> request. You can also use this value 
			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>")
    @as("ChangeToken")
    changeToken: option<changeToken>,
    @ocaml.doc("<p>The <a>WebACL</a> returned in the <code>CreateWebACL</code> response.</p>")
    @as("WebACL")
    webACL: option<webACL>,
  }
  @module("@aws-sdk/client-waf-regional") @new external new: request => t = "CreateWebACLCommand"
  let make = (~changeToken, ~defaultAction, ~metricName, ~name, ~tags=?, ()) =>
    new({
      tags: tags,
      changeToken: changeToken,
      defaultAction: defaultAction,
      metricName: metricName,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
