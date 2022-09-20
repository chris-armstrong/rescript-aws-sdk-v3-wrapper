type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-elasticloadbalancing") @new
external createClient: unit => awsServiceClient = "ElasticLoadBalancingClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcid = string
type unhealthyThreshold = int
type tagValue = string
type tagKey = string
type subnetId = string
type state = string
type securityGroupOwnerAlias = string
type securityGroupName = string
type securityGroupId = string
type sslcertificateId = string
type s3BucketName = string
type reasonCode = string
type protocol = string
type policyTypeName = string
type policyName = string
type pageSize = int
type name = string
type max = string
type marker = string
type loadBalancerScheme = string
type instancePort = int
type instanceId = string
type idleTimeout = int
type healthyThreshold = int
type healthCheckTimeout = int
type healthCheckTarget = string
type healthCheckInterval = int
type errorDescription = string
type endPointPort = int
type description = string
type defaultValue = string
type dnsname = string
type crossZoneLoadBalancingEnabled = bool
type createdTime = Js.Date.t
type cookieName = string
type cookieExpirationPeriod = float
type connectionDrainingTimeout = int
type connectionDrainingEnabled = bool
type cardinality = string
type availabilityZone = string
type attributeValue = string
type attributeType = string
type attributeName = string
type additionalAttributeValue = string
type additionalAttributeKey = string
type accessPointPort = int
type accessPointName = string
type accessLogPrefix = string
type accessLogInterval = int
type accessLogEnabled = bool
@ocaml.doc("<p>The key of a tag.</p>")
type tagKeyOnly = {@ocaml.doc("<p>The name of the key.</p>") @as("Key") key: option<tagKey>}
@ocaml.doc("<p>Information about a tag.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: tagKey,
}
type subnets = array<subnetId>
@ocaml.doc("<p>Information about a source security group.</p>")
type sourceSecurityGroup = {
  @ocaml.doc("<p>The name of the security group.</p>") @as("GroupName")
  groupName: option<securityGroupName>,
  @ocaml.doc("<p>The owner of the security group.</p>") @as("OwnerAlias")
  ownerAlias: option<securityGroupOwnerAlias>,
}
type securityGroups = array<securityGroupId>
type ports = array<accessPointPort>
type policyTypeNames = array<policyTypeName>
type policyNames = array<policyName>
@ocaml.doc("<p>Information about a policy attribute type.</p>")
type policyAttributeTypeDescription = {
  @ocaml.doc("<p>The cardinality of the attribute.</p> 
        <p>Valid values:</p>
            <ul>
            <li>
               <p>ONE(1) : Single value required</p>
            </li>
            <li>
               <p>ZERO_OR_ONE(0..1) : Up to one value is allowed</p>
            </li>
            <li>
               <p>ZERO_OR_MORE(0..*) : Optional. Multiple values are allowed</p>
            </li>
            <li>
               <p>ONE_OR_MORE(1..*0) : Required. Multiple values are allowed</p>
            </li>
         </ul>")
  @as("Cardinality")
  cardinality: option<cardinality>,
  @ocaml.doc("<p>The default value of the attribute, if applicable.</p>") @as("DefaultValue")
  defaultValue: option<defaultValue>,
  @ocaml.doc("<p>A description of the attribute.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc(
    "<p>The type of the attribute. For example, <code>Boolean</code> or <code>Integer</code>.</p>"
  )
  @as("AttributeType")
  attributeType: option<attributeType>,
  @ocaml.doc("<p>The name of the attribute.</p>") @as("AttributeName")
  attributeName: option<attributeName>,
}
@ocaml.doc("<p>Information about a policy attribute.</p>")
type policyAttributeDescription = {
  @ocaml.doc("<p>The value of the attribute.</p>") @as("AttributeValue")
  attributeValue: option<attributeValue>,
  @ocaml.doc("<p>The name of the attribute.</p>") @as("AttributeName")
  attributeName: option<attributeName>,
}
@ocaml.doc("<p>Information about a policy attribute.</p>")
type policyAttribute = {
  @ocaml.doc("<p>The value of the attribute.</p>") @as("AttributeValue")
  attributeValue: option<attributeValue>,
  @ocaml.doc("<p>The name of the attribute.</p>") @as("AttributeName")
  attributeName: option<attributeName>,
}
type loadBalancerNamesMax20 = array<accessPointName>
type loadBalancerNames = array<accessPointName>
@ocaml.doc("<p>Information about a listener.</p>
        <p>For information about the protocols and the ports supported by Elastic Load Balancing, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html\">Listeners for Your Classic Load Balancer</a>
            in the <i>Classic Load Balancers Guide</i>.</p>")
type listener = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the server certificate.</p>")
  @as("SSLCertificateId")
  sslcertificateId: option<sslcertificateId>,
  @ocaml.doc("<p>The port on which the instance is listening.</p>") @as("InstancePort")
  instancePort: instancePort,
  @ocaml.doc("<p>The protocol to use for routing traffic to instances: HTTP, HTTPS, TCP, or SSL.</p>
         <p>If the front-end protocol is TCP or SSL, the back-end protocol must be TCP or SSL. 
           If the front-end protocol is HTTP or HTTPS, the back-end protocol must be HTTP or HTTPS.</p>
         <p>If there is another listener with the same <code>InstancePort</code> whose <code>InstanceProtocol</code> is secure,
          (HTTPS or SSL), the listener's <code>InstanceProtocol</code> must also be secure.</p> 
        <p>If there is another listener with the same <code>InstancePort</code> whose <code>InstanceProtocol</code> is HTTP or TCP,
           the listener's <code>InstanceProtocol</code> must be HTTP or TCP.</p>")
  @as("InstanceProtocol")
  instanceProtocol: option<protocol>,
  @ocaml.doc(
    "<p>The port on which the load balancer is listening. On EC2-VPC, you can specify any port from the range 1-65535. On EC2-Classic, you can specify any port from the following list: 25, 80, 443, 465, 587, 1024-65535.</p>"
  )
  @as("LoadBalancerPort")
  loadBalancerPort: accessPointPort,
  @ocaml.doc(
    "<p>The load balancer transport protocol to use for routing: HTTP, HTTPS, TCP, or SSL.</p>"
  )
  @as("Protocol")
  protocol: protocol,
}
@ocaml.doc(
  "<p>Information about an Elastic Load Balancing resource limit for your AWS account.</p>"
)
type limit = {
  @ocaml.doc("<p>The maximum value of the limit.</p>") @as("Max") max: option<max>,
  @ocaml.doc("<p>The name of the limit. The possible values are:</p>
        <ul>
            <li>
                <p>classic-listeners</p>
            </li>
            <li>
                <p>classic-load-balancers</p>
            </li>
            <li>
                <p>classic-registered-instances</p>
            </li>
         </ul>")
  @as("Name")
  name: option<name>,
}
@ocaml.doc("<p>Information about a policy for duration-based session stickiness.</p>")
type lbcookieStickinessPolicy = {
  @ocaml.doc(
    "<p>The time period, in seconds, after which the cookie should be considered stale. If this parameter is not specified, the stickiness session lasts for the duration of the browser session.</p>"
  )
  @as("CookieExpirationPeriod")
  cookieExpirationPeriod: option<cookieExpirationPeriod>,
  @ocaml.doc(
    "<p>The name of the policy. This name must be unique within the set of policies for this load balancer.</p>"
  )
  @as("PolicyName")
  policyName: option<policyName>,
}
@ocaml.doc("<p>Information about the state of an EC2 instance.</p>")
type instanceState = {
  @ocaml.doc("<p>A description of the instance state. This string can contain one or more of the following messages.</p>
        <ul>
            <li>
                <p>
                  <code>N/A</code>
               </p>
            </li>
            <li>
                <p>
                  <code>A transient error occurred. Please try again later.</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Instance has failed at least the UnhealthyThreshold number of health checks consecutively.</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Instance has not passed the configured HealthyThreshold number of health checks consecutively.</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Instance registration is still in progress.</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Instance is in the EC2 Availability Zone for which LoadBalancer is not configured to route traffic to.</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Instance is not currently registered with the LoadBalancer.</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Instance deregistration currently in progress.</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Disable Availability Zone is currently in progress.</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Instance is in pending state.</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Instance is in stopped state.</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Instance is in terminated state.</code>
               </p>
            </li>
         </ul>")
  @as("Description")
  description: option<description>,
  @ocaml.doc("<p>Information about the cause of <code>OutOfService</code> instances.
         Specifically, whether the cause is Elastic Load Balancing or the instance.</p>
        <p>Valid values: <code>ELB</code> | <code>Instance</code> | <code>N/A</code>
         </p>")
  @as("ReasonCode")
  reasonCode: option<reasonCode>,
  @ocaml.doc("<p>The current state of the instance.</p>
        <p>Valid values: <code>InService</code> | <code>OutOfService</code> | <code>Unknown</code>
         </p>")
  @as("State")
  state: option<state>,
  @ocaml.doc("<p>The ID of the instance.</p>") @as("InstanceId") instanceId: option<instanceId>,
}
@ocaml.doc("<p>The ID of an EC2 instance.</p>")
type instance = {
  @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: option<instanceId>,
}
@ocaml.doc("<p>Information about a health check.</p>")
type healthCheck = {
  @ocaml.doc(
    "<p>The number of consecutive health checks successes required before moving the instance to the <code>Healthy</code> state.</p>"
  )
  @as("HealthyThreshold")
  healthyThreshold: healthyThreshold,
  @ocaml.doc(
    "<p>The number of consecutive health check failures required before moving the instance to the <code>Unhealthy</code> state.</p>"
  )
  @as("UnhealthyThreshold")
  unhealthyThreshold: unhealthyThreshold,
  @ocaml.doc("<p>The amount of time, in seconds, during which no response means a failed health check.</p>
        <p>This value must be less than the <code>Interval</code> value.</p>")
  @as("Timeout")
  timeout: healthCheckTimeout,
  @ocaml.doc(
    "<p>The approximate interval, in seconds, between health checks of an individual instance.</p>"
  )
  @as("Interval")
  interval: healthCheckInterval,
  @ocaml.doc("<p>The instance being checked. The protocol is either TCP, HTTP, HTTPS, or SSL. The range of valid ports is one (1) through 65535.</p>
        <p>TCP is the default, specified as a TCP: port pair, for example \"TCP:5000\". In this case, a health check simply attempts to open a TCP connection to the instance on the specified port. Failure to connect within the configured timeout is considered unhealthy.</p>
        <p>SSL is also specified as SSL: port pair, for example, SSL:5000.</p>
        <p>For HTTP/HTTPS, you must include a ping path in the string. HTTP is specified as a HTTP:port;/;PathToPing; grouping, for example \"HTTP:80/weather/us/wa/seattle\". In this case, a HTTP GET request is issued to the instance on the given port and path. Any answer other than \"200 OK\" within the timeout period is considered unhealthy.</p>
         <p>The total length of the HTTP ping target must be 1024 16-bit Unicode characters or less.</p>")
  @as("Target")
  target: healthCheckTarget,
}
@ocaml.doc("<p>Information about the <code>CrossZoneLoadBalancing</code> attribute.</p>")
type crossZoneLoadBalancing = {
  @ocaml.doc("<p>Specifies whether cross-zone load balancing is enabled for the load balancer.</p>")
  @as("Enabled")
  enabled: crossZoneLoadBalancingEnabled,
}
@ocaml.doc("<p>Information about the <code>ConnectionSettings</code> attribute.</p>")
type connectionSettings = {
  @ocaml.doc(
    "<p>The time, in seconds, that the connection is allowed to be idle (no data has been sent over the connection) before it is closed by the load balancer.</p>"
  )
  @as("IdleTimeout")
  idleTimeout: idleTimeout,
}
@ocaml.doc("<p>Information about the <code>ConnectionDraining</code> attribute.</p>")
type connectionDraining = {
  @ocaml.doc(
    "<p>The maximum time, in seconds, to keep the existing connections open before deregistering the instances.</p>"
  )
  @as("Timeout")
  timeout: option<connectionDrainingTimeout>,
  @ocaml.doc("<p>Specifies whether connection draining is enabled for the load balancer.</p>")
  @as("Enabled")
  enabled: connectionDrainingEnabled,
}
type availabilityZones = array<availabilityZone>
@ocaml.doc("<p>Information about a policy for application-controlled session stickiness.</p>")
type appCookieStickinessPolicy = {
  @ocaml.doc("<p>The name of the application cookie used for stickiness.</p>") @as("CookieName")
  cookieName: option<cookieName>,
  @ocaml.doc(
    "<p>The mnemonic name for the policy being created. The name must be unique within a set of policies for this load balancer.</p>"
  )
  @as("PolicyName")
  policyName: option<policyName>,
}
@ocaml.doc("<p>Information about additional load balancer attributes.</p>")
type additionalAttribute = {
  @ocaml.doc("<p>This value of the attribute.</p>") @as("Value")
  value: option<additionalAttributeValue>,
  @ocaml.doc("<p>The name of the attribute.</p>
        <p>The following attribute is supported.</p>
        <ul>
            <li>
                <p>
                  <code>elb.http.desyncmitigationmode</code> - Determines how the load balancer handles requests that  
                    might pose a security risk to your application. The possible values are <code>monitor</code>, 
                    <code>defensive</code>, and <code>strictest</code>. The default is <code>defensive</code>.</p>
            </li>
         </ul>")
  @as("Key")
  key: option<additionalAttributeKey>,
}
@ocaml.doc("<p>Information about the <code>AccessLog</code> attribute.</p>")
type accessLog = {
  @ocaml.doc("<p>The logical hierarchy you created for your Amazon S3 bucket, for example <code>my-bucket-prefix/prod</code>.  
            If the prefix is not provided, the log is placed at the root level of the bucket.</p>")
  @as("S3BucketPrefix")
  s3BucketPrefix: option<accessLogPrefix>,
  @ocaml.doc("<p>The interval for publishing the access logs. You can specify an interval of either 5 minutes or 60 minutes.</p>
        <p>Default: 60 minutes</p>")
  @as("EmitInterval")
  emitInterval: option<accessLogInterval>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket where the access logs are stored.</p>")
  @as("S3BucketName")
  s3BucketName: option<s3BucketName>,
  @ocaml.doc("<p>Specifies whether access logs are enabled for the load balancer.</p>")
  @as("Enabled")
  enabled: accessLogEnabled,
}
type tagList_ = array<tag>
type tagKeyList = array<tagKeyOnly>
type policyAttributes = array<policyAttribute>
type policyAttributeTypeDescriptions = array<policyAttributeTypeDescription>
type policyAttributeDescriptions = array<policyAttributeDescription>
type listeners = array<listener>
@ocaml.doc("<p>The policies enabled for a listener.</p>")
type listenerDescription = {
  @ocaml.doc("<p>The policies. If there are no policies enabled, the list is empty.</p>")
  @as("PolicyNames")
  policyNames: option<policyNames>,
  @ocaml.doc("<p>The listener.</p>") @as("Listener") listener: option<listener>,
}
type limits = array<limit>
type lbcookieStickinessPolicies = array<lbcookieStickinessPolicy>
type instances = array<instance>
type instanceStates = array<instanceState>
@ocaml.doc("<p>Information about the configuration of an EC2 instance.</p>")
type backendServerDescription = {
  @ocaml.doc("<p>The names of the policies enabled for the EC2 instance.</p>") @as("PolicyNames")
  policyNames: option<policyNames>,
  @ocaml.doc("<p>The port on which the EC2 instance is listening.</p>") @as("InstancePort")
  instancePort: option<instancePort>,
}
type appCookieStickinessPolicies = array<appCookieStickinessPolicy>
type additionalAttributes = array<additionalAttribute>
@ocaml.doc("<p>The tags associated with a load balancer.</p>")
type tagDescription = {
  @ocaml.doc("<p>The tags.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
  loadBalancerName: option<accessPointName>,
}
@ocaml.doc("<p>Information about a policy type.</p>")
type policyTypeDescription = {
  @ocaml.doc(
    "<p>The description of the policy attributes associated with the policies defined by Elastic Load Balancing.</p>"
  )
  @as("PolicyAttributeTypeDescriptions")
  policyAttributeTypeDescriptions: option<policyAttributeTypeDescriptions>,
  @ocaml.doc("<p>A description of the policy type.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the policy type.</p>") @as("PolicyTypeName")
  policyTypeName: option<policyTypeName>,
}
@ocaml.doc("<p>Information about a policy.</p>")
type policyDescription = {
  @ocaml.doc("<p>The policy attributes.</p>") @as("PolicyAttributeDescriptions")
  policyAttributeDescriptions: option<policyAttributeDescriptions>,
  @ocaml.doc("<p>The name of the policy type.</p>") @as("PolicyTypeName")
  policyTypeName: option<policyTypeName>,
  @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: option<policyName>,
}
@ocaml.doc("<p>The policies for a load balancer.</p>")
type policies = {
  @ocaml.doc("<p>The policies other than the stickiness policies.</p>") @as("OtherPolicies")
  otherPolicies: option<policyNames>,
  @ocaml.doc("<p>The stickiness policies created using <a>CreateLBCookieStickinessPolicy</a>.</p>")
  @as("LBCookieStickinessPolicies")
  lbcookieStickinessPolicies: option<lbcookieStickinessPolicies>,
  @ocaml.doc("<p>The stickiness policies created using <a>CreateAppCookieStickinessPolicy</a>.</p>")
  @as("AppCookieStickinessPolicies")
  appCookieStickinessPolicies: option<appCookieStickinessPolicies>,
}
@ocaml.doc("<p>The attributes for a load balancer.</p>")
type loadBalancerAttributes = {
  @ocaml.doc("<p>Any additional attributes.</p>") @as("AdditionalAttributes")
  additionalAttributes: option<additionalAttributes>,
  @ocaml.doc("<p>If enabled, the load balancer allows the connections to remain idle (no data is sent over the connection) for the specified duration.</p>
        <p>By default, Elastic Load Balancing maintains a 60-second idle connection timeout for both front-end and back-end connections of your load balancer.
            For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html\">Configure Idle Connection Timeout</a>
            in the <i>Classic Load Balancers Guide</i>.</p>")
  @as("ConnectionSettings")
  connectionSettings: option<connectionSettings>,
  @ocaml.doc("<p>If enabled, the load balancer allows existing requests to complete before the load balancer shifts traffic away from a deregistered or unhealthy instance.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html\">Configure Connection Draining</a>
            in the <i>Classic Load Balancers Guide</i>.</p>")
  @as("ConnectionDraining")
  connectionDraining: option<connectionDraining>,
  @ocaml.doc("<p>If enabled, the load balancer captures detailed information of all requests and delivers the information to the Amazon S3 bucket that you specify.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html\">Enable Access Logs</a>
            in the <i>Classic Load Balancers Guide</i>.</p>")
  @as("AccessLog")
  accessLog: option<accessLog>,
  @ocaml.doc("<p>If enabled, the load balancer routes the request traffic evenly across all instances regardless of the Availability Zones.</p> 
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html\">Configure Cross-Zone Load Balancing</a>
            in the <i>Classic Load Balancers Guide</i>.</p>")
  @as("CrossZoneLoadBalancing")
  crossZoneLoadBalancing: option<crossZoneLoadBalancing>,
}
type listenerDescriptions = array<listenerDescription>
type backendServerDescriptions = array<backendServerDescription>
type tagDescriptions = array<tagDescription>
type policyTypeDescriptions = array<policyTypeDescription>
type policyDescriptions = array<policyDescription>
@ocaml.doc("<p>Information about a load balancer.</p>")
type loadBalancerDescription = {
  @ocaml.doc("<p>The type of load balancer. Valid only for load balancers in a VPC.</p>
         <p>If <code>Scheme</code> is <code>internet-facing</code>, the load balancer
           has a public DNS name that resolves to a public IP address.</p>
        <p>If <code>Scheme</code> is <code>internal</code>, the load balancer has a public 
           DNS name that resolves to a private IP address.</p>")
  @as("Scheme")
  scheme: option<loadBalancerScheme>,
  @ocaml.doc("<p>The date and time the load balancer was created.</p>") @as("CreatedTime")
  createdTime: option<createdTime>,
  @ocaml.doc(
    "<p>The security groups for the load balancer. Valid only for load balancers in a VPC.</p>"
  )
  @as("SecurityGroups")
  securityGroups: option<securityGroups>,
  @ocaml.doc("<p>The security group for the load balancer, which you can use as part of your inbound rules for your registered instances. 
            To only allow traffic from load balancers, add a security group rule that specifies this source security group as the inbound source.</p>")
  @as("SourceSecurityGroup")
  sourceSecurityGroup: option<sourceSecurityGroup>,
  @ocaml.doc("<p>Information about the health checks conducted on the load balancer.</p>")
  @as("HealthCheck")
  healthCheck: option<healthCheck>,
  @ocaml.doc("<p>The IDs of the instances for the load balancer.</p>") @as("Instances")
  instances: option<instances>,
  @ocaml.doc("<p>The ID of the VPC for the load balancer.</p>") @as("VPCId") vpcid: option<vpcid>,
  @ocaml.doc("<p>The IDs of the subnets for the load balancer.</p>") @as("Subnets")
  subnets: option<subnets>,
  @ocaml.doc("<p>The Availability Zones for the load balancer.</p>") @as("AvailabilityZones")
  availabilityZones: option<availabilityZones>,
  @ocaml.doc("<p>Information about your EC2 instances.</p>") @as("BackendServerDescriptions")
  backendServerDescriptions: option<backendServerDescriptions>,
  @ocaml.doc("<p>The policies defined for the load balancer.</p>") @as("Policies")
  policies: option<policies>,
  @ocaml.doc("<p>The listeners for the load balancer.</p>") @as("ListenerDescriptions")
  listenerDescriptions: option<listenerDescriptions>,
  @ocaml.doc("<p>The ID of the Amazon Route 53 hosted zone for the load balancer.</p>")
  @as("CanonicalHostedZoneNameID")
  canonicalHostedZoneNameID: option<dnsname>,
  @ocaml.doc("<p>The DNS name of the load balancer.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/using-domain-names-with-elb.html\">Configure a Custom Domain Name</a> 
            in the <i>Classic Load Balancers Guide</i>.</p>")
  @as("CanonicalHostedZoneName")
  canonicalHostedZoneName: option<dnsname>,
  @ocaml.doc("<p>The DNS name of the load balancer.</p>") @as("DNSName") dnsname: option<dnsname>,
  @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
  loadBalancerName: option<accessPointName>,
}
type loadBalancerDescriptions = array<loadBalancerDescription>
@ocaml.doc("<fullname>Elastic Load Balancing</fullname>
        
        <p>A load balancer can distribute incoming traffic across your EC2 instances.
            This enables you to increase the availability of your application. The load balancer
            also monitors the health of its registered instances and ensures that it routes traffic
            only to healthy instances. You configure your load balancer to accept incoming traffic
            by specifying one or more listeners, which are configured with a protocol and port 
            number for connections from clients to the load balancer and a protocol and port number
            for connections from the load balancer to the instances.</p> 
        <p>Elastic Load Balancing supports three types of load balancers: Application Load Balancers, Network Load Balancers, 
            and Classic Load Balancers. You can select a load balancer based on your application needs. For more 
            information, see the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/\">Elastic Load Balancing User Guide</a>.</p>
        <p>This reference covers the 2012-06-01 API, which supports Classic Load Balancers. 
            The 2015-12-01 API supports Application Load Balancers and Network Load Balancers.</p>
        
        <p>To get started, create a load balancer with one or more listeners using <a>CreateLoadBalancer</a>. 
            Register your instances with the load balancer using <a>RegisterInstancesWithLoadBalancer</a>.</p>

        <p>All Elastic Load Balancing operations are <i>idempotent</i>, which means 
            that they complete at most one time. If you repeat an operation, it succeeds with a 200 OK 
            response code.</p>")
module SetLoadBalancerListenerSSLCertificate = {
  type t
  @ocaml.doc("<p>Contains the parameters for SetLoadBalancerListenerSSLCertificate.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SSL certificate.</p>")
    @as("SSLCertificateId")
    sslcertificateId: sslcertificateId,
    @ocaml.doc("<p>The port that uses the specified SSL certificate.</p>") @as("LoadBalancerPort")
    loadBalancerPort: accessPointPort,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "SetLoadBalancerListenerSSLCertificateCommand"
  let make = (~sslcertificateId, ~loadBalancerPort, ~loadBalancerName, ()) =>
    new({sslcertificateId, loadBalancerPort, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteLoadBalancerPolicy = {
  type t
  @ocaml.doc("<p>Contains the parameters for DeleteLoadBalancerPolicy.</p>")
  type request = {
    @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: policyName,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeleteLoadBalancerPolicyCommand"
  let make = (~policyName, ~loadBalancerName, ()) => new({policyName, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteLoadBalancer = {
  type t
  @ocaml.doc("<p>Contains the parameters for DeleteLoadBalancer.</p>")
  type request = {
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeleteLoadBalancerCommand"
  let make = (~loadBalancerName, ()) => new({loadBalancerName: loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateLBCookieStickinessPolicy = {
  type t
  @ocaml.doc("<p>Contains the parameters for CreateLBCookieStickinessPolicy.</p>")
  type request = {
    @ocaml.doc(
      "<p>The time period, in seconds, after which the cookie should be considered stale. If you do not specify this parameter, the default value is 0, which indicates that the sticky session should last for the duration of the browser session.</p>"
    )
    @as("CookieExpirationPeriod")
    cookieExpirationPeriod: option<cookieExpirationPeriod>,
    @ocaml.doc(
      "<p>The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.</p>"
    )
    @as("PolicyName")
    policyName: policyName,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateLBCookieStickinessPolicyCommand"
  let make = (~policyName, ~loadBalancerName, ~cookieExpirationPeriod=?, ()) =>
    new({cookieExpirationPeriod, policyName, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateAppCookieStickinessPolicy = {
  type t
  @ocaml.doc("<p>Contains the parameters for CreateAppCookieStickinessPolicy.</p>")
  type request = {
    @ocaml.doc("<p>The name of the application cookie used for stickiness.</p>") @as("CookieName")
    cookieName: cookieName,
    @ocaml.doc(
      "<p>The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.</p>"
    )
    @as("PolicyName")
    policyName: policyName,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateAppCookieStickinessPolicyCommand"
  let make = (~cookieName, ~policyName, ~loadBalancerName, ()) =>
    new({cookieName, policyName, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetLoadBalancerPoliciesOfListener = {
  type t
  @ocaml.doc("<p>Contains the parameters for SetLoadBalancePoliciesOfListener.</p>")
  type request = {
    @ocaml.doc(
      "<p>The names of the policies. This list must include all policies to be enabled. If you omit a policy that is currently enabled, it is disabled. If the list is empty, all current policies are disabled.</p>"
    )
    @as("PolicyNames")
    policyNames: policyNames,
    @ocaml.doc("<p>The external port of the load balancer.</p>") @as("LoadBalancerPort")
    loadBalancerPort: accessPointPort,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "SetLoadBalancerPoliciesOfListenerCommand"
  let make = (~policyNames, ~loadBalancerPort, ~loadBalancerName, ()) =>
    new({policyNames, loadBalancerPort, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetLoadBalancerPoliciesForBackendServer = {
  type t
  @ocaml.doc("<p>Contains the parameters for SetLoadBalancerPoliciesForBackendServer.</p>")
  type request = {
    @ocaml.doc(
      "<p>The names of the policies. If the list is empty, then all current polices are removed from the EC2 instance.</p>"
    )
    @as("PolicyNames")
    policyNames: policyNames,
    @ocaml.doc("<p>The port number associated with the EC2 instance.</p>") @as("InstancePort")
    instancePort: endPointPort,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "SetLoadBalancerPoliciesForBackendServerCommand"
  let make = (~policyNames, ~instancePort, ~loadBalancerName, ()) =>
    new({policyNames, instancePort, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module EnableAvailabilityZonesForLoadBalancer = {
  type t
  @ocaml.doc("<p>Contains the parameters for EnableAvailabilityZonesForLoadBalancer.</p>")
  type request = {
    @ocaml.doc(
      "<p>The Availability Zones. These must be in the same region as the load balancer.</p>"
    )
    @as("AvailabilityZones")
    availabilityZones: availabilityZones,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output of EnableAvailabilityZonesForLoadBalancer.</p>")
  type response = {
    @ocaml.doc("<p>The updated list of Availability Zones for the load balancer.</p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "EnableAvailabilityZonesForLoadBalancerCommand"
  let make = (~availabilityZones, ~loadBalancerName, ()) =>
    new({availabilityZones, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisableAvailabilityZonesForLoadBalancer = {
  type t
  @ocaml.doc("<p>Contains the parameters for DisableAvailabilityZonesForLoadBalancer.</p>")
  type request = {
    @ocaml.doc("<p>The Availability Zones.</p>") @as("AvailabilityZones")
    availabilityZones: availabilityZones,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output for DisableAvailabilityZonesForLoadBalancer.</p>")
  type response = {
    @ocaml.doc("<p>The remaining Availability Zones for the load balancer.</p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DisableAvailabilityZonesForLoadBalancerCommand"
  let make = (~availabilityZones, ~loadBalancerName, ()) =>
    new({availabilityZones, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DetachLoadBalancerFromSubnets = {
  type t
  @ocaml.doc("<p>Contains the parameters for DetachLoadBalancerFromSubnets.</p>")
  type request = {
    @ocaml.doc("<p>The IDs of the subnets.</p>") @as("Subnets") subnets: subnets,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output of DetachLoadBalancerFromSubnets.</p>")
  type response = {
    @ocaml.doc("<p>The IDs of the remaining subnets for the load balancer.</p>") @as("Subnets")
    subnets: option<subnets>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DetachLoadBalancerFromSubnetsCommand"
  let make = (~subnets, ~loadBalancerName, ()) => new({subnets, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteLoadBalancerListeners = {
  type t
  @ocaml.doc("<p>Contains the parameters for DeleteLoadBalancerListeners.</p>")
  type request = {
    @ocaml.doc("<p>The client port numbers of the listeners.</p>") @as("LoadBalancerPorts")
    loadBalancerPorts: ports,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeleteLoadBalancerListenersCommand"
  let make = (~loadBalancerPorts, ~loadBalancerName, ()) =>
    new({loadBalancerPorts, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ConfigureHealthCheck = {
  type t
  @ocaml.doc("<p>Contains the parameters for ConfigureHealthCheck.</p>")
  type request = {
    @ocaml.doc("<p>The configuration information.</p>") @as("HealthCheck") healthCheck: healthCheck,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output of ConfigureHealthCheck.</p>")
  type response = {
    @ocaml.doc("<p>The updated health check.</p>") @as("HealthCheck")
    healthCheck: option<healthCheck>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "ConfigureHealthCheckCommand"
  let make = (~healthCheck, ~loadBalancerName, ()) => new({healthCheck, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AttachLoadBalancerToSubnets = {
  type t
  @ocaml.doc("<p>Contains the parameters for AttachLoaBalancerToSubnets.</p>")
  type request = {
    @ocaml.doc(
      "<p>The IDs of the subnets to add. You can add only one subnet per Availability Zone.</p>"
    )
    @as("Subnets")
    subnets: subnets,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output of AttachLoadBalancerToSubnets.</p>")
  type response = {
    @ocaml.doc("<p>The IDs of the subnets attached to the load balancer.</p>") @as("Subnets")
    subnets: option<subnets>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "AttachLoadBalancerToSubnetsCommand"
  let make = (~subnets, ~loadBalancerName, ()) => new({subnets, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ApplySecurityGroupsToLoadBalancer = {
  type t
  @ocaml.doc("<p>Contains the parameters for ApplySecurityGroupsToLoadBalancer.</p>")
  type request = {
    @ocaml.doc(
      "<p>The IDs of the security groups to associate with the load balancer. Note that you cannot specify the name of the security group.</p>"
    )
    @as("SecurityGroups")
    securityGroups: securityGroups,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output of ApplySecurityGroupsToLoadBalancer.</p>")
  type response = {
    @ocaml.doc("<p>The IDs of the security groups associated with the load balancer.</p>")
    @as("SecurityGroups")
    securityGroups: option<securityGroups>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "ApplySecurityGroupsToLoadBalancerCommand"
  let make = (~securityGroups, ~loadBalancerName, ()) => new({securityGroups, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RemoveTags = {
  type t
  @ocaml.doc("<p>Contains the parameters for RemoveTags.</p>")
  type request = {
    @ocaml.doc("<p>The list of tag keys to remove.</p>") @as("Tags") tags: tagKeyList,
    @ocaml.doc(
      "<p>The name of the load balancer. You can specify a maximum of one load balancer name.</p>"
    )
    @as("LoadBalancerNames")
    loadBalancerNames: loadBalancerNames,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "RemoveTagsCommand"
  let make = (~tags, ~loadBalancerNames, ()) => new({tags, loadBalancerNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RegisterInstancesWithLoadBalancer = {
  type t
  @ocaml.doc("<p>Contains the parameters for RegisterInstancesWithLoadBalancer.</p>")
  type request = {
    @ocaml.doc("<p>The IDs of the instances.</p>") @as("Instances") instances: instances,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output of RegisterInstancesWithLoadBalancer.</p>")
  type response = {
    @ocaml.doc("<p>The updated list of instances for the load balancer.</p>") @as("Instances")
    instances: option<instances>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "RegisterInstancesWithLoadBalancerCommand"
  let make = (~instances, ~loadBalancerName, ()) => new({instances, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeInstanceHealth = {
  type t
  @ocaml.doc("<p>Contains the parameters for DescribeInstanceHealth.</p>")
  type request = {
    @ocaml.doc("<p>The IDs of the instances.</p>") @as("Instances") instances: option<instances>,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output for DescribeInstanceHealth.</p>")
  type response = {
    @ocaml.doc("<p>Information about the health of the instances.</p>") @as("InstanceStates")
    instanceStates: option<instanceStates>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeInstanceHealthCommand"
  let make = (~loadBalancerName, ~instances=?, ()) => new({instances, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAccountLimits = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The marker for the next set of results. (You received this marker from a previous call.)</p>"
    )
    @as("Marker")
    marker: option<marker>,
  }
  type response = {
    @ocaml.doc(
      "<p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>"
    )
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>Information about the limits.</p>") @as("Limits") limits: option<limits>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeAccountLimitsCommand"
  let make = (~pageSize=?, ~marker=?, ()) => new({pageSize, marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeregisterInstancesFromLoadBalancer = {
  type t
  @ocaml.doc("<p>Contains the parameters for DeregisterInstancesFromLoadBalancer.</p>")
  type request = {
    @ocaml.doc("<p>The IDs of the instances.</p>") @as("Instances") instances: instances,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output of DeregisterInstancesFromLoadBalancer.</p>")
  type response = {
    @ocaml.doc("<p>The remaining instances registered with the load balancer.</p>") @as("Instances")
    instances: option<instances>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeregisterInstancesFromLoadBalancerCommand"
  let make = (~instances, ~loadBalancerName, ()) => new({instances, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateLoadBalancerPolicy = {
  type t
  @ocaml.doc("<p>Contains the parameters for CreateLoadBalancerPolicy.</p>")
  type request = {
    @ocaml.doc("<p>The policy attributes.</p>") @as("PolicyAttributes")
    policyAttributes: option<policyAttributes>,
    @ocaml.doc("<p>The name of the base policy type.
   	   To get the list of policy types, use <a>DescribeLoadBalancerPolicyTypes</a>.</p>")
    @as("PolicyTypeName")
    policyTypeName: policyTypeName,
    @ocaml.doc(
      "<p>The name of the load balancer policy to be created. This name must be unique within the set of policies for this load balancer.</p>"
    )
    @as("PolicyName")
    policyName: policyName,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateLoadBalancerPolicyCommand"
  let make = (~policyTypeName, ~policyName, ~loadBalancerName, ~policyAttributes=?, ()) =>
    new({policyAttributes, policyTypeName, policyName, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateLoadBalancerListeners = {
  type t
  @ocaml.doc("<p>Contains the parameters for CreateLoadBalancerListeners.</p>")
  type request = {
    @ocaml.doc("<p>The listeners.</p>") @as("Listeners") listeners: listeners,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateLoadBalancerListenersCommand"
  let make = (~listeners, ~loadBalancerName, ()) => new({listeners, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateLoadBalancer = {
  type t
  @ocaml.doc("<p>Contains the parameters for CreateLoadBalancer.</p>")
  type request = {
    @ocaml.doc("<p>A list of tags to assign to the load balancer.</p>
        <p>For more information about tagging your load balancer, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html\">Tag Your Classic Load Balancer</a>
            in the <i>Classic Load Balancers Guide</i>.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The type of a load balancer. Valid only for load balancers in a VPC.</p>          
        <p>By default, Elastic Load Balancing creates an Internet-facing load balancer with a DNS name that resolves to public IP addresses.
            For more information about Internet-facing and Internal load balancers, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/how-elastic-load-balancing-works.html#load-balancer-scheme\">Load Balancer Scheme</a>
            in the <i>Elastic Load Balancing User Guide</i>.</p>
        <p>Specify <code>internal</code> to create a load balancer with a DNS name that resolves to private IP addresses.</p>")
    @as("Scheme")
    scheme: option<loadBalancerScheme>,
    @ocaml.doc("<p>The IDs of the security groups to assign to the load balancer.</p>")
    @as("SecurityGroups")
    securityGroups: option<securityGroups>,
    @ocaml.doc("<p>The IDs of the subnets in your VPC to attach to the load balancer.
            Specify one subnet per Availability Zone specified in <code>AvailabilityZones</code>.</p>")
    @as("Subnets")
    subnets: option<subnets>,
    @ocaml.doc("<p>One or more Availability Zones from the same region as the load balancer.</p>
        <p>You must specify at least one Availability Zone.</p>
        <p>You can add more Availability Zones after you create the load balancer using 
            <a>EnableAvailabilityZonesForLoadBalancer</a>.</p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
    @ocaml.doc("<p>The listeners.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html\">Listeners for Your Classic Load Balancer</a>
            in the <i>Classic Load Balancers Guide</i>.</p>")
    @as("Listeners")
    listeners: listeners,
    @ocaml.doc("<p>The name of the load balancer.</p>
        <p>This name must be unique within your set of load balancers for the region, must have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and cannot begin or end with a hyphen.</p>")
    @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output for CreateLoadBalancer.</p>")
  type response = {
    @ocaml.doc("<p>The DNS name of the load balancer.</p>") @as("DNSName") dnsname: option<dnsname>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateLoadBalancerCommand"
  let make = (
    ~listeners,
    ~loadBalancerName,
    ~tags=?,
    ~scheme=?,
    ~securityGroups=?,
    ~subnets=?,
    ~availabilityZones=?,
    (),
  ) => new({tags, scheme, securityGroups, subnets, availabilityZones, listeners, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddTags = {
  type t
  @ocaml.doc("<p>Contains the parameters for AddTags.</p>")
  type request = {
    @ocaml.doc("<p>The tags.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The name of the load balancer. You can specify one load balancer only.</p>")
    @as("LoadBalancerNames")
    loadBalancerNames: loadBalancerNames,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new: request => t = "AddTagsCommand"
  let make = (~tags, ~loadBalancerNames, ()) => new({tags, loadBalancerNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ModifyLoadBalancerAttributes = {
  type t
  @ocaml.doc("<p>Contains the parameters for ModifyLoadBalancerAttributes.</p>")
  type request = {
    @ocaml.doc("<p>The attributes for the load balancer.</p>") @as("LoadBalancerAttributes")
    loadBalancerAttributes: loadBalancerAttributes,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output of ModifyLoadBalancerAttributes.</p>")
  type response = {
    @ocaml.doc("<p>Information about the load balancer attributes.</p>")
    @as("LoadBalancerAttributes")
    loadBalancerAttributes: option<loadBalancerAttributes>,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: option<accessPointName>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "ModifyLoadBalancerAttributesCommand"
  let make = (~loadBalancerAttributes, ~loadBalancerName, ()) =>
    new({loadBalancerAttributes, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeLoadBalancerAttributes = {
  type t
  @ocaml.doc("<p>Contains the parameters for DescribeLoadBalancerAttributes.</p>")
  type request = {
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: accessPointName,
  }
  @ocaml.doc("<p>Contains the output of DescribeLoadBalancerAttributes.</p>")
  type response = {
    @ocaml.doc("<p>Information about the load balancer attributes.</p>")
    @as("LoadBalancerAttributes")
    loadBalancerAttributes: option<loadBalancerAttributes>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeLoadBalancerAttributesCommand"
  let make = (~loadBalancerName, ()) => new({loadBalancerName: loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeTags = {
  type t
  @ocaml.doc("<p>Contains the parameters for DescribeTags.</p>")
  type request = {
    @ocaml.doc("<p>The names of the load balancers.</p>") @as("LoadBalancerNames")
    loadBalancerNames: loadBalancerNamesMax20,
  }
  @ocaml.doc("<p>Contains the output for DescribeTags.</p>")
  type response = {
    @ocaml.doc("<p>Information about the tags.</p>") @as("TagDescriptions")
    tagDescriptions: option<tagDescriptions>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeTagsCommand"
  let make = (~loadBalancerNames, ()) => new({loadBalancerNames: loadBalancerNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeLoadBalancerPolicyTypes = {
  type t
  @ocaml.doc("<p>Contains the parameters for DescribeLoadBalancerPolicyTypes.</p>")
  type request = {
    @ocaml.doc(
      "<p>The names of the policy types. If no names are specified, describes all policy types defined by Elastic Load Balancing.</p>"
    )
    @as("PolicyTypeNames")
    policyTypeNames: option<policyTypeNames>,
  }
  @ocaml.doc("<p>Contains the output of DescribeLoadBalancerPolicyTypes.</p>")
  type response = {
    @ocaml.doc("<p>Information about the policy types.</p>") @as("PolicyTypeDescriptions")
    policyTypeDescriptions: option<policyTypeDescriptions>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeLoadBalancerPolicyTypesCommand"
  let make = (~policyTypeNames=?, ()) => new({policyTypeNames: policyTypeNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeLoadBalancerPolicies = {
  type t
  @ocaml.doc("<p>Contains the parameters for DescribeLoadBalancerPolicies.</p>")
  type request = {
    @ocaml.doc("<p>The names of the policies.</p>") @as("PolicyNames")
    policyNames: option<policyNames>,
    @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
    loadBalancerName: option<accessPointName>,
  }
  @ocaml.doc("<p>Contains the output of DescribeLoadBalancerPolicies.</p>")
  type response = {
    @ocaml.doc("<p>Information about the policies.</p>") @as("PolicyDescriptions")
    policyDescriptions: option<policyDescriptions>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeLoadBalancerPoliciesCommand"
  let make = (~policyNames=?, ~loadBalancerName=?, ()) => new({policyNames, loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeLoadBalancers = {
  type t
  @ocaml.doc("<p>Contains the parameters for DescribeLoadBalancers.</p>")
  type request = {
    @ocaml.doc(
      "<p>The maximum number of results to return with this call (a number from 1 to 400). The default is 400.</p>"
    )
    @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The marker for the next set of results. (You received this marker from a previous call.)</p>"
    )
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The names of the load balancers.</p>") @as("LoadBalancerNames")
    loadBalancerNames: option<loadBalancerNames>,
  }
  @ocaml.doc("<p>Contains the parameters for DescribeLoadBalancers.</p>")
  type response = {
    @ocaml.doc(
      "<p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>"
    )
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>Information about the load balancers.</p>") @as("LoadBalancerDescriptions")
    loadBalancerDescriptions: option<loadBalancerDescriptions>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeLoadBalancersCommand"
  let make = (~pageSize=?, ~marker=?, ~loadBalancerNames=?, ()) =>
    new({pageSize, marker, loadBalancerNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
