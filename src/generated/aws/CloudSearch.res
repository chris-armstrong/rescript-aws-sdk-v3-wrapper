type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type word = string
type updateTimestamp = Js.Date.t;
type uIntValue = int;
type tLSSecurityPolicy = [@as("Policy-Min-TLS-1-2-2019-07") #Policy_Min_TLS_1_2_2019_07 | @as("Policy-Min-TLS-1-0-2019-07") #Policy_Min_TLS_1_0_2019_07]
type suggesterFuzzyMatching = [@as("high") #high | @as("low") #low | @as("none") #none]
type amazonawsString = string
type standardName = string
type serviceUrl = string
type searchInstanceType = string
type policyDocument = string
type partitionInstanceType = [@as("search.2xlarge") #search_2xlarge | @as("search.xlarge") #search_xlarge | @as("search.large") #search_large | @as("search.medium") #search_medium | @as("search.small") #search_small | @as("search.m3.2xlarge") #search_m3_2xlarge | @as("search.m3.xlarge") #search_m3_xlarge | @as("search.m3.large") #search_m3_large | @as("search.m3.medium") #search_m3_medium | @as("search.m2.2xlarge") #search_m2_2xlarge | @as("search.m2.xlarge") #search_m2_xlarge | @as("search.m1.large") #search_m1_large | @as("search.m1.small") #search_m1_small]
type partitionCount = int;
type optionState = [@as("FailedToValidate") #FailedToValidate | @as("Active") #Active | @as("Processing") #Processing | @as("RequiresIndexDocuments") #RequiresIndexDocuments]
type multiAZ = bool;
type maximumReplicationCount = int;
type maximumPartitionCount = int;
type amazonawsLong = float;
type instanceCount = int;
type indexFieldType = [@as("date-array") #date_array | @as("text-array") #text_array | @as("literal-array") #literal_array | @as("double-array") #double_array | @as("int-array") #int_array | @as("latlon") #latlon | @as("date") #date | @as("text") #text | @as("literal") #literal | @as("double") #double | @as("int") #int]
type fieldValue = string
type fieldNameCommaList = string
type fieldName = string
type expressionValue = string
type errorMessage = string
type errorCode = string
type dynamicFieldName = string
type amazonawsDouble = float;
type domainName = string
type domainId = string
type amazonawsBoolean = bool;
type analysisSchemeLanguage = [@as("zh-Hant") #zh_Hant | @as("zh-Hans") #zh_Hans | @as("tr") #tr | @as("th") #th | @as("sv") #sv | @as("ru") #ru | @as("ro") #ro | @as("pt") #pt | @as("no") #no | @as("nl") #nl | @as("mul") #mul | @as("lv") #lv | @as("ko") #ko | @as("ja") #ja | @as("it") #it | @as("id") #id | @as("hy") #hy | @as("hu") #hu | @as("hi") #hi | @as("he") #he | @as("gl") #gl | @as("ga") #ga | @as("fr") #fr | @as("fi") #fi | @as("fa") #fa | @as("eu") #eu | @as("es") #es | @as("en") #en | @as("el") #el | @as("de") #de | @as("da") #da | @as("cs") #cs | @as("ca") #ca | @as("bg") #bg | @as("ar") #ar]
type algorithmicStemming = [@as("full") #full | @as("light") #light | @as("minimal") #minimal | @as("none") #none]
type aRN = string
type aPIVersion = string
type textOptions = {
@as("AnalysisScheme") analysisScheme: word,
@as("HighlightEnabled") highlightEnabled: amazonawsBoolean,
@as("SortEnabled") sortEnabled: amazonawsBoolean,
@as("ReturnEnabled") returnEnabled: amazonawsBoolean,
@as("SourceField") sourceField: fieldName,
@as("DefaultValue") defaultValue: fieldValue
}
type textArrayOptions = {
@as("AnalysisScheme") analysisScheme: word,
@as("HighlightEnabled") highlightEnabled: amazonawsBoolean,
@as("ReturnEnabled") returnEnabled: amazonawsBoolean,
@as("SourceFields") sourceFields: fieldNameCommaList,
@as("DefaultValue") defaultValue: fieldValue
}
type standardNameList = array<standardName>
type serviceEndpoint = {
@as("Endpoint") endpoint: serviceUrl
}
type scalingParameters = {
@as("DesiredPartitionCount") desiredPartitionCount: uIntValue,
@as("DesiredReplicationCount") desiredReplicationCount: uIntValue,
@as("DesiredInstanceType") desiredInstanceType: partitionInstanceType
}
type optionStatus = {
@as("PendingDeletion") pendingDeletion: amazonawsBoolean,
@as("State") state: option<optionState>,
@as("UpdateVersion") updateVersion: uIntValue,
@as("UpdateDate") updateDate: option<updateTimestamp>,
@as("CreationDate") creationDate: option<updateTimestamp>
}
type literalOptions = {
@as("SortEnabled") sortEnabled: amazonawsBoolean,
@as("ReturnEnabled") returnEnabled: amazonawsBoolean,
@as("SearchEnabled") searchEnabled: amazonawsBoolean,
@as("FacetEnabled") facetEnabled: amazonawsBoolean,
@as("SourceField") sourceField: fieldName,
@as("DefaultValue") defaultValue: fieldValue
}
type literalArrayOptions = {
@as("ReturnEnabled") returnEnabled: amazonawsBoolean,
@as("SearchEnabled") searchEnabled: amazonawsBoolean,
@as("FacetEnabled") facetEnabled: amazonawsBoolean,
@as("SourceFields") sourceFields: fieldNameCommaList,
@as("DefaultValue") defaultValue: fieldValue
}
type limits = {
@as("MaximumPartitionCount") maximumPartitionCount: option<maximumPartitionCount>,
@as("MaximumReplicationCount") maximumReplicationCount: option<maximumReplicationCount>
}
type latLonOptions = {
@as("SortEnabled") sortEnabled: amazonawsBoolean,
@as("ReturnEnabled") returnEnabled: amazonawsBoolean,
@as("SearchEnabled") searchEnabled: amazonawsBoolean,
@as("FacetEnabled") facetEnabled: amazonawsBoolean,
@as("SourceField") sourceField: fieldName,
@as("DefaultValue") defaultValue: fieldValue
}
type intOptions = {
@as("SortEnabled") sortEnabled: amazonawsBoolean,
@as("ReturnEnabled") returnEnabled: amazonawsBoolean,
@as("SearchEnabled") searchEnabled: amazonawsBoolean,
@as("FacetEnabled") facetEnabled: amazonawsBoolean,
@as("SourceField") sourceField: fieldName,
@as("DefaultValue") defaultValue: amazonawsLong
}
type intArrayOptions = {
@as("ReturnEnabled") returnEnabled: amazonawsBoolean,
@as("SearchEnabled") searchEnabled: amazonawsBoolean,
@as("FacetEnabled") facetEnabled: amazonawsBoolean,
@as("SourceFields") sourceFields: fieldNameCommaList,
@as("DefaultValue") defaultValue: amazonawsLong
}
type fieldNameList = array<fieldName>
type expression = {
@as("ExpressionValue") expressionValue: option<expressionValue>,
@as("ExpressionName") expressionName: option<standardName>
}
type dynamicFieldNameList = array<dynamicFieldName>
type doubleOptions = {
@as("SortEnabled") sortEnabled: amazonawsBoolean,
@as("ReturnEnabled") returnEnabled: amazonawsBoolean,
@as("SearchEnabled") searchEnabled: amazonawsBoolean,
@as("FacetEnabled") facetEnabled: amazonawsBoolean,
@as("SourceField") sourceField: fieldName,
@as("DefaultValue") defaultValue: amazonawsDouble
}
type doubleArrayOptions = {
@as("ReturnEnabled") returnEnabled: amazonawsBoolean,
@as("SearchEnabled") searchEnabled: amazonawsBoolean,
@as("FacetEnabled") facetEnabled: amazonawsBoolean,
@as("SourceFields") sourceFields: fieldNameCommaList,
@as("DefaultValue") defaultValue: amazonawsDouble
}
type domainNameMap = Js.Dict.t< aPIVersion>
type domainNameList = array<domainName>
type domainEndpointOptions = {
@as("TLSSecurityPolicy") tLSSecurityPolicy: tLSSecurityPolicy,
@as("EnforceHTTPS") enforceHTTPS: amazonawsBoolean
}
type documentSuggesterOptions = {
@as("SortExpression") sortExpression: amazonawsString,
@as("FuzzyMatching") fuzzyMatching: suggesterFuzzyMatching,
@as("SourceField") sourceField: option<fieldName>
}
type dateOptions = {
@as("SortEnabled") sortEnabled: amazonawsBoolean,
@as("ReturnEnabled") returnEnabled: amazonawsBoolean,
@as("SearchEnabled") searchEnabled: amazonawsBoolean,
@as("FacetEnabled") facetEnabled: amazonawsBoolean,
@as("SourceField") sourceField: fieldName,
@as("DefaultValue") defaultValue: fieldValue
}
type dateArrayOptions = {
@as("ReturnEnabled") returnEnabled: amazonawsBoolean,
@as("SearchEnabled") searchEnabled: amazonawsBoolean,
@as("FacetEnabled") facetEnabled: amazonawsBoolean,
@as("SourceFields") sourceFields: fieldNameCommaList,
@as("DefaultValue") defaultValue: fieldValue
}
type analysisOptions = {
@as("AlgorithmicStemming") algorithmicStemming: algorithmicStemming,
@as("JapaneseTokenizationDictionary") japaneseTokenizationDictionary: amazonawsString,
@as("StemmingDictionary") stemmingDictionary: amazonawsString,
@as("Stopwords") stopwords: amazonawsString,
@as("Synonyms") synonyms: amazonawsString
}
type suggester = {
@as("DocumentSuggesterOptions") documentSuggesterOptions: option<documentSuggesterOptions>,
@as("SuggesterName") suggesterName: option<standardName>
}
type scalingParametersStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<scalingParameters>
}
type indexField = {
@as("DateArrayOptions") dateArrayOptions: dateArrayOptions,
@as("TextArrayOptions") textArrayOptions: textArrayOptions,
@as("LiteralArrayOptions") literalArrayOptions: literalArrayOptions,
@as("DoubleArrayOptions") doubleArrayOptions: doubleArrayOptions,
@as("IntArrayOptions") intArrayOptions: intArrayOptions,
@as("LatLonOptions") latLonOptions: latLonOptions,
@as("DateOptions") dateOptions: dateOptions,
@as("TextOptions") textOptions: textOptions,
@as("LiteralOptions") literalOptions: literalOptions,
@as("DoubleOptions") doubleOptions: doubleOptions,
@as("IntOptions") intOptions: intOptions,
@as("IndexFieldType") indexFieldType: option<indexFieldType>,
@as("IndexFieldName") indexFieldName: option<dynamicFieldName>
}
type expressionStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<expression>
}
type domainStatus = {
@as("Limits") limits: limits,
@as("SearchInstanceCount") searchInstanceCount: instanceCount,
@as("SearchPartitionCount") searchPartitionCount: partitionCount,
@as("SearchInstanceType") searchInstanceType: searchInstanceType,
@as("Processing") processing: amazonawsBoolean,
@as("RequiresIndexDocuments") requiresIndexDocuments: option<amazonawsBoolean>,
@as("SearchService") searchService: serviceEndpoint,
@as("DocService") docService: serviceEndpoint,
@as("Deleted") deleted: amazonawsBoolean,
@as("Created") created: amazonawsBoolean,
@as("ARN") aRN: aRN,
@as("DomainName") domainName: option<domainName>,
@as("DomainId") domainId: option<domainId>
}
type domainEndpointOptionsStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<domainEndpointOptions>
}
type availabilityOptionsStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<multiAZ>
}
type analysisScheme = {
@as("AnalysisOptions") analysisOptions: analysisOptions,
@as("AnalysisSchemeLanguage") analysisSchemeLanguage: option<analysisSchemeLanguage>,
@as("AnalysisSchemeName") analysisSchemeName: option<standardName>
}
type accessPoliciesStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<policyDocument>
}
type suggesterStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<suggester>
}
type indexFieldStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<indexField>
}
type expressionStatusList = array<expressionStatus>
type domainStatusList = array<domainStatus>
type analysisSchemeStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<analysisScheme>
}
type suggesterStatusList = array<suggesterStatus>
type indexFieldStatusList = array<indexFieldStatus>
type analysisSchemeStatusList = array<analysisSchemeStatus>
type clientType;
@module("@aws-sdk/client-cloudsearch") @new external createClient: unit => clientType = "CloudSearchClient";
module ListDomainNames = {
  type t;
  
  type response = {
@as("DomainNames") domainNames: domainNameMap
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (unit) => t = "ListDomainNamesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module IndexDocuments = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("FieldNames") fieldNames: fieldNameList
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "IndexDocumentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BuildSuggesters = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("FieldNames") fieldNames: fieldNameList
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "BuildSuggestersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateServiceAccessPolicies = {
  type t;
  type request = {
@as("AccessPolicies") accessPolicies: option<policyDocument>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("AccessPolicies") accessPolicies: option<accessPoliciesStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "UpdateServiceAccessPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateScalingParameters = {
  type t;
  type request = {
@as("ScalingParameters") scalingParameters: option<scalingParameters>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("ScalingParameters") scalingParameters: option<scalingParametersStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "UpdateScalingParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainEndpointOptions = {
  type t;
  type request = {
@as("DomainEndpointOptions") domainEndpointOptions: option<domainEndpointOptions>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("DomainEndpointOptions") domainEndpointOptions: domainEndpointOptionsStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "UpdateDomainEndpointOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAvailabilityOptions = {
  type t;
  type request = {
@as("MultiAZ") multiAZ: option<amazonawsBoolean>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("AvailabilityOptions") availabilityOptions: availabilityOptionsStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "UpdateAvailabilityOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeServiceAccessPolicies = {
  type t;
  type request = {
@as("Deployed") deployed: amazonawsBoolean,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("AccessPolicies") accessPolicies: option<accessPoliciesStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeServiceAccessPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingParameters = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("ScalingParameters") scalingParameters: option<scalingParametersStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeScalingParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDomainEndpointOptions = {
  type t;
  type request = {
@as("Deployed") deployed: amazonawsBoolean,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("DomainEndpointOptions") domainEndpointOptions: domainEndpointOptionsStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeDomainEndpointOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAvailabilityOptions = {
  type t;
  type request = {
@as("Deployed") deployed: amazonawsBoolean,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("AvailabilityOptions") availabilityOptions: availabilityOptionsStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeAvailabilityOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteExpression = {
  type t;
  type request = {
@as("ExpressionName") expressionName: option<standardName>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("Expression") expression: option<expressionStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DeleteExpressionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDomain = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("DomainStatus") domainStatus: domainStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DeleteDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DefineExpression = {
  type t;
  type request = {
@as("Expression") expression: option<expression>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("Expression") expression: option<expressionStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DefineExpressionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDomain = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("DomainStatus") domainStatus: domainStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "CreateDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeExpressions = {
  type t;
  type request = {
@as("Deployed") deployed: amazonawsBoolean,
@as("ExpressionNames") expressionNames: standardNameList,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("Expressions") expressions: option<expressionStatusList>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeExpressionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDomains = {
  type t;
  type request = {
@as("DomainNames") domainNames: domainNameList
}
  type response = {
@as("DomainStatusList") domainStatusList: option<domainStatusList>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSuggester = {
  type t;
  type request = {
@as("SuggesterName") suggesterName: option<standardName>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("Suggester") suggester: option<suggesterStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DeleteSuggesterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteIndexField = {
  type t;
  type request = {
@as("IndexFieldName") indexFieldName: option<dynamicFieldName>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("IndexField") indexField: option<indexFieldStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DeleteIndexFieldCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAnalysisScheme = {
  type t;
  type request = {
@as("AnalysisSchemeName") analysisSchemeName: option<standardName>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("AnalysisScheme") analysisScheme: option<analysisSchemeStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DeleteAnalysisSchemeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DefineSuggester = {
  type t;
  type request = {
@as("Suggester") suggester: option<suggester>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("Suggester") suggester: option<suggesterStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DefineSuggesterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DefineIndexField = {
  type t;
  type request = {
@as("IndexField") indexField: option<indexField>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("IndexField") indexField: option<indexFieldStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DefineIndexFieldCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DefineAnalysisScheme = {
  type t;
  type request = {
@as("AnalysisScheme") analysisScheme: option<analysisScheme>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("AnalysisScheme") analysisScheme: option<analysisSchemeStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DefineAnalysisSchemeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSuggesters = {
  type t;
  type request = {
@as("Deployed") deployed: amazonawsBoolean,
@as("SuggesterNames") suggesterNames: standardNameList,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("Suggesters") suggesters: option<suggesterStatusList>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeSuggestersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIndexFields = {
  type t;
  type request = {
@as("Deployed") deployed: amazonawsBoolean,
@as("FieldNames") fieldNames: dynamicFieldNameList,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("IndexFields") indexFields: option<indexFieldStatusList>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeIndexFieldsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAnalysisSchemes = {
  type t;
  type request = {
@as("Deployed") deployed: amazonawsBoolean,
@as("AnalysisSchemeNames") analysisSchemeNames: standardNameList,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("AnalysisSchemes") analysisSchemes: option<analysisSchemeStatusList>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeAnalysisSchemesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
