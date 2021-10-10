type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-appsync") @new
external createClient: unit => awsServiceClient = "AppSyncClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type typeDefinitionFormat = [@as("JSON") #JSON | @as("SDL") #SDL]
@ocaml.doc("<p>The value for the tag.</p>") type tagValue = string
@ocaml.doc("<p>The key for the tag.</p>") type tagKey = string
type string_ = string
type schemaStatus = [
  | @as("NOT_APPLICABLE") #NOT_APPLICABLE
  | @as("SUCCESS") #SUCCESS
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("PROCESSING") #PROCESSING
]
type resourceName = string
type resourceArn = string
type resolverKind = [@as("PIPELINE") #PIPELINE | @as("UNIT") #UNIT]
type relationalDatabaseSourceType = [@as("RDS_HTTP_ENDPOINT") #RDS_HTTP_ENDPOINT]
type paginationToken = string
type outputType = [@as("JSON") #JSON | @as("SDL") #SDL]
type maxResults = int
type mappingTemplate = string
type long = float
type fieldLogLevel = [@as("ALL") #ALL | @as("ERROR") #ERROR | @as("NONE") #NONE]
type errorMessage = string
type defaultAction = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type dataSourceType = [
  | @as("RELATIONAL_DATABASE") #RELATIONAL_DATABASE
  | @as("HTTP") #HTTP
  | @as("NONE") #NONE
  | @as("AMAZON_ELASTICSEARCH") #AMAZON_ELASTICSEARCH
  | @as("AMAZON_DYNAMODB") #AMAZON_DYNAMODB
  | @as("AWS_LAMBDA") #AWS_LAMBDA
]
type conflictHandlerType = [
  | @as("NONE") #NONE
  | @as("AUTOMERGE") #AUTOMERGE
  | @as("LAMBDA") #LAMBDA
  | @as("OPTIMISTIC_CONCURRENCY") #OPTIMISTIC_CONCURRENCY
]
type conflictDetectionType = [@as("NONE") #NONE | @as("VERSION") #VERSION]
type booleanValue = bool
type boolean_ = bool
type blob = NodeJs.Buffer.t
type authorizationType = [@as("AWS_IAM") #AWS_IAM]
type authenticationType = [
  | @as("OPENID_CONNECT") #OPENID_CONNECT
  | @as("AMAZON_COGNITO_USER_POOLS") #AMAZON_COGNITO_USER_POOLS
  | @as("AWS_IAM") #AWS_IAM
  | @as("API_KEY") #API_KEY
]
type apiCachingBehavior = [
  | @as("PER_RESOLVER_CACHING") #PER_RESOLVER_CACHING
  | @as("FULL_REQUEST_CACHING") #FULL_REQUEST_CACHING
]
type apiCacheType = [
  | @as("LARGE_12X") #LARGE_12X
  | @as("LARGE_8X") #LARGE_8X
  | @as("LARGE_4X") #LARGE_4X
  | @as("LARGE_2X") #LARGE_2X
  | @as("XLARGE") #XLARGE
  | @as("LARGE") #LARGE
  | @as("MEDIUM") #MEDIUM
  | @as("SMALL") #SMALL
  | @as("R4_8XLARGE") #R4_8XLARGE
  | @as("R4_4XLARGE") #R4_4XLARGE
  | @as("R4_2XLARGE") #R4_2XLARGE
  | @as("R4_XLARGE") #R4_XLARGE
  | @as("R4_LARGE") #R4_LARGE
  | @as("T2_MEDIUM") #T2_MEDIUM
  | @as("T2_SMALL") #T2_SMALL
]
type apiCacheStatus = [
  | @as("FAILED") #FAILED
  | @as("MODIFYING") #MODIFYING
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("AVAILABLE") #AVAILABLE
]
@ocaml.doc("<p>Describes an Amazon Cognito user pool configuration.</p>")
type userPoolConfig = {
  @ocaml.doc("<p>A regular expression for validating the incoming Amazon Cognito user pool app client
         ID.</p>")
  appIdClientRegex: option<string_>,
  @ocaml.doc("<p>The action that you want your GraphQL API to take when a request that uses Amazon
         Cognito user pool authentication doesn't match the Amazon Cognito user pool
         configuration.</p>")
  defaultAction: defaultAction,
  @ocaml.doc("<p>The AWS Region in which the user pool was created.</p>") awsRegion: string_,
  @ocaml.doc("<p>The user pool ID.</p>") userPoolId: string_,
}
@ocaml.doc("<p>Describes a type.</p>")
type type_ = {
  @ocaml.doc("<p>The type format: SDL or JSON.</p>") format: option<typeDefinitionFormat>,
  @ocaml.doc("<p>The type definition.</p>") definition: option<string_>,
  @ocaml.doc("<p>The type ARN.</p>") arn: option<string_>,
  @ocaml.doc("<p>The type description.</p>") description: option<string_>,
  @ocaml.doc("<p>The type name.</p>") name: option<resourceName>,
}
@ocaml.doc("<p>A map with keys of <code>TagKey</code> objects and values of <code>TagValue</code>
         objects.</p>")
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The Amazon RDS HTTP endpoint configuration.</p>")
type rdsHttpEndpointConfig = {
  @ocaml.doc("<p>AWS secret store ARN for database credentials.</p>")
  awsSecretStoreArn: option<string_>,
  @ocaml.doc("<p>Logical schema name.</p>") schema: option<string_>,
  @ocaml.doc("<p>Logical database name.</p>") databaseName: option<string_>,
  @ocaml.doc("<p>Amazon RDS cluster ARN.</p>") dbClusterIdentifier: option<string_>,
  @ocaml.doc("<p>AWS Region for RDS HTTP endpoint.</p>") awsRegion: option<string_>,
}
@ocaml.doc("<p>Describes an OpenID Connect configuration.</p>")
type openIDConnectConfig = {
  @ocaml.doc("<p>The number of milliseconds a token is valid after being authenticated.</p>")
  authTTL: option<long>,
  @ocaml.doc("<p>The number of milliseconds a token is valid after being issued to a user.</p>")
  iatTTL: option<long>,
  @ocaml.doc("<p>The client identifier of the Relying party at the OpenID identity provider. This
         identifier is typically obtained when the Relying party is registered with the OpenID
         identity provider. You can specify a regular expression so the AWS AppSync can validate
         against multiple client identifiers at a time.</p>")
  clientId: option<string_>,
  @ocaml.doc("<p>The issuer for the OpenID Connect configuration. The issuer returned by discovery must
         exactly match the value of <code>iss</code> in the ID token.</p>")
  issuer: string_,
}
type mapOfStringToString = Js.Dict.t<string_>
@ocaml.doc("<p>The CloudWatch Logs configuration.</p>")
type logConfig = {
  @ocaml.doc("<p>Set to TRUE to exclude sections that contain information such as headers, context, and
         evaluated mapping templates, regardless of logging level.</p>")
  excludeVerboseContent: option<boolean_>,
  @ocaml.doc("<p>The service role that AWS AppSync will assume to publish to Amazon CloudWatch logs in
         your account. </p>")
  cloudWatchLogsRoleArn: string_,
  @ocaml.doc("<p>The field logging level. Values can be NONE, ERROR, or ALL. </p>
         <ul>
            <li>
               <p>
                  <b>NONE</b>: No field-level logs are
               captured.</p>
            </li>
            <li>
               <p>
                  <b>ERROR</b>: Logs the following information only for
               the fields that are in error:</p>
               <ul>
                  <li>
                     <p>The error section in the server response.</p>
                  </li>
                  <li>
                     <p>Field-level errors.</p>
                  </li>
                  <li>
                     <p>The generated request/response functions that got resolved for error
                     fields.</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <b>ALL</b>: The following information is logged for
               all fields in the query:</p>
               <ul>
                  <li>
                     <p>Field-level tracing information.</p>
                  </li>
                  <li>
                     <p>The generated request/response functions that got resolved for each
                     field.</p>
                  </li>
               </ul>
            </li>
         </ul>")
  fieldLogLevel: fieldLogLevel,
}
@ocaml.doc("<p>Describes an AWS Lambda data source configuration.</p>")
type lambdaDataSourceConfig = {
  @ocaml.doc("<p>The ARN for the Lambda function.</p>") lambdaFunctionArn: string_,
}
@ocaml.doc("<p>The <code>LambdaConflictHandlerConfig</code> object when configuring LAMBDA as the
         Conflict Handler.</p>")
type lambdaConflictHandlerConfig = {
  @ocaml.doc("<p>The Arn for the Lambda function to use as the Conflict Handler.</p>")
  lambdaConflictHandlerArn: option<string_>,
}
type functionsIds = array<string_>
@ocaml.doc("<p>Describes an Elasticsearch data source configuration.</p>")
type elasticsearchDataSourceConfig = {
  @ocaml.doc("<p>The AWS Region.</p>") awsRegion: string_,
  @ocaml.doc("<p>The endpoint.</p>") endpoint: string_,
}
@ocaml.doc("<p>Describes a Delta Sync configuration.</p>")
type deltaSyncConfig = {
  @ocaml.doc(
    "<p>The number of minutes a Delta Sync log entry is stored in the Delta Sync table.</p>"
  )
  deltaSyncTableTTL: option<long>,
  @ocaml.doc("<p>The Delta Sync table name.</p>") deltaSyncTableName: option<string_>,
  @ocaml.doc("<p>The number of minutes an Item is stored in the datasource.</p>")
  baseTableTTL: option<long>,
}
@ocaml.doc("<p>Describes an Amazon Cognito user pool configuration.</p>")
type cognitoUserPoolConfig = {
  @ocaml.doc("<p>A regular expression for validating the incoming Amazon Cognito user pool app client
         ID.</p>")
  appIdClientRegex: option<string_>,
  @ocaml.doc("<p>The AWS Region in which the user pool was created.</p>") awsRegion: string_,
  @ocaml.doc("<p>The user pool ID.</p>") userPoolId: string_,
}
type cachingKeys = array<string_>
@ocaml.doc("<p>The AWS IAM configuration.</p>")
type awsIamConfig = {
  @ocaml.doc("<p>The signing service name for AWS IAM authorization.</p>")
  signingServiceName: option<string_>,
  @ocaml.doc("<p>The signing region for AWS IAM authorization.</p>") signingRegion: option<string_>,
}
@ocaml.doc("<p>Describes an API key.</p>
         <p>Customers invoke AWS AppSync GraphQL API operations with API keys as an identity
         mechanism. There are two key versions:</p>
         <p>
            <b>da1</b>: This version was introduced at launch in November
         2017. These keys always expire after 7 days. Key expiration is managed by Amazon DynamoDB
         TTL. The keys ceased to be valid after February 21, 2018 and should not be used after that
         date.</p>
         <ul>
            <li>
               <p>
                  <code>ListApiKeys</code> returns the expiration time in milliseconds.</p>
            </li>
            <li>
               <p>
                  <code>CreateApiKey</code> returns the expiration time in
               milliseconds.</p>
            </li>
            <li>
               <p>
                  <code>UpdateApiKey</code> is not available for this key version.</p>
            </li>
            <li>
               <p>
                  <code>DeleteApiKey</code> deletes the item from the table.</p>
            </li>
            <li>
               <p>Expiration is stored in Amazon DynamoDB as milliseconds. This results in a bug
               where keys are not automatically deleted because DynamoDB expects the TTL to be
               stored in seconds. As a one-time action, we will delete these keys from the table
               after February 21, 2018.</p>
            </li>
         </ul>
         <p>
            <b>da2</b>: This version was introduced in February 2018 when
         AppSync added support to extend key expiration.</p>
         <ul>
            <li>
               <p>
                  <code>ListApiKeys</code> returns the expiration time and deletion time
               in seconds.</p>
            </li>
            <li>
               <p>
                  <code>CreateApiKey</code> returns the expiration time and deletion time
               in seconds and accepts a user-provided expiration time in seconds.</p>
            </li>
            <li>
               <p>
                  <code>UpdateApiKey</code> returns the expiration time and and deletion time
               in seconds and accepts a user-provided expiration time in seconds. Expired API keys
               are kept for 60 days after the expiration time. Key expiration time can be updated
               while the key is not deleted. </p>
            </li>
            <li>
               <p>
                  <code>DeleteApiKey</code> deletes the item from the table.</p>
            </li>
            <li>
               <p>Expiration is stored in Amazon DynamoDB as seconds. After the expiration
               time, using the key to authenticate will fail. But the key can be reinstated before
               deletion.</p>
            </li>
            <li>
               <p>Deletion is stored in Amazon DynamoDB as seconds. The key will be deleted
               after deletion time. </p>
            </li>
         </ul>")
type apiKey = {
  @ocaml.doc("<p>The time after which the API key is deleted. The date is represented as seconds since the
         epoch, rounded down to the nearest hour.</p>")
  deletes: option<long>,
  @ocaml.doc("<p>The time after which the API key expires. The date is represented as seconds since the
         epoch, rounded down to the nearest hour.</p>")
  expires: option<long>,
  @ocaml.doc("<p>A description of the purpose of the API key.</p>") description: option<string_>,
  @ocaml.doc("<p>The API key ID.</p>") id: option<string_>,
}
@ocaml.doc("<p>The <code>ApiCache</code> object.</p>")
type apiCache = {
  @ocaml.doc("<p>The cache instance status.</p>
         <ul>
            <li>
               <p>
                  <b>AVAILABLE</b>: The instance is available for
               use.</p>
            </li>
            <li>
               <p>
                  <b>CREATING</b>: The instance is currently
               creating.</p>
            </li>
            <li>
               <p>
                  <b>DELETING</b>: The instance is currently
               deleting.</p>
            </li>
            <li>
               <p>
                  <b>MODIFYING</b>: The instance is currently
               modifying.</p>
            </li>
            <li>
               <p>
                  <b>FAILED</b>: The instance has failed
               creation.</p>
            </li>
         </ul>")
  status: option<apiCacheStatus>,
  @ocaml.doc("<p>The cache instance type. Valid values are </p>
         <ul>
            <li>
               <p>
                  <code>SMALL</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MEDIUM</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>XLARGE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE_2X</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE_4X</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE_8X</code> (not available in all regions)</p>
            </li>
            <li>
               <p>
                  <code>LARGE_12X</code>
               </p>
            </li>
         </ul>
         <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
         <p>The following legacy instance types are available, but their use is discouraged:</p>
         <ul>
            <li>
               <p>
                  <b>T2_SMALL</b>: A t2.small instance type.</p>
            </li>
            <li>
               <p>
                  <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_LARGE</b>: A r4.large instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
            </li>
         </ul>")
  @as("type")
  type_: option<apiCacheType>,
  @ocaml.doc(
    "<p>At rest encryption flag for cache. This setting cannot be updated after creation.</p>"
  )
  atRestEncryptionEnabled: option<boolean_>,
  @ocaml.doc("<p>Transit encryption flag when connecting to cache. This setting cannot be updated after
         creation.</p>")
  transitEncryptionEnabled: option<boolean_>,
  @ocaml.doc("<p>Caching behavior.</p>
         <ul>
            <li>
               <p>
                  <b>FULL_REQUEST_CACHING</b>: All requests are fully
               cached.</p>
            </li>
            <li>
               <p>
                  <b>PER_RESOLVER_CACHING</b>: Individual resolvers
               that you specify are cached.</p>
            </li>
         </ul>")
  apiCachingBehavior: option<apiCachingBehavior>,
  @ocaml.doc("<p>TTL in seconds for cache entries.</p>
         <p>Valid values are between 1 and 3600 seconds.</p>")
  ttl: option<long>,
}
type typeList = array<type_>
@ocaml.doc("<p>Describes a Sync configuration for a resolver.</p>
         <p>Contains information on which Conflict Detection as well as Resolution strategy should
         be performed when the resolver is invoked.</p>")
type syncConfig = {
  @ocaml.doc("<p>The <code>LambdaConflictHandlerConfig</code> when configuring LAMBDA as the Conflict
         Handler.</p>")
  lambdaConflictHandlerConfig: option<lambdaConflictHandlerConfig>,
  @ocaml.doc("<p>The Conflict Detection strategy to use.</p>
         <ul>
            <li>
               <p>
                  <b>VERSION</b>: Detect conflicts based on object
               versions for this resolver.</p>
            </li>
            <li>
               <p>
                  <b>NONE</b>: Do not detect conflicts when executing
               this resolver.</p>
            </li>
         </ul>")
  conflictDetection: option<conflictDetectionType>,
  @ocaml.doc("<p>The Conflict Resolution strategy to perform in the event of a conflict.</p>
         <ul>
            <li>
               <p>
                  <b>OPTIMISTIC_CONCURRENCY</b>: Resolve conflicts by
               rejecting mutations when versions do not match the latest version at the
               server.</p>
            </li>
            <li>
               <p>
                  <b>AUTOMERGE</b>: Resolve conflicts with the
               Automerge conflict resolution strategy.</p>
            </li>
            <li>
               <p>
                  <b>LAMBDA</b>: Resolve conflicts with a Lambda
               function supplied in the LambdaConflictHandlerConfig.</p>
            </li>
         </ul>")
  conflictHandler: option<conflictHandlerType>,
}
@ocaml.doc("<p>Describes a relational database data source configuration.</p>")
type relationalDatabaseDataSourceConfig = {
  @ocaml.doc("<p>Amazon RDS HTTP endpoint settings.</p>")
  rdsHttpEndpointConfig: option<rdsHttpEndpointConfig>,
  @ocaml.doc("<p>Source type for the relational database.</p>
         <ul>
            <li>
               <p>
                  <b>RDS_HTTP_ENDPOINT</b>: The relational database
               source type is an Amazon RDS HTTP endpoint.</p>
            </li>
         </ul>")
  relationalDatabaseSourceType: option<relationalDatabaseSourceType>,
}
@ocaml.doc("<p>The pipeline configuration for a resolver of kind <code>PIPELINE</code>.</p>")
type pipelineConfig = {
  @ocaml.doc("<p>A list of <code>Function</code> objects.</p>") functions: option<functionsIds>,
}
@ocaml.doc("<p>Describes an Amazon DynamoDB data source configuration.</p>")
type dynamodbDataSourceConfig = {
  @ocaml.doc("<p>Set to TRUE to use Conflict Detection and Resolution with this data source.</p>")
  versioned: option<boolean_>,
  @ocaml.doc("<p>The <code>DeltaSyncConfig</code> for a versioned datasource.</p>")
  deltaSyncConfig: option<deltaSyncConfig>,
  @ocaml.doc("<p>Set to TRUE to use Amazon Cognito credentials with this data source.</p>")
  useCallerCredentials: option<boolean_>,
  @ocaml.doc("<p>The AWS Region.</p>") awsRegion: string_,
  @ocaml.doc("<p>The table name.</p>") tableName: string_,
}
@ocaml.doc("<p>The caching configuration for a resolver that has caching enabled.</p>")
type cachingConfig = {
  @ocaml.doc("<p>The caching keys for a resolver that has caching enabled.</p>
         <p>Valid values are entries from the <code>$context.arguments</code>,
            <code>$context.source</code>, and <code>$context.identity</code> maps.</p>")
  cachingKeys: option<cachingKeys>,
  @ocaml.doc("<p>The TTL in seconds for a resolver that has caching enabled.</p>
         <p>Valid values are between 1 and 3600 seconds.</p>")
  ttl: option<long>,
}
@ocaml.doc("<p>The authorization config in case the HTTP endpoint requires authorization.</p>")
type authorizationConfig = {
  @ocaml.doc("<p>The AWS IAM settings.</p>") awsIamConfig: option<awsIamConfig>,
  @ocaml.doc("<p>The authorization type required by the HTTP endpoint.</p>
         <ul>
            <li>
               <p>
                  <b>AWS_IAM</b>: The authorization type is
               Sigv4.</p>
            </li>
         </ul>")
  authorizationType: authorizationType,
}
type apiKeys = array<apiKey>
@ocaml.doc("<p>Describes an additional authentication provider.</p>")
type additionalAuthenticationProvider = {
  @ocaml.doc("<p>The Amazon Cognito user pool configuration.</p>")
  userPoolConfig: option<cognitoUserPoolConfig>,
  @ocaml.doc("<p>The OpenID Connect configuration.</p>")
  openIDConnectConfig: option<openIDConnectConfig>,
  @ocaml.doc(
    "<p>The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user pools.</p>"
  )
  authenticationType: option<authenticationType>,
}
@ocaml.doc("<p>Describes a resolver.</p>")
type resolver = {
  @ocaml.doc("<p>The caching configuration for the resolver.</p>")
  cachingConfig: option<cachingConfig>,
  @ocaml.doc(
    "<p>The <code>SyncConfig</code> for a resolver attached to a versioned datasource.</p>"
  )
  syncConfig: option<syncConfig>,
  @ocaml.doc("<p>The <code>PipelineConfig</code>.</p>") pipelineConfig: option<pipelineConfig>,
  @ocaml.doc("<p>The resolver type.</p>
         <ul>
            <li>
               <p>
                  <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
               the default resolver type. A UNIT resolver enables you to execute a GraphQL query
               against a single data source.</p>
            </li>
            <li>
               <p>
                  <b>PIPELINE</b>: A PIPELINE resolver type. A PIPELINE
               resolver enables you to execute a series of <code>Function</code> in a serial manner.
               You can use a pipeline resolver to execute a GraphQL query against multiple data
               sources.</p>
            </li>
         </ul>")
  kind: option<resolverKind>,
  @ocaml.doc("<p>The response mapping template.</p>")
  responseMappingTemplate: option<mappingTemplate>,
  @ocaml.doc("<p>The request mapping template.</p>")
  requestMappingTemplate: option<mappingTemplate>,
  @ocaml.doc("<p>The resolver ARN.</p>") resolverArn: option<string_>,
  @ocaml.doc("<p>The resolver data source name.</p>") dataSourceName: option<resourceName>,
  @ocaml.doc("<p>The resolver field name.</p>") fieldName: option<resourceName>,
  @ocaml.doc("<p>The resolver type name.</p>") typeName: option<resourceName>,
}
@ocaml.doc("<p>Describes an HTTP data source configuration.</p>")
type httpDataSourceConfig = {
  @ocaml.doc("<p>The authorization config in case the HTTP endpoint requires authorization.</p>")
  authorizationConfig: option<authorizationConfig>,
  @ocaml.doc("<p>The HTTP URL endpoint. You can either specify the domain name or IP, and port
         combination, and the URL scheme must be HTTP or HTTPS. If the port is not specified, AWS
         AppSync uses the default port 80 for the HTTP endpoint and port 443 for HTTPS
         endpoints.</p>")
  endpoint: option<string_>,
}
@ocaml.doc("<p>A function is a reusable entity. Multiple functions can be used to compose the resolver
         logic.</p>")
type functionConfiguration = {
  syncConfig: option<syncConfig>,
  @ocaml.doc("<p>The version of the request mapping template. Currently only the 2018-05-29 version of
         the template is supported.</p>")
  functionVersion: option<string_>,
  @ocaml.doc("<p>The <code>Function</code> response mapping template.</p>")
  responseMappingTemplate: option<mappingTemplate>,
  @ocaml.doc("<p>The <code>Function</code> request mapping template. Functions support only the
         2018-05-29 version of the request mapping template.</p>")
  requestMappingTemplate: option<mappingTemplate>,
  @ocaml.doc("<p>The name of the <code>DataSource</code>.</p>")
  dataSourceName: option<resourceName>,
  @ocaml.doc("<p>The <code>Function</code> description.</p>") description: option<string_>,
  @ocaml.doc("<p>The name of the <code>Function</code> object.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The ARN of the <code>Function</code> object.</p>") functionArn: option<string_>,
  @ocaml.doc("<p>A unique ID representing the <code>Function</code> object.</p>")
  functionId: option<string_>,
}
type additionalAuthenticationProviders = array<additionalAuthenticationProvider>
type resolvers = array<resolver>
@ocaml.doc("<p>Describes a GraphQL API.</p>")
type graphqlApi = {
  @ocaml.doc("<p>The ARN of the AWS Web Application Firewall (WAF) ACL associated with this
         <code>GraphqlApi</code>, if one exists.</p>")
  wafWebAclArn: option<string_>,
  @ocaml.doc("<p>A flag representing whether X-Ray tracing is enabled for this
         <code>GraphqlApi</code>.</p>")
  xrayEnabled: option<boolean_>,
  @ocaml.doc("<p>A list of additional authentication providers for the <code>GraphqlApi</code>
         API.</p>")
  additionalAuthenticationProviders: option<additionalAuthenticationProviders>,
  @ocaml.doc("<p>The tags.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The URIs.</p>") uris: option<mapOfStringToString>,
  @ocaml.doc("<p>The ARN.</p>") arn: option<string_>,
  @ocaml.doc("<p>The OpenID Connect configuration.</p>")
  openIDConnectConfig: option<openIDConnectConfig>,
  @ocaml.doc("<p>The Amazon Cognito user pool configuration.</p>")
  userPoolConfig: option<userPoolConfig>,
  @ocaml.doc("<p>The Amazon CloudWatch Logs configuration.</p>") logConfig: option<logConfig>,
  @ocaml.doc("<p>The authentication type.</p>") authenticationType: option<authenticationType>,
  @ocaml.doc("<p>The API ID.</p>") apiId: option<string_>,
  @ocaml.doc("<p>The API name.</p>") name: option<resourceName>,
}
type functions = array<functionConfiguration>
@ocaml.doc("<p>Describes a data source.</p>")
type dataSource = {
  @ocaml.doc("<p>Relational database settings.</p>")
  relationalDatabaseConfig: option<relationalDatabaseDataSourceConfig>,
  @ocaml.doc("<p>HTTP endpoint settings.</p>") httpConfig: option<httpDataSourceConfig>,
  @ocaml.doc("<p>Amazon Elasticsearch Service settings.</p>")
  elasticsearchConfig: option<elasticsearchDataSourceConfig>,
  @ocaml.doc("<p>AWS Lambda settings.</p>") lambdaConfig: option<lambdaDataSourceConfig>,
  @ocaml.doc("<p>Amazon DynamoDB settings.</p>") dynamodbConfig: option<dynamodbDataSourceConfig>,
  @ocaml.doc("<p>The AWS IAM service role ARN for the data source. The system assumes this role when
         accessing the data source.</p>")
  serviceRoleArn: option<string_>,
  @ocaml.doc("<p>The type of the data source.</p>
         <ul>
            <li>
               <p>
                  <b>AMAZON_DYNAMODB</b>: The data source is an Amazon
               DynamoDB table.</p>
            </li>
            <li>
               <p>
                  <b>AMAZON_ELASTICSEARCH</b>: The data source is an
               Amazon Elasticsearch Service domain.</p>
            </li>
            <li>
               <p>
                  <b>AWS_LAMBDA</b>: The data source is an AWS Lambda
               function.</p>
            </li>
            <li>
               <p>
                  <b>NONE</b>: There is no data source. This type is
               used when you wish to invoke a GraphQL operation without connecting to a data source,
               such as performing data transformation with resolvers or triggering a subscription to
               be invoked from a mutation.</p>
            </li>
            <li>
               <p>
                  <b>HTTP</b>: The data source is an HTTP
               endpoint.</p>
            </li>
            <li>
               <p>
                  <b>RELATIONAL_DATABASE</b>: The data source is a
               relational database.</p>
            </li>
         </ul>")
  @as("type")
  type_: option<dataSourceType>,
  @ocaml.doc("<p>The description of the data source.</p>") description: option<string_>,
  @ocaml.doc("<p>The name of the data source.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The data source ARN.</p>") dataSourceArn: option<string_>,
}
type graphqlApis = array<graphqlApi>
type dataSources = array<dataSource>
@ocaml.doc("<p>AWS AppSync provides API actions for creating and interacting with data sources using
         GraphQL from your application.</p>")
module StartSchemaCreation = {
  type t
  type request = {
    @ocaml.doc("<p>The schema definition, in GraphQL schema language format.</p>") definition: blob,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When
         the schema is in the ACTIVE state, you can add data.</p>")
    status: option<schemaStatus>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "StartSchemaCreationCommand"
  let make = (~definition, ~apiId, ()) => new({definition: definition, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSchemaCreationStatus = {
  type t
  type request = {@ocaml.doc("<p>The API ID.</p>") apiId: string_}
  type response = {
    @ocaml.doc("<p>Detailed information about the status of the schema creation operation.</p>")
    details: option<string_>,
    @ocaml.doc("<p>The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When
         the schema is in the ACTIVE state, you can add data.</p>")
    status: option<schemaStatus>,
  }
  @module("@aws-sdk/client-appsync") @new
  external new: request => t = "GetSchemaCreationStatusCommand"
  let make = (~apiId, ()) => new({apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIntrospectionSchema = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A flag that specifies whether the schema introspection should contain directives.</p>"
    )
    includeDirectives: option<booleanValue>,
    @ocaml.doc("<p>The schema format: SDL or JSON.</p>") format: outputType,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The schema, in GraphQL Schema Definition Language (SDL) format.</p>
         <p>For more information, see the <a href=\"http://graphql.org/learn/schema/\">GraphQL SDL
            documentation</a>.</p>")
    schema: option<blob>,
  }
  @module("@aws-sdk/client-appsync") @new
  external new: request => t = "GetIntrospectionSchemaCommand"
  let make = (~format, ~apiId, ~includeDirectives=?, ()) =>
    new({includeDirectives: includeDirectives, format: format, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FlushApiCache = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>FlushApiCache</code> operation.</p>")
  type request = {@ocaml.doc("<p>The API ID.</p>") apiId: string_}

  @module("@aws-sdk/client-appsync") @new external new: request => t = "FlushApiCacheCommand"
  let make = (~apiId, ()) => new({apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteType = {
  type t
  type request = {
    @ocaml.doc("<p>The type name.</p>") typeName: resourceName,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }

  @module("@aws-sdk/client-appsync") @new external new: request => t = "DeleteTypeCommand"
  let make = (~typeName, ~apiId, ()) => new({typeName: typeName, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResolver = {
  type t
  type request = {
    @ocaml.doc("<p>The resolver field name.</p>") fieldName: resourceName,
    @ocaml.doc("<p>The name of the resolver type.</p>") typeName: resourceName,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }

  @module("@aws-sdk/client-appsync") @new external new: request => t = "DeleteResolverCommand"
  let make = (~fieldName, ~typeName, ~apiId, ()) =>
    new({fieldName: fieldName, typeName: typeName, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteGraphqlApi = {
  type t
  type request = {@ocaml.doc("<p>The API ID.</p>") apiId: string_}

  @module("@aws-sdk/client-appsync") @new external new: request => t = "DeleteGraphqlApiCommand"
  let make = (~apiId, ()) => new({apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>Function</code> ID.</p>") functionId: resourceName,
    @ocaml.doc("<p>The GraphQL API ID.</p>") apiId: string_,
  }

  @module("@aws-sdk/client-appsync") @new external new: request => t = "DeleteFunctionCommand"
  let make = (~functionId, ~apiId, ()) => new({functionId: functionId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the data source.</p>") name: resourceName,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }

  @module("@aws-sdk/client-appsync") @new external new: request => t = "DeleteDataSourceCommand"
  let make = (~name, ~apiId, ()) => new({name: name, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApiKey = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the API key.</p>") id: string_,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }

  @module("@aws-sdk/client-appsync") @new external new: request => t = "DeleteApiKeyCommand"
  let make = (~id, ~apiId, ()) => new({id: id, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApiCache = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteApiCache</code> operation.</p>")
  type request = {@ocaml.doc("<p>The API ID.</p>") apiId: string_}

  @module("@aws-sdk/client-appsync") @new external new: request => t = "DeleteApiCacheCommand"
  let make = (~apiId, ()) => new({apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateType = {
  type t
  type request = {
    @ocaml.doc("<p>The new type format: SDL or JSON.</p>") format: typeDefinitionFormat,
    @ocaml.doc("<p>The new definition.</p>") definition: option<string_>,
    @ocaml.doc("<p>The new type name.</p>") typeName: resourceName,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The updated <code>Type</code> object.</p>") @as("type") type_: option<type_>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "UpdateTypeCommand"
  let make = (~format, ~typeName, ~apiId, ~definition=?, ()) =>
    new({format: format, definition: definition, typeName: typeName, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApiKey = {
  type t
  type request = {
    @ocaml.doc("<p>The time from update time after which the API key expires. The date is represented as
         seconds since the epoch. For more information, see .</p>")
    expires: option<long>,
    @ocaml.doc("<p>A description of the purpose of the API key.</p>") description: option<string_>,
    @ocaml.doc("<p>The API key ID.</p>") id: string_,
    @ocaml.doc("<p>The ID for the GraphQL API.</p>") apiId: string_,
  }
  type response = {@ocaml.doc("<p>The API key.</p>") apiKey: option<apiKey>}
  @module("@aws-sdk/client-appsync") @new external new: request => t = "UpdateApiKeyCommand"
  let make = (~id, ~apiId, ~expires=?, ~description=?, ()) =>
    new({expires: expires, description: description, id: id, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApiCache = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>UpdateApiCache</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The cache instance type. Valid values are </p>
         <ul>
            <li>
               <p>
                  <code>SMALL</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MEDIUM</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>XLARGE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE_2X</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE_4X</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE_8X</code> (not available in all regions)</p>
            </li>
            <li>
               <p>
                  <code>LARGE_12X</code>
               </p>
            </li>
         </ul>
         <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
         <p>The following legacy instance types are available, but their use is discouraged:</p>
         <ul>
            <li>
               <p>
                  <b>T2_SMALL</b>: A t2.small instance type.</p>
            </li>
            <li>
               <p>
                  <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_LARGE</b>: A r4.large instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
            </li>
         </ul>")
    @as("type")
    type_: apiCacheType,
    @ocaml.doc("<p>Caching behavior.</p>
         <ul>
            <li>
               <p>
                  <b>FULL_REQUEST_CACHING</b>: All requests are fully
               cached.</p>
            </li>
            <li>
               <p>
                  <b>PER_RESOLVER_CACHING</b>: Individual resolvers
               that you specify are cached.</p>
            </li>
         </ul>")
    apiCachingBehavior: apiCachingBehavior,
    @ocaml.doc("<p>TTL in seconds for cache entries.</p>
         <p>Valid values are between 1 and 3600 seconds.</p>")
    ttl: long,
    @ocaml.doc("<p>The GraphQL API Id.</p>") apiId: string_,
  }
  @ocaml.doc("<p>Represents the output of a <code>UpdateApiCache</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The <code>ApiCache</code> object.</p>") apiCache: option<apiCache>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "UpdateApiCacheCommand"
  let make = (~type_, ~apiCachingBehavior, ~ttl, ~apiId, ()) =>
    new({type_: type_, apiCachingBehavior: apiCachingBehavior, ttl: ttl, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of <code>TagKey</code> objects.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The <code>GraphqlApi</code> ARN.</p>") resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-appsync") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>TagMap</code> object.</p>") tags: tagMap,
    @ocaml.doc("<p>The <code>GraphqlApi</code> ARN.</p>") resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-appsync") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@ocaml.doc("<p>The <code>GraphqlApi</code> ARN.</p>") resourceArn: resourceArn}
  type response = {@ocaml.doc("<p>A <code>TagMap</code> object.</p>") tags: option<tagMap>}
  @module("@aws-sdk/client-appsync") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetType = {
  type t
  type request = {
    @ocaml.doc("<p>The type format: SDL or JSON.</p>") format: typeDefinitionFormat,
    @ocaml.doc("<p>The type name.</p>") typeName: resourceName,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>Type</code> object.</p>") @as("type") type_: option<type_>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "GetTypeCommand"
  let make = (~format, ~typeName, ~apiId, ()) =>
    new({format: format, typeName: typeName, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApiCache = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetApiCache</code> operation.</p>")
  type request = {@ocaml.doc("<p>The API ID.</p>") apiId: string_}
  @ocaml.doc("<p>Represents the output of a <code>GetApiCache</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The <code>ApiCache</code> object.</p>") apiCache: option<apiCache>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "GetApiCacheCommand"
  let make = (~apiId, ()) => new({apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateType = {
  type t
  type request = {
    @ocaml.doc("<p>The type format: SDL or JSON.</p>") format: typeDefinitionFormat,
    @ocaml.doc("<p>The type definition, in GraphQL Schema Definition Language (SDL) format.</p>
         <p>For more information, see the <a href=\"http://graphql.org/learn/schema/\">GraphQL SDL
            documentation</a>.</p>")
    definition: string_,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>Type</code> object.</p>") @as("type") type_: option<type_>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "CreateTypeCommand"
  let make = (~format, ~definition, ~apiId, ()) =>
    new({format: format, definition: definition, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApiKey = {
  type t
  type request = {
    @ocaml.doc("<p>The time from creation time after which the API key expires. The date is represented as
         seconds since the epoch, rounded down to the nearest hour. The default value for this
         parameter is 7 days from creation time. For more information, see .</p>")
    expires: option<long>,
    @ocaml.doc("<p>A description of the purpose of the API key.</p>") description: option<string_>,
    @ocaml.doc("<p>The ID for your GraphQL API.</p>") apiId: string_,
  }
  type response = {@ocaml.doc("<p>The API key.</p>") apiKey: option<apiKey>}
  @module("@aws-sdk/client-appsync") @new external new: request => t = "CreateApiKeyCommand"
  let make = (~apiId, ~expires=?, ~description=?, ()) =>
    new({expires: expires, description: description, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApiCache = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreateApiCache</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The cache instance type. Valid values are </p>
         <ul>
            <li>
               <p>
                  <code>SMALL</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MEDIUM</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>XLARGE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE_2X</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE_4X</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LARGE_8X</code> (not available in all regions)</p>
            </li>
            <li>
               <p>
                  <code>LARGE_12X</code>
               </p>
            </li>
         </ul>
         <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
         <p>The following legacy instance types are available, but their use is discouraged:</p>
         <ul>
            <li>
               <p>
                  <b>T2_SMALL</b>: A t2.small instance type.</p>
            </li>
            <li>
               <p>
                  <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_LARGE</b>: A r4.large instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
            </li>
            <li>
               <p>
                  <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
            </li>
         </ul>")
    @as("type")
    type_: apiCacheType,
    @ocaml.doc("<p>Caching behavior.</p>
         <ul>
            <li>
               <p>
                  <b>FULL_REQUEST_CACHING</b>: All requests are fully
               cached.</p>
            </li>
            <li>
               <p>
                  <b>PER_RESOLVER_CACHING</b>: Individual resolvers
               that you specify are cached.</p>
            </li>
         </ul>")
    apiCachingBehavior: apiCachingBehavior,
    @ocaml.doc(
      "<p>At rest encryption flag for cache. This setting cannot be updated after creation.</p>"
    )
    atRestEncryptionEnabled: option<boolean_>,
    @ocaml.doc("<p>Transit encryption flag when connecting to cache. This setting cannot be updated after
         creation.</p>")
    transitEncryptionEnabled: option<boolean_>,
    @ocaml.doc("<p>TTL in seconds for cache entries.</p>
         <p>Valid values are between 1 and 3600 seconds.</p>")
    ttl: long,
    @ocaml.doc("<p>The GraphQL API Id.</p>") apiId: string_,
  }
  @ocaml.doc("<p>Represents the output of a <code>CreateApiCache</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The <code>ApiCache</code> object.</p>") apiCache: option<apiCache>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "CreateApiCacheCommand"
  let make = (
    ~type_,
    ~apiCachingBehavior,
    ~ttl,
    ~apiId,
    ~atRestEncryptionEnabled=?,
    ~transitEncryptionEnabled=?,
    (),
  ) =>
    new({
      type_: type_,
      apiCachingBehavior: apiCachingBehavior,
      atRestEncryptionEnabled: atRestEncryptionEnabled,
      transitEncryptionEnabled: transitEncryptionEnabled,
      ttl: ttl,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTypes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results you want the request to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The type format: SDL or JSON.</p>") format: typeDefinitionFormat,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>An identifier to be passed in the next request to this operation to return the next set
         of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The <code>Type</code> objects.</p>") types: option<typeList>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "ListTypesCommand"
  let make = (~format, ~apiId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, format: format, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApiKeys = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results you want the request to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>An identifier to be passed in the next request to this operation to return the next set
         of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The <code>ApiKey</code> objects.</p>") apiKeys: option<apiKeys>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "ListApiKeysCommand"
  let make = (~apiId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResolver = {
  type t
  type request = {
    @ocaml.doc("<p>The caching configuration for the resolver.</p>")
    cachingConfig: option<cachingConfig>,
    @ocaml.doc(
      "<p>The <code>SyncConfig</code> for a resolver attached to a versioned datasource.</p>"
    )
    syncConfig: option<syncConfig>,
    @ocaml.doc("<p>The <code>PipelineConfig</code>.</p>") pipelineConfig: option<pipelineConfig>,
    @ocaml.doc("<p>The resolver type.</p>
         <ul>
            <li>
               <p>
                  <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
               the default resolver type. A UNIT resolver enables you to execute a GraphQL query
               against a single data source.</p>
            </li>
            <li>
               <p>
                  <b>PIPELINE</b>: A PIPELINE resolver type. A PIPELINE
               resolver enables you to execute a series of <code>Function</code> in a serial manner.
               You can use a pipeline resolver to execute a GraphQL query against multiple data
               sources.</p>
            </li>
         </ul>")
    kind: option<resolverKind>,
    @ocaml.doc("<p>The new response mapping template.</p>")
    responseMappingTemplate: option<mappingTemplate>,
    @ocaml.doc("<p>The new request mapping template.</p>
         <p>A resolver uses a request mapping template to convert a GraphQL expression into a format
         that a data source can understand. Mapping templates are written in Apache Velocity
         Template Language (VTL).</p>
         <p>VTL request mapping templates are optional when using a Lambda data source. For all
         other data sources, VTL request and response mapping templates are required.</p>")
    requestMappingTemplate: option<mappingTemplate>,
    @ocaml.doc("<p>The new data source name.</p>") dataSourceName: option<resourceName>,
    @ocaml.doc("<p>The new field name.</p>") fieldName: resourceName,
    @ocaml.doc("<p>The new type name.</p>") typeName: resourceName,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The updated <code>Resolver</code> object.</p>") resolver: option<resolver>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "UpdateResolverCommand"
  let make = (
    ~fieldName,
    ~typeName,
    ~apiId,
    ~cachingConfig=?,
    ~syncConfig=?,
    ~pipelineConfig=?,
    ~kind=?,
    ~responseMappingTemplate=?,
    ~requestMappingTemplate=?,
    ~dataSourceName=?,
    (),
  ) =>
    new({
      cachingConfig: cachingConfig,
      syncConfig: syncConfig,
      pipelineConfig: pipelineConfig,
      kind: kind,
      responseMappingTemplate: responseMappingTemplate,
      requestMappingTemplate: requestMappingTemplate,
      dataSourceName: dataSourceName,
      fieldName: fieldName,
      typeName: typeName,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFunction = {
  type t
  type request = {
    syncConfig: option<syncConfig>,
    @ocaml.doc("<p>The <code>version</code> of the request mapping template. Currently the supported value
         is 2018-05-29. </p>")
    functionVersion: string_,
    @ocaml.doc("<p>The <code>Function</code> request mapping template. </p>")
    responseMappingTemplate: option<mappingTemplate>,
    @ocaml.doc("<p>The <code>Function</code> request mapping template. Functions support only the
         2018-05-29 version of the request mapping template.</p>")
    requestMappingTemplate: option<mappingTemplate>,
    @ocaml.doc("<p>The <code>Function</code>
            <code>DataSource</code> name.</p>")
    dataSourceName: resourceName,
    @ocaml.doc("<p>The function ID.</p>") functionId: resourceName,
    @ocaml.doc("<p>The <code>Function</code> description.</p>") description: option<string_>,
    @ocaml.doc("<p>The <code>Function</code> name.</p>") name: resourceName,
    @ocaml.doc("<p>The GraphQL API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>Function</code> object.</p>")
    functionConfiguration: option<functionConfiguration>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "UpdateFunctionCommand"
  let make = (
    ~functionVersion,
    ~dataSourceName,
    ~functionId,
    ~name,
    ~apiId,
    ~syncConfig=?,
    ~responseMappingTemplate=?,
    ~requestMappingTemplate=?,
    ~description=?,
    (),
  ) =>
    new({
      syncConfig: syncConfig,
      functionVersion: functionVersion,
      responseMappingTemplate: responseMappingTemplate,
      requestMappingTemplate: requestMappingTemplate,
      dataSourceName: dataSourceName,
      functionId: functionId,
      description: description,
      name: name,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResolver = {
  type t
  type request = {
    @ocaml.doc("<p>The resolver field name.</p>") fieldName: resourceName,
    @ocaml.doc("<p>The resolver type name.</p>") typeName: resourceName,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>Resolver</code> object.</p>") resolver: option<resolver>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "GetResolverCommand"
  let make = (~fieldName, ~typeName, ~apiId, ()) =>
    new({fieldName: fieldName, typeName: typeName, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>Function</code> ID.</p>") functionId: resourceName,
    @ocaml.doc("<p>The GraphQL API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>Function</code> object.</p>")
    functionConfiguration: option<functionConfiguration>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "GetFunctionCommand"
  let make = (~functionId, ~apiId, ()) => new({functionId: functionId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResolver = {
  type t
  type request = {
    @ocaml.doc("<p>The caching configuration for the resolver.</p>")
    cachingConfig: option<cachingConfig>,
    @ocaml.doc(
      "<p>The <code>SyncConfig</code> for a resolver attached to a versioned datasource.</p>"
    )
    syncConfig: option<syncConfig>,
    @ocaml.doc("<p>The <code>PipelineConfig</code>.</p>") pipelineConfig: option<pipelineConfig>,
    @ocaml.doc("<p>The resolver type.</p>
         <ul>
            <li>
               <p>
                  <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
               the default resolver type. A UNIT resolver enables you to execute a GraphQL query
               against a single data source.</p>
            </li>
            <li>
               <p>
                  <b>PIPELINE</b>: A PIPELINE resolver type. A PIPELINE
               resolver enables you to execute a series of <code>Function</code> in a serial manner.
               You can use a pipeline resolver to execute a GraphQL query against multiple data
               sources.</p>
            </li>
         </ul>")
    kind: option<resolverKind>,
    @ocaml.doc("<p>The mapping template to be used for responses from the data source.</p>")
    responseMappingTemplate: option<mappingTemplate>,
    @ocaml.doc("<p>The mapping template to be used for requests.</p>
         <p>A resolver uses a request mapping template to convert a GraphQL expression into a format
         that a data source can understand. Mapping templates are written in Apache Velocity
         Template Language (VTL).</p>
         <p>VTL request mapping templates are optional when using a Lambda data source. For all
         other data sources, VTL request and response mapping templates are required.</p>")
    requestMappingTemplate: option<mappingTemplate>,
    @ocaml.doc("<p>The name of the data source for which the resolver is being created.</p>")
    dataSourceName: option<resourceName>,
    @ocaml.doc("<p>The name of the field to attach the resolver to.</p>") fieldName: resourceName,
    @ocaml.doc("<p>The name of the <code>Type</code>.</p>") typeName: resourceName,
    @ocaml.doc("<p>The ID for the GraphQL API for which the resolver is being created.</p>")
    apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>Resolver</code> object.</p>") resolver: option<resolver>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "CreateResolverCommand"
  let make = (
    ~fieldName,
    ~typeName,
    ~apiId,
    ~cachingConfig=?,
    ~syncConfig=?,
    ~pipelineConfig=?,
    ~kind=?,
    ~responseMappingTemplate=?,
    ~requestMappingTemplate=?,
    ~dataSourceName=?,
    (),
  ) =>
    new({
      cachingConfig: cachingConfig,
      syncConfig: syncConfig,
      pipelineConfig: pipelineConfig,
      kind: kind,
      responseMappingTemplate: responseMappingTemplate,
      requestMappingTemplate: requestMappingTemplate,
      dataSourceName: dataSourceName,
      fieldName: fieldName,
      typeName: typeName,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFunction = {
  type t
  type request = {
    syncConfig: option<syncConfig>,
    @ocaml.doc("<p>The <code>version</code> of the request mapping template. Currently the supported value
         is 2018-05-29. </p>")
    functionVersion: string_,
    @ocaml.doc("<p>The <code>Function</code> response mapping template. </p>")
    responseMappingTemplate: option<mappingTemplate>,
    @ocaml.doc("<p>The <code>Function</code> request mapping template. Functions support only the
         2018-05-29 version of the request mapping template.</p>")
    requestMappingTemplate: option<mappingTemplate>,
    @ocaml.doc("<p>The <code>Function</code>
            <code>DataSource</code> name.</p>")
    dataSourceName: resourceName,
    @ocaml.doc("<p>The <code>Function</code> description.</p>") description: option<string_>,
    @ocaml.doc(
      "<p>The <code>Function</code> name. The function name does not have to be unique.</p>"
    )
    name: resourceName,
    @ocaml.doc("<p>The GraphQL API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>Function</code> object.</p>")
    functionConfiguration: option<functionConfiguration>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "CreateFunctionCommand"
  let make = (
    ~functionVersion,
    ~dataSourceName,
    ~name,
    ~apiId,
    ~syncConfig=?,
    ~responseMappingTemplate=?,
    ~requestMappingTemplate=?,
    ~description=?,
    (),
  ) =>
    new({
      syncConfig: syncConfig,
      functionVersion: functionVersion,
      responseMappingTemplate: responseMappingTemplate,
      requestMappingTemplate: requestMappingTemplate,
      dataSourceName: dataSourceName,
      description: description,
      name: name,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGraphqlApi = {
  type t
  type request = {
    @ocaml.doc("<p>A flag indicating whether to enable X-Ray tracing for the
         <code>GraphqlApi</code>.</p>")
    xrayEnabled: option<boolean_>,
    @ocaml.doc("<p>A list of additional authentication providers for the <code>GraphqlApi</code>
         API.</p>")
    additionalAuthenticationProviders: option<additionalAuthenticationProviders>,
    @ocaml.doc("<p>The OpenID Connect configuration for the <code>GraphqlApi</code> object.</p>")
    openIDConnectConfig: option<openIDConnectConfig>,
    @ocaml.doc("<p>The new Amazon Cognito user pool configuration for the <code>GraphqlApi</code>
         object.</p>")
    userPoolConfig: option<userPoolConfig>,
    @ocaml.doc("<p>The new authentication type for the <code>GraphqlApi</code> object.</p>")
    authenticationType: option<authenticationType>,
    @ocaml.doc(
      "<p>The Amazon CloudWatch Logs configuration for the <code>GraphqlApi</code> object.</p>"
    )
    logConfig: option<logConfig>,
    @ocaml.doc("<p>The new name for the <code>GraphqlApi</code> object.</p>") name: string_,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The updated <code>GraphqlApi</code> object.</p>") graphqlApi: option<graphqlApi>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "UpdateGraphqlApiCommand"
  let make = (
    ~name,
    ~apiId,
    ~xrayEnabled=?,
    ~additionalAuthenticationProviders=?,
    ~openIDConnectConfig=?,
    ~userPoolConfig=?,
    ~authenticationType=?,
    ~logConfig=?,
    (),
  ) =>
    new({
      xrayEnabled: xrayEnabled,
      additionalAuthenticationProviders: additionalAuthenticationProviders,
      openIDConnectConfig: openIDConnectConfig,
      userPoolConfig: userPoolConfig,
      authenticationType: authenticationType,
      logConfig: logConfig,
      name: name,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>The new relational database configuration.</p>")
    relationalDatabaseConfig: option<relationalDatabaseDataSourceConfig>,
    @ocaml.doc("<p>The new HTTP endpoint configuration.</p>")
    httpConfig: option<httpDataSourceConfig>,
    @ocaml.doc("<p>The new Elasticsearch Service configuration.</p>")
    elasticsearchConfig: option<elasticsearchDataSourceConfig>,
    @ocaml.doc("<p>The new AWS Lambda configuration.</p>")
    lambdaConfig: option<lambdaDataSourceConfig>,
    @ocaml.doc("<p>The new Amazon DynamoDB configuration.</p>")
    dynamodbConfig: option<dynamodbDataSourceConfig>,
    @ocaml.doc("<p>The new service role ARN for the data source.</p>")
    serviceRoleArn: option<string_>,
    @ocaml.doc("<p>The new data source type.</p>") @as("type") type_: dataSourceType,
    @ocaml.doc("<p>The new description for the data source.</p>") description: option<string_>,
    @ocaml.doc("<p>The new name for the data source.</p>") name: resourceName,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The updated <code>DataSource</code> object.</p>") dataSource: option<dataSource>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "UpdateDataSourceCommand"
  let make = (
    ~type_,
    ~name,
    ~apiId,
    ~relationalDatabaseConfig=?,
    ~httpConfig=?,
    ~elasticsearchConfig=?,
    ~lambdaConfig=?,
    ~dynamodbConfig=?,
    ~serviceRoleArn=?,
    ~description=?,
    (),
  ) =>
    new({
      relationalDatabaseConfig: relationalDatabaseConfig,
      httpConfig: httpConfig,
      elasticsearchConfig: elasticsearchConfig,
      lambdaConfig: lambdaConfig,
      dynamodbConfig: dynamodbConfig,
      serviceRoleArn: serviceRoleArn,
      type_: type_,
      description: description,
      name: name,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResolversByFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results you want the request to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which you can
         use to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The Function ID.</p>") functionId: string_,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>An identifier that can be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of resolvers.</p>") resolvers: option<resolvers>,
  }
  @module("@aws-sdk/client-appsync") @new
  external new: request => t = "ListResolversByFunctionCommand"
  let make = (~functionId, ~apiId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, functionId: functionId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResolvers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results you want the request to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The type name.</p>") typeName: string_,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>An identifier to be passed in the next request to this operation to return the next set
         of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The <code>Resolver</code> objects.</p>") resolvers: option<resolvers>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "ListResolversCommand"
  let make = (~typeName, ~apiId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, typeName: typeName, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFunctions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results you want the request to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The GraphQL API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of <code>Function</code> objects.</p>") functions: option<functions>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "ListFunctionsCommand"
  let make = (~apiId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGraphqlApi = {
  type t
  type request = {@ocaml.doc("<p>The API ID for the GraphQL API.</p>") apiId: string_}
  type response = {
    @ocaml.doc("<p>The <code>GraphqlApi</code> object.</p>") graphqlApi: option<graphqlApi>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "GetGraphqlApiCommand"
  let make = (~apiId, ()) => new({apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the data source.</p>") name: resourceName,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>DataSource</code> object.</p>") dataSource: option<dataSource>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "GetDataSourceCommand"
  let make = (~name, ~apiId, ()) => new({name: name, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGraphqlApi = {
  type t
  type request = {
    @ocaml.doc("<p>A flag indicating whether to enable X-Ray tracing for the
         <code>GraphqlApi</code>.</p>")
    xrayEnabled: option<boolean_>,
    @ocaml.doc("<p>A list of additional authentication providers for the <code>GraphqlApi</code>
         API.</p>")
    additionalAuthenticationProviders: option<additionalAuthenticationProviders>,
    @ocaml.doc("<p>A <code>TagMap</code> object.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The OpenID Connect configuration.</p>")
    openIDConnectConfig: option<openIDConnectConfig>,
    @ocaml.doc("<p>The Amazon Cognito user pool configuration.</p>")
    userPoolConfig: option<userPoolConfig>,
    @ocaml.doc(
      "<p>The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user pools.</p>"
    )
    authenticationType: authenticationType,
    @ocaml.doc("<p>The Amazon CloudWatch Logs configuration.</p>") logConfig: option<logConfig>,
    @ocaml.doc("<p>A user-supplied name for the <code>GraphqlApi</code>.</p>") name: string_,
  }
  type response = {@ocaml.doc("<p>The <code>GraphqlApi</code>.</p>") graphqlApi: option<graphqlApi>}
  @module("@aws-sdk/client-appsync") @new external new: request => t = "CreateGraphqlApiCommand"
  let make = (
    ~authenticationType,
    ~name,
    ~xrayEnabled=?,
    ~additionalAuthenticationProviders=?,
    ~tags=?,
    ~openIDConnectConfig=?,
    ~userPoolConfig=?,
    ~logConfig=?,
    (),
  ) =>
    new({
      xrayEnabled: xrayEnabled,
      additionalAuthenticationProviders: additionalAuthenticationProviders,
      tags: tags,
      openIDConnectConfig: openIDConnectConfig,
      userPoolConfig: userPoolConfig,
      authenticationType: authenticationType,
      logConfig: logConfig,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>Relational database settings.</p>")
    relationalDatabaseConfig: option<relationalDatabaseDataSourceConfig>,
    @ocaml.doc("<p>HTTP endpoint settings.</p>") httpConfig: option<httpDataSourceConfig>,
    @ocaml.doc("<p>Amazon Elasticsearch Service settings.</p>")
    elasticsearchConfig: option<elasticsearchDataSourceConfig>,
    @ocaml.doc("<p>AWS Lambda settings.</p>") lambdaConfig: option<lambdaDataSourceConfig>,
    @ocaml.doc("<p>Amazon DynamoDB settings.</p>") dynamodbConfig: option<dynamodbDataSourceConfig>,
    @ocaml.doc("<p>The AWS IAM service role ARN for the data source. The system assumes this role when
         accessing the data source.</p>")
    serviceRoleArn: option<string_>,
    @ocaml.doc("<p>The type of the <code>DataSource</code>.</p>") @as("type") type_: dataSourceType,
    @ocaml.doc("<p>A description of the <code>DataSource</code>.</p>") description: option<string_>,
    @ocaml.doc("<p>A user-supplied name for the <code>DataSource</code>.</p>") name: resourceName,
    @ocaml.doc("<p>The API ID for the GraphQL API for the <code>DataSource</code>.</p>")
    apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>DataSource</code> object.</p>") dataSource: option<dataSource>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "CreateDataSourceCommand"
  let make = (
    ~type_,
    ~name,
    ~apiId,
    ~relationalDatabaseConfig=?,
    ~httpConfig=?,
    ~elasticsearchConfig=?,
    ~lambdaConfig=?,
    ~dynamodbConfig=?,
    ~serviceRoleArn=?,
    ~description=?,
    (),
  ) =>
    new({
      relationalDatabaseConfig: relationalDatabaseConfig,
      httpConfig: httpConfig,
      elasticsearchConfig: elasticsearchConfig,
      lambdaConfig: lambdaConfig,
      dynamodbConfig: dynamodbConfig,
      serviceRoleArn: serviceRoleArn,
      type_: type_,
      description: description,
      name: name,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGraphqlApis = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results you want the request to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list. </p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>An identifier to be passed in the next request to this operation to return the next set
         of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The <code>GraphqlApi</code> objects.</p>") graphqlApis: option<graphqlApis>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "ListGraphqlApisCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataSources = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results you want the request to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The API ID.</p>") apiId: string_,
  }
  type response = {
    @ocaml.doc("<p>An identifier to be passed in the next request to this operation to return the next set
         of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The <code>DataSource</code> objects.</p>") dataSources: option<dataSources>,
  }
  @module("@aws-sdk/client-appsync") @new external new: request => t = "ListDataSourcesCommand"
  let make = (~apiId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
