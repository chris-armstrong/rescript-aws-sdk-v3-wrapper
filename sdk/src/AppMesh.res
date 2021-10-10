type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-appmesh") @new
external createClient: unit => awsServiceClient = "AppMeshClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type virtualServiceStatusCode = [
  | @as("DELETED") #DELETED
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
]

type virtualRouterStatusCode = [
  | @as("DELETED") #DELETED
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
]

type virtualNodeStatusCode = [
  | @as("DELETED") #DELETED
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
]

type virtualGatewayStatusCode = [
  | @as("DELETED") #DELETED
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
]
type virtualGatewaySdsSecretName = string
type virtualGatewayPortProtocol = [@as("grpc") #Grpc | @as("http2") #Http2 | @as("http") #Http]
type virtualGatewayListenerTlsMode = [
  | @as("DISABLED") #DISABLED
  | @as("PERMISSIVE") #PERMISSIVE
  | @as("STRICT") #STRICT
]
type virtualGatewayHealthCheckTimeoutMillis = float
type virtualGatewayHealthCheckThreshold = int
type virtualGatewayHealthCheckIntervalMillis = float

type tcpRetryPolicyEvent = [@as("connection-error") #Connection_Error]
type tagsLimit = int
type tagValue = string
type tagKey = string
type subjectAlternativeName = string
type serviceName = string
type sdsSecretName = string
type routeStatusCode = [@as("DELETED") #DELETED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type routePriority = int

type resourceName = string
type portProtocol = [@as("grpc") #Grpc | @as("http2") #Http2 | @as("tcp") #Tcp | @as("http") #Http]
type portNumber = int
type percentInt = int
type outlierDetectionMaxServerErrors = float
type outlierDetectionMaxEjectionPercent = int
type methodName = string
type meshStatusCode = [@as("DELETED") #DELETED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]

type maxRetries = float
type maxRequests = int
type maxPendingRequests = int
type maxConnections = int
@ocaml.doc(
  "<p>An object that represents the range of values to match on. The first character of the range is included in the range, though the last character is not. For example, if the range specified were 1-100, only values 1-99 would be matched.</p>"
)
type matchRange = {
  @ocaml.doc("<p>The end of the range.</p>") end: baseLong,
  @ocaml.doc("<p>The start of the range.</p>") start: baseLong,
}
type listenerTlsMode = [
  | @as("DISABLED") #DISABLED
  | @as("PERMISSIVE") #PERMISSIVE
  | @as("STRICT") #STRICT
]
type listVirtualServicesLimit = int
type listVirtualRoutersLimit = int
type listVirtualNodesLimit = int
type listVirtualGatewaysLimit = int
type listRoutesLimit = int
type listMeshesLimit = int
type listGatewayRoutesLimit = int
type httpScheme = [@as("https") #Https | @as("http") #Http]
type httpRetryPolicyEvent = string
type httpMethod = [
  | @as("PATCH") #PATCH
  | @as("TRACE") #TRACE
  | @as("OPTIONS") #OPTIONS
  | @as("CONNECT") #CONNECT
  | @as("DELETE") #DELETE
  | @as("PUT") #PUT
  | @as("POST") #POST
  | @as("HEAD") #HEAD
  | @as("GET") #GET
]
@ocaml.doc("<p>An object that represents the criteria for determining a request match.</p>")
type httpGatewayRouteMatch = {
  @ocaml.doc("<p>Specifies the path to match requests with. This parameter must always start with
            <code>/</code>, which by itself matches all requests to the virtual service name. You
         can also match for path-based routing of requests. For example, if your virtual service
         name is <code>my-service.local</code> and you want the route to match requests to
            <code>my-service.local/metrics</code>, your prefix should be
         <code>/metrics</code>.</p>")
  prefix: baseString,
}
type hostname = string
type healthCheckTimeoutMillis = float
type healthCheckThreshold = int
type healthCheckIntervalMillis = float
type headerName = string
type headerMatch = string
type grpcRetryPolicyEvent = [
  | @as("unavailable") #Unavailable
  | @as("resource-exhausted") #Resource_Exhausted
  | @as("internal") #Internal
  | @as("deadline-exceeded") #Deadline_Exceeded
  | @as("cancelled") #Cancelled
]
type gatewayRouteStatusCode = [
  | @as("DELETED") #DELETED
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
]

type filePath = string
type egressFilterType = [@as("DROP_ALL") #DROP_ALL | @as("ALLOW_ALL") #ALLOW_ALL]
type durationValue = float
type durationUnit = [@as("ms") #Ms | @as("s") #S]
type awsCloudMapName = string
type awsCloudMapInstanceAttributeValue = string
type awsCloudMapInstanceAttributeKey = string
type arn = string
type accountId = string
@ocaml.doc("<p>An object that represents a target and its relative weight. Traffic is distributed
         across targets according to their relative weight. For example, a weighted target with a
         relative weight of 50 receives five times as much traffic as one with a relative weight of
         10. The total weight for all targets combined must be less than or equal to 100.</p>")
type weightedTarget = {
  @ocaml.doc("<p>The relative weight of the weighted target.</p>") weight: percentInt,
  @ocaml.doc("<p>The virtual node to associate with the weighted target.</p>")
  virtualNode: resourceName,
}
@ocaml.doc("<p>An object that represents the status of a virtual service.</p>")
type virtualServiceStatus = {
  @ocaml.doc("<p>The current status of the virtual service.</p>") status: virtualServiceStatusCode,
}
@ocaml.doc("<p>An object that represents a virtual service returned by a list operation.</p>")
type virtualServiceRef = {
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>")
  lastUpdatedAt: baseTimestamp,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc(
    "<p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>"
  )
  version: baseLong,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) for the virtual service.</p>") arn: arn,
  @ocaml.doc("<p>The AWS IAM account ID of the resource owner. If the account ID is not your own, then it's
               the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  resourceOwner: accountId,
  @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  meshOwner: accountId,
  @ocaml.doc("<p>The name of the virtual service.</p>") virtualServiceName: serviceName,
  @ocaml.doc("<p>The name of the service mesh that the virtual service resides in.</p>")
  meshName: resourceName,
}
@ocaml.doc("<p>An object that represents the status of a virtual router. </p>")
type virtualRouterStatus = {
  @ocaml.doc("<p>The current status of the virtual router.</p>") status: virtualRouterStatusCode,
}
@ocaml.doc("<p>An object that represents a virtual node service provider.</p>")
type virtualRouterServiceProvider = {
  @ocaml.doc("<p>The name of the virtual router that is acting as a service provider.</p>")
  virtualRouterName: resourceName,
}
@ocaml.doc("<p>An object that represents a virtual router returned by a list operation.</p>")
type virtualRouterRef = {
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>")
  lastUpdatedAt: baseTimestamp,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc(
    "<p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>"
  )
  version: baseLong,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) for the virtual router.</p>") arn: arn,
  @ocaml.doc("<p>The AWS IAM account ID of the resource owner. If the account ID is not your own, then it's
               the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  resourceOwner: accountId,
  @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  meshOwner: accountId,
  @ocaml.doc("<p>The name of the virtual router.</p>") virtualRouterName: resourceName,
  @ocaml.doc("<p>The name of the service mesh that the virtual router resides in.</p>")
  meshName: resourceName,
}
@ocaml.doc("<p>An object that represents a type of connection pool.</p>")
type virtualNodeTcpConnectionPool = {
  @ocaml.doc("<p>Maximum number of outbound TCP connections Envoy can establish concurrently with all
         hosts in upstream cluster.</p>")
  maxConnections: maxConnections,
}
@ocaml.doc("<p>An object that represents the current status of the virtual node.</p>")
type virtualNodeStatus = {
  @ocaml.doc("<p>The current status of the virtual node.</p>") status: virtualNodeStatusCode,
}
@ocaml.doc("<p>An object that represents a virtual node service provider.</p>")
type virtualNodeServiceProvider = {
  @ocaml.doc("<p>The name of the virtual node that is acting as a service provider.</p>")
  virtualNodeName: resourceName,
}
@ocaml.doc("<p>An object that represents a virtual node returned by a list operation.</p>")
type virtualNodeRef = {
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>")
  lastUpdatedAt: baseTimestamp,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc(
    "<p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>"
  )
  version: baseLong,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) for the virtual node.</p>") arn: arn,
  @ocaml.doc("<p>The AWS IAM account ID of the resource owner. If the account ID is not your own, then it's
               the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  resourceOwner: accountId,
  @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  meshOwner: accountId,
  @ocaml.doc("<p>The name of the virtual node.</p>") virtualNodeName: resourceName,
  @ocaml.doc("<p>The name of the service mesh that the virtual node resides in.</p>")
  meshName: resourceName,
}
@ocaml.doc("<p>An object that represents a type of connection pool.</p>")
type virtualNodeHttpConnectionPool = {
  @ocaml.doc("<p>Number of overflowing requests after <code>max_connections</code> Envoy will queue to
         upstream cluster.</p>")
  maxPendingRequests: option<maxPendingRequests>,
  @ocaml.doc("<p>Maximum number of outbound TCP connections Envoy can establish concurrently with all
         hosts in upstream cluster.</p>")
  maxConnections: maxConnections,
}
@ocaml.doc("<p>An object that represents a type of connection pool.</p>")
type virtualNodeHttp2ConnectionPool = {
  @ocaml.doc("<p>Maximum number of inflight requests Envoy can concurrently support across hosts in
         upstream cluster.</p>")
  maxRequests: maxRequests,
}
@ocaml.doc("<p>An object that represents a type of connection pool.</p>")
type virtualNodeGrpcConnectionPool = {
  @ocaml.doc("<p>Maximum number of inflight requests Envoy can concurrently support across hosts in
         upstream cluster.</p>")
  maxRequests: maxRequests,
}
@ocaml.doc("<p>An object that represents a virtual gateway's listener's Transport Layer Security (TLS) Secret Discovery Service
         validation context trust. The proxy must be configured with a local SDS provider via a Unix
         Domain Socket. See App Mesh <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html\">TLS
            documentation</a> for more info.</p>")
type virtualGatewayTlsValidationContextSdsTrust = {
  @ocaml.doc("<p>A reference to an object that represents the name of the secret for a virtual gateway's
         Transport Layer Security (TLS) Secret Discovery Service validation context trust.</p>")
  secretName: virtualGatewaySdsSecretName,
}
@ocaml.doc(
  "<p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>"
)
type virtualGatewayTlsValidationContextFileTrust = {
  @ocaml.doc("<p>The certificate trust chain for a certificate stored on the file system of the virtual
         node that the proxy is running on.</p>")
  certificateChain: filePath,
}
@ocaml.doc("<p>An object that represents the status of the mesh resource.</p>")
type virtualGatewayStatus = {
  @ocaml.doc("<p>The current status.</p>") status: virtualGatewayStatusCode,
}
@ocaml.doc("<p>An object that represents a virtual gateway returned by a list operation.</p>")
type virtualGatewayRef = {
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>")
  lastUpdatedAt: baseTimestamp,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc(
    "<p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>"
  )
  version: baseLong,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) for the resource.</p>") arn: arn,
  @ocaml.doc("<p>The AWS IAM account ID of the resource owner. If the account ID is not your own, then it's
               the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  resourceOwner: accountId,
  @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  meshOwner: accountId,
  @ocaml.doc("<p>The name of the resource.</p>") virtualGatewayName: resourceName,
  @ocaml.doc("<p>The name of the service mesh that the resource resides in.</p>")
  meshName: resourceName,
}
@ocaml.doc("<p>An object that represents a port mapping.</p>")
type virtualGatewayPortMapping = {
  @ocaml.doc("<p>The protocol used for the port mapping.</p>") protocol: virtualGatewayPortProtocol,
  @ocaml.doc("<p>The port used for the port mapping. Specify one protocol.</p>") port: portNumber,
}
@ocaml.doc("<p>An object that represents the virtual gateway's listener's Secret Discovery Service
         certificate.The proxy must be configured with a local SDS provider via a Unix Domain
         Socket. See App Mesh <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html\">TLS
            documentation</a> for more info. </p>")
type virtualGatewayListenerTlsSdsCertificate = {
  @ocaml.doc("<p>A reference to an object that represents the name of the secret secret requested from
         the Secret Discovery Service provider representing Transport Layer Security (TLS) materials like a certificate or
         certificate chain.</p>")
  secretName: virtualGatewaySdsSecretName,
}
@ocaml.doc("<p>An object that represents a local file certificate.
         The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites\">Transport Layer Security (TLS)</a>.</p>")
type virtualGatewayListenerTlsFileCertificate = {
  @ocaml.doc("<p>The private key for a certificate stored on the file system of the mesh endpoint that
         the proxy is running on.</p>")
  privateKey: filePath,
  @ocaml.doc("<p>The certificate chain for the certificate.</p>") certificateChain: filePath,
}
@ocaml.doc("<p>An object that represents an AWS Certicate Manager (ACM) certificate.</p>")
type virtualGatewayListenerTlsAcmCertificate = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) for the certificate. The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites\">Transport Layer Security (TLS)</a>.</p>"
  )
  certificateArn: arn,
}
@ocaml.doc("<p>An object that represents a type of connection pool.</p>")
type virtualGatewayHttpConnectionPool = {
  @ocaml.doc("<p>Number of overflowing requests after <code>max_connections</code> Envoy will queue to
         upstream cluster.</p>")
  maxPendingRequests: option<maxPendingRequests>,
  @ocaml.doc("<p>Maximum number of outbound TCP connections Envoy can establish concurrently with all
         hosts in upstream cluster.</p>")
  maxConnections: maxConnections,
}
@ocaml.doc("<p>An object that represents a type of connection pool.</p>")
type virtualGatewayHttp2ConnectionPool = {
  @ocaml.doc("<p>Maximum number of inflight requests Envoy can concurrently support across hosts in
         upstream cluster.</p>")
  maxRequests: maxRequests,
}
@ocaml.doc("<p>An object that represents the health check policy for a virtual gateway's
         listener.</p>")
type virtualGatewayHealthCheckPolicy = {
  @ocaml.doc("<p>The number of consecutive failed health checks that must occur before declaring a
         virtual gateway unhealthy.</p>")
  unhealthyThreshold: virtualGatewayHealthCheckThreshold,
  @ocaml.doc("<p>The number of consecutive successful health checks that must occur before declaring the
         listener healthy.</p>")
  healthyThreshold: virtualGatewayHealthCheckThreshold,
  @ocaml.doc("<p>The destination path for the health check request. This value is only used if the
         specified protocol is HTTP or HTTP/2. For any other protocol, this value is ignored.</p>")
  path: option<baseString>,
  @ocaml.doc("<p>The destination port for the health check request. This port must match the port defined
         in the <a>PortMapping</a> for the listener.</p>")
  port: option<portNumber>,
  @ocaml.doc("<p>The protocol for the health check request. If you specify <code>grpc</code>, then your
         service must conform to the <a href=\"https://github.com/grpc/grpc/blob/master/doc/health-checking.md\">GRPC Health
            Checking Protocol</a>.</p>")
  protocol: virtualGatewayPortProtocol,
  @ocaml.doc("<p>The time period in milliseconds between each health check execution.</p>")
  intervalMillis: virtualGatewayHealthCheckIntervalMillis,
  @ocaml.doc("<p>The amount of time to wait when receiving a response from the health check, in
         milliseconds.</p>")
  timeoutMillis: virtualGatewayHealthCheckTimeoutMillis,
}
@ocaml.doc("<p>An object that represents a type of connection pool.</p>")
type virtualGatewayGrpcConnectionPool = {
  @ocaml.doc("<p>Maximum number of inflight requests Envoy can concurrently support across hosts in
         upstream cluster.</p>")
  maxRequests: maxRequests,
}
@ocaml.doc("<p>An object that represents an access log file.</p>")
type virtualGatewayFileAccessLog = {
  @ocaml.doc("<p>The file path to write access logs to. You can use <code>/dev/stdout</code> to send
         access logs to standard out and configure your Envoy container to use a log driver, such as
            <code>awslogs</code>, to export the access logs to a log storage service such as Amazon
         CloudWatch Logs. You can also specify a path in the Envoy container's file system to write
         the files to disk.</p>")
  path: filePath,
}
type virtualGatewayCertificateAuthorityArns = array<arn>
@ocaml.doc("<p>An object that represents a Transport Layer Security (TLS) Secret Discovery Service validation context trust. The
         proxy must be configured with a local SDS provider via a Unix Domain Socket. See App Mesh
            <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html\">TLS
            documentation</a> for more info.</p>")
type tlsValidationContextSdsTrust = {
  @ocaml.doc("<p>A reference to an object that represents the name of the secret for a Transport Layer Security (TLS) Secret
         Discovery Service validation context trust.</p>")
  secretName: sdsSecretName,
}
@ocaml.doc(
  "<p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>"
)
type tlsValidationContextFileTrust = {
  @ocaml.doc("<p>The certificate trust chain for a certificate stored on the file system of the virtual
         node that the proxy is running on.</p>")
  certificateChain: filePath,
}
type tcpRetryPolicyEvents = array<tcpRetryPolicyEvent>
@ocaml.doc("<p>Optional metadata that you apply to a resource to assist with categorization and
         organization. Each tag consists of a key and an optional value, both of which you define.
         Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
type tagRef = {
  @ocaml.doc("<p>The optional part of a key-value pair that make up a tag. A <code>value</code> acts as a
         descriptor within a tag category (key).</p>")
  value: tagValue,
  @ocaml.doc("<p>One part of a key-value pair that make up a tag. A <code>key</code> is a general label
         that acts like a category for more specific tag values.</p>")
  key: tagKey,
}
type tagKeyList = array<tagKey>
type subjectAlternativeNameList = array<subjectAlternativeName>
@ocaml.doc("<p>An object that represents the current status of a route.</p>")
type routeStatus = {@ocaml.doc("<p>The current status for the route.</p>") status: routeStatusCode}
@ocaml.doc("<p>An object that represents a route returned by a list operation.</p>")
type routeRef = {
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>")
  lastUpdatedAt: baseTimestamp,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc(
    "<p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>"
  )
  version: baseLong,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) for the route.</p>") arn: arn,
  @ocaml.doc("<p>The AWS IAM account ID of the resource owner. If the account ID is not your own, then it's
               the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  resourceOwner: accountId,
  @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  meshOwner: accountId,
  @ocaml.doc("<p>The name of the route.</p>") routeName: resourceName,
  @ocaml.doc("<p>The virtual router that the route is associated with.</p>")
  virtualRouterName: resourceName,
  @ocaml.doc("<p>The name of the service mesh that the route resides in.</p>")
  meshName: resourceName,
}
@ocaml.doc("<p>An object that represents metadata for a resource.</p>")
type resourceMetadata = {
  @ocaml.doc("<p>The AWS IAM account ID of the resource owner. If the account ID is not your own, then it's
               the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  resourceOwner: accountId,
  @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  meshOwner: accountId,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>")
  lastUpdatedAt: baseTimestamp,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc("<p>The unique identifier for the resource.</p>") uid: baseString,
  @ocaml.doc(
    "<p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>"
  )
  version: baseLong,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) for the resource.</p>") arn: arn,
}
type portSet = array<portNumber>
@ocaml.doc("<p>An object that represents a port mapping.</p>")
type portMapping = {
  @ocaml.doc("<p>The protocol used for the port mapping. Specify one protocol.</p>")
  protocol: portProtocol,
  @ocaml.doc("<p>The port used for the port mapping.</p>") port: portNumber,
}
@ocaml.doc("<p>An object that represents the status of a service mesh.</p>")
type meshStatus = {@ocaml.doc("<p>The current mesh status.</p>") status: option<meshStatusCode>}
@ocaml.doc("<p>An object that represents a service mesh returned by a list operation.</p>")
type meshRef = {
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>")
  lastUpdatedAt: baseTimestamp,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc(
    "<p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>"
  )
  version: baseLong,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the service mesh.</p>") arn: arn,
  @ocaml.doc("<p>The AWS IAM account ID of the resource owner. If the account ID is not your own, then it's
               the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  resourceOwner: accountId,
  @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  meshOwner: accountId,
  @ocaml.doc("<p>The name of the service mesh.</p>") meshName: resourceName,
}
@ocaml.doc("<p>An object that represents the listener's Secret Discovery Service certificate. The proxy
         must be configured with a local SDS provider via a Unix Domain Socket. See App Mesh <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html\">TLS
            documentation</a> for more info.</p>")
type listenerTlsSdsCertificate = {
  @ocaml.doc("<p>A reference to an object that represents the name of the secret requested from the
         Secret Discovery Service provider representing Transport Layer Security (TLS) materials like a certificate or
         certificate chain.</p>")
  secretName: sdsSecretName,
}
@ocaml.doc("<p>An object that represents a local file certificate.
         The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites\">Transport Layer Security (TLS)</a>.</p>")
type listenerTlsFileCertificate = {
  @ocaml.doc("<p>The private key for a certificate stored on the file system of the virtual node that the
         proxy is running on.</p>")
  privateKey: filePath,
  @ocaml.doc("<p>The certificate chain for the certificate.</p>") certificateChain: filePath,
}
@ocaml.doc("<p>An object that represents an AWS Certicate Manager (ACM) certificate.</p>")
type listenerTlsAcmCertificate = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) for the certificate. The certificate must meet specific requirements and you must have proxy authorization enabled. For more information, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites\">Transport Layer Security (TLS)</a>.</p>"
  )
  certificateArn: arn,
}
type httpRetryPolicyEvents = array<httpRetryPolicyEvent>
@ocaml.doc(
  "<p>An object that represents the health check policy for a virtual node's listener.</p>"
)
type healthCheckPolicy = {
  @ocaml.doc("<p>The number of consecutive failed health checks that must occur before declaring a
         virtual node unhealthy. </p>")
  unhealthyThreshold: healthCheckThreshold,
  @ocaml.doc("<p>The number of consecutive successful health checks that must occur before declaring
         listener healthy.</p>")
  healthyThreshold: healthCheckThreshold,
  @ocaml.doc("<p>The destination path for the health check request. This value is only used if the
         specified protocol is HTTP or HTTP/2. For any other protocol, this value is ignored.</p>")
  path: option<baseString>,
  @ocaml.doc("<p>The destination port for the health check request. This port must match the port defined
         in the <a>PortMapping</a> for the listener.</p>")
  port: option<portNumber>,
  @ocaml.doc("<p>The protocol for the health check request. If you specify <code>grpc</code>, then your
         service must conform to the <a href=\"https://github.com/grpc/grpc/blob/master/doc/health-checking.md\">GRPC Health
            Checking Protocol</a>.</p>")
  protocol: portProtocol,
  @ocaml.doc("<p>The time period in milliseconds between each health check execution.</p>")
  intervalMillis: healthCheckIntervalMillis,
  @ocaml.doc("<p>The amount of time to wait when receiving a response from the health check, in
         milliseconds.</p>")
  timeoutMillis: healthCheckTimeoutMillis,
}
@ocaml.doc("<p>An object that represents the method and value to match with the header value sent in a
         request. Specify one match method.</p>")
type headerMatchMethod = {
  @ocaml.doc("<p>The value sent by the client must end with the specified characters.</p>")
  suffix: option<headerMatch>,
  @ocaml.doc("<p>The value sent by the client must begin with the specified characters.</p>")
  prefix: option<headerMatch>,
  @ocaml.doc("<p>An object that represents the range of values to match on.</p>")
  range: option<matchRange>,
  @ocaml.doc("<p>The value sent by the client must include the specified characters.</p>")
  regex: option<headerMatch>,
  @ocaml.doc("<p>The value sent by the client must match the specified value exactly.</p>")
  exact: option<headerMatch>,
}
module HeaderMatchMethod = {
  type t =
    | Suffix(headerMatch)
    | Prefix(headerMatch)
    | Range(matchRange)
    | Regex(headerMatch)
    | Exact(headerMatch)
  exception HeaderMatchMethodUnspecified
  let classify = value =>
    switch value {
    | {suffix: Some(x)} => Suffix(x)
    | {prefix: Some(x)} => Prefix(x)
    | {range: Some(x)} => Range(x)
    | {regex: Some(x)} => Regex(x)
    | {exact: Some(x)} => Exact(x)
    | _ => raise(HeaderMatchMethodUnspecified)
    }

  let make = value =>
    switch value {
    | Suffix(x) => {suffix: Some(x), prefix: None, range: None, regex: None, exact: None}
    | Prefix(x) => {prefix: Some(x), suffix: None, range: None, regex: None, exact: None}
    | Range(x) => {range: Some(x), suffix: None, prefix: None, regex: None, exact: None}
    | Regex(x) => {regex: Some(x), suffix: None, prefix: None, range: None, exact: None}
    | Exact(x) => {exact: Some(x), suffix: None, prefix: None, range: None, regex: None}
    }
}
@ocaml.doc("<p>An object that represents the match method. Specify one of the match values.</p>")
type grpcRouteMetadataMatchMethod = {
  @ocaml.doc("<p>The value sent by the client must end with the specified characters.</p>")
  suffix: option<headerMatch>,
  @ocaml.doc("<p>The value sent by the client must begin with the specified characters.</p>")
  prefix: option<headerMatch>,
  @ocaml.doc("<p>An object that represents the range of values to match on.</p>")
  range: option<matchRange>,
  @ocaml.doc("<p>The value sent by the client must include the specified characters.</p>")
  regex: option<headerMatch>,
  @ocaml.doc("<p>The value sent by the client must match the specified value exactly.</p>")
  exact: option<headerMatch>,
}
module GrpcRouteMetadataMatchMethod = {
  type t =
    | Suffix(headerMatch)
    | Prefix(headerMatch)
    | Range(matchRange)
    | Regex(headerMatch)
    | Exact(headerMatch)
  exception GrpcRouteMetadataMatchMethodUnspecified
  let classify = value =>
    switch value {
    | {suffix: Some(x)} => Suffix(x)
    | {prefix: Some(x)} => Prefix(x)
    | {range: Some(x)} => Range(x)
    | {regex: Some(x)} => Regex(x)
    | {exact: Some(x)} => Exact(x)
    | _ => raise(GrpcRouteMetadataMatchMethodUnspecified)
    }

  let make = value =>
    switch value {
    | Suffix(x) => {suffix: Some(x), prefix: None, range: None, regex: None, exact: None}
    | Prefix(x) => {prefix: Some(x), suffix: None, range: None, regex: None, exact: None}
    | Range(x) => {range: Some(x), suffix: None, prefix: None, regex: None, exact: None}
    | Regex(x) => {regex: Some(x), suffix: None, prefix: None, range: None, exact: None}
    | Exact(x) => {exact: Some(x), suffix: None, prefix: None, range: None, regex: None}
    }
}
type grpcRetryPolicyEvents = array<grpcRetryPolicyEvent>
@ocaml.doc("<p>An object that represents the criteria for determining a request match.</p>")
type grpcGatewayRouteMatch = {
  @ocaml.doc("<p>The fully qualified domain name for the service to match from the request.</p>")
  serviceName: option<serviceName>,
}
@ocaml.doc("<p>An object that represents the virtual service that traffic is routed to.</p>")
type gatewayRouteVirtualService = {
  @ocaml.doc("<p>The name of the virtual service that traffic is routed to.</p>")
  virtualServiceName: resourceName,
}
@ocaml.doc("<p>An object that represents the current status of a gateway route.</p>")
type gatewayRouteStatus = {
  @ocaml.doc("<p>The current status for the gateway route.</p>") status: gatewayRouteStatusCode,
}
@ocaml.doc("<p>An object that represents a gateway route returned by a list operation.</p>")
type gatewayRouteRef = {
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was last updated.</p>")
  lastUpdatedAt: baseTimestamp,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the resource was created.</p>")
  createdAt: baseTimestamp,
  @ocaml.doc(
    "<p>The version of the resource. Resources are created at version 1, and this version is incremented each time that they're updated.</p>"
  )
  version: baseLong,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) for the gateway route.</p>") arn: arn,
  @ocaml.doc("<p>The AWS IAM account ID of the resource owner. If the account ID is not your own, then it's
               the ID of the mesh owner or of another account that the mesh is shared with. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  resourceOwner: accountId,
  @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
  meshOwner: accountId,
  @ocaml.doc("<p>The virtual gateway that the gateway route is associated with.</p>")
  virtualGatewayName: resourceName,
  @ocaml.doc("<p>The name of the gateway route.</p>") gatewayRouteName: resourceName,
  @ocaml.doc("<p>The name of the service mesh that the resource resides in. </p>")
  meshName: resourceName,
}
@ocaml.doc("<p>An object that represents an access log file.</p>")
type fileAccessLog = {
  @ocaml.doc("<p>The file path to write access logs to. You can use <code>/dev/stdout</code> to send
         access logs to standard out and configure your Envoy container to use a log driver, such as
            <code>awslogs</code>, to export the access logs to a log storage service such as Amazon
         CloudWatch Logs. You can also specify a path in the Envoy container's file system to write
         the files to disk.</p> 
         <note>
            <p>The Envoy process must have write permissions to the path that you specify here.
            Otherwise, Envoy fails to bootstrap properly.</p>
         </note>")
  path: filePath,
}
@ocaml.doc("<p>An object that represents the egress filter rules for a service mesh.</p>")
type egressFilter = {
  @ocaml.doc("<p>The egress filter type. By default, the type is <code>DROP_ALL</code>, which allows
         egress only from virtual nodes to other defined resources in the service mesh (and any
         traffic to <code>*.amazonaws.com</code> for AWS API calls). You can set the egress filter
         type to <code>ALLOW_ALL</code> to allow egress to any endpoint inside or outside of the
         service mesh.</p>")
  @as("type")
  type_: egressFilterType,
}
@ocaml.doc("<p>An object that represents a duration of time.</p>")
type duration = {
  @ocaml.doc("<p>A unit of time.</p>") @as("unit") unit_: option<durationUnit>,
  @ocaml.doc("<p>A number of time units.</p>") value: option<durationValue>,
}
@ocaml.doc("<p>An object that represents the DNS service discovery information for your virtual
         node.</p>")
type dnsServiceDiscovery = {
  @ocaml.doc("<p>Specifies the DNS service discovery hostname for the virtual node. </p>")
  hostname: hostname,
}
type certificateAuthorityArns = array<arn>
@ocaml.doc("<p>An object that represents the AWS Cloud Map attribute information for your virtual
         node.</p>
         <note>
            <p>AWS Cloud Map is not available in the eu-south-1 Region.</p>
         </note>")
type awsCloudMapInstanceAttribute = {
  @ocaml.doc("<p>The value of an AWS Cloud Map service instance attribute key. Any AWS Cloud Map service
         instance that contains the specified key and value is returned.</p>")
  value: awsCloudMapInstanceAttributeValue,
  @ocaml.doc("<p>The name of an AWS Cloud Map service instance attribute key. Any AWS Cloud Map service
         instance that contains the specified key and value is returned.</p>")
  key: awsCloudMapInstanceAttributeKey,
}
type weightedTargets = array<weightedTarget>
@ocaml.doc("<p>An object that represents the provider for a virtual service.</p>")
type virtualServiceProvider = {
  @ocaml.doc("<p>The virtual router associated with a virtual service.</p>")
  virtualRouter: option<virtualRouterServiceProvider>,
  @ocaml.doc("<p>The virtual node associated with a virtual service.</p>")
  virtualNode: option<virtualNodeServiceProvider>,
}
module VirtualServiceProvider = {
  type t = VirtualRouter(virtualRouterServiceProvider) | VirtualNode(virtualNodeServiceProvider)
  exception VirtualServiceProviderUnspecified
  let classify = value =>
    switch value {
    | {virtualRouter: Some(x)} => VirtualRouter(x)
    | {virtualNode: Some(x)} => VirtualNode(x)
    | _ => raise(VirtualServiceProviderUnspecified)
    }

  let make = value =>
    switch value {
    | VirtualRouter(x) => {virtualRouter: Some(x), virtualNode: None}
    | VirtualNode(x) => {virtualNode: Some(x), virtualRouter: None}
    }
}
type virtualServiceList = array<virtualServiceRef>
@ocaml.doc("<p>An object that represents a virtual router listener.</p>")
type virtualRouterListener = {portMapping: portMapping}
type virtualRouterList = array<virtualRouterRef>
type virtualNodeList = array<virtualNodeRef>
@ocaml.doc("<p>An object that represents the type of virtual node connection pool.</p>
         <p>Only one protocol is used at a time and should be the same protocol as the one chosen
         under port mapping.</p>
         <p>If not present the default value for <code>maxPendingRequests</code> is
            <code>2147483647</code>.</p>
         <p/>")
type virtualNodeConnectionPool = {
  @ocaml.doc("<p>An object that represents a type of connection pool.</p>")
  grpc: option<virtualNodeGrpcConnectionPool>,
  @ocaml.doc("<p>An object that represents a type of connection pool.</p>")
  http2: option<virtualNodeHttp2ConnectionPool>,
  @ocaml.doc("<p>An object that represents a type of connection pool.</p>")
  http: option<virtualNodeHttpConnectionPool>,
  @ocaml.doc("<p>An object that represents a type of connection pool.</p>")
  tcp: option<virtualNodeTcpConnectionPool>,
}
module VirtualNodeConnectionPool = {
  type t =
    | Grpc(virtualNodeGrpcConnectionPool)
    | Http2(virtualNodeHttp2ConnectionPool)
    | Http(virtualNodeHttpConnectionPool)
    | Tcp(virtualNodeTcpConnectionPool)
  exception VirtualNodeConnectionPoolUnspecified
  let classify = value =>
    switch value {
    | {grpc: Some(x)} => Grpc(x)
    | {http2: Some(x)} => Http2(x)
    | {http: Some(x)} => Http(x)
    | {tcp: Some(x)} => Tcp(x)
    | _ => raise(VirtualNodeConnectionPoolUnspecified)
    }

  let make = value =>
    switch value {
    | Grpc(x) => {grpc: Some(x), http2: None, http: None, tcp: None}
    | Http2(x) => {http2: Some(x), grpc: None, http: None, tcp: None}
    | Http(x) => {http: Some(x), grpc: None, http2: None, tcp: None}
    | Tcp(x) => {tcp: Some(x), grpc: None, http2: None, http: None}
    }
}
@ocaml.doc("<p>An object that represents a Transport Layer Security (TLS) validation context trust for an AWS Certicate Manager (ACM)
         certificate.</p>")
type virtualGatewayTlsValidationContextAcmTrust = {
  @ocaml.doc("<p>One or more ACM Amazon Resource Name (ARN)s.</p>")
  certificateAuthorityArns: virtualGatewayCertificateAuthorityArns,
}
@ocaml.doc("<p>An object that represents a virtual gateway's listener's Transport Layer Security (TLS) validation context
         trust.</p>")
type virtualGatewayListenerTlsValidationContextTrust = {
  @ocaml.doc("<p>A reference to an object that represents a virtual gateway's listener's Transport Layer Security (TLS) Secret
         Discovery Service validation context trust.</p>")
  sds: option<virtualGatewayTlsValidationContextSdsTrust>,
  file: option<virtualGatewayTlsValidationContextFileTrust>,
}
module VirtualGatewayListenerTlsValidationContextTrust = {
  type t =
    | Sds(virtualGatewayTlsValidationContextSdsTrust)
    | File(virtualGatewayTlsValidationContextFileTrust)
  exception VirtualGatewayListenerTlsValidationContextTrustUnspecified
  let classify = value =>
    switch value {
    | {sds: Some(x)} => Sds(x)
    | {file: Some(x)} => File(x)
    | _ => raise(VirtualGatewayListenerTlsValidationContextTrustUnspecified)
    }

  let make = value =>
    switch value {
    | Sds(x) => {sds: Some(x), file: None}
    | File(x) => {file: Some(x), sds: None}
    }
}
@ocaml.doc(
  "<p>An object that represents a listener's Transport Layer Security (TLS) certificate.</p>"
)
type virtualGatewayListenerTlsCertificate = {
  @ocaml.doc("<p>A reference to an object that represents a virtual gateway's listener's Secret Discovery
         Service certificate.</p>")
  sds: option<virtualGatewayListenerTlsSdsCertificate>,
  @ocaml.doc("<p>A reference to an object that represents a local file certificate.</p>")
  file: option<virtualGatewayListenerTlsFileCertificate>,
  @ocaml.doc(
    "<p>A reference to an object that represents an AWS Certicate Manager (ACM) certificate.</p>"
  )
  acm: option<virtualGatewayListenerTlsAcmCertificate>,
}
module VirtualGatewayListenerTlsCertificate = {
  type t =
    | Sds(virtualGatewayListenerTlsSdsCertificate)
    | File(virtualGatewayListenerTlsFileCertificate)
    | Acm(virtualGatewayListenerTlsAcmCertificate)
  exception VirtualGatewayListenerTlsCertificateUnspecified
  let classify = value =>
    switch value {
    | {sds: Some(x)} => Sds(x)
    | {file: Some(x)} => File(x)
    | {acm: Some(x)} => Acm(x)
    | _ => raise(VirtualGatewayListenerTlsCertificateUnspecified)
    }

  let make = value =>
    switch value {
    | Sds(x) => {sds: Some(x), file: None, acm: None}
    | File(x) => {file: Some(x), sds: None, acm: None}
    | Acm(x) => {acm: Some(x), sds: None, file: None}
    }
}
type virtualGatewayList = array<virtualGatewayRef>
@ocaml.doc("<p>An object that represents the type of virtual gateway connection pool.</p>
         <p>Only one protocol is used at a time and should be the same protocol as the one chosen
         under port mapping.</p>
         <p>If not present the default value for <code>maxPendingRequests</code> is
            <code>2147483647</code>.</p>")
type virtualGatewayConnectionPool = {
  @ocaml.doc("<p>An object that represents a type of connection pool. </p>")
  grpc: option<virtualGatewayGrpcConnectionPool>,
  @ocaml.doc("<p>An object that represents a type of connection pool.</p>")
  http2: option<virtualGatewayHttp2ConnectionPool>,
  @ocaml.doc("<p>An object that represents a type of connection pool.</p>")
  http: option<virtualGatewayHttpConnectionPool>,
}
module VirtualGatewayConnectionPool = {
  type t =
    | Grpc(virtualGatewayGrpcConnectionPool)
    | Http2(virtualGatewayHttp2ConnectionPool)
    | Http(virtualGatewayHttpConnectionPool)
  exception VirtualGatewayConnectionPoolUnspecified
  let classify = value =>
    switch value {
    | {grpc: Some(x)} => Grpc(x)
    | {http2: Some(x)} => Http2(x)
    | {http: Some(x)} => Http(x)
    | _ => raise(VirtualGatewayConnectionPoolUnspecified)
    }

  let make = value =>
    switch value {
    | Grpc(x) => {grpc: Some(x), http2: None, http: None}
    | Http2(x) => {http2: Some(x), grpc: None, http: None}
    | Http(x) => {http: Some(x), grpc: None, http2: None}
    }
}
@ocaml.doc(
  "<p>An object that represents the virtual gateway's client's Transport Layer Security (TLS) certificate.</p>"
)
type virtualGatewayClientTlsCertificate = {
  @ocaml.doc("<p>A reference to an object that represents a virtual gateway's client's Secret Discovery
         Service certificate.</p>")
  sds: option<virtualGatewayListenerTlsSdsCertificate>,
  file: option<virtualGatewayListenerTlsFileCertificate>,
}
module VirtualGatewayClientTlsCertificate = {
  type t =
    Sds(virtualGatewayListenerTlsSdsCertificate) | File(virtualGatewayListenerTlsFileCertificate)
  exception VirtualGatewayClientTlsCertificateUnspecified
  let classify = value =>
    switch value {
    | {sds: Some(x)} => Sds(x)
    | {file: Some(x)} => File(x)
    | _ => raise(VirtualGatewayClientTlsCertificateUnspecified)
    }

  let make = value =>
    switch value {
    | Sds(x) => {sds: Some(x), file: None}
    | File(x) => {file: Some(x), sds: None}
    }
}
@ocaml.doc("<p>The access log configuration for a virtual gateway.</p>")
type virtualGatewayAccessLog = {
  @ocaml.doc("<p>The file object to send virtual gateway access logs to.</p>")
  file: option<virtualGatewayFileAccessLog>,
}
module VirtualGatewayAccessLog = {
  type t = File(virtualGatewayFileAccessLog)
  exception VirtualGatewayAccessLogUnspecified
  let classify = value =>
    switch value {
    | {file: Some(x)} => File(x)
    | _ => raise(VirtualGatewayAccessLogUnspecified)
    }

  let make = value =>
    switch value {
    | File(x) => {file: Some(x)}
    }
}
@ocaml.doc("<p>An object that represents a Transport Layer Security (TLS) validation context trust for an AWS Certicate Manager (ACM)
         certificate.</p>")
type tlsValidationContextAcmTrust = {
  @ocaml.doc("<p>One or more ACM Amazon Resource Name (ARN)s.</p>")
  certificateAuthorityArns: certificateAuthorityArns,
}
@ocaml.doc("<p>An object that represents types of timeouts. </p>")
type tcpTimeout = {
  @ocaml.doc(
    "<p>An object that represents an idle timeout. An idle timeout bounds the amount of time that a connection may be idle. The default value is none.</p>"
  )
  idle: option<duration>,
}
type tagList_ = array<tagRef>
@ocaml.doc("<p>An object that represents the methods by which a subject alternative name on a peer
         Transport Layer Security (TLS) certificate can be matched.</p>")
type subjectAlternativeNameMatchers = {
  @ocaml.doc("<p>The values sent must match the specified values exactly.</p>")
  exact: subjectAlternativeNameList,
}
type routeList = array<routeRef>
@ocaml.doc("<p>An object that represents the outlier detection for a virtual node's listener.</p>")
type outlierDetection = {
  @ocaml.doc("<p>Maximum percentage of hosts in load balancing pool for upstream service that can be
         ejected. Will eject at least one host regardless of the value.</p>")
  maxEjectionPercent: outlierDetectionMaxEjectionPercent,
  @ocaml.doc("<p>The base amount of time for which a host is ejected.</p>")
  baseEjectionDuration: duration,
  @ocaml.doc("<p>The time interval between ejection sweep analysis.</p>") interval: duration,
  @ocaml.doc("<p>Number of consecutive <code>5xx</code> errors required for ejection. </p>")
  maxServerErrors: outlierDetectionMaxServerErrors,
}
@ocaml.doc("<p>An object that represents the specification of a service mesh.</p>")
type meshSpec = {
  @ocaml.doc("<p>The egress filter rules for the service mesh.</p>")
  egressFilter: option<egressFilter>,
}
type meshList = array<meshRef>
@ocaml.doc(
  "<p>An object that represents a listener's Transport Layer Security (TLS) validation context trust.</p>"
)
type listenerTlsValidationContextTrust = {
  @ocaml.doc("<p>A reference to an object that represents a listener's Transport Layer Security (TLS) Secret Discovery Service
         validation context trust.</p>")
  sds: option<tlsValidationContextSdsTrust>,
  file: option<tlsValidationContextFileTrust>,
}
module ListenerTlsValidationContextTrust = {
  type t = Sds(tlsValidationContextSdsTrust) | File(tlsValidationContextFileTrust)
  exception ListenerTlsValidationContextTrustUnspecified
  let classify = value =>
    switch value {
    | {sds: Some(x)} => Sds(x)
    | {file: Some(x)} => File(x)
    | _ => raise(ListenerTlsValidationContextTrustUnspecified)
    }

  let make = value =>
    switch value {
    | Sds(x) => {sds: Some(x), file: None}
    | File(x) => {file: Some(x), sds: None}
    }
}
@ocaml.doc(
  "<p>An object that represents a listener's Transport Layer Security (TLS) certificate.</p>"
)
type listenerTlsCertificate = {
  @ocaml.doc("<p>A reference to an object that represents a listener's Secret Discovery Service
         certificate.</p>")
  sds: option<listenerTlsSdsCertificate>,
  @ocaml.doc("<p>A reference to an object that represents a local file certificate.</p>")
  file: option<listenerTlsFileCertificate>,
  @ocaml.doc(
    "<p>A reference to an object that represents an AWS Certicate Manager (ACM) certificate.</p>"
  )
  acm: option<listenerTlsAcmCertificate>,
}
module ListenerTlsCertificate = {
  type t =
    | Sds(listenerTlsSdsCertificate)
    | File(listenerTlsFileCertificate)
    | Acm(listenerTlsAcmCertificate)
  exception ListenerTlsCertificateUnspecified
  let classify = value =>
    switch value {
    | {sds: Some(x)} => Sds(x)
    | {file: Some(x)} => File(x)
    | {acm: Some(x)} => Acm(x)
    | _ => raise(ListenerTlsCertificateUnspecified)
    }

  let make = value =>
    switch value {
    | Sds(x) => {sds: Some(x), file: None, acm: None}
    | File(x) => {file: Some(x), sds: None, acm: None}
    | Acm(x) => {acm: Some(x), sds: None, file: None}
    }
}
@ocaml.doc("<p>An object that represents types of timeouts. </p>")
type httpTimeout = {
  @ocaml.doc(
    "<p>An object that represents an idle timeout. An idle timeout bounds the amount of time that a connection may be idle. The default value is none.</p>"
  )
  idle: option<duration>,
  @ocaml.doc("<p>An object that represents a per request timeout. The default value is 15 seconds. If you set a higher timeout, then make sure that the higher value is set for each App Mesh 
                                  resource in a conversation. For example, if a virtual node backend uses a virtual router provider to route to another virtual node, then the timeout should be greater than 15
                                  seconds for the source and destination virtual node and the route.</p>")
  perRequest: option<duration>,
}
@ocaml.doc("<p>An object that represents the HTTP header in the request.</p>")
type httpRouteHeader = {
  @ocaml.doc("<p>The <code>HeaderMatchMethod</code> object.</p>") @as("match")
  match_: option<headerMatchMethod>,
  @ocaml.doc(
    "<p>Specify <code>True</code> to match anything except the match criteria. The default value is <code>False</code>.</p>"
  )
  invert: option<baseBoolean>,
  @ocaml.doc("<p>A name for the HTTP header in the client request that will be matched on.</p>")
  name: headerName,
}
@ocaml.doc(
  "<p>An object that represents a retry policy. Specify at least one value for at least one of the types of <code>RetryEvents</code>, a value for <code>maxRetries</code>, and a value for <code>perRetryTimeout</code>.</p>"
)
type httpRetryPolicy = {
  @ocaml.doc(
    "<p>Specify a valid value. The event occurs before any processing of a request has started and is encountered when the upstream is temporarily or permanently unavailable.</p>"
  )
  tcpRetryEvents: option<tcpRetryPolicyEvents>,
  @ocaml.doc("<p>Specify at least one of the following values.</p> 
         <ul>
            <li>
               <p>
                  <b>server-error</b> – HTTP status codes 500, 501,
                  502, 503, 504, 505, 506, 507, 508, 510, and 511</p>
            </li>
            <li>
               <p>
                  <b>gateway-error</b> – HTTP status codes 502,
                  503, and 504</p>
            </li>
            <li>
               <p>
                  <b>client-error</b> – HTTP status code 409</p>
            </li>
            <li>
               <p>
                  <b>stream-error</b> – Retry on refused
                  stream</p>
            </li>
         </ul>")
  httpRetryEvents: option<httpRetryPolicyEvents>,
  @ocaml.doc("<p>The maximum number of retry attempts.</p>") maxRetries: maxRetries,
  @ocaml.doc("<p>The timeout for each retry attempt.</p>") perRetryTimeout: duration,
}
@ocaml.doc("<p>An object that represents types of timeouts. </p>")
type grpcTimeout = {
  @ocaml.doc(
    "<p>An object that represents an idle timeout. An idle timeout bounds the amount of time that a connection may be idle. The default value is none.</p>"
  )
  idle: option<duration>,
  @ocaml.doc("<p>An object that represents a per request timeout. The default value is 15 seconds. If you set a higher timeout, then make sure that the higher value is set for each App Mesh 
                                  resource in a conversation. For example, if a virtual node backend uses a virtual router provider to route to another virtual node, then the timeout should be greater than 15
                                  seconds for the source and destination virtual node and the route.</p>")
  perRequest: option<duration>,
}
@ocaml.doc("<p>An object that represents the match metadata for the route.</p>")
type grpcRouteMetadata = {
  @ocaml.doc("<p>An object that represents the data to match from the request.</p>") @as("match")
  match_: option<grpcRouteMetadataMatchMethod>,
  @ocaml.doc(
    "<p>Specify <code>True</code> to match anything except the match criteria. The default value is <code>False</code>.</p>"
  )
  invert: option<baseBoolean>,
  @ocaml.doc("<p>The name of the route.</p>") name: headerName,
}
@ocaml.doc(
  "<p>An object that represents a retry policy. Specify at least one value for at least one of the types of <code>RetryEvents</code>, a value for <code>maxRetries</code>, and a value for <code>perRetryTimeout</code>.</p>"
)
type grpcRetryPolicy = {
  @ocaml.doc("<p>Specify at least one of the valid values.</p>")
  grpcRetryEvents: option<grpcRetryPolicyEvents>,
  @ocaml.doc(
    "<p>Specify a valid value. The event occurs before any processing of a request has started and is encountered when the upstream is temporarily or permanently unavailable.</p>"
  )
  tcpRetryEvents: option<tcpRetryPolicyEvents>,
  @ocaml.doc("<p>Specify at least one of the following values.</p> 
         <ul>
            <li>
               <p>
                  <b>server-error</b> – HTTP status codes 500, 501,
                  502, 503, 504, 505, 506, 507, 508, 510, and 511</p>
            </li>
            <li>
               <p>
                  <b>gateway-error</b> – HTTP status codes 502,
                  503, and 504</p>
            </li>
            <li>
               <p>
                  <b>client-error</b> – HTTP status code 409</p>
            </li>
            <li>
               <p>
                  <b>stream-error</b> – Retry on refused
                  stream</p>
            </li>
         </ul>")
  httpRetryEvents: option<httpRetryPolicyEvents>,
  @ocaml.doc("<p>The maximum number of retry attempts.</p>") maxRetries: maxRetries,
  @ocaml.doc("<p>The timeout for each retry attempt.</p>") perRetryTimeout: duration,
}
@ocaml.doc("<p>An object that represents a gateway route target.</p>")
type gatewayRouteTarget = {
  @ocaml.doc("<p>An object that represents a virtual service gateway route target.</p>")
  virtualService: gatewayRouteVirtualService,
}
type gatewayRouteList = array<gatewayRouteRef>
@ocaml.doc("<p>An object that represents the client's certificate.</p>")
type clientTlsCertificate = {
  @ocaml.doc("<p>A reference to an object that represents a client's TLS Secret Discovery Service
         certificate.</p>")
  sds: option<listenerTlsSdsCertificate>,
  file: option<listenerTlsFileCertificate>,
}
module ClientTlsCertificate = {
  type t = Sds(listenerTlsSdsCertificate) | File(listenerTlsFileCertificate)
  exception ClientTlsCertificateUnspecified
  let classify = value =>
    switch value {
    | {sds: Some(x)} => Sds(x)
    | {file: Some(x)} => File(x)
    | _ => raise(ClientTlsCertificateUnspecified)
    }

  let make = value =>
    switch value {
    | Sds(x) => {sds: Some(x), file: None}
    | File(x) => {file: Some(x), sds: None}
    }
}
type awsCloudMapInstanceAttributes = array<awsCloudMapInstanceAttribute>
@ocaml.doc("<p>An object that represents the access logging information for a virtual node.</p>")
type accessLog = {
  @ocaml.doc("<p>The file object to send virtual node access logs to.</p>")
  file: option<fileAccessLog>,
}
module AccessLog = {
  type t = File(fileAccessLog)
  exception AccessLogUnspecified
  let classify = value =>
    switch value {
    | {file: Some(x)} => File(x)
    | _ => raise(AccessLogUnspecified)
    }

  let make = value =>
    switch value {
    | File(x) => {file: Some(x)}
    }
}
@ocaml.doc("<p>An object that represents the specification of a virtual service.</p>")
type virtualServiceSpec = {
  @ocaml.doc("<p>The App Mesh object that is acting as the provider for a virtual service. You can specify
         a single virtual node or virtual router.</p>")
  provider: option<virtualServiceProvider>,
}
type virtualRouterListeners = array<virtualRouterListener>
@ocaml.doc(
  "<p>An object that represents a Transport Layer Security (TLS) validation context trust.</p>"
)
type virtualGatewayTlsValidationContextTrust = {
  @ocaml.doc("<p>A reference to an object that represents a virtual gateway's Transport Layer Security (TLS) Secret Discovery
         Service validation context trust.</p>")
  sds: option<virtualGatewayTlsValidationContextSdsTrust>,
  @ocaml.doc(
    "<p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>"
  )
  file: option<virtualGatewayTlsValidationContextFileTrust>,
  @ocaml.doc("<p>A reference to an object that represents a Transport Layer Security (TLS) validation context trust for an
         AWS Certicate Manager (ACM) certificate.</p>")
  acm: option<virtualGatewayTlsValidationContextAcmTrust>,
}
module VirtualGatewayTlsValidationContextTrust = {
  type t =
    | Sds(virtualGatewayTlsValidationContextSdsTrust)
    | File(virtualGatewayTlsValidationContextFileTrust)
    | Acm(virtualGatewayTlsValidationContextAcmTrust)
  exception VirtualGatewayTlsValidationContextTrustUnspecified
  let classify = value =>
    switch value {
    | {sds: Some(x)} => Sds(x)
    | {file: Some(x)} => File(x)
    | {acm: Some(x)} => Acm(x)
    | _ => raise(VirtualGatewayTlsValidationContextTrustUnspecified)
    }

  let make = value =>
    switch value {
    | Sds(x) => {sds: Some(x), file: None, acm: None}
    | File(x) => {file: Some(x), sds: None, acm: None}
    | Acm(x) => {acm: Some(x), sds: None, file: None}
    }
}
@ocaml.doc("<p>An object that represents logging information.</p>")
type virtualGatewayLogging = {
  @ocaml.doc("<p>The access log configuration.</p>") accessLog: option<virtualGatewayAccessLog>,
}
@ocaml.doc(
  "<p>An object that represents a Transport Layer Security (TLS) validation context trust.</p>"
)
type tlsValidationContextTrust = {
  @ocaml.doc("<p>A reference to an object that represents a Transport Layer Security (TLS) Secret Discovery Service validation
         context trust.</p>")
  sds: option<tlsValidationContextSdsTrust>,
  @ocaml.doc(
    "<p>An object that represents a Transport Layer Security (TLS) validation context trust for a local file.</p>"
  )
  file: option<tlsValidationContextFileTrust>,
  @ocaml.doc("<p>A reference to an object that represents a Transport Layer Security (TLS) validation context trust for an
         AWS Certicate Manager (ACM) certificate.</p>")
  acm: option<tlsValidationContextAcmTrust>,
}
module TlsValidationContextTrust = {
  type t =
    | Sds(tlsValidationContextSdsTrust)
    | File(tlsValidationContextFileTrust)
    | Acm(tlsValidationContextAcmTrust)
  exception TlsValidationContextTrustUnspecified
  let classify = value =>
    switch value {
    | {sds: Some(x)} => Sds(x)
    | {file: Some(x)} => File(x)
    | {acm: Some(x)} => Acm(x)
    | _ => raise(TlsValidationContextTrustUnspecified)
    }

  let make = value =>
    switch value {
    | Sds(x) => {sds: Some(x), file: None, acm: None}
    | File(x) => {file: Some(x), sds: None, acm: None}
    | Acm(x) => {acm: Some(x), sds: None, file: None}
    }
}
@ocaml.doc("<p>An object that represents the action to take if a match is determined.</p>")
type tcpRouteAction = {
  @ocaml.doc(
    "<p>An object that represents the targets that traffic is routed to when a request matches the route.</p>"
  )
  weightedTargets: weightedTargets,
}
@ocaml.doc("<p>An object that represents the subject alternative names secured by the
         certificate.</p>")
type subjectAlternativeNames = {
  @ocaml.doc("<p>An object that represents the criteria for determining a SANs match.</p>")
  @as("match")
  match_: subjectAlternativeNameMatchers,
}
@ocaml.doc("<p>An object that represents a service mesh returned by a describe operation.</p>")
type meshData = {
  @ocaml.doc("<p>The status of the service mesh.</p>") status: meshStatus,
  @ocaml.doc("<p>The associated metadata for the service mesh.</p>") metadata: resourceMetadata,
  @ocaml.doc("<p>The associated specification for the service mesh.</p>") spec: meshSpec,
  @ocaml.doc("<p>The name of the service mesh.</p>") meshName: resourceName,
}
@ocaml.doc("<p>An object that represents the logging information for a virtual node.</p>")
type logging = {
  @ocaml.doc("<p>The access log configuration for a virtual node.</p>")
  accessLog: option<accessLog>,
}
@ocaml.doc("<p>An object that represents timeouts for different protocols.</p>")
type listenerTimeout = {
  grpc: option<grpcTimeout>,
  @ocaml.doc("<p>An object that represents types of timeouts. </p>") http2: option<httpTimeout>,
  @ocaml.doc("<p>An object that represents types of timeouts. </p>") http: option<httpTimeout>,
  @ocaml.doc("<p>An object that represents types of timeouts. </p>") tcp: option<tcpTimeout>,
}
module ListenerTimeout = {
  type t = Grpc(grpcTimeout) | Http2(httpTimeout) | Http(httpTimeout) | Tcp(tcpTimeout)
  exception ListenerTimeoutUnspecified
  let classify = value =>
    switch value {
    | {grpc: Some(x)} => Grpc(x)
    | {http2: Some(x)} => Http2(x)
    | {http: Some(x)} => Http(x)
    | {tcp: Some(x)} => Tcp(x)
    | _ => raise(ListenerTimeoutUnspecified)
    }

  let make = value =>
    switch value {
    | Grpc(x) => {grpc: Some(x), http2: None, http: None, tcp: None}
    | Http2(x) => {http2: Some(x), grpc: None, http: None, tcp: None}
    | Http(x) => {http: Some(x), grpc: None, http2: None, tcp: None}
    | Tcp(x) => {tcp: Some(x), grpc: None, http2: None, http: None}
    }
}
type httpRouteHeaders = array<httpRouteHeader>
@ocaml.doc("<p>An object that represents the action to take if a match is determined.</p>")
type httpRouteAction = {
  @ocaml.doc(
    "<p>An object that represents the targets that traffic is routed to when a request matches the route.</p>"
  )
  weightedTargets: weightedTargets,
}
@ocaml.doc("<p>An object that represents the action to take if a match is determined.</p>")
type httpGatewayRouteAction = {
  @ocaml.doc(
    "<p>An object that represents the target that traffic is routed to when a request matches the gateway route.</p>"
  )
  target: gatewayRouteTarget,
}
type grpcRouteMetadataList = array<grpcRouteMetadata>
@ocaml.doc("<p>An object that represents the action to take if a match is determined.</p>")
type grpcRouteAction = {
  @ocaml.doc(
    "<p>An object that represents the targets that traffic is routed to when a request matches the route.</p>"
  )
  weightedTargets: weightedTargets,
}
@ocaml.doc("<p>An object that represents the action to take if a match is determined.</p>")
type grpcGatewayRouteAction = {
  @ocaml.doc(
    "<p>An object that represents the target that traffic is routed to when a request matches the gateway route.</p>"
  )
  target: gatewayRouteTarget,
}
@ocaml.doc("<p>An object that represents the AWS Cloud Map service discovery information for your virtual
         node.</p>
         <note>
            <p>AWS Cloud Map is not available in the eu-south-1 Region.</p>
         </note>")
type awsCloudMapServiceDiscovery = {
  @ocaml.doc("<p>A string map that contains attributes with values that you can use to filter instances
         by any custom attribute that you specified when you registered the instance. Only instances
         that match all of the specified key/value pairs will be returned.</p>")
  attributes: option<awsCloudMapInstanceAttributes>,
  @ocaml.doc("<p>The name of the AWS Cloud Map service to use.</p>") serviceName: awsCloudMapName,
  @ocaml.doc("<p>The name of the AWS Cloud Map namespace to use.</p>")
  namespaceName: awsCloudMapName,
}
@ocaml.doc("<p>An object that represents a virtual service returned by a describe operation.</p>")
type virtualServiceData = {
  @ocaml.doc("<p>The current status of the virtual service.</p>") status: virtualServiceStatus,
  metadata: resourceMetadata,
  @ocaml.doc("<p>The specifications of the virtual service.</p>") spec: virtualServiceSpec,
  @ocaml.doc("<p>The name of the virtual service.</p>") virtualServiceName: serviceName,
  @ocaml.doc("<p>The name of the service mesh that the virtual service resides in.</p>")
  meshName: resourceName,
}
@ocaml.doc("<p>An object that represents the specification of a virtual router.</p>")
type virtualRouterSpec = {
  @ocaml.doc("<p>The listeners that the virtual router is expected to receive inbound traffic from. You
         can specify one listener.</p>")
  listeners: option<virtualRouterListeners>,
}
@ocaml.doc("<p>An object that represents a Transport Layer Security (TLS) validation context.</p>")
type virtualGatewayTlsValidationContext = {
  @ocaml.doc("<p>A reference to an object that represents the SANs for a virtual gateway's listener's
         Transport Layer Security (TLS) validation context.</p>")
  subjectAlternativeNames: option<subjectAlternativeNames>,
  @ocaml.doc("<p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
         certificate.</p>")
  trust: virtualGatewayTlsValidationContextTrust,
}
@ocaml.doc("<p>An object that represents a virtual gateway's listener's Transport Layer Security (TLS) validation
         context.</p>")
type virtualGatewayListenerTlsValidationContext = {
  @ocaml.doc("<p>A reference to an object that represents the SANs for a virtual gateway listener's Transport Layer Security (TLS)
         validation context.</p>")
  subjectAlternativeNames: option<subjectAlternativeNames>,
  @ocaml.doc("<p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
         certificate.</p>")
  trust: virtualGatewayListenerTlsValidationContextTrust,
}
@ocaml.doc("<p>An object that represents how the proxy will validate its peer during Transport Layer Security (TLS)
         negotiation.</p>")
type tlsValidationContext = {
  @ocaml.doc(
    "<p>A reference to an object that represents the SANs for a Transport Layer Security (TLS) validation context.</p>"
  )
  subjectAlternativeNames: option<subjectAlternativeNames>,
  @ocaml.doc("<p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
         certificate.</p>")
  trust: tlsValidationContextTrust,
}
@ocaml.doc("<p>An object that represents a TCP route type.</p>")
type tcpRoute = {
  @ocaml.doc("<p>An object that represents types of timeouts. </p>") timeout: option<tcpTimeout>,
  @ocaml.doc("<p>The action to take if a match is determined.</p>") action: tcpRouteAction,
}
@ocaml.doc("<p>An object that represents the service discovery information for a virtual node.</p>")
type serviceDiscovery = {
  @ocaml.doc("<p>Specifies any AWS Cloud Map information for the virtual node.</p>")
  awsCloudMap: option<awsCloudMapServiceDiscovery>,
  @ocaml.doc("<p>Specifies the DNS information for the virtual node.</p>")
  dns: option<dnsServiceDiscovery>,
}
module ServiceDiscovery = {
  type t = AwsCloudMap(awsCloudMapServiceDiscovery) | Dns(dnsServiceDiscovery)
  exception ServiceDiscoveryUnspecified
  let classify = value =>
    switch value {
    | {awsCloudMap: Some(x)} => AwsCloudMap(x)
    | {dns: Some(x)} => Dns(x)
    | _ => raise(ServiceDiscoveryUnspecified)
    }

  let make = value =>
    switch value {
    | AwsCloudMap(x) => {awsCloudMap: Some(x), dns: None}
    | Dns(x) => {dns: Some(x), awsCloudMap: None}
    }
}
@ocaml.doc(
  "<p>An object that represents a listener's Transport Layer Security (TLS) validation context.</p>"
)
type listenerTlsValidationContext = {
  @ocaml.doc("<p>A reference to an object that represents the SANs for a listener's Transport Layer Security (TLS) validation
         context.</p>")
  subjectAlternativeNames: option<subjectAlternativeNames>,
  @ocaml.doc("<p>A reference to where to retrieve the trust chain when validating a peer’s Transport Layer Security (TLS)
         certificate.</p>")
  trust: listenerTlsValidationContextTrust,
}
@ocaml.doc("<p>An object that represents the requirements for a route to match HTTP requests for a
         virtual router.</p>")
type httpRouteMatch = {
  @ocaml.doc("<p>An object that represents the client request headers to match on.</p>")
  headers: option<httpRouteHeaders>,
  @ocaml.doc("<p>The client request scheme to match on. Specify only one.</p>")
  scheme: option<httpScheme>,
  @ocaml.doc("<p>The client request method to match on. Specify only one.</p>")
  method: option<httpMethod>,
  @ocaml.doc("<p>Specifies the path to match requests with. This parameter must always start with
            <code>/</code>, which by itself matches all requests to the virtual service name. You
         can also match for path-based routing of requests. For example, if your virtual service
         name is <code>my-service.local</code> and you want the route to match requests to
            <code>my-service.local/metrics</code>, your prefix should be
         <code>/metrics</code>.</p>")
  prefix: baseString,
}
@ocaml.doc("<p>An object that represents an HTTP gateway route.</p>")
type httpGatewayRoute = {
  @ocaml.doc("<p>An object that represents the action to take if a match is determined.</p>")
  action: httpGatewayRouteAction,
  @ocaml.doc("<p>An object that represents the criteria for determining a request match.</p>")
  @as("match")
  match_: httpGatewayRouteMatch,
}
@ocaml.doc("<p>An object that represents the criteria for determining a request match.</p>")
type grpcRouteMatch = {
  @ocaml.doc("<p>An object that represents the data to match from the request.</p>")
  metadata: option<grpcRouteMetadataList>,
  @ocaml.doc("<p>The method name to match from the request. If you specify a name, you must also specify
         a <code>serviceName</code>.</p>")
  methodName: option<methodName>,
  @ocaml.doc("<p>The fully qualified domain name for the service to match from the request.</p>")
  serviceName: option<serviceName>,
}
@ocaml.doc("<p>An object that represents a gRPC gateway route.</p>")
type grpcGatewayRoute = {
  @ocaml.doc("<p>An object that represents the action to take if a match is determined.</p>")
  action: grpcGatewayRouteAction,
  @ocaml.doc("<p>An object that represents the criteria for determining a request match.</p>")
  @as("match")
  match_: grpcGatewayRouteMatch,
}
@ocaml.doc("<p>An object that represents a virtual router returned by a describe operation.</p>")
type virtualRouterData = {
  @ocaml.doc("<p>The current status of the virtual router.</p>") status: virtualRouterStatus,
  @ocaml.doc("<p>The associated metadata for the virtual router.</p>") metadata: resourceMetadata,
  @ocaml.doc("<p>The specifications of the virtual router.</p>") spec: virtualRouterSpec,
  @ocaml.doc("<p>The name of the virtual router.</p>") virtualRouterName: resourceName,
  @ocaml.doc("<p>The name of the service mesh that the virtual router resides in.</p>")
  meshName: resourceName,
}
@ocaml.doc(
  "<p>An object that represents the Transport Layer Security (TLS) properties for a listener.</p>"
)
type virtualGatewayListenerTls = {
  @ocaml.doc("<p>An object that represents a Transport Layer Security (TLS) certificate.</p>")
  certificate: virtualGatewayListenerTlsCertificate,
  @ocaml.doc("<p>A reference to an object that represents a virtual gateway's listener's Transport Layer Security (TLS) validation
         context.</p>")
  validation: option<virtualGatewayListenerTlsValidationContext>,
  @ocaml.doc("<p>Specify one of the following modes.</p>
         <ul>
            <li>
               <p>
                  <b/>STRICT – Listener only accepts connections with TLS
               enabled. </p>
            </li>
            <li>
               <p>
                  <b/>PERMISSIVE – Listener accepts connections with or
               without TLS enabled.</p>
            </li>
            <li>
               <p>
                  <b/>DISABLED – Listener only accepts connections without
               TLS. </p>
            </li>
         </ul>")
  mode: virtualGatewayListenerTlsMode,
}
@ocaml.doc("<p>An object that represents a Transport Layer Security (TLS) client policy.</p>")
type virtualGatewayClientPolicyTls = {
  @ocaml.doc(
    "<p>A reference to an object that represents a Transport Layer Security (TLS) validation context.</p>"
  )
  validation: virtualGatewayTlsValidationContext,
  @ocaml.doc("<p>A reference to an object that represents a virtual gateway's client's Transport Layer Security (TLS)
         certificate.</p>")
  certificate: option<virtualGatewayClientTlsCertificate>,
  @ocaml.doc("<p>One or more ports that the policy is enforced for.</p>") ports: option<portSet>,
  @ocaml.doc("<p>Whether the policy is enforced. The default is <code>True</code>, if a value isn't
         specified.</p>")
  enforce: option<baseBoolean>,
}
@ocaml.doc(
  "<p>An object that represents the Transport Layer Security (TLS) properties for a listener.</p>"
)
type listenerTls = {
  @ocaml.doc(
    "<p>A reference to an object that represents a listener's Transport Layer Security (TLS) validation context.</p>"
  )
  validation: option<listenerTlsValidationContext>,
  @ocaml.doc(
    "<p>A reference to an object that represents a listener's Transport Layer Security (TLS) certificate.</p>"
  )
  certificate: listenerTlsCertificate,
  @ocaml.doc("<p>Specify one of the following modes.</p>
         <ul>
            <li>
               <p>
                  <b/>STRICT – Listener only accepts connections with TLS
               enabled. </p>
            </li>
            <li>
               <p>
                  <b/>PERMISSIVE – Listener accepts connections with or
               without TLS enabled.</p>
            </li>
            <li>
               <p>
                  <b/>DISABLED – Listener only accepts connections without
               TLS. </p>
            </li>
         </ul>")
  mode: listenerTlsMode,
}
@ocaml.doc("<p>An object that represents an HTTP or HTTP/2 route type.</p>")
type httpRoute = {
  @ocaml.doc("<p>An object that represents types of timeouts. </p>") timeout: option<httpTimeout>,
  @ocaml.doc("<p>An object that represents a retry policy.</p>")
  retryPolicy: option<httpRetryPolicy>,
  @ocaml.doc("<p>An object that represents the action to take if a match is determined.</p>")
  action: httpRouteAction,
  @ocaml.doc("<p>An object that represents the criteria for determining a request match.</p>")
  @as("match")
  match_: httpRouteMatch,
}
@ocaml.doc("<p>An object that represents a gRPC route type.</p>")
type grpcRoute = {
  @ocaml.doc("<p>An object that represents types of timeouts. </p>") timeout: option<grpcTimeout>,
  @ocaml.doc("<p>An object that represents a retry policy.</p>")
  retryPolicy: option<grpcRetryPolicy>,
  @ocaml.doc("<p>An object that represents the criteria for determining a request match.</p>")
  @as("match")
  match_: grpcRouteMatch,
  @ocaml.doc("<p>An object that represents the action to take if a match is determined.</p>")
  action: grpcRouteAction,
}
@ocaml.doc("<p>An object that represents a gateway route specification. Specify one gateway route
         type.</p>")
type gatewayRouteSpec = {
  @ocaml.doc("<p>An object that represents the specification of a gRPC gateway route.</p>")
  grpcRoute: option<grpcGatewayRoute>,
  @ocaml.doc("<p>An object that represents the specification of an HTTP/2 gateway route.</p>")
  http2Route: option<httpGatewayRoute>,
  @ocaml.doc("<p>An object that represents the specification of an HTTP gateway route.</p>")
  httpRoute: option<httpGatewayRoute>,
}
@ocaml.doc(
  "<p>A reference to an object that represents a Transport Layer Security (TLS) client policy.</p>"
)
type clientPolicyTls = {
  @ocaml.doc("<p>A reference to an object that represents a TLS validation context.</p>")
  validation: tlsValidationContext,
  @ocaml.doc("<p>A reference to an object that represents a client's TLS certificate.</p>")
  certificate: option<clientTlsCertificate>,
  @ocaml.doc("<p>One or more ports that the policy is enforced for.</p>") ports: option<portSet>,
  @ocaml.doc(
    "<p>Whether the policy is enforced. The default is <code>True</code>, if a value isn't specified.</p>"
  )
  enforce: option<baseBoolean>,
}
@ocaml.doc("<p>AWS App Mesh is a service mesh based on the Envoy proxy that makes it easy to monitor and
         control microservices. App Mesh standardizes how your microservices communicate, giving you
         end-to-end visibility and helping to ensure high availability for your applications.</p>
         <p>App Mesh gives you consistent visibility and network traffic controls for every
         microservice in an application. You can use App Mesh with AWS Fargate, Amazon ECS, Amazon EKS,
         Kubernetes on AWS, and Amazon EC2.</p>
         <note>
            <p>App Mesh supports microservice applications that use service discovery naming for their
            components. For more information about service discovery on Amazon ECS, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html\">Service Discovery</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. Kubernetes
               <code>kube-dns</code> and <code>coredns</code> are supported. For more information,
            see <a href=\"https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/\">DNS
               for Services and Pods</a> in the Kubernetes documentation.</p>
         </note>")
@ocaml.doc("<p>An object that represents a listener for a virtual gateway.</p>")
type virtualGatewayListener = {
  @ocaml.doc("<p>The connection pool information for the virtual gateway listener.</p>")
  connectionPool: option<virtualGatewayConnectionPool>,
  @ocaml.doc(
    "<p>A reference to an object that represents the Transport Layer Security (TLS) properties for the listener.</p>"
  )
  tls: option<virtualGatewayListenerTls>,
  @ocaml.doc("<p>The port mapping information for the listener.</p>")
  portMapping: virtualGatewayPortMapping,
  @ocaml.doc("<p>The health check information for the listener.</p>")
  healthCheck: option<virtualGatewayHealthCheckPolicy>,
}
@ocaml.doc("<p>An object that represents a client policy.</p>")
type virtualGatewayClientPolicy = {
  @ocaml.doc(
    "<p>A reference to an object that represents a Transport Layer Security (TLS) client policy.</p>"
  )
  tls: option<virtualGatewayClientPolicyTls>,
}
@ocaml.doc("<p>An object that represents a route specification. Specify one route type.</p>")
type routeSpec = {
  @ocaml.doc("<p>An object that represents the specification of a gRPC route.</p>")
  grpcRoute: option<grpcRoute>,
  @ocaml.doc("<p>An object that represents the specification of an HTTP/2 route.</p>")
  http2Route: option<httpRoute>,
  @ocaml.doc("<p>An object that represents the specification of a TCP route.</p>")
  tcpRoute: option<tcpRoute>,
  @ocaml.doc("<p>An object that represents the specification of an HTTP route.</p>")
  httpRoute: option<httpRoute>,
  @ocaml.doc("<p>The priority for the route. Routes are matched based on the specified value, where 0 is
         the highest priority.</p>")
  priority: option<routePriority>,
}
@ocaml.doc("<p>An object that represents a listener for a virtual node.</p>")
type listener = {
  @ocaml.doc("<p>The connection pool information for the listener.</p>")
  connectionPool: option<virtualNodeConnectionPool>,
  @ocaml.doc("<p>The outlier detection information for the listener.</p>")
  outlierDetection: option<outlierDetection>,
  @ocaml.doc("<p>An object that represents timeouts for different protocols.</p>")
  timeout: option<listenerTimeout>,
  @ocaml.doc("<p>The health check information for the listener.</p>")
  healthCheck: option<healthCheckPolicy>,
  @ocaml.doc(
    "<p>A reference to an object that represents the Transport Layer Security (TLS) properties for a listener.</p>"
  )
  tls: option<listenerTls>,
  @ocaml.doc("<p>The port mapping information for the listener.</p>") portMapping: portMapping,
}
@ocaml.doc("<p>An object that represents a gateway route returned by a describe operation.</p>")
type gatewayRouteData = {
  @ocaml.doc("<p>The status of the gateway route.</p>") status: gatewayRouteStatus,
  metadata: resourceMetadata,
  @ocaml.doc("<p>The specifications of the gateway route.</p>") spec: gatewayRouteSpec,
  @ocaml.doc("<p>The virtual gateway that the gateway route is associated with.</p>")
  virtualGatewayName: resourceName,
  @ocaml.doc("<p>The name of the gateway route.</p>") gatewayRouteName: resourceName,
  @ocaml.doc("<p>The name of the service mesh that the resource resides in. </p>")
  meshName: resourceName,
}
@ocaml.doc("<p>An object that represents a client policy.</p>")
type clientPolicy = {
  @ocaml.doc(
    "<p>A reference to an object that represents a Transport Layer Security (TLS) client policy.</p>"
  )
  tls: option<clientPolicyTls>,
}
@ocaml.doc("<p>An object that represents a virtual service backend for a virtual node.</p>")
type virtualServiceBackend = {
  @ocaml.doc("<p>A reference to an object that represents the client policy for a backend.</p>")
  clientPolicy: option<clientPolicy>,
  @ocaml.doc("<p>The name of the virtual service that is acting as a virtual node backend.</p>")
  virtualServiceName: serviceName,
}
type virtualGatewayListeners = array<virtualGatewayListener>
@ocaml.doc("<p>An object that represents the default properties for a backend.</p>")
type virtualGatewayBackendDefaults = {
  @ocaml.doc("<p>A reference to an object that represents a client policy.</p>")
  clientPolicy: option<virtualGatewayClientPolicy>,
}
@ocaml.doc("<p>An object that represents a route returned by a describe operation.</p>")
type routeData = {
  @ocaml.doc("<p>The status of the route.</p>") status: routeStatus,
  @ocaml.doc("<p>The associated metadata for the route.</p>") metadata: resourceMetadata,
  @ocaml.doc("<p>The specifications of the route.</p>") spec: routeSpec,
  @ocaml.doc("<p>The name of the route.</p>") routeName: resourceName,
  @ocaml.doc("<p>The virtual router that the route is associated with.</p>")
  virtualRouterName: resourceName,
  @ocaml.doc("<p>The name of the service mesh that the route resides in.</p>")
  meshName: resourceName,
}
type listeners = array<listener>
@ocaml.doc("<p>An object that represents the default properties for a backend.</p>")
type backendDefaults = {
  @ocaml.doc("<p>A reference to an object that represents a client policy.</p>")
  clientPolicy: option<clientPolicy>,
}
@ocaml.doc("<p>An object that represents the specification of a service mesh resource.</p>")
type virtualGatewaySpec = {
  logging: option<virtualGatewayLogging>,
  @ocaml.doc("<p>The listeners that the mesh endpoint is expected to receive inbound traffic from. You
         can specify one listener.</p>")
  listeners: virtualGatewayListeners,
  @ocaml.doc("<p>A reference to an object that represents the defaults for backends.</p>")
  backendDefaults: option<virtualGatewayBackendDefaults>,
}
@ocaml.doc("<p>An object that represents the backends that a virtual node is expected to send outbound
         traffic to.</p>")
type backend = {
  @ocaml.doc("<p>Specifies a virtual service to use as a backend.  </p>")
  virtualService: option<virtualServiceBackend>,
}
module Backend = {
  type t = VirtualService(virtualServiceBackend)
  exception BackendUnspecified
  let classify = value =>
    switch value {
    | {virtualService: Some(x)} => VirtualService(x)
    | _ => raise(BackendUnspecified)
    }

  let make = value =>
    switch value {
    | VirtualService(x) => {virtualService: Some(x)}
    }
}
@ocaml.doc("<p>An object that represents a virtual gateway returned by a describe operation.</p>")
type virtualGatewayData = {
  @ocaml.doc("<p>The current status of the virtual gateway.</p>") status: virtualGatewayStatus,
  metadata: resourceMetadata,
  @ocaml.doc("<p>The specifications of the virtual gateway.</p>") spec: virtualGatewaySpec,
  @ocaml.doc("<p>The name of the virtual gateway.</p>") virtualGatewayName: resourceName,
  @ocaml.doc("<p>The name of the service mesh that the virtual gateway resides in.</p>")
  meshName: resourceName,
}
type backends = array<backend>
@ocaml.doc("<p>An object that represents the specification of a virtual node.</p>")
type virtualNodeSpec = {
  @ocaml.doc("<p>The inbound and outbound access logging information for the virtual node.</p>")
  logging: option<logging>,
  @ocaml.doc("<p>A reference to an object that represents the defaults for backends.</p>")
  backendDefaults: option<backendDefaults>,
  @ocaml.doc("<p>The backends that the virtual node is expected to send outbound traffic to.</p>")
  backends: option<backends>,
  @ocaml.doc("<p>The listener that the virtual node is expected to receive inbound traffic from. You can
         specify one listener.</p>")
  listeners: option<listeners>,
  @ocaml.doc("<p>The service discovery information for the virtual node. If your virtual node does not
         expect ingress traffic, you can omit this parameter. If you specify a
         <code>listener</code>, then you must specify service discovery information.</p>")
  serviceDiscovery: option<serviceDiscovery>,
}
@ocaml.doc("<p>An object that represents a virtual node returned by a describe operation.</p>")
type virtualNodeData = {
  @ocaml.doc("<p>The current status for the virtual node.</p>") status: virtualNodeStatus,
  @ocaml.doc("<p>The associated metadata for the virtual node.</p>") metadata: resourceMetadata,
  @ocaml.doc("<p>The specifications of the virtual node.</p>") spec: virtualNodeSpec,
  @ocaml.doc("<p>The name of the virtual node.</p>") virtualNodeName: resourceName,
  @ocaml.doc("<p>The name of the service mesh that the virtual node resides in.</p>")
  meshName: resourceName,
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to be removed.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to delete tags from.</p>")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to the resource. A tag is an array of key-value pairs.
         Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-appmesh") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListVirtualServices = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The maximum number of results returned by <code>ListVirtualServices</code> in paginated
         output. When you use this parameter, <code>ListVirtualServices</code> returns only
            <code>limit</code> results in a single page along with a <code>nextToken</code> response
         element. You can see the remaining results of the initial request by sending another
            <code>ListVirtualServices</code> request with the returned <code>nextToken</code> value.
         This value can be between 1 and 100. If you don't use this
         parameter, <code>ListVirtualServices</code> returns up to 100 results and
         a <code>nextToken</code> value if applicable.</p>")
    limit: option<listVirtualServicesLimit>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>ListVirtualServices</code> request where <code>limit</code> was used and the
         results exceeded the value of that parameter. Pagination continues from the end of the
         previous results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The name of the service mesh to list virtual services in.</p>")
    meshName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListVirtualServices</code>
         request. When the results of a <code>ListVirtualServices</code> request exceed
            <code>limit</code>, you can use this value to retrieve the next page of results. This
         value is <code>null</code> when there are no more results to return.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The list of existing virtual services for the specified service mesh.</p>")
    virtualServices: virtualServiceList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListVirtualServicesCommand"
  let make = (~meshName, ~meshOwner=?, ~limit=?, ~nextToken=?, ()) =>
    new({meshOwner: meshOwner, limit: limit, nextToken: nextToken, meshName: meshName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVirtualRouters = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The maximum number of results returned by <code>ListVirtualRouters</code> in paginated
         output. When you use this parameter, <code>ListVirtualRouters</code> returns only
            <code>limit</code> results in a single page along with a <code>nextToken</code> response
         element. You can see the remaining results of the initial request by sending another
            <code>ListVirtualRouters</code> request with the returned <code>nextToken</code> value.
         This value can be between 1 and 100. If you don't use this
         parameter, <code>ListVirtualRouters</code> returns up to 100 results and
         a <code>nextToken</code> value if applicable.</p>")
    limit: option<listVirtualRoutersLimit>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>ListVirtualRouters</code> request where <code>limit</code> was used and the
         results exceeded the value of that parameter. Pagination continues from the end of the
         previous results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The name of the service mesh to list virtual routers in.</p>")
    meshName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListVirtualRouters</code>
         request. When the results of a <code>ListVirtualRouters</code> request exceed
            <code>limit</code>, you can use this value to retrieve the next page of results. This
         value is <code>null</code> when there are no more results to return.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The list of existing virtual routers for the specified service mesh.</p>")
    virtualRouters: virtualRouterList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListVirtualRoutersCommand"
  let make = (~meshName, ~meshOwner=?, ~limit=?, ~nextToken=?, ()) =>
    new({meshOwner: meshOwner, limit: limit, nextToken: nextToken, meshName: meshName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVirtualNodes = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The maximum number of results returned by <code>ListVirtualNodes</code> in paginated
         output. When you use this parameter, <code>ListVirtualNodes</code> returns only
            <code>limit</code> results in a single page along with a <code>nextToken</code> response
         element. You can see the remaining results of the initial request by sending another
            <code>ListVirtualNodes</code> request with the returned <code>nextToken</code> value.
         This value can be between 1 and 100. If you don't use this
         parameter, <code>ListVirtualNodes</code> returns up to 100 results and a
            <code>nextToken</code> value if applicable.</p>")
    limit: option<listVirtualNodesLimit>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>ListVirtualNodes</code> request where <code>limit</code> was used and the results
         exceeded the value of that parameter. Pagination continues from the end of the previous
         results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The name of the service mesh to list virtual nodes in.</p>")
    meshName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListVirtualNodes</code>
         request. When the results of a <code>ListVirtualNodes</code> request exceed
            <code>limit</code>, you can use this value to retrieve the next page of results. This
         value is <code>null</code> when there are no more results to return.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The list of existing virtual nodes for the specified service mesh.</p>")
    virtualNodes: virtualNodeList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListVirtualNodesCommand"
  let make = (~meshName, ~meshOwner=?, ~limit=?, ~nextToken=?, ()) =>
    new({meshOwner: meshOwner, limit: limit, nextToken: nextToken, meshName: meshName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVirtualGateways = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The maximum number of results returned by <code>ListVirtualGateways</code> in paginated
         output. When you use this parameter, <code>ListVirtualGateways</code> returns only
            <code>limit</code> results in a single page along with a <code>nextToken</code> response
         element. You can see the remaining results of the initial request by sending another
            <code>ListVirtualGateways</code> request with the returned <code>nextToken</code> value.
         This value can be between 1 and 100. If you don't use this
         parameter, <code>ListVirtualGateways</code> returns up to 100 results and
         a <code>nextToken</code> value if applicable.</p>")
    limit: option<listVirtualGatewaysLimit>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>ListVirtualGateways</code> request where <code>limit</code> was used and the
         results exceeded the value of that parameter. Pagination continues from the end of the
         previous results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The name of the service mesh to list virtual gateways in.</p>")
    meshName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListVirtualGateways</code>
         request. When the results of a <code>ListVirtualGateways</code> request exceed
            <code>limit</code>, you can use this value to retrieve the next page of results. This
         value is <code>null</code> when there are no more results to return.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The list of existing virtual gateways for the specified service mesh.</p>")
    virtualGateways: virtualGatewayList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListVirtualGatewaysCommand"
  let make = (~meshName, ~meshOwner=?, ~limit=?, ~nextToken=?, ()) =>
    new({meshOwner: meshOwner, limit: limit, nextToken: nextToken, meshName: meshName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of tag results returned by <code>ListTagsForResource</code> in
         paginated output. When this parameter is used, <code>ListTagsForResource</code> returns
         only <code>limit</code> results in a single page along with a <code>nextToken</code>
         response element. You can see the remaining results of the initial request by sending
         another <code>ListTagsForResource</code> request with the returned <code>nextToken</code>
         value. This value can be between 1 and 100. If you don't use
         this parameter, <code>ListTagsForResource</code> returns up to 100
         results and a <code>nextToken</code> value if applicable.</p>")
    limit: option<tagsLimit>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>ListTagsForResource</code> request where <code>limit</code> was used and the
         results exceeded the value of that parameter. Pagination continues from the end of the
         previous results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<baseString>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for.</p>"
    )
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListTagsForResource</code>
         request. When the results of a <code>ListTagsForResource</code> request exceed
            <code>limit</code>, you can use this value to retrieve the next page of results. This
         value is <code>null</code> when there are no more results to return.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The tags for the resource.</p>") tags: tagList_,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~limit=?, ~nextToken=?, ()) =>
    new({limit: limit, nextToken: nextToken, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRoutes = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The maximum number of results returned by <code>ListRoutes</code> in paginated output.
         When you use this parameter, <code>ListRoutes</code> returns only <code>limit</code>
         results in a single page along with a <code>nextToken</code> response element. You can see
         the remaining results of the initial request by sending another <code>ListRoutes</code>
         request with the returned <code>nextToken</code> value. This value can be between
         1 and 100. If you don't use this parameter,
            <code>ListRoutes</code> returns up to 100 results and a
            <code>nextToken</code> value if applicable.</p>")
    limit: option<listRoutesLimit>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>ListRoutes</code> request where <code>limit</code> was used and the results
         exceeded the value of that parameter. Pagination continues from the end of the previous
         results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The name of the virtual router to list routes in.</p>")
    virtualRouterName: resourceName,
    @ocaml.doc("<p>The name of the service mesh to list routes in.</p>") meshName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListRoutes</code> request.
         When the results of a <code>ListRoutes</code> request exceed <code>limit</code>, you can
         use this value to retrieve the next page of results. This value is <code>null</code> when
         there are no more results to return.</p>")
    nextToken: option<baseString>,
    @ocaml.doc(
      "<p>The list of existing routes for the specified service mesh and virtual router.</p>"
    )
    routes: routeList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListRoutesCommand"
  let make = (~virtualRouterName, ~meshName, ~meshOwner=?, ~limit=?, ~nextToken=?, ()) =>
    new({
      meshOwner: meshOwner,
      limit: limit,
      nextToken: nextToken,
      virtualRouterName: virtualRouterName,
      meshName: meshName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMeshes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results returned by <code>ListMeshes</code> in paginated output.
         When you use this parameter, <code>ListMeshes</code> returns only <code>limit</code>
         results in a single page along with a <code>nextToken</code> response element. You can see
         the remaining results of the initial request by sending another <code>ListMeshes</code>
         request with the returned <code>nextToken</code> value. This value can be between
         1 and 100. If you don't use this parameter,
            <code>ListMeshes</code> returns up to 100 results and a
            <code>nextToken</code> value if applicable.</p>")
    limit: option<listMeshesLimit>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>ListMeshes</code> request where <code>limit</code> was used and the results
         exceeded the value of that parameter. Pagination continues from the end of the previous
         results that returned the <code>nextToken</code> value.</p> 
         <note>
            <p>This token should be treated as an opaque identifier that is used only to
                retrieve the next items in a list and not for other programmatic purposes.</p>
        </note>")
    nextToken: option<baseString>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListMeshes</code> request.
         When the results of a <code>ListMeshes</code> request exceed <code>limit</code>, you can
         use this value to retrieve the next page of results. This value is <code>null</code> when
         there are no more results to return.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The list of existing service meshes.</p>") meshes: meshList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListMeshesCommand"
  let make = (~limit=?, ~nextToken=?, ()) => new({limit: limit, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGatewayRoutes = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The maximum number of results returned by <code>ListGatewayRoutes</code> in paginated
         output. When you use this parameter, <code>ListGatewayRoutes</code> returns only
            <code>limit</code> results in a single page along with a <code>nextToken</code> response
         element. You can see the remaining results of the initial request by sending another
            <code>ListGatewayRoutes</code> request with the returned <code>nextToken</code> value.
         This value can be between 1 and 100. If you don't use this
         parameter, <code>ListGatewayRoutes</code> returns up to 100 results and a
            <code>nextToken</code> value if applicable.</p>")
    limit: option<listGatewayRoutesLimit>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
            <code>ListGatewayRoutes</code> request where <code>limit</code> was used and the results
         exceeded the value of that parameter. Pagination continues from the end of the previous
         results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The name of the virtual gateway to list gateway routes in.</p>")
    virtualGatewayName: resourceName,
    @ocaml.doc("<p>The name of the service mesh to list gateway routes in.</p>")
    meshName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListGatewayRoutes</code>
         request. When the results of a <code>ListGatewayRoutes</code> request exceed
            <code>limit</code>, you can use this value to retrieve the next page of results. This
         value is <code>null</code> when there are no more results to return.</p>")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The list of existing gateway routes for the specified service mesh and virtual
         gateway.</p>")
    gatewayRoutes: gatewayRouteList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListGatewayRoutesCommand"
  let make = (~virtualGatewayName, ~meshName, ~meshOwner=?, ~limit=?, ~nextToken=?, ()) =>
    new({
      meshOwner: meshOwner,
      limit: limit,
      nextToken: nextToken,
      virtualGatewayName: virtualGatewayName,
      meshName: meshName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMesh = {
  type t
  type request = {
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>The service mesh specification to apply.</p>") spec: option<meshSpec>,
    @ocaml.doc("<p>The name of the service mesh to update.</p>") meshName: resourceName,
  }
  type response = {mesh: meshData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateMeshCommand"
  let make = (~meshName, ~clientToken=?, ~spec=?, ()) =>
    new({clientToken: clientToken, spec: spec, meshName: meshName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMesh = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the service mesh to describe.</p>") meshName: resourceName,
  }
  type response = {@ocaml.doc("<p>The full description of your service mesh.</p>") mesh: meshData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DescribeMeshCommand"
  let make = (~meshName, ~meshOwner=?, ()) => new({meshOwner: meshOwner, meshName: meshName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMesh = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the service mesh to delete.</p>") meshName: resourceName,
  }
  type response = {@ocaml.doc("<p>The service mesh that was deleted.</p>") mesh: meshData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteMeshCommand"
  let make = (~meshName, ()) => new({meshName: meshName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMesh = {
  type t
  type request = {
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>Optional metadata that you can apply to the service mesh to assist with categorization
         and organization. Each tag consists of a key and an optional value, both of which you
         define. Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The service mesh specification to apply.</p>") spec: option<meshSpec>,
    @ocaml.doc("<p>The name to use for the service mesh.</p>") meshName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your service mesh following the create call.</p>")
    mesh: meshData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateMeshCommand"
  let make = (~meshName, ~clientToken=?, ~tags=?, ~spec=?, ()) =>
    new({clientToken: clientToken, tags: tags, spec: spec, meshName: meshName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVirtualService = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>The new virtual service specification to apply. This overwrites the existing
         data.</p>")
    spec: virtualServiceSpec,
    @ocaml.doc("<p>The name of the service mesh that the virtual service resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual service to update.</p>") virtualServiceName: serviceName,
  }
  type response = {
    @ocaml.doc("<p>A full description of the virtual service that was updated.</p>")
    virtualService: virtualServiceData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateVirtualServiceCommand"
  let make = (~spec, ~meshName, ~virtualServiceName, ~meshOwner=?, ~clientToken=?, ()) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      spec: spec,
      meshName: meshName,
      virtualServiceName: virtualServiceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVirtualService = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the service mesh that the virtual service resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual service to describe.</p>")
    virtualServiceName: serviceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your virtual service.</p>")
    virtualService: virtualServiceData,
  }
  @module("@aws-sdk/client-appmesh") @new
  external new: request => t = "DescribeVirtualServiceCommand"
  let make = (~meshName, ~virtualServiceName, ~meshOwner=?, ()) =>
    new({meshOwner: meshOwner, meshName: meshName, virtualServiceName: virtualServiceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVirtualService = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the service mesh to delete the virtual service in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual service to delete.</p>") virtualServiceName: serviceName,
  }
  type response = {
    @ocaml.doc("<p>The virtual service that was deleted.</p>") virtualService: virtualServiceData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteVirtualServiceCommand"
  let make = (~meshName, ~virtualServiceName, ~meshOwner=?, ()) =>
    new({meshOwner: meshOwner, meshName: meshName, virtualServiceName: virtualServiceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVirtualService = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then
               the account that you specify must share the mesh with your account before you can create 
             the resource in the service mesh. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>Optional metadata that you can apply to the virtual service to assist with
         categorization and organization. Each tag consists of a key and an optional value, both of
         which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The virtual service specification to apply.</p>") spec: virtualServiceSpec,
    @ocaml.doc("<p>The name of the service mesh to create the virtual service in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name to use for the virtual service.</p>") virtualServiceName: serviceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your virtual service following the create call.</p>")
    virtualService: virtualServiceData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateVirtualServiceCommand"
  let make = (~spec, ~meshName, ~virtualServiceName, ~meshOwner=?, ~clientToken=?, ~tags=?, ()) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      tags: tags,
      spec: spec,
      meshName: meshName,
      virtualServiceName: virtualServiceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVirtualRouter = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc(
      "<p>The new virtual router specification to apply. This overwrites the existing data.</p>"
    )
    spec: virtualRouterSpec,
    @ocaml.doc("<p>The name of the service mesh that the virtual router resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual router to update.</p>") virtualRouterName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>A full description of the virtual router that was updated.</p>")
    virtualRouter: virtualRouterData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateVirtualRouterCommand"
  let make = (~spec, ~meshName, ~virtualRouterName, ~meshOwner=?, ~clientToken=?, ()) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      spec: spec,
      meshName: meshName,
      virtualRouterName: virtualRouterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVirtualRouter = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the service mesh that the virtual router resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual router to describe.</p>")
    virtualRouterName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your virtual router.</p>")
    virtualRouter: virtualRouterData,
  }
  @module("@aws-sdk/client-appmesh") @new
  external new: request => t = "DescribeVirtualRouterCommand"
  let make = (~meshName, ~virtualRouterName, ~meshOwner=?, ()) =>
    new({meshOwner: meshOwner, meshName: meshName, virtualRouterName: virtualRouterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVirtualRouter = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the service mesh to delete the virtual router in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual router to delete.</p>") virtualRouterName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The virtual router that was deleted.</p>") virtualRouter: virtualRouterData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteVirtualRouterCommand"
  let make = (~meshName, ~virtualRouterName, ~meshOwner=?, ()) =>
    new({meshOwner: meshOwner, meshName: meshName, virtualRouterName: virtualRouterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVirtualRouter = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then
               the account that you specify must share the mesh with your account before you can create 
             the resource in the service mesh. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>Optional metadata that you can apply to the virtual router to assist with categorization
         and organization. Each tag consists of a key and an optional value, both of which you
         define. Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The virtual router specification to apply.</p>") spec: virtualRouterSpec,
    @ocaml.doc("<p>The name of the service mesh to create the virtual router in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name to use for the virtual router.</p>") virtualRouterName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your virtual router following the create call.</p>")
    virtualRouter: virtualRouterData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateVirtualRouterCommand"
  let make = (~spec, ~meshName, ~virtualRouterName, ~meshOwner=?, ~clientToken=?, ~tags=?, ()) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      tags: tags,
      spec: spec,
      meshName: meshName,
      virtualRouterName: virtualRouterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGatewayRoute = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc(
      "<p>The new gateway route specification to apply. This overwrites the existing data.</p>"
    )
    spec: gatewayRouteSpec,
    @ocaml.doc("<p>The name of the virtual gateway that the gateway route is associated with.</p>")
    virtualGatewayName: resourceName,
    @ocaml.doc("<p>The name of the service mesh that the gateway route resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the gateway route to update.</p>") gatewayRouteName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>A full description of the gateway route that was updated.</p>")
    gatewayRoute: gatewayRouteData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateGatewayRouteCommand"
  let make = (
    ~spec,
    ~virtualGatewayName,
    ~meshName,
    ~gatewayRouteName,
    ~meshOwner=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      spec: spec,
      virtualGatewayName: virtualGatewayName,
      meshName: meshName,
      gatewayRouteName: gatewayRouteName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGatewayRoute = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the virtual gateway that the gateway route is associated with.</p>")
    virtualGatewayName: resourceName,
    @ocaml.doc("<p>The name of the service mesh that the gateway route resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the gateway route to describe.</p>") gatewayRouteName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your gateway route.</p>") gatewayRoute: gatewayRouteData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DescribeGatewayRouteCommand"
  let make = (~virtualGatewayName, ~meshName, ~gatewayRouteName, ~meshOwner=?, ()) =>
    new({
      meshOwner: meshOwner,
      virtualGatewayName: virtualGatewayName,
      meshName: meshName,
      gatewayRouteName: gatewayRouteName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGatewayRoute = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the virtual gateway to delete the route from.</p>")
    virtualGatewayName: resourceName,
    @ocaml.doc("<p>The name of the service mesh to delete the gateway route from.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the gateway route to delete.</p>") gatewayRouteName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The gateway route that was deleted.</p>") gatewayRoute: gatewayRouteData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteGatewayRouteCommand"
  let make = (~virtualGatewayName, ~meshName, ~gatewayRouteName, ~meshOwner=?, ()) =>
    new({
      meshOwner: meshOwner,
      virtualGatewayName: virtualGatewayName,
      meshName: meshName,
      gatewayRouteName: gatewayRouteName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGatewayRoute = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then
               the account that you specify must share the mesh with your account before you can create 
             the resource in the service mesh. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>Optional metadata that you can apply to the gateway route to assist with categorization
         and organization. Each tag consists of a key and an optional value, both of which you
         define. Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The gateway route specification to apply.</p>") spec: gatewayRouteSpec,
    @ocaml.doc("<p>The name of the virtual gateway to associate the gateway route with. If the virtual
         gateway is in a shared mesh, then you must be the owner of the virtual gateway
         resource.</p>")
    virtualGatewayName: resourceName,
    @ocaml.doc("<p>The name of the service mesh to create the gateway route in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name to use for the gateway route.</p>") gatewayRouteName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your gateway route following the create call.</p>")
    gatewayRoute: gatewayRouteData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateGatewayRouteCommand"
  let make = (
    ~spec,
    ~virtualGatewayName,
    ~meshName,
    ~gatewayRouteName,
    ~meshOwner=?,
    ~clientToken=?,
    ~tags=?,
    (),
  ) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      tags: tags,
      spec: spec,
      virtualGatewayName: virtualGatewayName,
      meshName: meshName,
      gatewayRouteName: gatewayRouteName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRoute = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>The new route specification to apply. This overwrites the existing data.</p>")
    spec: routeSpec,
    @ocaml.doc("<p>The name of the virtual router that the route is associated with.</p>")
    virtualRouterName: resourceName,
    @ocaml.doc("<p>The name of the service mesh that the route resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the route to update.</p>") routeName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>A full description of the route that was updated.</p>") route: routeData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateRouteCommand"
  let make = (~spec, ~virtualRouterName, ~meshName, ~routeName, ~meshOwner=?, ~clientToken=?, ()) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      spec: spec,
      virtualRouterName: virtualRouterName,
      meshName: meshName,
      routeName: routeName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRoute = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the virtual router that the route is associated with.</p>")
    virtualRouterName: resourceName,
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the service mesh that the route resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the route to describe.</p>") routeName: resourceName,
  }
  type response = {@ocaml.doc("<p>The full description of your route.</p>") route: routeData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DescribeRouteCommand"
  let make = (~virtualRouterName, ~meshName, ~routeName, ~meshOwner=?, ()) =>
    new({
      virtualRouterName: virtualRouterName,
      meshOwner: meshOwner,
      meshName: meshName,
      routeName: routeName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRoute = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the virtual router to delete the route in.</p>")
    virtualRouterName: resourceName,
    @ocaml.doc("<p>The name of the service mesh to delete the route in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the route to delete.</p>") routeName: resourceName,
  }
  type response = {@ocaml.doc("<p>The route that was deleted.</p>") route: routeData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteRouteCommand"
  let make = (~virtualRouterName, ~meshName, ~routeName, ~meshOwner=?, ()) =>
    new({
      meshOwner: meshOwner,
      virtualRouterName: virtualRouterName,
      meshName: meshName,
      routeName: routeName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRoute = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then
               the account that you specify must share the mesh with your account before you can create 
             the resource in the service mesh. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>Optional metadata that you can apply to the route to assist with categorization and
         organization. Each tag consists of a key and an optional value, both of which you define.
         Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The route specification to apply.</p>") spec: routeSpec,
    @ocaml.doc("<p>The name of the virtual router in which to create the route. If the virtual router is in
         a shared mesh, then you must be the owner of the virtual router resource.</p>")
    virtualRouterName: resourceName,
    @ocaml.doc("<p>The name of the service mesh to create the route in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name to use for the route.</p>") routeName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your mesh following the create call.</p>")
    route: routeData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateRouteCommand"
  let make = (
    ~spec,
    ~virtualRouterName,
    ~meshName,
    ~routeName,
    ~meshOwner=?,
    ~clientToken=?,
    ~tags=?,
    (),
  ) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      tags: tags,
      spec: spec,
      virtualRouterName: virtualRouterName,
      meshName: meshName,
      routeName: routeName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVirtualGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>The new virtual gateway specification to apply. This overwrites the existing
         data.</p>")
    spec: virtualGatewaySpec,
    @ocaml.doc("<p>The name of the service mesh that the virtual gateway resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual gateway to update.</p>")
    virtualGatewayName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>A full description of the virtual gateway that was updated.</p>")
    virtualGateway: virtualGatewayData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateVirtualGatewayCommand"
  let make = (~spec, ~meshName, ~virtualGatewayName, ~meshOwner=?, ~clientToken=?, ()) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      spec: spec,
      meshName: meshName,
      virtualGatewayName: virtualGatewayName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVirtualGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the service mesh that the gateway route resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual gateway to describe.</p>")
    virtualGatewayName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your virtual gateway.</p>")
    virtualGateway: virtualGatewayData,
  }
  @module("@aws-sdk/client-appmesh") @new
  external new: request => t = "DescribeVirtualGatewayCommand"
  let make = (~meshName, ~virtualGatewayName, ~meshOwner=?, ()) =>
    new({meshOwner: meshOwner, meshName: meshName, virtualGatewayName: virtualGatewayName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVirtualGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the service mesh to delete the virtual gateway from.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual gateway to delete.</p>")
    virtualGatewayName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The virtual gateway that was deleted.</p>") virtualGateway: virtualGatewayData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteVirtualGatewayCommand"
  let make = (~meshName, ~virtualGatewayName, ~meshOwner=?, ()) =>
    new({meshOwner: meshOwner, meshName: meshName, virtualGatewayName: virtualGatewayName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVirtualGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then
               the account that you specify must share the mesh with your account before you can create 
             the resource in the service mesh. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>Optional metadata that you can apply to the virtual gateway to assist with
         categorization and organization. Each tag consists of a key and an optional value, both of
         which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The virtual gateway specification to apply.</p>") spec: virtualGatewaySpec,
    @ocaml.doc("<p>The name of the service mesh to create the virtual gateway in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name to use for the virtual gateway.</p>") virtualGatewayName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your virtual gateway following the create call.</p>")
    virtualGateway: virtualGatewayData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateVirtualGatewayCommand"
  let make = (~spec, ~meshName, ~virtualGatewayName, ~meshOwner=?, ~clientToken=?, ~tags=?, ()) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      tags: tags,
      spec: spec,
      meshName: meshName,
      virtualGatewayName: virtualGatewayName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVirtualNode = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc(
      "<p>The new virtual node specification to apply. This overwrites the existing data.</p>"
    )
    spec: virtualNodeSpec,
    @ocaml.doc("<p>The name of the service mesh that the virtual node resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual node to update.</p>") virtualNodeName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>A full description of the virtual node that was updated.</p>")
    virtualNode: virtualNodeData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateVirtualNodeCommand"
  let make = (~spec, ~meshName, ~virtualNodeName, ~meshOwner=?, ~clientToken=?, ()) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      spec: spec,
      meshName: meshName,
      virtualNodeName: virtualNodeName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVirtualNode = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the service mesh that the virtual node resides in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual node to describe.</p>") virtualNodeName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your virtual node.</p>") virtualNode: virtualNodeData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DescribeVirtualNodeCommand"
  let make = (~meshName, ~virtualNodeName, ~meshOwner=?, ()) =>
    new({meshOwner: meshOwner, meshName: meshName, virtualNodeName: virtualNodeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVirtualNode = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then it's
               the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>The name of the service mesh to delete the virtual node in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name of the virtual node to delete.</p>") virtualNodeName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The virtual node that was deleted.</p>") virtualNode: virtualNodeData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteVirtualNodeCommand"
  let make = (~meshName, ~virtualNodeName, ~meshOwner=?, ()) =>
    new({meshOwner: meshOwner, meshName: meshName, virtualNodeName: virtualNodeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVirtualNode = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS IAM account ID of the service mesh owner. If the account ID is not your own, then
               the account that you specify must share the mesh with your account before you can create 
             the resource in the service mesh. For more information about mesh sharing, see <a href=\"https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html\">Working with shared meshes</a>.</p>")
    meshOwner: option<accountId>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>Optional metadata that you can apply to the virtual node to assist with categorization
         and organization. Each tag consists of a key and an optional value, both of which you
         define. Tag keys can have a maximum character length of 128 characters, and tag values can have
            a maximum length of 256 characters.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The virtual node specification to apply.</p>") spec: virtualNodeSpec,
    @ocaml.doc("<p>The name of the service mesh to create the virtual node in.</p>")
    meshName: resourceName,
    @ocaml.doc("<p>The name to use for the virtual node.</p>") virtualNodeName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your virtual node following the create call.</p>")
    virtualNode: virtualNodeData,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateVirtualNodeCommand"
  let make = (~spec, ~meshName, ~virtualNodeName, ~meshOwner=?, ~clientToken=?, ~tags=?, ()) =>
    new({
      meshOwner: meshOwner,
      clientToken: clientToken,
      tags: tags,
      spec: spec,
      meshName: meshName,
      virtualNodeName: virtualNodeName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
