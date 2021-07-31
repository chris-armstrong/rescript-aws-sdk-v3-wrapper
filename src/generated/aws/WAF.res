type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-waf") @new external createClient: unit => awsServiceClient = "WAFClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type errorMessage = string
type wafRuleType = [@as("GROUP") #GROUP | @as("RATE_BASED") #RATE_BASED | @as("REGULAR") #REGULAR]
type wafOverrideActionType = [@as("COUNT") #COUNT | @as("NONE") #NONE]
type wafActionType = [@as("COUNT") #COUNT | @as("ALLOW") #ALLOW | @as("BLOCK") #BLOCK]
type uristring = string
type timestamp_ = Js.Date.t;
type textTransformation = [@as("URL_DECODE") #URL_DECODE | @as("CMD_LINE") #CMD_LINE | @as("LOWERCASE") #LOWERCASE | @as("HTML_ENTITY_DECODE") #HTML_ENTITY_DECODE | @as("COMPRESS_WHITE_SPACE") #COMPRESS_WHITE_SPACE | @as("NONE") #NONE]
type tagValue = string
type tagKey = string
type size = float
type sampleWeight = float
type s3ObjectUrl = string
type s3BucketName = string
type rulePriority = int
type resourceName = string
type resourceId = string
type resourceArn = string
type regexPatternString = string
type rateLimit = float
type rateKey = [@as("IP") #IP]
type predicateType = [@as("RegexMatch") #RegexMatch | @as("XssMatch") #XssMatch | @as("SizeConstraint") #SizeConstraint | @as("GeoMatch") #GeoMatch | @as("SqlInjectionMatch") #SqlInjectionMatch | @as("ByteMatch") #ByteMatch | @as("IPMatch") #IPMatch]
type positionalConstraint = [@as("CONTAINS_WORD") #CONTAINS_WORD | @as("CONTAINS") #CONTAINS | @as("ENDS_WITH") #ENDS_WITH | @as("STARTS_WITH") #STARTS_WITH | @as("EXACTLY") #EXACTLY]
type populationSize = float
type policyString = string
type parameterExceptionReason = [@as("INVALID_TAG_KEY") #INVALID_TAG_KEY | @as("ILLEGAL_ARGUMENT") #ILLEGAL_ARGUMENT | @as("ILLEGAL_COMBINATION") #ILLEGAL_COMBINATION | @as("INVALID_OPTION") #INVALID_OPTION]
type parameterExceptionParameter = string
type parameterExceptionField = [@as("TAG_KEYS") #TAG_KEYS | @as("TAGS") #TAGS | @as("RESOURCE_ARN") #RESOURCE_ARN | @as("NEXT_MARKER") #NEXT_MARKER | @as("RULE_TYPE") #RULE_TYPE | @as("RATE_KEY") #RATE_KEY | @as("GEO_MATCH_LOCATION_VALUE") #GEO_MATCH_LOCATION_VALUE | @as("GEO_MATCH_LOCATION_TYPE") #GEO_MATCH_LOCATION_TYPE | @as("SIZE_CONSTRAINT_COMPARISON_OPERATOR") #SIZE_CONSTRAINT_COMPARISON_OPERATOR | @as("BYTE_MATCH_POSITIONAL_CONSTRAINT") #BYTE_MATCH_POSITIONAL_CONSTRAINT | @as("BYTE_MATCH_TEXT_TRANSFORMATION") #BYTE_MATCH_TEXT_TRANSFORMATION | @as("SQL_INJECTION_MATCH_FIELD_TYPE") #SQL_INJECTION_MATCH_FIELD_TYPE | @as("BYTE_MATCH_FIELD_TYPE") #BYTE_MATCH_FIELD_TYPE | @as("IPSET_TYPE") #IPSET_TYPE | @as("PREDICATE_TYPE") #PREDICATE_TYPE | @as("WAF_OVERRIDE_ACTION") #WAF_OVERRIDE_ACTION | @as("WAF_ACTION") #WAF_ACTION | @as("CHANGE_ACTION") #CHANGE_ACTION]
type paginationLimit = int
type nextMarker = string
type negated = bool
type migrationErrorType = [@as("S3_INTERNAL_ERROR") #S3_INTERNAL_ERROR | @as("S3_BUCKET_INVALID_REGION") #S3_BUCKET_INVALID_REGION | @as("S3_BUCKET_NOT_FOUND") #S3_BUCKET_NOT_FOUND | @as("S3_BUCKET_NOT_ACCESSIBLE") #S3_BUCKET_NOT_ACCESSIBLE | @as("S3_BUCKET_NO_PERMISSION") #S3_BUCKET_NO_PERMISSION | @as("ENTITY_NOT_FOUND") #ENTITY_NOT_FOUND | @as("ENTITY_NOT_SUPPORTED") #ENTITY_NOT_SUPPORTED]
type metricName = string
type matchFieldType = [@as("ALL_QUERY_ARGS") #ALL_QUERY_ARGS | @as("SINGLE_QUERY_ARG") #SINGLE_QUERY_ARG | @as("BODY") #BODY | @as("METHOD") #METHOD | @as("HEADER") #HEADER | @as("QUERY_STRING") #QUERY_STRING | @as("URI") #URI]
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
type geoMatchConstraintValue = [@as("ZW") #ZW | @as("ZM") #ZM | @as("YE") #YE | @as("EH") #EH | @as("WF") #WF | @as("VI") #VI | @as("VG") #VG | @as("VN") #VN | @as("VE") #VE | @as("VU") #VU | @as("UZ") #UZ | @as("UY") #UY | @as("UM") #UM | @as("US") #US | @as("GB") #GB | @as("AE") #AE | @as("UA") #UA | @as("UG") #UG | @as("TV") #TV | @as("TC") #TC | @as("TM") #TM | @as("TR") #TR | @as("TN") #TN | @as("TT") #TT | @as("TO") #TO | @as("TK") #TK | @as("TG") #TG | @as("TL") #TL | @as("TH") #TH | @as("TZ") #TZ | @as("TJ") #TJ | @as("TW") #TW | @as("SY") #SY | @as("CH") #CH | @as("SE") #SE | @as("SZ") #SZ | @as("SJ") #SJ | @as("SR") #SR | @as("SD") #SD | @as("LK") #LK | @as("ES") #ES | @as("SS") #SS | @as("GS") #GS | @as("ZA") #ZA | @as("SO") #SO | @as("SB") #SB | @as("SI") #SI | @as("SK") #SK | @as("SX") #SX | @as("SG") #SG | @as("SL") #SL | @as("SC") #SC | @as("RS") #RS | @as("SN") #SN | @as("SA") #SA | @as("ST") #ST | @as("SM") #SM | @as("WS") #WS | @as("VC") #VC | @as("PM") #PM | @as("MF") #MF | @as("LC") #LC | @as("KN") #KN | @as("SH") #SH | @as("BL") #BL | @as("RW") #RW | @as("RU") #RU | @as("RO") #RO | @as("RE") #RE | @as("QA") #QA | @as("PR") #PR | @as("PT") #PT | @as("PL") #PL | @as("PN") #PN | @as("PH") #PH | @as("PE") #PE | @as("PY") #PY | @as("PG") #PG | @as("PA") #PA | @as("PS") #PS | @as("PW") #PW | @as("PK") #PK | @as("OM") #OM | @as("NO") #NO | @as("MP") #MP | @as("NF") #NF | @as("NU") #NU | @as("NG") #NG | @as("NE") #NE | @as("NI") #NI | @as("NZ") #NZ | @as("NC") #NC | @as("NL") #NL | @as("NP") #NP | @as("NR") #NR | @as("NA") #NA | @as("MM") #MM | @as("MZ") #MZ | @as("MA") #MA | @as("MS") #MS | @as("ME") #ME | @as("MN") #MN | @as("MC") #MC | @as("MD") #MD | @as("FM") #FM | @as("MX") #MX | @as("YT") #YT | @as("MU") #MU | @as("MR") #MR | @as("MQ") #MQ | @as("MH") #MH | @as("MT") #MT | @as("ML") #ML | @as("MV") #MV | @as("MY") #MY | @as("MW") #MW | @as("MG") #MG | @as("MK") #MK | @as("MO") #MO | @as("LU") #LU | @as("LT") #LT | @as("LI") #LI | @as("LY") #LY | @as("LR") #LR | @as("LS") #LS | @as("LB") #LB | @as("LV") #LV | @as("LA") #LA | @as("KG") #KG | @as("KW") #KW | @as("KR") #KR | @as("KP") #KP | @as("KI") #KI | @as("KE") #KE | @as("KZ") #KZ | @as("JO") #JO | @as("JE") #JE | @as("JP") #JP | @as("JM") #JM | @as("IT") #IT | @as("IL") #IL | @as("IM") #IM | @as("IE") #IE | @as("IQ") #IQ | @as("IR") #IR | @as("ID") #ID | @as("IN") #IN | @as("IS") #IS | @as("HU") #HU | @as("HK") #HK | @as("HN") #HN | @as("VA") #VA | @as("HM") #HM | @as("HT") #HT | @as("GY") #GY | @as("GW") #GW | @as("GN") #GN | @as("GG") #GG | @as("GT") #GT | @as("GU") #GU | @as("GP") #GP | @as("GD") #GD | @as("GL") #GL | @as("GR") #GR | @as("GI") #GI | @as("GH") #GH | @as("DE") #DE | @as("GE") #GE | @as("GM") #GM | @as("GA") #GA | @as("TF") #TF | @as("PF") #PF | @as("GF") #GF | @as("FR") #FR | @as("FI") #FI | @as("FJ") #FJ | @as("FO") #FO | @as("FK") #FK | @as("ET") #ET | @as("EE") #EE | @as("ER") #ER | @as("GQ") #GQ | @as("SV") #SV | @as("EG") #EG | @as("EC") #EC | @as("DO") #DO | @as("DM") #DM | @as("DJ") #DJ | @as("DK") #DK | @as("CZ") #CZ | @as("CY") #CY | @as("CW") #CW | @as("CU") #CU | @as("HR") #HR | @as("CI") #CI | @as("CR") #CR | @as("CK") #CK | @as("CD") #CD | @as("CG") #CG | @as("KM") #KM | @as("CO") #CO | @as("CC") #CC | @as("CX") #CX | @as("CN") #CN | @as("CL") #CL | @as("TD") #TD | @as("CF") #CF | @as("KY") #KY | @as("CV") #CV | @as("CA") #CA | @as("CM") #CM | @as("KH") #KH | @as("BI") #BI | @as("BF") #BF | @as("BG") #BG | @as("BN") #BN | @as("IO") #IO | @as("BR") #BR | @as("BV") #BV | @as("BW") #BW | @as("BA") #BA | @as("BQ") #BQ | @as("BO") #BO | @as("BT") #BT | @as("BM") #BM | @as("BJ") #BJ | @as("BZ") #BZ | @as("BE") #BE | @as("BY") #BY | @as("BB") #BB | @as("BD") #BD | @as("BH") #BH | @as("BS") #BS | @as("AZ") #AZ | @as("AT") #AT | @as("AU") #AU | @as("AW") #AW | @as("AM") #AM | @as("AR") #AR | @as("AG") #AG | @as("AQ") #AQ | @as("AI") #AI | @as("AO") #AO | @as("AD") #AD | @as("AS") #AS | @as("DZ") #DZ | @as("AL") #AL | @as("AX") #AX | @as("AF") #AF]
type geoMatchConstraintType = [@as("Country") #Country]
type errorReason = string
type country = string
type comparisonOperator = [@as("GT") #GT | @as("GE") #GE | @as("LT") #LT | @as("LE") #LE | @as("NE") #NE | @as("EQ") #EQ]
type changeTokenStatus = [@as("INSYNC") #INSYNC | @as("PENDING") #PENDING | @as("PROVISIONED") #PROVISIONED]
type changeToken = string
type changeAction = [@as("DELETE") #DELETE | @as("INSERT") #INSERT]
type byteMatchTargetString = NodeJs.Buffer.t
type action = string
type xssMatchSetSummary = {
@as("Name") name: resourceName,
  @as("XssMatchSetId") xssMatchSetId: resourceId
}
type webACLSummary = {
@as("Name") name: resourceName,
  @as("WebACLId") webACLId: resourceId
}
type wafOverrideAction = {
@as("Type") type_: wafOverrideActionType
}
type wafAction = {
@as("Type") type_: wafActionType
}
type timeWindow = {
@as("EndTime") endTime: timestamp_,
  @as("StartTime") startTime: timestamp_
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
  @as("Key") key: tagKey
}
type subscribedRuleGroupSummary = {
@as("MetricName") metricName: metricName,
  @as("Name") name: resourceName,
  @as("RuleGroupId") ruleGroupId: resourceId
}
type sqlInjectionMatchSetSummary = {
@as("Name") name: resourceName,
  @as("SqlInjectionMatchSetId") sqlInjectionMatchSetId: resourceId
}
type sizeConstraintSetSummary = {
@as("Name") name: resourceName,
  @as("SizeConstraintSetId") sizeConstraintSetId: resourceId
}
type ruleSummary = {
@as("Name") name: resourceName,
  @as("RuleId") ruleId: resourceId
}
type ruleGroupSummary = {
@as("Name") name: resourceName,
  @as("RuleGroupId") ruleGroupId: resourceId
}
type ruleGroup = {
@as("MetricName") metricName: option<metricName>,
  @as("Name") name: option<resourceName>,
  @as("RuleGroupId") ruleGroupId: resourceId
}
type regexPatternStrings = array<regexPatternString>
type regexPatternSetUpdate = {
@as("RegexPatternString") regexPatternString: regexPatternString,
  @as("Action") action: changeAction
}
type regexPatternSetSummary = {
@as("Name") name: resourceName,
  @as("RegexPatternSetId") regexPatternSetId: resourceId
}
type regexMatchSetSummary = {
@as("Name") name: resourceName,
  @as("RegexMatchSetId") regexMatchSetId: resourceId
}
type predicate = {
@as("DataId") dataId: resourceId,
  @as("Type") type_: predicateType,
  @as("Negated") negated: negated
}
type managedKeys = array<managedKey>
type logDestinationConfigs = array<resourceArn>
type ipsetSummary = {
@as("Name") name: resourceName,
  @as("IPSetId") ipsetId: resourceId
}
type ipsetDescriptor = {
@as("Value") value: ipsetDescriptorValue,
  @as("Type") type_: ipsetDescriptorType
}
type httpheader = {
@as("Value") value: option<headerValue>,
  @as("Name") name: option<headerName>
}
type geoMatchSetSummary = {
@as("Name") name: resourceName,
  @as("GeoMatchSetId") geoMatchSetId: resourceId
}
type geoMatchConstraint = {
@as("Value") value: geoMatchConstraintValue,
  @as("Type") type_: geoMatchConstraintType
}
type fieldToMatch = {
@as("Data") data: option<matchFieldData>,
  @as("Type") type_: matchFieldType
}
type excludedRule = {
@as("RuleId") ruleId: resourceId
}
type byteMatchSetSummary = {
@as("Name") name: resourceName,
  @as("ByteMatchSetId") byteMatchSetId: resourceId
}
type xssMatchTuple = {
@as("TextTransformation") textTransformation: textTransformation,
  @as("FieldToMatch") fieldToMatch: fieldToMatch
}
type xssMatchSetSummaries = array<xssMatchSetSummary>
type webACLSummaries = array<webACLSummary>
type tagList_ = array<tag>
type subscribedRuleGroupSummaries = array<subscribedRuleGroupSummary>
type sqlInjectionMatchTuple = {
@as("TextTransformation") textTransformation: textTransformation,
  @as("FieldToMatch") fieldToMatch: fieldToMatch
}
type sqlInjectionMatchSetSummaries = array<sqlInjectionMatchSetSummary>
type sizeConstraintSetSummaries = array<sizeConstraintSetSummary>
type sizeConstraint = {
@as("Size") size: size,
  @as("ComparisonOperator") comparisonOperator: comparisonOperator,
  @as("TextTransformation") textTransformation: textTransformation,
  @as("FieldToMatch") fieldToMatch: fieldToMatch
}
type ruleUpdate = {
@as("Predicate") predicate: predicate,
  @as("Action") action: changeAction
}
type ruleSummaries = array<ruleSummary>
type ruleGroupSummaries = array<ruleGroupSummary>
type regexPatternSetUpdates = array<regexPatternSetUpdate>
type regexPatternSetSummaries = array<regexPatternSetSummary>
type regexPatternSet = {
@as("RegexPatternStrings") regexPatternStrings: regexPatternStrings,
  @as("Name") name: option<resourceName>,
  @as("RegexPatternSetId") regexPatternSetId: resourceId
}
type regexMatchTuple = {
@as("RegexPatternSetId") regexPatternSetId: resourceId,
  @as("TextTransformation") textTransformation: textTransformation,
  @as("FieldToMatch") fieldToMatch: fieldToMatch
}
type regexMatchSetSummaries = array<regexMatchSetSummary>
type redactedFields = array<fieldToMatch>
type predicates = array<predicate>
type ipsetUpdate = {
@as("IPSetDescriptor") ipsetDescriptor: ipsetDescriptor,
  @as("Action") action: changeAction
}
type ipsetSummaries = array<ipsetSummary>
type ipsetDescriptors = array<ipsetDescriptor>
type httpheaders = array<httpheader>
type geoMatchSetUpdate = {
@as("GeoMatchConstraint") geoMatchConstraint: geoMatchConstraint,
  @as("Action") action: changeAction
}
type geoMatchSetSummaries = array<geoMatchSetSummary>
type geoMatchConstraints = array<geoMatchConstraint>
type excludedRules = array<excludedRule>
type byteMatchTuple = {
@as("PositionalConstraint") positionalConstraint: positionalConstraint,
  @as("TextTransformation") textTransformation: textTransformation,
  @as("TargetString") targetString: byteMatchTargetString,
  @as("FieldToMatch") fieldToMatch: fieldToMatch
}
type byteMatchSetSummaries = array<byteMatchSetSummary>
type xssMatchTuples = array<xssMatchTuple>
type xssMatchSetUpdate = {
@as("XssMatchTuple") xssMatchTuple: xssMatchTuple,
  @as("Action") action: changeAction
}
type tagInfoForResource = {
@as("TagList") tagList_: option<tagList_>,
  @as("ResourceARN") resourceARN: option<resourceArn>
}
type sqlInjectionMatchTuples = array<sqlInjectionMatchTuple>
type sqlInjectionMatchSetUpdate = {
@as("SqlInjectionMatchTuple") sqlInjectionMatchTuple: sqlInjectionMatchTuple,
  @as("Action") action: changeAction
}
type sizeConstraints = array<sizeConstraint>
type sizeConstraintSetUpdate = {
@as("SizeConstraint") sizeConstraint: sizeConstraint,
  @as("Action") action: changeAction
}
type ruleUpdates = array<ruleUpdate>
type rule = {
@as("Predicates") predicates: predicates,
  @as("MetricName") metricName: option<metricName>,
  @as("Name") name: option<resourceName>,
  @as("RuleId") ruleId: resourceId
}
type regexMatchTuples = array<regexMatchTuple>
type regexMatchSetUpdate = {
@as("RegexMatchTuple") regexMatchTuple: regexMatchTuple,
  @as("Action") action: changeAction
}
type rateBasedRule = {
@as("RateLimit") rateLimit: rateLimit,
  @as("RateKey") rateKey: rateKey,
  @as("MatchPredicates") matchPredicates: predicates,
  @as("MetricName") metricName: option<metricName>,
  @as("Name") name: option<resourceName>,
  @as("RuleId") ruleId: resourceId
}
type loggingConfiguration = {
@as("RedactedFields") redactedFields: option<redactedFields>,
  @as("LogDestinationConfigs") logDestinationConfigs: logDestinationConfigs,
  @as("ResourceArn") resourceArn: resourceArn
}
type ipsetUpdates = array<ipsetUpdate>
type ipset = {
@as("IPSetDescriptors") ipsetDescriptors: ipsetDescriptors,
  @as("Name") name: option<resourceName>,
  @as("IPSetId") ipsetId: resourceId
}
type httprequest = {
@as("Headers") headers: option<httpheaders>,
  @as("HTTPVersion") httpversion: option<httpversion>,
  @as("Method") method: option<httpmethod>,
  @as("URI") uri: option<uristring>,
  @as("Country") country: option<country>,
  @as("ClientIP") clientIP: option<ipstring>
}
type geoMatchSetUpdates = array<geoMatchSetUpdate>
type geoMatchSet = {
@as("GeoMatchConstraints") geoMatchConstraints: geoMatchConstraints,
  @as("Name") name: option<resourceName>,
  @as("GeoMatchSetId") geoMatchSetId: resourceId
}
type byteMatchTuples = array<byteMatchTuple>
type byteMatchSetUpdate = {
@as("ByteMatchTuple") byteMatchTuple: byteMatchTuple,
  @as("Action") action: changeAction
}
type activatedRule = {
@as("ExcludedRules") excludedRules: option<excludedRules>,
  @as("Type") type_: option<wafRuleType>,
  @as("OverrideAction") overrideAction: option<wafOverrideAction>,
  @as("Action") action: option<wafAction>,
  @as("RuleId") ruleId: resourceId,
  @as("Priority") priority: rulePriority
}
type xssMatchSetUpdates = array<xssMatchSetUpdate>
type xssMatchSet = {
@as("XssMatchTuples") xssMatchTuples: xssMatchTuples,
  @as("Name") name: option<resourceName>,
  @as("XssMatchSetId") xssMatchSetId: resourceId
}
type webACLUpdate = {
@as("ActivatedRule") activatedRule: activatedRule,
  @as("Action") action: changeAction
}
type sqlInjectionMatchSetUpdates = array<sqlInjectionMatchSetUpdate>
type sqlInjectionMatchSet = {
@as("SqlInjectionMatchTuples") sqlInjectionMatchTuples: sqlInjectionMatchTuples,
  @as("Name") name: option<resourceName>,
  @as("SqlInjectionMatchSetId") sqlInjectionMatchSetId: resourceId
}
type sizeConstraintSetUpdates = array<sizeConstraintSetUpdate>
type sizeConstraintSet = {
@as("SizeConstraints") sizeConstraints: sizeConstraints,
  @as("Name") name: option<resourceName>,
  @as("SizeConstraintSetId") sizeConstraintSetId: resourceId
}
type sampledHTTPRequest = {
@as("RuleWithinRuleGroup") ruleWithinRuleGroup: option<resourceId>,
  @as("Action") action: option<action>,
  @as("Timestamp") timestamp_: option<timestamp_>,
  @as("Weight") weight: sampleWeight,
  @as("Request") request: httprequest
}
type ruleGroupUpdate = {
@as("ActivatedRule") activatedRule: activatedRule,
  @as("Action") action: changeAction
}
type regexMatchSetUpdates = array<regexMatchSetUpdate>
type regexMatchSet = {
@as("RegexMatchTuples") regexMatchTuples: option<regexMatchTuples>,
  @as("Name") name: option<resourceName>,
  @as("RegexMatchSetId") regexMatchSetId: option<resourceId>
}
type loggingConfigurations = array<loggingConfiguration>
type byteMatchSetUpdates = array<byteMatchSetUpdate>
type byteMatchSet = {
@as("ByteMatchTuples") byteMatchTuples: byteMatchTuples,
  @as("Name") name: option<resourceName>,
  @as("ByteMatchSetId") byteMatchSetId: resourceId
}
type activatedRules = array<activatedRule>
type webACLUpdates = array<webACLUpdate>
type webACL = {
@as("WebACLArn") webACLArn: option<resourceArn>,
  @as("Rules") rules: activatedRules,
  @as("DefaultAction") defaultAction: wafAction,
  @as("MetricName") metricName: option<metricName>,
  @as("Name") name: option<resourceName>,
  @as("WebACLId") webACLId: resourceId
}
type sampledHTTPRequests = array<sampledHTTPRequest>
type ruleGroupUpdates = array<ruleGroupUpdate>

module PutPermissionPolicy = {
  type t;
  type request = {
@as("Policy") policy: policyString,
  @as("ResourceArn") resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "PutPermissionPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPermissionPolicy = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: resourceArn
}
  type response = {
@as("Policy") policy: option<policyString>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetPermissionPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetChangeTokenStatus = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken
}
  type response = {
@as("ChangeTokenStatus") changeTokenStatus: option<changeTokenStatus>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetChangeTokenStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetChangeToken = {
  type t;
  type request = unit
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetChangeTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteXssMatchSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("XssMatchSetId") xssMatchSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteXssMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteWebACL = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("WebACLId") webACLId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteWebACLCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSqlInjectionMatchSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("SqlInjectionMatchSetId") sqlInjectionMatchSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteSqlInjectionMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSizeConstraintSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("SizeConstraintSetId") sizeConstraintSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteSizeConstraintSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRuleGroup = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("RuleGroupId") ruleGroupId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteRuleGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRule = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("RuleId") ruleId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRegexPatternSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("RegexPatternSetId") regexPatternSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteRegexPatternSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRegexMatchSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("RegexMatchSetId") regexMatchSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteRegexMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRateBasedRule = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("RuleId") ruleId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteRateBasedRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePermissionPolicy = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeletePermissionPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLoggingConfiguration = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteLoggingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteIPSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("IPSetId") ipsetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteIPSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteGeoMatchSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("GeoMatchSetId") geoMatchSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteGeoMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteByteMatchSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("ByteMatchSetId") byteMatchSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "DeleteByteMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateWebACLMigrationStack = {
  type t;
  type request = {
@as("IgnoreUnsupportedType") ignoreUnsupportedType: ignoreUnsupportedType,
  @as("S3BucketName") s3BucketName: s3BucketName,
  @as("WebACLId") webACLId: resourceId
}
  type response = {
@as("S3ObjectUrl") s3ObjectUrl: s3ObjectUrl
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateWebACLMigrationStackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
  @as("ResourceARN") resourceARN: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRuleGroup = {
  type t;
  type request = {
@as("RuleGroupId") ruleGroupId: resourceId
}
  type response = {
@as("RuleGroup") ruleGroup: option<ruleGroup>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetRuleGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRateBasedRuleManagedKeys = {
  type t;
  type request = {
@as("NextMarker") nextMarker: option<nextMarker>,
  @as("RuleId") ruleId: resourceId
}
  type response = {
@as("NextMarker") nextMarker: option<nextMarker>,
  @as("ManagedKeys") managedKeys: option<managedKeys>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetRateBasedRuleManagedKeysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRegexPatternSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("Updates") updates: regexPatternSetUpdates,
  @as("RegexPatternSetId") regexPatternSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateRegexPatternSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
  @as("ResourceARN") resourceARN: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListXssMatchSets = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("XssMatchSets") xssMatchSets: option<xssMatchSetSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListXssMatchSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListWebACLs = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("WebACLs") webACLs: option<webACLSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListWebACLsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSubscribedRuleGroups = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("RuleGroups") ruleGroups: option<subscribedRuleGroupSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListSubscribedRuleGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSqlInjectionMatchSets = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("SqlInjectionMatchSets") sqlInjectionMatchSets: option<sqlInjectionMatchSetSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListSqlInjectionMatchSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSizeConstraintSets = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("SizeConstraintSets") sizeConstraintSets: option<sizeConstraintSetSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListSizeConstraintSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRules = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("Rules") rules: option<ruleSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRuleGroups = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("RuleGroups") ruleGroups: option<ruleGroupSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListRuleGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRegexPatternSets = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("RegexPatternSets") regexPatternSets: option<regexPatternSetSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListRegexPatternSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRegexMatchSets = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("RegexMatchSets") regexMatchSets: option<regexMatchSetSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListRegexMatchSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRateBasedRules = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("Rules") rules: option<ruleSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListRateBasedRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIPSets = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("IPSets") ipsets: option<ipsetSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListIPSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGeoMatchSets = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("GeoMatchSets") geoMatchSets: option<geoMatchSetSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListGeoMatchSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListByteMatchSets = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("ByteMatchSets") byteMatchSets: option<byteMatchSetSummaries>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListByteMatchSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRegexPatternSet = {
  type t;
  type request = {
@as("RegexPatternSetId") regexPatternSetId: resourceId
}
  type response = {
@as("RegexPatternSet") regexPatternSet: option<regexPatternSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetRegexPatternSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRuleGroup = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("ChangeToken") changeToken: changeToken,
  @as("MetricName") metricName: metricName,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("RuleGroup") ruleGroup: option<ruleGroup>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateRuleGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRegexPatternSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("RegexPatternSet") regexPatternSet: option<regexPatternSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateRegexPatternSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRule = {
  type t;
  type request = {
@as("Updates") updates: ruleUpdates,
  @as("ChangeToken") changeToken: changeToken,
  @as("RuleId") ruleId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRateBasedRule = {
  type t;
  type request = {
@as("RateLimit") rateLimit: rateLimit,
  @as("Updates") updates: ruleUpdates,
  @as("ChangeToken") changeToken: changeToken,
  @as("RuleId") ruleId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateRateBasedRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateIPSet = {
  type t;
  type request = {
@as("Updates") updates: ipsetUpdates,
  @as("ChangeToken") changeToken: changeToken,
  @as("IPSetId") ipsetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateIPSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateGeoMatchSet = {
  type t;
  type request = {
@as("Updates") updates: geoMatchSetUpdates,
  @as("ChangeToken") changeToken: changeToken,
  @as("GeoMatchSetId") geoMatchSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateGeoMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutLoggingConfiguration = {
  type t;
  type request = {
@as("LoggingConfiguration") loggingConfiguration: loggingConfiguration
}
  type response = {
@as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "PutLoggingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: resourceArn,
  @as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("TagInfoForResource") tagInfoForResource: option<tagInfoForResource>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRule = {
  type t;
  type request = {
@as("RuleId") ruleId: resourceId
}
  type response = {
@as("Rule") rule: option<rule>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRateBasedRule = {
  type t;
  type request = {
@as("RuleId") ruleId: resourceId
}
  type response = {
@as("Rule") rule: option<rateBasedRule>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetRateBasedRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLoggingConfiguration = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: resourceArn
}
  type response = {
@as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetLoggingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIPSet = {
  type t;
  type request = {
@as("IPSetId") ipsetId: resourceId
}
  type response = {
@as("IPSet") ipset: option<ipset>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetIPSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetGeoMatchSet = {
  type t;
  type request = {
@as("GeoMatchSetId") geoMatchSetId: resourceId
}
  type response = {
@as("GeoMatchSet") geoMatchSet: option<geoMatchSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetGeoMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRule = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("ChangeToken") changeToken: changeToken,
  @as("MetricName") metricName: metricName,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("Rule") rule: option<rule>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRateBasedRule = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("ChangeToken") changeToken: changeToken,
  @as("RateLimit") rateLimit: rateLimit,
  @as("RateKey") rateKey: rateKey,
  @as("MetricName") metricName: metricName,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("Rule") rule: option<rateBasedRule>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateRateBasedRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateIPSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("IPSet") ipset: option<ipset>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateIPSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateGeoMatchSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("GeoMatchSet") geoMatchSet: option<geoMatchSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateGeoMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateXssMatchSet = {
  type t;
  type request = {
@as("Updates") updates: xssMatchSetUpdates,
  @as("ChangeToken") changeToken: changeToken,
  @as("XssMatchSetId") xssMatchSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateXssMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSqlInjectionMatchSet = {
  type t;
  type request = {
@as("Updates") updates: sqlInjectionMatchSetUpdates,
  @as("ChangeToken") changeToken: changeToken,
  @as("SqlInjectionMatchSetId") sqlInjectionMatchSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateSqlInjectionMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSizeConstraintSet = {
  type t;
  type request = {
@as("Updates") updates: sizeConstraintSetUpdates,
  @as("ChangeToken") changeToken: changeToken,
  @as("SizeConstraintSetId") sizeConstraintSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateSizeConstraintSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRegexMatchSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("Updates") updates: regexMatchSetUpdates,
  @as("RegexMatchSetId") regexMatchSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateRegexMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateByteMatchSet = {
  type t;
  type request = {
@as("Updates") updates: byteMatchSetUpdates,
  @as("ChangeToken") changeToken: changeToken,
  @as("ByteMatchSetId") byteMatchSetId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateByteMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLoggingConfigurations = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  type response = {
@as("NextMarker") nextMarker: option<nextMarker>,
  @as("LoggingConfigurations") loggingConfigurations: option<loggingConfigurations>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListLoggingConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListActivatedRulesInRuleGroup = {
  type t;
  type request = {
@as("Limit") limit: option<paginationLimit>,
  @as("NextMarker") nextMarker: option<nextMarker>,
  @as("RuleGroupId") ruleGroupId: option<resourceId>
}
  type response = {
@as("ActivatedRules") activatedRules: option<activatedRules>,
  @as("NextMarker") nextMarker: option<nextMarker>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "ListActivatedRulesInRuleGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetXssMatchSet = {
  type t;
  type request = {
@as("XssMatchSetId") xssMatchSetId: resourceId
}
  type response = {
@as("XssMatchSet") xssMatchSet: option<xssMatchSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetXssMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSqlInjectionMatchSet = {
  type t;
  type request = {
@as("SqlInjectionMatchSetId") sqlInjectionMatchSetId: resourceId
}
  type response = {
@as("SqlInjectionMatchSet") sqlInjectionMatchSet: option<sqlInjectionMatchSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetSqlInjectionMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSizeConstraintSet = {
  type t;
  type request = {
@as("SizeConstraintSetId") sizeConstraintSetId: resourceId
}
  type response = {
@as("SizeConstraintSet") sizeConstraintSet: option<sizeConstraintSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetSizeConstraintSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRegexMatchSet = {
  type t;
  type request = {
@as("RegexMatchSetId") regexMatchSetId: resourceId
}
  type response = {
@as("RegexMatchSet") regexMatchSet: option<regexMatchSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetRegexMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetByteMatchSet = {
  type t;
  type request = {
@as("ByteMatchSetId") byteMatchSetId: resourceId
}
  type response = {
@as("ByteMatchSet") byteMatchSet: option<byteMatchSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetByteMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateXssMatchSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("XssMatchSet") xssMatchSet: option<xssMatchSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateXssMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSqlInjectionMatchSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("SqlInjectionMatchSet") sqlInjectionMatchSet: option<sqlInjectionMatchSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateSqlInjectionMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSizeConstraintSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("SizeConstraintSet") sizeConstraintSet: option<sizeConstraintSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateSizeConstraintSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRegexMatchSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("RegexMatchSet") regexMatchSet: option<regexMatchSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateRegexMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateByteMatchSet = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("ByteMatchSet") byteMatchSet: option<byteMatchSet>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateByteMatchSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateWebACL = {
  type t;
  type request = {
@as("DefaultAction") defaultAction: option<wafAction>,
  @as("Updates") updates: option<webACLUpdates>,
  @as("ChangeToken") changeToken: changeToken,
  @as("WebACLId") webACLId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateWebACLCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRuleGroup = {
  type t;
  type request = {
@as("ChangeToken") changeToken: changeToken,
  @as("Updates") updates: ruleGroupUpdates,
  @as("RuleGroupId") ruleGroupId: resourceId
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "UpdateRuleGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetWebACL = {
  type t;
  type request = {
@as("WebACLId") webACLId: resourceId
}
  type response = {
@as("WebACL") webACL: option<webACL>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetWebACLCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSampledRequests = {
  type t;
  type request = {
@as("MaxItems") maxItems: getSampledRequestsMaxItems,
  @as("TimeWindow") timeWindow: timeWindow,
  @as("RuleId") ruleId: resourceId,
  @as("WebAclId") webAclId: resourceId
}
  type response = {
@as("TimeWindow") timeWindow: option<timeWindow>,
  @as("PopulationSize") populationSize: option<populationSize>,
  @as("SampledRequests") sampledRequests: option<sampledHTTPRequests>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "GetSampledRequestsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateWebACL = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("ChangeToken") changeToken: changeToken,
  @as("DefaultAction") defaultAction: wafAction,
  @as("MetricName") metricName: metricName,
  @as("Name") name: resourceName
}
  type response = {
@as("ChangeToken") changeToken: option<changeToken>,
  @as("WebACL") webACL: option<webACL>
}
  @module("@aws-sdk/client-waf") @new external new_: (request) => t = "CreateWebACLCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
