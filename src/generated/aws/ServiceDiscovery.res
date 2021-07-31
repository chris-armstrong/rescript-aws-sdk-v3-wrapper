type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-servicediscovery") @new
external createClient: unit => awsServiceClient = "ServiceDiscoveryClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
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
type resourceCount = int
type recordType = [@as("CNAME") #CNAME | @as("AAAA") #AAAA | @as("A") #A | @as("SRV") #SRV]
type recordTTL = float
type operationType = [
  | @as("DEREGISTER_INSTANCE") #DEREGISTER_INSTANCE
  | @as("REGISTER_INSTANCE") #REGISTER_INSTANCE
  | @as("UPDATE_SERVICE") #UPDATE_SERVICE
  | @as("DELETE_NAMESPACE") #DELETE_NAMESPACE
  | @as("CREATE_NAMESPACE") #CREATE_NAMESPACE
]
type operationTargetType = [
  | @as("INSTANCE") #INSTANCE
  | @as("SERVICE") #SERVICE
  | @as("NAMESPACE") #NAMESPACE
]
type operationStatus = [
  | @as("FAIL") #FAIL
  | @as("SUCCESS") #SUCCESS
  | @as("PENDING") #PENDING
  | @as("SUBMITTED") #SUBMITTED
]
type operationId = string
type operationFilterName = [
  | @as("UPDATE_DATE") #UPDATE_DATE
  | @as("TYPE") #TYPE
  | @as("STATUS") #STATUS
  | @as("SERVICE_ID") #SERVICE_ID
  | @as("NAMESPACE_ID") #NAMESPACE_ID
]
type nextToken = string
type namespaceType = [
  | @as("HTTP") #HTTP
  | @as("DNS_PRIVATE") #DNS_PRIVATE
  | @as("DNS_PUBLIC") #DNS_PUBLIC
]
type namespaceNamePublic = string
type namespaceNamePrivate = string
type namespaceNameHttp = string
type namespaceName = string
type namespaceFilterName = [@as("TYPE") #TYPE]
type message = string
type maxResults = int
type instanceId = string
type healthStatusFilter = [
  | @as("HEALTHY_OR_ELSE_ALL") #HEALTHY_OR_ELSE_ALL
  | @as("ALL") #ALL
  | @as("UNHEALTHY") #UNHEALTHY
  | @as("HEALTHY") #HEALTHY
]
type healthStatus = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("UNHEALTHY") #UNHEALTHY
  | @as("HEALTHY") #HEALTHY
]
type healthCheckType = [@as("TCP") #TCP | @as("HTTPS") #HTTPS | @as("HTTP") #HTTP]
type filterValue = string
type filterCondition = [@as("BETWEEN") #BETWEEN | @as("IN") #IN | @as("EQ") #EQ]
type failureThreshold = int
type errorMessage = string
type discoverMaxResults = int
type customHealthStatus = [@as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type code = string
type attrValue = string
type attrKey = string
type arn = string
type amazonResourceName = string
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type operationTargetsMap = Js.Dict.t<resourceId>
type operationSummary = {
  @as("Status") status: option<operationStatus>,
  @as("Id") id: option<operationId>,
}
type instanceIdList = array<resourceId>
type instanceHealthStatusMap = Js.Dict.t<healthStatus>
type httpProperties = {@as("HttpName") httpName: option<namespaceName>}
type healthCheckCustomConfig = {@as("FailureThreshold") failureThreshold: option<failureThreshold>}
type healthCheckConfig = {
  @as("FailureThreshold") failureThreshold: option<failureThreshold>,
  @as("ResourcePath") resourcePath: option<resourcePath>,
  @as("Type") type_: healthCheckType,
}
type filterValues = array<filterValue>
type dnsRecord = {
  @as("TTL") ttl: recordTTL,
  @as("Type") type_: recordType,
}
type dnsProperties = {@as("HostedZoneId") hostedZoneId: option<resourceId>}
type attributes = Js.Dict.t<attrValue>
type tagList_ = array<tag>
type serviceFilter = {
  @as("Condition") condition: option<filterCondition>,
  @as("Values") values: filterValues,
  @as("Name") name: serviceFilterName,
}
type operationSummaryList = array<operationSummary>
type operationFilter = {
  @as("Condition") condition: option<filterCondition>,
  @as("Values") values: filterValues,
  @as("Name") name: operationFilterName,
}
type operation = {
  @as("Targets") targets: option<operationTargetsMap>,
  @as("UpdateDate") updateDate: option<timestamp_>,
  @as("CreateDate") createDate: option<timestamp_>,
  @as("ErrorCode") errorCode: option<code>,
  @as("ErrorMessage") errorMessage: option<message>,
  @as("Status") status: option<operationStatus>,
  @as("Type") type_: option<operationType>,
  @as("Id") id: option<operationId>,
}
type namespaceProperties = {
  @as("HttpProperties") httpProperties: option<httpProperties>,
  @as("DnsProperties") dnsProperties: option<dnsProperties>,
}
type namespaceFilter = {
  @as("Condition") condition: option<filterCondition>,
  @as("Values") values: filterValues,
  @as("Name") name: namespaceFilterName,
}
type instanceSummary = {
  @as("Attributes") attributes: option<attributes>,
  @as("Id") id: option<resourceId>,
}
type instance = {
  @as("Attributes") attributes: option<attributes>,
  @as("CreatorRequestId") creatorRequestId: option<resourceId>,
  @as("Id") id: resourceId,
}
type httpInstanceSummary = {
  @as("Attributes") attributes: option<attributes>,
  @as("HealthStatus") healthStatus: option<healthStatus>,
  @as("ServiceName") serviceName: option<serviceName>,
  @as("NamespaceName") namespaceName: option<namespaceNameHttp>,
  @as("InstanceId") instanceId: option<resourceId>,
}
type dnsRecordList = array<dnsRecord>
type serviceFilters = array<serviceFilter>
type operationFilters = array<operationFilter>
type namespaceSummary = {
  @as("CreateDate") createDate: option<timestamp_>,
  @as("Properties") properties: option<namespaceProperties>,
  @as("ServiceCount") serviceCount: option<resourceCount>,
  @as("Description") description: option<resourceDescription>,
  @as("Type") type_: option<namespaceType>,
  @as("Name") name: option<namespaceName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<resourceId>,
}
type namespaceFilters = array<namespaceFilter>
type namespace = {
  @as("CreatorRequestId") creatorRequestId: option<resourceId>,
  @as("CreateDate") createDate: option<timestamp_>,
  @as("Properties") properties: option<namespaceProperties>,
  @as("ServiceCount") serviceCount: option<resourceCount>,
  @as("Description") description: option<resourceDescription>,
  @as("Type") type_: option<namespaceType>,
  @as("Name") name: option<namespaceName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<resourceId>,
}
type instanceSummaryList = array<instanceSummary>
type httpInstanceSummaryList = array<httpInstanceSummary>
type dnsConfigChange = {@as("DnsRecords") dnsRecords: dnsRecordList}
type dnsConfig = {
  @as("DnsRecords") dnsRecords: dnsRecordList,
  @as("RoutingPolicy") routingPolicy: option<routingPolicy>,
  @as("NamespaceId") namespaceId: option<resourceId>,
}
type serviceSummary = {
  @as("CreateDate") createDate: option<timestamp_>,
  @as("HealthCheckCustomConfig") healthCheckCustomConfig: option<healthCheckCustomConfig>,
  @as("HealthCheckConfig") healthCheckConfig: option<healthCheckConfig>,
  @as("DnsConfig") dnsConfig: option<dnsConfig>,
  @as("InstanceCount") instanceCount: option<resourceCount>,
  @as("Description") description: option<resourceDescription>,
  @as("Type") type_: option<serviceType>,
  @as("Name") name: option<serviceName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<resourceId>,
}
type serviceChange = {
  @as("HealthCheckConfig") healthCheckConfig: option<healthCheckConfig>,
  @as("DnsConfig") dnsConfig: option<dnsConfigChange>,
  @as("Description") description: option<resourceDescription>,
}
type service = {
  @as("CreatorRequestId") creatorRequestId: option<resourceId>,
  @as("CreateDate") createDate: option<timestamp_>,
  @as("HealthCheckCustomConfig") healthCheckCustomConfig: option<healthCheckCustomConfig>,
  @as("HealthCheckConfig") healthCheckConfig: option<healthCheckConfig>,
  @as("Type") type_: option<serviceType>,
  @as("DnsConfig") dnsConfig: option<dnsConfig>,
  @as("InstanceCount") instanceCount: option<resourceCount>,
  @as("Description") description: option<resourceDescription>,
  @as("NamespaceId") namespaceId: option<resourceId>,
  @as("Name") name: option<serviceName>,
  @as("Arn") arn: option<arn>,
  @as("Id") id: option<resourceId>,
}
type namespaceSummariesList = array<namespaceSummary>
type serviceSummariesList = array<serviceSummary>

module UpdateInstanceCustomHealthStatus = {
  type t
  type request = {
    @as("Status") status: customHealthStatus,
    @as("InstanceId") instanceId: resourceId,
    @as("ServiceId") serviceId: resourceId,
  }

  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "UpdateInstanceCustomHealthStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterInstance = {
  type t
  type request = {
    @as("InstanceId") instanceId: resourceId,
    @as("ServiceId") serviceId: resourceId,
  }
  type response = {@as("OperationId") operationId: option<operationId>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "DeregisterInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteService = {
  type t
  type request = {@as("Id") id: resourceId}
  type response = unit
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "DeleteServiceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNamespace = {
  type t
  type request = {@as("Id") id: resourceId}
  type response = {@as("OperationId") operationId: option<operationId>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "DeleteNamespaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterInstance = {
  type t
  type request = {
    @as("Attributes") attributes: attributes,
    @as("CreatorRequestId") creatorRequestId: option<resourceId>,
    @as("InstanceId") instanceId: instanceId,
    @as("ServiceId") serviceId: resourceId,
  }
  type response = {@as("OperationId") operationId: option<operationId>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "RegisterInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstancesHealthStatus = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Instances") instances: option<instanceIdList>,
    @as("ServiceId") serviceId: resourceId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Status") status: option<instanceHealthStatusMap>,
  }
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "GetInstancesHealthStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceARN") resourceARN: amazonResourceName}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOperation = {
  type t
  type request = {@as("OperationId") operationId: resourceId}
  type response = {@as("Operation") operation: option<operation>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "GetOperationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstance = {
  type t
  type request = {
    @as("InstanceId") instanceId: resourceId,
    @as("ServiceId") serviceId: resourceId,
  }
  type response = {@as("Instance") instance: option<instance>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "GetInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePublicDnsNamespace = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: option<resourceDescription>,
    @as("CreatorRequestId") creatorRequestId: option<resourceId>,
    @as("Name") name: namespaceNamePublic,
  }
  type response = {@as("OperationId") operationId: option<operationId>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "CreatePublicDnsNamespaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePrivateDnsNamespace = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Vpc") vpc: resourceId,
    @as("Description") description: option<resourceDescription>,
    @as("CreatorRequestId") creatorRequestId: option<resourceId>,
    @as("Name") name: namespaceNamePrivate,
  }
  type response = {@as("OperationId") operationId: option<operationId>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "CreatePrivateDnsNamespaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHttpNamespace = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: option<resourceDescription>,
    @as("CreatorRequestId") creatorRequestId: option<resourceId>,
    @as("Name") name: namespaceNameHttp,
  }
  type response = {@as("OperationId") operationId: option<operationId>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "CreateHttpNamespaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOperations = {
  type t
  type request = {
    @as("Filters") filters: option<operationFilters>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Operations") operations: option<operationSummaryList>,
  }
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "ListOperationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInstances = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("ServiceId") serviceId: resourceId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Instances") instances: option<instanceSummaryList>,
  }
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "ListInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetNamespace = {
  type t
  type request = {@as("Id") id: resourceId}
  type response = {@as("Namespace") namespace: option<namespace>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "GetNamespaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DiscoverInstances = {
  type t
  type request = {
    @as("HealthStatus") healthStatus: option<healthStatusFilter>,
    @as("OptionalParameters") optionalParameters: option<attributes>,
    @as("QueryParameters") queryParameters: option<attributes>,
    @as("MaxResults") maxResults: option<discoverMaxResults>,
    @as("ServiceName") serviceName: serviceName,
    @as("NamespaceName") namespaceName: namespaceName,
  }
  type response = {@as("Instances") instances: option<httpInstanceSummaryList>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "DiscoverInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateService = {
  type t
  type request = {
    @as("Service") service: serviceChange,
    @as("Id") id: resourceId,
  }
  type response = {@as("OperationId") operationId: option<operationId>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "UpdateServiceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNamespaces = {
  type t
  type request = {
    @as("Filters") filters: option<namespaceFilters>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Namespaces") namespaces: option<namespaceSummariesList>,
  }
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "ListNamespacesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetService = {
  type t
  type request = {@as("Id") id: resourceId}
  type response = {@as("Service") service: option<service>}
  @module("@aws-sdk/client-servicediscovery") @new external new_: request => t = "GetServiceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateService = {
  type t
  type request = {
    @as("Type") type_: option<serviceTypeOption>,
    @as("Tags") tags: option<tagList_>,
    @as("HealthCheckCustomConfig") healthCheckCustomConfig: option<healthCheckCustomConfig>,
    @as("HealthCheckConfig") healthCheckConfig: option<healthCheckConfig>,
    @as("DnsConfig") dnsConfig: option<dnsConfig>,
    @as("Description") description: option<resourceDescription>,
    @as("CreatorRequestId") creatorRequestId: option<resourceId>,
    @as("NamespaceId") namespaceId: option<resourceId>,
    @as("Name") name: serviceName,
  }
  type response = {@as("Service") service: option<service>}
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "CreateServiceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListServices = {
  type t
  type request = {
    @as("Filters") filters: option<serviceFilters>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Services") services: option<serviceSummariesList>,
  }
  @module("@aws-sdk/client-servicediscovery") @new
  external new_: request => t = "ListServicesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
