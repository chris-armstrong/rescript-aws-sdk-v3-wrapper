type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type serviceTypeOption = [@as("HTTP") #HTTP]
type serviceType = [@as("DNS") #DNS | @as("DNS_HTTP") #DNS_HTTP | @as("HTTP") #HTTP]
type serviceName = string
type serviceFilterName = [@as("NAMESPACE_ID") #NAMESPACE_ID]
type routingPolicy = [@as("WEIGHTED") #WEIGHTED | @as("MULTIVALUE") #MULTIVALUE]
type resourcePath = string
type resourceId = string
type resourceDescription = string
type resourceCount = int;
type recordType = [@as("CNAME") #CNAME | @as("AAAA") #AAAA | @as("A") #A | @as("SRV") #SRV]
type recordTTL = float;
type operationType = [@as("DEREGISTER_INSTANCE") #DEREGISTER_INSTANCE | @as("REGISTER_INSTANCE") #REGISTER_INSTANCE | @as("UPDATE_SERVICE") #UPDATE_SERVICE | @as("DELETE_NAMESPACE") #DELETE_NAMESPACE | @as("CREATE_NAMESPACE") #CREATE_NAMESPACE]
type operationTargetType = [@as("INSTANCE") #INSTANCE | @as("SERVICE") #SERVICE | @as("NAMESPACE") #NAMESPACE]
type operationStatus = [@as("FAIL") #FAIL | @as("SUCCESS") #SUCCESS | @as("PENDING") #PENDING | @as("SUBMITTED") #SUBMITTED]
type operationId = string
type operationFilterName = [@as("UPDATE_DATE") #UPDATE_DATE | @as("TYPE") #TYPE | @as("STATUS") #STATUS | @as("SERVICE_ID") #SERVICE_ID | @as("NAMESPACE_ID") #NAMESPACE_ID]
type nextToken = string
type namespaceType = [@as("HTTP") #HTTP | @as("DNS_PRIVATE") #DNS_PRIVATE | @as("DNS_PUBLIC") #DNS_PUBLIC]
type namespaceNamePublic = string
type namespaceNamePrivate = string
type namespaceNameHttp = string
type namespaceName = string
type namespaceFilterName = [@as("TYPE") #TYPE]
type message = string
type maxResults = int;
type instanceId = string
type healthStatusFilter = [@as("HEALTHY_OR_ELSE_ALL") #HEALTHY_OR_ELSE_ALL | @as("ALL") #ALL | @as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type healthStatus = [@as("UNKNOWN") #UNKNOWN | @as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type healthCheckType = [@as("TCP") #TCP | @as("HTTPS") #HTTPS | @as("HTTP") #HTTP]
type filterValue = string
type filterCondition = [@as("BETWEEN") #BETWEEN | @as("IN") #IN | @as("EQ") #EQ]
type failureThreshold = int;
type errorMessage = string
type discoverMaxResults = int;
type customHealthStatus = [@as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type code = string
type attrValue = string
type attrKey = string
type arn = string
type amazonResourceName = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type operationTargetsMap = Js.Dict.t< resourceId>
type operationSummary = {
@as("Status") status: operationStatus,
@as("Id") id: operationId
}
type instanceIdList = array<resourceId>
type instanceHealthStatusMap = Js.Dict.t< healthStatus>
type httpProperties = {
@as("HttpName") httpName: namespaceName
}
type healthCheckCustomConfig = {
@as("FailureThreshold") failureThreshold: failureThreshold
}
type healthCheckConfig = {
@as("FailureThreshold") failureThreshold: failureThreshold,
@as("ResourcePath") resourcePath: resourcePath,
@as("Type") type_: option<healthCheckType>
}
type filterValues = array<filterValue>
type dnsRecord = {
@as("TTL") tTL: option<recordTTL>,
@as("Type") type_: option<recordType>
}
type dnsProperties = {
@as("HostedZoneId") hostedZoneId: resourceId
}
type attributes = Js.Dict.t< attrValue>
type tagList = array<tag>
type serviceFilter = {
@as("Condition") condition: filterCondition,
@as("Values") values: option<filterValues>,
@as("Name") name: option<serviceFilterName>
}
type operationSummaryList = array<operationSummary>
type operationFilter = {
@as("Condition") condition: filterCondition,
@as("Values") values: option<filterValues>,
@as("Name") name: option<operationFilterName>
}
type operation = {
@as("Targets") targets: operationTargetsMap,
@as("UpdateDate") updateDate: amazonawsTimestamp,
@as("CreateDate") createDate: amazonawsTimestamp,
@as("ErrorCode") errorCode: code,
@as("ErrorMessage") errorMessage: message,
@as("Status") status: operationStatus,
@as("Type") type_: operationType,
@as("Id") id: operationId
}
type namespaceProperties = {
@as("HttpProperties") httpProperties: httpProperties,
@as("DnsProperties") dnsProperties: dnsProperties
}
type namespaceFilter = {
@as("Condition") condition: filterCondition,
@as("Values") values: option<filterValues>,
@as("Name") name: option<namespaceFilterName>
}
type instanceSummary = {
@as("Attributes") attributes: attributes,
@as("Id") id: resourceId
}
type instance = {
@as("Attributes") attributes: attributes,
@as("CreatorRequestId") creatorRequestId: resourceId,
@as("Id") id: option<resourceId>
}
type httpInstanceSummary = {
@as("Attributes") attributes: attributes,
@as("HealthStatus") healthStatus: healthStatus,
@as("ServiceName") serviceName: serviceName,
@as("NamespaceName") namespaceName: namespaceNameHttp,
@as("InstanceId") instanceId: resourceId
}
type dnsRecordList = array<dnsRecord>
type serviceFilters = array<serviceFilter>
type operationFilters = array<operationFilter>
type namespaceSummary = {
@as("CreateDate") createDate: amazonawsTimestamp,
@as("Properties") properties: namespaceProperties,
@as("ServiceCount") serviceCount: resourceCount,
@as("Description") description: resourceDescription,
@as("Type") type_: namespaceType,
@as("Name") name: namespaceName,
@as("Arn") arn: arn,
@as("Id") id: resourceId
}
type namespaceFilters = array<namespaceFilter>
type namespace = {
@as("CreatorRequestId") creatorRequestId: resourceId,
@as("CreateDate") createDate: amazonawsTimestamp,
@as("Properties") properties: namespaceProperties,
@as("ServiceCount") serviceCount: resourceCount,
@as("Description") description: resourceDescription,
@as("Type") type_: namespaceType,
@as("Name") name: namespaceName,
@as("Arn") arn: arn,
@as("Id") id: resourceId
}
type instanceSummaryList = array<instanceSummary>
type httpInstanceSummaryList = array<httpInstanceSummary>
type dnsConfigChange = {
@as("DnsRecords") dnsRecords: option<dnsRecordList>
}
type dnsConfig = {
@as("DnsRecords") dnsRecords: option<dnsRecordList>,
@as("RoutingPolicy") routingPolicy: routingPolicy,
@as("NamespaceId") namespaceId: resourceId
}
type serviceSummary = {
@as("CreateDate") createDate: amazonawsTimestamp,
@as("HealthCheckCustomConfig") healthCheckCustomConfig: healthCheckCustomConfig,
@as("HealthCheckConfig") healthCheckConfig: healthCheckConfig,
@as("DnsConfig") dnsConfig: dnsConfig,
@as("InstanceCount") instanceCount: resourceCount,
@as("Description") description: resourceDescription,
@as("Type") type_: serviceType,
@as("Name") name: serviceName,
@as("Arn") arn: arn,
@as("Id") id: resourceId
}
type serviceChange = {
@as("HealthCheckConfig") healthCheckConfig: healthCheckConfig,
@as("DnsConfig") dnsConfig: dnsConfigChange,
@as("Description") description: resourceDescription
}
type service = {
@as("CreatorRequestId") creatorRequestId: resourceId,
@as("CreateDate") createDate: amazonawsTimestamp,
@as("HealthCheckCustomConfig") healthCheckCustomConfig: healthCheckCustomConfig,
@as("HealthCheckConfig") healthCheckConfig: healthCheckConfig,
@as("Type") type_: serviceType,
@as("DnsConfig") dnsConfig: dnsConfig,
@as("InstanceCount") instanceCount: resourceCount,
@as("Description") description: resourceDescription,
@as("NamespaceId") namespaceId: resourceId,
@as("Name") name: serviceName,
@as("Arn") arn: arn,
@as("Id") id: resourceId
}
type namespaceSummariesList = array<namespaceSummary>
type serviceSummariesList = array<serviceSummary>
type clientType;
@module("@aws-sdk/client-servicediscovery") @new external createClient: unit => clientType = "ServiceDiscoveryClient";
module UpdateInstanceCustomHealthStatus = {
  type t;
  type request = {
@as("Status") status: option<customHealthStatus>,
@as("InstanceId") instanceId: option<resourceId>,
@as("ServiceId") serviceId: option<resourceId>
}
  
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "UpdateInstanceCustomHealthStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeregisterInstance = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<resourceId>,
@as("ServiceId") serviceId: option<resourceId>
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "DeregisterInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteService = {
  type t;
  type request = {
@as("Id") id: option<resourceId>
}
  type response = unit
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "DeleteServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNamespace = {
  type t;
  type request = {
@as("Id") id: option<resourceId>
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "DeleteNamespaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterInstance = {
  type t;
  type request = {
@as("Attributes") attributes: option<attributes>,
@as("CreatorRequestId") creatorRequestId: resourceId,
@as("InstanceId") instanceId: option<instanceId>,
@as("ServiceId") serviceId: option<resourceId>
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "RegisterInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstancesHealthStatus = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Instances") instances: instanceIdList,
@as("ServiceId") serviceId: option<resourceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Status") status: instanceHealthStatusMap
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "GetInstancesHealthStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOperation = {
  type t;
  type request = {
@as("OperationId") operationId: option<resourceId>
}
  type response = {
@as("Operation") operation: operation
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "GetOperationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstance = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<resourceId>,
@as("ServiceId") serviceId: option<resourceId>
}
  type response = {
@as("Instance") instance: instance
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "GetInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePublicDnsNamespace = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: resourceDescription,
@as("CreatorRequestId") creatorRequestId: resourceId,
@as("Name") name: option<namespaceNamePublic>
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "CreatePublicDnsNamespaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePrivateDnsNamespace = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Vpc") vpc: option<resourceId>,
@as("Description") description: resourceDescription,
@as("CreatorRequestId") creatorRequestId: resourceId,
@as("Name") name: option<namespaceNamePrivate>
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "CreatePrivateDnsNamespaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHttpNamespace = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: resourceDescription,
@as("CreatorRequestId") creatorRequestId: resourceId,
@as("Name") name: option<namespaceNameHttp>
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "CreateHttpNamespaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOperations = {
  type t;
  type request = {
@as("Filters") filters: operationFilters,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Operations") operations: operationSummaryList
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "ListOperationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInstances = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("ServiceId") serviceId: option<resourceId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Instances") instances: instanceSummaryList
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "ListInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetNamespace = {
  type t;
  type request = {
@as("Id") id: option<resourceId>
}
  type response = {
@as("Namespace") namespace: namespace
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "GetNamespaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DiscoverInstances = {
  type t;
  type request = {
@as("HealthStatus") healthStatus: healthStatusFilter,
@as("OptionalParameters") optionalParameters: attributes,
@as("QueryParameters") queryParameters: attributes,
@as("MaxResults") maxResults: discoverMaxResults,
@as("ServiceName") serviceName: option<serviceName>,
@as("NamespaceName") namespaceName: option<namespaceName>
}
  type response = {
@as("Instances") instances: httpInstanceSummaryList
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "DiscoverInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateService = {
  type t;
  type request = {
@as("Service") service: option<serviceChange>,
@as("Id") id: option<resourceId>
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "UpdateServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNamespaces = {
  type t;
  type request = {
@as("Filters") filters: namespaceFilters,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Namespaces") namespaces: namespaceSummariesList
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "ListNamespacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetService = {
  type t;
  type request = {
@as("Id") id: option<resourceId>
}
  type response = {
@as("Service") service: service
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "GetServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateService = {
  type t;
  type request = {
@as("Type") type_: serviceTypeOption,
@as("Tags") tags: tagList,
@as("HealthCheckCustomConfig") healthCheckCustomConfig: healthCheckCustomConfig,
@as("HealthCheckConfig") healthCheckConfig: healthCheckConfig,
@as("DnsConfig") dnsConfig: dnsConfig,
@as("Description") description: resourceDescription,
@as("CreatorRequestId") creatorRequestId: resourceId,
@as("NamespaceId") namespaceId: resourceId,
@as("Name") name: option<serviceName>
}
  type response = {
@as("Service") service: service
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "CreateServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServices = {
  type t;
  type request = {
@as("Filters") filters: serviceFilters,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Services") services: serviceSummariesList
}
  @module("@aws-sdk/client-servicediscovery") @new external new_: (request) => t = "ListServicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
