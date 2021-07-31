type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type typeDefinitionFormat = [@as("JSON") #JSON | @as("SDL") #SDL]
type tagValue = string
type tagKey = string
type amazonawsString = string
type schemaStatus = [@as("NOT_APPLICABLE") #NOT_APPLICABLE | @as("SUCCESS") #SUCCESS | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("PROCESSING") #PROCESSING]
type resourceName = string
type resourceArn = string
type resolverKind = [@as("PIPELINE") #PIPELINE | @as("UNIT") #UNIT]
type relationalDatabaseSourceType = [@as("RDS_HTTP_ENDPOINT") #RDS_HTTP_ENDPOINT]
type paginationToken = string
type outputType = [@as("JSON") #JSON | @as("SDL") #SDL]
type maxResults = int;
type mappingTemplate = string
type amazonawsLong = float;
type fieldLogLevel = [@as("ALL") #ALL | @as("ERROR") #ERROR | @as("NONE") #NONE]
type errorMessage = string
type defaultAction = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type dataSourceType = [@as("RELATIONAL_DATABASE") #RELATIONAL_DATABASE | @as("HTTP") #HTTP | @as("NONE") #NONE | @as("AMAZON_ELASTICSEARCH") #AMAZON_ELASTICSEARCH | @as("AMAZON_DYNAMODB") #AMAZON_DYNAMODB | @as("AWS_LAMBDA") #AWS_LAMBDA]
type conflictHandlerType = [@as("NONE") #NONE | @as("AUTOMERGE") #AUTOMERGE | @as("LAMBDA") #LAMBDA | @as("OPTIMISTIC_CONCURRENCY") #OPTIMISTIC_CONCURRENCY]
type conflictDetectionType = [@as("NONE") #NONE | @as("VERSION") #VERSION]
type booleanValue = bool;
type amazonawsBoolean = bool;
type blob = NodeJs.Buffer.t;
type authorizationType = [@as("AWS_IAM") #AWS_IAM]
type authenticationType = [@as("OPENID_CONNECT") #OPENID_CONNECT | @as("AMAZON_COGNITO_USER_POOLS") #AMAZON_COGNITO_USER_POOLS | @as("AWS_IAM") #AWS_IAM | @as("API_KEY") #API_KEY]
type apiCachingBehavior = [@as("PER_RESOLVER_CACHING") #PER_RESOLVER_CACHING | @as("FULL_REQUEST_CACHING") #FULL_REQUEST_CACHING]
type apiCacheType = [@as("LARGE_12X") #LARGE_12X | @as("LARGE_8X") #LARGE_8X | @as("LARGE_4X") #LARGE_4X | @as("LARGE_2X") #LARGE_2X | @as("XLARGE") #XLARGE | @as("LARGE") #LARGE | @as("MEDIUM") #MEDIUM | @as("SMALL") #SMALL | @as("R4_8XLARGE") #R4_8XLARGE | @as("R4_4XLARGE") #R4_4XLARGE | @as("R4_2XLARGE") #R4_2XLARGE | @as("R4_XLARGE") #R4_XLARGE | @as("R4_LARGE") #R4_LARGE | @as("T2_MEDIUM") #T2_MEDIUM | @as("T2_SMALL") #T2_SMALL]
type apiCacheStatus = [@as("FAILED") #FAILED | @as("MODIFYING") #MODIFYING | @as("DELETING") #DELETING | @as("CREATING") #CREATING | @as("AVAILABLE") #AVAILABLE]
type userPoolConfig = {
@as("appIdClientRegex") appIdClientRegex: amazonawsString,
@as("defaultAction") defaultAction: option<defaultAction>,
@as("awsRegion") awsRegion: option<amazonawsString>,
@as("userPoolId") userPoolId: option<amazonawsString>
}
type type_ = {
@as("format") format: typeDefinitionFormat,
@as("definition") definition: amazonawsString,
@as("arn") arn: amazonawsString,
@as("description") description: amazonawsString,
@as("name") name: resourceName
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type rdsHttpEndpointConfig = {
@as("awsSecretStoreArn") awsSecretStoreArn: amazonawsString,
@as("schema") schema: amazonawsString,
@as("databaseName") databaseName: amazonawsString,
@as("dbClusterIdentifier") dbClusterIdentifier: amazonawsString,
@as("awsRegion") awsRegion: amazonawsString
}
type openIDConnectConfig = {
@as("authTTL") authTTL: amazonawsLong,
@as("iatTTL") iatTTL: amazonawsLong,
@as("clientId") clientId: amazonawsString,
@as("issuer") issuer: option<amazonawsString>
}
type mapOfStringToString = Js.Dict.t< amazonawsString>
type logConfig = {
@as("excludeVerboseContent") excludeVerboseContent: amazonawsBoolean,
@as("cloudWatchLogsRoleArn") cloudWatchLogsRoleArn: option<amazonawsString>,
@as("fieldLogLevel") fieldLogLevel: option<fieldLogLevel>
}
type lambdaDataSourceConfig = {
@as("lambdaFunctionArn") lambdaFunctionArn: option<amazonawsString>
}
type lambdaConflictHandlerConfig = {
@as("lambdaConflictHandlerArn") lambdaConflictHandlerArn: amazonawsString
}
type functionsIds = array<amazonawsString>
type elasticsearchDataSourceConfig = {
@as("awsRegion") awsRegion: option<amazonawsString>,
@as("endpoint") endpoint: option<amazonawsString>
}
type deltaSyncConfig = {
@as("deltaSyncTableTTL") deltaSyncTableTTL: amazonawsLong,
@as("deltaSyncTableName") deltaSyncTableName: amazonawsString,
@as("baseTableTTL") baseTableTTL: amazonawsLong
}
type cognitoUserPoolConfig = {
@as("appIdClientRegex") appIdClientRegex: amazonawsString,
@as("awsRegion") awsRegion: option<amazonawsString>,
@as("userPoolId") userPoolId: option<amazonawsString>
}
type cachingKeys = array<amazonawsString>
type awsIamConfig = {
@as("signingServiceName") signingServiceName: amazonawsString,
@as("signingRegion") signingRegion: amazonawsString
}
type apiKey = {
@as("deletes") deletes: amazonawsLong,
@as("expires") expires: amazonawsLong,
@as("description") description: amazonawsString,
@as("id") id: amazonawsString
}
type apiCache = {
@as("status") status: apiCacheStatus,
@as("type") type_: apiCacheType,
@as("atRestEncryptionEnabled") atRestEncryptionEnabled: amazonawsBoolean,
@as("transitEncryptionEnabled") transitEncryptionEnabled: amazonawsBoolean,
@as("apiCachingBehavior") apiCachingBehavior: apiCachingBehavior,
@as("ttl") ttl: amazonawsLong
}
type typeList = array<type_>
type syncConfig = {
@as("lambdaConflictHandlerConfig") lambdaConflictHandlerConfig: lambdaConflictHandlerConfig,
@as("conflictDetection") conflictDetection: conflictDetectionType,
@as("conflictHandler") conflictHandler: conflictHandlerType
}
type relationalDatabaseDataSourceConfig = {
@as("rdsHttpEndpointConfig") rdsHttpEndpointConfig: rdsHttpEndpointConfig,
@as("relationalDatabaseSourceType") relationalDatabaseSourceType: relationalDatabaseSourceType
}
type pipelineConfig = {
@as("functions") functions: functionsIds
}
type dynamodbDataSourceConfig = {
@as("versioned") versioned: amazonawsBoolean,
@as("deltaSyncConfig") deltaSyncConfig: deltaSyncConfig,
@as("useCallerCredentials") useCallerCredentials: amazonawsBoolean,
@as("awsRegion") awsRegion: option<amazonawsString>,
@as("tableName") tableName: option<amazonawsString>
}
type cachingConfig = {
@as("cachingKeys") cachingKeys: cachingKeys,
@as("ttl") ttl: amazonawsLong
}
type authorizationConfig = {
@as("awsIamConfig") awsIamConfig: awsIamConfig,
@as("authorizationType") authorizationType: option<authorizationType>
}
type apiKeys = array<apiKey>
type additionalAuthenticationProvider = {
@as("userPoolConfig") userPoolConfig: cognitoUserPoolConfig,
@as("openIDConnectConfig") openIDConnectConfig: openIDConnectConfig,
@as("authenticationType") authenticationType: authenticationType
}
type resolver = {
@as("cachingConfig") cachingConfig: cachingConfig,
@as("syncConfig") syncConfig: syncConfig,
@as("pipelineConfig") pipelineConfig: pipelineConfig,
@as("kind") kind: resolverKind,
@as("responseMappingTemplate") responseMappingTemplate: mappingTemplate,
@as("requestMappingTemplate") requestMappingTemplate: mappingTemplate,
@as("resolverArn") resolverArn: amazonawsString,
@as("dataSourceName") dataSourceName: resourceName,
@as("fieldName") fieldName: resourceName,
@as("typeName") typeName: resourceName
}
type httpDataSourceConfig = {
@as("authorizationConfig") authorizationConfig: authorizationConfig,
@as("endpoint") endpoint: amazonawsString
}
type functionConfiguration = {
@as("syncConfig") syncConfig: syncConfig,
@as("functionVersion") functionVersion: amazonawsString,
@as("responseMappingTemplate") responseMappingTemplate: mappingTemplate,
@as("requestMappingTemplate") requestMappingTemplate: mappingTemplate,
@as("dataSourceName") dataSourceName: resourceName,
@as("description") description: amazonawsString,
@as("name") name: resourceName,
@as("functionArn") functionArn: amazonawsString,
@as("functionId") functionId: amazonawsString
}
type additionalAuthenticationProviders = array<additionalAuthenticationProvider>
type resolvers = array<resolver>
type graphqlApi = {
@as("wafWebAclArn") wafWebAclArn: amazonawsString,
@as("xrayEnabled") xrayEnabled: amazonawsBoolean,
@as("additionalAuthenticationProviders") additionalAuthenticationProviders: additionalAuthenticationProviders,
@as("tags") tags: tagMap,
@as("uris") uris: mapOfStringToString,
@as("arn") arn: amazonawsString,
@as("openIDConnectConfig") openIDConnectConfig: openIDConnectConfig,
@as("userPoolConfig") userPoolConfig: userPoolConfig,
@as("logConfig") logConfig: logConfig,
@as("authenticationType") authenticationType: authenticationType,
@as("apiId") apiId: amazonawsString,
@as("name") name: resourceName
}
type functions = array<functionConfiguration>
type dataSource = {
@as("relationalDatabaseConfig") relationalDatabaseConfig: relationalDatabaseDataSourceConfig,
@as("httpConfig") httpConfig: httpDataSourceConfig,
@as("elasticsearchConfig") elasticsearchConfig: elasticsearchDataSourceConfig,
@as("lambdaConfig") lambdaConfig: lambdaDataSourceConfig,
@as("dynamodbConfig") dynamodbConfig: dynamodbDataSourceConfig,
@as("serviceRoleArn") serviceRoleArn: amazonawsString,
@as("type") type_: dataSourceType,
@as("description") description: amazonawsString,
@as("name") name: resourceName,
@as("dataSourceArn") dataSourceArn: amazonawsString
}
type graphqlApis = array<graphqlApi>
type dataSources = array<dataSource>
type clientType;
@module("@aws-sdk/client-appsync") @new external createClient: unit => clientType = "AppSyncClient";
module StartSchemaCreation = {
  type t;
  type request = {
@as("definition") definition: option<blob>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("status") status: schemaStatus
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "StartSchemaCreationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSchemaCreationStatus = {
  type t;
  type request = {
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("details") details: amazonawsString,
@as("status") status: schemaStatus
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "GetSchemaCreationStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIntrospectionSchema = {
  type t;
  type request = {
@as("includeDirectives") includeDirectives: booleanValue,
@as("format") format: option<outputType>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("schema") schema: blob
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "GetIntrospectionSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module FlushApiCache = {
  type t;
  type request = {
@as("apiId") apiId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "FlushApiCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteType = {
  type t;
  type request = {
@as("typeName") typeName: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "DeleteTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResolver = {
  type t;
  type request = {
@as("fieldName") fieldName: option<resourceName>,
@as("typeName") typeName: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "DeleteResolverCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGraphqlApi = {
  type t;
  type request = {
@as("apiId") apiId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "DeleteGraphqlApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFunction = {
  type t;
  type request = {
@as("functionId") functionId: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "DeleteFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDataSource = {
  type t;
  type request = {
@as("name") name: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "DeleteDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApiKey = {
  type t;
  type request = {
@as("id") id: option<amazonawsString>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "DeleteApiKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApiCache = {
  type t;
  type request = {
@as("apiId") apiId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "DeleteApiCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateType = {
  type t;
  type request = {
@as("format") format: option<typeDefinitionFormat>,
@as("definition") definition: amazonawsString,
@as("typeName") typeName: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("type") type_: type_
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "UpdateTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApiKey = {
  type t;
  type request = {
@as("expires") expires: amazonawsLong,
@as("description") description: amazonawsString,
@as("id") id: option<amazonawsString>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("apiKey") apiKey: apiKey
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "UpdateApiKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApiCache = {
  type t;
  type request = {
@as("type") type_: option<apiCacheType>,
@as("apiCachingBehavior") apiCachingBehavior: option<apiCachingBehavior>,
@as("ttl") ttl: option<amazonawsLong>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("apiCache") apiCache: apiCache
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "UpdateApiCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetType = {
  type t;
  type request = {
@as("format") format: option<typeDefinitionFormat>,
@as("typeName") typeName: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("type") type_: type_
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "GetTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApiCache = {
  type t;
  type request = {
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("apiCache") apiCache: apiCache
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "GetApiCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateType = {
  type t;
  type request = {
@as("format") format: option<typeDefinitionFormat>,
@as("definition") definition: option<amazonawsString>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("type") type_: type_
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "CreateTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApiKey = {
  type t;
  type request = {
@as("expires") expires: amazonawsLong,
@as("description") description: amazonawsString,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("apiKey") apiKey: apiKey
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "CreateApiKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApiCache = {
  type t;
  type request = {
@as("type") type_: option<apiCacheType>,
@as("apiCachingBehavior") apiCachingBehavior: option<apiCachingBehavior>,
@as("atRestEncryptionEnabled") atRestEncryptionEnabled: amazonawsBoolean,
@as("transitEncryptionEnabled") transitEncryptionEnabled: amazonawsBoolean,
@as("ttl") ttl: option<amazonawsLong>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("apiCache") apiCache: apiCache
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "CreateApiCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTypes = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("format") format: option<typeDefinitionFormat>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("types") types: typeList
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "ListTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApiKeys = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("apiKeys") apiKeys: apiKeys
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "ListApiKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateResolver = {
  type t;
  type request = {
@as("cachingConfig") cachingConfig: cachingConfig,
@as("syncConfig") syncConfig: syncConfig,
@as("pipelineConfig") pipelineConfig: pipelineConfig,
@as("kind") kind: resolverKind,
@as("responseMappingTemplate") responseMappingTemplate: mappingTemplate,
@as("requestMappingTemplate") requestMappingTemplate: mappingTemplate,
@as("dataSourceName") dataSourceName: resourceName,
@as("fieldName") fieldName: option<resourceName>,
@as("typeName") typeName: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("resolver") resolver: resolver
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "UpdateResolverCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFunction = {
  type t;
  type request = {
@as("syncConfig") syncConfig: syncConfig,
@as("functionVersion") functionVersion: option<amazonawsString>,
@as("responseMappingTemplate") responseMappingTemplate: mappingTemplate,
@as("requestMappingTemplate") requestMappingTemplate: mappingTemplate,
@as("dataSourceName") dataSourceName: option<resourceName>,
@as("functionId") functionId: option<resourceName>,
@as("description") description: amazonawsString,
@as("name") name: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("functionConfiguration") functionConfiguration: functionConfiguration
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "UpdateFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResolver = {
  type t;
  type request = {
@as("fieldName") fieldName: option<resourceName>,
@as("typeName") typeName: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("resolver") resolver: resolver
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "GetResolverCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFunction = {
  type t;
  type request = {
@as("functionId") functionId: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("functionConfiguration") functionConfiguration: functionConfiguration
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "GetFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResolver = {
  type t;
  type request = {
@as("cachingConfig") cachingConfig: cachingConfig,
@as("syncConfig") syncConfig: syncConfig,
@as("pipelineConfig") pipelineConfig: pipelineConfig,
@as("kind") kind: resolverKind,
@as("responseMappingTemplate") responseMappingTemplate: mappingTemplate,
@as("requestMappingTemplate") requestMappingTemplate: mappingTemplate,
@as("dataSourceName") dataSourceName: resourceName,
@as("fieldName") fieldName: option<resourceName>,
@as("typeName") typeName: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("resolver") resolver: resolver
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "CreateResolverCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFunction = {
  type t;
  type request = {
@as("syncConfig") syncConfig: syncConfig,
@as("functionVersion") functionVersion: option<amazonawsString>,
@as("responseMappingTemplate") responseMappingTemplate: mappingTemplate,
@as("requestMappingTemplate") requestMappingTemplate: mappingTemplate,
@as("dataSourceName") dataSourceName: option<resourceName>,
@as("description") description: amazonawsString,
@as("name") name: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("functionConfiguration") functionConfiguration: functionConfiguration
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "CreateFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGraphqlApi = {
  type t;
  type request = {
@as("xrayEnabled") xrayEnabled: amazonawsBoolean,
@as("additionalAuthenticationProviders") additionalAuthenticationProviders: additionalAuthenticationProviders,
@as("openIDConnectConfig") openIDConnectConfig: openIDConnectConfig,
@as("userPoolConfig") userPoolConfig: userPoolConfig,
@as("authenticationType") authenticationType: authenticationType,
@as("logConfig") logConfig: logConfig,
@as("name") name: option<amazonawsString>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("graphqlApi") graphqlApi: graphqlApi
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "UpdateGraphqlApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDataSource = {
  type t;
  type request = {
@as("relationalDatabaseConfig") relationalDatabaseConfig: relationalDatabaseDataSourceConfig,
@as("httpConfig") httpConfig: httpDataSourceConfig,
@as("elasticsearchConfig") elasticsearchConfig: elasticsearchDataSourceConfig,
@as("lambdaConfig") lambdaConfig: lambdaDataSourceConfig,
@as("dynamodbConfig") dynamodbConfig: dynamodbDataSourceConfig,
@as("serviceRoleArn") serviceRoleArn: amazonawsString,
@as("type") type_: option<dataSourceType>,
@as("description") description: amazonawsString,
@as("name") name: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("dataSource") dataSource: dataSource
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "UpdateDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResolversByFunction = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("functionId") functionId: option<amazonawsString>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("resolvers") resolvers: resolvers
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "ListResolversByFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResolvers = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("typeName") typeName: option<amazonawsString>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("resolvers") resolvers: resolvers
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "ListResolversCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFunctions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("functions") functions: functions
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "ListFunctionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGraphqlApi = {
  type t;
  type request = {
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("graphqlApi") graphqlApi: graphqlApi
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "GetGraphqlApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDataSource = {
  type t;
  type request = {
@as("name") name: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("dataSource") dataSource: dataSource
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "GetDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGraphqlApi = {
  type t;
  type request = {
@as("xrayEnabled") xrayEnabled: amazonawsBoolean,
@as("additionalAuthenticationProviders") additionalAuthenticationProviders: additionalAuthenticationProviders,
@as("tags") tags: tagMap,
@as("openIDConnectConfig") openIDConnectConfig: openIDConnectConfig,
@as("userPoolConfig") userPoolConfig: userPoolConfig,
@as("authenticationType") authenticationType: option<authenticationType>,
@as("logConfig") logConfig: logConfig,
@as("name") name: option<amazonawsString>
}
  type response = {
@as("graphqlApi") graphqlApi: graphqlApi
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "CreateGraphqlApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataSource = {
  type t;
  type request = {
@as("relationalDatabaseConfig") relationalDatabaseConfig: relationalDatabaseDataSourceConfig,
@as("httpConfig") httpConfig: httpDataSourceConfig,
@as("elasticsearchConfig") elasticsearchConfig: elasticsearchDataSourceConfig,
@as("lambdaConfig") lambdaConfig: lambdaDataSourceConfig,
@as("dynamodbConfig") dynamodbConfig: dynamodbDataSourceConfig,
@as("serviceRoleArn") serviceRoleArn: amazonawsString,
@as("type") type_: option<dataSourceType>,
@as("description") description: amazonawsString,
@as("name") name: option<resourceName>,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("dataSource") dataSource: dataSource
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "CreateDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGraphqlApis = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("graphqlApis") graphqlApis: graphqlApis
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "ListGraphqlApisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDataSources = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("apiId") apiId: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("dataSources") dataSources: dataSources
}
  @module("@aws-sdk/client-appsync") @new external new_: (Js.Promise.t<request>) => t = "ListDataSourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
