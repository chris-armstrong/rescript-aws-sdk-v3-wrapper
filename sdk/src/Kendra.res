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
type webCrawlerMode = [
  | @as("EVERYTHING") #EVERYTHING
  | @as("SUBDOMAINS") #SUBDOMAINS
  | @as("HOST_ONLY") #HOST_ONLY
]
type warningMessage = string
type warningCode = [@as("QUERY_LANGUAGE_INVALID_SYNTAX") #QUERY_LANGUAGE_INVALID_SYNTAX]
type vpcSecurityGroupId = string
type visitorId = string
type valueImportanceMapKey = string
type userNameAttributeField = string
type userId = string
type userGroupResolutionMode = [@as("NONE") #NONE | @as("AWS_SSO") #AWS_SSO]
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
type teamId = string
type tagValue = string
type tagKey = string
type tableName = string
type suggestionQueryText = string
type suggestedQueryText = string
type subnetId = string
type string_ = string
type storageCapacityUnit = int
type sortOrder = [@as("ASC") #ASC | @as("DESC") #DESC]
type slackEntity = [
  | @as("DIRECT_MESSAGE") #DIRECT_MESSAGE
  | @as("GROUP_MESSAGE") #GROUP_MESSAGE
  | @as("PRIVATE_CHANNEL") #PRIVATE_CHANNEL
  | @as("PUBLIC_CHANNEL") #PUBLIC_CHANNEL
]
type siteMap = string
type sinceCrawlDate = string
type sharedDriveId = string
type sharePointVersion = [
  | @as("SHAREPOINT_ONLINE") #SHAREPOINT_ONLINE
  | @as("SHAREPOINT_2016") #SHAREPOINT_2016
  | @as("SHAREPOINT_2013") #SHAREPOINT_2013
]
type serviceNowKnowledgeArticleFilterQuery = string
type serviceNowHostUrl = string
type serviceNowBuildVersionType = [@as("OTHERS") #OTHERS | @as("LONDON") #LONDON]
type serviceNowAuthenticationType = [@as("OAUTH2") #OAUTH2 | @as("HTTP_BASIC") #HTTP_BASIC]
type seedUrl = string
type secretArn = string
@ocaml.doc("Enumeration for query score confidence.")
type scoreConfidence = [
  | @as("NOT_AVAILABLE") #NOT_AVAILABLE
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
type principalOrderingId = float
type principalName = string
type principalMappingStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("PROCESSING") #PROCESSING
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("FAILED") #FAILED
]
type port = int
type persona = [@as("VIEWER") #VIEWER | @as("OWNER") #OWNER]
type organizationId = string
type order = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type oneDriveUser = string
type objectBoolean = bool
type nextToken = string
type nameType = string
type mode = [@as("LEARN_ONLY") #LEARN_ONLY | @as("ENABLED") #ENABLED]
type minimumQueryCount = int
type minimumNumberOfQueryingUsers = int
type mimeType = string
type metricValue = string
type metricType = [
  | @as("TREND_QUERY_DOC_METRICS") #TREND_QUERY_DOC_METRICS
  | @as("AGG_QUERY_DOC_METRICS") #AGG_QUERY_DOC_METRICS
  | @as("DOCS_BY_CLICK_COUNT") #DOCS_BY_CLICK_COUNT
  | @as("QUERIES_BY_ZERO_RESULT_RATE") #QUERIES_BY_ZERO_RESULT_RATE
  | @as("QUERIES_BY_ZERO_CLICK_RATE") #QUERIES_BY_ZERO_CLICK_RATE
  | @as("QUERIES_BY_COUNT") #QUERIES_BY_COUNT
]
type maxUrlsPerMinuteCrawlRate = int
type maxResultsIntegerForListThesauriRequest = int
type maxResultsIntegerForListQuerySuggestionsBlockLists = int
type maxResultsIntegerForListPrincipalsRequest = int
type maxResultsIntegerForListIndicesRequest = int
type maxResultsIntegerForListFaqsRequest = int
type maxResultsIntegerForListExperiencesRequest = int
type maxResultsIntegerForListEntityPersonasRequest = int
type maxResultsIntegerForListDataSourcesRequest = int
type maxResultsIntegerForListDataSourceSyncJobsRequest = int
type maxLinksPerPage = int
type maxContentSizePerPageInMegaBytes = float
type lookBackPeriod = int
type long = float
@ocaml.doc("<p>The code for a language. The default language is English. 
            For more information on supported languages, including their codes, 
            see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html\">Adding 
                documents in languages other than English</a>.</p>")
type languageCode = string
type lambdaArn = string
type kmsKeyId = string
type keyLocation = [@as("SECRET_MANAGER") #SECRET_MANAGER | @as("URL") #URL]
type issuer = string
type interval = [
  | @as("TWO_MONTHS_AGO") #TWO_MONTHS_AGO
  | @as("ONE_MONTH_AGO") #ONE_MONTH_AGO
  | @as("TWO_WEEKS_AGO") #TWO_WEEKS_AGO
  | @as("ONE_WEEK_AGO") #ONE_WEEK_AGO
  | @as("THIS_WEEK") #THIS_WEEK
  | @as("THIS_MONTH") #THIS_MONTH
]
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
type identityAttributeName = string
type host = string
type highlightType = [@as("THESAURUS_SYNONYM") #THESAURUS_SYNONYM | @as("STANDARD") #STANDARD]
type groupId = string
type groupAttributeField = string
type fsxFileSystemType = [@as("WINDOWS") #WINDOWS]
type fileSystemId = string
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
type failureReason = string
type experienceStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type experienceName = string
type experienceId = string
type errorMessage = string
type errorCode = [@as("InvalidRequest") #InvalidRequest | @as("InternalError") #InternalError]
type entityType = [@as("GROUP") #GROUP | @as("USER") #USER]
type entityId = string
type endpointType = [@as("HOME") #HOME]
type endpoint = string
type duration = string
type documentStatus = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("FAILED") #FAILED
  | @as("UPDATED") #UPDATED
  | @as("INDEXED") #INDEXED
  | @as("PROCESSING") #PROCESSING
  | @as("NOT_FOUND") #NOT_FOUND
]
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
  | @as("SLACK") #SLACK
  | @as("FSX") #FSX
  | @as("WORKDOCS") #WORKDOCS
  | @as("WEBCRAWLER") #WEBCRAWLER
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
type crawlDepth = int
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
type conditionOperator = [
  | @as("BeginsWith") #BeginsWith
  | @as("NotExists") #NotExists
  | @as("Exists") #Exists
  | @as("NotContains") #NotContains
  | @as("Contains") #Contains
  | @as("NotEquals") #NotEquals
  | @as("Equals") #Equals
  | @as("LessThanOrEquals") #LessThanOrEquals
  | @as("LessThan") #LessThan
  | @as("GreaterThanOrEquals") #GreaterThanOrEquals
  | @as("GreaterThan") #GreaterThan
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
@ocaml.doc("<p>The warning code and message that explains a problem with a query.</p>")
type warning = {
  @ocaml.doc("<p>The code used to show the type of warning for the query.</p>") @as("Code")
  code: option<warningCode>,
  @ocaml.doc("<p>The message that explains the problem with the query.</p>") @as("Message")
  message: option<warningMessage>,
}
type valueImportanceMap = Js.Dict.t<importance>
@ocaml.doc("<p>Provides the configuration information for the identifiers of your users.</p>")
type userIdentityConfiguration = {
  @ocaml.doc("<p>The Amazon Web Services SSO field name that contains the identifiers of your users, 
            such as their emails. This is used for <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html\">user context filtering</a> 
            and for granting access to your Amazon Kendra experience. You must set up Amazon Web Services SSO 
            with Amazon Kendra. You must include your users and groups in your Access Control List when 
            you ingest documents into your index. For more information, see 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/getting-started-aws-sso.html\">Getting 
                started with an Amazon Web Services SSO identity source</a>.</p>")
  @as("IdentityAttributeName")
  identityAttributeName: option<identityAttributeName>,
}
@ocaml.doc("<p>Provides the configuration information to fetch access levels 
         of groups and users from an Amazon Web Services Single Sign On identity 
         source. This is useful for setting up user context filtering, where 
         Amazon Kendra filters search results for different users based on their 
         group's access to documents. You can also map your users to their 
         groups for user context filtering using the 
         <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_PutPrincipalMapping.html\">PutPrincipalMapping 
            API</a>.</p>
         <p>To set up an Amazon Web Services SSO identity source in the console to use with 
         Amazon Kendra, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/getting-started-aws-sso.html\">Getting started 
            with an Amazon Web Services SSO identity source</a>. You must also grant the required 
         permissions to use Amazon Web Services SSO with Amazon Kendra. For more information, see 
         <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html#iam-roles-aws-sso\">IAM roles for 
            Amazon Web Services SSO</a>.</p>
         <p>Amazon Kendra currently does not support using <code>UserGroupResolutionConfiguration</code> 
         with an Amazon Web Services organization member account for your Amazon Web Services SSO 
         identify source. You must create your index in the management account for the organization 
         in order to use <code>UserGroupResolutionConfiguration</code>.</p>")
type userGroupResolutionConfiguration = {
  @ocaml.doc("<p>The identity store provider (mode) you want to use to fetch access levels of groups and
         users. Amazon Web Services Single Sign On is currently the only available mode. Your users and groups
         must
         exist in an Amazon Web Services SSO identity source in order to use this mode.</p>")
  @as("UserGroupResolutionMode")
  userGroupResolutionMode: userGroupResolutionMode,
}
@ocaml.doc("<p>Provides a range of time.</p>")
type timeRange = {
  @ocaml.doc("<p>The UNIX datetime of the end of the time range.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The UNIX datetime of the beginning of the time range.</p>") @as("StartTime")
  startTime: option<timestamp_>,
}
@ocaml.doc("<p>An array of summary information for a thesaurus or multiple thesauri.</p>")
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
@ocaml.doc("<p>Provides information about the status of documents submitted for indexing.</p>")
type status = {
  @ocaml.doc("<p>Provides detailed information about why the document couldn't be
            indexed. Use this information to correct the error before you
            resubmit the document for indexing.</p>")
  @as("FailureReason")
  failureReason: option<string_>,
  @ocaml.doc("<p>Indicates the source of the error.</p>") @as("FailureCode")
  failureCode: option<string_>,
  @ocaml.doc("<p>The current status of a document.</p>
        <p>If the document was submitted for deletion, the status is
                <code>NOT_FOUND</code> after the document is deleted.</p>")
  @as("DocumentStatus")
  documentStatus: option<documentStatus>,
  @ocaml.doc("<p>The unique identifier of the document.</p>") @as("DocumentId")
  documentId: option<documentId>,
}
@ocaml.doc("<p>Provides the configuration information to use a SQL
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
@ocaml.doc("<p>Provides the configuration information for suggested query spell corrections.</p>
        <p>Suggested spell corrections are based on words that appear in your indexed documents 
            and how closely a corrected word matches a misspelled word.</p>
        <p>This feature is designed with certain defaults or limits. For information on the 
            current limits and how to request more support for some limits, see the 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/query-spell-check.html\">Spell 
                Checker documentation</a>.</p>")
type spellCorrectionConfiguration = {
  @ocaml.doc("<p>
            <code>TRUE</code> to suggest spell corrections for queries.</p>")
  @as("IncludeQuerySpellCheckSuggestions")
  includeQuerySpellCheckSuggestions: boolean_,
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
type snapshotsDataRecord = array<string_>
type snapshotsDataHeaderFields = array<string_>
type slackEntityList = array<slackEntity>
type siteMapsList = array<siteMap>
type sharePointUrlList = array<url>
@ocaml.doc("<p>Provides the identifier of the KMScustomer master key (CMK)
            used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
            asymmetric CMKs.</p>")
type serverSideEncryptionConfiguration = {
  @ocaml.doc("<p>The identifier of the KMScustomer master key (CMK). Amazon Kendra
            doesn't support asymmetric CMKs.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
}
type seedUrlList = array<seedUrl>
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
            application uses the <code>SubmitFeedback</code> API to
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
type publicChannelFilter = array<string_>
@ocaml.doc("<p>Provides the configuration information for a web proxy to connect to 
            website hosts.</p>")
type proxyConfiguration = {
  @ocaml.doc("<p>Your secret ARN, which you can create in <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\">Secrets Manager</a>
         </p>
        <p>The credentials are optional. You use a secret if web proxy credentials 
            are required to connect to a website host. Amazon Kendra currently support basic 
            authentication to connect to a web proxy server. The secret stores your 
            credentials.</p>")
  @as("Credentials")
  credentials: option<secretArn>,
  @ocaml.doc("<p>The port number of the website host you want to connect 
            to via a web proxy server. </p>
        <p>For example, the port for https://a.example.com/page1.html
            is 443, the standard port for HTTPS.</p>")
  @as("Port")
  port: port,
  @ocaml.doc("<p>The name of the website host you want to connect to 
            via a web proxy server.</p>
        <p>For example, the host name of https://a.example.com/page1.html 
            is \"a.example.com\".</p>")
  @as("Host")
  host: host,
}
type privateChannelFilter = array<string_>
@ocaml.doc("<p>Provides user and group information for document access
            filtering.</p>")
type principal = {
  @ocaml.doc("<p>The identifier of the data source the principal should 
            access documents from.</p>")
  @as("DataSourceId")
  dataSourceId: option<dataSourceId>,
  @ocaml.doc("<p>Whether to allow or deny access to the principal.</p>") @as("Access")
  access: readAccessType,
  @ocaml.doc("<p>The type of principal.</p>") @as("Type") type_: principalType,
  @ocaml.doc("<p>The name of the user or group.</p>") @as("Name") name: principalName,
}
@ocaml.doc("<p>Summary information for users or groups in your Amazon Web Services SSO identity 
            source. This applies to users and groups with specific permissions that define 
            their level of access to your Amazon Kendra experience. You can create an Amazon Kendra experience 
            such as a search application. For more information on creating a search application 
            experience, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html\">Building a 
                search experience with no code</a>.</p>")
type personasSummary = {
  @ocaml.doc("<p>The date-time the summary information was last updated.</p>") @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The date-time the summary information was created.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The persona that defines the specific permissions of the user or group in 
            your Amazon Web Services SSO identity source. The available personas or access 
            roles are <code>Owner</code> and <code>Viewer</code>. For more information on 
            these personas, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience\">Providing 
                access to your search page</a>.</p>")
  @as("Persona")
  persona: option<persona>,
  @ocaml.doc("<p>The identifier of a user or group in your Amazon Web Services SSO identity source. 
            For example, a user ID could be an email.</p>")
  @as("EntityId")
  entityId: option<entityId>,
}
type oneDriveUserList = array<oneDriveUser>
@ocaml.doc("<p>The users that belong to a group.</p>")
type memberUser = {
  @ocaml.doc("<p>The identifier of the user you want to map to a group.</p>") @as("UserId")
  userId: userId,
}
@ocaml.doc("<p>The sub groups that belong to a group.</p>")
type memberGroup = {
  @ocaml.doc("<p>The identifier of the data source for the sub group 
            you want to map to a group.</p>")
  @as("DataSourceId")
  dataSourceId: option<dataSourceId>,
  @ocaml.doc("<p>The identifier of the sub group you want to map to a group.</p>") @as("GroupId")
  groupId: groupId,
}
@ocaml.doc("<p>Provides the configuration information for the JWT token type.</p>")
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
@ocaml.doc("<p>Provides the configuration information for the JSON token type.</p>")
type jsonTokenTypeConfiguration = {
  @ocaml.doc("<p>The group attribute field.</p>") @as("GroupAttributeField")
  groupAttributeField: string_,
  @ocaml.doc("<p>The user name attribute field.</p>") @as("UserNameAttributeField")
  userNameAttributeField: string_,
}
@ocaml.doc("<p>A summary of information on the configuration of an index.</p>")
type indexConfigurationSummary = {
  @ocaml.doc("<p>The current status of the index. When the status is
                <code>ACTIVE</code>, the index is ready to search.</p>")
  @as("Status")
  status: indexStatus,
  @ocaml.doc("<p>The Unix timestamp when the index was last updated by the
                <code>UpdateIndex</code> API.</p>")
  @as("UpdatedAt")
  updatedAt: timestamp_,
  @ocaml.doc("<p>The Unix timestamp when the index was created.</p>") @as("CreatedAt")
  createdAt: timestamp_,
  @ocaml.doc("<p>Indicates whether the index is a enterprise edition index or a
            developer edition index. </p>")
  @as("Edition")
  edition: option<indexEdition>,
  @ocaml.doc("<p>A unique identifier for the index. Use this to identify the index
            when you are using APIs such as <code>Query</code>,
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
type groups = array<principalName>
@ocaml.doc("<p>
            Group summary information.
        </p>")
type groupSummary = {
  @ocaml.doc("<p>
            The timestamp identifier used for the latest <code>PUT</code> or <code>DELETE</code> 
            action.
        </p>")
  @as("OrderingId")
  orderingId: option<principalOrderingId>,
  @ocaml.doc("<p>
            The identifier of the group you want group summary information on.
        </p>")
  @as("GroupId")
  groupId: option<groupId>,
}
@ocaml.doc("<p>Information on the processing of <code>PUT</code> and <code>DELETE</code> actions 
            for mapping users to their groups.</p>")
type groupOrderingIdSummary = {
  @ocaml.doc("<p>The reason an action could not be processed. An action can be a 
            <code>PUT</code> or <code>DELETE</code> action for mapping users 
            to their groups.</p>")
  @as("FailureReason")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The order in which actions should complete processing. An action can 
            be a <code>PUT</code> or <code>DELETE</code> action for mapping users 
            to their groups.</p>")
  @as("OrderingId")
  orderingId: option<principalOrderingId>,
  @ocaml.doc("<p>The date-time an action was received by Amazon Kendra. An action can be a 
            <code>PUT</code> or <code>DELETE</code> action for mapping users to 
            their groups.</p>")
  @as("ReceivedAt")
  receivedAt: option<timestamp_>,
  @ocaml.doc("<p>The last date-time an action was updated. An action can be a 
            <code>PUT</code> or <code>DELETE</code> action for mapping users 
            to their groups.</p>")
  @as("LastUpdatedAt")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p>The current processing status of actions for mapping users to their groups. 
            The status can be either <code>PROCESSING</code>, <code>SUCCEEDED</code>, 
            <code>DELETING</code>, <code>DELETED</code>, or <code>FAILED</code>.</p>")
  @as("Status")
  status: option<principalMappingStatus>,
}
@ocaml.doc("<p>Provides information about a frequently asked questions and answer
            contained in an index.</p>")
type faqSummary = {
  @ocaml.doc("<p>The code for a language. This shows a supported language for the FAQ document 
            as part of the summary information for FAQs. English is supported by default.  
            For more information on supported languages, including their codes, 
            see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html\">Adding 
                documents in languages other than English</a>.</p>")
  @as("LanguageCode")
  languageCode: option<languageCode>,
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
type faqIdsList = array<faqId>
@ocaml.doc("<p>Information on the users or groups in your Amazon Web Services SSO identity 
            source that failed to properly configure with your Amazon Kendra experience.</p>")
type failedEntity = {
  @ocaml.doc("<p>The reason the user or group in your Amazon Web Services SSO identity source 
            failed to properly configure with your Amazon Kendra experience.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The identifier of the user or group in your Amazon Web Services SSO identity 
            source. For example, a user ID could be an email.</p>")
  @as("EntityId")
  entityId: option<entityId>,
}
@ocaml.doc("<p>Information about a document attribute</p>")
type facet = {
  @ocaml.doc("<p>The unique key for the document attribute.</p>") @as("DocumentAttributeKey")
  documentAttributeKey: option<documentAttributeKey>,
}
@ocaml.doc("<p>Provides the configuration information for the endpoint for your Amazon Kendra
            experience.</p>")
type experienceEndpoint = {
  @ocaml.doc("<p>The endpoint of your Amazon Kendra experience.</p>") @as("Endpoint")
  endpoint: option<endpoint>,
  @ocaml.doc("<p>The type of endpoint for your Amazon Kendra experience. The type currently available 
            is <code>HOME</code>, which is a unique and fully hosted URL to the home page 
            of your Amazon Kendra experience.</p>")
  @as("EndpointType")
  endpointType: option<endpointType>,
}
type excludeUserAccountsList = array<userAccount>
type excludeSharedDrivesList = array<sharedDriveId>
type excludeMimeTypesList = array<mimeType>
@ocaml.doc("<p>Provides the configuration information for users or groups in your 
            Amazon Web Services SSO identity source for access to your Amazon Kendra experience. 
            Specific permissions are defined for each user or group once they are 
            granted access to your Amazon Kendra experience.</p>")
type entityPersonaConfiguration = {
  @ocaml.doc("<p>The persona that defines the specific permissions of the user or group 
            in your Amazon Web Services SSO identity source. The available personas or 
            access roles are <code>Owner</code> and <code>Viewer</code>. For more 
            information on these personas, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience\">Providing 
                access to your search page</a>.</p>")
  @as("Persona")
  persona: persona,
  @ocaml.doc("<p>The identifier of a user or group in your Amazon Web Services SSO identity 
            source. For example, a user ID could be an email.</p>")
  @as("EntityId")
  entityId: entityId,
}
type entityIdsList = array<entityId>
@ocaml.doc("<p>Information about the user entity.</p>")
type entityDisplayData = {
  @ocaml.doc("<p>The last name of the user.</p>") @as("LastName") lastName: option<nameType>,
  @ocaml.doc("<p>The first name of the user.</p>") @as("FirstName") firstName: option<nameType>,
  @ocaml.doc("<p>The user name of the user.</p>") @as("IdentifiedUserName")
  identifiedUserName: option<nameType>,
  @ocaml.doc("<p>The name of the group.</p>") @as("GroupName") groupName: option<nameType>,
  @ocaml.doc("<p>The name of the user.</p>") @as("UserName") userName: option<nameType>,
}
@ocaml.doc("<p>Provides the configuration information for users or groups in 
            your Amazon Web Services SSO identity source to grant access your Amazon Kendra 
            experience.</p>")
type entityConfiguration = {
  @ocaml.doc("<p>Specifies whether you are configuring a <code>User</code> or a
            <code>Group</code>.</p>")
  @as("EntityType")
  entityType: entityType,
  @ocaml.doc("<p>The identifier of a user or group in your Amazon Web Services SSO identity 
            source. For example, a user ID could be an email.</p>")
  @as("EntityId")
  entityId: entityId,
}
@ocaml.doc("<p>Document metadata files that contain information such as the
            document access control information, source URI, document author,
            and custom attributes. Each metadata file contains metadata about a
            single document.</p>")
type documentsMetadataConfiguration = {
  @ocaml.doc("<p>A prefix used to filter metadata configuration files in the Amazon Web Services S3
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
                <code>UpdateIndex</code> API.</p>")
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
@ocaml.doc("<p>Summary information for an Amazon Kendra data source. Returned in a call
            to the <code>DescribeDataSource</code> API.</p>")
type dataSourceSummary = {
  @ocaml.doc("<p>The code for a language. This shows a supported language for all documents 
            in the data source. English is supported by default.  
            For more information on supported languages, including their codes, 
            see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html\">Adding 
                documents in languages other than English</a>.</p>")
  @as("LanguageCode")
  languageCode: option<languageCode>,
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
type dataSourceIdList = array<dataSourceId>
@ocaml.doc("<p>Data source information for user context filtering.</p>")
type dataSourceGroup = {
  @ocaml.doc("<p>The identifier of the data source group you want to add 
         to your list of data source groups. This is for filtering 
         search results based on the groups' access to documents in 
         that data source.</p>")
  @as("DataSourceId")
  dataSourceId: dataSourceId,
  @ocaml.doc("<p>The identifier of the group you want to add to your list 
         of groups. This is for filtering search results based on the 
         groups' access to documents.</p>")
  @as("GroupId")
  groupId: principalName,
}
@ocaml.doc("<p>A corrected misspelled word in a query.</p>")
type correction = {
  @ocaml.doc("<p>The string or text of a corrected misspelled word in a query.</p>")
  @as("CorrectedTerm")
  correctedTerm: option<string_>,
  @ocaml.doc("<p>The string or text of a misspelled word in a query.</p>") @as("Term")
  term: option<string_>,
  @ocaml.doc("<p>The zero-based location in the response string or text where 
            the corrected word ends.</p>")
  @as("EndOffset")
  endOffset: option<integer_>,
  @ocaml.doc("<p>The zero-based location in the response string or text where 
            the corrected word starts.</p>")
  @as("BeginOffset")
  beginOffset: option<integer_>,
}
@ocaml.doc("<p>Provides the configuration information that's required to connect to a
            database.</p>")
type connectionConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of credentials stored in Secrets Manager.
            The credentials should be a user/password pair. For
            more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-database.html\">Using a
                Database Data Source</a>. For more information about 
            Secrets Manager, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\"> What Is 
                Secrets Manager</a> in the <i> Secrets Manager
                </i> user guide.</p>")
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
@ocaml.doc("<p>>Maps attributes or field names of Confluence spaces to Amazon Kendra index field 
            names. To create custom fields, use the <code>UpdateIndex</code> API before 
            you map to Confluence fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Confluence data source field names must exist in your Confluence custom metadata.</p>")
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
@ocaml.doc("<p>>Maps attributes or field names of Confluence pages to Amazon Kendra index field 
            names. To create custom fields, use the <code>UpdateIndex</code> API before 
            you map to Confluence fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Confluence data source field names must exist in your Confluence custom metadata.</p>")
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
  @ocaml.doc("<p>The name of the field in the data source.</p>") @as("DataSourceFieldName")
  dataSourceFieldName: option<confluencePageFieldName>,
}
@ocaml.doc("<p>Maps attributes or field names of Confluence blog to Amazon Kendra index field 
            names. To create custom fields, use the <code>UpdateIndex</code> API before 
            you map to Confluence fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Confluence data source field names must exist in your Confluence custom metadata.</p>")
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
@ocaml.doc("<p>Maps attributes or field names of Confluence attachments to Amazon Kendra index field 
            names. To create custom fields, use the <code>UpdateIndex</code> API before 
            you map to Confluence fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Confuence data source field names must exist in your Confluence custom metadata.</p>")
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
                <code>UpdateIndex</code> API. </p>")
  @as("DataSourceFieldName")
  dataSourceFieldName: option<confluenceAttachmentFieldName>,
}
@ocaml.doc("<p>Gathers information about when a particular result was clicked by
            a user. Your application uses the <code>SubmitFeedback</code>
            API to provide click information.</p>")
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
@ocaml.doc("<p>Specifies capacity units configured for your enterprise edition index. 
            You can add and remove capacity units to tune an index to your
            requirements.</p>")
type capacityUnitsConfiguration = {
  @ocaml.doc("<p>The amount of extra query capacity for an index and 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_GetQuerySuggestions.html\">GetQuerySuggestions</a> 
            capacity.</p>
        <p>A single extra capacity unit for an index provides 0.1 queries per second or approximately 
            8,000 queries per day.</p>
        <p>
            <code>GetQuerySuggestions</code> capacity is five times the 
            provisioned query capacity for an index, or the base capacity of 2.5 calls per second, 
            whichever is higher. For example, the base capacity for an index is 0.1 queries per 
            second, and <code>GetQuerySuggestions</code> capacity has a base of 2.5 calls per second. 
            If you add another 0.1 queries per second to total 0.2 queries per second for an index, the 
            <code>GetQuerySuggestions</code> capacity is 2.5 calls per second 
            (higher than five times 0.2 queries per second).</p>")
  @as("QueryCapacityUnits")
  queryCapacityUnits: queryCapacityUnit,
  @ocaml.doc("<p>The amount of extra storage capacity for an index. 
            A single capacity unit provides 30 GB of storage space or 100,000 documents, 
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
@ocaml.doc("<p>Provides a response when the status of a document could not be retrieved.</p>")
type batchGetDocumentStatusResponseError = {
  @ocaml.doc("<p>States that the API could not get the status of a document. This could be 
            because the request is not valid or there is a system error.</p>")
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>Indicates the source of the error.</p>") @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The unique identifier of the document whose status could not be retrieved.</p>")
  @as("DocumentId")
  documentId: option<documentId>,
}
@ocaml.doc("<p>Provides information about documents that could not be removed
            from an index by the <code>BatchDeleteDocument</code>
            API.</p>")
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
@ocaml.doc("<p>Provides the configuration information to connect to websites that require
            basic user authentication.</p>")
type basicAuthenticationConfiguration = {
  @ocaml.doc("<p>Your secret ARN, which you can create in <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\">Secrets Manager</a>
         </p>
        <p>You use a secret if basic authentication credentials are required to connect 
            to a website. The secret stores your credentials of user name and password.</p>")
  @as("Credentials")
  credentials: secretArn,
  @ocaml.doc("<p>The port number of the website host you want to connect to using 
            authentication credentials.</p>
        <p>For example, the port for https://a.example.com/page1.html is 443, 
            the standard port for HTTPS.</p>")
  @as("Port")
  port: port,
  @ocaml.doc("<p>The name of the website host you want to connect to using 
            authentication credentials.</p>
        <p>For example, the host name of https://a.example.com/page1.html is 
            \"a.example.com\".</p>")
  @as("Host")
  host: host,
}
@ocaml.doc("<p>Provides information about the column that should be used for
            filtering the query response by groups.</p>")
type aclConfiguration = {
  @ocaml.doc("<p>A list of groups, separated by semi-colons, that filters a query
            response based on user context. The document is only returned to
            users that are in one of the groups specified in the
                <code>UserContext</code> field of the <code>Query</code>
            API.</p>")
  @as("AllowedGroupsColumnName")
  allowedGroupsColumnName: columnName,
}
@ocaml.doc("<p>Access Control List files for the documents in a data source. For
            the format of the file, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html\">Access control for S3 data
                sources</a>.</p>")
type accessControlListConfiguration = {
  @ocaml.doc("<p>Path to the Amazon Web Services S3 bucket that contains the ACL files.</p>")
  @as("KeyPath")
  keyPath: option<s3ObjectKey>,
}
type warningList = array<warning>
@ocaml.doc("<p>Provides the configuration information for a token.</p>")
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
type snapshotsDataRecords = array<snapshotsDataRecord>
@ocaml.doc("<p>Provides the configuration information for the sitemap URLs to crawl.</p>
        <p>
            <i>When selecting websites to index, you must adhere to 
            the <a href=\"https://aws.amazon.com/aup/\">Amazon Acceptable Use Policy</a> 
            and all other Amazon terms. Remember that you must only use Amazon Kendra Web 
            Crawler to index your own webpages, or webpages that you have authorization 
            to index.</i>
         </p>")
type siteMapsConfiguration = {
  @ocaml.doc("<p>The list of sitemap URLs of the websites 
            you want to crawl.</p>
        <p>The list can include a maximum of three sitemap URLs.</p>")
  @as("SiteMaps")
  siteMaps: siteMapsList,
}
@ocaml.doc("<p>Provides the configuration information for the seed or starting point URLs to crawl.</p>
        <p>
            <i>When selecting websites to index, you must adhere to 
            the <a href=\"https://aws.amazon.com/aup/\">Amazon Acceptable Use Policy</a> 
            and all other Amazon terms. Remember that you must only use Amazon Kendra Web 
            Crawler to index your own webpages, or webpages that you have authorization 
            to index.</i>
         </p>")
type seedUrlConfiguration = {
  @ocaml.doc("<p>You can choose one of the following modes:</p>
        <ul>
            <li>
                <p>
                  <code>HOST_ONLY</code> – crawl only the website host names. 
                    For example, if the seed URL is \"abc.example.com\", 
                    then only URLs with host name \"abc.example.com\" are crawled.</p>
            </li>
            <li>
                <p>
                  <code>SUBDOMAINS</code> – crawl the website host names with 
                    subdomains. For example, if the seed URL is  \"abc.example.com\", then 
                    \"a.abc.example.com\" and \"b.abc.example.com\" are also crawled.</p>
            </li>
            <li>
                <p>
                  <code>EVERYTHING</code> – crawl the website host names with 
                    subdomains and other domains that the webpages link to.</p>
            </li>
         </ul>
        <p>The default mode is set to <code>HOST_ONLY</code>.</p>")
  @as("WebCrawlerMode")
  webCrawlerMode: option<webCrawlerMode>,
  @ocaml.doc("<p>The list of seed or starting point URLs of the 
            websites you want to crawl.</p>
        <p>The list can include a maximum of 100 seed URLs.</p>")
  @as("SeedUrls")
  seedUrls: seedUrlList,
}
@ocaml.doc("<p>Provides the configuration information to connect to 
            an Amazon S3 bucket.</p>")
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
type personasSummaryList = array<personasSummary>
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
type memberUsers = array<memberUser>
type memberGroups = array<memberGroup>
type listOfGroupSummaries = array<groupSummary>
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
type groupOrderingIdSummaries = array<groupOrderingIdSummary>
type faqSummaryItems = array<faqSummary>
type failedEntityList = array<failedEntity>
type facetList = array<facet>
@ocaml.doc("<p>Summary information for users or groups in your Amazon Web Services SSO identity
            source with granted access to your Amazon Kendra experience. You can create an Amazon Kendra 
            experience such as a search application. For more information on creating a 
            search application experience, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html\">Building 
                a search experience with no code</a>.</p>")
type experienceEntitiesSummary = {
  @ocaml.doc("<p>Information about the user entity.</p>") @as("DisplayData")
  displayData: option<entityDisplayData>,
  @ocaml.doc("<p>Shows the type as <code>User</code> or <code>Group</code>.</p>") @as("EntityType")
  entityType: option<entityType>,
  @ocaml.doc("<p>The identifier of a user or group in your Amazon Web Services SSO identity source. 
            For example, a user ID could be an email.</p>")
  @as("EntityId")
  entityId: option<entityId>,
}
type experienceEndpoints = array<experienceEndpoint>
type entityPersonaConfigurationList = array<entityPersonaConfiguration>
type documentStatusList = array<status>
@ocaml.doc("<p>The value of a custom document attribute. You can only provide one
            value for a custom attribute.</p>")
type documentAttributeValue = {
  @ocaml.doc("<p>A date expressed as an ISO 8601 string.</p>
        <p>It is important for the time zone to be included 
            in the ISO 8601 date-time format. For example, 
            2012-03-25T12:30:10+01:00 is the ISO 8601 date-time format 
            for March 25th 2012 at 12:30PM (plus 10 seconds) in 
            Central European Time.</p>")
  @as("DateValue")
  dateValue: option<timestamp_>,
  @ocaml.doc("<p>A long integer value.</p>") @as("LongValue") longValue: option<long>,
  @ocaml.doc("<p>A list of strings. </p>") @as("StringListValue")
  stringListValue: option<documentAttributeStringListValue>,
  @ocaml.doc("<p>A string, such as \"department\".</p>") @as("StringValue")
  stringValue: option<documentAttributeStringValue>,
}
type disassociateEntityList = array<entityConfiguration>
@ocaml.doc("<p>Provides the configuration information to connect to an Amazon VPC.</p>")
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
@ocaml.doc("<p>Provides information about a data source synchronization job.</p>")
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
            the <code>ErrorCode</code> field indicates the reason the 
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
  @ocaml.doc("<p>The UNIX datetime that the synchronization job 
            completed.</p>")
  @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The UNIX datetime that the synchronization job started.</p>") @as("StartTime")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>A unique identifier for the synchronization job.</p>") @as("ExecutionId")
  executionId: option<string_>,
}
type dataSourceSummaryList = array<dataSourceSummary>
type dataSourceGroups = array<dataSourceGroup>
type correctionList = array<correction>
@ocaml.doc("<p>Provides the configuration information for your content sources, such as data sources, 
            FAQs, and content indexed directly via <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html\">BatchPutDocument</a>.</p>")
type contentSourceConfiguration = {
  @ocaml.doc("<p>
            <code>TRUE</code> to use documents you indexed directly using the
                <code>BatchPutDocument</code> API.</p>")
  @as("DirectPutContent")
  directPutContent: option<boolean_>,
  @ocaml.doc(
    "<p>The identifier of the FAQs that you want to use for your Amazon Kendra experience.</p>"
  )
  @as("FaqIds")
  faqIds: option<faqIdsList>,
  @ocaml.doc(
    "<p>The identifier of the data sources you want to use for your Amazon Kendra experience.</p>"
  )
  @as("DataSourceIds")
  dataSourceIds: option<dataSourceIdList>,
}
type confluenceSpaceFieldMappingsList = array<confluenceSpaceToIndexFieldMapping>
type confluencePageFieldMappingsList = array<confluencePageToIndexFieldMapping>
type confluenceBlogFieldMappingsList = array<confluenceBlogToIndexFieldMapping>
type confluenceAttachmentFieldMappingsList = array<confluenceAttachmentToIndexFieldMapping>
type clickFeedbackList = array<clickFeedback>
type batchPutDocumentResponseFailedDocuments = array<batchPutDocumentResponseFailedDocument>
type batchGetDocumentStatusResponseErrors = array<batchGetDocumentStatusResponseError>
type batchDeleteDocumentResponseFailedDocuments = array<batchDeleteDocumentResponseFailedDocument>
type basicAuthenticationConfigurationList = array<basicAuthenticationConfiguration>
type associateEntityList = array<entityConfiguration>
type associateEntitiesToExperienceFailedEntityList = array<failedEntity>
@ocaml.doc("<p>Provides the configuration information to connect to Amazon WorkDocs 
            as your data source.</p>
        <p>Amazon WorkDocs connector is available in Oregon, North Virginia, Sydney, Singapore and Ireland 
            regions.</p>")
type workDocsConfiguration = {
  @ocaml.doc("<p>A list of <code>DataSourceToIndexFieldMapping</code> objects that 
            map Amazon WorkDocs data source attributes or field names to Amazon Kendra 
            index field names. To create custom fields, use the 
            <code>UpdateIndex</code> API before you map to Amazon WorkDocs fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping 
                data source fields</a>. The Amazon WorkDocs data source field names 
            must exist in your Amazon WorkDocs custom metadata.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>A list of regular expression patterns to exclude certain files 
            in your Amazon WorkDocs site repository. Files that match the patterns 
            are excluded from the index. Files that don’t match the patterns 
            are included in the index. If a file matches both an inclusion and exclusion 
            pattern, the exclusion pattern takes precedence and the file isn't included 
            in the index.</p>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns to include certain files 
            in your Amazon WorkDocs site repository. Files that match the patterns 
            are included in the index. Files that don't match the patterns are 
            excluded from the index. If a file matches both an inclusion and exclusion 
            pattern, the exclusion pattern takes precedence and the file isn't included 
            in the index.</p>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>
            <code>TRUE</code> to use the Amazon WorkDocs change log to determine 
            which documents require updating in the index. Depending on the change log's
            size, it may take longer for Amazon Kendra to use the change log than to 
            scan all of your documents in Amazon WorkDocs.</p>")
  @as("UseChangeLog")
  useChangeLog: option<boolean_>,
  @ocaml.doc("<p>
            <code>TRUE</code> to include comments on documents 
            in your index. Including comments in your index means each comment 
            is a document that can be searched on.</p>
        <p>The default is set to <code>FALSE</code>.</p>")
  @as("CrawlComments")
  crawlComments: option<boolean_>,
  @ocaml.doc("<p>The identifier of the directory corresponding to your 
            Amazon WorkDocs site repository.</p>
        <p>You can find the organization ID in the 
            <a href=\"https://console.aws.amazon.com/directoryservicev2/\">Directory Service</a> by going to 
            <b>Active Directory</b>, then 
            <b>Directories</b>. Your Amazon WorkDocs site directory has an 
            ID, which is the organization ID. You can also set up a new Amazon WorkDocs 
            directory in the Directory Service console and enable a Amazon WorkDocs site 
            for the directory in the Amazon WorkDocs console.</p>")
  @as("OrganizationId")
  organizationId: organizationId,
}
type userTokenConfigurationList = array<userTokenConfiguration>
@ocaml.doc("<p>Provides information about the user context for
         an Amazon Kendra index.</p>
         <p>This is used for filtering search results for different users based on their access 
         to documents.</p>
         <p>You provide one of the following:</p> 
         <ul>
            <li>
               <p>User token</p>
            </li>
            <li>
               <p>User ID, the groups the user belongs to, and any data sources the groups can
               access.</p>
            </li>
         </ul>
         <p>If you provide both, an exception is thrown.</p>")
type userContext = {
  @ocaml.doc("<p>The list of data source groups you want to filter search results 
         based on groups' access to documents in that data source.</p>")
  @as("DataSourceGroups")
  dataSourceGroups: option<dataSourceGroups>,
  @ocaml.doc("<p>The list of groups you want to filter search results based on the 
         groups' access to documents.</p>")
  @as("Groups")
  groups: option<groups>,
  @ocaml.doc("<p>The identifier of the user you want to filter search results based on their 
         access to documents.</p>")
  @as("UserId")
  userId: option<principalName>,
  @ocaml.doc("<p>The user context token for filtering search results for a user. It must 
         be a JWT or a JSON token.</p>")
  @as("Token")
  token: option<token>,
}
@ocaml.doc("<p>Provides the configuration information of the URLs to crawl.</p>
        <p>You can only crawl websites that use the secure communication protocol, 
            Hypertext Transfer Protocol Secure (HTTPS). If you receive an error when 
            crawling a website, it could be that the website is blocked from crawling.</p>
        <p>
            <i>When selecting websites to index, you must adhere to 
            the <a href=\"https://aws.amazon.com/aup/\">Amazon Acceptable Use Policy</a> 
            and all other Amazon terms. Remember that you must only use Amazon Kendra Web  
            Crawler to index your own webpages, or webpages that you have authorization to 
            index.</i>
         </p>")
type urls = {
  @ocaml.doc("<p>Configuration of the sitemap URLs of the websites you want to crawl.</p>
        <p>Only URLs belonging to the same website host names are crawled. You can list up to 
            three sitemap URLs.</p>")
  @as("SiteMapsConfiguration")
  siteMapsConfiguration: option<siteMapsConfiguration>,
  @ocaml.doc("<p>Configuration of the seed or starting point URLs of the websites 
            you want to crawl.</p>
        <p>You can choose to crawl only the website host names, or the website host names 
            with subdomains, or the website host names with subdomains and other domains 
            that the webpages link to.</p>
        <p>You can list up to 100 seed URLs.</p>")
  @as("SeedUrlConfiguration")
  seedUrlConfiguration: option<seedUrlConfiguration>,
}
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
@ocaml.doc("<p>A query with suggested spell corrections. </p>")
type spellCorrectedQuery = {
  @ocaml.doc("<p>The corrected misspelled word or words in a query.</p>") @as("Corrections")
  corrections: option<correctionList>,
  @ocaml.doc("<p>The query with the suggested spell corrections.</p>") @as("SuggestedQueryText")
  suggestedQueryText: option<suggestedQueryText>,
}
@ocaml.doc("<p>Provides the configuration information to connect to Slack as your 
            data source.</p>")
type slackConfiguration = {
  @ocaml.doc("<p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map Slack data 
            source attributes or field names to Amazon Kendra index field names. To create 
            custom fields, use the <code>UpdateIndex</code> API before you map to Slack fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Slack data source field names must exist in your Slack custom metadata.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>A list of regular expression patterns to exclude certain attached files in your Slack
            workspace team. Files that match the patterns are excluded from the index. Files that
            don’t match the patterns are included in the index. If a file matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the file 
            isn't included in the index.</p>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns to include certain attached files in your Slack
            workspace team. Files that match the patterns are included in the index. Files that
            don't match the patterns are excluded from the index. If a file matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            file isn't included in the index.</p>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>The list of public channel names to index from your Slack workspace team. You use 
            this if you want to index specific public channels, not all public channels. You can 
            also use regular expression patterns to filter public channels.</p>")
  @as("PublicChannelFilter")
  publicChannelFilter: option<publicChannelFilter>,
  @ocaml.doc("<p>The list of private channel names from your Slack workspace team. You use this if 
            you want to index specific private channels, not all private channels. You can also 
            use regular expression patterns to filter private channels.</p>")
  @as("PrivateChannelFilter")
  privateChannelFilter: option<privateChannelFilter>,
  @ocaml.doc("<p>The number of hours for change log to look back from when you last synchronized 
            your data. You can look back up to 7 days or 168 hours.</p>
        <p>Change log updates your index only if new content was added since you
            last synced your data. Updated or deleted content from before you last synced
            does not get updated in your index. To capture updated or deleted content before you
            last synced, set the <code>LookBackPeriod</code> to the number of hours you want 
            change log to look back.</p>")
  @as("LookBackPeriod")
  lookBackPeriod: option<lookBackPeriod>,
  @ocaml.doc("<p>The date to start crawling your data from your Slack workspace team. The date 
            must follow this format: <code>yyyy-mm-dd</code>.</p>")
  @as("SinceCrawlDate")
  sinceCrawlDate: sinceCrawlDate,
  @ocaml.doc("<p>
            <code>TRUE</code> to exclude archived messages to index from your Slack 
            workspace team.</p>")
  @as("ExcludeArchived")
  excludeArchived: option<boolean_>,
  @ocaml.doc("<p>
            <code>TRUE</code> to index bot messages from your Slack workspace team.</p>")
  @as("CrawlBotMessage")
  crawlBotMessage: option<boolean_>,
  @ocaml.doc("<p>
            <code>TRUE</code> to use the Slack change log to determine which documents
            require updating in the index. Depending on the Slack change log's
            size, it may take longer for Amazon Kendra to use the change log than to 
            scan all of your documents in Slack.</p>")
  @as("UseChangeLog")
  useChangeLog: option<boolean_>,
  @ocaml.doc("<p>Specify whether to index public channels, private channels, group messages, and 
            direct messages. You can specify one or more of these options.</p>")
  @as("SlackEntityList")
  slackEntityList: slackEntityList,
  @ocaml.doc("<p>Configuration information for an Amazon Virtual Private Cloud to connect to your Slack. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html\">Configuring a VPC</a>.</p>")
  @as("VpcConfiguration")
  vpcConfiguration: option<dataSourceVpcConfiguration>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Secrets Manager secret that contains 
            the key-value pairs required to connect to your Slack workspace team. The secret 
            must contain a JSON structure with the following keys:</p>
        <ul>
            <li>
                <p>slackToken—The user or bot token created in Slack. For more 
                    information on creating a token in Slack, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-slack.html#slack-authentication\">Authentication 
                        for a Slack data source</a>.</p>
            </li>
         </ul>")
  @as("SecretArn")
  secretArn: secretArn,
  @ocaml.doc("<p>The identifier of the team in the Slack workspace. For example, 
            <i>T0123456789</i>.</p>
        <p>You can find your team ID in the URL of the main page of your Slack workspace. 
            When you log in to Slack via a browser, you are directed to the URL of the main 
            page. For example, <i>https://app.slack.com/client/<b>T0123456789</b>/...</i>.</p>")
  @as("TeamId")
  teamId: teamId,
}
@ocaml.doc("<p>Provides the configuration information to connect to Microsoft
            SharePoint as your data source.</p>")
type sharePointConfiguration = {
  @as("SslCertificateS3Path") sslCertificateS3Path: option<s3Path>,
  @ocaml.doc("<p>A Boolean value that specifies whether local
         groups are disabled (<code>True</code>) or enabled (<code>False</code>).
      </p>")
  @as("DisableLocalGroups")
  disableLocalGroups: option<boolean_>,
  @ocaml.doc("<p>The Microsoft SharePoint attribute field that contains the title
            of the document.</p>")
  @as("DocumentTitleFieldName")
  documentTitleFieldName: option<dataSourceFieldName>,
  @ocaml.doc("<p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map SharePoint data 
            source attributes or field names to Amazon Kendra index field names. To create 
            custom fields, use the <code>UpdateIndex</code> API before you map to SharePoint fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The SharePoint data source field names must exist in your SharePoint custom metadata.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("VpcConfiguration") vpcConfiguration: option<dataSourceVpcConfiguration>,
  @ocaml.doc("<p>A list of regular expression patterns to exclude certain documents in your SharePoint.
            Documents that match the patterns are excluded from the index. Documents that
            don't match the patterns are included in the index. If a document matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            document isn't included in the index.</p>
        <p>The regex is applied to the display URL of the SharePoint
            document.</p>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns to include certain documents in your SharePoint.
            Documents that match the patterns are included in the index. Documents that
            don't match the patterns are excluded from the index. If a document matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            document isn't included in the index.</p>
        <p>The regex is applied to the display URL of the SharePoint
            document.</p>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>
            <code>TRUE</code> to use the SharePoint change log to determine which documents
            require updating in the index. Depending on the change log's
            size, it may take longer for Amazon Kendra to use the change log than to 
            scan all of your documents in SharePoint.</p>")
  @as("UseChangeLog")
  useChangeLog: option<boolean_>,
  @ocaml.doc("<p>
            <code>TRUE</code> to include attachments to documents stored in
            your Microsoft SharePoint site in the index; otherwise,
                <code>FALSE</code>.</p>")
  @as("CrawlAttachments")
  crawlAttachments: option<boolean_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of credentials stored in 
            Secrets Manager. The credentials should be a user/password pair. 
            If you use SharePoint Server, you also need to provide the sever 
            domain name as part of the credentials. For
            more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-sharepoint.html\">Using a
                Microsoft SharePoint Data Source</a>. For more information
            about Secrets Manager see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\"> What Is 
                Secrets Manager</a> in the <i>Secrets Manager
                </i> user guide.</p>")
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
@ocaml.doc("<p>Provides the configuration information for crawling service catalog
            items in the ServiceNow site</p>")
type serviceNowServiceCatalogConfiguration = {
  @ocaml.doc("<p>Maps attributes or field names of catalogs to Amazon Kendra index 
            field names. To create custom fields, use the <code>UpdateIndex</code> API before 
            you map to ServiceNow fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The ServiceNow data source field names must exist in your ServiceNow custom metadata.</p>")
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
  @ocaml.doc("<p>A list of regular expression patterns to exclude certain attachments of catalogs in 
            your ServiceNow. Item that match the patterns are excluded from the index. Items that
            don't match the patterns are included in the index. If an item matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            item isn't included in the index.</p>
        <p>The regex is applied to the file name of the attachment.</p>")
  @as("ExcludeAttachmentFilePatterns")
  excludeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns to include certain attachments of catalogs in 
            your ServiceNow. Item that match the patterns are included in the index. Items that
            don't match the patterns are excluded from the index. If an item matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            item isn't included in the index.</p>
        <p>The regex is applied to the file name of the attachment.</p>")
  @as("IncludeAttachmentFilePatterns")
  includeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>Indicates whether Amazon Kendra should crawl attachments to the service
            catalog items. </p>")
  @as("CrawlAttachments")
  crawlAttachments: option<boolean_>,
}
@ocaml.doc("<p>Provides the configuration information for crawling knowledge articles
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
  @ocaml.doc("<p>Maps attributes or field names of knoweldge articles to Amazon Kendra index 
            field names. To create custom fields, use the <code>UpdateIndex</code> API before 
            you map to ServiceNow fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The ServiceNow data source field names must exist in your ServiceNow custom metadata.</p>")
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
  @ocaml.doc("<p>A list of regular expression patterns to exclude certain attachments of knowledge articles in 
            your ServiceNow. Item that match the patterns are excluded from the index. Items that
            don't match the patterns are included in the index. If an item matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            item isn't included in the index.</p>
        <p>The regex is
            applied to the field specified in the <code>PatternTargetField</code>.</p>")
  @as("ExcludeAttachmentFilePatterns")
  excludeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns to include certain attachments of knowledge articles in 
            your ServiceNow. Item that match the patterns are included in the index. Items that
            don't match the patterns are excluded from the index. If an item matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            item isn't included in the index.</p>
        <p>The regex is
            applied to the field specified in the <code>PatternTargetField</code>.</p>")
  @as("IncludeAttachmentFilePatterns")
  includeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>Indicates whether Amazon Kendra should index attachments to knowledge
            articles.</p>")
  @as("CrawlAttachments")
  crawlAttachments: option<boolean_>,
}
@ocaml.doc("<p>Provides the configuration information for indexing a single standard
            object.</p>")
type salesforceStandardObjectConfiguration = {
  @ocaml.doc("<p>Maps attributes or field names of the standard object to Amazon Kendra 
            index field names. To create custom fields, use the <code>UpdateIndex</code> API 
            before you map to Salesforce fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Salesforce data source field names must exist in your Salesforce custom metadata.</p>")
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
@ocaml.doc("<p>Provides the configuration information for processing attachments to
            Salesforce standard objects.</p>")
type salesforceStandardObjectAttachmentConfiguration = {
  @ocaml.doc("<p>One or more objects that map fields in attachments to Amazon Kendra
            index fields.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>The name of the field used for the document title.</p>")
  @as("DocumentTitleFieldName")
  documentTitleFieldName: option<dataSourceFieldName>,
}
@ocaml.doc("<p>Provides the configuration information for standard Salesforce
            knowledge articles.</p>")
type salesforceStandardKnowledgeArticleTypeConfiguration = {
  @ocaml.doc("<p>Maps attributes or field names of the knowledge article to Amazon Kendra 
            index field names. To create custom fields, use the <code>UpdateIndex</code> API 
            before you map to Salesforce fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Salesforce data source field names must exist in your Salesforce custom metadata.</p>")
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
@ocaml.doc("<p>Provides the configuration information for indexing Salesforce custom
            articles.</p>")
type salesforceCustomKnowledgeArticleTypeConfiguration = {
  @ocaml.doc("<p>Maps attributes or field names of the custom knowledge article to Amazon Kendra 
            index field names. To create custom fields, use the <code>UpdateIndex</code> API 
            before you map to Salesforce fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Salesforce data source field names must exist in your Salesforce custom metadata.</p>")
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
@ocaml.doc("<p>The configuration information for syncing a Salesforce chatter feed. The
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
@ocaml.doc("<p>Provides the configuration information to connect
            to OneDrive as your data source.</p>")
type oneDriveConfiguration = {
  @ocaml.doc("<p>A Boolean value that specifies whether local
      groups are disabled (<code>True</code>) or enabled (<code>False</code>).
      </p>")
  @as("DisableLocalGroups")
  disableLocalGroups: option<boolean_>,
  @ocaml.doc("<p>A list of <code>DataSourceToIndexFieldMapping</code> objects that map OneDrive data 
            source attributes or field names to Amazon Kendra index field names. To create 
            custom fields, use the <code>UpdateIndex</code> API before you map to OneDrive fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The OneDrive data source field names must exist in your OneDrive custom metadata.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>A list of regular expression patterns to exclude certain documents 
            in your OneDrive. Documents that match the
            patterns are excluded from the index. Documents that don't match the
            patterns are included in the index. If a document matches both an
            inclusion and exclusion pattern, the exclusion pattern takes 
            precedence and the document isn't included in the index.</p>
        <p>The pattern is applied to the file name.</p>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns to include certain documents 
            in your OneDrive. Documents that match the
            patterns are included in the index. Documents that don't match the
            patterns are excluded from the index. If a document matches both an
            inclusion and exclusion pattern, the exclusion pattern takes 
            precedence and the document isn't included in the index.</p>
        <p>The pattern is applied to the file name.</p>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of user accounts whose documents should be indexed.</p>")
  @as("OneDriveUsers")
  oneDriveUsers: oneDriveUsers,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Secrets Managersecret
            that contains the user name and password to connect to OneDrive. The
            user namd should be the application ID for the OneDrive application,
            and the password is the application key for the OneDrive
            application.</p>")
  @as("SecretArn")
  secretArn: secretArn,
  @ocaml.doc("<p>The Azure Active Directory domain of the organization. </p>") @as("TenantDomain")
  tenantDomain: tenantDomain,
}
@ocaml.doc("<p>
            Information to define the hierarchy for which documents users should have access to.
        </p>")
type hierarchicalPrincipal = {
  @ocaml.doc("<p>A list of <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html\">principal</a> lists 
                that define the hierarchy for which documents users should have access to. 
                Each hierarchical list specifies which user or group has allow or deny 
                access for each document.</p>")
  @as("PrincipalList")
  principalList: principalList,
}
@ocaml.doc("<p>A list of users or sub groups that belong to a group. Users and groups 
            are useful for filtering search results to different users based on their 
            group's access to documents.</p>")
type groupMembers = {
  @ocaml.doc("<p>If you have more than 1000 users and/or sub groups for a single group, 
            you need to provide the path to the S3 file that lists your users and sub 
            groups for a group. Your sub groups can contain more than 1000 users, but 
            the list of sub groups that belong to a group (and/or users) must be no 
            more than 1000.</p>
        <p>You can download this 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/samples/group_members.zip\">example 
                S3 file</a> that uses the correct format for listing group members. Note, 
            <code>dataSourceId</code> is optional. The value of <code>type</code> 
            for a group is always <code>GROUP</code> and for a user it is 
            always <code>USER</code>.</p>")
  @as("S3PathforGroupMembers")
  s3PathforGroupMembers: option<s3Path>,
  @ocaml.doc("<p>A list of users that belong to a group. For example, a list of interns 
            all belong to the \"Interns\" group.</p>")
  @as("MemberUsers")
  memberUsers: option<memberUsers>,
  @ocaml.doc("<p>A list of sub groups that belong to a group. For example, the sub 
            groups \"Research\", \"Engineering\", and \"Sales and Marketing\" all belong 
            to the group \"Company\".</p>")
  @as("MemberGroups")
  memberGroups: option<memberGroups>,
}
@ocaml.doc("<p>Provides the configuration information to connect to 
            Google Drive as your data source.</p>")
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
  @ocaml.doc("<p>Maps Google Drive data source attributes or field names to Amazon Kendra index 
            field names. To create custom fields, use the <code>UpdateIndex</code> API before 
            you map to Google Drive fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Google Drive data source field names must exist in your Google Drive custom metadata.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>A list of regular expression patterns to exclude certain items in your 
            Google Drive, including shared drives and users' My Drives. Items that 
            match the patterns are excluded from the index. Items that
            don't match the patterns are included in the index. If an item matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            item isn't included in the index.</p>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns to include certain items in your 
            Google Drive, including shared drives and users' My Drives. Items that 
            match the patterns are included in the index. Items that
            don't match the patterns are excluded from the index. If an item matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            item isn't included in the index.</p>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a Secrets Managersecret
            that contains the credentials required to connect to Google Drive.
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/data-source-google-drive.html\">Using a Google Workspace Drive data
                source</a>.</p>")
  @as("SecretArn")
  secretArn: secretArn,
}
@ocaml.doc("<p>Provides the configuration information to connect to Amazon FSx as 
            your data source.</p>")
type fsxConfiguration = {
  @ocaml.doc("<p>A list of <code>DataSourceToIndexFieldMapping</code> objects that 
            map Amazon FSx data source attributes or field names to Amazon Kendra 
            index field names. To create custom fields, use the 
            <code>UpdateIndex</code> API before you map to Amazon FSx fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping 
                data source fields</a>. The Amazon FSx data source field names 
            must exist in your Amazon FSx custom metadata.</p>")
  @as("FieldMappings")
  fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @ocaml.doc("<p>A list of regular expression patterns to exclude certain files 
            in your Amazon FSx file system. Files that match the patterns 
            are excluded from the index. Files that don't match the patterns are 
            included in the index. If a file matches both an inclusion and exclusion 
            pattern, the exclusion pattern takes precedence and the file isn't included 
            in the index.</p>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns to include certain files 
            in your Amazon FSx file system. Files that match the patterns 
            are included in the index. Files that don't match the patterns are 
            excluded from the index. If a file matches both an inclusion and 
            exclusion pattern, the exclusion pattern takes precedence and the file 
            isn't included in the index.</p>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Secrets Manager secret that 
            contains the key-value pairs required to connect to your Amazon FSx 
            file system. Windows is currently the only supported type. The secret must 
            contain a JSON structure with the following keys:</p>
        <ul>
            <li>
                <p>username—The Active Directory user name, along with the 
                    Domain Name System (DNS) domain name. For example, 
                    <i>user@corp.example.com</i>. The Active Directory 
                    user account must have read and mounting access to the 
                    Amazon FSx file system for Windows.</p>
            </li>
            <li>
                <p>password—The password of the Active Directory user account with 
                    read and mounting access to the Amazon FSx Windows file system.</p>
            </li>
         </ul>")
  @as("SecretArn")
  secretArn: option<secretArn>,
  @ocaml.doc("<p>Configuration information for an Amazon Virtual Private Cloud to connect 
            to your Amazon FSx. Your Amazon FSx 
            instance must reside inside your VPC.</p>")
  @as("VpcConfiguration")
  vpcConfiguration: dataSourceVpcConfiguration,
  @ocaml.doc("<p>The Amazon FSx file system type. Windows is currently the only 
            supported type.</p>")
  @as("FileSystemType")
  fileSystemType: fsxFileSystemType,
  @ocaml.doc("<p>The identifier of the Amazon FSx file system.</p>
        <p>You can find your file system ID on the file system dashboard in 
            the Amazon FSx console. For information on how to create a 
            file system in Amazon FSx console, using Windows File Server 
            as an example, see <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/getting-started-step1.html\">Amazon FSx 
                Getting started guide</a>.</p>")
  @as("FileSystemId")
  fileSystemId: fileSystemId,
}
@ocaml.doc("<p>Summary information for your Amazon Kendra experience. You can create an Amazon Kendra 
            experience such as a search application. For more information on creating 
            a search application experience, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html\">Building 
                a search experience with no code</a>.</p>")
type experiencesSummary = {
  @ocaml.doc("<p>The endpoint URLs for your Amazon Kendra experiences. The URLs are unique 
            and fully hosted by Amazon Web Services.</p>")
  @as("Endpoints")
  endpoints: option<experienceEndpoints>,
  @ocaml.doc("<p>The processing status of your Amazon Kendra experience.</p>") @as("Status")
  status: option<experienceStatus>,
  @ocaml.doc("<p>The date-time your Amazon Kendra experience was created.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The identifier of your Amazon Kendra experience.</p>") @as("Id")
  id: option<experienceId>,
  @ocaml.doc("<p>The name of your Amazon Kendra experience.</p>") @as("Name")
  name: option<experienceName>,
}
type experienceEntitiesSummaryList = array<experienceEntitiesSummary>
@ocaml.doc("<p>Provides the configuration information for your Amazon Kendra experience. This includes 
            the data source IDs and/or FAQ IDs, and user or group information to grant access 
            to your Amazon Kendra experience.</p>")
type experienceConfiguration = {
  @ocaml.doc("<p>The Amazon Web Services SSO field name that contains the identifiers of your users, 
            such as their emails.</p>")
  @as("UserIdentityConfiguration")
  userIdentityConfiguration: option<userIdentityConfiguration>,
  @ocaml.doc("<p>The identifiers of your data sources and FAQs. Or, you can specify 
            that you want to use documents indexed via the <code>BatchPutDocument</code> 
            API. This is the content you want to use for your Amazon Kendra experience.</p>")
  @as("ContentSourceConfiguration")
  contentSourceConfiguration: option<contentSourceConfiguration>,
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
@ocaml.doc("<p>The target document attribute or metadata field you want to alter when ingesting
            documents into Amazon Kendra.</p>
        <p>For example, you can delete customer identification numbers associated with the
            documents, stored in the document metadata field called 'Customer_ID'. You set the
            target key as 'Customer_ID' and the deletion flag to <code>TRUE</code>. This
            removes all customer ID values in the field 'Customer_ID'. This would scrub 
            personally identifiable information from each document's metadata.</p>
        <p>Amazon Kendra cannot create a target field if it has not already been created as an 
            index field. After you create your index field, you can create a document metadata 
            field using <code>DocumentAttributeTarget</code>. Amazon Kendra then will map your newly 
            created metadata field to your index field.</p>
        <p>You can also use this with <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_DocumentAttributeCondition.html\">DocumentAttributeCondition</a>.</p>")
type documentAttributeTarget = {
  @ocaml.doc("<p>The target value you want to create for the target attribute.</p>
        <p>For example, 'Finance' could be the target value for the target attribute key
            'Department'.</p>")
  @as("TargetDocumentAttributeValue")
  targetDocumentAttributeValue: option<documentAttributeValue>,
  @ocaml.doc("<p>
            <code>TRUE</code> to delete the existing target value for your specified target 
            attribute key. You cannot create a target value and set this to <code>TRUE</code>. 
            To create a target value (<code>TargetDocumentAttributeValue</code>), set this to 
            <code>FALSE</code>.</p>")
  @as("TargetDocumentAttributeValueDeletion")
  targetDocumentAttributeValueDeletion: option<boolean_>,
  @ocaml.doc("<p>The identifier of the target document attribute or metadata field.</p>
        <p>For example, 'Department' could be an identifier for the target attribute or 
            metadata field that includes the department names associated with the documents.</p>")
  @as("TargetDocumentAttributeKey")
  targetDocumentAttributeKey: option<documentAttributeKey>,
}
@ocaml.doc("<p>The condition used for the target document attribute or metadata field when 
            ingesting documents into Amazon Kendra. You use this with <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_DocumentAttributeTarget.html\">DocumentAttributeTarget 
                to apply the condition</a>.</p>
        <p>For example, you can create the 'Department' target field and have it prefill 
            department names associated with the documents based on information in the 
            'Source_URI' field. Set the condition that if the 'Source_URI' field contains 
            'financial' in its URI value, then prefill the target field 'Department' with 
            the target value 'Finance' for the document.</p>
        <p>Amazon Kendra cannot create a target field if it has not already been created as an 
            index field. After you create your index field, you can create a document metadata 
            field using <code>DocumentAttributeTarget</code>. Amazon Kendra then will map your newly 
            created metadata field to your index field.</p>")
type documentAttributeCondition = {
  @ocaml.doc("<p>The value used by the operator.</p>
        <p>For example, you can specify the value 'financial' for strings in the 'Source_URI'
            field that partially match or contain this value.</p>")
  @as("ConditionOnValue")
  conditionOnValue: option<documentAttributeValue>,
  @ocaml.doc("<p>The condition operator.</p>
        <p>For example, you can use 'Contains' to partially match a string.</p>")
  @as("Operator")
  operator: conditionOperator,
  @ocaml.doc("<p>The identifier of the document attribute used for the condition.</p>
        <p>For example, 'Source_URI' could be an identifier for the attribute or metadata 
            field that contains source URIs associated with the documents.</p>
        <p>Amazon Kendra currently does not support <code>_document_body</code> as an attribute 
            key used for the condition.</p>")
  @as("ConditionDocumentAttributeKey")
  conditionDocumentAttributeKey: documentAttributeKey,
}
@ocaml.doc("<p>A custom attribute value assigned to a document.</p>
        <p>For more information on how to create custom document attributes, see 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/custom-attributes.html\">Custom 
                Attributes</a>.</p>")
type documentAttribute = {
  @ocaml.doc("<p>The value of the attribute.</p>") @as("Value") value: documentAttributeValue,
  @ocaml.doc("<p>The identifier for the attribute.</p>") @as("Key") key: documentAttributeKey,
}
type dataSourceSyncJobHistoryList = array<dataSourceSyncJob>
@ocaml.doc("<p>Configuration information for indexing Confluence spaces.</p>")
type confluenceSpaceConfiguration = {
  @ocaml.doc("<p>Maps attributes or field names of Confluence spaces to Amazon Kendra index field 
            names. To create custom fields, use the <code>UpdateIndex</code> API before 
            you map to Confluence fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Confluence data source field names must exist in your Confluence custom metadata.</p>
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
@ocaml.doc("<p>Configuration of the page settings for the Confluence data source.</p>")
type confluencePageConfiguration = {
  @ocaml.doc("<p>>Maps attributes or field names of Confluence pages to Amazon Kendra index field 
            names. To create custom fields, use the <code>UpdateIndex</code> API before 
            you map to Confluence fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Confluence data source field names must exist in your Confluence custom metadata.</p>
        <p>If you specify the <code>PageFieldMappings</code> parameter, you
            must specify at least one field mapping.</p>")
  @as("PageFieldMappings")
  pageFieldMappings: option<confluencePageFieldMappingsList>,
}
@ocaml.doc("<p>Configuration of blog settings for the Confluence data source. Blogs
            are always indexed unless filtered from the index by the
                <code>ExclusionPatterns</code> or <code>InclusionPatterns</code>
            fields in the <code>ConfluenceConfiguration</code> object.</p>")
type confluenceBlogConfiguration = {
  @ocaml.doc("<p>Maps attributes or field names of Confluence blogs to Amazon Kendra index field 
            names. To create custom fields, use the <code>UpdateIndex</code> API before 
            you map to Confluence fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Confluence data source field names must exist in your Confluence custom metadata.</p>
        <p>If you specify the <code>BlogFieldMappings</code> parameter, you
            must specify at least one field mapping.</p>")
  @as("BlogFieldMappings")
  blogFieldMappings: option<confluenceBlogFieldMappingsList>,
}
@ocaml.doc("<p>Configuration of attachment settings for the Confluence data source.
            Attachment settings are optional, if you don't specify settings
            attachments, Amazon Kendra won't index them.</p>")
type confluenceAttachmentConfiguration = {
  @ocaml.doc("<p>Maps attributes or field names of Confluence attachments to Amazon Kendra index field 
            names. To create custom fields, use the <code>UpdateIndex</code> API before 
            you map to Confluence fields. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html\">Mapping data source fields</a>. 
            The Confluence data source field names must exist in your Confluence custom metadata.</p>
        <p>If you specify the <code>AttachentFieldMappings</code> parameter, you must specify 
            at least one field mapping.</p>")
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
            in the index using the <code>UpdateIndex</code> API.</p>")
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
@ocaml.doc("<p>Provides the configuration information to connect to websites that require
            user authentication.</p>")
type authenticationConfiguration = {
  @ocaml.doc("<p>The list of configuration information that's required to connect to and 
            crawl a website host using basic authentication credentials.</p>
        <p>The list includes the name and port number of the website host.</p>")
  @as("BasicAuthentication")
  basicAuthentication: option<basicAuthenticationConfigurationList>,
}
@ocaml.doc("<p>Provides the configuration information required for Amazon Kendra 
            Web Crawler.</p>")
type webCrawlerConfiguration = {
  @ocaml.doc("<p>Configuration information required to connect to websites using 
            authentication.</p>
        <p>You can connect to websites using basic authentication of user name and password.</p>
        <p>You must provide the website host name and port number. For example, the host name 
            of https://a.example.com/page1.html is \"a.example.com\" and the port is 443, the 
            standard port for HTTPS. You use a secret in <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\">Secrets Manager</a> to store 
            your authentication credentials.</p>")
  @as("AuthenticationConfiguration")
  authenticationConfiguration: option<authenticationConfiguration>,
  @ocaml.doc("<p>Configuration information required to connect to your internal 
            websites via a web proxy.</p>
        <p>You must provide the website host name and port number. For example, the 
            host name of https://a.example.com/page1.html is \"a.example.com\" and the 
            port is 443, the standard port for HTTPS.</p>
        <p>Web proxy credentials are optional and you can use them to connect to a 
            web proxy server that requires basic authentication. To store web proxy 
            credentials, you use a secret in <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html\">Secrets Manager</a>.</p>")
  @as("ProxyConfiguration")
  proxyConfiguration: option<proxyConfiguration>,
  @ocaml.doc("<p>A list of regular expression patterns to exclude certain URLs to crawl. URLs 
            that match the patterns are excluded from the index. URLs that
            don't match the patterns are included in the index. If a URL matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            URL file isn't included in the index.</p>")
  @as("UrlExclusionPatterns")
  urlExclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns to include certain URLs to crawl. URLs 
            that match the patterns are included in the index. URLs that
            don't match the patterns are excluded from the index. If a URL matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            URL file isn't included in the index.</p>")
  @as("UrlInclusionPatterns")
  urlInclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>The maximum number of URLs crawled per website host per minute.</p>
        <p>A minimum of one URL is required.</p>
        <p>The default maximum number of URLs crawled per website host per minute is 300.</p>")
  @as("MaxUrlsPerMinuteCrawlRate")
  maxUrlsPerMinuteCrawlRate: option<maxUrlsPerMinuteCrawlRate>,
  @ocaml.doc("<p>The maximum size (in MB) of a webpage or attachment to crawl.</p>
        <p>Files larger than this size (in MB) are skipped/not crawled.</p>
        <p>The default maximum size of a webpage or attachment is set to 50 MB.</p>")
  @as("MaxContentSizePerPageInMegaBytes")
  maxContentSizePerPageInMegaBytes: option<maxContentSizePerPageInMegaBytes>,
  @ocaml.doc("<p>The maximum number of URLs on a webpage to include when crawling a website. 
            This number is per webpage.</p>
            <p>As a website’s webpages are crawled, any URLs the webpages link to are
                also crawled. URLs on a webpage are crawled in order of appearance.</p>
        <p>The default maximum links per page is 100.</p>")
  @as("MaxLinksPerPage")
  maxLinksPerPage: option<maxLinksPerPage>,
  @ocaml.doc("<p>Specifies the number of levels in a website that you want to crawl.</p>
        <p>The first level begins from the website seed or starting point URL. 
            For example, if a website has 3 levels – index level (i.e. seed in this 
            example), sections level, and subsections level – and you are only 
            interested in crawling information up to the sections level (i.e. 
            levels 0-1), you can set your depth to 1.</p>
        <p>The default crawl depth is set to 2.</p>")
  @as("CrawlDepth")
  crawlDepth: option<crawlDepth>,
  @ocaml.doc("<p>Specifies the seed or starting point URLs of the 
            websites or the sitemap URLs of the websites you want to crawl.</p>
        <p>You can include website subdomains. You can list up to 100 seed 
            URLs and up to three sitemap URLs.</p>
        <p>You can only crawl websites that use the secure communication protocol, 
            Hypertext Transfer Protocol Secure (HTTPS). If you receive an error when 
            crawling a website, it could be that the website is blocked from crawling.</p>
        <p>
            <i>When selecting websites to index, you must adhere to 
            the <a href=\"https://aws.amazon.com/aup/\">Amazon Acceptable Use Policy</a> 
            and all other Amazon terms. Remember that you must only use Amazon Kendra 
            Web Crawler to index your own webpages, or webpages that you have 
            authorization to index.</i>
         </p>")
  @as("Urls")
  urls: urls,
}
@ocaml.doc("<p>The <code>SuggestionTextWithHighlights</code> structure information.</p>")
type suggestionValue = {
  @ocaml.doc("<p>The <code>SuggestionTextWithHighlights</code> structure that contains 
            the query suggestion text and highlights.</p>")
  @as("Text")
  text: option<suggestionTextWithHighlights>,
}
type spellCorrectedQueryList = array<spellCorrectedQuery>
@ocaml.doc("<p>Provides the configuration information to connect to 
            ServiceNow as your data source.</p>")
type serviceNowConfiguration = {
  @ocaml.doc("<p>The type of authentication used to connect to the
            ServiceNow instance. If you choose <code>HTTP_BASIC</code>, Amazon Kendra is
            authenticated using the user name and password provided in the 
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
  @ocaml.doc("<p>Configuration information for crawling service catalogs
            in the ServiceNow site.</p>")
  @as("ServiceCatalogConfiguration")
  serviceCatalogConfiguration: option<serviceNowServiceCatalogConfiguration>,
  @ocaml.doc("<p>Configuration information for crawling knowledge articles
            in the ServiceNow site.</p>")
  @as("KnowledgeArticleConfiguration")
  knowledgeArticleConfiguration: option<serviceNowKnowledgeArticleConfiguration>,
  @ocaml.doc("<p>The identifier of the release that the ServiceNow host is running.
            If the host is not running the <code>LONDON</code> release, use
                <code>OTHERS</code>.</p>")
  @as("ServiceNowBuildVersion")
  serviceNowBuildVersion: serviceNowBuildVersionType,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Secrets Manager secret
            that contains the user name and password required to connect to the
            ServiceNow instance.</p>")
  @as("SecretArn")
  secretArn: secretArn,
  @ocaml.doc("<p>The ServiceNow instance that the data source connects to. The host
            endpoint should look like the following:
                <i>{instance}.service-now.com.</i>
         </p>")
  @as("HostUrl")
  hostUrl: serviceNowHostUrl,
}
type salesforceStandardObjectConfigurationList = array<salesforceStandardObjectConfiguration>
type salesforceCustomKnowledgeArticleTypeConfigurationList = array<
  salesforceCustomKnowledgeArticleTypeConfiguration,
>
@ocaml.doc("<p>Provides the configuration information for applying basic logic to alter document
            metadata and content when ingesting documents into Amazon Kendra. To apply advanced 
            logic, to go beyond what you can do with basic logic, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_HookConfiguration.html\">HookConfiguration</a>.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html\">Customizing document metadata
                during the ingestion process</a>.</p>")
type inlineCustomDocumentEnrichmentConfiguration = {
  @ocaml.doc("<p>
            <code>TRUE</code> to delete content if the condition used for the target 
            attribute is met.</p>")
  @as("DocumentContentDeletion")
  documentContentDeletion: option<boolean_>,
  @ocaml.doc("<p>Configuration of the target document attribute or metadata field when ingesting
            documents into Amazon Kendra. You can also include a value.</p>")
  @as("Target")
  target: option<documentAttributeTarget>,
  @ocaml.doc("<p>Configuration of the condition used for the target document attribute or metadata
            field when ingesting documents into Amazon Kendra.</p>")
  @as("Condition")
  condition: option<documentAttributeCondition>,
}
@ocaml.doc("<p>Provides the configuration information for invoking a Lambda function in 
            Lambda to alter document metadata and content when ingesting 
            documents into Amazon Kendra. You can configure your Lambda function using 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_CustomDocumentEnrichmentConfiguration.html\">PreExtractionHookConfiguration</a> 
            if you want to apply advanced alterations on the original or raw documents. 
            If you want to apply advanced alterations on the Amazon Kendra structured documents, 
            you must configure your Lambda function using <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_CustomDocumentEnrichmentConfiguration.html\">PostExtractionHookConfiguration</a>. 
            You can only invoke one Lambda function. However, this function can invoke other 
            functions it requires.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html\">Customizing document metadata
                during the ingestion process</a>.</p>")
type hookConfiguration = {
  @ocaml.doc("<p>Stores the original, raw documents or the structured, parsed
            documents before and after altering them. For more information, 
            see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#cde-data-contracts-lambda\">Data 
                contracts for Lambda functions</a>.</p>")
  @as("S3Bucket")
  s3Bucket: s3BucketName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a role with permission to run a Lambda function
            during ingestion. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html\">IAM roles for Amazon Kendra</a>.</p>")
  @as("LambdaArn")
  lambdaArn: lambdaArn,
  @ocaml.doc("<p>The condition used for when a Lambda function should be invoked.</p>
        <p>For example, you can specify a condition that if there are empty date-time
            values, then Amazon Kendra should invoke a function that inserts the current date-time.</p>")
  @as("InvocationCondition")
  invocationCondition: option<documentAttributeCondition>,
}
@ocaml.doc("<p>A list of <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html\">principal</a> lists 
            that define the hierarchy for which documents users should have access to. 
            Each hierarchical list specifies which user or group has allow or deny 
            access for each document.</p>")
type hierarchicalPrincipalList = array<hierarchicalPrincipal>
type experiencesSummaryList = array<experiencesSummary>
type documentRelevanceOverrideConfigurationList = array<documentRelevanceConfiguration>
type documentMetadataConfigurationList = array<documentMetadataConfiguration>
type documentAttributeValueCountPairList = array<documentAttributeValueCountPair>
type documentAttributeList = array<documentAttribute>
@ocaml.doc("<p>Provides the configuration information to connect to a 
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
  @ocaml.doc("<p>Configuration information that's required to connect to a database.</p>")
  @as("ConnectionConfiguration")
  connectionConfiguration: connectionConfiguration,
  @ocaml.doc("<p>The type of database engine that runs the database.</p>") @as("DatabaseEngineType")
  databaseEngineType: databaseEngineType,
}
@ocaml.doc("<p>Provides the configuration information to connect to Confluence 
            as your data source.</p>")
type confluenceConfiguration = {
  @ocaml.doc("<p>>A list of regular expression patterns to exclude certain blog posts, pages,
            spaces, or attachments in your Confluence. Content that matches the patterns are 
            excluded from the index. Content that doesn't match the patterns is included in 
            the index. If content matches both an inclusion and exclusion pattern, the 
            exclusion pattern takes precedence and the content isn't included in the index.</p>")
  @as("ExclusionPatterns")
  exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns to include certain blog posts, pages,
            spaces, or attachments in your Confluence. Content that matches the patterns are 
            included in the index. Content that doesn't match the patterns is excluded from 
            the index. If content matches both an inclusion and exclusion pattern, the 
            exclusion pattern takes precedence and the content isn't included in the index.</p>")
  @as("InclusionPatterns")
  inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>Configuration information for an Amazon Virtual Private Cloud to connect to your Confluence. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html\">Configuring a VPC</a>.</p>")
  @as("VpcConfiguration")
  vpcConfiguration: option<dataSourceVpcConfiguration>,
  @ocaml.doc("<p>Configuration information for indexing attachments to
            Confluence blogs and pages.</p>")
  @as("AttachmentConfiguration")
  attachmentConfiguration: option<confluenceAttachmentConfiguration>,
  @ocaml.doc("<p>Configuration information for indexing Confluence blogs.</p>")
  @as("BlogConfiguration")
  blogConfiguration: option<confluenceBlogConfiguration>,
  @ocaml.doc("<p>Configuration information for indexing Confluence pages.</p>")
  @as("PageConfiguration")
  pageConfiguration: option<confluencePageConfiguration>,
  @ocaml.doc("<p>Configuration information for indexing Confluence spaces.</p>")
  @as("SpaceConfiguration")
  spaceConfiguration: option<confluenceSpaceConfiguration>,
  @ocaml.doc("<p>Specifies the version of the Confluence installation that you are
            connecting to.</p>")
  @as("Version")
  version: confluenceVersion,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Secrets Manager secret
            that contains the key-value pairs required to connect to your
            Confluence server. The secret must contain a JSON structure with the
            following keys:</p>
        <ul>
            <li>
                <p>username—The user name or email address of a user with
                    administrative privileges for the Confluence server.</p>
            </li>
            <li>
                <p>password—The password associated with the user logging
                    in to the Confluence server.</p>
            </li>
         </ul>")
  @as("SecretArn")
  secretArn: secretArn,
  @ocaml.doc("<p>The URL of your Confluence instance. Use the full URL of the
            server. For example, <i>https://server.example.com:port/</i>.
            You can also use an IP address, for example,
                <i>https://192.168.1.113/</i>.</p>")
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
@ocaml.doc("<p>Provides the configuration information for the knowledge article
            types that Amazon Kendra indexes. Amazon Kendra indexes standard knowledge
            articles and the standard fields of knowledge articles, or the
            custom fields of custom knowledge articles, but not both </p>")
type salesforceKnowledgeArticleConfiguration = {
  @ocaml.doc("<p>Configuration information for custom Salesforce knowledge
            articles.</p>")
  @as("CustomKnowledgeArticleTypeConfigurations")
  customKnowledgeArticleTypeConfigurations: option<
    salesforceCustomKnowledgeArticleTypeConfigurationList,
  >,
  @ocaml.doc("<p>Configuration information for standard Salesforce
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
type inlineCustomDocumentEnrichmentConfigurationList = array<
  inlineCustomDocumentEnrichmentConfiguration,
>
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
@ocaml.doc("<p>Identifies a document for which to retrieve status
            information</p>")
type documentInfo = {
  @ocaml.doc("<p>Attributes that identify a specific version of a document to
            check.</p>
        <p>The only valid attributes are:</p>
        <ul>
            <li>
                <p>version</p>
            </li>
            <li>
                <p>datasourceId</p>
            </li>
            <li>
                <p>jobExecutionId</p>
            </li>
         </ul>
        <p>The attributes follow these rules:</p>
        <ul>
            <li>
                <p>
                  <code>dataSourceId</code> and <code>jobExecutionId</code>
                    must be used together.</p>
            </li>
            <li>
                <p>
                  <code>version</code> is ignored if
                        <code>dataSourceId</code> and
                        <code>jobExecutionId</code> are not provided.</p>
            </li>
            <li>
                <p>If <code>dataSourceId</code> and
                        <code>jobExecutionId</code> are provided, but
                        <code>version</code> is not, the version defaults to
                    \"0\".</p>
            </li>
         </ul>")
  @as("Attributes")
  attributes: option<documentAttributeList>,
  @ocaml.doc("<p>The unique identifier of the document.</p>") @as("DocumentId")
  documentId: documentId,
}
@ocaml.doc("<p>A document in an index.</p>")
type document = {
  @ocaml.doc("<p>The file type of the document in the <code>Blob</code>
            field.</p>")
  @as("ContentType")
  contentType: option<contentType>,
  @ocaml.doc("<p>The list of <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html\">principal</a> lists 
            that define the hierarchy for which documents users should have access to.</p>")
  @as("HierarchicalAccessControlList")
  hierarchicalAccessControlList: option<hierarchicalPrincipalList>,
  @ocaml.doc("<p>Information on user and group access rights, which is used for 
            user context filtering.</p>")
  @as("AccessControlList")
  accessControlList: option<principalList>,
  @ocaml.doc("<p>Custom attributes to apply to the document. Use the custom
            attributes to provide additional information for searching, to
            provide facets for refining searches, and to provide additional
            information in the query response.</p>
        <p>For example, 'DataSourceId' and 'DataSourceSyncJobId' are custom 
            attributes that provide information on the synchronization 
            of documents running on a data source. Note, 
            'DataSourceSyncJobId' could be an optional custom attribute 
            as Amazon Kendra will use the ID of a running sync job.</p>")
  @as("Attributes")
  attributes: option<documentAttributeList>,
  @as("S3Path") s3Path: option<s3Path>,
  @ocaml.doc("<p>The contents of the document. </p>
        <p>Documents passed to the <code>Blob</code> parameter must be base64
            encoded. Your code might not need to encode the document file bytes
            if you're using an Amazon Web Services SDK to call Amazon Kendra APIs. If you are
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
@ocaml.doc("<p>Provides the configuration information to connect to Salesforce
            as your data source.</p>")
type salesforceConfiguration = {
  @ocaml.doc("<p>A list of regular expression patterns to exclude certain documents in your Salesforce.
            Documents that match the patterns are excluded from the index. Documents that
            don't match the patterns are included in the index. If a document matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            document isn't included in the index.</p>
        <p>The pattern is applied to the name of the attached file.</p>")
  @as("ExcludeAttachmentFilePatterns")
  excludeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>A list of regular expression patterns to include certain documents in your Salesforce.
            Documents that match the patterns are included in the index. Documents that
            don't match the patterns are excluded from the index. If a document matches both
            an inclusion and exclusion pattern, the exclusion pattern takes precedence and the 
            document isn't included in the index.</p>
        <p>The pattern is applied to the name of the attached file.</p>")
  @as("IncludeAttachmentFilePatterns")
  includeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @ocaml.doc("<p>Configuration information for processing attachments to
            Salesforce standard objects. </p>")
  @as("StandardObjectAttachmentConfiguration")
  standardObjectAttachmentConfiguration: option<salesforceStandardObjectAttachmentConfiguration>,
  @ocaml.doc("<p>Indicates whether Amazon Kendra should index attachments to Salesforce
            objects.</p>")
  @as("CrawlAttachments")
  crawlAttachments: option<boolean_>,
  @ocaml.doc("<p>Configuration information for Salesforce chatter feeds.</p>")
  @as("ChatterFeedConfiguration")
  chatterFeedConfiguration: option<salesforceChatterFeedConfiguration>,
  @ocaml.doc("<p>Configuration information for the knowledge article
            types that Amazon Kendra indexes. Amazon Kendra indexes standard knowledge
            articles and the standard fields of knowledge articles, or the
            custom fields of custom knowledge articles, but not both.</p>")
  @as("KnowledgeArticleConfiguration")
  knowledgeArticleConfiguration: option<salesforceKnowledgeArticleConfiguration>,
  @ocaml.doc("<p>Configuration of the Salesforce standard objects that Amazon Kendra
            indexes.</p>")
  @as("StandardObjectConfigurations")
  standardObjectConfigurations: option<salesforceStandardObjectConfigurationList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Secrets Managersecret
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
type documentInfoList = array<documentInfo>
@ocaml.doc("<p>Provides the configuration information for altering document metadata and content
            during the document ingestion process.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html\">Customizing document metadata
                during the ingestion process</a>.</p>")
type customDocumentEnrichmentConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a role with permission to run 
            <code>PreExtractionHookConfiguration</code> and 
            <code>PostExtractionHookConfiguration</code> for altering document metadata 
            and content during the document ingestion process. For more information, 
            see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html\">IAM roles for
                Amazon Kendra</a>.</p>")
  @as("RoleArn")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>Configuration information for invoking a Lambda function in Lambda 
            on the structured documents with their metadata and text extracted. You can use a 
            Lambda function to apply advanced logic for creating, modifying, or deleting document
            metadata and content. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#advanced-data-manipulation\">Advanced 
                data manipulation</a>.</p>")
  @as("PostExtractionHookConfiguration")
  postExtractionHookConfiguration: option<hookConfiguration>,
  @ocaml.doc("<p>Configuration information for invoking a Lambda function in Lambda 
            on the original or raw documents before extracting their metadata and text. You can 
            use a Lambda function to apply advanced logic for creating, modifying, or deleting
            document metadata and content. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#advanced-data-manipulation\">Advanced 
                data manipulation</a>.</p>")
  @as("PreExtractionHookConfiguration")
  preExtractionHookConfiguration: option<hookConfiguration>,
  @ocaml.doc("<p>Configuration information to alter document attributes or metadata fields and 
            content when ingesting documents into Amazon Kendra.</p>")
  @as("InlineConfigurations")
  inlineConfigurations: option<inlineCustomDocumentEnrichmentConfigurationList>,
}
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
@ocaml.doc("<p>Provides the configuration information for an Amazon Kendra data source.</p>")
type dataSourceConfiguration = {
  @ocaml.doc("<p>Provides the configuration information to connect to Slack as your 
            data source.</p>")
  @as("SlackConfiguration")
  slackConfiguration: option<slackConfiguration>,
  @ocaml.doc("<p>Provides the configuration information to connect to Amazon FSx as 
            your data source.</p>")
  @as("FsxConfiguration")
  fsxConfiguration: option<fsxConfiguration>,
  @ocaml.doc("<p>Provides the configuration information to connect to Amazon WorkDocs 
            as your data source.</p>")
  @as("WorkDocsConfiguration")
  workDocsConfiguration: option<workDocsConfiguration>,
  @as("WebCrawlerConfiguration") webCrawlerConfiguration: option<webCrawlerConfiguration>,
  @ocaml.doc("<p>Provides the configuration information to connect to Google
            Drive as your data source.</p>")
  @as("GoogleDriveConfiguration")
  googleDriveConfiguration: option<googleDriveConfiguration>,
  @ocaml.doc("<p>Provides the configuration information to connect to Confluence 
            as your data source.</p>")
  @as("ConfluenceConfiguration")
  confluenceConfiguration: option<confluenceConfiguration>,
  @ocaml.doc("<p>Provides the configuration information to connect to ServiceNow
            as your data source.</p>")
  @as("ServiceNowConfiguration")
  serviceNowConfiguration: option<serviceNowConfiguration>,
  @ocaml.doc("<p>Provides the configuration information to connect to Microsoft
            OneDrive as your data source.</p>")
  @as("OneDriveConfiguration")
  oneDriveConfiguration: option<oneDriveConfiguration>,
  @ocaml.doc("<p>Provides the configuration information to connect to 
            Salesforce as your data source.</p>")
  @as("SalesforceConfiguration")
  salesforceConfiguration: option<salesforceConfiguration>,
  @ocaml.doc("<p>Provides the configuration information to connect to a database as 
            your data source.</p>")
  @as("DatabaseConfiguration")
  databaseConfiguration: option<databaseConfiguration>,
  @ocaml.doc("<p>Provides the configuration information to connect to Microsoft SharePoint 
            as your data source.</p>")
  @as("SharePointConfiguration")
  sharePointConfiguration: option<sharePointConfiguration>,
  @ocaml.doc("<p>Provides the configuration information to connect to an Amazon S3 
            bucket as your data source.</p>")
  @as("S3Configuration")
  s3Configuration: option<s3DataSourceConfiguration>,
}
type queryResultItemList = array<queryResultItem>
type rec attributeFilter = {
  @ocaml.doc("<p>Performs a less than or equals operation on two document attributes.
         Use with a document attribute of type <code>Date</code> or
            <code>Long</code>.</p>")
  @as("LessThanOrEquals")
  lessThanOrEquals: option<documentAttribute>,
  @ocaml.doc("<p>Performs a less than operation on two document attributes. Use with
         a document attribute of type <code>Date</code> or
         <code>Long</code>.</p>")
  @as("LessThan")
  lessThan: option<documentAttribute>,
  @ocaml.doc("<p>Performs a greater or equals than operation on two document
         attributes. Use with a document attribute of type <code>Date</code>
         or <code>Long</code>.</p>")
  @as("GreaterThanOrEquals")
  greaterThanOrEquals: option<documentAttribute>,
  @ocaml.doc("<p>Performs a greater than operation on two document attributes. Use
         with a document attribute of type <code>Date</code> or
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
  type response = {.}
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
  type response = {.}
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
            API.</p>")
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
  type response = {.}
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
  type response = {.}
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "DeleteQuerySuggestionsBlockListCommand"
  let make = (~id, ~indexId, ()) => new({id: id, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePrincipalMapping = {
  type t
  type request = {
    @ocaml.doc("<p>The timestamp identifier you specify to ensure Amazon Kendra does not 
            override the latest <code>DELETE</code> action with previous actions. 
            The highest number ID, which is the ordering ID, is the latest action 
            you want to process and apply on top of other actions with lower number 
            IDs. This prevents previous actions with lower number IDs from possibly 
            overriding the latest action.</p>
        <p>The ordering ID can be the UNIX time of the last update you made to a group 
            members list. You would then provide this list when calling 
            <code>PutPrincipalMapping</code>. This ensures your <code>DELETE</code> action 
            for that updated group with the latest members list doesn't get overwritten 
            by earlier <code>DELETE</code> actions for the same group which are yet to 
            be processed.</p>
        <p>The default ordering ID is the current UNIX time in milliseconds that the 
            action was received by Amazon Kendra.
        </p>")
    @as("OrderingId")
    orderingId: option<principalOrderingId>,
    @ocaml.doc("<p>The identifier of the group you want to delete.</p>") @as("GroupId")
    groupId: groupId,
    @ocaml.doc("<p>The identifier of the data source you want to delete a group from.</p>
        <p>This is useful if a group is tied to multiple data sources and you want 
            to delete a group from accessing documents in a certain data source. For example, 
            the groups \"Research\", \"Engineering\", and \"Sales and Marketing\" are all tied to 
            the company's documents stored in the data sources Confluence and Salesforce. 
            You want to delete \"Research\" and \"Engineering\" groups from Salesforce, so that
            these groups cannot access customer-related documents stored in Salesforce. 
            Only \"Sales and Marketing\" should access documents in the Salesforce data source.</p>")
    @as("DataSourceId")
    dataSourceId: option<dataSourceId>,
    @ocaml.doc("<p>The identifier of the index you want to delete a group from.</p>") @as("IndexId")
    indexId: indexId,
  }
  type response = {.}
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "DeletePrincipalMappingCommand"
  let make = (~groupId, ~indexId, ~orderingId=?, ~dataSourceId=?, ()) =>
    new({orderingId: orderingId, groupId: groupId, dataSourceId: dataSourceId, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIndex = {
  type t
  type request = {@ocaml.doc("<p>The identifier of the index to delete.</p>") @as("Id") id: indexId}
  type response = {.}
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
  type response = {.}
  @module("@aws-sdk/client-kendra") @new external new: request => t = "DeleteFaqCommand"
  let make = (~indexId, ~id, ()) => new({indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteExperience = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier of the index for your Amazon Kendra experience you want to delete.</p>"
    )
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of your Amazon Kendra experience you want to delete.</p>")
    @as("Id")
    id: experienceId,
  }
  type response = {.}
  @module("@aws-sdk/client-kendra") @new external new: request => t = "DeleteExperienceCommand"
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
  type response = {.}
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
  type response = {.}
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
  type response = {.}
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
  type response = {.}
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
  type response = {.}
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
    @ocaml.doc("<p>An IAM role that gives Amazon Kendra permissions 
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
    @ocaml.doc("<p>Shows the date-time a block list for query suggestions was created.</p>")
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
    @ocaml.doc("<p>The code for a language. This shows a supported language 
            for the FAQ document. English is supported by default.  
            For more information on supported languages, including their codes, 
            see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html\">Adding 
                documents in languages other than English</a>.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
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
  type response = {.}
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
                <code>Query</code> API.</p>")
    @as("QueryId")
    queryId: queryId,
    @ocaml.doc("<p>The identifier of the index that was queried.</p>") @as("IndexId")
    indexId: indexId,
  }
  type response = {.}
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
    @ocaml.doc("<p>An array of summary information for a thesaurus or multiple thesauri.</p>")
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
    @ocaml.doc(
      "<p>An array of summary information on the configuration of one or more indexes.</p>"
    )
    @as("IndexConfigurationSummaryItems")
    indexConfigurationSummaryItems: option<indexConfigurationSummaryList>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "ListIndicesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroupsOlderThanOrderingId = {
  type t
  type request = {
    @ocaml.doc("<p>
            The maximum number of returned groups that are mapped to users before a 
            given ordering or timestamp identifier. 
        </p>")
    @as("MaxResults")
    maxResults: option<maxResultsIntegerForListPrincipalsRequest>,
    @ocaml.doc("<p>
            If the previous response was incomplete (because there is more data to retrieve), 
            Amazon Kendra returns a pagination token in the response. You can use this pagination 
            token to retrieve the next set of groups that are mapped to users before a 
            given ordering or timestamp identifier.
        </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The timestamp identifier used for the latest <code>PUT</code> or 
            <code>DELETE</code> action for mapping users to their groups.</p>")
    @as("OrderingId")
    orderingId: principalOrderingId,
    @ocaml.doc("<p>The identifier of the data source for getting a list of groups mapped 
            to users before a given ordering timestamp identifier.</p>")
    @as("DataSourceId")
    dataSourceId: option<dataSourceId>,
    @ocaml.doc("<p>The identifier of the index for getting a list of groups mapped 
            to users before a given ordering or timestamp identifier.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>
            If the response is truncated, Amazon Kendra returns this token that you can use 
            in the subsequent request to retrieve the next set of groups that are 
            mapped to users before a given ordering or timestamp identifier.
        </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            Summary information for list of groups that are mapped to users before a 
            given ordering or timestamp identifier.
        </p>")
    @as("GroupsSummaries")
    groupsSummaries: option<listOfGroupSummaries>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "ListGroupsOlderThanOrderingIdCommand"
  let make = (~orderingId, ~indexId, ~maxResults=?, ~nextToken=?, ~dataSourceId=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      orderingId: orderingId,
      dataSourceId: dataSourceId,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFaqs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of FAQs to return in the response. If there are fewer results in
            the list, this response contains only the actual results.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsIntegerForListFaqsRequest>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve), 
            Amazon Kendra returns a pagination token in the response. You can use this pagination token 
            to retrieve the next set of FAQs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The index that contains the FAQ lists.</p>") @as("IndexId") indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>information about the FAQs associated with the specified index.</p>")
    @as("FaqSummaryItems")
    faqSummaryItems: option<faqSummaryItems>,
    @ocaml.doc("<p>If the response is truncated, Amazon Kendra returns this token that you can use 
            in the subsequent request to retrieve the next set of FAQs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "ListFaqsCommand"
  let make = (~indexId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEntityPersonas = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of returned users or groups.</p>") @as("MaxResults")
    maxResults: option<maxResultsIntegerForListEntityPersonasRequest>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve),
            Amazon Kendra returns a pagination token in the response. You can use this pagination 
            token to retrieve the next set of users or groups.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the index for your Amazon Kendra experience.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of your Amazon Kendra experience.</p>") @as("Id")
    id: experienceId,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Kendra returns this token, which you can use in 
            a later request to retrieve the next set of users or groups.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of summary information for one or more users or groups.</p>")
    @as("SummaryItems")
    summaryItems: option<personasSummaryList>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "ListEntityPersonasCommand"
  let make = (~indexId, ~id, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, indexId: indexId, id: id})
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

module GetSnapshots = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of returned data for the metric.</p>") @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc("<p>If the previous response was incomplete (because there
            is more data to retrieve), Amazon Kendra returns a pagination token in 
            the response. You can use this pagination token to
            retrieve the next set of search metrics data.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The metric you want to retrieve. You
            can specify only one metric per call.</p>
        <p>For more information about the metrics you can view, see 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/search-analytics.html\">Gaining 
                insights with search analytics</a>.</p>")
    @as("MetricType")
    metricType: metricType,
    @ocaml.doc("<p>The time interval or time window to get search metrics data. 
            The time interval uses the time zone of your index. 
            You can view data in the following time windows:</p>
        <ul>
            <li>
                <p>
                  <code>THIS_WEEK</code>: The current week, starting on 
                    the Sunday and ending on the day before the current date.</p>
            </li>
            <li>
                <p>
                  <code>ONE_WEEK_AGO</code>: The previous week, starting on 
                    the Sunday and ending on the following Saturday.</p>
            </li>
            <li>
                <p>
                  <code>TWO_WEEKS_AGO</code>: The week before the previous week, 
                    starting on the Sunday and ending on the following Saturday.</p>
            </li>
            <li>
                <p>
                  <code>THIS_MONTH</code>: The current month, starting on the 
                    first day of the month and ending on the day before the current date.</p>
            </li>
            <li>
                <p>
                  <code>ONE_MONTH_AGO</code>: The previous month, starting on the 
                    first day of the month and ending on the last day of the month.</p>
            </li>
            <li>
                <p>
                  <code>TWO_MONTHS_AGO</code>: The month before the previous month, 
                    starting on the first day of the month and ending on last day of the month.</p>
            </li>
         </ul>")
    @as("Interval")
    interval: interval,
    @ocaml.doc("<p>The identifier of the index to get search metrics data.</p>") @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Kendra returns this
            token, which you can use in a later request to retrieve the 
            next set of search metrics data.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The search metrics data. The data returned depends on the 
            metric type you requested.</p>")
    @as("SnapshotsData")
    snapshotsData: option<snapshotsDataRecords>,
    @ocaml.doc("<p>The column headers for the search metrics data.</p>") @as("SnapshotsDataHeader")
    snapshotsDataHeader: option<snapshotsDataHeaderFields>,
    @ocaml.doc("<p>The date-time for the beginning and end of the time window 
            for the search metrics data.</p>")
    @as("SnapShotTimeFilter")
    snapShotTimeFilter: option<timeRange>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "GetSnapshotsCommand"
  let make = (~metricType, ~interval, ~indexId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      metricType: metricType,
      interval: interval,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociatePersonasFromEntities = {
  type t
  type request = {
    @ocaml.doc("<p>The identifiers of users or groups in your Amazon Web Services SSO identity 
            source. For example, user IDs could be user emails.</p>")
    @as("EntityIds")
    entityIds: entityIdsList,
    @ocaml.doc("<p>The identifier of the index for your Amazon Kendra experience.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of your Amazon Kendra experience.</p>") @as("Id")
    id: experienceId,
  }
  type response = {
    @ocaml.doc("<p>Lists the users or groups in your Amazon Web Services SSO identity source that 
            failed to properly remove access to your Amazon Kendra experience.</p>")
    @as("FailedEntityList")
    failedEntityList: option<failedEntityList>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "DisassociatePersonasFromEntitiesCommand"
  let make = (~entityIds, ~indexId, ~id, ()) =>
    new({entityIds: entityIds, indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateEntitiesFromExperience = {
  type t
  type request = {
    @ocaml.doc("<p>Lists users or groups in your Amazon Web Services SSO identity source.</p>")
    @as("EntityList")
    entityList: disassociateEntityList,
    @ocaml.doc("<p>The identifier of the index for your Amazon Kendra experience.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of your Amazon Kendra experience.</p>") @as("Id")
    id: experienceId,
  }
  type response = {
    @ocaml.doc("<p>Lists the users or groups in your Amazon Web Services SSO identity source that 
            failed to properly remove access to your Amazon Kendra experience.</p>")
    @as("FailedEntityList")
    failedEntityList: option<failedEntityList>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "DisassociateEntitiesFromExperienceCommand"
  let make = (~entityList, ~indexId, ~id, ()) =>
    new({entityList: entityList, indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePrincipalMapping = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the group required to check the processing of 
            <code>PUT</code> and <code>DELETE</code> actions for mapping users 
            to their groups.</p>")
    @as("GroupId")
    groupId: groupId,
    @ocaml.doc("<p>The identifier of the data source to check the processing of 
            <code>PUT</code> and <code>DELETE</code> actions for mapping 
            users to their groups.</p>")
    @as("DataSourceId")
    dataSourceId: option<dataSourceId>,
    @ocaml.doc("<p>The identifier of the index required to check the processing of 
            <code>PUT</code> and <code>DELETE</code> actions for mapping users 
            to their groups.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>Shows the following information on the processing of <code>PUT</code> and 
            <code>DELETE</code> actions for mapping users to their groups:</p>
        <ul>
            <li>
                <p>Status – the status can be either 
                    <code>PROCESSING</code>, <code>SUCCEEDED</code>, <code>DELETING</code>, 
                    <code>DELETED</code>, or <code>FAILED</code>.</p>
            </li>
            <li>
                <p>Last updated – the last date-time an action was updated.</p>
            </li>
            <li>
                <p>Received – the last date-time an action was received or submitted.</p>
            </li>
            <li>
                <p>Ordering ID – the latest action that should process and apply 
                    after other actions.</p>
            </li>
            <li>
                <p>Failure reason – the reason an action could not be processed.</p>
            </li>
         </ul>")
    @as("GroupOrderingIdSummaries")
    groupOrderingIdSummaries: option<groupOrderingIdSummaries>,
    @ocaml.doc("<p>Shows the identifier of the group to see information on the 
            processing of <code>PUT</code> and <code>DELETE</code> actions 
            for mapping users to their groups.</p>")
    @as("GroupId")
    groupId: option<groupId>,
    @ocaml.doc("<p>Shows the identifier of the data source to see information on 
            the processing of <code>PUT</code> and <code>DELETE</code> actions 
            for mapping users to their groups.</p>")
    @as("DataSourceId")
    dataSourceId: option<dataSourceId>,
    @ocaml.doc("<p>Shows the identifier of the index to see information on the 
            processing of <code>PUT</code> and <code>DELETE</code> actions 
            for mapping users to their groups.</p>")
    @as("IndexId")
    indexId: option<indexId>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "DescribePrincipalMappingCommand"
  let make = (~groupId, ~indexId, ~dataSourceId=?, ()) =>
    new({groupId: groupId, dataSourceId: dataSourceId, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateThesaurus = {
  type t
  type request = {
    @ocaml.doc("<p>A token that you provide to identify the request to create a 
         thesaurus. Multiple calls to the <code>CreateThesaurus</code> API 
         with the same client token will create only one thesaurus.
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
    @ocaml.doc("<p>An IAM role that gives Amazon Kendra permissions 
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
        <p>You need permissions to the role ARN (Amazon Web Services Resource Name). 
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
    @ocaml.doc("<p>The code for a language. This allows you to support a language 
            for the FAQ document. English is supported by default. 
            For more information on supported languages, including their codes, 
            see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html\">Adding 
                documents in languages other than English</a>.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>A token that you provide to identify the request to create a FAQ. Multiple calls to
            the <code>CreateFaqRequest</code> API with the same client token will create only
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
    ~languageCode=?,
    ~clientToken=?,
    ~fileFormat=?,
    ~tags=?,
    ~description=?,
    (),
  ) =>
    new({
      languageCode: languageCode,
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

module AssociatePersonasToEntities = {
  type t
  type request = {
    @ocaml.doc("<p>The personas that define the specific permissions of users or groups in 
            your Amazon Web Services SSO identity source. The available personas or access 
            roles are <code>Owner</code> and <code>Viewer</code>. For more information 
            on these personas, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience\">Providing 
                access to your search page</a>.</p>")
    @as("Personas")
    personas: entityPersonaConfigurationList,
    @ocaml.doc("<p>The identifier of the index for your Amazon Kendra experience.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of your Amazon Kendra experience.</p>") @as("Id")
    id: experienceId,
  }
  type response = {
    @ocaml.doc("<p>Lists the users or groups in your Amazon Web Services SSO identity source that 
            failed to properly configure with your Amazon Kendra experience.</p>")
    @as("FailedEntityList")
    failedEntityList: option<failedEntityList>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "AssociatePersonasToEntitiesCommand"
  let make = (~personas, ~indexId, ~id, ()) => new({personas: personas, indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateEntitiesToExperience = {
  type t
  type request = {
    @ocaml.doc("<p>Lists users or groups in your Amazon Web Services SSO identity source.</p>")
    @as("EntityList")
    entityList: associateEntityList,
    @ocaml.doc("<p>The identifier of the index for your Amazon Kendra experience.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of your Amazon Kendra experience.</p>") @as("Id")
    id: experienceId,
  }
  type response = {
    @ocaml.doc("<p>Lists the users or groups in your Amazon Web Services SSO identity source that 
            failed to properly configure with your Amazon Kendra experience.</p>")
    @as("FailedEntityList")
    failedEntityList: option<associateEntitiesToExperienceFailedEntityList>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "AssociateEntitiesToExperienceCommand"
  let make = (~entityList, ~indexId, ~id, ()) =>
    new({entityList: entityList, indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateExperience = {
  type t
  type request = {
    @ocaml.doc("<p>The description of your Amazon Kendra experience you want to update.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>Configuration information for your Amazon Kendra you want to update.</p>")
    @as("Configuration")
    configuration: option<experienceConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a role with permission to access <code>Query</code>
            API, <code>QuerySuggestions</code> API, <code>SubmitFeedback</code>
            API, and Amazon Web Services SSO that stores your user and group information. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html\">IAM roles for Amazon Kendra</a>.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc(
      "<p>The identifier of the index for your Amazon Kendra experience you want to update.</p>"
    )
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The name of your Amazon Kendra experience you want to update.</p>") @as("Name")
    name: option<experienceName>,
    @ocaml.doc("<p>The identifier of your Amazon Kendra experience you want to update.</p>")
    @as("Id")
    id: experienceId,
  }
  type response = {.}
  @module("@aws-sdk/client-kendra") @new external new: request => t = "UpdateExperienceCommand"
  let make = (~indexId, ~id, ~description=?, ~configuration=?, ~roleArn=?, ~name=?, ()) =>
    new({
      description: description,
      configuration: configuration,
      roleArn: roleArn,
      indexId: indexId,
      name: name,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutPrincipalMapping = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a role that has access to the S3 file 
            that contains your list of users or sub groups that belong to a group.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html#iam-roles-ds\">IAM roles for Amazon Kendra</a>.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The timestamp identifier you specify to ensure Amazon Kendra does not override 
            the latest <code>PUT</code> action with previous actions. The highest number 
            ID, which is the ordering ID, is the latest action you want to process and 
            apply on top of other actions with lower number IDs. This prevents previous 
            actions with lower number IDs from possibly overriding the latest action.</p>
        <p>The ordering ID can be the UNIX time of the last update you made to a 
            group members list. You would then provide this list when calling 
            <code>PutPrincipalMapping</code>. This ensures your <code>PUT</code> action 
            for that updated group with the latest members list doesn't get overwritten 
            by earlier <code>PUT</code> actions for the same group which are yet to 
            be processed.</p>
        <p>The default ordering ID is the current UNIX time in milliseconds that the 
            action was received by Amazon Kendra.</p>")
    @as("OrderingId")
    orderingId: option<principalOrderingId>,
    @ocaml.doc("<p>The list that contains your users or sub groups that belong 
            the same group.</p>
        <p>For example, the group \"Company\" includes the user \"CEO\" and the 
            sub groups \"Research\", \"Engineering\", and \"Sales and Marketing\".</p>
        <p>If you have more than 1000 users and/or sub groups for a single group, 
            you need to provide the path to the S3 file that lists your users and 
            sub groups for a group. Your sub groups can contain more than 1000 users,
            but the list of sub groups that belong to a group (and/or users) must be 
            no more than 1000.</p>")
    @as("GroupMembers")
    groupMembers: groupMembers,
    @ocaml.doc("<p>The identifier of the group you want to map its users to.</p>") @as("GroupId")
    groupId: groupId,
    @ocaml.doc("<p>The identifier of the data source you want to map users to their groups.</p>
        <p>This is useful if a group is tied to multiple data sources, but you only want 
            the group to access documents of a certain data source. For example, the groups 
            \"Research\", \"Engineering\", and \"Sales and Marketing\" are all tied to the company's 
            documents stored in the data sources Confluence and Salesforce. However, 
            \"Sales and Marketing\" team only needs access to customer-related documents 
            stored in Salesforce.</p>")
    @as("DataSourceId")
    dataSourceId: option<dataSourceId>,
    @ocaml.doc("<p>The identifier of the index you want to map users to their groups.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {.}
  @module("@aws-sdk/client-kendra") @new external new: request => t = "PutPrincipalMappingCommand"
  let make = (~groupMembers, ~groupId, ~indexId, ~roleArn=?, ~orderingId=?, ~dataSourceId=?, ()) =>
    new({
      roleArn: roleArn,
      orderingId: orderingId,
      groupMembers: groupMembers,
      groupId: groupId,
      dataSourceId: dataSourceId,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListExperienceEntities = {
  type t
  type request = {
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve),
            Amazon Kendra returns a pagination token in the response. You can use this pagination 
            token to retrieve the next set of users or groups.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the index for your Amazon Kendra experience.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of your Amazon Kendra experience.</p>") @as("Id")
    id: experienceId,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Kendra returns this token, which you can use in 
            a later request to retrieve the next set of users or groups.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of summary information for one or more users or groups.</p>")
    @as("SummaryItems")
    summaryItems: option<experienceEntitiesSummaryList>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "ListExperienceEntitiesCommand"
  let make = (~indexId, ~id, ~nextToken=?, ()) =>
    new({nextToken: nextToken, indexId: indexId, id: id})
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
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve), 
      Amazon Kendra returns a pagination token in the response. You can use this pagination token 
      to retrieve the next set of jobs.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the index that contains the data source.</p>") @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>The identifier of the data source.</p>") @as("Id") id: dataSourceId,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Kendra returns this token that you 
      can use in the subsequent request to retrieve the next set of jobs.</p>")
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

module DescribeExperience = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the index for your Amazon Kendra experience you want to get 
            information on.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc(
      "<p>The identifier of your Amazon Kendra experience you want to get information on.</p>"
    )
    @as("Id")
    id: experienceId,
  }
  type response = {
    @ocaml.doc("<p>The reason your Amazon Kendra experience could not properly process.</p>")
    @as("ErrorMessage")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>Shows the Amazon Resource Name (ARN) of a role with permission to access 
            <code>Query</code> API, <code>QuerySuggestions</code> API, 
            <code>SubmitFeedback</code> API, and Amazon Web Services SSO that stores 
            your user and group information.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The current processing status of your Amazon Kendra experience. When the status 
            is <code>ACTIVE</code>, your Amazon Kendra experience is ready to use. When the 
            status is <code>FAILED</code>, the <code>ErrorMessage</code> field contains 
            the reason that this failed.</p>")
    @as("Status")
    status: option<experienceStatus>,
    @ocaml.doc("<p>Shows the description for your Amazon Kendra experience.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>Shows the date-time your Amazon Kendra experience was last updated.</p>")
    @as("UpdatedAt")
    updatedAt: option<timestamp_>,
    @ocaml.doc("<p>Shows the date-time your Amazon Kendra experience was created.</p>")
    @as("CreatedAt")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>Shows the configuration information for your Amazon Kendra experience. This includes
                <code>ContentSourceConfiguration</code>, which specifies the data source IDs 
            and/or FAQ IDs, and <code>UserIdentityConfiguration</code>, which specifies the 
            user or group information to grant access to your Amazon Kendra experience.</p>")
    @as("Configuration")
    configuration: option<experienceConfiguration>,
    @ocaml.doc("<p>Shows the endpoint URLs for your Amazon Kendra experiences. The URLs are unique and fully
            hosted by Amazon Web Services.</p>")
    @as("Endpoints")
    endpoints: option<experienceEndpoints>,
    @ocaml.doc("<p>Shows the name of your Amazon Kendra experience.</p>") @as("Name")
    name: option<experienceName>,
    @ocaml.doc("<p>Shows the identifier of the index for your Amazon Kendra experience.</p>")
    @as("IndexId")
    indexId: option<indexId>,
    @ocaml.doc("<p>Shows the identifier of your Amazon Kendra experience.</p>") @as("Id")
    id: option<experienceId>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "DescribeExperienceCommand"
  let make = (~indexId, ~id, ()) => new({indexId: indexId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIndex = {
  type t
  type request = {
    @ocaml.doc("<p>Enables fetching access levels of groups and users from an Amazon Web Services Single Sign On 
         identity source. To configure this, see 
         <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html\">UserGroupResolutionConfiguration</a>.</p>")
    @as("UserGroupResolutionConfiguration")
    userGroupResolutionConfiguration: option<userGroupResolutionConfiguration>,
    @ocaml.doc("<p>The user context policy.</p>
         <dl>
            <dt>ATTRIBUTE_FILTER</dt>
            <dd>
               <p>All indexed content is searchable and displayable
                  for all users. If you want to filter search results on 
                  user context, you can use the attribute filters of
                  <code>_user_id</code> and <code>_group_ids</code> or
                  you can provide user and group information in <code>UserContext</code>.
               </p>
            </dd>
            <dt>USER_TOKEN</dt>
            <dd>
               <p>Enables token-based user access control to filter 
                  search results on user context. All documents with no 
                  access control and all documents accessible to the user 
                  will be searchable and displayable.
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
      Multiple calls to the <code>CreateIndex</code> API with the same
      client token will create only one index.</p>")
    @as("ClientToken")
    clientToken: option<clientTokenName>,
    @ocaml.doc("<p>A description for the index.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The identifier of the KMScustomer managed key (CMK) to use to
      encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
      asymmetric CMKs.</p>")
    @as("ServerSideEncryptionConfiguration")
    serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
    @ocaml.doc("<p>An Identity and Access Management(IAM) role that gives
      Amazon Kendra permissions to access your Amazon CloudWatch logs and
      metrics. This is also the role used when you use the
        <code>BatchPutDocument</code> API to index documents from an
      Amazon S3 bucket.</p>")
    @as("RoleArn")
    roleArn: roleArn,
    @ocaml.doc("<p>The Amazon Kendra edition to use for the index. Choose
        <code>DEVELOPER_EDITION</code> for indexes intended for development,
      testing, or proof of concept. Use <code>ENTERPRISE_EDITION</code> for your
      production databases. Once you set the edition for an index, it can't be
      changed.</p>
         <p>The <code>Edition</code> parameter is optional. If you don't supply a
      value, the default is <code>ENTERPRISE_EDITION</code>.</p>
         <p>For more information on quota limits for enterprise and developer editions, 
      see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/quotas.html\">Quotas</a>.</p>")
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
    ~userGroupResolutionConfiguration=?,
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
      userGroupResolutionConfiguration: userGroupResolutionConfiguration,
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

module CreateExperience = {
  type t
  type request = {
    @ocaml.doc("<p>A token that you provide to identify the request to create your Amazon Kendra experience.
            Multiple calls to the <code>CreateExperience</code> API with the same client 
            token creates only one Amazon Kendra experience.</p>")
    @as("ClientToken")
    clientToken: option<clientTokenName>,
    @ocaml.doc("<p>A description for your Amazon Kendra experience.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>Configuration information for your Amazon Kendra experience. This includes
            <code>ContentSourceConfiguration</code>, which specifies the data source IDs 
            and/or FAQ IDs, and <code>UserIdentityConfiguration</code>, which specifies the 
            user or group information to grant access to your Amazon Kendra experience.</p>")
    @as("Configuration")
    configuration: option<experienceConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a role with permission to access <code>Query</code>
            API, <code>QuerySuggestions</code> API, <code>SubmitFeedback</code>
            API, and Amazon Web Services SSO that stores your user and group information. 
            For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html\">IAM roles for Amazon Kendra</a>.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The identifier of the index for your Amazon Kendra experience.</p>")
    @as("IndexId")
    indexId: indexId,
    @ocaml.doc("<p>A name for your Amazon Kendra experience.</p>") @as("Name") name: experienceName,
  }
  type response = {
    @ocaml.doc("<p>The identifier for your created Amazon Kendra experience.</p>") @as("Id")
    id: experienceId,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "CreateExperienceCommand"
  let make = (~indexId, ~name, ~clientToken=?, ~description=?, ~configuration=?, ~roleArn=?, ()) =>
    new({
      clientToken: clientToken,
      description: description,
      configuration: configuration,
      roleArn: roleArn,
      indexId: indexId,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIndex = {
  type t
  type request = {
    @ocaml.doc("<p>Enables fetching access levels of groups and users from an Amazon Web Services Single Sign On 
         identity source. To configure this, see 
         <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html\">UserGroupResolutionConfiguration</a>.</p>")
    @as("UserGroupResolutionConfiguration")
    userGroupResolutionConfiguration: option<userGroupResolutionConfiguration>,
    @ocaml.doc("<p>The user context policy.</p>") @as("UserContextPolicy")
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
    @ocaml.doc("<p>The document metadata you want to update.</p>")
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
  type response = {.}
  @module("@aws-sdk/client-kendra") @new external new: request => t = "UpdateIndexCommand"
  let make = (
    ~id,
    ~userGroupResolutionConfiguration=?,
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
      userGroupResolutionConfiguration: userGroupResolutionConfiguration,
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

module ListExperiences = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of returned Amazon Kendra experiences.</p>") @as("MaxResults")
    maxResults: option<maxResultsIntegerForListExperiencesRequest>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data
            to retrieve), Amazon Kendra returns a pagination token in the response. You can use this
            pagination token to retrieve the next set of Amazon Kendra experiences.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier of the index for your Amazon Kendra experience.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>If the response is truncated, Amazon Kendra returns this token, which you can use 
            in a later request to retrieve the next set of Amazon Kendra experiences.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of summary information for one or more Amazon Kendra experiences.</p>")
    @as("SummaryItems")
    summaryItems: option<experiencesSummaryList>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "ListExperiencesCommand"
  let make = (~indexId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIndex = {
  type t
  type request = {@ocaml.doc("<p>The name of the index to describe.</p>") @as("Id") id: indexId}
  type response = {
    @ocaml.doc("<p>Shows whether you have enabled the configuration for fetching access 
         levels of groups and users from an Amazon Web Services Single Sign On identity source.</p>")
    @as("UserGroupResolutionConfiguration")
    userGroupResolutionConfiguration: option<userGroupResolutionConfiguration>,
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
    @ocaml.doc("<p>The identifier of the KMScustomer master key (CMK) used to
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
    @ocaml.doc("<p>Configuration information for altering your document metadata and content during 
            the document ingestion process when you use the <code>BatchPutDocument</code> 
            API.</p>
        <p>For more information on how to create, modify and delete document metadata, 
            or make other content alterations when you ingest documents into Amazon Kendra, see 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html\">Customizing 
                document metadata during the ingestion process</a>.</p>")
    @as("CustomDocumentEnrichmentConfiguration")
    customDocumentEnrichmentConfiguration: option<customDocumentEnrichmentConfiguration>,
    @ocaml.doc("<p>One or more documents to add to the index.</p>
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
        <code>BatchPutDocument</code> API. For more information, see
        <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html\">IAM
          Roles for Amazon Kendra</a>.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The identifier of the index to add the documents to. You need to
      create the index first using the <code>CreateIndex</code>
      API.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>A list of documents that were not added to the index because the
      document failed a validation check. Each document contains an error
      message that indicates why the document couldn't be added to the
      index.</p>
         <p>If there was an error adding a document to an index the error is
      reported in your Amazon Web Services CloudWatch log. For more information, see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/cloudwatch-logs.html\">Monitoring
        Amazon Kendra with Amazon CloudWatch Logs</a>
         </p>")
    @as("FailedDocuments")
    failedDocuments: option<batchPutDocumentResponseFailedDocuments>,
  }
  @module("@aws-sdk/client-kendra") @new external new: request => t = "BatchPutDocumentCommand"
  let make = (~documents, ~indexId, ~customDocumentEnrichmentConfiguration=?, ~roleArn=?, ()) =>
    new({
      customDocumentEnrichmentConfiguration: customDocumentEnrichmentConfiguration,
      documents: documents,
      roleArn: roleArn,
      indexId: indexId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetDocumentStatus = {
  type t
  type request = {
    @ocaml.doc("<p>A list of <code>DocumentInfo</code> objects that identify the
            documents for which to get the status. You identify the documents by
            their document ID and optional attributes.</p>")
    @as("DocumentInfoList")
    documentInfoList: documentInfoList,
    @ocaml.doc("<p>The identifier of the index to add documents to. The index ID is
            returned by the <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/API_CreateIndex.html\">CreateIndex
            </a> API.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>The status of documents. The status indicates if the document is
            waiting to be indexed, is in the process of indexing, has completed
            indexing, or failed indexing. If a document failed indexing, the
            status provides the reason why.</p>")
    @as("DocumentStatusList")
    documentStatusList: option<documentStatusList>,
    @ocaml.doc("<p>A list of documents that Amazon Kendra couldn't get the status for. The
            list includes the ID of the document and the reason that the status
            couldn't be found.</p>")
    @as("Errors")
    errors: option<batchGetDocumentStatusResponseErrors>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new: request => t = "BatchGetDocumentStatusCommand"
  let make = (~documentInfoList, ~indexId, ()) =>
    new({documentInfoList: documentInfoList, indexId: indexId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>Configuration information for altering document metadata and content during the
            document ingestion process when you update a data source.</p>
        <p>For more information on how to create, modify and delete document metadata, or make
            other content alterations when you ingest documents into Amazon Kendra, see 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html\">Customizing 
                document metadata during the ingestion process</a>.</p>")
    @as("CustomDocumentEnrichmentConfiguration")
    customDocumentEnrichmentConfiguration: option<customDocumentEnrichmentConfiguration>,
    @ocaml.doc("<p>The code for a language. This allows you to support a language for all 
            documents when updating the data source. English is supported 
            by default. For more information on supported languages, including their codes, 
            see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html\">Adding 
                documents in languages other than English</a>.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the new role to use when the data
      source is accessing resources on your behalf.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The new update schedule for the data source.</p>") @as("Schedule")
    schedule: option<scanSchedule>,
    @ocaml.doc("<p>The new description for the data source.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc(
      "<p>Configuration information for an Amazon Kendra data source you want to update.</p>"
    )
    @as("Configuration")
    configuration: option<dataSourceConfiguration>,
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
  type response = {.}
  @module("@aws-sdk/client-kendra") @new external new: request => t = "UpdateDataSourceCommand"
  let make = (
    ~indexId,
    ~id,
    ~customDocumentEnrichmentConfiguration=?,
    ~languageCode=?,
    ~roleArn=?,
    ~schedule=?,
    ~description=?,
    ~configuration=?,
    ~name=?,
    (),
  ) =>
    new({
      customDocumentEnrichmentConfiguration: customDocumentEnrichmentConfiguration,
      languageCode: languageCode,
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
    @ocaml.doc("<p>Configuration information for altering document metadata and content during the
            document ingestion process when you describe a data source.</p>
        <p>For more information on how to create, modify and delete document metadata, or make
            other content alterations when you ingest documents into Amazon Kendra, see 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html\">Customizing 
                document metadata during the ingestion process</a>.</p>")
    @as("CustomDocumentEnrichmentConfiguration")
    customDocumentEnrichmentConfiguration: option<customDocumentEnrichmentConfiguration>,
    @ocaml.doc("<p>The code for a language. This shows a supported language for all 
            documents in the data source. English is supported by 
            default. For more information on supported languages, including their codes, 
            see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html\">Adding 
                documents in languages other than English</a>.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>When the <code>Status</code> field value is <code>FAILED</code>, the
        <code>ErrorMessage</code> field contains a description of the error that
      caused the data source to fail.</p>")
    @as("ErrorMessage")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role that enables the data
      source to access its resources.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The schedule for Amazon Kendra to update the index.</p>") @as("Schedule")
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
    @ocaml.doc("<p>Describes how the data source is configured. The specific information in the description
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
    @ocaml.doc("<p>Configuration information for altering document metadata and content during the
            document ingestion process when you create a data source.</p>
        <p>For more information on how to create, modify and delete document metadata, or make
            other content alterations when you ingest documents into Amazon Kendra, see 
            <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html\">Customizing 
                document metadata during the ingestion process</a>.</p>")
    @as("CustomDocumentEnrichmentConfiguration")
    customDocumentEnrichmentConfiguration: option<customDocumentEnrichmentConfiguration>,
    @ocaml.doc("<p>The code for a language. This allows you to support a language for all 
            documents when creating the data source. English is supported 
            by default. For more information on supported languages, including their codes, 
            see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html\">Adding 
                documents in languages other than English</a>.</p>")
    @as("LanguageCode")
    languageCode: option<languageCode>,
    @ocaml.doc("<p>A token that you provide to identify the request to create a data
      source. Multiple calls to the <code>CreateDataSource</code> API with
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
    @ocaml.doc("<p>Sets the frequency for Amazon Kendra to check the documents in your
      repository and update the index. If you don't set a schedule Amazon Kendra
      will not periodically update the index. You can call the
        <code>StartDataSourceSyncJob</code> API to update the
      index.</p>
         <p>You can't specify the <code>Schedule</code> parameter when the
        <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
      you receive a <code>ValidationException</code> exception.</p>")
    @as("Schedule")
    schedule: option<scanSchedule>,
    @ocaml.doc("<p>A description for the data source.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>Configuration information that is required to access the data source 
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
    ~customDocumentEnrichmentConfiguration=?,
    ~languageCode=?,
    ~clientToken=?,
    ~tags=?,
    ~roleArn=?,
    ~schedule=?,
    ~description=?,
    ~configuration=?,
    (),
  ) =>
    new({
      customDocumentEnrichmentConfiguration: customDocumentEnrichmentConfiguration,
      languageCode: languageCode,
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
    @ocaml.doc("<p>Enables suggested spell corrections for queries.</p>")
    @as("SpellCorrectionConfiguration")
    spellCorrectionConfiguration: option<spellCorrectionConfiguration>,
    @ocaml.doc("<p>Provides an identifier for a specific user. The
            <code>VisitorId</code> should be a unique identifier, such as a
         GUID. Don't use personally identifiable information, such as the user's
         email address, as the <code>VisitorId</code>.</p>")
    @as("VisitorId")
    visitorId: option<visitorId>,
    @ocaml.doc("<p>The user context token or user and group information.</p>") @as("UserContext")
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
    @ocaml.doc("<p>The text to search for.</p>") @as("QueryText") queryText: option<queryText>,
    @ocaml.doc("<p>The unique identifier of the index to search. The identifier is
         returned in the response from the <code>CreateIndex</code>
         API.</p>")
    @as("IndexId")
    indexId: indexId,
  }
  type response = {
    @ocaml.doc("<p>A list of information related to suggested spell corrections for a query.</p>")
    @as("SpellCorrectedQueries")
    spellCorrectedQueries: option<spellCorrectedQueryList>,
    @ocaml.doc("<p>A list of warning codes and their messages on problems with your query.</p>
         <p>Amazon Kendra currently only supports one type of warning, which is a warning 
         on invalid syntax used in the query. For examples of invalid query syntax, 
         see <a href=\"https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html#searching-index-query-syntax\">Searching 
            with advanced query syntax</a>.</p>")
    @as("Warnings")
    warnings: option<warningList>,
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
    ~indexId,
    ~spellCorrectionConfiguration=?,
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
    ~queryText=?,
    (),
  ) =>
    new({
      spellCorrectionConfiguration: spellCorrectionConfiguration,
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
