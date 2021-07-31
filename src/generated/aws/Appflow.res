type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type zendeskConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("GREATER_THAN") #GREATER_THAN | @as("PROJECTION") #PROJECTION]
type writeOperationType = [@as("UPDATE") #UPDATE | @as("UPSERT") #UPSERT | @as("INSERT") #INSERT]
type warehouse = string
type veevaMetadata = unit
type veevaConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO | @as("EQUAL_TO") #EQUAL_TO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("CONTAINS") #CONTAINS | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("PROJECTION") #PROJECTION]
type value = string
type username = string
type upsolverMetadata = unit
type upsolverBucketName = string
type updatedBy = string
type triggerType = [@as("OnDemand") #OnDemand | @as("Event") #Event | @as("Scheduled") #Scheduled]
type trendmicroMetadata = unit
type trendmicroConnectorProfileProperties = unit
type trendmicroConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("EQUAL_TO") #EQUAL_TO | @as("PROJECTION") #PROJECTION]
type timezone = string
type taskType = [@as("Validate") #Validate | @as("Truncate") #Truncate | @as("Merge") #Merge | @as("Mask") #Mask | @as("Map") #Map | @as("Filter") #Filter | @as("Arithmetic") #Arithmetic]
type tagValue = string
type tagKey = string
type amazonawsString = string
type stage = string
type slackConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("EQUAL_TO") #EQUAL_TO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("PROJECTION") #PROJECTION]
type singularMetadata = unit
type singularConnectorProfileProperties = unit
type singularConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("EQUAL_TO") #EQUAL_TO | @as("PROJECTION") #PROJECTION]
type serviceNowMetadata = unit
type serviceNowConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO | @as("EQUAL_TO") #EQUAL_TO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("CONTAINS") #CONTAINS | @as("PROJECTION") #PROJECTION]
type secretKey = string
type scheduleOffset = float;
type scheduleFrequencyType = [@as("ONCE") #ONCE | @as("MONTHLY") #MONTHLY | @as("WEEKLY") #WEEKLY | @as("DAILY") #DAILY | @as("HOURLY") #HOURLY | @as("BYMINUTE") #BYMINUTE]
type scheduleExpression = string
type salesforceConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO | @as("EQUAL_TO") #EQUAL_TO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("CONTAINS") #CONTAINS | @as("LESS_THAN") #LESS_THAN | @as("PROJECTION") #PROJECTION]
type s3Metadata = unit
type s3ConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO | @as("EQUAL_TO") #EQUAL_TO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("PROJECTION") #PROJECTION]
type roleArn = string
type region = string
type refreshToken = string
type redshiftMetadata = unit
type redirectUri = string
type property = string
type privateLinkServiceName = string
type prefixType = [@as("PATH_AND_FILENAME") #PATH_AND_FILENAME | @as("PATH") #PATH | @as("FILENAME") #FILENAME]
type prefixFormat = [@as("MINUTE") #MINUTE | @as("HOUR") #HOUR | @as("DAY") #DAY | @as("MONTH") #MONTH | @as("YEAR") #YEAR]
type password = string
type operatorPropertiesKeys = [@as("SUBFIELD_CATEGORY_MAP") #SUBFIELD_CATEGORY_MAP | @as("CONCAT_FORMAT") #CONCAT_FORMAT | @as("MATH_OPERATION_FIELDS_ORDER") #MATH_OPERATION_FIELDS_ORDER | @as("TRUNCATE_LENGTH") #TRUNCATE_LENGTH | @as("MASK_LENGTH") #MASK_LENGTH | @as("MASK_VALUE") #MASK_VALUE | @as("VALIDATION_ACTION") #VALIDATION_ACTION | @as("DESTINATION_DATA_TYPE") #DESTINATION_DATA_TYPE | @as("SOURCE_DATA_TYPE") #SOURCE_DATA_TYPE | @as("LOWER_BOUND") #LOWER_BOUND | @as("UPPER_BOUND") #UPPER_BOUND | @as("DATA_TYPE") #DATA_TYPE | @as("VALUES") #VALUES | @as("VALUE") #VALUE]
type operator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO | @as("EQUAL_TO") #EQUAL_TO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("CONTAINS") #CONTAINS | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("PROJECTION") #PROJECTION]
type objectTypeName = string
type object = string
type oAuthScope = string
type nextToken = string
type name = string
type mostRecentExecutionMessage = string
type maxResults = int;
type marketoMetadata = unit
type marketoConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("PROJECTION") #PROJECTION]
type lookoutMetricsDestinationProperties = unit
type amazonawsLong = float;
type label = string
type key = string
type kMSArn = string
type instanceUrl = string
type inforNexusMetadata = unit
type inforNexusConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("EQUAL_TO") #EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("PROJECTION") #PROJECTION]
type identifier = string
type honeycodeConnectorProfileProperties = unit
type group = string
type googleAnalyticsConnectorProfileProperties = unit
type googleAnalyticsConnectorOperator = [@as("BETWEEN") #BETWEEN | @as("PROJECTION") #PROJECTION]
type flowStatusMessage = string
type flowStatus = [@as("Suspended") #Suspended | @as("Errored") #Errored | @as("Draft") #Draft | @as("Deleted") #Deleted | @as("Deprecated") #Deprecated | @as("Active") #Active]
type flowName = string
type flowDescription = string
type flowArn = string
type fileType = [@as("PARQUET") #PARQUET | @as("JSON") #JSON | @as("CSV") #CSV]
type fieldType = string
type executionStatus = [@as("Error") #Error | @as("Successful") #Successful | @as("InProgress") #InProgress]
type executionMessage = string
type executionId = string
type eventBridgeMetadata = unit
type errorMessage = string
type entitiesPath = string
type dynatraceMetadata = unit
type dynatraceConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("EQUAL_TO") #EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("PROJECTION") #PROJECTION]
type domainName = string
type destinationField = string
type description = string
type datetimeTypeFieldName = string
type date = Js.Date.t;
type datadogMetadata = unit
type datadogConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("EQUAL_TO") #EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("PROJECTION") #PROJECTION]
type databaseUrl = string
type dataPullMode = [@as("Complete") #Complete | @as("Incremental") #Incremental]
type customerProfilesMetadata = unit
type createdBy = string
type connectorType = [@as("CustomerProfiles") #CustomerProfiles | @as("Honeycode") #Honeycode | @as("Upsolver") #Upsolver | @as("LookoutMetrics") #LookoutMetrics | @as("EventBridge") #EventBridge | @as("Veeva") #Veeva | @as("Amplitude") #Amplitude | @as("Infornexus") #Infornexus | @as("Dynatrace") #Dynatrace | @as("Snowflake") #Snowflake | @as("Trendmicro") #Trendmicro | @as("Datadog") #Datadog | @as("Servicenow") #Servicenow | @as("Zendesk") #Zendesk | @as("Googleanalytics") #Googleanalytics | @as("Marketo") #Marketo | @as("S3") #S3 | @as("Redshift") #Redshift | @as("Slack") #Slack | @as("Singular") #Singular | @as("Salesforce") #Salesforce]
type connectorProfileName = string
type connectorProfileArn = string
type connectionMode = [@as("Private") #Private | @as("Public") #Public]
type clientSecret = string
type clientId = string
type clientCredentialsArn = string
type bucketPrefix = string
type bucketName = string
type amazonawsBoolean = bool;
type authCode = string
type applicationKey = string
type apiToken = string
type apiSecretKey = string
type apiKey = string
type amplitudeMetadata = unit
type amplitudeConnectorProfileProperties = unit
type amplitudeConnectorOperator = [@as("BETWEEN") #BETWEEN]
type aggregationType = [@as("SingleFile") #SingleFile | @as("None") #None]
type accountName = string
type accessToken = string
type accessKeyId = string
type aRN = string
type zendeskSourceProperties = {
@as("object") object: option<object>
}
type zendeskConnectorProfileProperties = {
@as("instanceUrl") instanceUrl: option<instanceUrl>
}
type veevaSourceProperties = {
@as("object") object: option<object>
}
type veevaConnectorProfileProperties = {
@as("instanceUrl") instanceUrl: option<instanceUrl>
}
type veevaConnectorProfileCredentials = {
@as("password") password: option<password>,
@as("username") username: option<username>
}
type triggerTypeList = array<triggerType>
type trendmicroSourceProperties = {
@as("object") object: option<object>
}
type trendmicroConnectorProfileCredentials = {
@as("apiSecretKey") apiSecretKey: option<apiSecretKey>
}
type taskPropertiesMap = Js.Dict.t< property>
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type supportedWriteOperationList = array<writeOperationType>
type supportedValueList = array<value>
type sourceFields = array<amazonawsString>
type sourceFieldProperties = {
@as("isQueryable") isQueryable: amazonawsBoolean,
@as("isRetrievable") isRetrievable: amazonawsBoolean
}
type snowflakeConnectorProfileProperties = {
@as("region") region: region,
@as("accountName") accountName: accountName,
@as("privateLinkServiceName") privateLinkServiceName: privateLinkServiceName,
@as("bucketPrefix") bucketPrefix: bucketPrefix,
@as("bucketName") bucketName: option<bucketName>,
@as("stage") stage: option<stage>,
@as("warehouse") warehouse: option<warehouse>
}
type snowflakeConnectorProfileCredentials = {
@as("password") password: option<password>,
@as("username") username: option<username>
}
type slackSourceProperties = {
@as("object") object: option<object>
}
type slackConnectorProfileProperties = {
@as("instanceUrl") instanceUrl: option<instanceUrl>
}
type singularSourceProperties = {
@as("object") object: option<object>
}
type singularConnectorProfileCredentials = {
@as("apiKey") apiKey: option<apiKey>
}
type serviceNowSourceProperties = {
@as("object") object: option<object>
}
type serviceNowConnectorProfileProperties = {
@as("instanceUrl") instanceUrl: option<instanceUrl>
}
type serviceNowConnectorProfileCredentials = {
@as("password") password: option<password>,
@as("username") username: option<username>
}
type schedulingFrequencyTypeList = array<scheduleFrequencyType>
type scheduledTriggerProperties = {
@as("firstExecutionFrom") firstExecutionFrom: date,
@as("scheduleOffset") scheduleOffset: scheduleOffset,
@as("timezone") timezone: timezone,
@as("scheduleEndTime") scheduleEndTime: date,
@as("scheduleStartTime") scheduleStartTime: date,
@as("dataPullMode") dataPullMode: dataPullMode,
@as("scheduleExpression") scheduleExpression: option<scheduleExpression>
}
type salesforceSourceProperties = {
@as("includeDeletedRecords") includeDeletedRecords: amazonawsBoolean,
@as("enableDynamicFieldUpdate") enableDynamicFieldUpdate: amazonawsBoolean,
@as("object") object: option<object>
}
type salesforceConnectorProfileProperties = {
@as("isSandboxEnvironment") isSandboxEnvironment: amazonawsBoolean,
@as("instanceUrl") instanceUrl: instanceUrl
}
type s3SourceProperties = {
@as("bucketPrefix") bucketPrefix: bucketPrefix,
@as("bucketName") bucketName: option<bucketName>
}
type regionList = array<region>
type redshiftConnectorProfileProperties = {
@as("roleArn") roleArn: option<roleArn>,
@as("bucketPrefix") bucketPrefix: bucketPrefix,
@as("bucketName") bucketName: option<bucketName>,
@as("databaseUrl") databaseUrl: option<databaseUrl>
}
type redshiftConnectorProfileCredentials = {
@as("password") password: option<password>,
@as("username") username: option<username>
}
type prefixConfig = {
@as("prefixFormat") prefixFormat: prefixFormat,
@as("prefixType") prefixType: prefixType
}
type oAuthScopeList = array<oAuthScope>
type marketoSourceProperties = {
@as("object") object: option<object>
}
type marketoConnectorProfileProperties = {
@as("instanceUrl") instanceUrl: option<instanceUrl>
}
type inforNexusSourceProperties = {
@as("object") object: option<object>
}
type inforNexusConnectorProfileProperties = {
@as("instanceUrl") instanceUrl: option<instanceUrl>
}
type inforNexusConnectorProfileCredentials = {
@as("datakey") datakey: option<key>,
@as("secretAccessKey") secretAccessKey: option<key>,
@as("userId") userId: option<username>,
@as("accessKeyId") accessKeyId: option<accessKeyId>
}
type incrementalPullConfig = {
@as("datetimeTypeFieldName") datetimeTypeFieldName: datetimeTypeFieldName
}
type idFieldNameList = array<name>
type googleAnalyticsSourceProperties = {
@as("object") object: option<object>
}
type filterOperatorList = array<operator>
type executionDetails = {
@as("mostRecentExecutionStatus") mostRecentExecutionStatus: executionStatus,
@as("mostRecentExecutionTime") mostRecentExecutionTime: date,
@as("mostRecentExecutionMessage") mostRecentExecutionMessage: mostRecentExecutionMessage
}
type errorInfo = {
@as("executionMessage") executionMessage: executionMessage,
@as("putFailuresCount") putFailuresCount: amazonawsLong
}
type errorHandlingConfig = {
@as("bucketName") bucketName: bucketName,
@as("bucketPrefix") bucketPrefix: bucketPrefix,
@as("failOnFirstDestinationError") failOnFirstDestinationError: amazonawsBoolean
}
type dynatraceSourceProperties = {
@as("object") object: option<object>
}
type dynatraceConnectorProfileProperties = {
@as("instanceUrl") instanceUrl: option<instanceUrl>
}
type dynatraceConnectorProfileCredentials = {
@as("apiToken") apiToken: option<apiToken>
}
type datadogSourceProperties = {
@as("object") object: option<object>
}
type datadogConnectorProfileProperties = {
@as("instanceUrl") instanceUrl: option<instanceUrl>
}
type datadogConnectorProfileCredentials = {
@as("applicationKey") applicationKey: option<applicationKey>,
@as("apiKey") apiKey: option<apiKey>
}
type customerProfilesDestinationProperties = {
@as("objectTypeName") objectTypeName: objectTypeName,
@as("domainName") domainName: option<domainName>
}
type connectorTypeList = array<connectorType>
type connectorProfileNameList = array<connectorProfileName>
type connectorOperator = {
@as("Zendesk") zendesk: zendeskConnectorOperator,
@as("Veeva") veeva: veevaConnectorOperator,
@as("Trendmicro") trendmicro: trendmicroConnectorOperator,
@as("Slack") slack: slackConnectorOperator,
@as("Singular") singular: singularConnectorOperator,
@as("ServiceNow") serviceNow: serviceNowConnectorOperator,
@as("Salesforce") salesforce: salesforceConnectorOperator,
@as("S3") s3: s3ConnectorOperator,
@as("Marketo") marketo: marketoConnectorOperator,
@as("InforNexus") inforNexus: inforNexusConnectorOperator,
@as("GoogleAnalytics") googleAnalytics: googleAnalyticsConnectorOperator,
@as("Dynatrace") dynatrace: dynatraceConnectorOperator,
@as("Datadog") datadog: datadogConnectorOperator,
@as("Amplitude") amplitude: amplitudeConnectorOperator
}
type connectorOAuthRequest = {
@as("redirectUri") redirectUri: redirectUri,
@as("authCode") authCode: authCode
}
type connectorEntity = {
@as("hasNestedEntities") hasNestedEntities: amazonawsBoolean,
@as("label") label: label,
@as("name") name: option<name>
}
type amplitudeSourceProperties = {
@as("object") object: option<object>
}
type amplitudeConnectorProfileCredentials = {
@as("secretKey") secretKey: option<secretKey>,
@as("apiKey") apiKey: option<apiKey>
}
type aggregationConfig = {
@as("aggregationType") aggregationType: aggregationType
}
type zendeskMetadata = {
@as("oAuthScopes") oAuthScopes: oAuthScopeList
}
type zendeskDestinationProperties = {
@as("writeOperationType") writeOperationType: writeOperationType,
@as("errorHandlingConfig") errorHandlingConfig: errorHandlingConfig,
@as("idFieldNames") idFieldNames: idFieldNameList,
@as("object") object: option<object>
}
type zendeskConnectorProfileCredentials = {
@as("oAuthRequest") oAuthRequest: connectorOAuthRequest,
@as("accessToken") accessToken: accessToken,
@as("clientSecret") clientSecret: option<clientSecret>,
@as("clientId") clientId: option<clientId>
}
type upsolverS3OutputFormatConfig = {
@as("aggregationConfig") aggregationConfig: aggregationConfig,
@as("prefixConfig") prefixConfig: option<prefixConfig>,
@as("fileType") fileType: fileType
}
type triggerProperties = {
@as("Scheduled") scheduled: scheduledTriggerProperties
}
type task = {
@as("taskProperties") taskProperties: taskPropertiesMap,
@as("taskType") taskType: option<taskType>,
@as("destinationField") destinationField: destinationField,
@as("connectorOperator") connectorOperator: connectorOperator,
@as("sourceFields") sourceFields: option<sourceFields>
}
type sourceConnectorProperties = {
@as("Zendesk") zendesk: zendeskSourceProperties,
@as("Veeva") veeva: veevaSourceProperties,
@as("Trendmicro") trendmicro: trendmicroSourceProperties,
@as("Slack") slack: slackSourceProperties,
@as("Singular") singular: singularSourceProperties,
@as("ServiceNow") serviceNow: serviceNowSourceProperties,
@as("Salesforce") salesforce: salesforceSourceProperties,
@as("S3") s3: s3SourceProperties,
@as("Marketo") marketo: marketoSourceProperties,
@as("InforNexus") inforNexus: inforNexusSourceProperties,
@as("GoogleAnalytics") googleAnalytics: googleAnalyticsSourceProperties,
@as("Dynatrace") dynatrace: dynatraceSourceProperties,
@as("Datadog") datadog: datadogSourceProperties,
@as("Amplitude") amplitude: amplitudeSourceProperties
}
type snowflakeMetadata = {
@as("supportedRegions") supportedRegions: regionList
}
type snowflakeDestinationProperties = {
@as("errorHandlingConfig") errorHandlingConfig: errorHandlingConfig,
@as("bucketPrefix") bucketPrefix: bucketPrefix,
@as("intermediateBucketName") intermediateBucketName: option<bucketName>,
@as("object") object: option<object>
}
type slackMetadata = {
@as("oAuthScopes") oAuthScopes: oAuthScopeList
}
type slackConnectorProfileCredentials = {
@as("oAuthRequest") oAuthRequest: connectorOAuthRequest,
@as("accessToken") accessToken: accessToken,
@as("clientSecret") clientSecret: option<clientSecret>,
@as("clientId") clientId: option<clientId>
}
type salesforceMetadata = {
@as("oAuthScopes") oAuthScopes: oAuthScopeList
}
type salesforceDestinationProperties = {
@as("writeOperationType") writeOperationType: writeOperationType,
@as("errorHandlingConfig") errorHandlingConfig: errorHandlingConfig,
@as("idFieldNames") idFieldNames: idFieldNameList,
@as("object") object: option<object>
}
type salesforceConnectorProfileCredentials = {
@as("clientCredentialsArn") clientCredentialsArn: clientCredentialsArn,
@as("oAuthRequest") oAuthRequest: connectorOAuthRequest,
@as("refreshToken") refreshToken: refreshToken,
@as("accessToken") accessToken: accessToken
}
type s3OutputFormatConfig = {
@as("aggregationConfig") aggregationConfig: aggregationConfig,
@as("prefixConfig") prefixConfig: prefixConfig,
@as("fileType") fileType: fileType
}
type redshiftDestinationProperties = {
@as("errorHandlingConfig") errorHandlingConfig: errorHandlingConfig,
@as("bucketPrefix") bucketPrefix: bucketPrefix,
@as("intermediateBucketName") intermediateBucketName: option<bucketName>,
@as("object") object: option<object>
}
type marketoConnectorProfileCredentials = {
@as("oAuthRequest") oAuthRequest: connectorOAuthRequest,
@as("accessToken") accessToken: accessToken,
@as("clientSecret") clientSecret: option<clientSecret>,
@as("clientId") clientId: option<clientId>
}
type honeycodeMetadata = {
@as("oAuthScopes") oAuthScopes: oAuthScopeList
}
type honeycodeDestinationProperties = {
@as("errorHandlingConfig") errorHandlingConfig: errorHandlingConfig,
@as("object") object: option<object>
}
type honeycodeConnectorProfileCredentials = {
@as("oAuthRequest") oAuthRequest: connectorOAuthRequest,
@as("refreshToken") refreshToken: refreshToken,
@as("accessToken") accessToken: accessToken
}
type googleAnalyticsMetadata = {
@as("oAuthScopes") oAuthScopes: oAuthScopeList
}
type googleAnalyticsConnectorProfileCredentials = {
@as("oAuthRequest") oAuthRequest: connectorOAuthRequest,
@as("refreshToken") refreshToken: refreshToken,
@as("accessToken") accessToken: accessToken,
@as("clientSecret") clientSecret: option<clientSecret>,
@as("clientId") clientId: option<clientId>
}
type flowDefinition = {
@as("lastRunExecutionDetails") lastRunExecutionDetails: executionDetails,
@as("tags") tags: tagMap,
@as("lastUpdatedBy") lastUpdatedBy: updatedBy,
@as("createdBy") createdBy: createdBy,
@as("lastUpdatedAt") lastUpdatedAt: date,
@as("createdAt") createdAt: date,
@as("triggerType") triggerType: triggerType,
@as("destinationConnectorType") destinationConnectorType: connectorType,
@as("sourceConnectorType") sourceConnectorType: connectorType,
@as("flowStatus") flowStatus: flowStatus,
@as("flowName") flowName: flowName,
@as("description") description: flowDescription,
@as("flowArn") flowArn: flowArn
}
type fieldTypeDetails = {
@as("supportedValues") supportedValues: supportedValueList,
@as("filterOperators") filterOperators: option<filterOperatorList>,
@as("fieldType") fieldType: option<fieldType>
}
type executionResult = {
@as("recordsProcessed") recordsProcessed: amazonawsLong,
@as("bytesWritten") bytesWritten: amazonawsLong,
@as("bytesProcessed") bytesProcessed: amazonawsLong,
@as("errorInfo") errorInfo: errorInfo
}
type eventBridgeDestinationProperties = {
@as("errorHandlingConfig") errorHandlingConfig: errorHandlingConfig,
@as("object") object: option<object>
}
type destinationFieldProperties = {
@as("supportedWriteOperations") supportedWriteOperations: supportedWriteOperationList,
@as("isUpdatable") isUpdatable: amazonawsBoolean,
@as("isUpsertable") isUpsertable: amazonawsBoolean,
@as("isNullable") isNullable: amazonawsBoolean,
@as("isCreatable") isCreatable: amazonawsBoolean
}
type connectorProfileProperties = {
@as("Zendesk") zendesk: zendeskConnectorProfileProperties,
@as("Veeva") veeva: veevaConnectorProfileProperties,
@as("Trendmicro") trendmicro: trendmicroConnectorProfileProperties,
@as("Snowflake") snowflake: snowflakeConnectorProfileProperties,
@as("Slack") slack: slackConnectorProfileProperties,
@as("Singular") singular: singularConnectorProfileProperties,
@as("ServiceNow") serviceNow: serviceNowConnectorProfileProperties,
@as("Salesforce") salesforce: salesforceConnectorProfileProperties,
@as("Redshift") redshift: redshiftConnectorProfileProperties,
@as("Marketo") marketo: marketoConnectorProfileProperties,
@as("InforNexus") inforNexus: inforNexusConnectorProfileProperties,
@as("Honeycode") honeycode: honeycodeConnectorProfileProperties,
@as("GoogleAnalytics") googleAnalytics: googleAnalyticsConnectorProfileProperties,
@as("Dynatrace") dynatrace: dynatraceConnectorProfileProperties,
@as("Datadog") datadog: datadogConnectorProfileProperties,
@as("Amplitude") amplitude: amplitudeConnectorProfileProperties
}
type connectorEntityList = array<connectorEntity>
type upsolverDestinationProperties = {
@as("s3OutputFormatConfig") s3OutputFormatConfig: option<upsolverS3OutputFormatConfig>,
@as("bucketPrefix") bucketPrefix: bucketPrefix,
@as("bucketName") bucketName: option<upsolverBucketName>
}
type triggerConfig = {
@as("triggerProperties") triggerProperties: triggerProperties,
@as("triggerType") triggerType: option<triggerType>
}
type tasks = array<task>
type supportedFieldTypeDetails = {
@as("v1") v1: option<fieldTypeDetails>
}
type sourceFlowConfig = {
@as("incrementalPullConfig") incrementalPullConfig: incrementalPullConfig,
@as("sourceConnectorProperties") sourceConnectorProperties: option<sourceConnectorProperties>,
@as("connectorProfileName") connectorProfileName: connectorProfileName,
@as("connectorType") connectorType: option<connectorType>
}
type s3DestinationProperties = {
@as("s3OutputFormatConfig") s3OutputFormatConfig: s3OutputFormatConfig,
@as("bucketPrefix") bucketPrefix: bucketPrefix,
@as("bucketName") bucketName: option<bucketName>
}
type flowList = array<flowDefinition>
type executionRecord = {
@as("dataPullEndTime") dataPullEndTime: date,
@as("dataPullStartTime") dataPullStartTime: date,
@as("lastUpdatedAt") lastUpdatedAt: date,
@as("startedAt") startedAt: date,
@as("executionResult") executionResult: executionResult,
@as("executionStatus") executionStatus: executionStatus,
@as("executionId") executionId: executionId
}
type connectorProfileCredentials = {
@as("Zendesk") zendesk: zendeskConnectorProfileCredentials,
@as("Veeva") veeva: veevaConnectorProfileCredentials,
@as("Trendmicro") trendmicro: trendmicroConnectorProfileCredentials,
@as("Snowflake") snowflake: snowflakeConnectorProfileCredentials,
@as("Slack") slack: slackConnectorProfileCredentials,
@as("Singular") singular: singularConnectorProfileCredentials,
@as("ServiceNow") serviceNow: serviceNowConnectorProfileCredentials,
@as("Salesforce") salesforce: salesforceConnectorProfileCredentials,
@as("Redshift") redshift: redshiftConnectorProfileCredentials,
@as("Marketo") marketo: marketoConnectorProfileCredentials,
@as("InforNexus") inforNexus: inforNexusConnectorProfileCredentials,
@as("Honeycode") honeycode: honeycodeConnectorProfileCredentials,
@as("GoogleAnalytics") googleAnalytics: googleAnalyticsConnectorProfileCredentials,
@as("Dynatrace") dynatrace: dynatraceConnectorProfileCredentials,
@as("Datadog") datadog: datadogConnectorProfileCredentials,
@as("Amplitude") amplitude: amplitudeConnectorProfileCredentials
}
type connectorProfile = {
@as("lastUpdatedAt") lastUpdatedAt: date,
@as("createdAt") createdAt: date,
@as("connectorProfileProperties") connectorProfileProperties: connectorProfileProperties,
@as("credentialsArn") credentialsArn: aRN,
@as("connectionMode") connectionMode: connectionMode,
@as("connectorType") connectorType: connectorType,
@as("connectorProfileName") connectorProfileName: connectorProfileName,
@as("connectorProfileArn") connectorProfileArn: connectorProfileArn
}
type connectorMetadata = {
@as("Honeycode") honeycode: honeycodeMetadata,
@as("CustomerProfiles") customerProfiles: customerProfilesMetadata,
@as("Upsolver") upsolver: upsolverMetadata,
@as("EventBridge") eventBridge: eventBridgeMetadata,
@as("Zendesk") zendesk: zendeskMetadata,
@as("Veeva") veeva: veevaMetadata,
@as("Trendmicro") trendmicro: trendmicroMetadata,
@as("Snowflake") snowflake: snowflakeMetadata,
@as("Slack") slack: slackMetadata,
@as("Singular") singular: singularMetadata,
@as("ServiceNow") serviceNow: serviceNowMetadata,
@as("Salesforce") salesforce: salesforceMetadata,
@as("S3") s3: s3Metadata,
@as("Redshift") redshift: redshiftMetadata,
@as("Marketo") marketo: marketoMetadata,
@as("InforNexus") inforNexus: inforNexusMetadata,
@as("GoogleAnalytics") googleAnalytics: googleAnalyticsMetadata,
@as("Dynatrace") dynatrace: dynatraceMetadata,
@as("Datadog") datadog: datadogMetadata,
@as("Amplitude") amplitude: amplitudeMetadata
}
type connectorEntityMap = Js.Dict.t< connectorEntityList>
type flowExecutionList = array<executionRecord>
type destinationConnectorProperties = {
@as("Zendesk") zendesk: zendeskDestinationProperties,
@as("CustomerProfiles") customerProfiles: customerProfilesDestinationProperties,
@as("Honeycode") honeycode: honeycodeDestinationProperties,
@as("Upsolver") upsolver: upsolverDestinationProperties,
@as("LookoutMetrics") lookoutMetrics: lookoutMetricsDestinationProperties,
@as("EventBridge") eventBridge: eventBridgeDestinationProperties,
@as("Snowflake") snowflake: snowflakeDestinationProperties,
@as("Salesforce") salesforce: salesforceDestinationProperties,
@as("S3") s3: s3DestinationProperties,
@as("Redshift") redshift: redshiftDestinationProperties
}
type connectorProfileDetailList = array<connectorProfile>
type connectorProfileConfig = {
@as("connectorProfileCredentials") connectorProfileCredentials: option<connectorProfileCredentials>,
@as("connectorProfileProperties") connectorProfileProperties: option<connectorProfileProperties>
}
type connectorEntityField = {
@as("destinationProperties") destinationProperties: destinationFieldProperties,
@as("sourceProperties") sourceProperties: sourceFieldProperties,
@as("description") description: description,
@as("supportedFieldTypeDetails") supportedFieldTypeDetails: supportedFieldTypeDetails,
@as("label") label: label,
@as("identifier") identifier: option<identifier>
}
type connectorConfiguration = {
@as("connectorMetadata") connectorMetadata: connectorMetadata,
@as("supportedTriggerTypes") supportedTriggerTypes: triggerTypeList,
@as("isPrivateLinkEndpointUrlRequired") isPrivateLinkEndpointUrlRequired: amazonawsBoolean,
@as("isPrivateLinkEnabled") isPrivateLinkEnabled: amazonawsBoolean,
@as("supportedSchedulingFrequencies") supportedSchedulingFrequencies: schedulingFrequencyTypeList,
@as("supportedDestinationConnectors") supportedDestinationConnectors: connectorTypeList,
@as("canUseAsDestination") canUseAsDestination: amazonawsBoolean,
@as("canUseAsSource") canUseAsSource: amazonawsBoolean
}
type destinationFlowConfig = {
@as("destinationConnectorProperties") destinationConnectorProperties: option<destinationConnectorProperties>,
@as("connectorProfileName") connectorProfileName: connectorProfileName,
@as("connectorType") connectorType: option<connectorType>
}
type connectorEntityFieldList = array<connectorEntityField>
type connectorConfigurationsMap = Js.Dict.t< connectorConfiguration>
type destinationFlowConfigList = array<destinationFlowConfig>
type clientType;
@module("@aws-sdk/client-appflow") @new external createClient: unit => clientType = "AppflowClient";
module StopFlow = {
  type t;
  type request = {
@as("flowName") flowName: option<flowName>
}
  type response = {
@as("flowStatus") flowStatus: flowStatus,
@as("flowArn") flowArn: flowArn
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "StopFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartFlow = {
  type t;
  type request = {
@as("flowName") flowName: option<flowName>
}
  type response = {
@as("executionId") executionId: executionId,
@as("flowStatus") flowStatus: flowStatus,
@as("flowArn") flowArn: flowArn
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "StartFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFlow = {
  type t;
  type request = {
@as("forceDelete") forceDelete: amazonawsBoolean,
@as("flowName") flowName: option<flowName>
}
  type response = unit
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "DeleteFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConnectorProfile = {
  type t;
  type request = {
@as("forceDelete") forceDelete: amazonawsBoolean,
@as("connectorProfileName") connectorProfileName: option<connectorProfileName>
}
  type response = unit
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "DeleteConnectorProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<aRN>
}
  type response = unit
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<aRN>
}
  type response = unit
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<aRN>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFlows = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("flows") flows: flowList
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "ListFlowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConnectorEntities = {
  type t;
  type request = {
@as("entitiesPath") entitiesPath: entitiesPath,
@as("connectorType") connectorType: connectorType,
@as("connectorProfileName") connectorProfileName: connectorProfileName
}
  type response = {
@as("connectorEntityMap") connectorEntityMap: option<connectorEntityMap>
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "ListConnectorEntitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConnectorProfile = {
  type t;
  type request = {
@as("connectorProfileConfig") connectorProfileConfig: option<connectorProfileConfig>,
@as("connectionMode") connectionMode: option<connectionMode>,
@as("connectorProfileName") connectorProfileName: option<connectorProfileName>
}
  type response = {
@as("connectorProfileArn") connectorProfileArn: connectorProfileArn
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "UpdateConnectorProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFlowExecutionRecords = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("flowName") flowName: option<flowName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("flowExecutions") flowExecutions: flowExecutionList
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "DescribeFlowExecutionRecordsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectorProfiles = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("connectorType") connectorType: connectorType,
@as("connectorProfileNames") connectorProfileNames: connectorProfileNameList
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("connectorProfileDetails") connectorProfileDetails: connectorProfileDetailList
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "DescribeConnectorProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConnectorProfile = {
  type t;
  type request = {
@as("connectorProfileConfig") connectorProfileConfig: option<connectorProfileConfig>,
@as("connectionMode") connectionMode: option<connectionMode>,
@as("connectorType") connectorType: option<connectorType>,
@as("kmsArn") kmsArn: kMSArn,
@as("connectorProfileName") connectorProfileName: option<connectorProfileName>
}
  type response = {
@as("connectorProfileArn") connectorProfileArn: connectorProfileArn
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "CreateConnectorProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectors = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("connectorTypes") connectorTypes: connectorTypeList
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("connectorConfigurations") connectorConfigurations: connectorConfigurationsMap
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "DescribeConnectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectorEntity = {
  type t;
  type request = {
@as("connectorProfileName") connectorProfileName: connectorProfileName,
@as("connectorType") connectorType: connectorType,
@as("connectorEntityName") connectorEntityName: option<name>
}
  type response = {
@as("connectorEntityFields") connectorEntityFields: option<connectorEntityFieldList>
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "DescribeConnectorEntityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFlow = {
  type t;
  type request = {
@as("tasks") tasks: option<tasks>,
@as("destinationFlowConfigList") destinationFlowConfigList: option<destinationFlowConfigList>,
@as("sourceFlowConfig") sourceFlowConfig: sourceFlowConfig,
@as("triggerConfig") triggerConfig: option<triggerConfig>,
@as("description") description: flowDescription,
@as("flowName") flowName: option<flowName>
}
  type response = {
@as("flowStatus") flowStatus: flowStatus
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "UpdateFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFlow = {
  type t;
  type request = {
@as("flowName") flowName: option<flowName>
}
  type response = {
@as("tags") tags: tagMap,
@as("lastUpdatedBy") lastUpdatedBy: updatedBy,
@as("createdBy") createdBy: createdBy,
@as("lastUpdatedAt") lastUpdatedAt: date,
@as("createdAt") createdAt: date,
@as("tasks") tasks: tasks,
@as("triggerConfig") triggerConfig: triggerConfig,
@as("lastRunExecutionDetails") lastRunExecutionDetails: executionDetails,
@as("destinationFlowConfigList") destinationFlowConfigList: destinationFlowConfigList,
@as("sourceFlowConfig") sourceFlowConfig: sourceFlowConfig,
@as("flowStatusMessage") flowStatusMessage: flowStatusMessage,
@as("flowStatus") flowStatus: flowStatus,
@as("kmsArn") kmsArn: kMSArn,
@as("flowName") flowName: flowName,
@as("description") description: flowDescription,
@as("flowArn") flowArn: flowArn
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "DescribeFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFlow = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("tasks") tasks: option<tasks>,
@as("destinationFlowConfigList") destinationFlowConfigList: option<destinationFlowConfigList>,
@as("sourceFlowConfig") sourceFlowConfig: option<sourceFlowConfig>,
@as("triggerConfig") triggerConfig: option<triggerConfig>,
@as("kmsArn") kmsArn: kMSArn,
@as("description") description: flowDescription,
@as("flowName") flowName: option<flowName>
}
  type response = {
@as("flowStatus") flowStatus: flowStatus,
@as("flowArn") flowArn: flowArn
}
  @module("@aws-sdk/client-appflow") @new external new_: (Js.Promise.t<request>) => t = "CreateFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
