type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-kendra") @new
external createClient: unit => awsServiceClient = "KendraClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcSecurityGroupId = string
type visitorId = string
type valueImportanceMapKey = string
type userNameAttributeField = string
type userContextPolicy = [@as("USER_TOKEN") #USER_TOKEN | @as("ATTRIBUTE_FILTER") #ATTRIBUTE_FILTER]
type userAccount = string
type url = string
type token = string
type title = string
type timestamp_ = Js.Date.t
type thesaurusStatus = [
  | @as("FAILED") #FAILED
  | @as("ACTIVE_BUT_UPDATE_FAILED") #ACTIVE_BUT_UPDATE_FAILED
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type thesaurusName = string
type thesaurusId = string
type tenantDomain = string
type tagValue = string
type tagKey = string
type tableName = string
type suggestionQueryText = string
type subnetId = string
type string_ = string
type storageCapacityUnit = int
type sortOrder = [@as("ASC") #ASC | @as("DESC") #DESC]
type sharedDriveId = string
type sharePointVersion = [@as("SHAREPOINT_ONLINE") #SHAREPOINT_ONLINE]
type serviceNowKnowledgeArticleFilterQuery = string
type serviceNowHostUrl = string
type serviceNowBuildVersionType = [@as("OTHERS") #OTHERS | @as("LONDON") #LONDON]
type serviceNowAuthenticationType = [@as("OAUTH2") #OAUTH2 | @as("HTTP_BASIC") #HTTP_BASIC]
type secretArn = string
@ocaml.doc("Enumeration for query score confidence.")
type scoreConfidence = [
  | @as("LOW") #LOW
  | @as("MEDIUM") #MEDIUM
  | @as("HIGH") #HIGH
  | @as("VERY_HIGH") #VERY_HIGH
]
type scanSchedule = string
type salesforceStandardObjectName = [
  | @as("USER") #USER
  | @as("TASK") #TASK
  | @as("SOLUTION") #SOLUTION
  | @as("PROFILE") #PROFILE
  | @as("PRODUCT") #PRODUCT
  | @as("PRICEBOOK") #PRICEBOOK
  | @as("PARTNER") #PARTNER
  | @as("OPPORTUNITY") #OPPORTUNITY
  | @as("LEAD") #LEAD
  | @as("IDEA") #IDEA
  | @as("GROUP") #GROUP
  | @as("DOCUMENT") #DOCUMENT
  | @as("CONTRACT") #CONTRACT
  | @as("CONTACT") #CONTACT
  | @as("CASE") #CASE
  | @as("CAMPAIGN") #CAMPAIGN
  | @as("ACCOUNT") #ACCOUNT
]
type salesforceKnowledgeArticleState = [
  | @as("ARCHIVED") #ARCHIVED
  | @as("PUBLISHED") #PUBLISHED
  | @as("DRAFT") #DRAFT
]
type salesforceCustomKnowledgeArticleTypeName = string
type salesforceChatterFeedIncludeFilterType = [
  | @as("STANDARD_USER") #STANDARD_USER
  | @as("ACTIVE_USER") #ACTIVE_USER
]
type s3ObjectKey = string
type s3BucketName = string
type roleArn = string
type resultId = string
type relevanceType = [@as("NOT_RELEVANT") #NOT_RELEVANT | @as("RELEVANT") #RELEVANT]
type readAccessType = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type queryText = string
type querySuggestionsStatus = [@as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE]
type querySuggestionsId = string
type querySuggestionsBlockListStatus = [
  | @as("FAILED") #FAILED
  | @as("ACTIVE_BUT_UPDATE_FAILED") #ACTIVE_BUT_UPDATE_FAILED
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("ACTIVE") #ACTIVE
]
type querySuggestionsBlockListName = string
type querySuggestionsBlockListId = string
type queryResultType = [
  | @as("ANSWER") #ANSWER
  | @as("QUESTION_ANSWER") #QUESTION_ANSWER
  | @as("DOCUMENT") #DOCUMENT
]
type queryIdentifiersEnclosingOption = [@as("NONE") #NONE | @as("DOUBLE_QUOTES") #DOUBLE_QUOTES]
type queryId = string
type queryCapacityUnit = int
type principalType = [@as("GROUP") #GROUP | @as("USER") #USER]
type principalName = string
type order = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type oneDriveUser = string
type objectBoolean = bool
type nextToken = string
type mode = [@as("LEARN_ONLY") #LEARN_ONLY | @as("ENABLED") #ENABLED]
type minimumQueryCount = int
type minimumNumberOfQueryingUsers = int
type mimeType = string
type metricValue = string
type maxResultsIntegerForListThesauriRequest = int
type maxResultsIntegerForListQuerySuggestionsBlockLists = int
type maxResultsIntegerForListIndicesRequest = int
type maxResultsIntegerForListFaqsRequest = int
type maxResultsIntegerForListDataSourcesRequest = int
type maxResultsIntegerForListDataSourceSyncJobsRequest = int
type long = float
type kmsKeyId = string
type keyLocation = [@as("SECRET_MANAGER") #SECRET_MANAGER | @as("URL") #URL]
type issuer = string
type integer_ = int
type indexedTextDocumentsCount = int
type indexedTextBytes = float
type indexedQuestionAnswersCount = int
type indexStatus = [
  | @as("SYSTEM_UPDATING") #SYSTEM_UPDATING
  | @as("UPDATING") #UPDATING
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type indexName = string
type indexId = string
type indexFieldName = string
type indexEdition = [
  | @as("ENTERPRISE_EDITION") #ENTERPRISE_EDITION
  | @as("DEVELOPER_EDITION") #DEVELOPER_EDITION
]
type importance = int
type highlightType = [@as("THESAURUS_SYNONYM") #THESAURUS_SYNONYM | @as("STANDARD") #STANDARD]
type groupAttributeField = string
type feedbackToken = string
type faqStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type faqName = string
type faqId = string
type faqFileFormat = [@as("JSON") #JSON | @as("CSV_WITH_HEADER") #CSV_WITH_HEADER | @as("CSV") #CSV]
type errorMessage = string
type errorCode = [@as("InvalidRequest") #InvalidRequest | @as("InternalError") #InternalError]
type duration = string
type documentMetadataConfigurationName = string
type documentMetadataBoolean = bool
type documentId = string
type documentAttributeValueType = [
  | @as("DATE_VALUE") #DATE_VALUE
  | @as("LONG_VALUE") #LONG_VALUE
  | @as("STRING_LIST_VALUE") #STRING_LIST_VALUE
  | @as("STRING_VALUE") #STRING_VALUE
]
type documentAttributeStringValue = string
type documentAttributeKey = string
type description = string
type databasePort = int
type databaseName = string
type databaseHost = string
type databaseEngineType = [
  | @as("RDS_POSTGRESQL") #RDS_POSTGRESQL
  | @as("RDS_MYSQL") #RDS_MYSQL
  | @as("RDS_AURORA_POSTGRESQL") #RDS_AURORA_POSTGRESQL
  | @as("RDS_AURORA_MYSQL") #RDS_AURORA_MYSQL
]
type dataSourceType = [
  | @as("GOOGLEDRIVE") #GOOGLEDRIVE
  | @as("CONFLUENCE") #CONFLUENCE
  | @as("CUSTOM") #CUSTOM
  | @as("SERVICENOW") #SERVICENOW
  | @as("ONEDRIVE") #ONEDRIVE
  | @as("SALESFORCE") #SALESFORCE
  | @as("DATABASE") #DATABASE
  | @as("SHAREPOINT") #SHAREPOINT
  | @as("S3") #S3
]
type dataSourceSyncJobStatus = [
  | @as("SYNCING_INDEXING") #SYNCING_INDEXING
  | @as("ABORTED") #ABORTED
  | @as("STOPPING") #STOPPING
  | @as("INCOMPLETE") #INCOMPLETE
  | @as("SYNCING") #SYNCING
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("FAILED") #FAILED
]
type dataSourceSyncJobId = string
type dataSourceStatus = [
  | @as("ACTIVE") #ACTIVE
  | @as("UPDATING") #UPDATING
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
]
type dataSourceName = string
type dataSourceInclusionsExclusionsStringsMember = string
type dataSourceId = string
type dataSourceFieldName = string
type dataSourceDateFieldFormat = string
type contentType = [
  | @as("PPT") #PPT
  | @as("PLAIN_TEXT") #PLAIN_TEXT
  | @as("MS_WORD") #MS_WORD
  | @as("HTML") #HTML
  | @as("PDF") #PDF
]
type confluenceVersion = [@as("SERVER") #SERVER | @as("CLOUD") #CLOUD]
type confluenceSpaceIdentifier = string
type confluenceSpaceFieldName = [
  | @as("URL") #URL
  | @as("SPACE_KEY") #SPACE_KEY
  | @as("ITEM_TYPE") #ITEM_TYPE
  | @as("DISPLAY_URL") #DISPLAY_URL
]
type confluencePageFieldName = [
  | @as("VERSION") #VERSION
  | @as("URL") #URL
  | @as("SPACE_NAME") #SPACE_NAME
  | @as("SPACE_KEY") #SPACE_KEY
  | @as("PARENT_ID") #PARENT_ID
  | @as("MODIFIED_DATE") #MODIFIED_DATE
  | @as("LABELS") #LABELS
  | @as("ITEM_TYPE") #ITEM_TYPE
  | @as("DISPLAY_URL") #DISPLAY_URL
  | @as("CREATED_DATE") #CREATED_DATE
  | @as("CONTENT_STATUS") #CONTENT_STATUS
  | @as("AUTHOR") #AUTHOR
]
type confluenceBlogFieldName = [
  | @as("VERSION") #VERSION
  | @as("URL") #URL
  | @as("SPACE_NAME") #SPACE_NAME
  | @as("SPACE_KEY") #SPACE_KEY
  | @as("PUBLISH_DATE") #PUBLISH_DATE
  | @as("LABELS") #LABELS
  | @as("ITEM_TYPE") #ITEM_TYPE
  | @as("DISPLAY_URL") #DISPLAY_URL
  | @as("AUTHOR") #AUTHOR
]
type confluenceAttachmentFieldName = [
  | @as("VERSION") #VERSION
  | @as("URL") #URL
  | @as("SPACE_NAME") #SPACE_NAME
  | @as("SPACE_KEY") #SPACE_KEY
  | @as("PARENT_ID") #PARENT_ID
  | @as("ITEM_TYPE") #ITEM_TYPE
  | @as("FILE_SIZE") #FILE_SIZE
  | @as("DISPLAY_URL") #DISPLAY_URL
  | @as("CREATED_DATE") #CREATED_DATE
  | @as("CONTENT_TYPE") #CONTENT_TYPE
  | @as("AUTHOR") #AUTHOR
]
type columnName = string
type clientTokenName = string
type claimRegex = string
type boolean_ = bool
type blob = NodeJs.Buffer.t
type amazonResourceName = string
type additionalResultAttributeValueType = [
  | @as("TEXT_WITH_HIGHLIGHTS_VALUE") #TEXT_WITH_HIGHLIGHTS_VALUE
]
type valueImportanceMap = Js.Dict.t<importance>
@ocaml.doc("<p>Provides information about the user context for a Amazon Kendra index.</p>")
type userContext = {
  @ocaml.doc("<p>The user context token. It must be a JWT or a JSON token.</p>") @as("Token")
  token: option<token>,
}
@ocaml.doc("<p>Provides a range of time.</p>")
type timeRange = {
  @ocaml.doc("<p>The UNIX datetime of the end of the time range.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The UNIX datetime of the beginning of the time range.</p>") @as("StartTime")
  startTime: option<timestamp_>,
}
@ocaml.doc("<p>An array of summary information for one or more thesauruses.</p>")
type thesaurusSummary = {
  @ocaml.doc("<p>The Unix datetime that the thesaurus was last updated.</p>") @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The Unix datetime that the thesaurus was created.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The status of the thesaurus.</p>") @as("Status") status: option<thesaurusStatus>,
  @ocaml.doc("<p>The name of the thesaurus.</p>") @as("Name") name: option<thesaurusName>,
  @ocaml.doc("<p>The identifier of the thesaurus.</p>") @as("Id") id: option<thesaurusId>,
}
@ocaml.doc("<p>Provides information about text documents indexed in an
            index.</p>")
type textDocumentStatistics = {
  @ocaml.doc("<p>The total size, in bytes, of the indexed documents.</p>") @as("IndexedTextBytes")
  indexedTextBytes: indexedTextBytes,
  @ocaml.doc("<p>The number of text documents indexed.</p>") @as("IndexedTextDocumentsCount")
  indexedTextDocumentsCount: indexedTextDocumentsCount,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A list of key/value pairs that identify an index, FAQ, or data source.
      Tag keys and values can consist of Unicode letters, digits, white space,
      and any of the following symbols: _ . : / = + - @.</p>")
type tag = {
  @ocaml.doc("<p>The value associated with the tag. The value may be an empty string
      but it can't be null.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The key for the tag. Keys are not case sensitive and must be unique
      for the index, FAQ, or data source.</p>")
  @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>The text highlights for a single query suggestion.</p>")
type suggestionHighlight = {
  @ocaml.doc("<p>The zero-based location in the response string where the highlight ends.</p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>The zero-based location in the response string where the highlight starts.</p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
}
type subnetIdList = array<subnetId>
@ocaml.doc("<p>Provides information that configures Amazon Kendra to use a SQL
            database.</p>")
type sqlConfiguration = {
  @ocaml.doc("<p>Determines whether Amazon Kendra encloses SQL identifiers for tables and
            column names in double quotes (\") when making a database
            query.</p>
        <p>By default, Amazon Kendra passes SQL identifiers the way that they are
            entered into the data source configuration. It does not change the
            case of identifiers or enclose them in quotes.</p>
        <p>PostgreSQL internally converts uppercase characters to lower case
            characters in identifiers unless they are quoted. Choosing this
            option encloses identifiers in quotes so that PostgreSQL does not
            convert the character's case.</p>
        <p>For MySQL databases, you must enable the <code>ansi_quotes</code>
            option when you set this field to <code>DOUBLE_QUOTES</code>.</p>")
  @as("QueryIdentifiersEnclosingOption")
  queryIdentifiersEnclosingOption: option<queryIdentifiersEnclosingOption>,
}
@ocaml.doc("<p>Specifies the document attribute to use to sort the response to a
            Amazon Kendra query. You can specify a single attribute for sorting. The
            attribute must have the <code>Sortable</code> flag set to
                <code>true</code>, otherwise Amazon Kendra returns an exception.</p>
        <p>You can sort attributes of the following types.</p>
        <ul>
            <li>
                <p>Date value</p>
            </li>
            <li>
                <p>Long value</p>
            </li>
            <li>
                <p>String value</p>
            </li>
         </ul>
        <p>You can't sort attributes of the following type.</p>
        <ul>
            <li>
                <p>String list value</p>
            </li>
         </ul>")
type sortingConfiguration = {
  @ocaml.doc("<p>The order that the results should be returned in. In case of ties,
            the relevance assigned to the result by Amazon Kendra is used as the
            tie-breaker.</p>")
  @as("SortOrder")
  sortOrder: sortOrder,
  @ocaml.doc("<p>The name of the document attribute used to sort the response. You
            can use any field that has the <code>Sortable</code> flag set to
            true.</p>
        <p>You can also sort by any of the following built-in
            attributes:</p>
        <ul>
            <li>
                <p>_category</p>
            </li>
            <li>
                <p>_created_at</p>
            </li>
            <li>
                <p>_last_updated_at</p>
            </li>
            <li>
                <p>_version</p>
            </li>
            <li>
                <p>_view_count</p>
            </li>
         </ul>")
  @as("DocumentAttributeKey")
  documentAttributeKey: documentAttributeKey,
}
type sharePointUrlList = array<url>
@ocaml.doc("<p>Provides the identifier of the AWS KMS customer master key (CMK)
            used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
            asymmetric CMKs.</p>")
type serverSideEncryptionConfiguration = {
  @ocaml.doc("<p>The identifier of the AWS KMS customer master key (CMK). Amazon Kendra
            doesn't support asymmetric CMKs.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
}
type securityGroupIdList = array<vpcSecurityGroupId>
@ocaml.doc("<p>Provides information about how a custom index field is used during
            a search.</p>")
type search = {
  @ocaml.doc("<p>Determines whether the field can be used to sort the results of a
            query. If you specify sorting on a field that does not have
                <code>Sortable</code> set to <code>true</code>, Amazon Kendra returns an
            exception. The default is <code>false</code>.</p>")
  @as("Sortable")
  sortable: option<boolean_>,
  @ocaml.doc("<p>Determines whether the field is returned in the query response.
            The default is <code>true</code>.</p>")
  @as("Displayable")
  displayable: option<boolean_>,
  @ocaml.doc("<p>Determines whether the field is used in the search. If the
                <code>Searchable</code> field is <code>true</code>, you can use
            relevance tuning to manually tune how Amazon Kendra weights the field in
            the search. The default is <code>true</code> for string fields and
                <code>false</code> for number and date fields.</p>")
  @as("Searchable")
  searchable: option<boolean_>,
  @ocaml.doc("<p>Indicates that the field can be used to create search facets, a
            count of results for each value in the field. The default is
                <code>false</code> .</p>")
  @as("Facetable")
  facetable: option<boolean_>,
}
@ocaml.doc("<p>Provides a relative ranking that indicates how confident Amazon Kendra is
         that the response matches the query.</p>")
type scoreAttributes = {
  @ocaml.doc("<p>A relative ranking for how well the response matches the
         query.</p>")
  @as("ScoreConfidence")
  scoreConfidence: option<scoreConfidence>,
}
type salesforceKnowledgeArticleStateList = array<salesforceKnowledgeArticleState>
type salesforceChatterFeedIncludeFilterTypes = array<salesforceChatterFeedIncludeFilterType>
@ocaml.doc("<p>Information required to find a specific file in an Amazon S3
            bucket.</p>")
type s3Path = {
  @ocaml.doc("<p>The name of the file.</p>") @as("Key") key: s3ObjectKey,
  @ocaml.doc("<p>The name of the S3 bucket that contains the file.</p>") @as("Bucket")
  bucket: s3BucketName,
}
@ocaml.doc("<p>Provides feedback on how relevant a document is to a search. Your
            application uses the <code>SubmitFeedback</code> operation to
            provide relevance information.</p>")
type relevanceFeedback = {
  @ocaml.doc("<p>Whether to document was relevant or not relevant to the
            search.</p>")
  @as("RelevanceValue")
  relevanceValue: relevanceType,
  @ocaml.doc("<p>The unique identifier of the search result that the user provided
            relevance feedback for.</p>")
  @as("ResultId")
  resultId: resultId,
}
@ocaml.doc("<p>Summary information on a query suggestions block list.</p>
        <p>This includes information on the block list ID, block list name, when the 
            block list was created, when the block list was last updated, and the count 
            of block words/phrases in the block list.</p>
        <p>For information on the current quota limits for block lists, see 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/quotas.html\">Quotas 
                for Amazon Kendra</a>.</p>")
type querySuggestionsBlockListSummary = {
  @ocaml.doc("<p>The number of items in the block list file.</p>") @as("ItemCount")
  itemCount: option<integer_>,
  @ocaml.doc("<p>The date-time the block list was last updated.</p>") @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The date-time summary information for a query suggestions 
            block list was last created.</p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The status of the block list.</p>") @as("Status")
  status: option<querySuggestionsBlockListStatus>,
  @ocaml.doc("<p>The name of the block list.</p>") @as("Name")
  name: option<querySuggestionsBlockListName>,
  @ocaml.doc("<p>The identifier of a block list.</p>") @as("Id")
  id: option<querySuggestionsBlockListId>,
}
@ocaml.doc("<p>Provides user and group information for document access
            filtering.</p>")
type principal = {
  @ocaml.doc("<p>Whether to allow or deny access to the principal.</p>") @as("Access")
  access: readAccessType,
  @ocaml.doc("<p>The type of principal.</p>") @as("Type") type_: principalType,
  @ocaml.doc("<p>The name of the user or group.</p>") @as("Name") name: principalName,
}
type oneDriveUserList = array<oneDriveUser>
@ocaml.doc("<p>Configuration information for the JWT token type.</p>")
type jwtTokenTypeConfiguration = {
  @ocaml.doc("<p>The regular expression that identifies the claim.</p>") @as("ClaimRegex")
  claimRegex: option<claimRegex>,
  @ocaml.doc("<p>The issuer of the token.</p>") @as("Issuer") issuer: option<issuer>,
  @ocaml.doc("<p>The group attribute field.</p>") @as("GroupAttributeField")
  groupAttributeField: option<groupAttributeField>,
  @ocaml.doc("<p>The user name attribute field.</p>") @as("UserNameAttributeField")
  userNameAttributeField: option<userNameAttributeField>,
  @ocaml.doc("<p>The Amazon Resource Name (arn) of the secret.</p>") @as("SecretManagerArn")
  secretManagerArn: option<roleArn>,
  @ocaml.doc("<p>The signing key URL.</p>") @as("URL") url: option<url>,
  @ocaml.doc("<p>The location of the key.</p>") @as("KeyLocation") keyLocation: keyLocation,
}
@ocaml.doc("<p>Configuration information for the JSON token type.</p>")
type jsonTokenTypeConfiguration = {
  @ocaml.doc("<p>The group attribute field.</p>") @as("GroupAttributeField")
  groupAttributeField: string_,
  @ocaml.doc("<p>The user name attribute field.</p>") @as("UserNameAttributeField")
  userNameAttributeField: string_,
}
@ocaml.doc("<p>A summary of information about an index.</p>")
type indexConfigurationSummary = {
  @ocaml.doc("<p>The current status of the index. When the status is
                <code>ACTIVE</code>, the index is ready to search.</p>")
  @as("Status")
  status: indexStatus,
  @ocaml.doc("<p>The Unix timestamp when the index was last updated by the
                <code>UpdateIndex</code> operation.</p>")
  @as("UpdatedAt")
  updatedAt: timestamp_,
  @ocaml.doc("<p>The Unix timestamp when the index was created.</p>") @as("CreatedAt")
  createdAt: timestamp_,
  @ocaml.doc("<p>Indicates whether the index is a enterprise edition index or a
            developer edition index. </p>")
  @as("Edition")
  edition: option<indexEdition>,
  @ocaml.doc("<p>A unique identifier for the index. Use this to identify the index
            when you are using operations such as <code>Query</code>,
                <code>DescribeIndex</code>, <code>UpdateIndex</code>, and
                <code>DeleteIndex</code>.</p>")
  @as("Id")
  id: option<indexId>,
  @ocaml.doc("<p>The name of the index.</p>") @as("Name") name: option<indexName>,
}
@ocaml.doc("<p>Provides information that you can use to highlight a search result
            so that your users can quickly identify terms in the
            response.</p>")
type highlight = {
  @ocaml.doc("<p>The highlight type. </p>") @as("Type") type_: option<highlightType>,
  @ocaml.doc("<p>Indicates whether the response is the best response. True if this
            is the best response; otherwise, false.</p>")
  @as("TopAnswer")
  topAnswer: option<boolean_>,
  @ocaml.doc("<p>The zero-based location in the response string where the highlight
            ends.</p>")
  @as("EndOffset")
  endOffset: integer_,
  @ocaml.doc("<p>The zero-based location in the response string where the highlight
            starts.</p>")
  @as("BeginOffset")
  beginOffset: integer_,
}
@ocaml.doc("<p>Provides information about a frequently asked questions and answer
            contained in an index.</p>")
type faqSummary = {
  @ocaml.doc("<p>The file type used to create the FAQ. </p>") @as("FileFormat")
  fileFormat: option<faqFileFormat>,
  @ocaml.doc("<p>The UNIX datetime that the FAQ was last updated.</p>") @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The UNIX datetime that the FAQ was added to the index.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The current status of the FAQ. When the status is
                <code>ACTIVE</code> the FAQ is ready for use.</p>")
  @as("Status")
  status: option<faqStatus>,
  @ocaml.doc("<p>The name that you assigned the FAQ when you created or updated the
            FAQ.</p>")
  @as("Name")
  name: option<faqName>,
  @ocaml.doc("<p>The unique identifier of the FAQ.</p>") @as("Id") id: option<faqId>,
}
@ocaml.doc("<p>Provides statistical information about the FAQ questions and
            answers contained in an index.</p>")
type faqStatistics = {
  @ocaml.doc("<p>The total number of FAQ questions and answers contained in the
            index.</p>")
  @as("IndexedQuestionAnswersCount")
  indexedQuestionAnswersCount: indexedQuestionAnswersCount,
}
@ocaml.doc("<p>Information about a document attribute</p>")
type facet = {
  @ocaml.doc("<p>The unique key for the document attribute.</p>") @as("DocumentAttributeKey")
  documentAttributeKey: option<documentAttributeKey>,
}
type excludeUserAccountsList = array<userAccount>
type excludeSharedDrivesList = array<sharedDriveId>
type excludeMimeTypesList = array<mimeType>
@ocaml.doc("<p>Document metadata files that contain information such as the
            document access control information, source URI, document author,
            and custom attributes. Each metadata file contains metadata about a
            single document.</p>")
type documentsMetadataConfiguration = {
  @ocaml.doc("<p>A prefix used to filter metadata configuration files in the AWS S3
            bucket. The S3 bucket might contain multiple metadata files. Use
                <code>S3Prefix</code> to include only the desired metadata
            files.</p>")
  @as("S3Prefix")
  s3Prefix: option<s3ObjectKey>,
}
type documentIdList = array<documentId>
type documentAttributeStringListValue = array<string_>
type documentAttributeKeyList = array<documentAttributeKey>
@ocaml.doc("<p>Maps a column or attribute in the data source to an index field.
            You must first create the fields in the index using the
                <code>UpdateIndex</code> operation.</p>")
type dataSourceToIndexFieldMapping = {
  @ocaml.doc("<p>The name of the field in the index.</p>") @as("IndexFieldName")
  indexFieldName: indexFieldName,
  @ocaml.doc("<p>The type of data stored in the column or attribute.</p>") @as("DateFieldFormat")
  dateFieldFormat: option<dataSourceDateFieldFormat>,
  @ocaml.doc("<p>The name of the column or attribute in the data source.</p>")
  @as("DataSourceFieldName")
  dataSourceFieldName: dataSourceFieldName,
}
@ocaml.doc("<p>Maps a batch delete document request to a specific data source
            sync job. This is optional and should only be supplied when
            documents are deleted by a data source connector.</p>")
type dataSourceSyncJobMetrics = {
  @ocaml.doc("<p>The current number of documents crawled by the current sync job in
            the data source.</p>")
  @as("DocumentsScanned")
  documentsScanned: option<metricValue>,
  @ocaml.doc("<p>The number of documents that failed to sync from the data source
            up to now in the data source sync run.</p>")
  @as("DocumentsFailed")
  documentsFailed: option<metricValue>,
  @ocaml.doc("<p>The number of documents deleted from the data source up to now in
            the data source sync run.</p>")
  @as("DocumentsDeleted")
  documentsDeleted: option<metricValue>,
  @ocaml.doc("<p>The number of documents modified in the data source up to now in
            the data source sync run.</p>")
  @as("DocumentsModified")
  documentsModified: option<metricValue>,
  @ocaml.doc("<p>The number of documents added from the data source up to now in
            the data source sync.</p>")
  @as("DocumentsAdded")
  documentsAdded: option<metricValue>,
}
@ocaml.doc("<p>Maps a particular data source sync job to a particular data
            source.</p>")
type dataSourceSyncJobMetricTarget = {
  @ocaml.doc("<p>The ID of the sync job that is running on the data source.</p>
        <p>If the ID of a sync job is not provided and there is a sync job 
            running, then the ID of this sync job is used and metrics are 
            generated for this sync job.</p>
        <p>If the ID of a sync job is not provided and there is no sync job 
            running, then no metrics are generated and documents are  
            indexed/deleted at the index level without sync job metrics included.</p>")
  @as("DataSourceSyncJobId")
  dataSourceSyncJobId: option<dataSourceSyncJobId>,
  @ocaml.doc("<p>The ID of the data source that is running the sync job.</p>") @as("DataSourceId")
  dataSourceId: dataSourceId,
}
@ocaml.doc("<p>Summary information for a Amazon Kendra data source. Returned in a call
            to the <code>DescribeDataSource</code> operation.</p>")
type dataSourceSummary = {
  @ocaml.doc("<p>The status of the data source. When the status is
                <code>ACTIVE</code> the data source is ready to use.</p>")
  @as("Status")
  status: option<dataSourceStatus>,
  @ocaml.doc("<p>The UNIX datetime that the data source was lasted updated. </p>") @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The UNIX datetime that the data source was created.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The type of the data source.</p>") @as("Type") type_: option<dataSourceType>,
  @ocaml.doc("<p>The unique identifier for the data source.</p>") @as("Id")
  id: option<dataSourceId>,
  @ocaml.doc("<p>The name of the data source.</p>") @as("Name") name: option<dataSourceName>,
}
type dataSourceInclusionsExclusionsStrings = array<dataSourceInclusionsExclusionsStringsMember>
@ocaml.doc("<p>Provides the information necessary to connect to a
            database.</p>")
type connectionConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of credentials stored in AWS
            Secrets Manager. The credentials should be a user/password pair. For
            more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-database.html\">Using a
                Database Data Source</a>. For more information about AWS
            Secrets Manager, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\"> What Is AWS
                Secrets Manager </a> in the <i>AWS Secrets
                Manager</i> user guide.</p>")
  @as("SecretArn")
  secretArn: secretArn,
  @ocaml.doc("<p>The name of the table that contains the document data.</p>") @as("TableName")
  tableName: tableName,
  @ocaml.doc("<p>The name of the database containing the document data.</p>") @as("DatabaseName")
  databaseName: databaseName,
  @ocaml.doc("<p>The port that the database uses for connections.</p>") @as("DatabasePort")
  databasePort: databasePort,
  @ocaml.doc("<p>The name of the host for the database. Can be either a string
            (host.subdomain.domain.tld) or an IPv4 or IPv6 address.</p>")
  @as("DatabaseHost")
  databaseHost: databaseHost,
}
@ocaml.doc("<p>Defines the mapping between a field in the Confluence data source
            to a Amazon Kendra index field.</p>
        <p>You must first create the index field using the
                <code>UpdateIndex</code> operation. </p>")
type confluenceSpaceToIndexFieldMapping = {
  @ocaml.doc("<p>The name of the index field to map to the Confluence data source
            field. The index field type must match the Confluence field
            type.</p>")
  @as("IndexFieldName")
  indexFieldName: option<indexFieldName>,
  @ocaml.doc("<p>The format for date fields in the data source. If the field
            specified in <code>DataSourceFieldName</code> is a date field you
            must specify the date format. If the field is not a date field, an
            exception is thrown.</p>")
  @as("DateFieldFormat")
  dateFieldFormat: option<dataSourceDateFieldFormat>,
  @ocaml.doc("<p>The name of the field in the data source. </p>") @as("DataSourceFieldName")
  dataSourceFieldName: option<confluenceSpaceFieldName>,
}
type confluenceSpaceList = array<confluenceSpaceIdentifier>
@ocaml.doc("<p>Defines the mapping between a field in the Confluence data source
            to a Amazon Kendra index field.</p>
        <p>You must first create the index field using the
                <code>UpdateIndex</code> operation. </p>")
type confluencePageToIndexFieldMapping = {
  @ocaml.doc("<p>The name of the index field to map to the Confluence data source
            field. The index field type must match the Confluence field
            type.</p>")
  @as("IndexFieldName")
  indexFieldName: option<indexFieldName>,
  @ocaml.doc("<p>The format for date fields in the data source. If the field
            specified in <code>DataSourceFieldName</code> is a date field you
            must specify the date format. If the field is not a date field, an
            exception is thrown.</p>")
  @as("DateFieldFormat")
  dateFieldFormat: option<dataSourceDateFieldFormat>,
  @ocaml.doc("<p>The name of the field in the data source. </p>") @as("DataSourceFieldName")
  dataSourceFieldName: option<confluencePageFieldName>,
}
@ocaml.doc("<p>Defines the mapping between a blog field in the Confluence data
            source to a Amazon Kendra index field.</p>
        <p>You must first create the index field using the
                <code>UpdateIndex</code> operation. </p>")
type confluenceBlogToIndexFieldMapping = {
  @ocaml.doc("<p>The name of the index field to map to the Confluence data source
            field. The index field type must match the Confluence field
            type.</p>")
  @as("IndexFieldName")
  indexFieldName: option<indexFieldName>,
  @ocaml.doc("<p>The format for date fields in the data source. If the field
            specified in <code>DataSourceFieldName</code> is a date field you
            must specify the date format. If the field is not a date field, an
            exception is thrown.</p>")
  @as("DateFieldFormat")
  dateFieldFormat: option<dataSourceDateFieldFormat>,
  @ocaml.doc("<p>The name of the field in the data source. </p>") @as("DataSourceFieldName")
  dataSourceFieldName: option<confluenceBlogFieldName>,
}
@ocaml.doc("<p>Defines the mapping between a field in the Confluence data source
            to a Amazon Kendra index field.</p>
        <p>You must first create the index field using the
                <code>UpdateIndex</code> operation. </p>")
type confluenceAttachmentToIndexFieldMapping = {
  @ocaml.doc("<p>The name of the index field to map to the Confluence data source
            field. The index field type must match the Confluence field
            type.</p>")
  @as("IndexFieldName")
  indexFieldName: option<indexFieldName>,
  @ocaml.doc("<p>The format for date fields in the data source. If the field
            specified in <code>DataSourceFieldName</code> is a date field you
            must specify the date format. If the field is not a date field, an
            exception is thrown.</p>")
  @as("DateFieldFormat")
  dateFieldFormat: option<dataSourceDateFieldFormat>,
  @ocaml.doc("<p>The name of the field in the data source. </p>
        <p>You must first create the index field using the
                <code>UpdateIndex</code> operation. </p>")
  @as("DataSourceFieldName")
  dataSourceFieldName: option<confluenceAttachmentFieldName>,
}
@ocaml.doc("<p>Gathers information about when a particular result was clicked by
            a user. Your application uses the <code>SubmitFeedback</code>
            operation to provide click information.</p>")
type clickFeedback = {
  @ocaml.doc("<p>The Unix timestamp of the date and time that the result was
            clicked.</p>")
  @as("ClickTime")
  clickTime: timestamp_,
  @ocaml.doc("<p>The unique identifier of the search result that was
            clicked.</p>")
  @as("ResultId")
  resultId: resultId,
}
type changeDetectingColumns = array<columnName>
@ocaml.doc("<p>Specifies capacity units configured for your index. You can add
            and remove capacity units to tune an index to your
            requirements.</p>")
type capacityUnitsConfiguration = {
  @ocaml.doc("<p>The amount of extra query capacity for an index. Each capacity
            unit provides 0.5 queries per second and 40,000 queries per
            day.</p>")
  @as("QueryCapacityUnits")
  queryCapacityUnits: queryCapacityUnit,
  @ocaml.doc("<p>The amount of extra storage capacity for an index. Each capacity
            unit provides 150 Gb of storage space or 500,000 documents,
            whichever is reached first.</p>")
  @as("StorageCapacityUnits")
  storageCapacityUnits: storageCapacityUnit,
}
@ocaml.doc("<p>Provides information about a document that could not be
            indexed.</p>")
type batchPutDocumentResponseFailedDocument = {
  @ocaml.doc("<p>A description of the reason why the document could not be
            indexed.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The type of error that caused the document to fail to be
            indexed.</p>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The unique identifier of the document.</p>") @as("Id") id: option<documentId>,
}
@ocaml.doc("<p>Provides information about documents that could not be removed
            from an index by the <code>BatchDeleteDocument</code>
            operation.</p>")
type batchDeleteDocumentResponseFailedDocument = {
  @ocaml.doc("<p>An explanation for why the document couldn't be removed from the
            index.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The error code for why the document couldn't be removed from the
            index.</p>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The identifier of the document that couldn't be removed from the
            index.</p>")
  @as("Id")
  id: option<documentId>,
}
@ocaml.doc("<p>Provides information about the column that should be used for
            filtering the query response by groups.</p>")
type aclConfiguration = {
  @ocaml.doc("<p>A list of groups, separated by semi-colons, that filters a query
            response based on user context. The document is only returned to
            users that are in one of the groups specified in the
                <code>UserContext</code> field of the <code>Query</code>
            operation.</p>")
  @as("AllowedGroupsColumnName")
  allowedGroupsColumnName: columnName,
}
@ocaml.doc("<p>Access Control List files for the documents in a data source. For
            the format of the file, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html\">Access control for S3 data
                sources</a>.</p>")
type accessControlListConfiguration = {
  @ocaml.doc("<p>Path to the AWS S3 bucket that contains the ACL files.</p>") @as("KeyPath")
  keyPath: option<s3ObjectKey>,
}
@ocaml.doc("<p>Provides configuration information for a token configuration.</p>")
type userTokenConfiguration = {
  @ocaml.doc("<p>Information about the JSON token type configuration.</p>")
  @as("JsonTokenTypeConfiguration")
  jsonTokenTypeConfiguration: option<jsonTokenTypeConfiguration>,
  @ocaml.doc("<p>Information about the JWT token type configuration.</p>")
  @as("JwtTokenTypeConfiguration")
  jwtTokenTypeConfiguration: option<jwtTokenTypeConfiguration>,
}
type thesaurusSummaryItems = array<thesaurusSummary>
type tagList_ = array<tag>
type suggestionHighlightList = array<suggestionHighlight>
@ocaml.doc("<p>Provides configuration information for a data source to index
            documents in an Amazon S3 bucket.</p>")
type s3DataSourceConfiguration = {
  @ocaml.doc("<p>Provides the path to the S3 bucket that contains the user context
            filtering files for the data source. For the format of the file, see
                <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html\">Access control for S3 data sources</a>.</p>")
  @as("AccessControlListConfiguration")
  accessControlListConfiguration: option<accessControlListConfiguration>,
  @as("DocumentsMetadataConfiguration")
  documentsMetadataConfiguration: option<documentsMetadataConfiguration>,
  @ocaml.doc("<p>A list of glob patterns for documents that should not be indexed.
            If a document that matches an inclusion prefix or inclusion pattern
            also matches an exclusion pattern, the document is not
            indexed.</p>
        <p>Some <a href=\"https://docs.aws.amazon.com/cli/latest/reference/s3/#use-of-exclude-and-include-filters\">examples</a> 
            are:</p>
        <ul>
            <li>
                <p>
                  <i>*.png , *.jpg</i> will exclude 
                    all PNG and JPEG image files in a directory 
                    (files with the extensions .png and .jpg).</p>
            </li>
            <li>
                <p>
                  <i>*internal*</i> will exclude all 
                    files in a directory that contain 'internal' in the file name, 
                    such as 'internal', 'internal_only', 'company_internal'.</p>
            </li>
            <li>
                <p>
                  <i>**/*internal*</i> will exclude 
                    all internal-related files in a directory and its subdirectories.</p>
            </li>
         </ul>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of glob patterns for documents that should be indexed. If a
            document that matches an inclusion pattern also matches an exclusion
            pattern, the document is not indexed.</p>
        <p>Some <a href=\"https://docs.aws.amazon.com/cli/latest/reference/s3/#use-of-exclude-and-include-filters\">examples</a> 
            are:</p>
        <ul>
            <li>
                <p>
                  <i>*.txt</i> will include all text files 
                    in a directory (files with the extension .txt).</p>
            </li>
            <li>
                <p>
                  <i>**/*.txt</i> will include all text 
                    files in a directory and its subdirectories.</p>
            </li>
            <li>
                <p>
                  <i>*tax*</i> will include all files in 
                    a directory that contain 'tax' in the file name, such as 'tax', 
                    'taxes', 'income_tax'.</p>
            </li>
         </ul>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of S3 prefixes for the documents that should be included in
            the index.</p>")
  @as("InclusionPrefixes")
  inclusionPrefixes: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>The name of the bucket that contains the documents.</p>") @as("BucketName")
  bucketName: s3BucketName,
}
type relevanceFeedbackList = array<relevanceFeedback>
@ocaml.doc("<p>Provides information for manually tuning the relevance of a field
            in a search. When a query includes terms that match the field, the
            results are given a boost in the response based on these tuning
            parameters.</p>")
type relevance = {
  @ocaml.doc("<p>A list of values that should be given a different boost when they
            appear in the result list. For example, if you are boosting a field
            called \"department,\" query terms that match the department field are
            boosted in the result. However, you can add entries from the
            department field to boost documents with those values higher. </p>
        <p>For example, you can add entries to the map with names of
            departments. If you add \"HR\",5 and \"Legal\",3 those departments are
            given special attention when they appear in the metadata of a
            document. When those terms appear they are given the specified
            importance instead of the regular importance for the boost.</p>")
  @as("ValueImportanceMap")
  valueImportanceMap: option<valueImportanceMap>,
  @ocaml.doc("<p>Determines how values should be interpreted.</p>
        <p>When the <code>RankOrder</code> field is <code>ASCENDING</code>,
            higher numbers are better. For example, a document with a rating
            score of 10 is higher ranking than a document with a rating score of
            1.</p>
        <p>When the <code>RankOrder</code> field is <code>DESCENDING</code>,
            lower numbers are better. For example, in a task tracking
            application, a priority 1 task is more important than a priority 5
            task.</p>
        <p>Only applies to <code>LONG</code> and <code>DOUBLE</code>
            fields.</p>")
  @as("RankOrder")
  rankOrder: option<order>,
  @ocaml.doc("<p>Specifies the time period that the boost applies to. For example,
            to make the boost apply to documents with the field value within the
            last month, you would use \"2628000s\". Once the field value is beyond
            the specified range, the effect of the boost drops off. The higher
            the importance, the faster the effect drops off. If you don't
            specify a value, the default is 3 months. The value of the field is
            a numeric string followed by the character \"s\", for example \"86400s\"
            for one day, or \"604800s\" for one week. </p>
        <p>Only applies to <code>DATE</code> fields.</p>")
  @as("Duration")
  duration: option<duration>,
  @ocaml.doc("<p>The relative importance of the field in the search. Larger numbers
            provide more of a boost than smaller numbers.</p>")
  @as("Importance")
  importance: option<importance>,
  @ocaml.doc("<p>Indicates that this field determines how \"fresh\" a document is.
            For example, if document 1 was created on November 5, and document 2
            was created on October 31, document 1 is \"fresher\" than document 2.
            You can only set the <code>Freshness</code> field on one
                <code>DATE</code> type field. Only applies to <code>DATE</code>
            fields.</p>")
  @as("Freshness")
  freshness: option<documentMetadataBoolean>,
}
type querySuggestionsBlockListSummaryItems = array<querySuggestionsBlockListSummary>
type principalList = array<principal>
@ocaml.doc("<p>User accounts whose documents should be indexed.</p>")
type oneDriveUsers = {
  @ocaml.doc("<p>The S3 bucket location of a file containing a list of users whose
            documents should be indexed.</p>")
  @as("OneDriveUserS3Path")
  oneDriveUserS3Path: option<s3Path>,
  @ocaml.doc("<p>A list of users whose documents should be indexed. Specify the
            user names in email format, for example,
                <code>username@tenantdomain</code>. If you need to index the
            documents of more than 100 users, use the
                <code>OneDriveUserS3Path</code> field to specify the location of
            a file containing a list of users.</p>")
  @as("OneDriveUserList")
  oneDriveUserList: option<oneDriveUserList>,
}
@ocaml.doc("<p>Provides information about the number of documents and the number
            of questions and answers in an index.</p>")
type indexStatistics = {
  @ocaml.doc("<p>The number of text documents indexed.</p>") @as("TextDocumentStatistics")
  textDocumentStatistics: textDocumentStatistics,
  @ocaml.doc("<p>The number of question and answer topics in the index.</p>") @as("FaqStatistics")
  faqStatistics: faqStatistics,
}
type indexConfigurationSummaryList = array<indexConfigurationSummary>
type highlightList = array<highlight>
type faqSummaryItems = array<faqSummary>
type facetList = array<facet>
@ocaml.doc("<p>The value of a custom document attribute. You can only provide one
            value for a custom attribute.</p>")
type documentAttributeValue = {
  @ocaml.doc("<p>A date expressed as an ISO 8601 string.</p>") @as("DateValue")
  dateValue: option<timestamp_>,
  @ocaml.doc("<p>A long integer value.</p>") @as("LongValue") longValue: option<long>,
  @ocaml.doc("<p>A list of strings. </p>") @as("StringListValue")
  stringListValue: option<documentAttributeStringListValue>,
  @ocaml.doc("<p>A string, such as \"department\".</p>") @as("StringValue")
  stringValue: option<documentAttributeStringValue>,
}
module DocumentAttributeValue = {
  type t =
    | DateValue(timestamp_)
    | LongValue(long)
    | StringListValue(documentAttributeStringListValue)
    | StringValue(documentAttributeStringValue)
  exception DocumentAttributeValueUnspecified
  let classify = value =>
    switch value {
    | {dateValue: Some(x)} => DateValue(x)
    | {longValue: Some(x)} => LongValue(x)
    | {stringListValue: Some(x)} => StringListValue(x)
    | {stringValue: Some(x)} => StringValue(x)
    | _ => raise(DocumentAttributeValueUnspecified)
    }

  let make = value =>
    switch value {
    | DateValue(x) => {
        dateValue: Some(x),
        longValue: None,
        stringListValue: None,
        stringValue: None,
      }
    | LongValue(x) => {
        longValue: Some(x),
        dateValue: None,
        stringListValue: None,
        stringValue: None,
      }
    | StringListValue(x) => {
        stringListValue: Some(x),
        dateValue: None,
        longValue: None,
        stringValue: None,
      }
    | StringValue(x) => {
        stringValue: Some(x),
        dateValue: None,
        longValue: None,
        stringListValue: None,
      }
    }
}
@ocaml.doc("<p>Provides information for connecting to an Amazon VPC.</p>")
type dataSourceVpcConfiguration = {
  @ocaml.doc("<p>A list of identifiers of security groups within your Amazon VPC.
            The security groups should enable Amazon Kendra to connect to the data
            source.</p>")
  @as("SecurityGroupIds")
  securityGroupIds: securityGroupIdList,
  @ocaml.doc("<p>A list of identifiers for subnets within your Amazon VPC. The
            subnets should be able to connect to each other in the VPC, and they
            should have outgoing access to the Internet through a NAT
            device.</p>")
  @as("SubnetIds")
  subnetIds: subnetIdList,
}
type dataSourceToIndexFieldMappingList = array<dataSourceToIndexFieldMapping>
@ocaml.doc("<p>Provides information about a synchronization job.</p>")
type dataSourceSyncJob = {
  @ocaml.doc("<p>Maps a batch delete document request to a specific data source
            sync job. This is optional and should only be supplied when
            documents are deleted by a data source connector.</p>")
  @as("Metrics")
  metrics: option<dataSourceSyncJobMetrics>,
  @ocaml.doc("<p>If the reason that the synchronization failed is due to an error
            with the underlying data source, this field contains a code that
            identifies the error.</p>")
  @as("DataSourceErrorCode")
  dataSourceErrorCode: option<string_>,
  @ocaml.doc("<p>If the <code>Status</code> field is set to <code>FAILED</code>,
            the <code>ErrorCode</code> field contains a the reason that the
            synchronization failed.</p>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>If the <code>Status</code> field is set to <code>ERROR</code>, the
                <code>ErrorMessage</code> field contains a description of the
            error that caused the synchronization to fail.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The execution status of the synchronization job. When the
                <code>Status</code> field is set to <code>SUCCEEDED</code>, the
            synchronization job is done. If the status code is set to
                <code>FAILED</code>, the <code>ErrorCode</code> and
                <code>ErrorMessage</code> fields give you the reason for the
            failure.</p>")
  @as("Status")
  status: option<dataSourceSyncJobStatus>,
  @ocaml.doc("<p>The UNIX datetime that the synchronization job was
            completed.</p>")
  @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The UNIX datetime that the synchronization job was started.</p>") @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>A unique identifier for the synchronization job.</p>") @as("ExecutionId")
  executionId: option<string_>,
}
type dataSourceSummaryList = array<dataSourceSummary>
type confluenceSpaceFieldMappingsList = array<confluenceSpaceToIndexFieldMapping>
type confluencePageFieldMappingsList = array<confluencePageToIndexFieldMapping>
type confluenceBlogFieldMappingsList = array<confluenceBlogToIndexFieldMapping>
type confluenceAttachmentFieldMappingsList = array<confluenceAttachmentToIndexFieldMapping>
type clickFeedbackList = array<clickFeedback>
type batchPutDocumentResponseFailedDocuments = array<batchPutDocumentResponseFailedDocument>
type batchDeleteDocumentResponseFailedDocuments = array<batchDeleteDocumentResponseFailedDocument>
type userTokenConfigurationList = array<userTokenConfiguration>
@ocaml.doc("<p>Provides text and information about where to highlight the
            text.</p>")
type textWithHighlights = {
  @ocaml.doc("<p>The beginning and end of the text that should be
            highlighted.</p>")
  @as("Highlights")
  highlights: option<highlightList>,
  @ocaml.doc("<p>The text to display to the user.</p>") @as("Text") text: option<string_>,
}
@ocaml.doc(
  "<p>Provides text and information about where to highlight the query suggestion text.</p>"
)
type suggestionTextWithHighlights = {
  @ocaml.doc(
    "<p>The beginning and end of the query suggestion text that should be highlighted.</p>"
  )
  @as("Highlights")
  highlights: option<suggestionHighlightList>,
  @ocaml.doc("<p>The query suggestion text to display to the user.</p>") @as("Text")
  text: option<string_>,
}
@ocaml.doc("<p>Provides configuration information for connecting to a Microsoft
            SharePoint data source.</p>")
type sharePointConfiguration = {
  @ocaml.doc("<p>A Boolean value that specifies whether local
         groups are disabled (<code>True</code>) or enabled (<code>False</code>).
      </p>")
  @as("DisableLocalGroups")
  disableLocalGroups: option<boolean_>,
  @ocaml.doc("<p>The Microsoft SharePoint attribute field that contains the title
            of the document.</p>")
  @as("DocumentTitleFieldName")
  documentTitleFieldName: option<dataSourceFieldName>,
  @ocaml.doc("<p>A list of <code>DataSourceToIndexFieldMapping</code> objects that
            map Microsoft SharePoint attributes to custom fields in the Amazon Kendra
            index. You must first create the index fields using the
                <code>UpdateIndex</code> operation before you map SharePoint
            attributes. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping Data Source
                Fields</a>.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("VpcConfiguration") vpcConfiguration: option<dataSourceVpcConfiguration>,
  @ocaml.doc("<p>A list of regular expression patterns. Documents that match the
            patterns are excluded from the index. Documents that don't match the
            patterns are included in the index. If a document matches both an
            exclusion pattern and an inclusion pattern, the document is not
            included in the index.</p>
        <p>The regex is applied to the display URL of the SharePoint
            document.</p>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns. Documents that match the
            patterns are included in the index. Documents that don't match the
            patterns are excluded from the index. If a document matches both an
            inclusion pattern and an exclusion pattern, the document is not
            included in the index.</p>
        <p>The regex is applied to the display URL of the SharePoint
            document.</p>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>Set to <code>TRUE</code> to use the Microsoft SharePoint change
            log to determine the documents that need to be updated in the index.
            Depending on the size of the SharePoint change log, it may take
            longer for Amazon Kendra to use the change log than it takes it to
            determine the changed documents using the Amazon Kendra document
            crawler.</p>")
  @as("UseChangeLog")
  useChangeLog: option<boolean_>,
  @ocaml.doc("<p>
            <code>TRUE</code> to include attachments to documents stored in
            your Microsoft SharePoint site in the index; otherwise,
                <code>FALSE</code>.</p>")
  @as("CrawlAttachments")
  crawlAttachments: option<boolean_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of credentials stored in AWS
            Secrets Manager. The credentials should be a user/password pair. For
            more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-sharepoint.html\">Using a
                Microsoft SharePoint Data Source</a>. For more information
            about AWS Secrets Manager, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\"> What Is AWS
                Secrets Manager </a> in the <i>AWS Secrets
                Manager</i> user guide.</p>")
  @as("SecretArn")
  secretArn: secretArn,
  @ocaml.doc("<p>The URLs of the Microsoft SharePoint site that contains the
            documents that should be indexed.</p>")
  @as("Urls")
  urls: sharePointUrlList,
  @ocaml.doc("<p>The version of Microsoft SharePoint that you are using as a data
            source.</p>")
  @as("SharePointVersion")
  sharePointVersion: sharePointVersion,
}
@ocaml.doc("<p>Provides configuration information for crawling service catalog
            items in the ServiceNow site</p>")
type serviceNowServiceCatalogConfiguration = {
  @ocaml.doc("<p>Mapping between ServiceNow fields and Amazon Kendra index fields. You
            must create the index field before you map the field.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>The name of the ServiceNow field that is mapped to the index
            document title field.</p>")
  @as("DocumentTitleFieldName")
  documentTitleFieldName: option<dataSourceFieldName>,
  @ocaml.doc("<p>The name of the ServiceNow field that is mapped to the index
            document contents field in the Amazon Kendra index.</p>")
  @as("DocumentDataFieldName")
  documentDataFieldName: dataSourceFieldName,
  @ocaml.doc("<p>A list of regular expression patterns. Documents that match the
            patterns are excluded from the index. Documents that don't match the
            patterns are included in the index. If a document matches both an
            exclusion pattern and an inclusion pattern, the document is not
            included in the index.</p>
        <p>The regex is applied to the file name of the attachment.</p>")
  @as("ExcludeAttachmentFilePatterns")
  excludeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns. Documents that match the
            patterns are included in the index. Documents that don't match the
            patterns are excluded from the index. If a document matches both an
            exclusion pattern and an inclusion pattern, the document is not
            included in the index.</p>
        <p>The regex is applied to the file name of the attachment.</p>")
  @as("IncludeAttachmentFilePatterns")
  includeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>Indicates whether Amazon Kendra should crawl attachments to the service
            catalog items. </p>")
  @as("CrawlAttachments")
  crawlAttachments: option<boolean_>,
}
@ocaml.doc("<p>Provides configuration information for crawling knowledge articles
            in the ServiceNow site.</p>")
type serviceNowKnowledgeArticleConfiguration = {
  @ocaml.doc("<p>A query that selects the knowledge articles to index. The query
            can return articles from multiple knowledge bases, and the knowledge
            bases can be public or private.</p>
        <p>The query string must be one generated by the ServiceNow console.
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/servicenow-query.html\">Specifying
                documents to index with a query</a>. </p>")
  @as("FilterQuery")
  filterQuery: option<serviceNowKnowledgeArticleFilterQuery>,
  @ocaml.doc("<p>Mapping between ServiceNow fields and Amazon Kendra index fields. You
            must create the index field before you map the field.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>The name of the ServiceNow field that is mapped to the index
            document title field.</p>")
  @as("DocumentTitleFieldName")
  documentTitleFieldName: option<dataSourceFieldName>,
  @ocaml.doc("<p>The name of the ServiceNow field that is mapped to the index
            document contents field in the Amazon Kendra index.</p>")
  @as("DocumentDataFieldName")
  documentDataFieldName: dataSourceFieldName,
  @ocaml.doc("<p>List of regular expressions applied to knowledge articles. Items
            that don't match the inclusion pattern are not indexed. The regex is
            applied to the field specified in the
                <code>PatternTargetField</code>
         </p>")
  @as("ExcludeAttachmentFilePatterns")
  excludeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>List of regular expressions applied to knowledge articles. Items
            that don't match the inclusion pattern are not indexed. The regex is
            applied to the field specified in the
                <code>PatternTargetField</code>.</p>")
  @as("IncludeAttachmentFilePatterns")
  includeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>Indicates whether Amazon Kendra should index attachments to knowledge
            articles.</p>")
  @as("CrawlAttachments")
  crawlAttachments: option<boolean_>,
}
@ocaml.doc("<p>Specifies configuration information for indexing a single standard
            object.</p>")
type salesforceStandardObjectConfiguration = {
  @ocaml.doc("<p>One or more objects that map fields in the standard object to
            Amazon Kendra index fields. The index field must exist before you can map
            a Salesforce field to it.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>The name of the field in the standard object table that contains
            the document title.</p>")
  @as("DocumentTitleFieldName")
  documentTitleFieldName: option<dataSourceFieldName>,
  @ocaml.doc("<p>The name of the field in the standard object table that contains
            the document contents.</p>")
  @as("DocumentDataFieldName")
  documentDataFieldName: dataSourceFieldName,
  @ocaml.doc("<p>The name of the standard object.</p>") @as("Name")
  name: salesforceStandardObjectName,
}
@ocaml.doc("<p>Provides configuration information for processing attachments to
            Salesforce standard objects. </p>")
type salesforceStandardObjectAttachmentConfiguration = {
  @ocaml.doc("<p>One or more objects that map fields in attachments to Amazon Kendra
            index fields.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>The name of the field used for the document title.</p>")
  @as("DocumentTitleFieldName")
  documentTitleFieldName: option<dataSourceFieldName>,
}
@ocaml.doc("<p>Provides configuration information for standard Salesforce
            knowledge articles.</p>")
type salesforceStandardKnowledgeArticleTypeConfiguration = {
  @ocaml.doc("<p>One or more objects that map fields in the knowledge article to
            Amazon Kendra index fields. The index field must exist before you can map
            a Salesforce field to it.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>The name of the field that contains the document title.</p>")
  @as("DocumentTitleFieldName")
  documentTitleFieldName: option<dataSourceFieldName>,
  @ocaml.doc("<p>The name of the field that contains the document data to
            index.</p>")
  @as("DocumentDataFieldName")
  documentDataFieldName: dataSourceFieldName,
}
@ocaml.doc("<p>Provides configuration information for indexing Salesforce custom
            articles.</p>")
type salesforceCustomKnowledgeArticleTypeConfiguration = {
  @ocaml.doc("<p>One or more objects that map fields in the custom knowledge
            article to fields in the Amazon Kendra index.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>The name of the field in the custom knowledge article that
            contains the document title.</p>")
  @as("DocumentTitleFieldName")
  documentTitleFieldName: option<dataSourceFieldName>,
  @ocaml.doc("<p>The name of the field in the custom knowledge article that
            contains the document data to index.</p>")
  @as("DocumentDataFieldName")
  documentDataFieldName: dataSourceFieldName,
  @ocaml.doc("<p>The name of the configuration.</p>") @as("Name")
  name: salesforceCustomKnowledgeArticleTypeName,
}
@ocaml.doc("<p>Defines configuration for syncing a Salesforce chatter feed. The
            contents of the object comes from the Salesforce FeedItem
            table.</p>")
type salesforceChatterFeedConfiguration = {
  @ocaml.doc("<p>Filters the documents in the feed based on status of the user.
            When you specify <code>ACTIVE_USERS</code> only documents from users
            who have an active account are indexed. When you specify
                <code>STANDARD_USER</code> only documents for Salesforce
            standard users are documented. You can specify both.</p>")
  @as("IncludeFilterTypes")
  includeFilterTypes: option<salesforceChatterFeedIncludeFilterTypes>,
  @ocaml.doc("<p>Maps fields from a Salesforce chatter feed into Amazon Kendra index
            fields.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>The name of the column in the Salesforce FeedItem table that
            contains the title of the document. This is typically the
                <code>Title</code> column.</p>")
  @as("DocumentTitleFieldName")
  documentTitleFieldName: option<dataSourceFieldName>,
  @ocaml.doc("<p>The name of the column in the Salesforce FeedItem table that
            contains the content to index. Typically this is the
                <code>Body</code> column.</p>")
  @as("DocumentDataFieldName")
  documentDataFieldName: dataSourceFieldName,
}
@ocaml.doc("<p>Provides configuration information for data sources that connect
            to OneDrive.</p>")
type oneDriveConfiguration = {
  @ocaml.doc("<p>A Boolean value that specifies whether local
      groups are disabled (<code>True</code>) or enabled (<code>False</code>).
      </p>")
  @as("DisableLocalGroups")
  disableLocalGroups: option<boolean_>,
  @ocaml.doc("<p>A list of <code>DataSourceToIndexFieldMapping</code> objects that
            map Microsoft OneDrive fields to custom fields in the Amazon Kendra
            index. You must first create the index fields before you map
            OneDrive fields.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>List of regular expressions applied to documents. Items that match
            the exclusion pattern are not indexed. If you provide both an
            inclusion pattern and an exclusion pattern, any item that matches
            the exclusion pattern isn't indexed. </p>
        <p>The exclusion pattern is applied to the file name.</p>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns. Documents that match the
            pattern are included in the index. Documents that don't match the
            pattern are excluded from the index. If a document matches both an
            inclusion pattern and an exclusion pattern, the document is not
            included in the index. </p>
        <p>The exclusion pattern is applied to the file name.</p>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of user accounts whose documents should be indexed.</p>")
  @as("OneDriveUsers")
  oneDriveUsers: oneDriveUsers,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Secrets Manager secret
            that contains the user name and password to connect to OneDrive. The
            user namd should be the application ID for the OneDrive application,
            and the password is the application key for the OneDrive
            application.</p>")
  @as("SecretArn")
  secretArn: secretArn,
  @ocaml.doc("<p>The Azure Active Directory domain of the organization. </p>") @as("TenantDomain")
  tenantDomain: tenantDomain,
}
@ocaml.doc("<p>Provides configuration information for data sources that connect
            to Google Drive.</p>")
type googleDriveConfiguration = {
  @ocaml.doc("<p>A list of identifiers or shared drives to exclude from the index.
            All files and folders stored on the shared drive are
            excluded.</p>")
  @as("ExcludeSharedDrives")
  excludeSharedDrives: option<excludeSharedDrivesList>,
  @ocaml.doc("<p>A list of email addresses of the users. Documents owned by these
            users are excluded from the index. Documents shared with excluded
            users are indexed unless they are excluded in another way.</p>")
  @as("ExcludeUserAccounts")
  excludeUserAccounts: option<excludeUserAccountsList>,
  @ocaml.doc("<p>A list of MIME types to exclude from the index. All documents
            matching the specified MIME type are excluded. </p>
        <p>For a list of MIME types, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-google-drive.html\">Using a Google Workspace Drive data
                source</a>.</p>")
  @as("ExcludeMimeTypes")
  excludeMimeTypes: option<excludeMimeTypesList>,
  @ocaml.doc("<p>Defines mapping between a field in the Google Drive and a Amazon Kendra
            index field.</p>
        <p>If you are using the console, you can define index fields when
            creating the mapping. If you are using the API, you must first
            create the field using the <code>UpdateIndex</code>
            operation.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>A list of regular expression patterns that apply to the path on
            Google Drive. Items that match the pattern are excluded from the
            index from both shared drives and users' My Drives. Items that don't
            match the pattern are included in the index. If an item matches both
            an exclusion pattern and an inclusion pattern, it is excluded from
            the index.</p>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns that apply to path on Google
            Drive. Items that match the pattern are included in the index from
            both shared drives and users' My Drives. Items that don't match the
            pattern are excluded from the index. If an item matches both an
            inclusion pattern and an exclusion pattern, it is excluded from the
            index.</p>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a AWS Secrets Manager secret
            that contains the credentials required to connect to Google Drive.
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-google-drive.html\">Using a Google Workspace Drive data
                source</a>.</p>")
  @as("SecretArn")
  secretArn: secretArn,
}
@ocaml.doc("<p>Overrides the document relevance properties of a custom index field.</p>")
type documentRelevanceConfiguration = {
  @as("Relevance") relevance: relevance,
  @ocaml.doc("<p>The name of the tuning configuration to override document relevance 
         at the index level.</p>")
  @as("Name")
  name: documentMetadataConfigurationName,
}
@ocaml.doc("<p>Specifies the properties of a custom index field.</p>")
type documentMetadataConfiguration = {
  @ocaml.doc("<p>Provides information about how the field is used during a
            search.</p>")
  @as("Search")
  search: option<search>,
  @ocaml.doc("<p>Provides manual tuning parameters to determine how the field
            affects the search results.</p>")
  @as("Relevance")
  relevance: option<relevance>,
  @ocaml.doc("<p>The data type of the index field. </p>") @as("Type")
  type_: documentAttributeValueType,
  @ocaml.doc("<p>The name of the index field.</p>") @as("Name")
  name: documentMetadataConfigurationName,
}
@ocaml.doc("<p>Provides the count of documents that match a particular attribute
            when doing a faceted search.</p>")
type documentAttributeValueCountPair = {
  @ocaml.doc("<p>The number of documents in the response that have the attribute
            value for the key.</p>")
  @as("Count")
  count: option<integer_>,
  @ocaml.doc("<p>The value of the attribute. For example, \"HR.\"</p>")
  @as("DocumentAttributeValue")
  documentAttributeValue: option<documentAttributeValue>,
}
@ocaml.doc("<p>A custom attribute value assigned to a document. </p>")
type documentAttribute = {
  @ocaml.doc("<p>The value of the attribute.</p>") @as("Value") value: documentAttributeValue,
  @ocaml.doc("<p>The identifier for the attribute.</p>") @as("Key") key: documentAttributeKey,
}
type dataSourceSyncJobHistoryList = array<dataSourceSyncJob>
@ocaml.doc("<p>Specifies the configuration for indexing Confluence spaces.</p>")
type confluenceSpaceConfiguration = {
  @ocaml.doc("<p>Defines how space metadata fields should be mapped to index
            fields. Before you can map a field, you must first create an index
            field with a matching type using the console or the
                <code>UpdateIndex</code> operation.</p>
        <p>If you specify the <code>SpaceFieldMappings</code> parameter, you
            must specify at least one field mapping.</p>")
  @as("SpaceFieldMappings")
  spaceFieldMappings: option<confluenceSpaceFieldMappingsList>,
  @ocaml.doc("<p>A list of space keys of Confluence spaces. If you include a key,
            the blogs, documents, and attachments in the space are not indexed.
            If a space is in both the <code>ExcludeSpaces</code> and the
                <code>IncludeSpaces</code> list, the space is excluded.</p>")
  @as("ExcludeSpaces")
  excludeSpaces: option<confluenceSpaceList>,
  @ocaml.doc("<p>A list of space keys for Confluence spaces. If you include a key,
            the blogs, documents, and attachments in the space are indexed.
            Spaces that aren't in the list aren't indexed. A space in the list
            must exist. Otherwise, Amazon Kendra logs an error when the data source is
            synchronized. If a space is in both the <code>IncludeSpaces</code>
            and the <code>ExcludeSpaces</code> list, the space is
            excluded.</p>")
  @as("IncludeSpaces")
  includeSpaces: option<confluenceSpaceList>,
  @ocaml.doc("<p>Specifies whether Amazon Kendra should index archived spaces.</p>")
  @as("CrawlArchivedSpaces")
  crawlArchivedSpaces: option<boolean_>,
  @ocaml.doc("<p>Specifies whether Amazon Kendra should index personal spaces. Users can
            add restrictions to items in personal spaces. If personal spaces are
            indexed, queries without user context information may return
            restricted items from a personal space in their results. For more
            information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html\">Filtering on
                user context</a>.</p>")
  @as("CrawlPersonalSpaces")
  crawlPersonalSpaces: option<boolean_>,
}
@ocaml.doc("<p>Specifies the page settings for the Confluence data source.</p>")
type confluencePageConfiguration = {
  @ocaml.doc("<p>Defines how page metadata fields should be mapped to index fields.
            Before you can map a field, you must first create an index field
            with a matching type using the console or the
                <code>UpdateIndex</code> operation.</p>
        <p>If you specify the <code>PageFieldMappings</code> parameter, you
            must specify at least one field mapping.</p>")
  @as("PageFieldMappings")
  pageFieldMappings: option<confluencePageFieldMappingsList>,
}
@ocaml.doc("<p>Specifies the blog settings for the Confluence data source. Blogs
            are always indexed unless filtered from the index by the
                <code>ExclusionPatterns</code> or <code>InclusionPatterns</code>
            fields in the <code>ConfluenceConfiguration</code> type.</p>")
type confluenceBlogConfiguration = {
  @ocaml.doc("<p>Defines how blog metadata fields should be mapped to index fields.
            Before you can map a field, you must first create an index field
            with a matching type using the console or the
                <code>UpdateIndex</code> operation.</p>
        <p>If you specify the <code>BlogFieldMappings</code> parameter, you
            must specify at least one field mapping.</p>")
  @as("BlogFieldMappings")
  blogFieldMappings: option<confluenceBlogFieldMappingsList>,
}
@ocaml.doc("<p>Specifies the attachment settings for the Confluence data source.
            Attachment settings are optional, if you don't specify settings
            attachments, Amazon Kendra won't index them.</p>")
type confluenceAttachmentConfiguration = {
  @ocaml.doc("<p>Defines how attachment metadata fields should be mapped to index
            fields. Before you can map a field, you must first create an index
            field with a matching type using the console or the
                <code>UpdateIndex</code> operation.</p>
        <p>If you specify the <code>AttachentFieldMappings</code> parameter,
            you must specify at least one field mapping.</p>")
  @as("AttachmentFieldMappings")
  attachmentFieldMappings: option<confluenceAttachmentFieldMappingsList>,
  @ocaml.doc("<p>Indicates whether Amazon Kendra indexes attachments to the pages and blogs
            in the Confluence data source. </p>")
  @as("CrawlAttachments")
  crawlAttachments: option<boolean_>,
}
@ocaml.doc("<p>Provides information about how Amazon Kendra should use the columns of
            a database in an index.</p>")
type columnConfiguration = {
  @ocaml.doc("<p>One to five columns that indicate when a document in the database
            has changed.</p>")
  @as("ChangeDetectingColumns")
  changeDetectingColumns: changeDetectingColumns,
  @ocaml.doc("<p>An array of objects that map database column names to the
            corresponding fields in an index. You must first create the fields
            in the index using the <code>UpdateIndex</code> operation.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>The column that contains the title of the document.</p>")
  @as("DocumentTitleColumnName")
  documentTitleColumnName: option<columnName>,
  @ocaml.doc("<p>The column that contains the contents of the document.</p>")
  @as("DocumentDataColumnName")
  documentDataColumnName: columnName,
  @ocaml.doc("<p>The column that provides the document's unique identifier.</p>")
  @as("DocumentIdColumnName")
  documentIdColumnName: columnName,
}
@ocaml.doc("<p>The <code>SuggestionTextWithHighlights</code> structure information.</p>")
type suggestionValue = {
  @ocaml.doc("<p>The <code>SuggestionTextWithHighlights</code> structure that contains 
            the query suggestion text and highlights.</p>")
  @as("Text")
  text: option<suggestionTextWithHighlights>,
}
@ocaml.doc("<p>Provides configuration information required to connect to a
            ServiceNow data source.</p>")
type serviceNowConfiguration = {
  @ocaml.doc("<p>Determines the type of authentication used to connect to the
            ServiceNow instance. If you choose <code>HTTP_BASIC</code>, Amazon Kendra is
            authenticated using the user name and password provided in the AWS
            Secrets Manager secret in the <code>SecretArn</code> field. When you
            choose <code>OAUTH2</code>, Amazon Kendra is authenticated using the OAuth
            token and secret provided in the Secrets Manager secret, and the
            user name and password are used to determine which information Amazon Kendra
            has access to.</p>
        <p>When you use <code>OAUTH2</code> authentication, you must generate
            a token and a client secret using the ServiceNow console. For more
            information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-servicenow.html\">Using a
                ServiceNow data source</a>.</p>")
  @as("AuthenticationType")
  authenticationType: option<serviceNowAuthenticationType>,
  @ocaml.doc("<p>Provides configuration information for crawling service catalogs
            in the ServiceNow site.</p>")
  @as("ServiceCatalogConfiguration")
  serviceCatalogConfiguration: option<serviceNowServiceCatalogConfiguration>,
  @ocaml.doc("<p>Provides configuration information for crawling knowledge articles
            in the ServiceNow site.</p>")
  @as("KnowledgeArticleConfiguration")
  knowledgeArticleConfiguration: option<serviceNowKnowledgeArticleConfiguration>,
  @ocaml.doc("<p>The identifier of the release that the ServiceNow host is running.
            If the host is not running the <code>LONDON</code> release, use
                <code>OTHERS</code>.</p>")
  @as("ServiceNowBuildVersion")
  serviceNowBuildVersion: serviceNowBuildVersionType,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Secret Manager secret
            that contains the user name and password required to connect to the
            ServiceNow instance.</p>")
  @as("SecretArn")
  secretArn: secretArn,
  @ocaml.doc("<p>The ServiceNow instance that the data source connects to. The host
            endpoint should look like the following:
                <code>{instance}.service-now.com.</code>
         </p>")
  @as("HostUrl")
  hostUrl: serviceNowHostUrl,
}
type salesforceStandardObjectConfigurationList = array<salesforceStandardObjectConfiguration>
type salesforceCustomKnowledgeArticleTypeConfigurationList = array<
  salesforceCustomKnowledgeArticleTypeConfiguration,
>
type documentRelevanceOverrideConfigurationList = array<documentRelevanceConfiguration>
type documentMetadataConfigurationList = array<documentMetadataConfiguration>
type documentAttributeValueCountPairList = array<documentAttributeValueCountPair>
type documentAttributeList = array<documentAttribute>
@ocaml.doc("<p>Provides the information necessary to connect a database to an
            index. </p>")
type databaseConfiguration = {
  @ocaml.doc("<p>Provides information about how Amazon Kendra uses quote marks around SQL
            identifiers when querying a database data source.</p>")
  @as("SqlConfiguration")
  sqlConfiguration: option<sqlConfiguration>,
  @ocaml.doc("<p>Information about the database column that provides information
            for user context filtering.</p>")
  @as("AclConfiguration")
  aclConfiguration: option<aclConfiguration>,
  @ocaml.doc("<p>Information about where the index should get the document
            information from the database.</p>")
  @as("ColumnConfiguration")
  columnConfiguration: columnConfiguration,
  @as("VpcConfiguration") vpcConfiguration: option<dataSourceVpcConfiguration>,
  @ocaml.doc("<p>The information necessary to connect to a database.</p>")
  @as("ConnectionConfiguration")
  connectionConfiguration: connectionConfiguration,
  @ocaml.doc("<p>The type of database engine that runs the database.</p>") @as("DatabaseEngineType")
  databaseEngineType: databaseEngineType,
}
@ocaml.doc("<p>Provides configuration information for data sources that connect
            to Confluence.</p>")
type confluenceConfiguration = {
  @ocaml.doc("<p>A list of regular expression patterns that apply to a URL on the
            Confluence server. An exclusion pattern can apply to a blog post, a
            page, a space, or an attachment. Items that match the pattern are
            excluded from the index. Items that don't match the pattern are
            included in the index. If a item matches both an exclusion pattern
            and an inclusion pattern, the item isn't included in the
            index.</p>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns that apply to a URL on the
            Confluence server. An inclusion pattern can apply to a blog post, a
            page, a space, or an attachment. Items that match the patterns are
            included in the index. Items that don't match the pattern are
            excluded from the index. If an item matches both an inclusion
            pattern and an exclusion pattern, the item isn't included in the
            index.</p>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>Specifies the information for connecting to an Amazon VPC.</p>")
  @as("VpcConfiguration")
  vpcConfiguration: option<dataSourceVpcConfiguration>,
  @ocaml.doc("<p>Specifies configuration information for indexing attachments to
            Confluence blogs and pages.</p>")
  @as("AttachmentConfiguration")
  attachmentConfiguration: option<confluenceAttachmentConfiguration>,
  @ocaml.doc("<p> Specifies configuration information for indexing Confluence
            blogs.</p>")
  @as("BlogConfiguration")
  blogConfiguration: option<confluenceBlogConfiguration>,
  @ocaml.doc("<p>Specifies configuration information for indexing Confluence
            pages.</p>")
  @as("PageConfiguration")
  pageConfiguration: option<confluencePageConfiguration>,
  @ocaml.doc("<p>Specifies configuration information for indexing Confluence
            spaces.</p>")
  @as("SpaceConfiguration")
  spaceConfiguration: option<confluenceSpaceConfiguration>,
  @ocaml.doc("<p>Specifies the version of the Confluence installation that you are
            connecting to.</p>")
  @as("Version")
  version: confluenceVersion,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Secrets Manager secret
            that contains the key/value pairs required to connect to your
            Confluence server. The secret must contain a JSON structure with the
            following keys:</p>
        <ul>
            <li>
                <p>username - The user name or email address of a user with
                    administrative privileges for the Confluence server.</p>
            </li>
            <li>
                <p>password - The password associated with the user logging
                    in to the Confluence server.</p>
            </li>
         </ul>")
  @as("SecretArn")
  secretArn: secretArn,
  @ocaml.doc("<p>The URL of your Confluence instance. Use the full URL of the
            server. For example, <code>https://server.example.com:port/</code>.
            You can also use an IP address, for example,
                <code>https://192.168.1.113/</code>.</p>")
  @as("ServerUrl")
  serverUrl: url,
}
@ocaml.doc("<p>An attribute returned with a document from a search.</p>")
type additionalResultAttributeValue = {
  @ocaml.doc("<p>The text associated with the attribute and information about the
            highlight to apply to the text.</p>")
  @as("TextWithHighlightsValue")
  textWithHighlightsValue: option<textWithHighlights>,
}
@ocaml.doc("<p>A single query suggestion.</p>")
type suggestion = {
  @ocaml.doc("<p>The value for the unique UUID (universally unique identifier) 
            of a single query suggestion.</p>
        <p>The value is the text string of a suggestion.</p>")
  @as("Value")
  value: option<suggestionValue>,
  @ocaml.doc("<p>The unique UUID (universally unique identifier) of a single 
            query suggestion.</p>")
  @as("Id")
  id: option<resultId>,
}
@ocaml.doc("<p>Specifies configuration information for the knowledge article
            types that Amazon Kendra indexes. Amazon Kendra indexes standard knowledge
            articles and the standard fields of knowledge articles, or the
            custom fields of custom knowledge articles, but not both </p>")
type salesforceKnowledgeArticleConfiguration = {
  @ocaml.doc("<p>Provides configuration information for custom Salesforce knowledge
            articles.</p>")
  @as("CustomKnowledgeArticleTypeConfigurations")
  customKnowledgeArticleTypeConfigurations: option<
    salesforceCustomKnowledgeArticleTypeConfigurationList,
  >,
  @ocaml.doc("<p>Provides configuration information for standard Salesforce
            knowledge articles.</p>")
  @as("StandardKnowledgeArticleTypeConfiguration")
  standardKnowledgeArticleTypeConfiguration: option<
    salesforceStandardKnowledgeArticleTypeConfiguration,
  >,
  @ocaml.doc("<p>Specifies the document states that should be included when
            Amazon Kendra indexes knowledge articles. You must specify at least one
            state.</p>")
  @as("IncludedStates")
  includedStates: salesforceKnowledgeArticleStateList,
}
@ocaml.doc("<p>The facet values for the documents in the response.</p>")
type facetResult = {
  @ocaml.doc("<p>An array of key/value pairs, where the key is the value of the
         attribute and the count is the number of documents that share the key
         value.</p>")
  @as("DocumentAttributeValueCountPairs")
  documentAttributeValueCountPairs: option<documentAttributeValueCountPairList>,
  @ocaml.doc("<p>The data type of the facet value. This is the same as the type
         defined for the index field when it was created.</p>")
  @as("DocumentAttributeValueType")
  documentAttributeValueType: option<documentAttributeValueType>,
  @ocaml.doc("<p>The key for the facet values. This is the same as the
            <code>DocumentAttributeKey</code> provided in the query.</p>")
  @as("DocumentAttributeKey")
  documentAttributeKey: option<documentAttributeKey>,
}
@ocaml.doc("<p>A document in an index.</p>")
type document = {
  @ocaml.doc("<p>The file type of the document in the <code>Blob</code>
            field.</p>")
  @as("ContentType")
  contentType: option<contentType>,
  @ocaml.doc("<p>Information to use for user context filtering.</p>") @as("AccessControlList")
  accessControlList: option<principalList>,
  @ocaml.doc("<p>Custom attributes to apply to the document. Use the custom
            attributes to provide additional information for searching, to
            provide facets for refining searches, and to provide additional
            information in the query response.</p>")
  @as("Attributes")
  attributes: option<documentAttributeList>,
  @as("S3Path") s3Path: option<s3Path>,
  @ocaml.doc("<p>The contents of the document. </p>
        <p>Documents passed to the <code>Blob</code> parameter must be base64
            encoded. Your code might not need to encode the document file bytes
            if you're using an AWS SDK to call Amazon Kendra operations. If you are
            calling the Amazon Kendra endpoint directly using REST, you must base64
            encode the contents before sending.</p>")
  @as("Blob")
  blob: option<blob>,
  @ocaml.doc("<p>The title of the document.</p>") @as("Title") title: option<title>,
  @ocaml.doc("<p>A unique identifier of the document in the index.</p>") @as("Id") id: documentId,
}
@ocaml.doc("<p>An attribute returned from an index query.</p>")
type additionalResultAttribute = {
  @ocaml.doc("<p>An object that contains the attribute value.</p>") @as("Value")
  value: additionalResultAttributeValue,
  @ocaml.doc("<p>The data type of the <code>Value</code> property.</p>") @as("ValueType")
  valueType: additionalResultAttributeValueType,
  @ocaml.doc("<p>The key that identifies the attribute.</p>") @as("Key") key: string_,
}
type suggestionList = array<suggestion>
@ocaml.doc("<p>Provides configuration information for connecting to a Salesforce
            data source.</p>")
type salesforceConfiguration = {
  @ocaml.doc("<p>A list of regular expression patterns. Documents that match the
            patterns are excluded from the index. Documents that don't match the
            patterns are included in the index. If a document matches both an
            exclusion pattern and an inclusion pattern, the document is not
            included in the index.</p>
        <p>The regex is applied to the name of the attached file.</p>")
  @as("ExcludeAttachmentFilePatterns")
  excludeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns. Documents that match the
            patterns are included in the index. Documents that don't match the
            patterns are excluded from the index. If a document matches both an
            inclusion pattern and an exclusion pattern, the document is not
            included in the index.</p>
        <p>The regex is applied to the name of the attached file.</p>")
  @as("IncludeAttachmentFilePatterns")
  includeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>Provides configuration information for processing attachments to
            Salesforce standard objects. </p>")
  @as("StandardObjectAttachmentConfiguration")
  standardObjectAttachmentConfiguration: option<salesforceStandardObjectAttachmentConfiguration>,
  @ocaml.doc("<p>Indicates whether Amazon Kendra should index attachments to Salesforce
            objects.</p>")
  @as("CrawlAttachments")
  crawlAttachments: option<boolean_>,
  @ocaml.doc("<p>Specifies configuration information for Salesforce chatter
            feeds.</p>")
  @as("ChatterFeedConfiguration")
  chatterFeedConfiguration: option<salesforceChatterFeedConfiguration>,
  @ocaml.doc("<p>Specifies configuration information for the knowledge article
            types that Amazon Kendra indexes. Amazon Kendra indexes standard knowledge
            articles and the standard fields of knowledge articles, or the
            custom fields of custom knowledge articles, but not both.</p>")
  @as("KnowledgeArticleConfiguration")
  knowledgeArticleConfiguration: option<salesforceKnowledgeArticleConfiguration>,
  @ocaml.doc("<p>Specifies the Salesforce standard objects that Amazon Kendra
            indexes.</p>")
  @as("StandardObjectConfigurations")
  standardObjectConfigurations: option<salesforceStandardObjectConfigurationList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS Secrets Manager secret
            that contains the key/value pairs required to connect to your
            Salesforce instance. The secret must contain a JSON structure with
            the following keys:</p>
        <ul>
            <li>
                <p>authenticationUrl - The OAUTH endpoint that Amazon Kendra
                    connects to get an OAUTH token. </p>
            </li>
            <li>
                <p>consumerKey - The application public key generated when
                    you created your Salesforce application.</p>
            </li>
            <li>
                <p>consumerSecret - The application private key generated
                    when you created your Salesforce application.</p>
            </li>
            <li>
                <p>password - The password associated with the user logging
                    in to the Salesforce instance.</p>
            </li>
            <li>
                <p>securityToken - The token associated with the user account
                    logging in to the Salesforce instance.</p>
            </li>
            <li>
                <p>username - The user name of the user logging in to the
                    Salesforce instance.</p>
            </li>
         </ul>")
  @as("SecretArn")
  secretArn: secretArn,
  @ocaml.doc("<p>The instance URL for the Salesforce site that you want to
            index.</p>")
  @as("ServerUrl")
  serverUrl: url,
}
type facetResultList = array<facetResult>
type documentList = array<document>
type additionalResultAttributeList = array<additionalResultAttribute>
@ocaml.doc("<p>A single query result.</p>
         <p>A query result contains information about a document returned by the
         query. This includes the original location of the document, a list of
         attributes assigned to the document, and relevant text from the
         document that satisfies the query.</p>")
type queryResultItem = {
  @ocaml.doc("<p>A token that identifies a particular result from a particular query.
         Use this token to provide click-through feedback for the result. For
         more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/submitting-feedback.html\"> Submitting feedback
         </a>.</p>")
  @as("FeedbackToken")
  feedbackToken: option<feedbackToken>,
  @ocaml.doc("<p>Indicates the confidence that Amazon Kendra has that a result matches the
         query that you provided. Each result is placed into a bin that
         indicates the confidence, <code>VERY_HIGH</code>, <code>HIGH</code>,
            <code>MEDIUM</code> and <code>LOW</code>. You can use the score to
         determine if a response meets the confidence needed for your
         application.</p>
         <p>The field is only set to <code>LOW</code> when the <code>Type</code>
         field is set to <code>DOCUMENT</code> and Amazon Kendra is not confident that
         the result matches the query.</p>")
  @as("ScoreAttributes")
  scoreAttributes: option<scoreAttributes>,
  @ocaml.doc("<p>An array of document attributes for the document that the query
         result maps to. For example, the document author (Author) or the source
         URI (SourceUri) of the document.</p>")
  @as("DocumentAttributes")
  documentAttributes: option<documentAttributeList>,
  @ocaml.doc("<p>The URI of the original location of the document.</p>") @as("DocumentURI")
  documentURI: option<url>,
  @ocaml.doc("<p>An extract of the text in the document. Contains information about
         highlighting the relevant terms in the excerpt.</p>")
  @as("DocumentExcerpt")
  documentExcerpt: option<textWithHighlights>,
  @ocaml.doc("<p>The title of the document. Contains the text of the title and
         information for highlighting the relevant terms in the title.</p>")
  @as("DocumentTitle")
  documentTitle: option<textWithHighlights>,
  @ocaml.doc("<p>The unique identifier for the document.</p>") @as("DocumentId")
  documentId: option<documentId>,
  @ocaml.doc("<p>One or more additional attributes associated with the query
         result.</p>")
  @as("AdditionalAttributes")
  additionalAttributes: option<additionalResultAttributeList>,
  @ocaml.doc("<p>The type of document. </p>") @as("Type") type_: option<queryResultType>,
  @ocaml.doc("<p>The unique identifier for the query result.</p>") @as("Id") id: option<resultId>,
}
@ocaml.doc("<p>Configuration information for a Amazon Kendra data source.</p>")
type dataSourceConfiguration = {
  @ocaml.doc("<p>Provides configuration for data sources that connect to Google
            Drive. </p>")
  @as("GoogleDriveConfiguration")
  googleDriveConfiguration: option<googleDriveConfiguration>,
  @ocaml.doc("<p>Provides configuration information for connecting to a Confluence
            data source.</p>")
  @as("ConfluenceConfiguration")
  confluenceConfiguration: option<confluenceConfiguration>,
  @ocaml.doc("<p>Provides configuration for data sources that connect to ServiceNow
            instances.</p>")
  @as("ServiceNowConfiguration")
  serviceNowConfiguration: option<serviceNowConfiguration>,
  @ocaml.doc("<p>Provides configuration for data sources that connect to Microsoft
            OneDrive.</p>")
  @as("OneDriveConfiguration")
  oneDriveConfiguration: option<oneDriveConfiguration>,
  @ocaml.doc("<p>Provides configuration information for data sources that connect
            to a Salesforce site.</p>")
  @as("SalesforceConfiguration")
  salesforceConfiguration: option<salesforceConfiguration>,
  @ocaml.doc("<p>Provides information necessary to create a data source connector
            for a database.</p>")
  @as("DatabaseConfiguration")
  databaseConfiguration: option<databaseConfiguration>,
  @ocaml.doc("<p>Provides information necessary to create a data source connector
            for a Microsoft SharePoint site.</p>")
  @as("SharePointConfiguration")
  sharePointConfiguration: option<sharePointConfiguration>,
  @ocaml.doc("<p>Provides information to create a data source connector for a
            document repository in an Amazon S3 bucket.</p>")
  @as("S3Configuration")
  s3Configuration: option<s3DataSourceConfiguration>,
}
type queryResultItemList = array<queryResultItem>
type rec attributeFilter = {
  @ocaml.doc("<p>Performs a less than or equals operation on two document attributes.
         Use with a document attribute of type <code>Integer</code> or
            <code>Long</code>.</p>")
  @as("LessThanOrEquals")
  lessThanOrEquals: option<documentAttribute>,
  @ocaml.doc("<p>Performs a less than operation on two document attributes. Use with
         a document attribute of type <code>Integer</code> or
         <code>Long</code>.</p>")
  @as("LessThan")
  lessThan: option<documentAttribute>,
  @ocaml.doc("<p>Performs a greater or equals than operation on two document
         attributes. Use with a document attribute of type <code>Integer</code>
         or <code>Long</code>.</p>")
  @as("GreaterThanOrEquals")
  greaterThanOrEquals: option<documentAttribute>,
  @ocaml.doc("<p>Performs a greater than operation on two document attributes. Use
         with a document attribute of type <code>Integer</code> or
            <code>Long</code>.</p>")
  @as("GreaterThan")
  greaterThan: option<documentAttribute>,
  @ocaml.doc("<p>Returns true when a document contains any of the specified document
         attributes. This filter is only applicable to
            <code>StringListValue</code> metadata.</p>")
  @as("ContainsAny")
  containsAny: option<documentAttribute>,
  @ocaml.doc("<p>Returns true when a document contains all of the specified document
         attributes. This filter is only applicable to
            <code>StringListValue</code> metadata.</p>")
  @as("ContainsAll")
  containsAll: option<documentAttribute>,
  @ocaml.doc("<p>Performs an equals operation on two document attributes.</p>") @as("EqualsTo")
  equalsTo: option<documentAttribute>,
  @ocaml.doc("<p>Performs a logical <code>NOT</code> operation on all supplied
         filters.</p>")
  @as("NotFilter")
  notFilter: option<attributeFilter>,
  @ocaml.doc("<p>Performs a logical <code>OR</code> operation on all supplied
         filters.</p>")
  @as("OrAllFilters")
  orAllFilters: option<attributeFilterList>,
  @ocaml.doc("<p>Performs a logical <code>AND</code> operation on all supplied
         filters.</p>")
  @as("AndAllFilters")
  andAllFilters: option<attributeFilterList>,
}
and attributeFilterList = array<attributeFilter>
@ocaml.doc("<p>Amazon Kendra is a service for indexing large document sets.</p>")
module UpdateQuerySuggestionsConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The the minimum number of times a query must be searched in order to be 
            eligible to suggest to your users.</p>
        <p>Decreasing this number increases the number of suggestions. However, this 
            affects the quality of suggestions as it sets a low bar for a query to be 
            considered popular to suggest to users.</p>
        <p>How you tune this setting depends on your specific needs.</p>")
    @as("MinimumQueryCount")
    minimumQueryCount: option<minimumQueryCount>,
    @ocaml.doc("<p>The minimum number of unique users who must search a query in order for the query 
            to be eligible to suggest to your users.</p>
        <p>Increasing this number might decrease the number of suggestions. However, this 
            ensures a query is searched by many users and is truly popular to suggest to users.</p>
        <p>How you tune this setting depends on your specific needs.</p>")
    @as("MinimumNumberOfQueryingUsers")
    minimumNumberOfQueryingUsers: option<minimumNumberOfQueryingUsers>,
    @ocaml.doc("<p>
            <code>TRUE</code> to include queries without user information (i.e. all queries, 
            irrespective of the user), otherwise <code>FALSE</code> to only include queries 
            with user information.</p>
        <p>If you pass user information to Amazon Kendra along with the queries, you can set this 
            flag to <code>FALSE</code> and instruct Amazon Kendra to only consider queries with user 
            information.</p>
        <p>If you set to <code>FALSE</code>, Amazon Kendra only considers queries searched at least 
            <code>MinimumQueryCount</code> times across <code>MinimumNumberOfQueryingUsers</code> 
            unique users for suggestions.</p>
        <p>If you set to <code>TRUE</code>, Amazon Kendra ignores all user information and learns 
            from all queries.</p>")
    @as("IncludeQueriesWithoutUserInformation")
    includeQueriesWithoutUserInformation: option<objectBoolean>,
    @ocaml.doc("<p>How recent your queries are in your query log time window.</p>
        <p>The time window is the number of days from current day to past days.</p>
        <p>By default, Amazon Kendra sets this to 180.</p>")
    @as("QueryLogLookBackWindowInDays")
    queryLogLookBackWindowInDays: option<integer_>,
    @ocaml.doc("<p>Set the mode to <code>ENABLED</code> or <code>LEARN_ONLY</code>.</p>
        <p>By default, Amazon Kendra enables query suggestions. 
            <code>LEARN_ONLY</code> mode allows you to turn off query suggestions. 
            You can to update this at any time.</p>
        <p>In <code>LEARN_ONLY</code> mode, Amazon Kendra continues to learn from new 
            queries to keep suggestions up to date for when you are ready to 
            switch to ENABLED mode again.</p>")
    @as("Mode")
    mode: option<mode>,
    @ocaml.doc(
      "<p>The identifier of the index you want to update query suggestions settings for.</p>"
    )
    @as("IndexId")
    indexId: indexId,
  }

  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "UpdateQuerySuggestionsConfigCommand"
  let make = (
    ~indexId,
    ~minimumQueryCount=?,
    ~minimumNumberOfQueryingUsers=?,
    ~includeQueriesWithoutUserInformation=?,
    ~queryLogLookBackWindowInDays=?,
    ~mode=?,
    (),
  ) =>
    new({
      minimumQueryCount: minimumQueryCount,
      minimumNumberOfQueryingUsers: minimumNumberOfQueryingUsers,
      includeQueriesWithoutUserInformation: includeQueriesWithoutUserInformation,
      queryLogLookBackWindowInDays: queryLogLookBackWindowInDays,
      mode: mode,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopDataSourceSyncJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the index that contains the data source.</p>") @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of the data source for which to stop the
      synchronization jobs.</p>")
    @as("Id")
    id: dataSourceId,
  }

  @module("@aws-sdk/client-kendra") @new external new: request => t = "StopDataSourceSyncJobCommand"
  let make = (~indexId, ~id, ()) => new({indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartDataSourceSyncJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the index that contains the data source.</p>") @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of the data source to synchronize.</p>") @as("Id")
    id: dataSourceId,
  }
  type response = {
    @ocaml.doc("<p>Identifies a particular synchronization job.</p>") @as("ExecutionId")
    executionId: option<string_>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "StartDataSourceSyncJobCommand"
  let make = (~indexId, ~id, ()) => new({indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeQuerySuggestionsConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the index you want to describe query suggestions 
            settings for.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>Shows the current total count of query suggestions for an index.</p>
        <p>This count can change when you update your query suggestions settings, 
            if you filter out certain queries from suggestions using a block list, 
            and as the query log accumulates more queries for Amazon Kendra to learn from.</p>")
    @as("TotalSuggestionsCount")
    totalSuggestionsCount: option<integer_>,
    @ocaml.doc("<p>Shows the date-time query suggestions for an index was last cleared.</p>
        <p>After you clear suggestions, Amazon Kendra learns new suggestions based 
            on new queries added to the query log from the time you cleared suggestions. 
            Amazon Kendra only considers re-occurences of a query from the time you cleared 
            suggestions. </p>")
    @as("LastClearTime")
    lastClearTime: option<timestamp_>,
    @ocaml.doc("<p>Shows the date-time query suggestions for an index was last updated.</p>")
    @as("LastSuggestionsBuildTime")
    lastSuggestionsBuildTime: option<timestamp_>,
    @ocaml.doc("<p>Shows the minimum number of times a query must be searched in order for 
            the query to be eligible to suggest to your users.</p>")
    @as("MinimumQueryCount")
    minimumQueryCount: option<minimumQueryCount>,
    @ocaml.doc("<p>Shows the minimum number of unique users who must search a query in 
            order for the query to be eligible to suggest to your users.</p>")
    @as("MinimumNumberOfQueryingUsers")
    minimumNumberOfQueryingUsers: option<minimumNumberOfQueryingUsers>,
    @ocaml.doc("<p>Shows whether Amazon Kendra uses all queries or only uses queries that 
            include user information to generate query suggestions.</p>")
    @as("IncludeQueriesWithoutUserInformation")
    includeQueriesWithoutUserInformation: option<objectBoolean>,
    @ocaml.doc("<p>Shows how recent your queries are in your query log time 
            window (in days).</p>")
    @as("QueryLogLookBackWindowInDays")
    queryLogLookBackWindowInDays: option<integer_>,
    @ocaml.doc("<p>Shows whether the status of query suggestions settings is currently 
            Active or Updating.</p>
        <p>Active means the current settings apply and Updating means your 
            changed settings are in the process of applying.</p>")
    @as("Status")
    status: option<querySuggestionsStatus>,
    @ocaml.doc("<p>Shows whether query suggestions are currently in 
            <code>ENABLED</code> mode or <code>LEARN_ONLY</code> mode.</p>
        <p>By default, Amazon Kendra enables query suggestions.<code>LEARN_ONLY</code> 
            turns off query suggestions for your users. You can change the mode using 
            the <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_UpdateQuerySuggestionsConfig.html\">UpdateQuerySuggestionsConfig</a> 
            operation.</p>")
    @as("Mode")
    mode: option<mode>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "DescribeQuerySuggestionsConfigCommand"
  let make = (~indexId, ()) => new({indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteThesaurus = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the index associated with the thesaurus to delete.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of the thesaurus to delete.</p>") @as("Id") id: thesaurusId,
  }

  @module("@aws-sdk/client-kendra") @new external new: request => t = "DeleteThesaurusCommand"
  let make = (~indexId, ~id, ()) => new({indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteQuerySuggestionsBlockList = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the block list that needs to be deleted.</p>") @as("Id")
    id: querySuggestionsBlockListId,
    @ocaml.doc("<p>The identifier of the you want to delete a block list from.</p>") @as("IndexId")
    indexId: indexId,
  }

  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "DeleteQuerySuggestionsBlockListCommand"
  let make = (~id, ~indexId, ()) => new({id: id, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIndex = {
  type t
  type request = {@ocaml.doc("<p>The identifier of the index to delete.</p>") @as("Id") id: indexId}

  @module("@aws-sdk/client-kendra") @new external new: request => t = "DeleteIndexCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFaq = {
  type t
  type request = {
    @ocaml.doc("<p>The index to remove the FAQ from.</p>") @as("IndexId") indexId: indexId,
    @ocaml.doc("<p>The identifier of the FAQ to remove.</p>") @as("Id") id: faqId,
  }

  @module("@aws-sdk/client-kendra") @new external new: request => t = "DeleteFaqCommand"
  let make = (~indexId, ~id, ()) => new({indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the index associated with the data
      source.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The unique identifier of the data source to delete.</p>") @as("Id")
    id: dataSourceId,
  }

  @module("@aws-sdk/client-kendra") @new external new: request => t = "DeleteDataSourceCommand"
  let make = (~indexId, ~id, ()) => new({indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ClearQuerySuggestions = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the index you want to clear query suggestions from.</p>")
    @as("IndexId")
    indexId: indexId,
  }

  @module("@aws-sdk/client-kendra") @new external new: request => t = "ClearQuerySuggestionsCommand"
  let make = (~indexId, ()) => new({indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateThesaurus = {
  type t
  type request = {
    @as("SourceS3Path") sourceS3Path: option<s3Path>,
    @ocaml.doc("<p>The updated role ARN of the thesaurus.</p>") @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The updated description of the thesaurus.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The identifier of the index associated with the thesaurus to update.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The updated name of the thesaurus.</p>") @as("Name") name: option<thesaurusName>,
    @ocaml.doc("<p>The identifier of the thesaurus to update.</p>") @as("Id") id: thesaurusId,
  }

  @module("@aws-sdk/client-kendra") @new external new: request => t = "UpdateThesaurusCommand"
  let make = (~indexId, ~id, ~sourceS3Path=?, ~roleArn=?, ~description=?, ~name=?, ()) =>
    new({
      sourceS3Path: sourceS3Path,
      roleArn: roleArn,
      description: description,
      indexId: indexId,
      name: name,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateQuerySuggestionsBlockList = {
  type t
  type request = {
    @ocaml.doc("<p>The IAM (Identity and Access Management) role used to access the 
            block list text file in S3.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The S3 path where your block list text file sits in S3.</p>
        <p>If you update your block list and provide the same path to the 
            block list text file in S3, then Amazon Kendra reloads the file to refresh 
            the block list. Amazon Kendra does not automatically refresh your block list. 
            You need to call the <code>UpdateQuerySuggestionsBlockList</code> API 
            to refresh you block list.</p>
        <p>If you update your block list, then Amazon Kendra asynchronously refreshes 
            all query suggestions with the latest content in the S3 file. This 
            means changes might not take effect immediately.</p>")
    @as("SourceS3Path")
    sourceS3Path: option<s3Path>,
    @ocaml.doc("<p>The description for a block list.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of a block list.</p>") @as("Name")
    name: option<querySuggestionsBlockListName>,
    @ocaml.doc("<p>The unique identifier of a block list.</p>") @as("Id")
    id: querySuggestionsBlockListId,
    @ocaml.doc("<p>The identifier of the index for a block list.</p>") @as("IndexId")
    indexId: indexId,
  }

  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "UpdateQuerySuggestionsBlockListCommand"
  let make = (~id, ~indexId, ~roleArn=?, ~sourceS3Path=?, ~description=?, ~name=?, ()) =>
    new({
      roleArn: roleArn,
      sourceS3Path: sourceS3Path,
      description: description,
      name: name,
      id: id,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys to remove from the index, FAQ, or data source. If a
      tag key does not exist on the resource, it is ignored.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to
      remove the tag from.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-kendra") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeThesaurus = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the index associated with the thesaurus to describe.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of the thesaurus to describe.</p>") @as("Id") id: thesaurusId,
  }
  type response = {
    @ocaml.doc("<p>The number of synonym rules in the thesaurus file.</p>") @as("SynonymRuleCount")
    synonymRuleCount: option<long>,
    @ocaml.doc("<p>The number of unique terms in the thesaurus file. For example, the
        synonyms <code>a,b,c</code> and <code>a=>d</code>, the term
        count would be 4.
      </p>")
    @as("TermCount")
    termCount: option<long>,
    @ocaml.doc("<p>The size of the thesaurus file in bytes.</p>") @as("FileSizeBytes")
    fileSizeBytes: option<long>,
    @as("SourceS3Path") sourceS3Path: option<s3Path>,
    @ocaml.doc("<p>An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions 
         to access thesaurus file specified in <code>SourceS3Path</code>.
      </p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The Unix datetime that the thesaurus was last updated.</p>") @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The Unix datetime that the thesaurus was created.</p>") @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>When the <code>Status</code> field value is <code>FAILED</code>, the
         <code>ErrorMessage</code> field provides more information.
      </p>")
    @as("ErrorMessage")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>The current status of the thesaurus. When the value is <code>ACTIVE</code>, 
         queries are able to use the thesaurus. If the <code>Status</code> field value 
         is <code>FAILED</code>, the <code>ErrorMessage</code> field provides
         more information.
      </p>
         <p>If the status is <code>ACTIVE_BUT_UPDATE_FAILED</code>, it means
      that Amazon Kendra could not ingest the new thesaurus file. The old
      thesaurus file is still active.
      </p>")
    @as("Status")
    status: option<thesaurusStatus>,
    @ocaml.doc("<p>The thesaurus description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The thesaurus name.</p>") @as("Name") name: option<thesaurusName>,
    @ocaml.doc("<p>The identifier of the index associated with the thesaurus to describe.</p>")
    @as("IndexId")
    indexId: option<indexId>,
    @ocaml.doc("<p>The identifier of the thesaurus.</p>") @as("Id") id: option<thesaurusId>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "DescribeThesaurusCommand"
  let make = (~indexId, ~id, ()) => new({indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeQuerySuggestionsBlockList = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the block list.</p>") @as("Id")
    id: querySuggestionsBlockListId,
    @ocaml.doc("<p>The identifier of the index for the block list.</p>") @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>Shows the current IAM (Identity and Access Management) role used by 
            Amazon Kendra to access the block list text file in S3.</p>
        <p>The role needs S3 read permissions to your file in S3 and needs to 
            give STS (Security Token Service) assume role permissions to 
            Amazon Kendra.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>Shows the current size of the block list text file in S3.</p>")
    @as("FileSizeBytes")
    fileSizeBytes: option<long>,
    @ocaml.doc("<p>Shows the current number of valid, non-empty words or phrases in 
            the block list text file.</p>")
    @as("ItemCount")
    itemCount: option<integer_>,
    @ocaml.doc("<p>Shows the current S3 path to your block list text file in your S3 bucket.</p>
        <p>Each block word or phrase should be on a separate line in a text file.</p>
        <p>For information on the current quota limits for block lists, see 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/quotas.html\">Quotas 
                for Amazon Kendra</a>.</p>")
    @as("SourceS3Path")
    sourceS3Path: option<s3Path>,
    @ocaml.doc("<p>Shows the date-time a block list for query suggestions was last updated.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>Shows the date-time a block list for query suggestions was last created.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>Shows the error message with details when there are issues in 
            processing the block list.</p>")
    @as("ErrorMessage")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>Shows whether the current status of the block list is 
            <code>ACTIVE</code> or <code>INACTIVE</code>.</p>")
    @as("Status")
    status: option<querySuggestionsBlockListStatus>,
    @ocaml.doc("<p>Shows the description for the block list.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>Shows the name of the block list.</p>") @as("Name")
    name: option<querySuggestionsBlockListName>,
    @ocaml.doc("<p>Shows the unique identifier of the block list.</p>") @as("Id")
    id: option<querySuggestionsBlockListId>,
    @ocaml.doc("<p>Shows the identifier of the index for the block list.</p>") @as("IndexId")
    indexId: option<indexId>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "DescribeQuerySuggestionsBlockListCommand"
  let make = (~id, ~indexId, ()) => new({id: id, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFaq = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the index that contains the FAQ.</p>") @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The unique identifier of the FAQ.</p>") @as("Id") id: faqId,
  }
  type response = {
    @ocaml.doc("<p>The file format used by the input files for the FAQ.</p>") @as("FileFormat")
    fileFormat: option<faqFileFormat>,
    @ocaml.doc("<p>If the <code>Status</code> field is <code>FAILED</code>, the <code>ErrorMessage</code>
            field contains the reason why the FAQ failed.</p>")
    @as("ErrorMessage")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role that provides access to the S3 bucket
            containing the input files for the FAQ.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The status of the FAQ. It is ready to use when the status is
            <code>ACTIVE</code>.</p>")
    @as("Status")
    status: option<faqStatus>,
    @as("S3Path") s3Path: option<s3Path>,
    @ocaml.doc("<p>The date and time that the FAQ was last updated.</p>") @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The date and time that the FAQ was created.</p>") @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The description of the FAQ that you provided when it was created.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name that you gave the FAQ when it was created.</p>") @as("Name")
    name: option<faqName>,
    @ocaml.doc("<p>The identifier of the index that contains the FAQ.</p>") @as("IndexId")
    indexId: option<indexId>,
    @ocaml.doc("<p>The identifier of the FAQ.</p>") @as("Id") id: option<faqId>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "DescribeFaqCommand"
  let make = (~indexId, ~id, ()) => new({indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys to add to the index, FAQ, or data source. If a tag
      already exists, the existing value is replaced with the new value.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to
      tag.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-kendra") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SubmitFeedback = {
  type t
  type request = {
    @ocaml.doc("<p>Provides Amazon Kendra with relevant or not relevant feedback for
            whether a particular item was relevant to the search.</p>")
    @as("RelevanceFeedbackItems")
    relevanceFeedbackItems: option<relevanceFeedbackList>,
    @ocaml.doc("<p>Tells Amazon Kendra that a particular search result link was chosen
            by the user. </p>")
    @as("ClickFeedbackItems")
    clickFeedbackItems: option<clickFeedbackList>,
    @ocaml.doc("<p>The identifier of the specific query for which you are submitting
            feedback. The query ID is returned in the response to the
                <code>Query</code> operation.</p>")
    @as("QueryId")
    queryId: queryId,
    @ocaml.doc("<p>The identifier of the index that was queried.</p>") @as("IndexId")
    indexId: indexId,
  }

  @module("@aws-sdk/client-kendra") @new external new: request => t = "SubmitFeedbackCommand"
  let make = (~queryId, ~indexId, ~relevanceFeedbackItems=?, ~clickFeedbackItems=?, ()) =>
    new({
      relevanceFeedbackItems: relevanceFeedbackItems,
      clickFeedbackItems: clickFeedbackItems,
      queryId: queryId,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListThesauri = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of thesauri to return.</p>") @as("MaxResults")
    maxResults: option<maxResultsIntegerForListThesauriRequest>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve),
         Amazon Kendra returns a pagination token in the response. You can use this pagination token to
         retrieve the next set of thesauri (<code>ThesaurusSummaryItems</code>). 
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the index associated with the thesaurus to list.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>An array of summary information for one or more thesauruses.</p>")
    @as("ThesaurusSummaryItems")
    thesaurusSummaryItems: option<thesaurusSummaryItems>,
    @ocaml.doc("<p>If the response is truncated, Amazon Kendra returns this 
         token that you can use in the subsequent request to 
         retrieve the next set of thesauri.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "ListThesauriCommand"
  let make = (~indexId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to
      get a list of tags for.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>A list of tags associated with the index, FAQ, or data source.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQuerySuggestionsBlockLists = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of block lists to return.</p>") @as("MaxResults")
    maxResults: option<maxResultsIntegerForListQuerySuggestionsBlockLists>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve), 
            Amazon Kendra returns a pagination token in the response. You can use this pagination 
            token to retrieve the next set of block lists (<code>BlockListSummaryItems</code>).</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the index for a list of all block lists that exist for 
            that index.</p>
        <p>For information on the current quota limits for block lists, see 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/quotas.html\">Quotas 
                for Amazon Kendra</a>.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Kendra returns this token that you can use 
            in the subsequent request to retrieve the next set of block lists.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary items for a block list.</p>
        <p>This includes summary items on the block list ID, block list name, when the 
            block list was created, when the block list was last updated, and the count 
            of block words/phrases in the block list.</p>
        <p>For information on the current quota limits for block lists, see 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/quotas.html\">Quotas 
                for Amazon Kendra</a>.</p>")
    @as("BlockListSummaryItems")
    blockListSummaryItems: option<querySuggestionsBlockListSummaryItems>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "ListQuerySuggestionsBlockListsCommand"
  let make = (~indexId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIndices = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of data sources to return.</p>") @as("MaxResults")
    maxResults: option<maxResultsIntegerForListIndicesRequest>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to
      retrieve), Amazon Kendra returns a pagination token in the response. You
      can use this pagination token to retrieve the next set of indexes
        (<code>DataSourceSummaryItems</code>). </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Kendra returns this token that you
      can use in the subsequent request to retrieve the next set of
      indexes.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of summary information for one or more indexes.</p>")
    @as("IndexConfigurationSummaryItems")
    indexConfigurationSummaryItems: option<indexConfigurationSummaryList>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "ListIndicesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFaqs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of FAQs to return in the response. If there are fewer results in
            the list, this response contains only the actual results.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsIntegerForListFaqsRequest>,
    @ocaml.doc("<p>If the result of the previous request to <code>ListFaqs</code> was truncated, include
            the <code>NextToken</code> to fetch the next set of FAQs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The index that contains the FAQ lists.</p>") @as("IndexId") indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>information about the FAQs associated with the specified index.</p>")
    @as("FaqSummaryItems")
    faqSummaryItems: option<faqSummaryItems>,
    @ocaml.doc("<p>The <code>ListFaqs</code> operation returns a page of FAQs at a time. The maximum size
            of the page is set by the <code>MaxResults</code> parameter. If there are more jobs in
            the list than the page size, Amazon Kendra returns the <code>NextPage</code> token.
            Include the token in the next request to the <code>ListFaqs</code> operation to return
            the next page of FAQs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "ListFaqsCommand"
  let make = (~indexId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataSources = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of data sources to return.</p>") @as("MaxResults")
    maxResults: option<maxResultsIntegerForListDataSourcesRequest>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to
      retrieve), Amazon Kendra returns a pagination token in the response. You
      can use this pagination token to retrieve the next set of data sources
        (<code>DataSourceSummaryItems</code>). </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the index that contains the data source.</p>") @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Kendra returns this token that you
      can use in the subsequent request to retrieve the next set of data
      sources. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of summary information for one or more data sources.</p>")
    @as("SummaryItems")
    summaryItems: option<dataSourceSummaryList>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "ListDataSourcesCommand"
  let make = (~indexId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateThesaurus = {
  type t
  type request = {
    @ocaml.doc("<p>A token that you provide to identify the request to create a 
         thesaurus. Multiple calls to the <code>CreateThesaurus</code> operation 
         with the same client token will create only one index.
      </p>")
    @as("ClientToken")
    clientToken: option<clientTokenName>,
    @ocaml.doc("<p>The thesaurus file Amazon S3 source path.
      </p>")
    @as("SourceS3Path")
    sourceS3Path: s3Path,
    @ocaml.doc("<p>A list of key-value pairs that identify the thesaurus. You can use 
         the tags to identify and organize your resources and to control 
         access to resources.
      </p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions 
         to access thesaurus file specified in <code>SourceS3Path</code>.
      </p>")
    @as("RoleArn")
    roleArn: roleArn,
    @ocaml.doc("<p>The description for the new thesaurus.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name for the new thesaurus.</p>") @as("Name") name: thesaurusName,
    @ocaml.doc("<p>The unique identifier of the index for the new thesaurus.
      </p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the thesaurus. 
      </p>")
    @as("Id")
    id: option<thesaurusId>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "CreateThesaurusCommand"
  let make = (
    ~sourceS3Path,
    ~roleArn,
    ~name,
    ~indexId,
    ~clientToken=?,
    ~tags=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      sourceS3Path: sourceS3Path,
      tags: tags,
      roleArn: roleArn,
      description: description,
      name: name,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateQuerySuggestionsBlockList = {
  type t
  type request = {
    @ocaml.doc("<p>A tag that you can assign to a block list that categorizes 
            the block list.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The IAM (Identity and Access Management) role used by Amazon Kendra to 
            access the block list text file in your S3 bucket.</p>
        <p>You need permissions to the role ARN (Amazon Resource Name). 
            The role needs S3 read permissions to your file in S3 and needs 
            to give STS (Security Token Service) assume role permissions 
            to Amazon Kendra.</p>")
    @as("RoleArn")
    roleArn: roleArn,
    @ocaml.doc("<p>A token that you provide to identify the request to create a 
            query suggestions block list.</p>")
    @as("ClientToken")
    clientToken: option<clientTokenName>,
    @ocaml.doc("<p>The S3 path to your block list text file in your S3 bucket.</p>
        <p>Each block word or phrase should be on a separate line in a text file.</p> 
            <p>For information on the current quota limits for block lists, see 
                <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/quotas.html\">Quotas 
                    for Amazon Kendra</a>.</p>")
    @as("SourceS3Path")
    sourceS3Path: s3Path,
    @ocaml.doc("<p>A user-friendly description for the block list.</p>
        <p>For example, the description \"List of all offensive words that can 
            appear in user queries and need to be blocked from suggestions.\"</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A user friendly name for the block list.</p>
        <p>For example, the block list named 'offensive-words' includes all 
            offensive words that could appear in user queries and need to be 
            blocked from suggestions.</p>")
    @as("Name")
    name: querySuggestionsBlockListName,
    @ocaml.doc(
      "<p>The identifier of the index you want to create a query suggestions block list for.</p>"
    )
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the created block list.</p>") @as("Id")
    id: option<querySuggestionsBlockListId>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "CreateQuerySuggestionsBlockListCommand"
  let make = (
    ~roleArn,
    ~sourceS3Path,
    ~name,
    ~indexId,
    ~tags=?,
    ~clientToken=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      roleArn: roleArn,
      clientToken: clientToken,
      sourceS3Path: sourceS3Path,
      description: description,
      name: name,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFaq = {
  type t
  type request = {
    @ocaml.doc("<p>A token that you provide to identify the request to create a FAQ. Multiple calls to
            the <code>CreateFaqRequest</code> operation with the same client token will create only
            one FAQ. </p>")
    @as("ClientToken")
    clientToken: option<clientTokenName>,
    @ocaml.doc("<p>The format of the input file. You can choose between a basic CSV format, a CSV format
            that includes customs attributes in a header, and a JSON format that includes custom
            attributes.</p>
        <p>The format must match the format of the file stored in the S3 bucket identified in the
                <code>S3Path</code> parameter.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html\">Adding questions and
            answers</a>.</p>")
    @as("FileFormat")
    fileFormat: option<faqFileFormat>,
    @ocaml.doc("<p>A list of key-value pairs that identify the FAQ. You can use the tags to identify and
            organize your resources and to control access to resources.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that
            contains the FAQs. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html\">IAM Roles for Amazon Kendra</a>.</p>")
    @as("RoleArn")
    roleArn: roleArn,
    @ocaml.doc("<p>The S3 location of the FAQ input data.</p>") @as("S3Path") s3Path: s3Path,
    @ocaml.doc("<p>A description of the FAQ.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name that should be associated with the FAQ.</p>") @as("Name") name: faqName,
    @ocaml.doc("<p>The identifier of the index that contains the FAQ.</p>") @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the FAQ.</p>") @as("Id") id: option<faqId>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "CreateFaqCommand"
  let make = (
    ~roleArn,
    ~s3Path,
    ~name,
    ~indexId,
    ~clientToken=?,
    ~fileFormat=?,
    ~tags=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      fileFormat: fileFormat,
      tags: tags,
      roleArn: roleArn,
      s3Path: s3Path,
      description: description,
      name: name,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteDocument = {
  type t
  type request = {
    @as("DataSourceSyncJobMetricTarget")
    dataSourceSyncJobMetricTarget: option<dataSourceSyncJobMetricTarget>,
    @ocaml.doc("<p>One or more identifiers for documents to delete from the index.</p>")
    @as("DocumentIdList")
    documentIdList: documentIdList,
    @ocaml.doc("<p>The identifier of the index that contains the documents to
      delete.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>A list of documents that could not be removed from the index. Each
      entry contains an error message that indicates why the document couldn't
      be removed from the index.</p>")
    @as("FailedDocuments")
    failedDocuments: option<batchDeleteDocumentResponseFailedDocuments>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "BatchDeleteDocumentCommand"
  let make = (~documentIdList, ~indexId, ~dataSourceSyncJobMetricTarget=?, ()) =>
    new({
      dataSourceSyncJobMetricTarget: dataSourceSyncJobMetricTarget,
      documentIdList: documentIdList,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataSourceSyncJobs = {
  type t
  type request = {
    @ocaml.doc("<p>When specified, only returns synchronization jobs with the
        <code>Status</code> field equal to the specified status.</p>")
    @as("StatusFilter")
    statusFilter: option<dataSourceSyncJobStatus>,
    @ocaml.doc("<p>When specified, the synchronization jobs returned in the list are
      limited to jobs between the specified dates. </p>")
    @as("StartTimeFilter")
    startTimeFilter: option<timeRange>,
    @ocaml.doc("<p>The maximum number of synchronization jobs to return in the response.
      If there are fewer results in the list, this response contains only the
      actual results.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsIntegerForListDataSourceSyncJobsRequest>,
    @ocaml.doc("<p>If the result of the previous request to
        <code>GetDataSourceSyncJobHistory</code> was truncated, include the
        <code>NextToken</code> to fetch the next set of jobs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the index that contains the data source.</p>") @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of the data source.</p>") @as("Id") id: dataSourceId,
  }
  type response = {
    @ocaml.doc("<p>The <code>GetDataSourceSyncJobHistory</code> operation returns a page
      of vocabularies at a time. The maximum size of the page is set by the
        <code>MaxResults</code> parameter. If there are more jobs in the list
      than the page size, Amazon Kendra returns the NextPage token. Include the
      token in the next request to the <code>GetDataSourceSyncJobHistory</code>
      operation to return in the next page of jobs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A history of synchronization jobs for the data source.</p>") @as("History")
    history: option<dataSourceSyncJobHistoryList>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "ListDataSourceSyncJobsCommand"
  let make = (
    ~indexId,
    ~id,
    ~statusFilter=?,
    ~startTimeFilter=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      statusFilter: statusFilter,
      startTimeFilter: startTimeFilter,
      maxResults: maxResults,
      nextToken: nextToken,
      indexId: indexId,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIndex = {
  type t
  type request = {
    @ocaml.doc("<p>The user context policy.</p>
         <dl>
            <dt>ATTRIBUTE_FILTER</dt>
            <dd>
               <p>All indexed content is searchable and displayable
                  for all users. If there is an access control list, it
                  is ignored. You can filter on user and group attributes.
               </p>
            </dd>
            <dt>USER_TOKEN</dt>
            <dd>
               <p>Enables SSO and token-based user access control.
               All documents with no access control and all documents
               accessible to the user will be searchable and
               displayable.
               </p>
            </dd>
         </dl>")
    @as("UserContextPolicy")
    userContextPolicy: option<userContextPolicy>,
    @ocaml.doc("<p>The user token configuration.</p>") @as("UserTokenConfigurations")
    userTokenConfigurations: option<userTokenConfigurationList>,
    @ocaml.doc("<p>A list of key-value pairs that identify the index. You can use the
      tags to identify and organize your resources and to control access to
      resources.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A token that you provide to identify the request to create an index.
      Multiple calls to the <code>CreateIndex</code> operation with the same
      client token will create only one index.</p>")
    @as("ClientToken")
    clientToken: option<clientTokenName>,
    @ocaml.doc("<p>A description for the index.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The identifier of the AWS KMS customer managed key (CMK) to use to
      encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
      asymmetric CMKs.</p>")
    @as("ServerSideEncryptionConfiguration")
    serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
    @ocaml.doc("<p>An AWS Identity and Access Management (IAM) role that gives
      Amazon Kendra permissions to access your Amazon CloudWatch logs and
      metrics. This is also the role used when you use the
        <code>BatchPutDocument</code> operation to index documents from an
      Amazon S3 bucket.</p>")
    @as("RoleArn")
    roleArn: roleArn,
    @ocaml.doc("<p>The Amazon Kendra edition to use for the index. Choose
        <code>DEVELOPER_EDITION</code> for indexes intended for development,
      testing, or proof of concept. Use <code>ENTERPRISE_EDITION</code> for your
      production databases. Once you set the edition for an index, it can't be
      changed. </p>
         <p>The <code>Edition</code> parameter is optional. If you don't supply a
      value, the default is <code>ENTERPRISE_EDITION</code>.</p>")
    @as("Edition")
    edition: option<indexEdition>,
    @ocaml.doc("<p>The name for the new index.</p>") @as("Name") name: indexName,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the index. Use this identifier when you query
      an index, set up a data source, or index a document.</p>")
    @as("Id")
    id: option<indexId>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "CreateIndexCommand"
  let make = (
    ~roleArn,
    ~name,
    ~userContextPolicy=?,
    ~userTokenConfigurations=?,
    ~tags=?,
    ~clientToken=?,
    ~description=?,
    ~serverSideEncryptionConfiguration=?,
    ~edition=?,
    (),
  ) =>
    new({
      userContextPolicy: userContextPolicy,
      userTokenConfigurations: userTokenConfigurations,
      tags: tags,
      clientToken: clientToken,
      description: description,
      serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
      roleArn: roleArn,
      edition: edition,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIndex = {
  type t
  type request = {
    @ocaml.doc("<p>The user user token context policy.</p>") @as("UserContextPolicy")
    userContextPolicy: option<userContextPolicy>,
    @ocaml.doc("<p>The user token configuration.</p>") @as("UserTokenConfigurations")
    userTokenConfigurations: option<userTokenConfigurationList>,
    @ocaml.doc("<p>Sets the number of additional storage and query capacity units that
      should be used by the index. You can change the capacity of the index up
      to 5 times per day.</p>
         <p>If you are using extra storage units, you can't reduce the storage
      capacity below that required to meet the storage needs for your
      index.</p>")
    @as("CapacityUnits")
    capacityUnits: option<capacityUnitsConfiguration>,
    @ocaml.doc("<p>The document metadata to update. </p>")
    @as("DocumentMetadataConfigurationUpdates")
    documentMetadataConfigurationUpdates: option<documentMetadataConfigurationList>,
    @ocaml.doc("<p>A new description for the index.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A new IAM role that gives Amazon Kendra permission to access your
      Amazon CloudWatch logs.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The name of the index to update.</p>") @as("Name") name: option<indexName>,
    @ocaml.doc("<p>The identifier of the index to update.</p>") @as("Id") id: indexId,
  }

  @module("@aws-sdk/client-kendra") @new external new: request => t = "UpdateIndexCommand"
  let make = (
    ~id,
    ~userContextPolicy=?,
    ~userTokenConfigurations=?,
    ~capacityUnits=?,
    ~documentMetadataConfigurationUpdates=?,
    ~description=?,
    ~roleArn=?,
    ~name=?,
    (),
  ) =>
    new({
      userContextPolicy: userContextPolicy,
      userTokenConfigurations: userTokenConfigurations,
      capacityUnits: capacityUnits,
      documentMetadataConfigurationUpdates: documentMetadataConfigurationUpdates,
      description: description,
      roleArn: roleArn,
      name: name,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeIndex = {
  type t
  type request = {@ocaml.doc("<p>The name of the index to describe.</p>") @as("Id") id: indexId}
  type response = {
    @ocaml.doc("<p>The user context policy for the Amazon Kendra index.</p>")
    @as("UserContextPolicy")
    userContextPolicy: option<userContextPolicy>,
    @ocaml.doc("<p>The user token configuration for the Amazon Kendra index.</p>")
    @as("UserTokenConfigurations")
    userTokenConfigurations: option<userTokenConfigurationList>,
    @ocaml.doc("<p>For Enterprise edition indexes, you can choose to use additional
      capacity to meet the needs of your application. This contains the capacity
      units used for the index. A 0 for the query capacity or the storage
      capacity indicates that the index is using the default capacity for the
      index.</p>")
    @as("CapacityUnits")
    capacityUnits: option<capacityUnitsConfiguration>,
    @ocaml.doc("<p>When th e<code>Status</code> field value is <code>FAILED</code>, the
        <code>ErrorMessage</code> field contains a message that explains
      why.</p>")
    @as("ErrorMessage")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>Provides information about the number of FAQ questions and answers and
      the number of text documents indexed.</p>")
    @as("IndexStatistics")
    indexStatistics: option<indexStatistics>,
    @ocaml.doc("<p>Configuration settings for any metadata applied to the documents in
      the index.</p>")
    @as("DocumentMetadataConfigurations")
    documentMetadataConfigurations: option<documentMetadataConfigurationList>,
    @ocaml.doc("<p>The Unix datetime that the index was last updated.</p>") @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The Unix datetime that the index was created.</p>") @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>The description of the index.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The current status of the index. When the value is
      <code>ACTIVE</code>, the index is ready for use. If the
        <code>Status</code> field value is <code>FAILED</code>, the
        <code>ErrorMessage</code> field contains a message that explains
      why.</p>")
    @as("Status")
    status: option<indexStatus>,
    @ocaml.doc("<p>The identifier of the AWS KMS customer master key (CMK) used to
      encrypt your data. Amazon Kendra doesn't support asymmetric CMKs.</p>")
    @as("ServerSideEncryptionConfiguration")
    serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that gives Amazon Kendra
      permission to write to your Amazon Cloudwatch logs.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The Amazon Kendra edition used for the index. You decide the edition
      when you create the index.</p>")
    @as("Edition")
    edition: option<indexEdition>,
    @ocaml.doc("<p>The name of the index.</p>") @as("Id") id: option<indexId>,
    @ocaml.doc("<p>The name of the index.</p>") @as("Name") name: option<indexName>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "DescribeIndexCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQuerySuggestions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of query suggestions you want to show 
            to your users.</p>")
    @as("MaxSuggestionsCount")
    maxSuggestionsCount: option<integer_>,
    @ocaml.doc("<p>The text of a user's query to generate query suggestions.</p>
        <p>A query is suggested if the query prefix matches 
            what a user starts to type as their query.</p>
        <p>Amazon Kendra does not show any suggestions if a user 
            types fewer than two characters or more than 60 characters. 
            A query must also have at least one search result and contain 
            at least one word of more than four characters.</p>")
    @as("QueryText")
    queryText: suggestionQueryText,
    @ocaml.doc("<p>The identifier of the index you want to get query suggestions from.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>A list of query suggestions for an index.</p>") @as("Suggestions")
    suggestions: option<suggestionList>,
    @ocaml.doc("<p>The unique identifier for a list of query suggestions for an index.</p>")
    @as("QuerySuggestionsId")
    querySuggestionsId: option<querySuggestionsId>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "GetQuerySuggestionsCommand"
  let make = (~queryText, ~indexId, ~maxSuggestionsCount=?, ()) =>
    new({maxSuggestionsCount: maxSuggestionsCount, queryText: queryText, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchPutDocument = {
  type t
  type request = {
    @ocaml.doc("<p>One or more documents to add to the index.</p>
         <p>Documents can include custom attributes. For example, 
      'DataSourceId' and 'DataSourceSyncJobId' are custom 
      attributes that provide information on the synchronization 
      of documents running on a data source. Note, 
      'DataSourceSyncJobId' could be an optional custom attribute 
      as Amazon Kendra will use the ID of a running sync job.</p>
         <p>Documents have the following file size limits.</p>
         <ul>
            <li>
               <p>5 MB total size for inline documents</p>
            </li>
            <li>
               <p>50 MB total size for files from an S3 bucket</p>
            </li>
            <li>
               <p>5 MB extracted text for any file</p>
            </li>
         </ul>
         <p>For more information about file size and transaction per second
      quotas, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/quotas.html\">Quotas</a>.</p>")
    @as("Documents")
    documents: documentList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a role that is allowed to run the
        <code>BatchPutDocument</code> operation. For more information, see
        <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html\">IAM
        Roles for Amazon Kendra</a>.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The identifier of the index to add the documents to. You need to
      create the index first using the <code>CreateIndex</code>
      operation.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>A list of documents that were not added to the index because the
      document failed a validation check. Each document contains an error
      message that indicates why the document couldn't be added to the
      index.</p>
         <p>If there was an error adding a document to an index the error is
      reported in your AWS CloudWatch log. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/cloudwatch-logs.html\">Monitoring
        Amazon Kendra with Amazon CloudWatch Logs</a>
         </p>")
    @as("FailedDocuments")
    failedDocuments: option<batchPutDocumentResponseFailedDocuments>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "BatchPutDocumentCommand"
  let make = (~documents, ~indexId, ~roleArn=?, ()) =>
    new({documents: documents, roleArn: roleArn, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the new role to use when the data
      source is accessing resources on your behalf.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The new update schedule for the data source.</p>") @as("Schedule")
    schedule: option<scanSchedule>,
    @ocaml.doc("<p>The new description for the data source.</p>") @as("Description")
    description: option<description>,
    @as("Configuration") configuration: option<dataSourceConfiguration>,
    @ocaml.doc("<p>The identifier of the index that contains the data source to
      update.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The name of the data source to update. The name of the data source
      can't be updated. To rename a data source you must delete the data source
      and re-create it.</p>")
    @as("Name")
    name: option<dataSourceName>,
    @ocaml.doc("<p>The unique identifier of the data source to update.</p>") @as("Id")
    id: dataSourceId,
  }

  @module("@aws-sdk/client-kendra") @new external new: request => t = "UpdateDataSourceCommand"
  let make = (
    ~indexId,
    ~id,
    ~roleArn=?,
    ~schedule=?,
    ~description=?,
    ~configuration=?,
    ~name=?,
    (),
  ) =>
    new({
      roleArn: roleArn,
      schedule: schedule,
      description: description,
      configuration: configuration,
      indexId: indexId,
      name: name,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the index that contains the data source.</p>") @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The unique identifier of the data source to describe.</p>") @as("Id")
    id: dataSourceId,
  }
  type response = {
    @ocaml.doc("<p>When the <code>Status</code> field value is <code>FAILED</code>, the
        <code>ErrorMessage</code> field contains a description of the error that
      caused the data source to fail.</p>")
    @as("ErrorMessage")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role that enables the data
      source to access its resources.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The schedule that Amazon Kendra will update the data source.</p>")
    @as("Schedule")
    schedule: option<scanSchedule>,
    @ocaml.doc("<p>The current status of the data source. When the status is
        <code>ACTIVE</code> the data source is ready to use. When the status is
        <code>FAILED</code>, the <code>ErrorMessage</code> field contains the
      reason that the data source failed.</p>")
    @as("Status")
    status: option<dataSourceStatus>,
    @ocaml.doc("<p>The description of the data source.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The Unix timestamp of when the data source was last updated.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>The Unix timestamp of when the data source was created.</p>") @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>Information that describes where the data source is located and how
      the data source is configured. The specific information in the description
      depends on the data source provider.</p>")
    @as("Configuration")
    configuration: option<dataSourceConfiguration>,
    @ocaml.doc("<p>The type of the data source.</p>") @as("Type") type_: option<dataSourceType>,
    @ocaml.doc("<p>The name that you gave the data source when it was created.</p>") @as("Name")
    name: option<dataSourceName>,
    @ocaml.doc("<p>The identifier of the index that contains the data source.</p>") @as("IndexId")
    indexId: option<indexId>,
    @ocaml.doc("<p>The identifier of the data source.</p>") @as("Id") id: option<dataSourceId>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "DescribeDataSourceCommand"
  let make = (~indexId, ~id, ()) => new({indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>A token that you provide to identify the request to create a data
      source. Multiple calls to the <code>CreateDataSource</code> operation with
      the same client token will create only one data source.</p>")
    @as("ClientToken")
    clientToken: option<clientTokenName>,
    @ocaml.doc("<p>A list of key-value pairs that identify the data source. You can use
      the tags to identify and organize your resources and to control access to
      resources.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a role with permission to access the
      data source. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html\">IAM Roles for
        Amazon Kendra</a>.</p>
         <p>You can't specify the <code>RoleArn</code> parameter when the
        <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
      you receive a <code>ValidationException</code> exception.</p>
         <p>The <code>RoleArn</code> parameter is required for all other data
      sources.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>Sets the frequency that Amazon Kendra will check the documents in your
      repository and update the index. If you don't set a schedule Amazon Kendra
      will not periodically update the index. You can call the
        <code>StartDataSourceSyncJob</code> operation to update the
      index.</p>
         <p>You can't specify the <code>Schedule</code> parameter when the
        <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
      you receive a <code>ValidationException</code> exception.</p>")
    @as("Schedule")
    schedule: option<scanSchedule>,
    @ocaml.doc("<p>A description for the data source.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The connector configuration information that is required to access the
      repository.</p>
         <p>You can't specify the <code>Configuration</code> parameter when the
        <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
      you receive a <code>ValidationException</code> exception.</p>
         <p>The <code>Configuration</code> parameter is required for all other
      data sources.</p>")
    @as("Configuration")
    configuration: option<dataSourceConfiguration>,
    @ocaml.doc("<p>The type of repository that contains the data source.</p>") @as("Type")
    type_: dataSourceType,
    @ocaml.doc("<p>The identifier of the index that should be associated with this data
      source.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>A unique name for the data source. A data source name can't be changed
      without deleting and recreating the data source.</p>")
    @as("Name")
    name: dataSourceName,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the data source.</p>") @as("Id") id: dataSourceId,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "CreateDataSourceCommand"
  let make = (
    ~type_,
    ~indexId,
    ~name,
    ~clientToken=?,
    ~tags=?,
    ~roleArn=?,
    ~schedule=?,
    ~description=?,
    ~configuration=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      tags: tags,
      roleArn: roleArn,
      schedule: schedule,
      description: description,
      configuration: configuration,
      type_: type_,
      indexId: indexId,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Query = {
  type t
  type request = {
    @ocaml.doc("<p>Provides an identifier for a specific user. The
            <code>VisitorId</code> should be a unique identifier, such as a
         GUID. Don't use personally identifiable information, such as the user's
         email address, as the <code>VisitorId</code>.</p>")
    @as("VisitorId")
    visitorId: option<visitorId>,
    @ocaml.doc("<p>The user context token.</p>") @as("UserContext")
    userContext: option<userContext>,
    @ocaml.doc("<p>Provides information that determines how the results of the query
         are sorted. You can set the field that Amazon Kendra should sort the results
         on, and specify whether the results should be sorted in ascending or
         descending order. In the case of ties in sorting the results, the
         results are sorted by relevance.</p>
         <p>If you don't provide sorting configuration, the results are sorted
         by the relevance that Amazon Kendra determines for the result.</p>")
    @as("SortingConfiguration")
    sortingConfiguration: option<sortingConfiguration>,
    @ocaml.doc("<p>Sets the number of results that are returned in each page of
         results. The default page size is 10. The maximum number of results
         returned is 100. If you ask for more than 100 results, only 100 are
         returned.</p>")
    @as("PageSize")
    pageSize: option<integer_>,
    @ocaml.doc("<p>Query results are returned in pages the size of the
            <code>PageSize</code> parameter. By default, Amazon Kendra returns
         the first page of results. Use this parameter to get result pages after
         the first one.</p>")
    @as("PageNumber")
    pageNumber: option<integer_>,
    @ocaml.doc("<p>Overrides relevance tuning configurations of fields or attributes set at the index level.</p>
         <p>If you use this API to override the relevance tuning configured at the index 
         level, but there is no relevance tuning configured at the index level, then Amazon Kendra does not apply any relevance tuning.</p>
         <p>If there is relevance tuning configured at the index level, but you do not use this API 
         to override any relevance tuning in the index, then Amazon Kendra uses the relevance tuning that is configured at the index level.</p>
         <p>If there is relevance tuning configured for fields at the index level, 
         but you use this API to override only some of these fields, then for the fields you did not override,
         the importance is set to 1.</p>")
    @as("DocumentRelevanceOverrideConfigurations")
    documentRelevanceOverrideConfigurations: option<documentRelevanceOverrideConfigurationList>,
    @ocaml.doc("<p>Sets the type of query. Only results for the specified query type
         are returned.</p>")
    @as("QueryResultTypeFilter")
    queryResultTypeFilter: option<queryResultType>,
    @ocaml.doc("<p>An array of document attributes to include in the response. No other
         document attributes are included in the response. By default all
         document attributes are included in the response. </p>")
    @as("RequestedDocumentAttributes")
    requestedDocumentAttributes: option<documentAttributeKeyList>,
    @ocaml.doc("<p>An array of documents attributes. Amazon Kendra returns a count for
         each attribute key specified. You can use this information to help
         narrow the search for your user.</p>")
    @as("Facets")
    facets: option<facetList>,
    @ocaml.doc("<p>Enables filtered searches based on document attributes. You can only
         provide one attribute filter; however, the <code>AndAllFilters</code>,
            <code>NotFilter</code>, and <code>OrAllFilters</code> parameters
         contain a list of other filters.</p>
         <p>The <code>AttributeFilter</code> parameter enables you to create a
         set of filtering rules that a document must satisfy to be included in
         the query results.</p>")
    @as("AttributeFilter")
    attributeFilter: option<attributeFilter>,
    @ocaml.doc("<p>The text to search for.</p>") @as("QueryText") queryText: queryText,
    @ocaml.doc("<p>The unique identifier of the index to search. The identifier is
         returned in the response from the <code>CreateIndex</code>
         operation.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>The total number of items found by the search; however, you can only
         retrieve up to 100 items. For example, if the search found 192 items,
         you can only retrieve the first 100 of the items.</p>")
    @as("TotalNumberOfResults")
    totalNumberOfResults: option<integer_>,
    @ocaml.doc("<p>Contains the facet results. A <code>FacetResult</code> contains the
         counts for each attribute key that was specified in the
            <code>Facets</code> input parameter.</p>")
    @as("FacetResults")
    facetResults: option<facetResultList>,
    @ocaml.doc("<p>The results of the search.</p>") @as("ResultItems")
    resultItems: option<queryResultItemList>,
    @ocaml.doc("<p>The unique identifier for the search. You use <code>QueryId</code>
         to identify the search when using the feedback API.</p>")
    @as("QueryId")
    queryId: option<queryId>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "QueryCommand"
  let make = (
    ~queryText,
    ~indexId,
    ~visitorId=?,
    ~userContext=?,
    ~sortingConfiguration=?,
    ~pageSize=?,
    ~pageNumber=?,
    ~documentRelevanceOverrideConfigurations=?,
    ~queryResultTypeFilter=?,
    ~requestedDocumentAttributes=?,
    ~facets=?,
    ~attributeFilter=?,
    (),
  ) =>
    new({
      visitorId: visitorId,
      userContext: userContext,
      sortingConfiguration: sortingConfiguration,
      pageSize: pageSize,
      pageNumber: pageNumber,
      documentRelevanceOverrideConfigurations: documentRelevanceOverrideConfigurations,
      queryResultTypeFilter: queryResultTypeFilter,
      requestedDocumentAttributes: requestedDocumentAttributes,
      facets: facets,
      attributeFilter: attributeFilter,
      queryText: queryText,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
