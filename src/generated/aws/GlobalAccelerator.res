type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-globalaccelerator") @new
external createClient: unit => awsServiceClient = "GlobalAcceleratorClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type trafficDialPercentage = float
type timestamp_ = Js.Date.t
type thresholdCount = int
type tagValue = string
type tagKey = string
type resourceArn = string
type protocol = [@as("UDP") #UDP | @as("TCP") #TCP]
type portNumber = int
type portMappingsMaxResults = int
type maxResults = int
type ipAddressType = [@as("IPV4") #IPV4]
type ipAddress = string
type idempotencyToken = string
type healthState = [@as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY | @as("INITIAL") #INITIAL]
type healthCheckProtocol = [@as("HTTPS") #HTTPS | @as("HTTP") #HTTP | @as("TCP") #TCP]
type healthCheckPort = int
type healthCheckPath = string
type healthCheckIntervalSeconds = int
type genericString = string
type genericBoolean = bool
type errorMessage = string
type endpointWeight = int
type customRoutingProtocol = [@as("UDP") #UDP | @as("TCP") #TCP]
type customRoutingDestinationTrafficState = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type customRoutingAcceleratorStatus = [@as("IN_PROGRESS") #IN_PROGRESS | @as("DEPLOYED") #DEPLOYED]
type clientAffinity = [@as("SOURCE_IP") #SOURCE_IP | @as("NONE") #NONE]
type byoipCidrState = [
  | @as("FAILED_DEPROVISION") #FAILED_DEPROVISION
  | @as("FAILED_WITHDRAW") #FAILED_WITHDRAW
  | @as("FAILED_ADVERTISING") #FAILED_ADVERTISING
  | @as("FAILED_PROVISION") #FAILED_PROVISION
  | @as("DEPROVISIONED") #DEPROVISIONED
  | @as("PENDING_DEPROVISIONING") #PENDING_DEPROVISIONING
  | @as("PENDING_WITHDRAWING") #PENDING_WITHDRAWING
  | @as("ADVERTISING") #ADVERTISING
  | @as("PENDING_ADVERTISING") #PENDING_ADVERTISING
  | @as("READY") #READY
  | @as("PENDING_PROVISIONING") #PENDING_PROVISIONING
]
type acceleratorStatus = [@as("IN_PROGRESS") #IN_PROGRESS | @as("DEPLOYED") #DEPLOYED]
type tagKeys = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type socketAddress = {
  @as("Port") port: option<portNumber>,
  @as("IpAddress") ipAddress: option<genericString>,
}
type protocols = array<protocol>
type portRange = {
  @as("ToPort") toPort: option<portNumber>,
  @as("FromPort") fromPort: option<portNumber>,
}
type portOverride = {
  @as("EndpointPort") endpointPort: option<portNumber>,
  @as("ListenerPort") listenerPort: option<portNumber>,
}
type ipAddresses = array<ipAddress>
type endpointIds = array<genericString>
type endpointDescription = {
  @as("ClientIPPreservationEnabled") clientIPPreservationEnabled: option<genericBoolean>,
  @as("HealthReason") healthReason: option<genericString>,
  @as("HealthState") healthState: option<healthState>,
  @as("Weight") weight: option<endpointWeight>,
  @as("EndpointId") endpointId: option<genericString>,
}
type endpointConfiguration = {
  @as("ClientIPPreservationEnabled") clientIPPreservationEnabled: option<genericBoolean>,
  @as("Weight") weight: option<endpointWeight>,
  @as("EndpointId") endpointId: option<genericString>,
}
type destinationPorts = array<portNumber>
type destinationAddresses = array<ipAddress>
type customRoutingProtocols = array<customRoutingProtocol>
type customRoutingEndpointDescription = {@as("EndpointId") endpointId: option<genericString>}
type customRoutingEndpointConfiguration = {@as("EndpointId") endpointId: option<genericString>}
type customRoutingAcceleratorAttributes = {
  @as("FlowLogsS3Prefix") flowLogsS3Prefix: option<genericString>,
  @as("FlowLogsS3Bucket") flowLogsS3Bucket: option<genericString>,
  @as("FlowLogsEnabled") flowLogsEnabled: option<genericBoolean>,
}
type cidrAuthorizationContext = {
  @as("Signature") signature: genericString,
  @as("Message") message: genericString,
}
type byoipCidrEvent = {
  @as("Timestamp") timestamp_: option<timestamp_>,
  @as("Message") message: option<genericString>,
}
type acceleratorAttributes = {
  @as("FlowLogsS3Prefix") flowLogsS3Prefix: option<genericString>,
  @as("FlowLogsS3Bucket") flowLogsS3Bucket: option<genericString>,
  @as("FlowLogsEnabled") flowLogsEnabled: option<genericBoolean>,
}
type tags = array<tag>
type socketAddresses = array<socketAddress>
type portRanges = array<portRange>
type portOverrides = array<portOverride>
type portMapping = {
  @as("DestinationTrafficState")
  destinationTrafficState: option<customRoutingDestinationTrafficState>,
  @as("Protocols") protocols: option<customRoutingProtocols>,
  @as("DestinationSocketAddress") destinationSocketAddress: option<socketAddress>,
  @as("EndpointId") endpointId: option<genericString>,
  @as("EndpointGroupArn") endpointGroupArn: option<genericString>,
  @as("AcceleratorPort") acceleratorPort: option<portNumber>,
}
type ipSet = {
  @as("IpAddresses") ipAddresses: option<ipAddresses>,
  @as("IpFamily") ipFamily: option<genericString>,
}
type endpointDescriptions = array<endpointDescription>
type endpointConfigurations = array<endpointConfiguration>
type customRoutingEndpointDescriptions = array<customRoutingEndpointDescription>
type customRoutingEndpointConfigurations = array<customRoutingEndpointConfiguration>
type customRoutingDestinationDescription = {
  @as("Protocols") protocols: option<protocols>,
  @as("ToPort") toPort: option<portNumber>,
  @as("FromPort") fromPort: option<portNumber>,
}
type customRoutingDestinationConfiguration = {
  @as("Protocols") protocols: customRoutingProtocols,
  @as("ToPort") toPort: portNumber,
  @as("FromPort") fromPort: portNumber,
}
type byoipCidrEvents = array<byoipCidrEvent>
type portMappings = array<portMapping>
type listener = {
  @as("ClientAffinity") clientAffinity: option<clientAffinity>,
  @as("Protocol") protocol: option<protocol>,
  @as("PortRanges") portRanges: option<portRanges>,
  @as("ListenerArn") listenerArn: option<genericString>,
}
type ipSets = array<ipSet>
type endpointGroup = {
  @as("PortOverrides") portOverrides: option<portOverrides>,
  @as("ThresholdCount") thresholdCount: option<thresholdCount>,
  @as("HealthCheckIntervalSeconds") healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
  @as("HealthCheckPath") healthCheckPath: option<healthCheckPath>,
  @as("HealthCheckProtocol") healthCheckProtocol: option<healthCheckProtocol>,
  @as("HealthCheckPort") healthCheckPort: option<healthCheckPort>,
  @as("TrafficDialPercentage") trafficDialPercentage: option<trafficDialPercentage>,
  @as("EndpointDescriptions") endpointDescriptions: option<endpointDescriptions>,
  @as("EndpointGroupRegion") endpointGroupRegion: option<genericString>,
  @as("EndpointGroupArn") endpointGroupArn: option<genericString>,
}
type destinationPortMapping = {
  @as("DestinationTrafficState")
  destinationTrafficState: option<customRoutingDestinationTrafficState>,
  @as("IpAddressType") ipAddressType: option<ipAddressType>,
  @as("DestinationSocketAddress") destinationSocketAddress: option<socketAddress>,
  @as("EndpointGroupRegion") endpointGroupRegion: option<genericString>,
  @as("EndpointId") endpointId: option<genericString>,
  @as("EndpointGroupArn") endpointGroupArn: option<genericString>,
  @as("AcceleratorSocketAddresses") acceleratorSocketAddresses: option<socketAddresses>,
  @as("AcceleratorArn") acceleratorArn: option<genericString>,
}
type customRoutingListener = {
  @as("PortRanges") portRanges: option<portRanges>,
  @as("ListenerArn") listenerArn: option<genericString>,
}
type customRoutingDestinationDescriptions = array<customRoutingDestinationDescription>
type customRoutingDestinationConfigurations = array<customRoutingDestinationConfiguration>
type byoipCidr = {
  @as("Events") events: option<byoipCidrEvents>,
  @as("State") state: option<byoipCidrState>,
  @as("Cidr") cidr: option<genericString>,
}
type listeners = array<listener>
type endpointGroups = array<endpointGroup>
type destinationPortMappings = array<destinationPortMapping>
type customRoutingListeners = array<customRoutingListener>
type customRoutingEndpointGroup = {
  @as("EndpointDescriptions") endpointDescriptions: option<customRoutingEndpointDescriptions>,
  @as("DestinationDescriptions")
  destinationDescriptions: option<customRoutingDestinationDescriptions>,
  @as("EndpointGroupRegion") endpointGroupRegion: option<genericString>,
  @as("EndpointGroupArn") endpointGroupArn: option<genericString>,
}
type customRoutingAccelerator = {
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("Status") status: option<customRoutingAcceleratorStatus>,
  @as("DnsName") dnsName: option<genericString>,
  @as("IpSets") ipSets: option<ipSets>,
  @as("Enabled") enabled: option<genericBoolean>,
  @as("IpAddressType") ipAddressType: option<ipAddressType>,
  @as("Name") name: option<genericString>,
  @as("AcceleratorArn") acceleratorArn: option<genericString>,
}
type byoipCidrs = array<byoipCidr>
type accelerator = {
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("Status") status: option<acceleratorStatus>,
  @as("DnsName") dnsName: option<genericString>,
  @as("IpSets") ipSets: option<ipSets>,
  @as("Enabled") enabled: option<genericBoolean>,
  @as("IpAddressType") ipAddressType: option<ipAddressType>,
  @as("Name") name: option<genericString>,
  @as("AcceleratorArn") acceleratorArn: option<genericString>,
}
type customRoutingEndpointGroups = array<customRoutingEndpointGroup>
type customRoutingAccelerators = array<customRoutingAccelerator>
type accelerators = array<accelerator>

module DeleteListener = {
  type t
  type request = {@as("ListenerArn") listenerArn: genericString}

  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DeleteListenerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEndpointGroup = {
  type t
  type request = {@as("EndpointGroupArn") endpointGroupArn: genericString}

  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DeleteEndpointGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomRoutingListener = {
  type t
  type request = {@as("ListenerArn") listenerArn: genericString}

  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DeleteCustomRoutingListenerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomRoutingEndpointGroup = {
  type t
  type request = {@as("EndpointGroupArn") endpointGroupArn: genericString}

  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DeleteCustomRoutingEndpointGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomRoutingAccelerator = {
  type t
  type request = {@as("AcceleratorArn") acceleratorArn: genericString}

  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DeleteCustomRoutingAcceleratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccelerator = {
  type t
  type request = {@as("AcceleratorArn") acceleratorArn: genericString}

  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DeleteAcceleratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateCustomRoutingAcceleratorAttributes = {
  type t
  type request = {
    @as("FlowLogsS3Prefix") flowLogsS3Prefix: option<genericString>,
    @as("FlowLogsS3Bucket") flowLogsS3Bucket: option<genericString>,
    @as("FlowLogsEnabled") flowLogsEnabled: option<genericBoolean>,
    @as("AcceleratorArn") acceleratorArn: genericString,
  }
  type response = {
    @as("AcceleratorAttributes") acceleratorAttributes: option<customRoutingAcceleratorAttributes>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "UpdateCustomRoutingAcceleratorAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAcceleratorAttributes = {
  type t
  type request = {
    @as("FlowLogsS3Prefix") flowLogsS3Prefix: option<genericString>,
    @as("FlowLogsS3Bucket") flowLogsS3Bucket: option<genericString>,
    @as("FlowLogsEnabled") flowLogsEnabled: option<genericBoolean>,
    @as("AcceleratorArn") acceleratorArn: genericString,
  }
  type response = {
    @as("AcceleratorAttributes") acceleratorAttributes: option<acceleratorAttributes>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "UpdateAcceleratorAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeys,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveCustomRoutingEndpoints = {
  type t
  type request = {
    @as("EndpointGroupArn") endpointGroupArn: genericString,
    @as("EndpointIds") endpointIds: endpointIds,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "RemoveCustomRoutingEndpointsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeCustomRoutingAcceleratorAttributes = {
  type t
  type request = {@as("AcceleratorArn") acceleratorArn: genericString}
  type response = {
    @as("AcceleratorAttributes") acceleratorAttributes: option<customRoutingAcceleratorAttributes>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DescribeCustomRoutingAcceleratorAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAcceleratorAttributes = {
  type t
  type request = {@as("AcceleratorArn") acceleratorArn: genericString}
  type response = {
    @as("AcceleratorAttributes") acceleratorAttributes: option<acceleratorAttributes>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DescribeAcceleratorAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DenyCustomRoutingTraffic = {
  type t
  type request = {
    @as("DenyAllTrafficToEndpoint") denyAllTrafficToEndpoint: option<genericBoolean>,
    @as("DestinationPorts") destinationPorts: option<destinationPorts>,
    @as("DestinationAddresses") destinationAddresses: option<destinationAddresses>,
    @as("EndpointId") endpointId: genericString,
    @as("EndpointGroupArn") endpointGroupArn: genericString,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DenyCustomRoutingTrafficCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AllowCustomRoutingTraffic = {
  type t
  type request = {
    @as("AllowAllTrafficToEndpoint") allowAllTrafficToEndpoint: option<genericBoolean>,
    @as("DestinationPorts") destinationPorts: option<destinationPorts>,
    @as("DestinationAddresses") destinationAddresses: option<destinationAddresses>,
    @as("EndpointId") endpointId: genericString,
    @as("EndpointGroupArn") endpointGroupArn: genericString,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "AllowCustomRoutingTrafficCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceArn}
  type response = {@as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddCustomRoutingEndpoints = {
  type t
  type request = {
    @as("EndpointGroupArn") endpointGroupArn: genericString,
    @as("EndpointConfigurations") endpointConfigurations: customRoutingEndpointConfigurations,
  }
  type response = {
    @as("EndpointGroupArn") endpointGroupArn: option<genericString>,
    @as("EndpointDescriptions") endpointDescriptions: option<customRoutingEndpointDescriptions>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "AddCustomRoutingEndpointsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module WithdrawByoipCidr = {
  type t
  type request = {@as("Cidr") cidr: genericString}
  type response = {@as("ByoipCidr") byoipCidr: option<byoipCidr>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "WithdrawByoipCidrCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateListener = {
  type t
  type request = {
    @as("ClientAffinity") clientAffinity: option<clientAffinity>,
    @as("Protocol") protocol: option<protocol>,
    @as("PortRanges") portRanges: option<portRanges>,
    @as("ListenerArn") listenerArn: genericString,
  }
  type response = {@as("Listener") listener: option<listener>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "UpdateListenerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEndpointGroup = {
  type t
  type request = {
    @as("PortOverrides") portOverrides: option<portOverrides>,
    @as("ThresholdCount") thresholdCount: option<thresholdCount>,
    @as("HealthCheckIntervalSeconds")
    healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
    @as("HealthCheckPath") healthCheckPath: option<healthCheckPath>,
    @as("HealthCheckProtocol") healthCheckProtocol: option<healthCheckProtocol>,
    @as("HealthCheckPort") healthCheckPort: option<healthCheckPort>,
    @as("TrafficDialPercentage") trafficDialPercentage: option<trafficDialPercentage>,
    @as("EndpointConfigurations") endpointConfigurations: option<endpointConfigurations>,
    @as("EndpointGroupArn") endpointGroupArn: genericString,
  }
  type response = {@as("EndpointGroup") endpointGroup: option<endpointGroup>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "UpdateEndpointGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCustomRoutingListener = {
  type t
  type request = {
    @as("PortRanges") portRanges: portRanges,
    @as("ListenerArn") listenerArn: genericString,
  }
  type response = {@as("Listener") listener: option<customRoutingListener>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "UpdateCustomRoutingListenerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ProvisionByoipCidr = {
  type t
  type request = {
    @as("CidrAuthorizationContext") cidrAuthorizationContext: cidrAuthorizationContext,
    @as("Cidr") cidr: genericString,
  }
  type response = {@as("ByoipCidr") byoipCidr: option<byoipCidr>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "ProvisionByoipCidrCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomRoutingPortMappings = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<portMappingsMaxResults>,
    @as("EndpointGroupArn") endpointGroupArn: option<genericString>,
    @as("AcceleratorArn") acceleratorArn: genericString,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("PortMappings") portMappings: option<portMappings>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "ListCustomRoutingPortMappingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeListener = {
  type t
  type request = {@as("ListenerArn") listenerArn: genericString}
  type response = {@as("Listener") listener: option<listener>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DescribeListenerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpointGroup = {
  type t
  type request = {@as("EndpointGroupArn") endpointGroupArn: genericString}
  type response = {@as("EndpointGroup") endpointGroup: option<endpointGroup>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DescribeEndpointGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomRoutingListener = {
  type t
  type request = {@as("ListenerArn") listenerArn: genericString}
  type response = {@as("Listener") listener: option<customRoutingListener>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DescribeCustomRoutingListenerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeprovisionByoipCidr = {
  type t
  type request = {@as("Cidr") cidr: genericString}
  type response = {@as("ByoipCidr") byoipCidr: option<byoipCidr>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DeprovisionByoipCidrCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateListener = {
  type t
  type request = {
    @as("IdempotencyToken") idempotencyToken: idempotencyToken,
    @as("ClientAffinity") clientAffinity: option<clientAffinity>,
    @as("Protocol") protocol: protocol,
    @as("PortRanges") portRanges: portRanges,
    @as("AcceleratorArn") acceleratorArn: genericString,
  }
  type response = {@as("Listener") listener: option<listener>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "CreateListenerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEndpointGroup = {
  type t
  type request = {
    @as("PortOverrides") portOverrides: option<portOverrides>,
    @as("IdempotencyToken") idempotencyToken: idempotencyToken,
    @as("ThresholdCount") thresholdCount: option<thresholdCount>,
    @as("HealthCheckIntervalSeconds")
    healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
    @as("HealthCheckPath") healthCheckPath: option<healthCheckPath>,
    @as("HealthCheckProtocol") healthCheckProtocol: option<healthCheckProtocol>,
    @as("HealthCheckPort") healthCheckPort: option<healthCheckPort>,
    @as("TrafficDialPercentage") trafficDialPercentage: option<trafficDialPercentage>,
    @as("EndpointConfigurations") endpointConfigurations: option<endpointConfigurations>,
    @as("EndpointGroupRegion") endpointGroupRegion: genericString,
    @as("ListenerArn") listenerArn: genericString,
  }
  type response = {@as("EndpointGroup") endpointGroup: option<endpointGroup>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "CreateEndpointGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomRoutingListener = {
  type t
  type request = {
    @as("IdempotencyToken") idempotencyToken: idempotencyToken,
    @as("PortRanges") portRanges: portRanges,
    @as("AcceleratorArn") acceleratorArn: genericString,
  }
  type response = {@as("Listener") listener: option<customRoutingListener>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "CreateCustomRoutingListenerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AdvertiseByoipCidr = {
  type t
  type request = {@as("Cidr") cidr: genericString}
  type response = {@as("ByoipCidr") byoipCidr: option<byoipCidr>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "AdvertiseByoipCidrCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCustomRoutingAccelerator = {
  type t
  type request = {
    @as("Enabled") enabled: option<genericBoolean>,
    @as("IpAddressType") ipAddressType: option<ipAddressType>,
    @as("Name") name: option<genericString>,
    @as("AcceleratorArn") acceleratorArn: genericString,
  }
  type response = {@as("Accelerator") accelerator: option<customRoutingAccelerator>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "UpdateCustomRoutingAcceleratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccelerator = {
  type t
  type request = {
    @as("Enabled") enabled: option<genericBoolean>,
    @as("IpAddressType") ipAddressType: option<ipAddressType>,
    @as("Name") name: option<genericString>,
    @as("AcceleratorArn") acceleratorArn: genericString,
  }
  type response = {@as("Accelerator") accelerator: option<accelerator>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "UpdateAcceleratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListListeners = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AcceleratorArn") acceleratorArn: genericString,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("Listeners") listeners: option<listeners>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "ListListenersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEndpointGroups = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ListenerArn") listenerArn: genericString,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("EndpointGroups") endpointGroups: option<endpointGroups>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "ListEndpointGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomRoutingPortMappingsByDestination = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<portMappingsMaxResults>,
    @as("DestinationAddress") destinationAddress: genericString,
    @as("EndpointId") endpointId: genericString,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("DestinationPortMappings") destinationPortMappings: option<destinationPortMappings>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "ListCustomRoutingPortMappingsByDestinationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomRoutingListeners = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AcceleratorArn") acceleratorArn: genericString,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("Listeners") listeners: option<customRoutingListeners>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "ListCustomRoutingListenersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListByoipCidrs = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("ByoipCidrs") byoipCidrs: option<byoipCidrs>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "ListByoipCidrsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomRoutingEndpointGroup = {
  type t
  type request = {@as("EndpointGroupArn") endpointGroupArn: genericString}
  type response = {@as("EndpointGroup") endpointGroup: option<customRoutingEndpointGroup>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DescribeCustomRoutingEndpointGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomRoutingAccelerator = {
  type t
  type request = {@as("AcceleratorArn") acceleratorArn: genericString}
  type response = {@as("Accelerator") accelerator: option<customRoutingAccelerator>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DescribeCustomRoutingAcceleratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccelerator = {
  type t
  type request = {@as("AcceleratorArn") acceleratorArn: genericString}
  type response = {@as("Accelerator") accelerator: option<accelerator>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "DescribeAcceleratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomRoutingEndpointGroup = {
  type t
  type request = {
    @as("IdempotencyToken") idempotencyToken: idempotencyToken,
    @as("DestinationConfigurations")
    destinationConfigurations: customRoutingDestinationConfigurations,
    @as("EndpointGroupRegion") endpointGroupRegion: genericString,
    @as("ListenerArn") listenerArn: genericString,
  }
  type response = {@as("EndpointGroup") endpointGroup: option<customRoutingEndpointGroup>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "CreateCustomRoutingEndpointGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomRoutingAccelerator = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("IdempotencyToken") idempotencyToken: idempotencyToken,
    @as("Enabled") enabled: option<genericBoolean>,
    @as("IpAddresses") ipAddresses: option<ipAddresses>,
    @as("IpAddressType") ipAddressType: option<ipAddressType>,
    @as("Name") name: genericString,
  }
  type response = {@as("Accelerator") accelerator: option<customRoutingAccelerator>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "CreateCustomRoutingAcceleratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccelerator = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("IdempotencyToken") idempotencyToken: idempotencyToken,
    @as("Enabled") enabled: option<genericBoolean>,
    @as("IpAddresses") ipAddresses: option<ipAddresses>,
    @as("IpAddressType") ipAddressType: option<ipAddressType>,
    @as("Name") name: genericString,
  }
  type response = {@as("Accelerator") accelerator: option<accelerator>}
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "CreateAcceleratorCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomRoutingEndpointGroups = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ListenerArn") listenerArn: genericString,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("EndpointGroups") endpointGroups: option<customRoutingEndpointGroups>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "ListCustomRoutingEndpointGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomRoutingAccelerators = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("Accelerators") accelerators: option<customRoutingAccelerators>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "ListCustomRoutingAcceleratorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccelerators = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("Accelerators") accelerators: option<accelerators>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new_: request => t = "ListAcceleratorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
