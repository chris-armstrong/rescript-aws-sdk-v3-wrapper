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
@ocaml.doc("<p>A complex type that contains a <code>Tag</code> key and <code>Tag</code> value.</p>")
type tag = {
  @ocaml.doc("<p>A string that contains a <code>Tag</code> value.</p>") @as("Value")
  value: tagValue,
  @ocaml.doc("<p>A string that contains a <code>Tag</code> key.</p>") @as("Key") key: tagKey,
}
@ocaml.doc("<p>An IP address/port combination.</p>")
type socketAddress = {
  @ocaml.doc("<p>The port for the socket address.</p>") @as("Port") port: option<portNumber>,
  @ocaml.doc("<p>The IP address for the socket address.</p>") @as("IpAddress")
  ipAddress: option<genericString>,
}
type protocols = array<protocol>
@ocaml.doc("<p>A complex type for a range of ports for a listener.</p>")
type portRange = {
  @ocaml.doc("<p>The last port in the range of ports, inclusive.</p>") @as("ToPort")
  toPort: option<portNumber>,
  @ocaml.doc("<p>The first port in the range of ports, inclusive.</p>") @as("FromPort")
  fromPort: option<portNumber>,
}
@ocaml.doc("<p>Override specific listener ports used to route traffic to endpoints that are part of an endpoint group.
			For example, you can create a port override in which the listener 
			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080 
			and 1443, respectively, on the endpoints.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html\">
			Port overrides</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
type portOverride = {
  @ocaml.doc("<p>The endpoint port that you want a listener port to be mapped to. This is the port on the endpoint,
			such as the Application Load Balancer or Amazon EC2 instance.</p>")
  @as("EndpointPort")
  endpointPort: option<portNumber>,
  @ocaml.doc("<p>The listener port that you want to map to a specific endpoint port. This is the port that user traffic
		arrives to the Global Accelerator on.</p>")
  @as("ListenerPort")
  listenerPort: option<portNumber>,
}
type ipAddresses = array<ipAddress>
type endpointIds = array<genericString>
@ocaml.doc("<p>A complex type for an endpoint. Each endpoint group can include one or more endpoints, such as load
			balancers.</p>")
type endpointDescription = {
  @ocaml.doc("<p>Indicates whether client IP address preservation is enabled for an Application Load Balancer endpoint. 
			The value is true or false. The default value is true for new accelerators. </p>
		       <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as 
			traffic travels to applications on the Application Load Balancer endpoint fronted by the accelerator.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/introduction-how-it-works-client-ip.html\">
			Viewing Client IP Addresses in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
  @as("ClientIPPreservationEnabled")
  clientIPPreservationEnabled: option<genericBoolean>,
  @ocaml.doc("<p>Returns a null result.</p>") @as("HealthReason")
  healthReason: option<genericString>,
  @ocaml.doc("<p>The health status of the endpoint.</p>") @as("HealthState")
  healthState: option<healthState>,
  @ocaml.doc("<p>The weight associated with the endpoint. When you add weights to endpoints, you configure AWS Global Accelerator to route traffic
			based on proportions that you specify. For example, you might specify endpoint weights of 4, 5, 5, and 6 (sum=20). The
			result is that 4/20 of your traffic, on average, is routed to the first endpoint, 5/20 is routed both to the second
			and third endpoints, and 6/20 is routed to the last endpoint. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html\">Endpoint Weights</a> in the
				<i>AWS Global Accelerator Developer Guide</i>. </p>")
  @as("Weight")
  weight: option<endpointWeight>,
  @ocaml.doc("<p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon
			Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address
			allocation ID. For Amazon EC2 instances, this is the EC2 instance ID. </p>
		       <p>An Application Load Balancer can be either internal or internet-facing.</p>")
  @as("EndpointId")
  endpointId: option<genericString>,
}
@ocaml.doc(
  "<p>A complex type for endpoints. A resource must be valid and active when you add it as an endpoint.</p>"
)
type endpointConfiguration = {
  @ocaml.doc("<p>Indicates whether client IP address preservation is enabled for an Application Load Balancer endpoint. 
			The value is true or false. The default value is true for new accelerators. </p>
		       <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as 
			traffic travels to applications on the Application Load Balancer endpoint fronted by the accelerator.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/preserve-client-ip-address.html\">
			Preserve Client IP Addresses in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
  @as("ClientIPPreservationEnabled")
  clientIPPreservationEnabled: option<genericBoolean>,
  @ocaml.doc("<p>The weight associated with the endpoint. When you add weights to endpoints, you configure AWS Global Accelerator to route traffic
			based on proportions that you specify. For example, you might specify endpoint weights of 4, 5, 5, and 6 (sum=20). The
			result is that 4/20 of your traffic, on average, is routed to the first endpoint, 5/20 is routed both to the second
			and third endpoints, and 6/20 is routed to the last endpoint. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html\">Endpoint Weights</a> in the
				<i>AWS Global Accelerator Developer Guide</i>.</p>")
  @as("Weight")
  weight: option<endpointWeight>,
  @ocaml.doc("<p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon
			Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address
			allocation ID. For Amazon EC2 instances, this is the EC2 instance ID. A resource must be valid and active 
			when you add it as an endpoint.</p>
		       <p>An Application Load Balancer can be either internal or internet-facing.</p>")
  @as("EndpointId")
  endpointId: option<genericString>,
}
type destinationPorts = array<portNumber>
type destinationAddresses = array<ipAddress>
type customRoutingProtocols = array<customRoutingProtocol>
@ocaml.doc("<p>A complex type for an endpoint for a custom routing accelerator. Each endpoint group can include one or more endpoints, 
			which are virtual private cloud (VPC) subnets.</p>")
type customRoutingEndpointDescription = {
  @ocaml.doc("<p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC)
			subnet ID. </p>")
  @as("EndpointId")
  endpointId: option<genericString>,
}
@ocaml.doc(
  "<p>The list of endpoint objects. For custom routing, this is a list of virtual private cloud (VPC) subnet IDs.</p>"
)
type customRoutingEndpointConfiguration = {
  @ocaml.doc("<p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC)
			subnet ID. </p>")
  @as("EndpointId")
  endpointId: option<genericString>,
}
@ocaml.doc("<p>Attributes of a custom routing accelerator.</p>")
type customRoutingAcceleratorAttributes = {
  @ocaml.doc("<p>The prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
			<code>FlowLogsEnabled</code> is <code>true</code>.</p>
		       <p>If you don’t specify a prefix, the flow logs are stored in the
			root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
		       <p>DOC-EXAMPLE-BUCKET//AWSLogs/aws_account_id</p>")
  @as("FlowLogsS3Prefix")
  flowLogsS3Prefix: option<genericString>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
			<code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the
			bucket.</p>")
  @as("FlowLogsS3Bucket")
  flowLogsS3Bucket: option<genericString>,
  @ocaml.doc("<p>Indicates whether flow logs are enabled. The default value is false. If the value is true,
			<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html\">Flow Logs</a> in
			the <i>AWS Global Accelerator Developer Guide</i>.</p>")
  @as("FlowLogsEnabled")
  flowLogsEnabled: option<genericBoolean>,
}
@ocaml.doc("<p>Provides authorization for Amazon to bring a specific IP address range to a specific AWS 
			account using bring your own IP addresses (BYOIP). </p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring Your Own 
			IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
type cidrAuthorizationContext = {
  @ocaml.doc("<p>The signed authorization message for the prefix and account.</p>") @as("Signature")
  signature: genericString,
  @ocaml.doc("<p>The plain-text authorization message for the prefix and account.</p>")
  @as("Message")
  message: genericString,
}
@ocaml.doc("<p>A complex type that contains a <code>Message</code> and a <code>Timestamp</code> value for changes 
			that you make in the status an IP address range that you bring to AWS Global Accelerator through bring your own IP 
			address (BYOIP).</p>")
type byoipCidrEvent = {
  @ocaml.doc("<p>A timestamp when you make a status change for an IP address range that you bring to AWS Global Accelerator through 
			bring your own IP address (BYOIP).</p>")
  @as("Timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>A string that contains an <code>Event</code> message describing changes that you make in the status 
			of an IP address range that you bring to AWS Global Accelerator through bring your own IP address (BYOIP).</p>")
  @as("Message")
  message: option<genericString>,
}
@ocaml.doc("<p>Attributes of an accelerator.</p>")
type acceleratorAttributes = {
  @ocaml.doc("<p>The prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
				<code>FlowLogsEnabled</code> is <code>true</code>.</p>
		       <p>If you don’t specify a prefix, the flow logs are stored in the
			root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
		       <p>s3-bucket_name//AWSLogs/aws_account_id</p>")
  @as("FlowLogsS3Prefix")
  flowLogsS3Prefix: option<genericString>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
				<code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the
			bucket.</p>")
  @as("FlowLogsS3Bucket")
  flowLogsS3Bucket: option<genericString>,
  @ocaml.doc("<p>Indicates whether flow logs are enabled. The default value is false. If the value is true,
				<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html\">Flow Logs</a> in
			the <i>AWS Global Accelerator Developer Guide</i>.</p>")
  @as("FlowLogsEnabled")
  flowLogsEnabled: option<genericBoolean>,
}
type tags = array<tag>
type socketAddresses = array<socketAddress>
type portRanges = array<portRange>
type portOverrides = array<portOverride>
@ocaml.doc("<p>Returns the ports and associated IP addresses and ports of Amazon EC2 instances in your virtual
			private cloud (VPC) subnets. Custom routing is a port mapping protocol in AWS Global Accelerator that
			statically associates port ranges with VPC subnets, which allows Global Accelerator to route to
			specific instances and ports within one or more subnets. </p>")
type portMapping = {
  @ocaml.doc("<p>Indicates whether or not a port mapping destination can receive traffic. The value is either ALLOW, if
			traffic is allowed to the destination, or DENY, if traffic is not allowed to the destination.</p>")
  @as("DestinationTrafficState")
  destinationTrafficState: option<customRoutingDestinationTrafficState>,
  @ocaml.doc("<p>The protocols supported by the endpoint group.</p>") @as("Protocols")
  protocols: option<customRoutingProtocols>,
  @ocaml.doc(
    "<p>The EC2 instance IP address and port number in the virtual private cloud (VPC) subnet.</p>"
  )
  @as("DestinationSocketAddress")
  destinationSocketAddress: option<socketAddress>,
  @ocaml.doc("<p>The IP address of the VPC subnet (the subnet ID).</p>") @as("EndpointId")
  endpointId: option<genericString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint group.</p>") @as("EndpointGroupArn")
  endpointGroupArn: option<genericString>,
  @ocaml.doc("<p>The accelerator port.</p>") @as("AcceleratorPort")
  acceleratorPort: option<portNumber>,
}
@ocaml.doc("<p>A complex type for the set of IP addresses for an accelerator.</p>")
type ipSet = {
  @ocaml.doc(
    "<p>The array of IP addresses in the IP address set. An IP address set can have a maximum of two IP addresses.</p>"
  )
  @as("IpAddresses")
  ipAddresses: option<ipAddresses>,
  @ocaml.doc("<p>The types of IP addresses included in this IP set.</p>") @as("IpFamily")
  ipFamily: option<genericString>,
}
type endpointDescriptions = array<endpointDescription>
type endpointConfigurations = array<endpointConfiguration>
type customRoutingEndpointDescriptions = array<customRoutingEndpointDescription>
type customRoutingEndpointConfigurations = array<customRoutingEndpointConfiguration>
@ocaml.doc("<p>For a custom routing accelerator, describes the port range and protocol for all endpoints
			(virtual private cloud subnets) in an endpoint group to accept client traffic on.</p>")
type customRoutingDestinationDescription = {
  @ocaml.doc(
    "<p>The protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either TCP or UDP.</p>"
  )
  @as("Protocols")
  protocols: option<protocols>,
  @ocaml.doc(
    "<p>The last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>"
  )
  @as("ToPort")
  toPort: option<portNumber>,
  @ocaml.doc(
    "<p>The first port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>"
  )
  @as("FromPort")
  fromPort: option<portNumber>,
}
@ocaml.doc("<p>For a custom routing accelerator, sets the port range and protocol for all endpoints (virtual
			private cloud subnets) in an endpoint group to accept client traffic on.</p>")
type customRoutingDestinationConfiguration = {
  @ocaml.doc(
    "<p>The protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either TCP or UDP.</p>"
  )
  @as("Protocols")
  protocols: customRoutingProtocols,
  @ocaml.doc(
    "<p>The last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>"
  )
  @as("ToPort")
  toPort: portNumber,
  @ocaml.doc(
    "<p>The first port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>"
  )
  @as("FromPort")
  fromPort: portNumber,
}
type byoipCidrEvents = array<byoipCidrEvent>
type portMappings = array<portMapping>
@ocaml.doc("<p>A complex type for a listener.</p>")
type listener = {
  @ocaml.doc("<p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
			route each client to the same specific endpoint.</p>
		       <p>AWS Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
			affinity is <code>NONE</code>, Global Accelerator uses the \"five-tuple\" (5-tuple) properties—source IP address, source port,
			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
			be always routed to the same endpoint because the hash value changes. </p>
		       <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
			instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the \"two-tuple\" (2-tuple) properties—
			source (client) IP address and destination IP address—to select the hash value.</p>
		       <p>The default value is <code>NONE</code>.</p>")
  @as("ClientAffinity")
  clientAffinity: option<clientAffinity>,
  @ocaml.doc("<p>The protocol for the connections from clients to the accelerator.</p>")
  @as("Protocol")
  protocol: option<protocol>,
  @ocaml.doc("<p>The list of port ranges for the connections from clients to the accelerator.</p>")
  @as("PortRanges")
  portRanges: option<portRanges>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
  listenerArn: option<genericString>,
}
type ipSets = array<ipSet>
@ocaml.doc("<p>A complex type for the endpoint group. An AWS Region can have only one endpoint group for a specific listener.
		</p>")
type endpointGroup = {
  @ocaml.doc("<p>Allows you to override the destination ports used to route traffic to an endpoint. 
			Using a port override lets you to map a list of external destination ports (that your
			users send traffic to) to a list of internal destination ports that you want an application 
			endpoint to receive traffic on. </p>")
  @as("PortOverrides")
  portOverrides: option<portOverrides>,
  @ocaml.doc("<p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
			unhealthy endpoint to healthy. The default value is 3.</p>")
  @as("ThresholdCount")
  thresholdCount: option<thresholdCount>,
  @ocaml.doc(
    "<p>The time—10 seconds or 30 seconds—between health checks for each endpoint. The default value is 30.</p>"
  )
  @as("HealthCheckIntervalSeconds")
  healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
  @ocaml.doc("<p>If the protocol is HTTP/S, then this value provides the ping path that Global Accelerator uses for the destination on the
			endpoints for health checks. The default is slash (/).</p>")
  @as("HealthCheckPath")
  healthCheckPath: option<healthCheckPath>,
  @ocaml.doc("<p>The protocol that Global Accelerator uses to perform health checks on endpoints that are part of this endpoint group. The default
			value is TCP.</p>")
  @as("HealthCheckProtocol")
  healthCheckProtocol: option<healthCheckProtocol>,
  @ocaml.doc("<p>The port that Global Accelerator uses to perform health checks on endpoints that are part of this endpoint group. </p>
		    
		       <p>The default port is the port for the listener that this endpoint group is associated with. If the listener port is a
			list, Global Accelerator uses the first specified port in the list of ports.</p>")
  @as("HealthCheckPort")
  healthCheckPort: option<healthCheckPort>,
  @ocaml.doc("<p>The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for
			this listener. </p>
		       <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
		       <p>The default value is 100.</p>")
  @as("TrafficDialPercentage")
  trafficDialPercentage: option<trafficDialPercentage>,
  @ocaml.doc("<p>The list of endpoint objects.</p>") @as("EndpointDescriptions")
  endpointDescriptions: option<endpointDescriptions>,
  @ocaml.doc("<p>The AWS Region where the endpoint group is located.</p>")
  @as("EndpointGroupRegion")
  endpointGroupRegion: option<genericString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint group.</p>") @as("EndpointGroupArn")
  endpointGroupArn: option<genericString>,
}
@ocaml.doc("<p>The port mappings for a specified endpoint IP address (destination).</p>")
type destinationPortMapping = {
  @ocaml.doc("<p>Indicates whether or not a port mapping destination can receive traffic. The value is either ALLOW, if
			traffic is allowed to the destination, or DENY, if traffic is not allowed to the destination.</p>")
  @as("DestinationTrafficState")
  destinationTrafficState: option<customRoutingDestinationTrafficState>,
  @ocaml.doc("<p>The IP address type, which must be IPv4.</p>") @as("IpAddressType")
  ipAddressType: option<ipAddressType>,
  @ocaml.doc(
    "<p>The endpoint IP address/port combination for traffic received on the accelerator socket address.</p>"
  )
  @as("DestinationSocketAddress")
  destinationSocketAddress: option<socketAddress>,
  @ocaml.doc("<p>The AWS Region for the endpoint group.</p>") @as("EndpointGroupRegion")
  endpointGroupRegion: option<genericString>,
  @ocaml.doc("<p>The ID for the virtual private cloud (VPC) subnet.</p>") @as("EndpointId")
  endpointId: option<genericString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint group.</p>") @as("EndpointGroupArn")
  endpointGroupArn: option<genericString>,
  @ocaml.doc("<p>The IP address/port combinations (sockets) that map to a given destination socket
			address.</p>")
  @as("AcceleratorSocketAddresses")
  acceleratorSocketAddresses: option<socketAddresses>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom routing accelerator 
			that you have port mappings for.</p>")
  @as("AcceleratorArn")
  acceleratorArn: option<genericString>,
}
@ocaml.doc("<p>A complex type for a listener for a custom routing accelerator.</p>")
type customRoutingListener = {
  @ocaml.doc("<p>The port range to support for connections from clients to your accelerator.</p>
		       <p>Separately, you set port ranges for endpoints. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html\">About 
				endpoints for custom routing accelerators</a>.</p>")
  @as("PortRanges")
  portRanges: option<portRanges>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
  listenerArn: option<genericString>,
}
type customRoutingDestinationDescriptions = array<customRoutingDestinationDescription>
type customRoutingDestinationConfigurations = array<customRoutingDestinationConfiguration>
@ocaml.doc("<p>Information about an IP address range that is provisioned for use with your AWS resources through 
			bring your own IP address (BYOIP).</p>
		       <p>The following describes each BYOIP <code>State</code> that your IP address range can be in.</p>
		       <ul>
            <li>
               <p>
                  <b>PENDING_PROVISIONING</b> — 
				You’ve submitted a request to provision an IP address range but it is not yet provisioned with 
				AWS Global Accelerator.</p>
            </li>
            <li>
               <p>
                  <b>READY</b> — The address range is provisioned 
				with AWS Global Accelerator and can be advertised.</p>
            </li>
            <li>
               <p>
                  <b>PENDING_ADVERTISING</b> — You’ve submitted a 
				request for AWS Global Accelerator to advertise an address range but it is not yet being advertised.</p>
            </li>
            <li>
               <p>
                  <b>ADVERTISING</b> — The address range is 
				being advertised by AWS Global Accelerator.</p>
            </li>
            <li>
               <p>
                  <b>PENDING_WITHDRAWING</b> — You’ve submitted 
				a request to withdraw an address range from being advertised but it is still being advertised 
				by AWS Global Accelerator.</p>
            </li>
            <li>
               <p>
                  <b>PENDING_DEPROVISIONING</b> — You’ve submitted a 
				request to deprovision an address range from AWS Global Accelerator but it is still provisioned.</p>
            </li>
            <li>
               <p>
                  <b>DEPROVISIONED</b> — The address range is deprovisioned 
				from AWS Global Accelerator.</p>
            </li>
            <li>
               <p>
                  <b>FAILED_PROVISION </b> — The request to 
				provision the address range from AWS Global Accelerator was not successful. Please make sure that
				you provide all of the correct information, and try again. If the request fails
				a second time, contact AWS support.</p>
            </li>
            <li>
               <p>
                  <b>FAILED_ADVERTISING</b> — The request for AWS Global Accelerator
				to advertise the address range was not successful. Please make sure that
				you provide all of the correct information, and try again. If the request fails
				a second time, contact AWS support.</p>
            </li>
            <li>
               <p>
                  <b>FAILED_WITHDRAW</b> — The request to withdraw 
				the address range from advertising by AWS Global Accelerator was not successful. Please make sure that
				you provide all of the correct information, and try again. If the request fails
				a second time, contact AWS support.</p>
            </li>
            <li>
               <p>
                  <b>FAILED_DEPROVISION </b> — The request to 
				deprovision the address range from AWS Global Accelerator was not successful. Please make sure that
				you provide all of the correct information, and try again. If the request fails
				a second time, contact AWS support.</p>
            </li>
         </ul>")
type byoipCidr = {
  @ocaml.doc("<p>A history of status changes for an IP address range that you bring to AWS Global Accelerator
			through bring your own IP address (BYOIP).</p>")
  @as("Events")
  events: option<byoipCidrEvents>,
  @ocaml.doc("<p>The state of the address pool.</p>") @as("State") state: option<byoipCidrState>,
  @ocaml.doc("<p>The address range, in CIDR notation.</p>") @as("Cidr") cidr: option<genericString>,
}
type listeners = array<listener>
type endpointGroups = array<endpointGroup>
type destinationPortMappings = array<destinationPortMapping>
type customRoutingListeners = array<customRoutingListener>
@ocaml.doc("<p>A complex type for the endpoint group for a custom routing accelerator. An AWS Region can have only one endpoint group for a specific listener.
		</p>")
type customRoutingEndpointGroup = {
  @ocaml.doc("<p>For a custom routing accelerator, describes the endpoints (virtual private cloud subnets) in an
			endpoint group to accept client traffic on.</p>")
  @as("EndpointDescriptions")
  endpointDescriptions: option<customRoutingEndpointDescriptions>,
  @ocaml.doc("<p>For a custom routing accelerator, describes the port range and protocol for all endpoints
			(virtual private cloud subnets) in an endpoint group to accept client traffic on.</p>")
  @as("DestinationDescriptions")
  destinationDescriptions: option<customRoutingDestinationDescriptions>,
  @ocaml.doc("<p>The AWS Region where the endpoint group is located.</p>")
  @as("EndpointGroupRegion")
  endpointGroupRegion: option<genericString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint group.</p>") @as("EndpointGroupArn")
  endpointGroupArn: option<genericString>,
}
@ocaml.doc("<p>Attributes of a custom routing accelerator.</p>")
type customRoutingAccelerator = {
  @ocaml.doc("<p>The date and time that the accelerator was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the accelerator was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>Describes the deployment status of the accelerator.</p>") @as("Status")
  status: option<customRoutingAcceleratorStatus>,
  @ocaml.doc("<p>The Domain Name System (DNS) name that Global Accelerator creates that points to your accelerator's static IP addresses. </p>
		       <p>The naming convention for the DNS name is the following: A lowercase letter a,
			followed by a 16-bit random hex string, followed by .awsglobalaccelerator.com. For example:
			a1234567890abcdef.awsglobalaccelerator.com.</p>
		       <p>For more information about the default DNS name, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-accelerators.html#about-accelerators.dns-addressing\">
			Support for DNS Addressing in Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
  @as("DnsName")
  dnsName: option<genericString>,
  @ocaml.doc(
    "<p>The static IP addresses that Global Accelerator associates with the accelerator.</p>"
  )
  @as("IpSets")
  ipSets: option<ipSets>,
  @ocaml.doc("<p>Indicates whether the accelerator is enabled. The value is true or false. The default value is true. </p>
		       <p>If the value is set to true, the accelerator cannot be deleted. If set to false, accelerator can be deleted.</p>")
  @as("Enabled")
  enabled: option<genericBoolean>,
  @ocaml.doc("<p>The value for the address type must be IPv4.</p>") @as("IpAddressType")
  ipAddressType: option<ipAddressType>,
  @ocaml.doc("<p>The name of the accelerator. The name must contain only alphanumeric characters or
			hyphens (-), and must not begin or end with a hyphen.</p>")
  @as("Name")
  name: option<genericString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom routing accelerator.</p>")
  @as("AcceleratorArn")
  acceleratorArn: option<genericString>,
}
type byoipCidrs = array<byoipCidr>
@ocaml.doc("<p>An accelerator is a complex type that includes one or more listeners that process inbound connections and then direct
			traffic to one or more endpoint groups, each of which includes endpoints, such as load balancers.</p>")
type accelerator = {
  @ocaml.doc("<p>The date and time that the accelerator was last modified.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the accelerator was created.</p>") @as("CreatedTime")
  createdTime: option<timestamp_>,
  @ocaml.doc("<p>Describes the deployment status of the accelerator.</p>") @as("Status")
  status: option<acceleratorStatus>,
  @ocaml.doc("<p>The Domain Name System (DNS) name that Global Accelerator creates that points to your accelerator's static IP addresses. </p>
		       <p>The naming convention for the DNS name is the following: A lowercase letter a,
			followed by a 16-bit random hex string, followed by .awsglobalaccelerator.com. For example:
			a1234567890abcdef.awsglobalaccelerator.com.</p>
		       <p>For more information about the default DNS name, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-accelerators.html#about-accelerators.dns-addressing\">
			Support for DNS Addressing in Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
  @as("DnsName")
  dnsName: option<genericString>,
  @ocaml.doc(
    "<p>The static IP addresses that Global Accelerator associates with the accelerator.</p>"
  )
  @as("IpSets")
  ipSets: option<ipSets>,
  @ocaml.doc("<p>Indicates whether the accelerator is enabled. The value is true or false. The default value is true. </p>
		       <p>If the value is set to true, the accelerator cannot be deleted. If set to false, accelerator can be deleted.</p>")
  @as("Enabled")
  enabled: option<genericBoolean>,
  @ocaml.doc("<p>The value for the address type must be IPv4.
			</p>")
  @as("IpAddressType")
  ipAddressType: option<ipAddressType>,
  @ocaml.doc("<p>The name of the accelerator. The name must contain only alphanumeric characters or
			hyphens (-), and must not begin or end with a hyphen.</p>")
  @as("Name")
  name: option<genericString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the accelerator.</p>") @as("AcceleratorArn")
  acceleratorArn: option<genericString>,
}
type customRoutingEndpointGroups = array<customRoutingEndpointGroup>
type customRoutingAccelerators = array<customRoutingAccelerator>
type accelerators = array<accelerator>
@ocaml.doc("<fullname>AWS Global Accelerator</fullname>
		       <p>This is the <i>AWS Global Accelerator API Reference</i>. This guide is for developers who need detailed information about
			AWS Global Accelerator API actions, data types, and errors. For more information about Global Accelerator features, see the 
			<a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/Welcome.html\">AWS Global Accelerator Developer Guide</a>.</p>
      
		       <p>AWS Global Accelerator is a service in which you create <i>accelerators</i> to improve the performance 
			of your applications for local and global users. Depending on the type of accelerator you choose, you can
			gain additional benefits. </p>
		       <ul>
            <li>
               <p>By using a standard accelerator, you can improve availability of your internet applications 
				that are used by a global audience. With a standard accelerator, Global Accelerator directs traffic to optimal endpoints over the AWS 
				global network. </p>
            </li>
            <li>
               <p>For other scenarios, you might choose a custom routing accelerator. With a custom routing accelerator, you 
				can use application logic to directly map one or more users to a specific endpoint among many endpoints.</p>
            </li>
         </ul>
		       <important>
			         <p>Global Accelerator is a global service that supports endpoints in multiple AWS Regions but you must specify the 
				US West (Oregon) Region to create or update accelerators.</p>
		       </important>
		       <p>By default, Global Accelerator provides you with two static IP addresses that you associate with your accelerator. With
			a standard accelerator, instead of using the 
			IP addresses that Global Accelerator provides, you can configure these entry points to be IPv4 addresses from your own IP address ranges 
			that you bring to Global Accelerator. The static IP addresses are anycast from the AWS edge network. For a standard accelerator, 
			they distribute incoming application traffic across multiple endpoint resources in multiple AWS Regions, which increases 
			the availability of your applications. Endpoints for standard accelerators can be Network Load Balancers, Application Load Balancers, 
			Amazon EC2 instances, or Elastic IP addresses that are located in one AWS Region or multiple Regions. For custom routing
			accelerators, you map traffic that arrives to the static IP addresses to specific Amazon EC2 servers in endpoints that
			are virtual private cloud (VPC) subnets.</p>
		
		       <important>
            <p>The static IP addresses remain assigned to your accelerator for as long as it exists, even if you
				disable the accelerator and it no longer accepts or routes traffic. However, when you
					<i>delete</i> an accelerator, you lose the static IP addresses that
				are assigned to it, so you can no longer route traffic by using them. You can use
				IAM policies like tag-based permissions with Global Accelerator to limit the users who have
				permissions to delete an accelerator. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html\">Tag-based policies</a>.</p>
         </important>
		       <p>For standard accelerators, Global Accelerator uses the AWS global network to route traffic to the optimal regional endpoint based
			on health, client location, and policies that you configure. The service reacts instantly to
			changes in health or configuration to ensure that internet traffic from clients is always
			directed to healthy endpoints.</p>
		
		       <p>For a list of the AWS Regions where Global Accelerator and other services are currently supported, see the 
			<a href=\"https://docs.aws.amazon.com/about-aws/global-infrastructure/regional-product-services/\">AWS 
				Region Table</a>.</p>

		       <p>AWS Global Accelerator includes the following components:</p>
		       <dl>
            <dt>Static IP addresses</dt>
            <dd>
               <p>Global Accelerator provides you with a set of two static IP addresses that are anycast from the AWS edge
					network. If you bring your own IP address range to AWS (BYOIP) to use with a standard accelerator, you 
					can instead assign IP addresses from your own pool to use with your accelerator. For more information, 
					see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">
						Bring your own IP addresses (BYOIP) in AWS Global Accelerator</a>.</p>
					          <p>The IP addresses serve as single fixed entry points for your clients. If you already have Elastic
						Load Balancing load balancers, Amazon EC2 instances, or Elastic IP address resources set up for your applications, 
						you can easily add those to a standard accelerator in Global Accelerator. This allows Global Accelerator to use static IP addresses 
						to access the resources.</p>
					          <p>The static IP addresses remain assigned to your accelerator for as long as it exists, even
						if you disable the accelerator and it no longer accepts or routes traffic.
						However, when you <i>delete</i> an accelerator, you lose the
						static IP addresses that are assigned to it, so you can no longer route
						traffic by using them. You can use IAM policies like tag-based permissions
						with Global Accelerator to delete an accelerator. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html\">Tag-based policies</a>.</p>
				        </dd>
            <dt>Accelerator</dt>
            <dd>
               <p>An accelerator directs traffic to endpoints over the AWS global network to improve the
					performance of your internet applications. Each accelerator includes one or more listeners.</p>
					          <p>There are two types of accelerators:</p>
					          <ul>
                  <li>
                     <p>A <i>standard</i> accelerator directs traffic to the optimal AWS endpoint based 
							on several factors, including the user’s location, the health of the endpoint, and the endpoint weights 
							that you configure. This improves the availability and performance of your applications.
							Endpoints can be Network Load Balancers, Application Load Balancers, Amazon EC2 instances, or Elastic IP addresses.</p>
                  </li>
                  <li>
                     <p>A <i>custom routing</i> accelerator directs traffic to one of possibly thousands of
								Amazon EC2 instances running in a single or multiple virtual private
								clouds (VPCs). With custom routing, listener ports are mapped to
								statically associate port ranges with VPC subnets, which
								allows Global Accelerator to determine an EC2 instance IP address at the time of
								connection. By default, all port mapping destinations in a VPC
								subnet can't receive traffic. You can choose to configure all
								destinations in the subnet to receive traffic, or to specify
								individual port mappings that can receive traffic.</p>
                  </li>
               </ul>
					          <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/introduction-accelerator-types.html\">Types of accelerators</a>.</p>
				        </dd>
            <dt>DNS name</dt>
            <dd>
               <p>Global Accelerator assigns each accelerator a default Domain Name System (DNS) name, similar to
					<code>a1234567890abcdef.awsglobalaccelerator.com</code>, that points to
					the static IP addresses that Global Accelerator assigns to you or that you choose from your
					own IP address range. Depending on the use
					case, you can use your accelerator's static IP addresses or DNS name to
					route traffic to your accelerator, or set up DNS records to route traffic using
					your own custom domain name.</p>
				        </dd>
            <dt>Network zone</dt>
            <dd>
               <p>A network zone services the static IP addresses for your accelerator from a unique IP subnet. Similar to an
					AWS Availability Zone, a network zone is an isolated unit with its own set of physical infrastructure.
					When you configure an accelerator, by default, Global Accelerator allocates two IPv4 addresses for it. If one IP address from a
					network zone becomes unavailable due to IP address blocking by certain client networks, or network
					disruptions, then client applications can retry on the healthy static IP address from the other isolated
					network zone.</p>
				        </dd>
            <dt>Listener</dt>
            <dd>
               <p>A listener processes inbound connections from clients to Global Accelerator, based on the port (or port range) 
					and protocol (or protocols) that you configure. A listener can be configured for TCP, UDP, or both TCP and UDP protocols. Each 
					listener has one or more endpoint groups associated with it, and traffic is forwarded 
					to endpoints in one of the groups. You associate endpoint groups with listeners by specifying the Regions that you 
					want to distribute traffic to. With a standard accelerator, traffic is distributed to optimal endpoints within the endpoint 
					groups associated with a listener.</p>
            </dd>
            <dt>Endpoint group</dt>
            <dd>
               <p>Each endpoint group is associated with a specific AWS Region. Endpoint groups include one or
					more endpoints in the Region. With a standard accelerator, you can increase or reduce the percentage of
					traffic that would be otherwise directed to an endpoint group by adjusting a
					setting called a <i>traffic dial</i>. The traffic dial lets
					you easily do performance testing or blue/green deployment testing, for example, for new
					releases across different AWS Regions. </p>
				        </dd>
            <dt>Endpoint</dt>
            <dd>
               <p>An endpoint is a resource that Global Accelerator directs traffic to.</p>
					          <p>Endpoints for standard accelerators can be Network Load Balancers, Application Load Balancers, Amazon EC2 instances, or Elastic IP
						addresses. An Application Load Balancer endpoint can be internet-facing or internal. Traffic for
						standard accelerators is routed to endpoints based on the health of the
						endpoint along with configuration options that you choose, such as endpoint
						weights. For each endpoint, you can configure weights, which are numbers
						that you can use to specify the proportion of traffic to route to each one.
						This can be useful, for example, to do performance testing within a
						Region.</p>
					          <p>Endpoints for custom routing accelerators are virtual private cloud (VPC) subnets with one
						or many EC2 instances.</p>
				        </dd>
         </dl>")
module DeleteListener = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
    listenerArn: genericString,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DeleteListenerCommand"
  let make = (~listenerArn, ()) => new({listenerArn: listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEndpointGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>")
    @as("EndpointGroupArn")
    endpointGroupArn: genericString,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DeleteEndpointGroupCommand"
  let make = (~endpointGroupArn, ()) => new({endpointGroupArn: endpointGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomRoutingListener = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener to delete.</p>")
    @as("ListenerArn")
    listenerArn: genericString,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DeleteCustomRoutingListenerCommand"
  let make = (~listenerArn, ()) => new({listenerArn: listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomRoutingEndpointGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>")
    @as("EndpointGroupArn")
    endpointGroupArn: genericString,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DeleteCustomRoutingEndpointGroupCommand"
  let make = (~endpointGroupArn, ()) => new({endpointGroupArn: endpointGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomRoutingAccelerator = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom routing accelerator to delete.</p>")
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DeleteCustomRoutingAcceleratorCommand"
  let make = (~acceleratorArn, ()) => new({acceleratorArn: acceleratorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccelerator = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an accelerator.</p>") @as("AcceleratorArn")
    acceleratorArn: genericString,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DeleteAcceleratorCommand"
  let make = (~acceleratorArn, ()) => new({acceleratorArn: acceleratorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateCustomRoutingAcceleratorAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
		<code>FlowLogsEnabled</code> is <code>true</code>. </p>
	        <p>If you don’t specify a prefix, the flow logs are stored in the
		root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
	        <p>DOC-EXAMPLE-BUCKET//AWSLogs/aws_account_id</p>")
    @as("FlowLogsS3Prefix")
    flowLogsS3Prefix: option<genericString>,
    @ocaml.doc("<p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
		<code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the
		bucket.</p>")
    @as("FlowLogsS3Bucket")
    flowLogsS3Bucket: option<genericString>,
    @ocaml.doc("<p>Update whether flow logs are enabled. The default value is false. If the value is true,
		<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
	        <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html\">Flow Logs</a> in
		the <i>AWS Global Accelerator Developer Guide</i>.</p>")
    @as("FlowLogsEnabled")
    flowLogsEnabled: option<genericBoolean>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the custom routing accelerator to update attributes for.</p>"
    )
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>Updated custom routing accelerator.</p>") @as("AcceleratorAttributes")
    acceleratorAttributes: option<customRoutingAcceleratorAttributes>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "UpdateCustomRoutingAcceleratorAttributesCommand"
  let make = (~acceleratorArn, ~flowLogsS3Prefix=?, ~flowLogsS3Bucket=?, ~flowLogsEnabled=?, ()) =>
    new({
      flowLogsS3Prefix: flowLogsS3Prefix,
      flowLogsS3Bucket: flowLogsS3Bucket,
      flowLogsEnabled: flowLogsEnabled,
      acceleratorArn: acceleratorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAcceleratorAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
				<code>FlowLogsEnabled</code> is <code>true</code>. </p>
		       <p>If you don’t specify a prefix, the flow logs are stored in the
			root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
			      <p>s3-bucket_name//AWSLogs/aws_account_id</p>")
    @as("FlowLogsS3Prefix")
    flowLogsS3Prefix: option<genericString>,
    @ocaml.doc("<p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
				<code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the
			bucket.</p>")
    @as("FlowLogsS3Bucket")
    flowLogsS3Bucket: option<genericString>,
    @ocaml.doc("<p>Update whether flow logs are enabled. The default value is false. If the value is true,
				<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html\">Flow Logs</a> in
			the <i>AWS Global Accelerator Developer Guide</i>.</p>")
    @as("FlowLogsEnabled")
    flowLogsEnabled: option<genericBoolean>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the accelerator that you want to update.</p>")
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>Updated attributes for the accelerator.</p>") @as("AcceleratorAttributes")
    acceleratorAttributes: option<acceleratorAttributes>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "UpdateAcceleratorAttributesCommand"
  let make = (~acceleratorArn, ~flowLogsS3Prefix=?, ~flowLogsS3Bucket=?, ~flowLogsEnabled=?, ()) =>
    new({
      flowLogsS3Prefix: flowLogsS3Prefix,
      flowLogsS3Bucket: flowLogsS3Bucket,
      flowLogsEnabled: flowLogsEnabled,
      acceleratorArn: acceleratorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key pairs that you want to remove from the specified resources.</p>")
    @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Global Accelerator resource to remove tags from. An ARN uniquely identifies a resource.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveCustomRoutingEndpoints = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the endpoint group to remove endpoints from.</p>"
    )
    @as("EndpointGroupArn")
    endpointGroupArn: genericString,
    @ocaml.doc("<p>The IDs for the endpoints. For custom routing accelerators, endpoint IDs are the virtual private cloud (VPC)
		subnet IDs. </p>")
    @as("EndpointIds")
    endpointIds: endpointIds,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "RemoveCustomRoutingEndpointsCommand"
  let make = (~endpointGroupArn, ~endpointIds, ()) =>
    new({endpointGroupArn: endpointGroupArn, endpointIds: endpointIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeCustomRoutingAcceleratorAttributes = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the custom routing accelerator to describe the attributes for.</p>"
    )
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The attributes of the custom routing accelerator.</p>")
    @as("AcceleratorAttributes")
    acceleratorAttributes: option<customRoutingAcceleratorAttributes>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DescribeCustomRoutingAcceleratorAttributesCommand"
  let make = (~acceleratorArn, ()) => new({acceleratorArn: acceleratorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAcceleratorAttributes = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the accelerator with the attributes that you want to describe.</p>"
    )
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The attributes of the accelerator.</p>") @as("AcceleratorAttributes")
    acceleratorAttributes: option<acceleratorAttributes>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DescribeAcceleratorAttributesCommand"
  let make = (~acceleratorArn, ()) => new({acceleratorArn: acceleratorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DenyCustomRoutingTraffic = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint <i>cannot</i> 
			receive traffic from a custom routing accelerator. The value is TRUE or FALSE. </p>
		       <p>When set to TRUE, <i>no</i> destinations in the custom routing VPC subnet can receive traffic. Note 
			that you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>
		       <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that cannot receive
			traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is
			the same as the ports configured for the endpoint group.</p>
		       <p>The default value is FALSE.</p>")
    @as("DenyAllTrafficToEndpoint")
    denyAllTrafficToEndpoint: option<genericBoolean>,
    @ocaml.doc("<p>A list of specific Amazon EC2 instance ports (destination ports) in a subnet endpoint that you want to prevent from 
			receiving traffic.</p>")
    @as("DestinationPorts")
    destinationPorts: option<destinationPorts>,
    @ocaml.doc("<p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to prevent from receiving 
			traffic. The IP addresses must be a subset of the IP addresses allowed for the VPC subnet associated with the 
			endpoint group.</p>")
    @as("DestinationAddresses")
    destinationAddresses: option<destinationAddresses>,
    @ocaml.doc(
      "<p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>"
    )
    @as("EndpointId")
    endpointId: genericString,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint group.</p>")
    @as("EndpointGroupArn")
    endpointGroupArn: genericString,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DenyCustomRoutingTrafficCommand"
  let make = (
    ~endpointId,
    ~endpointGroupArn,
    ~denyAllTrafficToEndpoint=?,
    ~destinationPorts=?,
    ~destinationAddresses=?,
    (),
  ) =>
    new({
      denyAllTrafficToEndpoint: denyAllTrafficToEndpoint,
      destinationPorts: destinationPorts,
      destinationAddresses: destinationAddresses,
      endpointId: endpointId,
      endpointGroupArn: endpointGroupArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AllowCustomRoutingTraffic = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint can receive traffic 
			from a custom routing accelerator. The value is TRUE or FALSE. </p>
		       <p>When set to TRUE, <i>all</i> destinations in the custom routing VPC subnet can receive traffic. Note 
			that you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>
		       <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that are allowed
			to receive traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is
			the same as the ports configured for the endpoint group.</p>
		       <p>The default value is FALSE.</p>")
    @as("AllowAllTrafficToEndpoint")
    allowAllTrafficToEndpoint: option<genericBoolean>,
    @ocaml.doc(
      "<p>A list of specific Amazon EC2 instance ports (destination ports) that you want to allow to receive traffic.</p>"
    )
    @as("DestinationPorts")
    destinationPorts: option<destinationPorts>,
    @ocaml.doc("<p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to allow to receive 
			traffic. The IP addresses must be a subset of the IP addresses that you specified for the endpoint group.</p>
		       <p>
            <code>DestinationAddresses</code> is required if <code>AllowAllTrafficToEndpoint</code> is <code>FALSE</code> or is
		not specified.</p>")
    @as("DestinationAddresses")
    destinationAddresses: option<destinationAddresses>,
    @ocaml.doc(
      "<p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>"
    )
    @as("EndpointId")
    endpointId: genericString,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint group.</p>")
    @as("EndpointGroupArn")
    endpointGroupArn: genericString,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "AllowCustomRoutingTrafficCommand"
  let make = (
    ~endpointId,
    ~endpointGroupArn,
    ~allowAllTrafficToEndpoint=?,
    ~destinationPorts=?,
    ~destinationAddresses=?,
    (),
  ) =>
    new({
      allowAllTrafficToEndpoint: allowAllTrafficToEndpoint,
      destinationPorts: destinationPorts,
      destinationAddresses: destinationAddresses,
      endpointId: endpointId,
      endpointGroupArn: endpointGroupArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The tags to add to a resource. A tag consists of a key and a value that you define.</p>"
    )
    @as("Tags")
    tags: tags,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Global Accelerator resource to add tags to. An ARN uniquely identifies a resource.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the accelerator to list tags for. An ARN uniquely identifies an accelerator.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>Root level tag for the Tags parameters.</p>") @as("Tags") tags: option<tags>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddCustomRoutingEndpoints = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the endpoint group for the custom routing endpoint.</p>"
    )
    @as("EndpointGroupArn")
    endpointGroupArn: genericString,
    @ocaml.doc("<p>The list of endpoint objects to add to a custom routing accelerator.</p>")
    @as("EndpointConfigurations")
    endpointConfigurations: customRoutingEndpointConfigurations,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the endpoint group for the custom routing endpoint.</p>"
    )
    @as("EndpointGroupArn")
    endpointGroupArn: option<genericString>,
    @ocaml.doc("<p>The endpoint objects added to the custom routing accelerator.</p>")
    @as("EndpointDescriptions")
    endpointDescriptions: option<customRoutingEndpointDescriptions>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "AddCustomRoutingEndpointsCommand"
  let make = (~endpointGroupArn, ~endpointConfigurations, ()) =>
    new({endpointGroupArn: endpointGroupArn, endpointConfigurations: endpointConfigurations})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module WithdrawByoipCidr = {
  type t
  type request = {
    @ocaml.doc("<p>The address range, in CIDR notation.</p>") @as("Cidr") cidr: genericString,
  }
  type response = {
    @ocaml.doc("<p>Information about the address pool.</p>") @as("ByoipCidr")
    byoipCidr: option<byoipCidr>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "WithdrawByoipCidrCommand"
  let make = (~cidr, ()) => new({cidr: cidr})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateListener = {
  type t
  type request = {
    @ocaml.doc("<p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
			route each client to the same specific endpoint.</p>
		       <p>AWS Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
			affinity is <code>NONE</code>, Global Accelerator uses the \"five-tuple\" (5-tuple) properties—source IP address, source port,
			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
			be always routed to the same endpoint because the hash value changes. </p>
		       <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
			instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the \"two-tuple\" (2-tuple) properties—
			source (client) IP address and destination IP address—to select the hash value.</p>
		       <p>The default value is <code>NONE</code>.</p>")
    @as("ClientAffinity")
    clientAffinity: option<clientAffinity>,
    @ocaml.doc("<p>The updated protocol for the connections from clients to the accelerator.</p>")
    @as("Protocol")
    protocol: option<protocol>,
    @ocaml.doc(
      "<p>The updated list of port ranges for the connections from clients to the accelerator.</p>"
    )
    @as("PortRanges")
    portRanges: option<portRanges>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener to update.</p>")
    @as("ListenerArn")
    listenerArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>Information for the updated listener.</p>") @as("Listener")
    listener: option<listener>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "UpdateListenerCommand"
  let make = (~listenerArn, ~clientAffinity=?, ~protocol=?, ~portRanges=?, ()) =>
    new({
      clientAffinity: clientAffinity,
      protocol: protocol,
      portRanges: portRanges,
      listenerArn: listenerArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEndpointGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. 
			For example, you can create a port override in which the listener 
			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080 
			and 1443, respectively, on the endpoints.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html\">
			Port overrides</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
    @as("PortOverrides")
    portOverrides: option<portOverrides>,
    @ocaml.doc("<p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
			unhealthy endpoint to healthy. The default value is 3.</p>")
    @as("ThresholdCount")
    thresholdCount: option<thresholdCount>,
    @ocaml.doc(
      "<p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>"
    )
    @as("HealthCheckIntervalSeconds")
    healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
    @ocaml.doc("<p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The
			default value is slash (/).</p>")
    @as("HealthCheckPath")
    healthCheckPath: option<healthCheckPath>,
    @ocaml.doc("<p>The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default
			value is TCP.</p>")
    @as("HealthCheckProtocol")
    healthCheckProtocol: option<healthCheckProtocol>,
    @ocaml.doc("<p>The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port
			is the listener port that this endpoint group is associated with. If the listener port is a list of ports, Global Accelerator uses
			the first port in the list.</p>")
    @as("HealthCheckPort")
    healthCheckPort: option<healthCheckPort>,
    @ocaml.doc("<p>The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for
			this listener. </p>
		       <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
		       <p>The default value is 100.</p>")
    @as("TrafficDialPercentage")
    trafficDialPercentage: option<trafficDialPercentage>,
    @ocaml.doc(
      "<p>The list of endpoint objects. A resource must be valid and active when you add it as an endpoint.</p>"
    )
    @as("EndpointConfigurations")
    endpointConfigurations: option<endpointConfigurations>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint group.</p>")
    @as("EndpointGroupArn")
    endpointGroupArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The information about the endpoint group that was updated.</p>")
    @as("EndpointGroup")
    endpointGroup: option<endpointGroup>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "UpdateEndpointGroupCommand"
  let make = (
    ~endpointGroupArn,
    ~portOverrides=?,
    ~thresholdCount=?,
    ~healthCheckIntervalSeconds=?,
    ~healthCheckPath=?,
    ~healthCheckProtocol=?,
    ~healthCheckPort=?,
    ~trafficDialPercentage=?,
    ~endpointConfigurations=?,
    (),
  ) =>
    new({
      portOverrides: portOverrides,
      thresholdCount: thresholdCount,
      healthCheckIntervalSeconds: healthCheckIntervalSeconds,
      healthCheckPath: healthCheckPath,
      healthCheckProtocol: healthCheckProtocol,
      healthCheckPort: healthCheckPort,
      trafficDialPercentage: trafficDialPercentage,
      endpointConfigurations: endpointConfigurations,
      endpointGroupArn: endpointGroupArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCustomRoutingListener = {
  type t
  type request = {
    @ocaml.doc("<p>The updated port range to support for connections from clients to your accelerator. If you remove ports that are
	currently being used by a subnet endpoint, the call fails.</p>
	        <p>Separately, you set port ranges for endpoints. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html\">About 
		endpoints for custom routing accelerators</a>.</p>")
    @as("PortRanges")
    portRanges: portRanges,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener to update.</p>")
    @as("ListenerArn")
    listenerArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>Information for the updated listener for a custom routing accelerator.</p>")
    @as("Listener")
    listener: option<customRoutingListener>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "UpdateCustomRoutingListenerCommand"
  let make = (~portRanges, ~listenerArn, ()) =>
    new({portRanges: portRanges, listenerArn: listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ProvisionByoipCidr = {
  type t
  type request = {
    @ocaml.doc("<p>A signed document that proves that you are authorized to bring the specified IP address range to
			Amazon using BYOIP.
		</p>")
    @as("CidrAuthorizationContext")
    cidrAuthorizationContext: cidrAuthorizationContext,
    @ocaml.doc("<p>The public IPv4 address range, in CIDR notation. The most specific IP prefix that you can
			specify is /24. The address range cannot overlap with another address range that you've brought 
			to this or another Region.</p>")
    @as("Cidr")
    cidr: genericString,
  }
  type response = {
    @ocaml.doc("<p>Information about the address range.</p>") @as("ByoipCidr")
    byoipCidr: option<byoipCidr>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "ProvisionByoipCidrCommand"
  let make = (~cidrAuthorizationContext, ~cidr, ()) =>
    new({cidrAuthorizationContext: cidrAuthorizationContext, cidr: cidr})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomRoutingPortMappings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>"
    )
    @as("MaxResults")
    maxResults: option<portMappingsMaxResults>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the endpoint group to list the custom routing port mappings for.</p>"
    )
    @as("EndpointGroupArn")
    endpointGroupArn: option<genericString>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the accelerator to list the custom routing port mappings for.</p>"
    )
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The port mappings for a custom routing accelerator.</p>") @as("PortMappings")
    portMappings: option<portMappings>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "ListCustomRoutingPortMappingsCommand"
  let make = (~acceleratorArn, ~nextToken=?, ~maxResults=?, ~endpointGroupArn=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      endpointGroupArn: endpointGroupArn,
      acceleratorArn: acceleratorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeListener = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener to describe.</p>")
    @as("ListenerArn")
    listenerArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The description of a listener.</p>") @as("Listener") listener: option<listener>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DescribeListenerCommand"
  let make = (~listenerArn, ()) => new({listenerArn: listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpointGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>")
    @as("EndpointGroupArn")
    endpointGroupArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The description of an endpoint group.</p>") @as("EndpointGroup")
    endpointGroup: option<endpointGroup>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DescribeEndpointGroupCommand"
  let make = (~endpointGroupArn, ()) => new({endpointGroupArn: endpointGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomRoutingListener = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener to describe.</p>")
    @as("ListenerArn")
    listenerArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The description of a listener for a custom routing accelerator.</p>")
    @as("Listener")
    listener: option<customRoutingListener>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DescribeCustomRoutingListenerCommand"
  let make = (~listenerArn, ()) => new({listenerArn: listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeprovisionByoipCidr = {
  type t
  type request = {
    @ocaml.doc("<p>The address range, in CIDR notation. The prefix must be the same prefix that you specified 
			when you provisioned the address range.</p>")
    @as("Cidr")
    cidr: genericString,
  }
  type response = {
    @ocaml.doc("<p>Information about the address range.</p>") @as("ByoipCidr")
    byoipCidr: option<byoipCidr>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DeprovisionByoipCidrCommand"
  let make = (~cidr, ()) => new({cidr: cidr})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateListener = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
			uniqueness—of the request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
			route each client to the same specific endpoint.</p>
		       <p>AWS Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
			affinity is <code>NONE</code>, Global Accelerator uses the \"five-tuple\" (5-tuple) properties—source IP address, source port,
			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
			be always routed to the same endpoint because the hash value changes. </p>
		       <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
			instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the \"two-tuple\" (2-tuple) properties—
			source (client) IP address and destination IP address—to select the hash value.</p>
		       <p>The default value is <code>NONE</code>.</p>")
    @as("ClientAffinity")
    clientAffinity: option<clientAffinity>,
    @ocaml.doc("<p>The protocol for connections from clients to your accelerator.</p>")
    @as("Protocol")
    protocol: protocol,
    @ocaml.doc(
      "<p>The list of port ranges to support for connections from clients to your accelerator.</p>"
    )
    @as("PortRanges")
    portRanges: portRanges,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of your accelerator.</p>") @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The listener that you've created.</p>") @as("Listener")
    listener: option<listener>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "CreateListenerCommand"
  let make = (~idempotencyToken, ~protocol, ~portRanges, ~acceleratorArn, ~clientAffinity=?, ()) =>
    new({
      idempotencyToken: idempotencyToken,
      clientAffinity: clientAffinity,
      protocol: protocol,
      portRanges: portRanges,
      acceleratorArn: acceleratorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEndpointGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group.
			For example, you can create a port override in which the listener 
			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080 
			and 1443, respectively, on the endpoints.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html\">
			Port overrides</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
    @as("PortOverrides")
    portOverrides: option<portOverrides>,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
			uniqueness—of the request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
			unhealthy endpoint to healthy. The default value is 3.</p>")
    @as("ThresholdCount")
    thresholdCount: option<thresholdCount>,
    @ocaml.doc(
      "<p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>"
    )
    @as("HealthCheckIntervalSeconds")
    healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
    @ocaml.doc("<p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The
			default value is slash (/).</p>")
    @as("HealthCheckPath")
    healthCheckPath: option<healthCheckPath>,
    @ocaml.doc("<p>The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default
			value is TCP.</p>")
    @as("HealthCheckProtocol")
    healthCheckProtocol: option<healthCheckProtocol>,
    @ocaml.doc("<p>The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port
			is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the
			first port in the list.</p>")
    @as("HealthCheckPort")
    healthCheckPort: option<healthCheckPort>,
    @ocaml.doc("<p>The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for
			this listener. </p>
		       <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
		       <p>The default value is 100.</p>")
    @as("TrafficDialPercentage")
    trafficDialPercentage: option<trafficDialPercentage>,
    @ocaml.doc("<p>The list of endpoint objects.</p>") @as("EndpointConfigurations")
    endpointConfigurations: option<endpointConfigurations>,
    @ocaml.doc("<p>The AWS Region where the endpoint group is located. A listener can have only one endpoint group in a
			specific Region.</p>")
    @as("EndpointGroupRegion")
    endpointGroupRegion: genericString,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
    listenerArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The information about the endpoint group that was created.</p>")
    @as("EndpointGroup")
    endpointGroup: option<endpointGroup>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "CreateEndpointGroupCommand"
  let make = (
    ~idempotencyToken,
    ~endpointGroupRegion,
    ~listenerArn,
    ~portOverrides=?,
    ~thresholdCount=?,
    ~healthCheckIntervalSeconds=?,
    ~healthCheckPath=?,
    ~healthCheckProtocol=?,
    ~healthCheckPort=?,
    ~trafficDialPercentage=?,
    ~endpointConfigurations=?,
    (),
  ) =>
    new({
      portOverrides: portOverrides,
      idempotencyToken: idempotencyToken,
      thresholdCount: thresholdCount,
      healthCheckIntervalSeconds: healthCheckIntervalSeconds,
      healthCheckPath: healthCheckPath,
      healthCheckProtocol: healthCheckProtocol,
      healthCheckPort: healthCheckPort,
      trafficDialPercentage: trafficDialPercentage,
      endpointConfigurations: endpointConfigurations,
      endpointGroupRegion: endpointGroupRegion,
      listenerArn: listenerArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomRoutingListener = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
		uniqueness—of the request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>The port range to support for connections from clients to your accelerator.</p>
	        <p>Separately, you set port ranges for endpoints. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html\">About 
		endpoints for custom routing accelerators</a>.</p>")
    @as("PortRanges")
    portRanges: portRanges,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the accelerator for a custom routing listener.</p>"
    )
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The listener that you've created for a custom routing accelerator.</p>")
    @as("Listener")
    listener: option<customRoutingListener>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "CreateCustomRoutingListenerCommand"
  let make = (~idempotencyToken, ~portRanges, ~acceleratorArn, ()) =>
    new({
      idempotencyToken: idempotencyToken,
      portRanges: portRanges,
      acceleratorArn: acceleratorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AdvertiseByoipCidr = {
  type t
  type request = {
    @ocaml.doc("<p>The address range, in CIDR notation. This must be the exact range that you provisioned. 
			You can't advertise only a portion of the provisioned range.</p>")
    @as("Cidr")
    cidr: genericString,
  }
  type response = {
    @ocaml.doc("<p>Information about the address range.</p>") @as("ByoipCidr")
    byoipCidr: option<byoipCidr>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "AdvertiseByoipCidrCommand"
  let make = (~cidr, ()) => new({cidr: cidr})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCustomRoutingAccelerator = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
	        <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>")
    @as("Enabled")
    enabled: option<genericBoolean>,
    @ocaml.doc("<p>The value for the address type must be IPv4.</p>") @as("IpAddressType")
    ipAddressType: option<ipAddressType>,
    @ocaml.doc("<p>The name of the accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or
		hyphens (-), and must not begin or end with a hyphen.</p>")
    @as("Name")
    name: option<genericString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the accelerator to update.</p>")
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>Information about the updated custom routing accelerator.</p>")
    @as("Accelerator")
    accelerator: option<customRoutingAccelerator>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "UpdateCustomRoutingAcceleratorCommand"
  let make = (~acceleratorArn, ~enabled=?, ~ipAddressType=?, ~name=?, ()) =>
    new({
      enabled: enabled,
      ipAddressType: ipAddressType,
      name: name,
      acceleratorArn: acceleratorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccelerator = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
		       <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>")
    @as("Enabled")
    enabled: option<genericBoolean>,
    @ocaml.doc("<p>The IP address type, which must be IPv4.</p>") @as("IpAddressType")
    ipAddressType: option<ipAddressType>,
    @ocaml.doc("<p>The name of the accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or
			hyphens (-), and must not begin or end with a hyphen.</p>")
    @as("Name")
    name: option<genericString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the accelerator to update.</p>")
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>Information about the updated accelerator.</p>") @as("Accelerator")
    accelerator: option<accelerator>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "UpdateAcceleratorCommand"
  let make = (~acceleratorArn, ~enabled=?, ~ipAddressType=?, ~name=?, ()) =>
    new({
      enabled: enabled,
      ipAddressType: ipAddressType,
      name: name,
      acceleratorArn: acceleratorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListListeners = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>The number of listener objects that you want to return with this call. The default value is 10.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the accelerator for which you want to list listener objects.</p>"
    )
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The list of listeners for an accelerator.</p>") @as("Listeners")
    listeners: option<listeners>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "ListListenersCommand"
  let make = (~acceleratorArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, acceleratorArn: acceleratorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEndpointGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
    listenerArn: genericString,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The list of the endpoint groups associated with a listener.</p>")
    @as("EndpointGroups")
    endpointGroups: option<endpointGroups>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "ListEndpointGroupsCommand"
  let make = (~listenerArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, listenerArn: listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomRoutingPortMappingsByDestination = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>"
    )
    @as("MaxResults")
    maxResults: option<portMappingsMaxResults>,
    @ocaml.doc("<p>The endpoint IP address in a virtual private cloud (VPC) subnet for which you want to receive back port
		mappings.</p>")
    @as("DestinationAddress")
    destinationAddress: genericString,
    @ocaml.doc("<p>The ID for the virtual private cloud (VPC) subnet.</p>") @as("EndpointId")
    endpointId: genericString,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>The port mappings for the endpoint IP address that you specified in the request.</p>"
    )
    @as("DestinationPortMappings")
    destinationPortMappings: option<destinationPortMappings>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "ListCustomRoutingPortMappingsByDestinationCommand"
  let make = (~destinationAddress, ~endpointId, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      destinationAddress: destinationAddress,
      endpointId: endpointId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomRoutingListeners = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>The number of listener objects that you want to return with this call. The default value is 10.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the accelerator to list listeners for.</p>")
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The list of listeners for a custom routing accelerator.</p>") @as("Listeners")
    listeners: option<customRoutingListeners>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "ListCustomRoutingListenersCommand"
  let make = (~acceleratorArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, acceleratorArn: acceleratorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListByoipCidrs = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The maximum number of results to return with a single call. To retrieve the remaining results, make
			another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>Information about your address ranges.</p>") @as("ByoipCidrs")
    byoipCidrs: option<byoipCidrs>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "ListByoipCidrsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomRoutingEndpointGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>")
    @as("EndpointGroupArn")
    endpointGroupArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The description of an endpoint group for a custom routing accelerator.</p>")
    @as("EndpointGroup")
    endpointGroup: option<customRoutingEndpointGroup>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DescribeCustomRoutingEndpointGroupCommand"
  let make = (~endpointGroupArn, ()) => new({endpointGroupArn: endpointGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomRoutingAccelerator = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>")
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The description of the custom routing accelerator.</p>") @as("Accelerator")
    accelerator: option<customRoutingAccelerator>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DescribeCustomRoutingAcceleratorCommand"
  let make = (~acceleratorArn, ()) => new({acceleratorArn: acceleratorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccelerator = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>")
    @as("AcceleratorArn")
    acceleratorArn: genericString,
  }
  type response = {
    @ocaml.doc("<p>The description of the accelerator.</p>") @as("Accelerator")
    accelerator: option<accelerator>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "DescribeAcceleratorCommand"
  let make = (~acceleratorArn, ()) => new({acceleratorArn: acceleratorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomRoutingEndpointGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
		uniqueness—of the request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>Sets the port range and protocol for all endpoints (virtual private cloud subnets) in a custom routing endpoint group to accept 
		client traffic on.</p>")
    @as("DestinationConfigurations")
    destinationConfigurations: customRoutingDestinationConfigurations,
    @ocaml.doc("<p>The AWS Region where the endpoint group is located. A listener can have only one endpoint group in a
		specific Region.</p>")
    @as("EndpointGroupRegion")
    endpointGroupRegion: genericString,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the listener for a custom routing endpoint.</p>"
    )
    @as("ListenerArn")
    listenerArn: genericString,
  }
  type response = {
    @ocaml.doc(
      "<p>The information about the endpoint group created for a custom routing accelerator.</p>"
    )
    @as("EndpointGroup")
    endpointGroup: option<customRoutingEndpointGroup>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "CreateCustomRoutingEndpointGroupCommand"
  let make = (
    ~idempotencyToken,
    ~destinationConfigurations,
    ~endpointGroupRegion,
    ~listenerArn,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      destinationConfigurations: destinationConfigurations,
      endpointGroupRegion: endpointGroupRegion,
      listenerArn: listenerArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomRoutingAccelerator = {
  type t
  type request = {
    @ocaml.doc("<p>Create tags for an accelerator.</p>
	        <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html\">Tagging
		in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that
			is, the uniqueness—of the request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
	        <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>")
    @as("Enabled")
    enabled: option<genericBoolean>,
    @ocaml.doc("<p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose IP addresses 
				from your own pool to use for the accelerator's static IP addresses when you create an accelerator. You can 
				specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>
			      <p>Only one IP address from each of your IP address ranges can be used for each accelerator. If you specify only 
				one IP address from your IP address range, Global Accelerator assigns a second static IP address for the 
				accelerator from the AWS IP address pool.</p>
			      <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new 
				accelerator with the new addresses.</p>
			      <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring 
				your own IP addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
    @as("IpAddresses")
    ipAddresses: option<ipAddresses>,
    @ocaml.doc("<p>The value for the address type must be IPv4.</p>") @as("IpAddressType")
    ipAddressType: option<ipAddressType>,
    @ocaml.doc("<p>The name of a custom routing accelerator. The name can have a maximum of 64 characters, must contain 
		only alphanumeric characters or hyphens (-), and must not begin or end with a hyphen.</p>")
    @as("Name")
    name: genericString,
  }
  type response = {
    @ocaml.doc("<p>The accelerator that is created.</p>") @as("Accelerator")
    accelerator: option<customRoutingAccelerator>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "CreateCustomRoutingAcceleratorCommand"
  let make = (
    ~idempotencyToken,
    ~name,
    ~tags=?,
    ~enabled=?,
    ~ipAddresses=?,
    ~ipAddressType=?,
    (),
  ) =>
    new({
      tags: tags,
      idempotencyToken: idempotencyToken,
      enabled: enabled,
      ipAddresses: ipAddresses,
      ipAddressType: ipAddressType,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccelerator = {
  type t
  type request = {
    @ocaml.doc("<p>Create tags for an accelerator.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html\">Tagging
			in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
			uniqueness—of an accelerator.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
		       <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>")
    @as("Enabled")
    enabled: option<genericBoolean>,
    @ocaml.doc("<p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose IP addresses 
			from your own pool to use for the accelerator's static IP addresses when you create an accelerator. You can 
			specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>
		       <p>Only one IP address from each of your IP address ranges can be used for each accelerator. If you specify only 
			one IP address from your IP address range, Global Accelerator assigns a second static IP address for the 
			accelerator from the AWS IP address pool.</p>
		       <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new 
			accelerator with the new addresses.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring Your Own 
			IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>")
    @as("IpAddresses")
    ipAddresses: option<ipAddresses>,
    @ocaml.doc("<p>The value for the address type must be IPv4.</p>") @as("IpAddressType")
    ipAddressType: option<ipAddressType>,
    @ocaml.doc("<p>The name of an accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or
			hyphens (-), and must not begin or end with a hyphen.</p>")
    @as("Name")
    name: genericString,
  }
  type response = {
    @ocaml.doc(
      "<p>The accelerator that is created by specifying a listener and the supported IP address types.</p>"
    )
    @as("Accelerator")
    accelerator: option<accelerator>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "CreateAcceleratorCommand"
  let make = (
    ~idempotencyToken,
    ~name,
    ~tags=?,
    ~enabled=?,
    ~ipAddresses=?,
    ~ipAddressType=?,
    (),
  ) =>
    new({
      tags: tags,
      idempotencyToken: idempotencyToken,
      enabled: enabled,
      ipAddresses: ipAddresses,
      ipAddressType: ipAddressType,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomRoutingEndpointGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener to list endpoint groups for.</p>")
    @as("ListenerArn")
    listenerArn: genericString,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>The list of the endpoint groups associated with a listener for a custom routing accelerator.</p>"
    )
    @as("EndpointGroups")
    endpointGroups: option<customRoutingEndpointGroups>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "ListCustomRoutingEndpointGroupsCommand"
  let make = (~listenerArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, listenerArn: listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomRoutingAccelerators = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>The number of custom routing Global Accelerator objects that you want to return with this call. The default value is 10.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The list of custom routing accelerators for a customer account.</p>")
    @as("Accelerators")
    accelerators: option<customRoutingAccelerators>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "ListCustomRoutingAcceleratorsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccelerators = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>The number of Global Accelerator objects that you want to return with this call. The default value is 10.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>The list of accelerators for a customer account.</p>") @as("Accelerators")
    accelerators: option<accelerators>,
  }
  @module("@aws-sdk/client-globalaccelerator") @new
  external new: request => t = "ListAcceleratorsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
