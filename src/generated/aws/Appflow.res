type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-appflow") @new external createClient: unit => awsServiceClient = "AppflowClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
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
type string_ = string
type stage = string
type slackConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("EQUAL_TO") #EQUAL_TO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("PROJECTION") #PROJECTION]
type singularMetadata = unit
type singularConnectorProfileProperties = unit
type singularConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("EQUAL_TO") #EQUAL_TO | @as("PROJECTION") #PROJECTION]
type serviceNowMetadata = unit
type serviceNowConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO | @as("EQUAL_TO") #EQUAL_TO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("CONTAINS") #CONTAINS | @as("PROJECTION") #PROJECTION]
type secretKey = string
type scheduleOffset = float
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
type object_ = string
type oauthScope = string
type nextToken = string
type name = string
type mostRecentExecutionMessage = string
type maxResults = int
type marketoMetadata = unit
type marketoConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("PROJECTION") #PROJECTION]
type lookoutMetricsDestinationProperties = unit
type long = float
type label = string
type key = string
type kmsarn = string
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
type boolean_ = bool
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
type arn = string
type zendeskSourceProperties = {
@as("object") object_: object_
}
type zendeskConnectorProfileProperties = {
instanceUrl: instanceUrl
}
type veevaSourceProperties = {
@as("object") object_: object_
}
type veevaConnectorProfileProperties = {
instanceUrl: instanceUrl
}
type veevaConnectorProfileCredentials = {
password: password,
  username: username
}
type triggerTypeList = array<triggerType>
type trendmicroSourceProperties = {
@as("object") object_: object_
}
type trendmicroConnectorProfileCredentials = {
apiSecretKey: apiSecretKey
}
type taskPropertiesMap = Js.Dict.t<property>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type supportedWriteOperationList = array<writeOperationType>
type supportedValueList = array<value>
type sourceFields = array<string_>
type sourceFieldProperties = {
isQueryable: option<boolean_>,
  isRetrievable: option<boolean_>
}
type snowflakeConnectorProfileProperties = {
region: option<region>,
  accountName: option<accountName>,
  privateLinkServiceName: option<privateLinkServiceName>,
  bucketPrefix: option<bucketPrefix>,
  bucketName: bucketName,
  stage: stage,
  warehouse: warehouse
}
type snowflakeConnectorProfileCredentials = {
password: password,
  username: username
}
type slackSourceProperties = {
@as("object") object_: object_
}
type slackConnectorProfileProperties = {
instanceUrl: instanceUrl
}
type singularSourceProperties = {
@as("object") object_: object_
}
type singularConnectorProfileCredentials = {
apiKey: apiKey
}
type serviceNowSourceProperties = {
@as("object") object_: object_
}
type serviceNowConnectorProfileProperties = {
instanceUrl: instanceUrl
}
type serviceNowConnectorProfileCredentials = {
password: password,
  username: username
}
type schedulingFrequencyTypeList = array<scheduleFrequencyType>
type scheduledTriggerProperties = {
firstExecutionFrom: option<date>,
  scheduleOffset: option<scheduleOffset>,
  timezone: option<timezone>,
  scheduleEndTime: option<date>,
  scheduleStartTime: option<date>,
  dataPullMode: option<dataPullMode>,
  scheduleExpression: scheduleExpression
}
type salesforceSourceProperties = {
includeDeletedRecords: option<boolean_>,
  enableDynamicFieldUpdate: option<boolean_>,
  @as("object") object_: object_
}
type salesforceConnectorProfileProperties = {
isSandboxEnvironment: option<boolean_>,
  instanceUrl: option<instanceUrl>
}
type s3SourceProperties = {
bucketPrefix: option<bucketPrefix>,
  bucketName: bucketName
}
type regionList = array<region>
type redshiftConnectorProfileProperties = {
roleArn: roleArn,
  bucketPrefix: option<bucketPrefix>,
  bucketName: bucketName,
  databaseUrl: databaseUrl
}
type redshiftConnectorProfileCredentials = {
password: password,
  username: username
}
type prefixConfig = {
prefixFormat: option<prefixFormat>,
  prefixType: option<prefixType>
}
type oauthScopeList = array<oauthScope>
type marketoSourceProperties = {
@as("object") object_: object_
}
type marketoConnectorProfileProperties = {
instanceUrl: instanceUrl
}
type inforNexusSourceProperties = {
@as("object") object_: object_
}
type inforNexusConnectorProfileProperties = {
instanceUrl: instanceUrl
}
type inforNexusConnectorProfileCredentials = {
datakey: key,
  secretAccessKey: key,
  userId: username,
  accessKeyId: accessKeyId
}
type incrementalPullConfig = {
datetimeTypeFieldName: option<datetimeTypeFieldName>
}
type idFieldNameList = array<name>
type googleAnalyticsSourceProperties = {
@as("object") object_: object_
}
type filterOperatorList = array<operator>
type executionDetails = {
mostRecentExecutionStatus: option<executionStatus>,
  mostRecentExecutionTime: option<date>,
  mostRecentExecutionMessage: option<mostRecentExecutionMessage>
}
type errorInfo = {
executionMessage: option<executionMessage>,
  putFailuresCount: option<long>
}
type errorHandlingConfig = {
bucketName: option<bucketName>,
  bucketPrefix: option<bucketPrefix>,
  failOnFirstDestinationError: option<boolean_>
}
type dynatraceSourceProperties = {
@as("object") object_: object_
}
type dynatraceConnectorProfileProperties = {
instanceUrl: instanceUrl
}
type dynatraceConnectorProfileCredentials = {
apiToken: apiToken
}
type datadogSourceProperties = {
@as("object") object_: object_
}
type datadogConnectorProfileProperties = {
instanceUrl: instanceUrl
}
type datadogConnectorProfileCredentials = {
applicationKey: applicationKey,
  apiKey: apiKey
}
type customerProfilesDestinationProperties = {
objectTypeName: option<objectTypeName>,
  domainName: domainName
}
type connectorTypeList = array<connectorType>
type connectorProfileNameList = array<connectorProfileName>
type connectorOperator = {
@as("Zendesk") zendesk: option<zendeskConnectorOperator>,
  @as("Veeva") veeva: option<veevaConnectorOperator>,
  @as("Trendmicro") trendmicro: option<trendmicroConnectorOperator>,
  @as("Slack") slack: option<slackConnectorOperator>,
  @as("Singular") singular: option<singularConnectorOperator>,
  @as("ServiceNow") serviceNow: option<serviceNowConnectorOperator>,
  @as("Salesforce") salesforce: option<salesforceConnectorOperator>,
  @as("S3") s3: option<s3ConnectorOperator>,
  @as("Marketo") marketo: option<marketoConnectorOperator>,
  @as("InforNexus") inforNexus: option<inforNexusConnectorOperator>,
  @as("GoogleAnalytics") googleAnalytics: option<googleAnalyticsConnectorOperator>,
  @as("Dynatrace") dynatrace: option<dynatraceConnectorOperator>,
  @as("Datadog") datadog: option<datadogConnectorOperator>,
  @as("Amplitude") amplitude: option<amplitudeConnectorOperator>
}
type connectorOAuthRequest = {
redirectUri: option<redirectUri>,
  authCode: option<authCode>
}
type connectorEntity = {
hasNestedEntities: option<boolean_>,
  label: option<label>,
  name: name
}
type amplitudeSourceProperties = {
@as("object") object_: object_
}
type amplitudeConnectorProfileCredentials = {
secretKey: secretKey,
  apiKey: apiKey
}
type aggregationConfig = {
aggregationType: option<aggregationType>
}
type zendeskMetadata = {
oAuthScopes: option<oauthScopeList>
}
type zendeskDestinationProperties = {
writeOperationType: option<writeOperationType>,
  errorHandlingConfig: option<errorHandlingConfig>,
  idFieldNames: option<idFieldNameList>,
  @as("object") object_: object_
}
type zendeskConnectorProfileCredentials = {
oAuthRequest: option<connectorOAuthRequest>,
  accessToken: option<accessToken>,
  clientSecret: clientSecret,
  clientId: clientId
}
type upsolverS3OutputFormatConfig = {
aggregationConfig: option<aggregationConfig>,
  prefixConfig: prefixConfig,
  fileType: option<fileType>
}
type triggerProperties = {
@as("Scheduled") scheduled: option<scheduledTriggerProperties>
}
type task = {
taskProperties: option<taskPropertiesMap>,
  taskType: taskType,
  destinationField: option<destinationField>,
  connectorOperator: option<connectorOperator>,
  sourceFields: sourceFields
}
type sourceConnectorProperties = {
@as("Zendesk") zendesk: option<zendeskSourceProperties>,
  @as("Veeva") veeva: option<veevaSourceProperties>,
  @as("Trendmicro") trendmicro: option<trendmicroSourceProperties>,
  @as("Slack") slack: option<slackSourceProperties>,
  @as("Singular") singular: option<singularSourceProperties>,
  @as("ServiceNow") serviceNow: option<serviceNowSourceProperties>,
  @as("Salesforce") salesforce: option<salesforceSourceProperties>,
  @as("S3") s3: option<s3SourceProperties>,
  @as("Marketo") marketo: option<marketoSourceProperties>,
  @as("InforNexus") inforNexus: option<inforNexusSourceProperties>,
  @as("GoogleAnalytics") googleAnalytics: option<googleAnalyticsSourceProperties>,
  @as("Dynatrace") dynatrace: option<dynatraceSourceProperties>,
  @as("Datadog") datadog: option<datadogSourceProperties>,
  @as("Amplitude") amplitude: option<amplitudeSourceProperties>
}
type snowflakeMetadata = {
supportedRegions: option<regionList>
}
type snowflakeDestinationProperties = {
errorHandlingConfig: option<errorHandlingConfig>,
  bucketPrefix: option<bucketPrefix>,
  intermediateBucketName: bucketName,
  @as("object") object_: object_
}
type slackMetadata = {
oAuthScopes: option<oauthScopeList>
}
type slackConnectorProfileCredentials = {
oAuthRequest: option<connectorOAuthRequest>,
  accessToken: option<accessToken>,
  clientSecret: clientSecret,
  clientId: clientId
}
type salesforceMetadata = {
oAuthScopes: option<oauthScopeList>
}
type salesforceDestinationProperties = {
writeOperationType: option<writeOperationType>,
  errorHandlingConfig: option<errorHandlingConfig>,
  idFieldNames: option<idFieldNameList>,
  @as("object") object_: object_
}
type salesforceConnectorProfileCredentials = {
clientCredentialsArn: option<clientCredentialsArn>,
  oAuthRequest: option<connectorOAuthRequest>,
  refreshToken: option<refreshToken>,
  accessToken: option<accessToken>
}
type s3OutputFormatConfig = {
aggregationConfig: option<aggregationConfig>,
  prefixConfig: option<prefixConfig>,
  fileType: option<fileType>
}
type redshiftDestinationProperties = {
errorHandlingConfig: option<errorHandlingConfig>,
  bucketPrefix: option<bucketPrefix>,
  intermediateBucketName: bucketName,
  @as("object") object_: object_
}
type marketoConnectorProfileCredentials = {
oAuthRequest: option<connectorOAuthRequest>,
  accessToken: option<accessToken>,
  clientSecret: clientSecret,
  clientId: clientId
}
type honeycodeMetadata = {
oAuthScopes: option<oauthScopeList>
}
type honeycodeDestinationProperties = {
errorHandlingConfig: option<errorHandlingConfig>,
  @as("object") object_: object_
}
type honeycodeConnectorProfileCredentials = {
oAuthRequest: option<connectorOAuthRequest>,
  refreshToken: option<refreshToken>,
  accessToken: option<accessToken>
}
type googleAnalyticsMetadata = {
oAuthScopes: option<oauthScopeList>
}
type googleAnalyticsConnectorProfileCredentials = {
oAuthRequest: option<connectorOAuthRequest>,
  refreshToken: option<refreshToken>,
  accessToken: option<accessToken>,
  clientSecret: clientSecret,
  clientId: clientId
}
type flowDefinition = {
lastRunExecutionDetails: option<executionDetails>,
  tags: option<tagMap>,
  lastUpdatedBy: option<updatedBy>,
  createdBy: option<createdBy>,
  lastUpdatedAt: option<date>,
  createdAt: option<date>,
  triggerType: option<triggerType>,
  destinationConnectorType: option<connectorType>,
  sourceConnectorType: option<connectorType>,
  flowStatus: option<flowStatus>,
  flowName: option<flowName>,
  description: option<flowDescription>,
  flowArn: option<flowArn>
}
type fieldTypeDetails = {
supportedValues: option<supportedValueList>,
  filterOperators: filterOperatorList,
  fieldType: fieldType
}
type executionResult = {
recordsProcessed: option<long>,
  bytesWritten: option<long>,
  bytesProcessed: option<long>,
  errorInfo: option<errorInfo>
}
type eventBridgeDestinationProperties = {
errorHandlingConfig: option<errorHandlingConfig>,
  @as("object") object_: object_
}
type destinationFieldProperties = {
supportedWriteOperations: option<supportedWriteOperationList>,
  isUpdatable: option<boolean_>,
  isUpsertable: option<boolean_>,
  isNullable: option<boolean_>,
  isCreatable: option<boolean_>
}
type connectorProfileProperties = {
@as("Zendesk") zendesk: option<zendeskConnectorProfileProperties>,
  @as("Veeva") veeva: option<veevaConnectorProfileProperties>,
  @as("Trendmicro") trendmicro: option<trendmicroConnectorProfileProperties>,
  @as("Snowflake") snowflake: option<snowflakeConnectorProfileProperties>,
  @as("Slack") slack: option<slackConnectorProfileProperties>,
  @as("Singular") singular: option<singularConnectorProfileProperties>,
  @as("ServiceNow") serviceNow: option<serviceNowConnectorProfileProperties>,
  @as("Salesforce") salesforce: option<salesforceConnectorProfileProperties>,
  @as("Redshift") redshift: option<redshiftConnectorProfileProperties>,
  @as("Marketo") marketo: option<marketoConnectorProfileProperties>,
  @as("InforNexus") inforNexus: option<inforNexusConnectorProfileProperties>,
  @as("Honeycode") honeycode: option<honeycodeConnectorProfileProperties>,
  @as("GoogleAnalytics") googleAnalytics: option<googleAnalyticsConnectorProfileProperties>,
  @as("Dynatrace") dynatrace: option<dynatraceConnectorProfileProperties>,
  @as("Datadog") datadog: option<datadogConnectorProfileProperties>,
  @as("Amplitude") amplitude: option<amplitudeConnectorProfileProperties>
}
type connectorEntityList = array<connectorEntity>
type upsolverDestinationProperties = {
s3OutputFormatConfig: upsolverS3OutputFormatConfig,
  bucketPrefix: option<bucketPrefix>,
  bucketName: upsolverBucketName
}
type triggerConfig = {
triggerProperties: option<triggerProperties>,
  triggerType: triggerType
}
type tasks = array<task>
type supportedFieldTypeDetails = {
v1: fieldTypeDetails
}
type sourceFlowConfig = {
incrementalPullConfig: option<incrementalPullConfig>,
  sourceConnectorProperties: sourceConnectorProperties,
  connectorProfileName: option<connectorProfileName>,
  connectorType: connectorType
}
type s3DestinationProperties = {
s3OutputFormatConfig: option<s3OutputFormatConfig>,
  bucketPrefix: option<bucketPrefix>,
  bucketName: bucketName
}
type flowList = array<flowDefinition>
type executionRecord = {
dataPullEndTime: option<date>,
  dataPullStartTime: option<date>,
  lastUpdatedAt: option<date>,
  startedAt: option<date>,
  executionResult: option<executionResult>,
  executionStatus: option<executionStatus>,
  executionId: option<executionId>
}
type connectorProfileCredentials = {
@as("Zendesk") zendesk: option<zendeskConnectorProfileCredentials>,
  @as("Veeva") veeva: option<veevaConnectorProfileCredentials>,
  @as("Trendmicro") trendmicro: option<trendmicroConnectorProfileCredentials>,
  @as("Snowflake") snowflake: option<snowflakeConnectorProfileCredentials>,
  @as("Slack") slack: option<slackConnectorProfileCredentials>,
  @as("Singular") singular: option<singularConnectorProfileCredentials>,
  @as("ServiceNow") serviceNow: option<serviceNowConnectorProfileCredentials>,
  @as("Salesforce") salesforce: option<salesforceConnectorProfileCredentials>,
  @as("Redshift") redshift: option<redshiftConnectorProfileCredentials>,
  @as("Marketo") marketo: option<marketoConnectorProfileCredentials>,
  @as("InforNexus") inforNexus: option<inforNexusConnectorProfileCredentials>,
  @as("Honeycode") honeycode: option<honeycodeConnectorProfileCredentials>,
  @as("GoogleAnalytics") googleAnalytics: option<googleAnalyticsConnectorProfileCredentials>,
  @as("Dynatrace") dynatrace: option<dynatraceConnectorProfileCredentials>,
  @as("Datadog") datadog: option<datadogConnectorProfileCredentials>,
  @as("Amplitude") amplitude: option<amplitudeConnectorProfileCredentials>
}
type connectorProfile = {
lastUpdatedAt: option<date>,
  createdAt: option<date>,
  connectorProfileProperties: option<connectorProfileProperties>,
  credentialsArn: option<arn>,
  connectionMode: option<connectionMode>,
  connectorType: option<connectorType>,
  connectorProfileName: option<connectorProfileName>,
  connectorProfileArn: option<connectorProfileArn>
}
type connectorMetadata = {
@as("Honeycode") honeycode: option<honeycodeMetadata>,
  @as("CustomerProfiles") customerProfiles: option<customerProfilesMetadata>,
  @as("Upsolver") upsolver: option<upsolverMetadata>,
  @as("EventBridge") eventBridge: option<eventBridgeMetadata>,
  @as("Zendesk") zendesk: option<zendeskMetadata>,
  @as("Veeva") veeva: option<veevaMetadata>,
  @as("Trendmicro") trendmicro: option<trendmicroMetadata>,
  @as("Snowflake") snowflake: option<snowflakeMetadata>,
  @as("Slack") slack: option<slackMetadata>,
  @as("Singular") singular: option<singularMetadata>,
  @as("ServiceNow") serviceNow: option<serviceNowMetadata>,
  @as("Salesforce") salesforce: option<salesforceMetadata>,
  @as("S3") s3: option<s3Metadata>,
  @as("Redshift") redshift: option<redshiftMetadata>,
  @as("Marketo") marketo: option<marketoMetadata>,
  @as("InforNexus") inforNexus: option<inforNexusMetadata>,
  @as("GoogleAnalytics") googleAnalytics: option<googleAnalyticsMetadata>,
  @as("Dynatrace") dynatrace: option<dynatraceMetadata>,
  @as("Datadog") datadog: option<datadogMetadata>,
  @as("Amplitude") amplitude: option<amplitudeMetadata>
}
type connectorEntityMap = Js.Dict.t<connectorEntityList>
type flowExecutionList = array<executionRecord>
type destinationConnectorProperties = {
@as("Zendesk") zendesk: option<zendeskDestinationProperties>,
  @as("CustomerProfiles") customerProfiles: option<customerProfilesDestinationProperties>,
  @as("Honeycode") honeycode: option<honeycodeDestinationProperties>,
  @as("Upsolver") upsolver: option<upsolverDestinationProperties>,
  @as("LookoutMetrics") lookoutMetrics: option<lookoutMetricsDestinationProperties>,
  @as("EventBridge") eventBridge: option<eventBridgeDestinationProperties>,
  @as("Snowflake") snowflake: option<snowflakeDestinationProperties>,
  @as("Salesforce") salesforce: option<salesforceDestinationProperties>,
  @as("S3") s3: option<s3DestinationProperties>,
  @as("Redshift") redshift: option<redshiftDestinationProperties>
}
type connectorProfileDetailList = array<connectorProfile>
type connectorProfileConfig = {
connectorProfileCredentials: connectorProfileCredentials,
  connectorProfileProperties: connectorProfileProperties
}
type connectorEntityField = {
destinationProperties: option<destinationFieldProperties>,
  sourceProperties: option<sourceFieldProperties>,
  description: option<description>,
  supportedFieldTypeDetails: option<supportedFieldTypeDetails>,
  label: option<label>,
  identifier: identifier
}
type connectorConfiguration = {
connectorMetadata: option<connectorMetadata>,
  supportedTriggerTypes: option<triggerTypeList>,
  isPrivateLinkEndpointUrlRequired: option<boolean_>,
  isPrivateLinkEnabled: option<boolean_>,
  supportedSchedulingFrequencies: option<schedulingFrequencyTypeList>,
  supportedDestinationConnectors: option<connectorTypeList>,
  canUseAsDestination: option<boolean_>,
  canUseAsSource: option<boolean_>
}
type destinationFlowConfig = {
destinationConnectorProperties: destinationConnectorProperties,
  connectorProfileName: option<connectorProfileName>,
  connectorType: connectorType
}
type connectorEntityFieldList = array<connectorEntityField>
type connectorConfigurationsMap = Js.Dict.t<connectorConfiguration>
type destinationFlowConfigList = array<destinationFlowConfig>

module StopFlow = {
  type t;
  type request = {
flowName: flowName
}
  type response = {
flowStatus: option<flowStatus>,
  flowArn: option<flowArn>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "StopFlowCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartFlow = {
  type t;
  type request = {
flowName: flowName
}
  type response = {
executionId: option<executionId>,
  flowStatus: option<flowStatus>,
  flowArn: option<flowArn>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "StartFlowCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFlow = {
  type t;
  type request = {
forceDelete: option<boolean_>,
  flowName: flowName
}
  type response = unit
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "DeleteFlowCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConnectorProfile = {
  type t;
  type request = {
forceDelete: option<boolean_>,
  connectorProfileName: connectorProfileName
}
  type response = unit
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "DeleteConnectorProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
  resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
  resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: arn
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFlows = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>
}
  type response = {
nextToken: option<nextToken>,
  flows: option<flowList>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "ListFlowsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConnectorEntities = {
  type t;
  type request = {
entitiesPath: option<entitiesPath>,
  connectorType: option<connectorType>,
  connectorProfileName: option<connectorProfileName>
}
  type response = {
connectorEntityMap: connectorEntityMap
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "ListConnectorEntitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConnectorProfile = {
  type t;
  type request = {
connectorProfileConfig: connectorProfileConfig,
  connectionMode: connectionMode,
  connectorProfileName: connectorProfileName
}
  type response = {
connectorProfileArn: option<connectorProfileArn>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "UpdateConnectorProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeFlowExecutionRecords = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  flowName: flowName
}
  type response = {
nextToken: option<nextToken>,
  flowExecutions: option<flowExecutionList>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "DescribeFlowExecutionRecordsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectorProfiles = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  connectorType: option<connectorType>,
  connectorProfileNames: option<connectorProfileNameList>
}
  type response = {
nextToken: option<nextToken>,
  connectorProfileDetails: option<connectorProfileDetailList>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "DescribeConnectorProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConnectorProfile = {
  type t;
  type request = {
connectorProfileConfig: connectorProfileConfig,
  connectionMode: connectionMode,
  connectorType: connectorType,
  kmsArn: option<kmsarn>,
  connectorProfileName: connectorProfileName
}
  type response = {
connectorProfileArn: option<connectorProfileArn>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "CreateConnectorProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectors = {
  type t;
  type request = {
nextToken: option<nextToken>,
  connectorTypes: option<connectorTypeList>
}
  type response = {
nextToken: option<nextToken>,
  connectorConfigurations: option<connectorConfigurationsMap>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "DescribeConnectorsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectorEntity = {
  type t;
  type request = {
connectorProfileName: option<connectorProfileName>,
  connectorType: option<connectorType>,
  connectorEntityName: name
}
  type response = {
connectorEntityFields: connectorEntityFieldList
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "DescribeConnectorEntityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateFlow = {
  type t;
  type request = {
tasks: tasks,
  destinationFlowConfigList: destinationFlowConfigList,
  sourceFlowConfig: option<sourceFlowConfig>,
  triggerConfig: triggerConfig,
  description: option<flowDescription>,
  flowName: flowName
}
  type response = {
flowStatus: option<flowStatus>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "UpdateFlowCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeFlow = {
  type t;
  type request = {
flowName: flowName
}
  type response = {
tags: option<tagMap>,
  lastUpdatedBy: option<updatedBy>,
  createdBy: option<createdBy>,
  lastUpdatedAt: option<date>,
  createdAt: option<date>,
  tasks: option<tasks>,
  triggerConfig: option<triggerConfig>,
  lastRunExecutionDetails: option<executionDetails>,
  destinationFlowConfigList: option<destinationFlowConfigList>,
  sourceFlowConfig: option<sourceFlowConfig>,
  flowStatusMessage: option<flowStatusMessage>,
  flowStatus: option<flowStatus>,
  kmsArn: option<kmsarn>,
  flowName: option<flowName>,
  description: option<flowDescription>,
  flowArn: option<flowArn>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "DescribeFlowCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateFlow = {
  type t;
  type request = {
tags: option<tagMap>,
  tasks: tasks,
  destinationFlowConfigList: destinationFlowConfigList,
  sourceFlowConfig: sourceFlowConfig,
  triggerConfig: triggerConfig,
  kmsArn: option<kmsarn>,
  description: option<flowDescription>,
  flowName: flowName
}
  type response = {
flowStatus: option<flowStatus>,
  flowArn: option<flowArn>
}
  @module("@aws-sdk/client-appflow") @new external new_: (request) => t = "CreateFlowCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
