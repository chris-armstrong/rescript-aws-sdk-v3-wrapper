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
type userContext = {@as("Token") token: option<token>}
type timeRange = {
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
}
type thesaurusSummary = {
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("Status") status: option<thesaurusStatus>,
  @as("Name") name: option<thesaurusName>,
  @as("Id") id: option<thesaurusId>,
}
type textDocumentStatistics = {
  @as("IndexedTextBytes") indexedTextBytes: indexedTextBytes,
  @as("IndexedTextDocumentsCount") indexedTextDocumentsCount: indexedTextDocumentsCount,
}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type suggestionHighlight = {
  @as("EndOffset") endOffset: option<integer_>,
  @as("BeginOffset") beginOffset: option<integer_>,
}
type subnetIdList = array<subnetId>
type sqlConfiguration = {
  @as("QueryIdentifiersEnclosingOption")
  queryIdentifiersEnclosingOption: option<queryIdentifiersEnclosingOption>,
}
type sortingConfiguration = {
  @as("SortOrder") sortOrder: sortOrder,
  @as("DocumentAttributeKey") documentAttributeKey: documentAttributeKey,
}
type sharePointUrlList = array<url>
type serverSideEncryptionConfiguration = {@as("KmsKeyId") kmsKeyId: option<kmsKeyId>}
type securityGroupIdList = array<vpcSecurityGroupId>
type search = {
  @as("Sortable") sortable: option<boolean_>,
  @as("Displayable") displayable: option<boolean_>,
  @as("Searchable") searchable: option<boolean_>,
  @as("Facetable") facetable: option<boolean_>,
}
type scoreAttributes = {@as("ScoreConfidence") scoreConfidence: option<scoreConfidence>}
type salesforceKnowledgeArticleStateList = array<salesforceKnowledgeArticleState>
type salesforceChatterFeedIncludeFilterTypes = array<salesforceChatterFeedIncludeFilterType>
type s3Path = {
  @as("Key") key: s3ObjectKey,
  @as("Bucket") bucket: s3BucketName,
}
type relevanceFeedback = {
  @as("RelevanceValue") relevanceValue: relevanceType,
  @as("ResultId") resultId: resultId,
}
type querySuggestionsBlockListSummary = {
  @as("ItemCount") itemCount: option<integer_>,
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("Status") status: option<querySuggestionsBlockListStatus>,
  @as("Name") name: option<querySuggestionsBlockListName>,
  @as("Id") id: option<querySuggestionsBlockListId>,
}
type principal = {
  @as("Access") access: readAccessType,
  @as("Type") type_: principalType,
  @as("Name") name: principalName,
}
type oneDriveUserList = array<oneDriveUser>
type jwtTokenTypeConfiguration = {
  @as("ClaimRegex") claimRegex: option<claimRegex>,
  @as("Issuer") issuer: option<issuer>,
  @as("GroupAttributeField") groupAttributeField: option<groupAttributeField>,
  @as("UserNameAttributeField") userNameAttributeField: option<userNameAttributeField>,
  @as("SecretManagerArn") secretManagerArn: option<roleArn>,
  @as("URL") url: option<url>,
  @as("KeyLocation") keyLocation: keyLocation,
}
type jsonTokenTypeConfiguration = {
  @as("GroupAttributeField") groupAttributeField: string_,
  @as("UserNameAttributeField") userNameAttributeField: string_,
}
type indexConfigurationSummary = {
  @as("Status") status: indexStatus,
  @as("UpdatedAt") updatedAt: timestamp_,
  @as("CreatedAt") createdAt: timestamp_,
  @as("Edition") edition: option<indexEdition>,
  @as("Id") id: option<indexId>,
  @as("Name") name: option<indexName>,
}
type highlight = {
  @as("Type") type_: option<highlightType>,
  @as("TopAnswer") topAnswer: option<boolean_>,
  @as("EndOffset") endOffset: integer_,
  @as("BeginOffset") beginOffset: integer_,
}
type faqSummary = {
  @as("FileFormat") fileFormat: option<faqFileFormat>,
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("Status") status: option<faqStatus>,
  @as("Name") name: option<faqName>,
  @as("Id") id: option<faqId>,
}
type faqStatistics = {
  @as("IndexedQuestionAnswersCount") indexedQuestionAnswersCount: indexedQuestionAnswersCount,
}
type facet = {@as("DocumentAttributeKey") documentAttributeKey: option<documentAttributeKey>}
type excludeUserAccountsList = array<userAccount>
type excludeSharedDrivesList = array<sharedDriveId>
type excludeMimeTypesList = array<mimeType>
type documentsMetadataConfiguration = {@as("S3Prefix") s3Prefix: option<s3ObjectKey>}
type documentIdList = array<documentId>
type documentAttributeStringListValue = array<string_>
type documentAttributeKeyList = array<documentAttributeKey>
type dataSourceToIndexFieldMapping = {
  @as("IndexFieldName") indexFieldName: indexFieldName,
  @as("DateFieldFormat") dateFieldFormat: option<dataSourceDateFieldFormat>,
  @as("DataSourceFieldName") dataSourceFieldName: dataSourceFieldName,
}
type dataSourceSyncJobMetrics = {
  @as("DocumentsScanned") documentsScanned: option<metricValue>,
  @as("DocumentsFailed") documentsFailed: option<metricValue>,
  @as("DocumentsDeleted") documentsDeleted: option<metricValue>,
  @as("DocumentsModified") documentsModified: option<metricValue>,
  @as("DocumentsAdded") documentsAdded: option<metricValue>,
}
type dataSourceSyncJobMetricTarget = {
  @as("DataSourceSyncJobId") dataSourceSyncJobId: option<dataSourceSyncJobId>,
  @as("DataSourceId") dataSourceId: dataSourceId,
}
type dataSourceSummary = {
  @as("Status") status: option<dataSourceStatus>,
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("Type") type_: option<dataSourceType>,
  @as("Id") id: option<dataSourceId>,
  @as("Name") name: option<dataSourceName>,
}
type dataSourceInclusionsExclusionsStrings = array<dataSourceInclusionsExclusionsStringsMember>
type connectionConfiguration = {
  @as("SecretArn") secretArn: secretArn,
  @as("TableName") tableName: tableName,
  @as("DatabaseName") databaseName: databaseName,
  @as("DatabasePort") databasePort: databasePort,
  @as("DatabaseHost") databaseHost: databaseHost,
}
type confluenceSpaceToIndexFieldMapping = {
  @as("IndexFieldName") indexFieldName: option<indexFieldName>,
  @as("DateFieldFormat") dateFieldFormat: option<dataSourceDateFieldFormat>,
  @as("DataSourceFieldName") dataSourceFieldName: option<confluenceSpaceFieldName>,
}
type confluenceSpaceList = array<confluenceSpaceIdentifier>
type confluencePageToIndexFieldMapping = {
  @as("IndexFieldName") indexFieldName: option<indexFieldName>,
  @as("DateFieldFormat") dateFieldFormat: option<dataSourceDateFieldFormat>,
  @as("DataSourceFieldName") dataSourceFieldName: option<confluencePageFieldName>,
}
type confluenceBlogToIndexFieldMapping = {
  @as("IndexFieldName") indexFieldName: option<indexFieldName>,
  @as("DateFieldFormat") dateFieldFormat: option<dataSourceDateFieldFormat>,
  @as("DataSourceFieldName") dataSourceFieldName: option<confluenceBlogFieldName>,
}
type confluenceAttachmentToIndexFieldMapping = {
  @as("IndexFieldName") indexFieldName: option<indexFieldName>,
  @as("DateFieldFormat") dateFieldFormat: option<dataSourceDateFieldFormat>,
  @as("DataSourceFieldName") dataSourceFieldName: option<confluenceAttachmentFieldName>,
}
type clickFeedback = {
  @as("ClickTime") clickTime: timestamp_,
  @as("ResultId") resultId: resultId,
}
type changeDetectingColumns = array<columnName>
type capacityUnitsConfiguration = {
  @as("QueryCapacityUnits") queryCapacityUnits: queryCapacityUnit,
  @as("StorageCapacityUnits") storageCapacityUnits: storageCapacityUnit,
}
type batchPutDocumentResponseFailedDocument = {
  @as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("Id") id: option<documentId>,
}
type batchDeleteDocumentResponseFailedDocument = {
  @as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("Id") id: option<documentId>,
}
type aclConfiguration = {@as("AllowedGroupsColumnName") allowedGroupsColumnName: columnName}
type accessControlListConfiguration = {@as("KeyPath") keyPath: option<s3ObjectKey>}
type userTokenConfiguration = {
  @as("JsonTokenTypeConfiguration") jsonTokenTypeConfiguration: option<jsonTokenTypeConfiguration>,
  @as("JwtTokenTypeConfiguration") jwtTokenTypeConfiguration: option<jwtTokenTypeConfiguration>,
}
type thesaurusSummaryItems = array<thesaurusSummary>
type tagList_ = array<tag>
type suggestionHighlightList = array<suggestionHighlight>
type s3DataSourceConfiguration = {
  @as("AccessControlListConfiguration")
  accessControlListConfiguration: option<accessControlListConfiguration>,
  @as("DocumentsMetadataConfiguration")
  documentsMetadataConfiguration: option<documentsMetadataConfiguration>,
  @as("ExclusionPatterns") exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("InclusionPatterns") inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("InclusionPrefixes") inclusionPrefixes: option<dataSourceInclusionsExclusionsStrings>,
  @as("BucketName") bucketName: s3BucketName,
}
type relevanceFeedbackList = array<relevanceFeedback>
type relevance = {
  @as("ValueImportanceMap") valueImportanceMap: option<valueImportanceMap>,
  @as("RankOrder") rankOrder: option<order>,
  @as("Duration") duration: option<duration>,
  @as("Importance") importance: option<importance>,
  @as("Freshness") freshness: option<documentMetadataBoolean>,
}
type querySuggestionsBlockListSummaryItems = array<querySuggestionsBlockListSummary>
type principalList = array<principal>
type oneDriveUsers = {
  @as("OneDriveUserS3Path") oneDriveUserS3Path: option<s3Path>,
  @as("OneDriveUserList") oneDriveUserList: option<oneDriveUserList>,
}
type indexStatistics = {
  @as("TextDocumentStatistics") textDocumentStatistics: textDocumentStatistics,
  @as("FaqStatistics") faqStatistics: faqStatistics,
}
type indexConfigurationSummaryList = array<indexConfigurationSummary>
type highlightList = array<highlight>
type faqSummaryItems = array<faqSummary>
type facetList = array<facet>
type documentAttributeValue = {
  @as("DateValue") dateValue: option<timestamp_>,
  @as("LongValue") longValue: option<long>,
  @as("StringListValue") stringListValue: option<documentAttributeStringListValue>,
  @as("StringValue") stringValue: option<documentAttributeStringValue>,
}
type dataSourceVpcConfiguration = {
  @as("SecurityGroupIds") securityGroupIds: securityGroupIdList,
  @as("SubnetIds") subnetIds: subnetIdList,
}
type dataSourceToIndexFieldMappingList = array<dataSourceToIndexFieldMapping>
type dataSourceSyncJob = {
  @as("Metrics") metrics: option<dataSourceSyncJobMetrics>,
  @as("DataSourceErrorCode") dataSourceErrorCode: option<string_>,
  @as("ErrorCode") errorCode: option<errorCode>,
  @as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("Status") status: option<dataSourceSyncJobStatus>,
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
  @as("ExecutionId") executionId: option<string_>,
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
type textWithHighlights = {
  @as("Highlights") highlights: option<highlightList>,
  @as("Text") text: option<string_>,
}
type suggestionTextWithHighlights = {
  @as("Highlights") highlights: option<suggestionHighlightList>,
  @as("Text") text: option<string_>,
}
type sharePointConfiguration = {
  @as("DisableLocalGroups") disableLocalGroups: option<boolean_>,
  @as("DocumentTitleFieldName") documentTitleFieldName: option<dataSourceFieldName>,
  @as("FieldMappings") fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("VpcConfiguration") vpcConfiguration: option<dataSourceVpcConfiguration>,
  @as("ExclusionPatterns") exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("InclusionPatterns") inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("UseChangeLog") useChangeLog: option<boolean_>,
  @as("CrawlAttachments") crawlAttachments: option<boolean_>,
  @as("SecretArn") secretArn: secretArn,
  @as("Urls") urls: sharePointUrlList,
  @as("SharePointVersion") sharePointVersion: sharePointVersion,
}
type serviceNowServiceCatalogConfiguration = {
  @as("FieldMappings") fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("DocumentTitleFieldName") documentTitleFieldName: option<dataSourceFieldName>,
  @as("DocumentDataFieldName") documentDataFieldName: dataSourceFieldName,
  @as("ExcludeAttachmentFilePatterns")
  excludeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("IncludeAttachmentFilePatterns")
  includeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("CrawlAttachments") crawlAttachments: option<boolean_>,
}
type serviceNowKnowledgeArticleConfiguration = {
  @as("FilterQuery") filterQuery: option<serviceNowKnowledgeArticleFilterQuery>,
  @as("FieldMappings") fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("DocumentTitleFieldName") documentTitleFieldName: option<dataSourceFieldName>,
  @as("DocumentDataFieldName") documentDataFieldName: dataSourceFieldName,
  @as("ExcludeAttachmentFilePatterns")
  excludeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("IncludeAttachmentFilePatterns")
  includeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("CrawlAttachments") crawlAttachments: option<boolean_>,
}
type salesforceStandardObjectConfiguration = {
  @as("FieldMappings") fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("DocumentTitleFieldName") documentTitleFieldName: option<dataSourceFieldName>,
  @as("DocumentDataFieldName") documentDataFieldName: dataSourceFieldName,
  @as("Name") name: salesforceStandardObjectName,
}
type salesforceStandardObjectAttachmentConfiguration = {
  @as("FieldMappings") fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("DocumentTitleFieldName") documentTitleFieldName: option<dataSourceFieldName>,
}
type salesforceStandardKnowledgeArticleTypeConfiguration = {
  @as("FieldMappings") fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("DocumentTitleFieldName") documentTitleFieldName: option<dataSourceFieldName>,
  @as("DocumentDataFieldName") documentDataFieldName: dataSourceFieldName,
}
type salesforceCustomKnowledgeArticleTypeConfiguration = {
  @as("FieldMappings") fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("DocumentTitleFieldName") documentTitleFieldName: option<dataSourceFieldName>,
  @as("DocumentDataFieldName") documentDataFieldName: dataSourceFieldName,
  @as("Name") name: salesforceCustomKnowledgeArticleTypeName,
}
type salesforceChatterFeedConfiguration = {
  @as("IncludeFilterTypes") includeFilterTypes: option<salesforceChatterFeedIncludeFilterTypes>,
  @as("FieldMappings") fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("DocumentTitleFieldName") documentTitleFieldName: option<dataSourceFieldName>,
  @as("DocumentDataFieldName") documentDataFieldName: dataSourceFieldName,
}
type oneDriveConfiguration = {
  @as("DisableLocalGroups") disableLocalGroups: option<boolean_>,
  @as("FieldMappings") fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("ExclusionPatterns") exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("InclusionPatterns") inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("OneDriveUsers") oneDriveUsers: oneDriveUsers,
  @as("SecretArn") secretArn: secretArn,
  @as("TenantDomain") tenantDomain: tenantDomain,
}
type googleDriveConfiguration = {
  @as("ExcludeSharedDrives") excludeSharedDrives: option<excludeSharedDrivesList>,
  @as("ExcludeUserAccounts") excludeUserAccounts: option<excludeUserAccountsList>,
  @as("ExcludeMimeTypes") excludeMimeTypes: option<excludeMimeTypesList>,
  @as("FieldMappings") fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("ExclusionPatterns") exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("InclusionPatterns") inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("SecretArn") secretArn: secretArn,
}
type documentRelevanceConfiguration = {
  @as("Relevance") relevance: relevance,
  @as("Name") name: documentMetadataConfigurationName,
}
type documentMetadataConfiguration = {
  @as("Search") search: option<search>,
  @as("Relevance") relevance: option<relevance>,
  @as("Type") type_: documentAttributeValueType,
  @as("Name") name: documentMetadataConfigurationName,
}
type documentAttributeValueCountPair = {
  @as("Count") count: option<integer_>,
  @as("DocumentAttributeValue") documentAttributeValue: option<documentAttributeValue>,
}
type documentAttribute = {
  @as("Value") value: documentAttributeValue,
  @as("Key") key: documentAttributeKey,
}
type dataSourceSyncJobHistoryList = array<dataSourceSyncJob>
type confluenceSpaceConfiguration = {
  @as("SpaceFieldMappings") spaceFieldMappings: option<confluenceSpaceFieldMappingsList>,
  @as("ExcludeSpaces") excludeSpaces: option<confluenceSpaceList>,
  @as("IncludeSpaces") includeSpaces: option<confluenceSpaceList>,
  @as("CrawlArchivedSpaces") crawlArchivedSpaces: option<boolean_>,
  @as("CrawlPersonalSpaces") crawlPersonalSpaces: option<boolean_>,
}
type confluencePageConfiguration = {
  @as("PageFieldMappings") pageFieldMappings: option<confluencePageFieldMappingsList>,
}
type confluenceBlogConfiguration = {
  @as("BlogFieldMappings") blogFieldMappings: option<confluenceBlogFieldMappingsList>,
}
type confluenceAttachmentConfiguration = {
  @as("AttachmentFieldMappings")
  attachmentFieldMappings: option<confluenceAttachmentFieldMappingsList>,
  @as("CrawlAttachments") crawlAttachments: option<boolean_>,
}
type columnConfiguration = {
  @as("ChangeDetectingColumns") changeDetectingColumns: changeDetectingColumns,
  @as("FieldMappings") fieldMappings: option<dataSourceToIndexFieldMappingList>,
  @as("DocumentTitleColumnName") documentTitleColumnName: option<columnName>,
  @as("DocumentDataColumnName") documentDataColumnName: columnName,
  @as("DocumentIdColumnName") documentIdColumnName: columnName,
}
type suggestionValue = {@as("Text") text: option<suggestionTextWithHighlights>}
type serviceNowConfiguration = {
  @as("AuthenticationType") authenticationType: option<serviceNowAuthenticationType>,
  @as("ServiceCatalogConfiguration")
  serviceCatalogConfiguration: option<serviceNowServiceCatalogConfiguration>,
  @as("KnowledgeArticleConfiguration")
  knowledgeArticleConfiguration: option<serviceNowKnowledgeArticleConfiguration>,
  @as("ServiceNowBuildVersion") serviceNowBuildVersion: serviceNowBuildVersionType,
  @as("SecretArn") secretArn: secretArn,
  @as("HostUrl") hostUrl: serviceNowHostUrl,
}
type salesforceStandardObjectConfigurationList = array<salesforceStandardObjectConfiguration>
type salesforceCustomKnowledgeArticleTypeConfigurationList = array<
  salesforceCustomKnowledgeArticleTypeConfiguration,
>
type documentRelevanceOverrideConfigurationList = array<documentRelevanceConfiguration>
type documentMetadataConfigurationList = array<documentMetadataConfiguration>
type documentAttributeValueCountPairList = array<documentAttributeValueCountPair>
type documentAttributeList = array<documentAttribute>
type databaseConfiguration = {
  @as("SqlConfiguration") sqlConfiguration: option<sqlConfiguration>,
  @as("AclConfiguration") aclConfiguration: option<aclConfiguration>,
  @as("ColumnConfiguration") columnConfiguration: columnConfiguration,
  @as("VpcConfiguration") vpcConfiguration: option<dataSourceVpcConfiguration>,
  @as("ConnectionConfiguration") connectionConfiguration: connectionConfiguration,
  @as("DatabaseEngineType") databaseEngineType: databaseEngineType,
}
type confluenceConfiguration = {
  @as("ExclusionPatterns") exclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("InclusionPatterns") inclusionPatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("VpcConfiguration") vpcConfiguration: option<dataSourceVpcConfiguration>,
  @as("AttachmentConfiguration") attachmentConfiguration: option<confluenceAttachmentConfiguration>,
  @as("BlogConfiguration") blogConfiguration: option<confluenceBlogConfiguration>,
  @as("PageConfiguration") pageConfiguration: option<confluencePageConfiguration>,
  @as("SpaceConfiguration") spaceConfiguration: option<confluenceSpaceConfiguration>,
  @as("Version") version: confluenceVersion,
  @as("SecretArn") secretArn: secretArn,
  @as("ServerUrl") serverUrl: url,
}
type additionalResultAttributeValue = {
  @as("TextWithHighlightsValue") textWithHighlightsValue: option<textWithHighlights>,
}
type suggestion = {
  @as("Value") value: option<suggestionValue>,
  @as("Id") id: option<resultId>,
}
type salesforceKnowledgeArticleConfiguration = {
  @as("CustomKnowledgeArticleTypeConfigurations")
  customKnowledgeArticleTypeConfigurations: option<
    salesforceCustomKnowledgeArticleTypeConfigurationList,
  >,
  @as("StandardKnowledgeArticleTypeConfiguration")
  standardKnowledgeArticleTypeConfiguration: option<
    salesforceStandardKnowledgeArticleTypeConfiguration,
  >,
  @as("IncludedStates") includedStates: salesforceKnowledgeArticleStateList,
}
type facetResult = {
  @as("DocumentAttributeValueCountPairs")
  documentAttributeValueCountPairs: option<documentAttributeValueCountPairList>,
  @as("DocumentAttributeValueType") documentAttributeValueType: option<documentAttributeValueType>,
  @as("DocumentAttributeKey") documentAttributeKey: option<documentAttributeKey>,
}
type document = {
  @as("ContentType") contentType: option<contentType>,
  @as("AccessControlList") accessControlList: option<principalList>,
  @as("Attributes") attributes: option<documentAttributeList>,
  @as("S3Path") s3Path: option<s3Path>,
  @as("Blob") blob: option<blob>,
  @as("Title") title: option<title>,
  @as("Id") id: documentId,
}
type additionalResultAttribute = {
  @as("Value") value: additionalResultAttributeValue,
  @as("ValueType") valueType: additionalResultAttributeValueType,
  @as("Key") key: string_,
}
type suggestionList = array<suggestion>
type salesforceConfiguration = {
  @as("ExcludeAttachmentFilePatterns")
  excludeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("IncludeAttachmentFilePatterns")
  includeAttachmentFilePatterns: option<dataSourceInclusionsExclusionsStrings>,
  @as("StandardObjectAttachmentConfiguration")
  standardObjectAttachmentConfiguration: option<salesforceStandardObjectAttachmentConfiguration>,
  @as("CrawlAttachments") crawlAttachments: option<boolean_>,
  @as("ChatterFeedConfiguration")
  chatterFeedConfiguration: option<salesforceChatterFeedConfiguration>,
  @as("KnowledgeArticleConfiguration")
  knowledgeArticleConfiguration: option<salesforceKnowledgeArticleConfiguration>,
  @as("StandardObjectConfigurations")
  standardObjectConfigurations: option<salesforceStandardObjectConfigurationList>,
  @as("SecretArn") secretArn: secretArn,
  @as("ServerUrl") serverUrl: url,
}
type facetResultList = array<facetResult>
type documentList = array<document>
type additionalResultAttributeList = array<additionalResultAttribute>
type queryResultItem = {
  @as("FeedbackToken") feedbackToken: option<feedbackToken>,
  @as("ScoreAttributes") scoreAttributes: option<scoreAttributes>,
  @as("DocumentAttributes") documentAttributes: option<documentAttributeList>,
  @as("DocumentURI") documentURI: option<url>,
  @as("DocumentExcerpt") documentExcerpt: option<textWithHighlights>,
  @as("DocumentTitle") documentTitle: option<textWithHighlights>,
  @as("DocumentId") documentId: option<documentId>,
  @as("AdditionalAttributes") additionalAttributes: option<additionalResultAttributeList>,
  @as("Type") type_: option<queryResultType>,
  @as("Id") id: option<resultId>,
}
type dataSourceConfiguration = {
  @as("GoogleDriveConfiguration") googleDriveConfiguration: option<googleDriveConfiguration>,
  @as("ConfluenceConfiguration") confluenceConfiguration: option<confluenceConfiguration>,
  @as("ServiceNowConfiguration") serviceNowConfiguration: option<serviceNowConfiguration>,
  @as("OneDriveConfiguration") oneDriveConfiguration: option<oneDriveConfiguration>,
  @as("SalesforceConfiguration") salesforceConfiguration: option<salesforceConfiguration>,
  @as("DatabaseConfiguration") databaseConfiguration: option<databaseConfiguration>,
  @as("SharePointConfiguration") sharePointConfiguration: option<sharePointConfiguration>,
  @as("S3Configuration") s3Configuration: option<s3DataSourceConfiguration>,
}
type queryResultItemList = array<queryResultItem>
type rec attributeFilter = {
  @as("LessThanOrEquals") lessThanOrEquals: option<documentAttribute>,
  @as("LessThan") lessThan: option<documentAttribute>,
  @as("GreaterThanOrEquals") greaterThanOrEquals: option<documentAttribute>,
  @as("GreaterThan") greaterThan: option<documentAttribute>,
  @as("ContainsAny") containsAny: option<documentAttribute>,
  @as("ContainsAll") containsAll: option<documentAttribute>,
  @as("EqualsTo") equalsTo: option<documentAttribute>,
  @as("NotFilter") notFilter: option<attributeFilter>,
  @as("OrAllFilters") orAllFilters: option<attributeFilterList>,
  @as("AndAllFilters") andAllFilters: option<attributeFilterList>,
}
and attributeFilterList = array<attributeFilter>

module UpdateQuerySuggestionsConfig = {
  type t
  type request = {
    @as("MinimumQueryCount") minimumQueryCount: option<minimumQueryCount>,
    @as("MinimumNumberOfQueryingUsers")
    minimumNumberOfQueryingUsers: option<minimumNumberOfQueryingUsers>,
    @as("IncludeQueriesWithoutUserInformation")
    includeQueriesWithoutUserInformation: option<objectBoolean>,
    @as("QueryLogLookBackWindowInDays") queryLogLookBackWindowInDays: option<integer_>,
    @as("Mode") mode: option<mode>,
    @as("IndexId") indexId: indexId,
  }

  @module("@aws-sdk/client-kendra") @new
  external new_: request => t = "UpdateQuerySuggestionsConfigCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopDataSourceSyncJob = {
  type t
  type request = {
    @as("IndexId") indexId: indexId,
    @as("Id") id: dataSourceId,
  }

  @module("@aws-sdk/client-kendra") @new
  external new_: request => t = "StopDataSourceSyncJobCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartDataSourceSyncJob = {
  type t
  type request = {
    @as("IndexId") indexId: indexId,
    @as("Id") id: dataSourceId,
  }
  type response = {@as("ExecutionId") executionId: option<string_>}
  @module("@aws-sdk/client-kendra") @new
  external new_: request => t = "StartDataSourceSyncJobCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeQuerySuggestionsConfig = {
  type t
  type request = {@as("IndexId") indexId: indexId}
  type response = {
    @as("TotalSuggestionsCount") totalSuggestionsCount: option<integer_>,
    @as("LastClearTime") lastClearTime: option<timestamp_>,
    @as("LastSuggestionsBuildTime") lastSuggestionsBuildTime: option<timestamp_>,
    @as("MinimumQueryCount") minimumQueryCount: option<minimumQueryCount>,
    @as("MinimumNumberOfQueryingUsers")
    minimumNumberOfQueryingUsers: option<minimumNumberOfQueryingUsers>,
    @as("IncludeQueriesWithoutUserInformation")
    includeQueriesWithoutUserInformation: option<objectBoolean>,
    @as("QueryLogLookBackWindowInDays") queryLogLookBackWindowInDays: option<integer_>,
    @as("Status") status: option<querySuggestionsStatus>,
    @as("Mode") mode: option<mode>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new_: request => t = "DescribeQuerySuggestionsConfigCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteThesaurus = {
  type t
  type request = {
    @as("IndexId") indexId: indexId,
    @as("Id") id: thesaurusId,
  }

  @module("@aws-sdk/client-kendra") @new external new_: request => t = "DeleteThesaurusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteQuerySuggestionsBlockList = {
  type t
  type request = {
    @as("Id") id: querySuggestionsBlockListId,
    @as("IndexId") indexId: indexId,
  }

  @module("@aws-sdk/client-kendra") @new
  external new_: request => t = "DeleteQuerySuggestionsBlockListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIndex = {
  type t
  type request = {@as("Id") id: indexId}

  @module("@aws-sdk/client-kendra") @new external new_: request => t = "DeleteIndexCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFaq = {
  type t
  type request = {
    @as("IndexId") indexId: indexId,
    @as("Id") id: faqId,
  }

  @module("@aws-sdk/client-kendra") @new external new_: request => t = "DeleteFaqCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataSource = {
  type t
  type request = {
    @as("IndexId") indexId: indexId,
    @as("Id") id: dataSourceId,
  }

  @module("@aws-sdk/client-kendra") @new external new_: request => t = "DeleteDataSourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ClearQuerySuggestions = {
  type t
  type request = {@as("IndexId") indexId: indexId}

  @module("@aws-sdk/client-kendra") @new
  external new_: request => t = "ClearQuerySuggestionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateThesaurus = {
  type t
  type request = {
    @as("SourceS3Path") sourceS3Path: option<s3Path>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("Description") description: option<description>,
    @as("IndexId") indexId: indexId,
    @as("Name") name: option<thesaurusName>,
    @as("Id") id: thesaurusId,
  }

  @module("@aws-sdk/client-kendra") @new external new_: request => t = "UpdateThesaurusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateQuerySuggestionsBlockList = {
  type t
  type request = {
    @as("RoleArn") roleArn: option<roleArn>,
    @as("SourceS3Path") sourceS3Path: option<s3Path>,
    @as("Description") description: option<description>,
    @as("Name") name: option<querySuggestionsBlockListName>,
    @as("Id") id: querySuggestionsBlockListId,
    @as("IndexId") indexId: indexId,
  }

  @module("@aws-sdk/client-kendra") @new
  external new_: request => t = "UpdateQuerySuggestionsBlockListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeThesaurus = {
  type t
  type request = {
    @as("IndexId") indexId: indexId,
    @as("Id") id: thesaurusId,
  }
  type response = {
    @as("SynonymRuleCount") synonymRuleCount: option<long>,
    @as("TermCount") termCount: option<long>,
    @as("FileSizeBytes") fileSizeBytes: option<long>,
    @as("SourceS3Path") sourceS3Path: option<s3Path>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("UpdatedAt") updatedAt: option<timestamp_>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("ErrorMessage") errorMessage: option<errorMessage>,
    @as("Status") status: option<thesaurusStatus>,
    @as("Description") description: option<description>,
    @as("Name") name: option<thesaurusName>,
    @as("IndexId") indexId: option<indexId>,
    @as("Id") id: option<thesaurusId>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "DescribeThesaurusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeQuerySuggestionsBlockList = {
  type t
  type request = {
    @as("Id") id: querySuggestionsBlockListId,
    @as("IndexId") indexId: indexId,
  }
  type response = {
    @as("RoleArn") roleArn: option<roleArn>,
    @as("FileSizeBytes") fileSizeBytes: option<long>,
    @as("ItemCount") itemCount: option<integer_>,
    @as("SourceS3Path") sourceS3Path: option<s3Path>,
    @as("UpdatedAt") updatedAt: option<timestamp_>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("ErrorMessage") errorMessage: option<errorMessage>,
    @as("Status") status: option<querySuggestionsBlockListStatus>,
    @as("Description") description: option<description>,
    @as("Name") name: option<querySuggestionsBlockListName>,
    @as("Id") id: option<querySuggestionsBlockListId>,
    @as("IndexId") indexId: option<indexId>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new_: request => t = "DescribeQuerySuggestionsBlockListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFaq = {
  type t
  type request = {
    @as("IndexId") indexId: indexId,
    @as("Id") id: faqId,
  }
  type response = {
    @as("FileFormat") fileFormat: option<faqFileFormat>,
    @as("ErrorMessage") errorMessage: option<errorMessage>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("Status") status: option<faqStatus>,
    @as("S3Path") s3Path: option<s3Path>,
    @as("UpdatedAt") updatedAt: option<timestamp_>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("Description") description: option<description>,
    @as("Name") name: option<faqName>,
    @as("IndexId") indexId: option<indexId>,
    @as("Id") id: option<faqId>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "DescribeFaqCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SubmitFeedback = {
  type t
  type request = {
    @as("RelevanceFeedbackItems") relevanceFeedbackItems: option<relevanceFeedbackList>,
    @as("ClickFeedbackItems") clickFeedbackItems: option<clickFeedbackList>,
    @as("QueryId") queryId: queryId,
    @as("IndexId") indexId: indexId,
  }

  @module("@aws-sdk/client-kendra") @new external new_: request => t = "SubmitFeedbackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListThesauri = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResultsIntegerForListThesauriRequest>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("IndexId") indexId: indexId,
  }
  type response = {
    @as("ThesaurusSummaryItems") thesaurusSummaryItems: option<thesaurusSummaryItems>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "ListThesauriCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceARN") resourceARN: amazonResourceName}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQuerySuggestionsBlockLists = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResultsIntegerForListQuerySuggestionsBlockLists>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("IndexId") indexId: indexId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("BlockListSummaryItems")
    blockListSummaryItems: option<querySuggestionsBlockListSummaryItems>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new_: request => t = "ListQuerySuggestionsBlockListsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIndices = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResultsIntegerForListIndicesRequest>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("IndexConfigurationSummaryItems")
    indexConfigurationSummaryItems: option<indexConfigurationSummaryList>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "ListIndicesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFaqs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResultsIntegerForListFaqsRequest>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("IndexId") indexId: indexId,
  }
  type response = {
    @as("FaqSummaryItems") faqSummaryItems: option<faqSummaryItems>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "ListFaqsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataSources = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResultsIntegerForListDataSourcesRequest>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("IndexId") indexId: indexId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("SummaryItems") summaryItems: option<dataSourceSummaryList>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "ListDataSourcesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateThesaurus = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientTokenName>,
    @as("SourceS3Path") sourceS3Path: s3Path,
    @as("Tags") tags: option<tagList_>,
    @as("RoleArn") roleArn: roleArn,
    @as("Description") description: option<description>,
    @as("Name") name: thesaurusName,
    @as("IndexId") indexId: indexId,
  }
  type response = {@as("Id") id: option<thesaurusId>}
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "CreateThesaurusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateQuerySuggestionsBlockList = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("RoleArn") roleArn: roleArn,
    @as("ClientToken") clientToken: option<clientTokenName>,
    @as("SourceS3Path") sourceS3Path: s3Path,
    @as("Description") description: option<description>,
    @as("Name") name: querySuggestionsBlockListName,
    @as("IndexId") indexId: indexId,
  }
  type response = {@as("Id") id: option<querySuggestionsBlockListId>}
  @module("@aws-sdk/client-kendra") @new
  external new_: request => t = "CreateQuerySuggestionsBlockListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFaq = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientTokenName>,
    @as("FileFormat") fileFormat: option<faqFileFormat>,
    @as("Tags") tags: option<tagList_>,
    @as("RoleArn") roleArn: roleArn,
    @as("S3Path") s3Path: s3Path,
    @as("Description") description: option<description>,
    @as("Name") name: faqName,
    @as("IndexId") indexId: indexId,
  }
  type response = {@as("Id") id: option<faqId>}
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "CreateFaqCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteDocument = {
  type t
  type request = {
    @as("DataSourceSyncJobMetricTarget")
    dataSourceSyncJobMetricTarget: option<dataSourceSyncJobMetricTarget>,
    @as("DocumentIdList") documentIdList: documentIdList,
    @as("IndexId") indexId: indexId,
  }
  type response = {
    @as("FailedDocuments") failedDocuments: option<batchDeleteDocumentResponseFailedDocuments>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "BatchDeleteDocumentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataSourceSyncJobs = {
  type t
  type request = {
    @as("StatusFilter") statusFilter: option<dataSourceSyncJobStatus>,
    @as("StartTimeFilter") startTimeFilter: option<timeRange>,
    @as("MaxResults") maxResults: option<maxResultsIntegerForListDataSourceSyncJobsRequest>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("IndexId") indexId: indexId,
    @as("Id") id: dataSourceId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("History") history: option<dataSourceSyncJobHistoryList>,
  }
  @module("@aws-sdk/client-kendra") @new
  external new_: request => t = "ListDataSourceSyncJobsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIndex = {
  type t
  type request = {
    @as("UserContextPolicy") userContextPolicy: option<userContextPolicy>,
    @as("UserTokenConfigurations") userTokenConfigurations: option<userTokenConfigurationList>,
    @as("Tags") tags: option<tagList_>,
    @as("ClientToken") clientToken: option<clientTokenName>,
    @as("Description") description: option<description>,
    @as("ServerSideEncryptionConfiguration")
    serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
    @as("RoleArn") roleArn: roleArn,
    @as("Edition") edition: option<indexEdition>,
    @as("Name") name: indexName,
  }
  type response = {@as("Id") id: option<indexId>}
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "CreateIndexCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIndex = {
  type t
  type request = {
    @as("UserContextPolicy") userContextPolicy: option<userContextPolicy>,
    @as("UserTokenConfigurations") userTokenConfigurations: option<userTokenConfigurationList>,
    @as("CapacityUnits") capacityUnits: option<capacityUnitsConfiguration>,
    @as("DocumentMetadataConfigurationUpdates")
    documentMetadataConfigurationUpdates: option<documentMetadataConfigurationList>,
    @as("Description") description: option<description>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("Name") name: option<indexName>,
    @as("Id") id: indexId,
  }

  @module("@aws-sdk/client-kendra") @new external new_: request => t = "UpdateIndexCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeIndex = {
  type t
  type request = {@as("Id") id: indexId}
  type response = {
    @as("UserContextPolicy") userContextPolicy: option<userContextPolicy>,
    @as("UserTokenConfigurations") userTokenConfigurations: option<userTokenConfigurationList>,
    @as("CapacityUnits") capacityUnits: option<capacityUnitsConfiguration>,
    @as("ErrorMessage") errorMessage: option<errorMessage>,
    @as("IndexStatistics") indexStatistics: option<indexStatistics>,
    @as("DocumentMetadataConfigurations")
    documentMetadataConfigurations: option<documentMetadataConfigurationList>,
    @as("UpdatedAt") updatedAt: option<timestamp_>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("Description") description: option<description>,
    @as("Status") status: option<indexStatus>,
    @as("ServerSideEncryptionConfiguration")
    serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("Edition") edition: option<indexEdition>,
    @as("Id") id: option<indexId>,
    @as("Name") name: option<indexName>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "DescribeIndexCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQuerySuggestions = {
  type t
  type request = {
    @as("MaxSuggestionsCount") maxSuggestionsCount: option<integer_>,
    @as("QueryText") queryText: suggestionQueryText,
    @as("IndexId") indexId: indexId,
  }
  type response = {
    @as("Suggestions") suggestions: option<suggestionList>,
    @as("QuerySuggestionsId") querySuggestionsId: option<querySuggestionsId>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "GetQuerySuggestionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchPutDocument = {
  type t
  type request = {
    @as("Documents") documents: documentList,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("IndexId") indexId: indexId,
  }
  type response = {
    @as("FailedDocuments") failedDocuments: option<batchPutDocumentResponseFailedDocuments>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "BatchPutDocumentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataSource = {
  type t
  type request = {
    @as("RoleArn") roleArn: option<roleArn>,
    @as("Schedule") schedule: option<scanSchedule>,
    @as("Description") description: option<description>,
    @as("Configuration") configuration: option<dataSourceConfiguration>,
    @as("IndexId") indexId: indexId,
    @as("Name") name: option<dataSourceName>,
    @as("Id") id: dataSourceId,
  }

  @module("@aws-sdk/client-kendra") @new external new_: request => t = "UpdateDataSourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeDataSource = {
  type t
  type request = {
    @as("IndexId") indexId: indexId,
    @as("Id") id: dataSourceId,
  }
  type response = {
    @as("ErrorMessage") errorMessage: option<errorMessage>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("Schedule") schedule: option<scanSchedule>,
    @as("Status") status: option<dataSourceStatus>,
    @as("Description") description: option<description>,
    @as("UpdatedAt") updatedAt: option<timestamp_>,
    @as("CreatedAt") createdAt: option<timestamp_>,
    @as("Configuration") configuration: option<dataSourceConfiguration>,
    @as("Type") type_: option<dataSourceType>,
    @as("Name") name: option<dataSourceName>,
    @as("IndexId") indexId: option<indexId>,
    @as("Id") id: option<dataSourceId>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "DescribeDataSourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataSource = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientTokenName>,
    @as("Tags") tags: option<tagList_>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("Schedule") schedule: option<scanSchedule>,
    @as("Description") description: option<description>,
    @as("Configuration") configuration: option<dataSourceConfiguration>,
    @as("Type") type_: dataSourceType,
    @as("IndexId") indexId: indexId,
    @as("Name") name: dataSourceName,
  }
  type response = {@as("Id") id: dataSourceId}
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "CreateDataSourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Query = {
  type t
  type request = {
    @as("VisitorId") visitorId: option<visitorId>,
    @as("UserContext") userContext: option<userContext>,
    @as("SortingConfiguration") sortingConfiguration: option<sortingConfiguration>,
    @as("PageSize") pageSize: option<integer_>,
    @as("PageNumber") pageNumber: option<integer_>,
    @as("DocumentRelevanceOverrideConfigurations")
    documentRelevanceOverrideConfigurations: option<documentRelevanceOverrideConfigurationList>,
    @as("QueryResultTypeFilter") queryResultTypeFilter: option<queryResultType>,
    @as("RequestedDocumentAttributes")
    requestedDocumentAttributes: option<documentAttributeKeyList>,
    @as("Facets") facets: option<facetList>,
    @as("AttributeFilter") attributeFilter: option<attributeFilter>,
    @as("QueryText") queryText: queryText,
    @as("IndexId") indexId: indexId,
  }
  type response = {
    @as("TotalNumberOfResults") totalNumberOfResults: option<integer_>,
    @as("FacetResults") facetResults: option<facetResultList>,
    @as("ResultItems") resultItems: option<queryResultItemList>,
    @as("QueryId") queryId: option<queryId>,
  }
  @module("@aws-sdk/client-kendra") @new external new_: request => t = "QueryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
