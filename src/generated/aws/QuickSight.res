type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type workGroup = string
type warehouse = string
type versionNumber = float
type versionDescription = string
type userRole = [@as("RESTRICTED_READER") #RESTRICTEDREADER | @as("RESTRICTED_AUTHOR") #RESTRICTEDAUTHOR | @as("READER") #READER | @as("AUTHOR") #AUTHOR | @as("ADMIN") #ADMIN]
type userName2 = string
type userName = string
type typeCastFormat = string
type timestamp_ = Js.Date.t;
type themeType = [@as("ALL") #ALL | @as("CUSTOM") #CUSTOM | @as("QUICKSIGHT") #QUICKSIGHT]
type themeName = string
type themeErrorType = [@as("INTERNAL_FAILURE") #INTERNALFAILURE]
type textQualifier = [@as("SINGLE_QUOTE") #SINGLEQUOTE | @as("DOUBLE_QUOTE") #DOUBLEQUOTE]
type templateName = string
type templateErrorType = [@as("ACCESS_DENIED") #ACCESSDENIED | @as("INTERNAL_FAILURE") #INTERNALFAILURE | @as("DATA_SET_NOT_FOUND") #DATASETNOTFOUND | @as("SOURCE_NOT_FOUND") #SOURCENOTFOUND]
type tagValue = string
type tagKey = string
type string_ = string
type statusCode = int
type sqlQuery = string
type siteBaseUrl = string
type sessionLifetimeInMinutes = float
type s3Key = string
type s3Bucket = string
type rowLevelPermissionPolicy = [@as("DENY_ACCESS") #DENYACCESS | @as("GRANT_ACCESS") #GRANTACCESS]
type rowLevelPermissionFormatVersion = [@as("VERSION_2") #VERSION2 | @as("VERSION_1") #VERSION1]
type roleSessionName = string
type roleName = string
type restrictiveResourceId = string
type resourceStatus = [@as("DELETED") #DELETED | @as("UPDATE_FAILED") #UPDATEFAILED | @as("UPDATE_SUCCESSFUL") #UPDATESUCCESSFUL | @as("UPDATE_IN_PROGRESS") #UPDATEINPROGRESS | @as("CREATION_FAILED") #CREATIONFAILED | @as("CREATION_SUCCESSFUL") #CREATIONSUCCESSFUL | @as("CREATION_IN_PROGRESS") #CREATIONINPROGRESS]
type resourceName = string
type resourceId = string
type relationalTableSchema = string
type relationalTableName = string
type relationalTableCatalog = string
type recoveryWindowInDays = float
type query = string
type principal = string
type positiveInteger = int
type port = int
type physicalTableId = string
type password = string
type optionalPort = int
type onClause = string
type nonEmptyString = string
type namespaceStatus = [@as("NON_RETRYABLE_FAILURE") #NONRETRYABLEFAILURE | @as("RETRYABLE_FAILURE") #RETRYABLEFAILURE | @as("DELETING") #DELETING | @as("CREATING") #CREATING | @as("CREATED") #CREATED]
type namespaceErrorType = [@as("INTERNAL_SERVICE_ERROR") #INTERNALSERVICEERROR | @as("PERMISSION_DENIED") #PERMISSIONDENIED]
type namespace = string
type maxResults = int
type long = float
type logicalTableId = string
type logicalTableAlias = string
type joinType = [@as("RIGHT") #RIGHT | @as("LEFT") #LEFT | @as("OUTER") #OUTER | @as("INNER") #INNER]
type instanceId = string
type inputColumnDataType = [@as("JSON") #JSON | @as("BOOLEAN") #BOOLEAN | @as("BIT") #BIT | @as("DATETIME") #DATETIME | @as("DECIMAL") #DECIMAL | @as("INTEGER") #INTEGER | @as("STRING") #STRING]
type ingestionStatus = [@as("CANCELLED") #CANCELLED | @as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("RUNNING") #RUNNING | @as("QUEUED") #QUEUED | @as("INITIALIZED") #INITIALIZED]
type ingestionRequestType = [@as("FULL_REFRESH") #FULLREFRESH | @as("INCREMENTAL_REFRESH") #INCREMENTALREFRESH | @as("EDIT") #EDIT | @as("INITIAL_INGESTION") #INITIALINGESTION]
type ingestionRequestSource = [@as("SCHEDULED") #SCHEDULED | @as("MANUAL") #MANUAL]
type ingestionMaxResults = int
type ingestionId = string
type ingestionErrorType = [@as("INTERNAL_SERVICE_ERROR") #INTERNALSERVICEERROR | @as("FAILURE_TO_PROCESS_JSON_FILE") #FAILURETOPROCESSJSONFILE | @as("DATA_SOURCE_CONNECTION_FAILED") #DATASOURCECONNECTIONFAILED | @as("DATA_SOURCE_AUTH_FAILED") #DATASOURCEAUTHFAILED | @as("INVALID_DATA_SOURCE_CONFIG") #INVALIDDATASOURCECONFIG | @as("IOT_DATA_SET_FILE_EMPTY") #IOTDATASETFILEEMPTY | @as("IOT_FILE_NOT_FOUND") #IOTFILENOTFOUND | @as("S3_FILE_INACCESSIBLE") #S3FILEINACCESSIBLE | @as("SQL_EXCEPTION") #SQLEXCEPTION | @as("UNROUTABLE_HOST") #UNROUTABLEHOST | @as("UNRESOLVABLE_HOST") #UNRESOLVABLEHOST | @as("SQL_NUMERIC_OVERFLOW") #SQLNUMERICOVERFLOW | @as("QUERY_TIMEOUT") #QUERYTIMEOUT | @as("SQL_INVALID_PARAMETER_VALUE") #SQLINVALIDPARAMETERVALUE | @as("SOURCE_RESOURCE_LIMIT_EXCEEDED") #SOURCERESOURCELIMITEXCEEDED | @as("INVALID_DATAPREP_SYNTAX") #INVALIDDATAPREPSYNTAX | @as("INVALID_DATE_FORMAT") #INVALIDDATEFORMAT | @as("SQL_SCHEMA_MISMATCH_ERROR") #SQLSCHEMAMISMATCHERROR | @as("PASSWORD_AUTHENTICATION_FAILURE") #PASSWORDAUTHENTICATIONFAILURE | @as("SOURCE_API_LIMIT_EXCEEDED_FAILURE") #SOURCEAPILIMITEXCEEDEDFAILURE | @as("OAUTH_TOKEN_FAILURE") #OAUTHTOKENFAILURE | @as("SSL_CERTIFICATE_VALIDATION_FAILURE") #SSLCERTIFICATEVALIDATIONFAILURE | @as("PERMISSION_DENIED") #PERMISSIONDENIED | @as("SQL_TABLE_NOT_FOUND") #SQLTABLENOTFOUND | @as("CONNECTION_FAILURE") #CONNECTIONFAILURE | @as("IAM_ROLE_NOT_AVAILABLE") #IAMROLENOTAVAILABLE | @as("DATA_SOURCE_NOT_FOUND") #DATASOURCENOTFOUND | @as("CUSTOMER_ERROR") #CUSTOMERERROR | @as("ACCOUNT_CAPACITY_LIMIT_EXCEEDED") #ACCOUNTCAPACITYLIMITEXCEEDED | @as("ROW_SIZE_LIMIT_EXCEEDED") #ROWSIZELIMITEXCEEDED | @as("DATA_SET_SIZE_LIMIT_EXCEEDED") #DATASETSIZELIMITEXCEEDED | @as("SPICE_TABLE_NOT_FOUND") #SPICETABLENOTFOUND | @as("DATA_TOLERANCE_EXCEPTION") #DATATOLERANCEEXCEPTION | @as("S3_MANIFEST_ERROR") #S3MANIFESTERROR | @as("S3_UPLOADED_FILE_DELETED") #S3UPLOADEDFILEDELETED | @as("DATA_SET_NOT_SPICE") #DATASETNOTSPICE | @as("DATA_SET_DELETED") #DATASETDELETED | @as("INGESTION_CANCELED") #INGESTIONCANCELED | @as("INGESTION_SUPERSEDED") #INGESTIONSUPERSEDED | @as("FAILURE_TO_ASSUME_ROLE") #FAILURETOASSUMEROLE]
type identityType = [@as("QUICKSIGHT") #QUICKSIGHT | @as("IAM") #IAM]
type identityStore = [@as("QUICKSIGHT") #QUICKSIGHT]
type identityName = string
type iampolicyAssignmentName = string
type host = string
type hexColor = string
type groupName = string
type groupMemberName = string
type groupDescription = string
type geoSpatialDataRole = [@as("LATITUDE") #LATITUDE | @as("LONGITUDE") #LONGITUDE | @as("POSTCODE") #POSTCODE | @as("CITY") #CITY | @as("COUNTY") #COUNTY | @as("STATE") #STATE | @as("COUNTRY") #COUNTRY]
type geoSpatialCountryCode = [@as("US") #US]
type filterOperator = [@as("StringEquals") #StringEquals]
type fileFormat = [@as("JSON") #JSON | @as("XLSX") #XLSX | @as("ELF") #ELF | @as("CLF") #CLF | @as("TSV") #TSV | @as("CSV") #CSV]
type fieldFolderPath = string
type fieldFolderDescription = string
type expression = string
type exceptionResourceType = [@as("INGESTION") #INGESTION | @as("VPC_CONNECTION") #VPCCONNECTION | @as("DATA_SET") #DATASET | @as("DATA_SOURCE") #DATASOURCE | @as("IAMPOLICY_ASSIGNMENT") #IAMPOLICYASSIGNMENT | @as("ACCOUNT_SETTINGS") #ACCOUNTSETTINGS | @as("NAMESPACE") #NAMESPACE | @as("GROUP") #GROUP | @as("USER") #USER]
type entryPoint = string
type embeddingUrl = string
type embeddingIdentityType = [@as("ANONYMOUS") #ANONYMOUS | @as("QUICKSIGHT") #QUICKSIGHT | @as("IAM") #IAM]
type edition = [@as("ENTERPRISE") #ENTERPRISE | @as("STANDARD") #STANDARD]
type double = float
type domain = string
type delimiter = string
type database = string
type dataSourceType = [@as("TIMESTREAM") #TIMESTREAM | @as("TWITTER") #TWITTER | @as("TERADATA") #TERADATA | @as("SQLSERVER") #SQLSERVER | @as("SPARK") #SPARK | @as("SNOWFLAKE") #SNOWFLAKE | @as("SERVICENOW") #SERVICENOW | @as("SALESFORCE") #SALESFORCE | @as("S3") #S3 | @as("REDSHIFT") #REDSHIFT | @as("PRESTO") #PRESTO | @as("POSTGRESQL") #POSTGRESQL | @as("ORACLE") #ORACLE | @as("MYSQL") #MYSQL | @as("MARIADB") #MARIADB | @as("JIRA") #JIRA | @as("GITHUB") #GITHUB | @as("AWS_IOT_ANALYTICS") #AWSIOTANALYTICS | @as("AURORA_POSTGRESQL") #AURORAPOSTGRESQL | @as("AURORA") #AURORA | @as("ATHENA") #ATHENA | @as("AMAZON_ELASTICSEARCH") #AMAZONELASTICSEARCH | @as("ADOBE_ANALYTICS") #ADOBEANALYTICS]
type dataSourceErrorInfoType = [@as("UNKNOWN") #UNKNOWN | @as("CONFLICT") #CONFLICT | @as("GENERIC_SQL_FAILURE") #GENERICSQLFAILURE | @as("UNKNOWN_HOST") #UNKNOWNHOST | @as("ENGINE_VERSION_NOT_SUPPORTED") #ENGINEVERSIONNOTSUPPORTED | @as("TIMEOUT") #TIMEOUT | @as("COPY_SOURCE_NOT_FOUND") #COPYSOURCENOTFOUND | @as("ACCESS_DENIED") #ACCESSDENIED]
type dataSetName = string
type dataSetImportMode = [@as("DIRECT_QUERY") #DIRECTQUERY | @as("SPICE") #SPICE]
type dashboardUIState = [@as("COLLAPSED") #COLLAPSED | @as("EXPANDED") #EXPANDED]
type dashboardName = string
type dashboardFilterAttribute = [@as("QUICKSIGHT_USER") #QUICKSIGHTUSER]
type dashboardErrorType = [@as("COLUMN_REPLACEMENT_MISSING") #COLUMNREPLACEMENTMISSING | @as("COLUMN_GEOGRAPHIC_ROLE_MISMATCH") #COLUMNGEOGRAPHICROLEMISMATCH | @as("COLUMN_TYPE_MISMATCH") #COLUMNTYPEMISMATCH | @as("PARAMETER_NOT_FOUND") #PARAMETERNOTFOUND | @as("PARAMETER_TYPE_INVALID") #PARAMETERTYPEINVALID | @as("PARAMETER_VALUE_INCOMPATIBLE") #PARAMETERVALUEINCOMPATIBLE | @as("INTERNAL_FAILURE") #INTERNALFAILURE | @as("DATA_SET_NOT_FOUND") #DATASETNOTFOUND | @as("SOURCE_NOT_FOUND") #SOURCENOTFOUND | @as("ACCESS_DENIED") #ACCESSDENIED]
type dashboardBehavior = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type customSqlName = string
type copySourceArn = string
type columnName = string
type columnId = string
type columnGroupName = string
type columnDescriptiveText = string
type columnDataType = [@as("DATETIME") #DATETIME | @as("DECIMAL") #DECIMAL | @as("INTEGER") #INTEGER | @as("STRING") #STRING]
type clusterId = string
type catalog = string
type boolean_ = bool
type awsAndAccountId = string
type awsAccountId = string
type assignmentStatus = [@as("DISABLED") #DISABLED | @as("DRAFT") #DRAFT | @as("ENABLED") #ENABLED]
type arn = string
type analysisName = string
type analysisFilterAttribute = [@as("QUICKSIGHT_USER") #QUICKSIGHTUSER]
type analysisErrorType = [@as("COLUMN_REPLACEMENT_MISSING") #COLUMNREPLACEMENTMISSING | @as("COLUMN_GEOGRAPHIC_ROLE_MISMATCH") #COLUMNGEOGRAPHICROLEMISMATCH | @as("COLUMN_TYPE_MISMATCH") #COLUMNTYPEMISMATCH | @as("PARAMETER_NOT_FOUND") #PARAMETERNOTFOUND | @as("PARAMETER_TYPE_INVALID") #PARAMETERTYPEINVALID | @as("PARAMETER_VALUE_INCOMPATIBLE") #PARAMETERVALUEINCOMPATIBLE | @as("INTERNAL_FAILURE") #INTERNALFAILURE | @as("DATA_SET_NOT_FOUND") #DATASETNOTFOUND | @as("SOURCE_NOT_FOUND") #SOURCENOTFOUND | @as("ACCESS_DENIED") #ACCESSDENIED]
type aliasName = string
type vpcConnectionProperties = {
@as("VpcConnectionArn") vpcConnectionArn: arn
}
type user = {
@as("ExternalLoginId") externalLoginId: option<string_>,
@as("ExternalLoginFederationProviderUrl") externalLoginFederationProviderUrl: option<string_>,
@as("ExternalLoginFederationProviderType") externalLoginFederationProviderType: option<string_>,
@as("CustomPermissionsName") customPermissionsName: option<roleName>,
@as("PrincipalId") principalId: option<string_>,
@as("Active") active: option<boolean_>,
@as("IdentityType") identityType: option<identityType>,
@as("Role") role: option<userRole>,
@as("Email") email: option<string_>,
@as("UserName") userName: option<userName>,
@as("Arn") arn: option<arn>
}
type uploadSettings = {
@as("Delimiter") delimiter: option<delimiter>,
@as("TextQualifier") textQualifier: option<textQualifier>,
@as("ContainsHeader") containsHeader: option<boolean_>,
@as("StartFromRow") startFromRow: option<positiveInteger>,
@as("Format") format: option<fileFormat>
}
type uicolorPalette = {
@as("MeasureForeground") measureForeground: option<hexColor>,
@as("Measure") measure: option<hexColor>,
@as("DimensionForeground") dimensionForeground: option<hexColor>,
@as("Dimension") dimension: option<hexColor>,
@as("SuccessForeground") successForeground: option<hexColor>,
@as("Success") success: option<hexColor>,
@as("WarningForeground") warningForeground: option<hexColor>,
@as("Warning") warning: option<hexColor>,
@as("DangerForeground") dangerForeground: option<hexColor>,
@as("Danger") danger: option<hexColor>,
@as("AccentForeground") accentForeground: option<hexColor>,
@as("Accent") accent: option<hexColor>,
@as("SecondaryBackground") secondaryBackground: option<hexColor>,
@as("SecondaryForeground") secondaryForeground: option<hexColor>,
@as("PrimaryBackground") primaryBackground: option<hexColor>,
@as("PrimaryForeground") primaryForeground: option<hexColor>
}
type twitterParameters = {
@as("MaxRows") maxRows: positiveInteger,
@as("Query") query: query
}
type timestampList = array<timestamp_>
type themeVersionSummary = {
@as("Status") status: option<resourceStatus>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("Description") description: option<versionDescription>,
@as("Arn") arn: option<arn>,
@as("VersionNumber") versionNumber: option<versionNumber>
}
type themeSummary = {
@as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("LatestVersionNumber") latestVersionNumber: option<versionNumber>,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("Name") name: option<themeName>,
@as("Arn") arn: option<arn>
}
type themeError = {
@as("Message") message: option<nonEmptyString>,
@as("Type") type_: option<themeErrorType>
}
type themeAlias = {
@as("ThemeVersionNumber") themeVersionNumber: option<versionNumber>,
@as("AliasName") aliasName: option<aliasName>,
@as("Arn") arn: option<arn>
}
type teradataParameters = {
@as("Database") database: database,
@as("Port") port: port,
@as("Host") host: host
}
type templateVersionSummary = {
@as("Description") description: option<versionDescription>,
@as("Status") status: option<resourceStatus>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("VersionNumber") versionNumber: option<versionNumber>,
@as("Arn") arn: option<arn>
}
type templateSummary = {
@as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("LatestVersionNumber") latestVersionNumber: option<versionNumber>,
@as("Name") name: option<templateName>,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("Arn") arn: option<arn>
}
type templateSourceTemplate = {
@as("Arn") arn: arn
}
type templateError = {
@as("Message") message: option<nonEmptyString>,
@as("Type") type_: option<templateErrorType>
}
type templateAlias = {
@as("TemplateVersionNumber") templateVersionNumber: option<versionNumber>,
@as("Arn") arn: option<arn>,
@as("AliasName") aliasName: option<aliasName>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type stringList = array<string_>
type sslProperties = {
@as("DisableSsl") disableSsl: option<boolean_>
}
type sqlServerParameters = {
@as("Database") database: database,
@as("Port") port: port,
@as("Host") host: host
}
type sparkParameters = {
@as("Port") port: port,
@as("Host") host: host
}
type snowflakeParameters = {
@as("Warehouse") warehouse: warehouse,
@as("Database") database: database,
@as("Host") host: host
}
type sheetControlsOption = {
@as("VisibilityState") visibilityState: option<dashboardUIState>
}
type sheet = {
@as("Name") name: option<nonEmptyString>,
@as("SheetId") sheetId: option<restrictiveResourceId>
}
type serviceNowParameters = {
@as("SiteBaseUrl") siteBaseUrl: siteBaseUrl
}
type rowLevelPermissionDataSet = {
@as("FormatVersion") formatVersion: option<rowLevelPermissionFormatVersion>,
@as("PermissionPolicy") permissionPolicy: rowLevelPermissionPolicy,
@as("Arn") arn: arn,
@as("Namespace") namespace: option<namespace>
}
type rowInfo = {
@as("RowsDropped") rowsDropped: option<long>,
@as("RowsIngested") rowsIngested: option<long>
}
type renameColumnOperation = {
@as("NewColumnName") newColumnName: columnName,
@as("ColumnName") columnName: columnName
}
type redshiftParameters = {
@as("ClusterId") clusterId: option<clusterId>,
@as("Database") database: database,
@as("Port") port: option<optionalPort>,
@as("Host") host: option<host>
}
type rdsParameters = {
@as("Database") database: database,
@as("InstanceId") instanceId: instanceId
}
type queueInfo = {
@as("QueuedIngestion") queuedIngestion: string_,
@as("WaitingOnIngestion") waitingOnIngestion: string_
}
type projectedColumnList = array<string_>
type principalList = array<string_>
type prestoParameters = {
@as("Catalog") catalog: catalog,
@as("Port") port: port,
@as("Host") host: host
}
type postgreSqlParameters = {
@as("Database") database: database,
@as("Port") port: port,
@as("Host") host: host
}
type outputColumn = {
@as("Type") type_: option<columnDataType>,
@as("Description") description: option<columnDescriptiveText>,
@as("Name") name: option<columnName>
}
type oracleParameters = {
@as("Database") database: database,
@as("Port") port: port,
@as("Host") host: host
}
type namespaceError = {
@as("Message") message: option<string_>,
@as("Type") type_: option<namespaceErrorType>
}
type mySqlParameters = {
@as("Database") database: database,
@as("Port") port: port,
@as("Host") host: host
}
type mariaDbParameters = {
@as("Database") database: database,
@as("Port") port: port,
@as("Host") host: host
}
type marginStyle = {
@as("Show") show: option<boolean_>
}
type manifestFileLocation = {
@as("Key") key: s3Key,
@as("Bucket") bucket: s3Bucket
}
type longList = array<long>
type joinKeyProperties = {
@as("UniqueKey") uniqueKey: option<boolean_>
}
type jiraParameters = {
@as("SiteBaseUrl") siteBaseUrl: siteBaseUrl
}
type inputColumn = {
@as("Type") type_: inputColumnDataType,
@as("Name") name: columnName
}
type identityNameList = array<identityName>
type iampolicyAssignmentSummary = {
@as("AssignmentStatus") assignmentStatus: option<assignmentStatus>,
@as("AssignmentName") assignmentName: option<iampolicyAssignmentName>
}
type gutterStyle = {
@as("Show") show: option<boolean_>
}
type groupMember = {
@as("MemberName") memberName: option<groupMemberName>,
@as("Arn") arn: option<arn>
}
type group = {
@as("PrincipalId") principalId: option<string_>,
@as("Description") description: option<groupDescription>,
@as("GroupName") groupName: option<groupName>,
@as("Arn") arn: option<arn>
}
type folderColumnList = array<string_>
type filterOperation = {
@as("ConditionExpression") conditionExpression: expression
}
type exportToCSVOption = {
@as("AvailabilityStatus") availabilityStatus: option<dashboardBehavior>
}
type errorInfo = {
@as("Message") message: option<string_>,
@as("Type") type_: option<ingestionErrorType>
}
type doubleList = array<double>
type dataSourceErrorInfo = {
@as("Message") message: option<string_>,
@as("Type") type_: option<dataSourceErrorInfoType>
}
type dataSetReference = {
@as("DataSetArn") dataSetArn: arn,
@as("DataSetPlaceholder") dataSetPlaceholder: nonEmptyString
}
type dataSetArnsList = array<arn>
type dashboardVersionSummary = {
@as("Description") description: option<versionDescription>,
@as("SourceEntityArn") sourceEntityArn: option<arn>,
@as("Status") status: option<resourceStatus>,
@as("VersionNumber") versionNumber: option<versionNumber>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("Arn") arn: option<arn>
}
type dashboardSummary = {
@as("LastPublishedTime") lastPublishedTime: option<timestamp_>,
@as("PublishedVersionNumber") publishedVersionNumber: option<versionNumber>,
@as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("Name") name: option<dashboardName>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("Arn") arn: option<arn>
}
type dashboardSearchFilter = {
@as("Value") value: option<string_>,
@as("Name") name: option<dashboardFilterAttribute>,
@as("Operator") operator: filterOperator
}
type dashboardError = {
@as("Message") message: option<nonEmptyString>,
@as("Type") type_: option<dashboardErrorType>
}
type columnSchema = {
@as("GeographicRole") geographicRole: option<string_>,
@as("DataType") dataType: option<string_>,
@as("Name") name: option<string_>
}
type columnNameList = array<string_>
type columnList = array<columnName>
type columnGroupColumnSchema = {
@as("Name") name: option<string_>
}
type columnDescription = {
@as("Text") text: option<columnDescriptiveText>
}
type colorList = array<hexColor>
type castColumnTypeOperation = {
@as("Format") format: option<typeCastFormat>,
@as("NewColumnType") newColumnType: columnDataType,
@as("ColumnName") columnName: columnName
}
type calculatedColumn = {
@as("Expression") expression: expression,
@as("ColumnId") columnId: columnId,
@as("ColumnName") columnName: columnName
}
type borderStyle = {
@as("Show") show: option<boolean_>
}
type awsIotAnalyticsParameters = {
@as("DataSetName") dataSetName: dataSetName
}
type auroraPostgreSqlParameters = {
@as("Database") database: database,
@as("Port") port: port,
@as("Host") host: host
}
type auroraParameters = {
@as("Database") database: database,
@as("Port") port: port,
@as("Host") host: host
}
type athenaParameters = {
@as("WorkGroup") workGroup: option<workGroup>
}
type analysisSummary = {
@as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("Status") status: option<resourceStatus>,
@as("Name") name: option<analysisName>,
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("Arn") arn: option<arn>
}
type analysisSearchFilter = {
@as("Value") value: option<string_>,
@as("Name") name: option<analysisFilterAttribute>,
@as("Operator") operator: option<filterOperator>
}
type analysisError = {
@as("Message") message: option<nonEmptyString>,
@as("Type") type_: option<analysisErrorType>
}
type amazonElasticsearchParameters = {
@as("Domain") domain: domain
}
type additionalDashboardIdList = array<restrictiveResourceId>
type adHocFilteringOption = {
@as("AvailabilityStatus") availabilityStatus: option<dashboardBehavior>
}
type activeIAMPolicyAssignment = {
@as("PolicyArn") policyArn: option<arn>,
@as("AssignmentName") assignmentName: option<iampolicyAssignmentName>
}
type actionList = array<string_>
type accountSettings = {
@as("NotificationEmail") notificationEmail: option<string_>,
@as("DefaultNamespace") defaultNamespace: option<namespace>,
@as("Edition") edition: option<edition>,
@as("AccountName") accountName: option<string_>
}
type accountCustomization = {
@as("DefaultTheme") defaultTheme: option<arn>
}
type userList = array<user>
type tileStyle = {
@as("Border") border: option<borderStyle>
}
type tileLayoutStyle = {
@as("Margin") margin: option<marginStyle>,
@as("Gutter") gutter: option<gutterStyle>
}
type themeVersionSummaryList = array<themeVersionSummary>
type themeSummaryList = array<themeSummary>
type themeErrorList = array<themeError>
type themeAliasList = array<themeAlias>
type templateVersionSummaryList = array<templateVersionSummary>
type templateSummaryList = array<templateSummary>
type templateErrorList = array<templateError>
type templateAliasList = array<templateAlias>
type tagList_ = array<tag>
type stringParameter = {
@as("Values") values: stringList,
@as("Name") name: nonEmptyString
}
type sheetList = array<sheet>
type s3Parameters = {
@as("ManifestFileLocation") manifestFileLocation: manifestFileLocation
}
type resourcePermission = {
@as("Actions") actions: actionList,
@as("Principal") principal: principal
}
type projectOperation = {
@as("ProjectedColumns") projectedColumns: projectedColumnList
}
type outputColumnList = array<outputColumn>
type namespaceInfoV2 = {
@as("NamespaceError") namespaceError: option<namespaceError>,
@as("IdentityStore") identityStore: option<identityStore>,
@as("CreationStatus") creationStatus: option<namespaceStatus>,
@as("CapacityRegion") capacityRegion: option<string_>,
@as("Arn") arn: option<arn>,
@as("Name") name: option<namespace>
}
type joinInstruction = {
@as("OnClause") onClause: onClause,
@as("Type") type_: joinType,
@as("RightJoinKeyProperties") rightJoinKeyProperties: option<joinKeyProperties>,
@as("LeftJoinKeyProperties") leftJoinKeyProperties: option<joinKeyProperties>,
@as("RightOperand") rightOperand: logicalTableId,
@as("LeftOperand") leftOperand: logicalTableId
}
type integerParameter = {
@as("Values") values: longList,
@as("Name") name: nonEmptyString
}
type inputColumnList = array<inputColumn>
type ingestion = {
@as("RequestType") requestType: option<ingestionRequestType>,
@as("RequestSource") requestSource: option<ingestionRequestSource>,
@as("IngestionSizeInBytes") ingestionSizeInBytes: option<long>,
@as("IngestionTimeInSeconds") ingestionTimeInSeconds: option<long>,
@as("CreatedTime") createdTime: timestamp_,
@as("QueueInfo") queueInfo: option<queueInfo>,
@as("RowInfo") rowInfo: option<rowInfo>,
@as("ErrorInfo") errorInfo: option<errorInfo>,
@as("IngestionStatus") ingestionStatus: ingestionStatus,
@as("IngestionId") ingestionId: option<ingestionId>,
@as("Arn") arn: arn
}
type identityMap = Js.Dict.t< identityNameList>
type iampolicyAssignmentSummaryList = array<iampolicyAssignmentSummary>
type groupMemberList = array<groupMember>
type groupList = array<group>
type geoSpatialColumnGroup = {
@as("Columns") columns: columnList,
@as("CountryCode") countryCode: geoSpatialCountryCode,
@as("Name") name: columnGroupName
}
type fieldFolder = {
columns: option<folderColumnList>,
description: option<fieldFolderDescription>
}
type decimalParameter = {
@as("Values") values: doubleList,
@as("Name") name: nonEmptyString
}
type dateTimeParameter = {
@as("Values") values: timestampList,
@as("Name") name: nonEmptyString
}
type dataSetSummary = {
@as("ColumnLevelPermissionRulesApplied") columnLevelPermissionRulesApplied: option<boolean_>,
@as("RowLevelPermissionDataSet") rowLevelPermissionDataSet: option<rowLevelPermissionDataSet>,
@as("ImportMode") importMode: option<dataSetImportMode>,
@as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("Name") name: option<resourceName>,
@as("DataSetId") dataSetId: option<resourceId>,
@as("Arn") arn: option<arn>
}
type dataSetReferenceList = array<dataSetReference>
type dataColorPalette = {
@as("EmptyFillColor") emptyFillColor: option<hexColor>,
@as("MinMaxGradient") minMaxGradient: option<colorList>,
@as("Colors") colors: option<colorList>
}
type dashboardVersionSummaryList = array<dashboardVersionSummary>
type dashboardSummaryList = array<dashboardSummary>
type dashboardSearchFilterList = array<dashboardSearchFilter>
type dashboardPublishOptions = {
@as("SheetControlsOption") sheetControlsOption: option<sheetControlsOption>,
@as("ExportToCSVOption") exportToCSVOption: option<exportToCSVOption>,
@as("AdHocFilteringOption") adHocFilteringOption: option<adHocFilteringOption>
}
type dashboardErrorList = array<dashboardError>
type columnTag = {
@as("ColumnDescription") columnDescription: option<columnDescription>,
@as("ColumnGeographicRole") columnGeographicRole: option<geoSpatialDataRole>
}
type columnSchemaList = array<columnSchema>
type columnLevelPermissionRule = {
@as("ColumnNames") columnNames: option<columnNameList>,
@as("Principals") principals: option<principalList>
}
type columnGroupColumnSchemaList = array<columnGroupColumnSchema>
type calculatedColumnList = array<calculatedColumn>
type analysisSummaryList = array<analysisSummary>
type analysisSearchFilterList = array<analysisSearchFilter>
type analysisErrorList = array<analysisError>
type activeIAMPolicyAssignmentList = array<activeIAMPolicyAssignment>
type updateResourcePermissionList = array<resourcePermission>
type templateSourceAnalysis = {
@as("DataSetReferences") dataSetReferences: dataSetReferenceList,
@as("Arn") arn: arn
}
type stringParameterList = array<stringParameter>
type sheetStyle = {
@as("TileLayout") tileLayout: option<tileLayoutStyle>,
@as("Tile") tile: option<tileStyle>
}
type s3Source = {
@as("InputColumns") inputColumns: inputColumnList,
@as("UploadSettings") uploadSettings: option<uploadSettings>,
@as("DataSourceArn") dataSourceArn: arn
}
type resourcePermissionList = array<resourcePermission>
type relationalTable = {
@as("InputColumns") inputColumns: inputColumnList,
@as("Name") name: relationalTableName,
@as("Schema") schema: option<relationalTableSchema>,
@as("Catalog") catalog: option<relationalTableCatalog>,
@as("DataSourceArn") dataSourceArn: arn
}
type namespaces = array<namespaceInfoV2>
type logicalTableSource = {
@as("PhysicalTableId") physicalTableId: option<physicalTableId>,
@as("JoinInstruction") joinInstruction: option<joinInstruction>
}
type integerParameterList = array<integerParameter>
type ingestions = array<ingestion>
type iampolicyAssignment = {
@as("AssignmentStatus") assignmentStatus: option<assignmentStatus>,
@as("Identities") identities: option<identityMap>,
@as("PolicyArn") policyArn: option<arn>,
@as("AssignmentName") assignmentName: option<iampolicyAssignmentName>,
@as("AssignmentId") assignmentId: option<string_>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
type fieldFolderMap = Js.Dict.t< fieldFolder>
type decimalParameterList = array<decimalParameter>
type dateTimeParameterList = array<dateTimeParameter>
type dataSourceParameters = TwitterParameters(twitterParameters) | TeradataParameters(teradataParameters) | SqlServerParameters(sqlServerParameters) | SparkParameters(sparkParameters) | SnowflakeParameters(snowflakeParameters) | ServiceNowParameters(serviceNowParameters) | S3Parameters(s3Parameters) | RedshiftParameters(redshiftParameters) | RdsParameters(rdsParameters) | PrestoParameters(prestoParameters) | PostgreSqlParameters(postgreSqlParameters) | OracleParameters(oracleParameters) | MySqlParameters(mySqlParameters) | MariaDbParameters(mariaDbParameters) | JiraParameters(jiraParameters) | AwsIotAnalyticsParameters(awsIotAnalyticsParameters) | AuroraPostgreSqlParameters(auroraPostgreSqlParameters) | AuroraParameters(auroraParameters) | AthenaParameters(athenaParameters) | AmazonElasticsearchParameters(amazonElasticsearchParameters);
type dataSetSummaryList = array<dataSetSummary>
type dataSetSchema = {
@as("ColumnSchemaList") columnSchemaList: option<columnSchemaList>
}
type dashboardVersion = {
@as("Sheets") sheets: option<sheetList>,
@as("ThemeArn") themeArn: option<arn>,
@as("Description") description: option<versionDescription>,
@as("DataSetArns") dataSetArns: option<dataSetArnsList>,
@as("SourceEntityArn") sourceEntityArn: option<arn>,
@as("Arn") arn: option<arn>,
@as("Status") status: option<resourceStatus>,
@as("VersionNumber") versionNumber: option<versionNumber>,
@as("Errors") errors: option<dashboardErrorList>,
@as("CreatedTime") createdTime: option<timestamp_>
}
type dashboardSourceTemplate = {
@as("Arn") arn: arn,
@as("DataSetReferences") dataSetReferences: dataSetReferenceList
}
type customSql = {
@as("Columns") columns: option<inputColumnList>,
@as("SqlQuery") sqlQuery: sqlQuery,
@as("Name") name: customSqlName,
@as("DataSourceArn") dataSourceArn: arn
}
type createColumnsOperation = {
@as("Columns") columns: calculatedColumnList
}
type columnTagList = array<columnTag>
type columnLevelPermissionRuleList = array<columnLevelPermissionRule>
type columnGroupSchema = {
@as("ColumnGroupColumnSchemaList") columnGroupColumnSchemaList: option<columnGroupColumnSchemaList>,
@as("Name") name: option<string_>
}
type columnGroup = {
@as("GeoSpatialColumnGroup") geoSpatialColumnGroup: option<geoSpatialColumnGroup>
}
type analysisSourceTemplate = {
@as("Arn") arn: arn,
@as("DataSetReferences") dataSetReferences: dataSetReferenceList
}
type analysis = {
@as("Sheets") sheets: option<sheetList>,
@as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("ThemeArn") themeArn: option<arn>,
@as("DataSetArns") dataSetArns: option<dataSetArnsList>,
@as("Errors") errors: option<analysisErrorList>,
@as("Status") status: option<resourceStatus>,
@as("Name") name: option<analysisName>,
@as("Arn") arn: option<arn>,
@as("AnalysisId") analysisId: option<restrictiveResourceId>
}
type themeConfiguration = {
@as("Sheet") sheet: option<sheetStyle>,
@as("UIColorPalette") uicolorPalette: option<uicolorPalette>,
@as("DataColorPalette") dataColorPalette: option<dataColorPalette>
}
type templateSourceEntity = {
@as("SourceTemplate") sourceTemplate: option<templateSourceTemplate>,
@as("SourceAnalysis") sourceAnalysis: option<templateSourceAnalysis>
}
type tagColumnOperation = {
@as("Tags") tags: columnTagList,
@as("ColumnName") columnName: columnName
}
type physicalTable = S3Source(s3Source) | CustomSql(customSql) | RelationalTable(relationalTable);
type parameters = {
@as("DateTimeParameters") dateTimeParameters: option<dateTimeParameterList>,
@as("DecimalParameters") decimalParameters: option<decimalParameterList>,
@as("IntegerParameters") integerParameters: option<integerParameterList>,
@as("StringParameters") stringParameters: option<stringParameterList>
}
type dataSourceParametersList = array<dataSourceParameters>
type dashboardSourceEntity = {
@as("SourceTemplate") sourceTemplate: option<dashboardSourceTemplate>
}
type dashboard = {
@as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
@as("LastPublishedTime") lastPublishedTime: option<timestamp_>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("Version") version: option<dashboardVersion>,
@as("Name") name: option<dashboardName>,
@as("Arn") arn: option<arn>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>
}
type columnGroupSchemaList = array<columnGroupSchema>
type columnGroupList = array<columnGroup>
type analysisSourceEntity = {
@as("SourceTemplate") sourceTemplate: option<analysisSourceTemplate>
}
type transformOperation = TagColumnOperation(tagColumnOperation) | CastColumnTypeOperation(castColumnTypeOperation) | RenameColumnOperation(renameColumnOperation) | CreateColumnsOperation(createColumnsOperation) | FilterOperation(filterOperation) | ProjectOperation(projectOperation);
type themeVersion = {
@as("Status") status: option<resourceStatus>,
@as("Errors") errors: option<themeErrorList>,
@as("Configuration") configuration: option<themeConfiguration>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("BaseThemeId") baseThemeId: option<restrictiveResourceId>,
@as("Description") description: option<versionDescription>,
@as("Arn") arn: option<arn>,
@as("VersionNumber") versionNumber: option<versionNumber>
}
type physicalTableMap = Js.Dict.t< physicalTable>
type dataSource = {
@as("ErrorInfo") errorInfo: option<dataSourceErrorInfo>,
@as("SslProperties") sslProperties: option<sslProperties>,
@as("VpcConnectionProperties") vpcConnectionProperties: option<vpcConnectionProperties>,
@as("AlternateDataSourceParameters") alternateDataSourceParameters: option<dataSourceParametersList>,
@as("DataSourceParameters") dataSourceParameters: option<dataSourceParameters>,
@as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("Status") status: option<resourceStatus>,
@as("Type") type_: option<dataSourceType>,
@as("Name") name: option<resourceName>,
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("Arn") arn: option<arn>
}
type dataSetConfiguration = {
@as("ColumnGroupSchemaList") columnGroupSchemaList: option<columnGroupSchemaList>,
@as("DataSetSchema") dataSetSchema: option<dataSetSchema>,
@as("Placeholder") placeholder: option<string_>
}
type credentialPair = {
@as("AlternateDataSourceParameters") alternateDataSourceParameters: option<dataSourceParametersList>,
@as("Password") password: password,
@as("Username") username: userName2
}
type transformOperationList = array<transformOperation>
type theme = {
@as("Type") type_: option<themeType>,
@as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("Version") version: option<themeVersion>,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("Name") name: option<themeName>,
@as("Arn") arn: option<arn>
}
type dataSourceList = array<dataSource>
type dataSourceCredentials = {
@as("CopySourceArn") copySourceArn: option<copySourceArn>,
@as("CredentialPair") credentialPair: option<credentialPair>
}
type dataSetConfigurationList = array<dataSetConfiguration>
type templateVersion = {
@as("Sheets") sheets: option<sheetList>,
@as("ThemeArn") themeArn: option<arn>,
@as("SourceEntityArn") sourceEntityArn: option<arn>,
@as("Description") description: option<versionDescription>,
@as("DataSetConfigurations") dataSetConfigurations: option<dataSetConfigurationList>,
@as("Status") status: option<resourceStatus>,
@as("VersionNumber") versionNumber: option<versionNumber>,
@as("Errors") errors: option<templateErrorList>,
@as("CreatedTime") createdTime: option<timestamp_>
}
type logicalTable = {
@as("Source") source: logicalTableSource,
@as("DataTransforms") dataTransforms: option<transformOperationList>,
@as("Alias") alias: logicalTableAlias
}
type template = {
@as("CreatedTime") createdTime: option<timestamp_>,
@as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("Version") version: option<templateVersion>,
@as("Name") name: option<templateName>,
@as("Arn") arn: option<arn>
}
type logicalTableMap = Js.Dict.t< logicalTable>
type dataSet = {
@as("ColumnLevelPermissionRules") columnLevelPermissionRules: option<columnLevelPermissionRuleList>,
@as("RowLevelPermissionDataSet") rowLevelPermissionDataSet: option<rowLevelPermissionDataSet>,
@as("FieldFolders") fieldFolders: option<fieldFolderMap>,
@as("ColumnGroups") columnGroups: option<columnGroupList>,
@as("ConsumedSpiceCapacityInBytes") consumedSpiceCapacityInBytes: option<long>,
@as("ImportMode") importMode: option<dataSetImportMode>,
@as("OutputColumns") outputColumns: option<outputColumnList>,
@as("LogicalTableMap") logicalTableMap: option<logicalTableMap>,
@as("PhysicalTableMap") physicalTableMap: option<physicalTableMap>,
@as("LastUpdatedTime") lastUpdatedTime: option<timestamp_>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("Name") name: option<resourceName>,
@as("DataSetId") dataSetId: option<resourceId>,
@as("Arn") arn: option<arn>
}
type awsServiceClient;
@module("@aws-sdk/client-quicksight") @new external createClient: unit => awsServiceClient = "QuickSightClient";
module UpdateDashboardPublishedVersion = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: versionNumber,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("DashboardArn") dashboardArn: option<arn>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDashboardPublishedVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAccountSettings = {
  type t;
  type request = {
@as("NotificationEmail") notificationEmail: option<string_>,
@as("DefaultNamespace") defaultNamespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateAccountSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RestoreAnalysis = {
  type t;
  type request = {
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("Arn") arn: option<arn>,
@as("Status") status: option<statusCode>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "RestoreAnalysisCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSessionEmbedUrl = {
  type t;
  type request = {
@as("UserArn") userArn: option<arn>,
@as("SessionLifetimeInMinutes") sessionLifetimeInMinutes: option<sessionLifetimeInMinutes>,
@as("EntryPoint") entryPoint: option<entryPoint>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("EmbedUrl") embedUrl: option<embeddingUrl>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "GetSessionEmbedUrlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteUserByPrincipalId = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("PrincipalId") principalId: string_
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteUserByPrincipalIdCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("UserName") userName: userName
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteThemeAlias = {
  type t;
  type request = {
@as("AliasName") aliasName: aliasName,
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Arn") arn: option<arn>,
@as("AliasName") aliasName: option<aliasName>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteThemeAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTheme = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: option<versionNumber>,
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteThemeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTemplateAlias = {
  type t;
  type request = {
@as("AliasName") aliasName: aliasName,
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Arn") arn: option<arn>,
@as("AliasName") aliasName: option<aliasName>,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("Status") status: option<statusCode>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteTemplateAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTemplate = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: option<versionNumber>,
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("Arn") arn: option<arn>,
@as("RequestId") requestId: option<string_>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteNamespace = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteNamespaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteIAMPolicyAssignment = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AssignmentName") assignmentName: iampolicyAssignmentName,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("AssignmentName") assignmentName: option<iampolicyAssignmentName>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteIAMPolicyAssignmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteGroupMembership = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("GroupName") groupName: groupName,
@as("MemberName") memberName: groupMemberName
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteGroupMembershipCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteGroup = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("GroupName") groupName: groupName
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDataSource = {
  type t;
  type request = {
@as("DataSourceId") dataSourceId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteDataSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDataSet = {
  type t;
  type request = {
@as("DataSetId") dataSetId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("DataSetId") dataSetId: option<resourceId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteDataSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDashboard = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: option<versionNumber>,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("Arn") arn: option<arn>,
@as("Status") status: option<statusCode>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteDashboardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAnalysis = {
  type t;
  type request = {
@as("ForceDeleteWithoutRecovery") forceDeleteWithoutRecovery: option<boolean_>,
@as("RecoveryWindowInDays") recoveryWindowInDays: option<recoveryWindowInDays>,
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("DeletionTime") deletionTime: option<timestamp_>,
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("Arn") arn: option<arn>,
@as("Status") status: option<statusCode>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteAnalysisCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAccountCustomization = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteAccountCustomizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateIngestion = {
  type t;
  type request = {
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("IngestionId") ingestionId: ingestionId,
@as("DataSetId") dataSetId: string_
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("IngestionStatus") ingestionStatus: option<ingestionStatus>,
@as("IngestionId") ingestionId: option<ingestionId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateIngestionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelIngestion = {
  type t;
  type request = {
@as("IngestionId") ingestionId: ingestionId,
@as("DataSetId") dataSetId: string_,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("IngestionId") ingestionId: option<ingestionId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CancelIngestionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateUser = {
  type t;
  type request = {
@as("ExternalLoginId") externalLoginId: option<string_>,
@as("CustomFederationProviderUrl") customFederationProviderUrl: option<string_>,
@as("ExternalLoginFederationProviderType") externalLoginFederationProviderType: option<string_>,
@as("UnapplyCustomPermissions") unapplyCustomPermissions: option<boolean_>,
@as("CustomPermissionsName") customPermissionsName: option<roleName>,
@as("Role") role: userRole,
@as("Email") email: string_,
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("UserName") userName: userName
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("User") user: option<user>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateThemeAlias = {
  type t;
  type request = {
@as("ThemeVersionNumber") themeVersionNumber: versionNumber,
@as("AliasName") aliasName: aliasName,
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("ThemeAlias") themeAlias: option<themeAlias>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateThemeAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTemplateAlias = {
  type t;
  type request = {
@as("TemplateVersionNumber") templateVersionNumber: versionNumber,
@as("AliasName") aliasName: aliasName,
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("TemplateAlias") templateAlias: option<templateAlias>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateTemplateAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateGroup = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("Description") description: option<groupDescription>,
@as("GroupName") groupName: groupName
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Group") group: option<group>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAccountCustomization = {
  type t;
  type request = {
@as("AccountCustomization") accountCustomization: accountCustomization,
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("AccountCustomization") accountCustomization: option<accountCustomization>,
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateAccountCustomizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: arn
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterUser = {
  type t;
  type request = {
@as("ExternalLoginId") externalLoginId: option<string_>,
@as("CustomFederationProviderUrl") customFederationProviderUrl: option<string_>,
@as("ExternalLoginFederationProviderType") externalLoginFederationProviderType: option<string_>,
@as("CustomPermissionsName") customPermissionsName: option<roleName>,
@as("UserName") userName: option<userName>,
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("SessionName") sessionName: option<roleSessionName>,
@as("IamArn") iamArn: option<string_>,
@as("UserRole") userRole: userRole,
@as("Email") email: string_,
@as("IdentityType") identityType: identityType
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("UserInvitationUrl") userInvitationUrl: option<string_>,
@as("User") user: option<user>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "RegisterUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDashboardEmbedUrl = {
  type t;
  type request = {
@as("AdditionalDashboardIds") additionalDashboardIds: option<additionalDashboardIdList>,
@as("Namespace") namespace: option<namespace>,
@as("UserArn") userArn: option<arn>,
@as("StatePersistenceEnabled") statePersistenceEnabled: option<boolean_>,
@as("ResetDisabled") resetDisabled: option<boolean_>,
@as("UndoRedoDisabled") undoRedoDisabled: option<boolean_>,
@as("SessionLifetimeInMinutes") sessionLifetimeInMinutes: option<sessionLifetimeInMinutes>,
@as("IdentityType") identityType: embeddingIdentityType,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("EmbedUrl") embedUrl: option<embeddingUrl>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "GetDashboardEmbedUrlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeUser = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("UserName") userName: userName
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("User") user: option<user>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeThemeAlias = {
  type t;
  type request = {
@as("AliasName") aliasName: aliasName,
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("ThemeAlias") themeAlias: option<themeAlias>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeThemeAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTemplateAlias = {
  type t;
  type request = {
@as("AliasName") aliasName: aliasName,
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("TemplateAlias") templateAlias: option<templateAlias>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeTemplateAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeGroup = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("GroupName") groupName: groupName
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Group") group: option<group>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountSettings = {
  type t;
  type request = {
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("AccountSettings") accountSettings: option<accountSettings>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeAccountSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountCustomization = {
  type t;
  type request = {
@as("Resolved") resolved: option<boolean_>,
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("AccountCustomization") accountCustomization: option<accountCustomization>,
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeAccountCustomizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateThemeAlias = {
  type t;
  type request = {
@as("ThemeVersionNumber") themeVersionNumber: versionNumber,
@as("AliasName") aliasName: aliasName,
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("ThemeAlias") themeAlias: option<themeAlias>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateThemeAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTemplateAlias = {
  type t;
  type request = {
@as("TemplateVersionNumber") templateVersionNumber: versionNumber,
@as("AliasName") aliasName: aliasName,
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("TemplateAlias") templateAlias: option<templateAlias>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateTemplateAliasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateGroupMembership = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("GroupName") groupName: groupName,
@as("MemberName") memberName: groupMemberName
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("GroupMember") groupMember: option<groupMember>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateGroupMembershipCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateGroup = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("Description") description: option<groupDescription>,
@as("GroupName") groupName: groupName
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Group") group: option<group>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateIAMPolicyAssignment = {
  type t;
  type request = {
@as("Identities") identities: option<identityMap>,
@as("PolicyArn") policyArn: option<arn>,
@as("AssignmentStatus") assignmentStatus: option<assignmentStatus>,
@as("Namespace") namespace: namespace,
@as("AssignmentName") assignmentName: iampolicyAssignmentName,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("AssignmentStatus") assignmentStatus: option<assignmentStatus>,
@as("Identities") identities: option<identityMap>,
@as("PolicyArn") policyArn: option<arn>,
@as("AssignmentId") assignmentId: option<string_>,
@as("AssignmentName") assignmentName: option<iampolicyAssignmentName>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateIAMPolicyAssignmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceArn") resourceArn: arn
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchDashboards = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("Filters") filters: dashboardSearchFilterList,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("NextToken") nextToken: option<string_>,
@as("DashboardSummaryList") dashboardSummaryList: option<dashboardSummaryList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "SearchDashboardsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchAnalyses = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("Filters") filters: analysisSearchFilterList,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("NextToken") nextToken: option<string_>,
@as("AnalysisSummaryList") analysisSummaryList: option<analysisSummaryList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "SearchAnalysesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("NextToken") nextToken: option<string_>,
@as("UserList") userList: option<userList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListUsersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUserGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("UserName") userName: userName
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("NextToken") nextToken: option<string_>,
@as("GroupList") groupList: option<groupList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListUserGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListThemes = {
  type t;
  type request = {
@as("Type") type_: option<themeType>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("NextToken") nextToken: option<string_>,
@as("ThemeSummaryList") themeSummaryList: option<themeSummaryList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListThemesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListThemeVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("NextToken") nextToken: option<string_>,
@as("ThemeVersionSummaryList") themeVersionSummaryList: option<themeVersionSummaryList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListThemeVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListThemeAliases = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("ThemeAliasList") themeAliasList: option<themeAliasList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListThemeAliasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTemplates = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("NextToken") nextToken: option<string_>,
@as("TemplateSummaryList") templateSummaryList: option<templateSummaryList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTemplateVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("NextToken") nextToken: option<string_>,
@as("TemplateVersionSummaryList") templateVersionSummaryList: option<templateVersionSummaryList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListTemplateVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTemplateAliases = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("TemplateAliasList") templateAliasList: option<templateAliasList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListTemplateAliasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: arn
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIAMPolicyAssignmentsForUser = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("UserName") userName: userName,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("NextToken") nextToken: option<string_>,
@as("RequestId") requestId: option<string_>,
@as("ActiveAssignments") activeAssignments: option<activeIAMPolicyAssignmentList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListIAMPolicyAssignmentsForUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIAMPolicyAssignments = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("Namespace") namespace: namespace,
@as("AssignmentStatus") assignmentStatus: option<assignmentStatus>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("NextToken") nextToken: option<string_>,
@as("IAMPolicyAssignments") iampolicyAssignments: option<iampolicyAssignmentSummaryList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListIAMPolicyAssignmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGroups = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("NextToken") nextToken: option<string_>,
@as("GroupList") groupList: option<groupList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGroupMemberships = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("GroupName") groupName: groupName
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("NextToken") nextToken: option<string_>,
@as("GroupMemberList") groupMemberList: option<groupMemberList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListGroupMembershipsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDashboards = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("NextToken") nextToken: option<string_>,
@as("DashboardSummaryList") dashboardSummaryList: option<dashboardSummaryList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListDashboardsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDashboardVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("NextToken") nextToken: option<string_>,
@as("DashboardVersionSummaryList") dashboardVersionSummaryList: option<dashboardVersionSummaryList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListDashboardVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAnalyses = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("NextToken") nextToken: option<string_>,
@as("AnalysisSummaryList") analysisSummaryList: option<analysisSummaryList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListAnalysesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeNamespace = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Namespace") namespace: option<namespaceInfoV2>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeNamespaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeIngestion = {
  type t;
  type request = {
@as("IngestionId") ingestionId: ingestionId,
@as("DataSetId") dataSetId: string_,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Ingestion") ingestion: option<ingestion>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeIngestionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateNamespace = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("IdentityStore") identityStore: identityStore,
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("IdentityStore") identityStore: option<identityStore>,
@as("CreationStatus") creationStatus: option<namespaceStatus>,
@as("CapacityRegion") capacityRegion: option<string_>,
@as("Name") name: option<namespace>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateNamespaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateIAMPolicyAssignment = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("Identities") identities: option<identityMap>,
@as("PolicyArn") policyArn: option<arn>,
@as("AssignmentStatus") assignmentStatus: assignmentStatus,
@as("AssignmentName") assignmentName: iampolicyAssignmentName,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Identities") identities: option<identityMap>,
@as("PolicyArn") policyArn: option<arn>,
@as("AssignmentStatus") assignmentStatus: option<assignmentStatus>,
@as("AssignmentId") assignmentId: option<string_>,
@as("AssignmentName") assignmentName: option<iampolicyAssignmentName>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateIAMPolicyAssignmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAccountCustomization = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("AccountCustomization") accountCustomization: accountCustomization,
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("AccountCustomization") accountCustomization: option<accountCustomization>,
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateAccountCustomizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateThemePermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: option<updateResourcePermissionList>,
@as("GrantPermissions") grantPermissions: option<updateResourcePermissionList>,
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("ThemeArn") themeArn: option<arn>,
@as("ThemeId") themeId: option<restrictiveResourceId>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateThemePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTemplatePermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: option<updateResourcePermissionList>,
@as("GrantPermissions") grantPermissions: option<updateResourcePermissionList>,
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("TemplateArn") templateArn: option<arn>,
@as("TemplateId") templateId: option<restrictiveResourceId>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateTemplatePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDataSourcePermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: option<resourcePermissionList>,
@as("GrantPermissions") grantPermissions: option<resourcePermissionList>,
@as("DataSourceId") dataSourceId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("DataSourceArn") dataSourceArn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDataSourcePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDataSetPermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: option<resourcePermissionList>,
@as("GrantPermissions") grantPermissions: option<resourcePermissionList>,
@as("DataSetId") dataSetId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("DataSetId") dataSetId: option<resourceId>,
@as("DataSetArn") dataSetArn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDataSetPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDashboardPermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: option<updateResourcePermissionList>,
@as("GrantPermissions") grantPermissions: option<updateResourcePermissionList>,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("DashboardArn") dashboardArn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDashboardPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAnalysisPermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: option<updateResourcePermissionList>,
@as("GrantPermissions") grantPermissions: option<updateResourcePermissionList>,
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("AnalysisArn") analysisArn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateAnalysisPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListNamespaces = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("NextToken") nextToken: option<string_>,
@as("Namespaces") namespaces: option<namespaces>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListNamespacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIngestions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<ingestionMaxResults>,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("NextToken") nextToken: option<string_>,
@as("DataSetId") dataSetId: string_
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("NextToken") nextToken: option<string_>,
@as("Ingestions") ingestions: option<ingestions>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListIngestionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDataSets = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("NextToken") nextToken: option<string_>,
@as("DataSetSummaries") dataSetSummaries: option<dataSetSummaryList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListDataSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeThemePermissions = {
  type t;
  type request = {
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("ThemeArn") themeArn: option<arn>,
@as("ThemeId") themeId: option<restrictiveResourceId>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeThemePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTemplatePermissions = {
  type t;
  type request = {
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("TemplateArn") templateArn: option<arn>,
@as("TemplateId") templateId: option<restrictiveResourceId>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeTemplatePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeIAMPolicyAssignment = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AssignmentName") assignmentName: iampolicyAssignmentName,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("IAMPolicyAssignment") iampolicyAssignment: option<iampolicyAssignment>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeIAMPolicyAssignmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDataSourcePermissions = {
  type t;
  type request = {
@as("DataSourceId") dataSourceId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("DataSourceArn") dataSourceArn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDataSourcePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDataSetPermissions = {
  type t;
  type request = {
@as("DataSetId") dataSetId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("DataSetId") dataSetId: option<resourceId>,
@as("DataSetArn") dataSetArn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDataSetPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDashboardPermissions = {
  type t;
  type request = {
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("DashboardArn") dashboardArn: option<arn>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDashboardPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAnalysisPermissions = {
  type t;
  type request = {
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("AnalysisArn") analysisArn: option<arn>,
@as("AnalysisId") analysisId: option<restrictiveResourceId>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeAnalysisPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAnalysis = {
  type t;
  type request = {
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("Analysis") analysis: option<analysis>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeAnalysisCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTheme = {
  type t;
  type request = {
@as("Configuration") configuration: option<themeConfiguration>,
@as("VersionDescription") versionDescription: option<versionDescription>,
@as("BaseThemeId") baseThemeId: restrictiveResourceId,
@as("Name") name: option<themeName>,
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("CreationStatus") creationStatus: option<resourceStatus>,
@as("VersionArn") versionArn: option<arn>,
@as("Arn") arn: option<arn>,
@as("ThemeId") themeId: option<restrictiveResourceId>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateThemeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTemplate = {
  type t;
  type request = {
@as("Name") name: option<templateName>,
@as("VersionDescription") versionDescription: option<versionDescription>,
@as("SourceEntity") sourceEntity: templateSourceEntity,
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("CreationStatus") creationStatus: option<resourceStatus>,
@as("VersionArn") versionArn: option<arn>,
@as("Arn") arn: option<arn>,
@as("TemplateId") templateId: option<restrictiveResourceId>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDashboard = {
  type t;
  type request = {
@as("ThemeArn") themeArn: option<arn>,
@as("DashboardPublishOptions") dashboardPublishOptions: option<dashboardPublishOptions>,
@as("VersionDescription") versionDescription: option<versionDescription>,
@as("Parameters") parameters: option<parameters>,
@as("SourceEntity") sourceEntity: dashboardSourceEntity,
@as("Name") name: dashboardName,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("CreationStatus") creationStatus: option<resourceStatus>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("VersionArn") versionArn: option<arn>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDashboardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAnalysis = {
  type t;
  type request = {
@as("ThemeArn") themeArn: option<arn>,
@as("SourceEntity") sourceEntity: analysisSourceEntity,
@as("Parameters") parameters: option<parameters>,
@as("Name") name: analysisName,
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("UpdateStatus") updateStatus: option<resourceStatus>,
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateAnalysisCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDashboard = {
  type t;
  type request = {
@as("AliasName") aliasName: option<aliasName>,
@as("VersionNumber") versionNumber: option<versionNumber>,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("Dashboard") dashboard: option<dashboard>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDashboardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTheme = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("Configuration") configuration: themeConfiguration,
@as("VersionDescription") versionDescription: option<versionDescription>,
@as("BaseThemeId") baseThemeId: restrictiveResourceId,
@as("Name") name: themeName,
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("CreationStatus") creationStatus: option<resourceStatus>,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("VersionArn") versionArn: option<arn>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateThemeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTemplate = {
  type t;
  type request = {
@as("VersionDescription") versionDescription: option<versionDescription>,
@as("Tags") tags: option<tagList_>,
@as("SourceEntity") sourceEntity: templateSourceEntity,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("Name") name: option<templateName>,
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("CreationStatus") creationStatus: option<resourceStatus>,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("VersionArn") versionArn: option<arn>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDashboard = {
  type t;
  type request = {
@as("ThemeArn") themeArn: option<arn>,
@as("DashboardPublishOptions") dashboardPublishOptions: option<dashboardPublishOptions>,
@as("VersionDescription") versionDescription: option<versionDescription>,
@as("Tags") tags: option<tagList_>,
@as("SourceEntity") sourceEntity: dashboardSourceEntity,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("Parameters") parameters: option<parameters>,
@as("Name") name: dashboardName,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("CreationStatus") creationStatus: option<resourceStatus>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("VersionArn") versionArn: option<arn>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateDashboardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAnalysis = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("ThemeArn") themeArn: option<arn>,
@as("SourceEntity") sourceEntity: analysisSourceEntity,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("Parameters") parameters: option<parameters>,
@as("Name") name: analysisName,
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("CreationStatus") creationStatus: option<resourceStatus>,
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateAnalysisCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDataSource = {
  type t;
  type request = {
@as("DataSourceId") dataSourceId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("DataSource") dataSource: option<dataSource>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDataSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDataSource = {
  type t;
  type request = {
@as("SslProperties") sslProperties: option<sslProperties>,
@as("VpcConnectionProperties") vpcConnectionProperties: option<vpcConnectionProperties>,
@as("Credentials") credentials: option<dataSourceCredentials>,
@as("DataSourceParameters") dataSourceParameters: option<dataSourceParameters>,
@as("Name") name: resourceName,
@as("DataSourceId") dataSourceId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("UpdateStatus") updateStatus: option<resourceStatus>,
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDataSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDataSources = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("NextToken") nextToken: option<string_>,
@as("DataSources") dataSources: option<dataSourceList>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListDataSourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTheme = {
  type t;
  type request = {
@as("AliasName") aliasName: option<aliasName>,
@as("VersionNumber") versionNumber: option<versionNumber>,
@as("ThemeId") themeId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAndAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("Theme") theme: option<theme>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeThemeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDataSource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("SslProperties") sslProperties: option<sslProperties>,
@as("VpcConnectionProperties") vpcConnectionProperties: option<vpcConnectionProperties>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("Credentials") credentials: option<dataSourceCredentials>,
@as("DataSourceParameters") dataSourceParameters: option<dataSourceParameters>,
@as("Type") type_: dataSourceType,
@as("Name") name: resourceName,
@as("DataSourceId") dataSourceId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("CreationStatus") creationStatus: option<resourceStatus>,
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateDataSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDataSet = {
  type t;
  type request = {
@as("ColumnLevelPermissionRules") columnLevelPermissionRules: option<columnLevelPermissionRuleList>,
@as("RowLevelPermissionDataSet") rowLevelPermissionDataSet: option<rowLevelPermissionDataSet>,
@as("FieldFolders") fieldFolders: option<fieldFolderMap>,
@as("ColumnGroups") columnGroups: option<columnGroupList>,
@as("ImportMode") importMode: dataSetImportMode,
@as("LogicalTableMap") logicalTableMap: option<logicalTableMap>,
@as("PhysicalTableMap") physicalTableMap: physicalTableMap,
@as("Name") name: resourceName,
@as("DataSetId") dataSetId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("IngestionId") ingestionId: option<resourceId>,
@as("IngestionArn") ingestionArn: option<arn>,
@as("DataSetId") dataSetId: option<resourceId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDataSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTemplate = {
  type t;
  type request = {
@as("AliasName") aliasName: option<aliasName>,
@as("VersionNumber") versionNumber: option<versionNumber>,
@as("TemplateId") templateId: restrictiveResourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("RequestId") requestId: option<string_>,
@as("Status") status: option<statusCode>,
@as("Template") template: option<template>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDataSet = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("ColumnLevelPermissionRules") columnLevelPermissionRules: option<columnLevelPermissionRuleList>,
@as("RowLevelPermissionDataSet") rowLevelPermissionDataSet: option<rowLevelPermissionDataSet>,
@as("Permissions") permissions: option<resourcePermissionList>,
@as("FieldFolders") fieldFolders: option<fieldFolderMap>,
@as("ColumnGroups") columnGroups: option<columnGroupList>,
@as("ImportMode") importMode: dataSetImportMode,
@as("LogicalTableMap") logicalTableMap: option<logicalTableMap>,
@as("PhysicalTableMap") physicalTableMap: physicalTableMap,
@as("Name") name: resourceName,
@as("DataSetId") dataSetId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("IngestionId") ingestionId: option<resourceId>,
@as("IngestionArn") ingestionArn: option<arn>,
@as("DataSetId") dataSetId: option<resourceId>,
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateDataSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDataSet = {
  type t;
  type request = {
@as("DataSetId") dataSetId: resourceId,
@as("AwsAccountId") awsAccountId: awsAccountId
}
  type response = {
@as("Status") status: option<statusCode>,
@as("RequestId") requestId: option<string_>,
@as("DataSet") dataSet: option<dataSet>
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDataSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
