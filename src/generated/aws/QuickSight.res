type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type workGroup = string
type warehouse = string
type versionNumber = float;
type versionDescription = string
type userRole = [@as("RESTRICTED_READER") #RESTRICTED_READER | @as("RESTRICTED_AUTHOR") #RESTRICTED_AUTHOR | @as("READER") #READER | @as("AUTHOR") #AUTHOR | @as("ADMIN") #ADMIN]
type userName2 = string
type userName = string
type typeCastFormat = string
type amazonawsTimestamp = Js.Date.t;
type themeType = [@as("ALL") #ALL | @as("CUSTOM") #CUSTOM | @as("QUICKSIGHT") #QUICKSIGHT]
type themeName = string
type themeErrorType = [@as("INTERNAL_FAILURE") #INTERNAL_FAILURE]
type textQualifier = [@as("SINGLE_QUOTE") #SINGLE_QUOTE | @as("DOUBLE_QUOTE") #DOUBLE_QUOTE]
type templateName = string
type templateErrorType = [@as("ACCESS_DENIED") #ACCESS_DENIED | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE | @as("DATA_SET_NOT_FOUND") #DATA_SET_NOT_FOUND | @as("SOURCE_NOT_FOUND") #SOURCE_NOT_FOUND]
type tagValue = string
type tagKey = string
type amazonawsString = string
type statusCode = int;
type sqlQuery = string
type siteBaseUrl = string
type sessionLifetimeInMinutes = float;
type s3Key = string
type s3Bucket = string
type rowLevelPermissionPolicy = [@as("DENY_ACCESS") #DENY_ACCESS | @as("GRANT_ACCESS") #GRANT_ACCESS]
type rowLevelPermissionFormatVersion = [@as("VERSION_2") #VERSION_2 | @as("VERSION_1") #VERSION_1]
type roleSessionName = string
type roleName = string
type restrictiveResourceId = string
type resourceStatus = [@as("DELETED") #DELETED | @as("UPDATE_FAILED") #UPDATE_FAILED | @as("UPDATE_SUCCESSFUL") #UPDATE_SUCCESSFUL | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("CREATION_FAILED") #CREATION_FAILED | @as("CREATION_SUCCESSFUL") #CREATION_SUCCESSFUL | @as("CREATION_IN_PROGRESS") #CREATION_IN_PROGRESS]
type resourceName = string
type resourceId = string
type relationalTableSchema = string
type relationalTableName = string
type relationalTableCatalog = string
type recoveryWindowInDays = float;
type query = string
type principal = string
type positiveInteger = int;
type port = int;
type physicalTableId = string
type password = string
type optionalPort = int;
type onClause = string
type nonEmptyString = string
type namespaceStatus = [@as("NON_RETRYABLE_FAILURE") #NON_RETRYABLE_FAILURE | @as("RETRYABLE_FAILURE") #RETRYABLE_FAILURE | @as("DELETING") #DELETING | @as("CREATING") #CREATING | @as("CREATED") #CREATED]
type namespaceErrorType = [@as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR | @as("PERMISSION_DENIED") #PERMISSION_DENIED]
type namespace = string
type maxResults = int;
type amazonawsLong = float;
type logicalTableId = string
type logicalTableAlias = string
type joinType = [@as("RIGHT") #RIGHT | @as("LEFT") #LEFT | @as("OUTER") #OUTER | @as("INNER") #INNER]
type instanceId = string
type inputColumnDataType = [@as("JSON") #JSON | @as("BOOLEAN") #BOOLEAN | @as("BIT") #BIT | @as("DATETIME") #DATETIME | @as("DECIMAL") #DECIMAL | @as("INTEGER") #INTEGER | @as("STRING") #STRING]
type ingestionStatus = [@as("CANCELLED") #CANCELLED | @as("COMPLETED") #COMPLETED | @as("FAILED") #FAILED | @as("RUNNING") #RUNNING | @as("QUEUED") #QUEUED | @as("INITIALIZED") #INITIALIZED]
type ingestionRequestType = [@as("FULL_REFRESH") #FULL_REFRESH | @as("INCREMENTAL_REFRESH") #INCREMENTAL_REFRESH | @as("EDIT") #EDIT | @as("INITIAL_INGESTION") #INITIAL_INGESTION]
type ingestionRequestSource = [@as("SCHEDULED") #SCHEDULED | @as("MANUAL") #MANUAL]
type ingestionMaxResults = int;
type ingestionId = string
type ingestionErrorType = [@as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR | @as("FAILURE_TO_PROCESS_JSON_FILE") #FAILURE_TO_PROCESS_JSON_FILE | @as("DATA_SOURCE_CONNECTION_FAILED") #DATA_SOURCE_CONNECTION_FAILED | @as("DATA_SOURCE_AUTH_FAILED") #DATA_SOURCE_AUTH_FAILED | @as("INVALID_DATA_SOURCE_CONFIG") #INVALID_DATA_SOURCE_CONFIG | @as("IOT_DATA_SET_FILE_EMPTY") #IOT_DATA_SET_FILE_EMPTY | @as("IOT_FILE_NOT_FOUND") #IOT_FILE_NOT_FOUND | @as("S3_FILE_INACCESSIBLE") #S3_FILE_INACCESSIBLE | @as("SQL_EXCEPTION") #SQL_EXCEPTION | @as("UNROUTABLE_HOST") #UNROUTABLE_HOST | @as("UNRESOLVABLE_HOST") #UNRESOLVABLE_HOST | @as("SQL_NUMERIC_OVERFLOW") #SQL_NUMERIC_OVERFLOW | @as("QUERY_TIMEOUT") #QUERY_TIMEOUT | @as("SQL_INVALID_PARAMETER_VALUE") #SQL_INVALID_PARAMETER_VALUE | @as("SOURCE_RESOURCE_LIMIT_EXCEEDED") #SOURCE_RESOURCE_LIMIT_EXCEEDED | @as("INVALID_DATAPREP_SYNTAX") #INVALID_DATAPREP_SYNTAX | @as("INVALID_DATE_FORMAT") #INVALID_DATE_FORMAT | @as("SQL_SCHEMA_MISMATCH_ERROR") #SQL_SCHEMA_MISMATCH_ERROR | @as("PASSWORD_AUTHENTICATION_FAILURE") #PASSWORD_AUTHENTICATION_FAILURE | @as("SOURCE_API_LIMIT_EXCEEDED_FAILURE") #SOURCE_API_LIMIT_EXCEEDED_FAILURE | @as("OAUTH_TOKEN_FAILURE") #OAUTH_TOKEN_FAILURE | @as("SSL_CERTIFICATE_VALIDATION_FAILURE") #SSL_CERTIFICATE_VALIDATION_FAILURE | @as("PERMISSION_DENIED") #PERMISSION_DENIED | @as("SQL_TABLE_NOT_FOUND") #SQL_TABLE_NOT_FOUND | @as("CONNECTION_FAILURE") #CONNECTION_FAILURE | @as("IAM_ROLE_NOT_AVAILABLE") #IAM_ROLE_NOT_AVAILABLE | @as("DATA_SOURCE_NOT_FOUND") #DATA_SOURCE_NOT_FOUND | @as("CUSTOMER_ERROR") #CUSTOMER_ERROR | @as("ACCOUNT_CAPACITY_LIMIT_EXCEEDED") #ACCOUNT_CAPACITY_LIMIT_EXCEEDED | @as("ROW_SIZE_LIMIT_EXCEEDED") #ROW_SIZE_LIMIT_EXCEEDED | @as("DATA_SET_SIZE_LIMIT_EXCEEDED") #DATA_SET_SIZE_LIMIT_EXCEEDED | @as("SPICE_TABLE_NOT_FOUND") #SPICE_TABLE_NOT_FOUND | @as("DATA_TOLERANCE_EXCEPTION") #DATA_TOLERANCE_EXCEPTION | @as("S3_MANIFEST_ERROR") #S3_MANIFEST_ERROR | @as("S3_UPLOADED_FILE_DELETED") #S3_UPLOADED_FILE_DELETED | @as("DATA_SET_NOT_SPICE") #DATA_SET_NOT_SPICE | @as("DATA_SET_DELETED") #DATA_SET_DELETED | @as("INGESTION_CANCELED") #INGESTION_CANCELED | @as("INGESTION_SUPERSEDED") #INGESTION_SUPERSEDED | @as("FAILURE_TO_ASSUME_ROLE") #FAILURE_TO_ASSUME_ROLE]
type identityType = [@as("QUICKSIGHT") #QUICKSIGHT | @as("IAM") #IAM]
type identityStore = [@as("QUICKSIGHT") #QUICKSIGHT]
type identityName = string
type iAMPolicyAssignmentName = string
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
type exceptionResourceType = [@as("INGESTION") #INGESTION | @as("VPC_CONNECTION") #VPC_CONNECTION | @as("DATA_SET") #DATA_SET | @as("DATA_SOURCE") #DATA_SOURCE | @as("IAMPOLICY_ASSIGNMENT") #IAMPOLICY_ASSIGNMENT | @as("ACCOUNT_SETTINGS") #ACCOUNT_SETTINGS | @as("NAMESPACE") #NAMESPACE | @as("GROUP") #GROUP | @as("USER") #USER]
type entryPoint = string
type embeddingUrl = string
type embeddingIdentityType = [@as("ANONYMOUS") #ANONYMOUS | @as("QUICKSIGHT") #QUICKSIGHT | @as("IAM") #IAM]
type edition = [@as("ENTERPRISE") #ENTERPRISE | @as("STANDARD") #STANDARD]
type amazonawsDouble = float;
type domain = string
type delimiter = string
type database = string
type dataSourceType = [@as("TIMESTREAM") #TIMESTREAM | @as("TWITTER") #TWITTER | @as("TERADATA") #TERADATA | @as("SQLSERVER") #SQLSERVER | @as("SPARK") #SPARK | @as("SNOWFLAKE") #SNOWFLAKE | @as("SERVICENOW") #SERVICENOW | @as("SALESFORCE") #SALESFORCE | @as("S3") #S3 | @as("REDSHIFT") #REDSHIFT | @as("PRESTO") #PRESTO | @as("POSTGRESQL") #POSTGRESQL | @as("ORACLE") #ORACLE | @as("MYSQL") #MYSQL | @as("MARIADB") #MARIADB | @as("JIRA") #JIRA | @as("GITHUB") #GITHUB | @as("AWS_IOT_ANALYTICS") #AWS_IOT_ANALYTICS | @as("AURORA_POSTGRESQL") #AURORA_POSTGRESQL | @as("AURORA") #AURORA | @as("ATHENA") #ATHENA | @as("AMAZON_ELASTICSEARCH") #AMAZON_ELASTICSEARCH | @as("ADOBE_ANALYTICS") #ADOBE_ANALYTICS]
type dataSourceErrorInfoType = [@as("UNKNOWN") #UNKNOWN | @as("CONFLICT") #CONFLICT | @as("GENERIC_SQL_FAILURE") #GENERIC_SQL_FAILURE | @as("UNKNOWN_HOST") #UNKNOWN_HOST | @as("ENGINE_VERSION_NOT_SUPPORTED") #ENGINE_VERSION_NOT_SUPPORTED | @as("TIMEOUT") #TIMEOUT | @as("COPY_SOURCE_NOT_FOUND") #COPY_SOURCE_NOT_FOUND | @as("ACCESS_DENIED") #ACCESS_DENIED]
type dataSetName = string
type dataSetImportMode = [@as("DIRECT_QUERY") #DIRECT_QUERY | @as("SPICE") #SPICE]
type dashboardUIState = [@as("COLLAPSED") #COLLAPSED | @as("EXPANDED") #EXPANDED]
type dashboardName = string
type dashboardFilterAttribute = [@as("QUICKSIGHT_USER") #QUICKSIGHT_USER]
type dashboardErrorType = [@as("COLUMN_REPLACEMENT_MISSING") #COLUMN_REPLACEMENT_MISSING | @as("COLUMN_GEOGRAPHIC_ROLE_MISMATCH") #COLUMN_GEOGRAPHIC_ROLE_MISMATCH | @as("COLUMN_TYPE_MISMATCH") #COLUMN_TYPE_MISMATCH | @as("PARAMETER_NOT_FOUND") #PARAMETER_NOT_FOUND | @as("PARAMETER_TYPE_INVALID") #PARAMETER_TYPE_INVALID | @as("PARAMETER_VALUE_INCOMPATIBLE") #PARAMETER_VALUE_INCOMPATIBLE | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE | @as("DATA_SET_NOT_FOUND") #DATA_SET_NOT_FOUND | @as("SOURCE_NOT_FOUND") #SOURCE_NOT_FOUND | @as("ACCESS_DENIED") #ACCESS_DENIED]
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
type amazonawsBoolean = bool;
type awsAndAccountId = string
type awsAccountId = string
type assignmentStatus = [@as("DISABLED") #DISABLED | @as("DRAFT") #DRAFT | @as("ENABLED") #ENABLED]
type arn = string
type analysisName = string
type analysisFilterAttribute = [@as("QUICKSIGHT_USER") #QUICKSIGHT_USER]
type analysisErrorType = [@as("COLUMN_REPLACEMENT_MISSING") #COLUMN_REPLACEMENT_MISSING | @as("COLUMN_GEOGRAPHIC_ROLE_MISMATCH") #COLUMN_GEOGRAPHIC_ROLE_MISMATCH | @as("COLUMN_TYPE_MISMATCH") #COLUMN_TYPE_MISMATCH | @as("PARAMETER_NOT_FOUND") #PARAMETER_NOT_FOUND | @as("PARAMETER_TYPE_INVALID") #PARAMETER_TYPE_INVALID | @as("PARAMETER_VALUE_INCOMPATIBLE") #PARAMETER_VALUE_INCOMPATIBLE | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE | @as("DATA_SET_NOT_FOUND") #DATA_SET_NOT_FOUND | @as("SOURCE_NOT_FOUND") #SOURCE_NOT_FOUND | @as("ACCESS_DENIED") #ACCESS_DENIED]
type aliasName = string
type vpcConnectionProperties = {
@as("VpcConnectionArn") vpcConnectionArn: option<arn>
}
type user = {
@as("ExternalLoginId") externalLoginId: amazonawsString,
@as("ExternalLoginFederationProviderUrl") externalLoginFederationProviderUrl: amazonawsString,
@as("ExternalLoginFederationProviderType") externalLoginFederationProviderType: amazonawsString,
@as("CustomPermissionsName") customPermissionsName: roleName,
@as("PrincipalId") principalId: amazonawsString,
@as("Active") active: amazonawsBoolean,
@as("IdentityType") identityType: identityType,
@as("Role") role: userRole,
@as("Email") email: amazonawsString,
@as("UserName") userName: userName,
@as("Arn") arn: arn
}
type uploadSettings = {
@as("Delimiter") delimiter: delimiter,
@as("TextQualifier") textQualifier: textQualifier,
@as("ContainsHeader") containsHeader: amazonawsBoolean,
@as("StartFromRow") startFromRow: positiveInteger,
@as("Format") format: fileFormat
}
type uIColorPalette = {
@as("MeasureForeground") measureForeground: hexColor,
@as("Measure") measure: hexColor,
@as("DimensionForeground") dimensionForeground: hexColor,
@as("Dimension") dimension: hexColor,
@as("SuccessForeground") successForeground: hexColor,
@as("Success") success: hexColor,
@as("WarningForeground") warningForeground: hexColor,
@as("Warning") warning: hexColor,
@as("DangerForeground") dangerForeground: hexColor,
@as("Danger") danger: hexColor,
@as("AccentForeground") accentForeground: hexColor,
@as("Accent") accent: hexColor,
@as("SecondaryBackground") secondaryBackground: hexColor,
@as("SecondaryForeground") secondaryForeground: hexColor,
@as("PrimaryBackground") primaryBackground: hexColor,
@as("PrimaryForeground") primaryForeground: hexColor
}
type twitterParameters = {
@as("MaxRows") maxRows: option<positiveInteger>,
@as("Query") query: option<query>
}
type timestampList = array<amazonawsTimestamp>
type themeVersionSummary = {
@as("Status") status: resourceStatus,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Description") description: versionDescription,
@as("Arn") arn: arn,
@as("VersionNumber") versionNumber: versionNumber
}
type themeSummary = {
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("LatestVersionNumber") latestVersionNumber: versionNumber,
@as("ThemeId") themeId: restrictiveResourceId,
@as("Name") name: themeName,
@as("Arn") arn: arn
}
type themeError = {
@as("Message") message: nonEmptyString,
@as("Type") type_: themeErrorType
}
type themeAlias = {
@as("ThemeVersionNumber") themeVersionNumber: versionNumber,
@as("AliasName") aliasName: aliasName,
@as("Arn") arn: arn
}
type teradataParameters = {
@as("Database") database: option<database>,
@as("Port") port: option<port>,
@as("Host") host: option<host>
}
type templateVersionSummary = {
@as("Description") description: versionDescription,
@as("Status") status: resourceStatus,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("VersionNumber") versionNumber: versionNumber,
@as("Arn") arn: arn
}
type templateSummary = {
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("LatestVersionNumber") latestVersionNumber: versionNumber,
@as("Name") name: templateName,
@as("TemplateId") templateId: restrictiveResourceId,
@as("Arn") arn: arn
}
type templateSourceTemplate = {
@as("Arn") arn: option<arn>
}
type templateError = {
@as("Message") message: nonEmptyString,
@as("Type") type_: templateErrorType
}
type templateAlias = {
@as("TemplateVersionNumber") templateVersionNumber: versionNumber,
@as("Arn") arn: arn,
@as("AliasName") aliasName: aliasName
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type stringList = array<amazonawsString>
type sslProperties = {
@as("DisableSsl") disableSsl: amazonawsBoolean
}
type sqlServerParameters = {
@as("Database") database: option<database>,
@as("Port") port: option<port>,
@as("Host") host: option<host>
}
type sparkParameters = {
@as("Port") port: option<port>,
@as("Host") host: option<host>
}
type snowflakeParameters = {
@as("Warehouse") warehouse: option<warehouse>,
@as("Database") database: option<database>,
@as("Host") host: option<host>
}
type sheetControlsOption = {
@as("VisibilityState") visibilityState: dashboardUIState
}
type sheet = {
@as("Name") name: nonEmptyString,
@as("SheetId") sheetId: restrictiveResourceId
}
type serviceNowParameters = {
@as("SiteBaseUrl") siteBaseUrl: option<siteBaseUrl>
}
type rowLevelPermissionDataSet = {
@as("FormatVersion") formatVersion: rowLevelPermissionFormatVersion,
@as("PermissionPolicy") permissionPolicy: option<rowLevelPermissionPolicy>,
@as("Arn") arn: option<arn>,
@as("Namespace") namespace: namespace
}
type rowInfo = {
@as("RowsDropped") rowsDropped: amazonawsLong,
@as("RowsIngested") rowsIngested: amazonawsLong
}
type renameColumnOperation = {
@as("NewColumnName") newColumnName: option<columnName>,
@as("ColumnName") columnName: option<columnName>
}
type redshiftParameters = {
@as("ClusterId") clusterId: clusterId,
@as("Database") database: option<database>,
@as("Port") port: optionalPort,
@as("Host") host: host
}
type rdsParameters = {
@as("Database") database: option<database>,
@as("InstanceId") instanceId: option<instanceId>
}
type queueInfo = {
@as("QueuedIngestion") queuedIngestion: option<amazonawsString>,
@as("WaitingOnIngestion") waitingOnIngestion: option<amazonawsString>
}
type projectedColumnList = array<amazonawsString>
type principalList = array<amazonawsString>
type prestoParameters = {
@as("Catalog") catalog: option<catalog>,
@as("Port") port: option<port>,
@as("Host") host: option<host>
}
type postgreSqlParameters = {
@as("Database") database: option<database>,
@as("Port") port: option<port>,
@as("Host") host: option<host>
}
type outputColumn = {
@as("Type") type_: columnDataType,
@as("Description") description: columnDescriptiveText,
@as("Name") name: columnName
}
type oracleParameters = {
@as("Database") database: option<database>,
@as("Port") port: option<port>,
@as("Host") host: option<host>
}
type namespaceError = {
@as("Message") message: amazonawsString,
@as("Type") type_: namespaceErrorType
}
type mySqlParameters = {
@as("Database") database: option<database>,
@as("Port") port: option<port>,
@as("Host") host: option<host>
}
type mariaDbParameters = {
@as("Database") database: option<database>,
@as("Port") port: option<port>,
@as("Host") host: option<host>
}
type marginStyle = {
@as("Show") show: amazonawsBoolean
}
type manifestFileLocation = {
@as("Key") key: option<s3Key>,
@as("Bucket") bucket: option<s3Bucket>
}
type longList = array<amazonawsLong>
type joinKeyProperties = {
@as("UniqueKey") uniqueKey: amazonawsBoolean
}
type jiraParameters = {
@as("SiteBaseUrl") siteBaseUrl: option<siteBaseUrl>
}
type inputColumn = {
@as("Type") type_: option<inputColumnDataType>,
@as("Name") name: option<columnName>
}
type identityNameList = array<identityName>
type iAMPolicyAssignmentSummary = {
@as("AssignmentStatus") assignmentStatus: assignmentStatus,
@as("AssignmentName") assignmentName: iAMPolicyAssignmentName
}
type gutterStyle = {
@as("Show") show: amazonawsBoolean
}
type groupMember = {
@as("MemberName") memberName: groupMemberName,
@as("Arn") arn: arn
}
type group = {
@as("PrincipalId") principalId: amazonawsString,
@as("Description") description: groupDescription,
@as("GroupName") groupName: groupName,
@as("Arn") arn: arn
}
type folderColumnList = array<amazonawsString>
type filterOperation = {
@as("ConditionExpression") conditionExpression: option<expression>
}
type exportToCSVOption = {
@as("AvailabilityStatus") availabilityStatus: dashboardBehavior
}
type errorInfo = {
@as("Message") message: amazonawsString,
@as("Type") type_: ingestionErrorType
}
type doubleList = array<amazonawsDouble>
type dataSourceErrorInfo = {
@as("Message") message: amazonawsString,
@as("Type") type_: dataSourceErrorInfoType
}
type dataSetReference = {
@as("DataSetArn") dataSetArn: option<arn>,
@as("DataSetPlaceholder") dataSetPlaceholder: option<nonEmptyString>
}
type dataSetArnsList = array<arn>
type dashboardVersionSummary = {
@as("Description") description: versionDescription,
@as("SourceEntityArn") sourceEntityArn: arn,
@as("Status") status: resourceStatus,
@as("VersionNumber") versionNumber: versionNumber,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Arn") arn: arn
}
type dashboardSummary = {
@as("LastPublishedTime") lastPublishedTime: amazonawsTimestamp,
@as("PublishedVersionNumber") publishedVersionNumber: versionNumber,
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Name") name: dashboardName,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("Arn") arn: arn
}
type dashboardSearchFilter = {
@as("Value") value: amazonawsString,
@as("Name") name: dashboardFilterAttribute,
@as("Operator") operator: option<filterOperator>
}
type dashboardError = {
@as("Message") message: nonEmptyString,
@as("Type") type_: dashboardErrorType
}
type columnSchema = {
@as("GeographicRole") geographicRole: amazonawsString,
@as("DataType") dataType: amazonawsString,
@as("Name") name: amazonawsString
}
type columnNameList = array<amazonawsString>
type columnList = array<columnName>
type columnGroupColumnSchema = {
@as("Name") name: amazonawsString
}
type columnDescription = {
@as("Text") text: columnDescriptiveText
}
type colorList = array<hexColor>
type castColumnTypeOperation = {
@as("Format") format: typeCastFormat,
@as("NewColumnType") newColumnType: option<columnDataType>,
@as("ColumnName") columnName: option<columnName>
}
type calculatedColumn = {
@as("Expression") expression: option<expression>,
@as("ColumnId") columnId: option<columnId>,
@as("ColumnName") columnName: option<columnName>
}
type borderStyle = {
@as("Show") show: amazonawsBoolean
}
type awsIotAnalyticsParameters = {
@as("DataSetName") dataSetName: option<dataSetName>
}
type auroraPostgreSqlParameters = {
@as("Database") database: option<database>,
@as("Port") port: option<port>,
@as("Host") host: option<host>
}
type auroraParameters = {
@as("Database") database: option<database>,
@as("Port") port: option<port>,
@as("Host") host: option<host>
}
type athenaParameters = {
@as("WorkGroup") workGroup: workGroup
}
type analysisSummary = {
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Status") status: resourceStatus,
@as("Name") name: analysisName,
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("Arn") arn: arn
}
type analysisSearchFilter = {
@as("Value") value: amazonawsString,
@as("Name") name: analysisFilterAttribute,
@as("Operator") operator: filterOperator
}
type analysisError = {
@as("Message") message: nonEmptyString,
@as("Type") type_: analysisErrorType
}
type amazonElasticsearchParameters = {
@as("Domain") domain: option<domain>
}
type additionalDashboardIdList = array<restrictiveResourceId>
type adHocFilteringOption = {
@as("AvailabilityStatus") availabilityStatus: dashboardBehavior
}
type activeIAMPolicyAssignment = {
@as("PolicyArn") policyArn: arn,
@as("AssignmentName") assignmentName: iAMPolicyAssignmentName
}
type actionList = array<amazonawsString>
type accountSettings = {
@as("NotificationEmail") notificationEmail: amazonawsString,
@as("DefaultNamespace") defaultNamespace: namespace,
@as("Edition") edition: edition,
@as("AccountName") accountName: amazonawsString
}
type accountCustomization = {
@as("DefaultTheme") defaultTheme: arn
}
type userList = array<user>
type tileStyle = {
@as("Border") border: borderStyle
}
type tileLayoutStyle = {
@as("Margin") margin: marginStyle,
@as("Gutter") gutter: gutterStyle
}
type themeVersionSummaryList = array<themeVersionSummary>
type themeSummaryList = array<themeSummary>
type themeErrorList = array<themeError>
type themeAliasList = array<themeAlias>
type templateVersionSummaryList = array<templateVersionSummary>
type templateSummaryList = array<templateSummary>
type templateErrorList = array<templateError>
type templateAliasList = array<templateAlias>
type tagList = array<tag>
type stringParameter = {
@as("Values") values: option<stringList>,
@as("Name") name: option<nonEmptyString>
}
type sheetList = array<sheet>
type s3Parameters = {
@as("ManifestFileLocation") manifestFileLocation: option<manifestFileLocation>
}
type resourcePermission = {
@as("Actions") actions: option<actionList>,
@as("Principal") principal: option<principal>
}
type projectOperation = {
@as("ProjectedColumns") projectedColumns: option<projectedColumnList>
}
type outputColumnList = array<outputColumn>
type namespaceInfoV2 = {
@as("NamespaceError") namespaceError: namespaceError,
@as("IdentityStore") identityStore: identityStore,
@as("CreationStatus") creationStatus: namespaceStatus,
@as("CapacityRegion") capacityRegion: amazonawsString,
@as("Arn") arn: arn,
@as("Name") name: namespace
}
type joinInstruction = {
@as("OnClause") onClause: option<onClause>,
@as("Type") type_: option<joinType>,
@as("RightJoinKeyProperties") rightJoinKeyProperties: joinKeyProperties,
@as("LeftJoinKeyProperties") leftJoinKeyProperties: joinKeyProperties,
@as("RightOperand") rightOperand: option<logicalTableId>,
@as("LeftOperand") leftOperand: option<logicalTableId>
}
type integerParameter = {
@as("Values") values: option<longList>,
@as("Name") name: option<nonEmptyString>
}
type inputColumnList = array<inputColumn>
type ingestion = {
@as("RequestType") requestType: ingestionRequestType,
@as("RequestSource") requestSource: ingestionRequestSource,
@as("IngestionSizeInBytes") ingestionSizeInBytes: amazonawsLong,
@as("IngestionTimeInSeconds") ingestionTimeInSeconds: amazonawsLong,
@as("CreatedTime") createdTime: option<amazonawsTimestamp>,
@as("QueueInfo") queueInfo: queueInfo,
@as("RowInfo") rowInfo: rowInfo,
@as("ErrorInfo") errorInfo: errorInfo,
@as("IngestionStatus") ingestionStatus: option<ingestionStatus>,
@as("IngestionId") ingestionId: ingestionId,
@as("Arn") arn: option<arn>
}
type identityMap = Js.Dict.t< identityNameList>
type iAMPolicyAssignmentSummaryList = array<iAMPolicyAssignmentSummary>
type groupMemberList = array<groupMember>
type groupList = array<group>
type geoSpatialColumnGroup = {
@as("Columns") columns: option<columnList>,
@as("CountryCode") countryCode: option<geoSpatialCountryCode>,
@as("Name") name: option<columnGroupName>
}
type fieldFolder = {
@as("columns") columns: folderColumnList,
@as("description") description: fieldFolderDescription
}
type decimalParameter = {
@as("Values") values: option<doubleList>,
@as("Name") name: option<nonEmptyString>
}
type dateTimeParameter = {
@as("Values") values: option<timestampList>,
@as("Name") name: option<nonEmptyString>
}
type dataSetSummary = {
@as("ColumnLevelPermissionRulesApplied") columnLevelPermissionRulesApplied: amazonawsBoolean,
@as("RowLevelPermissionDataSet") rowLevelPermissionDataSet: rowLevelPermissionDataSet,
@as("ImportMode") importMode: dataSetImportMode,
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Name") name: resourceName,
@as("DataSetId") dataSetId: resourceId,
@as("Arn") arn: arn
}
type dataSetReferenceList = array<dataSetReference>
type dataColorPalette = {
@as("EmptyFillColor") emptyFillColor: hexColor,
@as("MinMaxGradient") minMaxGradient: colorList,
@as("Colors") colors: colorList
}
type dashboardVersionSummaryList = array<dashboardVersionSummary>
type dashboardSummaryList = array<dashboardSummary>
type dashboardSearchFilterList = array<dashboardSearchFilter>
type dashboardPublishOptions = {
@as("SheetControlsOption") sheetControlsOption: sheetControlsOption,
@as("ExportToCSVOption") exportToCSVOption: exportToCSVOption,
@as("AdHocFilteringOption") adHocFilteringOption: adHocFilteringOption
}
type dashboardErrorList = array<dashboardError>
type columnTag = {
@as("ColumnDescription") columnDescription: columnDescription,
@as("ColumnGeographicRole") columnGeographicRole: geoSpatialDataRole
}
type columnSchemaList = array<columnSchema>
type columnLevelPermissionRule = {
@as("ColumnNames") columnNames: columnNameList,
@as("Principals") principals: principalList
}
type columnGroupColumnSchemaList = array<columnGroupColumnSchema>
type calculatedColumnList = array<calculatedColumn>
type analysisSummaryList = array<analysisSummary>
type analysisSearchFilterList = array<analysisSearchFilter>
type analysisErrorList = array<analysisError>
type activeIAMPolicyAssignmentList = array<activeIAMPolicyAssignment>
type updateResourcePermissionList = array<resourcePermission>
type templateSourceAnalysis = {
@as("DataSetReferences") dataSetReferences: option<dataSetReferenceList>,
@as("Arn") arn: option<arn>
}
type stringParameterList = array<stringParameter>
type sheetStyle = {
@as("TileLayout") tileLayout: tileLayoutStyle,
@as("Tile") tile: tileStyle
}
type s3Source = {
@as("InputColumns") inputColumns: option<inputColumnList>,
@as("UploadSettings") uploadSettings: uploadSettings,
@as("DataSourceArn") dataSourceArn: option<arn>
}
type resourcePermissionList = array<resourcePermission>
type relationalTable = {
@as("InputColumns") inputColumns: option<inputColumnList>,
@as("Name") name: option<relationalTableName>,
@as("Schema") schema: relationalTableSchema,
@as("Catalog") catalog: relationalTableCatalog,
@as("DataSourceArn") dataSourceArn: option<arn>
}
type namespaces = array<namespaceInfoV2>
type logicalTableSource = {
@as("PhysicalTableId") physicalTableId: physicalTableId,
@as("JoinInstruction") joinInstruction: joinInstruction
}
type integerParameterList = array<integerParameter>
type ingestions = array<ingestion>
type iAMPolicyAssignment = {
@as("AssignmentStatus") assignmentStatus: assignmentStatus,
@as("Identities") identities: identityMap,
@as("PolicyArn") policyArn: arn,
@as("AssignmentName") assignmentName: iAMPolicyAssignmentName,
@as("AssignmentId") assignmentId: amazonawsString,
@as("AwsAccountId") awsAccountId: awsAccountId
}
type fieldFolderMap = Js.Dict.t< fieldFolder>
type decimalParameterList = array<decimalParameter>
type dateTimeParameterList = array<dateTimeParameter>
type dataSourceParameters = TwitterParameters(twitterParameters) | TeradataParameters(teradataParameters) | SqlServerParameters(sqlServerParameters) | SparkParameters(sparkParameters) | SnowflakeParameters(snowflakeParameters) | ServiceNowParameters(serviceNowParameters) | S3Parameters(s3Parameters) | RedshiftParameters(redshiftParameters) | RdsParameters(rdsParameters) | PrestoParameters(prestoParameters) | PostgreSqlParameters(postgreSqlParameters) | OracleParameters(oracleParameters) | MySqlParameters(mySqlParameters) | MariaDbParameters(mariaDbParameters) | JiraParameters(jiraParameters) | AwsIotAnalyticsParameters(awsIotAnalyticsParameters) | AuroraPostgreSqlParameters(auroraPostgreSqlParameters) | AuroraParameters(auroraParameters) | AthenaParameters(athenaParameters) | AmazonElasticsearchParameters(amazonElasticsearchParameters);
type dataSetSummaryList = array<dataSetSummary>
type dataSetSchema = {
@as("ColumnSchemaList") columnSchemaList: columnSchemaList
}
type dashboardVersion = {
@as("Sheets") sheets: sheetList,
@as("ThemeArn") themeArn: arn,
@as("Description") description: versionDescription,
@as("DataSetArns") dataSetArns: dataSetArnsList,
@as("SourceEntityArn") sourceEntityArn: arn,
@as("Arn") arn: arn,
@as("Status") status: resourceStatus,
@as("VersionNumber") versionNumber: versionNumber,
@as("Errors") errors: dashboardErrorList,
@as("CreatedTime") createdTime: amazonawsTimestamp
}
type dashboardSourceTemplate = {
@as("Arn") arn: option<arn>,
@as("DataSetReferences") dataSetReferences: option<dataSetReferenceList>
}
type customSql = {
@as("Columns") columns: inputColumnList,
@as("SqlQuery") sqlQuery: option<sqlQuery>,
@as("Name") name: option<customSqlName>,
@as("DataSourceArn") dataSourceArn: option<arn>
}
type createColumnsOperation = {
@as("Columns") columns: option<calculatedColumnList>
}
type columnTagList = array<columnTag>
type columnLevelPermissionRuleList = array<columnLevelPermissionRule>
type columnGroupSchema = {
@as("ColumnGroupColumnSchemaList") columnGroupColumnSchemaList: columnGroupColumnSchemaList,
@as("Name") name: amazonawsString
}
type columnGroup = {
@as("GeoSpatialColumnGroup") geoSpatialColumnGroup: geoSpatialColumnGroup
}
type analysisSourceTemplate = {
@as("Arn") arn: option<arn>,
@as("DataSetReferences") dataSetReferences: option<dataSetReferenceList>
}
type analysis = {
@as("Sheets") sheets: sheetList,
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("ThemeArn") themeArn: arn,
@as("DataSetArns") dataSetArns: dataSetArnsList,
@as("Errors") errors: analysisErrorList,
@as("Status") status: resourceStatus,
@as("Name") name: analysisName,
@as("Arn") arn: arn,
@as("AnalysisId") analysisId: restrictiveResourceId
}
type themeConfiguration = {
@as("Sheet") sheet: sheetStyle,
@as("UIColorPalette") uIColorPalette: uIColorPalette,
@as("DataColorPalette") dataColorPalette: dataColorPalette
}
type templateSourceEntity = {
@as("SourceTemplate") sourceTemplate: templateSourceTemplate,
@as("SourceAnalysis") sourceAnalysis: templateSourceAnalysis
}
type tagColumnOperation = {
@as("Tags") tags: option<columnTagList>,
@as("ColumnName") columnName: option<columnName>
}
type physicalTable = S3Source(s3Source) | CustomSql(customSql) | RelationalTable(relationalTable);
type parameters = {
@as("DateTimeParameters") dateTimeParameters: dateTimeParameterList,
@as("DecimalParameters") decimalParameters: decimalParameterList,
@as("IntegerParameters") integerParameters: integerParameterList,
@as("StringParameters") stringParameters: stringParameterList
}
type dataSourceParametersList = array<dataSourceParameters>
type dashboardSourceEntity = {
@as("SourceTemplate") sourceTemplate: dashboardSourceTemplate
}
type dashboard = {
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("LastPublishedTime") lastPublishedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Version") version: dashboardVersion,
@as("Name") name: dashboardName,
@as("Arn") arn: arn,
@as("DashboardId") dashboardId: restrictiveResourceId
}
type columnGroupSchemaList = array<columnGroupSchema>
type columnGroupList = array<columnGroup>
type analysisSourceEntity = {
@as("SourceTemplate") sourceTemplate: analysisSourceTemplate
}
type transformOperation = TagColumnOperation(tagColumnOperation) | CastColumnTypeOperation(castColumnTypeOperation) | RenameColumnOperation(renameColumnOperation) | CreateColumnsOperation(createColumnsOperation) | FilterOperation(filterOperation) | ProjectOperation(projectOperation);
type themeVersion = {
@as("Status") status: resourceStatus,
@as("Errors") errors: themeErrorList,
@as("Configuration") configuration: themeConfiguration,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("BaseThemeId") baseThemeId: restrictiveResourceId,
@as("Description") description: versionDescription,
@as("Arn") arn: arn,
@as("VersionNumber") versionNumber: versionNumber
}
type physicalTableMap = Js.Dict.t< physicalTable>
type dataSource = {
@as("ErrorInfo") errorInfo: dataSourceErrorInfo,
@as("SslProperties") sslProperties: sslProperties,
@as("VpcConnectionProperties") vpcConnectionProperties: vpcConnectionProperties,
@as("AlternateDataSourceParameters") alternateDataSourceParameters: dataSourceParametersList,
@as("DataSourceParameters") dataSourceParameters: dataSourceParameters,
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Status") status: resourceStatus,
@as("Type") type_: dataSourceType,
@as("Name") name: resourceName,
@as("DataSourceId") dataSourceId: resourceId,
@as("Arn") arn: arn
}
type dataSetConfiguration = {
@as("ColumnGroupSchemaList") columnGroupSchemaList: columnGroupSchemaList,
@as("DataSetSchema") dataSetSchema: dataSetSchema,
@as("Placeholder") placeholder: amazonawsString
}
type credentialPair = {
@as("AlternateDataSourceParameters") alternateDataSourceParameters: dataSourceParametersList,
@as("Password") password: option<password>,
@as("Username") username: option<userName2>
}
type transformOperationList = array<transformOperation>
type theme = {
@as("Type") type_: themeType,
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Version") version: themeVersion,
@as("ThemeId") themeId: restrictiveResourceId,
@as("Name") name: themeName,
@as("Arn") arn: arn
}
type dataSourceList = array<dataSource>
type dataSourceCredentials = {
@as("CopySourceArn") copySourceArn: copySourceArn,
@as("CredentialPair") credentialPair: credentialPair
}
type dataSetConfigurationList = array<dataSetConfiguration>
type templateVersion = {
@as("Sheets") sheets: sheetList,
@as("ThemeArn") themeArn: arn,
@as("SourceEntityArn") sourceEntityArn: arn,
@as("Description") description: versionDescription,
@as("DataSetConfigurations") dataSetConfigurations: dataSetConfigurationList,
@as("Status") status: resourceStatus,
@as("VersionNumber") versionNumber: versionNumber,
@as("Errors") errors: templateErrorList,
@as("CreatedTime") createdTime: amazonawsTimestamp
}
type logicalTable = {
@as("Source") source: option<logicalTableSource>,
@as("DataTransforms") dataTransforms: transformOperationList,
@as("Alias") alias: option<logicalTableAlias>
}
type template = {
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("TemplateId") templateId: restrictiveResourceId,
@as("Version") version: templateVersion,
@as("Name") name: templateName,
@as("Arn") arn: arn
}
type logicalTableMap = Js.Dict.t< logicalTable>
type dataSet = {
@as("ColumnLevelPermissionRules") columnLevelPermissionRules: columnLevelPermissionRuleList,
@as("RowLevelPermissionDataSet") rowLevelPermissionDataSet: rowLevelPermissionDataSet,
@as("FieldFolders") fieldFolders: fieldFolderMap,
@as("ColumnGroups") columnGroups: columnGroupList,
@as("ConsumedSpiceCapacityInBytes") consumedSpiceCapacityInBytes: amazonawsLong,
@as("ImportMode") importMode: dataSetImportMode,
@as("OutputColumns") outputColumns: outputColumnList,
@as("LogicalTableMap") logicalTableMap: logicalTableMap,
@as("PhysicalTableMap") physicalTableMap: physicalTableMap,
@as("LastUpdatedTime") lastUpdatedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Name") name: resourceName,
@as("DataSetId") dataSetId: resourceId,
@as("Arn") arn: arn
}
type clientType;
@module("@aws-sdk/client-quicksight") @new external createClient: unit => clientType = "QuickSightClient";
module UpdateDashboardPublishedVersion = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: option<versionNumber>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("DashboardArn") dashboardArn: arn,
@as("DashboardId") dashboardId: restrictiveResourceId
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDashboardPublishedVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAccountSettings = {
  type t;
  type request = {
@as("NotificationEmail") notificationEmail: amazonawsString,
@as("DefaultNamespace") defaultNamespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateAccountSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreAnalysis = {
  type t;
  type request = {
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("Arn") arn: arn,
@as("Status") status: statusCode
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "RestoreAnalysisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSessionEmbedUrl = {
  type t;
  type request = {
@as("UserArn") userArn: arn,
@as("SessionLifetimeInMinutes") sessionLifetimeInMinutes: sessionLifetimeInMinutes,
@as("EntryPoint") entryPoint: entryPoint,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("EmbedUrl") embedUrl: embeddingUrl
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "GetSessionEmbedUrlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUserByPrincipalId = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("PrincipalId") principalId: option<amazonawsString>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteUserByPrincipalIdCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("UserName") userName: option<userName>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteThemeAlias = {
  type t;
  type request = {
@as("AliasName") aliasName: option<aliasName>,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("ThemeId") themeId: restrictiveResourceId,
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Arn") arn: arn,
@as("AliasName") aliasName: aliasName
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteThemeAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTheme = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: versionNumber,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("ThemeId") themeId: restrictiveResourceId,
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteThemeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTemplateAlias = {
  type t;
  type request = {
@as("AliasName") aliasName: option<aliasName>,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Arn") arn: arn,
@as("AliasName") aliasName: aliasName,
@as("TemplateId") templateId: restrictiveResourceId,
@as("Status") status: statusCode
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteTemplateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTemplate = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: versionNumber,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("TemplateId") templateId: restrictiveResourceId,
@as("Arn") arn: arn,
@as("RequestId") requestId: amazonawsString
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNamespace = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteNamespaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteIAMPolicyAssignment = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AssignmentName") assignmentName: option<iAMPolicyAssignmentName>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("AssignmentName") assignmentName: iAMPolicyAssignmentName
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteIAMPolicyAssignmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGroupMembership = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("GroupName") groupName: option<groupName>,
@as("MemberName") memberName: option<groupMemberName>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteGroupMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGroup = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("GroupName") groupName: option<groupName>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDataSource = {
  type t;
  type request = {
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("DataSourceId") dataSourceId: resourceId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDataSet = {
  type t;
  type request = {
@as("DataSetId") dataSetId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("DataSetId") dataSetId: resourceId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteDataSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDashboard = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: versionNumber,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("Arn") arn: arn,
@as("Status") status: statusCode
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteDashboardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAnalysis = {
  type t;
  type request = {
@as("ForceDeleteWithoutRecovery") forceDeleteWithoutRecovery: amazonawsBoolean,
@as("RecoveryWindowInDays") recoveryWindowInDays: recoveryWindowInDays,
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("DeletionTime") deletionTime: amazonawsTimestamp,
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("Arn") arn: arn,
@as("Status") status: statusCode
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteAnalysisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAccountCustomization = {
  type t;
  type request = {
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DeleteAccountCustomizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateIngestion = {
  type t;
  type request = {
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("IngestionId") ingestionId: option<ingestionId>,
@as("DataSetId") dataSetId: option<amazonawsString>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("IngestionStatus") ingestionStatus: ingestionStatus,
@as("IngestionId") ingestionId: ingestionId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateIngestionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelIngestion = {
  type t;
  type request = {
@as("IngestionId") ingestionId: option<ingestionId>,
@as("DataSetId") dataSetId: option<amazonawsString>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("IngestionId") ingestionId: ingestionId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CancelIngestionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateUser = {
  type t;
  type request = {
@as("ExternalLoginId") externalLoginId: amazonawsString,
@as("CustomFederationProviderUrl") customFederationProviderUrl: amazonawsString,
@as("ExternalLoginFederationProviderType") externalLoginFederationProviderType: amazonawsString,
@as("UnapplyCustomPermissions") unapplyCustomPermissions: amazonawsBoolean,
@as("CustomPermissionsName") customPermissionsName: roleName,
@as("Role") role: option<userRole>,
@as("Email") email: option<amazonawsString>,
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("UserName") userName: option<userName>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("User") user: user
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateThemeAlias = {
  type t;
  type request = {
@as("ThemeVersionNumber") themeVersionNumber: option<versionNumber>,
@as("AliasName") aliasName: option<aliasName>,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("ThemeAlias") themeAlias: themeAlias
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateThemeAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTemplateAlias = {
  type t;
  type request = {
@as("TemplateVersionNumber") templateVersionNumber: option<versionNumber>,
@as("AliasName") aliasName: option<aliasName>,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("TemplateAlias") templateAlias: templateAlias
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateTemplateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGroup = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("Description") description: groupDescription,
@as("GroupName") groupName: option<groupName>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Group") group: group
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAccountCustomization = {
  type t;
  type request = {
@as("AccountCustomization") accountCustomization: option<accountCustomization>,
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("AccountCustomization") accountCustomization: accountCustomization,
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateAccountCustomizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterUser = {
  type t;
  type request = {
@as("ExternalLoginId") externalLoginId: amazonawsString,
@as("CustomFederationProviderUrl") customFederationProviderUrl: amazonawsString,
@as("ExternalLoginFederationProviderType") externalLoginFederationProviderType: amazonawsString,
@as("CustomPermissionsName") customPermissionsName: roleName,
@as("UserName") userName: userName,
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("SessionName") sessionName: roleSessionName,
@as("IamArn") iamArn: amazonawsString,
@as("UserRole") userRole: option<userRole>,
@as("Email") email: option<amazonawsString>,
@as("IdentityType") identityType: option<identityType>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("UserInvitationUrl") userInvitationUrl: amazonawsString,
@as("User") user: user
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "RegisterUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDashboardEmbedUrl = {
  type t;
  type request = {
@as("AdditionalDashboardIds") additionalDashboardIds: additionalDashboardIdList,
@as("Namespace") namespace: namespace,
@as("UserArn") userArn: arn,
@as("StatePersistenceEnabled") statePersistenceEnabled: amazonawsBoolean,
@as("ResetDisabled") resetDisabled: amazonawsBoolean,
@as("UndoRedoDisabled") undoRedoDisabled: amazonawsBoolean,
@as("SessionLifetimeInMinutes") sessionLifetimeInMinutes: sessionLifetimeInMinutes,
@as("IdentityType") identityType: option<embeddingIdentityType>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("EmbedUrl") embedUrl: embeddingUrl
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "GetDashboardEmbedUrlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUser = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("UserName") userName: option<userName>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("User") user: user
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeThemeAlias = {
  type t;
  type request = {
@as("AliasName") aliasName: option<aliasName>,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("ThemeAlias") themeAlias: themeAlias
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeThemeAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTemplateAlias = {
  type t;
  type request = {
@as("AliasName") aliasName: option<aliasName>,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("TemplateAlias") templateAlias: templateAlias
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeTemplateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGroup = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("GroupName") groupName: option<groupName>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Group") group: group
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountSettings = {
  type t;
  type request = {
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("AccountSettings") accountSettings: accountSettings
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeAccountSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountCustomization = {
  type t;
  type request = {
@as("Resolved") resolved: amazonawsBoolean,
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("AccountCustomization") accountCustomization: accountCustomization,
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeAccountCustomizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateThemeAlias = {
  type t;
  type request = {
@as("ThemeVersionNumber") themeVersionNumber: option<versionNumber>,
@as("AliasName") aliasName: option<aliasName>,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("ThemeAlias") themeAlias: themeAlias
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateThemeAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTemplateAlias = {
  type t;
  type request = {
@as("TemplateVersionNumber") templateVersionNumber: option<versionNumber>,
@as("AliasName") aliasName: option<aliasName>,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("TemplateAlias") templateAlias: templateAlias
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateTemplateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGroupMembership = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("GroupName") groupName: option<groupName>,
@as("MemberName") memberName: option<groupMemberName>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("GroupMember") groupMember: groupMember
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateGroupMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGroup = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("Description") description: groupDescription,
@as("GroupName") groupName: option<groupName>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Group") group: group
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateIAMPolicyAssignment = {
  type t;
  type request = {
@as("Identities") identities: identityMap,
@as("PolicyArn") policyArn: arn,
@as("AssignmentStatus") assignmentStatus: assignmentStatus,
@as("Namespace") namespace: option<namespace>,
@as("AssignmentName") assignmentName: option<iAMPolicyAssignmentName>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("AssignmentStatus") assignmentStatus: assignmentStatus,
@as("Identities") identities: identityMap,
@as("PolicyArn") policyArn: arn,
@as("AssignmentId") assignmentId: amazonawsString,
@as("AssignmentName") assignmentName: iAMPolicyAssignmentName
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateIAMPolicyAssignmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchDashboards = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: option<dashboardSearchFilterList>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("NextToken") nextToken: amazonawsString,
@as("DashboardSummaryList") dashboardSummaryList: dashboardSummaryList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "SearchDashboardsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchAnalyses = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: option<analysisSearchFilterList>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("NextToken") nextToken: amazonawsString,
@as("AnalysisSummaryList") analysisSummaryList: analysisSummaryList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "SearchAnalysesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("UserList") userList: userList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUserGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("UserName") userName: option<userName>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("GroupList") groupList: groupList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListUserGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThemes = {
  type t;
  type request = {
@as("Type") type_: themeType,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("NextToken") nextToken: amazonawsString,
@as("ThemeSummaryList") themeSummaryList: themeSummaryList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListThemesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThemeVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("NextToken") nextToken: amazonawsString,
@as("ThemeVersionSummaryList") themeVersionSummaryList: themeVersionSummaryList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListThemeVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThemeAliases = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("ThemeAliasList") themeAliasList: themeAliasList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListThemeAliasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTemplates = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("NextToken") nextToken: amazonawsString,
@as("TemplateSummaryList") templateSummaryList: templateSummaryList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTemplateVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("NextToken") nextToken: amazonawsString,
@as("TemplateVersionSummaryList") templateVersionSummaryList: templateVersionSummaryList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListTemplateVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTemplateAliases = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("TemplateAliasList") templateAliasList: templateAliasList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListTemplateAliasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIAMPolicyAssignmentsForUser = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("UserName") userName: option<userName>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("NextToken") nextToken: amazonawsString,
@as("RequestId") requestId: amazonawsString,
@as("ActiveAssignments") activeAssignments: activeIAMPolicyAssignmentList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListIAMPolicyAssignmentsForUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIAMPolicyAssignments = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("Namespace") namespace: option<namespace>,
@as("AssignmentStatus") assignmentStatus: assignmentStatus,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("IAMPolicyAssignments") iAMPolicyAssignments: iAMPolicyAssignmentSummaryList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListIAMPolicyAssignmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroups = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("GroupList") groupList: groupList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGroupMemberships = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("GroupName") groupName: option<groupName>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("GroupMemberList") groupMemberList: groupMemberList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListGroupMembershipsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDashboards = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("NextToken") nextToken: amazonawsString,
@as("DashboardSummaryList") dashboardSummaryList: dashboardSummaryList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListDashboardsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDashboardVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("NextToken") nextToken: amazonawsString,
@as("DashboardVersionSummaryList") dashboardVersionSummaryList: dashboardVersionSummaryList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListDashboardVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAnalyses = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("NextToken") nextToken: amazonawsString,
@as("AnalysisSummaryList") analysisSummaryList: analysisSummaryList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListAnalysesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNamespace = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Namespace") namespace: namespaceInfoV2
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeNamespaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIngestion = {
  type t;
  type request = {
@as("IngestionId") ingestionId: option<ingestionId>,
@as("DataSetId") dataSetId: option<amazonawsString>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Ingestion") ingestion: ingestion
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeIngestionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNamespace = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("IdentityStore") identityStore: option<identityStore>,
@as("Namespace") namespace: option<namespace>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("IdentityStore") identityStore: identityStore,
@as("CreationStatus") creationStatus: namespaceStatus,
@as("CapacityRegion") capacityRegion: amazonawsString,
@as("Name") name: namespace,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateNamespaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateIAMPolicyAssignment = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("Identities") identities: identityMap,
@as("PolicyArn") policyArn: arn,
@as("AssignmentStatus") assignmentStatus: option<assignmentStatus>,
@as("AssignmentName") assignmentName: option<iAMPolicyAssignmentName>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Identities") identities: identityMap,
@as("PolicyArn") policyArn: arn,
@as("AssignmentStatus") assignmentStatus: assignmentStatus,
@as("AssignmentId") assignmentId: amazonawsString,
@as("AssignmentName") assignmentName: iAMPolicyAssignmentName
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateIAMPolicyAssignmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAccountCustomization = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("AccountCustomization") accountCustomization: option<accountCustomization>,
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("AccountCustomization") accountCustomization: accountCustomization,
@as("Namespace") namespace: namespace,
@as("AwsAccountId") awsAccountId: awsAccountId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateAccountCustomizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateThemePermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: updateResourcePermissionList,
@as("GrantPermissions") grantPermissions: updateResourcePermissionList,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Permissions") permissions: resourcePermissionList,
@as("ThemeArn") themeArn: arn,
@as("ThemeId") themeId: restrictiveResourceId
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateThemePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTemplatePermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: updateResourcePermissionList,
@as("GrantPermissions") grantPermissions: updateResourcePermissionList,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Permissions") permissions: resourcePermissionList,
@as("TemplateArn") templateArn: arn,
@as("TemplateId") templateId: restrictiveResourceId
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateTemplatePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDataSourcePermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: resourcePermissionList,
@as("GrantPermissions") grantPermissions: resourcePermissionList,
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("DataSourceId") dataSourceId: resourceId,
@as("DataSourceArn") dataSourceArn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDataSourcePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDataSetPermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: resourcePermissionList,
@as("GrantPermissions") grantPermissions: resourcePermissionList,
@as("DataSetId") dataSetId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("DataSetId") dataSetId: resourceId,
@as("DataSetArn") dataSetArn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDataSetPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDashboardPermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: updateResourcePermissionList,
@as("GrantPermissions") grantPermissions: updateResourcePermissionList,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Permissions") permissions: resourcePermissionList,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("DashboardArn") dashboardArn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDashboardPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAnalysisPermissions = {
  type t;
  type request = {
@as("RevokePermissions") revokePermissions: updateResourcePermissionList,
@as("GrantPermissions") grantPermissions: updateResourcePermissionList,
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Permissions") permissions: resourcePermissionList,
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("AnalysisArn") analysisArn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateAnalysisPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNamespaces = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("Namespaces") namespaces: namespaces
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListNamespacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIngestions = {
  type t;
  type request = {
@as("MaxResults") maxResults: ingestionMaxResults,
@as("AwsAccountId") awsAccountId: option<awsAccountId>,
@as("NextToken") nextToken: amazonawsString,
@as("DataSetId") dataSetId: option<amazonawsString>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("Ingestions") ingestions: ingestions
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListIngestionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDataSets = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("DataSetSummaries") dataSetSummaries: dataSetSummaryList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListDataSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeThemePermissions = {
  type t;
  type request = {
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Permissions") permissions: resourcePermissionList,
@as("ThemeArn") themeArn: arn,
@as("ThemeId") themeId: restrictiveResourceId
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeThemePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTemplatePermissions = {
  type t;
  type request = {
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Permissions") permissions: resourcePermissionList,
@as("TemplateArn") templateArn: arn,
@as("TemplateId") templateId: restrictiveResourceId
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeTemplatePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIAMPolicyAssignment = {
  type t;
  type request = {
@as("Namespace") namespace: option<namespace>,
@as("AssignmentName") assignmentName: option<iAMPolicyAssignmentName>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("IAMPolicyAssignment") iAMPolicyAssignment: iAMPolicyAssignment
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeIAMPolicyAssignmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataSourcePermissions = {
  type t;
  type request = {
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Permissions") permissions: resourcePermissionList,
@as("DataSourceId") dataSourceId: resourceId,
@as("DataSourceArn") dataSourceArn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDataSourcePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataSetPermissions = {
  type t;
  type request = {
@as("DataSetId") dataSetId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("Permissions") permissions: resourcePermissionList,
@as("DataSetId") dataSetId: resourceId,
@as("DataSetArn") dataSetArn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDataSetPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDashboardPermissions = {
  type t;
  type request = {
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("Permissions") permissions: resourcePermissionList,
@as("DashboardArn") dashboardArn: arn,
@as("DashboardId") dashboardId: restrictiveResourceId
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDashboardPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAnalysisPermissions = {
  type t;
  type request = {
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("Permissions") permissions: resourcePermissionList,
@as("AnalysisArn") analysisArn: arn,
@as("AnalysisId") analysisId: restrictiveResourceId
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeAnalysisPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAnalysis = {
  type t;
  type request = {
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("Analysis") analysis: analysis
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeAnalysisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTheme = {
  type t;
  type request = {
@as("Configuration") configuration: themeConfiguration,
@as("VersionDescription") versionDescription: versionDescription,
@as("BaseThemeId") baseThemeId: option<restrictiveResourceId>,
@as("Name") name: themeName,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("CreationStatus") creationStatus: resourceStatus,
@as("VersionArn") versionArn: arn,
@as("Arn") arn: arn,
@as("ThemeId") themeId: restrictiveResourceId
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateThemeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTemplate = {
  type t;
  type request = {
@as("Name") name: templateName,
@as("VersionDescription") versionDescription: versionDescription,
@as("SourceEntity") sourceEntity: option<templateSourceEntity>,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("CreationStatus") creationStatus: resourceStatus,
@as("VersionArn") versionArn: arn,
@as("Arn") arn: arn,
@as("TemplateId") templateId: restrictiveResourceId
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDashboard = {
  type t;
  type request = {
@as("ThemeArn") themeArn: arn,
@as("DashboardPublishOptions") dashboardPublishOptions: dashboardPublishOptions,
@as("VersionDescription") versionDescription: versionDescription,
@as("Parameters") parameters: parameters,
@as("SourceEntity") sourceEntity: option<dashboardSourceEntity>,
@as("Name") name: option<dashboardName>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("CreationStatus") creationStatus: resourceStatus,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("VersionArn") versionArn: arn,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDashboardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAnalysis = {
  type t;
  type request = {
@as("ThemeArn") themeArn: arn,
@as("SourceEntity") sourceEntity: option<analysisSourceEntity>,
@as("Parameters") parameters: parameters,
@as("Name") name: option<analysisName>,
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("UpdateStatus") updateStatus: resourceStatus,
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateAnalysisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDashboard = {
  type t;
  type request = {
@as("AliasName") aliasName: aliasName,
@as("VersionNumber") versionNumber: versionNumber,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("Dashboard") dashboard: dashboard
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDashboardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTheme = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Permissions") permissions: resourcePermissionList,
@as("Configuration") configuration: option<themeConfiguration>,
@as("VersionDescription") versionDescription: versionDescription,
@as("BaseThemeId") baseThemeId: option<restrictiveResourceId>,
@as("Name") name: option<themeName>,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("CreationStatus") creationStatus: resourceStatus,
@as("ThemeId") themeId: restrictiveResourceId,
@as("VersionArn") versionArn: arn,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateThemeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTemplate = {
  type t;
  type request = {
@as("VersionDescription") versionDescription: versionDescription,
@as("Tags") tags: tagList,
@as("SourceEntity") sourceEntity: option<templateSourceEntity>,
@as("Permissions") permissions: resourcePermissionList,
@as("Name") name: templateName,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("CreationStatus") creationStatus: resourceStatus,
@as("TemplateId") templateId: restrictiveResourceId,
@as("VersionArn") versionArn: arn,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDashboard = {
  type t;
  type request = {
@as("ThemeArn") themeArn: arn,
@as("DashboardPublishOptions") dashboardPublishOptions: dashboardPublishOptions,
@as("VersionDescription") versionDescription: versionDescription,
@as("Tags") tags: tagList,
@as("SourceEntity") sourceEntity: option<dashboardSourceEntity>,
@as("Permissions") permissions: resourcePermissionList,
@as("Parameters") parameters: parameters,
@as("Name") name: option<dashboardName>,
@as("DashboardId") dashboardId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("CreationStatus") creationStatus: resourceStatus,
@as("DashboardId") dashboardId: restrictiveResourceId,
@as("VersionArn") versionArn: arn,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateDashboardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAnalysis = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ThemeArn") themeArn: arn,
@as("SourceEntity") sourceEntity: option<analysisSourceEntity>,
@as("Permissions") permissions: resourcePermissionList,
@as("Parameters") parameters: parameters,
@as("Name") name: option<analysisName>,
@as("AnalysisId") analysisId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("CreationStatus") creationStatus: resourceStatus,
@as("AnalysisId") analysisId: restrictiveResourceId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateAnalysisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataSource = {
  type t;
  type request = {
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("DataSource") dataSource: dataSource
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDataSource = {
  type t;
  type request = {
@as("SslProperties") sslProperties: sslProperties,
@as("VpcConnectionProperties") vpcConnectionProperties: vpcConnectionProperties,
@as("Credentials") credentials: dataSourceCredentials,
@as("DataSourceParameters") dataSourceParameters: dataSourceParameters,
@as("Name") name: option<resourceName>,
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("UpdateStatus") updateStatus: resourceStatus,
@as("DataSourceId") dataSourceId: resourceId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDataSources = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: amazonawsString,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("DataSources") dataSources: dataSourceList
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "ListDataSourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTheme = {
  type t;
  type request = {
@as("AliasName") aliasName: aliasName,
@as("VersionNumber") versionNumber: versionNumber,
@as("ThemeId") themeId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAndAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("Theme") theme: theme
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeThemeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataSource = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("SslProperties") sslProperties: sslProperties,
@as("VpcConnectionProperties") vpcConnectionProperties: vpcConnectionProperties,
@as("Permissions") permissions: resourcePermissionList,
@as("Credentials") credentials: dataSourceCredentials,
@as("DataSourceParameters") dataSourceParameters: dataSourceParameters,
@as("Type") type_: option<dataSourceType>,
@as("Name") name: option<resourceName>,
@as("DataSourceId") dataSourceId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("CreationStatus") creationStatus: resourceStatus,
@as("DataSourceId") dataSourceId: resourceId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDataSet = {
  type t;
  type request = {
@as("ColumnLevelPermissionRules") columnLevelPermissionRules: columnLevelPermissionRuleList,
@as("RowLevelPermissionDataSet") rowLevelPermissionDataSet: rowLevelPermissionDataSet,
@as("FieldFolders") fieldFolders: fieldFolderMap,
@as("ColumnGroups") columnGroups: columnGroupList,
@as("ImportMode") importMode: option<dataSetImportMode>,
@as("LogicalTableMap") logicalTableMap: logicalTableMap,
@as("PhysicalTableMap") physicalTableMap: option<physicalTableMap>,
@as("Name") name: option<resourceName>,
@as("DataSetId") dataSetId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("IngestionId") ingestionId: resourceId,
@as("IngestionArn") ingestionArn: arn,
@as("DataSetId") dataSetId: resourceId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "UpdateDataSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTemplate = {
  type t;
  type request = {
@as("AliasName") aliasName: aliasName,
@as("VersionNumber") versionNumber: versionNumber,
@as("TemplateId") templateId: option<restrictiveResourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("RequestId") requestId: amazonawsString,
@as("Status") status: statusCode,
@as("Template") template: template
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataSet = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ColumnLevelPermissionRules") columnLevelPermissionRules: columnLevelPermissionRuleList,
@as("RowLevelPermissionDataSet") rowLevelPermissionDataSet: rowLevelPermissionDataSet,
@as("Permissions") permissions: resourcePermissionList,
@as("FieldFolders") fieldFolders: fieldFolderMap,
@as("ColumnGroups") columnGroups: columnGroupList,
@as("ImportMode") importMode: option<dataSetImportMode>,
@as("LogicalTableMap") logicalTableMap: logicalTableMap,
@as("PhysicalTableMap") physicalTableMap: option<physicalTableMap>,
@as("Name") name: option<resourceName>,
@as("DataSetId") dataSetId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("IngestionId") ingestionId: resourceId,
@as("IngestionArn") ingestionArn: arn,
@as("DataSetId") dataSetId: resourceId,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "CreateDataSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataSet = {
  type t;
  type request = {
@as("DataSetId") dataSetId: option<resourceId>,
@as("AwsAccountId") awsAccountId: option<awsAccountId>
}
  type response = {
@as("Status") status: statusCode,
@as("RequestId") requestId: amazonawsString,
@as("DataSet") dataSet: dataSet
}
  @module("@aws-sdk/client-quicksight") @new external new_: (request) => t = "DescribeDataSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
