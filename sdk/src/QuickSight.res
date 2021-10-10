type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-quicksight") @new
external createClient: unit => awsServiceClient = "QuickSightClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workGroup = string
type warehouse = string
type versionNumber = float
type versionDescription = string
type userRole = [
  | @as("RESTRICTED_READER") #RESTRICTED_READER
  | @as("RESTRICTED_AUTHOR") #RESTRICTED_AUTHOR
  | @as("READER") #READER
  | @as("AUTHOR") #AUTHOR
  | @as("ADMIN") #ADMIN
]
type userName2 = string
type userName = string
type typeCastFormat = string
type timestamp_ = Js.Date.t
type themeType = [@as("ALL") #ALL | @as("CUSTOM") #CUSTOM | @as("QUICKSIGHT") #QUICKSIGHT]
type themeName = string
type themeErrorType = [@as("INTERNAL_FAILURE") #INTERNAL_FAILURE]
type textQualifier = [@as("SINGLE_QUOTE") #SINGLE_QUOTE | @as("DOUBLE_QUOTE") #DOUBLE_QUOTE]
type templateName = string
type templateErrorType = [
  | @as("ACCESS_DENIED") #ACCESS_DENIED
  | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE
  | @as("DATA_SET_NOT_FOUND") #DATA_SET_NOT_FOUND
  | @as("SOURCE_NOT_FOUND") #SOURCE_NOT_FOUND
]
type tagValue = string
type tagKey = string
type string_ = string
type statusCode = int
type sqlQuery = string
type siteBaseUrl = string
type sessionLifetimeInMinutes = float
type s3Key = string
type s3Bucket = string
type rowLevelPermissionPolicy = [
  | @as("DENY_ACCESS") #DENY_ACCESS
  | @as("GRANT_ACCESS") #GRANT_ACCESS
]
type rowLevelPermissionFormatVersion = [@as("VERSION_2") #VERSION_2 | @as("VERSION_1") #VERSION_1]
type roleSessionName = string
type roleName = string
type restrictiveResourceId = string
type resourceStatus = [
  | @as("DELETED") #DELETED
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATE_SUCCESSFUL") #UPDATE_SUCCESSFUL
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("CREATION_FAILED") #CREATION_FAILED
  | @as("CREATION_SUCCESSFUL") #CREATION_SUCCESSFUL
  | @as("CREATION_IN_PROGRESS") #CREATION_IN_PROGRESS
]
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
type namespaceStatus = [
  | @as("NON_RETRYABLE_FAILURE") #NON_RETRYABLE_FAILURE
  | @as("RETRYABLE_FAILURE") #RETRYABLE_FAILURE
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("CREATED") #CREATED
]
type namespaceErrorType = [
  | @as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR
  | @as("PERMISSION_DENIED") #PERMISSION_DENIED
]
type namespace = string
type maxResults = int
type long = float
type logicalTableId = string
type logicalTableAlias = string
type joinType = [
  | @as("RIGHT") #RIGHT
  | @as("LEFT") #LEFT
  | @as("OUTER") #OUTER
  | @as("INNER") #INNER
]
type instanceId = string
type inputColumnDataType = [
  | @as("JSON") #JSON
  | @as("BOOLEAN") #BOOLEAN
  | @as("BIT") #BIT
  | @as("DATETIME") #DATETIME
  | @as("DECIMAL") #DECIMAL
  | @as("INTEGER") #INTEGER
  | @as("STRING") #STRING
]
type ingestionStatus = [
  | @as("CANCELLED") #CANCELLED
  | @as("COMPLETED") #COMPLETED
  | @as("FAILED") #FAILED
  | @as("RUNNING") #RUNNING
  | @as("QUEUED") #QUEUED
  | @as("INITIALIZED") #INITIALIZED
]
type ingestionRequestType = [
  | @as("FULL_REFRESH") #FULL_REFRESH
  | @as("INCREMENTAL_REFRESH") #INCREMENTAL_REFRESH
  | @as("EDIT") #EDIT
  | @as("INITIAL_INGESTION") #INITIAL_INGESTION
]
type ingestionRequestSource = [@as("SCHEDULED") #SCHEDULED | @as("MANUAL") #MANUAL]
type ingestionMaxResults = int
type ingestionId = string
type ingestionErrorType = [
  | @as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR
  | @as("FAILURE_TO_PROCESS_JSON_FILE") #FAILURE_TO_PROCESS_JSON_FILE
  | @as("DATA_SOURCE_CONNECTION_FAILED") #DATA_SOURCE_CONNECTION_FAILED
  | @as("DATA_SOURCE_AUTH_FAILED") #DATA_SOURCE_AUTH_FAILED
  | @as("INVALID_DATA_SOURCE_CONFIG") #INVALID_DATA_SOURCE_CONFIG
  | @as("IOT_DATA_SET_FILE_EMPTY") #IOT_DATA_SET_FILE_EMPTY
  | @as("IOT_FILE_NOT_FOUND") #IOT_FILE_NOT_FOUND
  | @as("S3_FILE_INACCESSIBLE") #S3_FILE_INACCESSIBLE
  | @as("SQL_EXCEPTION") #SQL_EXCEPTION
  | @as("UNROUTABLE_HOST") #UNROUTABLE_HOST
  | @as("UNRESOLVABLE_HOST") #UNRESOLVABLE_HOST
  | @as("SQL_NUMERIC_OVERFLOW") #SQL_NUMERIC_OVERFLOW
  | @as("QUERY_TIMEOUT") #QUERY_TIMEOUT
  | @as("SQL_INVALID_PARAMETER_VALUE") #SQL_INVALID_PARAMETER_VALUE
  | @as("SOURCE_RESOURCE_LIMIT_EXCEEDED") #SOURCE_RESOURCE_LIMIT_EXCEEDED
  | @as("INVALID_DATAPREP_SYNTAX") #INVALID_DATAPREP_SYNTAX
  | @as("INVALID_DATE_FORMAT") #INVALID_DATE_FORMAT
  | @as("SQL_SCHEMA_MISMATCH_ERROR") #SQL_SCHEMA_MISMATCH_ERROR
  | @as("PASSWORD_AUTHENTICATION_FAILURE") #PASSWORD_AUTHENTICATION_FAILURE
  | @as("SOURCE_API_LIMIT_EXCEEDED_FAILURE") #SOURCE_API_LIMIT_EXCEEDED_FAILURE
  | @as("OAUTH_TOKEN_FAILURE") #OAUTH_TOKEN_FAILURE
  | @as("SSL_CERTIFICATE_VALIDATION_FAILURE") #SSL_CERTIFICATE_VALIDATION_FAILURE
  | @as("PERMISSION_DENIED") #PERMISSION_DENIED
  | @as("SQL_TABLE_NOT_FOUND") #SQL_TABLE_NOT_FOUND
  | @as("CONNECTION_FAILURE") #CONNECTION_FAILURE
  | @as("IAM_ROLE_NOT_AVAILABLE") #IAM_ROLE_NOT_AVAILABLE
  | @as("DATA_SOURCE_NOT_FOUND") #DATA_SOURCE_NOT_FOUND
  | @as("CUSTOMER_ERROR") #CUSTOMER_ERROR
  | @as("ACCOUNT_CAPACITY_LIMIT_EXCEEDED") #ACCOUNT_CAPACITY_LIMIT_EXCEEDED
  | @as("ROW_SIZE_LIMIT_EXCEEDED") #ROW_SIZE_LIMIT_EXCEEDED
  | @as("DATA_SET_SIZE_LIMIT_EXCEEDED") #DATA_SET_SIZE_LIMIT_EXCEEDED
  | @as("SPICE_TABLE_NOT_FOUND") #SPICE_TABLE_NOT_FOUND
  | @as("DATA_TOLERANCE_EXCEPTION") #DATA_TOLERANCE_EXCEPTION
  | @as("S3_MANIFEST_ERROR") #S3_MANIFEST_ERROR
  | @as("S3_UPLOADED_FILE_DELETED") #S3_UPLOADED_FILE_DELETED
  | @as("DATA_SET_NOT_SPICE") #DATA_SET_NOT_SPICE
  | @as("DATA_SET_DELETED") #DATA_SET_DELETED
  | @as("INGESTION_CANCELED") #INGESTION_CANCELED
  | @as("INGESTION_SUPERSEDED") #INGESTION_SUPERSEDED
  | @as("FAILURE_TO_ASSUME_ROLE") #FAILURE_TO_ASSUME_ROLE
]
type identityType = [@as("QUICKSIGHT") #QUICKSIGHT | @as("IAM") #IAM]
type identityStore = [@as("QUICKSIGHT") #QUICKSIGHT]
type identityName = string
type iampolicyAssignmentName = string
type host = string
type hexColor = string
type groupName = string
type groupMemberName = string
type groupDescription = string
type geoSpatialDataRole = [
  | @as("LATITUDE") #LATITUDE
  | @as("LONGITUDE") #LONGITUDE
  | @as("POSTCODE") #POSTCODE
  | @as("CITY") #CITY
  | @as("COUNTY") #COUNTY
  | @as("STATE") #STATE
  | @as("COUNTRY") #COUNTRY
]
type geoSpatialCountryCode = [@as("US") #US]
type filterOperator = [@as("StringEquals") #StringEquals]
type fileFormat = [
  | @as("JSON") #JSON
  | @as("XLSX") #XLSX
  | @as("ELF") #ELF
  | @as("CLF") #CLF
  | @as("TSV") #TSV
  | @as("CSV") #CSV
]
type fieldFolderPath = string
type fieldFolderDescription = string
type expression = string
type exceptionResourceType = [
  | @as("INGESTION") #INGESTION
  | @as("VPC_CONNECTION") #VPC_CONNECTION
  | @as("DATA_SET") #DATA_SET
  | @as("DATA_SOURCE") #DATA_SOURCE
  | @as("IAMPOLICY_ASSIGNMENT") #IAMPOLICY_ASSIGNMENT
  | @as("ACCOUNT_SETTINGS") #ACCOUNT_SETTINGS
  | @as("NAMESPACE") #NAMESPACE
  | @as("GROUP") #GROUP
  | @as("USER") #USER
]
type entryPoint = string
type embeddingUrl = string
type embeddingIdentityType = [
  | @as("ANONYMOUS") #ANONYMOUS
  | @as("QUICKSIGHT") #QUICKSIGHT
  | @as("IAM") #IAM
]
type edition = [@as("ENTERPRISE") #ENTERPRISE | @as("STANDARD") #STANDARD]
type double = float
type domain = string
type delimiter = string
type database = string
type dataSourceType = [
  | @as("TIMESTREAM") #TIMESTREAM
  | @as("TWITTER") #TWITTER
  | @as("TERADATA") #TERADATA
  | @as("SQLSERVER") #SQLSERVER
  | @as("SPARK") #SPARK
  | @as("SNOWFLAKE") #SNOWFLAKE
  | @as("SERVICENOW") #SERVICENOW
  | @as("SALESFORCE") #SALESFORCE
  | @as("S3") #S3
  | @as("REDSHIFT") #REDSHIFT
  | @as("PRESTO") #PRESTO
  | @as("POSTGRESQL") #POSTGRESQL
  | @as("ORACLE") #ORACLE
  | @as("MYSQL") #MYSQL
  | @as("MARIADB") #MARIADB
  | @as("JIRA") #JIRA
  | @as("GITHUB") #GITHUB
  | @as("AWS_IOT_ANALYTICS") #AWS_IOT_ANALYTICS
  | @as("AURORA_POSTGRESQL") #AURORA_POSTGRESQL
  | @as("AURORA") #AURORA
  | @as("ATHENA") #ATHENA
  | @as("AMAZON_ELASTICSEARCH") #AMAZON_ELASTICSEARCH
  | @as("ADOBE_ANALYTICS") #ADOBE_ANALYTICS
]
type dataSourceErrorInfoType = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("CONFLICT") #CONFLICT
  | @as("GENERIC_SQL_FAILURE") #GENERIC_SQL_FAILURE
  | @as("UNKNOWN_HOST") #UNKNOWN_HOST
  | @as("ENGINE_VERSION_NOT_SUPPORTED") #ENGINE_VERSION_NOT_SUPPORTED
  | @as("TIMEOUT") #TIMEOUT
  | @as("COPY_SOURCE_NOT_FOUND") #COPY_SOURCE_NOT_FOUND
  | @as("ACCESS_DENIED") #ACCESS_DENIED
]
type dataSetName = string
type dataSetImportMode = [@as("DIRECT_QUERY") #DIRECT_QUERY | @as("SPICE") #SPICE]
type dashboardUIState = [@as("COLLAPSED") #COLLAPSED | @as("EXPANDED") #EXPANDED]
type dashboardName = string
type dashboardFilterAttribute = [@as("QUICKSIGHT_USER") #QUICKSIGHT_USER]
type dashboardErrorType = [
  | @as("COLUMN_REPLACEMENT_MISSING") #COLUMN_REPLACEMENT_MISSING
  | @as("COLUMN_GEOGRAPHIC_ROLE_MISMATCH") #COLUMN_GEOGRAPHIC_ROLE_MISMATCH
  | @as("COLUMN_TYPE_MISMATCH") #COLUMN_TYPE_MISMATCH
  | @as("PARAMETER_NOT_FOUND") #PARAMETER_NOT_FOUND
  | @as("PARAMETER_TYPE_INVALID") #PARAMETER_TYPE_INVALID
  | @as("PARAMETER_VALUE_INCOMPATIBLE") #PARAMETER_VALUE_INCOMPATIBLE
  | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE
  | @as("DATA_SET_NOT_FOUND") #DATA_SET_NOT_FOUND
  | @as("SOURCE_NOT_FOUND") #SOURCE_NOT_FOUND
  | @as("ACCESS_DENIED") #ACCESS_DENIED
]
type dashboardBehavior = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type customSqlName = string
type copySourceArn = string
type columnName = string
type columnId = string
type columnGroupName = string
type columnDescriptiveText = string
type columnDataType = [
  | @as("DATETIME") #DATETIME
  | @as("DECIMAL") #DECIMAL
  | @as("INTEGER") #INTEGER
  | @as("STRING") #STRING
]
type clusterId = string
type catalog = string
type boolean_ = bool
type awsAndAccountId = string
type awsAccountId = string
type assignmentStatus = [@as("DISABLED") #DISABLED | @as("DRAFT") #DRAFT | @as("ENABLED") #ENABLED]
type arn = string
type analysisName = string
type analysisFilterAttribute = [@as("QUICKSIGHT_USER") #QUICKSIGHT_USER]
type analysisErrorType = [
  | @as("COLUMN_REPLACEMENT_MISSING") #COLUMN_REPLACEMENT_MISSING
  | @as("COLUMN_GEOGRAPHIC_ROLE_MISMATCH") #COLUMN_GEOGRAPHIC_ROLE_MISMATCH
  | @as("COLUMN_TYPE_MISMATCH") #COLUMN_TYPE_MISMATCH
  | @as("PARAMETER_NOT_FOUND") #PARAMETER_NOT_FOUND
  | @as("PARAMETER_TYPE_INVALID") #PARAMETER_TYPE_INVALID
  | @as("PARAMETER_VALUE_INCOMPATIBLE") #PARAMETER_VALUE_INCOMPATIBLE
  | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE
  | @as("DATA_SET_NOT_FOUND") #DATA_SET_NOT_FOUND
  | @as("SOURCE_NOT_FOUND") #SOURCE_NOT_FOUND
  | @as("ACCESS_DENIED") #ACCESS_DENIED
]
type aliasName = string
@ocaml.doc("<p>VPC connection properties.</p>")
type vpcConnectionProperties = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the VPC connection.</p>")
  @as("VpcConnectionArn")
  vpcConnectionArn: arn,
}
@ocaml.doc("<p>A registered user of Amazon QuickSight. </p>")
type user = {
  @ocaml.doc("<p>The identity ID for the user in the external login provider.</p>")
  @as("ExternalLoginId")
  externalLoginId: option<string_>,
  @ocaml.doc("<p>The URL of the external login provider.</p>")
  @as("ExternalLoginFederationProviderUrl")
  externalLoginFederationProviderUrl: option<string_>,
  @ocaml.doc("<p>The type of supported external login provider that provides identity to let the user
            federate into Amazon QuickSight with an associated IAM role. The type can be one of the following.</p>
        <ul>
            <li>
                    <p>
                  <code>COGNITO</code>: Amazon Cognito. The provider URL is cognito-identity.amazonaws.com.</p>
                </li>
            <li>
                    <p>
                  <code>CUSTOM_OIDC</code>: Custom OpenID Connect (OIDC) provider.</p>
                </li>
         </ul>")
  @as("ExternalLoginFederationProviderType")
  externalLoginFederationProviderType: option<string_>,
  @ocaml.doc("<p>The custom permissions profile associated with this user.</p>")
  @as("CustomPermissionsName")
  customPermissionsName: option<roleName>,
  @ocaml.doc("<p>The principal ID of the user.</p>") @as("PrincipalId")
  principalId: option<string_>,
  @ocaml.doc("<p>The active status of user. When you create an Amazon QuickSight user that’s not an IAM
            user or an Active Directory user, that user is inactive until they sign in and provide a
            password.</p>")
  @as("Active")
  active: option<boolean_>,
  @ocaml.doc("<p>The type of identity authentication used by the user.</p>") @as("IdentityType")
  identityType: option<identityType>,
  @ocaml.doc("<p>The Amazon QuickSight role for the user. The user role can be one of the
            following:.</p>
        <ul>
            <li>
                <p>
                  <code>READER</code>: A user who has read-only access to dashboards.</p>
            </li>
            <li>
                <p>
                  <code>AUTHOR</code>: A user who can create data sources, datasets, analyses,
                    and dashboards.</p>
            </li>
            <li>
                <p>
                  <code>ADMIN</code>: A user who is an author, who can also manage Amazon
                    QuickSight settings.</p>
            </li>
            <li>
                <p> 
                  <code>RESTRICTED_READER</code>: This role isn't currently available for
                    use.</p>
            </li>
            <li>
                <p> 
                  <code>RESTRICTED_AUTHOR</code>: This role isn't currently available for
                    use.</p>
            </li>
         </ul>")
  @as("Role")
  role: option<userRole>,
  @ocaml.doc("<p>The user's email address.</p>") @as("Email") email: option<string_>,
  @ocaml.doc("<p>The user's user name.</p>") @as("UserName") userName: option<userName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the user.</p>") @as("Arn") arn: option<arn>,
}
@ocaml.doc("<p>Information about the format for a source file or files.</p>")
type uploadSettings = {
  @ocaml.doc("<p>The delimiter between values in the file.</p>") @as("Delimiter")
  delimiter: option<delimiter>,
  @ocaml.doc("<p>Text qualifier.</p>") @as("TextQualifier") textQualifier: option<textQualifier>,
  @ocaml.doc("<p>Whether the file has a header row, or the files each have a header row.</p>")
  @as("ContainsHeader")
  containsHeader: option<boolean_>,
  @ocaml.doc("<p>A row number to start reading data from.</p>") @as("StartFromRow")
  startFromRow: option<positiveInteger>,
  @ocaml.doc("<p>File format.</p>") @as("Format") format: option<fileFormat>,
}
@ocaml.doc("<p>The theme colors that apply to UI and to charts, excluding data colors. The colors
            description is a hexadecimal color code that consists of six alphanumerical characters,
            prefixed with <code>#</code>, for example #37BFF5. For more information, see <a href=\"https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html\">Using Themes in Amazon QuickSight</a> in the <i>Amazon QuickSight User
                Guide.</i>
        </p>")
type uicolorPalette = {
  @ocaml.doc("<p>The foreground color that applies to any text or other elements that appear over the
            measure color.</p>")
  @as("MeasureForeground")
  measureForeground: option<hexColor>,
  @ocaml.doc(
    "<p>The color that applies to the names of fields that are identified as measures.</p>"
  )
  @as("Measure")
  measure: option<hexColor>,
  @ocaml.doc("<p>The foreground color that applies to any text or other elements that appear over the
            dimension color.</p>")
  @as("DimensionForeground")
  dimensionForeground: option<hexColor>,
  @ocaml.doc("<p>The color that applies to the names of fields that are identified as
            dimensions.</p>")
  @as("Dimension")
  dimension: option<hexColor>,
  @ocaml.doc("<p>The foreground color that applies to any text or other elements that appear over the
            success color.</p>")
  @as("SuccessForeground")
  successForeground: option<hexColor>,
  @ocaml.doc("<p>The color that applies to success messages, for example the check mark for a
            successful download.</p>")
  @as("Success")
  success: option<hexColor>,
  @ocaml.doc("<p>The foreground color that applies to any text or other elements that appear over the
            warning color.</p>")
  @as("WarningForeground")
  warningForeground: option<hexColor>,
  @ocaml.doc("<p>This color that applies to warning and informational messages.</p>") @as("Warning")
  warning: option<hexColor>,
  @ocaml.doc("<p>The foreground color that applies to any text or other elements that appear over the
            error color.</p>")
  @as("DangerForeground")
  dangerForeground: option<hexColor>,
  @ocaml.doc("<p>The color that applies to error messages.</p>") @as("Danger")
  danger: option<hexColor>,
  @ocaml.doc("<p>The foreground color that applies to any text or other elements that appear over the
            accent color.</p>")
  @as("AccentForeground")
  accentForeground: option<hexColor>,
  @ocaml.doc("<p>This color is that applies to selected states and buttons.</p>") @as("Accent")
  accent: option<hexColor>,
  @ocaml.doc("<p>The background color that applies to the sheet background and sheet controls.</p>")
  @as("SecondaryBackground")
  secondaryBackground: option<hexColor>,
  @ocaml.doc("<p>The foreground color that applies to any sheet title, sheet control text, or UI that
            appears over the secondary background.</p>")
  @as("SecondaryForeground")
  secondaryForeground: option<hexColor>,
  @ocaml.doc("<p>The background color that applies to visuals and other high emphasis UI.</p>")
  @as("PrimaryBackground")
  primaryBackground: option<hexColor>,
  @ocaml.doc("<p>The color of text and other foreground elements that appear over the primary
            background regions, such as grid lines, borders, table banding, icons, and so on.</p>")
  @as("PrimaryForeground")
  primaryForeground: option<hexColor>,
}
@ocaml.doc("<p>Twitter parameters.</p>")
type twitterParameters = {
  @ocaml.doc("<p>Maximum number of rows to query Twitter.</p>") @as("MaxRows")
  maxRows: positiveInteger,
  @ocaml.doc("<p>Twitter query string.</p>") @as("Query") query: query,
}
type timestampList = array<timestamp_>
@ocaml.doc("<p>The theme version.</p>")
type themeVersionSummary = {
  @ocaml.doc("<p>The status of the theme version.</p>") @as("Status")
  status: option<resourceStatus>,
  @ocaml.doc("<p>The date and time that this theme version was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The description of the theme version.</p>") @as("Description")
  description: option<versionDescription>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the theme version.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The version number of the theme version.</p>") @as("VersionNumber")
  versionNumber: option<versionNumber>,
}
@ocaml.doc("<p>The theme summary.</p>")
type themeSummary = {
  @ocaml.doc("<p>The last date and time that this theme was updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that this theme was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The latest version number for the theme. </p>") @as("LatestVersionNumber")
  latestVersionNumber: option<versionNumber>,
  @ocaml.doc("<p>The ID of the theme. This ID is unique per AWS Region for each AWS account.</p>")
  @as("ThemeId")
  themeId: option<restrictiveResourceId>,
  @ocaml.doc("<p>the display name for the theme.</p>") @as("Name") name: option<themeName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn") arn: option<arn>,
}
@ocaml.doc("<p>Theme error.</p>")
type themeError = {
  @ocaml.doc("<p>The error message.</p>") @as("Message") message: option<nonEmptyString>,
  @ocaml.doc("<p>The type of error.</p>") @as("Type") type_: option<themeErrorType>,
}
@ocaml.doc("<p>An alias for a theme.</p>")
type themeAlias = {
  @ocaml.doc("<p>The version number of the theme alias.</p>") @as("ThemeVersionNumber")
  themeVersionNumber: option<versionNumber>,
  @ocaml.doc("<p>The display name of the theme alias.</p>") @as("AliasName")
  aliasName: option<aliasName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the theme alias.</p>") @as("Arn")
  arn: option<arn>,
}
@ocaml.doc("<p>Teradata parameters.</p>")
type teradataParameters = {
  @ocaml.doc("<p>Database.</p>") @as("Database") database: database,
  @ocaml.doc("<p>Port.</p>") @as("Port") port: port,
  @ocaml.doc("<p>Host.</p>") @as("Host") host: host,
}
@ocaml.doc("<p>The template version.</p>")
type templateVersionSummary = {
  @ocaml.doc("<p>The description of the template version.</p>") @as("Description")
  description: option<versionDescription>,
  @ocaml.doc("<p>The status of the template version.</p>") @as("Status")
  status: option<resourceStatus>,
  @ocaml.doc("<p>The time that this template version was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The version number of the template version.</p>") @as("VersionNumber")
  versionNumber: option<versionNumber>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the template version.</p>") @as("Arn")
  arn: option<arn>,
}
@ocaml.doc("<p>The template summary.</p>")
type templateSummary = {
  @ocaml.doc("<p>The last time that this template was updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The last time that this template was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>A structure containing a list of version numbers for the template summary.</p>")
  @as("LatestVersionNumber")
  latestVersionNumber: option<versionNumber>,
  @ocaml.doc("<p>A display name for the template.</p>") @as("Name") name: option<templateName>,
  @ocaml.doc(
    "<p>The ID of the template. This ID is unique per AWS Region for each AWS account.</p>"
  )
  @as("TemplateId")
  templateId: option<restrictiveResourceId>,
  @ocaml.doc("<p>A summary of a template.</p>") @as("Arn") arn: option<arn>,
}
@ocaml.doc("<p>The source template of the template.</p>")
type templateSourceTemplate = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn") arn: arn,
}
@ocaml.doc("<p>List of errors that occurred when the template version creation failed.</p>")
type templateError = {
  @ocaml.doc("<p>Description of the error type.</p>") @as("Message")
  message: option<nonEmptyString>,
  @ocaml.doc("<p>Type of error.</p>") @as("Type") type_: option<templateErrorType>,
}
@ocaml.doc("<p>The template alias.</p>")
type templateAlias = {
  @ocaml.doc("<p>The version number of the template alias.</p>") @as("TemplateVersionNumber")
  templateVersionNumber: option<versionNumber>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the template alias.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The display name of the template alias.</p>") @as("AliasName")
  aliasName: option<aliasName>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The key or keys of the key-value pairs for the resource tag or tags assigned to the
            resource.</p>")
type tag = {
  @ocaml.doc("<p>Tag value.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>Tag key.</p>") @as("Key") key: tagKey,
}
type stringList = array<string_>
@ocaml.doc("<p>Secure Socket Layer (SSL) properties that apply when QuickSight connects to your
            underlying data source.</p>")
type sslProperties = {
  @ocaml.doc("<p>A Boolean option to control whether SSL should be disabled.</p>") @as("DisableSsl")
  disableSsl: option<boolean_>,
}
@ocaml.doc("<p>SQL Server parameters.</p>")
type sqlServerParameters = {
  @ocaml.doc("<p>Database.</p>") @as("Database") database: database,
  @ocaml.doc("<p>Port.</p>") @as("Port") port: port,
  @ocaml.doc("<p>Host.</p>") @as("Host") host: host,
}
@ocaml.doc("<p>Spark parameters.</p>")
type sparkParameters = {
  @ocaml.doc("<p>Port.</p>") @as("Port") port: port,
  @ocaml.doc("<p>Host.</p>") @as("Host") host: host,
}
@ocaml.doc("<p>Snowflake parameters.</p>")
type snowflakeParameters = {
  @ocaml.doc("<p>Warehouse.</p>") @as("Warehouse") warehouse: warehouse,
  @ocaml.doc("<p>Database.</p>") @as("Database") database: database,
  @ocaml.doc("<p>Host.</p>") @as("Host") host: host,
}
@ocaml.doc("<p>Sheet controls option.</p>")
type sheetControlsOption = {
  @ocaml.doc("<p>Visibility state.</p>") @as("VisibilityState")
  visibilityState: option<dashboardUIState>,
}
@ocaml.doc("<p>A <i>sheet</i>, which is an object that contains a set of visuals that
            are viewed together on one page in the Amazon QuickSight console. Every analysis and dashboard
            contains at least one sheet. Each sheet contains at least one visualization widget, for
            example a chart, pivot table, or narrative insight. Sheets can be associated with other
            components, such as controls, filters, and so on.</p>")
type sheet = {
  @ocaml.doc("<p>The name of a sheet. This name is displayed on the sheet's tab in the QuickSight
            console.</p>")
  @as("Name")
  name: option<nonEmptyString>,
  @ocaml.doc("<p>The unique identifier associated with a sheet.</p>") @as("SheetId")
  sheetId: option<restrictiveResourceId>,
}
@ocaml.doc("<p>ServiceNow parameters.</p>")
type serviceNowParameters = {
  @ocaml.doc("<p>URL of the base site.</p>") @as("SiteBaseUrl") siteBaseUrl: siteBaseUrl,
}
@ocaml.doc("<p>Information about a dataset that contains permissions for row-level security (RLS). 
            The permissions dataset maps fields to users or groups. For more information, see 
            <a href=\"https://docs.aws.amazon.com/quicksight/latest/user/restrict-access-to-a-data-set-using-row-level-security.html\">Using Row-Level Security (RLS) to Restrict Access to a Dataset</a> in the <i>Amazon QuickSight User
                Guide</i>.</p>
            <p>The option to deny permissions by setting <code>PermissionPolicy</code> to <code>DENY_ACCESS</code> is 
            not supported for new RLS datasets.</p>")
type rowLevelPermissionDataSet = {
  @ocaml.doc("<p>The user or group rules associated with the dataset that contains permissions for RLS.</p>
         <p>By default, <code>FormatVersion</code> is <code>VERSION_1</code>. When <code>FormatVersion</code> is <code>VERSION_1</code>, <code>UserName</code> and <code>GroupName</code> are required. When <code>FormatVersion</code> is <code>VERSION_2</code>, <code>UserARN</code> and <code>GroupARN</code> are required, and <code>Namespace</code> must not exist.</p>")
  @as("FormatVersion")
  formatVersion: option<rowLevelPermissionFormatVersion>,
  @ocaml.doc("<p>The type of permissions to use when interpretting the permissions for RLS. <code>DENY_ACCESS</code> 
        is included for backward compatibility only.</p>")
  @as("PermissionPolicy")
  permissionPolicy: rowLevelPermissionPolicy,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the dataset that contains permissions for RLS.</p>"
  )
  @as("Arn")
  arn: arn,
  @ocaml.doc("<p>The namespace associated with the dataset that contains permissions for RLS.</p>")
  @as("Namespace")
  namespace: option<namespace>,
}
@ocaml.doc("<p>Information about rows for a data set SPICE ingestion.</p>")
type rowInfo = {
  @ocaml.doc("<p>The number of rows that were not ingested.</p>") @as("RowsDropped")
  rowsDropped: option<long>,
  @ocaml.doc("<p>The number of rows that were ingested.</p>") @as("RowsIngested")
  rowsIngested: option<long>,
}
@ocaml.doc("<p>A transform operation that renames a column.</p>")
type renameColumnOperation = {
  @ocaml.doc("<p>The new name for the column.</p>") @as("NewColumnName") newColumnName: columnName,
  @ocaml.doc("<p>The name of the column to be renamed.</p>") @as("ColumnName")
  columnName: columnName,
}
@ocaml.doc("<p>Amazon Redshift parameters. The <code>ClusterId</code> field can be blank if
            <code>Host</code> and <code>Port</code> are both set. The <code>Host</code> and
            <code>Port</code> fields can be blank if the <code>ClusterId</code> field is set.</p>")
type redshiftParameters = {
  @ocaml.doc("<p>Cluster ID. This field can be blank if the <code>Host</code> and <code>Port</code> are
            provided.</p>")
  @as("ClusterId")
  clusterId: option<clusterId>,
  @ocaml.doc("<p>Database.</p>") @as("Database") database: database,
  @ocaml.doc("<p>Port. This field can be blank if the <code>ClusterId</code> is provided.</p>")
  @as("Port")
  port: option<optionalPort>,
  @ocaml.doc("<p>Host. This field can be blank if <code>ClusterId</code> is provided.</p>")
  @as("Host")
  host: option<host>,
}
@ocaml.doc("<p>Amazon RDS parameters.</p>")
type rdsParameters = {
  @ocaml.doc("<p>Database.</p>") @as("Database") database: database,
  @ocaml.doc("<p>Instance ID.</p>") @as("InstanceId") instanceId: instanceId,
}
@ocaml.doc("<p>Information about a queued dataset SPICE ingestion.</p>")
type queueInfo = {
  @ocaml.doc("<p>The ID of the ongoing ingestion. The queued ingestion is waiting for the ongoing
            ingestion to complete.</p>")
  @as("QueuedIngestion")
  queuedIngestion: string_,
  @ocaml.doc("<p>The ID of the queued ingestion.</p>") @as("WaitingOnIngestion")
  waitingOnIngestion: string_,
}
type projectedColumnList = array<string_>
type principalList = array<string_>
@ocaml.doc("<p>Presto parameters.</p>")
type prestoParameters = {
  @ocaml.doc("<p>Catalog.</p>") @as("Catalog") catalog: catalog,
  @ocaml.doc("<p>Port.</p>") @as("Port") port: port,
  @ocaml.doc("<p>Host.</p>") @as("Host") host: host,
}
@ocaml.doc("<p>PostgreSQL parameters.</p>")
type postgreSqlParameters = {
  @ocaml.doc("<p>Database.</p>") @as("Database") database: database,
  @ocaml.doc("<p>Port.</p>") @as("Port") port: port,
  @ocaml.doc("<p>Host.</p>") @as("Host") host: host,
}
@ocaml.doc("<p>Output column.</p>")
type outputColumn = {
  @ocaml.doc("<p>Type.</p>") @as("Type") type_: option<columnDataType>,
  @ocaml.doc("<p>A description for a column.</p>") @as("Description")
  description: option<columnDescriptiveText>,
  @ocaml.doc("<p>A display name for the dataset.</p>") @as("Name") name: option<columnName>,
}
@ocaml.doc("<p>Oracle parameters.</p>")
type oracleParameters = {
  @ocaml.doc("<p>Database.</p>") @as("Database") database: database,
  @ocaml.doc("<p>Port.</p>") @as("Port") port: port,
  @ocaml.doc("<p>An Oracle host.</p>") @as("Host") host: host,
}
@ocaml.doc("<p>Errors that occur during namespace creation.</p>")
type namespaceError = {
  @ocaml.doc("<p>The message for the error.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>The error type.</p>") @as("Type") type_: option<namespaceErrorType>,
}
@ocaml.doc("<p>MySQL parameters.</p>")
type mySqlParameters = {
  @ocaml.doc("<p>Database.</p>") @as("Database") database: database,
  @ocaml.doc("<p>Port.</p>") @as("Port") port: port,
  @ocaml.doc("<p>Host.</p>") @as("Host") host: host,
}
@ocaml.doc("<p>MariaDB parameters.</p>")
type mariaDbParameters = {
  @ocaml.doc("<p>Database.</p>") @as("Database") database: database,
  @ocaml.doc("<p>Port.</p>") @as("Port") port: port,
  @ocaml.doc("<p>Host.</p>") @as("Host") host: host,
}
@ocaml.doc("<p>The display options for margins around the outside edge of sheets.</p>")
type marginStyle = {
  @ocaml.doc("<p>This Boolean value controls whether to display sheet margins.</p>") @as("Show")
  show: option<boolean_>,
}
@ocaml.doc("<p>Amazon S3 manifest file location.</p>")
type manifestFileLocation = {
  @ocaml.doc("<p>Amazon S3 key that identifies an object.</p>") @as("Key") key: s3Key,
  @ocaml.doc("<p>Amazon S3 bucket.</p>") @as("Bucket") bucket: s3Bucket,
}
type longList = array<long>
@ocaml.doc("<p>Properties associated with the columns participating in a join.</p>")
type joinKeyProperties = {
  @ocaml.doc("<p>A value that indicates that a row in a table is uniquely identified by the columns in
            a join key. This is used by QuickSight to optimize query performance.</p>")
  @as("UniqueKey")
  uniqueKey: option<boolean_>,
}
@ocaml.doc("<p>Jira parameters.</p>")
type jiraParameters = {
  @ocaml.doc("<p>The base URL of the Jira site.</p>") @as("SiteBaseUrl") siteBaseUrl: siteBaseUrl,
}
@ocaml.doc("<p>Metadata for a column that is used as the input of a transform operation.</p>")
type inputColumn = {
  @ocaml.doc("<p>The data type of the column.</p>") @as("Type") type_: inputColumnDataType,
  @ocaml.doc("<p>The name of this column in the underlying data source.</p>") @as("Name")
  name: columnName,
}
type identityNameList = array<identityName>
@ocaml.doc("<p>IAM policy assignment summary.</p>")
type iampolicyAssignmentSummary = {
  @ocaml.doc("<p>Assignment status.</p>") @as("AssignmentStatus")
  assignmentStatus: option<assignmentStatus>,
  @ocaml.doc("<p>Assignment name.</p>") @as("AssignmentName")
  assignmentName: option<iampolicyAssignmentName>,
}
@ocaml.doc("<p>The display options for gutter spacing between tiles on a sheet.</p>")
type gutterStyle = {
  @ocaml.doc("<p>This Boolean value controls whether to display a gutter space between sheet tiles.
        </p>")
  @as("Show")
  show: option<boolean_>,
}
@ocaml.doc("<p>A member of an Amazon QuickSight group. Currently, group members must be users. Groups
            can't be members of another group. .</p>")
type groupMember = {
  @ocaml.doc("<p>The name of the group member (user).</p>") @as("MemberName")
  memberName: option<groupMemberName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the group member (user).</p>") @as("Arn")
  arn: option<arn>,
}
@ocaml.doc("<p>A <i>group</i> in Amazon QuickSight consists of a set of users. You can
            use groups to make it easier to manage access and security. </p>")
type group = {
  @ocaml.doc("<p>The principal ID of the group.</p>") @as("PrincipalId")
  principalId: option<string_>,
  @ocaml.doc("<p>The group description.</p>") @as("Description")
  description: option<groupDescription>,
  @ocaml.doc("<p>The name of the group.</p>") @as("GroupName") groupName: option<groupName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the group.</p>") @as("Arn") arn: option<arn>,
}
type folderColumnList = array<string_>
@ocaml.doc("<p>A transform operation that filters rows based on a condition.</p>")
type filterOperation = {
  @ocaml.doc("<p>An expression that must evaluate to a Boolean value. Rows for which the expression
            evaluates to true are kept in the dataset.</p>")
  @as("ConditionExpression")
  conditionExpression: expression,
}
@ocaml.doc("<p>Export to .csv option.</p>")
type exportToCSVOption = {
  @ocaml.doc("<p>Availability status.</p>") @as("AvailabilityStatus")
  availabilityStatus: option<dashboardBehavior>,
}
@ocaml.doc("<p>Error information for the SPICE ingestion of a dataset.</p>")
type errorInfo = {
  @ocaml.doc("<p>Error message.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>Error type.</p>") @as("Type") type_: option<ingestionErrorType>,
}
type doubleList = array<double>
@ocaml.doc("<p>Error information for the data source creation or update.</p>")
type dataSourceErrorInfo = {
  @ocaml.doc("<p>Error message.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>Error type.</p>") @as("Type") type_: option<dataSourceErrorInfoType>,
}
@ocaml.doc("<p>Dataset reference.</p>")
type dataSetReference = {
  @ocaml.doc("<p>Dataset Amazon Resource Name (ARN).</p>") @as("DataSetArn") dataSetArn: arn,
  @ocaml.doc("<p>Dataset placeholder.</p>") @as("DataSetPlaceholder")
  dataSetPlaceholder: nonEmptyString,
}
type dataSetArnsList = array<arn>
@ocaml.doc("<p>Dashboard version summary.</p>")
type dashboardVersionSummary = {
  @ocaml.doc("<p>Description.</p>") @as("Description") description: option<versionDescription>,
  @ocaml.doc("<p>Source entity ARN.</p>") @as("SourceEntityArn") sourceEntityArn: option<arn>,
  @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<resourceStatus>,
  @ocaml.doc("<p>Version number.</p>") @as("VersionNumber") versionNumber: option<versionNumber>,
  @ocaml.doc("<p>The time that this dashboard version was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn") arn: option<arn>,
}
@ocaml.doc("<p>Dashboard summary.</p>")
type dashboardSummary = {
  @ocaml.doc("<p>The last time that this dashboard was published.</p>") @as("LastPublishedTime")
  lastPublishedTime: option<timestamp_>,
  @ocaml.doc("<p>Published version number.</p>") @as("PublishedVersionNumber")
  publishedVersionNumber: option<versionNumber>,
  @ocaml.doc("<p>The last time that this dashboard was updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The time that this dashboard was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>A display name for the dashboard.</p>") @as("Name") name: option<dashboardName>,
  @ocaml.doc("<p>Dashboard ID.</p>") @as("DashboardId") dashboardId: option<restrictiveResourceId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn") arn: option<arn>,
}
@ocaml.doc("<p>A filter that you apply when searching for dashboards. </p>")
type dashboardSearchFilter = {
  @ocaml.doc("<p>The value of the named item, in this case <code>QUICKSIGHT_USER</code>, that you want
            to use as a filter, for example, <code>\"Value\":
            \"arn:aws:quicksight:us-east-1:1:user/default/UserName1\"</code>. </p>")
  @as("Value")
  value: option<string_>,
  @ocaml.doc("<p>The name of the value that you want to use as a filter, for example, <code>\"Name\":
            \"QUICKSIGHT_USER\"</code>. </p>")
  @as("Name")
  name: option<dashboardFilterAttribute>,
  @ocaml.doc("<p>The comparison operator that you want to use as a filter, for example,
            <code>\"Operator\": \"StringEquals\"</code>.</p>")
  @as("Operator")
  operator: filterOperator,
}
@ocaml.doc("<p>Dashboard error.</p>")
type dashboardError = {
  @ocaml.doc("<p>Message.</p>") @as("Message") message: option<nonEmptyString>,
  @ocaml.doc("<p>Type.</p>") @as("Type") type_: option<dashboardErrorType>,
}
@ocaml.doc("<p>The column schema.</p>")
type columnSchema = {
  @ocaml.doc("<p>The geographic role of the column schema.</p>") @as("GeographicRole")
  geographicRole: option<string_>,
  @ocaml.doc("<p>The data type of the column schema.</p>") @as("DataType")
  dataType: option<string_>,
  @ocaml.doc("<p>The name of the column schema.</p>") @as("Name") name: option<string_>,
}
type columnNameList = array<string_>
type columnList = array<columnName>
@ocaml.doc("<p>A structure describing the name, data type, and geographic role of the columns.</p>")
type columnGroupColumnSchema = {
  @ocaml.doc("<p>The name of the column group's column schema.</p>") @as("Name")
  name: option<string_>,
}
@ocaml.doc("<p>Metadata that contains a description for a column.</p>")
type columnDescription = {
  @ocaml.doc("<p>The text of a description for a column.</p>") @as("Text")
  text: option<columnDescriptiveText>,
}
type colorList = array<hexColor>
@ocaml.doc("<p>A transform operation that casts a column to a different type.</p>")
type castColumnTypeOperation = {
  @ocaml.doc("<p>When casting a column from string to datetime type, you can supply a string in a
            format supported by Amazon QuickSight to denote the source data format.</p>")
  @as("Format")
  format: option<typeCastFormat>,
  @ocaml.doc("<p>New column data type.</p>") @as("NewColumnType") newColumnType: columnDataType,
  @ocaml.doc("<p>Column name.</p>") @as("ColumnName") columnName: columnName,
}
@ocaml.doc("<p>A calculated column for a dataset.</p>")
type calculatedColumn = {
  @ocaml.doc("<p>An expression that defines the calculated column.</p>") @as("Expression")
  expression: expression,
  @ocaml.doc("<p>A unique ID to identify a calculated column. During a dataset update, if the column ID
            of a calculated column matches that of an existing calculated column, Amazon QuickSight
            preserves the existing calculated column.</p>")
  @as("ColumnId")
  columnId: columnId,
  @ocaml.doc("<p>Column name.</p>") @as("ColumnName") columnName: columnName,
}
@ocaml.doc("<p>The display options for tile borders for visuals.</p>")
type borderStyle = {
  @ocaml.doc("<p>The option to enable display of borders for visuals.</p>") @as("Show")
  show: option<boolean_>,
}
@ocaml.doc("<p>AWS IoT Analytics parameters.</p>")
type awsIotAnalyticsParameters = {
  @ocaml.doc("<p>Dataset name.</p>") @as("DataSetName") dataSetName: dataSetName,
}
@ocaml.doc("<p>Amazon Aurora with PostgreSQL compatibility parameters.</p>")
type auroraPostgreSqlParameters = {
  @ocaml.doc("<p>Database.</p>") @as("Database") database: database,
  @ocaml.doc("<p>Port.</p>") @as("Port") port: port,
  @ocaml.doc("<p>Host.</p>") @as("Host") host: host,
}
@ocaml.doc("<p>Amazon Aurora parameters.</p>")
type auroraParameters = {
  @ocaml.doc("<p>Database.</p>") @as("Database") database: database,
  @ocaml.doc("<p>Port.</p>") @as("Port") port: port,
  @ocaml.doc("<p>Host.</p>") @as("Host") host: host,
}
@ocaml.doc("<p>Amazon Athena parameters.</p>")
type athenaParameters = {
  @ocaml.doc("<p>The workgroup that Amazon Athena uses.</p>") @as("WorkGroup")
  workGroup: option<workGroup>,
}
@ocaml.doc("<p>The summary metadata that describes an analysis.</p>")
type analysisSummary = {
  @ocaml.doc("<p>The time that the analysis was last updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the analysis was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The last known status for the analysis.</p>") @as("Status")
  status: option<resourceStatus>,
  @ocaml.doc("<p>The name of the analysis. This name is displayed in the QuickSight console.
            </p>")
  @as("Name")
  name: option<analysisName>,
  @ocaml.doc("<p>The ID of the analysis. This ID displays in the URL.</p>") @as("AnalysisId")
  analysisId: option<restrictiveResourceId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the analysis.</p>") @as("Arn") arn: option<arn>,
}
@ocaml.doc("<p>A filter that you apply when searching for one or more analyses.</p>")
type analysisSearchFilter = {
  @ocaml.doc("<p>The value of the named item, in this case <code>QUICKSIGHT_USER</code>, that you want
            to use as a filter, for example <code>\"Value\"</code>. An example is
                <code>\"arn:aws:quicksight:us-east-1:1:user/default/UserName1\"</code>.</p>")
  @as("Value")
  value: option<string_>,
  @ocaml.doc("<p>The name of the value that you want to use as a filter, for example <code>\"Name\":
                \"QUICKSIGHT_USER\"</code>.</p>")
  @as("Name")
  name: option<analysisFilterAttribute>,
  @ocaml.doc("<p>The comparison operator that you want to use as a filter, for example
                <code>\"Operator\": \"StringEquals\"</code>.</p>")
  @as("Operator")
  operator: option<filterOperator>,
}
@ocaml.doc("<p>A metadata error structure for an analysis.</p>")
type analysisError = {
  @ocaml.doc("<p>The message associated with the analysis error.</p>") @as("Message")
  message: option<nonEmptyString>,
  @ocaml.doc("<p>The type of the analysis error.</p>") @as("Type") type_: option<analysisErrorType>,
}
@ocaml.doc("<p>Amazon Elasticsearch Service parameters.</p>")
type amazonElasticsearchParameters = {
  @ocaml.doc("<p>The Amazon Elasticsearch Service domain.</p>") @as("Domain") domain: domain,
}
type additionalDashboardIdList = array<restrictiveResourceId>
@ocaml.doc("<p>Ad hoc (one-time) filtering option.</p>")
type adHocFilteringOption = {
  @ocaml.doc("<p>Availability status.</p>") @as("AvailabilityStatus")
  availabilityStatus: option<dashboardBehavior>,
}
@ocaml.doc("<p>The active AWS Identity and Access Management (IAM) policy assignment.</p>")
type activeIAMPolicyAssignment = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("PolicyArn")
  policyArn: option<arn>,
  @ocaml.doc("<p>A name for the IAM policy assignment.</p>") @as("AssignmentName")
  assignmentName: option<iampolicyAssignmentName>,
}
type actionList = array<string_>
@ocaml.doc("<p>The QuickSight settings associated with your AWS account.</p>")
type accountSettings = {
  @ocaml.doc("<p>The main notification email for your QuickSight subscription.</p>")
  @as("NotificationEmail")
  notificationEmail: option<string_>,
  @ocaml.doc("<p>The default QuickSight namespace for your AWS account. </p>")
  @as("DefaultNamespace")
  defaultNamespace: option<namespace>,
  @ocaml.doc("<p>The edition of QuickSight that you're currently subscribed to:
        Enterprise edition or Standard edition.</p>")
  @as("Edition")
  edition: option<edition>,
  @ocaml.doc("<p>The \"account name\" you provided for the QuickSight subscription in your AWS account. 
            You create this name when you sign up for QuickSight. It is unique in all of AWS and 
            it appears only in the console when users sign in.</p>")
  @as("AccountName")
  accountName: option<string_>,
}
@ocaml.doc(
  "<p>The Amazon QuickSight customizations associated with your AWS account or a QuickSight namespace in a specific AWS Region.</p>"
)
type accountCustomization = {
  @ocaml.doc("<p>The default theme for this QuickSight subscription.</p>") @as("DefaultTheme")
  defaultTheme: option<arn>,
}
type userList = array<user>
@ocaml.doc("<p>Display options related to tiles on a sheet.</p>")
type tileStyle = {
  @ocaml.doc("<p>The border around a tile.</p>") @as("Border") border: option<borderStyle>,
}
@ocaml.doc("<p>The display options for the layout of tiles on a sheet.</p>")
type tileLayoutStyle = {
  @ocaml.doc("<p>The margin settings that apply around the outside edge of sheets.</p>")
  @as("Margin")
  margin: option<marginStyle>,
  @ocaml.doc("<p>The gutter settings that apply between tiles. </p>") @as("Gutter")
  gutter: option<gutterStyle>,
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
@ocaml.doc("<p>A string parameter.</p>")
type stringParameter = {
  @ocaml.doc("<p>The values of a string parameter.</p>") @as("Values") values: stringList,
  @ocaml.doc("<p>A display name for a string parameter.</p>") @as("Name") name: nonEmptyString,
}
type sheetList = array<sheet>
@ocaml.doc("<p>S3 parameters.</p>")
type s3Parameters = {
  @ocaml.doc("<p>Location of the Amazon S3 manifest file. This is NULL if the manifest file was
            uploaded in the console.</p>")
  @as("ManifestFileLocation")
  manifestFileLocation: manifestFileLocation,
}
@ocaml.doc("<p>Permission for the resource.</p>")
type resourcePermission = {
  @ocaml.doc("<p>The IAM action to grant or revoke permissions on.</p>") @as("Actions")
  actions: actionList,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the principal. This can be one of the
            following:</p>
        <ul>
            <li>
                <p>The ARN of an Amazon QuickSight user or group associated with a data source or dataset. (This is common.)</p>
            </li>
            <li>
                <p>The ARN of an Amazon QuickSight user, group, or namespace associated with an analysis, dashboard, template, or theme. (This is common.)</p>
            </li>
            <li>
                <p>The ARN of an AWS account root: This is an IAM ARN rather than a QuickSight
                    ARN. Use this option only to share resources (templates) across AWS accounts.
                    (This is less common.) </p>
            </li>
         </ul>")
  @as("Principal")
  principal: principal,
}
@ocaml.doc("<p>A transform operation that projects columns. Operations that come after a projection
            can only refer to projected columns.</p>")
type projectOperation = {
  @ocaml.doc("<p>Projected columns.</p>") @as("ProjectedColumns")
  projectedColumns: projectedColumnList,
}
type outputColumnList = array<outputColumn>
@ocaml.doc("<p>The error type.</p>")
type namespaceInfoV2 = {
  @ocaml.doc("<p>An error that occurred when the namespace was created.</p>") @as("NamespaceError")
  namespaceError: option<namespaceError>,
  @ocaml.doc("<p>The identity store used for the namespace.</p>") @as("IdentityStore")
  identityStore: option<identityStore>,
  @ocaml.doc("<p>The creation status of a namespace that is not yet completely created.</p>")
  @as("CreationStatus")
  creationStatus: option<namespaceStatus>,
  @ocaml.doc("<p>The namespace AWS Region.</p>") @as("CapacityRegion")
  capacityRegion: option<string_>,
  @ocaml.doc("<p>The namespace ARN.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The name of the error.</p>") @as("Name") name: option<namespace>,
}
@ocaml.doc("<p>The instructions associated with a join. </p>")
type joinInstruction = {
  @ocaml.doc("<p>The join instructions provided in the <code>ON</code> clause of a join.</p>")
  @as("OnClause")
  onClause: onClause,
  @ocaml.doc("<p>The type of join that it is.</p>") @as("Type") type_: joinType,
  @ocaml.doc("<p>Join key properties of the right operand.</p>") @as("RightJoinKeyProperties")
  rightJoinKeyProperties: option<joinKeyProperties>,
  @ocaml.doc("<p>Join key properties of the left operand.</p>") @as("LeftJoinKeyProperties")
  leftJoinKeyProperties: option<joinKeyProperties>,
  @ocaml.doc("<p>The operand on the right side of a join.</p>") @as("RightOperand")
  rightOperand: logicalTableId,
  @ocaml.doc("<p>The operand on the left side of a join.</p>") @as("LeftOperand")
  leftOperand: logicalTableId,
}
@ocaml.doc("<p>An integer parameter.</p>")
type integerParameter = {
  @ocaml.doc("<p>The values for the integer parameter.</p>") @as("Values") values: longList,
  @ocaml.doc("<p>The name of the integer parameter.</p>") @as("Name") name: nonEmptyString,
}
type inputColumnList = array<inputColumn>
@ocaml.doc("<p>Information about the SPICE ingestion for a dataset.</p>")
type ingestion = {
  @ocaml.doc("<p>Type of this ingestion.</p>") @as("RequestType")
  requestType: option<ingestionRequestType>,
  @ocaml.doc("<p>Event source for this ingestion.</p>") @as("RequestSource")
  requestSource: option<ingestionRequestSource>,
  @ocaml.doc("<p>The size of the data ingested, in bytes.</p>") @as("IngestionSizeInBytes")
  ingestionSizeInBytes: option<long>,
  @ocaml.doc("<p>The time that this ingestion took, measured in seconds.</p>")
  @as("IngestionTimeInSeconds")
  ingestionTimeInSeconds: option<long>,
  @ocaml.doc("<p>The time that this ingestion started.</p>") @as("CreatedTime")
  createdTime: timestamp_,
  @as("QueueInfo") queueInfo: option<queueInfo>,
  @as("RowInfo") rowInfo: option<rowInfo>,
  @ocaml.doc("<p>Error information for this ingestion.</p>") @as("ErrorInfo")
  errorInfo: option<errorInfo>,
  @ocaml.doc("<p>Ingestion status.</p>") @as("IngestionStatus") ingestionStatus: ingestionStatus,
  @ocaml.doc("<p>Ingestion ID.</p>") @as("IngestionId") ingestionId: option<ingestionId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn") arn: arn,
}
type identityMap = Js.Dict.t<identityNameList>
type iampolicyAssignmentSummaryList = array<iampolicyAssignmentSummary>
type groupMemberList = array<groupMember>
type groupList = array<group>
@ocaml.doc("<p>Geospatial column group that denotes a hierarchy.</p>")
type geoSpatialColumnGroup = {
  @ocaml.doc("<p>Columns in this hierarchy.</p>") @as("Columns") columns: columnList,
  @ocaml.doc("<p>Country code.</p>") @as("CountryCode") countryCode: geoSpatialCountryCode,
  @ocaml.doc("<p>A display name for the hierarchy.</p>") @as("Name") name: columnGroupName,
}
@ocaml.doc("<p>A FieldFolder element is a folder that contains fields and nested subfolders.</p>")
type fieldFolder = {
  @ocaml.doc("<p>A folder has a list of columns. A column can only be in one folder.</p>")
  columns: option<folderColumnList>,
  @ocaml.doc("<p>The description for a field folder.</p>")
  description: option<fieldFolderDescription>,
}
@ocaml.doc("<p>A decimal parameter.</p>")
type decimalParameter = {
  @ocaml.doc("<p>The values for the decimal parameter.</p>") @as("Values") values: doubleList,
  @ocaml.doc("<p>A display name for the decimal parameter.</p>") @as("Name") name: nonEmptyString,
}
@ocaml.doc("<p>A date-time parameter.</p>")
type dateTimeParameter = {
  @ocaml.doc("<p>The values for the date-time parameter.</p>") @as("Values") values: timestampList,
  @ocaml.doc("<p>A display name for the date-time parameter.</p>") @as("Name") name: nonEmptyString,
}
@ocaml.doc("<p>Dataset summary.</p>")
type dataSetSummary = {
  @ocaml.doc("<p>A value that indicates if the dataset has column level permission configured.</p>")
  @as("ColumnLevelPermissionRulesApplied")
  columnLevelPermissionRulesApplied: option<boolean_>,
  @ocaml.doc("<p>The row-level security configuration for the dataset.</p>")
  @as("RowLevelPermissionDataSet")
  rowLevelPermissionDataSet: option<rowLevelPermissionDataSet>,
  @ocaml.doc("<p>A value that indicates whether you want to import the data into SPICE.</p>")
  @as("ImportMode")
  importMode: option<dataSetImportMode>,
  @ocaml.doc("<p>The last time that this dataset was updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The time that this dataset was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>A display name for the dataset.</p>") @as("Name") name: option<resourceName>,
  @ocaml.doc("<p>The ID of the dataset.</p>") @as("DataSetId") dataSetId: option<resourceId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") @as("Arn") arn: option<arn>,
}
type dataSetReferenceList = array<dataSetReference>
@ocaml.doc("<p>The theme colors that are used for data colors in charts. The colors description is a
            hexadecimal color code that consists of six alphanumerical characters, prefixed with
                <code>#</code>, for example #37BFF5. </p>")
type dataColorPalette = {
  @ocaml.doc("<p>The hexadecimal code of a color that applies to charts where a lack of data is
            highlighted.</p>")
  @as("EmptyFillColor")
  emptyFillColor: option<hexColor>,
  @ocaml.doc("<p>The minimum and maximum hexadecimal codes that describe a color gradient. </p>")
  @as("MinMaxGradient")
  minMaxGradient: option<colorList>,
  @ocaml.doc("<p>The hexadecimal codes for the colors.</p>") @as("Colors")
  colors: option<colorList>,
}
type dashboardVersionSummaryList = array<dashboardVersionSummary>
type dashboardSummaryList = array<dashboardSummary>
type dashboardSearchFilterList = array<dashboardSearchFilter>
@ocaml.doc("<p>Dashboard publish options.</p>")
type dashboardPublishOptions = {
  @ocaml.doc("<p>Sheet controls option.</p>") @as("SheetControlsOption")
  sheetControlsOption: option<sheetControlsOption>,
  @ocaml.doc("<p>Export to .csv option.</p>") @as("ExportToCSVOption")
  exportToCSVOption: option<exportToCSVOption>,
  @ocaml.doc("<p>Ad hoc (one-time) filtering option.</p>") @as("AdHocFilteringOption")
  adHocFilteringOption: option<adHocFilteringOption>,
}
type dashboardErrorList = array<dashboardError>
@ocaml.doc("<p>A tag for a column in a <a>TagColumnOperation</a> structure. This is a
            variant type structure. For this structure to be valid, only one of the attributes can
            be non-null.</p>")
type columnTag = {
  @ocaml.doc("<p>A description for a column.</p>") @as("ColumnDescription")
  columnDescription: option<columnDescription>,
  @ocaml.doc("<p>A geospatial role for a column.</p>") @as("ColumnGeographicRole")
  columnGeographicRole: option<geoSpatialDataRole>,
}
type columnSchemaList = array<columnSchema>
@ocaml.doc("<p>A rule defined to grant access on one or more restricted columns. 
            Each dataset can have multiple rules. 
            To create a restricted column, you add it to one or more rules. 
            Each rule must contain at least one column and at least one user or group. 
            To be able to see a restricted column, a user or group needs to be added 
            to a rule for that column.</p>")
type columnLevelPermissionRule = {
  @ocaml.doc("<p>An array of column names.</p>") @as("ColumnNames")
  columnNames: option<columnNameList>,
  @ocaml.doc("<p>An array of Amazon Resource Names (ARNs) for QuickSight users or groups.</p>")
  @as("Principals")
  principals: option<principalList>,
}
type columnGroupColumnSchemaList = array<columnGroupColumnSchema>
type calculatedColumnList = array<calculatedColumn>
type analysisSummaryList = array<analysisSummary>
type analysisSearchFilterList = array<analysisSearchFilter>
type analysisErrorList = array<analysisError>
type activeIAMPolicyAssignmentList = array<activeIAMPolicyAssignment>
type updateResourcePermissionList = array<resourcePermission>
@ocaml.doc("<p>The source analysis of the template.</p>")
type templateSourceAnalysis = {
  @ocaml.doc("<p>A structure containing information about the dataset references used as placeholders
            in the template.</p>")
  @as("DataSetReferences")
  dataSetReferences: dataSetReferenceList,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn") arn: arn,
}
type stringParameterList = array<stringParameter>
@ocaml.doc("<p>The theme display options for sheets. </p>")
type sheetStyle = {
  @ocaml.doc("<p>The layout options for tiles.</p>") @as("TileLayout")
  tileLayout: option<tileLayoutStyle>,
  @ocaml.doc("<p>The display options for tiles.</p>") @as("Tile") tile: option<tileStyle>,
}
@ocaml.doc("<p>A physical table type for as S3 data source.</p>")
type s3Source = {
  @ocaml.doc("<p>A physical table type for as S3 data source.</p>") @as("InputColumns")
  inputColumns: inputColumnList,
  @ocaml.doc("<p>Information about the format for the S3 source file or files.</p>")
  @as("UploadSettings")
  uploadSettings: option<uploadSettings>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the data source.</p>") @as("DataSourceArn")
  dataSourceArn: arn,
}
type resourcePermissionList = array<resourcePermission>
@ocaml.doc("<p>A physical table type for relational data sources.</p>")
type relationalTable = {
  @ocaml.doc("<p>The column schema of the table.</p>") @as("InputColumns")
  inputColumns: inputColumnList,
  @ocaml.doc("<p>The name of the relational table.</p>") @as("Name") name: relationalTableName,
  @ocaml.doc("<p>The schema name. This name applies to certain relational database engines.</p>")
  @as("Schema")
  schema: option<relationalTableSchema>,
  @ocaml.doc("<p>The catalog associated with a table.</p>") @as("Catalog")
  catalog: option<relationalTableCatalog>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the data source.</p>") @as("DataSourceArn")
  dataSourceArn: arn,
}
type namespaces = array<namespaceInfoV2>
@ocaml.doc("<p>Information about the source of a logical table. This is a variant type structure. For
            this structure to be valid, only one of the attributes can be non-null.</p>")
type logicalTableSource = {
  @ocaml.doc("<p>Physical table ID.</p>") @as("PhysicalTableId")
  physicalTableId: option<physicalTableId>,
  @ocaml.doc("<p>Specifies the result of a join of two logical tables.</p>") @as("JoinInstruction")
  joinInstruction: option<joinInstruction>,
}
type integerParameterList = array<integerParameter>
type ingestions = array<ingestion>
@ocaml.doc("<p>An AWS Identity and Access Management (IAM) policy assignment.</p>")
type iampolicyAssignment = {
  @ocaml.doc("<p>Assignment status.</p>") @as("AssignmentStatus")
  assignmentStatus: option<assignmentStatus>,
  @ocaml.doc("<p>Identities.</p>") @as("Identities") identities: option<identityMap>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the IAM policy.</p>") @as("PolicyArn")
  policyArn: option<arn>,
  @ocaml.doc("<p>Assignment name.</p>") @as("AssignmentName")
  assignmentName: option<iampolicyAssignmentName>,
  @ocaml.doc("<p>Assignment ID.</p>") @as("AssignmentId") assignmentId: option<string_>,
  @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: option<awsAccountId>,
}
type fieldFolderMap = Js.Dict.t<fieldFolder>
type decimalParameterList = array<decimalParameter>
type dateTimeParameterList = array<dateTimeParameter>
@ocaml.doc("<p>The parameters that Amazon QuickSight uses to connect to your underlying data source.
            This is a variant type structure. For this structure to be valid, only one of the
            attributes can be non-null.</p>")
type dataSourceParameters = {
  @ocaml.doc("<p>Twitter parameters.</p>") @as("TwitterParameters")
  twitterParameters: option<twitterParameters>,
  @ocaml.doc("<p>Teradata parameters.</p>") @as("TeradataParameters")
  teradataParameters: option<teradataParameters>,
  @ocaml.doc("<p>SQL Server parameters.</p>") @as("SqlServerParameters")
  sqlServerParameters: option<sqlServerParameters>,
  @ocaml.doc("<p>Spark parameters.</p>") @as("SparkParameters")
  sparkParameters: option<sparkParameters>,
  @ocaml.doc("<p>Snowflake parameters.</p>") @as("SnowflakeParameters")
  snowflakeParameters: option<snowflakeParameters>,
  @ocaml.doc("<p>ServiceNow parameters.</p>") @as("ServiceNowParameters")
  serviceNowParameters: option<serviceNowParameters>,
  @ocaml.doc("<p>S3 parameters.</p>") @as("S3Parameters") s3Parameters: option<s3Parameters>,
  @ocaml.doc("<p>Amazon Redshift parameters.</p>") @as("RedshiftParameters")
  redshiftParameters: option<redshiftParameters>,
  @ocaml.doc("<p>Amazon RDS parameters.</p>") @as("RdsParameters")
  rdsParameters: option<rdsParameters>,
  @ocaml.doc("<p>Presto parameters.</p>") @as("PrestoParameters")
  prestoParameters: option<prestoParameters>,
  @ocaml.doc("<p>PostgreSQL parameters.</p>") @as("PostgreSqlParameters")
  postgreSqlParameters: option<postgreSqlParameters>,
  @ocaml.doc("<p>Oracle parameters.</p>") @as("OracleParameters")
  oracleParameters: option<oracleParameters>,
  @ocaml.doc("<p>MySQL parameters.</p>") @as("MySqlParameters")
  mySqlParameters: option<mySqlParameters>,
  @ocaml.doc("<p>MariaDB parameters.</p>") @as("MariaDbParameters")
  mariaDbParameters: option<mariaDbParameters>,
  @ocaml.doc("<p>Jira parameters.</p>") @as("JiraParameters")
  jiraParameters: option<jiraParameters>,
  @ocaml.doc("<p>AWS IoT Analytics parameters.</p>") @as("AwsIotAnalyticsParameters")
  awsIotAnalyticsParameters: option<awsIotAnalyticsParameters>,
  @ocaml.doc("<p>Aurora PostgreSQL parameters.</p>") @as("AuroraPostgreSqlParameters")
  auroraPostgreSqlParameters: option<auroraPostgreSqlParameters>,
  @ocaml.doc("<p>Amazon Aurora MySQL parameters.</p>") @as("AuroraParameters")
  auroraParameters: option<auroraParameters>,
  @ocaml.doc("<p>Amazon Athena parameters.</p>") @as("AthenaParameters")
  athenaParameters: option<athenaParameters>,
  @ocaml.doc("<p>Amazon Elasticsearch Service parameters.</p>") @as("AmazonElasticsearchParameters")
  amazonElasticsearchParameters: option<amazonElasticsearchParameters>,
}
module DataSourceParameters = {
  type t =
    | TwitterParameters(twitterParameters)
    | TeradataParameters(teradataParameters)
    | SqlServerParameters(sqlServerParameters)
    | SparkParameters(sparkParameters)
    | SnowflakeParameters(snowflakeParameters)
    | ServiceNowParameters(serviceNowParameters)
    | S3Parameters(s3Parameters)
    | RedshiftParameters(redshiftParameters)
    | RdsParameters(rdsParameters)
    | PrestoParameters(prestoParameters)
    | PostgreSqlParameters(postgreSqlParameters)
    | OracleParameters(oracleParameters)
    | MySqlParameters(mySqlParameters)
    | MariaDbParameters(mariaDbParameters)
    | JiraParameters(jiraParameters)
    | AwsIotAnalyticsParameters(awsIotAnalyticsParameters)
    | AuroraPostgreSqlParameters(auroraPostgreSqlParameters)
    | AuroraParameters(auroraParameters)
    | AthenaParameters(athenaParameters)
    | AmazonElasticsearchParameters(amazonElasticsearchParameters)
  exception DataSourceParametersUnspecified
  let classify = value =>
    switch value {
    | {twitterParameters: Some(x)} => TwitterParameters(x)
    | {teradataParameters: Some(x)} => TeradataParameters(x)
    | {sqlServerParameters: Some(x)} => SqlServerParameters(x)
    | {sparkParameters: Some(x)} => SparkParameters(x)
    | {snowflakeParameters: Some(x)} => SnowflakeParameters(x)
    | {serviceNowParameters: Some(x)} => ServiceNowParameters(x)
    | {s3Parameters: Some(x)} => S3Parameters(x)
    | {redshiftParameters: Some(x)} => RedshiftParameters(x)
    | {rdsParameters: Some(x)} => RdsParameters(x)
    | {prestoParameters: Some(x)} => PrestoParameters(x)
    | {postgreSqlParameters: Some(x)} => PostgreSqlParameters(x)
    | {oracleParameters: Some(x)} => OracleParameters(x)
    | {mySqlParameters: Some(x)} => MySqlParameters(x)
    | {mariaDbParameters: Some(x)} => MariaDbParameters(x)
    | {jiraParameters: Some(x)} => JiraParameters(x)
    | {awsIotAnalyticsParameters: Some(x)} => AwsIotAnalyticsParameters(x)
    | {auroraPostgreSqlParameters: Some(x)} => AuroraPostgreSqlParameters(x)
    | {auroraParameters: Some(x)} => AuroraParameters(x)
    | {athenaParameters: Some(x)} => AthenaParameters(x)
    | {amazonElasticsearchParameters: Some(x)} => AmazonElasticsearchParameters(x)
    | _ => raise(DataSourceParametersUnspecified)
    }

  let make = value =>
    switch value {
    | TwitterParameters(x) => {
        twitterParameters: Some(x),
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | TeradataParameters(x) => {
        teradataParameters: Some(x),
        twitterParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | SqlServerParameters(x) => {
        sqlServerParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | SparkParameters(x) => {
        sparkParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | SnowflakeParameters(x) => {
        snowflakeParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | ServiceNowParameters(x) => {
        serviceNowParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | S3Parameters(x) => {
        s3Parameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | RedshiftParameters(x) => {
        redshiftParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | RdsParameters(x) => {
        rdsParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | PrestoParameters(x) => {
        prestoParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | PostgreSqlParameters(x) => {
        postgreSqlParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | OracleParameters(x) => {
        oracleParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | MySqlParameters(x) => {
        mySqlParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | MariaDbParameters(x) => {
        mariaDbParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | JiraParameters(x) => {
        jiraParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | AwsIotAnalyticsParameters(x) => {
        awsIotAnalyticsParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | AuroraPostgreSqlParameters(x) => {
        auroraPostgreSqlParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | AuroraParameters(x) => {
        auroraParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        athenaParameters: None,
        amazonElasticsearchParameters: None,
      }
    | AthenaParameters(x) => {
        athenaParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        amazonElasticsearchParameters: None,
      }
    | AmazonElasticsearchParameters(x) => {
        amazonElasticsearchParameters: Some(x),
        twitterParameters: None,
        teradataParameters: None,
        sqlServerParameters: None,
        sparkParameters: None,
        snowflakeParameters: None,
        serviceNowParameters: None,
        s3Parameters: None,
        redshiftParameters: None,
        rdsParameters: None,
        prestoParameters: None,
        postgreSqlParameters: None,
        oracleParameters: None,
        mySqlParameters: None,
        mariaDbParameters: None,
        jiraParameters: None,
        awsIotAnalyticsParameters: None,
        auroraPostgreSqlParameters: None,
        auroraParameters: None,
        athenaParameters: None,
      }
    }
}
type dataSetSummaryList = array<dataSetSummary>
@ocaml.doc("<p>Dataset schema.</p>")
type dataSetSchema = {
  @ocaml.doc("<p>A structure containing the list of column schemas.</p>") @as("ColumnSchemaList")
  columnSchemaList: option<columnSchemaList>,
}
@ocaml.doc("<p>Dashboard version.</p>")
type dashboardVersion = {
  @ocaml.doc(
    "<p>A list of the associated sheets with the unique identifier and name of each sheet.</p>"
  )
  @as("Sheets")
  sheets: option<sheetList>,
  @ocaml.doc("<p>The ARN of the theme associated with a version of the dashboard.</p>")
  @as("ThemeArn")
  themeArn: option<arn>,
  @ocaml.doc("<p>Description.</p>") @as("Description") description: option<versionDescription>,
  @ocaml.doc("<p>The Amazon Resource Numbers (ARNs) for the datasets that are associated with this
            version of the dashboard.</p>")
  @as("DataSetArns")
  dataSetArns: option<dataSetArnsList>,
  @ocaml.doc("<p>Source entity ARN.</p>") @as("SourceEntityArn") sourceEntityArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<resourceStatus>,
  @ocaml.doc("<p>Version number for this version of the dashboard.</p>") @as("VersionNumber")
  versionNumber: option<versionNumber>,
  @ocaml.doc("<p>Errors associated with this dashboard version.</p>") @as("Errors")
  errors: option<dashboardErrorList>,
  @ocaml.doc("<p>The time that this dashboard version was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
}
@ocaml.doc("<p>Dashboard source template.</p>")
type dashboardSourceTemplate = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn") arn: arn,
  @ocaml.doc("<p>Dataset references.</p>") @as("DataSetReferences")
  dataSetReferences: dataSetReferenceList,
}
@ocaml.doc("<p>A physical table type built from the results of the custom SQL query.</p>")
type customSql = {
  @ocaml.doc("<p>The column schema from the SQL query result set.</p>") @as("Columns")
  columns: option<inputColumnList>,
  @ocaml.doc("<p>The SQL query.</p>") @as("SqlQuery") sqlQuery: sqlQuery,
  @ocaml.doc("<p>A display name for the SQL query result.</p>") @as("Name") name: customSqlName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the data source.</p>") @as("DataSourceArn")
  dataSourceArn: arn,
}
@ocaml.doc("<p>A transform operation that creates calculated columns. Columns created in one such
            operation form a lexical closure.</p>")
type createColumnsOperation = {
  @ocaml.doc("<p>Calculated columns to create.</p>") @as("Columns") columns: calculatedColumnList,
}
type columnTagList = array<columnTag>
type columnLevelPermissionRuleList = array<columnLevelPermissionRule>
@ocaml.doc("<p>The column group schema.</p>")
type columnGroupSchema = {
  @ocaml.doc("<p>A structure containing the list of schemas for column group columns.</p>")
  @as("ColumnGroupColumnSchemaList")
  columnGroupColumnSchemaList: option<columnGroupColumnSchemaList>,
  @ocaml.doc("<p>The name of the column group schema.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Groupings of columns that work together in certain Amazon QuickSight features. This is
            a variant type structure. For this structure to be valid, only one of the attributes can
            be non-null.</p>")
type columnGroup = {
  @ocaml.doc("<p>Geospatial column group that denotes a hierarchy.</p>")
  @as("GeoSpatialColumnGroup")
  geoSpatialColumnGroup: option<geoSpatialColumnGroup>,
}
@ocaml.doc("<p>The source template of an analysis.</p>")
type analysisSourceTemplate = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source template of an analysis.</p>")
  @as("Arn")
  arn: arn,
  @ocaml.doc("<p>The dataset references of the source template of an analysis.</p>")
  @as("DataSetReferences")
  dataSetReferences: dataSetReferenceList,
}
@ocaml.doc("<p>Metadata structure for an analysis in Amazon QuickSight</p>")
type analysis = {
  @ocaml.doc(
    "<p>A list of the associated sheets with the unique identifier and name of each sheet.</p>"
  )
  @as("Sheets")
  sheets: option<sheetList>,
  @ocaml.doc("<p>The time that the analysis was last updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the analysis was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The ARN of the theme of the analysis.</p>") @as("ThemeArn") themeArn: option<arn>,
  @ocaml.doc("<p>The ARNs of the datasets of the analysis.</p>") @as("DataSetArns")
  dataSetArns: option<dataSetArnsList>,
  @ocaml.doc("<p>Errors associated with the analysis.</p>") @as("Errors")
  errors: option<analysisErrorList>,
  @ocaml.doc("<p>Status associated with the analysis.</p>") @as("Status")
  status: option<resourceStatus>,
  @ocaml.doc("<p>The descriptive name of the analysis.</p>") @as("Name") name: option<analysisName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the analysis.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The ID of the analysis.</p>") @as("AnalysisId")
  analysisId: option<restrictiveResourceId>,
}
@ocaml.doc("<p>The theme configuration. This configuration contains all of the display properties for
            a theme.</p>")
type themeConfiguration = {
  @ocaml.doc("<p>Display options related to sheets.</p>") @as("Sheet") sheet: option<sheetStyle>,
  @ocaml.doc("<p>Color properties that apply to the UI and to charts, excluding the colors that apply
            to data. </p>")
  @as("UIColorPalette")
  uicolorPalette: option<uicolorPalette>,
  @ocaml.doc("<p>Color properties that apply to chart data colors.</p>") @as("DataColorPalette")
  dataColorPalette: option<dataColorPalette>,
}
@ocaml.doc("<p>The source entity of the template.</p>")
type templateSourceEntity = {
  @ocaml.doc("<p>The source template, if it is based on an template.</p>") @as("SourceTemplate")
  sourceTemplate: option<templateSourceTemplate>,
  @ocaml.doc("<p>The source analysis, if it is based on an analysis.</p>") @as("SourceAnalysis")
  sourceAnalysis: option<templateSourceAnalysis>,
}
@ocaml.doc("<p>A transform operation that tags a column with additional information.</p>")
type tagColumnOperation = {
  @ocaml.doc("<p>The dataset column tag, currently only used for geospatial type tagging. .</p>
        <note>
            <p>This is not tags for the AWS tagging feature. .</p>
        </note>")
  @as("Tags")
  tags: columnTagList,
  @ocaml.doc("<p>The column that this operation acts on.</p>") @as("ColumnName")
  columnName: columnName,
}
@ocaml.doc("<p>A view of a data source that contains information about the shape of the data in the
            underlying source. This is a variant type structure. For this structure to be valid,
            only one of the attributes can be non-null.</p>")
type physicalTable = {
  @ocaml.doc("<p>A physical table type for as S3 data source.</p>") @as("S3Source")
  s3Source: option<s3Source>,
  @ocaml.doc("<p>A physical table type built from the results of the custom SQL query.</p>")
  @as("CustomSql")
  customSql: option<customSql>,
  @ocaml.doc("<p>A physical table type for relational data sources.</p>") @as("RelationalTable")
  relationalTable: option<relationalTable>,
}
module PhysicalTable = {
  type t = S3Source(s3Source) | CustomSql(customSql) | RelationalTable(relationalTable)
  exception PhysicalTableUnspecified
  let classify = value =>
    switch value {
    | {s3Source: Some(x)} => S3Source(x)
    | {customSql: Some(x)} => CustomSql(x)
    | {relationalTable: Some(x)} => RelationalTable(x)
    | _ => raise(PhysicalTableUnspecified)
    }

  let make = value =>
    switch value {
    | S3Source(x) => {s3Source: Some(x), customSql: None, relationalTable: None}
    | CustomSql(x) => {customSql: Some(x), s3Source: None, relationalTable: None}
    | RelationalTable(x) => {relationalTable: Some(x), s3Source: None, customSql: None}
    }
}
@ocaml.doc("<p>A list of QuickSight parameters and the list's override values.</p>")
type parameters = {
  @ocaml.doc("<p>Date-time parameters.</p>") @as("DateTimeParameters")
  dateTimeParameters: option<dateTimeParameterList>,
  @ocaml.doc("<p>Decimal parameters.</p>") @as("DecimalParameters")
  decimalParameters: option<decimalParameterList>,
  @ocaml.doc("<p>Integer parameters.</p>") @as("IntegerParameters")
  integerParameters: option<integerParameterList>,
  @ocaml.doc("<p>String parameters.</p>") @as("StringParameters")
  stringParameters: option<stringParameterList>,
}
type dataSourceParametersList = array<dataSourceParameters>
@ocaml.doc("<p>Dashboard source entity.</p>")
type dashboardSourceEntity = {
  @ocaml.doc("<p>Source template.</p>") @as("SourceTemplate")
  sourceTemplate: option<dashboardSourceTemplate>,
}
@ocaml.doc("<p>Dashboard.</p>")
type dashboard = {
  @ocaml.doc("<p>The last time that this dataset was updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The last time that this dataset was published.</p>") @as("LastPublishedTime")
  lastPublishedTime: option<timestamp_>,
  @ocaml.doc("<p>The time that this dataset was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>Version.</p>") @as("Version") version: option<dashboardVersion>,
  @ocaml.doc("<p>A display name for the dashboard.</p>") @as("Name") name: option<dashboardName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>Dashboard ID.</p>") @as("DashboardId") dashboardId: option<restrictiveResourceId>,
}
type columnGroupSchemaList = array<columnGroupSchema>
type columnGroupList = array<columnGroup>
@ocaml.doc("<p>The source entity of an analysis.</p>")
type analysisSourceEntity = {
  @ocaml.doc("<p>The source template for the source entity of the analysis.</p>")
  @as("SourceTemplate")
  sourceTemplate: option<analysisSourceTemplate>,
}
@ocaml.doc("<p>A data transformation on a logical table. This is a variant type structure. For this
            structure to be valid, only one of the attributes can be non-null.</p>")
type transformOperation = {
  @ocaml.doc("<p>An operation that tags a column with additional information.</p>")
  @as("TagColumnOperation")
  tagColumnOperation: option<tagColumnOperation>,
  @ocaml.doc("<p>A transform operation that casts a column to a different type.</p>")
  @as("CastColumnTypeOperation")
  castColumnTypeOperation: option<castColumnTypeOperation>,
  @ocaml.doc("<p>An operation that renames a column.</p>") @as("RenameColumnOperation")
  renameColumnOperation: option<renameColumnOperation>,
  @ocaml.doc("<p>An operation that creates calculated columns. Columns created in one such operation
            form a lexical closure.</p>")
  @as("CreateColumnsOperation")
  createColumnsOperation: option<createColumnsOperation>,
  @ocaml.doc("<p>An operation that filters rows based on some condition.</p>")
  @as("FilterOperation")
  filterOperation: option<filterOperation>,
  @ocaml.doc("<p>An operation that projects columns. Operations that come after a projection can only
            refer to projected columns.</p>")
  @as("ProjectOperation")
  projectOperation: option<projectOperation>,
}
module TransformOperation = {
  type t =
    | TagColumnOperation(tagColumnOperation)
    | CastColumnTypeOperation(castColumnTypeOperation)
    | RenameColumnOperation(renameColumnOperation)
    | CreateColumnsOperation(createColumnsOperation)
    | FilterOperation(filterOperation)
    | ProjectOperation(projectOperation)
  exception TransformOperationUnspecified
  let classify = value =>
    switch value {
    | {tagColumnOperation: Some(x)} => TagColumnOperation(x)
    | {castColumnTypeOperation: Some(x)} => CastColumnTypeOperation(x)
    | {renameColumnOperation: Some(x)} => RenameColumnOperation(x)
    | {createColumnsOperation: Some(x)} => CreateColumnsOperation(x)
    | {filterOperation: Some(x)} => FilterOperation(x)
    | {projectOperation: Some(x)} => ProjectOperation(x)
    | _ => raise(TransformOperationUnspecified)
    }

  let make = value =>
    switch value {
    | TagColumnOperation(x) => {
        tagColumnOperation: Some(x),
        castColumnTypeOperation: None,
        renameColumnOperation: None,
        createColumnsOperation: None,
        filterOperation: None,
        projectOperation: None,
      }
    | CastColumnTypeOperation(x) => {
        castColumnTypeOperation: Some(x),
        tagColumnOperation: None,
        renameColumnOperation: None,
        createColumnsOperation: None,
        filterOperation: None,
        projectOperation: None,
      }
    | RenameColumnOperation(x) => {
        renameColumnOperation: Some(x),
        tagColumnOperation: None,
        castColumnTypeOperation: None,
        createColumnsOperation: None,
        filterOperation: None,
        projectOperation: None,
      }
    | CreateColumnsOperation(x) => {
        createColumnsOperation: Some(x),
        tagColumnOperation: None,
        castColumnTypeOperation: None,
        renameColumnOperation: None,
        filterOperation: None,
        projectOperation: None,
      }
    | FilterOperation(x) => {
        filterOperation: Some(x),
        tagColumnOperation: None,
        castColumnTypeOperation: None,
        renameColumnOperation: None,
        createColumnsOperation: None,
        projectOperation: None,
      }
    | ProjectOperation(x) => {
        projectOperation: Some(x),
        tagColumnOperation: None,
        castColumnTypeOperation: None,
        renameColumnOperation: None,
        createColumnsOperation: None,
        filterOperation: None,
      }
    }
}
@ocaml.doc("<p>A version of a theme.</p>")
type themeVersion = {
  @ocaml.doc("<p>The status of the theme version.</p>") @as("Status")
  status: option<resourceStatus>,
  @ocaml.doc("<p>Errors associated with the theme.</p>") @as("Errors")
  errors: option<themeErrorList>,
  @ocaml.doc("<p>The theme configuration, which contains all the theme display properties.</p>")
  @as("Configuration")
  configuration: option<themeConfiguration>,
  @ocaml.doc("<p>The date and time that this theme version was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The Amazon QuickSight-defined ID of the theme that a custom theme inherits from. All
            themes initially inherit from a default QuickSight theme.</p>")
  @as("BaseThemeId")
  baseThemeId: option<restrictiveResourceId>,
  @ocaml.doc("<p>The description of the theme.</p>") @as("Description")
  description: option<versionDescription>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The version number of the theme.</p>") @as("VersionNumber")
  versionNumber: option<versionNumber>,
}
type physicalTableMap = Js.Dict.t<physicalTable>
@ocaml.doc("<p>The structure of a data source.</p>")
type dataSource = {
  @ocaml.doc("<p>Error information from the last update or the creation of the data source.</p>")
  @as("ErrorInfo")
  errorInfo: option<dataSourceErrorInfo>,
  @ocaml.doc("<p>Secure Socket Layer (SSL) properties that apply when QuickSight connects to your
            underlying source.</p>")
  @as("SslProperties")
  sslProperties: option<sslProperties>,
  @ocaml.doc("<p>The VPC connection information. You need to use this parameter only when you want
            QuickSight to use a VPC connection when connecting to your underlying source.</p>")
  @as("VpcConnectionProperties")
  vpcConnectionProperties: option<vpcConnectionProperties>,
  @ocaml.doc("<p>A set of alternate data source parameters that you want to share for the credentials
            stored with this data source. The credentials are applied in tandem with the data source
            parameters when you copy a data source by using a create or update request. The API
            operation compares the <code>DataSourceParameters</code> structure that's in the request
            with the structures in the <code>AlternateDataSourceParameters</code> allow list. If the
            structures are an exact match, the request is allowed to use the credentials from this
            existing data source. If the <code>AlternateDataSourceParameters</code> list is null,
            the <code>Credentials</code> originally used with this <code>DataSourceParameters</code>
            are automatically allowed.</p>")
  @as("AlternateDataSourceParameters")
  alternateDataSourceParameters: option<dataSourceParametersList>,
  @ocaml.doc("<p>The parameters that Amazon QuickSight uses to connect to your underlying source. This
            is a variant type structure. For this structure to be valid, only one of the attributes
            can be non-null.</p>")
  @as("DataSourceParameters")
  dataSourceParameters: option<dataSourceParameters>,
  @ocaml.doc("<p>The last time that this data source was updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The time that this data source was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<resourceStatus>,
  @ocaml.doc("<p>The type of the data source. This type indicates which database engine the data source
            connects to.</p>")
  @as("Type")
  type_: option<dataSourceType>,
  @ocaml.doc("<p>A display name for the data source.</p>") @as("Name") name: option<resourceName>,
  @ocaml.doc("<p>The ID of the data source. This ID is unique per AWS Region for each AWS
            account.</p>")
  @as("DataSourceId")
  dataSourceId: option<resourceId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the data source.</p>") @as("Arn")
  arn: option<arn>,
}
@ocaml.doc("<p>Dataset configuration.</p>")
type dataSetConfiguration = {
  @ocaml.doc("<p>A structure containing the list of column group schemas.</p>")
  @as("ColumnGroupSchemaList")
  columnGroupSchemaList: option<columnGroupSchemaList>,
  @ocaml.doc("<p>Dataset schema.</p>") @as("DataSetSchema") dataSetSchema: option<dataSetSchema>,
  @ocaml.doc("<p>Placeholder.</p>") @as("Placeholder") placeholder: option<string_>,
}
@ocaml.doc("<p>The combination of user name and password that are used as credentials.</p>")
type credentialPair = {
  @ocaml.doc("<p>A set of alternate data source parameters that you want to share for these
            credentials. The credentials are applied in tandem with the data source parameters when
            you copy a data source by using a create or update request. The API operation compares
            the <code>DataSourceParameters</code> structure that's in the request with the
            structures in the <code>AlternateDataSourceParameters</code> allow list. If the
            structures are an exact match, the request is allowed to use the new data source with
            the existing credentials. If the <code>AlternateDataSourceParameters</code> list is
            null, the <code>DataSourceParameters</code> originally used with these
                <code>Credentials</code> is automatically allowed.</p>")
  @as("AlternateDataSourceParameters")
  alternateDataSourceParameters: option<dataSourceParametersList>,
  @ocaml.doc("<p>Password.</p>") @as("Password") password: password,
  @ocaml.doc("<p>User name.</p>") @as("Username") username: userName2,
}
type transformOperationList = array<transformOperation>
@ocaml.doc("<p>Summary information about a theme.</p>")
type theme = {
  @ocaml.doc("<p>The type of theme, based on how it was created. Valid values include:
            <code>QUICKSIGHT</code> and <code>CUSTOM</code>.</p>")
  @as("Type")
  type_: option<themeType>,
  @ocaml.doc("<p>The date and time that the theme was last updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the theme was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @as("Version") version: option<themeVersion>,
  @ocaml.doc("<p>The identifier that the user gives to the theme.</p>") @as("ThemeId")
  themeId: option<restrictiveResourceId>,
  @ocaml.doc("<p>The name that the user gives to the theme.</p>") @as("Name")
  name: option<themeName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the theme.</p>") @as("Arn") arn: option<arn>,
}
type dataSourceList = array<dataSource>
@ocaml.doc("<p>Data source credentials. This is a variant type structure. For this structure to be
            valid, only one of the attributes can be non-null.</p>")
type dataSourceCredentials = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a data source that has the credential pair that you
            want to use. When <code>CopySourceArn</code> is not null, the credential pair from the
            data source in the ARN is used as the credentials for the
            <code>DataSourceCredentials</code> structure.</p>")
  @as("CopySourceArn")
  copySourceArn: option<copySourceArn>,
  @ocaml.doc("<p>Credential pair. For more information, see <a>CredentialPair</a>.</p>")
  @as("CredentialPair")
  credentialPair: option<credentialPair>,
}
type dataSetConfigurationList = array<dataSetConfiguration>
@ocaml.doc("<p>A version of a template.</p>")
type templateVersion = {
  @ocaml.doc(
    "<p>A list of the associated sheets with the unique identifier and name of each sheet.</p>"
  )
  @as("Sheets")
  sheets: option<sheetList>,
  @ocaml.doc("<p>The ARN of the theme associated with this version of the template.</p>")
  @as("ThemeArn")
  themeArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an analysis or template that was used to create this
            template.</p>")
  @as("SourceEntityArn")
  sourceEntityArn: option<arn>,
  @ocaml.doc("<p>The description of the template.</p>") @as("Description")
  description: option<versionDescription>,
  @ocaml.doc("<p>Schema of the dataset identified by the placeholder. Any dashboard created from this
            template should be bound to new datasets matching the same schema described through this
            API operation.</p>")
  @as("DataSetConfigurations")
  dataSetConfigurations: option<dataSetConfigurationList>,
  @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<resourceStatus>,
  @ocaml.doc("<p>The version number of the template version.</p>") @as("VersionNumber")
  versionNumber: option<versionNumber>,
  @ocaml.doc("<p>Errors associated with this template version.</p>") @as("Errors")
  errors: option<templateErrorList>,
  @ocaml.doc("<p>The time that this template version was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
}
@ocaml.doc("<p>A <i>logical table</i> is a unit that joins and that data
            transformations operate on. A logical table has a source, which can be either a physical
            table or result of a join. When a logical table points to a physical table, the logical
            table acts as a mutable copy of that physical table through transform operations.</p>")
type logicalTable = {
  @ocaml.doc("<p>Source of this logical table.</p>") @as("Source") source: logicalTableSource,
  @ocaml.doc("<p>Transform operations that act on this logical table.</p>") @as("DataTransforms")
  dataTransforms: option<transformOperationList>,
  @ocaml.doc("<p>A display name for the logical table.</p>") @as("Alias") alias: logicalTableAlias,
}
@ocaml.doc("<p>A template object. A <i>template</i> is an entity in QuickSight that
            encapsulates the metadata required to create an analysis and that you can use to create
            a dashboard. A template adds a layer of abstraction by using placeholders to replace the
            dataset associated with an analysis. You can use templates to create dashboards by
            replacing dataset placeholders with datasets that follow the same schema that was used
            to create the source analysis and template.</p>
        <p>You can share templates across AWS accounts by allowing users in other AWS accounts to
            create a template or a dashboard from an existing template.</p>")
type template = {
  @ocaml.doc("<p>Time when this was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>Time when this was last updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The ID for the template. This is unique per AWS Region for each AWS account.</p>")
  @as("TemplateId")
  templateId: option<restrictiveResourceId>,
  @ocaml.doc("<p>A structure describing the versions of the template.</p>") @as("Version")
  version: option<templateVersion>,
  @ocaml.doc("<p>The display name of the template.</p>") @as("Name") name: option<templateName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the template.</p>") @as("Arn") arn: option<arn>,
}
type logicalTableMap = Js.Dict.t<logicalTable>
@ocaml.doc("<p>Dataset.</p>")
type dataSet = {
  @ocaml.doc("<p>A set of one or more definitions of a <code>
               <a>ColumnLevelPermissionRule</a>
            </code>.</p>")
  @as("ColumnLevelPermissionRules")
  columnLevelPermissionRules: option<columnLevelPermissionRuleList>,
  @ocaml.doc("<p>The row-level security configuration for the dataset.</p>")
  @as("RowLevelPermissionDataSet")
  rowLevelPermissionDataSet: option<rowLevelPermissionDataSet>,
  @ocaml.doc("<p>The folder that contains fields and nested subfolders for your dataset.</p>")
  @as("FieldFolders")
  fieldFolders: option<fieldFolderMap>,
  @ocaml.doc("<p>Groupings of columns that work together in certain Amazon QuickSight features.
            Currently, only geospatial hierarchy is supported.</p>")
  @as("ColumnGroups")
  columnGroups: option<columnGroupList>,
  @ocaml.doc("<p>The amount of SPICE capacity used by this dataset. This is 0 if the dataset isn't
            imported into SPICE.</p>")
  @as("ConsumedSpiceCapacityInBytes")
  consumedSpiceCapacityInBytes: option<long>,
  @ocaml.doc("<p>A value that indicates whether you want to import the data into SPICE.</p>")
  @as("ImportMode")
  importMode: option<dataSetImportMode>,
  @ocaml.doc("<p>The list of columns after all transforms. These columns are available in templates,
            analyses, and dashboards.</p>")
  @as("OutputColumns")
  outputColumns: option<outputColumnList>,
  @ocaml.doc("<p>Configures the combination and transformation of the data from the physical
            tables.</p>")
  @as("LogicalTableMap")
  logicalTableMap: option<logicalTableMap>,
  @ocaml.doc(
    "<p>Declares the physical tables that are available in the underlying data sources.</p>"
  )
  @as("PhysicalTableMap")
  physicalTableMap: option<physicalTableMap>,
  @ocaml.doc("<p>The last time that this dataset was updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The time that this dataset was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>A display name for the dataset.</p>") @as("Name") name: option<resourceName>,
  @ocaml.doc("<p>The ID of the dataset.</p>") @as("DataSetId") dataSetId: option<resourceId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn") arn: option<arn>,
}
@ocaml.doc("<fullname>Amazon QuickSight API Reference</fullname>
        <p>Amazon QuickSight is a fully managed, serverless business intelligence service for the
            AWS Cloud that makes it easy to extend data and insights to every user in your
            organization. This API reference contains documentation for a programming interface that
            you can use to manage Amazon QuickSight. </p>")
module UpdateDashboardPublishedVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version number of the dashboard.</p>") @as("VersionNumber")
    versionNumber: versionNumber,
    @ocaml.doc("<p>The ID for the dashboard.</p>") @as("DashboardId")
    dashboardId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the dashboard that you're
            updating.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dashboard.</p>") @as("DashboardArn")
    dashboardArn: option<arn>,
    @ocaml.doc("<p>The ID for the dashboard.</p>") @as("DashboardId")
    dashboardId: option<restrictiveResourceId>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "UpdateDashboardPublishedVersionCommand"
  let make = (~versionNumber, ~dashboardId, ~awsAccountId, ()) =>
    new({versionNumber: versionNumber, dashboardId: dashboardId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccountSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The email address that you want QuickSight to send notifications to regarding your AWS
            account or QuickSight subscription.</p>")
    @as("NotificationEmail")
    notificationEmail: option<string_>,
    @ocaml.doc("<p>The default namespace for this AWS account. Currently, the default is
                <code>default</code>. AWS Identity and Access Management (IAM) users that register
            for the first time with QuickSight provide an email that becomes associated with the
            default namespace.</p>")
    @as("DefaultNamespace")
    defaultNamespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that contains the QuickSight settings that you want to
            list.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "UpdateAccountSettingsCommand"
  let make = (~defaultNamespace, ~awsAccountId, ~notificationEmail=?, ()) =>
    new({
      notificationEmail: notificationEmail,
      defaultNamespace: defaultNamespace,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the analysis that you're restoring.</p>") @as("AnalysisId")
    analysisId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the analysis.</p>") @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The ID of the analysis that you're restoring.
        </p>")
    @as("AnalysisId")
    analysisId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the analysis that you're restoring.</p>")
    @as("Arn")
    arn: option<arn>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "RestoreAnalysisCommand"
  let make = (~analysisId, ~awsAccountId, ()) =>
    new({analysisId: analysisId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSessionEmbedUrl = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon QuickSight user's Amazon Resource Name (ARN), for use with <code>QUICKSIGHT</code> identity type.
			You can use this for any type of Amazon QuickSight users in your account (readers, authors, or
			admins). They need to be authenticated as one of the following:</p>
		       <ol>
            <li>
				           <p>Active Directory (AD) users or group members</p>
			         </li>
            <li>
				           <p>Invited nonfederated users</p>
			         </li>
            <li>
				           <p>AWS Identity and Access Management (IAM) users and IAM role-based sessions authenticated
                    through Federated Single Sign-On using SAML, OpenID Connect, or IAM
                    federation</p>
			         </li>
         </ol>
         <p>Omit this parameter for users in the third group, IAM users and IAM role-based
            sessions.</p>")
    @as("UserArn")
    userArn: option<arn>,
    @ocaml.doc(
      "<p>How many minutes the session is valid. The session lifetime must be 15-600 minutes.</p>"
    )
    @as("SessionLifetimeInMinutes")
    sessionLifetimeInMinutes: option<sessionLifetimeInMinutes>,
    @ocaml.doc("<p>The URL you use to access the embedded session. The entry point URL is constrained to 
          the following paths:</p>
         <ul>
            <li>
                <p>
                  <code>/start</code>
               </p>
            </li>
            <li>
                <p>
                  <code>/start/analyses</code>
               </p>
            </li>
            <li>
                <p>
                  <code>/start/dashboards</code>
               </p>
            </li>
            <li>
                <p>
                  <code>/start/favorites</code>
               </p>
            </li>
            <li>
                <p>
                  <code>/dashboards/<i>DashboardId</i>
                  </code> - where <code>DashboardId</code> is the actual ID key from the QuickSight console URL of the dashboard</p>
            </li>
            <li>
                <p>
                  <code>/analyses/<i>AnalysisId</i>
                  </code> - where <code>AnalysisId</code> is the actual ID key from the QuickSight console URL of the analysis</p>
            </li>
         </ul>")
    @as("EntryPoint")
    entryPoint: option<entryPoint>,
    @ocaml.doc("<p>The ID for the AWS account associated with your QuickSight subscription.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>A single-use URL that you can put into your server-side web page to embed your
			QuickSight session. This URL is valid for 5 minutes. The API operation provides the URL with an
			<code>auth_code</code> value that enables one (and only one) sign-on to a user session
			that is valid for 10 hours. </p>")
    @as("EmbedUrl")
    embedUrl: option<embeddingUrl>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "GetSessionEmbedUrlCommand"
  let make = (~awsAccountId, ~userArn=?, ~sessionLifetimeInMinutes=?, ~entryPoint=?, ()) =>
    new({
      userArn: userArn,
      sessionLifetimeInMinutes: sessionLifetimeInMinutes,
      entryPoint: entryPoint,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUserByPrincipalId = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>The principal ID of the user.</p>") @as("PrincipalId") principalId: string_,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DeleteUserByPrincipalIdCommand"
  let make = (~namespace, ~awsAccountId, ~principalId, ()) =>
    new({namespace: namespace, awsAccountId: awsAccountId, principalId: principalId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUser = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>The name of the user that you want to delete.</p>") @as("UserName")
    userName: userName,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DeleteUserCommand"
  let make = (~namespace, ~awsAccountId, ~userName, ()) =>
    new({namespace: namespace, awsAccountId: awsAccountId, userName: userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteThemeAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name for the theme alias to delete.</p>") @as("AliasName")
    aliasName: aliasName,
    @ocaml.doc("<p>The ID for the theme that the specified alias is for.</p>") @as("ThemeId")
    themeId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the theme alias to delete.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>An ID for the theme associated with the deletion.</p>") @as("ThemeId")
    themeId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the theme resource using the deleted alias.</p>"
    )
    @as("Arn")
    arn: option<arn>,
    @ocaml.doc("<p>The name for the theme alias.</p>") @as("AliasName")
    aliasName: option<aliasName>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DeleteThemeAliasCommand"
  let make = (~aliasName, ~themeId, ~awsAccountId, ()) =>
    new({aliasName: aliasName, themeId: themeId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTheme = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the theme that you want to delete. </p>
		       <p>
            <b>Note:</b> If you don't provide a version number, you're
			using this call to <code>DeleteTheme</code> to delete all versions of the theme.</p>")
    @as("VersionNumber")
    versionNumber: option<versionNumber>,
    @ocaml.doc("<p>An ID for the theme that you want to delete.</p>") @as("ThemeId")
    themeId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the theme that you're deleting.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>An ID for the theme.</p>") @as("ThemeId") themeId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DeleteThemeCommand"
  let make = (~themeId, ~awsAccountId, ~versionNumber=?, ()) =>
    new({versionNumber: versionNumber, themeId: themeId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTemplateAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The name for the template alias. To delete a specific alias, you delete the version that the
			alias points to. You can specify the alias name, or specify the latest version of the
			template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
			parameter. </p>")
    @as("AliasName")
    aliasName: aliasName,
    @ocaml.doc("<p>The ID for the template that the specified alias is for.</p>") @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the item to delete.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the template you want to delete.</p>")
    @as("Arn")
    arn: option<arn>,
    @ocaml.doc("<p>The name for the template alias.</p>") @as("AliasName")
    aliasName: option<aliasName>,
    @ocaml.doc("<p>An ID for the template associated with the deletion.</p>") @as("TemplateId")
    templateId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DeleteTemplateAliasCommand"
  let make = (~aliasName, ~templateId, ~awsAccountId, ()) =>
    new({aliasName: aliasName, templateId: templateId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the version of the template that you want to delete.
			If you don't provide a version number, <code>DeleteTemplate</code> deletes all versions of the template. 
	 </p>")
    @as("VersionNumber")
    versionNumber: option<versionNumber>,
    @ocaml.doc("<p>An ID for the template you want to delete.</p>") @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the template that you're deleting.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>An ID for the template.</p>") @as("TemplateId")
    templateId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn")
    arn: option<arn>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DeleteTemplateCommand"
  let make = (~templateId, ~awsAccountId, ~versionNumber=?, ()) =>
    new({versionNumber: versionNumber, templateId: templateId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNamespace = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace that you want to delete.</p>") @as("Namespace")
    namespace: namespace,
    @ocaml.doc(
      "<p>The ID for the AWS account that you want to delete the QuickSight namespace from.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DeleteNamespaceCommand"
  let make = (~namespace, ~awsAccountId, ()) =>
    new({namespace: namespace, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteIAMPolicyAssignment = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace that contains the assignment.</p>") @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The name of the assignment. </p>") @as("AssignmentName")
    assignmentName: iampolicyAssignmentName,
    @ocaml.doc("<p>The AWS account ID where you want to delete the IAM policy assignment.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The name of the assignment. </p>") @as("AssignmentName")
    assignmentName: option<iampolicyAssignmentName>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DeleteIAMPolicyAssignmentCommand"
  let make = (~namespace, ~assignmentName, ~awsAccountId, ()) =>
    new({namespace: namespace, assignmentName: assignmentName, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGroupMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>The name of the group that you want to delete the user from.</p>")
    @as("GroupName")
    groupName: groupName,
    @ocaml.doc("<p>The name of the user that you want to delete from the group membership.</p>")
    @as("MemberName")
    memberName: groupMemberName,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DeleteGroupMembershipCommand"
  let make = (~namespace, ~awsAccountId, ~groupName, ~memberName, ()) =>
    new({
      namespace: namespace,
      awsAccountId: awsAccountId,
      groupName: groupName,
      memberName: memberName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>The name of the group that you want to delete.</p>") @as("GroupName")
    groupName: groupName,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DeleteGroupCommand"
  let make = (~namespace, ~awsAccountId, ~groupName, ()) =>
    new({namespace: namespace, awsAccountId: awsAccountId, groupName: groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDataSource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSourceId")
    dataSourceId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc(
      "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSourceId")
    dataSourceId: option<resourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the data source that you deleted.</p>")
    @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DeleteDataSourceCommand"
  let make = (~dataSourceId, ~awsAccountId, ()) =>
    new({dataSourceId: dataSourceId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDataSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSetId")
    dataSetId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc(
      "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSetId")
    dataSetId: option<resourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DeleteDataSetCommand"
  let make = (~dataSetId, ~awsAccountId, ()) =>
    new({dataSetId: dataSetId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDashboard = {
  type t
  type request = {
    @ocaml.doc("<p>The version number of the dashboard. If the version number property is provided, only
            the specified version of the dashboard is deleted.</p>")
    @as("VersionNumber")
    versionNumber: option<versionNumber>,
    @ocaml.doc("<p>The ID for the dashboard.</p>") @as("DashboardId")
    dashboardId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the dashboard that you're
            deleting.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The ID of the dashboard.</p>") @as("DashboardId")
    dashboardId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The Secure Socket Layer (SSL) properties that apply for the resource.</p>")
    @as("Arn")
    arn: option<arn>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DeleteDashboardCommand"
  let make = (~dashboardId, ~awsAccountId, ~versionNumber=?, ()) =>
    new({versionNumber: versionNumber, dashboardId: dashboardId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>This option defaults to the value <code>NoForceDeleteWithoutRecovery</code>. To
            immediately delete the analysis, add the <code>ForceDeleteWithoutRecovery</code> option.
            You can't restore an analysis after it's deleted. </p>")
    @as("ForceDeleteWithoutRecovery")
    forceDeleteWithoutRecovery: option<boolean_>,
    @ocaml.doc("<p>A value that specifies the number of days that QuickSight waits before it deletes the
            analysis. You can't use this parameter with the <code>ForceDeleteWithoutRecovery</code>
            option in the same API call. The default value is 30.</p>")
    @as("RecoveryWindowInDays")
    recoveryWindowInDays: option<recoveryWindowInDays>,
    @ocaml.doc("<p>The ID of the analysis that you're deleting.</p>") @as("AnalysisId")
    analysisId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account where you want to delete an analysis.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The date and time that the analysis is scheduled to be deleted.</p>")
    @as("DeletionTime")
    deletionTime: option<timestamp_>,
    @ocaml.doc("<p>The ID of the deleted analysis.</p>") @as("AnalysisId")
    analysisId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deleted analysis.</p>") @as("Arn")
    arn: option<arn>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DeleteAnalysisCommand"
  let make = (
    ~analysisId,
    ~awsAccountId,
    ~forceDeleteWithoutRecovery=?,
    ~recoveryWindowInDays=?,
    (),
  ) =>
    new({
      forceDeleteWithoutRecovery: forceDeleteWithoutRecovery,
      recoveryWindowInDays: recoveryWindowInDays,
      analysisId: analysisId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAccountCustomization = {
  type t
  type request = {
    @ocaml.doc("<p>The QuickSight namespace that you're deleting the customizations from.</p>")
    @as("Namespace")
    namespace: option<namespace>,
    @ocaml.doc("<p>The ID for the AWS account that you want to delete QuickSight customizations from in
            this AWS Region.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DeleteAccountCustomizationCommand"
  let make = (~awsAccountId, ~namespace=?, ()) =>
    new({namespace: namespace, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIngestion = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
    @ocaml.doc("<p>An ID for the ingestion.</p>") @as("IngestionId") ingestionId: ingestionId,
    @ocaml.doc("<p>The ID of the dataset used in the ingestion.</p>") @as("DataSetId")
    dataSetId: string_,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The ingestion status.</p>") @as("IngestionStatus")
    ingestionStatus: option<ingestionStatus>,
    @ocaml.doc("<p>An ID for the ingestion.</p>") @as("IngestionId")
    ingestionId: option<ingestionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the data ingestion.</p>") @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "CreateIngestionCommand"
  let make = (~awsAccountId, ~ingestionId, ~dataSetId, ()) =>
    new({awsAccountId: awsAccountId, ingestionId: ingestionId, dataSetId: dataSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelIngestion = {
  type t
  type request = {
    @ocaml.doc("<p>An ID for the ingestion.</p>") @as("IngestionId") ingestionId: ingestionId,
    @ocaml.doc("<p>The ID of the dataset used in the ingestion.</p>") @as("DataSetId")
    dataSetId: string_,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>An ID for the ingestion.</p>") @as("IngestionId")
    ingestionId: option<ingestionId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the data ingestion.</p>") @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "CancelIngestionCommand"
  let make = (~ingestionId, ~dataSetId, ~awsAccountId, ()) =>
    new({ingestionId: ingestionId, dataSetId: dataSetId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateUser = {
  type t
  type request = {
    @ocaml.doc("<p>The identity ID for a user in the external login provider.</p>")
    @as("ExternalLoginId")
    externalLoginId: option<string_>,
    @ocaml.doc("<p>The URL of the custom OpenID Connect (OIDC) provider that provides identity to let a user federate
         into QuickSight with an associated AWS Identity and Access Management (IAM) role. This parameter should
         only be used when <code>ExternalLoginFederationProviderType</code> parameter is set to <code>CUSTOM_OIDC</code>.</p>")
    @as("CustomFederationProviderUrl")
    customFederationProviderUrl: option<string_>,
    @ocaml.doc("<p>The type of supported external login provider that provides identity to let a user federate into QuickSight with an associated AWS Identity and Access Management (IAM) role. The type of supported external login provider can be one of the following.</p>
         <ul>
            <li>
               <p>
                  <code>COGNITO</code>: Amazon Cognito. The provider URL is cognito-identity.amazonaws.com. When choosing the <code>COGNITO</code> provider type, don’t use the \"CustomFederationProviderUrl\" parameter which is only needed when the external provider is custom.</p>
            </li>
            <li>
               <p>
                  <code>CUSTOM_OIDC</code>: Custom OpenID Connect (OIDC) provider. When choosing <code>CUSTOM_OIDC</code> type, use the <code>CustomFederationProviderUrl</code> parameter to provide the custom OIDC provider URL.</p>
            </li>
            <li>
               <p>
                  <code>NONE</code>: This clears all the previously saved external login information for a user. Use <code>
                     <a>DescribeUser</a>
                  </code> API to check the external login information.</p>
            </li>
         </ul>")
    @as("ExternalLoginFederationProviderType")
    externalLoginFederationProviderType: option<string_>,
    @ocaml.doc("<p>A flag that you use to indicate that you want to remove all custom permissions
            from this user. Using this parameter resets the user to the state
            it was in before a custom permissions profile was applied. This parameter defaults to
            NULL and it doesn't accept any other value.</p>")
    @as("UnapplyCustomPermissions")
    unapplyCustomPermissions: option<boolean_>,
    @ocaml.doc("<p>(Enterprise edition only) The name of the custom permissions profile that you want to
            assign to this user. Customized permissions allows you to control a user's access by
            restricting access the following operations:</p>
        <ul>
            <li>
                <p>Create and update data sources</p>
            </li>
            <li>
                <p>Create and update datasets</p>
            </li>
            <li>
                <p>Create and update email reports</p>
            </li>
            <li>
                <p>Subscribe to email reports</p>
            </li>
         </ul>
        <p>A set of custom permissions includes any combination of these restrictions. Currently,
            you need to create the profile names for custom permission sets by using the QuickSight
            console. Then, you use the <code>RegisterUser</code> API operation to assign the named set of
            permissions to a QuickSight user. </p>
        <p>QuickSight custom permissions are applied through IAM policies. Therefore, they
            override the permissions typically granted by assigning QuickSight users to one of the
            default security cohorts in QuickSight (admin, author, reader).</p>
        <p>This feature is available only to QuickSight Enterprise edition subscriptions that use
            SAML 2.0-Based Federation for Single Sign-On (SSO).</p>")
    @as("CustomPermissionsName")
    customPermissionsName: option<roleName>,
    @ocaml.doc("<p>The Amazon QuickSight role of the user. The role can be one of the
			following default security cohorts:</p>
		       <ul>
            <li>
				           <p>
                  <code>READER</code>: A user who has read-only access to dashboards.</p>
			         </li>
            <li>
				           <p>
                  <code>AUTHOR</code>: A user who can create data sources, datasets, analyses, and
					dashboards.</p>
			         </li>
            <li>
				           <p>
                  <code>ADMIN</code>: A user who is an author, who can also manage Amazon QuickSight
					settings.</p>
			         </li>
         </ul>
	        <p>The name of the QuickSight role is invisible to the user except for the console 
	        screens dealing with permissions.</p>")
    @as("Role")
    role: userRole,
    @ocaml.doc("<p>The email address of the user that you want to update.</p>") @as("Email")
    email: string_,
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>The Amazon QuickSight user name that you want to update.</p>") @as("UserName")
    userName: userName,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The Amazon QuickSight user.</p>") @as("User") user: option<user>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "UpdateUserCommand"
  let make = (
    ~role,
    ~email,
    ~namespace,
    ~awsAccountId,
    ~userName,
    ~externalLoginId=?,
    ~customFederationProviderUrl=?,
    ~externalLoginFederationProviderType=?,
    ~unapplyCustomPermissions=?,
    ~customPermissionsName=?,
    (),
  ) =>
    new({
      externalLoginId: externalLoginId,
      customFederationProviderUrl: customFederationProviderUrl,
      externalLoginFederationProviderType: externalLoginFederationProviderType,
      unapplyCustomPermissions: unapplyCustomPermissions,
      customPermissionsName: customPermissionsName,
      role: role,
      email: email,
      namespace: namespace,
      awsAccountId: awsAccountId,
      userName: userName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateThemeAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The version number of the theme that the alias should reference.</p>")
    @as("ThemeVersionNumber")
    themeVersionNumber: versionNumber,
    @ocaml.doc("<p>The name of the theme alias that you want to update.</p>") @as("AliasName")
    aliasName: aliasName,
    @ocaml.doc("<p>The ID for the theme.</p>") @as("ThemeId") themeId: restrictiveResourceId,
    @ocaml.doc(
      "<p>The ID of the AWS account that contains the theme alias that you're updating.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>Information about the theme alias.</p>") @as("ThemeAlias")
    themeAlias: option<themeAlias>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "UpdateThemeAliasCommand"
  let make = (~themeVersionNumber, ~aliasName, ~themeId, ~awsAccountId, ()) =>
    new({
      themeVersionNumber: themeVersionNumber,
      aliasName: aliasName,
      themeId: themeId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTemplateAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The version number of the template.</p>") @as("TemplateVersionNumber")
    templateVersionNumber: versionNumber,
    @ocaml.doc("<p>The alias of the template that you want to update. If you name a specific alias, you update
			the version that the alias points to. You can specify the latest version of the template
			by providing the keyword <code>$LATEST</code> in the <code>AliasName</code> parameter.
			The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>")
    @as("AliasName")
    aliasName: aliasName,
    @ocaml.doc("<p>The ID for the template.</p>") @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc(
      "<p>The ID of the AWS account that contains the template alias that you're updating.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The template alias.</p>") @as("TemplateAlias")
    templateAlias: option<templateAlias>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "UpdateTemplateAliasCommand"
  let make = (~templateVersionNumber, ~aliasName, ~templateId, ~awsAccountId, ()) =>
    new({
      templateVersionNumber: templateVersionNumber,
      aliasName: aliasName,
      templateId: templateId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>The description for the group that you want to update.</p>") @as("Description")
    description: option<groupDescription>,
    @ocaml.doc("<p>The name of the group that you want to update.</p>") @as("GroupName")
    groupName: groupName,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The name of the group.</p>") @as("Group") group: option<group>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "UpdateGroupCommand"
  let make = (~namespace, ~awsAccountId, ~groupName, ~description=?, ()) =>
    new({
      namespace: namespace,
      awsAccountId: awsAccountId,
      description: description,
      groupName: groupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccountCustomization = {
  type t
  type request = {
    @ocaml.doc("<p>The QuickSight customizations you're updating in the current AWS Region. </p>")
    @as("AccountCustomization")
    accountCustomization: accountCustomization,
    @ocaml.doc("<p>The namespace that you want to update QuickSight customizations for.</p>")
    @as("Namespace")
    namespace: option<namespace>,
    @ocaml.doc("<p>The ID for the AWS account that you want to update QuickSight customizations
            for.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The QuickSight customizations you're updating in the current AWS Region. </p>")
    @as("AccountCustomization")
    accountCustomization: option<accountCustomization>,
    @ocaml.doc("<p>The namespace associated with the customization that you're updating.</p>")
    @as("Namespace")
    namespace: option<namespace>,
    @ocaml.doc("<p>The ID for the AWS account that you want to update QuickSight customizations
            for.</p>")
    @as("AwsAccountId")
    awsAccountId: option<awsAccountId>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the updated customization for this AWS account.</p>"
    )
    @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "UpdateAccountCustomizationCommand"
  let make = (~accountCustomization, ~awsAccountId, ~namespace=?, ()) =>
    new({
      accountCustomization: accountCustomization,
      namespace: namespace,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The keys of the key-value pairs for the resource tag or tags assigned to the resource.</p>"
    )
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterUser = {
  type t
  type request = {
    @ocaml.doc("<p>The identity ID for a user in the external login provider.</p>")
    @as("ExternalLoginId")
    externalLoginId: option<string_>,
    @ocaml.doc("<p>The URL of the custom OpenID Connect (OIDC) provider that provides identity to let a user federate
         into QuickSight with an associated AWS Identity and Access Management (IAM) role. This parameter should
         only be used when <code>ExternalLoginFederationProviderType</code> parameter is set to <code>CUSTOM_OIDC</code>.</p>")
    @as("CustomFederationProviderUrl")
    customFederationProviderUrl: option<string_>,
    @ocaml.doc("<p>The type of supported external login provider that provides identity to let a user federate into Amazon QuickSight with an associated AWS Identity and Access Management (IAM) role. The type of supported external login provider can be one of the following.</p>
         <ul>
            <li>
               <p>
                  <code>COGNITO</code>: Amazon Cognito. The provider URL is cognito-identity.amazonaws.com. When choosing the <code>COGNITO</code> provider type, don’t use the \"CustomFederationProviderUrl\" parameter which is only needed when the external provider is custom.</p>
            </li>
            <li>
               <p>
                  <code>CUSTOM_OIDC</code>: Custom OpenID Connect (OIDC) provider. When choosing <code>CUSTOM_OIDC</code> type, use the <code>CustomFederationProviderUrl</code> parameter to provide the custom OIDC provider URL.</p>
            </li>
         </ul>")
    @as("ExternalLoginFederationProviderType")
    externalLoginFederationProviderType: option<string_>,
    @ocaml.doc("<p>(Enterprise edition only) The name of the custom permissions profile that you want to
            assign to this user. Customized permissions allows you to control a user's access by
            restricting access the following operations:</p>
        <ul>
            <li>
                <p>Create and update data sources</p>
            </li>
            <li>
                <p>Create and update datasets</p>
            </li>
            <li>
                <p>Create and update email reports</p>
            </li>
            <li>
                <p>Subscribe to email reports</p>
            </li>
         </ul>
        <p>To add custom permissions to an existing user, use <code>
               <a>UpdateUser</a>
            </code> instead.</p>
        <p>A set of custom permissions includes any combination of these restrictions. Currently,
            you need to create the profile names for custom permission sets by using the QuickSight
            console. Then, you use the <code>RegisterUser</code> API operation to assign the named set of
            permissions to a QuickSight user. </p>
        <p>QuickSight custom permissions are applied through IAM policies. Therefore, they
            override the permissions typically granted by assigning QuickSight users to one of the
            default security cohorts in QuickSight (admin, author, reader).</p>
        <p>This feature is available only to QuickSight Enterprise edition subscriptions that use
            SAML 2.0-Based Federation for Single Sign-On (SSO).</p>")
    @as("CustomPermissionsName")
    customPermissionsName: option<roleName>,
    @ocaml.doc("<p>The Amazon QuickSight user name that you want to create for the user you are
			registering.</p>")
    @as("UserName")
    userName: option<userName>,
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>You need to use this parameter only when you register one or more users using an assumed
			IAM role. You don't need to provide the session name for other scenarios, for example when
			you are registering an IAM user or an Amazon QuickSight user. You can register multiple
			users using the same IAM role if each user has a different session name. For more
			information on assuming IAM roles, see <a href=\"https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html\">
               <code>assume-role</code>
            </a> in the <i>AWS CLI Reference.</i>
         </p>")
    @as("SessionName")
    sessionName: option<roleSessionName>,
    @ocaml.doc(
      "<p>The ARN of the IAM user or role that you are registering with Amazon QuickSight. </p>"
    )
    @as("IamArn")
    iamArn: option<string_>,
    @ocaml.doc("<p>The Amazon QuickSight role for the user. The user role can be one of the
			following:</p>
		       <ul>
            <li>
				           <p>
                  <code>READER</code>: A user who has read-only access to dashboards.</p>
			         </li>
            <li>
				           <p>
                  <code>AUTHOR</code>: A user who can create data sources, datasets, analyses, and
					dashboards.</p>
			         </li>
            <li>
				           <p>
                  <code>ADMIN</code>: A user who is an author, who can also manage Amazon QuickSight
					settings.</p>
			         </li>
            <li>
				           <p> 
                  <code>RESTRICTED_READER</code>: This role isn't currently available for
					use.</p>
			         </li>
            <li>
				           <p> 
                  <code>RESTRICTED_AUTHOR</code>: This role isn't currently available for
					use.</p>
			         </li>
         </ul>")
    @as("UserRole")
    userRole: userRole,
    @ocaml.doc("<p>The email address of the user that you want to register.</p>") @as("Email")
    email: string_,
    @ocaml.doc("<p>Amazon QuickSight supports several ways of managing the identity of users. This
			parameter accepts two values:</p>
		       <ul>
            <li>
				           <p>
                  <code>IAM</code>: A user whose identity maps to an existing IAM user or role.
				</p>
			         </li>
            <li>
				           <p>
                  <code>QUICKSIGHT</code>: A user whose identity is owned and managed internally by
					Amazon QuickSight. </p>
			         </li>
         </ul>")
    @as("IdentityType")
    identityType: identityType,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The URL the user visits to complete registration and provide a password. This is
			returned only for users with an identity type of <code>QUICKSIGHT</code>.</p>")
    @as("UserInvitationUrl")
    userInvitationUrl: option<string_>,
    @ocaml.doc("<p>The user's user name.</p>") @as("User") user: option<user>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "RegisterUserCommand"
  let make = (
    ~namespace,
    ~awsAccountId,
    ~userRole,
    ~email,
    ~identityType,
    ~externalLoginId=?,
    ~customFederationProviderUrl=?,
    ~externalLoginFederationProviderType=?,
    ~customPermissionsName=?,
    ~userName=?,
    ~sessionName=?,
    ~iamArn=?,
    (),
  ) =>
    new({
      externalLoginId: externalLoginId,
      customFederationProviderUrl: customFederationProviderUrl,
      externalLoginFederationProviderType: externalLoginFederationProviderType,
      customPermissionsName: customPermissionsName,
      userName: userName,
      namespace: namespace,
      awsAccountId: awsAccountId,
      sessionName: sessionName,
      iamArn: iamArn,
      userRole: userRole,
      email: email,
      identityType: identityType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDashboardEmbedUrl = {
  type t
  type request = {
    @ocaml.doc("<p>A list of one or more dashboard IDs that you want to add to a session that includes
            anonymous users. The <code>IdentityType</code> parameter must be set to
                <code>ANONYMOUS</code> for this to work, because other identity types authenticate
            as QuickSight or IAM users. For example, if you set \"<code>--dashboard-id dash_id1
                --dashboard-id dash_id2 dash_id3 identity-type ANONYMOUS</code>\", the session
            can access all three dashboards. </p>")
    @as("AdditionalDashboardIds")
    additionalDashboardIds: option<additionalDashboardIdList>,
    @ocaml.doc("<p>The QuickSight namespace that contains the dashboard IDs in this request.
    	   If you're not using a custom namespace, set this to 
    	    \"<code>default</code>\".</p>")
    @as("Namespace")
    namespace: option<namespace>,
    @ocaml.doc("<p>The Amazon QuickSight user's Amazon Resource Name (ARN), for use with <code>QUICKSIGHT</code> identity type.
			You can use this for any Amazon QuickSight users in your account (readers, authors, or
			admins) authenticated as one of the following:</p>
		       <ul>
            <li>
				           <p>Active Directory (AD) users or group members</p>
			         </li>
            <li>
				           <p>Invited nonfederated users</p>
			         </li>
            <li>
				           <p>IAM users and IAM role-based sessions authenticated through Federated Single Sign-On using
					SAML, OpenID Connect, or IAM federation.</p>
			         </li>
         </ul>
         <p>Omit this parameter for users in the third group – IAM users and IAM
            role-based sessions.</p>")
    @as("UserArn")
    userArn: option<arn>,
    @ocaml.doc("<p>Adds persistence of state for the user session in an embedded dashboard. Persistence
            applies to the sheet and the parameter settings. These are control settings that the
            dashboard subscriber (QuickSight reader) chooses while viewing the dashboard. If this is
            set to <code>TRUE</code>, the settings are the same when the subscriber reopens the same
            dashboard URL. The state is stored in QuickSight, not in a browser cookie. If this is
            set to FALSE, the state of the user session is not persisted. The default is
                <code>FALSE</code>.</p>")
    @as("StatePersistenceEnabled")
    statePersistenceEnabled: option<boolean_>,
    @ocaml.doc("<p>Remove the reset button on the embedded dashboard. The default is FALSE, which enables the
			reset button.</p>")
    @as("ResetDisabled")
    resetDisabled: option<boolean_>,
    @ocaml.doc("<p>Remove the undo/redo button on the embedded dashboard. The default is FALSE, which enables
			the undo/redo button.</p>")
    @as("UndoRedoDisabled")
    undoRedoDisabled: option<boolean_>,
    @ocaml.doc(
      "<p>How many minutes the session is valid. The session lifetime must be 15-600 minutes.</p>"
    )
    @as("SessionLifetimeInMinutes")
    sessionLifetimeInMinutes: option<sessionLifetimeInMinutes>,
    @ocaml.doc("<p>The authentication method that the user uses to sign in.</p>")
    @as("IdentityType")
    identityType: embeddingIdentityType,
    @ocaml.doc("<p>The ID for the dashboard, also added to the AWS Identity and Access Management (IAM)
            policy.</p>")
    @as("DashboardId")
    dashboardId: restrictiveResourceId,
    @ocaml.doc(
      "<p>The ID for the AWS account that contains the dashboard that you're embedding.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  @ocaml.doc("<p>Output returned from the <code>GetDashboardEmbedUrl</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>A single-use URL that you can put into your server-side webpage to embed your
			dashboard. This URL is valid for 5 minutes. The API operation provides the URL with an
			<code>auth_code</code> value that enables one (and only one) sign-on to a user session
			that is valid for 10 hours. </p>")
    @as("EmbedUrl")
    embedUrl: option<embeddingUrl>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "GetDashboardEmbedUrlCommand"
  let make = (
    ~identityType,
    ~dashboardId,
    ~awsAccountId,
    ~additionalDashboardIds=?,
    ~namespace=?,
    ~userArn=?,
    ~statePersistenceEnabled=?,
    ~resetDisabled=?,
    ~undoRedoDisabled=?,
    ~sessionLifetimeInMinutes=?,
    (),
  ) =>
    new({
      additionalDashboardIds: additionalDashboardIds,
      namespace: namespace,
      userArn: userArn,
      statePersistenceEnabled: statePersistenceEnabled,
      resetDisabled: resetDisabled,
      undoRedoDisabled: undoRedoDisabled,
      sessionLifetimeInMinutes: sessionLifetimeInMinutes,
      identityType: identityType,
      dashboardId: dashboardId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUser = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>The name of the user that you want to describe.</p>") @as("UserName")
    userName: userName,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The user name.</p>") @as("User") user: option<user>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DescribeUserCommand"
  let make = (~namespace, ~awsAccountId, ~userName, ()) =>
    new({namespace: namespace, awsAccountId: awsAccountId, userName: userName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeThemeAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the theme alias that you want to describe.</p>") @as("AliasName")
    aliasName: aliasName,
    @ocaml.doc("<p>The ID for the theme.</p>") @as("ThemeId") themeId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the theme alias that you're
			describing.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>Information about the theme alias.</p>") @as("ThemeAlias")
    themeAlias: option<themeAlias>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeThemeAliasCommand"
  let make = (~aliasName, ~themeId, ~awsAccountId, ()) =>
    new({aliasName: aliasName, themeId: themeId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTemplateAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the template alias that you want to describe. If you name a specific alias, you
			describe the version that the alias points to. You can specify the latest version of the
			template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
			parameter. The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>")
    @as("AliasName")
    aliasName: aliasName,
    @ocaml.doc("<p>The ID for the template.</p>") @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the template alias that you're
			describing.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>Information about the template alias.</p>") @as("TemplateAlias")
    templateAlias: option<templateAlias>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeTemplateAliasCommand"
  let make = (~aliasName, ~templateId, ~awsAccountId, ()) =>
    new({aliasName: aliasName, templateId: templateId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>The name of the group that you want to describe.</p>") @as("GroupName")
    groupName: groupName,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The name of the group.</p>") @as("Group") group: option<group>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DescribeGroupCommand"
  let make = (~namespace, ~awsAccountId, ~groupName, ()) =>
    new({namespace: namespace, awsAccountId: awsAccountId, groupName: groupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountSettings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID for the AWS account that contains the settings that you want to list.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The QuickSight settings for this AWS account. This information includes the edition of Amazon
            QuickSight that you subscribed to (Standard or Enterprise) and the notification email for the
            QuickSight subscription. In the QuickSight console, the QuickSight subscription is sometimes
            referred to as a QuickSight \"account\" even though it's technically not an account
            by itself. Instead, it's a subscription to the QuickSight service for your AWS account. The
            edition that you subscribe to applies to QuickSight in every AWS Region where you use it.</p>")
    @as("AccountSettings")
    accountSettings: option<accountSettings>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeAccountSettingsCommand"
  let make = (~awsAccountId, ()) => new({awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountCustomization = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>Resolved</code> flag works with the other parameters to determine which view
            of QuickSight customizations is returned. You can add this flag to your command to use
            the same view that QuickSight uses to identify which customizations to apply to the
            console. Omit this flag, or set it to <code>no-resolved</code>, to reveal customizations
            that are configured at different levels. </p>")
    @as("Resolved")
    resolved: option<boolean_>,
    @ocaml.doc("<p>The QuickSight namespace that you want to describe QuickSight customizations
            for.</p>")
    @as("Namespace")
    namespace: option<namespace>,
    @ocaml.doc("<p>The ID for the AWS account that you want to describe QuickSight customizations
            for.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The QuickSight customizations that exist in the current AWS Region. </p>")
    @as("AccountCustomization")
    accountCustomization: option<accountCustomization>,
    @ocaml.doc("<p>The QuickSight namespace that you're describing. </p>") @as("Namespace")
    namespace: option<namespace>,
    @ocaml.doc("<p>The ID for the AWS account that you're describing.</p>") @as("AwsAccountId")
    awsAccountId: option<awsAccountId>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the customization that's associated with this AWS account.</p>"
    )
    @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeAccountCustomizationCommand"
  let make = (~awsAccountId, ~resolved=?, ~namespace=?, ()) =>
    new({resolved: resolved, namespace: namespace, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateThemeAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The version number of the theme.</p>") @as("ThemeVersionNumber")
    themeVersionNumber: versionNumber,
    @ocaml.doc("<p>The name that you want to give to the theme alias that you are creating. The
			alias name can't begin with a <code>$</code>. Alias names that start with <code>$</code>
			are reserved by Amazon QuickSight. </p>")
    @as("AliasName")
    aliasName: aliasName,
    @ocaml.doc("<p>An ID for the theme alias.</p>") @as("ThemeId") themeId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the theme for the new theme alias.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>Information about the theme alias.</p>") @as("ThemeAlias")
    themeAlias: option<themeAlias>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "CreateThemeAliasCommand"
  let make = (~themeVersionNumber, ~aliasName, ~themeId, ~awsAccountId, ()) =>
    new({
      themeVersionNumber: themeVersionNumber,
      aliasName: aliasName,
      themeId: themeId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTemplateAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The version number of the template.</p>") @as("TemplateVersionNumber")
    templateVersionNumber: versionNumber,
    @ocaml.doc("<p>The name that you want to give to the template alias that you're creating. Don't start the
			alias name with the <code>$</code> character. Alias names that start with <code>$</code>
			are reserved by QuickSight. </p>")
    @as("AliasName")
    aliasName: aliasName,
    @ocaml.doc("<p>An ID for the template.</p>") @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc(
      "<p>The ID of the AWS account that contains the template that you creating an alias for.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>Information about the template alias.</p>") @as("TemplateAlias")
    templateAlias: option<templateAlias>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "CreateTemplateAliasCommand"
  let make = (~templateVersionNumber, ~aliasName, ~templateId, ~awsAccountId, ()) =>
    new({
      templateVersionNumber: templateVersionNumber,
      aliasName: aliasName,
      templateId: templateId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGroupMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>The name of the group that you want to add the user to.</p>") @as("GroupName")
    groupName: groupName,
    @ocaml.doc("<p>The name of the user that you want to add to the group membership.</p>")
    @as("MemberName")
    memberName: groupMemberName,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The group member.</p>") @as("GroupMember") groupMember: option<groupMember>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "CreateGroupMembershipCommand"
  let make = (~namespace, ~awsAccountId, ~groupName, ~memberName, ()) =>
    new({
      namespace: namespace,
      awsAccountId: awsAccountId,
      groupName: groupName,
      memberName: memberName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGroup = {
  type t
  @ocaml.doc("<p>The request object for this operation. </p>")
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>A description for the group that you want to create.</p>") @as("Description")
    description: option<groupDescription>,
    @ocaml.doc("<p>A name for the group that you want to create.</p>") @as("GroupName")
    groupName: groupName,
  }
  @ocaml.doc("<p>The response object for this operation.</p>")
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The name of the group.</p>") @as("Group") group: option<group>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "CreateGroupCommand"
  let make = (~namespace, ~awsAccountId, ~groupName, ~description=?, ()) =>
    new({
      namespace: namespace,
      awsAccountId: awsAccountId,
      description: description,
      groupName: groupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIAMPolicyAssignment = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The QuickSight users, groups, or both that you want to assign the policy to.</p>"
    )
    @as("Identities")
    identities: option<identityMap>,
    @ocaml.doc("<p>The ARN for the IAM policy to apply to the QuickSight users and groups
			specified in this assignment.</p>")
    @as("PolicyArn")
    policyArn: option<arn>,
    @ocaml.doc("<p>The status of the assignment. Possible values are as follows:</p>
		       <ul>
            <li>
               <p>
                  <code>ENABLED</code> - Anything specified in this assignment is used when creating the data
				source.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> - This assignment isn't used when creating the data source.</p>
            </li>
            <li>
               <p>
                  <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the
				data source.</p>
            </li>
         </ul>")
    @as("AssignmentStatus")
    assignmentStatus: option<assignmentStatus>,
    @ocaml.doc("<p>The namespace of the assignment.</p>") @as("Namespace") namespace: namespace,
    @ocaml.doc(
      "<p>The name of the assignment, also called a rule. This name must be unique within an AWS account.</p>"
    )
    @as("AssignmentName")
    assignmentName: iampolicyAssignmentName,
    @ocaml.doc("<p>The ID of the AWS account that contains the IAM policy assignment. </p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The status of the assignment. Possible values are as follows:</p>
		       <ul>
            <li>
               <p>
                  <code>ENABLED</code> - Anything specified in this assignment is used when creating the data
				source.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> - This assignment isn't used when creating the data source.</p>
            </li>
            <li>
               <p>
                  <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the
				data source.</p>
            </li>
         </ul>")
    @as("AssignmentStatus")
    assignmentStatus: option<assignmentStatus>,
    @ocaml.doc("<p>The QuickSight users, groups, or both that the IAM policy is assigned to.</p>")
    @as("Identities")
    identities: option<identityMap>,
    @ocaml.doc("<p>The ARN for the IAM policy applied to the QuickSight users and groups specified in this
			assignment.</p>")
    @as("PolicyArn")
    policyArn: option<arn>,
    @ocaml.doc("<p>The ID of the assignment.</p>") @as("AssignmentId")
    assignmentId: option<string_>,
    @ocaml.doc("<p>The name of the assignment or rule.</p>") @as("AssignmentName")
    assignmentName: option<iampolicyAssignmentName>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "UpdateIAMPolicyAssignmentCommand"
  let make = (
    ~namespace,
    ~assignmentName,
    ~awsAccountId,
    ~identities=?,
    ~policyArn=?,
    ~assignmentStatus=?,
    (),
  ) =>
    new({
      identities: identities,
      policyArn: policyArn,
      assignmentStatus: assignmentStatus,
      namespace: namespace,
      assignmentName: assignmentName,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>"
    )
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchDashboards = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The filters to apply to the search. Currently, you can search only by user name, for
            example, <code>\"Filters\": [ { \"Name\": \"QUICKSIGHT_USER\", \"Operator\": \"StringEquals\",
            \"Value\": \"arn:aws:quicksight:us-east-1:1:user/default/UserName1\" } ]</code>
         </p>")
    @as("Filters")
    filters: dashboardSearchFilterList,
    @ocaml.doc("<p>The ID of the AWS account that contains the user whose dashboards you're searching
            for. </p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of dashboards owned by the user specified in <code>Filters</code> in your
            request.</p>")
    @as("DashboardSummaryList")
    dashboardSummaryList: option<dashboardSummaryList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "SearchDashboardsCommand"
  let make = (~filters, ~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchAnalyses = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The structure for the search filters that you want to apply to your search. </p>"
    )
    @as("Filters")
    filters: analysisSearchFilterList,
    @ocaml.doc("<p>The ID of the AWS account that contains the analyses that you're searching
            for.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.
            </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Metadata describing the analyses that you searched for.</p>")
    @as("AnalysisSummaryList")
    analysisSummaryList: option<analysisSummaryList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "SearchAnalysesCommand"
  let make = (~filters, ~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUsers = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The maximum number of results to return from this request.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of users.</p>") @as("UserList") userList: option<userList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListUsersCommand"
  let make = (~namespace, ~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      namespace: namespace,
      maxResults: maxResults,
      nextToken: nextToken,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUserGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return from this request.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The AWS account ID that the user is in. Currently, you use the ID for the AWS account
			that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc(
      "<p>The Amazon QuickSight user name that you want to list group memberships for.</p>"
    )
    @as("UserName")
    userName: userName,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of groups the user is a member of.</p>") @as("GroupList")
    groupList: option<groupList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListUserGroupsCommand"
  let make = (~namespace, ~awsAccountId, ~userName, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      namespace: namespace,
      awsAccountId: awsAccountId,
      userName: userName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThemes = {
  type t
  type request = {
    @ocaml.doc("<p>The type of themes that you want to list. Valid options include the following:</p>
    	    <ul>
            <li>
               <p>
                  <code>ALL (default)</code>- Display all existing themes.</p>
            </li>
            <li>
               <p>
                  <code>CUSTOM</code> - Display only the themes created by people using Amazon QuickSight.</p>
            </li>
            <li>
               <p>
                  <code>QUICKSIGHT</code> - Display only the starting themes defined by QuickSight.</p>
            </li>
         </ul>")
    @as("Type")
    type_: option<themeType>,
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID of the AWS account that contains the themes that you're listing.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the themes in the list.</p>") @as("ThemeSummaryList")
    themeSummaryList: option<themeSummaryList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListThemesCommand"
  let make = (~awsAccountId, ~type_=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({type_: type_, maxResults: maxResults, nextToken: nextToken, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThemeVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID for the theme.</p>") @as("ThemeId") themeId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the themes that you're listing.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A structure containing a list of all the versions of the specified theme.</p>")
    @as("ThemeVersionSummaryList")
    themeVersionSummaryList: option<themeVersionSummaryList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListThemeVersionsCommand"
  let make = (~themeId, ~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      themeId: themeId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThemeAliases = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID for the theme.</p>") @as("ThemeId") themeId: restrictiveResourceId,
    @ocaml.doc(
      "<p>The ID of the AWS account that contains the theme aliases that you're listing.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>A structure containing the list of the theme's aliases.</p>")
    @as("ThemeAliasList")
    themeAliasList: option<themeAliasList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListThemeAliasesCommand"
  let make = (~themeId, ~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      themeId: themeId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID of the AWS account that contains the templates that you're listing.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A structure containing information about the templates in the list.</p>")
    @as("TemplateSummaryList")
    templateSummaryList: option<templateSummaryList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListTemplatesCommand"
  let make = (~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTemplateVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID for the template.</p>") @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the templates that you're listing.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>A structure containing a list of all the versions of the specified template.</p>"
    )
    @as("TemplateVersionSummaryList")
    templateVersionSummaryList: option<templateVersionSummaryList>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "ListTemplateVersionsCommand"
  let make = (~templateId, ~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      templateId: templateId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTemplateAliases = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID for the template.</p>") @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc(
      "<p>The ID of the AWS account that contains the template aliases that you're listing.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>A structure containing the list of the template's aliases.</p>")
    @as("TemplateAliasList")
    templateAliasList: option<templateAliasList>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "ListTemplateAliasesCommand"
  let make = (~templateId, ~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      templateId: templateId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource that you want a list of tags for.</p>"
    )
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the
			resource.</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIAMPolicyAssignmentsForUser = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace of the assignment.</p>") @as("Namespace") namespace: namespace,
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the user.</p>") @as("UserName") userName: userName,
    @ocaml.doc("<p>The ID of the AWS account that contains the assignments.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The active assignments for this user.</p>") @as("ActiveAssignments")
    activeAssignments: option<activeIAMPolicyAssignmentList>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "ListIAMPolicyAssignmentsForUserCommand"
  let make = (~namespace, ~userName, ~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      namespace: namespace,
      maxResults: maxResults,
      nextToken: nextToken,
      userName: userName,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIAMPolicyAssignments = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The namespace for the assignments.</p>") @as("Namespace") namespace: namespace,
    @ocaml.doc("<p>The status of the assignments.</p>") @as("AssignmentStatus")
    assignmentStatus: option<assignmentStatus>,
    @ocaml.doc("<p>The ID of the AWS account that contains these IAM policy assignments.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information describing the IAM policy assignments.</p>")
    @as("IAMPolicyAssignments")
    iampolicyAssignments: option<iampolicyAssignmentSummaryList>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "ListIAMPolicyAssignmentsCommand"
  let make = (~namespace, ~awsAccountId, ~maxResults=?, ~nextToken=?, ~assignmentStatus=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      namespace: namespace,
      assignmentStatus: assignmentStatus,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of the groups.</p>") @as("GroupList") groupList: option<groupList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListGroupsCommand"
  let make = (~namespace, ~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      namespace: namespace,
      maxResults: maxResults,
      nextToken: nextToken,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroupMemberships = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace. Currently, you should set this to <code>default</code>.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
    @ocaml.doc("<p>The maximum number of results to return from this request.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the group that you want to see a membership list of.</p>")
    @as("GroupName")
    groupName: groupName,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of the members of the group.</p>") @as("GroupMemberList")
    groupMemberList: option<groupMemberList>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "ListGroupMembershipsCommand"
  let make = (~namespace, ~awsAccountId, ~groupName, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      namespace: namespace,
      awsAccountId: awsAccountId,
      maxResults: maxResults,
      nextToken: nextToken,
      groupName: groupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDashboards = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID of the AWS account that contains the dashboards that you're
            listing.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A structure that contains all of the dashboards in your AWS account. This structure
            provides basic information about the dashboards.</p>")
    @as("DashboardSummaryList")
    dashboardSummaryList: option<dashboardSummaryList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListDashboardsCommand"
  let make = (~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDashboardVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID for the dashboard.</p>") @as("DashboardId")
    dashboardId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the dashboard that you're listing versions
            for.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A structure that contains information about each version of the dashboard.</p>")
    @as("DashboardVersionSummaryList")
    dashboardVersionSummaryList: option<dashboardVersionSummaryList>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "ListDashboardVersionsCommand"
  let make = (~dashboardId, ~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      dashboardId: dashboardId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnalyses = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID of the AWS account that contains the analyses.</p>") @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Metadata describing each of the analyses that are listed.</p>")
    @as("AnalysisSummaryList")
    analysisSummaryList: option<analysisSummaryList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListAnalysesCommand"
  let make = (~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNamespace = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace that you want to describe.</p>") @as("Namespace")
    namespace: namespace,
    @ocaml.doc(
      "<p>The ID for the AWS account that contains the QuickSight namespace that you want to describe.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The information about the namespace that you're describing. The response includes 
        the namespace ARN, name, AWS Region, creation status, and identity store. <code>DescribeNamespace</code> also
        works for namespaces that are in the process of being created. For incomplete namespaces,
        this API operation lists the namespace error types and messages associated with the creation process.</p>")
    @as("Namespace")
    namespace: option<namespaceInfoV2>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DescribeNamespaceCommand"
  let make = (~namespace, ~awsAccountId, ()) =>
    new({namespace: namespace, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIngestion = {
  type t
  type request = {
    @ocaml.doc("<p>An ID for the ingestion.</p>") @as("IngestionId") ingestionId: ingestionId,
    @ocaml.doc("<p>The ID of the dataset used in the ingestion.</p>") @as("DataSetId")
    dataSetId: string_,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>Information about the ingestion.</p>") @as("Ingestion")
    ingestion: option<ingestion>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DescribeIngestionCommand"
  let make = (~ingestionId, ~dataSetId, ~awsAccountId, ()) =>
    new({ingestionId: ingestionId, dataSetId: dataSetId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNamespace = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The tags that you want to associate with the namespace that you're creating.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Specifies the type of your user identity directory. Currently, this supports users
            with an identity type of <code>QUICKSIGHT</code>.</p>")
    @as("IdentityStore")
    identityStore: identityStore,
    @ocaml.doc("<p>The name that you want to use to describe the new namespace.</p>")
    @as("Namespace")
    namespace: namespace,
    @ocaml.doc(
      "<p>The ID for the AWS account that you want to create the QuickSight namespace in.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>Specifies the type of your user identity directory. Currently, this supports users
            with an identity type of <code>QUICKSIGHT</code>.</p>")
    @as("IdentityStore")
    identityStore: option<identityStore>,
    @ocaml.doc("<p>The status of the creation of the namespace. This is an asynchronous process. A status
            of <code>CREATED</code> means that your namespace is ready to use. If an error occurs,
            it indicates if the process is <code>retryable</code> or <code>non-retryable</code>. In
            the case of a non-retryable error, refer to the error message for follow-up
            tasks.</p>")
    @as("CreationStatus")
    creationStatus: option<namespaceStatus>,
    @ocaml.doc("<p>The AWS Region that you want to use for the free SPICE capacity for the new namespace.
            This is set to the region that you run CreateNamespace in. </p>")
    @as("CapacityRegion")
    capacityRegion: option<string_>,
    @ocaml.doc("<p>The name of the new namespace that you created.</p>") @as("Name")
    name: option<namespace>,
    @ocaml.doc("<p>The ARN of the QuickSight namespace you created. </p>") @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "CreateNamespaceCommand"
  let make = (~identityStore, ~namespace, ~awsAccountId, ~tags=?, ()) =>
    new({
      tags: tags,
      identityStore: identityStore,
      namespace: namespace,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIAMPolicyAssignment = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace that contains the assignment.</p>") @as("Namespace")
    namespace: namespace,
    @ocaml.doc(
      "<p>The QuickSight users, groups, or both that you want to assign the policy to.</p>"
    )
    @as("Identities")
    identities: option<identityMap>,
    @ocaml.doc("<p>The ARN for the IAM policy to apply to the QuickSight users and groups
			specified in this assignment.</p>")
    @as("PolicyArn")
    policyArn: option<arn>,
    @ocaml.doc("<p>The status of the assignment. Possible values are as follows:</p>
		       <ul>
            <li>
               <p>
                  <code>ENABLED</code> - Anything specified in this assignment is used when creating the data
					source.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> - This assignment isn't used when creating the data source.</p>
            </li>
            <li>
               <p>
                  <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the
					data source.</p>
            </li>
         </ul>")
    @as("AssignmentStatus")
    assignmentStatus: assignmentStatus,
    @ocaml.doc(
      "<p>The name of the assignment, also called a rule. It must be unique within an AWS account.</p>"
    )
    @as("AssignmentName")
    assignmentName: iampolicyAssignmentName,
    @ocaml.doc("<p>The ID of the AWS account where you want to assign an IAM policy to QuickSight users or
			groups.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The QuickSight users, groups, or both that the IAM policy is assigned to.</p>")
    @as("Identities")
    identities: option<identityMap>,
    @ocaml.doc(
      "<p>The ARN for the IAM policy that is applied to the QuickSight users and groups specified in this assignment.</p>"
    )
    @as("PolicyArn")
    policyArn: option<arn>,
    @ocaml.doc("<p>The status of the assignment. Possible values are as follows:</p>
		       <ul>
            <li>
               <p>
                  <code>ENABLED</code> - Anything specified in this assignment is used when creating the data
				source.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> - This assignment isn't used when creating the data source.</p>
            </li>
            <li>
               <p>
                  <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the
				data source.</p>
            </li>
         </ul>")
    @as("AssignmentStatus")
    assignmentStatus: option<assignmentStatus>,
    @ocaml.doc("<p>The ID for the assignment.</p>") @as("AssignmentId")
    assignmentId: option<string_>,
    @ocaml.doc(
      "<p>The name of the assignment. This name must be unique within the AWS account.</p>"
    )
    @as("AssignmentName")
    assignmentName: option<iampolicyAssignmentName>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "CreateIAMPolicyAssignmentCommand"
  let make = (
    ~namespace,
    ~assignmentStatus,
    ~assignmentName,
    ~awsAccountId,
    ~identities=?,
    ~policyArn=?,
    (),
  ) =>
    new({
      namespace: namespace,
      identities: identities,
      policyArn: policyArn,
      assignmentStatus: assignmentStatus,
      assignmentName: assignmentName,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccountCustomization = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the tags that you want to attach to this resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The QuickSight customizations you're adding in the current AWS Region. You can add
            these to an AWS account and a QuickSight namespace. </p>
        <p>For example, you can add a default theme by setting <code>AccountCustomization</code>
            to the midnight theme: <code>\"AccountCustomization\": { \"DefaultTheme\":
                \"arn:aws:quicksight::aws:theme/MIDNIGHT\" }</code>. Or, you can add a custom theme by
            specifying <code>\"AccountCustomization\": { \"DefaultTheme\":
                \"arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639\"
                }</code>. </p>")
    @as("AccountCustomization")
    accountCustomization: accountCustomization,
    @ocaml.doc("<p>The QuickSight namespace that you want to add customizations to.</p>")
    @as("Namespace")
    namespace: option<namespace>,
    @ocaml.doc("<p>The ID for the AWS account that you want to customize QuickSight for.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The QuickSight customizations you're adding in the current AWS Region. </p>")
    @as("AccountCustomization")
    accountCustomization: option<accountCustomization>,
    @ocaml.doc("<p>The namespace associated with the customization you're creating. </p>")
    @as("Namespace")
    namespace: option<namespace>,
    @ocaml.doc("<p>The ID for the AWS account that you want to customize QuickSight for.</p>")
    @as("AwsAccountId")
    awsAccountId: option<awsAccountId>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the customization that you created for this AWS account.</p>"
    )
    @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "CreateAccountCustomizationCommand"
  let make = (~accountCustomization, ~awsAccountId, ~tags=?, ~namespace=?, ()) =>
    new({
      tags: tags,
      accountCustomization: accountCustomization,
      namespace: namespace,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateThemePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>A list of resource permissions to be revoked from the theme.</p>")
    @as("RevokePermissions")
    revokePermissions: option<updateResourcePermissionList>,
    @ocaml.doc("<p>A list of resource permissions to be granted for the theme.</p>")
    @as("GrantPermissions")
    grantPermissions: option<updateResourcePermissionList>,
    @ocaml.doc("<p>The ID for the theme.</p>") @as("ThemeId") themeId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the theme.</p>") @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The resulting list of resource permissions for the theme.</p>")
    @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the theme.</p>") @as("ThemeArn")
    themeArn: option<arn>,
    @ocaml.doc("<p>The ID for the theme.</p>") @as("ThemeId")
    themeId: option<restrictiveResourceId>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "UpdateThemePermissionsCommand"
  let make = (~themeId, ~awsAccountId, ~revokePermissions=?, ~grantPermissions=?, ()) =>
    new({
      revokePermissions: revokePermissions,
      grantPermissions: grantPermissions,
      themeId: themeId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTemplatePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>A list of resource permissions to be revoked from the template. </p>")
    @as("RevokePermissions")
    revokePermissions: option<updateResourcePermissionList>,
    @ocaml.doc("<p>A list of resource permissions to be granted on the template. </p>")
    @as("GrantPermissions")
    grantPermissions: option<updateResourcePermissionList>,
    @ocaml.doc("<p>The ID for the template.</p>") @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the template.</p>") @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>A list of resource permissions to be set on the template.</p>")
    @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the template.</p>") @as("TemplateArn")
    templateArn: option<arn>,
    @ocaml.doc("<p>The ID for the template.</p>") @as("TemplateId")
    templateId: option<restrictiveResourceId>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "UpdateTemplatePermissionsCommand"
  let make = (~templateId, ~awsAccountId, ~revokePermissions=?, ~grantPermissions=?, ()) =>
    new({
      revokePermissions: revokePermissions,
      grantPermissions: grantPermissions,
      templateId: templateId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataSourcePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>A list of resource permissions that you want to revoke on the data source.</p>")
    @as("RevokePermissions")
    revokePermissions: option<resourcePermissionList>,
    @ocaml.doc("<p>A list of resource permissions that you want to grant on the data source.</p>")
    @as("GrantPermissions")
    grantPermissions: option<resourcePermissionList>,
    @ocaml.doc(
      "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account. </p>"
    )
    @as("DataSourceId")
    dataSourceId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc(
      "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSourceId")
    dataSourceId: option<resourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the data source.</p>") @as("DataSourceArn")
    dataSourceArn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "UpdateDataSourcePermissionsCommand"
  let make = (~dataSourceId, ~awsAccountId, ~revokePermissions=?, ~grantPermissions=?, ()) =>
    new({
      revokePermissions: revokePermissions,
      grantPermissions: grantPermissions,
      dataSourceId: dataSourceId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataSetPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The resource permissions that you want to revoke from the dataset.</p>")
    @as("RevokePermissions")
    revokePermissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The resource permissions that you want to grant to the dataset.</p>")
    @as("GrantPermissions")
    grantPermissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The ID for the dataset whose permissions you want to update. This ID is unique per AWS
			Region for each AWS account.</p>")
    @as("DataSetId")
    dataSetId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The ID for the dataset whose permissions you want to update. This ID is unique per AWS
			Region for each AWS account.</p>")
    @as("DataSetId")
    dataSetId: option<resourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") @as("DataSetArn")
    dataSetArn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "UpdateDataSetPermissionsCommand"
  let make = (~dataSetId, ~awsAccountId, ~revokePermissions=?, ~grantPermissions=?, ()) =>
    new({
      revokePermissions: revokePermissions,
      grantPermissions: grantPermissions,
      dataSetId: dataSetId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDashboardPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The permissions that you want to revoke from this resource.</p>")
    @as("RevokePermissions")
    revokePermissions: option<updateResourcePermissionList>,
    @ocaml.doc("<p>The permissions that you want to grant on this resource.</p>")
    @as("GrantPermissions")
    grantPermissions: option<updateResourcePermissionList>,
    @ocaml.doc("<p>The ID for the dashboard.</p>") @as("DashboardId")
    dashboardId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the dashboard whose permissions you're
            updating.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>Information about the permissions on the dashboard.</p>") @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The ID for the dashboard.</p>") @as("DashboardId")
    dashboardId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dashboard.</p>") @as("DashboardArn")
    dashboardArn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "UpdateDashboardPermissionsCommand"
  let make = (~dashboardId, ~awsAccountId, ~revokePermissions=?, ~grantPermissions=?, ()) =>
    new({
      revokePermissions: revokePermissions,
      grantPermissions: grantPermissions,
      dashboardId: dashboardId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAnalysisPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>A structure that describes the permissions to remove and the principal to remove them
            from.</p>")
    @as("RevokePermissions")
    revokePermissions: option<updateResourcePermissionList>,
    @ocaml.doc("<p>A structure that describes the permissions to add and the principal to add them
            to.</p>")
    @as("GrantPermissions")
    grantPermissions: option<updateResourcePermissionList>,
    @ocaml.doc("<p>The ID of the analysis whose permissions you're updating. The ID is part of the
            analysis URL.</p>")
    @as("AnalysisId")
    analysisId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the analysis whose permissions you're
            updating. You must be using the AWS account that the analysis is in.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>A structure that describes the principals and the resource-level permissions on an
            analysis.</p>")
    @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The ID of the analysis that you updated permissions for.</p>") @as("AnalysisId")
    analysisId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the analysis that you updated.</p>")
    @as("AnalysisArn")
    analysisArn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "UpdateAnalysisPermissionsCommand"
  let make = (~analysisId, ~awsAccountId, ~revokePermissions=?, ~grantPermissions=?, ()) =>
    new({
      revokePermissions: revokePermissions,
      grantPermissions: grantPermissions,
      analysisId: analysisId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNamespaces = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The ID for the AWS account that contains the QuickSight namespaces that you want to list.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>A pagination token that can be used in a subsequent request.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The information about the namespaces in this AWS account. The response includes 
        the namespace ARN, name, AWS Region, notification email address, creation status, and 
        identity store.</p>")
    @as("Namespaces")
    namespaces: option<namespaces>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListNamespacesCommand"
  let make = (~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIngestions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<ingestionMaxResults>,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The ID of the dataset used in the ingestion.</p>") @as("DataSetId")
    dataSetId: string_,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of the ingestions.</p>") @as("Ingestions") ingestions: option<ingestions>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListIngestionsCommand"
  let make = (~awsAccountId, ~dataSetId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      awsAccountId: awsAccountId,
      nextToken: nextToken,
      dataSetId: dataSetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataSets = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of dataset summaries.</p>") @as("DataSetSummaries")
    dataSetSummaries: option<dataSetSummaryList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListDataSetsCommand"
  let make = (~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeThemePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the theme that you want to describe permissions for.</p>")
    @as("ThemeId")
    themeId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the theme that you're describing.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>A list of resource permissions set on the theme. </p>") @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the theme.</p>") @as("ThemeArn")
    themeArn: option<arn>,
    @ocaml.doc("<p>The ID for the theme.</p>") @as("ThemeId")
    themeId: option<restrictiveResourceId>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeThemePermissionsCommand"
  let make = (~themeId, ~awsAccountId, ()) => new({themeId: themeId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTemplatePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the template.</p>") @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc(
      "<p>The ID of the AWS account that contains the template that you're describing.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>A list of resource permissions to be set on the template. </p>")
    @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the template.</p>") @as("TemplateArn")
    templateArn: option<arn>,
    @ocaml.doc("<p>The ID for the template.</p>") @as("TemplateId")
    templateId: option<restrictiveResourceId>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeTemplatePermissionsCommand"
  let make = (~templateId, ~awsAccountId, ()) =>
    new({templateId: templateId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIAMPolicyAssignment = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace that contains the assignment.</p>") @as("Namespace")
    namespace: namespace,
    @ocaml.doc("<p>The name of the assignment, also called a rule.</p>") @as("AssignmentName")
    assignmentName: iampolicyAssignmentName,
    @ocaml.doc(
      "<p>The ID of the AWS account that contains the assignment that you want to describe.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>Information describing the IAM policy assignment.</p>")
    @as("IAMPolicyAssignment")
    iampolicyAssignment: option<iampolicyAssignment>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeIAMPolicyAssignmentCommand"
  let make = (~namespace, ~assignmentName, ~awsAccountId, ()) =>
    new({namespace: namespace, assignmentName: assignmentName, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataSourcePermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSourceId")
    dataSourceId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>A list of resource permissions on the data source.</p>") @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc(
      "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSourceId")
    dataSourceId: option<resourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the data source.</p>") @as("DataSourceArn")
    dataSourceArn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeDataSourcePermissionsCommand"
  let make = (~dataSourceId, ~awsAccountId, ()) =>
    new({dataSourceId: dataSourceId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataSetPermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSetId")
    dataSetId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>A list of resource permissions on the dataset.</p>") @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc(
      "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSetId")
    dataSetId: option<resourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") @as("DataSetArn")
    dataSetArn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeDataSetPermissionsCommand"
  let make = (~dataSetId, ~awsAccountId, ()) =>
    new({dataSetId: dataSetId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDashboardPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the dashboard, also added to the IAM policy.</p>") @as("DashboardId")
    dashboardId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the dashboard that you're describing
            permissions for.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>A structure that contains the permissions for the dashboard.</p>")
    @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dashboard.</p>") @as("DashboardArn")
    dashboardArn: option<arn>,
    @ocaml.doc("<p>The ID for the dashboard.</p>") @as("DashboardId")
    dashboardId: option<restrictiveResourceId>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeDashboardPermissionsCommand"
  let make = (~dashboardId, ~awsAccountId, ()) =>
    new({dashboardId: dashboardId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAnalysisPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the analysis whose permissions you're describing. The ID is part of the
            analysis URL.</p>")
    @as("AnalysisId")
    analysisId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the analysis whose permissions you're
            describing. You must be using the AWS account that the analysis is in.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>A structure that describes the principals and the resource-level permissions on an
            analysis.</p>")
    @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the analysis whose permissions you're
            describing.</p>")
    @as("AnalysisArn")
    analysisArn: option<arn>,
    @ocaml.doc("<p>The ID of the analysis whose permissions you're describing.</p>")
    @as("AnalysisId")
    analysisId: option<restrictiveResourceId>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeAnalysisPermissionsCommand"
  let make = (~analysisId, ~awsAccountId, ()) =>
    new({analysisId: analysisId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the analysis that you're describing. The ID is part of the URL of the
            analysis.</p>")
    @as("AnalysisId")
    analysisId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the analysis. You must be using the AWS
            account that the analysis is in.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>A metadata structure that contains summary information for the analysis that you're
            describing.</p>")
    @as("Analysis")
    analysis: option<analysis>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DescribeAnalysisCommand"
  let make = (~analysisId, ~awsAccountId, ()) =>
    new({analysisId: analysisId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTheme = {
  type t
  type request = {
    @ocaml.doc("<p>The theme configuration, which contains the theme display properties.</p>")
    @as("Configuration")
    configuration: option<themeConfiguration>,
    @ocaml.doc("<p>A description of the theme version that you're updating Every time that you call
				<code>UpdateTheme</code>, you create a new version of the theme. Each version of the
			theme maintains a description of the version in <code>VersionDescription</code>.</p>")
    @as("VersionDescription")
    versionDescription: option<versionDescription>,
    @ocaml.doc("<p>The theme ID, defined by Amazon QuickSight, that a custom theme inherits from.
		All themes initially inherit from a default QuickSight theme.</p>")
    @as("BaseThemeId")
    baseThemeId: restrictiveResourceId,
    @ocaml.doc("<p>The name for the theme.</p>") @as("Name") name: option<themeName>,
    @ocaml.doc("<p>The ID for the theme.</p>") @as("ThemeId") themeId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the theme that you're updating.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The creation status of the theme.</p>") @as("CreationStatus")
    creationStatus: option<resourceStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the new version of the theme.</p>")
    @as("VersionArn")
    versionArn: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the theme.</p>") @as("Arn") arn: option<arn>,
    @ocaml.doc("<p>The ID for the theme.</p>") @as("ThemeId")
    themeId: option<restrictiveResourceId>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "UpdateThemeCommand"
  let make = (
    ~baseThemeId,
    ~themeId,
    ~awsAccountId,
    ~configuration=?,
    ~versionDescription=?,
    ~name=?,
    (),
  ) =>
    new({
      configuration: configuration,
      versionDescription: versionDescription,
      baseThemeId: baseThemeId,
      name: name,
      themeId: themeId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The name for the template.</p>") @as("Name") name: option<templateName>,
    @ocaml.doc("<p>A description of the current template version that is being updated. Every time you call
				<code>UpdateTemplate</code>, you create a new version of the template. Each version
			of the template maintains a description of the version in the
				<code>VersionDescription</code> field.</p>")
    @as("VersionDescription")
    versionDescription: option<versionDescription>,
    @ocaml.doc("<p>The entity that you are using as a source when you update the template. In
			<code>SourceEntity</code>, you specify the type of object you're using as source:
			<code>SourceTemplate</code> for a template or <code>SourceAnalysis</code> for an
			analysis. Both of these require an Amazon Resource Name (ARN). For
			<code>SourceTemplate</code>, specify the ARN of the source template. For
			<code>SourceAnalysis</code>, specify the ARN of the source analysis. The <code>SourceTemplate</code>
			ARN can contain any AWS Account and any QuickSight-supported AWS Region. </p>
		       <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> or
			<code>SourceAnalysis</code> to list the replacement datasets for the placeholders listed
			in the original. The schema in each dataset must match its placeholder. </p>")
    @as("SourceEntity")
    sourceEntity: templateSourceEntity,
    @ocaml.doc("<p>The ID for the template.</p>") @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the template that you're updating.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The creation status of the template.</p>") @as("CreationStatus")
    creationStatus: option<resourceStatus>,
    @ocaml.doc(
      "<p>The ARN for the template, including the version information of the first version.</p>"
    )
    @as("VersionArn")
    versionArn: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the template.</p>") @as("Arn")
    arn: option<arn>,
    @ocaml.doc("<p>The ID for the template.</p>") @as("TemplateId")
    templateId: option<restrictiveResourceId>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "UpdateTemplateCommand"
  let make = (~sourceEntity, ~templateId, ~awsAccountId, ~name=?, ~versionDescription=?, ()) =>
    new({
      name: name,
      versionDescription: versionDescription,
      sourceEntity: sourceEntity,
      templateId: templateId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDashboard = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. If
            you add a value for this field, it overrides the value that was originally associated
            with the entity. The theme ARN must exist in the same AWS account where you create the
            dashboard.</p>")
    @as("ThemeArn")
    themeArn: option<arn>,
    @ocaml.doc("<p>Options for publishing the dashboard when you create it:</p>
        <ul>
            <li>
                <p>
                  <code>AvailabilityStatus</code> for <code>AdHocFilteringOption</code> - This
                    status can be either <code>ENABLED</code> or <code>DISABLED</code>. When this is
                    set to <code>DISABLED</code>, QuickSight disables the left filter pane on the
                    published dashboard, which can be used for ad hoc (one-time) filtering. This
                    option is <code>ENABLED</code> by default. </p>
            </li>
            <li>
                <p>
                  <code>AvailabilityStatus</code> for <code>ExportToCSVOption</code> - This
                    status can be either <code>ENABLED</code> or <code>DISABLED</code>. The visual
                    option to export data to .CSV format isn't enabled when this is set to
                    <code>DISABLED</code>. This option is <code>ENABLED</code> by default. </p>
            </li>
            <li>
                <p>
                  <code>VisibilityState</code> for <code>SheetControlsOption</code> - This
                    visibility state can be either <code>COLLAPSED</code> or <code>EXPANDED</code>.
                    This option is <code>COLLAPSED</code> by default. </p>
            </li>
         </ul>")
    @as("DashboardPublishOptions")
    dashboardPublishOptions: option<dashboardPublishOptions>,
    @ocaml.doc("<p>A description for the first version of the dashboard being created.</p>")
    @as("VersionDescription")
    versionDescription: option<versionDescription>,
    @ocaml.doc("<p>A structure that contains the parameters of the dashboard. These are parameter
            overrides for a dashboard. A dashboard can have any type of parameters, and some
            parameters might accept multiple values.</p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>The entity that you are using as a source when you update the dashboard. In
            <code>SourceEntity</code>, you specify the type of object you're using as source. You
            can only update a dashboard from a template, so you use a <code>SourceTemplate</code>
            entity. If you need to update a dashboard from an analysis, first convert the analysis
            to a template by using the <a>CreateTemplate</a> API operation. For
            <code>SourceTemplate</code>, specify the Amazon Resource Name (ARN) of the source
            template. The <code>SourceTemplate</code> ARN can contain any AWS Account and any
            QuickSight-supported AWS Region. </p>
        <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> to
            list the replacement datasets for the placeholders listed in the original. The schema in
            each dataset must match its placeholder. </p>")
    @as("SourceEntity")
    sourceEntity: dashboardSourceEntity,
    @ocaml.doc("<p>The display name of the dashboard.</p>") @as("Name") name: dashboardName,
    @ocaml.doc("<p>The ID for the dashboard.</p>") @as("DashboardId")
    dashboardId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the dashboard that you're
            updating.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The creation status of the request.</p>") @as("CreationStatus")
    creationStatus: option<resourceStatus>,
    @ocaml.doc("<p>The ID for the dashboard.</p>") @as("DashboardId")
    dashboardId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The ARN of the dashboard, including the version number.</p>") @as("VersionArn")
    versionArn: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "UpdateDashboardCommand"
  let make = (
    ~sourceEntity,
    ~name,
    ~dashboardId,
    ~awsAccountId,
    ~themeArn=?,
    ~dashboardPublishOptions=?,
    ~versionDescription=?,
    ~parameters=?,
    (),
  ) =>
    new({
      themeArn: themeArn,
      dashboardPublishOptions: dashboardPublishOptions,
      versionDescription: versionDescription,
      parameters: parameters,
      sourceEntity: sourceEntity,
      name: name,
      dashboardId: dashboardId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the theme to apply to the analysis that you're
            creating. To see the theme in the QuickSight console, make sure that you have access to
            it.</p>")
    @as("ThemeArn")
    themeArn: option<arn>,
    @ocaml.doc("<p>A source entity to use for the analysis that you're updating. This metadata structure
            contains details that describe a source template and one or more datasets.</p>")
    @as("SourceEntity")
    sourceEntity: analysisSourceEntity,
    @ocaml.doc("<p>The parameter names and override values that you want to use. An analysis can have 
            any parameter type, and some parameters might accept multiple values. </p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>A descriptive name for the analysis that you're updating. This name displays for the
            analysis in the QuickSight console.</p>")
    @as("Name")
    name: analysisName,
    @ocaml.doc("<p>The ID for the analysis that you're updating. This ID displays in the URL of the
            analysis.</p>")
    @as("AnalysisId")
    analysisId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the analysis that you're updating.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The update status of the last update that was made to the analysis.</p>")
    @as("UpdateStatus")
    updateStatus: option<resourceStatus>,
    @ocaml.doc("<p>The ID of the analysis.</p>") @as("AnalysisId")
    analysisId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The ARN of the analysis that you're updating.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "UpdateAnalysisCommand"
  let make = (~sourceEntity, ~name, ~analysisId, ~awsAccountId, ~themeArn=?, ~parameters=?, ()) =>
    new({
      themeArn: themeArn,
      sourceEntity: sourceEntity,
      parameters: parameters,
      name: name,
      analysisId: analysisId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDashboard = {
  type t
  type request = {
    @ocaml.doc("<p>The alias name.</p>") @as("AliasName") aliasName: option<aliasName>,
    @ocaml.doc("<p>The version number for the dashboard. If a version number isn't passed, the
            latest published dashboard version is described. </p>")
    @as("VersionNumber")
    versionNumber: option<versionNumber>,
    @ocaml.doc("<p>The ID for the dashboard.</p>") @as("DashboardId")
    dashboardId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the dashboard that you're
            describing.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of this request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>Information about the dashboard.</p>") @as("Dashboard")
    dashboard: option<dashboard>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DescribeDashboardCommand"
  let make = (~dashboardId, ~awsAccountId, ~aliasName=?, ~versionNumber=?, ()) =>
    new({
      aliasName: aliasName,
      versionNumber: versionNumber,
      dashboardId: dashboardId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTheme = {
  type t
  type request = {
    @ocaml.doc("<p>A map of the key-value pairs for the resource tag or tags that you want to add to the
			resource.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A valid grouping of resource permissions to apply to the new theme.
			</p>")
    @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The theme configuration, which contains the theme display properties.</p>")
    @as("Configuration")
    configuration: themeConfiguration,
    @ocaml.doc("<p>A description of the first version of the theme that you're creating. Every time
				<code>UpdateTheme</code> is called, a new version is created. Each version of the
			theme has a description of the version in the <code>VersionDescription</code>
			field.</p>")
    @as("VersionDescription")
    versionDescription: option<versionDescription>,
    @ocaml.doc("<p>The ID of the theme that a custom theme will inherit from. All themes inherit from one of
			the starting themes defined by Amazon QuickSight. For a list of the starting themes, use
				<code>ListThemes</code> or choose <b>Themes</b> from
			within a QuickSight analysis. </p>")
    @as("BaseThemeId")
    baseThemeId: restrictiveResourceId,
    @ocaml.doc("<p>A display name for the theme.</p>") @as("Name") name: themeName,
    @ocaml.doc("<p>An ID for the theme that you want to create. The theme ID is unique per AWS Region in
			each AWS account.</p>")
    @as("ThemeId")
    themeId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account where you want to store the new theme. </p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The theme creation status.</p>") @as("CreationStatus")
    creationStatus: option<resourceStatus>,
    @ocaml.doc("<p>The ID of the theme.</p>") @as("ThemeId") themeId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the new theme.</p>") @as("VersionArn")
    versionArn: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the theme.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "CreateThemeCommand"
  let make = (
    ~configuration,
    ~baseThemeId,
    ~name,
    ~themeId,
    ~awsAccountId,
    ~tags=?,
    ~permissions=?,
    ~versionDescription=?,
    (),
  ) =>
    new({
      tags: tags,
      permissions: permissions,
      configuration: configuration,
      versionDescription: versionDescription,
      baseThemeId: baseThemeId,
      name: name,
      themeId: themeId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the current template version being created. This API operation creates the
			first version of the template. Every time <code>UpdateTemplate</code> is called, a new
			version is created. Each version of the template maintains a description of the version
			in the <code>VersionDescription</code> field.</p>")
    @as("VersionDescription")
    versionDescription: option<versionDescription>,
    @ocaml.doc(
      "<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The entity that you are using as a source when you create the template. In
			<code>SourceEntity</code>, you specify the type of object you're using as source:
			<code>SourceTemplate</code> for a template or <code>SourceAnalysis</code> for an
			analysis. Both of these require an Amazon Resource Name (ARN). For
			<code>SourceTemplate</code>, specify the ARN of the source template. For
			<code>SourceAnalysis</code>, specify the ARN of the source analysis. The <code>SourceTemplate</code>
			ARN can contain any AWS Account and any QuickSight-supported AWS Region. </p>
		       <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> or
			<code>SourceAnalysis</code> to list the replacement datasets for the placeholders listed
			in the original. The schema in each dataset must match its placeholder. </p>")
    @as("SourceEntity")
    sourceEntity: templateSourceEntity,
    @ocaml.doc("<p>A list of resource permissions to be set on the template. </p>")
    @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>A display name for the template.</p>") @as("Name") name: option<templateName>,
    @ocaml.doc("<p>An ID for the template that you want to create. This template is unique per AWS Region in
			each AWS account.</p>")
    @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc("<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS
			account that contains your Amazon QuickSight account.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The template creation status.</p>") @as("CreationStatus")
    creationStatus: option<resourceStatus>,
    @ocaml.doc("<p>The ID of the template.</p>") @as("TemplateId")
    templateId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The ARN for the template, including the version information of
			the first version.</p>")
    @as("VersionArn")
    versionArn: option<arn>,
    @ocaml.doc("<p>The ARN for the template.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "CreateTemplateCommand"
  let make = (
    ~sourceEntity,
    ~templateId,
    ~awsAccountId,
    ~versionDescription=?,
    ~tags=?,
    ~permissions=?,
    ~name=?,
    (),
  ) =>
    new({
      versionDescription: versionDescription,
      tags: tags,
      sourceEntity: sourceEntity,
      permissions: permissions,
      name: name,
      templateId: templateId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDashboard = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. If
            you add a value for this field, it overrides the value that is used in the source
            entity. The theme ARN must exist in the same AWS account where you create the
            dashboard.</p>")
    @as("ThemeArn")
    themeArn: option<arn>,
    @ocaml.doc("<p>Options for publishing the dashboard when you create it:</p>
        <ul>
            <li>
                <p>
                  <code>AvailabilityStatus</code> for <code>AdHocFilteringOption</code> - This
                    status can be either <code>ENABLED</code> or <code>DISABLED</code>. When this is
                    set to <code>DISABLED</code>, QuickSight disables the left filter pane on the
                    published dashboard, which can be used for ad hoc (one-time) filtering. This
                    option is <code>ENABLED</code> by default. </p>
            </li>
            <li>
                <p>
                  <code>AvailabilityStatus</code> for <code>ExportToCSVOption</code> - This
                    status can be either <code>ENABLED</code> or <code>DISABLED</code>. The visual
                    option to export data to .CSV format isn't enabled when this is set to
                    <code>DISABLED</code>. This option is <code>ENABLED</code> by default. </p>
            </li>
            <li>
                <p>
                  <code>VisibilityState</code> for <code>SheetControlsOption</code> - This
                    visibility state can be either <code>COLLAPSED</code> or <code>EXPANDED</code>.
                    This option is <code>COLLAPSED</code> by default. </p>
            </li>
         </ul>")
    @as("DashboardPublishOptions")
    dashboardPublishOptions: option<dashboardPublishOptions>,
    @ocaml.doc("<p>A description for the first version of the dashboard being created.</p>")
    @as("VersionDescription")
    versionDescription: option<versionDescription>,
    @ocaml.doc("<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the
            dashboard.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The entity that you are using as a source when you create the dashboard. In
            <code>SourceEntity</code>, you specify the type of object you're using as source. You
            can only create a dashboard from a template, so you use a <code>SourceTemplate</code>
            entity. If you need to create a dashboard from an analysis, first convert the analysis
            to a template by using the <a>CreateTemplate</a> API operation. For
            <code>SourceTemplate</code>, specify the Amazon Resource Name (ARN) of the source
            template. The <code>SourceTemplate</code>ARN can contain any AWS Account and any
            QuickSight-supported AWS Region. </p>
        <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> to
            list the replacement datasets for the placeholders listed in the original. The schema in
            each dataset must match its placeholder. </p>")
    @as("SourceEntity")
    sourceEntity: dashboardSourceEntity,
    @ocaml.doc("<p>A structure that contains the permissions of the dashboard. You can use this structure
            for granting permissions by providing a list of IAM action information for each
            principal ARN. </p>
      
        <p>To specify no permissions, omit the permissions list.</p>")
    @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The parameters for the creation of the dashboard, which you want to use to override
            the default settings. A dashboard can have any type of parameters, and some parameters
            might accept multiple values. </p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>The display name of the dashboard.</p>") @as("Name") name: dashboardName,
    @ocaml.doc("<p>The ID for the dashboard, also added to the IAM policy.</p>") @as("DashboardId")
    dashboardId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account where you want to create the dashboard.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The status of the dashboard creation request.</p>") @as("CreationStatus")
    creationStatus: option<resourceStatus>,
    @ocaml.doc("<p>The ID for the dashboard.</p>") @as("DashboardId")
    dashboardId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The ARN of the dashboard, including the version number of the first version that is
            created.</p>")
    @as("VersionArn")
    versionArn: option<arn>,
    @ocaml.doc("<p>The ARN of the dashboard.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "CreateDashboardCommand"
  let make = (
    ~sourceEntity,
    ~name,
    ~dashboardId,
    ~awsAccountId,
    ~themeArn=?,
    ~dashboardPublishOptions=?,
    ~versionDescription=?,
    ~tags=?,
    ~permissions=?,
    ~parameters=?,
    (),
  ) =>
    new({
      themeArn: themeArn,
      dashboardPublishOptions: dashboardPublishOptions,
      versionDescription: versionDescription,
      tags: tags,
      sourceEntity: sourceEntity,
      permissions: permissions,
      parameters: parameters,
      name: name,
      dashboardId: dashboardId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the
            analysis.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ARN for the theme to apply to the analysis that you're creating. To see the theme
            in the QuickSight console, make sure that you have access to it.</p>")
    @as("ThemeArn")
    themeArn: option<arn>,
    @ocaml.doc("<p>A source entity to use for the analysis that you're creating. This metadata structure
            contains details that describe a source template and one or more datasets.</p>")
    @as("SourceEntity")
    sourceEntity: analysisSourceEntity,
    @ocaml.doc("<p>A structure that describes the principals and the resource-level permissions on an
            analysis. You can use the <code>Permissions</code> structure to grant permissions by
            providing a list of AWS Identity and Access Management (IAM) action information for each
            principal listed by Amazon Resource Name (ARN). </p>
        
        <p>To specify no permissions, omit <code>Permissions</code>.</p>")
    @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The parameter names and override values that you want to use. An analysis can have 
            any parameter type, and some parameters might accept multiple values. </p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>A descriptive name for the analysis that you're creating. This name displays for the
            analysis in the QuickSight console. </p>")
    @as("Name")
    name: analysisName,
    @ocaml.doc("<p>The ID for the analysis that you're creating. This ID displays in the URL of the
            analysis.</p>")
    @as("AnalysisId")
    analysisId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account where you are creating an analysis.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The status of the creation of the analysis. </p>") @as("CreationStatus")
    creationStatus: option<resourceStatus>,
    @ocaml.doc("<p>The ID of the analysis.</p>") @as("AnalysisId")
    analysisId: option<restrictiveResourceId>,
    @ocaml.doc("<p>The ARN for the analysis.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "CreateAnalysisCommand"
  let make = (
    ~sourceEntity,
    ~name,
    ~analysisId,
    ~awsAccountId,
    ~tags=?,
    ~themeArn=?,
    ~permissions=?,
    ~parameters=?,
    (),
  ) =>
    new({
      tags: tags,
      themeArn: themeArn,
      sourceEntity: sourceEntity,
      permissions: permissions,
      parameters: parameters,
      name: name,
      analysisId: analysisId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataSource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSourceId")
    dataSourceId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The information on the data source.</p>") @as("DataSource")
    dataSource: option<dataSource>,
  }
  @module("@aws-sdk/client-quicksight") @new
  external new: request => t = "DescribeDataSourceCommand"
  let make = (~dataSourceId, ~awsAccountId, ()) =>
    new({dataSourceId: dataSourceId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>Secure Socket Layer (SSL) properties that apply when QuickSight connects to your underlying
			source.</p>")
    @as("SslProperties")
    sslProperties: option<sslProperties>,
    @ocaml.doc("<p>Use this parameter only when you want QuickSight to use a VPC connection when connecting to
			your underlying source.</p>")
    @as("VpcConnectionProperties")
    vpcConnectionProperties: option<vpcConnectionProperties>,
    @ocaml.doc("<p>The credentials that QuickSight that uses to connect to your underlying source. Currently,
			only credentials based on user name and password are supported.</p>")
    @as("Credentials")
    credentials: option<dataSourceCredentials>,
    @ocaml.doc("<p>The parameters that QuickSight uses to connect to your underlying source.</p>")
    @as("DataSourceParameters")
    dataSourceParameters: option<dataSourceParameters>,
    @ocaml.doc("<p>A display name for the data source.</p>") @as("Name") name: resourceName,
    @ocaml.doc(
      "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account. </p>"
    )
    @as("DataSourceId")
    dataSourceId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The update status of the data source's last update.</p>") @as("UpdateStatus")
    updateStatus: option<resourceStatus>,
    @ocaml.doc(
      "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSourceId")
    dataSourceId: option<resourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the data source.</p>") @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "UpdateDataSourceCommand"
  let make = (
    ~name,
    ~dataSourceId,
    ~awsAccountId,
    ~sslProperties=?,
    ~vpcConnectionProperties=?,
    ~credentials=?,
    ~dataSourceParameters=?,
    (),
  ) =>
    new({
      sslProperties: sslProperties,
      vpcConnectionProperties: vpcConnectionProperties,
      credentials: credentials,
      dataSourceParameters: dataSourceParameters,
      name: name,
      dataSourceId: dataSourceId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataSources = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of data sources.</p>") @as("DataSources")
    dataSources: option<dataSourceList>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "ListDataSourcesCommand"
  let make = (~awsAccountId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTheme = {
  type t
  type request = {
    @ocaml.doc("<p>The alias of the theme that you want to describe. If you name a specific alias, you
			describe the version that the alias points to. You can specify the latest version of the
			theme by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
			parameter. The keyword <code>$PUBLISHED</code> doesn't apply to themes.</p>")
    @as("AliasName")
    aliasName: option<aliasName>,
    @ocaml.doc("<p>The version number for the version to describe. If a <code>VersionNumber</code> parameter
			value isn't provided, the latest version of the theme is described.</p>")
    @as("VersionNumber")
    versionNumber: option<versionNumber>,
    @ocaml.doc("<p>The ID for the theme.</p>") @as("ThemeId") themeId: restrictiveResourceId,
    @ocaml.doc("<p>The ID of the AWS account that contains the theme that you're describing.</p>")
    @as("AwsAccountId")
    awsAccountId: awsAndAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The information about the theme that you are describing.</p>") @as("Theme")
    theme: option<theme>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DescribeThemeCommand"
  let make = (~themeId, ~awsAccountId, ~aliasName=?, ~versionNumber=?, ()) =>
    new({
      aliasName: aliasName,
      versionNumber: versionNumber,
      themeId: themeId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataSource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the data source.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>Secure Socket Layer (SSL) properties that apply when QuickSight connects to your underlying source.</p>"
    )
    @as("SslProperties")
    sslProperties: option<sslProperties>,
    @ocaml.doc("<p>Use this parameter only when you want QuickSight to use a VPC connection when connecting to
			your underlying source.</p>")
    @as("VpcConnectionProperties")
    vpcConnectionProperties: option<vpcConnectionProperties>,
    @ocaml.doc("<p>A list of resource permissions on the data source.</p>") @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The credentials QuickSight that uses to connect to your underlying source. Currently, only
			credentials based on user name and password are supported.</p>")
    @as("Credentials")
    credentials: option<dataSourceCredentials>,
    @ocaml.doc("<p>The parameters that QuickSight uses to connect to your underlying source.</p>")
    @as("DataSourceParameters")
    dataSourceParameters: option<dataSourceParameters>,
    @ocaml.doc("<p>The type of the data source. Currently, the supported types for this operation are:
			<code>ATHENA, AURORA, AURORA_POSTGRESQL, AMAZON_ELASTICSEARCH, MARIADB, MYSQL, POSTGRESQL, PRESTO, REDSHIFT, S3,
			SNOWFLAKE, SPARK, SQLSERVER, TERADATA</code>. 
			Use <code>ListDataSources</code> to return a
			list of all data sources.</p>
		       <p>
            <code>AMAZON_ELASTICSEARCH</code> is for Amazon managed Elasticsearch Service.</p>")
    @as("Type")
    type_: dataSourceType,
    @ocaml.doc("<p>A display name for the data source.</p>") @as("Name") name: resourceName,
    @ocaml.doc(
      "<p>An ID for the data source. This ID is unique per AWS Region for each AWS account. </p>"
    )
    @as("DataSourceId")
    dataSourceId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The status of creating the data source.</p>") @as("CreationStatus")
    creationStatus: option<resourceStatus>,
    @ocaml.doc(
      "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSourceId")
    dataSourceId: option<resourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the data source.</p>") @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "CreateDataSourceCommand"
  let make = (
    ~type_,
    ~name,
    ~dataSourceId,
    ~awsAccountId,
    ~tags=?,
    ~sslProperties=?,
    ~vpcConnectionProperties=?,
    ~permissions=?,
    ~credentials=?,
    ~dataSourceParameters=?,
    (),
  ) =>
    new({
      tags: tags,
      sslProperties: sslProperties,
      vpcConnectionProperties: vpcConnectionProperties,
      permissions: permissions,
      credentials: credentials,
      dataSourceParameters: dataSourceParameters,
      type_: type_,
      name: name,
      dataSourceId: dataSourceId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataSet = {
  type t
  type request = {
    @ocaml.doc("<p>A set of one or more definitions of a <code>
               <a>ColumnLevelPermissionRule</a>
            </code>.</p>")
    @as("ColumnLevelPermissionRules")
    columnLevelPermissionRules: option<columnLevelPermissionRuleList>,
    @ocaml.doc("<p>The row-level security configuration for the data you want to create.</p>")
    @as("RowLevelPermissionDataSet")
    rowLevelPermissionDataSet: option<rowLevelPermissionDataSet>,
    @ocaml.doc("<p>The folder that contains fields and nested subfolders for your dataset.</p>")
    @as("FieldFolders")
    fieldFolders: option<fieldFolderMap>,
    @ocaml.doc(
      "<p>Groupings of columns that work together in certain QuickSight features. Currently, only geospatial hierarchy is supported.</p>"
    )
    @as("ColumnGroups")
    columnGroups: option<columnGroupList>,
    @ocaml.doc("<p>Indicates whether you want to import the data into SPICE.</p>") @as("ImportMode")
    importMode: dataSetImportMode,
    @ocaml.doc(
      "<p>Configures the combination and transformation of the data from the physical tables.</p>"
    )
    @as("LogicalTableMap")
    logicalTableMap: option<logicalTableMap>,
    @ocaml.doc(
      "<p>Declares the physical tables that are available in the underlying data sources.</p>"
    )
    @as("PhysicalTableMap")
    physicalTableMap: physicalTableMap,
    @ocaml.doc("<p>The display name for the dataset.</p>") @as("Name") name: resourceName,
    @ocaml.doc("<p>The ID for the dataset that you want to update. This ID is unique per AWS Region for each
			AWS account.</p>")
    @as("DataSetId")
    dataSetId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The ID of the ingestion, which is triggered as a result of dataset creation if the import
			mode is SPICE.</p>")
    @as("IngestionId")
    ingestionId: option<resourceId>,
    @ocaml.doc("<p>The ARN for the ingestion, which is triggered as a result of dataset creation if the import
			mode is SPICE.</p>")
    @as("IngestionArn")
    ingestionArn: option<arn>,
    @ocaml.doc(
      "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSetId")
    dataSetId: option<resourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "UpdateDataSetCommand"
  let make = (
    ~importMode,
    ~physicalTableMap,
    ~name,
    ~dataSetId,
    ~awsAccountId,
    ~columnLevelPermissionRules=?,
    ~rowLevelPermissionDataSet=?,
    ~fieldFolders=?,
    ~columnGroups=?,
    ~logicalTableMap=?,
    (),
  ) =>
    new({
      columnLevelPermissionRules: columnLevelPermissionRules,
      rowLevelPermissionDataSet: rowLevelPermissionDataSet,
      fieldFolders: fieldFolders,
      columnGroups: columnGroups,
      importMode: importMode,
      logicalTableMap: logicalTableMap,
      physicalTableMap: physicalTableMap,
      name: name,
      dataSetId: dataSetId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The alias of the template that you want to describe. If you name a specific alias, you
			describe the version that the alias points to. You can specify the latest version of the
			template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
			parameter. The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>")
    @as("AliasName")
    aliasName: option<aliasName>,
    @ocaml.doc("<p>(Optional) The number for the version to describe. If a <code>VersionNumber</code> parameter
			value isn't provided, the latest version of the template is described.</p>")
    @as("VersionNumber")
    versionNumber: option<versionNumber>,
    @ocaml.doc("<p>The ID for the template.</p>") @as("TemplateId")
    templateId: restrictiveResourceId,
    @ocaml.doc(
      "<p>The ID of the AWS account that contains the template that you're describing.</p>"
    )
    @as("AwsAccountId")
    awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The template structure for the object you want to describe.</p>") @as("Template")
    template: option<template>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DescribeTemplateCommand"
  let make = (~templateId, ~awsAccountId, ~aliasName=?, ~versionNumber=?, ()) =>
    new({
      aliasName: aliasName,
      versionNumber: versionNumber,
      templateId: templateId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the dataset.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A set of one or more definitions of a <code>
               <a>ColumnLevelPermissionRule</a>
            </code>.</p>")
    @as("ColumnLevelPermissionRules")
    columnLevelPermissionRules: option<columnLevelPermissionRuleList>,
    @ocaml.doc("<p>The row-level security configuration for the data that you want to create.</p>")
    @as("RowLevelPermissionDataSet")
    rowLevelPermissionDataSet: option<rowLevelPermissionDataSet>,
    @ocaml.doc("<p>A list of resource permissions on the dataset.</p>") @as("Permissions")
    permissions: option<resourcePermissionList>,
    @ocaml.doc("<p>The folder that contains fields and nested subfolders for your dataset.</p>")
    @as("FieldFolders")
    fieldFolders: option<fieldFolderMap>,
    @ocaml.doc(
      "<p>Groupings of columns that work together in certain QuickSight features. Currently, only geospatial hierarchy is supported.</p>"
    )
    @as("ColumnGroups")
    columnGroups: option<columnGroupList>,
    @ocaml.doc("<p>Indicates whether you want to import the data into SPICE.</p>") @as("ImportMode")
    importMode: dataSetImportMode,
    @ocaml.doc(
      "<p>Configures the combination and transformation of the data from the physical tables.</p>"
    )
    @as("LogicalTableMap")
    logicalTableMap: option<logicalTableMap>,
    @ocaml.doc(
      "<p>Declares the physical tables that are available in the underlying data sources.</p>"
    )
    @as("PhysicalTableMap")
    physicalTableMap: physicalTableMap,
    @ocaml.doc("<p>The display name for the dataset.</p>") @as("Name") name: resourceName,
    @ocaml.doc(
      "<p>An ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSetId")
    dataSetId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>The ID of the ingestion, which is triggered as a result of dataset creation if the import
			mode is SPICE.</p>")
    @as("IngestionId")
    ingestionId: option<resourceId>,
    @ocaml.doc("<p>The ARN for the ingestion, which is triggered as a result of dataset creation if the import
			mode is SPICE.</p>")
    @as("IngestionArn")
    ingestionArn: option<arn>,
    @ocaml.doc(
      "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSetId")
    dataSetId: option<resourceId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "CreateDataSetCommand"
  let make = (
    ~importMode,
    ~physicalTableMap,
    ~name,
    ~dataSetId,
    ~awsAccountId,
    ~tags=?,
    ~columnLevelPermissionRules=?,
    ~rowLevelPermissionDataSet=?,
    ~permissions=?,
    ~fieldFolders=?,
    ~columnGroups=?,
    ~logicalTableMap=?,
    (),
  ) =>
    new({
      tags: tags,
      columnLevelPermissionRules: columnLevelPermissionRules,
      rowLevelPermissionDataSet: rowLevelPermissionDataSet,
      permissions: permissions,
      fieldFolders: fieldFolders,
      columnGroups: columnGroups,
      importMode: importMode,
      logicalTableMap: logicalTableMap,
      physicalTableMap: physicalTableMap,
      name: name,
      dataSetId: dataSetId,
      awsAccountId: awsAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
    )
    @as("DataSetId")
    dataSetId: resourceId,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AwsAccountId") awsAccountId: awsAccountId,
  }
  type response = {
    @ocaml.doc("<p>The HTTP status of the request.</p>") @as("Status") status: option<statusCode>,
    @ocaml.doc("<p>The AWS request ID for this operation.</p>") @as("RequestId")
    requestId: option<string_>,
    @ocaml.doc("<p>Information on the dataset.</p>") @as("DataSet") dataSet: option<dataSet>,
  }
  @module("@aws-sdk/client-quicksight") @new external new: request => t = "DescribeDataSetCommand"
  let make = (~dataSetId, ~awsAccountId, ()) =>
    new({dataSetId: dataSetId, awsAccountId: awsAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
