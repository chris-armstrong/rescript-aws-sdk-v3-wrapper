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
external createClient: unit => awsServiceClient = "ApiGatewayV2Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __timestampIso8601 = Js.Date.t
type __string = string
type __integer = int
type __double = float
type __boolean = bool
@ocaml.doc("<p>The version of the VPC link.</p>") type vpcLinkVersion = [@as("V2") #V2]
@ocaml.doc("<p>The status of the VPC link.</p>")
type vpcLinkStatus = [
  | @as("INACTIVE") #INACTIVE
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
@ocaml.doc("<p>A string representation of a URI with a length between [1-2048].</p>")
type uriWithLengthBetween1And2048 = string
@ocaml.doc("<p>A string with a length between [1-64].</p>")
type stringWithLengthBetween1And64 = string
@ocaml.doc("<p>A string with a length between [1-512].</p>")
type stringWithLengthBetween1And512 = string
@ocaml.doc("<p>A string with a length between [1-256].</p>")
type stringWithLengthBetween1And256 = string
@ocaml.doc("<p>A string with a length between [0-1600].</p>")
type stringWithLengthBetween1And1600 = string
@ocaml.doc("<p>A string with a length between [1-128].</p>")
type stringWithLengthBetween1And128 = string
@ocaml.doc("<p>A string with a length between [1-1024].</p>")
type stringWithLengthBetween1And1024 = string
@ocaml.doc("<p>A string with a length between [0-32768].</p>")
type stringWithLengthBetween0And32K = string
@ocaml.doc("<p>A string with a length between [0-2048].</p>")
type stringWithLengthBetween0And2048 = string
@ocaml.doc("<p>A string with a length between [0-1024].</p>")
type stringWithLengthBetween0And1024 = string
@ocaml.doc(
  "<p>After evaluating a selection expression, the result is compared against one or more selection keys to find a matching key. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">Selection Expressions</a> for a list of expressions and each expression's associated selection key type.</p>"
)
type selectionKey = string
@ocaml.doc(
  "<p>An expression used to extract information at runtime. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">Selection Expressions</a> for more information.</p>"
)
type selectionExpression = string
@ocaml.doc(
  "<p>The Transport Layer Security (TLS) version of the security policy for this domain name. The valid values are TLS_1_0 and TLS_1_2.</p>"
)
type securityPolicy = [@as("TLS_1_2") #TLS_1_2 | @as("TLS_1_0") #TLS_1_0]
@ocaml.doc("Represents a protocol type.")
type protocolType = [@as("HTTP") #HTTP | @as("WEBSOCKET") #WEBSOCKET]
@ocaml.doc(
  "<p>Represents passthrough behavior for an integration response. Supported only for WebSocket APIs.</p>"
)
type passthroughBehavior = [
  | @as("WHEN_NO_TEMPLATES") #WHEN_NO_TEMPLATES
  | @as("NEVER") #NEVER
  | @as("WHEN_NO_MATCH") #WHEN_NO_MATCH
]
@ocaml.doc(
  "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
)
type nextToken = string
@ocaml.doc("<p>The logging level.</p>")
type loggingLevel = [@as("OFF") #OFF | @as("INFO") #INFO | @as("ERROR") #ERROR]
@ocaml.doc("<p>Represents an API method integration type.</p>")
type integrationType = [
  | @as("AWS_PROXY") #AWS_PROXY
  | @as("HTTP_PROXY") #HTTP_PROXY
  | @as("MOCK") #MOCK
  | @as("HTTP") #HTTP
  | @as("AWS") #AWS
]
@ocaml.doc("<p>An integer with a value between -1 and 86400. Supported only for HTTP APIs.</p>")
type integerWithLengthBetweenMinus1And86400 = int
@ocaml.doc("<p>An integer with a value between [50-30000].</p>")
type integerWithLengthBetween50And30000 = int
@ocaml.doc("<p>An integer with a value between [0-3600].</p>")
type integerWithLengthBetween0And3600 = int
@ocaml.doc("<p>The identifier.</p>") type id = string
@ocaml.doc(
  "<p>Represents an exported definition of an API in a particular output format, for example, YAML. The API is serialized to the requested specification, for example, OpenAPI 3.0.</p>"
)
type exportedApi = NodeJs.Buffer.t
@ocaml.doc("<p>Represents an endpoint type.</p>")
type endpointType = [@as("EDGE") #EDGE | @as("REGIONAL") #REGIONAL]
@ocaml.doc(
  "<p>The status of the domain name migration. The valid values are AVAILABLE and UPDATING. If the status is UPDATING, the domain cannot be modified further until the existing operation is complete. If it is AVAILABLE, the domain can be updated.</p>"
)
type domainNameStatus = [@as("UPDATING") #UPDATING | @as("AVAILABLE") #AVAILABLE]
@ocaml.doc("<p>Represents a deployment status.</p>")
type deploymentStatus = [
  | @as("DEPLOYED") #DEPLOYED
  | @as("FAILED") #FAILED
  | @as("PENDING") #PENDING
]
@ocaml.doc(
  "<p>Specifies how to handle response payload content type conversions. Supported only for WebSocket APIs.</p>"
)
type contentHandlingStrategy = [
  | @as("CONVERT_TO_TEXT") #CONVERT_TO_TEXT
  | @as("CONVERT_TO_BINARY") #CONVERT_TO_BINARY
]
@ocaml.doc("<p>Represents a connection type.</p>")
type connectionType = [@as("VPC_LINK") #VPC_LINK | @as("INTERNET") #INTERNET]
@ocaml.doc(
  "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
)
type authorizerType = [@as("JWT") #JWT | @as("REQUEST") #REQUEST]
@ocaml.doc(
  "<p>The authorization type. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer. For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
)
type authorizationType = [
  | @as("JWT") #JWT
  | @as("CUSTOM") #CUSTOM
  | @as("AWS_IAM") #AWS_IAM
  | @as("NONE") #NONE
]
@ocaml.doc("<p>Represents an Amazon Resource Name (ARN).</p>") type arn = string
type __listOf__string = array<__string>
@ocaml.doc(
  "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
)
type tlsConfigInput = {
  @ocaml.doc(
    "<p>If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate. The server name is also included in the TLS handshake to support Server Name Indication (SNI) or virtual hosting.</p>"
  )
  @as("ServerNameToVerify")
  serverNameToVerify: option<stringWithLengthBetween1And512>,
}
@ocaml.doc(
  "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
)
type tlsConfig = {
  @ocaml.doc(
    "<p>If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate. The server name is also included in the TLS handshake to support Server Name Indication (SNI) or virtual hosting.</p>"
  )
  @as("ServerNameToVerify")
  serverNameToVerify: option<stringWithLengthBetween1And512>,
}
@ocaml.doc(
  "<p>A mapping of identifier keys to templates. The value is an actual template script. The key is typically a SelectionKey which is chosen based on evaluating a selection expression.</p>"
)
type templateMap = Js.Dict.t<stringWithLengthBetween0And32K>
@ocaml.doc("<p>Represents a collection of tags associated with the resource.</p>")
type tags = Js.Dict.t<stringWithLengthBetween1And1600>
@ocaml.doc("<p>A list of subnet IDs to include in the VPC link.</p>")
type subnetIdList = array<__string>
@ocaml.doc("<p>The stage variable map.</p>")
type stageVariablesMap = Js.Dict.t<stringWithLengthBetween0And2048>
@ocaml.doc("<p>A list of security group IDs for the VPC link.</p>")
type securityGroupIdList = array<__string>
@ocaml.doc("<p>Represents a collection of route settings.</p>")
type routeSettings = {
  @ocaml.doc("<p>Specifies the throttling rate limit.</p>") @as("ThrottlingRateLimit")
  throttlingRateLimit: option<__double>,
  @ocaml.doc("<p>Specifies the throttling burst limit.</p>") @as("ThrottlingBurstLimit")
  throttlingBurstLimit: option<__integer>,
  @ocaml.doc(
    "<p>Specifies the logging level for this route: INFO, ERROR, or OFF. This property affects the log entries pushed to Amazon CloudWatch Logs. Supported only for WebSocket APIs.</p>"
  )
  @as("LoggingLevel")
  loggingLevel: option<loggingLevel>,
  @ocaml.doc("<p>Specifies whether detailed metrics are enabled.</p>") @as("DetailedMetricsEnabled")
  detailedMetricsEnabled: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies whether (true) or not (false) data trace logging is enabled for this route. This property affects the log entries pushed to Amazon CloudWatch Logs. Supported only for WebSocket APIs.</p>"
  )
  @as("DataTraceEnabled")
  dataTraceEnabled: option<__boolean>,
}
@ocaml.doc("<p>The route models.</p>") type routeModels = Js.Dict.t<stringWithLengthBetween1And128>
@ocaml.doc(
  "<p>Validation constraints imposed on parameters of a request (path, query string, headers).</p>"
)
type parameterConstraints = {
  @ocaml.doc("<p>Whether or not the parameter is required.</p>") @as("Required")
  required: option<__boolean>,
}
type mutualTlsAuthenticationInput = {
  @ocaml.doc(
    "<p>The version of the S3 object that contains your truststore. To specify a version, you must have versioning enabled for the S3 bucket.</p>"
  )
  @as("TruststoreVersion")
  truststoreVersion: option<stringWithLengthBetween1And64>,
  @ocaml.doc(
    "<p>An Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, s3://<replaceable>bucket-name</replaceable>/<replaceable>key-name</replaceable>. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version. To update the truststore, you must have permissions to access the S3 object.</p>"
  )
  @as("TruststoreUri")
  truststoreUri: option<uriWithLengthBetween1And2048>,
}
@ocaml.doc(
  "<p>Represents a data model for an API. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html\">Create Models and Mapping Templates for Request and Response Mappings</a>.</p>"
)
type model = {
  @ocaml.doc(
    "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
  )
  @as("Schema")
  schema: option<stringWithLengthBetween0And32K>,
  @ocaml.doc("<p>The name of the model. Must be alphanumeric.</p>") @as("Name")
  name: stringWithLengthBetween1And128,
  @ocaml.doc("<p>The model identifier.</p>") @as("ModelId") modelId: option<id>,
  @ocaml.doc("<p>The description of the model.</p>") @as("Description")
  description: option<stringWithLengthBetween0And1024>,
  @ocaml.doc("<p>The content-type for the model, for example, \"application/json\".</p>")
  @as("ContentType")
  contentType: option<stringWithLengthBetween1And256>,
}
@ocaml.doc("<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
          , where 
            <replaceable>{location}</replaceable>
           is querystring, path, or header; and 
            <replaceable>{name}</replaceable>
           must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to the backend. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt; where action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>")
type integrationParameters = Js.Dict.t<stringWithLengthBetween1And512>
@ocaml.doc(
  "<p>The identity source for which authorization is requested. For the REQUEST authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an Auth header, a Name query string parameter are defined as identity sources, this value is $method.request.header.Auth, $method.request.querystring.Name. These parameters will be used to derive the authorization caching key and to perform runtime validation of the REQUEST authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.</p>"
)
type identitySourceList = array<__string>
@ocaml.doc("<p>The domain name configuration.</p>")
type domainNameConfiguration = {
  @ocaml.doc(
    "<p>The Transport Layer Security (TLS) version of the security policy for this domain name. The valid values are TLS_1_0 and TLS_1_2.</p>"
  )
  @as("SecurityPolicy")
  securityPolicy: option<securityPolicy>,
  @ocaml.doc("<p>The Amazon Route 53 Hosted Zone ID of the endpoint.</p>") @as("HostedZoneId")
  hostedZoneId: option<__string>,
  @ocaml.doc("<p>The endpoint type.</p>") @as("EndpointType") endpointType: option<endpointType>,
  @ocaml.doc(
    "<p>An optional text message containing detailed information about status of the domain name migration.</p>"
  )
  @as("DomainNameStatusMessage")
  domainNameStatusMessage: option<__string>,
  @ocaml.doc(
    "<p>The status of the domain name migration. The valid values are AVAILABLE and UPDATING. If the status is UPDATING, the domain cannot be modified further until the existing operation is complete. If it is AVAILABLE, the domain can be updated.</p>"
  )
  @as("DomainNameStatus")
  domainNameStatus: option<domainNameStatus>,
  @ocaml.doc(
    "<p>The timestamp when the certificate that was used by edge-optimized endpoint for this domain name was uploaded.</p>"
  )
  @as("CertificateUploadDate")
  certificateUploadDate: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>The user-friendly name of the certificate that will be used by the edge-optimized endpoint for this domain name.</p>"
  )
  @as("CertificateName")
  certificateName: option<stringWithLengthBetween1And128>,
  @ocaml.doc(
    "<p>An AWS-managed certificate that will be used by the edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.</p>"
  )
  @as("CertificateArn")
  certificateArn: option<arn>,
  @ocaml.doc("<p>A domain name for the API.</p>") @as("ApiGatewayDomainName")
  apiGatewayDomainName: option<__string>,
}
@ocaml.doc(
  "<p>An immutable representation of an API that can be called by users. A Deployment must be associated with a Stage for it to be callable over the internet.</p>"
)
type deployment = {
  @ocaml.doc("<p>The description for the deployment.</p>") @as("Description")
  description: option<stringWithLengthBetween0And1024>,
  @ocaml.doc("<p>May contain additional feedback on the status of an API deployment.</p>")
  @as("DeploymentStatusMessage")
  deploymentStatusMessage: option<__string>,
  @ocaml.doc("<p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>")
  @as("DeploymentStatus")
  deploymentStatus: option<deploymentStatus>,
  @ocaml.doc("<p>The identifier for the deployment.</p>") @as("DeploymentId")
  deploymentId: option<id>,
  @ocaml.doc("<p>The date and time when the Deployment resource was created.</p>")
  @as("CreatedDate")
  createdDate: option<__timestampIso8601>,
  @ocaml.doc("<p>Specifies whether a deployment was automatically released.</p>")
  @as("AutoDeployed")
  autoDeployed: option<__boolean>,
}
@ocaml.doc("<p>Represents a collection of origins. Supported only for HTTP APIs.</p>")
type corsOriginList = array<__string>
@ocaml.doc("<p>Represents a collection of methods. Supported only for HTTP APIs.</p>")
type corsMethodList = array<stringWithLengthBetween1And64>
@ocaml.doc("<p>Represents a collection of allowed headers. Supported only for HTTP APIs.</p>")
type corsHeaderList = array<__string>
@ocaml.doc(
  "<p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"
)
type authorizationScopes = array<stringWithLengthBetween1And64>
@ocaml.doc("<p>Represents an API mapping.</p>")
type apiMapping = {
  @ocaml.doc("<p>The API stage.</p>") @as("Stage") stage: stringWithLengthBetween1And128,
  @ocaml.doc("<p>The API mapping key.</p>") @as("ApiMappingKey")
  apiMappingKey: option<selectionKey>,
  @ocaml.doc("<p>The API mapping identifier.</p>") @as("ApiMappingId") apiMappingId: option<id>,
  @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: id,
}
@ocaml.doc("<p>Settings for logging access in a stage.</p>")
type accessLogSettings = {
  @ocaml.doc(
    "<p>A single line format of the access logs of data, as specified by selected $context variables. The format must include at least $context.requestId.</p>"
  )
  @as("Format")
  format: option<stringWithLengthBetween1And1024>,
  @ocaml.doc("<p>The ARN of the CloudWatch Logs log group to receive access logs.</p>")
  @as("DestinationArn")
  destinationArn: option<arn>,
}
type __listOfModel = array<model>
type __listOfDeployment = array<deployment>
type __listOfApiMapping = array<apiMapping>
@ocaml.doc("<p>Represents a VPC link.</p>")
type vpcLink = {
  @ocaml.doc("<p>The version of the VPC link.</p>") @as("VpcLinkVersion")
  vpcLinkVersion: option<vpcLinkVersion>,
  @ocaml.doc("<p>A message summarizing the cause of the status of the VPC link.</p>")
  @as("VpcLinkStatusMessage")
  vpcLinkStatusMessage: option<stringWithLengthBetween0And1024>,
  @ocaml.doc("<p>The status of the VPC link.</p>") @as("VpcLinkStatus")
  vpcLinkStatus: option<vpcLinkStatus>,
  @ocaml.doc("<p>The ID of the VPC link.</p>") @as("VpcLinkId") vpcLinkId: id,
  @ocaml.doc("<p>Tags for the VPC link.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>A list of subnet IDs to include in the VPC link.</p>") @as("SubnetIds")
  subnetIds: subnetIdList,
  @ocaml.doc("<p>A list of security group IDs for the VPC link.</p>") @as("SecurityGroupIds")
  securityGroupIds: securityGroupIdList,
  @ocaml.doc("<p>The name of the VPC link.</p>") @as("Name") name: stringWithLengthBetween1And128,
  @ocaml.doc("<p>The timestamp when the VPC link was created.</p>") @as("CreatedDate")
  createdDate: option<__timestampIso8601>,
}
@ocaml.doc("<p>The route settings map.</p>") type routeSettingsMap = Js.Dict.t<routeSettings>
@ocaml.doc("<p>The route parameters.</p>") type routeParameters = Js.Dict.t<parameterConstraints>
@ocaml.doc(
  "<p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients.</p>"
)
type responseParameters = Js.Dict.t<integrationParameters>
type mutualTlsAuthentication = {
  @ocaml.doc(
    "<p>A list of warnings that API Gateway returns while processing your truststore. Invalid certificates produce warnings. Mutual TLS is still enabled, but some clients might not be able to access your API. To resolve warnings, upload a new truststore to S3, and then update you domain name to use the new version.</p>"
  )
  @as("TruststoreWarnings")
  truststoreWarnings: option<__listOf__string>,
  @ocaml.doc(
    "<p>The version of the S3 object that contains your truststore. To specify a version, you must have versioning enabled for the S3 bucket.</p>"
  )
  @as("TruststoreVersion")
  truststoreVersion: option<stringWithLengthBetween1And64>,
  @ocaml.doc(
    "<p>An Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, s3://<replaceable>bucket-name</replaceable>/<replaceable>key-name</replaceable>. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version. To update the truststore, you must have permissions to access the S3 object.</p>"
  )
  @as("TruststoreUri")
  truststoreUri: option<uriWithLengthBetween1And2048>,
}
@ocaml.doc(
  "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
)
type jwtconfiguration = {
  @ocaml.doc("<p>The base domain of the identity provider that issues JSON Web Tokens. For example, an Amazon Cognito user pool has the following format: https://cognito-idp.<replaceable>{region}</replaceable>.amazonaws.com/<replaceable>{userPoolId}</replaceable>
               . Required for the JWT authorizer type. Supported only for HTTP APIs.</p>")
  @as("Issuer")
  issuer: option<uriWithLengthBetween1And2048>,
  @ocaml.doc(
    "<p>A list of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list. See <a href=\"https://tools.ietf.org/html/rfc7519#section-4.1.3\">RFC 7519</a>. Supported only for HTTP APIs.</p>"
  )
  @as("Audience")
  audience: option<__listOf__string>,
}
@ocaml.doc("<p>Represents an integration response.</p>")
type integrationResponse = {
  @ocaml.doc("<p>The template selection expressions for the integration response.</p>")
  @as("TemplateSelectionExpression")
  templateSelectionExpression: option<selectionExpression>,
  @ocaml.doc(
    "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
  )
  @as("ResponseTemplates")
  responseTemplates: option<templateMap>,
  @ocaml.doc(
    "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>"
  )
  @as("ResponseParameters")
  responseParameters: option<integrationParameters>,
  @ocaml.doc("<p>The integration response key.</p>") @as("IntegrationResponseKey")
  integrationResponseKey: selectionKey,
  @ocaml.doc("<p>The integration response ID.</p>") @as("IntegrationResponseId")
  integrationResponseId: option<id>,
  @ocaml.doc(
    "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
  )
  @as("ContentHandlingStrategy")
  contentHandlingStrategy: option<contentHandlingStrategy>,
}
@ocaml.doc("<p>The domain name configurations.</p>")
type domainNameConfigurations = array<domainNameConfiguration>
@ocaml.doc(
  "<p>Represents a CORS configuration. Supported only for HTTP APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html\">Configuring CORS</a> for more information.</p>"
)
type cors = {
  @ocaml.doc(
    "<p>The number of seconds that the browser should cache preflight request results. Supported only for HTTP APIs.</p>"
  )
  @as("MaxAge")
  maxAge: option<integerWithLengthBetweenMinus1And86400>,
  @ocaml.doc("<p>Represents a collection of exposed headers. Supported only for HTTP APIs.</p>")
  @as("ExposeHeaders")
  exposeHeaders: option<corsHeaderList>,
  @ocaml.doc("<p>Represents a collection of allowed origins. Supported only for HTTP APIs.</p>")
  @as("AllowOrigins")
  allowOrigins: option<corsOriginList>,
  @ocaml.doc(
    "<p>Represents a collection of allowed HTTP methods. Supported only for HTTP APIs.</p>"
  )
  @as("AllowMethods")
  allowMethods: option<corsMethodList>,
  @ocaml.doc("<p>Represents a collection of allowed headers. Supported only for HTTP APIs.</p>")
  @as("AllowHeaders")
  allowHeaders: option<corsHeaderList>,
  @ocaml.doc(
    "<p>Specifies whether credentials are included in the CORS request. Supported only for HTTP APIs.</p>"
  )
  @as("AllowCredentials")
  allowCredentials: option<__boolean>,
}
type __listOfVpcLink = array<vpcLink>
type __listOfIntegrationResponse = array<integrationResponse>
@ocaml.doc("<p>Represents an API stage.</p>")
type stage = {
  @ocaml.doc("<p>The collection of tags. Each tag element is associated with a given resource.</p>")
  @as("Tags")
  tags: option<tags>,
  @ocaml.doc(
    "<p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
  )
  @as("StageVariables")
  stageVariables: option<stageVariablesMap>,
  @ocaml.doc("<p>The name of the stage.</p>") @as("StageName")
  stageName: stringWithLengthBetween1And128,
  @ocaml.doc("<p>Route settings for the stage, by routeKey.</p>") @as("RouteSettings")
  routeSettings: option<routeSettingsMap>,
  @ocaml.doc("<p>The timestamp when the stage was last updated.</p>") @as("LastUpdatedDate")
  lastUpdatedDate: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>"
  )
  @as("LastDeploymentStatusMessage")
  lastDeploymentStatusMessage: option<__string>,
  @ocaml.doc("<p>The description of the stage.</p>") @as("Description")
  description: option<stringWithLengthBetween0And1024>,
  @ocaml.doc(
    "<p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>"
  )
  @as("DeploymentId")
  deploymentId: option<id>,
  @ocaml.doc("<p>Default route settings for the stage.</p>") @as("DefaultRouteSettings")
  defaultRouteSettings: option<routeSettings>,
  @ocaml.doc("<p>The timestamp when the stage was created.</p>") @as("CreatedDate")
  createdDate: option<__timestampIso8601>,
  @ocaml.doc(
    "<p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>"
  )
  @as("ClientCertificateId")
  clientCertificateId: option<id>,
  @ocaml.doc(
    "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
  )
  @as("AutoDeploy")
  autoDeploy: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>"
  )
  @as("ApiGatewayManaged")
  apiGatewayManaged: option<__boolean>,
  @ocaml.doc("<p>Settings for logging access in this stage.</p>") @as("AccessLogSettings")
  accessLogSettings: option<accessLogSettings>,
}
@ocaml.doc("<p>Represents a route response.</p>")
type routeResponse = {
  @ocaml.doc("<p>Represents the route response key of a route response.</p>")
  @as("RouteResponseKey")
  routeResponseKey: selectionKey,
  @ocaml.doc("<p>Represents the identifier of a route response.</p>") @as("RouteResponseId")
  routeResponseId: option<id>,
  @ocaml.doc("<p>Represents the response parameters of a route response.</p>")
  @as("ResponseParameters")
  responseParameters: option<routeParameters>,
  @ocaml.doc("<p>Represents the response models of a route response.</p>") @as("ResponseModels")
  responseModels: option<routeModels>,
  @ocaml.doc(
    "<p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>"
  )
  @as("ModelSelectionExpression")
  modelSelectionExpression: option<selectionExpression>,
}
@ocaml.doc("<p>Represents a route.</p>")
type route = {
  @ocaml.doc("<p>The target for the route.</p>") @as("Target")
  target: option<stringWithLengthBetween1And128>,
  @ocaml.doc(
    "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
  )
  @as("RouteResponseSelectionExpression")
  routeResponseSelectionExpression: option<selectionExpression>,
  @ocaml.doc("<p>The route key for the route.</p>") @as("RouteKey") routeKey: selectionKey,
  @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: option<id>,
  @ocaml.doc("<p>The request parameters for the route. Supported only for WebSocket APIs.</p>")
  @as("RequestParameters")
  requestParameters: option<routeParameters>,
  @ocaml.doc("<p>The request models for the route. Supported only for WebSocket APIs.</p>")
  @as("RequestModels")
  requestModels: option<routeModels>,
  @ocaml.doc("<p>The operation name for the route.</p>") @as("OperationName")
  operationName: option<stringWithLengthBetween1And64>,
  @ocaml.doc(
    "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
  )
  @as("ModelSelectionExpression")
  modelSelectionExpression: option<selectionExpression>,
  @ocaml.doc(
    "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
  )
  @as("AuthorizerId")
  authorizerId: option<id>,
  @ocaml.doc(
    "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
  )
  @as("AuthorizationType")
  authorizationType: option<authorizationType>,
  @ocaml.doc(
    "<p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"
  )
  @as("AuthorizationScopes")
  authorizationScopes: option<authorizationScopes>,
  @ocaml.doc(
    "<p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>"
  )
  @as("ApiKeyRequired")
  apiKeyRequired: option<__boolean>,
  @ocaml.doc(
    "<p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>"
  )
  @as("ApiGatewayManaged")
  apiGatewayManaged: option<__boolean>,
}
@ocaml.doc("<p>Represents an integration.</p>")
type integration = {
  @ocaml.doc(
    "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
  )
  @as("TlsConfig")
  tlsConfig: option<tlsConfig>,
  @ocaml.doc(
    "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
  )
  @as("TimeoutInMillis")
  timeoutInMillis: option<integerWithLengthBetween50And30000>,
  @ocaml.doc(
    "<p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>"
  )
  @as("TemplateSelectionExpression")
  templateSelectionExpression: option<selectionExpression>,
  @ocaml.doc(
    "<p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>"
  )
  @as("ResponseParameters")
  responseParameters: option<responseParameters>,
  @ocaml.doc(
    "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
  )
  @as("RequestTemplates")
  requestTemplates: option<templateMap>,
  @ocaml.doc("<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
          , where 
            <replaceable>{location}</replaceable>
           is querystring, path, or header; and 
            <replaceable>{name}</replaceable>
           must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API itegrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to backend integrations. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt;. The action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>")
  @as("RequestParameters")
  requestParameters: option<integrationParameters>,
  @ocaml.doc(
    "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
  )
  @as("PayloadFormatVersion")
  payloadFormatVersion: option<stringWithLengthBetween1And64>,
  @ocaml.doc(
    "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
  )
  @as("PassthroughBehavior")
  passthroughBehavior: option<passthroughBehavior>,
  @ocaml.doc(
    "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
  )
  @as("IntegrationUri")
  integrationUri: option<uriWithLengthBetween1And2048>,
  @ocaml.doc(
    "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
  )
  @as("IntegrationType")
  integrationType: option<integrationType>,
  @ocaml.doc(
    "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
  )
  @as("IntegrationSubtype")
  integrationSubtype: option<stringWithLengthBetween1And128>,
  @ocaml.doc(
    "<p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions\">Integration Response Selection Expressions</a>.</p>"
  )
  @as("IntegrationResponseSelectionExpression")
  integrationResponseSelectionExpression: option<selectionExpression>,
  @ocaml.doc("<p>Specifies the integration's HTTP method type.</p>") @as("IntegrationMethod")
  integrationMethod: option<stringWithLengthBetween1And64>,
  @ocaml.doc("<p>Represents the identifier of an integration.</p>") @as("IntegrationId")
  integrationId: option<id>,
  @ocaml.doc("<p>Represents the description of an integration.</p>") @as("Description")
  description: option<stringWithLengthBetween0And1024>,
  @ocaml.doc(
    "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
  )
  @as("CredentialsArn")
  credentialsArn: option<arn>,
  @ocaml.doc(
    "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
  )
  @as("ContentHandlingStrategy")
  contentHandlingStrategy: option<contentHandlingStrategy>,
  @ocaml.doc(
    "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
  )
  @as("ConnectionType")
  connectionType: option<connectionType>,
  @ocaml.doc(
    "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
  )
  @as("ConnectionId")
  connectionId: option<stringWithLengthBetween1And1024>,
  @ocaml.doc(
    "<p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>"
  )
  @as("ApiGatewayManaged")
  apiGatewayManaged: option<__boolean>,
}
@ocaml.doc("<p>Represents a domain name.</p>")
type domainName = {
  @ocaml.doc("<p>The collection of tags associated with a domain name.</p>") @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>The mutual TLS authentication configuration for a custom domain name.</p>")
  @as("MutualTlsAuthentication")
  mutualTlsAuthentication: option<mutualTlsAuthentication>,
  @ocaml.doc("<p>The domain name configurations.</p>") @as("DomainNameConfigurations")
  domainNameConfigurations: option<domainNameConfigurations>,
  @ocaml.doc("<p>The name of the DomainName resource.</p>") @as("DomainName")
  domainName: stringWithLengthBetween1And512,
  @ocaml.doc("<p>The API mapping selection expression.</p>") @as("ApiMappingSelectionExpression")
  apiMappingSelectionExpression: option<selectionExpression>,
}
@ocaml.doc("<p>Represents an authorizer.</p>")
type authorizer = {
  @ocaml.doc("<p>The name of the authorizer.</p>") @as("Name") name: stringWithLengthBetween1And128,
  @ocaml.doc(
    "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
  )
  @as("JwtConfiguration")
  jwtConfiguration: option<jwtconfiguration>,
  @ocaml.doc("<p>The validation expression does not apply to the REQUEST authorizer.</p>")
  @as("IdentityValidationExpression")
  identityValidationExpression: option<stringWithLengthBetween0And1024>,
  @ocaml.doc(
    "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
  )
  @as("IdentitySource")
  identitySource: option<identitySourceList>,
  @ocaml.doc(
    "<p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
  )
  @as("EnableSimpleResponses")
  enableSimpleResponses: option<__boolean>,
  @ocaml.doc("<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>")
  @as("AuthorizerUri")
  authorizerUri: option<uriWithLengthBetween1And2048>,
  @ocaml.doc(
    "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
  )
  @as("AuthorizerType")
  authorizerType: option<authorizerType>,
  @ocaml.doc(
    "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
  )
  @as("AuthorizerResultTtlInSeconds")
  authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
  @ocaml.doc(
    "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
  )
  @as("AuthorizerPayloadFormatVersion")
  authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
  @ocaml.doc("<p>The authorizer identifier.</p>") @as("AuthorizerId") authorizerId: option<id>,
  @ocaml.doc(
    "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
  )
  @as("AuthorizerCredentialsArn")
  authorizerCredentialsArn: option<arn>,
}
@ocaml.doc("<p>Represents an API.</p>")
type api = {
  @ocaml.doc(
    "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
  )
  @as("Warnings")
  warnings: option<__listOf__string>,
  @ocaml.doc("<p>A version identifier for the API.</p>") @as("Version")
  version: option<stringWithLengthBetween1And64>,
  @ocaml.doc("<p>A collection of tags associated with the API.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc(
    "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
  )
  @as("RouteSelectionExpression")
  routeSelectionExpression: selectionExpression,
  @ocaml.doc("<p>The API protocol.</p>") @as("ProtocolType") protocolType: protocolType,
  @ocaml.doc("<p>The name of the API.</p>") @as("Name") name: stringWithLengthBetween1And128,
  @ocaml.doc(
    "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
  )
  @as("ImportInfo")
  importInfo: option<__listOf__string>,
  @ocaml.doc(
    "<p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>"
  )
  @as("DisableExecuteApiEndpoint")
  disableExecuteApiEndpoint: option<__boolean>,
  @ocaml.doc(
    "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
  )
  @as("DisableSchemaValidation")
  disableSchemaValidation: option<__boolean>,
  @ocaml.doc("<p>The description of the API.</p>") @as("Description")
  description: option<stringWithLengthBetween0And1024>,
  @ocaml.doc("<p>The timestamp when the API was created.</p>") @as("CreatedDate")
  createdDate: option<__timestampIso8601>,
  @ocaml.doc("<p>A CORS configuration. Supported only for HTTP APIs.</p>") @as("CorsConfiguration")
  corsConfiguration: option<cors>,
  @ocaml.doc(
    "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
  )
  @as("ApiKeySelectionExpression")
  apiKeySelectionExpression: option<selectionExpression>,
  @ocaml.doc("<p>The API ID.</p>") @as("ApiId") apiId: option<id>,
  @ocaml.doc(
    "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
  )
  @as("ApiGatewayManaged")
  apiGatewayManaged: option<__boolean>,
  @ocaml.doc(
    "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
  )
  @as("ApiEndpoint")
  apiEndpoint: option<__string>,
}
type __listOfStage = array<stage>
type __listOfRouteResponse = array<routeResponse>
type __listOfRoute = array<route>
type __listOfIntegration = array<integration>
type __listOfDomainName = array<domainName>
type __listOfAuthorizer = array<authorizer>
type __listOfApi = array<api>
@ocaml.doc("<p>Amazon API Gateway V2</p>")
module UpdateModel = {
  type t
  @ocaml.doc("<p>Updates a Model.</p>")
  type request = {
    @ocaml.doc(
      "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
    )
    @as("Schema")
    schema: option<stringWithLengthBetween0And32K>,
    @ocaml.doc("<p>The name of the model.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The model ID.</p>") @as("ModelId") modelId: __string,
    @ocaml.doc("<p>The description of the model.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The content-type for the model, for example, \"application/json\".</p>")
    @as("ContentType")
    contentType: option<stringWithLengthBetween1And256>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
    )
    @as("Schema")
    schema: option<stringWithLengthBetween0And32K>,
    @ocaml.doc("<p>The name of the model. Must be alphanumeric.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The model identifier.</p>") @as("ModelId") modelId: option<id>,
    @ocaml.doc("<p>The description of the model.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The content-type for the model, for example, \"application/json\".</p>")
    @as("ContentType")
    contentType: option<stringWithLengthBetween1And256>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateModelCommand"
  let make = (~modelId, ~apiId, ~schema=?, ~name=?, ~description=?, ~contentType=?, ()) =>
    new({
      schema: schema,
      name: name,
      modelId: modelId,
      description: description,
      contentType: contentType,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDeployment = {
  type t
  @ocaml.doc("<p>Updates a Deployment.</p>")
  type request = {
    @ocaml.doc("<p>The description for the deployment resource.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The deployment ID.</p>") @as("DeploymentId") deploymentId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The description for the deployment.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>May contain additional feedback on the status of an API deployment.</p>")
    @as("DeploymentStatusMessage")
    deploymentStatusMessage: option<__string>,
    @ocaml.doc("<p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>")
    @as("DeploymentStatus")
    deploymentStatus: option<deploymentStatus>,
    @ocaml.doc("<p>The identifier for the deployment.</p>") @as("DeploymentId")
    deploymentId: option<id>,
    @ocaml.doc("<p>The date and time when the Deployment resource was created.</p>")
    @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
    @ocaml.doc("<p>Specifies whether a deployment was automatically released.</p>")
    @as("AutoDeployed")
    autoDeployed: option<__boolean>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateDeploymentCommand"
  let make = (~deploymentId, ~apiId, ~description=?, ()) =>
    new({description: description, deploymentId: deploymentId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApiMapping = {
  type t
  @ocaml.doc("<p>Updates an ApiMapping.</p>")
  type request = {
    @ocaml.doc("<p>The API stage.</p>") @as("Stage") stage: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The domain name.</p>") @as("DomainName") domainName: __string,
    @ocaml.doc("<p>The API mapping key.</p>") @as("ApiMappingKey")
    apiMappingKey: option<selectionKey>,
    @ocaml.doc("<p>The API mapping identifier.</p>") @as("ApiMappingId") apiMappingId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: id,
  }
  type response = {
    @ocaml.doc("<p>The API stage.</p>") @as("Stage") stage: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The API mapping key.</p>") @as("ApiMappingKey")
    apiMappingKey: option<selectionKey>,
    @ocaml.doc("<p>The API mapping identifier.</p>") @as("ApiMappingId") apiMappingId: option<id>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: option<id>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateApiMappingCommand"
  let make = (~domainName, ~apiMappingId, ~apiId, ~stage=?, ~apiMappingKey=?, ()) =>
    new({
      stage: stage,
      domainName: domainName,
      apiMappingKey: apiMappingKey,
      apiMappingId: apiMappingId,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetAuthorizersCache = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The stage name. Stage names can contain only alphanumeric characters, hyphens, and underscores, or be $default. Maximum length is 128 characters.</p>"
    )
    @as("StageName")
    stageName: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "ResetAuthorizersCacheCommand"
  let make = (~stageName, ~apiId, ()) => new({stageName: stageName, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetModelTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The model ID.</p>") @as("ModelId") modelId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {@ocaml.doc("<p>The template value.</p>") @as("Value") value: option<__string>}
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetModelTemplateCommand"
  let make = (~modelId, ~apiId, ()) => new({modelId: modelId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetModel = {
  type t
  type request = {
    @ocaml.doc("<p>The model ID.</p>") @as("ModelId") modelId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
    )
    @as("Schema")
    schema: option<stringWithLengthBetween0And32K>,
    @ocaml.doc("<p>The name of the model. Must be alphanumeric.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The model identifier.</p>") @as("ModelId") modelId: option<id>,
    @ocaml.doc("<p>The description of the model.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The content-type for the model, for example, \"application/json\".</p>")
    @as("ContentType")
    contentType: option<stringWithLengthBetween1And256>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetModelCommand"
  let make = (~modelId, ~apiId, ()) => new({modelId: modelId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeployment = {
  type t
  type request = {
    @ocaml.doc("<p>The deployment ID.</p>") @as("DeploymentId") deploymentId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The description for the deployment.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>May contain additional feedback on the status of an API deployment.</p>")
    @as("DeploymentStatusMessage")
    deploymentStatusMessage: option<__string>,
    @ocaml.doc("<p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>")
    @as("DeploymentStatus")
    deploymentStatus: option<deploymentStatus>,
    @ocaml.doc("<p>The identifier for the deployment.</p>") @as("DeploymentId")
    deploymentId: option<id>,
    @ocaml.doc("<p>The date and time when the Deployment resource was created.</p>")
    @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
    @ocaml.doc("<p>Specifies whether a deployment was automatically released.</p>")
    @as("AutoDeployed")
    autoDeployed: option<__boolean>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetDeploymentCommand"
  let make = (~deploymentId, ~apiId, ()) => new({deploymentId: deploymentId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApiMapping = {
  type t
  type request = {
    @ocaml.doc("<p>The domain name.</p>") @as("DomainName") domainName: __string,
    @ocaml.doc("<p>The API mapping identifier.</p>") @as("ApiMappingId") apiMappingId: __string,
  }
  type response = {
    @ocaml.doc("<p>The API stage.</p>") @as("Stage") stage: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The API mapping key.</p>") @as("ApiMappingKey")
    apiMappingKey: option<selectionKey>,
    @ocaml.doc("<p>The API mapping identifier.</p>") @as("ApiMappingId") apiMappingId: option<id>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: option<id>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetApiMappingCommand"
  let make = (~domainName, ~apiMappingId, ()) =>
    new({domainName: domainName, apiMappingId: apiMappingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportApi = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the API stage to export. If you don't specify this property, a representation of the latest API configuration is exported.</p>"
    )
    @as("StageName")
    stageName: option<__string>,
    @ocaml.doc(
      "<p>The version of the API specification to use. OAS30, for OpenAPI 3.0, is the only supported value.</p>"
    )
    @as("Specification")
    specification: __string,
    @ocaml.doc(
      "<p>The output type of the exported definition file. Valid values are JSON and YAML.</p>"
    )
    @as("OutputType")
    outputType: __string,
    @ocaml.doc(
      "<p>Specifies whether to include <a href=\"https://docs.aws.amazon.com//apigateway/latest/developerguide/api-gateway-swagger-extensions.html\">API Gateway extensions</a> in the exported API definition. API Gateway extensions are included by default.</p>"
    )
    @as("IncludeExtensions")
    includeExtensions: option<__boolean>,
    @ocaml.doc(
      "<p>The version of the API Gateway export algorithm. API Gateway uses the latest version by default. Currently, the only supported version is 1.0.</p>"
    )
    @as("ExportVersion")
    exportVersion: option<__string>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {body: option<exportedApi>}
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "ExportApiCommand"
  let make = (
    ~specification,
    ~outputType,
    ~apiId,
    ~stageName=?,
    ~includeExtensions=?,
    ~exportVersion=?,
    (),
  ) =>
    new({
      stageName: stageName,
      specification: specification,
      outputType: outputType,
      includeExtensions: includeExtensions,
      exportVersion: exportVersion,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVpcLink = {
  type t
  type request = {@ocaml.doc("<p>The ID of the VPC link.</p>") @as("VpcLinkId") vpcLinkId: __string}

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteVpcLinkCommand"
  let make = (~vpcLinkId, ()) => new({vpcLinkId: vpcLinkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteStage = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"
    )
    @as("StageName")
    stageName: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteStageCommand"
  let make = (~stageName, ~apiId, ()) => new({stageName: stageName, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRouteSettings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"
    )
    @as("StageName")
    stageName: __string,
    @ocaml.doc("<p>The route key.</p>") @as("RouteKey") routeKey: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteRouteSettingsCommand"
  let make = (~stageName, ~routeKey, ~apiId, ()) =>
    new({stageName: stageName, routeKey: routeKey, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRouteResponse = {
  type t
  type request = {
    @ocaml.doc("<p>The route response ID.</p>") @as("RouteResponseId") routeResponseId: __string,
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteRouteResponseCommand"
  let make = (~routeResponseId, ~routeId, ~apiId, ()) =>
    new({routeResponseId: routeResponseId, routeId: routeId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRouteRequestParameter = {
  type t
  type request = {
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: __string,
    @ocaml.doc("<p>The route request parameter key.</p>") @as("RequestParameterKey")
    requestParameterKey: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteRouteRequestParameterCommand"
  let make = (~routeId, ~requestParameterKey, ~apiId, ()) =>
    new({routeId: routeId, requestParameterKey: requestParameterKey, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRoute = {
  type t
  type request = {
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteRouteCommand"
  let make = (~routeId, ~apiId, ()) => new({routeId: routeId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteModel = {
  type t
  type request = {
    @ocaml.doc("<p>The model ID.</p>") @as("ModelId") modelId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteModelCommand"
  let make = (~modelId, ~apiId, ()) => new({modelId: modelId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIntegrationResponse = {
  type t
  type request = {
    @ocaml.doc("<p>The integration response ID.</p>") @as("IntegrationResponseId")
    integrationResponseId: __string,
    @ocaml.doc("<p>The integration ID.</p>") @as("IntegrationId") integrationId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteIntegrationResponseCommand"
  let make = (~integrationResponseId, ~integrationId, ~apiId, ()) =>
    new({integrationResponseId: integrationResponseId, integrationId: integrationId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>The integration ID.</p>") @as("IntegrationId") integrationId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteIntegrationCommand"
  let make = (~integrationId, ~apiId, ()) => new({integrationId: integrationId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDomainName = {
  type t
  type request = {@ocaml.doc("<p>The domain name.</p>") @as("DomainName") domainName: __string}

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteDomainNameCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDeployment = {
  type t
  type request = {
    @ocaml.doc("<p>The deployment ID.</p>") @as("DeploymentId") deploymentId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteDeploymentCommand"
  let make = (~deploymentId, ~apiId, ()) => new({deploymentId: deploymentId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCorsConfiguration = {
  type t
  type request = {@ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string}

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteCorsConfigurationCommand"
  let make = (~apiId, ()) => new({apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAuthorizer = {
  type t
  type request = {
    @ocaml.doc("<p>The authorizer identifier.</p>") @as("AuthorizerId") authorizerId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteAuthorizerCommand"
  let make = (~authorizerId, ~apiId, ()) => new({authorizerId: authorizerId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApiMapping = {
  type t
  type request = {
    @ocaml.doc("<p>The domain name.</p>") @as("DomainName") domainName: __string,
    @ocaml.doc("<p>The API mapping identifier.</p>") @as("ApiMappingId") apiMappingId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteApiMappingCommand"
  let make = (~domainName, ~apiMappingId, ()) =>
    new({domainName: domainName, apiMappingId: apiMappingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApi = {
  type t
  type request = {@ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string}

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "DeleteApiCommand"
  let make = (~apiId, ()) => new({apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessLogSettings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"
    )
    @as("StageName")
    stageName: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }

  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "DeleteAccessLogSettingsCommand"
  let make = (~stageName, ~apiId, ()) => new({stageName: stageName, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateModel = {
  type t
  @ocaml.doc("<p>Creates a new Model.</p>")
  type request = {
    @ocaml.doc(
      "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
    )
    @as("Schema")
    schema: stringWithLengthBetween0And32K,
    @ocaml.doc("<p>The name of the model. Must be alphanumeric.</p>") @as("Name")
    name: stringWithLengthBetween1And128,
    @ocaml.doc("<p>The description of the model.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The content-type for the model, for example, \"application/json\".</p>")
    @as("ContentType")
    contentType: option<stringWithLengthBetween1And256>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
    )
    @as("Schema")
    schema: option<stringWithLengthBetween0And32K>,
    @ocaml.doc("<p>The name of the model. Must be alphanumeric.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The model identifier.</p>") @as("ModelId") modelId: option<id>,
    @ocaml.doc("<p>The description of the model.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The content-type for the model, for example, \"application/json\".</p>")
    @as("ContentType")
    contentType: option<stringWithLengthBetween1And256>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateModelCommand"
  let make = (~schema, ~name, ~apiId, ~description=?, ~contentType=?, ()) =>
    new({
      schema: schema,
      name: name,
      description: description,
      contentType: contentType,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeployment = {
  type t
  @ocaml.doc("<p>Creates a new Deployment resource to represent a deployment.</p>")
  type request = {
    @ocaml.doc("<p>The name of the Stage resource for the Deployment resource to create.</p>")
    @as("StageName")
    stageName: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The description for the deployment resource.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The description for the deployment.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>May contain additional feedback on the status of an API deployment.</p>")
    @as("DeploymentStatusMessage")
    deploymentStatusMessage: option<__string>,
    @ocaml.doc("<p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>")
    @as("DeploymentStatus")
    deploymentStatus: option<deploymentStatus>,
    @ocaml.doc("<p>The identifier for the deployment.</p>") @as("DeploymentId")
    deploymentId: option<id>,
    @ocaml.doc("<p>The date and time when the Deployment resource was created.</p>")
    @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
    @ocaml.doc("<p>Specifies whether a deployment was automatically released.</p>")
    @as("AutoDeployed")
    autoDeployed: option<__boolean>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateDeploymentCommand"
  let make = (~apiId, ~stageName=?, ~description=?, ()) =>
    new({stageName: stageName, description: description, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApiMapping = {
  type t
  @ocaml.doc("<p>Creates a new ApiMapping resource to represent an API mapping.</p>")
  type request = {
    @ocaml.doc("<p>The API stage.</p>") @as("Stage") stage: stringWithLengthBetween1And128,
    @ocaml.doc("<p>The domain name.</p>") @as("DomainName") domainName: __string,
    @ocaml.doc("The API mapping key.") @as("ApiMappingKey") apiMappingKey: option<selectionKey>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: id,
  }
  type response = {
    @ocaml.doc("<p>The API stage.</p>") @as("Stage") stage: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The API mapping key.</p>") @as("ApiMappingKey")
    apiMappingKey: option<selectionKey>,
    @ocaml.doc("<p>The API mapping identifier.</p>") @as("ApiMappingId") apiMappingId: option<id>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: option<id>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateApiMappingCommand"
  let make = (~stage, ~domainName, ~apiId, ~apiMappingKey=?, ()) =>
    new({stage: stage, domainName: domainName, apiMappingKey: apiMappingKey, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVpcLink = {
  type t
  @ocaml.doc("<p>Updates a VPC link.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the VPC link.</p>") @as("VpcLinkId") vpcLinkId: __string,
    @ocaml.doc("<p>The name of the VPC link.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
  }
  type response = {
    @ocaml.doc("<p>The version of the VPC link.</p>") @as("VpcLinkVersion")
    vpcLinkVersion: option<vpcLinkVersion>,
    @ocaml.doc("<p>A message summarizing the cause of the status of the VPC link.</p>")
    @as("VpcLinkStatusMessage")
    vpcLinkStatusMessage: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The status of the VPC link.</p>") @as("VpcLinkStatus")
    vpcLinkStatus: option<vpcLinkStatus>,
    @ocaml.doc("<p>The ID of the VPC link.</p>") @as("VpcLinkId") vpcLinkId: option<id>,
    @ocaml.doc("<p>Tags for the VPC link.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>A list of subnet IDs to include in the VPC link.</p>") @as("SubnetIds")
    subnetIds: option<subnetIdList>,
    @ocaml.doc("<p>A list of security group IDs for the VPC link.</p>") @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdList>,
    @ocaml.doc("<p>The name of the VPC link.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The timestamp when the VPC link was created.</p>") @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateVpcLinkCommand"
  let make = (~vpcLinkId, ~name=?, ()) => new({vpcLinkId: vpcLinkId, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIntegrationResponse = {
  type t
  @ocaml.doc("<p>Updates an IntegrationResponses.</p>")
  type request = {
    @ocaml.doc(
      "<p>The template selection expression for the integration response. Supported only for WebSocket APIs.</p>"
    )
    @as("TemplateSelectionExpression")
    templateSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
    )
    @as("ResponseTemplates")
    responseTemplates: option<templateMap>,
    @ocaml.doc("<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.<replaceable>{name}</replaceable>
               , where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.<replaceable>{name}</replaceable>
                or integration.response.body.<replaceable>{JSON-expression}</replaceable>
               , where 
                  <replaceable>{name}</replaceable>
                is a valid and unique response header name and 
                  <replaceable>{JSON-expression}</replaceable>
                is a valid JSON expression without the $ prefix.</p>")
    @as("ResponseParameters")
    responseParameters: option<integrationParameters>,
    @ocaml.doc("<p>The integration response key.</p>") @as("IntegrationResponseKey")
    integrationResponseKey: option<selectionKey>,
    @ocaml.doc("<p>The integration response ID.</p>") @as("IntegrationResponseId")
    integrationResponseId: __string,
    @ocaml.doc("<p>The integration ID.</p>") @as("IntegrationId") integrationId: __string,
    @ocaml.doc(
      "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
    )
    @as("ContentHandlingStrategy")
    contentHandlingStrategy: option<contentHandlingStrategy>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The template selection expressions for the integration response.</p>")
    @as("TemplateSelectionExpression")
    templateSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
    )
    @as("ResponseTemplates")
    responseTemplates: option<templateMap>,
    @ocaml.doc(
      "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>"
    )
    @as("ResponseParameters")
    responseParameters: option<integrationParameters>,
    @ocaml.doc("<p>The integration response key.</p>") @as("IntegrationResponseKey")
    integrationResponseKey: option<selectionKey>,
    @ocaml.doc("<p>The integration response ID.</p>") @as("IntegrationResponseId")
    integrationResponseId: option<id>,
    @ocaml.doc(
      "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
    )
    @as("ContentHandlingStrategy")
    contentHandlingStrategy: option<contentHandlingStrategy>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "UpdateIntegrationResponseCommand"
  let make = (
    ~integrationResponseId,
    ~integrationId,
    ~apiId,
    ~templateSelectionExpression=?,
    ~responseTemplates=?,
    ~responseParameters=?,
    ~integrationResponseKey=?,
    ~contentHandlingStrategy=?,
    (),
  ) =>
    new({
      templateSelectionExpression: templateSelectionExpression,
      responseTemplates: responseTemplates,
      responseParameters: responseParameters,
      integrationResponseKey: integrationResponseKey,
      integrationResponseId: integrationResponseId,
      integrationId: integrationId,
      contentHandlingStrategy: contentHandlingStrategy,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Tag keys to delete</p>") @as("TagKeys") tagKeys: __listOf__string,
    @ocaml.doc("<p>The resource ARN for the tag.</p>") @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  @ocaml.doc("<p>Creates a new Tag resource to represent a tag.</p>")
  type request = {
    @ocaml.doc(
      "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
    )
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The resource ARN for the tag.</p>") @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-apigateway") @new external new: request => t = "TagResourceCommand"
  let make = (~resourceArn, ~tags=?, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetVpcLink = {
  type t
  type request = {@ocaml.doc("<p>The ID of the VPC link.</p>") @as("VpcLinkId") vpcLinkId: __string}
  type response = {
    @ocaml.doc("<p>The version of the VPC link.</p>") @as("VpcLinkVersion")
    vpcLinkVersion: option<vpcLinkVersion>,
    @ocaml.doc("<p>A message summarizing the cause of the status of the VPC link.</p>")
    @as("VpcLinkStatusMessage")
    vpcLinkStatusMessage: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The status of the VPC link.</p>") @as("VpcLinkStatus")
    vpcLinkStatus: option<vpcLinkStatus>,
    @ocaml.doc("<p>The ID of the VPC link.</p>") @as("VpcLinkId") vpcLinkId: option<id>,
    @ocaml.doc("<p>Tags for the VPC link.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>A list of subnet IDs to include in the VPC link.</p>") @as("SubnetIds")
    subnetIds: option<subnetIdList>,
    @ocaml.doc("<p>A list of security group IDs for the VPC link.</p>") @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdList>,
    @ocaml.doc("<p>The name of the VPC link.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The timestamp when the VPC link was created.</p>") @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetVpcLinkCommand"
  let make = (~vpcLinkId, ()) => new({vpcLinkId: vpcLinkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTags = {
  type t
  type request = {
    @ocaml.doc("<p>The resource ARN for the tag.</p>") @as("ResourceArn") resourceArn: __string,
  }
  type response = {@as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetTagsCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIntegrationResponse = {
  type t
  type request = {
    @ocaml.doc("<p>The integration response ID.</p>") @as("IntegrationResponseId")
    integrationResponseId: __string,
    @ocaml.doc("<p>The integration ID.</p>") @as("IntegrationId") integrationId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The template selection expressions for the integration response.</p>")
    @as("TemplateSelectionExpression")
    templateSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
    )
    @as("ResponseTemplates")
    responseTemplates: option<templateMap>,
    @ocaml.doc(
      "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>"
    )
    @as("ResponseParameters")
    responseParameters: option<integrationParameters>,
    @ocaml.doc("<p>The integration response key.</p>") @as("IntegrationResponseKey")
    integrationResponseKey: option<selectionKey>,
    @ocaml.doc("<p>The integration response ID.</p>") @as("IntegrationResponseId")
    integrationResponseId: option<id>,
    @ocaml.doc(
      "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
    )
    @as("ContentHandlingStrategy")
    contentHandlingStrategy: option<contentHandlingStrategy>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetIntegrationResponseCommand"
  let make = (~integrationResponseId, ~integrationId, ~apiId, ()) =>
    new({integrationResponseId: integrationResponseId, integrationId: integrationId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVpcLink = {
  type t
  @ocaml.doc("<p>Creates a VPC link</p>")
  type request = {
    @ocaml.doc("<p>A list of tags.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>A list of subnet IDs to include in the VPC link.</p>") @as("SubnetIds")
    subnetIds: subnetIdList,
    @ocaml.doc("<p>A list of security group IDs for the VPC link.</p>") @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdList>,
    @ocaml.doc("<p>The name of the VPC link.</p>") @as("Name") name: stringWithLengthBetween1And128,
  }
  type response = {
    @ocaml.doc("<p>The version of the VPC link.</p>") @as("VpcLinkVersion")
    vpcLinkVersion: option<vpcLinkVersion>,
    @ocaml.doc("<p>A message summarizing the cause of the status of the VPC link.</p>")
    @as("VpcLinkStatusMessage")
    vpcLinkStatusMessage: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The status of the VPC link.</p>") @as("VpcLinkStatus")
    vpcLinkStatus: option<vpcLinkStatus>,
    @ocaml.doc("<p>The ID of the VPC link.</p>") @as("VpcLinkId") vpcLinkId: option<id>,
    @ocaml.doc("<p>Tags for the VPC link.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>A list of subnet IDs to include in the VPC link.</p>") @as("SubnetIds")
    subnetIds: option<subnetIdList>,
    @ocaml.doc("<p>A list of security group IDs for the VPC link.</p>") @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIdList>,
    @ocaml.doc("<p>The name of the VPC link.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>The timestamp when the VPC link was created.</p>") @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateVpcLinkCommand"
  let make = (~subnetIds, ~name, ~tags=?, ~securityGroupIds=?, ()) =>
    new({tags: tags, subnetIds: subnetIds, securityGroupIds: securityGroupIds, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIntegrationResponse = {
  type t
  @ocaml.doc(
    "<p>Creates a new IntegrationResponse resource to represent an integration response.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>The template selection expression for the integration response. Supported only for WebSocket APIs.</p>"
    )
    @as("TemplateSelectionExpression")
    templateSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
    )
    @as("ResponseTemplates")
    responseTemplates: option<templateMap>,
    @ocaml.doc(
      "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where {name} is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where {name} is a valid and unique response header name and {JSON-expression} is a valid JSON expression without the $ prefix.</p>"
    )
    @as("ResponseParameters")
    responseParameters: option<integrationParameters>,
    @ocaml.doc("<p>The integration response key.</p>") @as("IntegrationResponseKey")
    integrationResponseKey: selectionKey,
    @ocaml.doc("<p>The integration ID.</p>") @as("IntegrationId") integrationId: __string,
    @ocaml.doc(
      "<p>Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
    )
    @as("ContentHandlingStrategy")
    contentHandlingStrategy: option<contentHandlingStrategy>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The template selection expressions for the integration response.</p>")
    @as("TemplateSelectionExpression")
    templateSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
    )
    @as("ResponseTemplates")
    responseTemplates: option<templateMap>,
    @ocaml.doc(
      "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>"
    )
    @as("ResponseParameters")
    responseParameters: option<integrationParameters>,
    @ocaml.doc("<p>The integration response key.</p>") @as("IntegrationResponseKey")
    integrationResponseKey: option<selectionKey>,
    @ocaml.doc("<p>The integration response ID.</p>") @as("IntegrationResponseId")
    integrationResponseId: option<id>,
    @ocaml.doc(
      "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
    )
    @as("ContentHandlingStrategy")
    contentHandlingStrategy: option<contentHandlingStrategy>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "CreateIntegrationResponseCommand"
  let make = (
    ~integrationResponseKey,
    ~integrationId,
    ~apiId,
    ~templateSelectionExpression=?,
    ~responseTemplates=?,
    ~responseParameters=?,
    ~contentHandlingStrategy=?,
    (),
  ) =>
    new({
      templateSelectionExpression: templateSelectionExpression,
      responseTemplates: responseTemplates,
      responseParameters: responseParameters,
      integrationResponseKey: integrationResponseKey,
      integrationId: integrationId,
      contentHandlingStrategy: contentHandlingStrategy,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStage = {
  type t
  @ocaml.doc("<p>Updates a Stage.</p>")
  type request = {
    @ocaml.doc(
      "<p>A map that defines the stage variables for a Stage. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
    )
    @as("StageVariables")
    stageVariables: option<stageVariablesMap>,
    @ocaml.doc(
      "<p>The stage name. Stage names can contain only alphanumeric characters, hyphens, and underscores, or be $default. Maximum length is 128 characters.</p>"
    )
    @as("StageName")
    stageName: __string,
    @ocaml.doc("<p>Route settings for the stage.</p>") @as("RouteSettings")
    routeSettings: option<routeSettingsMap>,
    @ocaml.doc("<p>The description for the API stage.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>The deployment identifier for the API stage. Can't be updated if autoDeploy is enabled.</p>"
    )
    @as("DeploymentId")
    deploymentId: option<id>,
    @ocaml.doc("<p>The default route settings for the stage.</p>") @as("DefaultRouteSettings")
    defaultRouteSettings: option<routeSettings>,
    @ocaml.doc("<p>The identifier of a client certificate for a Stage.</p>")
    @as("ClientCertificateId")
    clientCertificateId: option<id>,
    @ocaml.doc(
      "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
    )
    @as("AutoDeploy")
    autoDeploy: option<__boolean>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
    @ocaml.doc("<p>Settings for logging access in this stage.</p>") @as("AccessLogSettings")
    accessLogSettings: option<accessLogSettings>,
  }
  type response = {
    @ocaml.doc(
      "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
    )
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
    )
    @as("StageVariables")
    stageVariables: option<stageVariablesMap>,
    @ocaml.doc("<p>The name of the stage.</p>") @as("StageName")
    stageName: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>Route settings for the stage, by routeKey.</p>") @as("RouteSettings")
    routeSettings: option<routeSettingsMap>,
    @ocaml.doc("<p>The timestamp when the stage was last updated.</p>") @as("LastUpdatedDate")
    lastUpdatedDate: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>"
    )
    @as("LastDeploymentStatusMessage")
    lastDeploymentStatusMessage: option<__string>,
    @ocaml.doc("<p>The description of the stage.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>"
    )
    @as("DeploymentId")
    deploymentId: option<id>,
    @ocaml.doc("<p>Default route settings for the stage.</p>") @as("DefaultRouteSettings")
    defaultRouteSettings: option<routeSettings>,
    @ocaml.doc("<p>The timestamp when the stage was created.</p>") @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>"
    )
    @as("ClientCertificateId")
    clientCertificateId: option<id>,
    @ocaml.doc(
      "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
    )
    @as("AutoDeploy")
    autoDeploy: option<__boolean>,
    @ocaml.doc(
      "<p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
    @ocaml.doc("<p>Settings for logging access in this stage.</p>") @as("AccessLogSettings")
    accessLogSettings: option<accessLogSettings>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateStageCommand"
  let make = (
    ~stageName,
    ~apiId,
    ~stageVariables=?,
    ~routeSettings=?,
    ~description=?,
    ~deploymentId=?,
    ~defaultRouteSettings=?,
    ~clientCertificateId=?,
    ~autoDeploy=?,
    ~accessLogSettings=?,
    (),
  ) =>
    new({
      stageVariables: stageVariables,
      stageName: stageName,
      routeSettings: routeSettings,
      description: description,
      deploymentId: deploymentId,
      defaultRouteSettings: defaultRouteSettings,
      clientCertificateId: clientCertificateId,
      autoDeploy: autoDeploy,
      apiId: apiId,
      accessLogSettings: accessLogSettings,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRouteResponse = {
  type t
  @ocaml.doc("<p>Updates a RouteResponse.</p>")
  type request = {
    @ocaml.doc("<p>The route response key.</p>") @as("RouteResponseKey")
    routeResponseKey: option<selectionKey>,
    @ocaml.doc("<p>The route response ID.</p>") @as("RouteResponseId") routeResponseId: __string,
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: __string,
    @ocaml.doc("<p>The route response parameters.</p>") @as("ResponseParameters")
    responseParameters: option<routeParameters>,
    @ocaml.doc("<p>The response models for the route response.</p>") @as("ResponseModels")
    responseModels: option<routeModels>,
    @ocaml.doc(
      "<p>The model selection expression for the route response. Supported only for WebSocket APIs.</p>"
    )
    @as("ModelSelectionExpression")
    modelSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>Represents the route response key of a route response.</p>")
    @as("RouteResponseKey")
    routeResponseKey: option<selectionKey>,
    @ocaml.doc("<p>Represents the identifier of a route response.</p>") @as("RouteResponseId")
    routeResponseId: option<id>,
    @ocaml.doc("<p>Represents the response parameters of a route response.</p>")
    @as("ResponseParameters")
    responseParameters: option<routeParameters>,
    @ocaml.doc("<p>Represents the response models of a route response.</p>") @as("ResponseModels")
    responseModels: option<routeModels>,
    @ocaml.doc(
      "<p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>"
    )
    @as("ModelSelectionExpression")
    modelSelectionExpression: option<selectionExpression>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "UpdateRouteResponseCommand"
  let make = (
    ~routeResponseId,
    ~routeId,
    ~apiId,
    ~routeResponseKey=?,
    ~responseParameters=?,
    ~responseModels=?,
    ~modelSelectionExpression=?,
    (),
  ) =>
    new({
      routeResponseKey: routeResponseKey,
      routeResponseId: routeResponseId,
      routeId: routeId,
      responseParameters: responseParameters,
      responseModels: responseModels,
      modelSelectionExpression: modelSelectionExpression,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRoute = {
  type t
  @ocaml.doc("<p>Updates a Route.</p>")
  type request = {
    @ocaml.doc("<p>The target for the route.</p>") @as("Target")
    target: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("RouteResponseSelectionExpression")
    routeResponseSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The route key for the route.</p>") @as("RouteKey")
    routeKey: option<selectionKey>,
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: __string,
    @ocaml.doc("<p>The request parameters for the route. Supported only for WebSocket APIs.</p>")
    @as("RequestParameters")
    requestParameters: option<routeParameters>,
    @ocaml.doc("<p>The request models for the route. Supported only for WebSocket APIs.</p>")
    @as("RequestModels")
    requestModels: option<routeModels>,
    @ocaml.doc("<p>The operation name for the route.</p>") @as("OperationName")
    operationName: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("ModelSelectionExpression")
    modelSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
    )
    @as("AuthorizerId")
    authorizerId: option<id>,
    @ocaml.doc(
      "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
    )
    @as("AuthorizationType")
    authorizationType: option<authorizationType>,
    @ocaml.doc("<p>The authorization scopes supported by this route.</p>")
    @as("AuthorizationScopes")
    authorizationScopes: option<authorizationScopes>,
    @ocaml.doc(
      "<p>Specifies whether an API key is required for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("ApiKeyRequired")
    apiKeyRequired: option<__boolean>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The target for the route.</p>") @as("Target")
    target: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("RouteResponseSelectionExpression")
    routeResponseSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The route key for the route.</p>") @as("RouteKey")
    routeKey: option<selectionKey>,
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: option<id>,
    @ocaml.doc("<p>The request parameters for the route. Supported only for WebSocket APIs.</p>")
    @as("RequestParameters")
    requestParameters: option<routeParameters>,
    @ocaml.doc("<p>The request models for the route. Supported only for WebSocket APIs.</p>")
    @as("RequestModels")
    requestModels: option<routeModels>,
    @ocaml.doc("<p>The operation name for the route.</p>") @as("OperationName")
    operationName: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("ModelSelectionExpression")
    modelSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
    )
    @as("AuthorizerId")
    authorizerId: option<id>,
    @ocaml.doc(
      "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
    )
    @as("AuthorizationType")
    authorizationType: option<authorizationType>,
    @ocaml.doc(
      "<p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"
    )
    @as("AuthorizationScopes")
    authorizationScopes: option<authorizationScopes>,
    @ocaml.doc(
      "<p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>"
    )
    @as("ApiKeyRequired")
    apiKeyRequired: option<__boolean>,
    @ocaml.doc(
      "<p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateRouteCommand"
  let make = (
    ~routeId,
    ~apiId,
    ~target=?,
    ~routeResponseSelectionExpression=?,
    ~routeKey=?,
    ~requestParameters=?,
    ~requestModels=?,
    ~operationName=?,
    ~modelSelectionExpression=?,
    ~authorizerId=?,
    ~authorizationType=?,
    ~authorizationScopes=?,
    ~apiKeyRequired=?,
    (),
  ) =>
    new({
      target: target,
      routeResponseSelectionExpression: routeResponseSelectionExpression,
      routeKey: routeKey,
      routeId: routeId,
      requestParameters: requestParameters,
      requestModels: requestModels,
      operationName: operationName,
      modelSelectionExpression: modelSelectionExpression,
      authorizerId: authorizerId,
      authorizationType: authorizationType,
      authorizationScopes: authorizationScopes,
      apiKeyRequired: apiKeyRequired,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIntegration = {
  type t
  @ocaml.doc("<p>Updates an Integration.</p>")
  type request = {
    @ocaml.doc(
      "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
    )
    @as("TlsConfig")
    tlsConfig: option<tlsConfigInput>,
    @ocaml.doc(
      "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
    )
    @as("TimeoutInMillis")
    timeoutInMillis: option<integerWithLengthBetween50And30000>,
    @ocaml.doc("<p>The template selection expression for the integration.</p>")
    @as("TemplateSelectionExpression")
    templateSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>"
    )
    @as("ResponseParameters")
    responseParameters: option<responseParameters>,
    @ocaml.doc(
      "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
    )
    @as("RequestTemplates")
    requestTemplates: option<templateMap>,
    @ocaml.doc("<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
          , where 
            <replaceable>{location}</replaceable>
           is querystring, path, or header; and 
            <replaceable>{name}</replaceable>
           must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to the backend. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt; where action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.\">Transforming API requests and responses</a>.</p>")
    @as("RequestParameters")
    requestParameters: option<integrationParameters>,
    @ocaml.doc(
      "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
    )
    @as("PayloadFormatVersion")
    payloadFormatVersion: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
    )
    @as("PassthroughBehavior")
    passthroughBehavior: option<passthroughBehavior>,
    @ocaml.doc(
      "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
    )
    @as("IntegrationUri")
    integrationUri: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration. For HTTP API private integrations, use an HTTP_PROXY integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
    )
    @as("IntegrationType")
    integrationType: option<integrationType>,
    @ocaml.doc(
      "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
    )
    @as("IntegrationSubtype")
    integrationSubtype: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>Specifies the integration's HTTP method type.</p>") @as("IntegrationMethod")
    integrationMethod: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>The integration ID.</p>") @as("IntegrationId") integrationId: __string,
    @ocaml.doc("<p>The description of the integration</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
    )
    @as("CredentialsArn")
    credentialsArn: option<arn>,
    @ocaml.doc(
      "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
    )
    @as("ContentHandlingStrategy")
    contentHandlingStrategy: option<contentHandlingStrategy>,
    @ocaml.doc(
      "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
    )
    @as("ConnectionType")
    connectionType: option<connectionType>,
    @ocaml.doc(
      "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
    )
    @as("ConnectionId")
    connectionId: option<stringWithLengthBetween1And1024>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
    )
    @as("TlsConfig")
    tlsConfig: option<tlsConfig>,
    @ocaml.doc(
      "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
    )
    @as("TimeoutInMillis")
    timeoutInMillis: option<integerWithLengthBetween50And30000>,
    @ocaml.doc(
      "<p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>"
    )
    @as("TemplateSelectionExpression")
    templateSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>"
    )
    @as("ResponseParameters")
    responseParameters: option<responseParameters>,
    @ocaml.doc(
      "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
    )
    @as("RequestTemplates")
    requestTemplates: option<templateMap>,
    @ocaml.doc("<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
          , where 
            <replaceable>{location}</replaceable>
           is querystring, path, or header; and 
            <replaceable>{name}</replaceable>
           must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API itegrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to backend integrations. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt;. The action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>")
    @as("RequestParameters")
    requestParameters: option<integrationParameters>,
    @ocaml.doc(
      "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
    )
    @as("PayloadFormatVersion")
    payloadFormatVersion: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
    )
    @as("PassthroughBehavior")
    passthroughBehavior: option<passthroughBehavior>,
    @ocaml.doc(
      "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
    )
    @as("IntegrationUri")
    integrationUri: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
    )
    @as("IntegrationType")
    integrationType: option<integrationType>,
    @ocaml.doc(
      "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
    )
    @as("IntegrationSubtype")
    integrationSubtype: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions\">Integration Response Selection Expressions</a>.</p>"
    )
    @as("IntegrationResponseSelectionExpression")
    integrationResponseSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>Specifies the integration's HTTP method type.</p>") @as("IntegrationMethod")
    integrationMethod: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>Represents the identifier of an integration.</p>") @as("IntegrationId")
    integrationId: option<id>,
    @ocaml.doc("<p>Represents the description of an integration.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
    )
    @as("CredentialsArn")
    credentialsArn: option<arn>,
    @ocaml.doc(
      "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
    )
    @as("ContentHandlingStrategy")
    contentHandlingStrategy: option<contentHandlingStrategy>,
    @ocaml.doc(
      "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
    )
    @as("ConnectionType")
    connectionType: option<connectionType>,
    @ocaml.doc(
      "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
    )
    @as("ConnectionId")
    connectionId: option<stringWithLengthBetween1And1024>,
    @ocaml.doc(
      "<p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateIntegrationCommand"
  let make = (
    ~integrationId,
    ~apiId,
    ~tlsConfig=?,
    ~timeoutInMillis=?,
    ~templateSelectionExpression=?,
    ~responseParameters=?,
    ~requestTemplates=?,
    ~requestParameters=?,
    ~payloadFormatVersion=?,
    ~passthroughBehavior=?,
    ~integrationUri=?,
    ~integrationType=?,
    ~integrationSubtype=?,
    ~integrationMethod=?,
    ~description=?,
    ~credentialsArn=?,
    ~contentHandlingStrategy=?,
    ~connectionType=?,
    ~connectionId=?,
    (),
  ) =>
    new({
      tlsConfig: tlsConfig,
      timeoutInMillis: timeoutInMillis,
      templateSelectionExpression: templateSelectionExpression,
      responseParameters: responseParameters,
      requestTemplates: requestTemplates,
      requestParameters: requestParameters,
      payloadFormatVersion: payloadFormatVersion,
      passthroughBehavior: passthroughBehavior,
      integrationUri: integrationUri,
      integrationType: integrationType,
      integrationSubtype: integrationSubtype,
      integrationMethod: integrationMethod,
      integrationId: integrationId,
      description: description,
      credentialsArn: credentialsArn,
      contentHandlingStrategy: contentHandlingStrategy,
      connectionType: connectionType,
      connectionId: connectionId,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomainName = {
  type t
  @ocaml.doc("<p>Updates a DomainName.</p>")
  type request = {
    @ocaml.doc("<p>The mutual TLS authentication configuration for a custom domain name.</p>")
    @as("MutualTlsAuthentication")
    mutualTlsAuthentication: option<mutualTlsAuthenticationInput>,
    @ocaml.doc("<p>The domain name configurations.</p>") @as("DomainNameConfigurations")
    domainNameConfigurations: option<domainNameConfigurations>,
    @ocaml.doc("<p>The domain name.</p>") @as("DomainName") domainName: __string,
  }
  type response = {
    @ocaml.doc("<p>The collection of tags associated with a domain name.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The mutual TLS authentication configuration for a custom domain name.</p>")
    @as("MutualTlsAuthentication")
    mutualTlsAuthentication: option<mutualTlsAuthentication>,
    @ocaml.doc("<p>The domain name configurations.</p>") @as("DomainNameConfigurations")
    domainNameConfigurations: option<domainNameConfigurations>,
    @ocaml.doc("<p>The name of the DomainName resource.</p>") @as("DomainName")
    domainName: option<stringWithLengthBetween1And512>,
    @ocaml.doc("<p>The API mapping selection expression.</p>") @as("ApiMappingSelectionExpression")
    apiMappingSelectionExpression: option<selectionExpression>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateDomainNameCommand"
  let make = (~domainName, ~mutualTlsAuthentication=?, ~domainNameConfigurations=?, ()) =>
    new({
      mutualTlsAuthentication: mutualTlsAuthentication,
      domainNameConfigurations: domainNameConfigurations,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAuthorizer = {
  type t
  @ocaml.doc("<p>Updates an Authorizer.</p>")
  type request = {
    @ocaml.doc("<p>The name of the authorizer.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
    )
    @as("JwtConfiguration")
    jwtConfiguration: option<jwtconfiguration>,
    @ocaml.doc("<p>This parameter is not used.</p>") @as("IdentityValidationExpression")
    identityValidationExpression: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
    )
    @as("IdentitySource")
    identitySource: option<identitySourceList>,
    @ocaml.doc(
      "<p>Specifies whether a Lambda authorizer returns a response in a simple format. By default, a Lambda authorizer must return an IAM policy. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
    )
    @as("EnableSimpleResponses")
    enableSimpleResponses: option<__boolean>,
    @ocaml.doc("<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>")
    @as("AuthorizerUri")
    authorizerUri: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
    )
    @as("AuthorizerType")
    authorizerType: option<authorizerType>,
    @ocaml.doc(
      "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
    )
    @as("AuthorizerResultTtlInSeconds")
    authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
    @ocaml.doc(
      "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
    )
    @as("AuthorizerPayloadFormatVersion")
    authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>The authorizer identifier.</p>") @as("AuthorizerId") authorizerId: __string,
    @ocaml.doc(
      "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter.</p>"
    )
    @as("AuthorizerCredentialsArn")
    authorizerCredentialsArn: option<arn>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The name of the authorizer.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
    )
    @as("JwtConfiguration")
    jwtConfiguration: option<jwtconfiguration>,
    @ocaml.doc("<p>The validation expression does not apply to the REQUEST authorizer.</p>")
    @as("IdentityValidationExpression")
    identityValidationExpression: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
    )
    @as("IdentitySource")
    identitySource: option<identitySourceList>,
    @ocaml.doc(
      "<p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
    )
    @as("EnableSimpleResponses")
    enableSimpleResponses: option<__boolean>,
    @ocaml.doc("<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>")
    @as("AuthorizerUri")
    authorizerUri: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
    )
    @as("AuthorizerType")
    authorizerType: option<authorizerType>,
    @ocaml.doc(
      "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
    )
    @as("AuthorizerResultTtlInSeconds")
    authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
    @ocaml.doc(
      "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
    )
    @as("AuthorizerPayloadFormatVersion")
    authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>The authorizer identifier.</p>") @as("AuthorizerId") authorizerId: option<id>,
    @ocaml.doc(
      "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
    )
    @as("AuthorizerCredentialsArn")
    authorizerCredentialsArn: option<arn>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateAuthorizerCommand"
  let make = (
    ~authorizerId,
    ~apiId,
    ~name=?,
    ~jwtConfiguration=?,
    ~identityValidationExpression=?,
    ~identitySource=?,
    ~enableSimpleResponses=?,
    ~authorizerUri=?,
    ~authorizerType=?,
    ~authorizerResultTtlInSeconds=?,
    ~authorizerPayloadFormatVersion=?,
    ~authorizerCredentialsArn=?,
    (),
  ) =>
    new({
      name: name,
      jwtConfiguration: jwtConfiguration,
      identityValidationExpression: identityValidationExpression,
      identitySource: identitySource,
      enableSimpleResponses: enableSimpleResponses,
      authorizerUri: authorizerUri,
      authorizerType: authorizerType,
      authorizerResultTtlInSeconds: authorizerResultTtlInSeconds,
      authorizerPayloadFormatVersion: authorizerPayloadFormatVersion,
      authorizerId: authorizerId,
      authorizerCredentialsArn: authorizerCredentialsArn,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApi = {
  type t
  @ocaml.doc("<p>Updates an Api.</p>")
  type request = {
    @ocaml.doc("<p>A version identifier for the API.</p>") @as("Version")
    version: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>This property is part of quick create. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. The value provided updates the integration URI and integration type. You can update a quick-created target, but you can't remove it from an API. Supported only for HTTP APIs.</p>"
    )
    @as("Target")
    target: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
    )
    @as("RouteSelectionExpression")
    routeSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>This property is part of quick create. If not specified, the route created using quick create is kept. Otherwise, this value replaces the route key of the quick create route. Additional routes may still be added after the API is updated. Supported only for HTTP APIs.</p>"
    )
    @as("RouteKey")
    routeKey: option<selectionKey>,
    @ocaml.doc("<p>The name of the API.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>"
    )
    @as("DisableExecuteApiEndpoint")
    disableExecuteApiEndpoint: option<__boolean>,
    @ocaml.doc(
      "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
    )
    @as("DisableSchemaValidation")
    disableSchemaValidation: option<__boolean>,
    @ocaml.doc("<p>The description of the API.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>This property is part of quick create. It specifies the credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, don't specify this parameter. Currently, this property is not used for HTTP integrations. If provided, this value replaces the credentials associated with the quick create integration. Supported only for HTTP APIs.</p>"
    )
    @as("CredentialsArn")
    credentialsArn: option<arn>,
    @ocaml.doc("<p>A CORS configuration. Supported only for HTTP APIs.</p>")
    @as("CorsConfiguration")
    corsConfiguration: option<cors>,
    @ocaml.doc(
      "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
    )
    @as("ApiKeySelectionExpression")
    apiKeySelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
    )
    @as("Warnings")
    warnings: option<__listOf__string>,
    @ocaml.doc("<p>A version identifier for the API.</p>") @as("Version")
    version: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>A collection of tags associated with the API.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
    )
    @as("RouteSelectionExpression")
    routeSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API protocol.</p>") @as("ProtocolType") protocolType: option<protocolType>,
    @ocaml.doc("<p>The name of the API.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
    )
    @as("ImportInfo")
    importInfo: option<__listOf__string>,
    @ocaml.doc(
      "<p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>"
    )
    @as("DisableExecuteApiEndpoint")
    disableExecuteApiEndpoint: option<__boolean>,
    @ocaml.doc(
      "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
    )
    @as("DisableSchemaValidation")
    disableSchemaValidation: option<__boolean>,
    @ocaml.doc("<p>The description of the API.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The timestamp when the API was created.</p>") @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
    @ocaml.doc("<p>A CORS configuration. Supported only for HTTP APIs.</p>")
    @as("CorsConfiguration")
    corsConfiguration: option<cors>,
    @ocaml.doc(
      "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
    )
    @as("ApiKeySelectionExpression")
    apiKeySelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API ID.</p>") @as("ApiId") apiId: option<id>,
    @ocaml.doc(
      "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
    @ocaml.doc(
      "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
    )
    @as("ApiEndpoint")
    apiEndpoint: option<__string>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "UpdateApiCommand"
  let make = (
    ~apiId,
    ~version=?,
    ~target=?,
    ~routeSelectionExpression=?,
    ~routeKey=?,
    ~name=?,
    ~disableExecuteApiEndpoint=?,
    ~disableSchemaValidation=?,
    ~description=?,
    ~credentialsArn=?,
    ~corsConfiguration=?,
    ~apiKeySelectionExpression=?,
    (),
  ) =>
    new({
      version: version,
      target: target,
      routeSelectionExpression: routeSelectionExpression,
      routeKey: routeKey,
      name: name,
      disableExecuteApiEndpoint: disableExecuteApiEndpoint,
      disableSchemaValidation: disableSchemaValidation,
      description: description,
      credentialsArn: credentialsArn,
      corsConfiguration: corsConfiguration,
      apiKeySelectionExpression: apiKeySelectionExpression,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReimportApi = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>Specifies whether to rollback the API creation when a warning is encountered. By default, API creation continues if a warning is encountered.</p>"
    )
    @as("FailOnWarnings")
    failOnWarnings: option<__boolean>,
    @ocaml.doc("<p>The OpenAPI definition. Supported only for HTTP APIs.</p>") @as("Body")
    body: __string,
    @ocaml.doc(
      "<p>Specifies how to interpret the base path of the API during import. Valid values are ignore, prepend, and split. The default value is ignore. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html\">Set the OpenAPI basePath Property</a>. Supported only for HTTP APIs.</p>"
    )
    @as("Basepath")
    basepath: option<__string>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
    )
    @as("Warnings")
    warnings: option<__listOf__string>,
    @ocaml.doc("<p>A version identifier for the API.</p>") @as("Version")
    version: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>A collection of tags associated with the API.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
    )
    @as("RouteSelectionExpression")
    routeSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API protocol.</p>") @as("ProtocolType") protocolType: option<protocolType>,
    @ocaml.doc("<p>The name of the API.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
    )
    @as("ImportInfo")
    importInfo: option<__listOf__string>,
    @ocaml.doc(
      "<p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>"
    )
    @as("DisableExecuteApiEndpoint")
    disableExecuteApiEndpoint: option<__boolean>,
    @ocaml.doc(
      "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
    )
    @as("DisableSchemaValidation")
    disableSchemaValidation: option<__boolean>,
    @ocaml.doc("<p>The description of the API.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The timestamp when the API was created.</p>") @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
    @ocaml.doc("<p>A CORS configuration. Supported only for HTTP APIs.</p>")
    @as("CorsConfiguration")
    corsConfiguration: option<cors>,
    @ocaml.doc(
      "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
    )
    @as("ApiKeySelectionExpression")
    apiKeySelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API ID.</p>") @as("ApiId") apiId: option<id>,
    @ocaml.doc(
      "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
    @ocaml.doc(
      "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
    )
    @as("ApiEndpoint")
    apiEndpoint: option<__string>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "ReimportApiCommand"
  let make = (~body, ~apiId, ~failOnWarnings=?, ~basepath=?, ()) =>
    new({failOnWarnings: failOnWarnings, body: body, basepath: basepath, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportApi = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>Specifies whether to rollback the API creation when a warning is encountered. By default, API creation continues if a warning is encountered.</p>"
    )
    @as("FailOnWarnings")
    failOnWarnings: option<__boolean>,
    @ocaml.doc("<p>The OpenAPI definition. Supported only for HTTP APIs.</p>") @as("Body")
    body: __string,
    @ocaml.doc(
      "<p>Specifies how to interpret the base path of the API during import. Valid values are ignore, prepend, and split. The default value is ignore. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html\">Set the OpenAPI basePath Property</a>. Supported only for HTTP APIs.</p>"
    )
    @as("Basepath")
    basepath: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
    )
    @as("Warnings")
    warnings: option<__listOf__string>,
    @ocaml.doc("<p>A version identifier for the API.</p>") @as("Version")
    version: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>A collection of tags associated with the API.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
    )
    @as("RouteSelectionExpression")
    routeSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API protocol.</p>") @as("ProtocolType") protocolType: option<protocolType>,
    @ocaml.doc("<p>The name of the API.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
    )
    @as("ImportInfo")
    importInfo: option<__listOf__string>,
    @ocaml.doc(
      "<p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>"
    )
    @as("DisableExecuteApiEndpoint")
    disableExecuteApiEndpoint: option<__boolean>,
    @ocaml.doc(
      "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
    )
    @as("DisableSchemaValidation")
    disableSchemaValidation: option<__boolean>,
    @ocaml.doc("<p>The description of the API.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The timestamp when the API was created.</p>") @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
    @ocaml.doc("<p>A CORS configuration. Supported only for HTTP APIs.</p>")
    @as("CorsConfiguration")
    corsConfiguration: option<cors>,
    @ocaml.doc(
      "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
    )
    @as("ApiKeySelectionExpression")
    apiKeySelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API ID.</p>") @as("ApiId") apiId: option<id>,
    @ocaml.doc(
      "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
    @ocaml.doc(
      "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
    )
    @as("ApiEndpoint")
    apiEndpoint: option<__string>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "ImportApiCommand"
  let make = (~body, ~failOnWarnings=?, ~basepath=?, ()) =>
    new({failOnWarnings: failOnWarnings, body: body, basepath: basepath})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStage = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"
    )
    @as("StageName")
    stageName: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
    )
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
    )
    @as("StageVariables")
    stageVariables: option<stageVariablesMap>,
    @ocaml.doc("<p>The name of the stage.</p>") @as("StageName")
    stageName: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>Route settings for the stage, by routeKey.</p>") @as("RouteSettings")
    routeSettings: option<routeSettingsMap>,
    @ocaml.doc("<p>The timestamp when the stage was last updated.</p>") @as("LastUpdatedDate")
    lastUpdatedDate: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>"
    )
    @as("LastDeploymentStatusMessage")
    lastDeploymentStatusMessage: option<__string>,
    @ocaml.doc("<p>The description of the stage.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>"
    )
    @as("DeploymentId")
    deploymentId: option<id>,
    @ocaml.doc("<p>Default route settings for the stage.</p>") @as("DefaultRouteSettings")
    defaultRouteSettings: option<routeSettings>,
    @ocaml.doc("<p>The timestamp when the stage was created.</p>") @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>"
    )
    @as("ClientCertificateId")
    clientCertificateId: option<id>,
    @ocaml.doc(
      "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
    )
    @as("AutoDeploy")
    autoDeploy: option<__boolean>,
    @ocaml.doc(
      "<p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
    @ocaml.doc("<p>Settings for logging access in this stage.</p>") @as("AccessLogSettings")
    accessLogSettings: option<accessLogSettings>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetStageCommand"
  let make = (~stageName, ~apiId, ()) => new({stageName: stageName, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRouteResponse = {
  type t
  type request = {
    @ocaml.doc("<p>The route response ID.</p>") @as("RouteResponseId") routeResponseId: __string,
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>Represents the route response key of a route response.</p>")
    @as("RouteResponseKey")
    routeResponseKey: option<selectionKey>,
    @ocaml.doc("<p>Represents the identifier of a route response.</p>") @as("RouteResponseId")
    routeResponseId: option<id>,
    @ocaml.doc("<p>Represents the response parameters of a route response.</p>")
    @as("ResponseParameters")
    responseParameters: option<routeParameters>,
    @ocaml.doc("<p>Represents the response models of a route response.</p>") @as("ResponseModels")
    responseModels: option<routeModels>,
    @ocaml.doc(
      "<p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>"
    )
    @as("ModelSelectionExpression")
    modelSelectionExpression: option<selectionExpression>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetRouteResponseCommand"
  let make = (~routeResponseId, ~routeId, ~apiId, ()) =>
    new({routeResponseId: routeResponseId, routeId: routeId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRoute = {
  type t
  type request = {
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The target for the route.</p>") @as("Target")
    target: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("RouteResponseSelectionExpression")
    routeResponseSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The route key for the route.</p>") @as("RouteKey")
    routeKey: option<selectionKey>,
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: option<id>,
    @ocaml.doc("<p>The request parameters for the route. Supported only for WebSocket APIs.</p>")
    @as("RequestParameters")
    requestParameters: option<routeParameters>,
    @ocaml.doc("<p>The request models for the route. Supported only for WebSocket APIs.</p>")
    @as("RequestModels")
    requestModels: option<routeModels>,
    @ocaml.doc("<p>The operation name for the route.</p>") @as("OperationName")
    operationName: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("ModelSelectionExpression")
    modelSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
    )
    @as("AuthorizerId")
    authorizerId: option<id>,
    @ocaml.doc(
      "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
    )
    @as("AuthorizationType")
    authorizationType: option<authorizationType>,
    @ocaml.doc(
      "<p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"
    )
    @as("AuthorizationScopes")
    authorizationScopes: option<authorizationScopes>,
    @ocaml.doc(
      "<p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>"
    )
    @as("ApiKeyRequired")
    apiKeyRequired: option<__boolean>,
    @ocaml.doc(
      "<p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetRouteCommand"
  let make = (~routeId, ~apiId, ()) => new({routeId: routeId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetModels = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<__listOfModel>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetModelsCommand"
  let make = (~apiId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>The integration ID.</p>") @as("IntegrationId") integrationId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
    )
    @as("TlsConfig")
    tlsConfig: option<tlsConfig>,
    @ocaml.doc(
      "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
    )
    @as("TimeoutInMillis")
    timeoutInMillis: option<integerWithLengthBetween50And30000>,
    @ocaml.doc(
      "<p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>"
    )
    @as("TemplateSelectionExpression")
    templateSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>"
    )
    @as("ResponseParameters")
    responseParameters: option<responseParameters>,
    @ocaml.doc(
      "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
    )
    @as("RequestTemplates")
    requestTemplates: option<templateMap>,
    @ocaml.doc("<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
          , where 
            <replaceable>{location}</replaceable>
           is querystring, path, or header; and 
            <replaceable>{name}</replaceable>
           must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API itegrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to backend integrations. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt;. The action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>")
    @as("RequestParameters")
    requestParameters: option<integrationParameters>,
    @ocaml.doc(
      "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
    )
    @as("PayloadFormatVersion")
    payloadFormatVersion: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
    )
    @as("PassthroughBehavior")
    passthroughBehavior: option<passthroughBehavior>,
    @ocaml.doc(
      "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
    )
    @as("IntegrationUri")
    integrationUri: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
    )
    @as("IntegrationType")
    integrationType: option<integrationType>,
    @ocaml.doc(
      "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
    )
    @as("IntegrationSubtype")
    integrationSubtype: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions\">Integration Response Selection Expressions</a>.</p>"
    )
    @as("IntegrationResponseSelectionExpression")
    integrationResponseSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>Specifies the integration's HTTP method type.</p>") @as("IntegrationMethod")
    integrationMethod: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>Represents the identifier of an integration.</p>") @as("IntegrationId")
    integrationId: option<id>,
    @ocaml.doc("<p>Represents the description of an integration.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
    )
    @as("CredentialsArn")
    credentialsArn: option<arn>,
    @ocaml.doc(
      "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
    )
    @as("ContentHandlingStrategy")
    contentHandlingStrategy: option<contentHandlingStrategy>,
    @ocaml.doc(
      "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
    )
    @as("ConnectionType")
    connectionType: option<connectionType>,
    @ocaml.doc(
      "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
    )
    @as("ConnectionId")
    connectionId: option<stringWithLengthBetween1And1024>,
    @ocaml.doc(
      "<p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetIntegrationCommand"
  let make = (~integrationId, ~apiId, ()) => new({integrationId: integrationId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainName = {
  type t
  type request = {@ocaml.doc("<p>The domain name.</p>") @as("DomainName") domainName: __string}
  type response = {
    @ocaml.doc("<p>The collection of tags associated with a domain name.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The mutual TLS authentication configuration for a custom domain name.</p>")
    @as("MutualTlsAuthentication")
    mutualTlsAuthentication: option<mutualTlsAuthentication>,
    @ocaml.doc("<p>The domain name configurations.</p>") @as("DomainNameConfigurations")
    domainNameConfigurations: option<domainNameConfigurations>,
    @ocaml.doc("<p>The name of the DomainName resource.</p>") @as("DomainName")
    domainName: option<stringWithLengthBetween1And512>,
    @ocaml.doc("<p>The API mapping selection expression.</p>") @as("ApiMappingSelectionExpression")
    apiMappingSelectionExpression: option<selectionExpression>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetDomainNameCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeployments = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<__listOfDeployment>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetDeploymentsCommand"
  let make = (~apiId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAuthorizer = {
  type t
  type request = {
    @ocaml.doc("<p>The authorizer identifier.</p>") @as("AuthorizerId") authorizerId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The name of the authorizer.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
    )
    @as("JwtConfiguration")
    jwtConfiguration: option<jwtconfiguration>,
    @ocaml.doc("<p>The validation expression does not apply to the REQUEST authorizer.</p>")
    @as("IdentityValidationExpression")
    identityValidationExpression: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
    )
    @as("IdentitySource")
    identitySource: option<identitySourceList>,
    @ocaml.doc(
      "<p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
    )
    @as("EnableSimpleResponses")
    enableSimpleResponses: option<__boolean>,
    @ocaml.doc("<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>")
    @as("AuthorizerUri")
    authorizerUri: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
    )
    @as("AuthorizerType")
    authorizerType: option<authorizerType>,
    @ocaml.doc(
      "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
    )
    @as("AuthorizerResultTtlInSeconds")
    authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
    @ocaml.doc(
      "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
    )
    @as("AuthorizerPayloadFormatVersion")
    authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>The authorizer identifier.</p>") @as("AuthorizerId") authorizerId: option<id>,
    @ocaml.doc(
      "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
    )
    @as("AuthorizerCredentialsArn")
    authorizerCredentialsArn: option<arn>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetAuthorizerCommand"
  let make = (~authorizerId, ~apiId, ()) => new({authorizerId: authorizerId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApiMappings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("<p>The domain name.</p>") @as("DomainName") domainName: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<__listOfApiMapping>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetApiMappingsCommand"
  let make = (~domainName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApi = {
  type t
  type request = {@ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string}
  type response = {
    @ocaml.doc(
      "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
    )
    @as("Warnings")
    warnings: option<__listOf__string>,
    @ocaml.doc("<p>A version identifier for the API.</p>") @as("Version")
    version: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>A collection of tags associated with the API.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
    )
    @as("RouteSelectionExpression")
    routeSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API protocol.</p>") @as("ProtocolType") protocolType: option<protocolType>,
    @ocaml.doc("<p>The name of the API.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
    )
    @as("ImportInfo")
    importInfo: option<__listOf__string>,
    @ocaml.doc(
      "<p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>"
    )
    @as("DisableExecuteApiEndpoint")
    disableExecuteApiEndpoint: option<__boolean>,
    @ocaml.doc(
      "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
    )
    @as("DisableSchemaValidation")
    disableSchemaValidation: option<__boolean>,
    @ocaml.doc("<p>The description of the API.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The timestamp when the API was created.</p>") @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
    @ocaml.doc("<p>A CORS configuration. Supported only for HTTP APIs.</p>")
    @as("CorsConfiguration")
    corsConfiguration: option<cors>,
    @ocaml.doc(
      "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
    )
    @as("ApiKeySelectionExpression")
    apiKeySelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API ID.</p>") @as("ApiId") apiId: option<id>,
    @ocaml.doc(
      "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
    @ocaml.doc(
      "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
    )
    @as("ApiEndpoint")
    apiEndpoint: option<__string>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetApiCommand"
  let make = (~apiId, ()) => new({apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStage = {
  type t
  @ocaml.doc("<p>Creates a new Stage resource to represent a stage.</p>")
  type request = {
    @ocaml.doc(
      "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
    )
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>A map that defines the stage variables for a Stage. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
    )
    @as("StageVariables")
    stageVariables: option<stageVariablesMap>,
    @ocaml.doc("<p>The name of the stage.</p>") @as("StageName")
    stageName: stringWithLengthBetween1And128,
    @ocaml.doc("<p>Route settings for the stage, by routeKey.</p>") @as("RouteSettings")
    routeSettings: option<routeSettingsMap>,
    @ocaml.doc("<p>The description for the API stage.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The deployment identifier of the API stage.</p>") @as("DeploymentId")
    deploymentId: option<id>,
    @ocaml.doc("<p>The default route settings for the stage.</p>") @as("DefaultRouteSettings")
    defaultRouteSettings: option<routeSettings>,
    @ocaml.doc(
      "<p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>"
    )
    @as("ClientCertificateId")
    clientCertificateId: option<id>,
    @ocaml.doc(
      "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
    )
    @as("AutoDeploy")
    autoDeploy: option<__boolean>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
    @ocaml.doc("<p>Settings for logging access in this stage.</p>") @as("AccessLogSettings")
    accessLogSettings: option<accessLogSettings>,
  }
  type response = {
    @ocaml.doc(
      "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
    )
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
    )
    @as("StageVariables")
    stageVariables: option<stageVariablesMap>,
    @ocaml.doc("<p>The name of the stage.</p>") @as("StageName")
    stageName: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>Route settings for the stage, by routeKey.</p>") @as("RouteSettings")
    routeSettings: option<routeSettingsMap>,
    @ocaml.doc("<p>The timestamp when the stage was last updated.</p>") @as("LastUpdatedDate")
    lastUpdatedDate: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>"
    )
    @as("LastDeploymentStatusMessage")
    lastDeploymentStatusMessage: option<__string>,
    @ocaml.doc("<p>The description of the stage.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>"
    )
    @as("DeploymentId")
    deploymentId: option<id>,
    @ocaml.doc("<p>Default route settings for the stage.</p>") @as("DefaultRouteSettings")
    defaultRouteSettings: option<routeSettings>,
    @ocaml.doc("<p>The timestamp when the stage was created.</p>") @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>"
    )
    @as("ClientCertificateId")
    clientCertificateId: option<id>,
    @ocaml.doc(
      "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
    )
    @as("AutoDeploy")
    autoDeploy: option<__boolean>,
    @ocaml.doc(
      "<p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
    @ocaml.doc("<p>Settings for logging access in this stage.</p>") @as("AccessLogSettings")
    accessLogSettings: option<accessLogSettings>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateStageCommand"
  let make = (
    ~stageName,
    ~apiId,
    ~tags=?,
    ~stageVariables=?,
    ~routeSettings=?,
    ~description=?,
    ~deploymentId=?,
    ~defaultRouteSettings=?,
    ~clientCertificateId=?,
    ~autoDeploy=?,
    ~accessLogSettings=?,
    (),
  ) =>
    new({
      tags: tags,
      stageVariables: stageVariables,
      stageName: stageName,
      routeSettings: routeSettings,
      description: description,
      deploymentId: deploymentId,
      defaultRouteSettings: defaultRouteSettings,
      clientCertificateId: clientCertificateId,
      autoDeploy: autoDeploy,
      apiId: apiId,
      accessLogSettings: accessLogSettings,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRouteResponse = {
  type t
  @ocaml.doc("<p>Creates a new RouteResponse resource to represent a route response.</p>")
  type request = {
    @ocaml.doc("<p>The route response key.</p>") @as("RouteResponseKey")
    routeResponseKey: selectionKey,
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: __string,
    @ocaml.doc("<p>The route response parameters.</p>") @as("ResponseParameters")
    responseParameters: option<routeParameters>,
    @ocaml.doc("<p>The response models for the route response.</p>") @as("ResponseModels")
    responseModels: option<routeModels>,
    @ocaml.doc(
      "<p>The model selection expression for the route response. Supported only for WebSocket APIs.</p>"
    )
    @as("ModelSelectionExpression")
    modelSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>Represents the route response key of a route response.</p>")
    @as("RouteResponseKey")
    routeResponseKey: option<selectionKey>,
    @ocaml.doc("<p>Represents the identifier of a route response.</p>") @as("RouteResponseId")
    routeResponseId: option<id>,
    @ocaml.doc("<p>Represents the response parameters of a route response.</p>")
    @as("ResponseParameters")
    responseParameters: option<routeParameters>,
    @ocaml.doc("<p>Represents the response models of a route response.</p>") @as("ResponseModels")
    responseModels: option<routeModels>,
    @ocaml.doc(
      "<p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>"
    )
    @as("ModelSelectionExpression")
    modelSelectionExpression: option<selectionExpression>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "CreateRouteResponseCommand"
  let make = (
    ~routeResponseKey,
    ~routeId,
    ~apiId,
    ~responseParameters=?,
    ~responseModels=?,
    ~modelSelectionExpression=?,
    (),
  ) =>
    new({
      routeResponseKey: routeResponseKey,
      routeId: routeId,
      responseParameters: responseParameters,
      responseModels: responseModels,
      modelSelectionExpression: modelSelectionExpression,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRoute = {
  type t
  @ocaml.doc("<p>Creates a new Route resource to represent a route.</p>")
  type request = {
    @ocaml.doc("<p>The target for the route.</p>") @as("Target")
    target: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("RouteResponseSelectionExpression")
    routeResponseSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The route key for the route.</p>") @as("RouteKey") routeKey: selectionKey,
    @ocaml.doc("<p>The request parameters for the route. Supported only for WebSocket APIs.</p>")
    @as("RequestParameters")
    requestParameters: option<routeParameters>,
    @ocaml.doc("<p>The request models for the route. Supported only for WebSocket APIs.</p>")
    @as("RequestModels")
    requestModels: option<routeModels>,
    @ocaml.doc("<p>The operation name for the route.</p>") @as("OperationName")
    operationName: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("ModelSelectionExpression")
    modelSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
    )
    @as("AuthorizerId")
    authorizerId: option<id>,
    @ocaml.doc(
      "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
    )
    @as("AuthorizationType")
    authorizationType: option<authorizationType>,
    @ocaml.doc("<p>The authorization scopes supported by this route.</p>")
    @as("AuthorizationScopes")
    authorizationScopes: option<authorizationScopes>,
    @ocaml.doc(
      "<p>Specifies whether an API key is required for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("ApiKeyRequired")
    apiKeyRequired: option<__boolean>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The target for the route.</p>") @as("Target")
    target: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("RouteResponseSelectionExpression")
    routeResponseSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The route key for the route.</p>") @as("RouteKey")
    routeKey: option<selectionKey>,
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: option<id>,
    @ocaml.doc("<p>The request parameters for the route. Supported only for WebSocket APIs.</p>")
    @as("RequestParameters")
    requestParameters: option<routeParameters>,
    @ocaml.doc("<p>The request models for the route. Supported only for WebSocket APIs.</p>")
    @as("RequestModels")
    requestModels: option<routeModels>,
    @ocaml.doc("<p>The operation name for the route.</p>") @as("OperationName")
    operationName: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
    )
    @as("ModelSelectionExpression")
    modelSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
    )
    @as("AuthorizerId")
    authorizerId: option<id>,
    @ocaml.doc(
      "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
    )
    @as("AuthorizationType")
    authorizationType: option<authorizationType>,
    @ocaml.doc(
      "<p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"
    )
    @as("AuthorizationScopes")
    authorizationScopes: option<authorizationScopes>,
    @ocaml.doc(
      "<p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>"
    )
    @as("ApiKeyRequired")
    apiKeyRequired: option<__boolean>,
    @ocaml.doc(
      "<p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateRouteCommand"
  let make = (
    ~routeKey,
    ~apiId,
    ~target=?,
    ~routeResponseSelectionExpression=?,
    ~requestParameters=?,
    ~requestModels=?,
    ~operationName=?,
    ~modelSelectionExpression=?,
    ~authorizerId=?,
    ~authorizationType=?,
    ~authorizationScopes=?,
    ~apiKeyRequired=?,
    (),
  ) =>
    new({
      target: target,
      routeResponseSelectionExpression: routeResponseSelectionExpression,
      routeKey: routeKey,
      requestParameters: requestParameters,
      requestModels: requestModels,
      operationName: operationName,
      modelSelectionExpression: modelSelectionExpression,
      authorizerId: authorizerId,
      authorizationType: authorizationType,
      authorizationScopes: authorizationScopes,
      apiKeyRequired: apiKeyRequired,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIntegration = {
  type t
  @ocaml.doc("<p>Creates a new Integration resource to represent an integration.</p>")
  type request = {
    @ocaml.doc(
      "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
    )
    @as("TlsConfig")
    tlsConfig: option<tlsConfigInput>,
    @ocaml.doc(
      "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
    )
    @as("TimeoutInMillis")
    timeoutInMillis: option<integerWithLengthBetween50And30000>,
    @ocaml.doc("<p>The template selection expression for the integration.</p>")
    @as("TemplateSelectionExpression")
    templateSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>"
    )
    @as("ResponseParameters")
    responseParameters: option<responseParameters>,
    @ocaml.doc(
      "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
    )
    @as("RequestTemplates")
    requestTemplates: option<templateMap>,
    @ocaml.doc("<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
               , where 
                  <replaceable>{location}</replaceable>
                is querystring, path, or header; and 
                  <replaceable>{name}</replaceable>
                must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to the backend. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt; where action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>")
    @as("RequestParameters")
    requestParameters: option<integrationParameters>,
    @ocaml.doc(
      "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
    )
    @as("PayloadFormatVersion")
    payloadFormatVersion: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
    )
    @as("PassthroughBehavior")
    passthroughBehavior: option<passthroughBehavior>,
    @ocaml.doc(
      "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
    )
    @as("IntegrationUri")
    integrationUri: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration. For HTTP API private integrations, use an HTTP_PROXY integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
    )
    @as("IntegrationType")
    integrationType: integrationType,
    @ocaml.doc(
      "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
    )
    @as("IntegrationSubtype")
    integrationSubtype: option<stringWithLengthBetween1And128>,
    @ocaml.doc("<p>Specifies the integration's HTTP method type.</p>") @as("IntegrationMethod")
    integrationMethod: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>The description of the integration.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
    )
    @as("CredentialsArn")
    credentialsArn: option<arn>,
    @ocaml.doc(
      "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
    )
    @as("ContentHandlingStrategy")
    contentHandlingStrategy: option<contentHandlingStrategy>,
    @ocaml.doc(
      "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
    )
    @as("ConnectionType")
    connectionType: option<connectionType>,
    @ocaml.doc(
      "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
    )
    @as("ConnectionId")
    connectionId: option<stringWithLengthBetween1And1024>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
    )
    @as("TlsConfig")
    tlsConfig: option<tlsConfig>,
    @ocaml.doc(
      "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
    )
    @as("TimeoutInMillis")
    timeoutInMillis: option<integerWithLengthBetween50And30000>,
    @ocaml.doc(
      "<p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>"
    )
    @as("TemplateSelectionExpression")
    templateSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>"
    )
    @as("ResponseParameters")
    responseParameters: option<responseParameters>,
    @ocaml.doc(
      "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
    )
    @as("RequestTemplates")
    requestTemplates: option<templateMap>,
    @ocaml.doc("<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
          , where 
            <replaceable>{location}</replaceable>
           is querystring, path, or header; and 
            <replaceable>{name}</replaceable>
           must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API itegrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to backend integrations. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt;. The action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html\">Transforming API requests and responses</a>.</p>")
    @as("RequestParameters")
    requestParameters: option<integrationParameters>,
    @ocaml.doc(
      "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
    )
    @as("PayloadFormatVersion")
    payloadFormatVersion: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
    )
    @as("PassthroughBehavior")
    passthroughBehavior: option<passthroughBehavior>,
    @ocaml.doc(
      "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
    )
    @as("IntegrationUri")
    integrationUri: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
    )
    @as("IntegrationType")
    integrationType: option<integrationType>,
    @ocaml.doc(
      "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
    )
    @as("IntegrationSubtype")
    integrationSubtype: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions\">Integration Response Selection Expressions</a>.</p>"
    )
    @as("IntegrationResponseSelectionExpression")
    integrationResponseSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>Specifies the integration's HTTP method type.</p>") @as("IntegrationMethod")
    integrationMethod: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>Represents the identifier of an integration.</p>") @as("IntegrationId")
    integrationId: option<id>,
    @ocaml.doc("<p>Represents the description of an integration.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
    )
    @as("CredentialsArn")
    credentialsArn: option<arn>,
    @ocaml.doc(
      "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
    )
    @as("ContentHandlingStrategy")
    contentHandlingStrategy: option<contentHandlingStrategy>,
    @ocaml.doc(
      "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
    )
    @as("ConnectionType")
    connectionType: option<connectionType>,
    @ocaml.doc(
      "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
    )
    @as("ConnectionId")
    connectionId: option<stringWithLengthBetween1And1024>,
    @ocaml.doc(
      "<p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateIntegrationCommand"
  let make = (
    ~integrationType,
    ~apiId,
    ~tlsConfig=?,
    ~timeoutInMillis=?,
    ~templateSelectionExpression=?,
    ~responseParameters=?,
    ~requestTemplates=?,
    ~requestParameters=?,
    ~payloadFormatVersion=?,
    ~passthroughBehavior=?,
    ~integrationUri=?,
    ~integrationSubtype=?,
    ~integrationMethod=?,
    ~description=?,
    ~credentialsArn=?,
    ~contentHandlingStrategy=?,
    ~connectionType=?,
    ~connectionId=?,
    (),
  ) =>
    new({
      tlsConfig: tlsConfig,
      timeoutInMillis: timeoutInMillis,
      templateSelectionExpression: templateSelectionExpression,
      responseParameters: responseParameters,
      requestTemplates: requestTemplates,
      requestParameters: requestParameters,
      payloadFormatVersion: payloadFormatVersion,
      passthroughBehavior: passthroughBehavior,
      integrationUri: integrationUri,
      integrationType: integrationType,
      integrationSubtype: integrationSubtype,
      integrationMethod: integrationMethod,
      description: description,
      credentialsArn: credentialsArn,
      contentHandlingStrategy: contentHandlingStrategy,
      connectionType: connectionType,
      connectionId: connectionId,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomainName = {
  type t
  @ocaml.doc("<p>Creates a new DomainName resource to represent a domain name.</p>")
  type request = {
    @ocaml.doc("<p>The collection of tags associated with a domain name.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The mutual TLS authentication configuration for a custom domain name.</p>")
    @as("MutualTlsAuthentication")
    mutualTlsAuthentication: option<mutualTlsAuthenticationInput>,
    @ocaml.doc("<p>The domain name configurations.</p>") @as("DomainNameConfigurations")
    domainNameConfigurations: option<domainNameConfigurations>,
    @ocaml.doc("<p>The domain name.</p>") @as("DomainName")
    domainName: stringWithLengthBetween1And512,
  }
  type response = {
    @ocaml.doc("<p>The collection of tags associated with a domain name.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The mutual TLS authentication configuration for a custom domain name.</p>")
    @as("MutualTlsAuthentication")
    mutualTlsAuthentication: option<mutualTlsAuthentication>,
    @ocaml.doc("<p>The domain name configurations.</p>") @as("DomainNameConfigurations")
    domainNameConfigurations: option<domainNameConfigurations>,
    @ocaml.doc("<p>The name of the DomainName resource.</p>") @as("DomainName")
    domainName: option<stringWithLengthBetween1And512>,
    @ocaml.doc("<p>The API mapping selection expression.</p>") @as("ApiMappingSelectionExpression")
    apiMappingSelectionExpression: option<selectionExpression>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateDomainNameCommand"
  let make = (~domainName, ~tags=?, ~mutualTlsAuthentication=?, ~domainNameConfigurations=?, ()) =>
    new({
      tags: tags,
      mutualTlsAuthentication: mutualTlsAuthentication,
      domainNameConfigurations: domainNameConfigurations,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAuthorizer = {
  type t
  @ocaml.doc("<p>Creates a new Authorizer resource to represent an authorizer.</p>")
  type request = {
    @ocaml.doc("<p>The name of the authorizer.</p>") @as("Name")
    name: stringWithLengthBetween1And128,
    @ocaml.doc(
      "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
    )
    @as("JwtConfiguration")
    jwtConfiguration: option<jwtconfiguration>,
    @ocaml.doc("<p>This parameter is not used.</p>") @as("IdentityValidationExpression")
    identityValidationExpression: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
    )
    @as("IdentitySource")
    identitySource: identitySourceList,
    @ocaml.doc(
      "<p>Specifies whether a Lambda authorizer returns a response in a simple format. By default, a Lambda authorizer must return an IAM policy. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
    )
    @as("EnableSimpleResponses")
    enableSimpleResponses: option<__boolean>,
    @ocaml.doc("<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>")
    @as("AuthorizerUri")
    authorizerUri: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
    )
    @as("AuthorizerType")
    authorizerType: authorizerType,
    @ocaml.doc(
      "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
    )
    @as("AuthorizerResultTtlInSeconds")
    authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
    @ocaml.doc(
      "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
    )
    @as("AuthorizerPayloadFormatVersion")
    authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
    )
    @as("AuthorizerCredentialsArn")
    authorizerCredentialsArn: option<arn>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc("<p>The name of the authorizer.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
    )
    @as("JwtConfiguration")
    jwtConfiguration: option<jwtconfiguration>,
    @ocaml.doc("<p>The validation expression does not apply to the REQUEST authorizer.</p>")
    @as("IdentityValidationExpression")
    identityValidationExpression: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
    )
    @as("IdentitySource")
    identitySource: option<identitySourceList>,
    @ocaml.doc(
      "<p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
    )
    @as("EnableSimpleResponses")
    enableSimpleResponses: option<__boolean>,
    @ocaml.doc("<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>")
    @as("AuthorizerUri")
    authorizerUri: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
    )
    @as("AuthorizerType")
    authorizerType: option<authorizerType>,
    @ocaml.doc(
      "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
    )
    @as("AuthorizerResultTtlInSeconds")
    authorizerResultTtlInSeconds: option<integerWithLengthBetween0And3600>,
    @ocaml.doc(
      "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
    )
    @as("AuthorizerPayloadFormatVersion")
    authorizerPayloadFormatVersion: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>The authorizer identifier.</p>") @as("AuthorizerId") authorizerId: option<id>,
    @ocaml.doc(
      "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
    )
    @as("AuthorizerCredentialsArn")
    authorizerCredentialsArn: option<arn>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateAuthorizerCommand"
  let make = (
    ~name,
    ~identitySource,
    ~authorizerType,
    ~apiId,
    ~jwtConfiguration=?,
    ~identityValidationExpression=?,
    ~enableSimpleResponses=?,
    ~authorizerUri=?,
    ~authorizerResultTtlInSeconds=?,
    ~authorizerPayloadFormatVersion=?,
    ~authorizerCredentialsArn=?,
    (),
  ) =>
    new({
      name: name,
      jwtConfiguration: jwtConfiguration,
      identityValidationExpression: identityValidationExpression,
      identitySource: identitySource,
      enableSimpleResponses: enableSimpleResponses,
      authorizerUri: authorizerUri,
      authorizerType: authorizerType,
      authorizerResultTtlInSeconds: authorizerResultTtlInSeconds,
      authorizerPayloadFormatVersion: authorizerPayloadFormatVersion,
      authorizerCredentialsArn: authorizerCredentialsArn,
      apiId: apiId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApi = {
  type t
  @ocaml.doc("<p>Creates a new Api resource to represent an API.</p>")
  type request = {
    @ocaml.doc("<p>A version identifier for the API.</p>") @as("Version")
    version: option<stringWithLengthBetween1And64>,
    @ocaml.doc(
      "<p>This property is part of quick create. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. Supported only for HTTP APIs.</p>"
    )
    @as("Target")
    target: option<uriWithLengthBetween1And2048>,
    @ocaml.doc(
      "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
    )
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
    )
    @as("RouteSelectionExpression")
    routeSelectionExpression: option<selectionExpression>,
    @ocaml.doc(
      "<p>This property is part of quick create. If you don't specify a routeKey, a default route of $default is created. The $default route acts as a catch-all for any request made to your API, for a particular stage. The $default route key can't be modified. You can add routes after creating the API, and you can update the route keys of additional routes. Supported only for HTTP APIs.</p>"
    )
    @as("RouteKey")
    routeKey: option<selectionKey>,
    @ocaml.doc("<p>The API protocol.</p>") @as("ProtocolType") protocolType: protocolType,
    @ocaml.doc("<p>The name of the API.</p>") @as("Name") name: stringWithLengthBetween1And128,
    @ocaml.doc(
      "<p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>"
    )
    @as("DisableExecuteApiEndpoint")
    disableExecuteApiEndpoint: option<__boolean>,
    @ocaml.doc(
      "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
    )
    @as("DisableSchemaValidation")
    disableSchemaValidation: option<__boolean>,
    @ocaml.doc("<p>The description of the API.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc(
      "<p>This property is part of quick create. It specifies the credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null. Currently, this property is not used for HTTP integrations. Supported only for HTTP APIs.</p>"
    )
    @as("CredentialsArn")
    credentialsArn: option<arn>,
    @ocaml.doc(
      "<p>A CORS configuration. Supported only for HTTP APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html\">Configuring CORS</a> for more information.</p>"
    )
    @as("CorsConfiguration")
    corsConfiguration: option<cors>,
    @ocaml.doc(
      "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
    )
    @as("ApiKeySelectionExpression")
    apiKeySelectionExpression: option<selectionExpression>,
  }
  type response = {
    @ocaml.doc(
      "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
    )
    @as("Warnings")
    warnings: option<__listOf__string>,
    @ocaml.doc("<p>A version identifier for the API.</p>") @as("Version")
    version: option<stringWithLengthBetween1And64>,
    @ocaml.doc("<p>A collection of tags associated with the API.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
    )
    @as("RouteSelectionExpression")
    routeSelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API protocol.</p>") @as("ProtocolType") protocolType: option<protocolType>,
    @ocaml.doc("<p>The name of the API.</p>") @as("Name")
    name: option<stringWithLengthBetween1And128>,
    @ocaml.doc(
      "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
    )
    @as("ImportInfo")
    importInfo: option<__listOf__string>,
    @ocaml.doc(
      "<p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>"
    )
    @as("DisableExecuteApiEndpoint")
    disableExecuteApiEndpoint: option<__boolean>,
    @ocaml.doc(
      "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
    )
    @as("DisableSchemaValidation")
    disableSchemaValidation: option<__boolean>,
    @ocaml.doc("<p>The description of the API.</p>") @as("Description")
    description: option<stringWithLengthBetween0And1024>,
    @ocaml.doc("<p>The timestamp when the API was created.</p>") @as("CreatedDate")
    createdDate: option<__timestampIso8601>,
    @ocaml.doc("<p>A CORS configuration. Supported only for HTTP APIs.</p>")
    @as("CorsConfiguration")
    corsConfiguration: option<cors>,
    @ocaml.doc(
      "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
    )
    @as("ApiKeySelectionExpression")
    apiKeySelectionExpression: option<selectionExpression>,
    @ocaml.doc("<p>The API ID.</p>") @as("ApiId") apiId: option<id>,
    @ocaml.doc(
      "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
    )
    @as("ApiGatewayManaged")
    apiGatewayManaged: option<__boolean>,
    @ocaml.doc(
      "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
    )
    @as("ApiEndpoint")
    apiEndpoint: option<__string>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "CreateApiCommand"
  let make = (
    ~protocolType,
    ~name,
    ~version=?,
    ~target=?,
    ~tags=?,
    ~routeSelectionExpression=?,
    ~routeKey=?,
    ~disableExecuteApiEndpoint=?,
    ~disableSchemaValidation=?,
    ~description=?,
    ~credentialsArn=?,
    ~corsConfiguration=?,
    ~apiKeySelectionExpression=?,
    (),
  ) =>
    new({
      version: version,
      target: target,
      tags: tags,
      routeSelectionExpression: routeSelectionExpression,
      routeKey: routeKey,
      protocolType: protocolType,
      name: name,
      disableExecuteApiEndpoint: disableExecuteApiEndpoint,
      disableSchemaValidation: disableSchemaValidation,
      description: description,
      credentialsArn: credentialsArn,
      corsConfiguration: corsConfiguration,
      apiKeySelectionExpression: apiKeySelectionExpression,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVpcLinks = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A collection of VPC links.</p>") @as("Items") items: option<__listOfVpcLink>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetVpcLinksCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIntegrationResponses = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("<p>The integration ID.</p>") @as("IntegrationId") integrationId: __string,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<__listOfIntegrationResponse>,
  }
  @module("@aws-sdk/client-apigateway") @new
  external new: request => t = "GetIntegrationResponsesCommand"
  let make = (~integrationId, ~apiId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, integrationId: integrationId, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStages = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<__listOfStage>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetStagesCommand"
  let make = (~apiId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRoutes = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<__listOfRoute>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetRoutesCommand"
  let make = (~apiId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRouteResponses = {
  type t
  type request = {
    @ocaml.doc("<p>The route ID.</p>") @as("RouteId") routeId: __string,
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<__listOfRouteResponse>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetRouteResponsesCommand"
  let make = (~routeId, ~apiId, ~nextToken=?, ~maxResults=?, ()) =>
    new({routeId: routeId, nextToken: nextToken, maxResults: maxResults, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIntegrations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<__listOfIntegration>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetIntegrationsCommand"
  let make = (~apiId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainNames = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<__listOfDomainName>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetDomainNamesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAuthorizers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
    @ocaml.doc("<p>The API identifier.</p>") @as("ApiId") apiId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<__listOfAuthorizer>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetAuthorizersCommand"
  let make = (~apiId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, apiId: apiId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApis = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of elements to be returned for this resource.</p>")
    @as("MaxResults")
    maxResults: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items") items: option<__listOfApi>,
  }
  @module("@aws-sdk/client-apigateway") @new external new: request => t = "GetApisCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
