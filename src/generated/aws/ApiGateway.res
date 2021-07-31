type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vpcLinkStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("PENDING") #PENDING | @as("AVAILABLE") #AVAILABLE]
type unauthorizedCacheControlHeaderStrategy = [@as("SUCCEED_WITHOUT_RESPONSE_HEADER") #SUCCEED_WITHOUT_RESPONSE_HEADER | @as("SUCCEED_WITH_RESPONSE_HEADER") #SUCCEED_WITH_RESPONSE_HEADER | @as("FAIL_WITH_403") #FAIL_WITH_403]
type amazonawsTimestamp = Js.Date.t;
type amazonawsString = string
type statusCode = string
type securityPolicy = [@as("TLS_1_2") #TLS_1_2 | @as("TLS_1_0") #TLS_1_0]
type quotaPeriodType = [@as("MONTH") #MONTH | @as("WEEK") #WEEK | @as("DAY") #DAY]
type putMode = [@as("overwrite") #overwrite | @as("merge") #merge]
type providerARN = string
type op = [@as("test") #test | @as("copy") #copy | @as("move") #move | @as("replace") #replace | @as("remove") #remove | @as("add") #add]
type nullableInteger = int;
type nullableBoolean = bool;
type amazonawsLong = float;
type locationStatusType = [@as("UNDOCUMENTED") #UNDOCUMENTED | @as("DOCUMENTED") #DOCUMENTED]
type integrationType = [@as("AWS_PROXY") #AWS_PROXY | @as("HTTP_PROXY") #HTTP_PROXY | @as("MOCK") #MOCK | @as("AWS") #AWS | @as("HTTP") #HTTP]
type amazonawsInteger = int;
type gatewayResponseType = [@as("QUOTA_EXCEEDED") #QUOTA_EXCEEDED | @as("THROTTLED") #THROTTLED | @as("REQUEST_TOO_LARGE") #REQUEST_TOO_LARGE | @as("BAD_REQUEST_BODY") #BAD_REQUEST_BODY | @as("BAD_REQUEST_PARAMETERS") #BAD_REQUEST_PARAMETERS | @as("UNSUPPORTED_MEDIA_TYPE") #UNSUPPORTED_MEDIA_TYPE | @as("API_CONFIGURATION_ERROR") #API_CONFIGURATION_ERROR | @as("INTEGRATION_TIMEOUT") #INTEGRATION_TIMEOUT | @as("INTEGRATION_FAILURE") #INTEGRATION_FAILURE | @as("MISSING_AUTHENTICATION_TOKEN") #MISSING_AUTHENTICATION_TOKEN | @as("EXPIRED_TOKEN") #EXPIRED_TOKEN | @as("INVALID_SIGNATURE") #INVALID_SIGNATURE | @as("AUTHORIZER_CONFIGURATION_ERROR") #AUTHORIZER_CONFIGURATION_ERROR | @as("AUTHORIZER_FAILURE") #AUTHORIZER_FAILURE | @as("ACCESS_DENIED") #ACCESS_DENIED | @as("INVALID_API_KEY") #INVALID_API_KEY | @as("UNAUTHORIZED") #UNAUTHORIZED | @as("RESOURCE_NOT_FOUND") #RESOURCE_NOT_FOUND | @as("DEFAULT_5XX") #DEFAULT_5XX | @as("DEFAULT_4XX") #DEFAULT_4XX]
type endpointType = [@as("PRIVATE") #PRIVATE | @as("EDGE") #EDGE | @as("REGIONAL") #REGIONAL]
type amazonawsDouble = float;
type domainNameStatus = [@as("PENDING") #PENDING | @as("UPDATING") #UPDATING | @as("AVAILABLE") #AVAILABLE]
type documentationPartType = [@as("RESPONSE_BODY") #RESPONSE_BODY | @as("RESPONSE_HEADER") #RESPONSE_HEADER | @as("RESPONSE") #RESPONSE | @as("REQUEST_BODY") #REQUEST_BODY | @as("REQUEST_HEADER") #REQUEST_HEADER | @as("QUERY_PARAMETER") #QUERY_PARAMETER | @as("PATH_PARAMETER") #PATH_PARAMETER | @as("METHOD") #METHOD | @as("RESOURCE") #RESOURCE | @as("MODEL") #MODEL | @as("AUTHORIZER") #AUTHORIZER | @as("API") #API]
type documentationPartLocationStatusCode = string
type contentHandlingStrategy = [@as("CONVERT_TO_TEXT") #CONVERT_TO_TEXT | @as("CONVERT_TO_BINARY") #CONVERT_TO_BINARY]
type connectionType = [@as("VPC_LINK") #VPC_LINK | @as("INTERNET") #INTERNET]
type cacheClusterStatus = [@as("FLUSH_IN_PROGRESS") #FLUSH_IN_PROGRESS | @as("NOT_AVAILABLE") #NOT_AVAILABLE | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("AVAILABLE") #AVAILABLE | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type cacheClusterSize = [@as("237") #237 | @as("118") #118 | @as("58.2") #58_2 | @as("28.4") #28_4 | @as("13.5") #13_5 | @as("6.1") #6_1 | @as("1.6") #1_6 | @as("0.5") #0_5]
type amazonawsBoolean = bool;
type blob = NodeJs.Buffer.t;
type authorizerType = [@as("COGNITO_USER_POOLS") #COGNITO_USER_POOLS | @as("REQUEST") #REQUEST | @as("TOKEN") #TOKEN]
type apiKeysFormat = [@as("csv") #csv]
type apiKeySourceType = [@as("AUTHORIZER") #AUTHORIZER | @as("HEADER") #HEADER]
type usagePlanKey = {
@as("name") name: amazonawsString,
@as("value") value: amazonawsString,
@as("type") type_: amazonawsString,
@as("id") id: amazonawsString
}
type tlsConfig = {
@as("insecureSkipVerification") insecureSkipVerification: amazonawsBoolean
}
type throttleSettings = {
@as("rateLimit") rateLimit: amazonawsDouble,
@as("burstLimit") burstLimit: amazonawsInteger
}
type stageKey = {
@as("stageName") stageName: amazonawsString,
@as("restApiId") restApiId: amazonawsString
}
type sdkConfigurationProperty = {
@as("defaultValue") defaultValue: amazonawsString,
@as("required") required: amazonawsBoolean,
@as("description") description: amazonawsString,
@as("friendlyName") friendlyName: amazonawsString,
@as("name") name: amazonawsString
}
type requestValidator = {
@as("validateRequestParameters") validateRequestParameters: amazonawsBoolean,
@as("validateRequestBody") validateRequestBody: amazonawsBoolean,
@as("name") name: amazonawsString,
@as("id") id: amazonawsString
}
type quotaSettings = {
@as("period") period: quotaPeriodType,
@as("offset") offset: amazonawsInteger,
@as("limit") limit: amazonawsInteger
}
type patchOperation = {
@as("from") from: amazonawsString,
@as("value") value: amazonawsString,
@as("path") path: amazonawsString,
@as("op") op: op
}
type mutualTlsAuthenticationInput = {
@as("truststoreVersion") truststoreVersion: amazonawsString,
@as("truststoreUri") truststoreUri: amazonawsString
}
type model = {
@as("contentType") contentType: amazonawsString,
@as("schema") schema: amazonawsString,
@as("description") description: amazonawsString,
@as("name") name: amazonawsString,
@as("id") id: amazonawsString
}
type methodSnapshot = {
@as("apiKeyRequired") apiKeyRequired: amazonawsBoolean,
@as("authorizationType") authorizationType: amazonawsString
}
type methodSetting = {
@as("unauthorizedCacheControlHeaderStrategy") unauthorizedCacheControlHeaderStrategy: unauthorizedCacheControlHeaderStrategy,
@as("requireAuthorizationForCacheControl") requireAuthorizationForCacheControl: amazonawsBoolean,
@as("cacheDataEncrypted") cacheDataEncrypted: amazonawsBoolean,
@as("cacheTtlInSeconds") cacheTtlInSeconds: amazonawsInteger,
@as("cachingEnabled") cachingEnabled: amazonawsBoolean,
@as("throttlingRateLimit") throttlingRateLimit: amazonawsDouble,
@as("throttlingBurstLimit") throttlingBurstLimit: amazonawsInteger,
@as("dataTraceEnabled") dataTraceEnabled: amazonawsBoolean,
@as("loggingLevel") loggingLevel: amazonawsString,
@as("metricsEnabled") metricsEnabled: amazonawsBoolean
}
type mapOfStringToString = Js.Dict.t< amazonawsString>
type mapOfStringToBoolean = Js.Dict.t< nullableBoolean>
type listOfString = array<amazonawsString>
type listOfLong = array<amazonawsLong>
type listOfEndpointType = array<endpointType>
type listOfARNs = array<providerARN>
type documentationVersion = {
@as("description") description: amazonawsString,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("version") version: amazonawsString
}
type documentationPartLocation = {
@as("name") name: amazonawsString,
@as("statusCode") statusCode: documentationPartLocationStatusCode,
@as("method") method: amazonawsString,
@as("path") path: amazonawsString,
@as("type") type_: option<documentationPartType>
}
type basePathMapping = {
@as("stage") stage: amazonawsString,
@as("restApiId") restApiId: amazonawsString,
@as("basePath") basePath: amazonawsString
}
type accessLogSettings = {
@as("destinationArn") destinationArn: amazonawsString,
@as("format") format: amazonawsString
}
type vpcLink = {
@as("tags") tags: mapOfStringToString,
@as("statusMessage") statusMessage: amazonawsString,
@as("status") status: vpcLinkStatus,
@as("targetArns") targetArns: listOfString,
@as("description") description: amazonawsString,
@as("name") name: amazonawsString,
@as("id") id: amazonawsString
}
type mutualTlsAuthentication = {
@as("truststoreWarnings") truststoreWarnings: listOfString,
@as("truststoreVersion") truststoreVersion: amazonawsString,
@as("truststoreUri") truststoreUri: amazonawsString
}
type methodResponse = {
@as("responseModels") responseModels: mapOfStringToString,
@as("responseParameters") responseParameters: mapOfStringToBoolean,
@as("statusCode") statusCode: statusCode
}
type mapOfStringToList = Js.Dict.t< listOfString>
type mapOfMethodSnapshot = Js.Dict.t< methodSnapshot>
type mapOfMethodSettings = Js.Dict.t< methodSetting>
type mapOfApiStageThrottleSettings = Js.Dict.t< throttleSettings>
type listOfUsagePlanKey = array<usagePlanKey>
type listOfUsage = array<listOfLong>
type listOfStageKeys = array<stageKey>
type listOfSdkConfigurationProperty = array<sdkConfigurationProperty>
type listOfRequestValidator = array<requestValidator>
type listOfPatchOperation = array<patchOperation>
type listOfModel = array<model>
type listOfDocumentationVersion = array<documentationVersion>
type listOfBasePathMapping = array<basePathMapping>
type integrationResponse = {
@as("contentHandling") contentHandling: contentHandlingStrategy,
@as("responseTemplates") responseTemplates: mapOfStringToString,
@as("responseParameters") responseParameters: mapOfStringToString,
@as("selectionPattern") selectionPattern: amazonawsString,
@as("statusCode") statusCode: statusCode
}
type gatewayResponse = {
@as("defaultResponse") defaultResponse: amazonawsBoolean,
@as("responseTemplates") responseTemplates: mapOfStringToString,
@as("responseParameters") responseParameters: mapOfStringToString,
@as("statusCode") statusCode: statusCode,
@as("responseType") responseType: gatewayResponseType
}
type endpointConfiguration = {
@as("vpcEndpointIds") vpcEndpointIds: listOfString,
@as("types") types: listOfEndpointType
}
type documentationPart = {
@as("properties") properties: amazonawsString,
@as("location") location: documentationPartLocation,
@as("id") id: amazonawsString
}
type deploymentCanarySettings = {
@as("useStageCache") useStageCache: amazonawsBoolean,
@as("stageVariableOverrides") stageVariableOverrides: mapOfStringToString,
@as("percentTraffic") percentTraffic: amazonawsDouble
}
type clientCertificate = {
@as("tags") tags: mapOfStringToString,
@as("expirationDate") expirationDate: amazonawsTimestamp,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("pemEncodedCertificate") pemEncodedCertificate: amazonawsString,
@as("description") description: amazonawsString,
@as("clientCertificateId") clientCertificateId: amazonawsString
}
type canarySettings = {
@as("useStageCache") useStageCache: amazonawsBoolean,
@as("stageVariableOverrides") stageVariableOverrides: mapOfStringToString,
@as("deploymentId") deploymentId: amazonawsString,
@as("percentTraffic") percentTraffic: amazonawsDouble
}
type authorizer = {
@as("authorizerResultTtlInSeconds") authorizerResultTtlInSeconds: nullableInteger,
@as("identityValidationExpression") identityValidationExpression: amazonawsString,
@as("identitySource") identitySource: amazonawsString,
@as("authorizerCredentials") authorizerCredentials: amazonawsString,
@as("authorizerUri") authorizerUri: amazonawsString,
@as("authType") authType: amazonawsString,
@as("providerARNs") providerARNs: listOfARNs,
@as("type") type_: authorizerType,
@as("name") name: amazonawsString,
@as("id") id: amazonawsString
}
type apiKey = {
@as("tags") tags: mapOfStringToString,
@as("stageKeys") stageKeys: listOfString,
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("enabled") enabled: amazonawsBoolean,
@as("description") description: amazonawsString,
@as("customerId") customerId: amazonawsString,
@as("name") name: amazonawsString,
@as("value") value: amazonawsString,
@as("id") id: amazonawsString
}
type stage = {
@as("lastUpdatedDate") lastUpdatedDate: amazonawsTimestamp,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("tags") tags: mapOfStringToString,
@as("webAclArn") webAclArn: amazonawsString,
@as("tracingEnabled") tracingEnabled: amazonawsBoolean,
@as("canarySettings") canarySettings: canarySettings,
@as("accessLogSettings") accessLogSettings: accessLogSettings,
@as("documentationVersion") documentationVersion: amazonawsString,
@as("variables") variables: mapOfStringToString,
@as("methodSettings") methodSettings: mapOfMethodSettings,
@as("cacheClusterStatus") cacheClusterStatus: cacheClusterStatus,
@as("cacheClusterSize") cacheClusterSize: cacheClusterSize,
@as("cacheClusterEnabled") cacheClusterEnabled: amazonawsBoolean,
@as("description") description: amazonawsString,
@as("stageName") stageName: amazonawsString,
@as("clientCertificateId") clientCertificateId: amazonawsString,
@as("deploymentId") deploymentId: amazonawsString
}
type sdkType = {
@as("configurationProperties") configurationProperties: listOfSdkConfigurationProperty,
@as("description") description: amazonawsString,
@as("friendlyName") friendlyName: amazonawsString,
@as("id") id: amazonawsString
}
type restApi = {
@as("disableExecuteApiEndpoint") disableExecuteApiEndpoint: amazonawsBoolean,
@as("tags") tags: mapOfStringToString,
@as("policy") policy: amazonawsString,
@as("endpointConfiguration") endpointConfiguration: endpointConfiguration,
@as("apiKeySource") apiKeySource: apiKeySourceType,
@as("minimumCompressionSize") minimumCompressionSize: nullableInteger,
@as("binaryMediaTypes") binaryMediaTypes: listOfString,
@as("warnings") warnings: listOfString,
@as("version") version: amazonawsString,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("description") description: amazonawsString,
@as("name") name: amazonawsString,
@as("id") id: amazonawsString
}
type pathToMapOfMethodSnapshot = Js.Dict.t< mapOfMethodSnapshot>
type mapOfMethodResponse = Js.Dict.t< methodResponse>
type mapOfKeyUsages = Js.Dict.t< listOfUsage>
type mapOfIntegrationResponse = Js.Dict.t< integrationResponse>
type listOfVpcLink = array<vpcLink>
type listOfGatewayResponse = array<gatewayResponse>
type listOfDocumentationPart = array<documentationPart>
type listOfClientCertificate = array<clientCertificate>
type listOfAuthorizer = array<authorizer>
type listOfApiKey = array<apiKey>
type domainName = {
@as("mutualTlsAuthentication") mutualTlsAuthentication: mutualTlsAuthentication,
@as("tags") tags: mapOfStringToString,
@as("securityPolicy") securityPolicy: securityPolicy,
@as("domainNameStatusMessage") domainNameStatusMessage: amazonawsString,
@as("domainNameStatus") domainNameStatus: domainNameStatus,
@as("endpointConfiguration") endpointConfiguration: endpointConfiguration,
@as("distributionHostedZoneId") distributionHostedZoneId: amazonawsString,
@as("distributionDomainName") distributionDomainName: amazonawsString,
@as("regionalCertificateArn") regionalCertificateArn: amazonawsString,
@as("regionalCertificateName") regionalCertificateName: amazonawsString,
@as("regionalHostedZoneId") regionalHostedZoneId: amazonawsString,
@as("regionalDomainName") regionalDomainName: amazonawsString,
@as("certificateUploadDate") certificateUploadDate: amazonawsTimestamp,
@as("certificateArn") certificateArn: amazonawsString,
@as("certificateName") certificateName: amazonawsString,
@as("domainName") domainName: amazonawsString
}
type apiStage = {
@as("throttle") throttle: mapOfApiStageThrottleSettings,
@as("stage") stage: amazonawsString,
@as("apiId") apiId: amazonawsString
}
type listOfStage = array<stage>
type listOfSdkType = array<sdkType>
type listOfRestApi = array<restApi>
type listOfDomainName = array<domainName>
type listOfApiStage = array<apiStage>
type integration = {
@as("tlsConfig") tlsConfig: tlsConfig,
@as("integrationResponses") integrationResponses: mapOfIntegrationResponse,
@as("cacheKeyParameters") cacheKeyParameters: listOfString,
@as("cacheNamespace") cacheNamespace: amazonawsString,
@as("timeoutInMillis") timeoutInMillis: amazonawsInteger,
@as("contentHandling") contentHandling: contentHandlingStrategy,
@as("passthroughBehavior") passthroughBehavior: amazonawsString,
@as("requestTemplates") requestTemplates: mapOfStringToString,
@as("requestParameters") requestParameters: mapOfStringToString,
@as("credentials") credentials: amazonawsString,
@as("connectionId") connectionId: amazonawsString,
@as("connectionType") connectionType: connectionType,
@as("uri") uri: amazonawsString,
@as("httpMethod") httpMethod: amazonawsString,
@as("type") type_: integrationType
}
type deployment = {
@as("apiSummary") apiSummary: pathToMapOfMethodSnapshot,
@as("createdDate") createdDate: amazonawsTimestamp,
@as("description") description: amazonawsString,
@as("id") id: amazonawsString
}
type usagePlan = {
@as("tags") tags: mapOfStringToString,
@as("productCode") productCode: amazonawsString,
@as("quota") quota: quotaSettings,
@as("throttle") throttle: throttleSettings,
@as("apiStages") apiStages: listOfApiStage,
@as("description") description: amazonawsString,
@as("name") name: amazonawsString,
@as("id") id: amazonawsString
}
type method = {
@as("authorizationScopes") authorizationScopes: listOfString,
@as("methodIntegration") methodIntegration: integration,
@as("methodResponses") methodResponses: mapOfMethodResponse,
@as("requestModels") requestModels: mapOfStringToString,
@as("requestParameters") requestParameters: mapOfStringToBoolean,
@as("operationName") operationName: amazonawsString,
@as("requestValidatorId") requestValidatorId: amazonawsString,
@as("apiKeyRequired") apiKeyRequired: nullableBoolean,
@as("authorizerId") authorizerId: amazonawsString,
@as("authorizationType") authorizationType: amazonawsString,
@as("httpMethod") httpMethod: amazonawsString
}
type listOfDeployment = array<deployment>
type mapOfMethod = Js.Dict.t< method>
type listOfUsagePlan = array<usagePlan>
type resource = {
@as("resourceMethods") resourceMethods: mapOfMethod,
@as("path") path: amazonawsString,
@as("pathPart") pathPart: amazonawsString,
@as("parentId") parentId: amazonawsString,
@as("id") id: amazonawsString
}
type listOfResource = array<resource>
type clientType;
@module("@aws-sdk/client-apigateway") @new external createClient: unit => clientType = "ApiGatewayClient";
module GetUsagePlanKey = {
  type t;
  type request = {
@as("keyId") keyId: option<amazonawsString>,
@as("usagePlanId") usagePlanId: option<amazonawsString>
}
  type response = usagePlanKey;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetUsagePlanKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRequestValidator = {
  type t;
  type request = {
@as("requestValidatorId") requestValidatorId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = requestValidator;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetRequestValidatorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetModelTemplate = {
  type t;
  type request = {
@as("modelName") modelName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("value") value: amazonawsString
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetModelTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetModel = {
  type t;
  type request = {
@as("flatten") flatten: amazonawsBoolean,
@as("modelName") modelName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = model;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDocumentationVersion = {
  type t;
  type request = {
@as("documentationVersion") documentationVersion: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = documentationVersion;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetDocumentationVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBasePathMapping = {
  type t;
  type request = {
@as("basePath") basePath: option<amazonawsString>,
@as("domainName") domainName: option<amazonawsString>
}
  type response = basePathMapping;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetBasePathMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module FlushStageCache = {
  type t;
  type request = {
@as("stageName") stageName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "FlushStageCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module FlushStageAuthorizersCache = {
  type t;
  type request = {
@as("stageName") stageName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "FlushStageAuthorizersCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVpcLink = {
  type t;
  type request = {
@as("vpcLinkId") vpcLinkId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteVpcLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteUsagePlanKey = {
  type t;
  type request = {
@as("keyId") keyId: option<amazonawsString>,
@as("usagePlanId") usagePlanId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteUsagePlanKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteUsagePlan = {
  type t;
  type request = {
@as("usagePlanId") usagePlanId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteUsagePlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteStage = {
  type t;
  type request = {
@as("stageName") stageName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteStageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRestApi = {
  type t;
  type request = {
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteRestApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteResource = {
  type t;
  type request = {
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRequestValidator = {
  type t;
  type request = {
@as("requestValidatorId") requestValidatorId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteRequestValidatorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteModel = {
  type t;
  type request = {
@as("modelName") modelName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteMethodResponse = {
  type t;
  type request = {
@as("statusCode") statusCode: option<statusCode>,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteMethodResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteMethod = {
  type t;
  type request = {
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteMethodCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntegrationResponse = {
  type t;
  type request = {
@as("statusCode") statusCode: option<statusCode>,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteIntegrationResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntegration = {
  type t;
  type request = {
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteGatewayResponse = {
  type t;
  type request = {
@as("responseType") responseType: option<gatewayResponseType>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteGatewayResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDomainName = {
  type t;
  type request = {
@as("domainName") domainName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteDomainNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDocumentationVersion = {
  type t;
  type request = {
@as("documentationVersion") documentationVersion: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteDocumentationVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDocumentationPart = {
  type t;
  type request = {
@as("documentationPartId") documentationPartId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteDocumentationPartCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDeployment = {
  type t;
  type request = {
@as("deploymentId") deploymentId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteClientCertificate = {
  type t;
  type request = {
@as("clientCertificateId") clientCertificateId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteClientCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBasePathMapping = {
  type t;
  type request = {
@as("basePath") basePath: option<amazonawsString>,
@as("domainName") domainName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteBasePathMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAuthorizer = {
  type t;
  type request = {
@as("authorizerId") authorizerId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteApiKey = {
  type t;
  type request = {
@as("apiKey") apiKey: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "DeleteApiKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateUsagePlanKey = {
  type t;
  type request = {
@as("keyType") keyType: option<amazonawsString>,
@as("keyId") keyId: option<amazonawsString>,
@as("usagePlanId") usagePlanId: option<amazonawsString>
}
  type response = usagePlanKey;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateUsagePlanKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRequestValidator = {
  type t;
  type request = {
@as("validateRequestParameters") validateRequestParameters: amazonawsBoolean,
@as("validateRequestBody") validateRequestBody: amazonawsBoolean,
@as("name") name: amazonawsString,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = requestValidator;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateRequestValidatorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateModel = {
  type t;
  type request = {
@as("contentType") contentType: option<amazonawsString>,
@as("schema") schema: amazonawsString,
@as("description") description: amazonawsString,
@as("name") name: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = model;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDocumentationVersion = {
  type t;
  type request = {
@as("description") description: amazonawsString,
@as("stageName") stageName: amazonawsString,
@as("documentationVersion") documentationVersion: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = documentationVersion;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateDocumentationVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBasePathMapping = {
  type t;
  type request = {
@as("stage") stage: amazonawsString,
@as("restApiId") restApiId: option<amazonawsString>,
@as("basePath") basePath: amazonawsString,
@as("domainName") domainName: option<amazonawsString>
}
  type response = basePathMapping;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateBasePathMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<listOfString>,
@as("resourceArn") resourceArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<mapOfStringToString>,
@as("resourceArn") resourceArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutMethodResponse = {
  type t;
  type request = {
@as("responseModels") responseModels: mapOfStringToString,
@as("responseParameters") responseParameters: mapOfStringToBoolean,
@as("statusCode") statusCode: option<statusCode>,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = methodResponse;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "PutMethodResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutIntegrationResponse = {
  type t;
  type request = {
@as("contentHandling") contentHandling: contentHandlingStrategy,
@as("responseTemplates") responseTemplates: mapOfStringToString,
@as("responseParameters") responseParameters: mapOfStringToString,
@as("selectionPattern") selectionPattern: amazonawsString,
@as("statusCode") statusCode: option<statusCode>,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = integrationResponse;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "PutIntegrationResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutGatewayResponse = {
  type t;
  type request = {
@as("responseTemplates") responseTemplates: mapOfStringToString,
@as("responseParameters") responseParameters: mapOfStringToString,
@as("statusCode") statusCode: statusCode,
@as("responseType") responseType: option<gatewayResponseType>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = gatewayResponse;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "PutGatewayResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportDocumentationParts = {
  type t;
  type request = {
@as("body") body: option<blob>,
@as("failOnWarnings") failOnWarnings: amazonawsBoolean,
@as("mode") mode: putMode,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("warnings") warnings: listOfString,
@as("ids") ids: listOfString
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "ImportDocumentationPartsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportApiKeys = {
  type t;
  type request = {
@as("failOnWarnings") failOnWarnings: amazonawsBoolean,
@as("format") format: option<apiKeysFormat>,
@as("body") body: option<blob>
}
  type response = {
@as("warnings") warnings: listOfString,
@as("ids") ids: listOfString
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "ImportApiKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVpcLink = {
  type t;
  type request = {
@as("vpcLinkId") vpcLinkId: option<amazonawsString>
}
  type response = vpcLink;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetVpcLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTags = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("tags") tags: mapOfStringToString
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSdk = {
  type t;
  type request = {
@as("parameters") parameters: mapOfStringToString,
@as("sdkType") sdkType: option<amazonawsString>,
@as("stageName") stageName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("body") body: blob,
@as("contentDisposition") contentDisposition: amazonawsString,
@as("contentType") contentType: amazonawsString
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetSdkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMethodResponse = {
  type t;
  type request = {
@as("statusCode") statusCode: option<statusCode>,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = methodResponse;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetMethodResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIntegrationResponse = {
  type t;
  type request = {
@as("statusCode") statusCode: option<statusCode>,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = integrationResponse;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetIntegrationResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGatewayResponse = {
  type t;
  type request = {
@as("responseType") responseType: option<gatewayResponseType>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = gatewayResponse;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetGatewayResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetExport = {
  type t;
  type request = {
@as("accepts") accepts: amazonawsString,
@as("parameters") parameters: mapOfStringToString,
@as("exportType") exportType: option<amazonawsString>,
@as("stageName") stageName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("body") body: blob,
@as("contentDisposition") contentDisposition: amazonawsString,
@as("contentType") contentType: amazonawsString
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetExportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDocumentationPart = {
  type t;
  type request = {
@as("documentationPartId") documentationPartId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = documentationPart;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetDocumentationPartCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetClientCertificate = {
  type t;
  type request = {
@as("clientCertificateId") clientCertificateId: option<amazonawsString>
}
  type response = clientCertificate;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetClientCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAuthorizer = {
  type t;
  type request = {
@as("authorizerId") authorizerId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = authorizer;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApiKey = {
  type t;
  type request = {
@as("includeValue") includeValue: nullableBoolean,
@as("apiKey") apiKey: option<amazonawsString>
}
  type response = apiKey;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetApiKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccount = {
  type t;
  type request = unit
  type response = {
@as("apiKeyVersion") apiKeyVersion: amazonawsString,
@as("features") features: listOfString,
@as("throttleSettings") throttleSettings: throttleSettings,
@as("cloudwatchRoleArn") cloudwatchRoleArn: amazonawsString
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateClientCertificate = {
  type t;
  type request = {
@as("tags") tags: mapOfStringToString,
@as("description") description: amazonawsString
}
  type response = clientCertificate;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GenerateClientCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVpcLink = {
  type t;
  type request = {
@as("tags") tags: mapOfStringToString,
@as("targetArns") targetArns: option<listOfString>,
@as("description") description: amazonawsString,
@as("name") name: option<amazonawsString>
}
  type response = vpcLink;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateVpcLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDocumentationPart = {
  type t;
  type request = {
@as("properties") properties: option<amazonawsString>,
@as("location") location: option<documentationPartLocation>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = documentationPart;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateDocumentationPartCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAuthorizer = {
  type t;
  type request = {
@as("authorizerResultTtlInSeconds") authorizerResultTtlInSeconds: nullableInteger,
@as("identityValidationExpression") identityValidationExpression: amazonawsString,
@as("identitySource") identitySource: amazonawsString,
@as("authorizerCredentials") authorizerCredentials: amazonawsString,
@as("authorizerUri") authorizerUri: amazonawsString,
@as("authType") authType: amazonawsString,
@as("providerARNs") providerARNs: listOfARNs,
@as("type") type_: option<authorizerType>,
@as("name") name: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = authorizer;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVpcLink = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("vpcLinkId") vpcLinkId: option<amazonawsString>
}
  type response = vpcLink;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateVpcLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStage = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("stageName") stageName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = stage;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateStageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRestApi = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = restApi;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateRestApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRequestValidator = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("requestValidatorId") requestValidatorId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = requestValidator;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateRequestValidatorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateModel = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("modelName") modelName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = model;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMethodResponse = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("statusCode") statusCode: option<statusCode>,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = methodResponse;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateMethodResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateIntegrationResponse = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("statusCode") statusCode: option<statusCode>,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = integrationResponse;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateIntegrationResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGatewayResponse = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("responseType") responseType: option<gatewayResponseType>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = gatewayResponse;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateGatewayResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainName = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("domainName") domainName: option<amazonawsString>
}
  type response = domainName;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateDomainNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDocumentationVersion = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("documentationVersion") documentationVersion: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = documentationVersion;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateDocumentationVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDocumentationPart = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("documentationPartId") documentationPartId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = documentationPart;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateDocumentationPartCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateClientCertificate = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("clientCertificateId") clientCertificateId: option<amazonawsString>
}
  type response = clientCertificate;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateClientCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBasePathMapping = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("basePath") basePath: option<amazonawsString>,
@as("domainName") domainName: option<amazonawsString>
}
  type response = basePathMapping;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateBasePathMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAuthorizer = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("authorizerId") authorizerId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = authorizer;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApiKey = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("apiKey") apiKey: option<amazonawsString>
}
  type response = apiKey;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateApiKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAccount = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation
}
  type response = {
@as("apiKeyVersion") apiKeyVersion: amazonawsString,
@as("features") features: listOfString,
@as("throttleSettings") throttleSettings: throttleSettings,
@as("cloudwatchRoleArn") cloudwatchRoleArn: amazonawsString
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestInvokeMethod = {
  type t;
  type request = {
@as("stageVariables") stageVariables: mapOfStringToString,
@as("clientCertificateId") clientCertificateId: amazonawsString,
@as("multiValueHeaders") multiValueHeaders: mapOfStringToList,
@as("headers") headers: mapOfStringToString,
@as("body") body: amazonawsString,
@as("pathWithQueryString") pathWithQueryString: amazonawsString,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("latency") latency: amazonawsLong,
@as("log") log: amazonawsString,
@as("multiValueHeaders") multiValueHeaders: mapOfStringToList,
@as("headers") headers: mapOfStringToString,
@as("body") body: amazonawsString,
@as("status") status: amazonawsInteger
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "TestInvokeMethodCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestInvokeAuthorizer = {
  type t;
  type request = {
@as("additionalContext") additionalContext: mapOfStringToString,
@as("stageVariables") stageVariables: mapOfStringToString,
@as("body") body: amazonawsString,
@as("pathWithQueryString") pathWithQueryString: amazonawsString,
@as("multiValueHeaders") multiValueHeaders: mapOfStringToList,
@as("headers") headers: mapOfStringToString,
@as("authorizerId") authorizerId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("claims") claims: mapOfStringToString,
@as("authorization") authorization: mapOfStringToList,
@as("policy") policy: amazonawsString,
@as("principalId") principalId: amazonawsString,
@as("latency") latency: amazonawsLong,
@as("log") log: amazonawsString,
@as("clientStatus") clientStatus: amazonawsInteger
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "TestInvokeAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRestApi = {
  type t;
  type request = {
@as("body") body: option<blob>,
@as("parameters") parameters: mapOfStringToString,
@as("failOnWarnings") failOnWarnings: amazonawsBoolean,
@as("mode") mode: putMode,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = restApi;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "PutRestApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportRestApi = {
  type t;
  type request = {
@as("body") body: option<blob>,
@as("parameters") parameters: mapOfStringToString,
@as("failOnWarnings") failOnWarnings: amazonawsBoolean
}
  type response = restApi;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "ImportRestApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUsagePlanKeys = {
  type t;
  type request = {
@as("nameQuery") nameQuery: amazonawsString,
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("usagePlanId") usagePlanId: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfUsagePlanKey
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetUsagePlanKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStage = {
  type t;
  type request = {
@as("stageName") stageName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = stage;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetStageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSdkType = {
  type t;
  type request = {
@as("id") id: option<amazonawsString>
}
  type response = sdkType;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetSdkTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRestApi = {
  type t;
  type request = {
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = restApi;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetRestApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRequestValidators = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfRequestValidator
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetRequestValidatorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetModels = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfModel
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomainName = {
  type t;
  type request = {
@as("domainName") domainName: option<amazonawsString>
}
  type response = domainName;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetDomainNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDocumentationVersions = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfDocumentationVersion
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetDocumentationVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBasePathMappings = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("domainName") domainName: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfBasePathMapping
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetBasePathMappingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStage = {
  type t;
  type request = {
@as("tags") tags: mapOfStringToString,
@as("tracingEnabled") tracingEnabled: amazonawsBoolean,
@as("canarySettings") canarySettings: canarySettings,
@as("documentationVersion") documentationVersion: amazonawsString,
@as("variables") variables: mapOfStringToString,
@as("cacheClusterSize") cacheClusterSize: cacheClusterSize,
@as("cacheClusterEnabled") cacheClusterEnabled: amazonawsBoolean,
@as("description") description: amazonawsString,
@as("deploymentId") deploymentId: option<amazonawsString>,
@as("stageName") stageName: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = stage;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateStageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRestApi = {
  type t;
  type request = {
@as("disableExecuteApiEndpoint") disableExecuteApiEndpoint: amazonawsBoolean,
@as("tags") tags: mapOfStringToString,
@as("policy") policy: amazonawsString,
@as("endpointConfiguration") endpointConfiguration: endpointConfiguration,
@as("apiKeySource") apiKeySource: apiKeySourceType,
@as("minimumCompressionSize") minimumCompressionSize: nullableInteger,
@as("binaryMediaTypes") binaryMediaTypes: listOfString,
@as("cloneFrom") cloneFrom: amazonawsString,
@as("version") version: amazonawsString,
@as("description") description: amazonawsString,
@as("name") name: option<amazonawsString>
}
  type response = restApi;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateRestApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDomainName = {
  type t;
  type request = {
@as("mutualTlsAuthentication") mutualTlsAuthentication: mutualTlsAuthenticationInput,
@as("securityPolicy") securityPolicy: securityPolicy,
@as("tags") tags: mapOfStringToString,
@as("endpointConfiguration") endpointConfiguration: endpointConfiguration,
@as("regionalCertificateArn") regionalCertificateArn: amazonawsString,
@as("regionalCertificateName") regionalCertificateName: amazonawsString,
@as("certificateArn") certificateArn: amazonawsString,
@as("certificateChain") certificateChain: amazonawsString,
@as("certificatePrivateKey") certificatePrivateKey: amazonawsString,
@as("certificateBody") certificateBody: amazonawsString,
@as("certificateName") certificateName: amazonawsString,
@as("domainName") domainName: option<amazonawsString>
}
  type response = domainName;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateDomainNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApiKey = {
  type t;
  type request = {
@as("tags") tags: mapOfStringToString,
@as("customerId") customerId: amazonawsString,
@as("stageKeys") stageKeys: listOfStageKeys,
@as("value") value: amazonawsString,
@as("generateDistinctId") generateDistinctId: amazonawsBoolean,
@as("enabled") enabled: amazonawsBoolean,
@as("description") description: amazonawsString,
@as("name") name: amazonawsString
}
  type response = apiKey;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateApiKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateUsage = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("keyId") keyId: option<amazonawsString>,
@as("usagePlanId") usagePlanId: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: mapOfKeyUsages,
@as("endDate") endDate: amazonawsString,
@as("startDate") startDate: amazonawsString,
@as("usagePlanId") usagePlanId: amazonawsString
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateIntegration = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = integration;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDeployment = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("deploymentId") deploymentId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = deployment;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutIntegration = {
  type t;
  type request = {
@as("tlsConfig") tlsConfig: tlsConfig,
@as("timeoutInMillis") timeoutInMillis: nullableInteger,
@as("contentHandling") contentHandling: contentHandlingStrategy,
@as("cacheKeyParameters") cacheKeyParameters: listOfString,
@as("cacheNamespace") cacheNamespace: amazonawsString,
@as("passthroughBehavior") passthroughBehavior: amazonawsString,
@as("requestTemplates") requestTemplates: mapOfStringToString,
@as("requestParameters") requestParameters: mapOfStringToString,
@as("credentials") credentials: amazonawsString,
@as("connectionId") connectionId: amazonawsString,
@as("connectionType") connectionType: connectionType,
@as("uri") uri: amazonawsString,
@as("integrationHttpMethod") integrationHttpMethod: amazonawsString,
@as("type") type_: option<integrationType>,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = integration;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "PutIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVpcLinks = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfVpcLink
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetVpcLinksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUsage = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("endDate") endDate: option<amazonawsString>,
@as("startDate") startDate: option<amazonawsString>,
@as("keyId") keyId: amazonawsString,
@as("usagePlanId") usagePlanId: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: mapOfKeyUsages,
@as("endDate") endDate: amazonawsString,
@as("startDate") startDate: amazonawsString,
@as("usagePlanId") usagePlanId: amazonawsString
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIntegration = {
  type t;
  type request = {
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = integration;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGatewayResponses = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfGatewayResponse
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetGatewayResponsesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDocumentationParts = {
  type t;
  type request = {
@as("locationStatus") locationStatus: locationStatusType,
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("path") path: amazonawsString,
@as("nameQuery") nameQuery: amazonawsString,
@as("type") type_: documentationPartType,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfDocumentationPart
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetDocumentationPartsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeployment = {
  type t;
  type request = {
@as("embed") embed: listOfString,
@as("deploymentId") deploymentId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = deployment;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetClientCertificates = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfClientCertificate
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetClientCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAuthorizers = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfAuthorizer
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetAuthorizersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApiKeys = {
  type t;
  type request = {
@as("includeValues") includeValues: nullableBoolean,
@as("customerId") customerId: amazonawsString,
@as("nameQuery") nameQuery: amazonawsString,
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfApiKey,
@as("warnings") warnings: listOfString
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetApiKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeployment = {
  type t;
  type request = {
@as("tracingEnabled") tracingEnabled: nullableBoolean,
@as("canarySettings") canarySettings: deploymentCanarySettings,
@as("variables") variables: mapOfStringToString,
@as("cacheClusterSize") cacheClusterSize: cacheClusterSize,
@as("cacheClusterEnabled") cacheClusterEnabled: nullableBoolean,
@as("description") description: amazonawsString,
@as("stageDescription") stageDescription: amazonawsString,
@as("stageName") stageName: amazonawsString,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = deployment;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateUsagePlan = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("usagePlanId") usagePlanId: option<amazonawsString>
}
  type response = usagePlan;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateUsagePlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMethod = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = method;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateMethodCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutMethod = {
  type t;
  type request = {
@as("authorizationScopes") authorizationScopes: listOfString,
@as("requestValidatorId") requestValidatorId: amazonawsString,
@as("requestModels") requestModels: mapOfStringToString,
@as("requestParameters") requestParameters: mapOfStringToBoolean,
@as("operationName") operationName: amazonawsString,
@as("apiKeyRequired") apiKeyRequired: amazonawsBoolean,
@as("authorizerId") authorizerId: amazonawsString,
@as("authorizationType") authorizationType: option<amazonawsString>,
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = method;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "PutMethodCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUsagePlan = {
  type t;
  type request = {
@as("usagePlanId") usagePlanId: option<amazonawsString>
}
  type response = usagePlan;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetUsagePlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStages = {
  type t;
  type request = {
@as("deploymentId") deploymentId: amazonawsString,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("item") item: listOfStage
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetStagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSdkTypes = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString
}
  type response = {
@as("items") items: listOfSdkType
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetSdkTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRestApis = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfRestApi
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetRestApisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMethod = {
  type t;
  type request = {
@as("httpMethod") httpMethod: option<amazonawsString>,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = method;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetMethodCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomainNames = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfDomainName
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetDomainNamesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUsagePlan = {
  type t;
  type request = {
@as("tags") tags: mapOfStringToString,
@as("quota") quota: quotaSettings,
@as("throttle") throttle: throttleSettings,
@as("apiStages") apiStages: listOfApiStage,
@as("description") description: amazonawsString,
@as("name") name: option<amazonawsString>
}
  type response = usagePlan;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateUsagePlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeployments = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfDeployment
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetDeploymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateResource = {
  type t;
  type request = {
@as("patchOperations") patchOperations: listOfPatchOperation,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = resource;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "UpdateResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUsagePlans = {
  type t;
  type request = {
@as("limit") limit: nullableInteger,
@as("keyId") keyId: amazonawsString,
@as("position") position: amazonawsString
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfUsagePlan
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetUsagePlansCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResource = {
  type t;
  type request = {
@as("embed") embed: listOfString,
@as("resourceId") resourceId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = resource;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResource = {
  type t;
  type request = {
@as("pathPart") pathPart: option<amazonawsString>,
@as("parentId") parentId: option<amazonawsString>,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = resource;
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "CreateResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResources = {
  type t;
  type request = {
@as("embed") embed: listOfString,
@as("limit") limit: nullableInteger,
@as("position") position: amazonawsString,
@as("restApiId") restApiId: option<amazonawsString>
}
  type response = {
@as("position") position: amazonawsString,
@as("items") items: listOfResource
}
  @module("@aws-sdk/client-apigateway") @new external new_: (Js.Promise.t<request>) => t = "GetResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
