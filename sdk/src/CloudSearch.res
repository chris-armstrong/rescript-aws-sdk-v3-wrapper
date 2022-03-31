type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cloudsearch") @new
external createClient: unit => awsServiceClient = "CloudSearchClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type word = string
type updateTimestamp = Js.Date.t
type uintValue = int
@ocaml.doc("<p>The minimum required TLS version.</p>")
type tlssecurityPolicy = [
  | @as("Policy-Min-TLS-1-2-2019-07") #Policy_Min_TLS_1_2_2019_07
  | @as("Policy-Min-TLS-1-0-2019-07") #Policy_Min_TLS_1_0_2019_07
]
type suggesterFuzzyMatching = [@as("high") #High | @as("low") #Low | @as("none") #None]
type string_ = string
@ocaml.doc("<p>Names must begin with a letter and can contain the following characters:
      a-z (lowercase), 0-9, and _ (underscore).</p>")
type standardName = string
@ocaml.doc(
  "<p>The endpoint to which service requests can be submitted. For example, <code>search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.cloudsearch.amazonaws.com</code> or <code>doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.cloudsearch.amazonaws.com</code>.</p>"
)
type serviceUrl = string
@ocaml.doc(
  "<p>The instance type (such as <code>search.m1.small</code>) that is being used to process search requests.</p>"
)
type searchInstanceType = string
@ocaml.doc(
  "<p>Access rules for a domain's document or search service endpoints. For more information, see <a href=\"http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html\" target=\"_blank\">Configuring Access for a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>. The maximum size of a policy document is 100 KB.</p>"
)
type policyDocument = string
@ocaml.doc(
  "<p>The instance type (such as <code>search.m1.small</code>) on which an index partition is hosted.</p>"
)
type partitionInstanceType = [
  | @as("search.previousgeneration.2xlarge") #Search_Previousgeneration_2xlarge
  | @as("search.previousgeneration.xlarge") #Search_Previousgeneration_Xlarge
  | @as("search.previousgeneration.large") #Search_Previousgeneration_Large
  | @as("search.previousgeneration.small") #Search_Previousgeneration_Small
  | @as("search.2xlarge") #Search_2xlarge
  | @as("search.xlarge") #Search_Xlarge
  | @as("search.large") #Search_Large
  | @as("search.medium") #Search_Medium
  | @as("search.small") #Search_Small
  | @as("search.m3.2xlarge") #Search_M3_2xlarge
  | @as("search.m3.xlarge") #Search_M3_Xlarge
  | @as("search.m3.large") #Search_M3_Large
  | @as("search.m3.medium") #Search_M3_Medium
  | @as("search.m2.2xlarge") #Search_M2_2xlarge
  | @as("search.m2.xlarge") #Search_M2_Xlarge
  | @as("search.m1.large") #Search_M1_Large
  | @as("search.m1.small") #Search_M1_Small
]
@ocaml.doc("<p>The number of partitions used to hold the domain's index.</p>")
type partitionCount = int
@ocaml.doc("<p>The state of processing a change to an option. One of:</p>
    <ul>
      <li>RequiresIndexDocuments: The option's latest value will not be deployed until  <a>IndexDocuments</a> has been called and indexing is complete.</li>
      <li>Processing: The option's latest value is in the process of being activated.</li>
      <li>Active: The option's latest value is fully deployed. </li>
      <li>FailedToValidate: The option value is not compatible with the domain's data and cannot be used to index the data. You must either modify the option value or update or remove the incompatible documents.</li>
    </ul>")
type optionState = [
  | @as("FailedToValidate") #FailedToValidate
  | @as("Active") #Active
  | @as("Processing") #Processing
  | @as("RequiresIndexDocuments") #RequiresIndexDocuments
]
type multiAZ = bool
type maximumReplicationCount = int
type maximumPartitionCount = int
type long = float
type instanceCount = int
@ocaml.doc(
  "<p>The type of field. The valid options for a field depend on the field type. For more information about the supported field types, see <a href=\"http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html\" target=\"_blank\">Configuring Index Fields</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>"
)
type indexFieldType = [
  | @as("date-array") #Date_Array
  | @as("text-array") #Text_Array
  | @as("literal-array") #Literal_Array
  | @as("double-array") #Double_Array
  | @as("int-array") #Int_Array
  | @as("latlon") #Latlon
  | @as("date") #Date
  | @as("text") #Text
  | @as("literal") #Literal
  | @as("double") #Double
  | @as("int") #Int
]
@ocaml.doc("<p>The value of a field attribute.</p>") type fieldValue = string
type fieldNameCommaList = string
@ocaml.doc("<p>A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields.
      A dynamic field's name defines a pattern that begins or ends with a wildcard.
      Any document fields that don't map to a regular index field but do match a	
      dynamic field's pattern are configured with the dynamic field's indexing options.
    </p>
    <p>Regular field names begin with a letter and can contain the following characters:
      a-z (lowercase), 0-9, and _ (underscore).
      Dynamic field names must begin or end with a wildcard (*).
      The wildcard can also be the only character in a dynamic field name.
      Multiple wildcards, and wildcards embedded within a string are not supported.
    </p>
    <p>The name <code>score</code> is reserved and cannot be used as a field name.
      To reference a document's ID, you can use the name <code>_id</code>.
    </p>")
type fieldName = string
@ocaml.doc(
  "<p>The expression to evaluate for sorting while processing a search request.  The <code>Expression</code> syntax is based on JavaScript expressions. For more information, see <a href=\"http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html\" target=\"_blank\">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>"
)
type expressionValue = string
@ocaml.doc("<p>A human-readable string error or warning message.</p>") type errorMessage = string
@ocaml.doc("<p>A machine-parsable string error or warning code.</p>") type errorCode = string
type dynamicFieldName = string
type double = float
@ocaml.doc(
  "<p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>"
)
type domainName = string
@ocaml.doc("<p>An internally generated unique identifier for a domain.</p>") type domainId = string
type boolean_ = bool
@ocaml.doc(
  "<p>An <a href=\"http://tools.ietf.org/html/rfc4646\" target=\"_blank\">IETF RFC 4646</a> language code or <code>mul</code>  for multiple languages.</p>"
)
type analysisSchemeLanguage = [
  | @as("zh-Hant") #Zh_Hant
  | @as("zh-Hans") #Zh_Hans
  | @as("tr") #Tr
  | @as("th") #Th
  | @as("sv") #Sv
  | @as("ru") #Ru
  | @as("ro") #Ro
  | @as("pt") #Pt
  | @as("no") #No
  | @as("nl") #Nl
  | @as("mul") #Mul
  | @as("lv") #Lv
  | @as("ko") #Ko
  | @as("ja") #Ja
  | @as("it") #It
  | @as("id") #Id
  | @as("hy") #Hy
  | @as("hu") #Hu
  | @as("hi") #Hi
  | @as("he") #He
  | @as("gl") #Gl
  | @as("ga") #Ga
  | @as("fr") #Fr
  | @as("fi") #Fi
  | @as("fa") #Fa
  | @as("eu") #Eu
  | @as("es") #Es
  | @as("en") #En
  | @as("el") #El
  | @as("de") #De
  | @as("da") #Da
  | @as("cs") #Cs
  | @as("ca") #Ca
  | @as("bg") #Bg
  | @as("ar") #Ar
]
type algorithmicStemming = [
  | @as("full") #Full
  | @as("light") #Light
  | @as("minimal") #Minimal
  | @as("none") #None
]
@ocaml.doc(
  "<p>The Amazon Resource Name (ARN) of the search domain.  See <a href=\"http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html\" target=\"_blank\">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>"
)
type arn = string
@ocaml.doc("<p>The Amazon CloudSearch API version for a domain: 2011-02-01 or 2013-01-01.</p>")
type apiversion = string
@ocaml.doc(
  "<p>Options for text field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>text</code>. A <code>text</code> field is always searchable. All options are enabled by default.</p>"
)
type textOptions = {
  @ocaml.doc("<p>The name of an analysis scheme for a  <code>text</code> field.</p>")
  @as("AnalysisScheme")
  analysisScheme: option<word>,
  @ocaml.doc("<p>Whether highlights can be returned for the field.</p>") @as("HighlightEnabled")
  highlightEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the field can be used to sort the search results.</p>") @as("SortEnabled")
  sortEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field can be returned in the search results.</p>")
  @as("ReturnEnabled")
  returnEnabled: option<boolean_>,
  @as("SourceField") sourceField: option<fieldName>,
  @ocaml.doc("A value to use for the field if the field isn't specified for a document.")
  @as("DefaultValue")
  defaultValue: option<fieldValue>,
}
@ocaml.doc(
  "<p>Options for a field that contains an array of text strings.  Present if <code>IndexFieldType</code> specifies the field is of type <code>text-array</code>. A <code>text-array</code> field is always searchable. All options are enabled by default.</p>"
)
type textArrayOptions = {
  @ocaml.doc("<p>The name of an analysis scheme for a  <code>text-array</code> field.</p>")
  @as("AnalysisScheme")
  analysisScheme: option<word>,
  @ocaml.doc("<p>Whether highlights can be returned for the field.</p>") @as("HighlightEnabled")
  highlightEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field can be returned in the search results.</p>")
  @as("ReturnEnabled")
  returnEnabled: option<boolean_>,
  @ocaml.doc("<p>A list of source fields to map to the field. </p>") @as("SourceFields")
  sourceFields: option<fieldNameCommaList>,
  @ocaml.doc("A value to use for the field if the field isn't specified for a document.")
  @as("DefaultValue")
  defaultValue: option<fieldValue>,
}
type standardNameList = array<standardName>
@ocaml.doc("<p>The endpoint to which service requests can be submitted.</p>")
type serviceEndpoint = {@as("Endpoint") endpoint: option<serviceUrl>}
@ocaml.doc(
  "<p>The desired instance type and desired number of replicas of each index partition.</p>"
)
type scalingParameters = {
  @ocaml.doc("<p>The number of partitions you want to preconfigure for your domain. Only valid when
    you select <code>m2.2xlarge</code> as the desired instance type.</p>")
  @as("DesiredPartitionCount")
  desiredPartitionCount: option<uintValue>,
  @ocaml.doc("<p>The number of replicas you want to preconfigure for each index partition.</p>")
  @as("DesiredReplicationCount")
  desiredReplicationCount: option<uintValue>,
  @ocaml.doc(
    "<p>The instance type that you want to preconfigure for your domain. For example, <code>search.m1.small</code>.</p>"
  )
  @as("DesiredInstanceType")
  desiredInstanceType: option<partitionInstanceType>,
}
@ocaml.doc("<p>The status of domain configuration option.</p>")
type optionStatus = {
  @ocaml.doc("<p>Indicates that the option will be deleted once processing is complete.</p>")
  @as("PendingDeletion")
  pendingDeletion: option<boolean_>,
  @ocaml.doc("<p>The state of processing a change to an option.  Possible values:</p><ul>
    <li><code>RequiresIndexDocuments</code>: the option's latest value will not be deployed until  <a>IndexDocuments</a> has been called and indexing is complete.</li>
    <li><code>Processing</code>: the option's latest value is in the process of being activated.  </li>
    <li><code>Active</code>: the option's latest value is completely deployed.</li>
    <li><code>FailedToValidate</code>: the option value is not compatible with the domain's data and cannot be used to index the data. You must either modify the option value or update or remove the incompatible documents.</li>
  </ul>")
  @as("State")
  state: optionState,
  @ocaml.doc("<p>A unique integer that indicates when this option was last updated.</p>")
  @as("UpdateVersion")
  updateVersion: option<uintValue>,
  @ocaml.doc("<p>A timestamp for when this option was last updated.</p>") @as("UpdateDate")
  updateDate: updateTimestamp,
  @ocaml.doc("<p>A timestamp for when this option was created.</p>") @as("CreationDate")
  creationDate: updateTimestamp,
}
@ocaml.doc(
  "<p>Options for literal field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>literal</code>. All options are enabled by default.</p>"
)
type literalOptions = {
  @ocaml.doc("<p>Whether the field can be used to sort the search results.</p>") @as("SortEnabled")
  sortEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field can be returned in the search results.</p>")
  @as("ReturnEnabled")
  returnEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field are searchable.</p>") @as("SearchEnabled")
  searchEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether facet information can be returned for the field.</p>") @as("FacetEnabled")
  facetEnabled: option<boolean_>,
  @as("SourceField") sourceField: option<fieldName>,
  @ocaml.doc("A value to use for the field if the field isn't specified for a document.")
  @as("DefaultValue")
  defaultValue: option<fieldValue>,
}
@ocaml.doc(
  "<p>Options for a field that contains an array of literal strings.  Present if <code>IndexFieldType</code> specifies the field is of type <code>literal-array</code>. All options are enabled by default.</p>"
)
type literalArrayOptions = {
  @ocaml.doc("<p>Whether the contents of the field can be returned in the search results.</p>")
  @as("ReturnEnabled")
  returnEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field are searchable.</p>") @as("SearchEnabled")
  searchEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether facet information can be returned for the field.</p>") @as("FacetEnabled")
  facetEnabled: option<boolean_>,
  @ocaml.doc("<p>A list of source fields to map to the field. </p>") @as("SourceFields")
  sourceFields: option<fieldNameCommaList>,
  @ocaml.doc("A value to use for the field if the field isn't specified for a document.")
  @as("DefaultValue")
  defaultValue: option<fieldValue>,
}
type limits = {
  @as("MaximumPartitionCount") maximumPartitionCount: maximumPartitionCount,
  @as("MaximumReplicationCount") maximumReplicationCount: maximumReplicationCount,
}
@ocaml.doc(
  "<p>Options for a latlon field. A latlon field contains a location stored as a latitude and longitude value pair. Present if <code>IndexFieldType</code> specifies the field is of type <code>latlon</code>. All options are enabled by default.</p>"
)
type latLonOptions = {
  @ocaml.doc("<p>Whether the field can be used to sort the search results.</p>") @as("SortEnabled")
  sortEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field can be returned in the search results.</p>")
  @as("ReturnEnabled")
  returnEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field are searchable.</p>") @as("SearchEnabled")
  searchEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether facet information can be returned for the field.</p>") @as("FacetEnabled")
  facetEnabled: option<boolean_>,
  @as("SourceField") sourceField: option<fieldName>,
  @ocaml.doc("A value to use for the field if the field isn't specified for a document.")
  @as("DefaultValue")
  defaultValue: option<fieldValue>,
}
@ocaml.doc(
  "<p>Options for a 64-bit signed integer field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>int</code>. All options are enabled by default.</p>"
)
type intOptions = {
  @ocaml.doc("<p>Whether the field can be used to sort the search results.</p>") @as("SortEnabled")
  sortEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field can be returned in the search results.</p>")
  @as("ReturnEnabled")
  returnEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field are searchable.</p>") @as("SearchEnabled")
  searchEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether facet information can be returned for the field.</p>") @as("FacetEnabled")
  facetEnabled: option<boolean_>,
  @ocaml.doc("<p>The name of the source field to map to the field. </p>") @as("SourceField")
  sourceField: option<fieldName>,
  @ocaml.doc(
    "A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document."
  )
  @as("DefaultValue")
  defaultValue: option<long>,
}
@ocaml.doc(
  "<p>Options for a field that contains an array of 64-bit signed integers.  Present if <code>IndexFieldType</code> specifies the field is of type <code>int-array</code>. All options are enabled by default.</p>"
)
type intArrayOptions = {
  @ocaml.doc("<p>Whether the contents of the field can be returned in the search results.</p>")
  @as("ReturnEnabled")
  returnEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field are searchable.</p>") @as("SearchEnabled")
  searchEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether facet information can be returned for the field.</p>") @as("FacetEnabled")
  facetEnabled: option<boolean_>,
  @ocaml.doc("<p>A list of source fields to map to the field. </p>") @as("SourceFields")
  sourceFields: option<fieldNameCommaList>,
  @ocaml.doc("A value to use for the field if the field isn't specified for a document.")
  @as("DefaultValue")
  defaultValue: option<long>,
}
@ocaml.doc("<p>A list of field names.</p>") type fieldNameList = array<fieldName>
@ocaml.doc(
  "<p>A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results.  </p>"
)
type expression = {
  @as("ExpressionValue") expressionValue: expressionValue,
  @as("ExpressionName") expressionName: standardName,
}
type dynamicFieldNameList = array<dynamicFieldName>
@ocaml.doc(
  "<p>Options for a double-precision 64-bit floating point field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>double</code>. All options are enabled by default.</p>"
)
type doubleOptions = {
  @ocaml.doc("<p>Whether the field can be used to sort the search results.</p>") @as("SortEnabled")
  sortEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field can be returned in the search results.</p>")
  @as("ReturnEnabled")
  returnEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field are searchable.</p>") @as("SearchEnabled")
  searchEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether facet information can be returned for the field.</p>") @as("FacetEnabled")
  facetEnabled: option<boolean_>,
  @ocaml.doc("<p>The name of the source field to map to the field. </p>") @as("SourceField")
  sourceField: option<fieldName>,
  @ocaml.doc(
    "<p>A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.</p>"
  )
  @as("DefaultValue")
  defaultValue: option<double>,
}
@ocaml.doc(
  "<p>Options for a field that contains an array of double-precision 64-bit floating point values.  Present if <code>IndexFieldType</code> specifies the field is of type <code>double-array</code>.  All options are enabled by default.</p>"
)
type doubleArrayOptions = {
  @ocaml.doc("<p>Whether the contents of the field can be returned in the search results.</p>")
  @as("ReturnEnabled")
  returnEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field are searchable.</p>") @as("SearchEnabled")
  searchEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether facet information can be returned for the field.</p>") @as("FacetEnabled")
  facetEnabled: option<boolean_>,
  @ocaml.doc("<p>A list of source fields to map to the field. </p>") @as("SourceFields")
  sourceFields: option<fieldNameCommaList>,
  @ocaml.doc("A value to use for the field if the field isn't specified for a document.")
  @as("DefaultValue")
  defaultValue: option<double>,
}
@ocaml.doc("<p>A collection of domain names.</p>") type domainNameMap = Js.Dict.t<apiversion>
@ocaml.doc("<p>A list of domain names.</p>") type domainNameList = array<domainName>
@ocaml.doc("<p>The domain's endpoint options.</p>")
type domainEndpointOptions = {
  @ocaml.doc("<p>The minimum required TLS version</p>") @as("TLSSecurityPolicy")
  tlssecurityPolicy: option<tlssecurityPolicy>,
  @ocaml.doc("<p>Whether the domain is HTTPS only enabled.</p>") @as("EnforceHTTPS")
  enforceHTTPS: option<boolean_>,
}
@ocaml.doc("<p>Options for a search suggester.</p>")
type documentSuggesterOptions = {
  @ocaml.doc("<p>An expression that computes a score for each suggestion to control how they are sorted. The scores are rounded to the nearest
        integer, with a floor of 0 and a ceiling of 2^31-1. A document's relevance score is not computed
        for suggestions, so sort expressions cannot reference the <code>_score</code> value.
        To sort suggestions using a numeric field or existing expression, simply specify
        the name of the field or expression. If no expression is configured for the suggester, the
        suggestions are sorted with the closest matches listed first.</p>")
  @as("SortExpression")
  sortExpression: option<string_>,
  @ocaml.doc(
    "<p>The level of fuzziness allowed when suggesting matches for a string: <code>none</code>, <code>low</code>, or <code>high</code>. With none, the specified string is treated as an exact prefix. With low, suggestions must differ from the specified string by no more than one character. With high, suggestions can differ by up to two characters. The default is none. </p>"
  )
  @as("FuzzyMatching")
  fuzzyMatching: option<suggesterFuzzyMatching>,
  @ocaml.doc("<p>The name of the index field you want to use for suggestions.
      </p>")
  @as("SourceField")
  sourceField: fieldName,
}
@ocaml.doc(
  "<p>Options for a date field. Dates and times are specified in UTC (Coordinated Universal Time) according to IETF RFC3339: yyyy-mm-ddT00:00:00Z.  Present if <code>IndexFieldType</code> specifies the field is of type <code>date</code>. All options are enabled by default.</p>"
)
type dateOptions = {
  @ocaml.doc("<p>Whether the field can be used to sort the search results.</p>") @as("SortEnabled")
  sortEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field can be returned in the search results.</p>")
  @as("ReturnEnabled")
  returnEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field are searchable.</p>") @as("SearchEnabled")
  searchEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether facet information can be returned for the field.</p>") @as("FacetEnabled")
  facetEnabled: option<boolean_>,
  @as("SourceField") sourceField: option<fieldName>,
  @ocaml.doc("A value to use for the field if the field isn't specified for a document.")
  @as("DefaultValue")
  defaultValue: option<fieldValue>,
}
@ocaml.doc(
  "<p>Options for a field that contains an array of dates.  Present if <code>IndexFieldType</code> specifies the field is of type <code>date-array</code>. All options are enabled by default.</p>"
)
type dateArrayOptions = {
  @ocaml.doc("<p>Whether the contents of the field can be returned in the search results.</p>")
  @as("ReturnEnabled")
  returnEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the contents of the field are searchable.</p>") @as("SearchEnabled")
  searchEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether facet information can be returned for the field.</p>") @as("FacetEnabled")
  facetEnabled: option<boolean_>,
  @ocaml.doc("<p>A list of source fields to map to the field. </p>") @as("SourceFields")
  sourceFields: option<fieldNameCommaList>,
  @ocaml.doc("A value to use for the field if the field isn't specified for a document.")
  @as("DefaultValue")
  defaultValue: option<fieldValue>,
}
@ocaml.doc(
  "<p>Synonyms, stopwords, and stemming options for an analysis scheme. Includes tokenization dictionary for Japanese.</p>"
)
type analysisOptions = {
  @ocaml.doc(
    "<p>The level of algorithmic stemming to perform: <code>none</code>, <code>minimal</code>, <code>light</code>, or <code>full</code>. The available levels vary depending on the language. For more information, see <a href=\"http://docs.aws.amazon.com/cloudsearch/latest/developerguide/text-processing.html#text-processing-settings\" target=\"_blank\">Language Specific Text Processing Settings</a> in the <i>Amazon CloudSearch Developer Guide</i> </p>"
  )
  @as("AlgorithmicStemming")
  algorithmicStemming: option<algorithmicStemming>,
  @ocaml.doc(
    "<p>A JSON array that contains a collection of terms, tokens, readings and part of speech for Japanese Tokenizaiton. The Japanese tokenization dictionary enables you to override the default tokenization for selected terms. This is only valid for Japanese language fields.</p>"
  )
  @as("JapaneseTokenizationDictionary")
  japaneseTokenizationDictionary: option<string_>,
  @ocaml.doc(
    "<p>A JSON object that contains a collection of string:value pairs that each map a term to its stem. For example, <code>{\"term1\": \"stem1\", \"term2\": \"stem2\", \"term3\": \"stem3\"}</code>. The stemming dictionary is applied in addition to any algorithmic stemming. This enables you to override the results of the algorithmic stemming to correct specific cases of overstemming or understemming. The maximum size of a stemming dictionary is 500 KB.</p>"
  )
  @as("StemmingDictionary")
  stemmingDictionary: option<string_>,
  @ocaml.doc(
    "<p>A  JSON array of terms to ignore during indexing and searching. For example, <code>[\"a\", \"an\", \"the\", \"of\"]</code>. The stopwords dictionary must explicitly list each word you want to ignore. Wildcards and regular expressions are not supported. </p>"
  )
  @as("Stopwords")
  stopwords: option<string_>,
  @ocaml.doc(
    "<p>A JSON object that defines synonym groups and aliases. A synonym group is an array of arrays, where each sub-array is a group of terms where each term in the group is considered a synonym of every other term in the group. The aliases value is an object that contains a collection of string:value pairs where the string specifies a term and the array of values specifies each of the aliases for that term. An alias is considered a synonym of the specified term, but the term is not considered a synonym of the alias. For more information about specifying synonyms, see <a href=\"http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html#synonyms\">Synonyms</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>"
  )
  @as("Synonyms")
  synonyms: option<string_>,
}
@ocaml.doc(
  "<p>Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: <code>FuzzyMatching</code>, <code>SortExpression</code>. </p>"
)
type suggester = {
  @as("DocumentSuggesterOptions") documentSuggesterOptions: documentSuggesterOptions,
  @as("SuggesterName") suggesterName: standardName,
}
@ocaml.doc("<p>The status and configuration of a search domain's scaling parameters. </p>")
type scalingParametersStatus = {
  @as("Status") status: optionStatus,
  @as("Options") options: scalingParameters,
}
@ocaml.doc(
  "<p>Configuration information for a field in the index, including its name, type, and options. The supported options depend on the <code><a>IndexFieldType</a></code>.</p>"
)
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
  @ocaml.doc("<p>A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields.
      A dynamic field's name defines a pattern that begins or ends with a wildcard.
      Any document fields that don't map to a regular index field but do match a	
      dynamic field's pattern are configured with the dynamic field's indexing options.
    </p>
    <p>Regular field names begin with a letter and can contain the following characters:
      a-z (lowercase), 0-9, and _ (underscore).
      Dynamic field names must begin or end with a wildcard (*).
      The wildcard can also be the only character in a dynamic field name.
      Multiple wildcards, and wildcards embedded within a string are not supported.
    </p>
    <p>The name <code>score</code> is reserved and cannot be used as a field name.
      To reference a document's ID, you can use the name <code>_id</code>.
    </p>")
  @as("IndexFieldName")
  indexFieldName: dynamicFieldName,
}
@ocaml.doc("<p>The value of an <code>Expression</code> and its current status.</p>")
type expressionStatus = {
  @as("Status") status: optionStatus,
  @ocaml.doc(
    "<p>The expression that is evaluated for sorting while processing a search request.</p>"
  )
  @as("Options")
  options: expression,
}
@ocaml.doc("<p>The current status of the search domain.</p>")
type domainStatus = {
  @as("Limits") limits: option<limits>,
  @ocaml.doc("<p>The number of search instances that are available to process search requests.</p>")
  @as("SearchInstanceCount")
  searchInstanceCount: option<instanceCount>,
  @ocaml.doc("<p>The number of partitions across which the search index is spread.</p>")
  @as("SearchPartitionCount")
  searchPartitionCount: option<partitionCount>,
  @ocaml.doc("<p>The instance type that is being used to process search requests.</p>")
  @as("SearchInstanceType")
  searchInstanceType: option<searchInstanceType>,
  @ocaml.doc(
    "<p>True if processing is being done to activate the current domain configuration.</p>"
  )
  @as("Processing")
  processing: option<boolean_>,
  @ocaml.doc(
    "<p>True if <a>IndexDocuments</a> needs to be called to activate the current domain configuration.</p>"
  )
  @as("RequiresIndexDocuments")
  requiresIndexDocuments: boolean_,
  @ocaml.doc("<p>The service endpoint for requesting search results from a search domain.</p>")
  @as("SearchService")
  searchService: option<serviceEndpoint>,
  @ocaml.doc("<p>The service endpoint for updating documents in a search domain.</p>")
  @as("DocService")
  docService: option<serviceEndpoint>,
  @ocaml.doc(
    "<p>True if the search domain has been deleted.  The system must clean up resources dedicated to the search domain when <a>DeleteDomain</a> is called.  Newly deleted search domains are returned from <a>DescribeDomains</a> with a true value for IsDeleted for several minutes until resource cleanup is complete.</p>"
  )
  @as("Deleted")
  deleted: option<boolean_>,
  @ocaml.doc(
    "<p>True if the search domain is created. It can take several minutes to initialize a domain when <a>CreateDomain</a> is called. Newly created search domains are returned from <a>DescribeDomains</a> with a false value for Created until domain creation is complete.</p>"
  )
  @as("Created")
  created: option<boolean_>,
  @as("ARN") arn: option<arn>,
  @as("DomainName") domainName: domainName,
  @as("DomainId") domainId: domainId,
}
@ocaml.doc("<p>The configuration and status of the domain's endpoint options.</p>")
type domainEndpointOptionsStatus = {
  @ocaml.doc("<p>The status of the configured domain endpoint options.</p>") @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>The domain endpoint options configured for the domain.</p>") @as("Options")
  options: domainEndpointOptions,
}
@ocaml.doc("<p>The status and configuration of the domain's availability options.</p>")
type availabilityOptionsStatus = {
  @as("Status") status: optionStatus,
  @ocaml.doc("<p>The availability options configured for the domain.</p>") @as("Options")
  options: multiAZ,
}
@ocaml.doc(
  "<p>Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: <code>Synonyms</code>, <code>Stopwords</code>, <code>StemmingDictionary</code>, <code>JapaneseTokenizationDictionary</code> and <code>AlgorithmicStemming</code>.</p>"
)
type analysisScheme = {
  @as("AnalysisOptions") analysisOptions: option<analysisOptions>,
  @as("AnalysisSchemeLanguage") analysisSchemeLanguage: analysisSchemeLanguage,
  @as("AnalysisSchemeName") analysisSchemeName: standardName,
}
@ocaml.doc(
  "<p>The configured access rules for the domain's document and search endpoints, and the current status of those rules.</p>"
)
type accessPoliciesStatus = {
  @as("Status") status: optionStatus,
  @as("Options") options: policyDocument,
}
@ocaml.doc("<p>The value of a <code>Suggester</code> and its current status.</p>")
type suggesterStatus = {
  @as("Status") status: optionStatus,
  @as("Options") options: suggester,
}
@ocaml.doc("<p>The value of an <code>IndexField</code> and its current status.</p>")
type indexFieldStatus = {
  @as("Status") status: optionStatus,
  @as("Options") options: indexField,
}
@ocaml.doc("<p>Contains the status of multiple expressions.</p>")
type expressionStatusList = array<expressionStatus>
@ocaml.doc("<p>A list that contains the status of each requested domain.</p>")
type domainStatusList = array<domainStatus>
@ocaml.doc("<p>The status and configuration of an  <code>AnalysisScheme</code>.</p>")
type analysisSchemeStatus = {
  @as("Status") status: optionStatus,
  @as("Options") options: analysisScheme,
}
@ocaml.doc("<p>Contains the status of multiple suggesters.</p>")
type suggesterStatusList = array<suggesterStatus>
@ocaml.doc("<p>Contains the status of multiple index fields.</p>")
type indexFieldStatusList = array<indexFieldStatus>
@ocaml.doc("<p>A list of the analysis schemes configured for a domain.</p>")
type analysisSchemeStatusList = array<analysisSchemeStatus>
@ocaml.doc("<fullname>Amazon CloudSearch Configuration Service</fullname>
    <p>You use the Amazon CloudSearch configuration service to create, configure, and manage search domains.
      Configuration service  requests are submitted using the AWS Query protocol. AWS Query requests
      are HTTP or HTTPS requests submitted via HTTP GET or POST with a query parameter named Action.</p>
    <p>The endpoint for configuration service requests is region-specific: cloudsearch.<i>region</i>.amazonaws.com.
      For example, cloudsearch.us-east-1.amazonaws.com. For a current list of supported regions and endpoints,
      see <a href=\"http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region\" target=\"_blank\">Regions and Endpoints</a>.</p>")
module ListDomainNames = {
  type t
  type request = {.}
  @ocaml.doc(
    "<p>The result of a <code>ListDomainNames</code> request. Contains a list of the domains owned by an account.</p>"
  )
  type response = {
    @ocaml.doc("<p>The names of the search domains owned by an account.</p>") @as("DomainNames")
    domainNames: option<domainNameMap>,
  }
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "ListDomainNamesCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module IndexDocuments = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>IndexDocuments</a></code> operation. Specifies the name of the domain you want to re-index.</p>"
  )
  type request = {@as("DomainName") domainName: domainName}
  @ocaml.doc(
    "<p>The result of an <code>IndexDocuments</code> request. Contains the status of the indexing operation, including the fields being indexed.</p>"
  )
  type response = {
    @ocaml.doc("<p>The names of the fields that are currently being indexed.</p>") @as("FieldNames")
    fieldNames: option<fieldNameList>,
  }
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "IndexDocumentsCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BuildSuggesters = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>BuildSuggester</a></code> operation. Specifies the name of the domain you want to update.</p>"
  )
  type request = {@as("DomainName") domainName: domainName}
  @ocaml.doc(
    "<p>The result of a <code>BuildSuggester</code> request. Contains a list of the fields used for suggestions.</p>"
  )
  type response = {@as("FieldNames") fieldNames: option<fieldNameList>}
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "BuildSuggestersCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateServiceAccessPolicies = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>UpdateServiceAccessPolicies</a></code> operation. Specifies the name of the domain you want to update and the access rules you want to configure.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>The access rules you want to configure. These rules replace any existing rules. </p>"
    )
    @as("AccessPolicies")
    accessPolicies: policyDocument,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of an <code>UpdateServiceAccessPolicies</code> request. Contains the new access policies.</p>"
  )
  type response = {
    @ocaml.doc("<p>The access rules configured for the domain.</p>") @as("AccessPolicies")
    accessPolicies: accessPoliciesStatus,
  }
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "UpdateServiceAccessPoliciesCommand"
  let make = (~accessPolicies, ~domainName, ()) =>
    new({accessPolicies: accessPolicies, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateScalingParameters = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>UpdateScalingParameters</a></code> operation. Specifies the name of the domain you want to update and the scaling parameters you want to configure.</p>"
  )
  type request = {
    @as("ScalingParameters") scalingParameters: scalingParameters,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>UpdateScalingParameters</code> request. Contains the status of the newly-configured scaling parameters.</p>"
  )
  type response = {@as("ScalingParameters") scalingParameters: scalingParametersStatus}
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "UpdateScalingParametersCommand"
  let make = (~scalingParameters, ~domainName, ()) =>
    new({scalingParameters: scalingParameters, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomainEndpointOptions = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>UpdateDomainEndpointOptions</a></code> operation. Specifies the name of the domain you want to update and the domain endpoint options.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>Whether to require that all requests to the domain arrive over HTTPS. We recommend Policy-Min-TLS-1-2-2019-07 for TLSSecurityPolicy. For compatibility with older clients, the default is Policy-Min-TLS-1-0-2019-07. </p>"
    )
    @as("DomainEndpointOptions")
    domainEndpointOptions: domainEndpointOptions,
    @ocaml.doc("<p>A string that represents the name of a domain.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>UpdateDomainEndpointOptions</code> request. Contains the configuration and status of the domain's endpoint options. </p>"
  )
  type response = {
    @ocaml.doc("<p>The newly-configured domain endpoint options.</p>") @as("DomainEndpointOptions")
    domainEndpointOptions: option<domainEndpointOptionsStatus>,
  }
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "UpdateDomainEndpointOptionsCommand"
  let make = (~domainEndpointOptions, ~domainName, ()) =>
    new({domainEndpointOptions: domainEndpointOptions, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAvailabilityOptions = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>UpdateAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to update and the Multi-AZ availability option.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to <code>false</code>. </p>"
    )
    @as("MultiAZ")
    multiAZ: boolean_,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>UpdateAvailabilityOptions</code> request. Contains the status of the domain's availability options. </p>"
  )
  type response = {
    @ocaml.doc(
      "<p>The newly-configured availability options. Indicates whether Multi-AZ is enabled for the domain. </p>"
    )
    @as("AvailabilityOptions")
    availabilityOptions: option<availabilityOptionsStatus>,
  }
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "UpdateAvailabilityOptionsCommand"
  let make = (~multiAZ, ~domainName, ()) => new({multiAZ: multiAZ, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeServiceAccessPolicies = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeServiceAccessPolicies</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"
    )
    @as("Deployed")
    deployed: option<boolean_>,
    @ocaml.doc("<p>The name of the domain you want to describe.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The result of a <code>DescribeServiceAccessPolicies</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The access rules configured for the domain specified in the request.</p>")
    @as("AccessPolicies")
    accessPolicies: accessPoliciesStatus,
  }
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "DescribeServiceAccessPoliciesCommand"
  let make = (~domainName, ~deployed=?, ()) => new({deployed: deployed, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScalingParameters = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeScalingParameters</a></code> operation. Specifies the name of the domain you want to describe. </p>"
  )
  type request = {@as("DomainName") domainName: domainName}
  @ocaml.doc(
    "<p>The result of a <code>DescribeScalingParameters</code> request. Contains the scaling parameters configured for the domain specified in the request.</p>"
  )
  type response = {@as("ScalingParameters") scalingParameters: scalingParametersStatus}
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "DescribeScalingParametersCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomainEndpointOptions = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeDomainEndpointOptions</a></code> operation. Specify the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the Deployed option to <code>true</code>.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>Whether to retrieve the latest configuration (which might be in a Processing state) or the current, active configuration. Defaults to <code>false</code>.</p>"
    )
    @as("Deployed")
    deployed: option<boolean_>,
    @ocaml.doc("<p>A string that represents the name of a domain.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DescribeDomainEndpointOptions</code> request. Contains the status and configuration of a search domain's endpoint options. </p>"
  )
  type response = {
    @ocaml.doc("<p>The status and configuration of a search domain's endpoint options.</p>")
    @as("DomainEndpointOptions")
    domainEndpointOptions: option<domainEndpointOptionsStatus>,
  }
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "DescribeDomainEndpointOptionsCommand"
  let make = (~domainName, ~deployed=?, ()) => new({deployed: deployed, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAvailabilityOptions = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the Deployed option to <code>true</code>.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"
    )
    @as("Deployed")
    deployed: option<boolean_>,
    @ocaml.doc("<p>The name of the domain you want to describe.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DescribeAvailabilityOptions</code> request. Indicates whether or not the Multi-AZ option is enabled for the domain specified in the request. </p>"
  )
  type response = {
    @ocaml.doc(
      "<p>The availability options configured for the domain. Indicates whether Multi-AZ is enabled for the domain. </p>"
    )
    @as("AvailabilityOptions")
    availabilityOptions: option<availabilityOptionsStatus>,
  }
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "DescribeAvailabilityOptionsCommand"
  let make = (~domainName, ~deployed=?, ()) => new({deployed: deployed, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteExpression = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DeleteExpression</a></code> operation. Specifies the name of the domain you want to update and the name of the expression you want to delete.</p>"
  )
  type request = {
    @ocaml.doc("<p>The name of the <code><a>Expression</a></code> to delete.</p>")
    @as("ExpressionName")
    expressionName: standardName,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code><a>DeleteExpression</a></code> request. Specifies the expression being deleted.</p>"
  )
  type response = {
    @ocaml.doc("<p>The status of the expression being deleted.</p>") @as("Expression")
    expression: expressionStatus,
  }
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "DeleteExpressionCommand"
  let make = (~expressionName, ~domainName, ()) =>
    new({expressionName: expressionName, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomain = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DeleteDomain</a></code> operation. Specifies the name of the domain you want to delete.</p>"
  )
  type request = {
    @ocaml.doc("<p>The name of the domain you want to permanently delete.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DeleteDomain</code> request. Contains the status of a newly deleted domain, or no status if the domain has already been completely deleted.</p>"
  )
  type response = {@as("DomainStatus") domainStatus: option<domainStatus>}
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "DeleteDomainCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DefineExpression = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DefineExpression</a></code> operation. Specifies the name of the domain you want to update and the expression you want to configure.</p>"
  )
  type request = {
    @as("Expression") expression: expression,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DefineExpression</code> request. Contains the status of the newly-configured expression.</p>"
  )
  type response = {@as("Expression") expression: expressionStatus}
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "DefineExpressionCommand"
  let make = (~expression, ~domainName, ()) => new({expression: expression, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomain = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>CreateDomain</a></code> operation. Specifies a name for the new search domain.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>A name for the domain you are creating. Allowed characters are a-z (lower-case letters), 0-9, and hyphen (-). Domain names must start with a letter or number and be at least 3 and no more than 28 characters long.</p>"
    )
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>CreateDomainRequest</code>. Contains the status of a newly created domain.</p>"
  )
  type response = {@as("DomainStatus") domainStatus: option<domainStatus>}
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "CreateDomainCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExpressions = {
  type t
  @ocaml.doc("<p>Container for the parameters to the <code><a>DescribeDomains</a></code> operation.
      Specifies the name of the domain you want to describe. To restrict the response to particular expressions, specify the names of the expressions you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>")
  type request = {
    @ocaml.doc(
      "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"
    )
    @as("Deployed")
    deployed: option<boolean_>,
    @ocaml.doc(
      "<p>Limits the <code><a>DescribeExpressions</a></code> response to the specified expressions. If not specified, all expressions are shown.</p>"
    )
    @as("ExpressionNames")
    expressionNames: option<standardNameList>,
    @ocaml.doc("<p>The name of the domain you want to describe.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DescribeExpressions</code> request. Contains the expressions configured for the domain specified in the request.</p>"
  )
  type response = {
    @ocaml.doc("<p>The expressions configured for the domain.</p>") @as("Expressions")
    expressions: expressionStatusList,
  }
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "DescribeExpressionsCommand"
  let make = (~domainName, ~deployed=?, ~expressionNames=?, ()) =>
    new({deployed: deployed, expressionNames: expressionNames, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomains = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeDomains</a></code> operation. By default shows the status of all domains. To restrict the response to particular domains, specify the names of the domains you want to describe.</p>"
  )
  type request = {
    @ocaml.doc("<p>The names of the domains you want to include in the response.</p>")
    @as("DomainNames")
    domainNames: option<domainNameList>,
  }
  @ocaml.doc(
    "<p>The result of a <code>DescribeDomains</code> request. Contains the status of the domains specified in the request or all domains owned by the account.</p>"
  )
  type response = {@as("DomainStatusList") domainStatusList: domainStatusList}
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "DescribeDomainsCommand"
  let make = (~domainNames=?, ()) => new({domainNames: domainNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSuggester = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DeleteSuggester</a></code> operation. Specifies the name of the domain you want to update and name of the suggester you want to delete.</p>"
  )
  type request = {
    @ocaml.doc("<p>Specifies the name of the suggester you want to delete.</p>")
    @as("SuggesterName")
    suggesterName: standardName,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DeleteSuggester</code> request. Contains the status of the deleted suggester.</p>"
  )
  type response = {
    @ocaml.doc("<p>The status of the suggester being deleted.</p>") @as("Suggester")
    suggester: suggesterStatus,
  }
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "DeleteSuggesterCommand"
  let make = (~suggesterName, ~domainName, ()) =>
    new({suggesterName: suggesterName, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteIndexField = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DeleteIndexField</a></code> operation. Specifies the name of the domain you want to update and the name of the index field you want to delete.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>The name of the index field your want to remove from the domain's indexing options.</p>"
    )
    @as("IndexFieldName")
    indexFieldName: dynamicFieldName,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc("<p>The result of a <code><a>DeleteIndexField</a></code> request.</p>")
  type response = {
    @ocaml.doc("<p>The status of the index field being deleted.</p>") @as("IndexField")
    indexField: indexFieldStatus,
  }
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "DeleteIndexFieldCommand"
  let make = (~indexFieldName, ~domainName, ()) =>
    new({indexFieldName: indexFieldName, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAnalysisScheme = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DeleteAnalysisScheme</a></code> operation. Specifies the name of the domain you want to update and the analysis scheme you want to delete. </p>"
  )
  type request = {
    @ocaml.doc("<p>The name of the analysis scheme you want to delete.</p>")
    @as("AnalysisSchemeName")
    analysisSchemeName: standardName,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DeleteAnalysisScheme</code> request. Contains the status of the deleted analysis scheme.</p>"
  )
  type response = {
    @ocaml.doc("<p>The status of the analysis scheme being deleted.</p>") @as("AnalysisScheme")
    analysisScheme: analysisSchemeStatus,
  }
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "DeleteAnalysisSchemeCommand"
  let make = (~analysisSchemeName, ~domainName, ()) =>
    new({analysisSchemeName: analysisSchemeName, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DefineSuggester = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DefineSuggester</a></code> operation. Specifies the name of the domain you want to update and the suggester configuration.</p>"
  )
  type request = {
    @as("Suggester") suggester: suggester,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DefineSuggester</code> request. Contains the status of the newly-configured suggester.</p>"
  )
  type response = {@as("Suggester") suggester: suggesterStatus}
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "DefineSuggesterCommand"
  let make = (~suggester, ~domainName, ()) => new({suggester: suggester, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DefineIndexField = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DefineIndexField</a></code> operation. Specifies the name of the domain you want to update and the index field configuration.</p>"
  )
  type request = {
    @ocaml.doc("<p>The index field and field options you want to configure. </p>") @as("IndexField")
    indexField: indexField,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code><a>DefineIndexField</a></code> request. Contains the status of the newly-configured index field.</p>"
  )
  type response = {@as("IndexField") indexField: indexFieldStatus}
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "DefineIndexFieldCommand"
  let make = (~indexField, ~domainName, ()) => new({indexField: indexField, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DefineAnalysisScheme = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DefineAnalysisScheme</a></code> operation. Specifies the name of the domain you want to update and the analysis scheme configuration.</p>"
  )
  type request = {
    @as("AnalysisScheme") analysisScheme: analysisScheme,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code><a>DefineAnalysisScheme</a></code> request. Contains the status of the newly-configured analysis scheme.</p>"
  )
  type response = {@as("AnalysisScheme") analysisScheme: analysisSchemeStatus}
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "DefineAnalysisSchemeCommand"
  let make = (~analysisScheme, ~domainName, ()) =>
    new({analysisScheme: analysisScheme, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSuggesters = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeSuggester</a></code> operation. Specifies the name of the domain you want to describe. To restrict the response to particular suggesters, specify the names of the suggesters you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"
    )
    @as("Deployed")
    deployed: option<boolean_>,
    @ocaml.doc("<p>The suggesters you want to describe.</p>") @as("SuggesterNames")
    suggesterNames: option<standardNameList>,
    @ocaml.doc("<p>The name of the domain you want to describe.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The result of a <code>DescribeSuggesters</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The suggesters configured for the domain specified in the request.</p>")
    @as("Suggesters")
    suggesters: suggesterStatusList,
  }
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "DescribeSuggestersCommand"
  let make = (~domainName, ~deployed=?, ~suggesterNames=?, ()) =>
    new({deployed: deployed, suggesterNames: suggesterNames, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIndexFields = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeIndexFields</a></code> operation. Specifies the name of the domain you want to describe. To restrict the response to particular index fields, specify the names of the index fields you want to describe. To show  the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"
    )
    @as("Deployed")
    deployed: option<boolean_>,
    @ocaml.doc(
      "<p>A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.</p>"
    )
    @as("FieldNames")
    fieldNames: option<dynamicFieldNameList>,
    @ocaml.doc("<p>The name of the domain you want to describe.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DescribeIndexFields</code> request. Contains the index fields configured for the domain specified in the request.</p>"
  )
  type response = {
    @ocaml.doc("<p>The index fields configured for the domain.</p>") @as("IndexFields")
    indexFields: indexFieldStatusList,
  }
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "DescribeIndexFieldsCommand"
  let make = (~domainName, ~deployed=?, ~fieldNames=?, ()) =>
    new({deployed: deployed, fieldNames: fieldNames, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAnalysisSchemes = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeAnalysisSchemes</a></code> operation. Specifies the name of the domain you want to describe. To limit the response to particular analysis schemes, specify the names of the analysis schemes you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>. </p>"
  )
  type request = {
    @ocaml.doc(
      "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"
    )
    @as("Deployed")
    deployed: option<boolean_>,
    @ocaml.doc("<p>The analysis schemes you want to describe.</p>") @as("AnalysisSchemeNames")
    analysisSchemeNames: option<standardNameList>,
    @ocaml.doc("<p>The name of the domain you want to describe.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DescribeAnalysisSchemes</code> request. Contains the analysis schemes configured for the domain specified in the request.</p>"
  )
  type response = {
    @ocaml.doc("<p>The analysis scheme descriptions.</p>") @as("AnalysisSchemes")
    analysisSchemes: analysisSchemeStatusList,
  }
  @module("@aws-sdk/client-cloudsearch") @new
  external new: request => t = "DescribeAnalysisSchemesCommand"
  let make = (~domainName, ~deployed=?, ~analysisSchemeNames=?, ()) =>
    new({deployed: deployed, analysisSchemeNames: analysisSchemeNames, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
