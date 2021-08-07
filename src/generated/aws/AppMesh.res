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
type matchRange = {
  end: baseLong,
  start: baseLong,
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
type httpGatewayRouteMatch = {prefix: baseString}
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
type weightedTarget = {
  weight: percentInt,
  virtualNode: resourceName,
}
type virtualServiceStatus = {status: virtualServiceStatusCode}
type virtualServiceRef = {
  lastUpdatedAt: baseTimestamp,
  createdAt: baseTimestamp,
  version: baseLong,
  arn: arn,
  resourceOwner: accountId,
  meshOwner: accountId,
  virtualServiceName: serviceName,
  meshName: resourceName,
}
type virtualRouterStatus = {status: virtualRouterStatusCode}
type virtualRouterServiceProvider = {virtualRouterName: resourceName}
type virtualRouterRef = {
  lastUpdatedAt: baseTimestamp,
  createdAt: baseTimestamp,
  version: baseLong,
  arn: arn,
  resourceOwner: accountId,
  meshOwner: accountId,
  virtualRouterName: resourceName,
  meshName: resourceName,
}
type virtualNodeTcpConnectionPool = {maxConnections: maxConnections}
type virtualNodeStatus = {status: virtualNodeStatusCode}
type virtualNodeServiceProvider = {virtualNodeName: resourceName}
type virtualNodeRef = {
  lastUpdatedAt: baseTimestamp,
  createdAt: baseTimestamp,
  version: baseLong,
  arn: arn,
  resourceOwner: accountId,
  meshOwner: accountId,
  virtualNodeName: resourceName,
  meshName: resourceName,
}
type virtualNodeHttpConnectionPool = {
  maxPendingRequests: option<maxPendingRequests>,
  maxConnections: maxConnections,
}
type virtualNodeHttp2ConnectionPool = {maxRequests: maxRequests}
type virtualNodeGrpcConnectionPool = {maxRequests: maxRequests}
type virtualGatewayTlsValidationContextSdsTrust = {secretName: virtualGatewaySdsSecretName}
type virtualGatewayTlsValidationContextFileTrust = {certificateChain: filePath}
type virtualGatewayStatus = {status: virtualGatewayStatusCode}
type virtualGatewayRef = {
  lastUpdatedAt: baseTimestamp,
  createdAt: baseTimestamp,
  version: baseLong,
  arn: arn,
  resourceOwner: accountId,
  meshOwner: accountId,
  virtualGatewayName: resourceName,
  meshName: resourceName,
}
type virtualGatewayPortMapping = {
  protocol: virtualGatewayPortProtocol,
  port: portNumber,
}
type virtualGatewayListenerTlsSdsCertificate = {secretName: virtualGatewaySdsSecretName}
type virtualGatewayListenerTlsFileCertificate = {
  privateKey: filePath,
  certificateChain: filePath,
}
type virtualGatewayListenerTlsAcmCertificate = {certificateArn: arn}
type virtualGatewayHttpConnectionPool = {
  maxPendingRequests: option<maxPendingRequests>,
  maxConnections: maxConnections,
}
type virtualGatewayHttp2ConnectionPool = {maxRequests: maxRequests}
type virtualGatewayHealthCheckPolicy = {
  unhealthyThreshold: virtualGatewayHealthCheckThreshold,
  healthyThreshold: virtualGatewayHealthCheckThreshold,
  path: option<baseString>,
  port: option<portNumber>,
  protocol: virtualGatewayPortProtocol,
  intervalMillis: virtualGatewayHealthCheckIntervalMillis,
  timeoutMillis: virtualGatewayHealthCheckTimeoutMillis,
}
type virtualGatewayGrpcConnectionPool = {maxRequests: maxRequests}
type virtualGatewayFileAccessLog = {path: filePath}
type virtualGatewayCertificateAuthorityArns = array<arn>
type tlsValidationContextSdsTrust = {secretName: sdsSecretName}
type tlsValidationContextFileTrust = {certificateChain: filePath}
type tcpRetryPolicyEvents = array<tcpRetryPolicyEvent>
type tagRef = {
  value: tagValue,
  key: tagKey,
}
type tagKeyList = array<tagKey>
type subjectAlternativeNameList = array<subjectAlternativeName>
type routeStatus = {status: routeStatusCode}
type routeRef = {
  lastUpdatedAt: baseTimestamp,
  createdAt: baseTimestamp,
  version: baseLong,
  arn: arn,
  resourceOwner: accountId,
  meshOwner: accountId,
  routeName: resourceName,
  virtualRouterName: resourceName,
  meshName: resourceName,
}
type resourceMetadata = {
  resourceOwner: accountId,
  meshOwner: accountId,
  lastUpdatedAt: baseTimestamp,
  createdAt: baseTimestamp,
  uid: baseString,
  version: baseLong,
  arn: arn,
}
type portSet = array<portNumber>
type portMapping = {
  protocol: portProtocol,
  port: portNumber,
}
type meshStatus = {status: option<meshStatusCode>}
type meshRef = {
  lastUpdatedAt: baseTimestamp,
  createdAt: baseTimestamp,
  version: baseLong,
  arn: arn,
  resourceOwner: accountId,
  meshOwner: accountId,
  meshName: resourceName,
}
type listenerTlsSdsCertificate = {secretName: sdsSecretName}
type listenerTlsFileCertificate = {
  privateKey: filePath,
  certificateChain: filePath,
}
type listenerTlsAcmCertificate = {certificateArn: arn}
type httpRetryPolicyEvents = array<httpRetryPolicyEvent>
type healthCheckPolicy = {
  unhealthyThreshold: healthCheckThreshold,
  healthyThreshold: healthCheckThreshold,
  path: option<baseString>,
  port: option<portNumber>,
  protocol: portProtocol,
  intervalMillis: healthCheckIntervalMillis,
  timeoutMillis: healthCheckTimeoutMillis,
}
type headerMatchMethod = {
  suffix: option<headerMatch>,
  prefix: option<headerMatch>,
  range: option<matchRange>,
  regex: option<headerMatch>,
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
type grpcRouteMetadataMatchMethod = {
  suffix: option<headerMatch>,
  prefix: option<headerMatch>,
  range: option<matchRange>,
  regex: option<headerMatch>,
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
type grpcGatewayRouteMatch = {serviceName: option<serviceName>}
type gatewayRouteVirtualService = {virtualServiceName: resourceName}
type gatewayRouteStatus = {status: gatewayRouteStatusCode}
type gatewayRouteRef = {
  lastUpdatedAt: baseTimestamp,
  createdAt: baseTimestamp,
  version: baseLong,
  arn: arn,
  resourceOwner: accountId,
  meshOwner: accountId,
  virtualGatewayName: resourceName,
  gatewayRouteName: resourceName,
  meshName: resourceName,
}
type fileAccessLog = {path: filePath}
type egressFilter = {@as("type") type_: egressFilterType}
type duration = {
  @as("unit") unit_: option<durationUnit>,
  value: option<durationValue>,
}
type dnsServiceDiscovery = {hostname: hostname}
type certificateAuthorityArns = array<arn>
type awsCloudMapInstanceAttribute = {
  value: awsCloudMapInstanceAttributeValue,
  key: awsCloudMapInstanceAttributeKey,
}
type weightedTargets = array<weightedTarget>
type virtualServiceProvider = {
  virtualRouter: option<virtualRouterServiceProvider>,
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
type virtualRouterListener = {portMapping: portMapping}
type virtualRouterList = array<virtualRouterRef>
type virtualNodeList = array<virtualNodeRef>
type virtualNodeConnectionPool = {
  grpc: option<virtualNodeGrpcConnectionPool>,
  http2: option<virtualNodeHttp2ConnectionPool>,
  http: option<virtualNodeHttpConnectionPool>,
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
type virtualGatewayTlsValidationContextAcmTrust = {
  certificateAuthorityArns: virtualGatewayCertificateAuthorityArns,
}
type virtualGatewayListenerTlsValidationContextTrust = {
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
type virtualGatewayListenerTlsCertificate = {
  sds: option<virtualGatewayListenerTlsSdsCertificate>,
  file: option<virtualGatewayListenerTlsFileCertificate>,
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
type virtualGatewayConnectionPool = {
  grpc: option<virtualGatewayGrpcConnectionPool>,
  http2: option<virtualGatewayHttp2ConnectionPool>,
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
type virtualGatewayClientTlsCertificate = {
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
type virtualGatewayAccessLog = {file: option<virtualGatewayFileAccessLog>}
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
type tlsValidationContextAcmTrust = {certificateAuthorityArns: certificateAuthorityArns}
type tcpTimeout = {idle: option<duration>}
type tagList_ = array<tagRef>
type subjectAlternativeNameMatchers = {exact: subjectAlternativeNameList}
type routeList = array<routeRef>
type outlierDetection = {
  maxEjectionPercent: outlierDetectionMaxEjectionPercent,
  baseEjectionDuration: duration,
  interval: duration,
  maxServerErrors: outlierDetectionMaxServerErrors,
}
type meshSpec = {egressFilter: option<egressFilter>}
type meshList = array<meshRef>
type listenerTlsValidationContextTrust = {
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
type listenerTlsCertificate = {
  sds: option<listenerTlsSdsCertificate>,
  file: option<listenerTlsFileCertificate>,
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
type httpTimeout = {
  idle: option<duration>,
  perRequest: option<duration>,
}
type httpRouteHeader = {
  @as("match") match_: option<headerMatchMethod>,
  invert: option<baseBoolean>,
  name: headerName,
}
type httpRetryPolicy = {
  tcpRetryEvents: option<tcpRetryPolicyEvents>,
  httpRetryEvents: option<httpRetryPolicyEvents>,
  maxRetries: maxRetries,
  perRetryTimeout: duration,
}
type grpcTimeout = {
  idle: option<duration>,
  perRequest: option<duration>,
}
type grpcRouteMetadata = {
  @as("match") match_: option<grpcRouteMetadataMatchMethod>,
  invert: option<baseBoolean>,
  name: headerName,
}
type grpcRetryPolicy = {
  grpcRetryEvents: option<grpcRetryPolicyEvents>,
  tcpRetryEvents: option<tcpRetryPolicyEvents>,
  httpRetryEvents: option<httpRetryPolicyEvents>,
  maxRetries: maxRetries,
  perRetryTimeout: duration,
}
type gatewayRouteTarget = {virtualService: gatewayRouteVirtualService}
type gatewayRouteList = array<gatewayRouteRef>
type clientTlsCertificate = {
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
type accessLog = {file: option<fileAccessLog>}
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
type virtualServiceSpec = {provider: option<virtualServiceProvider>}
type virtualRouterListeners = array<virtualRouterListener>
type virtualGatewayTlsValidationContextTrust = {
  sds: option<virtualGatewayTlsValidationContextSdsTrust>,
  file: option<virtualGatewayTlsValidationContextFileTrust>,
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
type virtualGatewayLogging = {accessLog: option<virtualGatewayAccessLog>}
type tlsValidationContextTrust = {
  sds: option<tlsValidationContextSdsTrust>,
  file: option<tlsValidationContextFileTrust>,
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
type tcpRouteAction = {weightedTargets: weightedTargets}
type subjectAlternativeNames = {@as("match") match_: subjectAlternativeNameMatchers}
type meshData = {
  status: meshStatus,
  metadata: resourceMetadata,
  spec: meshSpec,
  meshName: resourceName,
}
type logging = {accessLog: option<accessLog>}
type listenerTimeout = {
  grpc: option<grpcTimeout>,
  http2: option<httpTimeout>,
  http: option<httpTimeout>,
  tcp: option<tcpTimeout>,
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
type httpRouteAction = {weightedTargets: weightedTargets}
type httpGatewayRouteAction = {target: gatewayRouteTarget}
type grpcRouteMetadataList = array<grpcRouteMetadata>
type grpcRouteAction = {weightedTargets: weightedTargets}
type grpcGatewayRouteAction = {target: gatewayRouteTarget}
type awsCloudMapServiceDiscovery = {
  attributes: option<awsCloudMapInstanceAttributes>,
  serviceName: awsCloudMapName,
  namespaceName: awsCloudMapName,
}
type virtualServiceData = {
  status: virtualServiceStatus,
  metadata: resourceMetadata,
  spec: virtualServiceSpec,
  virtualServiceName: serviceName,
  meshName: resourceName,
}
type virtualRouterSpec = {listeners: option<virtualRouterListeners>}
type virtualGatewayTlsValidationContext = {
  subjectAlternativeNames: option<subjectAlternativeNames>,
  trust: virtualGatewayTlsValidationContextTrust,
}
type virtualGatewayListenerTlsValidationContext = {
  subjectAlternativeNames: option<subjectAlternativeNames>,
  trust: virtualGatewayListenerTlsValidationContextTrust,
}
type tlsValidationContext = {
  subjectAlternativeNames: option<subjectAlternativeNames>,
  trust: tlsValidationContextTrust,
}
type tcpRoute = {
  timeout: option<tcpTimeout>,
  action: tcpRouteAction,
}
type serviceDiscovery = {
  awsCloudMap: option<awsCloudMapServiceDiscovery>,
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
type listenerTlsValidationContext = {
  subjectAlternativeNames: option<subjectAlternativeNames>,
  trust: listenerTlsValidationContextTrust,
}
type httpRouteMatch = {
  headers: option<httpRouteHeaders>,
  scheme: option<httpScheme>,
  method: option<httpMethod>,
  prefix: baseString,
}
type httpGatewayRoute = {
  action: httpGatewayRouteAction,
  @as("match") match_: httpGatewayRouteMatch,
}
type grpcRouteMatch = {
  metadata: option<grpcRouteMetadataList>,
  methodName: option<methodName>,
  serviceName: option<serviceName>,
}
type grpcGatewayRoute = {
  action: grpcGatewayRouteAction,
  @as("match") match_: grpcGatewayRouteMatch,
}
type virtualRouterData = {
  status: virtualRouterStatus,
  metadata: resourceMetadata,
  spec: virtualRouterSpec,
  virtualRouterName: resourceName,
  meshName: resourceName,
}
type virtualGatewayListenerTls = {
  certificate: virtualGatewayListenerTlsCertificate,
  validation: option<virtualGatewayListenerTlsValidationContext>,
  mode: virtualGatewayListenerTlsMode,
}
type virtualGatewayClientPolicyTls = {
  validation: virtualGatewayTlsValidationContext,
  certificate: option<virtualGatewayClientTlsCertificate>,
  ports: option<portSet>,
  enforce: option<baseBoolean>,
}
type listenerTls = {
  validation: option<listenerTlsValidationContext>,
  certificate: listenerTlsCertificate,
  mode: listenerTlsMode,
}
type httpRoute = {
  timeout: option<httpTimeout>,
  retryPolicy: option<httpRetryPolicy>,
  action: httpRouteAction,
  @as("match") match_: httpRouteMatch,
}
type grpcRoute = {
  timeout: option<grpcTimeout>,
  retryPolicy: option<grpcRetryPolicy>,
  @as("match") match_: grpcRouteMatch,
  action: grpcRouteAction,
}
type gatewayRouteSpec = {
  grpcRoute: option<grpcGatewayRoute>,
  http2Route: option<httpGatewayRoute>,
  httpRoute: option<httpGatewayRoute>,
}
type clientPolicyTls = {
  validation: tlsValidationContext,
  certificate: option<clientTlsCertificate>,
  ports: option<portSet>,
  enforce: option<baseBoolean>,
}

type virtualGatewayListener = {
  connectionPool: option<virtualGatewayConnectionPool>,
  tls: option<virtualGatewayListenerTls>,
  portMapping: virtualGatewayPortMapping,
  healthCheck: option<virtualGatewayHealthCheckPolicy>,
}
type virtualGatewayClientPolicy = {tls: option<virtualGatewayClientPolicyTls>}
type routeSpec = {
  grpcRoute: option<grpcRoute>,
  http2Route: option<httpRoute>,
  tcpRoute: option<tcpRoute>,
  httpRoute: option<httpRoute>,
  priority: option<routePriority>,
}
type listener = {
  connectionPool: option<virtualNodeConnectionPool>,
  outlierDetection: option<outlierDetection>,
  timeout: option<listenerTimeout>,
  healthCheck: option<healthCheckPolicy>,
  tls: option<listenerTls>,
  portMapping: portMapping,
}
type gatewayRouteData = {
  status: gatewayRouteStatus,
  metadata: resourceMetadata,
  spec: gatewayRouteSpec,
  virtualGatewayName: resourceName,
  gatewayRouteName: resourceName,
  meshName: resourceName,
}
type clientPolicy = {tls: option<clientPolicyTls>}
type virtualServiceBackend = {
  clientPolicy: option<clientPolicy>,
  virtualServiceName: serviceName,
}
type virtualGatewayListeners = array<virtualGatewayListener>
type virtualGatewayBackendDefaults = {clientPolicy: option<virtualGatewayClientPolicy>}
type routeData = {
  status: routeStatus,
  metadata: resourceMetadata,
  spec: routeSpec,
  routeName: resourceName,
  virtualRouterName: resourceName,
  meshName: resourceName,
}
type listeners = array<listener>
type backendDefaults = {clientPolicy: option<clientPolicy>}
type virtualGatewaySpec = {
  logging: option<virtualGatewayLogging>,
  listeners: virtualGatewayListeners,
  backendDefaults: option<virtualGatewayBackendDefaults>,
}
type backend = {virtualService: option<virtualServiceBackend>}
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
type virtualGatewayData = {
  status: virtualGatewayStatus,
  metadata: resourceMetadata,
  spec: virtualGatewaySpec,
  virtualGatewayName: resourceName,
  meshName: resourceName,
}
type backends = array<backend>
type virtualNodeSpec = {
  logging: option<logging>,
  backendDefaults: option<backendDefaults>,
  backends: option<backends>,
  listeners: option<listeners>,
  serviceDiscovery: option<serviceDiscovery>,
}
type virtualNodeData = {
  status: virtualNodeStatus,
  metadata: resourceMetadata,
  spec: virtualNodeSpec,
  virtualNodeName: resourceName,
  meshName: resourceName,
}
module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagList_,
    resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVirtualServices = {
  type t
  type request = {
    meshOwner: option<accountId>,
    limit: option<listVirtualServicesLimit>,
    nextToken: option<baseString>,
    meshName: resourceName,
  }
  type response = {
    nextToken: option<baseString>,
    virtualServices: virtualServiceList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListVirtualServicesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVirtualRouters = {
  type t
  type request = {
    meshOwner: option<accountId>,
    limit: option<listVirtualRoutersLimit>,
    nextToken: option<baseString>,
    meshName: resourceName,
  }
  type response = {
    nextToken: option<baseString>,
    virtualRouters: virtualRouterList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListVirtualRoutersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVirtualNodes = {
  type t
  type request = {
    meshOwner: option<accountId>,
    limit: option<listVirtualNodesLimit>,
    nextToken: option<baseString>,
    meshName: resourceName,
  }
  type response = {
    nextToken: option<baseString>,
    virtualNodes: virtualNodeList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListVirtualNodesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVirtualGateways = {
  type t
  type request = {
    meshOwner: option<accountId>,
    limit: option<listVirtualGatewaysLimit>,
    nextToken: option<baseString>,
    meshName: resourceName,
  }
  type response = {
    nextToken: option<baseString>,
    virtualGateways: virtualGatewayList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListVirtualGatewaysCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    limit: option<tagsLimit>,
    nextToken: option<baseString>,
    resourceArn: arn,
  }
  type response = {
    nextToken: option<baseString>,
    tags: tagList_,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRoutes = {
  type t
  type request = {
    meshOwner: option<accountId>,
    limit: option<listRoutesLimit>,
    nextToken: option<baseString>,
    virtualRouterName: resourceName,
    meshName: resourceName,
  }
  type response = {
    nextToken: option<baseString>,
    routes: routeList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListRoutesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMeshes = {
  type t
  type request = {
    limit: option<listMeshesLimit>,
    nextToken: option<baseString>,
  }
  type response = {
    nextToken: option<baseString>,
    meshes: meshList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListMeshesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGatewayRoutes = {
  type t
  type request = {
    meshOwner: option<accountId>,
    limit: option<listGatewayRoutesLimit>,
    nextToken: option<baseString>,
    virtualGatewayName: resourceName,
    meshName: resourceName,
  }
  type response = {
    nextToken: option<baseString>,
    gatewayRoutes: gatewayRouteList,
  }
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "ListGatewayRoutesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMesh = {
  type t
  type request = {
    clientToken: option<baseString>,
    spec: option<meshSpec>,
    meshName: resourceName,
  }
  type response = {mesh: meshData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateMeshCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMesh = {
  type t
  type request = {
    meshOwner: option<accountId>,
    meshName: resourceName,
  }
  type response = {mesh: meshData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DescribeMeshCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMesh = {
  type t
  type request = {meshName: resourceName}
  type response = {mesh: meshData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteMeshCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMesh = {
  type t
  type request = {
    clientToken: option<baseString>,
    tags: option<tagList_>,
    spec: option<meshSpec>,
    meshName: resourceName,
  }
  type response = {mesh: meshData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateMeshCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVirtualService = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    spec: virtualServiceSpec,
    meshName: resourceName,
    virtualServiceName: serviceName,
  }
  type response = {virtualService: virtualServiceData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateVirtualServiceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVirtualService = {
  type t
  type request = {
    meshOwner: option<accountId>,
    meshName: resourceName,
    virtualServiceName: serviceName,
  }
  type response = {virtualService: virtualServiceData}
  @module("@aws-sdk/client-appmesh") @new
  external new: request => t = "DescribeVirtualServiceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVirtualService = {
  type t
  type request = {
    meshOwner: option<accountId>,
    meshName: resourceName,
    virtualServiceName: serviceName,
  }
  type response = {virtualService: virtualServiceData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteVirtualServiceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVirtualService = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    tags: option<tagList_>,
    spec: virtualServiceSpec,
    meshName: resourceName,
    virtualServiceName: serviceName,
  }
  type response = {virtualService: virtualServiceData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateVirtualServiceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVirtualRouter = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    spec: virtualRouterSpec,
    meshName: resourceName,
    virtualRouterName: resourceName,
  }
  type response = {virtualRouter: virtualRouterData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateVirtualRouterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVirtualRouter = {
  type t
  type request = {
    meshOwner: option<accountId>,
    meshName: resourceName,
    virtualRouterName: resourceName,
  }
  type response = {virtualRouter: virtualRouterData}
  @module("@aws-sdk/client-appmesh") @new
  external new: request => t = "DescribeVirtualRouterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVirtualRouter = {
  type t
  type request = {
    meshOwner: option<accountId>,
    meshName: resourceName,
    virtualRouterName: resourceName,
  }
  type response = {virtualRouter: virtualRouterData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteVirtualRouterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVirtualRouter = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    tags: option<tagList_>,
    spec: virtualRouterSpec,
    meshName: resourceName,
    virtualRouterName: resourceName,
  }
  type response = {virtualRouter: virtualRouterData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateVirtualRouterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGatewayRoute = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    spec: gatewayRouteSpec,
    virtualGatewayName: resourceName,
    meshName: resourceName,
    gatewayRouteName: resourceName,
  }
  type response = {gatewayRoute: gatewayRouteData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateGatewayRouteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGatewayRoute = {
  type t
  type request = {
    meshOwner: option<accountId>,
    virtualGatewayName: resourceName,
    meshName: resourceName,
    gatewayRouteName: resourceName,
  }
  type response = {gatewayRoute: gatewayRouteData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DescribeGatewayRouteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGatewayRoute = {
  type t
  type request = {
    meshOwner: option<accountId>,
    virtualGatewayName: resourceName,
    meshName: resourceName,
    gatewayRouteName: resourceName,
  }
  type response = {gatewayRoute: gatewayRouteData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteGatewayRouteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGatewayRoute = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    tags: option<tagList_>,
    spec: gatewayRouteSpec,
    virtualGatewayName: resourceName,
    meshName: resourceName,
    gatewayRouteName: resourceName,
  }
  type response = {gatewayRoute: gatewayRouteData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateGatewayRouteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRoute = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    spec: routeSpec,
    virtualRouterName: resourceName,
    meshName: resourceName,
    routeName: resourceName,
  }
  type response = {route: routeData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateRouteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRoute = {
  type t
  type request = {
    virtualRouterName: resourceName,
    meshOwner: option<accountId>,
    meshName: resourceName,
    routeName: resourceName,
  }
  type response = {route: routeData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DescribeRouteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRoute = {
  type t
  type request = {
    meshOwner: option<accountId>,
    virtualRouterName: resourceName,
    meshName: resourceName,
    routeName: resourceName,
  }
  type response = {route: routeData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteRouteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRoute = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    tags: option<tagList_>,
    spec: routeSpec,
    virtualRouterName: resourceName,
    meshName: resourceName,
    routeName: resourceName,
  }
  type response = {route: routeData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateRouteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVirtualGateway = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    spec: virtualGatewaySpec,
    meshName: resourceName,
    virtualGatewayName: resourceName,
  }
  type response = {virtualGateway: virtualGatewayData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateVirtualGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVirtualGateway = {
  type t
  type request = {
    meshOwner: option<accountId>,
    meshName: resourceName,
    virtualGatewayName: resourceName,
  }
  type response = {virtualGateway: virtualGatewayData}
  @module("@aws-sdk/client-appmesh") @new
  external new: request => t = "DescribeVirtualGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVirtualGateway = {
  type t
  type request = {
    meshOwner: option<accountId>,
    meshName: resourceName,
    virtualGatewayName: resourceName,
  }
  type response = {virtualGateway: virtualGatewayData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteVirtualGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVirtualGateway = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    tags: option<tagList_>,
    spec: virtualGatewaySpec,
    meshName: resourceName,
    virtualGatewayName: resourceName,
  }
  type response = {virtualGateway: virtualGatewayData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateVirtualGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVirtualNode = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    spec: virtualNodeSpec,
    meshName: resourceName,
    virtualNodeName: resourceName,
  }
  type response = {virtualNode: virtualNodeData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "UpdateVirtualNodeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVirtualNode = {
  type t
  type request = {
    meshOwner: option<accountId>,
    meshName: resourceName,
    virtualNodeName: resourceName,
  }
  type response = {virtualNode: virtualNodeData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DescribeVirtualNodeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVirtualNode = {
  type t
  type request = {
    meshOwner: option<accountId>,
    meshName: resourceName,
    virtualNodeName: resourceName,
  }
  type response = {virtualNode: virtualNodeData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "DeleteVirtualNodeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVirtualNode = {
  type t
  type request = {
    meshOwner: option<accountId>,
    clientToken: option<baseString>,
    tags: option<tagList_>,
    spec: virtualNodeSpec,
    meshName: resourceName,
    virtualNodeName: resourceName,
  }
  type response = {virtualNode: virtualNodeData}
  @module("@aws-sdk/client-appmesh") @new external new: request => t = "CreateVirtualNodeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
