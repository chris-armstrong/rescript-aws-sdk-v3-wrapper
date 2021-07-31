type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-apigateway") @new external createClient: unit => awsServiceClient = "ApiGatewayV2Client";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type __timestampIso8601 = Js.Date.t;
type __string = string
type __integer = int
type __double = float
type __boolean = bool
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
type integerWithLengthBetweenMinus1And86400 = int
type integerWithLengthBetween50And30000 = int
type integerWithLengthBetween0And3600 = int
type id = string
type exportedApi = NodeJs.Buffer.t
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
@as("ServerNameToVerify") serverNameToVerify: option<stringWithLengthBetween1And512>
}
type tlsConfig = {
@as("ServerNameToVerify") serverNameToVerify: option<stringWithLengthBetween1And512>
}
type templateMap = Js.Dict.t<stringWithLengthBetween0And32K>
type tags = Js.Dict.t<stringWithLengthBetween1And1600>
type subnetIdList = array<__string>
type stageVariablesMap = Js.Dict.t<stringWithLengthBetween0And2048>
type securityGroupIdList = array<__string>
type routeSettings = {
@as("ThrottlingRateLimit") throttlingRateLimit: option<__double>,
  @as("ThrottlingBurstLimit") throttlingBurstLimit: option<__integer>,
  @as("LoggingLevel") loggingLevel: option<loggingLevel>,
  @as("DetailedMetricsEnabled") detailedMetricsEnabled: option<__boolean>,
  @as("DataTraceEnabled") dataTraceEnabled: option<__boolean>
}
type routeModels = Js.Dict.t<stringWithLengthBetween1And128>
type parameterConstraints = {
@as("Required") required: option<__boolean>
}
type mutualTlsAuthenticationInput = {
@as("TruststoreVersion") truststoreVersion: option<stringWithLengthBetween1And64>,
  @as("TruststoreUri") truststoreUri: option<uriWithLengthBetween1And2048>
}
type model = {
@as("Schema") schema: option<stringWithLengthBetween0And32K>,
  @as("Name") name: stringWithLengthBetween1And128,
  @as("ModelId") modelId: option<id>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("ContentType") contentType: option<stringWithLengthBetween1And256>
}
type integrationParameters = Js.Dict.t<stringWithLengthBetween1And512>
type identitySourceList = array<__string>
type domainNameConfiguration = {
@as("SecurityPolicy") securityPolicy: option<securityPolicy>,
  @as("HostedZoneId") hostedZoneId: option<__string>,
  @as("EndpointType") endpointType: option<endpointType>,
  @as("DomainNameStatusMessage") domainNameStatusMessage: option<__string>,
  @as("DomainNameStatus") domainNameStatus: option<domainNameStatus>,
  @as("CertificateUploadDate") certificateUploadDate: option<__timestampIso8601>,
  @as("CertificateName") certificateName: option<stringWithLengthBetween1And128>,
  @as("CertificateArn") certificateArn: option<arn>,
  @as("ApiGatewayDomainName") apiGatewayDomainName: option<__string>
}
type deployment = {
@as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("DeploymentStatusMessage") deploymentStatusMessage: option<__string>,
  @as("DeploymentStatus") deploymentStatus: option<deploymentStatus>,
  @as("DeploymentId") deploymentId: option<id>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("AutoDeployed") autoDeployed: option<__boolean>
}
type corsOriginList = array<__string>
type corsMethodList = array<stringWithLengthBetween1And64>
type corsHeaderList = array<__string>
type authorizationScopes = array<stringWithLengthBetween1And64>
type apiMapping = {
@as("Stage") stage: stringWithLengthBetween1And128,
  @as("ApiMappingKey") apiMappingKey: option<selectionKey>,
  @as("ApiMappingId") apiMappingId: option<id>,
  @as("ApiId") apiId: id
}
type accessLogSettings = {
@as("Format") format: option<stringWithLengthBetween1And1024>,
  @as("DestinationArn") destinationArn: option<arn>
}
type __listOfModel = array<model>
type __listOfDeployment = array<deployment>
type __listOfApiMapping = array<apiMapping>
type vpcLink = {
@as("VpcLinkVersion") vpcLinkVersion: option<vpcLinkVersion>,
  @as("VpcLinkStatusMessage") vpcLinkStatusMessage: option<stringWithLengthBetween0And1024>,
  @as("VpcLinkStatus") vpcLinkStatus: option<vpcLinkStatus>,
  @as("VpcLinkId") vpcLinkId: id,
  @as("Tags") tags: option<tags>,
  @as("SubnetIds") subnetIds: subnetIdList,
  @as("SecurityGroupIds") securityGroupIds: securityGroupIdList,
  @as("Name") name: stringWithLengthBetween1And128,
  @as("CreatedDate") createdDate: option<__timestampIso8601>
}
type routeSettingsMap = Js.Dict.t<routeSettings>
type routeParameters = Js.Dict.t<parameterConstraints>
type responseParameters = Js.Dict.t<integrationParameters>
type mutualTlsAuthentication = {
@as("TruststoreWarnings") truststoreWarnings: option<__listOf__string>,
  @as("TruststoreVersion") truststoreVersion: option<stringWithLengthBetween1And64>,
  @as("TruststoreUri") truststoreUri: option<uriWithLengthBetween1And2048>
}
type jwtconfiguration = {
@as("Issuer") issuer: option<uriWithLengthBetween1And2048>,
  @as("Audience") audience: option<__listOf__string>
}
type integrationResponse = {
@as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseTemplates") responseTemplates: option<templateMap>,
  @as("ResponseParameters") responseParameters: option<integrationParameters>,
  @as("IntegrationResponseKey") integrationResponseKey: selectionKey,
  @as("IntegrationResponseId") integrationResponseId: option<id>,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>
}
type domainNameConfigurations = array<domainNameConfiguration>
type cors = {
@as("MaxAge") maxAge: option<integerWithLengthBetweenMinus1And86400>,
  @as("ExposeHeaders") exposeHeaders: option<corsHeaderList>,
  @as("AllowOrigins") allowOrigins: option<corsOriginList>,
  @as("AllowMethods") allowMethods: option<corsMethodList>,
  @as("AllowHeaders") allowHeaders: option<corsHeaderList>,
  @as("AllowCredentials") allowCredentials: option<__boolean>
}
type __listOfVpcLink = array<vpcLink>
type __listOfIntegrationResponse = array<integrationResponse>
type stage = {
@as("Tags") tags: option<tags>,
  @as("StageVariables") stageVariables: option<stageVariablesMap>,
  @as("StageName") stageName: stringWithLengthBetween1And128,
  @as("RouteSettings") routeSettings: option<routeSettingsMap>,
  @as("LastUpdatedDate") lastUpdatedDate: option<__timestampIso8601>,
  @as("LastDeploymentStatusMessage") lastDeploymentStatusMessage: option<__string>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("DeploymentId") deploymentId: option<id>,
  @as("DefaultRouteSettings") defaultRouteSettings: option<routeSettings>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("ClientCertificateId") clientCertificateId: option<id>,
  @as("AutoDeploy") autoDeploy: option<__boolean>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>,
  @as("AccessLogSettings") accessLogSettings: option<accessLogSettings>
}
type routeResponse = {
@as("RouteResponseKey") routeResponseKey: selectionKey,
  @as("RouteResponseId") routeResponseId: option<id>,
  @as("ResponseParameters") responseParameters: option<routeParameters>,
  @as("ResponseModels") responseModels: option<routeModels>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>
}
type route = {
@as("Target") target: option<stringWithLengthBetween1And128>,
  @as("RouteResponseSelectionExpression") routeResponseSelectionExpression: option<selectionExpression>,
  @as("RouteKey") routeKey: selectionKey,
  @as("RouteId") routeId: option<id>,
  @as("RequestParameters") requestParameters: option<routeParameters>,
  @as("RequestModels") requestModels: option<routeModels>,
  @as("OperationName") operationName: option<stringWithLengthBetween1And64>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>,
  @as("AuthorizerId") authorizerId: option<id>,
  @as("AuthorizationType") authorizationType: option<authorizationType>,
  @as("AuthorizationScopes") authorizationScopes: option<authorizationScopes>,
  @as("ApiKeyRequired") apiKeyRequired: option<__boolean>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>
}
type integration = {
@as("TlsConfig") tlsConfig: option<tlsConfig>,
  @as("TimeoutInMillis") timeoutInMillis: option<integerWithLengthBetween50And30000>,
  @as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseParameters") responseParameters: option<responseParameters>,
  @as("RequestTemplates") requestTemplates: option<templateMap>,
  @as("RequestParameters") requestParameters: option<integrationParameters>,
  @as("PayloadFormatVersion") payloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("PassthroughBehavior") passthroughBehavior: option<passthroughBehavior>,
  @as("IntegrationUri") integrationUri: option<uriWithLengthBetween1And2048>,
  @as("IntegrationType") integrationType: option<integrationType>,
  @as("IntegrationSubtype") integrationSubtype: option<stringWithLengthBetween1And128>,
  @as("IntegrationResponseSelectionExpression") integrationResponseSelectionExpression: option<selectionExpression>,
  @as("IntegrationMethod") integrationMethod: option<stringWithLengthBetween1And64>,
  @as("IntegrationId") integrationId: option<id>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CredentialsArn") credentialsArn: option<arn>,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>,
  @as("ConnectionType") connectionType: option<connectionType>,
  @as("ConnectionId") connectionId: option<stringWithLengthBetween1And1024>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>
}
type domainName = {
@as("Tags") tags: option<tags>,
  @as("MutualTlsAuthentication") mutualTlsAuthentication: option<mutualTlsAuthentication>,
  @as("DomainNameConfigurations") domainNameConfigurations: option<domainNameConfigurations>,
  @as("DomainName") domainName: stringWithLengthBetween1And512,
  @as("ApiMappingSelectionExpression") apiMappingSelectionExpression: option<selectionExpression>
}
type authorizer = {
@as("Name") name: stringWithLengthBetween1And128,
  @as("JwtConfiguration") jwtConfiguration: option<jwtconfiguration>,
  @as("IdentityValidationExpression") identityValidationExpression: option<stringWithLengthBetween0And1024>,
  @as("IdentitySource") identitySource: option<identitySourceList>,
  @as("EnableSimpleResponses") enableSimpleResponses: option<__boolean>,
  @as("AuthorizerUri") authorizerUri: option<uriWithLengthBetween1And2048>,
  @as("AuthorizerType") authorizerType: option<authorizerType>,
  @as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
  @as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("AuthorizerId") authorizerId: option<id>,
  @as("AuthorizerCredentialsArn") authorizerCredentialsArn: option<arn>
}
type api = {
@as("Warnings") warnings: option<__listOf__string>,
  @as("Version") version: option<stringWithLengthBetween1And64>,
  @as("Tags") tags: option<tags>,
  @as("RouteSelectionExpression") routeSelectionExpression: selectionExpression,
  @as("ProtocolType") protocolType: protocolType,
  @as("Name") name: stringWithLengthBetween1And128,
  @as("ImportInfo") importInfo: option<__listOf__string>,
  @as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: option<__boolean>,
  @as("DisableSchemaValidation") disableSchemaValidation: option<__boolean>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("CorsConfiguration") corsConfiguration: option<cors>,
  @as("ApiKeySelectionExpression") apiKeySelectionExpression: option<selectionExpression>,
  @as("ApiId") apiId: option<id>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>,
  @as("ApiEndpoint") apiEndpoint: option<__string>
}
type __listOfStage = array<stage>
type __listOfRouteResponse = array<routeResponse>
type __listOfRoute = array<route>
type __listOfIntegration = array<integration>
type __listOfDomainName = array<domainName>
type __listOfAuthorizer = array<authorizer>
type __listOfApi = array<api>

module UpdateModel = {
  type t;
  type request = {
@as("Schema") schema: option<stringWithLengthBetween0And32K>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("ModelId") modelId: __string,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("ContentType") contentType: option<stringWithLengthBetween1And256>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Schema") schema: option<stringWithLengthBetween0And32K>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("ModelId") modelId: option<id>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("ContentType") contentType: option<stringWithLengthBetween1And256>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDeployment = {
  type t;
  type request = {
@as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("DeploymentId") deploymentId: __string,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("DeploymentStatusMessage") deploymentStatusMessage: option<__string>,
  @as("DeploymentStatus") deploymentStatus: option<deploymentStatus>,
  @as("DeploymentId") deploymentId: option<id>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("AutoDeployed") autoDeployed: option<__boolean>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApiMapping = {
  type t;
  type request = {
@as("Stage") stage: option<stringWithLengthBetween1And128>,
  @as("DomainName") domainName: __string,
  @as("ApiMappingKey") apiMappingKey: option<selectionKey>,
  @as("ApiMappingId") apiMappingId: __string,
  @as("ApiId") apiId: id
}
  type response = {
@as("Stage") stage: option<stringWithLengthBetween1And128>,
  @as("ApiMappingKey") apiMappingKey: option<selectionKey>,
  @as("ApiMappingId") apiMappingId: option<id>,
  @as("ApiId") apiId: option<id>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateApiMappingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ResetAuthorizersCache = {
  type t;
  type request = {
@as("StageName") stageName: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "ResetAuthorizersCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetModelTemplate = {
  type t;
  type request = {
@as("ModelId") modelId: __string,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Value") value: option<__string>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetModelTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetModel = {
  type t;
  type request = {
@as("ModelId") modelId: __string,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Schema") schema: option<stringWithLengthBetween0And32K>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("ModelId") modelId: option<id>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("ContentType") contentType: option<stringWithLengthBetween1And256>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDeployment = {
  type t;
  type request = {
@as("DeploymentId") deploymentId: __string,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("DeploymentStatusMessage") deploymentStatusMessage: option<__string>,
  @as("DeploymentStatus") deploymentStatus: option<deploymentStatus>,
  @as("DeploymentId") deploymentId: option<id>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("AutoDeployed") autoDeployed: option<__boolean>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApiMapping = {
  type t;
  type request = {
@as("DomainName") domainName: __string,
  @as("ApiMappingId") apiMappingId: __string
}
  type response = {
@as("Stage") stage: option<stringWithLengthBetween1And128>,
  @as("ApiMappingKey") apiMappingKey: option<selectionKey>,
  @as("ApiMappingId") apiMappingId: option<id>,
  @as("ApiId") apiId: option<id>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetApiMappingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExportApi = {
  type t;
  type request = {
@as("StageName") stageName: option<__string>,
  @as("Specification") specification: __string,
  @as("OutputType") outputType: __string,
  @as("IncludeExtensions") includeExtensions: option<__boolean>,
  @as("ExportVersion") exportVersion: option<__string>,
  @as("ApiId") apiId: __string
}
  type response = {
body: option<exportedApi>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "ExportApiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteVpcLink = {
  type t;
  type request = {
@as("VpcLinkId") vpcLinkId: __string
}
  type response = unit
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteVpcLinkCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStage = {
  type t;
  type request = {
@as("StageName") stageName: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteStageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteRouteSettings = {
  type t;
  type request = {
@as("StageName") stageName: __string,
  @as("RouteKey") routeKey: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteRouteSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteRouteResponse = {
  type t;
  type request = {
@as("RouteResponseId") routeResponseId: __string,
  @as("RouteId") routeId: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteRouteResponseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteRouteRequestParameter = {
  type t;
  type request = {
@as("RouteId") routeId: __string,
  @as("RequestParameterKey") requestParameterKey: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteRouteRequestParameterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteRoute = {
  type t;
  type request = {
@as("RouteId") routeId: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteRouteCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteModel = {
  type t;
  type request = {
@as("ModelId") modelId: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntegrationResponse = {
  type t;
  type request = {
@as("IntegrationResponseId") integrationResponseId: __string,
  @as("IntegrationId") integrationId: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteIntegrationResponseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteIntegration = {
  type t;
  type request = {
@as("IntegrationId") integrationId: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteIntegrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDomainName = {
  type t;
  type request = {
@as("DomainName") domainName: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteDomainNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDeployment = {
  type t;
  type request = {
@as("DeploymentId") deploymentId: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteCorsConfiguration = {
  type t;
  type request = {
@as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteCorsConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteAuthorizer = {
  type t;
  type request = {
@as("AuthorizerId") authorizerId: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteAuthorizerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteApiMapping = {
  type t;
  type request = {
@as("DomainName") domainName: __string,
  @as("ApiMappingId") apiMappingId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteApiMappingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteApi = {
  type t;
  type request = {
@as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteApiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccessLogSettings = {
  type t;
  type request = {
@as("StageName") stageName: __string,
  @as("ApiId") apiId: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "DeleteAccessLogSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateModel = {
  type t;
  type request = {
@as("Schema") schema: stringWithLengthBetween0And32K,
  @as("Name") name: stringWithLengthBetween1And128,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("ContentType") contentType: option<stringWithLengthBetween1And256>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Schema") schema: option<stringWithLengthBetween0And32K>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("ModelId") modelId: option<id>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("ContentType") contentType: option<stringWithLengthBetween1And256>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDeployment = {
  type t;
  type request = {
@as("StageName") stageName: option<stringWithLengthBetween1And128>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("DeploymentStatusMessage") deploymentStatusMessage: option<__string>,
  @as("DeploymentStatus") deploymentStatus: option<deploymentStatus>,
  @as("DeploymentId") deploymentId: option<id>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("AutoDeployed") autoDeployed: option<__boolean>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApiMapping = {
  type t;
  type request = {
@as("Stage") stage: stringWithLengthBetween1And128,
  @as("DomainName") domainName: __string,
  @as("ApiMappingKey") apiMappingKey: option<selectionKey>,
  @as("ApiId") apiId: id
}
  type response = {
@as("Stage") stage: option<stringWithLengthBetween1And128>,
  @as("ApiMappingKey") apiMappingKey: option<selectionKey>,
  @as("ApiMappingId") apiMappingId: option<id>,
  @as("ApiId") apiId: option<id>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateApiMappingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateVpcLink = {
  type t;
  type request = {
@as("VpcLinkId") vpcLinkId: __string,
  @as("Name") name: option<stringWithLengthBetween1And128>
}
  type response = {
@as("VpcLinkVersion") vpcLinkVersion: option<vpcLinkVersion>,
  @as("VpcLinkStatusMessage") vpcLinkStatusMessage: option<stringWithLengthBetween0And1024>,
  @as("VpcLinkStatus") vpcLinkStatus: option<vpcLinkStatus>,
  @as("VpcLinkId") vpcLinkId: option<id>,
  @as("Tags") tags: option<tags>,
  @as("SubnetIds") subnetIds: option<subnetIdList>,
  @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdList>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateVpcLinkCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateIntegrationResponse = {
  type t;
  type request = {
@as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseTemplates") responseTemplates: option<templateMap>,
  @as("ResponseParameters") responseParameters: option<integrationParameters>,
  @as("IntegrationResponseKey") integrationResponseKey: option<selectionKey>,
  @as("IntegrationResponseId") integrationResponseId: __string,
  @as("IntegrationId") integrationId: __string,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseTemplates") responseTemplates: option<templateMap>,
  @as("ResponseParameters") responseParameters: option<integrationParameters>,
  @as("IntegrationResponseKey") integrationResponseKey: option<selectionKey>,
  @as("IntegrationResponseId") integrationResponseId: option<id>,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateIntegrationResponseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: __listOf__string,
  @as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("ResourceArn") resourceArn: __string
}
  type response = unit
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetVpcLink = {
  type t;
  type request = {
@as("VpcLinkId") vpcLinkId: __string
}
  type response = {
@as("VpcLinkVersion") vpcLinkVersion: option<vpcLinkVersion>,
  @as("VpcLinkStatusMessage") vpcLinkStatusMessage: option<stringWithLengthBetween0And1024>,
  @as("VpcLinkStatus") vpcLinkStatus: option<vpcLinkStatus>,
  @as("VpcLinkId") vpcLinkId: option<id>,
  @as("Tags") tags: option<tags>,
  @as("SubnetIds") subnetIds: option<subnetIdList>,
  @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdList>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetVpcLinkCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTags = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: __string
}
  type response = {
@as("Tags") tags: option<tags>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIntegrationResponse = {
  type t;
  type request = {
@as("IntegrationResponseId") integrationResponseId: __string,
  @as("IntegrationId") integrationId: __string,
  @as("ApiId") apiId: __string
}
  type response = {
@as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseTemplates") responseTemplates: option<templateMap>,
  @as("ResponseParameters") responseParameters: option<integrationParameters>,
  @as("IntegrationResponseKey") integrationResponseKey: option<selectionKey>,
  @as("IntegrationResponseId") integrationResponseId: option<id>,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetIntegrationResponseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateVpcLink = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("SubnetIds") subnetIds: subnetIdList,
  @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdList>,
  @as("Name") name: stringWithLengthBetween1And128
}
  type response = {
@as("VpcLinkVersion") vpcLinkVersion: option<vpcLinkVersion>,
  @as("VpcLinkStatusMessage") vpcLinkStatusMessage: option<stringWithLengthBetween0And1024>,
  @as("VpcLinkStatus") vpcLinkStatus: option<vpcLinkStatus>,
  @as("VpcLinkId") vpcLinkId: option<id>,
  @as("Tags") tags: option<tags>,
  @as("SubnetIds") subnetIds: option<subnetIdList>,
  @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdList>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateVpcLinkCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateIntegrationResponse = {
  type t;
  type request = {
@as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseTemplates") responseTemplates: option<templateMap>,
  @as("ResponseParameters") responseParameters: option<integrationParameters>,
  @as("IntegrationResponseKey") integrationResponseKey: selectionKey,
  @as("IntegrationId") integrationId: __string,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseTemplates") responseTemplates: option<templateMap>,
  @as("ResponseParameters") responseParameters: option<integrationParameters>,
  @as("IntegrationResponseKey") integrationResponseKey: option<selectionKey>,
  @as("IntegrationResponseId") integrationResponseId: option<id>,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateIntegrationResponseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateStage = {
  type t;
  type request = {
@as("StageVariables") stageVariables: option<stageVariablesMap>,
  @as("StageName") stageName: __string,
  @as("RouteSettings") routeSettings: option<routeSettingsMap>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("DeploymentId") deploymentId: option<id>,
  @as("DefaultRouteSettings") defaultRouteSettings: option<routeSettings>,
  @as("ClientCertificateId") clientCertificateId: option<id>,
  @as("AutoDeploy") autoDeploy: option<__boolean>,
  @as("ApiId") apiId: __string,
  @as("AccessLogSettings") accessLogSettings: option<accessLogSettings>
}
  type response = {
@as("Tags") tags: option<tags>,
  @as("StageVariables") stageVariables: option<stageVariablesMap>,
  @as("StageName") stageName: option<stringWithLengthBetween1And128>,
  @as("RouteSettings") routeSettings: option<routeSettingsMap>,
  @as("LastUpdatedDate") lastUpdatedDate: option<__timestampIso8601>,
  @as("LastDeploymentStatusMessage") lastDeploymentStatusMessage: option<__string>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("DeploymentId") deploymentId: option<id>,
  @as("DefaultRouteSettings") defaultRouteSettings: option<routeSettings>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("ClientCertificateId") clientCertificateId: option<id>,
  @as("AutoDeploy") autoDeploy: option<__boolean>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>,
  @as("AccessLogSettings") accessLogSettings: option<accessLogSettings>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateStageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRouteResponse = {
  type t;
  type request = {
@as("RouteResponseKey") routeResponseKey: option<selectionKey>,
  @as("RouteResponseId") routeResponseId: __string,
  @as("RouteId") routeId: __string,
  @as("ResponseParameters") responseParameters: option<routeParameters>,
  @as("ResponseModels") responseModels: option<routeModels>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("RouteResponseKey") routeResponseKey: option<selectionKey>,
  @as("RouteResponseId") routeResponseId: option<id>,
  @as("ResponseParameters") responseParameters: option<routeParameters>,
  @as("ResponseModels") responseModels: option<routeModels>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateRouteResponseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRoute = {
  type t;
  type request = {
@as("Target") target: option<stringWithLengthBetween1And128>,
  @as("RouteResponseSelectionExpression") routeResponseSelectionExpression: option<selectionExpression>,
  @as("RouteKey") routeKey: option<selectionKey>,
  @as("RouteId") routeId: __string,
  @as("RequestParameters") requestParameters: option<routeParameters>,
  @as("RequestModels") requestModels: option<routeModels>,
  @as("OperationName") operationName: option<stringWithLengthBetween1And64>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>,
  @as("AuthorizerId") authorizerId: option<id>,
  @as("AuthorizationType") authorizationType: option<authorizationType>,
  @as("AuthorizationScopes") authorizationScopes: option<authorizationScopes>,
  @as("ApiKeyRequired") apiKeyRequired: option<__boolean>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Target") target: option<stringWithLengthBetween1And128>,
  @as("RouteResponseSelectionExpression") routeResponseSelectionExpression: option<selectionExpression>,
  @as("RouteKey") routeKey: option<selectionKey>,
  @as("RouteId") routeId: option<id>,
  @as("RequestParameters") requestParameters: option<routeParameters>,
  @as("RequestModels") requestModels: option<routeModels>,
  @as("OperationName") operationName: option<stringWithLengthBetween1And64>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>,
  @as("AuthorizerId") authorizerId: option<id>,
  @as("AuthorizationType") authorizationType: option<authorizationType>,
  @as("AuthorizationScopes") authorizationScopes: option<authorizationScopes>,
  @as("ApiKeyRequired") apiKeyRequired: option<__boolean>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateRouteCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateIntegration = {
  type t;
  type request = {
@as("TlsConfig") tlsConfig: option<tlsConfigInput>,
  @as("TimeoutInMillis") timeoutInMillis: option<integerWithLengthBetween50And30000>,
  @as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseParameters") responseParameters: option<responseParameters>,
  @as("RequestTemplates") requestTemplates: option<templateMap>,
  @as("RequestParameters") requestParameters: option<integrationParameters>,
  @as("PayloadFormatVersion") payloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("PassthroughBehavior") passthroughBehavior: option<passthroughBehavior>,
  @as("IntegrationUri") integrationUri: option<uriWithLengthBetween1And2048>,
  @as("IntegrationType") integrationType: option<integrationType>,
  @as("IntegrationSubtype") integrationSubtype: option<stringWithLengthBetween1And128>,
  @as("IntegrationMethod") integrationMethod: option<stringWithLengthBetween1And64>,
  @as("IntegrationId") integrationId: __string,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CredentialsArn") credentialsArn: option<arn>,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>,
  @as("ConnectionType") connectionType: option<connectionType>,
  @as("ConnectionId") connectionId: option<stringWithLengthBetween1And1024>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("TlsConfig") tlsConfig: option<tlsConfig>,
  @as("TimeoutInMillis") timeoutInMillis: option<integerWithLengthBetween50And30000>,
  @as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseParameters") responseParameters: option<responseParameters>,
  @as("RequestTemplates") requestTemplates: option<templateMap>,
  @as("RequestParameters") requestParameters: option<integrationParameters>,
  @as("PayloadFormatVersion") payloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("PassthroughBehavior") passthroughBehavior: option<passthroughBehavior>,
  @as("IntegrationUri") integrationUri: option<uriWithLengthBetween1And2048>,
  @as("IntegrationType") integrationType: option<integrationType>,
  @as("IntegrationSubtype") integrationSubtype: option<stringWithLengthBetween1And128>,
  @as("IntegrationResponseSelectionExpression") integrationResponseSelectionExpression: option<selectionExpression>,
  @as("IntegrationMethod") integrationMethod: option<stringWithLengthBetween1And64>,
  @as("IntegrationId") integrationId: option<id>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CredentialsArn") credentialsArn: option<arn>,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>,
  @as("ConnectionType") connectionType: option<connectionType>,
  @as("ConnectionId") connectionId: option<stringWithLengthBetween1And1024>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateIntegrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainName = {
  type t;
  type request = {
@as("MutualTlsAuthentication") mutualTlsAuthentication: option<mutualTlsAuthenticationInput>,
  @as("DomainNameConfigurations") domainNameConfigurations: option<domainNameConfigurations>,
  @as("DomainName") domainName: __string
}
  type response = {
@as("Tags") tags: option<tags>,
  @as("MutualTlsAuthentication") mutualTlsAuthentication: option<mutualTlsAuthentication>,
  @as("DomainNameConfigurations") domainNameConfigurations: option<domainNameConfigurations>,
  @as("DomainName") domainName: option<stringWithLengthBetween1And512>,
  @as("ApiMappingSelectionExpression") apiMappingSelectionExpression: option<selectionExpression>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateDomainNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAuthorizer = {
  type t;
  type request = {
@as("Name") name: option<stringWithLengthBetween1And128>,
  @as("JwtConfiguration") jwtConfiguration: option<jwtconfiguration>,
  @as("IdentityValidationExpression") identityValidationExpression: option<stringWithLengthBetween0And1024>,
  @as("IdentitySource") identitySource: option<identitySourceList>,
  @as("EnableSimpleResponses") enableSimpleResponses: option<__boolean>,
  @as("AuthorizerUri") authorizerUri: option<uriWithLengthBetween1And2048>,
  @as("AuthorizerType") authorizerType: option<authorizerType>,
  @as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
  @as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("AuthorizerId") authorizerId: __string,
  @as("AuthorizerCredentialsArn") authorizerCredentialsArn: option<arn>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Name") name: option<stringWithLengthBetween1And128>,
  @as("JwtConfiguration") jwtConfiguration: option<jwtconfiguration>,
  @as("IdentityValidationExpression") identityValidationExpression: option<stringWithLengthBetween0And1024>,
  @as("IdentitySource") identitySource: option<identitySourceList>,
  @as("EnableSimpleResponses") enableSimpleResponses: option<__boolean>,
  @as("AuthorizerUri") authorizerUri: option<uriWithLengthBetween1And2048>,
  @as("AuthorizerType") authorizerType: option<authorizerType>,
  @as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
  @as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("AuthorizerId") authorizerId: option<id>,
  @as("AuthorizerCredentialsArn") authorizerCredentialsArn: option<arn>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateAuthorizerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApi = {
  type t;
  type request = {
@as("Version") version: option<stringWithLengthBetween1And64>,
  @as("Target") target: option<uriWithLengthBetween1And2048>,
  @as("RouteSelectionExpression") routeSelectionExpression: option<selectionExpression>,
  @as("RouteKey") routeKey: option<selectionKey>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: option<__boolean>,
  @as("DisableSchemaValidation") disableSchemaValidation: option<__boolean>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CredentialsArn") credentialsArn: option<arn>,
  @as("CorsConfiguration") corsConfiguration: option<cors>,
  @as("ApiKeySelectionExpression") apiKeySelectionExpression: option<selectionExpression>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Warnings") warnings: option<__listOf__string>,
  @as("Version") version: option<stringWithLengthBetween1And64>,
  @as("Tags") tags: option<tags>,
  @as("RouteSelectionExpression") routeSelectionExpression: option<selectionExpression>,
  @as("ProtocolType") protocolType: option<protocolType>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("ImportInfo") importInfo: option<__listOf__string>,
  @as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: option<__boolean>,
  @as("DisableSchemaValidation") disableSchemaValidation: option<__boolean>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("CorsConfiguration") corsConfiguration: option<cors>,
  @as("ApiKeySelectionExpression") apiKeySelectionExpression: option<selectionExpression>,
  @as("ApiId") apiId: option<id>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>,
  @as("ApiEndpoint") apiEndpoint: option<__string>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "UpdateApiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ReimportApi = {
  type t;
  type request = {
@as("FailOnWarnings") failOnWarnings: option<__boolean>,
  @as("Body") body: __string,
  @as("Basepath") basepath: option<__string>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Warnings") warnings: option<__listOf__string>,
  @as("Version") version: option<stringWithLengthBetween1And64>,
  @as("Tags") tags: option<tags>,
  @as("RouteSelectionExpression") routeSelectionExpression: option<selectionExpression>,
  @as("ProtocolType") protocolType: option<protocolType>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("ImportInfo") importInfo: option<__listOf__string>,
  @as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: option<__boolean>,
  @as("DisableSchemaValidation") disableSchemaValidation: option<__boolean>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("CorsConfiguration") corsConfiguration: option<cors>,
  @as("ApiKeySelectionExpression") apiKeySelectionExpression: option<selectionExpression>,
  @as("ApiId") apiId: option<id>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>,
  @as("ApiEndpoint") apiEndpoint: option<__string>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "ReimportApiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportApi = {
  type t;
  type request = {
@as("FailOnWarnings") failOnWarnings: option<__boolean>,
  @as("Body") body: __string,
  @as("Basepath") basepath: option<__string>
}
  type response = {
@as("Warnings") warnings: option<__listOf__string>,
  @as("Version") version: option<stringWithLengthBetween1And64>,
  @as("Tags") tags: option<tags>,
  @as("RouteSelectionExpression") routeSelectionExpression: option<selectionExpression>,
  @as("ProtocolType") protocolType: option<protocolType>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("ImportInfo") importInfo: option<__listOf__string>,
  @as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: option<__boolean>,
  @as("DisableSchemaValidation") disableSchemaValidation: option<__boolean>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("CorsConfiguration") corsConfiguration: option<cors>,
  @as("ApiKeySelectionExpression") apiKeySelectionExpression: option<selectionExpression>,
  @as("ApiId") apiId: option<id>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>,
  @as("ApiEndpoint") apiEndpoint: option<__string>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "ImportApiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStage = {
  type t;
  type request = {
@as("StageName") stageName: __string,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Tags") tags: option<tags>,
  @as("StageVariables") stageVariables: option<stageVariablesMap>,
  @as("StageName") stageName: option<stringWithLengthBetween1And128>,
  @as("RouteSettings") routeSettings: option<routeSettingsMap>,
  @as("LastUpdatedDate") lastUpdatedDate: option<__timestampIso8601>,
  @as("LastDeploymentStatusMessage") lastDeploymentStatusMessage: option<__string>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("DeploymentId") deploymentId: option<id>,
  @as("DefaultRouteSettings") defaultRouteSettings: option<routeSettings>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("ClientCertificateId") clientCertificateId: option<id>,
  @as("AutoDeploy") autoDeploy: option<__boolean>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>,
  @as("AccessLogSettings") accessLogSettings: option<accessLogSettings>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetStageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRouteResponse = {
  type t;
  type request = {
@as("RouteResponseId") routeResponseId: __string,
  @as("RouteId") routeId: __string,
  @as("ApiId") apiId: __string
}
  type response = {
@as("RouteResponseKey") routeResponseKey: option<selectionKey>,
  @as("RouteResponseId") routeResponseId: option<id>,
  @as("ResponseParameters") responseParameters: option<routeParameters>,
  @as("ResponseModels") responseModels: option<routeModels>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetRouteResponseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRoute = {
  type t;
  type request = {
@as("RouteId") routeId: __string,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Target") target: option<stringWithLengthBetween1And128>,
  @as("RouteResponseSelectionExpression") routeResponseSelectionExpression: option<selectionExpression>,
  @as("RouteKey") routeKey: option<selectionKey>,
  @as("RouteId") routeId: option<id>,
  @as("RequestParameters") requestParameters: option<routeParameters>,
  @as("RequestModels") requestModels: option<routeModels>,
  @as("OperationName") operationName: option<stringWithLengthBetween1And64>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>,
  @as("AuthorizerId") authorizerId: option<id>,
  @as("AuthorizationType") authorizationType: option<authorizationType>,
  @as("AuthorizationScopes") authorizationScopes: option<authorizationScopes>,
  @as("ApiKeyRequired") apiKeyRequired: option<__boolean>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetRouteCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetModels = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfModel>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetModelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIntegration = {
  type t;
  type request = {
@as("IntegrationId") integrationId: __string,
  @as("ApiId") apiId: __string
}
  type response = {
@as("TlsConfig") tlsConfig: option<tlsConfig>,
  @as("TimeoutInMillis") timeoutInMillis: option<integerWithLengthBetween50And30000>,
  @as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseParameters") responseParameters: option<responseParameters>,
  @as("RequestTemplates") requestTemplates: option<templateMap>,
  @as("RequestParameters") requestParameters: option<integrationParameters>,
  @as("PayloadFormatVersion") payloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("PassthroughBehavior") passthroughBehavior: option<passthroughBehavior>,
  @as("IntegrationUri") integrationUri: option<uriWithLengthBetween1And2048>,
  @as("IntegrationType") integrationType: option<integrationType>,
  @as("IntegrationSubtype") integrationSubtype: option<stringWithLengthBetween1And128>,
  @as("IntegrationResponseSelectionExpression") integrationResponseSelectionExpression: option<selectionExpression>,
  @as("IntegrationMethod") integrationMethod: option<stringWithLengthBetween1And64>,
  @as("IntegrationId") integrationId: option<id>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CredentialsArn") credentialsArn: option<arn>,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>,
  @as("ConnectionType") connectionType: option<connectionType>,
  @as("ConnectionId") connectionId: option<stringWithLengthBetween1And1024>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetIntegrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDomainName = {
  type t;
  type request = {
@as("DomainName") domainName: __string
}
  type response = {
@as("Tags") tags: option<tags>,
  @as("MutualTlsAuthentication") mutualTlsAuthentication: option<mutualTlsAuthentication>,
  @as("DomainNameConfigurations") domainNameConfigurations: option<domainNameConfigurations>,
  @as("DomainName") domainName: option<stringWithLengthBetween1And512>,
  @as("ApiMappingSelectionExpression") apiMappingSelectionExpression: option<selectionExpression>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetDomainNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDeployments = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfDeployment>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetDeploymentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAuthorizer = {
  type t;
  type request = {
@as("AuthorizerId") authorizerId: __string,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Name") name: option<stringWithLengthBetween1And128>,
  @as("JwtConfiguration") jwtConfiguration: option<jwtconfiguration>,
  @as("IdentityValidationExpression") identityValidationExpression: option<stringWithLengthBetween0And1024>,
  @as("IdentitySource") identitySource: option<identitySourceList>,
  @as("EnableSimpleResponses") enableSimpleResponses: option<__boolean>,
  @as("AuthorizerUri") authorizerUri: option<uriWithLengthBetween1And2048>,
  @as("AuthorizerType") authorizerType: option<authorizerType>,
  @as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
  @as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("AuthorizerId") authorizerId: option<id>,
  @as("AuthorizerCredentialsArn") authorizerCredentialsArn: option<arn>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetAuthorizerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApiMappings = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>,
  @as("DomainName") domainName: __string
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfApiMapping>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetApiMappingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApi = {
  type t;
  type request = {
@as("ApiId") apiId: __string
}
  type response = {
@as("Warnings") warnings: option<__listOf__string>,
  @as("Version") version: option<stringWithLengthBetween1And64>,
  @as("Tags") tags: option<tags>,
  @as("RouteSelectionExpression") routeSelectionExpression: option<selectionExpression>,
  @as("ProtocolType") protocolType: option<protocolType>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("ImportInfo") importInfo: option<__listOf__string>,
  @as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: option<__boolean>,
  @as("DisableSchemaValidation") disableSchemaValidation: option<__boolean>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("CorsConfiguration") corsConfiguration: option<cors>,
  @as("ApiKeySelectionExpression") apiKeySelectionExpression: option<selectionExpression>,
  @as("ApiId") apiId: option<id>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>,
  @as("ApiEndpoint") apiEndpoint: option<__string>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetApiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStage = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("StageVariables") stageVariables: option<stageVariablesMap>,
  @as("StageName") stageName: stringWithLengthBetween1And128,
  @as("RouteSettings") routeSettings: option<routeSettingsMap>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("DeploymentId") deploymentId: option<id>,
  @as("DefaultRouteSettings") defaultRouteSettings: option<routeSettings>,
  @as("ClientCertificateId") clientCertificateId: option<id>,
  @as("AutoDeploy") autoDeploy: option<__boolean>,
  @as("ApiId") apiId: __string,
  @as("AccessLogSettings") accessLogSettings: option<accessLogSettings>
}
  type response = {
@as("Tags") tags: option<tags>,
  @as("StageVariables") stageVariables: option<stageVariablesMap>,
  @as("StageName") stageName: option<stringWithLengthBetween1And128>,
  @as("RouteSettings") routeSettings: option<routeSettingsMap>,
  @as("LastUpdatedDate") lastUpdatedDate: option<__timestampIso8601>,
  @as("LastDeploymentStatusMessage") lastDeploymentStatusMessage: option<__string>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("DeploymentId") deploymentId: option<id>,
  @as("DefaultRouteSettings") defaultRouteSettings: option<routeSettings>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("ClientCertificateId") clientCertificateId: option<id>,
  @as("AutoDeploy") autoDeploy: option<__boolean>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>,
  @as("AccessLogSettings") accessLogSettings: option<accessLogSettings>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateStageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRouteResponse = {
  type t;
  type request = {
@as("RouteResponseKey") routeResponseKey: selectionKey,
  @as("RouteId") routeId: __string,
  @as("ResponseParameters") responseParameters: option<routeParameters>,
  @as("ResponseModels") responseModels: option<routeModels>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("RouteResponseKey") routeResponseKey: option<selectionKey>,
  @as("RouteResponseId") routeResponseId: option<id>,
  @as("ResponseParameters") responseParameters: option<routeParameters>,
  @as("ResponseModels") responseModels: option<routeModels>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateRouteResponseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRoute = {
  type t;
  type request = {
@as("Target") target: option<stringWithLengthBetween1And128>,
  @as("RouteResponseSelectionExpression") routeResponseSelectionExpression: option<selectionExpression>,
  @as("RouteKey") routeKey: selectionKey,
  @as("RequestParameters") requestParameters: option<routeParameters>,
  @as("RequestModels") requestModels: option<routeModels>,
  @as("OperationName") operationName: option<stringWithLengthBetween1And64>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>,
  @as("AuthorizerId") authorizerId: option<id>,
  @as("AuthorizationType") authorizationType: option<authorizationType>,
  @as("AuthorizationScopes") authorizationScopes: option<authorizationScopes>,
  @as("ApiKeyRequired") apiKeyRequired: option<__boolean>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Target") target: option<stringWithLengthBetween1And128>,
  @as("RouteResponseSelectionExpression") routeResponseSelectionExpression: option<selectionExpression>,
  @as("RouteKey") routeKey: option<selectionKey>,
  @as("RouteId") routeId: option<id>,
  @as("RequestParameters") requestParameters: option<routeParameters>,
  @as("RequestModels") requestModels: option<routeModels>,
  @as("OperationName") operationName: option<stringWithLengthBetween1And64>,
  @as("ModelSelectionExpression") modelSelectionExpression: option<selectionExpression>,
  @as("AuthorizerId") authorizerId: option<id>,
  @as("AuthorizationType") authorizationType: option<authorizationType>,
  @as("AuthorizationScopes") authorizationScopes: option<authorizationScopes>,
  @as("ApiKeyRequired") apiKeyRequired: option<__boolean>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateRouteCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateIntegration = {
  type t;
  type request = {
@as("TlsConfig") tlsConfig: option<tlsConfigInput>,
  @as("TimeoutInMillis") timeoutInMillis: option<integerWithLengthBetween50And30000>,
  @as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseParameters") responseParameters: option<responseParameters>,
  @as("RequestTemplates") requestTemplates: option<templateMap>,
  @as("RequestParameters") requestParameters: option<integrationParameters>,
  @as("PayloadFormatVersion") payloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("PassthroughBehavior") passthroughBehavior: option<passthroughBehavior>,
  @as("IntegrationUri") integrationUri: option<uriWithLengthBetween1And2048>,
  @as("IntegrationType") integrationType: integrationType,
  @as("IntegrationSubtype") integrationSubtype: option<stringWithLengthBetween1And128>,
  @as("IntegrationMethod") integrationMethod: option<stringWithLengthBetween1And64>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CredentialsArn") credentialsArn: option<arn>,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>,
  @as("ConnectionType") connectionType: option<connectionType>,
  @as("ConnectionId") connectionId: option<stringWithLengthBetween1And1024>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("TlsConfig") tlsConfig: option<tlsConfig>,
  @as("TimeoutInMillis") timeoutInMillis: option<integerWithLengthBetween50And30000>,
  @as("TemplateSelectionExpression") templateSelectionExpression: option<selectionExpression>,
  @as("ResponseParameters") responseParameters: option<responseParameters>,
  @as("RequestTemplates") requestTemplates: option<templateMap>,
  @as("RequestParameters") requestParameters: option<integrationParameters>,
  @as("PayloadFormatVersion") payloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("PassthroughBehavior") passthroughBehavior: option<passthroughBehavior>,
  @as("IntegrationUri") integrationUri: option<uriWithLengthBetween1And2048>,
  @as("IntegrationType") integrationType: option<integrationType>,
  @as("IntegrationSubtype") integrationSubtype: option<stringWithLengthBetween1And128>,
  @as("IntegrationResponseSelectionExpression") integrationResponseSelectionExpression: option<selectionExpression>,
  @as("IntegrationMethod") integrationMethod: option<stringWithLengthBetween1And64>,
  @as("IntegrationId") integrationId: option<id>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CredentialsArn") credentialsArn: option<arn>,
  @as("ContentHandlingStrategy") contentHandlingStrategy: option<contentHandlingStrategy>,
  @as("ConnectionType") connectionType: option<connectionType>,
  @as("ConnectionId") connectionId: option<stringWithLengthBetween1And1024>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateIntegrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDomainName = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("MutualTlsAuthentication") mutualTlsAuthentication: option<mutualTlsAuthenticationInput>,
  @as("DomainNameConfigurations") domainNameConfigurations: option<domainNameConfigurations>,
  @as("DomainName") domainName: stringWithLengthBetween1And512
}
  type response = {
@as("Tags") tags: option<tags>,
  @as("MutualTlsAuthentication") mutualTlsAuthentication: option<mutualTlsAuthentication>,
  @as("DomainNameConfigurations") domainNameConfigurations: option<domainNameConfigurations>,
  @as("DomainName") domainName: option<stringWithLengthBetween1And512>,
  @as("ApiMappingSelectionExpression") apiMappingSelectionExpression: option<selectionExpression>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateDomainNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAuthorizer = {
  type t;
  type request = {
@as("Name") name: stringWithLengthBetween1And128,
  @as("JwtConfiguration") jwtConfiguration: option<jwtconfiguration>,
  @as("IdentityValidationExpression") identityValidationExpression: option<stringWithLengthBetween0And1024>,
  @as("IdentitySource") identitySource: identitySourceList,
  @as("EnableSimpleResponses") enableSimpleResponses: option<__boolean>,
  @as("AuthorizerUri") authorizerUri: option<uriWithLengthBetween1And2048>,
  @as("AuthorizerType") authorizerType: authorizerType,
  @as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
  @as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("AuthorizerCredentialsArn") authorizerCredentialsArn: option<arn>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("Name") name: option<stringWithLengthBetween1And128>,
  @as("JwtConfiguration") jwtConfiguration: option<jwtconfiguration>,
  @as("IdentityValidationExpression") identityValidationExpression: option<stringWithLengthBetween0And1024>,
  @as("IdentitySource") identitySource: option<identitySourceList>,
  @as("EnableSimpleResponses") enableSimpleResponses: option<__boolean>,
  @as("AuthorizerUri") authorizerUri: option<uriWithLengthBetween1And2048>,
  @as("AuthorizerType") authorizerType: option<authorizerType>,
  @as("AuthorizerResultTtlInSeconds") authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
  @as("AuthorizerPayloadFormatVersion") authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
  @as("AuthorizerId") authorizerId: option<id>,
  @as("AuthorizerCredentialsArn") authorizerCredentialsArn: option<arn>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateAuthorizerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApi = {
  type t;
  type request = {
@as("Version") version: option<stringWithLengthBetween1And64>,
  @as("Target") target: option<uriWithLengthBetween1And2048>,
  @as("Tags") tags: option<tags>,
  @as("RouteSelectionExpression") routeSelectionExpression: option<selectionExpression>,
  @as("RouteKey") routeKey: option<selectionKey>,
  @as("ProtocolType") protocolType: protocolType,
  @as("Name") name: stringWithLengthBetween1And128,
  @as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: option<__boolean>,
  @as("DisableSchemaValidation") disableSchemaValidation: option<__boolean>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CredentialsArn") credentialsArn: option<arn>,
  @as("CorsConfiguration") corsConfiguration: option<cors>,
  @as("ApiKeySelectionExpression") apiKeySelectionExpression: option<selectionExpression>
}
  type response = {
@as("Warnings") warnings: option<__listOf__string>,
  @as("Version") version: option<stringWithLengthBetween1And64>,
  @as("Tags") tags: option<tags>,
  @as("RouteSelectionExpression") routeSelectionExpression: option<selectionExpression>,
  @as("ProtocolType") protocolType: option<protocolType>,
  @as("Name") name: option<stringWithLengthBetween1And128>,
  @as("ImportInfo") importInfo: option<__listOf__string>,
  @as("DisableExecuteApiEndpoint") disableExecuteApiEndpoint: option<__boolean>,
  @as("DisableSchemaValidation") disableSchemaValidation: option<__boolean>,
  @as("Description") description: option<stringWithLengthBetween0And1024>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
  @as("CorsConfiguration") corsConfiguration: option<cors>,
  @as("ApiKeySelectionExpression") apiKeySelectionExpression: option<selectionExpression>,
  @as("ApiId") apiId: option<id>,
  @as("ApiGatewayManaged") apiGatewayManaged: option<__boolean>,
  @as("ApiEndpoint") apiEndpoint: option<__string>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "CreateApiCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetVpcLinks = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfVpcLink>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetVpcLinksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIntegrationResponses = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>,
  @as("IntegrationId") integrationId: __string,
  @as("ApiId") apiId: __string
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfIntegrationResponse>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetIntegrationResponsesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStages = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfStage>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetStagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRoutes = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfRoute>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetRoutesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRouteResponses = {
  type t;
  type request = {
@as("RouteId") routeId: __string,
  @as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfRouteResponse>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetRouteResponsesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIntegrations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfIntegration>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetIntegrationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDomainNames = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfDomainName>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetDomainNamesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAuthorizers = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>,
  @as("ApiId") apiId: __string
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfAuthorizer>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetAuthorizersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApis = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
  @as("MaxResults") maxResults: option<__string>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Items") items: option<__listOfApi>
}
  @module("@aws-sdk/client-apigateway") @new external new_: (request) => t = "GetApisCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
