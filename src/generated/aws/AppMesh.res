type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type virtualServiceStatusCode = [@as("DELETED") #DELETED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]

type virtualRouterStatusCode = [@as("DELETED") #DELETED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]

type virtualNodeStatusCode = [@as("DELETED") #DELETED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]

type virtualGatewayStatusCode = [@as("DELETED") #DELETED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type virtualGatewaySdsSecretName = string
type virtualGatewayPortProtocol = [@as("grpc") #grpc | @as("http2") #http2 | @as("http") #http]
type virtualGatewayListenerTlsMode = [@as("DISABLED") #DISABLED | @as("PERMISSIVE") #PERMISSIVE | @as("STRICT") #STRICT]
type virtualGatewayHealthCheckTimeoutMillis = float;
type virtualGatewayHealthCheckThreshold = int;
type virtualGatewayHealthCheckIntervalMillis = float;

type tcpRetryPolicyEvent = [@as("connection-error") #connection_error]
type tagsLimit = int;
type tagValue = string
type tagKey = string
type subjectAlternativeName = string
type serviceName = string
type sdsSecretName = string
type routeStatusCode = [@as("DELETED") #DELETED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type routePriority = int;

type resourceName = string
type portProtocol = [@as("grpc") #grpc | @as("http2") #http2 | @as("tcp") #tcp | @as("http") #http]
type portNumber = int;
type percentInt = int;
type outlierDetectionMaxServerErrors = float;
type outlierDetectionMaxEjectionPercent = int;
type methodName = string
type meshStatusCode = [@as("DELETED") #DELETED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]

type maxRetries = float;
type maxRequests = int;
type maxPendingRequests = int;
type maxConnections = int;
type matchRange = {
@as("end") end: option<apiLong>,
@as("start") start: option<apiLong>
}
type listenerTlsMode = [@as("DISABLED") #DISABLED | @as("PERMISSIVE") #PERMISSIVE | @as("STRICT") #STRICT]
type listVirtualServicesLimit = int;
type listVirtualRoutersLimit = int;
type listVirtualNodesLimit = int;
type listVirtualGatewaysLimit = int;
type listRoutesLimit = int;
type listMeshesLimit = int;
type listGatewayRoutesLimit = int;
type httpScheme = [@as("https") #https | @as("http") #http]
type httpRetryPolicyEvent = string
type httpMethod = [@as("PATCH") #PATCH | @as("TRACE") #TRACE | @as("OPTIONS") #OPTIONS | @as("CONNECT") #CONNECT | @as("DELETE") #DELETE | @as("PUT") #PUT | @as("POST") #POST | @as("HEAD") #HEAD | @as("GET") #GET]
type httpGatewayRouteMatch = {
@as("prefix") prefix: option<apiString>
}
type hostname = string
type healthCheckTimeoutMillis = float;
type healthCheckThreshold = int;
type healthCheckIntervalMillis = float;
type headerName = string
type headerMatch = string
type grpcRetryPolicyEvent = [@as("unavailable") #unavailable | @as("resource-exhausted") #resource_exhausted | @as("internal") #internal | @as("deadline-exceeded") #deadline_exceeded | @as("cancelled") #cancelled]
type gatewayRouteStatusCode = [@as("DELETED") #DELETED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]

type filePath = string
type egressFilterType = [@as("DROP_ALL") #DROP_ALL | @as("ALLOW_ALL") #ALLOW_ALL]
type durationValue = float;
type durationUnit = [@as("ms") #ms | @as("s") #s]
type awsCloudMapName = string
type awsCloudMapInstanceAttributeValue = string
type awsCloudMapInstanceAttributeKey = string
type arn = string
type accountId = string
type weightedTarget = {
@as("weight") weight: option<percentInt>,
@as("virtualNode") virtualNode: option<resourceName>
}
type virtualServiceStatus = {
@as("status") status: option<virtualServiceStatusCode>
}
type virtualServiceRef = {
@as("lastUpdatedAt") lastUpdatedAt: option<apiTimestamp>,
@as("createdAt") createdAt: option<apiTimestamp>,
@as("version") version: option<apiLong>,
@as("arn") arn: option<arn>,
@as("resourceOwner") resourceOwner: option<accountId>,
@as("meshOwner") meshOwner: option<accountId>,
@as("virtualServiceName") virtualServiceName: option<serviceName>,
@as("meshName") meshName: option<resourceName>
}
type virtualRouterStatus = {
@as("status") status: option<virtualRouterStatusCode>
}
type virtualRouterServiceProvider = {
@as("virtualRouterName") virtualRouterName: option<resourceName>
}
type virtualRouterRef = {
@as("lastUpdatedAt") lastUpdatedAt: option<apiTimestamp>,
@as("createdAt") createdAt: option<apiTimestamp>,
@as("version") version: option<apiLong>,
@as("arn") arn: option<arn>,
@as("resourceOwner") resourceOwner: option<accountId>,
@as("meshOwner") meshOwner: option<accountId>,
@as("virtualRouterName") virtualRouterName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
type virtualNodeTcpConnectionPool = {
@as("maxConnections") maxConnections: option<maxConnections>
}
type virtualNodeStatus = {
@as("status") status: option<virtualNodeStatusCode>
}
type virtualNodeServiceProvider = {
@as("virtualNodeName") virtualNodeName: option<resourceName>
}
type virtualNodeRef = {
@as("lastUpdatedAt") lastUpdatedAt: option<apiTimestamp>,
@as("createdAt") createdAt: option<apiTimestamp>,
@as("version") version: option<apiLong>,
@as("arn") arn: option<arn>,
@as("resourceOwner") resourceOwner: option<accountId>,
@as("meshOwner") meshOwner: option<accountId>,
@as("virtualNodeName") virtualNodeName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
type virtualNodeHttpConnectionPool = {
@as("maxPendingRequests") maxPendingRequests: maxPendingRequests,
@as("maxConnections") maxConnections: option<maxConnections>
}
type virtualNodeHttp2ConnectionPool = {
@as("maxRequests") maxRequests: option<maxRequests>
}
type virtualNodeGrpcConnectionPool = {
@as("maxRequests") maxRequests: option<maxRequests>
}
type virtualGatewayTlsValidationContextSdsTrust = {
@as("secretName") secretName: option<virtualGatewaySdsSecretName>
}
type virtualGatewayTlsValidationContextFileTrust = {
@as("certificateChain") certificateChain: option<filePath>
}
type virtualGatewayStatus = {
@as("status") status: option<virtualGatewayStatusCode>
}
type virtualGatewayRef = {
@as("lastUpdatedAt") lastUpdatedAt: option<apiTimestamp>,
@as("createdAt") createdAt: option<apiTimestamp>,
@as("version") version: option<apiLong>,
@as("arn") arn: option<arn>,
@as("resourceOwner") resourceOwner: option<accountId>,
@as("meshOwner") meshOwner: option<accountId>,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
type virtualGatewayPortMapping = {
@as("protocol") protocol: option<virtualGatewayPortProtocol>,
@as("port") port: option<portNumber>
}
type virtualGatewayListenerTlsSdsCertificate = {
@as("secretName") secretName: option<virtualGatewaySdsSecretName>
}
type virtualGatewayListenerTlsFileCertificate = {
@as("privateKey") privateKey: option<filePath>,
@as("certificateChain") certificateChain: option<filePath>
}
type virtualGatewayListenerTlsAcmCertificate = {
@as("certificateArn") certificateArn: option<arn>
}
type virtualGatewayHttpConnectionPool = {
@as("maxPendingRequests") maxPendingRequests: maxPendingRequests,
@as("maxConnections") maxConnections: option<maxConnections>
}
type virtualGatewayHttp2ConnectionPool = {
@as("maxRequests") maxRequests: option<maxRequests>
}
type virtualGatewayHealthCheckPolicy = {
@as("unhealthyThreshold") unhealthyThreshold: option<virtualGatewayHealthCheckThreshold>,
@as("healthyThreshold") healthyThreshold: option<virtualGatewayHealthCheckThreshold>,
@as("path") path: apiString,
@as("port") port: portNumber,
@as("protocol") protocol: option<virtualGatewayPortProtocol>,
@as("intervalMillis") intervalMillis: option<virtualGatewayHealthCheckIntervalMillis>,
@as("timeoutMillis") timeoutMillis: option<virtualGatewayHealthCheckTimeoutMillis>
}
type virtualGatewayGrpcConnectionPool = {
@as("maxRequests") maxRequests: option<maxRequests>
}
type virtualGatewayFileAccessLog = {
@as("path") path: option<filePath>
}
type virtualGatewayCertificateAuthorityArns = array<arn>
type tlsValidationContextSdsTrust = {
@as("secretName") secretName: option<sdsSecretName>
}
type tlsValidationContextFileTrust = {
@as("certificateChain") certificateChain: option<filePath>
}
type tcpRetryPolicyEvents = array<tcpRetryPolicyEvent>
type tagRef = {
@as("value") value: option<tagValue>,
@as("key") key: option<tagKey>
}
type tagKeyList = array<tagKey>
type subjectAlternativeNameList = array<subjectAlternativeName>
type routeStatus = {
@as("status") status: option<routeStatusCode>
}
type routeRef = {
@as("lastUpdatedAt") lastUpdatedAt: option<apiTimestamp>,
@as("createdAt") createdAt: option<apiTimestamp>,
@as("version") version: option<apiLong>,
@as("arn") arn: option<arn>,
@as("resourceOwner") resourceOwner: option<accountId>,
@as("meshOwner") meshOwner: option<accountId>,
@as("routeName") routeName: option<resourceName>,
@as("virtualRouterName") virtualRouterName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
type resourceMetadata = {
@as("resourceOwner") resourceOwner: option<accountId>,
@as("meshOwner") meshOwner: option<accountId>,
@as("lastUpdatedAt") lastUpdatedAt: option<apiTimestamp>,
@as("createdAt") createdAt: option<apiTimestamp>,
@as("uid") uid: option<apiString>,
@as("version") version: option<apiLong>,
@as("arn") arn: option<arn>
}
type portSet = array<portNumber>
type portMapping = {
@as("protocol") protocol: option<portProtocol>,
@as("port") port: option<portNumber>
}
type meshStatus = {
@as("status") status: meshStatusCode
}
type meshRef = {
@as("lastUpdatedAt") lastUpdatedAt: option<apiTimestamp>,
@as("createdAt") createdAt: option<apiTimestamp>,
@as("version") version: option<apiLong>,
@as("arn") arn: option<arn>,
@as("resourceOwner") resourceOwner: option<accountId>,
@as("meshOwner") meshOwner: option<accountId>,
@as("meshName") meshName: option<resourceName>
}
type listenerTlsSdsCertificate = {
@as("secretName") secretName: option<sdsSecretName>
}
type listenerTlsFileCertificate = {
@as("privateKey") privateKey: option<filePath>,
@as("certificateChain") certificateChain: option<filePath>
}
type listenerTlsAcmCertificate = {
@as("certificateArn") certificateArn: option<arn>
}
type httpRetryPolicyEvents = array<httpRetryPolicyEvent>
type healthCheckPolicy = {
@as("unhealthyThreshold") unhealthyThreshold: option<healthCheckThreshold>,
@as("healthyThreshold") healthyThreshold: option<healthCheckThreshold>,
@as("path") path: apiString,
@as("port") port: portNumber,
@as("protocol") protocol: option<portProtocol>,
@as("intervalMillis") intervalMillis: option<healthCheckIntervalMillis>,
@as("timeoutMillis") timeoutMillis: option<healthCheckTimeoutMillis>
}
type headerMatchMethod = Suffix(headerMatch) | Prefix(headerMatch) | Range(matchRange) | Regex(headerMatch) | Exact(headerMatch);
type grpcRouteMetadataMatchMethod = Suffix(headerMatch) | Prefix(headerMatch) | Range(matchRange) | Regex(headerMatch) | Exact(headerMatch);
type grpcRetryPolicyEvents = array<grpcRetryPolicyEvent>
type grpcGatewayRouteMatch = {
@as("serviceName") serviceName: serviceName
}
type gatewayRouteVirtualService = {
@as("virtualServiceName") virtualServiceName: option<resourceName>
}
type gatewayRouteStatus = {
@as("status") status: option<gatewayRouteStatusCode>
}
type gatewayRouteRef = {
@as("lastUpdatedAt") lastUpdatedAt: option<apiTimestamp>,
@as("createdAt") createdAt: option<apiTimestamp>,
@as("version") version: option<apiLong>,
@as("arn") arn: option<arn>,
@as("resourceOwner") resourceOwner: option<accountId>,
@as("meshOwner") meshOwner: option<accountId>,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>,
@as("gatewayRouteName") gatewayRouteName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
type fileAccessLog = {
@as("path") path: option<filePath>
}
type egressFilter = {
@as("type") type_: option<egressFilterType>
}
type duration = {
@as("unit") unit: durationUnit,
@as("value") value: durationValue
}
type dnsServiceDiscovery = {
@as("hostname") hostname: option<hostname>
}
type certificateAuthorityArns = array<arn>
type awsCloudMapInstanceAttribute = {
@as("value") value: option<awsCloudMapInstanceAttributeValue>,
@as("key") key: option<awsCloudMapInstanceAttributeKey>
}
type weightedTargets = array<weightedTarget>
type virtualServiceProvider = VirtualRouter(virtualRouterServiceProvider) | VirtualNode(virtualNodeServiceProvider);
type virtualServiceList = array<virtualServiceRef>
type virtualRouterListener = {
@as("portMapping") portMapping: option<portMapping>
}
type virtualRouterList = array<virtualRouterRef>
type virtualNodeList = array<virtualNodeRef>
type virtualNodeConnectionPool = Grpc(virtualNodeGrpcConnectionPool) | Http2(virtualNodeHttp2ConnectionPool) | Http(virtualNodeHttpConnectionPool) | Tcp(virtualNodeTcpConnectionPool);
type virtualGatewayTlsValidationContextAcmTrust = {
@as("certificateAuthorityArns") certificateAuthorityArns: option<virtualGatewayCertificateAuthorityArns>
}
type virtualGatewayListenerTlsValidationContextTrust = Sds(virtualGatewayTlsValidationContextSdsTrust) | File(virtualGatewayTlsValidationContextFileTrust);
type virtualGatewayListenerTlsCertificate = Sds(virtualGatewayListenerTlsSdsCertificate) | File(virtualGatewayListenerTlsFileCertificate) | Acm(virtualGatewayListenerTlsAcmCertificate);
type virtualGatewayList = array<virtualGatewayRef>
type virtualGatewayConnectionPool = Grpc(virtualGatewayGrpcConnectionPool) | Http2(virtualGatewayHttp2ConnectionPool) | Http(virtualGatewayHttpConnectionPool);
type virtualGatewayClientTlsCertificate = Sds(virtualGatewayListenerTlsSdsCertificate) | File(virtualGatewayListenerTlsFileCertificate);
type virtualGatewayAccessLog = File(virtualGatewayFileAccessLog);
type tlsValidationContextAcmTrust = {
@as("certificateAuthorityArns") certificateAuthorityArns: option<certificateAuthorityArns>
}
type tcpTimeout = {
@as("idle") idle: duration
}
type tagList = array<tagRef>
type subjectAlternativeNameMatchers = {
@as("exact") exact: option<subjectAlternativeNameList>
}
type routeList = array<routeRef>
type outlierDetection = {
@as("maxEjectionPercent") maxEjectionPercent: option<outlierDetectionMaxEjectionPercent>,
@as("baseEjectionDuration") baseEjectionDuration: option<duration>,
@as("interval") interval: option<duration>,
@as("maxServerErrors") maxServerErrors: option<outlierDetectionMaxServerErrors>
}
type meshSpec = {
@as("egressFilter") egressFilter: egressFilter
}
type meshList = array<meshRef>
type listenerTlsValidationContextTrust = Sds(tlsValidationContextSdsTrust) | File(tlsValidationContextFileTrust);
type listenerTlsCertificate = Sds(listenerTlsSdsCertificate) | File(listenerTlsFileCertificate) | Acm(listenerTlsAcmCertificate);
type httpTimeout = {
@as("idle") idle: duration,
@as("perRequest") perRequest: duration
}
type httpRouteHeader = {
@as("match") match: headerMatchMethod,
@as("invert") invert: apiBoolean,
@as("name") name: option<headerName>
}
type httpRetryPolicy = {
@as("tcpRetryEvents") tcpRetryEvents: tcpRetryPolicyEvents,
@as("httpRetryEvents") httpRetryEvents: httpRetryPolicyEvents,
@as("maxRetries") maxRetries: option<maxRetries>,
@as("perRetryTimeout") perRetryTimeout: option<duration>
}
type grpcTimeout = {
@as("idle") idle: duration,
@as("perRequest") perRequest: duration
}
type grpcRouteMetadata = {
@as("match") match: grpcRouteMetadataMatchMethod,
@as("invert") invert: apiBoolean,
@as("name") name: option<headerName>
}
type grpcRetryPolicy = {
@as("grpcRetryEvents") grpcRetryEvents: grpcRetryPolicyEvents,
@as("tcpRetryEvents") tcpRetryEvents: tcpRetryPolicyEvents,
@as("httpRetryEvents") httpRetryEvents: httpRetryPolicyEvents,
@as("maxRetries") maxRetries: option<maxRetries>,
@as("perRetryTimeout") perRetryTimeout: option<duration>
}
type gatewayRouteTarget = {
@as("virtualService") virtualService: option<gatewayRouteVirtualService>
}
type gatewayRouteList = array<gatewayRouteRef>
type clientTlsCertificate = Sds(listenerTlsSdsCertificate) | File(listenerTlsFileCertificate);
type awsCloudMapInstanceAttributes = array<awsCloudMapInstanceAttribute>
type accessLog = File(fileAccessLog);
type virtualServiceSpec = {
@as("provider") provider: virtualServiceProvider
}
type virtualRouterListeners = array<virtualRouterListener>
type virtualGatewayTlsValidationContextTrust = Sds(virtualGatewayTlsValidationContextSdsTrust) | File(virtualGatewayTlsValidationContextFileTrust) | Acm(virtualGatewayTlsValidationContextAcmTrust);
type virtualGatewayLogging = {
@as("accessLog") accessLog: virtualGatewayAccessLog
}
type tlsValidationContextTrust = Sds(tlsValidationContextSdsTrust) | File(tlsValidationContextFileTrust) | Acm(tlsValidationContextAcmTrust);
type tcpRouteAction = {
@as("weightedTargets") weightedTargets: option<weightedTargets>
}
type subjectAlternativeNames = {
@as("match") match: option<subjectAlternativeNameMatchers>
}
type meshData = {
@as("status") status: option<meshStatus>,
@as("metadata") metadata: option<resourceMetadata>,
@as("spec") spec: option<meshSpec>,
@as("meshName") meshName: option<resourceName>
}
type logging = {
@as("accessLog") accessLog: accessLog
}
type listenerTimeout = Grpc(grpcTimeout) | Http2(httpTimeout) | Http(httpTimeout) | Tcp(tcpTimeout);
type httpRouteHeaders = array<httpRouteHeader>
type httpRouteAction = {
@as("weightedTargets") weightedTargets: option<weightedTargets>
}
type httpGatewayRouteAction = {
@as("target") target: option<gatewayRouteTarget>
}
type grpcRouteMetadataList = array<grpcRouteMetadata>
type grpcRouteAction = {
@as("weightedTargets") weightedTargets: option<weightedTargets>
}
type grpcGatewayRouteAction = {
@as("target") target: option<gatewayRouteTarget>
}
type awsCloudMapServiceDiscovery = {
@as("attributes") attributes: awsCloudMapInstanceAttributes,
@as("serviceName") serviceName: option<awsCloudMapName>,
@as("namespaceName") namespaceName: option<awsCloudMapName>
}
type virtualServiceData = {
@as("status") status: option<virtualServiceStatus>,
@as("metadata") metadata: option<resourceMetadata>,
@as("spec") spec: option<virtualServiceSpec>,
@as("virtualServiceName") virtualServiceName: option<serviceName>,
@as("meshName") meshName: option<resourceName>
}
type virtualRouterSpec = {
@as("listeners") listeners: virtualRouterListeners
}
type virtualGatewayTlsValidationContext = {
@as("subjectAlternativeNames") subjectAlternativeNames: subjectAlternativeNames,
@as("trust") trust: option<virtualGatewayTlsValidationContextTrust>
}
type virtualGatewayListenerTlsValidationContext = {
@as("subjectAlternativeNames") subjectAlternativeNames: subjectAlternativeNames,
@as("trust") trust: option<virtualGatewayListenerTlsValidationContextTrust>
}
type tlsValidationContext = {
@as("subjectAlternativeNames") subjectAlternativeNames: subjectAlternativeNames,
@as("trust") trust: option<tlsValidationContextTrust>
}
type tcpRoute = {
@as("timeout") timeout: tcpTimeout,
@as("action") action: option<tcpRouteAction>
}
type serviceDiscovery = AwsCloudMap(awsCloudMapServiceDiscovery) | Dns(dnsServiceDiscovery);
type listenerTlsValidationContext = {
@as("subjectAlternativeNames") subjectAlternativeNames: subjectAlternativeNames,
@as("trust") trust: option<listenerTlsValidationContextTrust>
}
type httpRouteMatch = {
@as("headers") headers: httpRouteHeaders,
@as("scheme") scheme: httpScheme,
@as("method") method: httpMethod,
@as("prefix") prefix: option<apiString>
}
type httpGatewayRoute = {
@as("action") action: option<httpGatewayRouteAction>,
@as("match") match: option<httpGatewayRouteMatch>
}
type grpcRouteMatch = {
@as("metadata") metadata: grpcRouteMetadataList,
@as("methodName") methodName: methodName,
@as("serviceName") serviceName: serviceName
}
type grpcGatewayRoute = {
@as("action") action: option<grpcGatewayRouteAction>,
@as("match") match: option<grpcGatewayRouteMatch>
}
type virtualRouterData = {
@as("status") status: option<virtualRouterStatus>,
@as("metadata") metadata: option<resourceMetadata>,
@as("spec") spec: option<virtualRouterSpec>,
@as("virtualRouterName") virtualRouterName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
type virtualGatewayListenerTls = {
@as("certificate") certificate: option<virtualGatewayListenerTlsCertificate>,
@as("validation") validation: virtualGatewayListenerTlsValidationContext,
@as("mode") mode: option<virtualGatewayListenerTlsMode>
}
type virtualGatewayClientPolicyTls = {
@as("validation") validation: option<virtualGatewayTlsValidationContext>,
@as("certificate") certificate: virtualGatewayClientTlsCertificate,
@as("ports") ports: portSet,
@as("enforce") enforce: apiBoolean
}
type listenerTls = {
@as("validation") validation: listenerTlsValidationContext,
@as("certificate") certificate: option<listenerTlsCertificate>,
@as("mode") mode: option<listenerTlsMode>
}
type httpRoute = {
@as("timeout") timeout: httpTimeout,
@as("retryPolicy") retryPolicy: httpRetryPolicy,
@as("action") action: option<httpRouteAction>,
@as("match") match: option<httpRouteMatch>
}
type grpcRoute = {
@as("timeout") timeout: grpcTimeout,
@as("retryPolicy") retryPolicy: grpcRetryPolicy,
@as("match") match: option<grpcRouteMatch>,
@as("action") action: option<grpcRouteAction>
}
type gatewayRouteSpec = {
@as("grpcRoute") grpcRoute: grpcGatewayRoute,
@as("http2Route") http2Route: httpGatewayRoute,
@as("httpRoute") httpRoute: httpGatewayRoute
}
type clientPolicyTls = {
@as("validation") validation: option<tlsValidationContext>,
@as("certificate") certificate: clientTlsCertificate,
@as("ports") ports: portSet,
@as("enforce") enforce: apiBoolean
}
type clientType;
@module("@aws-sdk/client-appmesh") @new external createClient: unit => clientType = "AppMeshClient";
type virtualGatewayListener = {
@as("connectionPool") connectionPool: virtualGatewayConnectionPool,
@as("tls") tls: virtualGatewayListenerTls,
@as("portMapping") portMapping: option<virtualGatewayPortMapping>,
@as("healthCheck") healthCheck: virtualGatewayHealthCheckPolicy
}
type virtualGatewayClientPolicy = {
@as("tls") tls: virtualGatewayClientPolicyTls
}
type routeSpec = {
@as("grpcRoute") grpcRoute: grpcRoute,
@as("http2Route") http2Route: httpRoute,
@as("tcpRoute") tcpRoute: tcpRoute,
@as("httpRoute") httpRoute: httpRoute,
@as("priority") priority: routePriority
}
type listener = {
@as("connectionPool") connectionPool: virtualNodeConnectionPool,
@as("outlierDetection") outlierDetection: outlierDetection,
@as("timeout") timeout: listenerTimeout,
@as("healthCheck") healthCheck: healthCheckPolicy,
@as("tls") tls: listenerTls,
@as("portMapping") portMapping: option<portMapping>
}
type gatewayRouteData = {
@as("status") status: option<gatewayRouteStatus>,
@as("metadata") metadata: option<resourceMetadata>,
@as("spec") spec: option<gatewayRouteSpec>,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>,
@as("gatewayRouteName") gatewayRouteName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
type clientPolicy = {
@as("tls") tls: clientPolicyTls
}
type virtualServiceBackend = {
@as("clientPolicy") clientPolicy: clientPolicy,
@as("virtualServiceName") virtualServiceName: option<serviceName>
}
type virtualGatewayListeners = array<virtualGatewayListener>
type virtualGatewayBackendDefaults = {
@as("clientPolicy") clientPolicy: virtualGatewayClientPolicy
}
type routeData = {
@as("status") status: option<routeStatus>,
@as("metadata") metadata: option<resourceMetadata>,
@as("spec") spec: option<routeSpec>,
@as("routeName") routeName: option<resourceName>,
@as("virtualRouterName") virtualRouterName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
type listeners = array<listener>
type backendDefaults = {
@as("clientPolicy") clientPolicy: clientPolicy
}
type virtualGatewaySpec = {
@as("logging") logging: virtualGatewayLogging,
@as("listeners") listeners: option<virtualGatewayListeners>,
@as("backendDefaults") backendDefaults: virtualGatewayBackendDefaults
}
type backend = VirtualService(virtualServiceBackend);
type virtualGatewayData = {
@as("status") status: option<virtualGatewayStatus>,
@as("metadata") metadata: option<resourceMetadata>,
@as("spec") spec: option<virtualGatewaySpec>,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
type backends = array<backend>
type virtualNodeSpec = {
@as("logging") logging: logging,
@as("backendDefaults") backendDefaults: backendDefaults,
@as("backends") backends: backends,
@as("listeners") listeners: listeners,
@as("serviceDiscovery") serviceDiscovery: serviceDiscovery
}
type virtualNodeData = {
@as("status") status: option<virtualNodeStatus>,
@as("metadata") metadata: option<resourceMetadata>,
@as("spec") spec: option<virtualNodeSpec>,
@as("virtualNodeName") virtualNodeName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVirtualServices = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("limit") limit: listVirtualServicesLimit,
@as("nextToken") nextToken: apiString,
@as("meshName") meshName: option<resourceName>
}
  type response = {
@as("nextToken") nextToken: apiString,
@as("virtualServices") virtualServices: option<virtualServiceList>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "ListVirtualServicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVirtualRouters = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("limit") limit: listVirtualRoutersLimit,
@as("nextToken") nextToken: apiString,
@as("meshName") meshName: option<resourceName>
}
  type response = {
@as("nextToken") nextToken: apiString,
@as("virtualRouters") virtualRouters: option<virtualRouterList>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "ListVirtualRoutersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVirtualNodes = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("limit") limit: listVirtualNodesLimit,
@as("nextToken") nextToken: apiString,
@as("meshName") meshName: option<resourceName>
}
  type response = {
@as("nextToken") nextToken: apiString,
@as("virtualNodes") virtualNodes: option<virtualNodeList>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "ListVirtualNodesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVirtualGateways = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("limit") limit: listVirtualGatewaysLimit,
@as("nextToken") nextToken: apiString,
@as("meshName") meshName: option<resourceName>
}
  type response = {
@as("nextToken") nextToken: apiString,
@as("virtualGateways") virtualGateways: option<virtualGatewayList>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "ListVirtualGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("limit") limit: tagsLimit,
@as("nextToken") nextToken: apiString,
@as("resourceArn") resourceArn: option<arn>
}
  type response = {
@as("nextToken") nextToken: apiString,
@as("tags") tags: option<tagList>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRoutes = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("limit") limit: listRoutesLimit,
@as("nextToken") nextToken: apiString,
@as("virtualRouterName") virtualRouterName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
  type response = {
@as("nextToken") nextToken: apiString,
@as("routes") routes: option<routeList>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "ListRoutesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMeshes = {
  type t;
  type request = {
@as("limit") limit: listMeshesLimit,
@as("nextToken") nextToken: apiString
}
  type response = {
@as("nextToken") nextToken: apiString,
@as("meshes") meshes: option<meshList>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "ListMeshesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGatewayRoutes = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("limit") limit: listGatewayRoutesLimit,
@as("nextToken") nextToken: apiString,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>,
@as("meshName") meshName: option<resourceName>
}
  type response = {
@as("nextToken") nextToken: apiString,
@as("gatewayRoutes") gatewayRoutes: option<gatewayRouteList>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "ListGatewayRoutesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMesh = {
  type t;
  type request = {
@as("clientToken") clientToken: apiString,
@as("spec") spec: meshSpec,
@as("meshName") meshName: option<resourceName>
}
  type response = {
@as("mesh") mesh: option<meshData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "UpdateMeshCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMesh = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("meshName") meshName: option<resourceName>
}
  type response = {
@as("mesh") mesh: option<meshData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DescribeMeshCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMesh = {
  type t;
  type request = {
@as("meshName") meshName: option<resourceName>
}
  type response = {
@as("mesh") mesh: option<meshData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DeleteMeshCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMesh = {
  type t;
  type request = {
@as("clientToken") clientToken: apiString,
@as("tags") tags: tagList,
@as("spec") spec: meshSpec,
@as("meshName") meshName: option<resourceName>
}
  type response = {
@as("mesh") mesh: option<meshData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "CreateMeshCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVirtualService = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("spec") spec: option<virtualServiceSpec>,
@as("meshName") meshName: option<resourceName>,
@as("virtualServiceName") virtualServiceName: option<serviceName>
}
  type response = {
@as("virtualService") virtualService: option<virtualServiceData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "UpdateVirtualServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVirtualService = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("meshName") meshName: option<resourceName>,
@as("virtualServiceName") virtualServiceName: option<serviceName>
}
  type response = {
@as("virtualService") virtualService: option<virtualServiceData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DescribeVirtualServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVirtualService = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("meshName") meshName: option<resourceName>,
@as("virtualServiceName") virtualServiceName: option<serviceName>
}
  type response = {
@as("virtualService") virtualService: option<virtualServiceData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DeleteVirtualServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVirtualService = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("tags") tags: tagList,
@as("spec") spec: option<virtualServiceSpec>,
@as("meshName") meshName: option<resourceName>,
@as("virtualServiceName") virtualServiceName: option<serviceName>
}
  type response = {
@as("virtualService") virtualService: option<virtualServiceData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "CreateVirtualServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVirtualRouter = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("spec") spec: option<virtualRouterSpec>,
@as("meshName") meshName: option<resourceName>,
@as("virtualRouterName") virtualRouterName: option<resourceName>
}
  type response = {
@as("virtualRouter") virtualRouter: option<virtualRouterData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "UpdateVirtualRouterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVirtualRouter = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("meshName") meshName: option<resourceName>,
@as("virtualRouterName") virtualRouterName: option<resourceName>
}
  type response = {
@as("virtualRouter") virtualRouter: option<virtualRouterData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DescribeVirtualRouterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVirtualRouter = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("meshName") meshName: option<resourceName>,
@as("virtualRouterName") virtualRouterName: option<resourceName>
}
  type response = {
@as("virtualRouter") virtualRouter: option<virtualRouterData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DeleteVirtualRouterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVirtualRouter = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("tags") tags: tagList,
@as("spec") spec: option<virtualRouterSpec>,
@as("meshName") meshName: option<resourceName>,
@as("virtualRouterName") virtualRouterName: option<resourceName>
}
  type response = {
@as("virtualRouter") virtualRouter: option<virtualRouterData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "CreateVirtualRouterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGatewayRoute = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("spec") spec: option<gatewayRouteSpec>,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>,
@as("meshName") meshName: option<resourceName>,
@as("gatewayRouteName") gatewayRouteName: option<resourceName>
}
  type response = {
@as("gatewayRoute") gatewayRoute: option<gatewayRouteData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "UpdateGatewayRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGatewayRoute = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>,
@as("meshName") meshName: option<resourceName>,
@as("gatewayRouteName") gatewayRouteName: option<resourceName>
}
  type response = {
@as("gatewayRoute") gatewayRoute: option<gatewayRouteData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DescribeGatewayRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGatewayRoute = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>,
@as("meshName") meshName: option<resourceName>,
@as("gatewayRouteName") gatewayRouteName: option<resourceName>
}
  type response = {
@as("gatewayRoute") gatewayRoute: option<gatewayRouteData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DeleteGatewayRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGatewayRoute = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("tags") tags: tagList,
@as("spec") spec: option<gatewayRouteSpec>,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>,
@as("meshName") meshName: option<resourceName>,
@as("gatewayRouteName") gatewayRouteName: option<resourceName>
}
  type response = {
@as("gatewayRoute") gatewayRoute: option<gatewayRouteData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "CreateGatewayRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRoute = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("spec") spec: option<routeSpec>,
@as("virtualRouterName") virtualRouterName: option<resourceName>,
@as("meshName") meshName: option<resourceName>,
@as("routeName") routeName: option<resourceName>
}
  type response = {
@as("route") route: option<routeData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "UpdateRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRoute = {
  type t;
  type request = {
@as("virtualRouterName") virtualRouterName: option<resourceName>,
@as("meshOwner") meshOwner: accountId,
@as("meshName") meshName: option<resourceName>,
@as("routeName") routeName: option<resourceName>
}
  type response = {
@as("route") route: option<routeData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DescribeRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRoute = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("virtualRouterName") virtualRouterName: option<resourceName>,
@as("meshName") meshName: option<resourceName>,
@as("routeName") routeName: option<resourceName>
}
  type response = {
@as("route") route: option<routeData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DeleteRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRoute = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("tags") tags: tagList,
@as("spec") spec: option<routeSpec>,
@as("virtualRouterName") virtualRouterName: option<resourceName>,
@as("meshName") meshName: option<resourceName>,
@as("routeName") routeName: option<resourceName>
}
  type response = {
@as("route") route: option<routeData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "CreateRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVirtualGateway = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("spec") spec: option<virtualGatewaySpec>,
@as("meshName") meshName: option<resourceName>,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>
}
  type response = {
@as("virtualGateway") virtualGateway: option<virtualGatewayData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "UpdateVirtualGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVirtualGateway = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("meshName") meshName: option<resourceName>,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>
}
  type response = {
@as("virtualGateway") virtualGateway: option<virtualGatewayData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DescribeVirtualGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVirtualGateway = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("meshName") meshName: option<resourceName>,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>
}
  type response = {
@as("virtualGateway") virtualGateway: option<virtualGatewayData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DeleteVirtualGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVirtualGateway = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("tags") tags: tagList,
@as("spec") spec: option<virtualGatewaySpec>,
@as("meshName") meshName: option<resourceName>,
@as("virtualGatewayName") virtualGatewayName: option<resourceName>
}
  type response = {
@as("virtualGateway") virtualGateway: option<virtualGatewayData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "CreateVirtualGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVirtualNode = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("spec") spec: option<virtualNodeSpec>,
@as("meshName") meshName: option<resourceName>,
@as("virtualNodeName") virtualNodeName: option<resourceName>
}
  type response = {
@as("virtualNode") virtualNode: option<virtualNodeData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "UpdateVirtualNodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVirtualNode = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("meshName") meshName: option<resourceName>,
@as("virtualNodeName") virtualNodeName: option<resourceName>
}
  type response = {
@as("virtualNode") virtualNode: option<virtualNodeData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DescribeVirtualNodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVirtualNode = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("meshName") meshName: option<resourceName>,
@as("virtualNodeName") virtualNodeName: option<resourceName>
}
  type response = {
@as("virtualNode") virtualNode: option<virtualNodeData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "DeleteVirtualNodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVirtualNode = {
  type t;
  type request = {
@as("meshOwner") meshOwner: accountId,
@as("clientToken") clientToken: apiString,
@as("tags") tags: tagList,
@as("spec") spec: option<virtualNodeSpec>,
@as("meshName") meshName: option<resourceName>,
@as("virtualNodeName") virtualNodeName: option<resourceName>
}
  type response = {
@as("virtualNode") virtualNode: option<virtualNodeData>
}
  @module("@aws-sdk/client-appmesh") @new external new_: (request) => t = "CreateVirtualNodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
