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
type noneAction = unit
type nextMarker = string
type metricName = string
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
type body = unit
type allQueryArguments = unit
type all = unit
type actionValue = [@as("COUNT") #COUNT | @as("BLOCK") #BLOCK | @as("ALLOW") #ALLOW]
type action = string
type webACLSummary = {
  @as("ARN") arn: option<resourceArn>,
  @as("LockToken") lockToken: option<lockToken>,
  @as("Description") description: option<entityDescription>,
  @as("Id") id: option<entityId>,
  @as("Name") name: option<entityName>,
}
type visibilityConfig = {
  @as("MetricName") metricName: metricName,
  @as("CloudWatchMetricsEnabled") cloudWatchMetricsEnabled: boolean_,
  @as("SampledRequestsEnabled") sampledRequestsEnabled: boolean_,
}
type timeWindow = {
  @as("EndTime") endTime: timestamp_,
  @as("StartTime") startTime: timestamp_,
}
type textTransformation = {
  @as("Type") type_: textTransformationType,
  @as("Priority") priority: textTransformationPriority,
}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type singleQueryArgument = {@as("Name") name: fieldToMatchData}
type singleHeader = {@as("Name") name: fieldToMatchData}
type ruleGroupSummary = {
  @as("ARN") arn: option<resourceArn>,
  @as("LockToken") lockToken: option<lockToken>,
  @as("Description") description: option<entityDescription>,
  @as("Id") id: option<entityId>,
  @as("Name") name: option<entityName>,
}
type resourceArns = array<resourceArn>
type regexPatternSetSummary = {
  @as("ARN") arn: option<resourceArn>,
  @as("LockToken") lockToken: option<lockToken>,
  @as("Description") description: option<entityDescription>,
  @as("Id") id: option<entityId>,
  @as("Name") name: option<entityName>,
}
type regex = {@as("RegexString") regexString: option<regexPatternString>}
type managedRuleGroupSummary = {
  @as("Description") description: option<entityDescription>,
  @as("Name") name: option<entityName>,
  @as("VendorName") vendorName: option<vendorName>,
}
type logDestinationConfigs = array<resourceArn>
type labelSummary = {@as("Name") name: option<labelName>}
type labelNameCondition = {@as("LabelName") labelName: labelName}
type labelMatchStatement = {
  @as("Key") key: labelMatchKey,
  @as("Scope") scope: labelMatchScope,
}
type label = {@as("Name") name: labelName}
type jsonPointerPaths = array<jsonPointerPath>
type ipsetSummary = {
  @as("ARN") arn: option<resourceArn>,
  @as("LockToken") lockToken: option<lockToken>,
  @as("Description") description: option<entityDescription>,
  @as("Id") id: option<entityId>,
  @as("Name") name: option<entityName>,
}
type ipsetForwardedIPConfig = {
  @as("Position") position: forwardedIPPosition,
  @as("FallbackBehavior") fallbackBehavior: fallbackBehavior,
  @as("HeaderName") headerName: forwardedIPHeaderName,
}
type ipaddresses = array<ipaddress>
type httpheader = {
  @as("Value") value: option<headerValue>,
  @as("Name") name: option<headerName>,
}
type forwardedIPConfig = {
  @as("FallbackBehavior") fallbackBehavior: fallbackBehavior,
  @as("HeaderName") headerName: forwardedIPHeaderName,
}
type excludedRule = {@as("Name") name: entityName}
type customResponseBody = {
  @as("Content") content: responseContent,
  @as("ContentType") contentType: responseContentType,
}
type customHTTPHeader = {
  @as("Value") value: customHTTPHeaderValue,
  @as("Name") name: customHTTPHeaderName,
}
type countryCodes = array<countryCode>
type actionCondition = {@as("Action") action: actionValue}
type webACLSummaries = array<webACLSummary>
type textTransformations = array<textTransformation>
type tagList_ = array<tag>
type ruleGroupSummaries = array<ruleGroupSummary>
type regularExpressionList = array<regex>
type regexPatternSetSummaries = array<regexPatternSetSummary>
type rateBasedStatementManagedKeysIPSet = {
  @as("Addresses") addresses: option<ipaddresses>,
  @as("IPAddressVersion") ipaddressVersion: option<ipaddressVersion>,
}
type managedRuleGroupSummaries = array<managedRuleGroupSummary>
type labels = array<label>
type labelSummaries = array<labelSummary>
type jsonMatchPattern = {
  @as("IncludedPaths") includedPaths: option<jsonPointerPaths>,
  @as("All") all: option<all>,
}
type ipsetSummaries = array<ipsetSummary>
type ipsetReferenceStatement = {
  @as("IPSetForwardedIPConfig") ipsetForwardedIPConfig: option<ipsetForwardedIPConfig>,
  @as("ARN") arn: resourceArn,
}
type ipset = {
  @as("Addresses") addresses: ipaddresses,
  @as("IPAddressVersion") ipaddressVersion: ipaddressVersion,
  @as("Description") description: option<entityDescription>,
  @as("ARN") arn: resourceArn,
  @as("Id") id: entityId,
  @as("Name") name: entityName,
}
type httpheaders = array<httpheader>
type geoMatchStatement = {
  @as("ForwardedIPConfig") forwardedIPConfig: option<forwardedIPConfig>,
  @as("CountryCodes") countryCodes: option<countryCodes>,
}
type excludedRules = array<excludedRule>
type customResponseBodies = Js.Dict.t<customResponseBody>
type customHTTPHeaders = array<customHTTPHeader>
type condition = {
  @as("LabelNameCondition") labelNameCondition: option<labelNameCondition>,
  @as("ActionCondition") actionCondition: option<actionCondition>,
}
type tagInfoForResource = {
  @as("TagList") tagList_: option<tagList_>,
  @as("ResourceARN") resourceARN: option<resourceArn>,
}
type ruleGroupReferenceStatement = {
  @as("ExcludedRules") excludedRules: option<excludedRules>,
  @as("ARN") arn: resourceArn,
}
type regexPatternSet = {
  @as("RegularExpressionList") regularExpressionList: option<regularExpressionList>,
  @as("Description") description: option<entityDescription>,
  @as("ARN") arn: option<resourceArn>,
  @as("Id") id: option<entityId>,
  @as("Name") name: option<entityName>,
}
type jsonBody = {
  @as("InvalidFallbackBehavior") invalidFallbackBehavior: option<bodyParsingFallbackBehavior>,
  @as("MatchScope") matchScope: jsonMatchScope,
  @as("MatchPattern") matchPattern: jsonMatchPattern,
}
type httprequest = {
  @as("Headers") headers: option<httpheaders>,
  @as("HTTPVersion") httpversion: option<httpversion>,
  @as("Method") method: option<httpmethod>,
  @as("URI") uri: option<uristring>,
  @as("Country") country: option<country>,
  @as("ClientIP") clientIP: option<ipstring>,
}
type customResponse = {
  @as("ResponseHeaders") responseHeaders: option<customHTTPHeaders>,
  @as("CustomResponseBodyKey") customResponseBodyKey: option<entityName>,
  @as("ResponseCode") responseCode: responseStatusCode,
}
type customRequestHandling = {@as("InsertHeaders") insertHeaders: customHTTPHeaders}
type conditions = array<condition>
type sampledHTTPRequest = {
  @as("Labels") labels: option<labels>,
  @as("ResponseCodeSent") responseCodeSent: option<responseStatusCode>,
  @as("RequestHeadersInserted") requestHeadersInserted: option<httpheaders>,
  @as("RuleNameWithinRuleGroup") ruleNameWithinRuleGroup: option<entityName>,
  @as("Action") action: option<action>,
  @as("Timestamp") timestamp_: option<timestamp_>,
  @as("Weight") weight: sampleWeight,
  @as("Request") request: httprequest,
}
type filter = {
  @as("Conditions") conditions: conditions,
  @as("Requirement") requirement: filterRequirement,
  @as("Behavior") behavior: filterBehavior,
}
type fieldToMatch = {
  @as("JsonBody") jsonBody: option<jsonBody>,
  @as("Method") method: option<method>,
  @as("Body") body: option<body>,
  @as("QueryString") queryString: option<queryString>,
  @as("UriPath") uriPath: option<uriPath>,
  @as("AllQueryArguments") allQueryArguments: option<allQueryArguments>,
  @as("SingleQueryArgument") singleQueryArgument: option<singleQueryArgument>,
  @as("SingleHeader") singleHeader: option<singleHeader>,
}
type countAction = {
  @as("CustomRequestHandling") customRequestHandling: option<customRequestHandling>,
}
type blockAction = {@as("CustomResponse") customResponse: option<customResponse>}
type allowAction = {
  @as("CustomRequestHandling") customRequestHandling: option<customRequestHandling>,
}
type xssMatchStatement = {
  @as("TextTransformations") textTransformations: textTransformations,
  @as("FieldToMatch") fieldToMatch: fieldToMatch,
}
type sqliMatchStatement = {
  @as("TextTransformations") textTransformations: textTransformations,
  @as("FieldToMatch") fieldToMatch: fieldToMatch,
}
type sizeConstraintStatement = {
  @as("TextTransformations") textTransformations: textTransformations,
  @as("Size") size: size,
  @as("ComparisonOperator") comparisonOperator: comparisonOperator,
  @as("FieldToMatch") fieldToMatch: fieldToMatch,
}
type sampledHTTPRequests = array<sampledHTTPRequest>
type ruleAction = {
  @as("Count") count: option<countAction>,
  @as("Allow") allow: option<allowAction>,
  @as("Block") block: option<blockAction>,
}
type regexPatternSetReferenceStatement = {
  @as("TextTransformations") textTransformations: textTransformations,
  @as("FieldToMatch") fieldToMatch: fieldToMatch,
  @as("ARN") arn: resourceArn,
}
type redactedFields = array<fieldToMatch>
type overrideAction = {
  @as("None") none: option<noneAction>,
  @as("Count") count: option<countAction>,
}
type filters = array<filter>
type defaultAction = {
  @as("Allow") allow: option<allowAction>,
  @as("Block") block: option<blockAction>,
}
type byteMatchStatement = {
  @as("PositionalConstraint") positionalConstraint: positionalConstraint,
  @as("TextTransformations") textTransformations: textTransformations,
  @as("FieldToMatch") fieldToMatch: fieldToMatch,
  @as("SearchString") searchString: searchString,
}
type ruleSummary = {
  @as("Action") action: option<ruleAction>,
  @as("Name") name: option<entityName>,
}
type loggingFilter = {
  @as("DefaultBehavior") defaultBehavior: filterBehavior,
  @as("Filters") filters: filters,
}
type ruleSummaries = array<ruleSummary>
type loggingConfiguration = {
  @as("LoggingFilter") loggingFilter: option<loggingFilter>,
  @as("ManagedByFirewallManager") managedByFirewallManager: option<boolean_>,
  @as("RedactedFields") redactedFields: option<redactedFields>,
  @as("LogDestinationConfigs") logDestinationConfigs: logDestinationConfigs,
  @as("ResourceArn") resourceArn: resourceArn,
}
type loggingConfigurations = array<loggingConfiguration>
type rec statement = {
  @as("LabelMatchStatement") labelMatchStatement: option<labelMatchStatement>,
  @as("ManagedRuleGroupStatement") managedRuleGroupStatement: option<managedRuleGroupStatement>,
  @as("NotStatement") notStatement: option<notStatement>,
  @as("OrStatement") orStatement: option<orStatement>,
  @as("AndStatement") andStatement: option<andStatement>,
  @as("RateBasedStatement") rateBasedStatement: option<rateBasedStatement>,
  @as("RegexPatternSetReferenceStatement")
  regexPatternSetReferenceStatement: option<regexPatternSetReferenceStatement>,
  @as("IPSetReferenceStatement") ipsetReferenceStatement: option<ipsetReferenceStatement>,
  @as("RuleGroupReferenceStatement")
  ruleGroupReferenceStatement: option<ruleGroupReferenceStatement>,
  @as("GeoMatchStatement") geoMatchStatement: option<geoMatchStatement>,
  @as("SizeConstraintStatement") sizeConstraintStatement: option<sizeConstraintStatement>,
  @as("XssMatchStatement") xssMatchStatement: option<xssMatchStatement>,
  @as("SqliMatchStatement") sqliMatchStatement: option<sqliMatchStatement>,
  @as("ByteMatchStatement") byteMatchStatement: option<byteMatchStatement>,
}
and rateBasedStatement = {
  @as("ForwardedIPConfig") forwardedIPConfig: option<forwardedIPConfig>,
  @as("ScopeDownStatement") scopeDownStatement: option<statement>,
  @as("AggregateKeyType") aggregateKeyType: rateBasedStatementAggregateKeyType,
  @as("Limit") limit: rateLimit,
}
and orStatement = {@as("Statements") statements: statements}
and statements = array<statement>
and notStatement = {@as("Statement") statement: statement}
and managedRuleGroupStatement = {
  @as("ScopeDownStatement") scopeDownStatement: option<statement>,
  @as("ExcludedRules") excludedRules: option<excludedRules>,
  @as("Name") name: entityName,
  @as("VendorName") vendorName: vendorName,
}
and andStatement = {@as("Statements") statements: statements}
type rule = {
  @as("VisibilityConfig") visibilityConfig: visibilityConfig,
  @as("RuleLabels") ruleLabels: option<labels>,
  @as("OverrideAction") overrideAction: option<overrideAction>,
  @as("Action") action: option<ruleAction>,
  @as("Statement") statement: statement,
  @as("Priority") priority: rulePriority,
  @as("Name") name: entityName,
}
type firewallManagerStatement = {
  @as("RuleGroupReferenceStatement")
  ruleGroupReferenceStatement: option<ruleGroupReferenceStatement>,
  @as("ManagedRuleGroupStatement") managedRuleGroupStatement: option<managedRuleGroupStatement>,
}
type rules = array<rule>
type firewallManagerRuleGroup = {
  @as("VisibilityConfig") visibilityConfig: visibilityConfig,
  @as("OverrideAction") overrideAction: overrideAction,
  @as("FirewallManagerStatement") firewallManagerStatement: firewallManagerStatement,
  @as("Priority") priority: rulePriority,
  @as("Name") name: entityName,
}
type ruleGroup = {
  @as("ConsumedLabels") consumedLabels: option<labelSummaries>,
  @as("AvailableLabels") availableLabels: option<labelSummaries>,
  @as("CustomResponseBodies") customResponseBodies: option<customResponseBodies>,
  @as("LabelNamespace") labelNamespace: option<labelName>,
  @as("VisibilityConfig") visibilityConfig: visibilityConfig,
  @as("Rules") rules: option<rules>,
  @as("Description") description: option<entityDescription>,
  @as("ARN") arn: resourceArn,
  @as("Capacity") capacity: capacityUnit,
  @as("Id") id: entityId,
  @as("Name") name: entityName,
}
type firewallManagerRuleGroups = array<firewallManagerRuleGroup>
type webACL = {
  @as("CustomResponseBodies") customResponseBodies: option<customResponseBodies>,
  @as("LabelNamespace") labelNamespace: option<labelName>,
  @as("ManagedByFirewallManager") managedByFirewallManager: option<boolean_>,
  @as("PostProcessFirewallManagerRuleGroups")
  postProcessFirewallManagerRuleGroups: option<firewallManagerRuleGroups>,
  @as("PreProcessFirewallManagerRuleGroups")
  preProcessFirewallManagerRuleGroups: option<firewallManagerRuleGroups>,
  @as("Capacity") capacity: option<consumedCapacity>,
  @as("VisibilityConfig") visibilityConfig: visibilityConfig,
  @as("Rules") rules: option<rules>,
  @as("Description") description: option<entityDescription>,
  @as("DefaultAction") defaultAction: defaultAction,
  @as("ARN") arn: resourceArn,
  @as("Id") id: entityId,
  @as("Name") name: entityName,
}

module PutPermissionPolicy = {
  type t
  type request = {
    @as("Policy") policy: policyString,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "PutPermissionPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPermissionPolicy = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceArn}
  type response = {@as("Policy") policy: option<policyString>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetPermissionPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateWebACL = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceArn}
  type response = unit
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DisassociateWebACLCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWebACL = {
  type t
  type request = {
    @as("LockToken") lockToken: lockToken,
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = unit
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DeleteWebACLCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRuleGroup = {
  type t
  type request = {
    @as("LockToken") lockToken: lockToken,
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = unit
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DeleteRuleGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRegexPatternSet = {
  type t
  type request = {
    @as("LockToken") lockToken: lockToken,
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = unit
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DeleteRegexPatternSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePermissionPolicy = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceArn}
  type response = unit
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DeletePermissionPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLoggingConfiguration = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceArn}
  type response = unit
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "DeleteLoggingConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteIPSet = {
  type t
  type request = {
    @as("LockToken") lockToken: lockToken,
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = unit
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "DeleteIPSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFirewallManagerRuleGroups = {
  type t
  type request = {
    @as("WebACLLockToken") webACLLockToken: lockToken,
    @as("WebACLArn") webACLArn: resourceArn,
  }
  type response = {@as("NextWebACLLockToken") nextWebACLLockToken: option<lockToken>}
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "DeleteFirewallManagerRuleGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateWebACL = {
  type t
  type request = {
    @as("ResourceArn") resourceArn: resourceArn,
    @as("WebACLArn") webACLArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "AssociateWebACLCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIPSet = {
  type t
  type request = {
    @as("LockToken") lockToken: lockToken,
    @as("Addresses") addresses: ipaddresses,
    @as("Description") description: option<entityDescription>,
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {@as("NextLockToken") nextLockToken: option<lockToken>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "UpdateIPSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceARN") resourceARN: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourcesForWebACL = {
  type t
  type request = {
    @as("ResourceType") resourceType: option<resourceType>,
    @as("WebACLArn") webACLArn: resourceArn,
  }
  type response = {@as("ResourceArns") resourceArns: option<resourceArns>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListResourcesForWebACLCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRegexPatternSet = {
  type t
  type request = {
    @as("LockToken") lockToken: lockToken,
    @as("RegularExpressionList") regularExpressionList: regularExpressionList,
    @as("Description") description: option<entityDescription>,
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {@as("NextLockToken") nextLockToken: option<lockToken>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "UpdateRegexPatternSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceARN") resourceARN: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWebACLs = {
  type t
  type request = {
    @as("Limit") limit: option<paginationLimit>,
    @as("NextMarker") nextMarker: option<nextMarker>,
    @as("Scope") scope: scope,
  }
  type response = {
    @as("WebACLs") webACLs: option<webACLSummaries>,
    @as("NextMarker") nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListWebACLsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRuleGroups = {
  type t
  type request = {
    @as("Limit") limit: option<paginationLimit>,
    @as("NextMarker") nextMarker: option<nextMarker>,
    @as("Scope") scope: scope,
  }
  type response = {
    @as("RuleGroups") ruleGroups: option<ruleGroupSummaries>,
    @as("NextMarker") nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListRuleGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRegexPatternSets = {
  type t
  type request = {
    @as("Limit") limit: option<paginationLimit>,
    @as("NextMarker") nextMarker: option<nextMarker>,
    @as("Scope") scope: scope,
  }
  type response = {
    @as("RegexPatternSets") regexPatternSets: option<regexPatternSetSummaries>,
    @as("NextMarker") nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListRegexPatternSetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIPSets = {
  type t
  type request = {
    @as("Limit") limit: option<paginationLimit>,
    @as("NextMarker") nextMarker: option<nextMarker>,
    @as("Scope") scope: scope,
  }
  type response = {
    @as("IPSets") ipsets: option<ipsetSummaries>,
    @as("NextMarker") nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListIPSetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAvailableManagedRuleGroups = {
  type t
  type request = {
    @as("Limit") limit: option<paginationLimit>,
    @as("NextMarker") nextMarker: option<nextMarker>,
    @as("Scope") scope: scope,
  }
  type response = {
    @as("ManagedRuleGroups") managedRuleGroups: option<managedRuleGroupSummaries>,
    @as("NextMarker") nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "ListAvailableManagedRuleGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRateBasedStatementManagedKeys = {
  type t
  type request = {
    @as("RuleName") ruleName: entityName,
    @as("WebACLId") webACLId: entityId,
    @as("WebACLName") webACLName: entityName,
    @as("Scope") scope: scope,
  }
  type response = {
    @as("ManagedKeysIPV6") managedKeysIPV6: option<rateBasedStatementManagedKeysIPSet>,
    @as("ManagedKeysIPV4") managedKeysIPV4: option<rateBasedStatementManagedKeysIPSet>,
  }
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "GetRateBasedStatementManagedKeysCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIPSet = {
  type t
  type request = {
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {
    @as("LockToken") lockToken: option<lockToken>,
    @as("IPSet") ipset: option<ipset>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetIPSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRegexPatternSet = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("RegularExpressionList") regularExpressionList: regularExpressionList,
    @as("Description") description: option<entityDescription>,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {@as("Summary") summary: option<regexPatternSetSummary>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "CreateRegexPatternSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIPSet = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Addresses") addresses: ipaddresses,
    @as("IPAddressVersion") ipaddressVersion: ipaddressVersion,
    @as("Description") description: option<entityDescription>,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {@as("Summary") summary: option<ipsetSummary>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "CreateIPSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @as("ResourceARN") resourceARN: resourceArn,
    @as("Limit") limit: option<paginationLimit>,
    @as("NextMarker") nextMarker: option<nextMarker>,
  }
  type response = {
    @as("TagInfoForResource") tagInfoForResource: option<tagInfoForResource>,
    @as("NextMarker") nextMarker: option<nextMarker>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRegexPatternSet = {
  type t
  type request = {
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {
    @as("LockToken") lockToken: option<lockToken>,
    @as("RegexPatternSet") regexPatternSet: option<regexPatternSet>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetRegexPatternSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSampledRequests = {
  type t
  type request = {
    @as("MaxItems") maxItems: listMaxItems,
    @as("TimeWindow") timeWindow: timeWindow,
    @as("Scope") scope: scope,
    @as("RuleMetricName") ruleMetricName: metricName,
    @as("WebAclArn") webAclArn: resourceArn,
  }
  type response = {
    @as("TimeWindow") timeWindow: option<timeWindow>,
    @as("PopulationSize") populationSize: option<populationSize>,
    @as("SampledRequests") sampledRequests: option<sampledHTTPRequests>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetSampledRequestsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutLoggingConfiguration = {
  type t
  type request = {@as("LoggingConfiguration") loggingConfiguration: loggingConfiguration}
  type response = {@as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>}
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "PutLoggingConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLoggingConfiguration = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceArn}
  type response = {@as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>}
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "GetLoggingConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeManagedRuleGroup = {
  type t
  type request = {
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
    @as("VendorName") vendorName: vendorName,
  }
  type response = {
    @as("ConsumedLabels") consumedLabels: option<labelSummaries>,
    @as("AvailableLabels") availableLabels: option<labelSummaries>,
    @as("LabelNamespace") labelNamespace: option<labelName>,
    @as("Rules") rules: option<ruleSummaries>,
    @as("Capacity") capacity: option<capacityUnit>,
  }
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "DescribeManagedRuleGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLoggingConfigurations = {
  type t
  type request = {
    @as("Limit") limit: option<paginationLimit>,
    @as("NextMarker") nextMarker: option<nextMarker>,
    @as("Scope") scope: option<scope>,
  }
  type response = {
    @as("NextMarker") nextMarker: option<nextMarker>,
    @as("LoggingConfigurations") loggingConfigurations: option<loggingConfigurations>,
  }
  @module("@aws-sdk/client-wafv2") @new
  external new: request => t = "ListLoggingConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWebACL = {
  type t
  type request = {
    @as("CustomResponseBodies") customResponseBodies: option<customResponseBodies>,
    @as("LockToken") lockToken: lockToken,
    @as("VisibilityConfig") visibilityConfig: visibilityConfig,
    @as("Rules") rules: option<rules>,
    @as("Description") description: option<entityDescription>,
    @as("DefaultAction") defaultAction: defaultAction,
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {@as("NextLockToken") nextLockToken: option<lockToken>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "UpdateWebACLCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRuleGroup = {
  type t
  type request = {
    @as("CustomResponseBodies") customResponseBodies: option<customResponseBodies>,
    @as("LockToken") lockToken: lockToken,
    @as("VisibilityConfig") visibilityConfig: visibilityConfig,
    @as("Rules") rules: option<rules>,
    @as("Description") description: option<entityDescription>,
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {@as("NextLockToken") nextLockToken: option<lockToken>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "UpdateRuleGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWebACL = {
  type t
  type request = {
    @as("CustomResponseBodies") customResponseBodies: option<customResponseBodies>,
    @as("Tags") tags: option<tagList_>,
    @as("VisibilityConfig") visibilityConfig: visibilityConfig,
    @as("Rules") rules: option<rules>,
    @as("Description") description: option<entityDescription>,
    @as("DefaultAction") defaultAction: defaultAction,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {@as("Summary") summary: option<webACLSummary>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "CreateWebACLCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRuleGroup = {
  type t
  type request = {
    @as("CustomResponseBodies") customResponseBodies: option<customResponseBodies>,
    @as("Tags") tags: option<tagList_>,
    @as("VisibilityConfig") visibilityConfig: visibilityConfig,
    @as("Rules") rules: option<rules>,
    @as("Description") description: option<entityDescription>,
    @as("Capacity") capacity: capacityUnit,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {@as("Summary") summary: option<ruleGroupSummary>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "CreateRuleGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CheckCapacity = {
  type t
  type request = {
    @as("Rules") rules: rules,
    @as("Scope") scope: scope,
  }
  type response = {@as("Capacity") capacity: option<consumedCapacity>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "CheckCapacityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRuleGroup = {
  type t
  type request = {
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {
    @as("LockToken") lockToken: option<lockToken>,
    @as("RuleGroup") ruleGroup: option<ruleGroup>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetRuleGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWebACLForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceArn}
  type response = {@as("WebACL") webACL: option<webACL>}
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetWebACLForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWebACL = {
  type t
  type request = {
    @as("Id") id: entityId,
    @as("Scope") scope: scope,
    @as("Name") name: entityName,
  }
  type response = {
    @as("LockToken") lockToken: option<lockToken>,
    @as("WebACL") webACL: option<webACL>,
  }
  @module("@aws-sdk/client-wafv2") @new external new: request => t = "GetWebACLCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
