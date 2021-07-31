type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type trafficDialPercentage = float;
type amazonawsTimestamp = Js.Date.t;
type thresholdCount = int;
type tagValue = string
type tagKey = string
type resourceArn = string
type protocol = [@as("UDP") #UDP | @as("TCP") #TCP]
type portNumber = int;
type portMappingsMaxResults = int;
type maxResults = int;
type ipAddressType = [@as("IPV4") #IPV4]
type ipAddress = string
type idempotencyToken = string
type healthState = [@as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY | @as("INITIAL") #INITIAL]
type healthCheckProtocol = [@as("HTTPS") #HTTPS | @as("HTTP") #HTTP | @as("TCP") #TCP]
type healthCheckPort = int;
type healthCheckPath = string
type healthCheckIntervalSeconds = int;
type genericString = string
type genericBoolean = bool;
type errorMessage = string
type endpointWeight = int;
type customRoutingProtocol = [@as("UDP") #UDP | @as("TCP") #TCP]
type customRoutingDestinationTrafficState = [@as("DENY") #DENY | @as("ALLOW") #ALLOW]
type customRoutingAcceleratorStatus = [@as("IN_PROGRESS") #IN_PROGRESS | @as("DEPLOYED") #DEPLOYED]
type clientAffinity = [@as("SOURCE_IP") #SOURCE_IP | @as("NONE") #NONE]
type byoipCidrState = [@as("FAILED_DEPROVISION") #FAILED_DEPROVISION | @as("FAILED_WITHDRAW") #FAILED_WITHDRAW | @as("FAILED_ADVERTISING") #FAILED_ADVERTISING | @as("FAILED_PROVISION") #FAILED_PROVISION | @as("DEPROVISIONED") #DEPROVISIONED | @as("PENDING_DEPROVISIONING") #PENDING_DEPROVISIONING | @as("PENDING_WITHDRAWING") #PENDING_WITHDRAWING | @as("ADVERTISING") #ADVERTISING | @as("PENDING_ADVERTISING") #PENDING_ADVERTISING | @as("READY") #READY | @as("PENDING_PROVISIONING") #PENDING_PROVISIONING]
type acceleratorStatus = [@as("IN_PROGRESS") #IN_PROGRESS | @as("DEPLOYED") #DEPLOYED]
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type socketAddress = {
@as("Port") port: portNumber,
@as("IpAddress") ipAddress: genericString
}
type protocols = array<protocol>
type portRange = {
@as("ToPort") toPort: portNumber,
@as("FromPort") fromPort: portNumber
}
type portOverride = {
@as("EndpointPort") endpointPort: portNumber,
@as("ListenerPort") listenerPort: portNumber
}
type ipAddresses = array<ipAddress>
type endpointIds = array<genericString>
type endpointDescription = {
@as("ClientIPPreservationEnabled") clientIPPreservationEnabled: genericBoolean,
@as("HealthReason") healthReason: genericString,
@as("HealthState") healthState: healthState,
@as("Weight") weight: endpointWeight,
@as("EndpointId") endpointId: genericString
}
type endpointConfiguration = {
@as("ClientIPPreservationEnabled") clientIPPreservationEnabled: genericBoolean,
@as("Weight") weight: endpointWeight,
@as("EndpointId") endpointId: genericString
}
type destinationPorts = array<portNumber>
type destinationAddresses = array<ipAddress>
type customRoutingProtocols = array<customRoutingProtocol>
type customRoutingEndpointDescription = {
@as("EndpointId") endpointId: genericString
}
type customRoutingEndpointConfiguration = {
@as("EndpointId") endpointId: genericString
}
type customRoutingAcceleratorAttributes = {
@as("FlowLogsS3Prefix") flowLogsS3Prefix: genericString,
@as("FlowLogsS3Bucket") flowLogsS3Bucket: genericString,
@as("FlowLogsEnabled") flowLogsEnabled: genericBoolean
}
type cidrAuthorizationContext = {
@as("Signature") signature: option<genericString>,
@as("Message") message: option<genericString>
}
type byoipCidrEvent = {
@as("Timestamp") timestamp: amazonawsTimestamp,
@as("Message") message: genericString
}
type acceleratorAttributes = {
@as("FlowLogsS3Prefix") flowLogsS3Prefix: genericString,
@as("FlowLogsS3Bucket") flowLogsS3Bucket: genericString,
@as("FlowLogsEnabled") flowLogsEnabled: genericBoolean
}
type tags = array<tag>
type socketAddresses = array<socketAddress>
type portRanges = array<portRange>
type portOverrides = array<portOverride>
type portMapping = {
@as("DestinationTrafficState") destinationTrafficState: customRoutingDestinationTrafficState,
@as("Protocols") protocols: customRoutingProtocols,
@as("DestinationSocketAddress") destinationSocketAddress: socketAddress,
@as("EndpointId") endpointId: genericString,
@as("EndpointGroupArn") endpointGroupArn: genericString,
@as("AcceleratorPort") acceleratorPort: portNumber
}
type ipSet = {
@as("IpAddresses") ipAddresses: ipAddresses,
@as("IpFamily") ipFamily: genericString
}
type endpointDescriptions = array<endpointDescription>
type endpointConfigurations = array<endpointConfiguration>
type customRoutingEndpointDescriptions = array<customRoutingEndpointDescription>
type customRoutingEndpointConfigurations = array<customRoutingEndpointConfiguration>
type customRoutingDestinationDescription = {
@as("Protocols") protocols: protocols,
@as("ToPort") toPort: portNumber,
@as("FromPort") fromPort: portNumber
}
type customRoutingDestinationConfiguration = {
@as("Protocols") protocols: option<customRoutingProtocols>,
@as("ToPort") toPort: option<portNumber>,
@as("FromPort") fromPort: option<portNumber>
}
type byoipCidrEvents = array<byoipCidrEvent>
type portMappings = array<portMapping>
type listener = {
@as("ClientAffinity") clientAffinity: clientAffinity,
@as("Protocol") protocol: protocol,
@as("PortRanges") portRanges: portRanges,
@as("ListenerArn") listenerArn: genericString
}
type ipSets = array<ipSet>
type endpointGroup = {
@as("PortOverrides") portOverrides: portOverrides,
@as("ThresholdCount") thresholdCount: thresholdCount,
@as("HealthCheckIntervalSeconds") healthCheckIntervalSeconds: healthCheckIntervalSeconds,
@as("HealthCheckPath") healthCheckPath: healthCheckPath,
@as("HealthCheckProtocol") healthCheckProtocol: healthCheckProtocol,
@as("HealthCheckPort") healthCheckPort: healthCheckPort,
@as("TrafficDialPercentage") trafficDialPercentage: trafficDialPercentage,
@as("EndpointDescriptions") endpointDescriptions: endpointDescriptions,
@as("EndpointGroupRegion") endpointGroupRegion: genericString,
@as("EndpointGroupArn") endpointGroupArn: genericString
}
type destinationPortMapping = {
@as("DestinationTrafficState") destinationTrafficState: customRoutingDestinationTrafficState,
@as("IpAddressType") ipAddressType: ipAddressType,
@as("DestinationSocketAddress") destinationSocketAddress: socketAddress,
@as("EndpointGroupRegion") endpointGroupRegion: genericString,
@as("EndpointId") endpointId: genericString,
@as("EndpointGroupArn") endpointGroupArn: genericString,
@as("AcceleratorSocketAddresses") acceleratorSocketAddresses: socketAddresses,
@as("AcceleratorArn") acceleratorArn: genericString
}
type customRoutingListener = {
@as("PortRanges") portRanges: portRanges,
@as("ListenerArn") listenerArn: genericString
}
type customRoutingDestinationDescriptions = array<customRoutingDestinationDescription>
type customRoutingDestinationConfigurations = array<customRoutingDestinationConfiguration>
type byoipCidr = {
@as("Events") events: byoipCidrEvents,
@as("State") state: byoipCidrState,
@as("Cidr") cidr: genericString
}
type listeners = array<listener>
type endpointGroups = array<endpointGroup>
type destinationPortMappings = array<destinationPortMapping>
type customRoutingListeners = array<customRoutingListener>
type customRoutingEndpointGroup = {
@as("EndpointDescriptions") endpointDescriptions: customRoutingEndpointDescriptions,
@as("DestinationDescriptions") destinationDescriptions: customRoutingDestinationDescriptions,
@as("EndpointGroupRegion") endpointGroupRegion: genericString,
@as("EndpointGroupArn") endpointGroupArn: genericString
}
type customRoutingAccelerator = {
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Status") status: customRoutingAcceleratorStatus,
@as("DnsName") dnsName: genericString,
@as("IpSets") ipSets: ipSets,
@as("Enabled") enabled: genericBoolean,
@as("IpAddressType") ipAddressType: ipAddressType,
@as("Name") name: genericString,
@as("AcceleratorArn") acceleratorArn: genericString
}
type byoipCidrs = array<byoipCidr>
type accelerator = {
@as("LastModifiedTime") lastModifiedTime: amazonawsTimestamp,
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Status") status: acceleratorStatus,
@as("DnsName") dnsName: genericString,
@as("IpSets") ipSets: ipSets,
@as("Enabled") enabled: genericBoolean,
@as("IpAddressType") ipAddressType: ipAddressType,
@as("Name") name: genericString,
@as("AcceleratorArn") acceleratorArn: genericString
}
type customRoutingEndpointGroups = array<customRoutingEndpointGroup>
type customRoutingAccelerators = array<customRoutingAccelerator>
type accelerators = array<accelerator>
type clientType;
@module("@aws-sdk/client-globalaccelerator") @new external createClient: unit => clientType = "GlobalAcceleratorClient";
module DeleteListener = {
  type t;
  type request = {
@as("ListenerArn") listenerArn: option<genericString>
}
  
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DeleteListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteEndpointGroup = {
  type t;
  type request = {
@as("EndpointGroupArn") endpointGroupArn: option<genericString>
}
  
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DeleteEndpointGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCustomRoutingListener = {
  type t;
  type request = {
@as("ListenerArn") listenerArn: option<genericString>
}
  
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DeleteCustomRoutingListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCustomRoutingEndpointGroup = {
  type t;
  type request = {
@as("EndpointGroupArn") endpointGroupArn: option<genericString>
}
  
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DeleteCustomRoutingEndpointGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCustomRoutingAccelerator = {
  type t;
  type request = {
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DeleteCustomRoutingAcceleratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccelerator = {
  type t;
  type request = {
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DeleteAcceleratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateCustomRoutingAcceleratorAttributes = {
  type t;
  type request = {
@as("FlowLogsS3Prefix") flowLogsS3Prefix: genericString,
@as("FlowLogsS3Bucket") flowLogsS3Bucket: genericString,
@as("FlowLogsEnabled") flowLogsEnabled: genericBoolean,
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("AcceleratorAttributes") acceleratorAttributes: customRoutingAcceleratorAttributes
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "UpdateCustomRoutingAcceleratorAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAcceleratorAttributes = {
  type t;
  type request = {
@as("FlowLogsS3Prefix") flowLogsS3Prefix: genericString,
@as("FlowLogsS3Bucket") flowLogsS3Bucket: genericString,
@as("FlowLogsEnabled") flowLogsEnabled: genericBoolean,
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("AcceleratorAttributes") acceleratorAttributes: acceleratorAttributes
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "UpdateAcceleratorAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveCustomRoutingEndpoints = {
  type t;
  type request = {
@as("EndpointGroupArn") endpointGroupArn: option<genericString>,
@as("EndpointIds") endpointIds: option<endpointIds>
}
  
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "RemoveCustomRoutingEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeCustomRoutingAcceleratorAttributes = {
  type t;
  type request = {
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("AcceleratorAttributes") acceleratorAttributes: customRoutingAcceleratorAttributes
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DescribeCustomRoutingAcceleratorAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAcceleratorAttributes = {
  type t;
  type request = {
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("AcceleratorAttributes") acceleratorAttributes: acceleratorAttributes
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DescribeAcceleratorAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DenyCustomRoutingTraffic = {
  type t;
  type request = {
@as("DenyAllTrafficToEndpoint") denyAllTrafficToEndpoint: genericBoolean,
@as("DestinationPorts") destinationPorts: destinationPorts,
@as("DestinationAddresses") destinationAddresses: destinationAddresses,
@as("EndpointId") endpointId: option<genericString>,
@as("EndpointGroupArn") endpointGroupArn: option<genericString>
}
  
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DenyCustomRoutingTrafficCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AllowCustomRoutingTraffic = {
  type t;
  type request = {
@as("AllowAllTrafficToEndpoint") allowAllTrafficToEndpoint: genericBoolean,
@as("DestinationPorts") destinationPorts: destinationPorts,
@as("DestinationAddresses") destinationAddresses: destinationAddresses,
@as("EndpointId") endpointId: option<genericString>,
@as("EndpointGroupArn") endpointGroupArn: option<genericString>
}
  
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "AllowCustomRoutingTrafficCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddCustomRoutingEndpoints = {
  type t;
  type request = {
@as("EndpointGroupArn") endpointGroupArn: option<genericString>,
@as("EndpointConfigurations") endpointConfigurations: option<customRoutingEndpointConfigurations>
}
  type response = {
@as("EndpointGroupArn") endpointGroupArn: genericString,
@as("EndpointDescriptions") endpointDescriptions: customRoutingEndpointDescriptions
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "AddCustomRoutingEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module WithdrawByoipCidr = {
  type t;
  type request = {
@as("Cidr") cidr: option<genericString>
}
  type response = {
@as("ByoipCidr") byoipCidr: byoipCidr
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "WithdrawByoipCidrCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateListener = {
  type t;
  type request = {
@as("ClientAffinity") clientAffinity: clientAffinity,
@as("Protocol") protocol: protocol,
@as("PortRanges") portRanges: portRanges,
@as("ListenerArn") listenerArn: option<genericString>
}
  type response = {
@as("Listener") listener: listener
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "UpdateListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEndpointGroup = {
  type t;
  type request = {
@as("PortOverrides") portOverrides: portOverrides,
@as("ThresholdCount") thresholdCount: thresholdCount,
@as("HealthCheckIntervalSeconds") healthCheckIntervalSeconds: healthCheckIntervalSeconds,
@as("HealthCheckPath") healthCheckPath: healthCheckPath,
@as("HealthCheckProtocol") healthCheckProtocol: healthCheckProtocol,
@as("HealthCheckPort") healthCheckPort: healthCheckPort,
@as("TrafficDialPercentage") trafficDialPercentage: trafficDialPercentage,
@as("EndpointConfigurations") endpointConfigurations: endpointConfigurations,
@as("EndpointGroupArn") endpointGroupArn: option<genericString>
}
  type response = {
@as("EndpointGroup") endpointGroup: endpointGroup
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "UpdateEndpointGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCustomRoutingListener = {
  type t;
  type request = {
@as("PortRanges") portRanges: option<portRanges>,
@as("ListenerArn") listenerArn: option<genericString>
}
  type response = {
@as("Listener") listener: customRoutingListener
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "UpdateCustomRoutingListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ProvisionByoipCidr = {
  type t;
  type request = {
@as("CidrAuthorizationContext") cidrAuthorizationContext: option<cidrAuthorizationContext>,
@as("Cidr") cidr: option<genericString>
}
  type response = {
@as("ByoipCidr") byoipCidr: byoipCidr
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "ProvisionByoipCidrCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCustomRoutingPortMappings = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: portMappingsMaxResults,
@as("EndpointGroupArn") endpointGroupArn: genericString,
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("PortMappings") portMappings: portMappings
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "ListCustomRoutingPortMappingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeListener = {
  type t;
  type request = {
@as("ListenerArn") listenerArn: option<genericString>
}
  type response = {
@as("Listener") listener: listener
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DescribeListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpointGroup = {
  type t;
  type request = {
@as("EndpointGroupArn") endpointGroupArn: option<genericString>
}
  type response = {
@as("EndpointGroup") endpointGroup: endpointGroup
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DescribeEndpointGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCustomRoutingListener = {
  type t;
  type request = {
@as("ListenerArn") listenerArn: option<genericString>
}
  type response = {
@as("Listener") listener: customRoutingListener
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DescribeCustomRoutingListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeprovisionByoipCidr = {
  type t;
  type request = {
@as("Cidr") cidr: option<genericString>
}
  type response = {
@as("ByoipCidr") byoipCidr: byoipCidr
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DeprovisionByoipCidrCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateListener = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("ClientAffinity") clientAffinity: clientAffinity,
@as("Protocol") protocol: option<protocol>,
@as("PortRanges") portRanges: option<portRanges>,
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("Listener") listener: listener
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "CreateListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEndpointGroup = {
  type t;
  type request = {
@as("PortOverrides") portOverrides: portOverrides,
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("ThresholdCount") thresholdCount: thresholdCount,
@as("HealthCheckIntervalSeconds") healthCheckIntervalSeconds: healthCheckIntervalSeconds,
@as("HealthCheckPath") healthCheckPath: healthCheckPath,
@as("HealthCheckProtocol") healthCheckProtocol: healthCheckProtocol,
@as("HealthCheckPort") healthCheckPort: healthCheckPort,
@as("TrafficDialPercentage") trafficDialPercentage: trafficDialPercentage,
@as("EndpointConfigurations") endpointConfigurations: endpointConfigurations,
@as("EndpointGroupRegion") endpointGroupRegion: option<genericString>,
@as("ListenerArn") listenerArn: option<genericString>
}
  type response = {
@as("EndpointGroup") endpointGroup: endpointGroup
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "CreateEndpointGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCustomRoutingListener = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("PortRanges") portRanges: option<portRanges>,
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("Listener") listener: customRoutingListener
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "CreateCustomRoutingListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AdvertiseByoipCidr = {
  type t;
  type request = {
@as("Cidr") cidr: option<genericString>
}
  type response = {
@as("ByoipCidr") byoipCidr: byoipCidr
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "AdvertiseByoipCidrCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCustomRoutingAccelerator = {
  type t;
  type request = {
@as("Enabled") enabled: genericBoolean,
@as("IpAddressType") ipAddressType: ipAddressType,
@as("Name") name: genericString,
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("Accelerator") accelerator: customRoutingAccelerator
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "UpdateCustomRoutingAcceleratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAccelerator = {
  type t;
  type request = {
@as("Enabled") enabled: genericBoolean,
@as("IpAddressType") ipAddressType: ipAddressType,
@as("Name") name: genericString,
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("Accelerator") accelerator: accelerator
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "UpdateAcceleratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListListeners = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults,
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Listeners") listeners: listeners
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "ListListenersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEndpointGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults,
@as("ListenerArn") listenerArn: option<genericString>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("EndpointGroups") endpointGroups: endpointGroups
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "ListEndpointGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCustomRoutingPortMappingsByDestination = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: portMappingsMaxResults,
@as("DestinationAddress") destinationAddress: option<genericString>,
@as("EndpointId") endpointId: option<genericString>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("DestinationPortMappings") destinationPortMappings: destinationPortMappings
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "ListCustomRoutingPortMappingsByDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCustomRoutingListeners = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults,
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Listeners") listeners: customRoutingListeners
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "ListCustomRoutingListenersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListByoipCidrs = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("ByoipCidrs") byoipCidrs: byoipCidrs
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "ListByoipCidrsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCustomRoutingEndpointGroup = {
  type t;
  type request = {
@as("EndpointGroupArn") endpointGroupArn: option<genericString>
}
  type response = {
@as("EndpointGroup") endpointGroup: customRoutingEndpointGroup
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DescribeCustomRoutingEndpointGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCustomRoutingAccelerator = {
  type t;
  type request = {
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("Accelerator") accelerator: customRoutingAccelerator
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DescribeCustomRoutingAcceleratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccelerator = {
  type t;
  type request = {
@as("AcceleratorArn") acceleratorArn: option<genericString>
}
  type response = {
@as("Accelerator") accelerator: accelerator
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "DescribeAcceleratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCustomRoutingEndpointGroup = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("DestinationConfigurations") destinationConfigurations: option<customRoutingDestinationConfigurations>,
@as("EndpointGroupRegion") endpointGroupRegion: option<genericString>,
@as("ListenerArn") listenerArn: option<genericString>
}
  type response = {
@as("EndpointGroup") endpointGroup: customRoutingEndpointGroup
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "CreateCustomRoutingEndpointGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCustomRoutingAccelerator = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("Enabled") enabled: genericBoolean,
@as("IpAddresses") ipAddresses: ipAddresses,
@as("IpAddressType") ipAddressType: ipAddressType,
@as("Name") name: option<genericString>
}
  type response = {
@as("Accelerator") accelerator: customRoutingAccelerator
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "CreateCustomRoutingAcceleratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAccelerator = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("Enabled") enabled: genericBoolean,
@as("IpAddresses") ipAddresses: ipAddresses,
@as("IpAddressType") ipAddressType: ipAddressType,
@as("Name") name: option<genericString>
}
  type response = {
@as("Accelerator") accelerator: accelerator
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "CreateAcceleratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCustomRoutingEndpointGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults,
@as("ListenerArn") listenerArn: option<genericString>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("EndpointGroups") endpointGroups: customRoutingEndpointGroups
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "ListCustomRoutingEndpointGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCustomRoutingAccelerators = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Accelerators") accelerators: customRoutingAccelerators
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "ListCustomRoutingAcceleratorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccelerators = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Accelerators") accelerators: accelerators
}
  @module("@aws-sdk/client-globalaccelerator") @new external new_: (Js.Promise.t<request>) => t = "ListAcceleratorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
