type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-cloudsearch") @new external createClient: unit => awsServiceClient = "CloudSearchClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type word = string
type updateTimestamp = Js.Date.t;
type uintValue = int
type tlssecurityPolicy = [@as("Policy-Min-TLS-1-2-2019-07") #Policy_Min_TLS_1_2_2019_07 | @as("Policy-Min-TLS-1-0-2019-07") #Policy_Min_TLS_1_0_2019_07]
type suggesterFuzzyMatching = [@as("high") #High | @as("low") #Low | @as("none") #None]
type string_ = string
type standardName = string
type serviceUrl = string
type searchInstanceType = string
type policyDocument = string
type partitionInstanceType = [@as("search.2xlarge") #Search_2xlarge | @as("search.xlarge") #Search_Xlarge | @as("search.large") #Search_Large | @as("search.medium") #Search_Medium | @as("search.small") #Search_Small | @as("search.m3.2xlarge") #Search_M3_2xlarge | @as("search.m3.xlarge") #Search_M3_Xlarge | @as("search.m3.large") #Search_M3_Large | @as("search.m3.medium") #Search_M3_Medium | @as("search.m2.2xlarge") #Search_M2_2xlarge | @as("search.m2.xlarge") #Search_M2_Xlarge | @as("search.m1.large") #Search_M1_Large | @as("search.m1.small") #Search_M1_Small]
type partitionCount = int
type optionState = [@as("FailedToValidate") #FailedToValidate | @as("Active") #Active | @as("Processing") #Processing | @as("RequiresIndexDocuments") #RequiresIndexDocuments]
type multiAZ = bool
type maximumReplicationCount = int
type maximumPartitionCount = int
type long = float
type instanceCount = int
type indexFieldType = [@as("date-array") #Date_Array | @as("text-array") #Text_Array | @as("literal-array") #Literal_Array | @as("double-array") #Double_Array | @as("int-array") #Int_Array | @as("latlon") #Latlon | @as("date") #Date | @as("text") #Text | @as("literal") #Literal | @as("double") #Double | @as("int") #Int]
type fieldValue = string
type fieldNameCommaList = string
type fieldName = string
type expressionValue = string
type errorMessage = string
type errorCode = string
type dynamicFieldName = string
type double = float
type domainName = string
type domainId = string
type boolean_ = bool
type analysisSchemeLanguage = [@as("zh-Hant") #Zh_Hant | @as("zh-Hans") #Zh_Hans | @as("tr") #Tr | @as("th") #Th | @as("sv") #Sv | @as("ru") #Ru | @as("ro") #Ro | @as("pt") #Pt | @as("no") #No | @as("nl") #Nl | @as("mul") #Mul | @as("lv") #Lv | @as("ko") #Ko | @as("ja") #Ja | @as("it") #It | @as("id") #Id | @as("hy") #Hy | @as("hu") #Hu | @as("hi") #Hi | @as("he") #He | @as("gl") #Gl | @as("ga") #Ga | @as("fr") #Fr | @as("fi") #Fi | @as("fa") #Fa | @as("eu") #Eu | @as("es") #Es | @as("en") #En | @as("el") #El | @as("de") #De | @as("da") #Da | @as("cs") #Cs | @as("ca") #Ca | @as("bg") #Bg | @as("ar") #Ar]
type algorithmicStemming = [@as("full") #Full | @as("light") #Light | @as("minimal") #Minimal | @as("none") #None]
type arn = string
type apiversion = string
type textOptions = {
@as("AnalysisScheme") analysisScheme: option<word>,
  @as("HighlightEnabled") highlightEnabled: option<boolean_>,
  @as("SortEnabled") sortEnabled: option<boolean_>,
  @as("ReturnEnabled") returnEnabled: option<boolean_>,
  @as("SourceField") sourceField: option<fieldName>,
  @as("DefaultValue") defaultValue: option<fieldValue>
}
type textArrayOptions = {
@as("AnalysisScheme") analysisScheme: option<word>,
  @as("HighlightEnabled") highlightEnabled: option<boolean_>,
  @as("ReturnEnabled") returnEnabled: option<boolean_>,
  @as("SourceFields") sourceFields: option<fieldNameCommaList>,
  @as("DefaultValue") defaultValue: option<fieldValue>
}
type standardNameList = array<standardName>
type serviceEndpoint = {
@as("Endpoint") endpoint: option<serviceUrl>
}
type scalingParameters = {
@as("DesiredPartitionCount") desiredPartitionCount: option<uintValue>,
  @as("DesiredReplicationCount") desiredReplicationCount: option<uintValue>,
  @as("DesiredInstanceType") desiredInstanceType: option<partitionInstanceType>
}
type optionStatus = {
@as("PendingDeletion") pendingDeletion: option<boolean_>,
  @as("State") state: optionState,
  @as("UpdateVersion") updateVersion: option<uintValue>,
  @as("UpdateDate") updateDate: updateTimestamp,
  @as("CreationDate") creationDate: updateTimestamp
}
type literalOptions = {
@as("SortEnabled") sortEnabled: option<boolean_>,
  @as("ReturnEnabled") returnEnabled: option<boolean_>,
  @as("SearchEnabled") searchEnabled: option<boolean_>,
  @as("FacetEnabled") facetEnabled: option<boolean_>,
  @as("SourceField") sourceField: option<fieldName>,
  @as("DefaultValue") defaultValue: option<fieldValue>
}
type literalArrayOptions = {
@as("ReturnEnabled") returnEnabled: option<boolean_>,
  @as("SearchEnabled") searchEnabled: option<boolean_>,
  @as("FacetEnabled") facetEnabled: option<boolean_>,
  @as("SourceFields") sourceFields: option<fieldNameCommaList>,
  @as("DefaultValue") defaultValue: option<fieldValue>
}
type limits = {
@as("MaximumPartitionCount") maximumPartitionCount: maximumPartitionCount,
  @as("MaximumReplicationCount") maximumReplicationCount: maximumReplicationCount
}
type latLonOptions = {
@as("SortEnabled") sortEnabled: option<boolean_>,
  @as("ReturnEnabled") returnEnabled: option<boolean_>,
  @as("SearchEnabled") searchEnabled: option<boolean_>,
  @as("FacetEnabled") facetEnabled: option<boolean_>,
  @as("SourceField") sourceField: option<fieldName>,
  @as("DefaultValue") defaultValue: option<fieldValue>
}
type intOptions = {
@as("SortEnabled") sortEnabled: option<boolean_>,
  @as("ReturnEnabled") returnEnabled: option<boolean_>,
  @as("SearchEnabled") searchEnabled: option<boolean_>,
  @as("FacetEnabled") facetEnabled: option<boolean_>,
  @as("SourceField") sourceField: option<fieldName>,
  @as("DefaultValue") defaultValue: option<long>
}
type intArrayOptions = {
@as("ReturnEnabled") returnEnabled: option<boolean_>,
  @as("SearchEnabled") searchEnabled: option<boolean_>,
  @as("FacetEnabled") facetEnabled: option<boolean_>,
  @as("SourceFields") sourceFields: option<fieldNameCommaList>,
  @as("DefaultValue") defaultValue: option<long>
}
type fieldNameList = array<fieldName>
type expression = {
@as("ExpressionValue") expressionValue: expressionValue,
  @as("ExpressionName") expressionName: standardName
}
type dynamicFieldNameList = array<dynamicFieldName>
type doubleOptions = {
@as("SortEnabled") sortEnabled: option<boolean_>,
  @as("ReturnEnabled") returnEnabled: option<boolean_>,
  @as("SearchEnabled") searchEnabled: option<boolean_>,
  @as("FacetEnabled") facetEnabled: option<boolean_>,
  @as("SourceField") sourceField: option<fieldName>,
  @as("DefaultValue") defaultValue: option<double>
}
type doubleArrayOptions = {
@as("ReturnEnabled") returnEnabled: option<boolean_>,
  @as("SearchEnabled") searchEnabled: option<boolean_>,
  @as("FacetEnabled") facetEnabled: option<boolean_>,
  @as("SourceFields") sourceFields: option<fieldNameCommaList>,
  @as("DefaultValue") defaultValue: option<double>
}
type domainNameMap = Js.Dict.t<apiversion>
type domainNameList = array<domainName>
type domainEndpointOptions = {
@as("TLSSecurityPolicy") tlssecurityPolicy: option<tlssecurityPolicy>,
  @as("EnforceHTTPS") enforceHTTPS: option<boolean_>
}
type documentSuggesterOptions = {
@as("SortExpression") sortExpression: option<string_>,
  @as("FuzzyMatching") fuzzyMatching: option<suggesterFuzzyMatching>,
  @as("SourceField") sourceField: fieldName
}
type dateOptions = {
@as("SortEnabled") sortEnabled: option<boolean_>,
  @as("ReturnEnabled") returnEnabled: option<boolean_>,
  @as("SearchEnabled") searchEnabled: option<boolean_>,
  @as("FacetEnabled") facetEnabled: option<boolean_>,
  @as("SourceField") sourceField: option<fieldName>,
  @as("DefaultValue") defaultValue: option<fieldValue>
}
type dateArrayOptions = {
@as("ReturnEnabled") returnEnabled: option<boolean_>,
  @as("SearchEnabled") searchEnabled: option<boolean_>,
  @as("FacetEnabled") facetEnabled: option<boolean_>,
  @as("SourceFields") sourceFields: option<fieldNameCommaList>,
  @as("DefaultValue") defaultValue: option<fieldValue>
}
type analysisOptions = {
@as("AlgorithmicStemming") algorithmicStemming: option<algorithmicStemming>,
  @as("JapaneseTokenizationDictionary") japaneseTokenizationDictionary: option<string_>,
  @as("StemmingDictionary") stemmingDictionary: option<string_>,
  @as("Stopwords") stopwords: option<string_>,
  @as("Synonyms") synonyms: option<string_>
}
type suggester = {
@as("DocumentSuggesterOptions") documentSuggesterOptions: documentSuggesterOptions,
  @as("SuggesterName") suggesterName: standardName
}
type scalingParametersStatus = {
@as("Status") status: optionStatus,
  @as("Options") options: scalingParameters
}
type indexField = {
@as("DateArrayOptions") dateArrayOptions: option<dateArrayOptions>,
  @as("TextArrayOptions") textArrayOptions: option<textArrayOptions>,
  @as("LiteralArrayOptions") literalArrayOptions: option<literalArrayOptions>,
  @as("DoubleArrayOptions") doubleArrayOptions: option<doubleArrayOptions>,
  @as("IntArrayOptions") intArrayOptions: option<intArrayOptions>,
  @as("LatLonOptions") latLonOptions: option<latLonOptions>,
  @as("DateOptions") dateOptions: option<dateOptions>,
  @as("TextOptions") textOptions: option<textOptions>,
  @as("LiteralOptions") literalOptions: option<literalOptions>,
  @as("DoubleOptions") doubleOptions: option<doubleOptions>,
  @as("IntOptions") intOptions: option<intOptions>,
  @as("IndexFieldType") indexFieldType: indexFieldType,
  @as("IndexFieldName") indexFieldName: dynamicFieldName
}
type expressionStatus = {
@as("Status") status: optionStatus,
  @as("Options") options: expression
}
type domainStatus = {
@as("Limits") limits: option<limits>,
  @as("SearchInstanceCount") searchInstanceCount: option<instanceCount>,
  @as("SearchPartitionCount") searchPartitionCount: option<partitionCount>,
  @as("SearchInstanceType") searchInstanceType: option<searchInstanceType>,
  @as("Processing") processing: option<boolean_>,
  @as("RequiresIndexDocuments") requiresIndexDocuments: boolean_,
  @as("SearchService") searchService: option<serviceEndpoint>,
  @as("DocService") docService: option<serviceEndpoint>,
  @as("Deleted") deleted: option<boolean_>,
  @as("Created") created: option<boolean_>,
  @as("ARN") arn: option<arn>,
  @as("DomainName") domainName: domainName,
  @as("DomainId") domainId: domainId
}
type domainEndpointOptionsStatus = {
@as("Status") status: optionStatus,
  @as("Options") options: domainEndpointOptions
}
type availabilityOptionsStatus = {
@as("Status") status: optionStatus,
  @as("Options") options: multiAZ
}
type analysisScheme = {
@as("AnalysisOptions") analysisOptions: option<analysisOptions>,
  @as("AnalysisSchemeLanguage") analysisSchemeLanguage: analysisSchemeLanguage,
  @as("AnalysisSchemeName") analysisSchemeName: standardName
}
type accessPoliciesStatus = {
@as("Status") status: optionStatus,
  @as("Options") options: policyDocument
}
type suggesterStatus = {
@as("Status") status: optionStatus,
  @as("Options") options: suggester
}
type indexFieldStatus = {
@as("Status") status: optionStatus,
  @as("Options") options: indexField
}
type expressionStatusList = array<expressionStatus>
type domainStatusList = array<domainStatus>
type analysisSchemeStatus = {
@as("Status") status: optionStatus,
  @as("Options") options: analysisScheme
}
type suggesterStatusList = array<suggesterStatus>
type indexFieldStatusList = array<indexFieldStatus>
type analysisSchemeStatusList = array<analysisSchemeStatus>

module ListDomainNames = {
  type t;
  
  type response = {
@as("DomainNames") domainNames: option<domainNameMap>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (unit) => t = "ListDomainNamesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module IndexDocuments = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("FieldNames") fieldNames: option<fieldNameList>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "IndexDocumentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BuildSuggesters = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("FieldNames") fieldNames: option<fieldNameList>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "BuildSuggestersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateServiceAccessPolicies = {
  type t;
  type request = {
@as("AccessPolicies") accessPolicies: policyDocument,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("AccessPolicies") accessPolicies: accessPoliciesStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "UpdateServiceAccessPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateScalingParameters = {
  type t;
  type request = {
@as("ScalingParameters") scalingParameters: scalingParameters,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("ScalingParameters") scalingParameters: scalingParametersStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "UpdateScalingParametersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainEndpointOptions = {
  type t;
  type request = {
@as("DomainEndpointOptions") domainEndpointOptions: domainEndpointOptions,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("DomainEndpointOptions") domainEndpointOptions: option<domainEndpointOptionsStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "UpdateDomainEndpointOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAvailabilityOptions = {
  type t;
  type request = {
@as("MultiAZ") multiAZ: boolean_,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("AvailabilityOptions") availabilityOptions: option<availabilityOptionsStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "UpdateAvailabilityOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeServiceAccessPolicies = {
  type t;
  type request = {
@as("Deployed") deployed: option<boolean_>,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("AccessPolicies") accessPolicies: accessPoliciesStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeServiceAccessPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeScalingParameters = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("ScalingParameters") scalingParameters: scalingParametersStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeScalingParametersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDomainEndpointOptions = {
  type t;
  type request = {
@as("Deployed") deployed: option<boolean_>,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("DomainEndpointOptions") domainEndpointOptions: option<domainEndpointOptionsStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeDomainEndpointOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAvailabilityOptions = {
  type t;
  type request = {
@as("Deployed") deployed: option<boolean_>,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("AvailabilityOptions") availabilityOptions: option<availabilityOptionsStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeAvailabilityOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteExpression = {
  type t;
  type request = {
@as("ExpressionName") expressionName: standardName,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("Expression") expression: expressionStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DeleteExpressionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDomain = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("DomainStatus") domainStatus: option<domainStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DeleteDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DefineExpression = {
  type t;
  type request = {
@as("Expression") expression: expression,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("Expression") expression: expressionStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DefineExpressionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDomain = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("DomainStatus") domainStatus: option<domainStatus>
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "CreateDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeExpressions = {
  type t;
  type request = {
@as("Deployed") deployed: option<boolean_>,
  @as("ExpressionNames") expressionNames: option<standardNameList>,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("Expressions") expressions: expressionStatusList
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeExpressionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDomains = {
  type t;
  type request = {
@as("DomainNames") domainNames: option<domainNameList>
}
  type response = {
@as("DomainStatusList") domainStatusList: domainStatusList
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeDomainsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSuggester = {
  type t;
  type request = {
@as("SuggesterName") suggesterName: standardName,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("Suggester") suggester: suggesterStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DeleteSuggesterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteIndexField = {
  type t;
  type request = {
@as("IndexFieldName") indexFieldName: dynamicFieldName,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("IndexField") indexField: indexFieldStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DeleteIndexFieldCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAnalysisScheme = {
  type t;
  type request = {
@as("AnalysisSchemeName") analysisSchemeName: standardName,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("AnalysisScheme") analysisScheme: analysisSchemeStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DeleteAnalysisSchemeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DefineSuggester = {
  type t;
  type request = {
@as("Suggester") suggester: suggester,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("Suggester") suggester: suggesterStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DefineSuggesterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DefineIndexField = {
  type t;
  type request = {
@as("IndexField") indexField: indexField,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("IndexField") indexField: indexFieldStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DefineIndexFieldCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DefineAnalysisScheme = {
  type t;
  type request = {
@as("AnalysisScheme") analysisScheme: analysisScheme,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("AnalysisScheme") analysisScheme: analysisSchemeStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DefineAnalysisSchemeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSuggesters = {
  type t;
  type request = {
@as("Deployed") deployed: option<boolean_>,
  @as("SuggesterNames") suggesterNames: option<standardNameList>,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("Suggesters") suggesters: suggesterStatusList
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeSuggestersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeIndexFields = {
  type t;
  type request = {
@as("Deployed") deployed: option<boolean_>,
  @as("FieldNames") fieldNames: option<dynamicFieldNameList>,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("IndexFields") indexFields: indexFieldStatusList
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeIndexFieldsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAnalysisSchemes = {
  type t;
  type request = {
@as("Deployed") deployed: option<boolean_>,
  @as("AnalysisSchemeNames") analysisSchemeNames: option<standardNameList>,
  @as("DomainName") domainName: domainName
}
  type response = {
@as("AnalysisSchemes") analysisSchemes: analysisSchemeStatusList
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "DescribeAnalysisSchemesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
