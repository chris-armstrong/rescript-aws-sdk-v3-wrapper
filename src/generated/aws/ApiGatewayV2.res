type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __timestampIso8601 = Js.Date.t;
type __string = string
type __integer = int;
type __double = float;
type __boolean = bool;
type vpcLinkVersion = [@as("V2") #V2]
type vpcLinkStatus = [@as("INACTIVE") #INACTIVE | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type uriWithLengthBetween1And2048 = string
type stringWithLengthBetween1And64 = string
type stringWithLengthBetween1And512 = string
type stringWithLengthBetween1And256 = string
type stringWithLengthBetween1And1600 = string
type stringWithLengthBetween1And128 = string
type stringWithLengthBetween1And1024 = string
type stringWithLengthBetween0And32K = string
type stringWithLengthBetween0And2048 = string
type stringWithLengthBetween0And1024 = string
type selectionKey = string
type selectionExpression = string
type securityPolicy = [@as("TLS_1_2") #TLS_1_2 | @as("TLS_1_0") #TLS_1_0]
type protocolType = [@as("HTTP") #HTTP | @as("WEBSOCKET") #WEBSOCKET]
type passthroughBehavior = [@as("WHEN_NO_TEMPLATES") #WHEN_NO_TEMPLATES | @as("NEVER") #NEVER | @as("WHEN_NO_MATCH") #WHEN_NO_MATCH]
type nextToken = string
type loggingLevel = [@as("OFF") #OFF | @as("INFO") #INFO | @as("ERROR") #ERROR]
type integrationType = [@as("AWS_PROXY") #AWS_PROXY | @as("HTTP_PROXY") #HTTP_PROXY | @as("MOCK") #MOCK | @as("HTTP") #HTTP | @as("AWS") #AWS]
type integerWithLengthBetweenMinus1And86400 = int;
type integerWithLengthBetween50And30000 = int;
type integerWithLengthBetween0And3600 = int;
type id = string
type exportedApi = NodeJs.Buffer.t;
type endpointType = [@as("EDGE") #EDGE | @as("REGIONAL") #REGIONAL]
type domainNameStatus = [@as("UPDATING") #UPDATING | @as("AVAILABLE") #AVAILABLE]
type deploymentStatus = [@as("DEPLOYED") #DEPLOYED | @as("FAILED") #FAILED | @as("PENDING") #PENDING]
type contentHandlingStrategy = [@as("CONVERT_TO_TEXT") #CONVERT_TO_TEXT | @as("CONVERT_TO_BINARY") #CONVERT_TO_BINARY]
type connectionType = [@as("VPC_LINK") #VPC_LINK | @as("INTERNET") #INTERNET]
type authorizerType = [@as("JWT") #JWT | @as("REQUEST") #REQUEST]
type authorizationType = [@as("JWT") #JWT | @as("CUSTOM") #CUSTOM | @as("AWS_IAM") #AWS_IAM | @as("NONE") #NONE]
type arn = string
type __listOf__string = array<__string>
type tlsConfigInput = {
@as("ServerNameToVerify") serverNameToVerify: stringWithLengthBetween1And512
}
type tlsConfig = {
@as("ServerNameToVerify") serverNameToVerify: stringWithLengthBetween1And512
}
type templateMap = Js.Dict.t< stringWithLengthBetween0And32K>
type tags = Js.Dict.t< stringWithLengthBetween1And1600>
type subnetIdList = array<__string>
type stageVariablesMap = Js.Dict.t< stringWithLengthBetween0And2048>
type securityGroupIdList = array<__string>
type routeSettings = {
@as("ThrottlingRateLimit") throttlingRateLimit: __double,
@as("ThrottlingBurstLimit") throttlingBurstLimit: __integer,
@as("LoggingLevel") loggingLevel: loggingLevel,
@as("DetailedMetricsEnabled") detailedMetricsEnabled: __boolean,
@as("DataTraceEnabled") dataTraceEnabled: __boolean
}
type routeModels = Js.Dict.t< stringWithLengthBetween1And128>
type parameterConstraints = {
@as("Required") required: __boolean
}
type mutualTlsAuthenticationInput = {
@as("TruststoreVersion") truststoreVersion: stringWithLengthBetween1And64,
@as("TruststoreUri") truststoreUri: uriWithLengthBetween1And2048
}
type model = {
@as("Schema") schema: stringWithLengthBetween0And32K,
@as("Name") name: option<stringWithLengthBetween1And128>,
@as("ModelId") modelId: id,
@as("Description") description: stringWithLengthBetween0And1024,
@as("ContentType") contentType: stringWithLengthBetween1And256
}
type integrationParameters = Js.Dict.t< stringWithLengthBetween1And512>
type identitySourceList = array<__string>
type domainNameConfiguration = {
@as("SecurityPolicy") securityPolicy: securityPolicy,
@as("HostedZoneId") hostedZoneId: __string,
@as("EndpointType") endpointType: endpointType,
@as("DomainNameStatusMessage") domainNameStatusMessage: __string,
@as("DomainNameStatus") domainNameStatus: domainNameStatus,
@as("CertificateUploadDate") certificateUploadDate: __timestampIso8601,
@as("CertificateName") certificateName: stringWithLengthBetween1And128,
@as("CertificateArn") certificateArn: arn,
@as("ApiGatewayDomainName") apiGatewayDomainName: __string
}
type deployment = {
@as("Description") description: stringWithLengthBetween0And1024,
@as("DeploymentStatusMessage") deploymentStatusMessage: __string,
@as("DeploymentStatus") deploymentStatus: deploymentStatus,
@as("DeploymentId") deploymentId: id,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("AutoDeployed") autoDeployed: __boolean
}
type corsOriginList = array<__string>
type corsMethodList = array<stringWithLengthBetween1And64>
type corsHeaderList = array<__string>
type authorizationScopes = array<stringWithLengthBetween1And64>
type apiMapping = {
@as("Stage") stage: option<stringWithLengthBetween1And128>,
@as("ApiMappingKey") apiMappingKey: selectionKey,
@as("ApiMappingId") apiMappingId: id,
@as("ApiId") apiId: option<id>
}
type accessLogSettings = {
@as("Format") format: stringWithLengthBetween1And1024,
@as("DestinationArn") destinationArn: arn
}
type __listOfModel = array<model>
type __listOfDeployment = array<deployment>
type __listOfApiMapping = array<apiMapping>
type vpcLink = {
@as("VpcLinkVersion") vpcLinkVersion: vpcLinkVersion,
@as("VpcLinkStatusMessage") vpcLinkStatusMessage: stringWithLengthBetween0And1024,
@as("VpcLinkStatus") vpcLinkStatus: vpcLinkStatus,
@as("VpcLinkId") vpcLinkId: option<id>,
@as("Tags") tags: tags,
@as("SubnetIds") subnetIds: option<subnetIdList>,
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIdList>,
@as("Name") name: option<stringWithLengthBetween1And128>,
@as("CreatedDate") createdDate: __timestampIso8601
}
type routeSettingsMap = Js.Dict.t< routeSettings>
type routeParameters = Js.Dict.t< parameterConstraints>
type responseParameters = Js.Dict.t< integrationParameters>
type mutualTlsAuthentication = {
@as("TruststoreWarnings") truststoreWarnings: __listOf__string,
@as("TruststoreVersion") truststoreVersion: stringWithLengthBetween1And64,
@as("TruststoreUri") truststoreUri: uriWithLengthBetween1And2048
}
type jWTConfiguration = {
@as("Issuer") issuer: uriWithLengthBetween1And2048,
@as("Audience") audience: __listOf__string
}
type integrationResponse = {
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseTemplates") responseTemplates: templateMap,
@as("ResponseParameters") responseParameters: integrationParameters,
@as("IntegrationResponseKey") integrationResponseKey: option<selectionKey>,
@as("IntegrationResponseId") integrationResponseId: id,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy
}
type domainNameConfigurations = array<domainNameConfiguration>
type cors = {
@as("MaxAge") maxAge: integerWithLengthBetweenMinus1And86400,
@as("ExposeHeaders") exposeHeaders: corsHeaderList,
@as("AllowOrigins") allowOrigins: corsOriginList,
@as("AllowMethods") allowMethods: corsMethodList,
@as("AllowHeaders") allowHeaders: corsHeaderList,
@as("AllowCredentials") allowCredentials: __boolean
}
type __listOfVpcLink = array<vpcLink>
type __listOfIntegrationResponse = array<integrationResponse>
type stage = {
@as("Tags") tags: tags,
@as("StageVariables") stageVariables: stageVariablesMap,
@as("StageName") stageName: option<stringWithLengthBetween1And128>,
@as("RouteSettings") routeSettings: routeSettingsMap,
@as("LastUpdatedDate") lastUpdatedDate: __timestampIso8601,
@as("LastDeploymentStatusMessage") lastDeploymentStatusMessage: __string,
@as("Description") description: stringWithLengthBetween0And1024,
@as("DeploymentId") deploymentId: id,
@as("DefaultRouteSettings") defaultRouteSettings: routeSettings,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("ClientCertificateId") clientCertificateId: id,
@as("AutoDeploy") autoDeploy: __boolean,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean,
@as("AccessLogSettings") accessLogSettings: accessLogSettings
}
type routeResponse = {
@as("RouteResponseKey") routeResponseKey: option<selectionKey>,
@as("RouteResponseId") routeResponseId: id,
@as("ResponseParameters") responseParameters: routeParameters,
@as("ResponseModels") responseModels: routeModels,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression
}
type route = {
@as("Target") target: stringWithLengthBetween1And128,
@as("RouteResponseSelectionExpression") routeResponseSelectionExpression: selectionExpression,
@as("RouteKey") routeKey: option<selectionKey>,
@as("RouteId") routeId: id,
@as("RequestParameters") requestParameters: routeParameters,
@as("RequestModels") requestModels: routeModels,
@as("OperationName") operationName: stringWithLengthBetween1And64,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression,
@as("AuthorizerId") authorizerId: id,
@as("AuthorizationType") authorizationType: authorizationType,
@as("AuthorizationScopes") authorizationScopes: authorizationScopes,
@as("ApiKeyRequired") apiKeyRequired: __boolean,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean
}
type integration = {
@as("TlsConfig") tlsConfig: tlsConfig,
@as("TimeoutInMillis") timeoutInMillis: integerWithLengthBetween50And30000,
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseParameters") responseParameters: responseParameters,
@as("RequestTemplates") requestTemplates: templateMap,
@as("RequestParameters") requestParameters: integrationParameters,
@as("PayloadFormatVersion") payloadFormatVersion: stringWithLengthBetween1And64,
@as("PassthroughBehavior") passthroughBehavior: passthroughBehavior,
@as("IntegrationUri") integrationUri: uriWithLengthBetween1And2048,
@as("IntegrationType") integrationType: integrationType,
@as("IntegrationSubtype") integrationSubtype: stringWithLengthBetween1And128,
@as("IntegrationResponseSelectionExpression") integrationResponseSelectionExpression: selectionExpression,
@as("IntegrationMethod") integrationMethod: stringWithLengthBetween1And64,
@as("IntegrationId") integrationId: id,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CredentialsArn") credentialsArn: arn,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy,
@as("ConnectionType") connectionType: connectionType,
@as("ConnectionId") connectionId: stringWithLengthBetween1And1024,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean
}
type domainName = {
@as("Tags") tags: tags,
@as("MutualTlsAuthentication") mutualTlsAuthentication: mutualTlsAuthentication,
@as("DomainNameConfigurations") domainNameConfigurations: domainNameConfigurations,
@as("DomainName") domainName: option<stringWithLengthBetween1And512>,
@as("ApiMappingSelectionExpression") apiMappingSelectionExpression: selectionExpression
}
type authorizer = {
@as("Name") name: option<stringWithLengthBetween1And128>,
@as("JwtConfiguration") jwtConfiguration: jWTConfiguration,
@as("IdentityValidationExpression") identityValidationExpression: stringWithLengthBetween0And1024,
@as("IdentitySource") identitySource: identitySourceList,
@as("EnableSimpleResponses") enableSimpleResponses: __boolean,
@as("AuthorizerUri") authorizerUri: uriWithLengthBetween1And2048,
@as("AuthorizerType") authorizerType: authorizerType,
@as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: integerWithLengthBetween0And3600,
@as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: stringWithLengthBetween1And64,
@as("AuthorizerId") authorizerId: id,
@as("AuthorizerCredentialsArn") authorizerCredentialsArn: arn
}
type api = {
@as("Warnings") warnings: __listOf__string,
@as("Version") version: stringWithLengthBetween1And64,
@as("Tags") tags: tags,
@as("RouteSelectionExpression") routeSelectionExpression: option<selectionExpression>,
@as("ProtocolType") protocolType: option<protocolType>,
@as("Name") name: option<stringWithLengthBetween1And128>,
@as("ImportInfo") importInfo: __listOf__string,
@as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: __boolean,
@as("DisableSchemaValidation") disableSchemaValidation: __boolean,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("CorsConfiguration") corsConfiguration: cors,
@as("ApiKeySelectionExpression") apiKeySelectionExpression: selectionExpression,
@as("ApiId") apiId: id,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean,
@as("ApiEndpoint") apiEndpoint: __string
}
type __listOfStage = array<stage>
type __listOfRouteResponse = array<routeResponse>
type __listOfRoute = array<route>
type __listOfIntegration = array<integration>
type __listOfDomainName = array<domainName>
type __listOfAuthorizer = array<authorizer>
type __listOfApi = array<api>
type clientType;
@module("@aws-sdk/client-apigateway") @new external createClient: unit => clientType = "ApiGatewayV2Client";
module UpdateModel = {
  type t;
  type request = {
@as("Schema") schema: stringWithLengthBetween0And32K,
@as("Name") name: stringWithLengthBetween1And128,
@as("ModelId") modelId: option<__string>,
@as("Description") description: stringWithLengthBetween0And1024,
@as("ContentType") contentType: stringWithLengthBetween1And256,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Schema") schema: stringWithLengthBetween0And32K,
@as("Name") name: stringWithLengthBetween1And128,
@as("ModelId") modelId: id,
@as("Description") description: stringWithLengthBetween0And1024,
@as("ContentType") contentType: stringWithLengthBetween1And256
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDeployment = {
  type t;
  type request = {
@as("Description") description: stringWithLengthBetween0And1024,
@as("DeploymentId") deploymentId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Description") description: stringWithLengthBetween0And1024,
@as("DeploymentStatusMessage") deploymentStatusMessage: __string,
@as("DeploymentStatus") deploymentStatus: deploymentStatus,
@as("DeploymentId") deploymentId: id,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("AutoDeployed") autoDeployed: __boolean
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApiMapping = {
  type t;
  type request = {
@as("Stage") stage: stringWithLengthBetween1And128,
@as("DomainName") domainName: option<__string>,
@as("ApiMappingKey") apiMappingKey: selectionKey,
@as("ApiMappingId") apiMappingId: option<__string>,
@as("ApiId") apiId: option<id>
}
  type response = {
@as("Stage") stage: stringWithLengthBetween1And128,
@as("ApiMappingKey") apiMappingKey: selectionKey,
@as("ApiMappingId") apiMappingId: id,
@as("ApiId") apiId: id
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateApiMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetAuthorizersCache = {
  type t;
  type request = {
@as("StageName") stageName: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "ResetAuthorizersCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetModelTemplate = {
  type t;
  type request = {
@as("ModelId") modelId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Value") value: __string
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetModelTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetModel = {
  type t;
  type request = {
@as("ModelId") modelId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Schema") schema: stringWithLengthBetween0And32K,
@as("Name") name: stringWithLengthBetween1And128,
@as("ModelId") modelId: id,
@as("Description") description: stringWithLengthBetween0And1024,
@as("ContentType") contentType: stringWithLengthBetween1And256
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeployment = {
  type t;
  type request = {
@as("DeploymentId") deploymentId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Description") description: stringWithLengthBetween0And1024,
@as("DeploymentStatusMessage") deploymentStatusMessage: __string,
@as("DeploymentStatus") deploymentStatus: deploymentStatus,
@as("DeploymentId") deploymentId: id,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("AutoDeployed") autoDeployed: __boolean
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApiMapping = {
  type t;
  type request = {
@as("DomainName") domainName: option<__string>,
@as("ApiMappingId") apiMappingId: option<__string>
}
  type response = {
@as("Stage") stage: stringWithLengthBetween1And128,
@as("ApiMappingKey") apiMappingKey: selectionKey,
@as("ApiMappingId") apiMappingId: id,
@as("ApiId") apiId: id
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetApiMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportApi = {
  type t;
  type request = {
@as("StageName") stageName: __string,
@as("Specification") specification: option<__string>,
@as("OutputType") outputType: option<__string>,
@as("IncludeExtensions") includeExtensions: __boolean,
@as("ExportVersion") exportVersion: __string,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("body") body: exportedApi
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "ExportApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVpcLink = {
  type t;
  type request = {
@as("VpcLinkId") vpcLinkId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteVpcLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStage = {
  type t;
  type request = {
@as("StageName") stageName: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteStageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRouteSettings = {
  type t;
  type request = {
@as("StageName") stageName: option<__string>,
@as("RouteKey") routeKey: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteRouteSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRouteResponse = {
  type t;
  type request = {
@as("RouteResponseId") routeResponseId: option<__string>,
@as("RouteId") routeId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteRouteResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRouteRequestParameter = {
  type t;
  type request = {
@as("RouteId") routeId: option<__string>,
@as("RequestParameterKey") requestParameterKey: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteRouteRequestParameterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRoute = {
  type t;
  type request = {
@as("RouteId") routeId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteModel = {
  type t;
  type request = {
@as("ModelId") modelId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntegrationResponse = {
  type t;
  type request = {
@as("IntegrationResponseId") integrationResponseId: option<__string>,
@as("IntegrationId") integrationId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteIntegrationResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntegration = {
  type t;
  type request = {
@as("IntegrationId") integrationId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDomainName = {
  type t;
  type request = {
@as("DomainName") domainName: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteDomainNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDeployment = {
  type t;
  type request = {
@as("DeploymentId") deploymentId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCorsConfiguration = {
  type t;
  type request = {
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteCorsConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAuthorizer = {
  type t;
  type request = {
@as("AuthorizerId") authorizerId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteApiMapping = {
  type t;
  type request = {
@as("DomainName") domainName: option<__string>,
@as("ApiMappingId") apiMappingId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteApiMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteApi = {
  type t;
  type request = {
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccessLogSettings = {
  type t;
  type request = {
@as("StageName") stageName: option<__string>,
@as("ApiId") apiId: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteAccessLogSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateModel = {
  type t;
  type request = {
@as("Schema") schema: option<stringWithLengthBetween0And32K>,
@as("Name") name: option<stringWithLengthBetween1And128>,
@as("Description") description: stringWithLengthBetween0And1024,
@as("ContentType") contentType: stringWithLengthBetween1And256,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Schema") schema: stringWithLengthBetween0And32K,
@as("Name") name: stringWithLengthBetween1And128,
@as("ModelId") modelId: id,
@as("Description") description: stringWithLengthBetween0And1024,
@as("ContentType") contentType: stringWithLengthBetween1And256
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeployment = {
  type t;
  type request = {
@as("StageName") stageName: stringWithLengthBetween1And128,
@as("Description") description: stringWithLengthBetween0And1024,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Description") description: stringWithLengthBetween0And1024,
@as("DeploymentStatusMessage") deploymentStatusMessage: __string,
@as("DeploymentStatus") deploymentStatus: deploymentStatus,
@as("DeploymentId") deploymentId: id,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("AutoDeployed") autoDeployed: __boolean
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApiMapping = {
  type t;
  type request = {
@as("Stage") stage: option<stringWithLengthBetween1And128>,
@as("DomainName") domainName: option<__string>,
@as("ApiMappingKey") apiMappingKey: selectionKey,
@as("ApiId") apiId: option<id>
}
  type response = {
@as("Stage") stage: stringWithLengthBetween1And128,
@as("ApiMappingKey") apiMappingKey: selectionKey,
@as("ApiMappingId") apiMappingId: id,
@as("ApiId") apiId: id
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateApiMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVpcLink = {
  type t;
  type request = {
@as("VpcLinkId") vpcLinkId: option<__string>,
@as("Name") name: stringWithLengthBetween1And128
}
  type response = {
@as("VpcLinkVersion") vpcLinkVersion: vpcLinkVersion,
@as("VpcLinkStatusMessage") vpcLinkStatusMessage: stringWithLengthBetween0And1024,
@as("VpcLinkStatus") vpcLinkStatus: vpcLinkStatus,
@as("VpcLinkId") vpcLinkId: id,
@as("Tags") tags: tags,
@as("SubnetIds") subnetIds: subnetIdList,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdList,
@as("Name") name: stringWithLengthBetween1And128,
@as("CreatedDate") createdDate: __timestampIso8601
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateVpcLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateIntegrationResponse = {
  type t;
  type request = {
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseTemplates") responseTemplates: templateMap,
@as("ResponseParameters") responseParameters: integrationParameters,
@as("IntegrationResponseKey") integrationResponseKey: selectionKey,
@as("IntegrationResponseId") integrationResponseId: option<__string>,
@as("IntegrationId") integrationId: option<__string>,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseTemplates") responseTemplates: templateMap,
@as("ResponseParameters") responseParameters: integrationParameters,
@as("IntegrationResponseKey") integrationResponseKey: selectionKey,
@as("IntegrationResponseId") integrationResponseId: id,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateIntegrationResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<__listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("ResourceArn") resourceArn: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVpcLink = {
  type t;
  type request = {
@as("VpcLinkId") vpcLinkId: option<__string>
}
  type response = {
@as("VpcLinkVersion") vpcLinkVersion: vpcLinkVersion,
@as("VpcLinkStatusMessage") vpcLinkStatusMessage: stringWithLengthBetween0And1024,
@as("VpcLinkStatus") vpcLinkStatus: vpcLinkStatus,
@as("VpcLinkId") vpcLinkId: id,
@as("Tags") tags: tags,
@as("SubnetIds") subnetIds: subnetIdList,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdList,
@as("Name") name: stringWithLengthBetween1And128,
@as("CreatedDate") createdDate: __timestampIso8601
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetVpcLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTags = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<__string>
}
  type response = {
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIntegrationResponse = {
  type t;
  type request = {
@as("IntegrationResponseId") integrationResponseId: option<__string>,
@as("IntegrationId") integrationId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseTemplates") responseTemplates: templateMap,
@as("ResponseParameters") responseParameters: integrationParameters,
@as("IntegrationResponseKey") integrationResponseKey: selectionKey,
@as("IntegrationResponseId") integrationResponseId: id,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetIntegrationResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVpcLink = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("SubnetIds") subnetIds: option<subnetIdList>,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdList,
@as("Name") name: option<stringWithLengthBetween1And128>
}
  type response = {
@as("VpcLinkVersion") vpcLinkVersion: vpcLinkVersion,
@as("VpcLinkStatusMessage") vpcLinkStatusMessage: stringWithLengthBetween0And1024,
@as("VpcLinkStatus") vpcLinkStatus: vpcLinkStatus,
@as("VpcLinkId") vpcLinkId: id,
@as("Tags") tags: tags,
@as("SubnetIds") subnetIds: subnetIdList,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdList,
@as("Name") name: stringWithLengthBetween1And128,
@as("CreatedDate") createdDate: __timestampIso8601
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateVpcLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateIntegrationResponse = {
  type t;
  type request = {
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseTemplates") responseTemplates: templateMap,
@as("ResponseParameters") responseParameters: integrationParameters,
@as("IntegrationResponseKey") integrationResponseKey: option<selectionKey>,
@as("IntegrationId") integrationId: option<__string>,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseTemplates") responseTemplates: templateMap,
@as("ResponseParameters") responseParameters: integrationParameters,
@as("IntegrationResponseKey") integrationResponseKey: selectionKey,
@as("IntegrationResponseId") integrationResponseId: id,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateIntegrationResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStage = {
  type t;
  type request = {
@as("StageVariables") stageVariables: stageVariablesMap,
@as("StageName") stageName: option<__string>,
@as("RouteSettings") routeSettings: routeSettingsMap,
@as("Description") description: stringWithLengthBetween0And1024,
@as("DeploymentId") deploymentId: id,
@as("DefaultRouteSettings") defaultRouteSettings: routeSettings,
@as("ClientCertificateId") clientCertificateId: id,
@as("AutoDeploy") autoDeploy: __boolean,
@as("ApiId") apiId: option<__string>,
@as("AccessLogSettings") accessLogSettings: accessLogSettings
}
  type response = {
@as("Tags") tags: tags,
@as("StageVariables") stageVariables: stageVariablesMap,
@as("StageName") stageName: stringWithLengthBetween1And128,
@as("RouteSettings") routeSettings: routeSettingsMap,
@as("LastUpdatedDate") lastUpdatedDate: __timestampIso8601,
@as("LastDeploymentStatusMessage") lastDeploymentStatusMessage: __string,
@as("Description") description: stringWithLengthBetween0And1024,
@as("DeploymentId") deploymentId: id,
@as("DefaultRouteSettings") defaultRouteSettings: routeSettings,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("ClientCertificateId") clientCertificateId: id,
@as("AutoDeploy") autoDeploy: __boolean,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean,
@as("AccessLogSettings") accessLogSettings: accessLogSettings
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateStageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRouteResponse = {
  type t;
  type request = {
@as("RouteResponseKey") routeResponseKey: selectionKey,
@as("RouteResponseId") routeResponseId: option<__string>,
@as("RouteId") routeId: option<__string>,
@as("ResponseParameters") responseParameters: routeParameters,
@as("ResponseModels") responseModels: routeModels,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("RouteResponseKey") routeResponseKey: selectionKey,
@as("RouteResponseId") routeResponseId: id,
@as("ResponseParameters") responseParameters: routeParameters,
@as("ResponseModels") responseModels: routeModels,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateRouteResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRoute = {
  type t;
  type request = {
@as("Target") target: stringWithLengthBetween1And128,
@as("RouteResponseSelectionExpression") routeResponseSelectionExpression: selectionExpression,
@as("RouteKey") routeKey: selectionKey,
@as("RouteId") routeId: option<__string>,
@as("RequestParameters") requestParameters: routeParameters,
@as("RequestModels") requestModels: routeModels,
@as("OperationName") operationName: stringWithLengthBetween1And64,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression,
@as("AuthorizerId") authorizerId: id,
@as("AuthorizationType") authorizationType: authorizationType,
@as("AuthorizationScopes") authorizationScopes: authorizationScopes,
@as("ApiKeyRequired") apiKeyRequired: __boolean,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Target") target: stringWithLengthBetween1And128,
@as("RouteResponseSelectionExpression") routeResponseSelectionExpression: selectionExpression,
@as("RouteKey") routeKey: selectionKey,
@as("RouteId") routeId: id,
@as("RequestParameters") requestParameters: routeParameters,
@as("RequestModels") requestModels: routeModels,
@as("OperationName") operationName: stringWithLengthBetween1And64,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression,
@as("AuthorizerId") authorizerId: id,
@as("AuthorizationType") authorizationType: authorizationType,
@as("AuthorizationScopes") authorizationScopes: authorizationScopes,
@as("ApiKeyRequired") apiKeyRequired: __boolean,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateIntegration = {
  type t;
  type request = {
@as("TlsConfig") tlsConfig: tlsConfigInput,
@as("TimeoutInMillis") timeoutInMillis: integerWithLengthBetween50And30000,
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseParameters") responseParameters: responseParameters,
@as("RequestTemplates") requestTemplates: templateMap,
@as("RequestParameters") requestParameters: integrationParameters,
@as("PayloadFormatVersion") payloadFormatVersion: stringWithLengthBetween1And64,
@as("PassthroughBehavior") passthroughBehavior: passthroughBehavior,
@as("IntegrationUri") integrationUri: uriWithLengthBetween1And2048,
@as("IntegrationType") integrationType: integrationType,
@as("IntegrationSubtype") integrationSubtype: stringWithLengthBetween1And128,
@as("IntegrationMethod") integrationMethod: stringWithLengthBetween1And64,
@as("IntegrationId") integrationId: option<__string>,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CredentialsArn") credentialsArn: arn,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy,
@as("ConnectionType") connectionType: connectionType,
@as("ConnectionId") connectionId: stringWithLengthBetween1And1024,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("TlsConfig") tlsConfig: tlsConfig,
@as("TimeoutInMillis") timeoutInMillis: integerWithLengthBetween50And30000,
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseParameters") responseParameters: responseParameters,
@as("RequestTemplates") requestTemplates: templateMap,
@as("RequestParameters") requestParameters: integrationParameters,
@as("PayloadFormatVersion") payloadFormatVersion: stringWithLengthBetween1And64,
@as("PassthroughBehavior") passthroughBehavior: passthroughBehavior,
@as("IntegrationUri") integrationUri: uriWithLengthBetween1And2048,
@as("IntegrationType") integrationType: integrationType,
@as("IntegrationSubtype") integrationSubtype: stringWithLengthBetween1And128,
@as("IntegrationResponseSelectionExpression") integrationResponseSelectionExpression: selectionExpression,
@as("IntegrationMethod") integrationMethod: stringWithLengthBetween1And64,
@as("IntegrationId") integrationId: id,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CredentialsArn") credentialsArn: arn,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy,
@as("ConnectionType") connectionType: connectionType,
@as("ConnectionId") connectionId: stringWithLengthBetween1And1024,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainName = {
  type t;
  type request = {
@as("MutualTlsAuthentication") mutualTlsAuthentication: mutualTlsAuthenticationInput,
@as("DomainNameConfigurations") domainNameConfigurations: domainNameConfigurations,
@as("DomainName") domainName: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("MutualTlsAuthentication") mutualTlsAuthentication: mutualTlsAuthentication,
@as("DomainNameConfigurations") domainNameConfigurations: domainNameConfigurations,
@as("DomainName") domainName: stringWithLengthBetween1And512,
@as("ApiMappingSelectionExpression") apiMappingSelectionExpression: selectionExpression
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateDomainNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAuthorizer = {
  type t;
  type request = {
@as("Name") name: stringWithLengthBetween1And128,
@as("JwtConfiguration") jwtConfiguration: jWTConfiguration,
@as("IdentityValidationExpression") identityValidationExpression: stringWithLengthBetween0And1024,
@as("IdentitySource") identitySource: identitySourceList,
@as("EnableSimpleResponses") enableSimpleResponses: __boolean,
@as("AuthorizerUri") authorizerUri: uriWithLengthBetween1And2048,
@as("AuthorizerType") authorizerType: authorizerType,
@as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: integerWithLengthBetween0And3600,
@as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: stringWithLengthBetween1And64,
@as("AuthorizerId") authorizerId: option<__string>,
@as("AuthorizerCredentialsArn") authorizerCredentialsArn: arn,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Name") name: stringWithLengthBetween1And128,
@as("JwtConfiguration") jwtConfiguration: jWTConfiguration,
@as("IdentityValidationExpression") identityValidationExpression: stringWithLengthBetween0And1024,
@as("IdentitySource") identitySource: identitySourceList,
@as("EnableSimpleResponses") enableSimpleResponses: __boolean,
@as("AuthorizerUri") authorizerUri: uriWithLengthBetween1And2048,
@as("AuthorizerType") authorizerType: authorizerType,
@as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: integerWithLengthBetween0And3600,
@as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: stringWithLengthBetween1And64,
@as("AuthorizerId") authorizerId: id,
@as("AuthorizerCredentialsArn") authorizerCredentialsArn: arn
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApi = {
  type t;
  type request = {
@as("Version") version: stringWithLengthBetween1And64,
@as("Target") target: uriWithLengthBetween1And2048,
@as("RouteSelectionExpression") routeSelectionExpression: selectionExpression,
@as("RouteKey") routeKey: selectionKey,
@as("Name") name: stringWithLengthBetween1And128,
@as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: __boolean,
@as("DisableSchemaValidation") disableSchemaValidation: __boolean,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CredentialsArn") credentialsArn: arn,
@as("CorsConfiguration") corsConfiguration: cors,
@as("ApiKeySelectionExpression") apiKeySelectionExpression: selectionExpression,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Warnings") warnings: __listOf__string,
@as("Version") version: stringWithLengthBetween1And64,
@as("Tags") tags: tags,
@as("RouteSelectionExpression") routeSelectionExpression: selectionExpression,
@as("ProtocolType") protocolType: protocolType,
@as("Name") name: stringWithLengthBetween1And128,
@as("ImportInfo") importInfo: __listOf__string,
@as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: __boolean,
@as("DisableSchemaValidation") disableSchemaValidation: __boolean,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("CorsConfiguration") corsConfiguration: cors,
@as("ApiKeySelectionExpression") apiKeySelectionExpression: selectionExpression,
@as("ApiId") apiId: id,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean,
@as("ApiEndpoint") apiEndpoint: __string
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReimportApi = {
  type t;
  type request = {
@as("FailOnWarnings") failOnWarnings: __boolean,
@as("Body") body: option<__string>,
@as("Basepath") basepath: __string,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Warnings") warnings: __listOf__string,
@as("Version") version: stringWithLengthBetween1And64,
@as("Tags") tags: tags,
@as("RouteSelectionExpression") routeSelectionExpression: selectionExpression,
@as("ProtocolType") protocolType: protocolType,
@as("Name") name: stringWithLengthBetween1And128,
@as("ImportInfo") importInfo: __listOf__string,
@as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: __boolean,
@as("DisableSchemaValidation") disableSchemaValidation: __boolean,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("CorsConfiguration") corsConfiguration: cors,
@as("ApiKeySelectionExpression") apiKeySelectionExpression: selectionExpression,
@as("ApiId") apiId: id,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean,
@as("ApiEndpoint") apiEndpoint: __string
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "ReimportApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportApi = {
  type t;
  type request = {
@as("FailOnWarnings") failOnWarnings: __boolean,
@as("Body") body: option<__string>,
@as("Basepath") basepath: __string
}
  type response = {
@as("Warnings") warnings: __listOf__string,
@as("Version") version: stringWithLengthBetween1And64,
@as("Tags") tags: tags,
@as("RouteSelectionExpression") routeSelectionExpression: selectionExpression,
@as("ProtocolType") protocolType: protocolType,
@as("Name") name: stringWithLengthBetween1And128,
@as("ImportInfo") importInfo: __listOf__string,
@as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: __boolean,
@as("DisableSchemaValidation") disableSchemaValidation: __boolean,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("CorsConfiguration") corsConfiguration: cors,
@as("ApiKeySelectionExpression") apiKeySelectionExpression: selectionExpression,
@as("ApiId") apiId: id,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean,
@as("ApiEndpoint") apiEndpoint: __string
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "ImportApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStage = {
  type t;
  type request = {
@as("StageName") stageName: option<__string>,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("StageVariables") stageVariables: stageVariablesMap,
@as("StageName") stageName: stringWithLengthBetween1And128,
@as("RouteSettings") routeSettings: routeSettingsMap,
@as("LastUpdatedDate") lastUpdatedDate: __timestampIso8601,
@as("LastDeploymentStatusMessage") lastDeploymentStatusMessage: __string,
@as("Description") description: stringWithLengthBetween0And1024,
@as("DeploymentId") deploymentId: id,
@as("DefaultRouteSettings") defaultRouteSettings: routeSettings,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("ClientCertificateId") clientCertificateId: id,
@as("AutoDeploy") autoDeploy: __boolean,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean,
@as("AccessLogSettings") accessLogSettings: accessLogSettings
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetStageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRouteResponse = {
  type t;
  type request = {
@as("RouteResponseId") routeResponseId: option<__string>,
@as("RouteId") routeId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("RouteResponseKey") routeResponseKey: selectionKey,
@as("RouteResponseId") routeResponseId: id,
@as("ResponseParameters") responseParameters: routeParameters,
@as("ResponseModels") responseModels: routeModels,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetRouteResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRoute = {
  type t;
  type request = {
@as("RouteId") routeId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Target") target: stringWithLengthBetween1And128,
@as("RouteResponseSelectionExpression") routeResponseSelectionExpression: selectionExpression,
@as("RouteKey") routeKey: selectionKey,
@as("RouteId") routeId: id,
@as("RequestParameters") requestParameters: routeParameters,
@as("RequestModels") requestModels: routeModels,
@as("OperationName") operationName: stringWithLengthBetween1And64,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression,
@as("AuthorizerId") authorizerId: id,
@as("AuthorizationType") authorizationType: authorizationType,
@as("AuthorizationScopes") authorizationScopes: authorizationScopes,
@as("ApiKeyRequired") apiKeyRequired: __boolean,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetModels = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfModel
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIntegration = {
  type t;
  type request = {
@as("IntegrationId") integrationId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("TlsConfig") tlsConfig: tlsConfig,
@as("TimeoutInMillis") timeoutInMillis: integerWithLengthBetween50And30000,
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseParameters") responseParameters: responseParameters,
@as("RequestTemplates") requestTemplates: templateMap,
@as("RequestParameters") requestParameters: integrationParameters,
@as("PayloadFormatVersion") payloadFormatVersion: stringWithLengthBetween1And64,
@as("PassthroughBehavior") passthroughBehavior: passthroughBehavior,
@as("IntegrationUri") integrationUri: uriWithLengthBetween1And2048,
@as("IntegrationType") integrationType: integrationType,
@as("IntegrationSubtype") integrationSubtype: stringWithLengthBetween1And128,
@as("IntegrationResponseSelectionExpression") integrationResponseSelectionExpression: selectionExpression,
@as("IntegrationMethod") integrationMethod: stringWithLengthBetween1And64,
@as("IntegrationId") integrationId: id,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CredentialsArn") credentialsArn: arn,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy,
@as("ConnectionType") connectionType: connectionType,
@as("ConnectionId") connectionId: stringWithLengthBetween1And1024,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomainName = {
  type t;
  type request = {
@as("DomainName") domainName: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("MutualTlsAuthentication") mutualTlsAuthentication: mutualTlsAuthentication,
@as("DomainNameConfigurations") domainNameConfigurations: domainNameConfigurations,
@as("DomainName") domainName: stringWithLengthBetween1And512,
@as("ApiMappingSelectionExpression") apiMappingSelectionExpression: selectionExpression
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetDomainNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeployments = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfDeployment
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetDeploymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAuthorizer = {
  type t;
  type request = {
@as("AuthorizerId") authorizerId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Name") name: stringWithLengthBetween1And128,
@as("JwtConfiguration") jwtConfiguration: jWTConfiguration,
@as("IdentityValidationExpression") identityValidationExpression: stringWithLengthBetween0And1024,
@as("IdentitySource") identitySource: identitySourceList,
@as("EnableSimpleResponses") enableSimpleResponses: __boolean,
@as("AuthorizerUri") authorizerUri: uriWithLengthBetween1And2048,
@as("AuthorizerType") authorizerType: authorizerType,
@as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: integerWithLengthBetween0And3600,
@as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: stringWithLengthBetween1And64,
@as("AuthorizerId") authorizerId: id,
@as("AuthorizerCredentialsArn") authorizerCredentialsArn: arn
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApiMappings = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("DomainName") domainName: option<__string>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfApiMapping
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetApiMappingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApi = {
  type t;
  type request = {
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Warnings") warnings: __listOf__string,
@as("Version") version: stringWithLengthBetween1And64,
@as("Tags") tags: tags,
@as("RouteSelectionExpression") routeSelectionExpression: selectionExpression,
@as("ProtocolType") protocolType: protocolType,
@as("Name") name: stringWithLengthBetween1And128,
@as("ImportInfo") importInfo: __listOf__string,
@as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: __boolean,
@as("DisableSchemaValidation") disableSchemaValidation: __boolean,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("CorsConfiguration") corsConfiguration: cors,
@as("ApiKeySelectionExpression") apiKeySelectionExpression: selectionExpression,
@as("ApiId") apiId: id,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean,
@as("ApiEndpoint") apiEndpoint: __string
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStage = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("StageVariables") stageVariables: stageVariablesMap,
@as("StageName") stageName: option<stringWithLengthBetween1And128>,
@as("RouteSettings") routeSettings: routeSettingsMap,
@as("Description") description: stringWithLengthBetween0And1024,
@as("DeploymentId") deploymentId: id,
@as("DefaultRouteSettings") defaultRouteSettings: routeSettings,
@as("ClientCertificateId") clientCertificateId: id,
@as("AutoDeploy") autoDeploy: __boolean,
@as("ApiId") apiId: option<__string>,
@as("AccessLogSettings") accessLogSettings: accessLogSettings
}
  type response = {
@as("Tags") tags: tags,
@as("StageVariables") stageVariables: stageVariablesMap,
@as("StageName") stageName: stringWithLengthBetween1And128,
@as("RouteSettings") routeSettings: routeSettingsMap,
@as("LastUpdatedDate") lastUpdatedDate: __timestampIso8601,
@as("LastDeploymentStatusMessage") lastDeploymentStatusMessage: __string,
@as("Description") description: stringWithLengthBetween0And1024,
@as("DeploymentId") deploymentId: id,
@as("DefaultRouteSettings") defaultRouteSettings: routeSettings,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("ClientCertificateId") clientCertificateId: id,
@as("AutoDeploy") autoDeploy: __boolean,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean,
@as("AccessLogSettings") accessLogSettings: accessLogSettings
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateStageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRouteResponse = {
  type t;
  type request = {
@as("RouteResponseKey") routeResponseKey: option<selectionKey>,
@as("RouteId") routeId: option<__string>,
@as("ResponseParameters") responseParameters: routeParameters,
@as("ResponseModels") responseModels: routeModels,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("RouteResponseKey") routeResponseKey: selectionKey,
@as("RouteResponseId") routeResponseId: id,
@as("ResponseParameters") responseParameters: routeParameters,
@as("ResponseModels") responseModels: routeModels,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateRouteResponseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRoute = {
  type t;
  type request = {
@as("Target") target: stringWithLengthBetween1And128,
@as("RouteResponseSelectionExpression") routeResponseSelectionExpression: selectionExpression,
@as("RouteKey") routeKey: option<selectionKey>,
@as("RequestParameters") requestParameters: routeParameters,
@as("RequestModels") requestModels: routeModels,
@as("OperationName") operationName: stringWithLengthBetween1And64,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression,
@as("AuthorizerId") authorizerId: id,
@as("AuthorizationType") authorizationType: authorizationType,
@as("AuthorizationScopes") authorizationScopes: authorizationScopes,
@as("ApiKeyRequired") apiKeyRequired: __boolean,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Target") target: stringWithLengthBetween1And128,
@as("RouteResponseSelectionExpression") routeResponseSelectionExpression: selectionExpression,
@as("RouteKey") routeKey: selectionKey,
@as("RouteId") routeId: id,
@as("RequestParameters") requestParameters: routeParameters,
@as("RequestModels") requestModels: routeModels,
@as("OperationName") operationName: stringWithLengthBetween1And64,
@as("ModelSelectionExpression") modelSelectionExpression: selectionExpression,
@as("AuthorizerId") authorizerId: id,
@as("AuthorizationType") authorizationType: authorizationType,
@as("AuthorizationScopes") authorizationScopes: authorizationScopes,
@as("ApiKeyRequired") apiKeyRequired: __boolean,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateIntegration = {
  type t;
  type request = {
@as("TlsConfig") tlsConfig: tlsConfigInput,
@as("TimeoutInMillis") timeoutInMillis: integerWithLengthBetween50And30000,
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseParameters") responseParameters: responseParameters,
@as("RequestTemplates") requestTemplates: templateMap,
@as("RequestParameters") requestParameters: integrationParameters,
@as("PayloadFormatVersion") payloadFormatVersion: stringWithLengthBetween1And64,
@as("PassthroughBehavior") passthroughBehavior: passthroughBehavior,
@as("IntegrationUri") integrationUri: uriWithLengthBetween1And2048,
@as("IntegrationType") integrationType: option<integrationType>,
@as("IntegrationSubtype") integrationSubtype: stringWithLengthBetween1And128,
@as("IntegrationMethod") integrationMethod: stringWithLengthBetween1And64,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CredentialsArn") credentialsArn: arn,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy,
@as("ConnectionType") connectionType: connectionType,
@as("ConnectionId") connectionId: stringWithLengthBetween1And1024,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("TlsConfig") tlsConfig: tlsConfig,
@as("TimeoutInMillis") timeoutInMillis: integerWithLengthBetween50And30000,
@as("TemplateSelectionExpression") templateSelectionExpression: selectionExpression,
@as("ResponseParameters") responseParameters: responseParameters,
@as("RequestTemplates") requestTemplates: templateMap,
@as("RequestParameters") requestParameters: integrationParameters,
@as("PayloadFormatVersion") payloadFormatVersion: stringWithLengthBetween1And64,
@as("PassthroughBehavior") passthroughBehavior: passthroughBehavior,
@as("IntegrationUri") integrationUri: uriWithLengthBetween1And2048,
@as("IntegrationType") integrationType: integrationType,
@as("IntegrationSubtype") integrationSubtype: stringWithLengthBetween1And128,
@as("IntegrationResponseSelectionExpression") integrationResponseSelectionExpression: selectionExpression,
@as("IntegrationMethod") integrationMethod: stringWithLengthBetween1And64,
@as("IntegrationId") integrationId: id,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CredentialsArn") credentialsArn: arn,
@as("ContentHandlingStrategy") contentHandlingStrategy: contentHandlingStrategy,
@as("ConnectionType") connectionType: connectionType,
@as("ConnectionId") connectionId: stringWithLengthBetween1And1024,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDomainName = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("MutualTlsAuthentication") mutualTlsAuthentication: mutualTlsAuthenticationInput,
@as("DomainNameConfigurations") domainNameConfigurations: domainNameConfigurations,
@as("DomainName") domainName: option<stringWithLengthBetween1And512>
}
  type response = {
@as("Tags") tags: tags,
@as("MutualTlsAuthentication") mutualTlsAuthentication: mutualTlsAuthentication,
@as("DomainNameConfigurations") domainNameConfigurations: domainNameConfigurations,
@as("DomainName") domainName: stringWithLengthBetween1And512,
@as("ApiMappingSelectionExpression") apiMappingSelectionExpression: selectionExpression
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateDomainNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAuthorizer = {
  type t;
  type request = {
@as("Name") name: option<stringWithLengthBetween1And128>,
@as("JwtConfiguration") jwtConfiguration: jWTConfiguration,
@as("IdentityValidationExpression") identityValidationExpression: stringWithLengthBetween0And1024,
@as("IdentitySource") identitySource: option<identitySourceList>,
@as("EnableSimpleResponses") enableSimpleResponses: __boolean,
@as("AuthorizerUri") authorizerUri: uriWithLengthBetween1And2048,
@as("AuthorizerType") authorizerType: option<authorizerType>,
@as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: integerWithLengthBetween0And3600,
@as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: stringWithLengthBetween1And64,
@as("AuthorizerCredentialsArn") authorizerCredentialsArn: arn,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("Name") name: stringWithLengthBetween1And128,
@as("JwtConfiguration") jwtConfiguration: jWTConfiguration,
@as("IdentityValidationExpression") identityValidationExpression: stringWithLengthBetween0And1024,
@as("IdentitySource") identitySource: identitySourceList,
@as("EnableSimpleResponses") enableSimpleResponses: __boolean,
@as("AuthorizerUri") authorizerUri: uriWithLengthBetween1And2048,
@as("AuthorizerType") authorizerType: authorizerType,
@as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: integerWithLengthBetween0And3600,
@as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: stringWithLengthBetween1And64,
@as("AuthorizerId") authorizerId: id,
@as("AuthorizerCredentialsArn") authorizerCredentialsArn: arn
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApi = {
  type t;
  type request = {
@as("Version") version: stringWithLengthBetween1And64,
@as("Target") target: uriWithLengthBetween1And2048,
@as("Tags") tags: tags,
@as("RouteSelectionExpression") routeSelectionExpression: selectionExpression,
@as("RouteKey") routeKey: selectionKey,
@as("ProtocolType") protocolType: option<protocolType>,
@as("Name") name: option<stringWithLengthBetween1And128>,
@as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: __boolean,
@as("DisableSchemaValidation") disableSchemaValidation: __boolean,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CredentialsArn") credentialsArn: arn,
@as("CorsConfiguration") corsConfiguration: cors,
@as("ApiKeySelectionExpression") apiKeySelectionExpression: selectionExpression
}
  type response = {
@as("Warnings") warnings: __listOf__string,
@as("Version") version: stringWithLengthBetween1And64,
@as("Tags") tags: tags,
@as("RouteSelectionExpression") routeSelectionExpression: selectionExpression,
@as("ProtocolType") protocolType: protocolType,
@as("Name") name: stringWithLengthBetween1And128,
@as("ImportInfo") importInfo: __listOf__string,
@as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: __boolean,
@as("DisableSchemaValidation") disableSchemaValidation: __boolean,
@as("Description") description: stringWithLengthBetween0And1024,
@as("CreatedDate") createdDate: __timestampIso8601,
@as("CorsConfiguration") corsConfiguration: cors,
@as("ApiKeySelectionExpression") apiKeySelectionExpression: selectionExpression,
@as("ApiId") apiId: id,
@as("ApiGatewayManaged") apiGatewayManaged: __boolean,
@as("ApiEndpoint") apiEndpoint: __string
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateApiCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVpcLinks = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfVpcLink
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetVpcLinksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIntegrationResponses = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("IntegrationId") integrationId: option<__string>,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfIntegrationResponse
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetIntegrationResponsesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStages = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfStage
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetStagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRoutes = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfRoute
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetRoutesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRouteResponses = {
  type t;
  type request = {
@as("RouteId") routeId: option<__string>,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfRouteResponse
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetRouteResponsesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIntegrations = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfIntegration
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetIntegrationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomainNames = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfDomainName
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetDomainNamesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAuthorizers = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string,
@as("ApiId") apiId: option<__string>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfAuthorizer
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetAuthorizersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApis = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __string
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Items") items: __listOfApi
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetApisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
