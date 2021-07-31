type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type timestamp_ = Js.Date.t;
type typeDefinitionFormat = [@as("JSON") #JSON | @as("SDL") #SDL]
type tagValue = string
type tagKey = string
type string_ = string
type schemaStatus = [@as("NOT_APPLICABLE") #NOTAPPLICABLE | @as("SUCCESS") #SUCCESS | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("PROCESSING") #PROCESSING]
type resourceName = string
type resourceArn = string
type resolverKind = [@as("PIPELINE") #PIPELINE | @as("UNIT") #UNIT]
type relationalDatabaseSourceType = [@as("RDS_HTTP_ENDPOINT") #RDSHTTPENDPOINT]
type paginationToken = string
type outputType = [@as("JSON") #JSON | @as("SDL") #SDL]
type maxResults = int
type mappingTemplate = string
type long = float
type fieldLogLevel = [@as("ALL") #ALL | @as("ERROR") #ERROR | @as("NONE") #NONE]
type errorMessage = string
type defaultAction = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type dataSourceType = [@as("RELATIONAL_DATABASE") #RELATIONALDATABASE | @as("HTTP") #HTTP | @as("NONE") #NONE | @as("AMAZON_ELASTICSEARCH") #AMAZONELASTICSEARCH | @as("AMAZON_DYNAMODB") #AMAZONDYNAMODB | @as("AWS_LAMBDA") #AWSLAMBDA]
type conflictHandlerType = [@as("NONE") #NONE | @as("AUTOMERGE") #AUTOMERGE | @as("LAMBDA") #LAMBDA | @as("OPTIMISTIC_CONCURRENCY") #OPTIMISTICCONCURRENCY]
type conflictDetectionType = [@as("NONE") #NONE | @as("VERSION") #VERSION]
type booleanValue = bool
type boolean_ = bool
type blob = NodeJs.Buffer.t
type authorizationType = [@as("AWS_IAM") #AWSIAM]
type authenticationType = [@as("OPENID_CONNECT") #OPENIDCONNECT | @as("AMAZON_COGNITO_USER_POOLS") #AMAZONCOGNITOUSERPOOLS | @as("AWS_IAM") #AWSIAM | @as("API_KEY") #APIKEY]
type apiCachingBehavior = [@as("PER_RESOLVER_CACHING") #PERRESOLVERCACHING | @as("FULL_REQUEST_CACHING") #FULLREQUESTCACHING]
type apiCacheType = [@as("LARGE_12X") #LARGE12X | @as("LARGE_8X") #LARGE8X | @as("LARGE_4X") #LARGE4X | @as("LARGE_2X") #LARGE2X | @as("XLARGE") #XLARGE | @as("LARGE") #LARGE | @as("MEDIUM") #MEDIUM | @as("SMALL") #SMALL | @as("R4_8XLARGE") #R48XLARGE | @as("R4_4XLARGE") #R44XLARGE | @as("R4_2XLARGE") #R42XLARGE | @as("R4_XLARGE") #R4XLARGE | @as("R4_LARGE") #R4LARGE | @as("T2_MEDIUM") #T2MEDIUM | @as("T2_SMALL") #T2SMALL]
type apiCacheStatus = [@as("FAILED") #FAILED | @as("MODIFYING") #MODIFYING | @as("DELETING") #DELETING | @as("CREATING") #CREATING | @as("AVAILABLE") #AVAILABLE]
type userPoolConfig = {
appIdClientRegex: option<string_>,
defaultAction: defaultAction,
awsRegion: string_,
userPoolId: string_
}
type type_ = {
format: option<typeDefinitionFormat>,
definition: option<string_>,
arn: option<string_>,
description: option<string_>,
name: option<resourceName>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type rdsHttpEndpointConfig = {
awsSecretStoreArn: option<string_>,
schema: option<string_>,
databaseName: option<string_>,
dbClusterIdentifier: option<string_>,
awsRegion: option<string_>
}
type openIDConnectConfig = {
authTTL: option<long>,
iatTTL: option<long>,
clientId: option<string_>,
issuer: string_
}
type mapOfStringToString = Js.Dict.t< string_>
type logConfig = {
excludeVerboseContent: option<boolean_>,
cloudWatchLogsRoleArn: string_,
fieldLogLevel: fieldLogLevel
}
type lambdaDataSourceConfig = {
lambdaFunctionArn: string_
}
type lambdaConflictHandlerConfig = {
lambdaConflictHandlerArn: option<string_>
}
type functionsIds = array<string_>
type elasticsearchDataSourceConfig = {
awsRegion: string_,
endpoint: string_
}
type deltaSyncConfig = {
deltaSyncTableTTL: option<long>,
deltaSyncTableName: option<string_>,
baseTableTTL: option<long>
}
type cognitoUserPoolConfig = {
appIdClientRegex: option<string_>,
awsRegion: string_,
userPoolId: string_
}
type cachingKeys = array<string_>
type awsIamConfig = {
signingServiceName: option<string_>,
signingRegion: option<string_>
}
type apiKey = {
deletes: option<long>,
expires: option<long>,
description: option<string_>,
id: option<string_>
}
type apiCache = {
status: option<apiCacheStatus>,
@as("type") type_: option<apiCacheType>,
atRestEncryptionEnabled: option<boolean_>,
transitEncryptionEnabled: option<boolean_>,
apiCachingBehavior: option<apiCachingBehavior>,
ttl: option<long>
}
type typeList = array<type_>
type syncConfig = {
lambdaConflictHandlerConfig: option<lambdaConflictHandlerConfig>,
conflictDetection: option<conflictDetectionType>,
conflictHandler: option<conflictHandlerType>
}
type relationalDatabaseDataSourceConfig = {
rdsHttpEndpointConfig: option<rdsHttpEndpointConfig>,
relationalDatabaseSourceType: option<relationalDatabaseSourceType>
}
type pipelineConfig = {
functions: option<functionsIds>
}
type dynamodbDataSourceConfig = {
versioned: option<boolean_>,
deltaSyncConfig: option<deltaSyncConfig>,
useCallerCredentials: option<boolean_>,
awsRegion: string_,
tableName: string_
}
type cachingConfig = {
cachingKeys: option<cachingKeys>,
ttl: option<long>
}
type authorizationConfig = {
awsIamConfig: option<awsIamConfig>,
authorizationType: authorizationType
}
type apiKeys = array<apiKey>
type additionalAuthenticationProvider = {
userPoolConfig: option<cognitoUserPoolConfig>,
openIDConnectConfig: option<openIDConnectConfig>,
authenticationType: option<authenticationType>
}
type resolver = {
cachingConfig: option<cachingConfig>,
syncConfig: option<syncConfig>,
pipelineConfig: option<pipelineConfig>,
kind: option<resolverKind>,
responseMappingTemplate: option<mappingTemplate>,
requestMappingTemplate: option<mappingTemplate>,
resolverArn: option<string_>,
dataSourceName: option<resourceName>,
fieldName: option<resourceName>,
typeName: option<resourceName>
}
type httpDataSourceConfig = {
authorizationConfig: option<authorizationConfig>,
endpoint: option<string_>
}
type functionConfiguration = {
syncConfig: option<syncConfig>,
functionVersion: option<string_>,
responseMappingTemplate: option<mappingTemplate>,
requestMappingTemplate: option<mappingTemplate>,
dataSourceName: option<resourceName>,
description: option<string_>,
name: option<resourceName>,
functionArn: option<string_>,
functionId: option<string_>
}
type additionalAuthenticationProviders = array<additionalAuthenticationProvider>
type resolvers = array<resolver>
type graphqlApi = {
wafWebAclArn: option<string_>,
xrayEnabled: option<boolean_>,
additionalAuthenticationProviders: option<additionalAuthenticationProviders>,
tags: option<tagMap>,
uris: option<mapOfStringToString>,
arn: option<string_>,
openIDConnectConfig: option<openIDConnectConfig>,
userPoolConfig: option<userPoolConfig>,
logConfig: option<logConfig>,
authenticationType: option<authenticationType>,
apiId: option<string_>,
name: option<resourceName>
}
type functions = array<functionConfiguration>
type dataSource = {
relationalDatabaseConfig: option<relationalDatabaseDataSourceConfig>,
httpConfig: option<httpDataSourceConfig>,
elasticsearchConfig: option<elasticsearchDataSourceConfig>,
lambdaConfig: option<lambdaDataSourceConfig>,
dynamodbConfig: option<dynamodbDataSourceConfig>,
serviceRoleArn: option<string_>,
@as("type") type_: option<dataSourceType>,
description: option<string_>,
name: option<resourceName>,
dataSourceArn: option<string_>
}
type graphqlApis = array<graphqlApi>
type dataSources = array<dataSource>
type awsServiceClient;
@module("@aws-sdk/client-appsync") @new external createClient: unit => awsServiceClient = "AppSyncClient";
module StartSchemaCreation = {
  type t;
  type request = {
definition: blob,
apiId: string_
}
  type response = {
status: option<schemaStatus>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "StartSchemaCreationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSchemaCreationStatus = {
  type t;
  type request = {
apiId: string_
}
  type response = {
details: option<string_>,
status: option<schemaStatus>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "GetSchemaCreationStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIntrospectionSchema = {
  type t;
  type request = {
includeDirectives: option<booleanValue>,
format: outputType,
apiId: string_
}
  type response = {
schema: option<blob>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "GetIntrospectionSchemaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module FlushApiCache = {
  type t;
  type request = {
apiId: string_
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "FlushApiCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteType = {
  type t;
  type request = {
typeName: resourceName,
apiId: string_
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "DeleteTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteResolver = {
  type t;
  type request = {
fieldName: resourceName,
typeName: resourceName,
apiId: string_
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "DeleteResolverCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteGraphqlApi = {
  type t;
  type request = {
apiId: string_
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "DeleteGraphqlApiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFunction = {
  type t;
  type request = {
functionId: resourceName,
apiId: string_
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "DeleteFunctionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDataSource = {
  type t;
  type request = {
name: resourceName,
apiId: string_
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "DeleteDataSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApiKey = {
  type t;
  type request = {
id: string_,
apiId: string_
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "DeleteApiKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApiCache = {
  type t;
  type request = {
apiId: string_
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "DeleteApiCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateType = {
  type t;
  type request = {
format: typeDefinitionFormat,
definition: option<string_>,
typeName: resourceName,
apiId: string_
}
  type response = {
@as("type") type_: option<type_>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "UpdateTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApiKey = {
  type t;
  type request = {
expires: option<long>,
description: option<string_>,
id: string_,
apiId: string_
}
  type response = {
apiKey: option<apiKey>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "UpdateApiKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApiCache = {
  type t;
  type request = {
@as("type") type_: apiCacheType,
apiCachingBehavior: apiCachingBehavior,
ttl: long,
apiId: string_
}
  type response = {
apiCache: option<apiCache>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "UpdateApiCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: resourceArn
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetType = {
  type t;
  type request = {
format: typeDefinitionFormat,
typeName: resourceName,
apiId: string_
}
  type response = {
@as("type") type_: option<type_>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "GetTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApiCache = {
  type t;
  type request = {
apiId: string_
}
  type response = {
apiCache: option<apiCache>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "GetApiCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateType = {
  type t;
  type request = {
format: typeDefinitionFormat,
definition: string_,
apiId: string_
}
  type response = {
@as("type") type_: option<type_>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "CreateTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApiKey = {
  type t;
  type request = {
expires: option<long>,
description: option<string_>,
apiId: string_
}
  type response = {
apiKey: option<apiKey>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "CreateApiKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApiCache = {
  type t;
  type request = {
@as("type") type_: apiCacheType,
apiCachingBehavior: apiCachingBehavior,
atRestEncryptionEnabled: option<boolean_>,
transitEncryptionEnabled: option<boolean_>,
ttl: long,
apiId: string_
}
  type response = {
apiCache: option<apiCache>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "CreateApiCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTypes = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<paginationToken>,
format: typeDefinitionFormat,
apiId: string_
}
  type response = {
nextToken: option<paginationToken>,
types: option<typeList>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "ListTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApiKeys = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<paginationToken>,
apiId: string_
}
  type response = {
nextToken: option<paginationToken>,
apiKeys: option<apiKeys>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "ListApiKeysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateResolver = {
  type t;
  type request = {
cachingConfig: option<cachingConfig>,
syncConfig: option<syncConfig>,
pipelineConfig: option<pipelineConfig>,
kind: option<resolverKind>,
responseMappingTemplate: option<mappingTemplate>,
requestMappingTemplate: option<mappingTemplate>,
dataSourceName: option<resourceName>,
fieldName: resourceName,
typeName: resourceName,
apiId: string_
}
  type response = {
resolver: option<resolver>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "UpdateResolverCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateFunction = {
  type t;
  type request = {
syncConfig: option<syncConfig>,
functionVersion: string_,
responseMappingTemplate: option<mappingTemplate>,
requestMappingTemplate: option<mappingTemplate>,
dataSourceName: resourceName,
functionId: resourceName,
description: option<string_>,
name: resourceName,
apiId: string_
}
  type response = {
functionConfiguration: option<functionConfiguration>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "UpdateFunctionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResolver = {
  type t;
  type request = {
fieldName: resourceName,
typeName: resourceName,
apiId: string_
}
  type response = {
resolver: option<resolver>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "GetResolverCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFunction = {
  type t;
  type request = {
functionId: resourceName,
apiId: string_
}
  type response = {
functionConfiguration: option<functionConfiguration>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "GetFunctionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateResolver = {
  type t;
  type request = {
cachingConfig: option<cachingConfig>,
syncConfig: option<syncConfig>,
pipelineConfig: option<pipelineConfig>,
kind: option<resolverKind>,
responseMappingTemplate: option<mappingTemplate>,
requestMappingTemplate: option<mappingTemplate>,
dataSourceName: option<resourceName>,
fieldName: resourceName,
typeName: resourceName,
apiId: string_
}
  type response = {
resolver: option<resolver>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "CreateResolverCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateFunction = {
  type t;
  type request = {
syncConfig: option<syncConfig>,
functionVersion: string_,
responseMappingTemplate: option<mappingTemplate>,
requestMappingTemplate: option<mappingTemplate>,
dataSourceName: resourceName,
description: option<string_>,
name: resourceName,
apiId: string_
}
  type response = {
functionConfiguration: option<functionConfiguration>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "CreateFunctionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateGraphqlApi = {
  type t;
  type request = {
xrayEnabled: option<boolean_>,
additionalAuthenticationProviders: option<additionalAuthenticationProviders>,
openIDConnectConfig: option<openIDConnectConfig>,
userPoolConfig: option<userPoolConfig>,
authenticationType: option<authenticationType>,
logConfig: option<logConfig>,
name: string_,
apiId: string_
}
  type response = {
graphqlApi: option<graphqlApi>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "UpdateGraphqlApiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDataSource = {
  type t;
  type request = {
relationalDatabaseConfig: option<relationalDatabaseDataSourceConfig>,
httpConfig: option<httpDataSourceConfig>,
elasticsearchConfig: option<elasticsearchDataSourceConfig>,
lambdaConfig: option<lambdaDataSourceConfig>,
dynamodbConfig: option<dynamodbDataSourceConfig>,
serviceRoleArn: option<string_>,
@as("type") type_: dataSourceType,
description: option<string_>,
name: resourceName,
apiId: string_
}
  type response = {
dataSource: option<dataSource>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "UpdateDataSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResolversByFunction = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<paginationToken>,
functionId: string_,
apiId: string_
}
  type response = {
nextToken: option<paginationToken>,
resolvers: option<resolvers>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "ListResolversByFunctionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResolvers = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<paginationToken>,
typeName: string_,
apiId: string_
}
  type response = {
nextToken: option<paginationToken>,
resolvers: option<resolvers>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "ListResolversCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFunctions = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<paginationToken>,
apiId: string_
}
  type response = {
nextToken: option<paginationToken>,
functions: option<functions>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "ListFunctionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetGraphqlApi = {
  type t;
  type request = {
apiId: string_
}
  type response = {
graphqlApi: option<graphqlApi>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "GetGraphqlApiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDataSource = {
  type t;
  type request = {
name: resourceName,
apiId: string_
}
  type response = {
dataSource: option<dataSource>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "GetDataSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateGraphqlApi = {
  type t;
  type request = {
xrayEnabled: option<boolean_>,
additionalAuthenticationProviders: option<additionalAuthenticationProviders>,
tags: option<tagMap>,
openIDConnectConfig: option<openIDConnectConfig>,
userPoolConfig: option<userPoolConfig>,
authenticationType: authenticationType,
logConfig: option<logConfig>,
name: string_
}
  type response = {
graphqlApi: option<graphqlApi>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "CreateGraphqlApiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDataSource = {
  type t;
  type request = {
relationalDatabaseConfig: option<relationalDatabaseDataSourceConfig>,
httpConfig: option<httpDataSourceConfig>,
elasticsearchConfig: option<elasticsearchDataSourceConfig>,
lambdaConfig: option<lambdaDataSourceConfig>,
dynamodbConfig: option<dynamodbDataSourceConfig>,
serviceRoleArn: option<string_>,
@as("type") type_: dataSourceType,
description: option<string_>,
name: resourceName,
apiId: string_
}
  type response = {
dataSource: option<dataSource>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "CreateDataSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGraphqlApis = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<paginationToken>
}
  type response = {
nextToken: option<paginationToken>,
graphqlApis: option<graphqlApis>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "ListGraphqlApisCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDataSources = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<paginationToken>,
apiId: string_
}
  type response = {
nextToken: option<paginationToken>,
dataSources: option<dataSources>
}
  @module("@aws-sdk/client-appsync") @new external new_: (request) => t = "ListDataSourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
