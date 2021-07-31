type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-apigateway") @new
external createClient: unit => awsServiceClient = "ApiGatewayClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcLinkStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("PENDING") #PENDING
  | @as("AVAILABLE") #AVAILABLE
]
type unauthorizedCacheControlHeaderStrategy = [
  | @as("SUCCEED_WITHOUT_RESPONSE_HEADER") #SUCCEED_WITHOUT_RESPONSE_HEADER
  | @as("SUCCEED_WITH_RESPONSE_HEADER") #SUCCEED_WITH_RESPONSE_HEADER
  | @as("FAIL_WITH_403") #FAIL_WITH_403
]
type timestamp_ = Js.Date.t
type string_ = string
type statusCode = string
type securityPolicy = [@as("TLS_1_2") #TLS_1_2 | @as("TLS_1_0") #TLS_1_0]
type quotaPeriodType = [@as("MONTH") #MONTH | @as("WEEK") #WEEK | @as("DAY") #DAY]
type putMode = [@as("overwrite") #Overwrite | @as("merge") #Merge]
type providerARN = string
type op = [
  | @as("test") #Test
  | @as("copy") #Copy
  | @as("move") #Move
  | @as("replace") #Replace
  | @as("remove") #Remove
  | @as("add") #Add
]
type nullableInteger = int
type nullableBoolean = bool
type long = float
type locationStatusType = [@as("UNDOCUMENTED") #UNDOCUMENTED | @as("DOCUMENTED") #DOCUMENTED]
type integrationType = [
  | @as("AWS_PROXY") #AWS_PROXY
  | @as("HTTP_PROXY") #HTTP_PROXY
  | @as("MOCK") #MOCK
  | @as("AWS") #AWS
  | @as("HTTP") #HTTP
]
type integer_ = int
type gatewayResponseType = [
  | @as("QUOTA_EXCEEDED") #QUOTA_EXCEEDED
  | @as("THROTTLED") #THROTTLED
  | @as("REQUEST_TOO_LARGE") #REQUEST_TOO_LARGE
  | @as("BAD_REQUEST_BODY") #BAD_REQUEST_BODY
  | @as("BAD_REQUEST_PARAMETERS") #BAD_REQUEST_PARAMETERS
  | @as("UNSUPPORTED_MEDIA_TYPE") #UNSUPPORTED_MEDIA_TYPE
  | @as("API_CONFIGURATION_ERROR") #API_CONFIGURATION_ERROR
  | @as("INTEGRATION_TIMEOUT") #INTEGRATION_TIMEOUT
  | @as("INTEGRATION_FAILURE") #INTEGRATION_FAILURE
  | @as("MISSING_AUTHENTICATION_TOKEN") #MISSING_AUTHENTICATION_TOKEN
  | @as("EXPIRED_TOKEN") #EXPIRED_TOKEN
  | @as("INVALID_SIGNATURE") #INVALID_SIGNATURE
  | @as("AUTHORIZER_CONFIGURATION_ERROR") #AUTHORIZER_CONFIGURATION_ERROR
  | @as("AUTHORIZER_FAILURE") #AUTHORIZER_FAILURE
  | @as("ACCESS_DENIED") #ACCESS_DENIED
  | @as("INVALID_API_KEY") #INVALID_API_KEY
  | @as("UNAUTHORIZED") #UNAUTHORIZED
  | @as("RESOURCE_NOT_FOUND") #RESOURCE_NOT_FOUND
  | @as("DEFAULT_5XX") #DEFAULT_5XX
  | @as("DEFAULT_4XX") #DEFAULT_4XX
]
type endpointType = [@as("PRIVATE") #PRIVATE | @as("EDGE") #EDGE | @as("REGIONAL") #REGIONAL]
type double = float
type domainNameStatus = [
  | @as("PENDING") #PENDING
  | @as("UPDATING") #UPDATING
  | @as("AVAILABLE") #AVAILABLE
]
type documentationPartType = [
  | @as("RESPONSE_BODY") #RESPONSE_BODY
  | @as("RESPONSE_HEADER") #RESPONSE_HEADER
  | @as("RESPONSE") #RESPONSE
  | @as("REQUEST_BODY") #REQUEST_BODY
  | @as("REQUEST_HEADER") #REQUEST_HEADER
  | @as("QUERY_PARAMETER") #QUERY_PARAMETER
  | @as("PATH_PARAMETER") #PATH_PARAMETER
  | @as("METHOD") #METHOD
  | @as("RESOURCE") #RESOURCE
  | @as("MODEL") #MODEL
  | @as("AUTHORIZER") #AUTHORIZER
  | @as("API") #API
]
type documentationPartLocationStatusCode = string
type contentHandlingStrategy = [
  | @as("CONVERT_TO_TEXT") #CONVERT_TO_TEXT
  | @as("CONVERT_TO_BINARY") #CONVERT_TO_BINARY
]
type connectionType = [@as("VPC_LINK") #VPC_LINK | @as("INTERNET") #INTERNET]
type cacheClusterStatus = [
  | @as("FLUSH_IN_PROGRESS") #FLUSH_IN_PROGRESS
  | @as("NOT_AVAILABLE") #NOT_AVAILABLE
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("AVAILABLE") #AVAILABLE
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type cacheClusterSize = [
  | @as("237") #237
  | @as("118") #118
  | @as("58.2") #"58_2"
  | @as("28.4") #"28_4"
  | @as("13.5") #"13_5"
  | @as("6.1") #"6_1"
  | @as("1.6") #"1_6"
  | @as("0.5") #"0_5"
]
type boolean_ = bool
type blob = NodeJs.Buffer.t
type authorizerType = [
  | @as("COGNITO_USER_POOLS") #COGNITO_USER_POOLS
  | @as("REQUEST") #REQUEST
  | @as("TOKEN") #TOKEN
]
type apiKeysFormat = [@as("csv") #Csv]
type apiKeySourceType = [@as("AUTHORIZER") #AUTHORIZER | @as("HEADER") #HEADER]
type usagePlanKey = {
  name: option<string_>,
  value: option<string_>,
  @as("type") type_: option<string_>,
  id: option<string_>,
}
type tlsConfig = {insecureSkipVerification: option<boolean_>}
type throttleSettings = {
  rateLimit: option<double>,
  burstLimit: option<integer_>,
}
type stageKey = {
  stageName: option<string_>,
  restApiId: option<string_>,
}
type sdkConfigurationProperty = {
  defaultValue: option<string_>,
  required: option<boolean_>,
  description: option<string_>,
  friendlyName: option<string_>,
  name: option<string_>,
}
type requestValidator = {
  validateRequestParameters: option<boolean_>,
  validateRequestBody: option<boolean_>,
  name: option<string_>,
  id: option<string_>,
}
type quotaSettings = {
  period: option<quotaPeriodType>,
  offset: option<integer_>,
  limit: option<integer_>,
}
type patchOperation = {
  from: option<string_>,
  value: option<string_>,
  path: option<string_>,
  op: option<op>,
}
type mutualTlsAuthenticationInput = {
  truststoreVersion: option<string_>,
  truststoreUri: option<string_>,
}
type model = {
  contentType: option<string_>,
  schema: option<string_>,
  description: option<string_>,
  name: option<string_>,
  id: option<string_>,
}
type methodSnapshot = {
  apiKeyRequired: option<boolean_>,
  authorizationType: option<string_>,
}
type methodSetting = {
  unauthorizedCacheControlHeaderStrategy: option<unauthorizedCacheControlHeaderStrategy>,
  requireAuthorizationForCacheControl: option<boolean_>,
  cacheDataEncrypted: option<boolean_>,
  cacheTtlInSeconds: option<integer_>,
  cachingEnabled: option<boolean_>,
  throttlingRateLimit: option<double>,
  throttlingBurstLimit: option<integer_>,
  dataTraceEnabled: option<boolean_>,
  loggingLevel: option<string_>,
  metricsEnabled: option<boolean_>,
}
type mapOfStringToString = Js.Dict.t<string_>
type mapOfStringToBoolean = Js.Dict.t<nullableBoolean>
type listOfString = array<string_>
type listOfLong = array<long>
type listOfEndpointType = array<endpointType>
type listOfARNs = array<providerARN>
type documentationVersion = {
  description: option<string_>,
  createdDate: option<timestamp_>,
  version: option<string_>,
}
type documentationPartLocation = {
  name: option<string_>,
  statusCode: option<documentationPartLocationStatusCode>,
  method: option<string_>,
  path: option<string_>,
  @as("type") type_: documentationPartType,
}
type basePathMapping = {
  stage: option<string_>,
  restApiId: option<string_>,
  basePath: option<string_>,
}
type accessLogSettings = {
  destinationArn: option<string_>,
  format: option<string_>,
}
type vpcLink = {
  tags: option<mapOfStringToString>,
  statusMessage: option<string_>,
  status: option<vpcLinkStatus>,
  targetArns: option<listOfString>,
  description: option<string_>,
  name: option<string_>,
  id: option<string_>,
}
type mutualTlsAuthentication = {
  truststoreWarnings: option<listOfString>,
  truststoreVersion: option<string_>,
  truststoreUri: option<string_>,
}
type methodResponse = {
  responseModels: option<mapOfStringToString>,
  responseParameters: option<mapOfStringToBoolean>,
  statusCode: option<statusCode>,
}
type mapOfStringToList = Js.Dict.t<listOfString>
type mapOfMethodSnapshot = Js.Dict.t<methodSnapshot>
type mapOfMethodSettings = Js.Dict.t<methodSetting>
type mapOfApiStageThrottleSettings = Js.Dict.t<throttleSettings>
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
  contentHandling: option<contentHandlingStrategy>,
  responseTemplates: option<mapOfStringToString>,
  responseParameters: option<mapOfStringToString>,
  selectionPattern: option<string_>,
  statusCode: option<statusCode>,
}
type gatewayResponse = {
  defaultResponse: option<boolean_>,
  responseTemplates: option<mapOfStringToString>,
  responseParameters: option<mapOfStringToString>,
  statusCode: option<statusCode>,
  responseType: option<gatewayResponseType>,
}
type endpointConfiguration = {
  vpcEndpointIds: option<listOfString>,
  types: option<listOfEndpointType>,
}
type documentationPart = {
  properties: option<string_>,
  location: option<documentationPartLocation>,
  id: option<string_>,
}
type deploymentCanarySettings = {
  useStageCache: option<boolean_>,
  stageVariableOverrides: option<mapOfStringToString>,
  percentTraffic: option<double>,
}
type clientCertificate = {
  tags: option<mapOfStringToString>,
  expirationDate: option<timestamp_>,
  createdDate: option<timestamp_>,
  pemEncodedCertificate: option<string_>,
  description: option<string_>,
  clientCertificateId: option<string_>,
}
type canarySettings = {
  useStageCache: option<boolean_>,
  stageVariableOverrides: option<mapOfStringToString>,
  deploymentId: option<string_>,
  percentTraffic: option<double>,
}
type authorizer = {
  authorizerResultTtlInSeconds: option<nullableInteger>,
  identityValidationExpression: option<string_>,
  identitySource: option<string_>,
  authorizerCredentials: option<string_>,
  authorizerUri: option<string_>,
  authType: option<string_>,
  providerARNs: option<listOfARNs>,
  @as("type") type_: option<authorizerType>,
  name: option<string_>,
  id: option<string_>,
}
type apiKey = {
  tags: option<mapOfStringToString>,
  stageKeys: option<listOfString>,
  lastUpdatedDate: option<timestamp_>,
  createdDate: option<timestamp_>,
  enabled: option<boolean_>,
  description: option<string_>,
  customerId: option<string_>,
  name: option<string_>,
  value: option<string_>,
  id: option<string_>,
}
type stage = {
  lastUpdatedDate: option<timestamp_>,
  createdDate: option<timestamp_>,
  tags: option<mapOfStringToString>,
  webAclArn: option<string_>,
  tracingEnabled: option<boolean_>,
  canarySettings: option<canarySettings>,
  accessLogSettings: option<accessLogSettings>,
  documentationVersion: option<string_>,
  variables: option<mapOfStringToString>,
  methodSettings: option<mapOfMethodSettings>,
  cacheClusterStatus: option<cacheClusterStatus>,
  cacheClusterSize: option<cacheClusterSize>,
  cacheClusterEnabled: option<boolean_>,
  description: option<string_>,
  stageName: option<string_>,
  clientCertificateId: option<string_>,
  deploymentId: option<string_>,
}
type sdkType = {
  configurationProperties: option<listOfSdkConfigurationProperty>,
  description: option<string_>,
  friendlyName: option<string_>,
  id: option<string_>,
}
type restApi = {
  disableExecuteApiEndpoint: option<boolean_>,
  tags: option<mapOfStringToString>,
  policy: option<string_>,
  endpointConfiguration: option<endpointConfiguration>,
  apiKeySource: option<apiKeySourceType>,
  minimumCompressionSize: option<nullableInteger>,
  binaryMediaTypes: option<listOfString>,
  warnings: option<listOfString>,
  version: option<string_>,
  createdDate: option<timestamp_>,
  description: option<string_>,
  name: option<string_>,
  id: option<string_>,
}
type pathToMapOfMethodSnapshot = Js.Dict.t<mapOfMethodSnapshot>
type mapOfMethodResponse = Js.Dict.t<methodResponse>
type mapOfKeyUsages = Js.Dict.t<listOfUsage>
type mapOfIntegrationResponse = Js.Dict.t<integrationResponse>
type listOfVpcLink = array<vpcLink>
type listOfGatewayResponse = array<gatewayResponse>
type listOfDocumentationPart = array<documentationPart>
type listOfClientCertificate = array<clientCertificate>
type listOfAuthorizer = array<authorizer>
type listOfApiKey = array<apiKey>
type domainName = {
  mutualTlsAuthentication: option<mutualTlsAuthentication>,
  tags: option<mapOfStringToString>,
  securityPolicy: option<securityPolicy>,
  domainNameStatusMessage: option<string_>,
  domainNameStatus: option<domainNameStatus>,
  endpointConfiguration: option<endpointConfiguration>,
  distributionHostedZoneId: option<string_>,
  distributionDomainName: option<string_>,
  regionalCertificateArn: option<string_>,
  regionalCertificateName: option<string_>,
  regionalHostedZoneId: option<string_>,
  regionalDomainName: option<string_>,
  certificateUploadDate: option<timestamp_>,
  certificateArn: option<string_>,
  certificateName: option<string_>,
  domainName: option<string_>,
}
type apiStage = {
  throttle: option<mapOfApiStageThrottleSettings>,
  stage: option<string_>,
  apiId: option<string_>,
}
type listOfStage = array<stage>
type listOfSdkType = array<sdkType>
type listOfRestApi = array<restApi>
type listOfDomainName = array<domainName>
type listOfApiStage = array<apiStage>
type integration = {
  tlsConfig: option<tlsConfig>,
  integrationResponses: option<mapOfIntegrationResponse>,
  cacheKeyParameters: option<listOfString>,
  cacheNamespace: option<string_>,
  timeoutInMillis: option<integer_>,
  contentHandling: option<contentHandlingStrategy>,
  passthroughBehavior: option<string_>,
  requestTemplates: option<mapOfStringToString>,
  requestParameters: option<mapOfStringToString>,
  credentials: option<string_>,
  connectionId: option<string_>,
  connectionType: option<connectionType>,
  uri: option<string_>,
  httpMethod: option<string_>,
  @as("type") type_: option<integrationType>,
}
type deployment = {
  apiSummary: option<pathToMapOfMethodSnapshot>,
  createdDate: option<timestamp_>,
  description: option<string_>,
  id: option<string_>,
}
type usagePlan = {
  tags: option<mapOfStringToString>,
  productCode: option<string_>,
  quota: option<quotaSettings>,
  throttle: option<throttleSettings>,
  apiStages: option<listOfApiStage>,
  description: option<string_>,
  name: option<string_>,
  id: option<string_>,
}
type method = {
  authorizationScopes: option<listOfString>,
  methodIntegration: option<integration>,
  methodResponses: option<mapOfMethodResponse>,
  requestModels: option<mapOfStringToString>,
  requestParameters: option<mapOfStringToBoolean>,
  operationName: option<string_>,
  requestValidatorId: option<string_>,
  apiKeyRequired: option<nullableBoolean>,
  authorizerId: option<string_>,
  authorizationType: option<string_>,
  httpMethod: option<string_>,
}
type listOfDeployment = array<deployment>
type mapOfMethod = Js.Dict.t<method>
type listOfUsagePlan = array<usagePlan>
type resource = {
  resourceMethods: option<mapOfMethod>,
  path: option<string_>,
  pathPart: option<string_>,
  parentId: option<string_>,
  id: option<string_>,
}
type listOfResource = array<resource>

module GetUsagePlanKey = {
  type t
  type request = {
    keyId: string_,
    usagePlanId: string_,
  }
  type response = usagePlanKey
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetUsagePlanKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRequestValidator = {
  type t
  type request = {
    requestValidatorId: string_,
    restApiId: string_,
  }
  type response = requestValidator
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetRequestValidatorCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetModelTemplate = {
  type t
  type request = {
    modelName: string_,
    restApiId: string_,
  }
  type response = {value: option<string_>}
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetModelTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetModel = {
  type t
  type request = {
    flatten: option<boolean_>,
    modelName: string_,
    restApiId: string_,
  }
  type response = model
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDocumentationVersion = {
  type t
  type request = {
    documentationVersion: string_,
    restApiId: string_,
  }
  type response = documentationVersion
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetDocumentationVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBasePathMapping = {
  type t
  type request = {
    basePath: string_,
    domainName: string_,
  }
  type response = basePathMapping
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetBasePathMappingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FlushStageCache = {
  type t
  type request = {
    stageName: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "FlushStageCacheCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module FlushStageAuthorizersCache = {
  type t
  type request = {
    stageName: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "FlushStageAuthorizersCacheCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVpcLink = {
  type t
  type request = {vpcLinkId: string_}

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteVpcLinkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteUsagePlanKey = {
  type t
  type request = {
    keyId: string_,
    usagePlanId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteUsagePlanKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteUsagePlan = {
  type t
  type request = {usagePlanId: string_}

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteUsagePlanCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteStage = {
  type t
  type request = {
    stageName: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteStageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRestApi = {
  type t
  type request = {restApiId: string_}

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteRestApiCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResource = {
  type t
  type request = {
    resourceId: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRequestValidator = {
  type t
  type request = {
    requestValidatorId: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteRequestValidatorCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteModel = {
  type t
  type request = {
    modelName: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMethodResponse = {
  type t
  type request = {
    statusCode: statusCode,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteMethodResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMethod = {
  type t
  type request = {
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteMethodCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIntegrationResponse = {
  type t
  type request = {
    statusCode: statusCode,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteIntegrationResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIntegration = {
  type t
  type request = {
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteIntegrationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteGatewayResponse = {
  type t
  type request = {
    responseType: gatewayResponseType,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteGatewayResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDomainName = {
  type t
  type request = {domainName: string_}

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteDomainNameCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDocumentationVersion = {
  type t
  type request = {
    documentationVersion: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteDocumentationVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDocumentationPart = {
  type t
  type request = {
    documentationPartId: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteDocumentationPartCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDeployment = {
  type t
  type request = {
    deploymentId: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteDeploymentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteClientCertificate = {
  type t
  type request = {clientCertificateId: string_}

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteClientCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBasePathMapping = {
  type t
  type request = {
    basePath: string_,
    domainName: string_,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteBasePathMappingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAuthorizer = {
  type t
  type request = {
    authorizerId: string_,
    restApiId: string_,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApiKey = {
  type t
  type request = {apiKey: string_}

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteApiKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateUsagePlanKey = {
  type t
  type request = {
    keyType: string_,
    keyId: string_,
    usagePlanId: string_,
  }
  type response = usagePlanKey
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "CreateUsagePlanKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRequestValidator = {
  type t
  type request = {
    validateRequestParameters: option<boolean_>,
    validateRequestBody: option<boolean_>,
    name: option<string_>,
    restApiId: string_,
  }
  type response = requestValidator
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "CreateRequestValidatorCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModel = {
  type t
  type request = {
    contentType: string_,
    schema: option<string_>,
    description: option<string_>,
    name: string_,
    restApiId: string_,
  }
  type response = model
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDocumentationVersion = {
  type t
  type request = {
    description: option<string_>,
    stageName: option<string_>,
    documentationVersion: string_,
    restApiId: string_,
  }
  type response = documentationVersion
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "CreateDocumentationVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBasePathMapping = {
  type t
  type request = {
    stage: option<string_>,
    restApiId: string_,
    basePath: option<string_>,
    domainName: string_,
  }
  type response = basePathMapping
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "CreateBasePathMappingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: listOfString,
    resourceArn: string_,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: mapOfStringToString,
    resourceArn: string_,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutMethodResponse = {
  type t
  type request = {
    responseModels: option<mapOfStringToString>,
    responseParameters: option<mapOfStringToBoolean>,
    statusCode: statusCode,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = methodResponse
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "PutMethodResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutIntegrationResponse = {
  type t
  type request = {
    contentHandling: option<contentHandlingStrategy>,
    responseTemplates: option<mapOfStringToString>,
    responseParameters: option<mapOfStringToString>,
    selectionPattern: option<string_>,
    statusCode: statusCode,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = integrationResponse
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "PutIntegrationResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutGatewayResponse = {
  type t
  type request = {
    responseTemplates: option<mapOfStringToString>,
    responseParameters: option<mapOfStringToString>,
    statusCode: option<statusCode>,
    responseType: gatewayResponseType,
    restApiId: string_,
  }
  type response = gatewayResponse
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "PutGatewayResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportDocumentationParts = {
  type t
  type request = {
    body: blob,
    failOnWarnings: option<boolean_>,
    mode: option<putMode>,
    restApiId: string_,
  }
  type response = {
    warnings: option<listOfString>,
    ids: option<listOfString>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "ImportDocumentationPartsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportApiKeys = {
  type t
  type request = {
    failOnWarnings: option<boolean_>,
    format: apiKeysFormat,
    body: blob,
  }
  type response = {
    warnings: option<listOfString>,
    ids: option<listOfString>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "ImportApiKeysCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVpcLink = {
  type t
  type request = {vpcLinkId: string_}
  type response = vpcLink
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetVpcLinkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTags = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
    resourceArn: string_,
  }
  type response = {tags: option<mapOfStringToString>}
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSdk = {
  type t
  type request = {
    parameters: option<mapOfStringToString>,
    sdkType: string_,
    stageName: string_,
    restApiId: string_,
  }
  type response = {
    body: option<blob>,
    contentDisposition: option<string_>,
    contentType: option<string_>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetSdkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMethodResponse = {
  type t
  type request = {
    statusCode: statusCode,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = methodResponse
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetMethodResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIntegrationResponse = {
  type t
  type request = {
    statusCode: statusCode,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = integrationResponse
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetIntegrationResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGatewayResponse = {
  type t
  type request = {
    responseType: gatewayResponseType,
    restApiId: string_,
  }
  type response = gatewayResponse
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetGatewayResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExport = {
  type t
  type request = {
    accepts: option<string_>,
    parameters: option<mapOfStringToString>,
    exportType: string_,
    stageName: string_,
    restApiId: string_,
  }
  type response = {
    body: option<blob>,
    contentDisposition: option<string_>,
    contentType: option<string_>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetExportCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDocumentationPart = {
  type t
  type request = {
    documentationPartId: string_,
    restApiId: string_,
  }
  type response = documentationPart
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetDocumentationPartCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetClientCertificate = {
  type t
  type request = {clientCertificateId: string_}
  type response = clientCertificate
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetClientCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAuthorizer = {
  type t
  type request = {
    authorizerId: string_,
    restApiId: string_,
  }
  type response = authorizer
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApiKey = {
  type t
  type request = {
    includeValue: option<nullableBoolean>,
    apiKey: string_,
  }
  type response = apiKey
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetApiKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccount = {
  type t
  type request = unit
  type response = {
    apiKeyVersion: option<string_>,
    features: option<listOfString>,
    throttleSettings: option<throttleSettings>,
    cloudwatchRoleArn: option<string_>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateClientCertificate = {
  type t
  type request = {
    tags: option<mapOfStringToString>,
    description: option<string_>,
  }
  type response = clientCertificate
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GenerateClientCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVpcLink = {
  type t
  type request = {
    tags: option<mapOfStringToString>,
    targetArns: listOfString,
    description: option<string_>,
    name: string_,
  }
  type response = vpcLink
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateVpcLinkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDocumentationPart = {
  type t
  type request = {
    properties: string_,
    location: documentationPartLocation,
    restApiId: string_,
  }
  type response = documentationPart
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "CreateDocumentationPartCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAuthorizer = {
  type t
  type request = {
    authorizerResultTtlInSeconds: option<nullableInteger>,
    identityValidationExpression: option<string_>,
    identitySource: option<string_>,
    authorizerCredentials: option<string_>,
    authorizerUri: option<string_>,
    authType: option<string_>,
    providerARNs: option<listOfARNs>,
    @as("type") type_: authorizerType,
    name: string_,
    restApiId: string_,
  }
  type response = authorizer
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVpcLink = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    vpcLinkId: string_,
  }
  type response = vpcLink
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateVpcLinkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStage = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    stageName: string_,
    restApiId: string_,
  }
  type response = stage
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateStageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRestApi = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    restApiId: string_,
  }
  type response = restApi
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateRestApiCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRequestValidator = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    requestValidatorId: string_,
    restApiId: string_,
  }
  type response = requestValidator
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "UpdateRequestValidatorCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateModel = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    modelName: string_,
    restApiId: string_,
  }
  type response = model
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMethodResponse = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    statusCode: statusCode,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = methodResponse
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "UpdateMethodResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIntegrationResponse = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    statusCode: statusCode,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = integrationResponse
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "UpdateIntegrationResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGatewayResponse = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    responseType: gatewayResponseType,
    restApiId: string_,
  }
  type response = gatewayResponse
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "UpdateGatewayResponseCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomainName = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    domainName: string_,
  }
  type response = domainName
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateDomainNameCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDocumentationVersion = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    documentationVersion: string_,
    restApiId: string_,
  }
  type response = documentationVersion
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "UpdateDocumentationVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDocumentationPart = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    documentationPartId: string_,
    restApiId: string_,
  }
  type response = documentationPart
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "UpdateDocumentationPartCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateClientCertificate = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    clientCertificateId: string_,
  }
  type response = clientCertificate
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "UpdateClientCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBasePathMapping = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    basePath: string_,
    domainName: string_,
  }
  type response = basePathMapping
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "UpdateBasePathMappingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAuthorizer = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    authorizerId: string_,
    restApiId: string_,
  }
  type response = authorizer
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApiKey = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    apiKey: string_,
  }
  type response = apiKey
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateApiKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccount = {
  type t
  type request = {patchOperations: option<listOfPatchOperation>}
  type response = {
    apiKeyVersion: option<string_>,
    features: option<listOfString>,
    throttleSettings: option<throttleSettings>,
    cloudwatchRoleArn: option<string_>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestInvokeMethod = {
  type t
  type request = {
    stageVariables: option<mapOfStringToString>,
    clientCertificateId: option<string_>,
    multiValueHeaders: option<mapOfStringToList>,
    headers: option<mapOfStringToString>,
    body: option<string_>,
    pathWithQueryString: option<string_>,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = {
    latency: option<long>,
    log: option<string_>,
    multiValueHeaders: option<mapOfStringToList>,
    headers: option<mapOfStringToString>,
    body: option<string_>,
    status: option<integer_>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "TestInvokeMethodCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestInvokeAuthorizer = {
  type t
  type request = {
    additionalContext: option<mapOfStringToString>,
    stageVariables: option<mapOfStringToString>,
    body: option<string_>,
    pathWithQueryString: option<string_>,
    multiValueHeaders: option<mapOfStringToList>,
    headers: option<mapOfStringToString>,
    authorizerId: string_,
    restApiId: string_,
  }
  type response = {
    claims: option<mapOfStringToString>,
    authorization: option<mapOfStringToList>,
    policy: option<string_>,
    principalId: option<string_>,
    latency: option<long>,
    log: option<string_>,
    clientStatus: option<integer_>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "TestInvokeAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutRestApi = {
  type t
  type request = {
    body: blob,
    parameters: option<mapOfStringToString>,
    failOnWarnings: option<boolean_>,
    mode: option<putMode>,
    restApiId: string_,
  }
  type response = restApi
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "PutRestApiCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportRestApi = {
  type t
  type request = {
    body: blob,
    parameters: option<mapOfStringToString>,
    failOnWarnings: option<boolean_>,
  }
  type response = restApi
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "ImportRestApiCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUsagePlanKeys = {
  type t
  type request = {
    nameQuery: option<string_>,
    limit: option<nullableInteger>,
    position: option<string_>,
    usagePlanId: string_,
  }
  type response = {
    position: option<string_>,
    items: option<listOfUsagePlanKey>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetUsagePlanKeysCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStage = {
  type t
  type request = {
    stageName: string_,
    restApiId: string_,
  }
  type response = stage
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetStageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSdkType = {
  type t
  type request = {id: string_}
  type response = sdkType
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetSdkTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRestApi = {
  type t
  type request = {restApiId: string_}
  type response = restApi
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetRestApiCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRequestValidators = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
    restApiId: string_,
  }
  type response = {
    position: option<string_>,
    items: option<listOfRequestValidator>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetRequestValidatorsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetModels = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
    restApiId: string_,
  }
  type response = {
    position: option<string_>,
    items: option<listOfModel>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetModelsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainName = {
  type t
  type request = {domainName: string_}
  type response = domainName
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetDomainNameCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDocumentationVersions = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
    restApiId: string_,
  }
  type response = {
    position: option<string_>,
    items: option<listOfDocumentationVersion>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetDocumentationVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBasePathMappings = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
    domainName: string_,
  }
  type response = {
    position: option<string_>,
    items: option<listOfBasePathMapping>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetBasePathMappingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStage = {
  type t
  type request = {
    tags: option<mapOfStringToString>,
    tracingEnabled: option<boolean_>,
    canarySettings: option<canarySettings>,
    documentationVersion: option<string_>,
    variables: option<mapOfStringToString>,
    cacheClusterSize: option<cacheClusterSize>,
    cacheClusterEnabled: option<boolean_>,
    description: option<string_>,
    deploymentId: string_,
    stageName: string_,
    restApiId: string_,
  }
  type response = stage
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateStageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRestApi = {
  type t
  type request = {
    disableExecuteApiEndpoint: option<boolean_>,
    tags: option<mapOfStringToString>,
    policy: option<string_>,
    endpointConfiguration: option<endpointConfiguration>,
    apiKeySource: option<apiKeySourceType>,
    minimumCompressionSize: option<nullableInteger>,
    binaryMediaTypes: option<listOfString>,
    cloneFrom: option<string_>,
    version: option<string_>,
    description: option<string_>,
    name: string_,
  }
  type response = restApi
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateRestApiCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomainName = {
  type t
  type request = {
    mutualTlsAuthentication: option<mutualTlsAuthenticationInput>,
    securityPolicy: option<securityPolicy>,
    tags: option<mapOfStringToString>,
    endpointConfiguration: option<endpointConfiguration>,
    regionalCertificateArn: option<string_>,
    regionalCertificateName: option<string_>,
    certificateArn: option<string_>,
    certificateChain: option<string_>,
    certificatePrivateKey: option<string_>,
    certificateBody: option<string_>,
    certificateName: option<string_>,
    domainName: string_,
  }
  type response = domainName
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateDomainNameCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApiKey = {
  type t
  type request = {
    tags: option<mapOfStringToString>,
    customerId: option<string_>,
    stageKeys: option<listOfStageKeys>,
    value: option<string_>,
    generateDistinctId: option<boolean_>,
    enabled: option<boolean_>,
    description: option<string_>,
    name: option<string_>,
  }
  type response = apiKey
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateApiKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateUsage = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    keyId: string_,
    usagePlanId: string_,
  }
  type response = {
    position: option<string_>,
    items: option<mapOfKeyUsages>,
    endDate: option<string_>,
    startDate: option<string_>,
    usagePlanId: option<string_>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateUsageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIntegration = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = integration
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateIntegrationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDeployment = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    deploymentId: string_,
    restApiId: string_,
  }
  type response = deployment
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateDeploymentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutIntegration = {
  type t
  type request = {
    tlsConfig: option<tlsConfig>,
    timeoutInMillis: option<nullableInteger>,
    contentHandling: option<contentHandlingStrategy>,
    cacheKeyParameters: option<listOfString>,
    cacheNamespace: option<string_>,
    passthroughBehavior: option<string_>,
    requestTemplates: option<mapOfStringToString>,
    requestParameters: option<mapOfStringToString>,
    credentials: option<string_>,
    connectionId: option<string_>,
    connectionType: option<connectionType>,
    uri: option<string_>,
    integrationHttpMethod: option<string_>,
    @as("type") type_: integrationType,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = integration
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "PutIntegrationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVpcLinks = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
  }
  type response = {
    position: option<string_>,
    items: option<listOfVpcLink>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetVpcLinksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUsage = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
    endDate: string_,
    startDate: string_,
    keyId: option<string_>,
    usagePlanId: string_,
  }
  type response = {
    position: option<string_>,
    items: option<mapOfKeyUsages>,
    endDate: option<string_>,
    startDate: option<string_>,
    usagePlanId: option<string_>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetUsageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIntegration = {
  type t
  type request = {
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = integration
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetIntegrationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGatewayResponses = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
    restApiId: string_,
  }
  type response = {
    position: option<string_>,
    items: option<listOfGatewayResponse>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetGatewayResponsesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDocumentationParts = {
  type t
  type request = {
    locationStatus: option<locationStatusType>,
    limit: option<nullableInteger>,
    position: option<string_>,
    path: option<string_>,
    nameQuery: option<string_>,
    @as("type") type_: option<documentationPartType>,
    restApiId: string_,
  }
  type response = {
    position: option<string_>,
    items: option<listOfDocumentationPart>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetDocumentationPartsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeployment = {
  type t
  type request = {
    embed: option<listOfString>,
    deploymentId: string_,
    restApiId: string_,
  }
  type response = deployment
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetDeploymentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetClientCertificates = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
  }
  type response = {
    position: option<string_>,
    items: option<listOfClientCertificate>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetClientCertificatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAuthorizers = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
    restApiId: string_,
  }
  type response = {
    position: option<string_>,
    items: option<listOfAuthorizer>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetAuthorizersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApiKeys = {
  type t
  type request = {
    includeValues: option<nullableBoolean>,
    customerId: option<string_>,
    nameQuery: option<string_>,
    limit: option<nullableInteger>,
    position: option<string_>,
  }
  type response = {
    position: option<string_>,
    items: option<listOfApiKey>,
    warnings: option<listOfString>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetApiKeysCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeployment = {
  type t
  type request = {
    tracingEnabled: option<nullableBoolean>,
    canarySettings: option<deploymentCanarySettings>,
    variables: option<mapOfStringToString>,
    cacheClusterSize: option<cacheClusterSize>,
    cacheClusterEnabled: option<nullableBoolean>,
    description: option<string_>,
    stageDescription: option<string_>,
    stageName: option<string_>,
    restApiId: string_,
  }
  type response = deployment
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateDeploymentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateUsagePlan = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    usagePlanId: string_,
  }
  type response = usagePlan
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateUsagePlanCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMethod = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = method
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateMethodCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutMethod = {
  type t
  type request = {
    authorizationScopes: option<listOfString>,
    requestValidatorId: option<string_>,
    requestModels: option<mapOfStringToString>,
    requestParameters: option<mapOfStringToBoolean>,
    operationName: option<string_>,
    apiKeyRequired: option<boolean_>,
    authorizerId: option<string_>,
    authorizationType: string_,
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = method
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "PutMethodCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUsagePlan = {
  type t
  type request = {usagePlanId: string_}
  type response = usagePlan
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetUsagePlanCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStages = {
  type t
  type request = {
    deploymentId: option<string_>,
    restApiId: string_,
  }
  type response = {item: option<listOfStage>}
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetStagesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSdkTypes = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
  }
  type response = {items: option<listOfSdkType>}
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetSdkTypesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRestApis = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
  }
  type response = {
    position: option<string_>,
    items: option<listOfRestApi>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetRestApisCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMethod = {
  type t
  type request = {
    httpMethod: string_,
    resourceId: string_,
    restApiId: string_,
  }
  type response = method
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetMethodCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainNames = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
  }
  type response = {
    position: option<string_>,
    items: option<listOfDomainName>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetDomainNamesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUsagePlan = {
  type t
  type request = {
    tags: option<mapOfStringToString>,
    quota: option<quotaSettings>,
    throttle: option<throttleSettings>,
    apiStages: option<listOfApiStage>,
    description: option<string_>,
    name: string_,
  }
  type response = usagePlan
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateUsagePlanCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeployments = {
  type t
  type request = {
    limit: option<nullableInteger>,
    position: option<string_>,
    restApiId: string_,
  }
  type response = {
    position: option<string_>,
    items: option<listOfDeployment>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetDeploymentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResource = {
  type t
  type request = {
    patchOperations: option<listOfPatchOperation>,
    resourceId: string_,
    restApiId: string_,
  }
  type response = resource
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUsagePlans = {
  type t
  type request = {
    limit: option<nullableInteger>,
    keyId: option<string_>,
    position: option<string_>,
  }
  type response = {
    position: option<string_>,
    items: option<listOfUsagePlan>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetUsagePlansCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResource = {
  type t
  type request = {
    embed: option<listOfString>,
    resourceId: string_,
    restApiId: string_,
  }
  type response = resource
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResource = {
  type t
  type request = {
    pathPart: string_,
    parentId: string_,
    restApiId: string_,
  }
  type response = resource
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResources = {
  type t
  type request = {
    embed: option<listOfString>,
    limit: option<nullableInteger>,
    position: option<string_>,
    restApiId: string_,
  }
  type response = {
    position: option<string_>,
    items: option<listOfResource>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetResourcesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
