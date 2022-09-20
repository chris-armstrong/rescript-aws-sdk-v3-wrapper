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
external createClient: unit => awsServiceClient = "ElasticLoadBalancingV2Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type zoneName = string
type vpcId = string
type targetTypeEnum = [
  | @as("alb") #Alb
  | @as("lambda") #Lambda
  | @as("ip") #Ip
  | @as("instance") #Instance
]
type targetId = string
type targetHealthStateEnum = [
  | @as("unavailable") #Unavailable
  | @as("draining") #Draining
  | @as("unused") #Unused
  | @as("unhealthy") #Unhealthy
  | @as("healthy") #Healthy
  | @as("initial") #Initial
]
type targetHealthReasonEnum = [
  | @as("Elb.InternalError") #Elb_InternalError
  | @as("Target.HealthCheckDisabled") #Target_HealthCheckDisabled
  | @as("Target.IpUnusable") #Target_IpUnusable
  | @as("Target.InvalidState") #Target_InvalidState
  | @as("Target.DeregistrationInProgress") #Target_DeregistrationInProgress
  | @as("Target.NotInUse") #Target_NotInUse
  | @as("Target.NotRegistered") #Target_NotRegistered
  | @as("Target.FailedHealthChecks") #Target_FailedHealthChecks
  | @as("Target.Timeout") #Target_Timeout
  | @as("Target.ResponseCodeMismatch") #Target_ResponseCodeMismatch
  | @as("Elb.InitialHealthChecking") #Elb_InitialHealthChecking
  | @as("Elb.RegistrationInProgress") #Elb_RegistrationInProgress
]
type targetGroupWeight = int
type targetGroupStickinessEnabled = bool
type targetGroupStickinessDurationSeconds = int
type targetGroupName = string
type targetGroupIpAddressTypeEnum = [@as("ipv6") #Ipv6 | @as("ipv4") #Ipv4]
type targetGroupAttributeValue = string
type targetGroupAttributeKey = string
type targetGroupArn = string
type tagValue = string
type tagKey = string
type subnetId = string
type stringValue = string
type string_ = string
type stateReason = string
type sslProtocol = string
type sslPolicyName = string
type securityGroupId = string
type rulePriority = int
type ruleArn = string
type resourceArn = string
type redirectActionStatusCodeEnum = [@as("HTTP_302") #HTTP_302 | @as("HTTP_301") #HTTP_301]
type redirectActionQuery = string
type redirectActionProtocol = string
type redirectActionPort = string
type redirectActionPath = string
type redirectActionHost = string
type protocolVersion = string
type protocolEnum = [
  | @as("GENEVE") #GENEVE
  | @as("TCP_UDP") #TCP_UDP
  | @as("UDP") #UDP
  | @as("TLS") #TLS
  | @as("TCP") #TCP
  | @as("HTTPS") #HTTPS
  | @as("HTTP") #HTTP
]
type privateIPv4Address = string
type port = int
type path = string
type pageSize = int
type outpostId = string
type name = string
type max = string
type marker = string
type loadBalancerTypeEnum = [
  | @as("gateway") #Gateway
  | @as("network") #Network
  | @as("application") #Application
]
type loadBalancerStateEnum = [
  | @as("failed") #Failed
  | @as("active_impaired") #Active_Impaired
  | @as("provisioning") #Provisioning
  | @as("active") #Active
]
type loadBalancerSchemeEnum = [@as("internal") #Internal | @as("internet-facing") #Internet_Facing]
type loadBalancerName = string
type loadBalancerAttributeValue = string
type loadBalancerAttributeKey = string
type loadBalancerArn = string
type listenerArn = string
type isDefault = bool
type ipAddressType = [@as("dualstack") #Dualstack | @as("ipv4") #Ipv4]
type ipAddress = string
type ipv6Address = string
type httpHeaderConditionName = string
type httpCode = string
type healthCheckTimeoutSeconds = int
type healthCheckThresholdCount = int
type healthCheckPort = string
type healthCheckIntervalSeconds = int
type healthCheckEnabled = bool
type grpcCode = string
type fixedResponseActionStatusCode = string
type fixedResponseActionMessage = string
type fixedResponseActionContentType = string
type errorDescription = string
type description = string
type default = bool
type dnsname = string
type customerOwnedIpv4Pool = string
type createdTime = Js.Date.t
type conditionFieldName = string
type cipherPriority = int
type cipherName = string
type certificateArn = string
type canonicalHostedZoneId = string
type authenticateOidcActionUserInfoEndpoint = string
type authenticateOidcActionUseExistingClientSecret = bool
type authenticateOidcActionTokenEndpoint = string
type authenticateOidcActionSessionTimeout = float
type authenticateOidcActionSessionCookieName = string
type authenticateOidcActionScope = string
type authenticateOidcActionIssuer = string
type authenticateOidcActionConditionalBehaviorEnum = [
  | @as("authenticate") #Authenticate
  | @as("allow") #Allow
  | @as("deny") #Deny
]
type authenticateOidcActionClientSecret = string
type authenticateOidcActionClientId = string
type authenticateOidcActionAuthorizationEndpoint = string
type authenticateOidcActionAuthenticationRequestParamValue = string
type authenticateOidcActionAuthenticationRequestParamName = string
type authenticateCognitoActionUserPoolDomain = string
type authenticateCognitoActionUserPoolClientId = string
type authenticateCognitoActionUserPoolArn = string
type authenticateCognitoActionSessionTimeout = float
type authenticateCognitoActionSessionCookieName = string
type authenticateCognitoActionScope = string
type authenticateCognitoActionConditionalBehaviorEnum = [
  | @as("authenticate") #Authenticate
  | @as("allow") #Allow
  | @as("deny") #Deny
]
type authenticateCognitoActionAuthenticationRequestParamValue = string
type authenticateCognitoActionAuthenticationRequestParamName = string
type alpnPolicyValue = string
type allocationId = string
type actionTypeEnum = [
  | @as("fixed-response") #Fixed_Response
  | @as("redirect") #Redirect
  | @as("authenticate-cognito") #Authenticate_Cognito
  | @as("authenticate-oidc") #Authenticate_Oidc
  | @as("forward") #Forward
]
type actionOrder = int
@ocaml.doc("<p>Information about the current health of a target.</p>")
type targetHealth = {
  @ocaml.doc("<p>A description of the target health that provides additional details. If the state is
        <code>healthy</code>, a description is not provided.</p>")
  @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The reason code.</p>

         <p>If the target state is <code>healthy</code>, a reason code is not provided.</p>

         <p>If the target state is <code>initial</code>, the reason code can be one of the following
      values:</p>
         <ul>
            <li>
               <p>
                  <code>Elb.RegistrationInProgress</code> - The target is in the process of being registered
          with the load balancer.</p>
            </li>
            <li>
               <p>
                  <code>Elb.InitialHealthChecking</code> - The load balancer is still sending the target the
          minimum number of health checks required to determine its health status.</p>
            </li>
         </ul>

         <p>If the target state is <code>unhealthy</code>, the reason code can be one of the following
      values:</p>
         <ul>
            <li>
               <p>
                  <code>Target.ResponseCodeMismatch</code> - The health checks did not return an
          expected HTTP code. Applies only to Application Load Balancers and Gateway Load
          Balancers.</p>
            </li>
            <li>
               <p>
                  <code>Target.Timeout</code> - The health check requests timed out. Applies only to
          Application Load Balancers and Gateway Load Balancers.</p>
            </li>
            <li>
               <p>
                  <code>Target.FailedHealthChecks</code> - The load balancer received an error while
          establishing a connection to the target or the target response was malformed.</p>
            </li>
            <li>
               <p>
                  <code>Elb.InternalError</code> - The health checks failed due to an internal error.
          Applies only to Application Load Balancers.</p>
            </li>
         </ul>

         <p>If the target state is <code>unused</code>, the reason code can be one of the following
      values:</p>
         <ul>
            <li>
               <p>
                  <code>Target.NotRegistered</code> - The target is not registered with the target
          group.</p>
            </li>
            <li>
               <p>
                  <code>Target.NotInUse</code> - The target group is not used by any load balancer or
          the target is in an Availability Zone that is not enabled for its load balancer.</p>
            </li>
            <li>
               <p>
                  <code>Target.InvalidState</code> - The target is in the stopped or terminated
          state.</p>
            </li>
            <li>
               <p>
                  <code>Target.IpUnusable</code> - The target IP address is reserved for use by a load
          balancer.</p>
            </li>
         </ul>

         <p>If the target state is <code>draining</code>, the reason code can be the following
      value:</p>
         <ul>
            <li>
               <p>
                  <code>Target.DeregistrationInProgress</code> - The target is in the process of being
          deregistered and the deregistration delay period has not expired.</p>
            </li>
         </ul>

         <p>If the target state is <code>unavailable</code>, the reason code can be the following
      value:</p>
         <ul>
            <li>
               <p>
                  <code>Target.HealthCheckDisabled</code> - Health checks are disabled for the target
          group. Applies only to Application Load Balancers.</p>
            </li>
            <li>
               <p>
                  <code>Elb.InternalError</code> - Target health is unavailable due to an internal
          error. Applies only to Network Load Balancers.</p>
            </li>
         </ul>")
  @as("Reason")
  reason: option<targetHealthReasonEnum>,
  @ocaml.doc("<p>The state of the target.</p>") @as("State") state: option<targetHealthStateEnum>,
}
@ocaml.doc("<p>Information about how traffic will be distributed between multiple target groups in a
      forward rule.</p>")
type targetGroupTuple = {
  @ocaml.doc("<p>The weight. The range is 0 to 999.</p>") @as("Weight")
  weight: option<targetGroupWeight>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target group.</p>") @as("TargetGroupArn")
  targetGroupArn: option<targetGroupArn>,
}
@ocaml.doc("<p>Information about the target group stickiness for a rule.</p>")
type targetGroupStickinessConfig = {
  @ocaml.doc("<p>The time period, in seconds, during which requests from a client should be routed to the
      same target group. The range is 1-604800 seconds (7 days).</p>")
  @as("DurationSeconds")
  durationSeconds: option<targetGroupStickinessDurationSeconds>,
  @ocaml.doc("<p>Indicates whether target group stickiness is enabled.</p>") @as("Enabled")
  enabled: option<targetGroupStickinessEnabled>,
}
type targetGroupNames = array<targetGroupName>
@ocaml.doc("<p>Information about a target group attribute.</p>")
type targetGroupAttribute = {
  @ocaml.doc("<p>The value of the attribute.</p>") @as("Value")
  value: option<targetGroupAttributeValue>,
  @ocaml.doc("<p>The name of the attribute.</p>

         <p>The following attribute is supported by all load balancers:</p>
         <ul>
            <li>
               <p>
                  <code>deregistration_delay.timeout_seconds</code> - The amount of time, in seconds,
          for Elastic Load Balancing to wait before changing the state of a deregistering target
          from <code>draining</code> to <code>unused</code>. The range is 0-3600 seconds. The
          default value is 300 seconds. If the target is a Lambda function, this attribute is not
          supported.</p>
            </li>
         </ul>

         <p>The following attributes are supported by both Application Load Balancers and Network Load
      Balancers:</p>
         <ul>
            <li>
               <p>
                  <code>stickiness.enabled</code> - Indicates whether sticky sessions are enabled. The
          value is <code>true</code> or <code>false</code>. The default is
          <code>false</code>.</p>
            </li>
            <li>
               <p>
                  <code>stickiness.type</code> - The type of sticky sessions. The possible values are
            <code>lb_cookie</code> and <code>app_cookie</code> for Application Load Balancers or
            <code>source_ip</code> for Network Load Balancers.</p>
            </li>
         </ul>

         <p>The following attributes are supported only if the load balancer is an Application Load
      Balancer and the target is an instance or an IP address:</p>
         <ul>
            <li>
               <p>
                  <code>load_balancing.algorithm.type</code> - The load balancing algorithm determines
          how the load balancer selects targets when routing requests. The value is
            <code>round_robin</code> or <code>least_outstanding_requests</code>. The default is
            <code>round_robin</code>.</p>
            </li>
            <li>
               <p>
                  <code>slow_start.duration_seconds</code> - The time period, in seconds, during which a
          newly registered target receives an increasing share of the traffic to the target group.
          After this time period ends, the target receives its full share of traffic. The range is
          30-900 seconds (15 minutes). The default is 0 seconds (disabled).</p>
            </li>
            <li>
               <p>
                  <code>stickiness.app_cookie.cookie_name</code> - Indicates the name of the
          application-based cookie. Names that start with the following prefixes are not allowed:
            <code>AWSALB</code>, <code>AWSALBAPP</code>, and <code>AWSALBTG</code>; they're reserved
          for use by the load balancer.</p>
            </li>
            <li>
               <p>
                  <code>stickiness.app_cookie.duration_seconds</code> - The time period, in seconds,
          during which requests from a client should be routed to the same target. After this time
          period expires, the application-based cookie is considered stale. The range is 1 second to
          1 week (604800 seconds). The default value is 1 day (86400 seconds).</p>
            </li>
            <li>
               <p>
                  <code>stickiness.lb_cookie.duration_seconds</code> - The time period, in seconds,
          during which requests from a client should be routed to the same target. After this time
          period expires, the load balancer-generated cookie is considered stale. The range is 1
          second to 1 week (604800 seconds). The default value is 1 day (86400 seconds).</p>
            </li>
         </ul>

         <p>The following attribute is supported only if the load balancer is an Application Load
      Balancer and the target is a Lambda function:</p>
         <ul>
            <li>
               <p>
                  <code>lambda.multi_value_headers.enabled</code> - Indicates whether the request and
          response headers that are exchanged between the load balancer and the Lambda function
          include arrays of values or strings. The value is <code>true</code> or <code>false</code>.
          The default is <code>false</code>. If the value is <code>false</code> and the request
          contains a duplicate header field name or query parameter key, the load balancer uses the
          last value sent by the client.</p>
            </li>
         </ul>

         <p>The following attributes are supported only by Network Load Balancers:</p>
         <ul>
            <li>
               <p>
                  <code>deregistration_delay.connection_termination.enabled</code> - Indicates whether
          the load balancer terminates connections at the end of the deregistration timeout. The
          value is <code>true</code> or <code>false</code>. The default is
          <code>false</code>.</p>
            </li>
            <li>
               <p>
                  <code>preserve_client_ip.enabled</code> - Indicates whether client IP preservation is
          enabled. The value is <code>true</code> or <code>false</code>. The default is disabled if
          the target group type is IP address and the target group protocol is TCP or TLS.
          Otherwise, the default is enabled. Client IP preservation cannot be disabled for UDP and
          TCP_UDP target groups.</p>
            </li>
            <li>
               <p>
                  <code>proxy_protocol_v2.enabled</code> - Indicates whether Proxy Protocol version 2 is
          enabled. The value is <code>true</code> or <code>false</code>. The default is
            <code>false</code>.</p>
            </li>
         </ul>")
  @as("Key")
  key: option<targetGroupAttributeKey>,
}
type targetGroupArns = array<targetGroupArn>
@ocaml.doc("<p>Information about a target.</p>")
type targetDescription = {
  @ocaml.doc("<p>An Availability Zone or <code>all</code>. This determines whether the target receives
      traffic from the load balancer nodes in the specified Availability Zone or from all enabled
      Availability Zones for the load balancer.</p>
         <p>This parameter is not supported if the target type of the target group is
        <code>instance</code> or <code>alb</code>.</p>
         <p>If the target type is <code>ip</code> and the IP address is in a subnet of the VPC for the
      target group, the Availability Zone is automatically detected and this parameter is optional.
      If the IP address is outside the VPC, this parameter is required.</p>
         <p>With an Application Load Balancer, if the target type is <code>ip</code> and the IP
      address is outside the VPC for the target group, the only supported value is
      <code>all</code>.</p>
         <p>If the target type is <code>lambda</code>, this parameter is optional and the only
      supported value is <code>all</code>.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<zoneName>,
  @ocaml.doc("<p>The port on which the target is listening. If the target group protocol is GENEVE, the
      supported port is 6081. If the target type is <code>alb</code>, the targeted Application Load
      Balancer must have at least one listener whose port matches the target group port. Not used if
      the target is a Lambda function.</p>")
  @as("Port")
  port: option<port>,
  @ocaml.doc("<p>The ID of the target. If the target type of the target group is <code>instance</code>,
      specify an instance ID. If the target type is <code>ip</code>, specify an IP address. If the
      target type is <code>lambda</code>, specify the ARN of the Lambda function. If the target type
      is <code>alb</code>, specify the ARN of the Application Load Balancer target. </p>")
  @as("Id")
  id: targetId,
}
type tagKeys = array<tagKey>
@ocaml.doc("<p>Information about a tag.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: tagKey,
}
type subnets = array<subnetId>
@ocaml.doc("<p>Information about a subnet mapping.</p>")
type subnetMapping = {
  @ocaml.doc("<p>[Network Load Balancers] The IPv6 address.</p>") @as("IPv6Address")
  ipv6Address: option<ipv6Address>,
  @ocaml.doc(
    "<p>[Network Load Balancers] The private IPv4 address for an internal load balancer.</p>"
  )
  @as("PrivateIPv4Address")
  privateIPv4Address: option<privateIPv4Address>,
  @ocaml.doc("<p>[Network Load Balancers] The allocation ID of the Elastic IP address for an
      internet-facing load balancer.</p>")
  @as("AllocationId")
  allocationId: option<allocationId>,
  @ocaml.doc("<p>The ID of the subnet.</p>") @as("SubnetId") subnetId: option<subnetId>,
}
type sslProtocols = array<sslProtocol>
type sslPolicyNames = array<sslPolicyName>
type securityGroups = array<securityGroupId>
@ocaml.doc("<p>Information about the priorities for the rules for a listener.</p>")
type rulePriorityPair = {
  @ocaml.doc("<p>The rule priority.</p>") @as("Priority") priority: option<rulePriority>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule.</p>") @as("RuleArn")
  ruleArn: option<ruleArn>,
}
type ruleArns = array<ruleArn>
type resourceArns = array<resourceArn>
@ocaml.doc("<p>Information about a redirect action.</p>
         <p>A URI consists of the following components: protocol://hostname:port/path?query. You must
      modify at least one of the following components to avoid a redirect loop: protocol, hostname,
      port, or path. Any components that you do not modify retain their original values.</p>
         <p>You can reuse URI components using the following reserved keywords:</p>
         <ul>
            <li>
               <p>#{protocol}</p>
            </li>
            <li>
               <p>#{host}</p>
            </li>
            <li>
               <p>#{port}</p>
            </li>
            <li>
               <p>#{path} (the leading \"/\" is removed)</p>
            </li>
            <li>
               <p>#{query}</p>
            </li>
         </ul>
         <p>For example, you can change the path to \"/new/#{path}\", the hostname to \"example.#{host}\",
      or the query to \"#{query}&value=xyz\".</p>")
type redirectActionConfig = {
  @ocaml.doc("<p>The HTTP redirect code. The redirect is either permanent (HTTP 301) or temporary (HTTP
      302).</p>")
  @as("StatusCode")
  statusCode: redirectActionStatusCodeEnum,
  @ocaml.doc("<p>The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include
      the leading \"?\", as it is automatically added. You can specify any of the reserved
      keywords.</p>")
  @as("Query")
  query: option<redirectActionQuery>,
  @ocaml.doc("<p>The absolute path, starting with the leading \"/\". This component is not percent-encoded.
      The path can contain #{host}, #{path}, and #{port}.</p>")
  @as("Path")
  path: option<redirectActionPath>,
  @ocaml.doc("<p>The hostname. This component is not percent-encoded. The hostname can contain
      #{host}.</p>")
  @as("Host")
  host: option<redirectActionHost>,
  @ocaml.doc("<p>The port. You can specify a value from 1 to 65535 or #{port}.</p>") @as("Port")
  port: option<redirectActionPort>,
  @ocaml.doc("<p>The protocol. You can specify HTTP, HTTPS, or #{protocol}. You can redirect HTTP to HTTP,
      HTTP to HTTPS, and HTTPS to HTTPS. You cannot redirect HTTPS to HTTP.</p>")
  @as("Protocol")
  protocol: option<redirectActionProtocol>,
}
@ocaml.doc("<p>Information about a key/value pair.</p>")
type queryStringKeyValuePair = {
  @ocaml.doc("<p>The value.</p>") @as("Value") value: option<stringValue>,
  @ocaml.doc("<p>The key. You can omit the key.</p>") @as("Key") key: option<stringValue>,
}
@ocaml.doc("<p>The codes to use when checking for a successful response from a target. If the protocol
      version is gRPC, these are gRPC codes. Otherwise, these are HTTP codes. </p>")
type matcher = {
  @ocaml.doc("<p>You can specify values between 0 and 99. You can specify multiple values (for example,
      \"0,1\") or a range of values (for example, \"0-5\"). The default value is 12.</p>")
  @as("GrpcCode")
  grpcCode: option<grpcCode>,
  @ocaml.doc("<p>For Application Load Balancers, you can specify values between 200 and 499, and the
      default value is 200. You can specify multiple values (for example, \"200,202\") or a range of
      values (for example, \"200-299\").</p>
         <p>For Network Load Balancers and Gateway Load Balancers, this must be \"200–399\".</p>
         <p>Note that when using shorthand syntax, some values such as commas need to be
      escaped.</p>")
  @as("HttpCode")
  httpCode: option<httpCode>,
}
@ocaml.doc("<p>Information about the state of the load balancer.</p>")
type loadBalancerState = {
  @ocaml.doc("<p>A description of the state.</p>") @as("Reason") reason: option<stateReason>,
  @ocaml.doc("<p>The state code. The initial state of the load balancer is <code>provisioning</code>. After
      the load balancer is fully set up and ready to route traffic, its state is
      <code>active</code>. If load balancer is routing traffic but does not have the resources it
      needs to scale, its state is<code>active_impaired</code>. If the load balancer could not be
      set up, its state is <code>failed</code>.</p>")
  @as("Code")
  code: option<loadBalancerStateEnum>,
}
type loadBalancerNames = array<loadBalancerName>
@ocaml.doc("<p>Information about a load balancer attribute.</p>")
type loadBalancerAttribute = {
  @ocaml.doc("<p>The value of the attribute.</p>") @as("Value")
  value: option<loadBalancerAttributeValue>,
  @ocaml.doc("<p>The name of the attribute.</p>

         <p>The following attribute is supported by all load balancers:</p>
         <ul>
            <li>
               <p>
                  <code>deletion_protection.enabled</code> - Indicates whether deletion protection is
          enabled. The value is <code>true</code> or <code>false</code>. The default is
            <code>false</code>.</p>
            </li>
         </ul>

         <p>The following attributes are supported by both Application Load Balancers and Network Load
      Balancers:</p>
         <ul>
            <li>
               <p>
                  <code>access_logs.s3.enabled</code> - Indicates whether access logs are enabled. The
          value is <code>true</code> or <code>false</code>. The default is
          <code>false</code>.</p>
            </li>
            <li>
               <p>
                  <code>access_logs.s3.bucket</code> - The name of the S3 bucket for the access logs.
          This attribute is required if access logs are enabled. The bucket must exist in the same
          region as the load balancer and have a bucket policy that grants Elastic Load Balancing
          permissions to write to the bucket.</p>
            </li>
            <li>
               <p>
                  <code>access_logs.s3.prefix</code> - The prefix for the location in the S3 bucket for the
          access logs.</p>
            </li>
            <li>
               <p>
                  <code>ipv6.deny-all-igw-traffic</code> - Blocks internet gateway (IGW) access to the
          load balancer. It is set to <code>false</code> for internet-facing load balancers and
          <code>true</code> for internal load balancers, preventing unintended access to your
          internal load balancer through an internet gateway.</p>
            </li>
         </ul>

         <p>The following attributes are supported by only Application Load Balancers:</p>
         <ul>
            <li>
               <p>
                  <code>idle_timeout.timeout_seconds</code> - The idle timeout value, in seconds. The
          valid range is 1-4000 seconds. The default is 60 seconds.</p>
            </li>
            <li>
               <p>
                  <code>routing.http.desync_mitigation_mode</code> - Determines how the load balancer
          handles requests that might pose a security risk to your application. The possible values
          are <code>monitor</code>, <code>defensive</code>, and <code>strictest</code>. The default
          is <code>defensive</code>.</p>
            </li>
            <li>
               <p>
                  <code>routing.http.drop_invalid_header_fields.enabled</code> - Indicates whether HTTP
          headers with invalid header fields are removed by the load balancer (<code>true</code>) or
          routed to targets (<code>false</code>). The default is <code>false</code>.</p>
            </li>
            <li>
               <p>
                  <code>routing.http.x_amzn_tls_version_and_cipher_suite.enabled</code> - Indicates
          whether the two headers (<code>x-amzn-tls-version</code> and
            <code>x-amzn-tls-cipher-suite</code>), which contain information about the negotiated
          TLS version and cipher suite, are added to the client request before sending it to the
          target. The <code>x-amzn-tls-version</code> header has information about the TLS protocol
          version negotiated with the client, and the <code>x-amzn-tls-cipher-suite</code> header
          has information about the cipher suite negotiated with the client. Both headers are in
          OpenSSL format. The possible values for the attribute are <code>true</code> and
            <code>false</code>. The default is <code>false</code>.</p>
            </li>
            <li>
               <p>
                  <code>routing.http.xff_client_port.enabled</code> - Indicates whether the
            <code>X-Forwarded-For</code> header should preserve the source port that the client used
          to connect to the load balancer. The possible values are <code>true</code> and
            <code>false</code>. The default is <code>false</code>.</p>
            </li>
            <li>
               <p>
                  <code>routing.http2.enabled</code> - Indicates whether HTTP/2 is enabled. The possible
          values are <code>true</code> and <code>false</code>. The default is <code>true</code>.
          Elastic Load Balancing requires that message header names contain only alphanumeric
          characters and hyphens.</p>
            </li>
            <li>
               <p>
                  <code>waf.fail_open.enabled</code> - Indicates whether to allow a WAF-enabled load
          balancer to route requests to targets if it is unable to forward the request to Amazon Web Services WAF. The possible values are <code>true</code> and <code>false</code>. The
          default is <code>false</code>.</p>
            </li>
         </ul>

         <p>The following attribute is supported by Network Load Balancers and Gateway Load
      Balancers:</p>
         <ul>
            <li>
               <p>
                  <code>load_balancing.cross_zone.enabled</code> - Indicates whether cross-zone load
          balancing is enabled. The possible values are <code>true</code> and <code>false</code>.
          The default is <code>false</code>.</p>
            </li>
         </ul>")
  @as("Key")
  key: option<loadBalancerAttributeKey>,
}
type loadBalancerArns = array<loadBalancerArn>
@ocaml.doc("<p>Information about a static IP address for a load balancer.</p>")
type loadBalancerAddress = {
  @ocaml.doc("<p>[Network Load Balancers] The IPv6 address.</p>") @as("IPv6Address")
  ipv6Address: option<ipv6Address>,
  @ocaml.doc(
    "<p>[Network Load Balancers] The private IPv4 address for an internal load balancer.</p>"
  )
  @as("PrivateIPv4Address")
  privateIPv4Address: option<privateIPv4Address>,
  @ocaml.doc("<p>[Network Load Balancers] The allocation ID of the Elastic IP address for an
      internal-facing load balancer.</p>")
  @as("AllocationId")
  allocationId: option<allocationId>,
  @ocaml.doc("<p>The static IP address.</p>") @as("IpAddress") ipAddress: option<ipAddress>,
}
type listenerArns = array<listenerArn>
type listOfString = array<stringValue>
@ocaml.doc("<p>Information about an Elastic Load Balancing resource limit for your Amazon Web Services
      account.</p>")
type limit = {
  @ocaml.doc("<p>The maximum value of the limit.</p>") @as("Max") max: option<max>,
  @ocaml.doc("<p>The name of the limit. The possible values are:</p>
         <ul>
            <li>
               <p>application-load-balancers</p>
            </li>
            <li>
               <p>condition-values-per-alb-rule</p>
            </li>
            <li>
               <p>condition-wildcards-per-alb-rule</p>
            </li>
            <li>
               <p>gateway-load-balancers</p>
            </li>
            <li>
               <p>gateway-load-balancers-per-vpc</p>
            </li>
            <li>
               <p>geneve-target-groups</p>
            </li>
            <li>
               <p>listeners-per-application-load-balancer</p>
            </li>
            <li>
               <p>listeners-per-network-load-balancer</p>
            </li>
            <li>
               <p>network-load-balancers</p>
            </li>
            <li>
               <p>rules-per-application-load-balancer</p>
            </li>
            <li>
               <p>target-groups</p>
            </li>
            <li>
               <p>target-groups-per-action-on-application-load-balancer</p>
            </li>
            <li>
               <p>target-groups-per-action-on-network-load-balancer</p>
            </li>
            <li>
               <p>target-groups-per-application-load-balancer</p>
            </li>
            <li>
               <p>targets-per-application-load-balancer</p>
            </li>
            <li>
               <p>targets-per-availability-zone-per-gateway-load-balancer</p>
            </li>
            <li>
               <p>targets-per-availability-zone-per-network-load-balancer</p>
            </li>
            <li>
               <p>targets-per-network-load-balancer</p>
            </li>
         </ul>")
  @as("Name")
  name: option<name>,
}
@ocaml.doc("<p>Information about an action that returns a custom HTTP response.</p>")
type fixedResponseActionConfig = {
  @ocaml.doc("<p>The content type.</p>
         <p>Valid Values: text/plain | text/css | text/html | application/javascript |
      application/json</p>")
  @as("ContentType")
  contentType: option<fixedResponseActionContentType>,
  @ocaml.doc("<p>The HTTP response code (2XX, 4XX, or 5XX).</p>") @as("StatusCode")
  statusCode: fixedResponseActionStatusCode,
  @ocaml.doc("<p>The message.</p>") @as("MessageBody")
  messageBody: option<fixedResponseActionMessage>,
}
@ocaml.doc("<p>Information about a cipher used in a policy.</p>")
type cipher = {
  @ocaml.doc("<p>The priority of the cipher.</p>") @as("Priority") priority: option<cipherPriority>,
  @ocaml.doc("<p>The name of the cipher.</p>") @as("Name") name: option<cipherName>,
}
@ocaml.doc("<p>Information about an SSL server certificate.</p>")
type certificate = {
  @ocaml.doc("<p>Indicates whether the certificate is the default certificate. Do not set this value when
      specifying a certificate as an input. This value is not included in the output when describing
      a listener, but is included when describing listener certificates.</p>")
  @as("IsDefault")
  isDefault: option<default>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the certificate.</p>") @as("CertificateArn")
  certificateArn: option<certificateArn>,
}
type authenticateOidcActionAuthenticationRequestExtraParams = Js.Dict.t<
  authenticateOidcActionAuthenticationRequestParamValue,
>
type authenticateCognitoActionAuthenticationRequestExtraParams = Js.Dict.t<
  authenticateCognitoActionAuthenticationRequestParamValue,
>
type alpnPolicyName = array<alpnPolicyValue>
@ocaml.doc("<p>Information about the health of a target.</p>")
type targetHealthDescription = {
  @ocaml.doc("<p>The health information for the target.</p>") @as("TargetHealth")
  targetHealth: option<targetHealth>,
  @ocaml.doc("<p>The port to use to connect with the target.</p>") @as("HealthCheckPort")
  healthCheckPort: option<healthCheckPort>,
  @ocaml.doc("<p>The description of the target.</p>") @as("Target")
  target: option<targetDescription>,
}
type targetGroupList = array<targetGroupTuple>
type targetGroupAttributes = array<targetGroupAttribute>
@ocaml.doc("<p>Information about a target group.</p>")
type targetGroup = {
  @ocaml.doc("<p>The type of IP address used for this target group. The possible values are
        <code>ipv4</code> and <code>ipv6</code>. This is an optional parameter. If not specified,
      the IP address type defaults to <code>ipv4</code>.</p>")
  @as("IpAddressType")
  ipAddressType: option<targetGroupIpAddressTypeEnum>,
  @ocaml.doc("<p>[HTTP/HTTPS protocol] The protocol version. The possible values are <code>GRPC</code>,
        <code>HTTP1</code>, and <code>HTTP2</code>.</p>")
  @as("ProtocolVersion")
  protocolVersion: option<protocolVersion>,
  @ocaml.doc("<p>The type of target that you must specify when registering targets with this target group.
      The possible values are <code>instance</code> (register targets by instance ID),
        <code>ip</code> (register targets by IP address), <code>lambda</code> (register a single
      Lambda function as a target), or <code>alb</code> (register a single Application Load Balancer
      as a target).</p>")
  @as("TargetType")
  targetType: option<targetTypeEnum>,
  @ocaml.doc("<p>The Amazon Resource Names (ARN) of the load balancers that route traffic to this target
      group.</p>")
  @as("LoadBalancerArns")
  loadBalancerArns: option<loadBalancerArns>,
  @ocaml.doc("<p>The HTTP or gRPC codes to use when checking for a successful response from a
      target.</p>")
  @as("Matcher")
  matcher: option<matcher>,
  @ocaml.doc("<p>The destination for health checks on the targets.</p>") @as("HealthCheckPath")
  healthCheckPath: option<path>,
  @ocaml.doc("<p>The number of consecutive health check failures required before considering the target
      unhealthy.</p>")
  @as("UnhealthyThresholdCount")
  unhealthyThresholdCount: option<healthCheckThresholdCount>,
  @ocaml.doc("<p>The number of consecutive health checks successes required before considering an unhealthy
      target healthy.</p>")
  @as("HealthyThresholdCount")
  healthyThresholdCount: option<healthCheckThresholdCount>,
  @ocaml.doc("<p>The amount of time, in seconds, during which no response means a failed health
      check.</p>")
  @as("HealthCheckTimeoutSeconds")
  healthCheckTimeoutSeconds: option<healthCheckTimeoutSeconds>,
  @ocaml.doc("<p>The approximate amount of time, in seconds, between health checks of an individual
      target.</p>")
  @as("HealthCheckIntervalSeconds")
  healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
  @ocaml.doc("<p>Indicates whether health checks are enabled.</p>") @as("HealthCheckEnabled")
  healthCheckEnabled: option<healthCheckEnabled>,
  @ocaml.doc("<p>The port to use to connect with the target.</p>") @as("HealthCheckPort")
  healthCheckPort: option<healthCheckPort>,
  @ocaml.doc("<p>The protocol to use to connect with the target. The GENEVE, TLS, UDP, and TCP_UDP
      protocols are not supported for health checks.</p>")
  @as("HealthCheckProtocol")
  healthCheckProtocol: option<protocolEnum>,
  @ocaml.doc("<p>The ID of the VPC for the targets.</p>") @as("VpcId") vpcId: option<vpcId>,
  @ocaml.doc("<p>The port on which the targets are listening. Not used if the target is a Lambda
      function.</p>")
  @as("Port")
  port: option<port>,
  @ocaml.doc("<p>The protocol to use for routing traffic to the targets.</p>") @as("Protocol")
  protocol: option<protocolEnum>,
  @ocaml.doc("<p>The name of the target group.</p>") @as("TargetGroupName")
  targetGroupName: option<targetGroupName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target group.</p>") @as("TargetGroupArn")
  targetGroupArn: option<targetGroupArn>,
}
type targetDescriptions = array<targetDescription>
type tagList_ = array<tag>
type subnetMappings = array<subnetMapping>
@ocaml.doc("<p>Information about a source IP condition.</p>
         <p>You can use this condition to route based on the IP address of the source that connects to
      the load balancer. If a client is behind a proxy, this is the IP address of the proxy not the
      IP address of the client.</p>")
type sourceIpConditionConfig = {
  @ocaml.doc("<p>One or more source IP addresses, in CIDR format. You can use both IPv4 and IPv6 addresses.
      Wildcards are not supported.</p>
         <p>If you specify multiple addresses, the condition is satisfied if the source IP address of
      the request matches one of the CIDR blocks. This condition is not satisfied by the addresses
      in the X-Forwarded-For header. To search for addresses in the X-Forwarded-For header, use
        <a>HttpHeaderConditionConfig</a>.</p>")
  @as("Values")
  values: option<listOfString>,
}
type rulePriorityList = array<rulePriorityPair>
type queryStringKeyValuePairList = array<queryStringKeyValuePair>
@ocaml.doc("<p>Information about a path pattern condition.</p>")
type pathPatternConditionConfig = {
  @ocaml.doc("<p>One or more path patterns to compare against the request URL. The maximum size of each
      string is 128 characters. The comparison is case sensitive. The following wildcard characters
      are supported: * (matches 0 or more characters) and ? (matches exactly 1 character).</p>
         <p>If you specify multiple strings, the condition is satisfied if one of them matches the
      request URL. The path pattern is compared only to the path of the URL, not to its query
      string. To compare against the query string, use <a>QueryStringConditionConfig</a>.</p>")
  @as("Values")
  values: option<listOfString>,
}
type loadBalancerAttributes = array<loadBalancerAttribute>
type loadBalancerAddresses = array<loadBalancerAddress>
type limits = array<limit>
@ocaml.doc("<p>Information about an HTTP method condition.</p>
         <p>HTTP defines a set of request methods, also referred to as HTTP verbs. For more
      information, see the <a href=\"https://www.iana.org/assignments/http-methods/http-methods.xhtml\">HTTP Method
        Registry</a>. You can also define custom HTTP methods.</p>")
type httpRequestMethodConditionConfig = {
  @ocaml.doc("<p>The name of the request method. The maximum size is 40 characters. The allowed characters
      are A-Z, hyphen (-), and underscore (_). The comparison is case sensitive. Wildcards are not
      supported; therefore, the method name must be an exact match.</p>
         <p>If you specify multiple strings, the condition is satisfied if one of the strings matches
      the HTTP request method. We recommend that you route GET and HEAD requests in the same way,
      because the response to a HEAD request may be cached.</p>")
  @as("Values")
  values: option<listOfString>,
}
@ocaml.doc("<p>Information about an HTTP header condition.</p>
         <p>There is a set of standard HTTP header fields. You can also define custom HTTP header
      fields.</p>")
type httpHeaderConditionConfig = {
  @ocaml.doc("<p>One or more strings to compare against the value of the HTTP header. The maximum size of
      each string is 128 characters. The comparison strings are case insensitive. The following
      wildcard characters are supported: * (matches 0 or more characters) and ? (matches exactly 1
      character).</p>
         <p>If the same header appears multiple times in the request, we search them in order until a
      match is found.</p>
         <p>If you specify multiple strings, the condition is satisfied if one of the strings matches
      the value of the HTTP header. To require that all of the strings are a match, create one
      condition per string.</p>")
  @as("Values")
  values: option<listOfString>,
  @ocaml.doc("<p>The name of the HTTP header field. The maximum size is 40 characters. The header name is
      case insensitive. The allowed characters are specified by RFC 7230. Wildcards are not
      supported.</p>
         <p>You can't use an HTTP header condition to specify the host header. Use <a>HostHeaderConditionConfig</a> to specify a host header condition.</p>")
  @as("HttpHeaderName")
  httpHeaderName: option<httpHeaderConditionName>,
}
@ocaml.doc("<p>Information about a host header condition.</p>")
type hostHeaderConditionConfig = {
  @ocaml.doc("<p>One or more host names. The maximum size of each name is 128 characters. The comparison is
      case insensitive. The following wildcard characters are supported: * (matches 0 or more
      characters) and ? (matches exactly 1 character).</p>
         <p>If you specify multiple strings, the condition is satisfied if one of the strings matches
      the host name.</p>")
  @as("Values")
  values: option<listOfString>,
}
type ciphers = array<cipher>
type certificateList = array<certificate>
@ocaml.doc("<p>Request parameters when using an identity provider (IdP) that is compliant with OpenID
      Connect (OIDC) to authenticate users.</p>")
type authenticateOidcActionConfig = {
  @ocaml.doc("<p>Indicates whether to use the existing client secret when modifying a rule. If you are
      creating a rule, you can omit this parameter or set it to false.</p>")
  @as("UseExistingClientSecret")
  useExistingClientSecret: option<authenticateOidcActionUseExistingClientSecret>,
  @ocaml.doc("<p>The behavior if the user is not authenticated. The following are possible values:</p>
         <ul>
            <li>
               <p>deny<code></code> - Return an HTTP 401 Unauthorized error.</p>
            </li>
            <li>
               <p>allow<code></code> - Allow the request to be forwarded to the target.</p>
            </li>
            <li>
               <p>authenticate<code></code> - Redirect the request to the IdP authorization endpoint. This is
          the default value.</p>
            </li>
         </ul>")
  @as("OnUnauthenticatedRequest")
  onUnauthenticatedRequest: option<authenticateOidcActionConditionalBehaviorEnum>,
  @ocaml.doc("<p>The query parameters (up to 10) to include in the redirect request to the authorization
      endpoint.</p>")
  @as("AuthenticationRequestExtraParams")
  authenticationRequestExtraParams: option<authenticateOidcActionAuthenticationRequestExtraParams>,
  @ocaml.doc("<p>The maximum duration of the authentication session, in seconds. The default is 604800
      seconds (7 days).</p>")
  @as("SessionTimeout")
  sessionTimeout: option<authenticateOidcActionSessionTimeout>,
  @ocaml.doc("<p>The set of user claims to be requested from the IdP. The default is
      <code>openid</code>.</p>
         <p>To verify which scope values your IdP supports and how to separate multiple values, see
      the documentation for your IdP.</p>")
  @as("Scope")
  scope: option<authenticateOidcActionScope>,
  @ocaml.doc("<p>The name of the cookie used to maintain session information. The default is
      AWSELBAuthSessionCookie.</p>")
  @as("SessionCookieName")
  sessionCookieName: option<authenticateOidcActionSessionCookieName>,
  @ocaml.doc("<p>The OAuth 2.0 client secret. This parameter is required if you are creating a rule. If you
      are modifying a rule, you can omit this parameter if you set
        <code>UseExistingClientSecret</code> to true.</p>")
  @as("ClientSecret")
  clientSecret: option<authenticateOidcActionClientSecret>,
  @ocaml.doc("<p>The OAuth 2.0 client identifier.</p>") @as("ClientId")
  clientId: authenticateOidcActionClientId,
  @ocaml.doc("<p>The user info endpoint of the IdP. This must be a full URL, including the HTTPS protocol,
      the domain, and the path.</p>")
  @as("UserInfoEndpoint")
  userInfoEndpoint: authenticateOidcActionUserInfoEndpoint,
  @ocaml.doc("<p>The token endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the
      domain, and the path.</p>")
  @as("TokenEndpoint")
  tokenEndpoint: authenticateOidcActionTokenEndpoint,
  @ocaml.doc("<p>The authorization endpoint of the IdP. This must be a full URL, including the HTTPS
      protocol, the domain, and the path.</p>")
  @as("AuthorizationEndpoint")
  authorizationEndpoint: authenticateOidcActionAuthorizationEndpoint,
  @ocaml.doc("<p>The OIDC issuer identifier of the IdP. This must be a full URL, including the HTTPS
      protocol, the domain, and the path.</p>")
  @as("Issuer")
  issuer: authenticateOidcActionIssuer,
}
@ocaml.doc("<p>Request parameters to use when integrating with Amazon Cognito to authenticate
      users.</p>")
type authenticateCognitoActionConfig = {
  @ocaml.doc("<p>The behavior if the user is not authenticated. The following are possible values:</p>
         <ul>
            <li>
               <p>deny<code></code> - Return an HTTP 401 Unauthorized error.</p>
            </li>
            <li>
               <p>allow<code></code> - Allow the request to be forwarded to the target.</p>
            </li>
            <li>
               <p>authenticate<code></code> - Redirect the request to the IdP authorization endpoint. This is
          the default value.</p>
            </li>
         </ul>")
  @as("OnUnauthenticatedRequest")
  onUnauthenticatedRequest: option<authenticateCognitoActionConditionalBehaviorEnum>,
  @ocaml.doc("<p>The query parameters (up to 10) to include in the redirect request to the authorization
      endpoint.</p>")
  @as("AuthenticationRequestExtraParams")
  authenticationRequestExtraParams: option<
    authenticateCognitoActionAuthenticationRequestExtraParams,
  >,
  @ocaml.doc("<p>The maximum duration of the authentication session, in seconds. The default is 604800
      seconds (7 days).</p>")
  @as("SessionTimeout")
  sessionTimeout: option<authenticateCognitoActionSessionTimeout>,
  @ocaml.doc("<p>The set of user claims to be requested from the IdP. The default is
      <code>openid</code>.</p>
         <p>To verify which scope values your IdP supports and how to separate multiple values, see
      the documentation for your IdP.</p>")
  @as("Scope")
  scope: option<authenticateCognitoActionScope>,
  @ocaml.doc("<p>The name of the cookie used to maintain session information. The default is
      AWSELBAuthSessionCookie.</p>")
  @as("SessionCookieName")
  sessionCookieName: option<authenticateCognitoActionSessionCookieName>,
  @ocaml.doc(
    "<p>The domain prefix or fully-qualified domain name of the Amazon Cognito user pool.</p>"
  )
  @as("UserPoolDomain")
  userPoolDomain: authenticateCognitoActionUserPoolDomain,
  @ocaml.doc("<p>The ID of the Amazon Cognito user pool client.</p>") @as("UserPoolClientId")
  userPoolClientId: authenticateCognitoActionUserPoolClientId,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Cognito user pool.</p>")
  @as("UserPoolArn")
  userPoolArn: authenticateCognitoActionUserPoolArn,
}
type targetHealthDescriptions = array<targetHealthDescription>
type targetGroups = array<targetGroup>
@ocaml.doc("<p>The tags associated with a resource.</p>")
type tagDescription = {
  @ocaml.doc("<p>Information about the tags.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
  resourceArn: option<resourceArn>,
}
@ocaml.doc("<p>Information about a policy used for SSL negotiation.</p>")
type sslPolicy = {
  @ocaml.doc("<p> The supported load balancers. </p>") @as("SupportedLoadBalancerTypes")
  supportedLoadBalancerTypes: option<listOfString>,
  @ocaml.doc("<p>The name of the policy.</p>") @as("Name") name: option<sslPolicyName>,
  @ocaml.doc("<p>The ciphers.</p>") @as("Ciphers") ciphers: option<ciphers>,
  @ocaml.doc("<p>The protocols.</p>") @as("SslProtocols") sslProtocols: option<sslProtocols>,
}
@ocaml.doc("<p>Information about a query string condition.</p>
         <p>The query string component of a URI starts after the first '?' character and is terminated
      by either a '#' character or the end of the URI. A typical query string contains key/value
      pairs separated by '&' characters. The allowed characters are specified by RFC 3986. Any
      character can be percentage encoded.</p>")
type queryStringConditionConfig = {
  @ocaml.doc("<p>One or more key/value pairs or values to find in the query string. The maximum size of
      each string is 128 characters. The comparison is case insensitive. The following wildcard
      characters are supported: * (matches 0 or more characters) and ? (matches exactly 1
      character). To search for a literal '*' or '?' character in a query string, you must escape
      these characters in <code>Values</code> using a '\\' character.</p>
         <p>If you specify multiple key/value pairs or values, the condition is satisfied if one of
      them is found in the query string.</p>")
  @as("Values")
  values: option<queryStringKeyValuePairList>,
}
@ocaml.doc("<p>Information about a forward action.</p>")
type forwardActionConfig = {
  @ocaml.doc("<p>The target group stickiness for the rule.</p>") @as("TargetGroupStickinessConfig")
  targetGroupStickinessConfig: option<targetGroupStickinessConfig>,
  @ocaml.doc("<p>One or more target groups. For Network Load Balancers, you can specify a single target
      group.</p>")
  @as("TargetGroups")
  targetGroups: option<targetGroupList>,
}
@ocaml.doc("<p>Information about an Availability Zone.</p>")
type availabilityZone = {
  @ocaml.doc("<p>[Network Load Balancers] If you need static IP addresses for your load balancer, you can
      specify one Elastic IP address per Availability Zone when you create an internal-facing load
      balancer. For internal load balancers, you can specify a private IP address from the IPv4
      range of the subnet.</p>")
  @as("LoadBalancerAddresses")
  loadBalancerAddresses: option<loadBalancerAddresses>,
  @ocaml.doc("<p>[Application Load Balancers on Outposts] The ID of the Outpost.</p>")
  @as("OutpostId")
  outpostId: option<outpostId>,
  @ocaml.doc("<p>The ID of the subnet. You can specify one subnet per Availability Zone.</p>")
  @as("SubnetId")
  subnetId: option<subnetId>,
  @ocaml.doc("<p>The name of the Availability Zone.</p>") @as("ZoneName")
  zoneName: option<zoneName>,
}
type tagDescriptions = array<tagDescription>
type sslPolicies = array<sslPolicy>
@ocaml.doc("<p>Information about a condition for a rule.</p>
         <p>Each rule can optionally include up to one of each of the following conditions:
        <code>http-request-method</code>, <code>host-header</code>, <code>path-pattern</code>, and
        <code>source-ip</code>. Each rule can also optionally include one or more of each of the
      following conditions: <code>http-header</code> and <code>query-string</code>.</p>")
type ruleCondition = {
  @ocaml.doc("<p>Information for a source IP condition. Specify only when <code>Field</code> is
        <code>source-ip</code>.</p>")
  @as("SourceIpConfig")
  sourceIpConfig: option<sourceIpConditionConfig>,
  @ocaml.doc("<p>Information for an HTTP method condition. Specify only when <code>Field</code> is
        <code>http-request-method</code>.</p>")
  @as("HttpRequestMethodConfig")
  httpRequestMethodConfig: option<httpRequestMethodConditionConfig>,
  @ocaml.doc("<p>Information for a query string condition. Specify only when <code>Field</code> is
        <code>query-string</code>.</p>")
  @as("QueryStringConfig")
  queryStringConfig: option<queryStringConditionConfig>,
  @ocaml.doc("<p>Information for an HTTP header condition. Specify only when <code>Field</code> is
        <code>http-header</code>.</p>")
  @as("HttpHeaderConfig")
  httpHeaderConfig: option<httpHeaderConditionConfig>,
  @ocaml.doc("<p>Information for a path pattern condition. Specify only when <code>Field</code> is
        <code>path-pattern</code>.</p>")
  @as("PathPatternConfig")
  pathPatternConfig: option<pathPatternConditionConfig>,
  @ocaml.doc("<p>Information for a host header condition. Specify only when <code>Field</code> is
        <code>host-header</code>.</p>")
  @as("HostHeaderConfig")
  hostHeaderConfig: option<hostHeaderConditionConfig>,
  @ocaml.doc("<p>The condition value. Specify only when <code>Field</code> is <code>host-header</code> or
        <code>path-pattern</code>. Alternatively, to specify multiple host names or multiple path
      patterns, use <code>HostHeaderConfig</code> or <code>PathPatternConfig</code>.</p>
         <p>If <code>Field</code> is <code>host-header</code> and you are not using
        <code>HostHeaderConfig</code>, you can specify a single host name (for example,
      my.example.com) in <code>Values</code>. A host name is case insensitive, can be up to 128
      characters in length, and can contain any of the following characters.</p>
         <ul>
            <li>
               <p>A-Z, a-z, 0-9</p>
            </li>
            <li>
               <p>- .</p>
            </li>
            <li>
               <p>* (matches 0 or more characters)</p>
            </li>
            <li>
               <p>? (matches exactly 1 character)</p>
            </li>
         </ul>
         <p>If <code>Field</code> is <code>path-pattern</code> and you are not using
        <code>PathPatternConfig</code>, you can specify a single path pattern (for example, /img/*)
      in <code>Values</code>. A path pattern is case-sensitive, can be up to 128 characters in
      length, and can contain any of the following characters.</p>
         <ul>
            <li>
               <p>A-Z, a-z, 0-9</p>
            </li>
            <li>
               <p>_ - . $ / ~ \" ' @ : +</p>
            </li>
            <li>
               <p>& (using &amp;)</p>
            </li>
            <li>
               <p>* (matches 0 or more characters)</p>
            </li>
            <li>
               <p>? (matches exactly 1 character)</p>
            </li>
         </ul>")
  @as("Values")
  values: option<listOfString>,
  @ocaml.doc("<p>The field in the HTTP request. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>http-header</code>
               </p>
            </li>
            <li>
               <p>
                  <code>http-request-method</code>
               </p>
            </li>
            <li>
               <p>
                  <code>host-header</code>
               </p>
            </li>
            <li>
               <p>
                  <code>path-pattern</code>
               </p>
            </li>
            <li>
               <p>
                  <code>query-string</code>
               </p>
            </li>
            <li>
               <p>
                  <code>source-ip</code>
               </p>
            </li>
         </ul>")
  @as("Field")
  field: option<conditionFieldName>,
}
type availabilityZones = array<availabilityZone>
@ocaml.doc("<p>Information about an action.</p>
         <p>Each rule must include exactly one of the following types of actions:
      <code>forward</code>, <code>fixed-response</code>, or <code>redirect</code>, and it must be
      the last action to be performed.</p>")
type action = {
  @ocaml.doc("<p>Information for creating an action that distributes requests among one or more target
      groups. For Network Load Balancers, you can specify a single target group. Specify only when
        <code>Type</code> is <code>forward</code>. If you specify both <code>ForwardConfig</code>
      and <code>TargetGroupArn</code>, you can specify only one target group using
        <code>ForwardConfig</code> and it must be the same target group specified in
        <code>TargetGroupArn</code>.</p>")
  @as("ForwardConfig")
  forwardConfig: option<forwardActionConfig>,
  @ocaml.doc("<p>[Application Load Balancer] Information for creating an action that returns a custom HTTP
      response. Specify only when <code>Type</code> is <code>fixed-response</code>.</p>")
  @as("FixedResponseConfig")
  fixedResponseConfig: option<fixedResponseActionConfig>,
  @ocaml.doc("<p>[Application Load Balancer] Information for creating a redirect action. Specify only when
        <code>Type</code> is <code>redirect</code>.</p>")
  @as("RedirectConfig")
  redirectConfig: option<redirectActionConfig>,
  @ocaml.doc("<p>The order for the action. This value is required for rules with multiple actions. The
      action with the lowest value for order is performed first.</p>")
  @as("Order")
  order: option<actionOrder>,
  @ocaml.doc("<p>[HTTPS listeners] Information for using Amazon Cognito to authenticate users. Specify only
      when <code>Type</code> is <code>authenticate-cognito</code>.</p>")
  @as("AuthenticateCognitoConfig")
  authenticateCognitoConfig: option<authenticateCognitoActionConfig>,
  @ocaml.doc("<p>[HTTPS listeners] Information about an identity provider that is compliant with OpenID
      Connect (OIDC). Specify only when <code>Type</code> is <code>authenticate-oidc</code>.</p>")
  @as("AuthenticateOidcConfig")
  authenticateOidcConfig: option<authenticateOidcActionConfig>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target group. Specify only when <code>Type</code> is
        <code>forward</code> and you want to route to a single target group. To route to one or more
      target groups, use <code>ForwardConfig</code> instead.</p>")
  @as("TargetGroupArn")
  targetGroupArn: option<targetGroupArn>,
  @ocaml.doc("<p>The type of action.</p>") @as("Type") type_: actionTypeEnum,
}
type ruleConditionList = array<ruleCondition>
@ocaml.doc("<p>Information about a load balancer.</p>")
type loadBalancer = {
  @ocaml.doc(
    "<p>[Application Load Balancers on Outposts] The ID of the customer-owned address pool.</p>"
  )
  @as("CustomerOwnedIpv4Pool")
  customerOwnedIpv4Pool: option<customerOwnedIpv4Pool>,
  @ocaml.doc("<p>The type of IP addresses used by the subnets for your load balancer. The possible values
      are <code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for IPv4 and IPv6
      addresses).</p>")
  @as("IpAddressType")
  ipAddressType: option<ipAddressType>,
  @ocaml.doc("<p>The IDs of the security groups for the load balancer.</p>") @as("SecurityGroups")
  securityGroups: option<securityGroups>,
  @ocaml.doc("<p>The subnets for the load balancer.</p>") @as("AvailabilityZones")
  availabilityZones: option<availabilityZones>,
  @ocaml.doc("<p>The type of load balancer.</p>") @as("Type") type_: option<loadBalancerTypeEnum>,
  @ocaml.doc("<p>The state of the load balancer.</p>") @as("State")
  state: option<loadBalancerState>,
  @ocaml.doc("<p>The ID of the VPC for the load balancer.</p>") @as("VpcId") vpcId: option<vpcId>,
  @ocaml.doc("<p>The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an
      Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes.
      Therefore, Internet-facing load balancers can route requests from clients over the
      internet.</p>
         <p>The nodes of an internal load balancer have only private IP addresses. The DNS name of an
      internal load balancer is publicly resolvable to the private IP addresses of the nodes.
      Therefore, internal load balancers can route requests only from clients with access to the VPC
      for the load balancer.</p>")
  @as("Scheme")
  scheme: option<loadBalancerSchemeEnum>,
  @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
  loadBalancerName: option<loadBalancerName>,
  @ocaml.doc("<p>The date and time the load balancer was created.</p>") @as("CreatedTime")
  createdTime: option<createdTime>,
  @ocaml.doc("<p>The ID of the Amazon Route 53 hosted zone associated with the load balancer.</p>")
  @as("CanonicalHostedZoneId")
  canonicalHostedZoneId: option<canonicalHostedZoneId>,
  @ocaml.doc("<p>The public DNS name of the load balancer.</p>") @as("DNSName")
  dnsname: option<dnsname>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>") @as("LoadBalancerArn")
  loadBalancerArn: option<loadBalancerArn>,
}
type actions = array<action>
@ocaml.doc("<p>Information about a rule.</p>")
type rule = {
  @ocaml.doc("<p>Indicates whether this is the default rule.</p>") @as("IsDefault")
  isDefault: option<isDefault>,
  @ocaml.doc("<p>The actions. Each rule must include exactly one of the following types of actions:
        <code>forward</code>, <code>redirect</code>, or <code>fixed-response</code>, and it must be
      the last action to be performed.</p>")
  @as("Actions")
  actions: option<actions>,
  @ocaml.doc("<p>The conditions. Each rule can include zero or one of the following conditions:
        <code>http-request-method</code>, <code>host-header</code>, <code>path-pattern</code>, and
        <code>source-ip</code>, and zero or more of the following conditions:
        <code>http-header</code> and <code>query-string</code>.</p>")
  @as("Conditions")
  conditions: option<ruleConditionList>,
  @ocaml.doc("<p>The priority.</p>") @as("Priority") priority: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule.</p>") @as("RuleArn")
  ruleArn: option<ruleArn>,
}
type loadBalancers = array<loadBalancer>
@ocaml.doc("<p>Information about a listener.</p>")
type listener = {
  @ocaml.doc("<p>[TLS listener] The name of the Application-Layer Protocol Negotiation (ALPN)
      policy.</p>")
  @as("AlpnPolicy")
  alpnPolicy: option<alpnPolicyName>,
  @ocaml.doc("<p>The default actions for the listener.</p>") @as("DefaultActions")
  defaultActions: option<actions>,
  @ocaml.doc("<p>[HTTPS or TLS listener] The security policy that defines which protocols and ciphers are
      supported.</p>")
  @as("SslPolicy")
  sslPolicy: option<sslPolicyName>,
  @ocaml.doc("<p>[HTTPS or TLS listener] The default certificate for the listener.</p>")
  @as("Certificates")
  certificates: option<certificateList>,
  @ocaml.doc("<p>The protocol for connections from clients to the load balancer.</p>")
  @as("Protocol")
  protocol: option<protocolEnum>,
  @ocaml.doc("<p>The port on which the load balancer is listening.</p>") @as("Port")
  port: option<port>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>") @as("LoadBalancerArn")
  loadBalancerArn: option<loadBalancerArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
  listenerArn: option<listenerArn>,
}
type rules = array<rule>
type listeners = array<listener>
@ocaml.doc("<fullname>Elastic Load Balancing</fullname>

         <p>A load balancer distributes incoming traffic across targets, such as your EC2 instances.
      This enables you to increase the availability of your application. The load balancer also
      monitors the health of its registered targets and ensures that it routes traffic only to
      healthy targets. You configure your load balancer to accept incoming traffic by specifying one
      or more listeners, which are configured with a protocol and port number for connections from
      clients to the load balancer. You configure a target group with a protocol and port number for
      connections from the load balancer to the targets, and with health check settings to be used
      when checking the health status of the targets.</p>

         <p>Elastic Load Balancing supports the following types of load balancers: Application Load
      Balancers, Network Load Balancers, Gateway Load Balancers, and Classic Load Balancers. This
      reference covers the following load balancer types:</p>
         <ul>
            <li>
               <p>Application Load Balancer - Operates at the application layer (layer 7) and supports
          HTTP and HTTPS.</p>
            </li>
            <li>
               <p>Network Load Balancer - Operates at the transport layer (layer 4) and supports TCP,
          TLS, and UDP.</p>
            </li>
            <li>
               <p>Gateway Load Balancer - Operates at the network layer (layer 3).</p>
            </li>
         </ul>

         <p>For more information, see the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/\">Elastic Load Balancing User
      Guide</a>.</p>

    
    

    
    

         <p>All Elastic Load Balancing operations are idempotent, which means that they complete at
      most one time. If you repeat an operation, it succeeds.</p>")
module SetIpAddressType = {
  type t
  type request = {
    @ocaml.doc("<p>The IP address type. The possible values are <code>ipv4</code> (for IPv4 addresses) and
        <code>dualstack</code> (for IPv4 and IPv6 addresses).
       You can’t specify
        <code>dualstack</code> for a load balancer with a UDP or TCP_UDP listener.</p>")
    @as("IpAddressType")
    ipAddressType: ipAddressType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>") @as("LoadBalancerArn")
    loadBalancerArn: loadBalancerArn,
  }
  type response = {
    @ocaml.doc("<p>The IP address type.</p>") @as("IpAddressType")
    ipAddressType: option<ipAddressType>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "SetIpAddressTypeCommand"
  let make = (~ipAddressType, ~loadBalancerArn, ()) => new({ipAddressType, loadBalancerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteTargetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target group.</p>") @as("TargetGroupArn")
    targetGroupArn: targetGroupArn,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeleteTargetGroupCommand"
  let make = (~targetGroupArn, ()) => new({targetGroupArn: targetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteRule = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule.</p>") @as("RuleArn")
    ruleArn: ruleArn,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeleteRuleCommand"
  let make = (~ruleArn, ()) => new({ruleArn: ruleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteLoadBalancer = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>") @as("LoadBalancerArn")
    loadBalancerArn: loadBalancerArn,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeleteLoadBalancerCommand"
  let make = (~loadBalancerArn, ()) => new({loadBalancerArn: loadBalancerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteListener = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
    listenerArn: listenerArn,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeleteListenerCommand"
  let make = (~listenerArn, ()) => new({listenerArn: listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetSecurityGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The IDs of the security groups.</p>") @as("SecurityGroups")
    securityGroups: securityGroups,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>") @as("LoadBalancerArn")
    loadBalancerArn: loadBalancerArn,
  }
  type response = {
    @ocaml.doc("<p>The IDs of the security groups associated with the load balancer.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroups>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "SetSecurityGroupsCommand"
  let make = (~securityGroups, ~loadBalancerArn, ()) => new({securityGroups, loadBalancerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RemoveTags = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys for the tags to remove.</p>") @as("TagKeys") tagKeys: tagKeys,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArns")
    resourceArns: resourceArns,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "RemoveTagsCommand"
  let make = (~tagKeys, ~resourceArns, ()) => new({tagKeys, resourceArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RemoveListenerCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>The certificate to remove. You can specify one certificate per call. Set
        <code>CertificateArn</code> to the certificate ARN but do not set
      <code>IsDefault</code>.</p>")
    @as("Certificates")
    certificates: certificateList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
    listenerArn: listenerArn,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "RemoveListenerCertificatesCommand"
  let make = (~certificates, ~listenerArn, ()) => new({certificates, listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RegisterTargets = {
  type t
  type request = {
    @ocaml.doc("<p>The targets.</p>") @as("Targets") targets: targetDescriptions,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target group.</p>") @as("TargetGroupArn")
    targetGroupArn: targetGroupArn,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "RegisterTargetsCommand"
  let make = (~targets, ~targetGroupArn, ()) => new({targets, targetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ModifyTargetGroupAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The attributes.</p>") @as("Attributes") attributes: targetGroupAttributes,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target group.</p>") @as("TargetGroupArn")
    targetGroupArn: targetGroupArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the attributes.</p>") @as("Attributes")
    attributes: option<targetGroupAttributes>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "ModifyTargetGroupAttributesCommand"
  let make = (~attributes, ~targetGroupArn, ()) => new({attributes, targetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ModifyLoadBalancerAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The load balancer attributes.</p>") @as("Attributes")
    attributes: loadBalancerAttributes,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>") @as("LoadBalancerArn")
    loadBalancerArn: loadBalancerArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the load balancer attributes.</p>") @as("Attributes")
    attributes: option<loadBalancerAttributes>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "ModifyLoadBalancerAttributesCommand"
  let make = (~attributes, ~loadBalancerArn, ()) => new({attributes, loadBalancerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeTargetGroupAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target group.</p>") @as("TargetGroupArn")
    targetGroupArn: targetGroupArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the target group attributes</p>") @as("Attributes")
    attributes: option<targetGroupAttributes>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeTargetGroupAttributesCommand"
  let make = (~targetGroupArn, ()) => new({targetGroupArn: targetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeLoadBalancerAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>") @as("LoadBalancerArn")
    loadBalancerArn: loadBalancerArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the load balancer attributes.</p>") @as("Attributes")
    attributes: option<loadBalancerAttributes>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeLoadBalancerAttributesCommand"
  let make = (~loadBalancerArn, ()) => new({loadBalancerArn: loadBalancerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeListenerCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
      call.)</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the listener.</p>") @as("ListenerArn")
    listenerArn: listenerArn,
  }
  type response = {
    @ocaml.doc("<p>If there are additional results, this is the marker for the next set of results.
      Otherwise, this is null.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>Information about the certificates.</p>") @as("Certificates")
    certificates: option<certificateList>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeListenerCertificatesCommand"
  let make = (~listenerArn, ~pageSize=?, ~marker=?, ()) => new({pageSize, marker, listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAccountLimits = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
      call.)</p>")
    @as("Marker")
    marker: option<marker>,
  }
  type response = {
    @ocaml.doc("<p>If there are additional results, this is the marker for the next set of results.
      Otherwise, this is null.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>Information about the limits.</p>") @as("Limits") limits: option<limits>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeAccountLimitsCommand"
  let make = (~pageSize=?, ~marker=?, ()) => new({pageSize, marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeregisterTargets = {
  type t
  type request = {
    @ocaml.doc("<p>The targets. If you specified a port override when you registered a target, you must
      specify both the target ID and the port when you deregister it.</p>")
    @as("Targets")
    targets: targetDescriptions,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target group.</p>") @as("TargetGroupArn")
    targetGroupArn: targetGroupArn,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeregisterTargetsCommand"
  let make = (~targets, ~targetGroupArn, ()) => new({targets, targetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AddTags = {
  type t
  type request = {
    @ocaml.doc("<p>The tags.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArns")
    resourceArns: resourceArns,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new: request => t = "AddTagsCommand"
  let make = (~tags, ~resourceArns, ()) => new({tags, resourceArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AddListenerCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>The certificate to add. You can specify one certificate per call. Set
        <code>CertificateArn</code> to the certificate ARN but do not set
      <code>IsDefault</code>.</p>")
    @as("Certificates")
    certificates: certificateList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
    listenerArn: listenerArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the certificates in the certificate list.</p>")
    @as("Certificates")
    certificates: option<certificateList>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "AddListenerCertificatesCommand"
  let make = (~certificates, ~listenerArn, ()) => new({certificates, listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ModifyTargetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful
      response from a target.</p>
         <p>With Network Load Balancers, you can't modify this setting.</p>")
    @as("Matcher")
    matcher: option<matcher>,
    @ocaml.doc("<p>The number of consecutive health check failures required before considering the target
      unhealthy. For target groups with a protocol of TCP or TLS, this value must be the same as the
      healthy threshold count.</p>")
    @as("UnhealthyThresholdCount")
    unhealthyThresholdCount: option<healthCheckThresholdCount>,
    @ocaml.doc("<p>The number of consecutive health checks successes required before considering an unhealthy
      target healthy.</p>")
    @as("HealthyThresholdCount")
    healthyThresholdCount: option<healthCheckThresholdCount>,
    @ocaml.doc("<p>[HTTP/HTTPS health checks] The amount of time, in seconds, during which no response means
      a failed health check.</p>
         <p>With Network Load Balancers, you can't modify this setting.</p>")
    @as("HealthCheckTimeoutSeconds")
    healthCheckTimeoutSeconds: option<healthCheckTimeoutSeconds>,
    @ocaml.doc("<p>The approximate amount of time, in seconds, between health checks of an individual target.
      For TCP health checks, the supported values are 10 or 30 seconds.</p>
         <p>With Network Load Balancers, you can't modify this setting.</p>")
    @as("HealthCheckIntervalSeconds")
    healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
    @ocaml.doc("<p>Indicates whether health checks are enabled.</p>") @as("HealthCheckEnabled")
    healthCheckEnabled: option<healthCheckEnabled>,
    @ocaml.doc("<p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>
         <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>
         <p>[GRPC protocol version] The path of a custom health check method with the format
      /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>")
    @as("HealthCheckPath")
    healthCheckPath: option<path>,
    @ocaml.doc("<p>The port the load balancer uses when performing health checks on targets.</p>")
    @as("HealthCheckPort")
    healthCheckPort: option<healthCheckPort>,
    @ocaml.doc("<p>The protocol the load balancer uses when performing health checks on targets. For
      Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load
      Balancers, the default is TCP. The TCP protocol is not supported for health checks if the
      protocol of the target group is HTTP or HTTPS. It is supported for health checks only if the
      protocol of the target group is TCP, TLS, UDP, or TCP_UDP. The GENEVE, TLS, UDP, and TCP_UDP
      protocols are not supported for health checks.</p>
         <p>With Network Load Balancers, you can't modify this setting.</p>")
    @as("HealthCheckProtocol")
    healthCheckProtocol: option<protocolEnum>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target group.</p>") @as("TargetGroupArn")
    targetGroupArn: targetGroupArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the modified target group.</p>") @as("TargetGroups")
    targetGroups: option<targetGroups>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "ModifyTargetGroupCommand"
  let make = (
    ~targetGroupArn,
    ~matcher=?,
    ~unhealthyThresholdCount=?,
    ~healthyThresholdCount=?,
    ~healthCheckTimeoutSeconds=?,
    ~healthCheckIntervalSeconds=?,
    ~healthCheckEnabled=?,
    ~healthCheckPath=?,
    ~healthCheckPort=?,
    ~healthCheckProtocol=?,
    (),
  ) =>
    new({
      matcher,
      unhealthyThresholdCount,
      healthyThresholdCount,
      healthCheckTimeoutSeconds,
      healthCheckIntervalSeconds,
      healthCheckEnabled,
      healthCheckPath,
      healthCheckPort,
      healthCheckProtocol,
      targetGroupArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeTargetHealth = {
  type t
  type request = {
    @ocaml.doc("<p>The targets.</p>") @as("Targets") targets: option<targetDescriptions>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target group.</p>") @as("TargetGroupArn")
    targetGroupArn: targetGroupArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the health of the targets.</p>")
    @as("TargetHealthDescriptions")
    targetHealthDescriptions: option<targetHealthDescriptions>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeTargetHealthCommand"
  let make = (~targetGroupArn, ~targets=?, ()) => new({targets, targetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeTargetGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
      call.)</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The names of the target groups.</p>") @as("Names")
    names: option<targetGroupNames>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the target groups.</p>")
    @as("TargetGroupArns")
    targetGroupArns: option<targetGroupArns>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>") @as("LoadBalancerArn")
    loadBalancerArn: option<loadBalancerArn>,
  }
  type response = {
    @ocaml.doc("<p>If there are additional results, this is the marker for the next set of results.
      Otherwise, this is null.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>Information about the target groups.</p>") @as("TargetGroups")
    targetGroups: option<targetGroups>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeTargetGroupsCommand"
  let make = (~pageSize=?, ~marker=?, ~names=?, ~targetGroupArns=?, ~loadBalancerArn=?, ()) =>
    new({pageSize, marker, names, targetGroupArns, loadBalancerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateTargetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The type of IP address used for this target group. The possible values are
        <code>ipv4</code> and <code>ipv6</code>. This is an optional parameter. If not specified,
      the IP address type defaults to <code>ipv4</code>.</p>")
    @as("IpAddressType")
    ipAddressType: option<targetGroupIpAddressTypeEnum>,
    @ocaml.doc("<p>The tags to assign to the target group.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The type of target that you must specify when registering targets with this target group.
      You can't specify targets for a target group using more than one target type.</p>
         <ul>
            <li>
               <p>
                  <code>instance</code> - Register targets by instance ID. This is the default
          value.</p>
            </li>
            <li>
               <p>
                  <code>ip</code> - Register targets by IP address. You can specify IP addresses from
          the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range
          (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10).
          You can't specify publicly routable IP addresses.</p>
            </li>
            <li>
               <p>
                  <code>lambda</code> - Register a single Lambda function as a target.</p>
            </li>
            <li>
               <p>
                  <code>alb</code> - Register a single Application Load Balancer as a target.</p>
            </li>
         </ul>")
    @as("TargetType")
    targetType: option<targetTypeEnum>,
    @ocaml.doc("<p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful
      response from a target.</p>")
    @as("Matcher")
    matcher: option<matcher>,
    @ocaml.doc("<p>The number of consecutive health check failures required before considering a target
      unhealthy. If the target group protocol is HTTP or HTTPS, the default is 2. If the target
      group protocol is TCP or TLS, this value must be the same as the healthy threshold count. If
      the target group protocol is GENEVE, the default is 3. If the target type is
        <code>lambda</code>, the default is 2.</p>")
    @as("UnhealthyThresholdCount")
    unhealthyThresholdCount: option<healthCheckThresholdCount>,
    @ocaml.doc("<p>The number of consecutive health checks successes required before considering an unhealthy
      target healthy. For target groups with a protocol of HTTP or HTTPS, the default is 5. For
      target groups with a protocol of TCP, TLS, or GENEVE, the default is 3. If the target type is
        <code>lambda</code>, the default is 5.</p>")
    @as("HealthyThresholdCount")
    healthyThresholdCount: option<healthCheckThresholdCount>,
    @ocaml.doc("<p>The amount of time, in seconds, during which no response from a target means a failed
      health check. For target groups with a protocol of HTTP, HTTPS, or GENEVE, the default is 5
      seconds. For target groups with a protocol of TCP or TLS, this value must be 6 seconds for
      HTTP health checks and 10 seconds for TCP and HTTPS health checks. If the target type is
        <code>lambda</code>, the default is 30 seconds.</p>")
    @as("HealthCheckTimeoutSeconds")
    healthCheckTimeoutSeconds: option<healthCheckTimeoutSeconds>,
    @ocaml.doc("<p>The approximate amount of time, in seconds, between health checks of an individual target.
      If the target group protocol is TCP, TLS, UDP, or TCP_UDP, the supported values are 10 and 30
      seconds. If the target group protocol is HTTP or HTTPS, the default is 30 seconds. If the
      target group protocol is GENEVE, the default is 10 seconds. If the target type is
        <code>lambda</code>, the default is 35 seconds.</p>")
    @as("HealthCheckIntervalSeconds")
    healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
    @ocaml.doc("<p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>
         <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>
         <p>[GRPC protocol version] The path of a custom health check method with the format
      /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>")
    @as("HealthCheckPath")
    healthCheckPath: option<path>,
    @ocaml.doc("<p>Indicates whether health checks are enabled. If the target type is <code>lambda</code>,
      health checks are disabled by default but can be enabled. If the target type is
        <code>instance</code>, <code>ip</code>, or <code>alb</code>, health checks are always
      enabled and cannot be disabled.</p>")
    @as("HealthCheckEnabled")
    healthCheckEnabled: option<healthCheckEnabled>,
    @ocaml.doc("<p>The port the load balancer uses when performing health checks on targets. If the protocol
      is HTTP, HTTPS, TCP, TLS, UDP, or TCP_UDP, the default is <code>traffic-port</code>, which is
      the port on which each target receives traffic from the load balancer. If the protocol is
      GENEVE, the default is port 80.</p>")
    @as("HealthCheckPort")
    healthCheckPort: option<healthCheckPort>,
    @ocaml.doc("<p>The protocol the load balancer uses when performing health checks on targets. For
      Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load
      Balancers, the default is TCP. The TCP protocol is not supported for health checks if the
      protocol of the target group is HTTP or HTTPS. The GENEVE, TLS, UDP, and TCP_UDP protocols are
      not supported for health checks.</p>")
    @as("HealthCheckProtocol")
    healthCheckProtocol: option<protocolEnum>,
    @ocaml.doc("<p>The identifier of the virtual private cloud (VPC). If the target is a Lambda function,
      this parameter does not apply. Otherwise, this parameter is required.</p>")
    @as("VpcId")
    vpcId: option<vpcId>,
    @ocaml.doc("<p>The port on which the targets receive traffic. This port is used unless you specify a port
      override when registering the target. If the target is a Lambda function, this parameter does
      not apply. If the protocol is GENEVE, the supported port is 6081.</p>")
    @as("Port")
    port: option<port>,
    @ocaml.doc("<p>[HTTP/HTTPS protocol] The protocol version. Specify <code>GRPC</code> to send requests to
      targets using gRPC. Specify <code>HTTP2</code> to send requests to targets using HTTP/2. The
      default is <code>HTTP1</code>, which sends requests to targets using HTTP/1.1.</p>")
    @as("ProtocolVersion")
    protocolVersion: option<protocolVersion>,
    @ocaml.doc("<p>The protocol to use for routing traffic to the targets. For Application Load Balancers,
      the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported
      protocols are TCP, TLS, UDP, or TCP_UDP. For Gateway Load Balancers, the supported protocol is
      GENEVE. A TCP_UDP listener must be associated with a TCP_UDP target group. If the target is a
      Lambda function, this parameter does not apply.</p>")
    @as("Protocol")
    protocol: option<protocolEnum>,
    @ocaml.doc("<p>The name of the target group.</p>
         <p>This name must be unique per region per account, can have a maximum of 32 characters, must
      contain only alphanumeric characters or hyphens, and must not begin or end with a
      hyphen.</p>")
    @as("Name")
    name: targetGroupName,
  }
  type response = {
    @ocaml.doc("<p>Information about the target group.</p>") @as("TargetGroups")
    targetGroups: option<targetGroups>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateTargetGroupCommand"
  let make = (
    ~name,
    ~ipAddressType=?,
    ~tags=?,
    ~targetType=?,
    ~matcher=?,
    ~unhealthyThresholdCount=?,
    ~healthyThresholdCount=?,
    ~healthCheckTimeoutSeconds=?,
    ~healthCheckIntervalSeconds=?,
    ~healthCheckPath=?,
    ~healthCheckEnabled=?,
    ~healthCheckPort=?,
    ~healthCheckProtocol=?,
    ~vpcId=?,
    ~port=?,
    ~protocolVersion=?,
    ~protocol=?,
    (),
  ) =>
    new({
      ipAddressType,
      tags,
      targetType,
      matcher,
      unhealthyThresholdCount,
      healthyThresholdCount,
      healthCheckTimeoutSeconds,
      healthCheckIntervalSeconds,
      healthCheckPath,
      healthCheckEnabled,
      healthCheckPort,
      healthCheckProtocol,
      vpcId,
      port,
      protocolVersion,
      protocol,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SetSubnets = {
  type t
  type request = {
    @ocaml.doc("<p>[Network Load Balancers] The type of IP addresses used by the subnets for your load
      balancer. The possible values are <code>ipv4</code> (for IPv4 addresses) and
        <code>dualstack</code> (for IPv4 and IPv6 addresses). You can’t specify
        <code>dualstack</code> for a load balancer with a UDP or TCP_UDP listener.
      .</p>")
    @as("IpAddressType")
    ipAddressType: option<ipAddressType>,
    @ocaml.doc("<p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
      must specify either subnets or subnet mappings.</p>
         <p>[Application Load Balancers] You must specify subnets from at least two Availability
      Zones. You cannot specify Elastic IP addresses for your subnets.</p>
         <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
         <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
      Zones.</p>
         <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones. You
      can specify one Elastic IP address per subnet if you need static IP addresses for your
      internet-facing load balancer. For internal load balancers, you can specify one private IP
      address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you
      can specify one IPv6 address per subnet.</p>")
    @as("SubnetMappings")
    subnetMappings: option<subnetMappings>,
    @ocaml.doc("<p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
      must specify either subnets or subnet mappings.</p>
         <p>[Application Load Balancers] You must specify subnets from at least two Availability
      Zones.</p>
         <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
         <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
      Zones.</p>
         <p>[Network Load Balancers] You can specify subnets from one or more Availability
      Zones.</p>")
    @as("Subnets")
    subnets: option<subnets>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>") @as("LoadBalancerArn")
    loadBalancerArn: loadBalancerArn,
  }
  type response = {
    @ocaml.doc("<p>[Network Load Balancers] The IP address type.</p>") @as("IpAddressType")
    ipAddressType: option<ipAddressType>,
    @ocaml.doc("<p>Information about the subnets.</p>") @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "SetSubnetsCommand"
  let make = (~loadBalancerArn, ~ipAddressType=?, ~subnetMappings=?, ~subnets=?, ()) =>
    new({ipAddressType, subnetMappings, subnets, loadBalancerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeTags = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a
      single call.</p>")
    @as("ResourceArns")
    resourceArns: resourceArns,
  }
  type response = {
    @ocaml.doc("<p>Information about the tags.</p>") @as("TagDescriptions")
    tagDescriptions: option<tagDescriptions>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeTagsCommand"
  let make = (~resourceArns, ()) => new({resourceArns: resourceArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeSSLPolicies = {
  type t
  type request = {
    @ocaml.doc("<p> The type of load balancer. The default lists the SSL policies for all load
      balancers.</p>")
    @as("LoadBalancerType")
    loadBalancerType: option<loadBalancerTypeEnum>,
    @ocaml.doc("<p>The maximum number of results to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
      call.)</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The names of the policies.</p>") @as("Names") names: option<sslPolicyNames>,
  }
  type response = {
    @ocaml.doc("<p>If there are additional results, this is the marker for the next set of results.
      Otherwise, this is null.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>Information about the security policies.</p>") @as("SslPolicies")
    sslPolicies: option<sslPolicies>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeSSLPoliciesCommand"
  let make = (~loadBalancerType=?, ~pageSize=?, ~marker=?, ~names=?, ()) =>
    new({loadBalancerType, pageSize, marker, names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeLoadBalancers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
      call.)</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The names of the load balancers.</p>") @as("Names")
    names: option<loadBalancerNames>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load
      balancers in a single call.</p>")
    @as("LoadBalancerArns")
    loadBalancerArns: option<loadBalancerArns>,
  }
  type response = {
    @ocaml.doc("<p>If there are additional results, this is the marker for the next set of results.
      Otherwise, this is null.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>Information about the load balancers.</p>") @as("LoadBalancers")
    loadBalancers: option<loadBalancers>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeLoadBalancersCommand"
  let make = (~pageSize=?, ~marker=?, ~names=?, ~loadBalancerArns=?, ()) =>
    new({pageSize, marker, names, loadBalancerArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateLoadBalancer = {
  type t
  type request = {
    @ocaml.doc("<p>[Application Load Balancers on Outposts] The ID of the customer-owned address pool (CoIP
      pool).</p>")
    @as("CustomerOwnedIpv4Pool")
    customerOwnedIpv4Pool: option<customerOwnedIpv4Pool>,
    @ocaml.doc("<p>The type of IP addresses used by the subnets for your load balancer. The possible values
      are <code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for IPv4 and IPv6
      addresses). </p>")
    @as("IpAddressType")
    ipAddressType: option<ipAddressType>,
    @ocaml.doc("<p>The type of load balancer. The default is <code>application</code>.</p>")
    @as("Type")
    type_: option<loadBalancerTypeEnum>,
    @ocaml.doc("<p>The tags to assign to the load balancer.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an
      Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes.
      Therefore, Internet-facing load balancers can route requests from clients over the
      internet.</p>
         <p>The nodes of an internal load balancer have only private IP addresses. The DNS name of an
      internal load balancer is publicly resolvable to the private IP addresses of the nodes.
      Therefore, internal load balancers can route requests only from clients with access to the VPC
      for the load balancer.</p>
         <p>The default is an Internet-facing load balancer.</p>
         <p>You cannot specify a scheme for a Gateway Load Balancer.</p>")
    @as("Scheme")
    scheme: option<loadBalancerSchemeEnum>,
    @ocaml.doc(
      "<p>[Application Load Balancers] The IDs of the security groups for the load balancer.</p>"
    )
    @as("SecurityGroups")
    securityGroups: option<securityGroups>,
    @ocaml.doc("<p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
      must specify either subnets or subnet mappings.</p>
         <p>[Application Load Balancers] You must specify subnets from at least two Availability
      Zones. You cannot specify Elastic IP addresses for your subnets.</p>
         <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
         <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
      Zones.</p>
         <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones. You
      can specify one Elastic IP address per subnet if you need static IP addresses for your
      internet-facing load balancer. For internal load balancers, you can specify one private IP
      address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you
      can specify one IPv6 address per subnet.</p>
         <p>[Gateway Load Balancers] You can specify subnets from one or more Availability Zones. You
      cannot specify Elastic IP addresses for your subnets.</p>")
    @as("SubnetMappings")
    subnetMappings: option<subnetMappings>,
    @ocaml.doc("<p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
      must specify either subnets or subnet mappings.</p>
         <p>[Application Load Balancers] You must specify subnets from at least two Availability
      Zones.</p>
         <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
         <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
      Zones.</p>
         <p>[Network Load Balancers] You can specify subnets from one or more Availability
      Zones.</p>
         <p>[Gateway Load Balancers] You can specify subnets from one or more Availability
      Zones.</p>")
    @as("Subnets")
    subnets: option<subnets>,
    @ocaml.doc("<p>The name of the load balancer.</p>
         <p>This name must be unique per region per account, can have a maximum of 32 characters, must
      contain only alphanumeric characters or hyphens, must not begin or end with a hyphen, and must
      not begin with \"internal-\".</p>")
    @as("Name")
    name: loadBalancerName,
  }
  type response = {
    @ocaml.doc("<p>Information about the load balancer.</p>") @as("LoadBalancers")
    loadBalancers: option<loadBalancers>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateLoadBalancerCommand"
  let make = (
    ~name,
    ~customerOwnedIpv4Pool=?,
    ~ipAddressType=?,
    ~type_=?,
    ~tags=?,
    ~scheme=?,
    ~securityGroups=?,
    ~subnetMappings=?,
    ~subnets=?,
    (),
  ) =>
    new({
      customerOwnedIpv4Pool,
      ipAddressType,
      type_,
      tags,
      scheme,
      securityGroups,
      subnetMappings,
      subnets,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SetRulePriorities = {
  type t
  type request = {
    @ocaml.doc("<p>The rule priorities.</p>") @as("RulePriorities")
    rulePriorities: rulePriorityList,
  }
  type response = {
    @ocaml.doc("<p>Information about the rules.</p>") @as("Rules") rules: option<rules>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "SetRulePrioritiesCommand"
  let make = (~rulePriorities, ()) => new({rulePriorities: rulePriorities})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ModifyRule = {
  type t
  type request = {
    @ocaml.doc("<p>The actions.</p>") @as("Actions") actions: option<actions>,
    @ocaml.doc("<p>The conditions.</p>") @as("Conditions") conditions: option<ruleConditionList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule.</p>") @as("RuleArn")
    ruleArn: ruleArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the modified rule.</p>") @as("Rules") rules: option<rules>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "ModifyRuleCommand"
  let make = (~ruleArn, ~actions=?, ~conditions=?, ()) => new({actions, conditions, ruleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ModifyListener = {
  type t
  type request = {
    @ocaml.doc("<p>[TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You
      can specify one policy name. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>HTTP1Only</code>
               </p>
            </li>
            <li>
               <p>
                  <code>HTTP2Only</code>
               </p>
            </li>
            <li>
               <p>
                  <code>HTTP2Optional</code>
               </p>
            </li>
            <li>
               <p>
                  <code>HTTP2Preferred</code>
               </p>
            </li>
            <li>
               <p>
                  <code>None</code>
               </p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies\">ALPN
        policies</a> in the <i>Network Load Balancers Guide</i>.</p>")
    @as("AlpnPolicy")
    alpnPolicy: option<alpnPolicyName>,
    @ocaml.doc("<p>The actions for the default rule.</p>") @as("DefaultActions")
    defaultActions: option<actions>,
    @ocaml.doc("<p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide
      exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set
        <code>IsDefault</code>.</p>")
    @as("Certificates")
    certificates: option<certificateList>,
    @ocaml.doc("<p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are
      supported.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies\">Security policies</a> in the <i>Application Load Balancers Guide</i> or
        <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies\">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>")
    @as("SslPolicy")
    sslPolicy: option<sslPolicyName>,
    @ocaml.doc("<p>The protocol for connections from clients to the load balancer. Application Load Balancers
      support the HTTP and HTTPS protocols. Network Load Balancers support the TCP, TLS, UDP, and
      TCP_UDP protocols. You can’t change the protocol to UDP or TCP_UDP if dual-stack mode is
      enabled. You cannot specify a protocol for a Gateway Load Balancer.</p>")
    @as("Protocol")
    protocol: option<protocolEnum>,
    @ocaml.doc("<p>The port for connections from clients to the load balancer. You cannot specify a port for
      a Gateway Load Balancer.</p>")
    @as("Port")
    port: option<port>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
    listenerArn: listenerArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the modified listener.</p>") @as("Listeners")
    listeners: option<listeners>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "ModifyListenerCommand"
  let make = (
    ~listenerArn,
    ~alpnPolicy=?,
    ~defaultActions=?,
    ~certificates=?,
    ~sslPolicy=?,
    ~protocol=?,
    ~port=?,
    (),
  ) => new({alpnPolicy, defaultActions, certificates, sslPolicy, protocol, port, listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRules = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
      call.)</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the rules.</p>") @as("RuleArns")
    ruleArns: option<ruleArns>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
    listenerArn: option<listenerArn>,
  }
  type response = {
    @ocaml.doc("<p>If there are additional results, this is the marker for the next set of results.
      Otherwise, this is null.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>Information about the rules.</p>") @as("Rules") rules: option<rules>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeRulesCommand"
  let make = (~pageSize=?, ~marker=?, ~ruleArns=?, ~listenerArn=?, ()) =>
    new({pageSize, marker, ruleArns, listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeListeners = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
      call.)</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the listeners.</p>") @as("ListenerArns")
    listenerArns: option<listenerArns>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>") @as("LoadBalancerArn")
    loadBalancerArn: option<loadBalancerArn>,
  }
  type response = {
    @ocaml.doc("<p>If there are additional results, this is the marker for the next set of results.
      Otherwise, this is null.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>Information about the listeners.</p>") @as("Listeners")
    listeners: option<listeners>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeListenersCommand"
  let make = (~pageSize=?, ~marker=?, ~listenerArns=?, ~loadBalancerArn=?, ()) =>
    new({pageSize, marker, listenerArns, loadBalancerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRule = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the rule.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The actions.</p>") @as("Actions") actions: actions,
    @ocaml.doc(
      "<p>The rule priority. A listener can't have multiple rules with the same priority.</p>"
    )
    @as("Priority")
    priority: rulePriority,
    @ocaml.doc("<p>The conditions.</p>") @as("Conditions") conditions: ruleConditionList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the listener.</p>") @as("ListenerArn")
    listenerArn: listenerArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the rule.</p>") @as("Rules") rules: option<rules>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateRuleCommand"
  let make = (~actions, ~priority, ~conditions, ~listenerArn, ~tags=?, ()) =>
    new({tags, actions, priority, conditions, listenerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateListener = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the listener.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>[TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You
      can specify one policy name. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>HTTP1Only</code>
               </p>
            </li>
            <li>
               <p>
                  <code>HTTP2Only</code>
               </p>
            </li>
            <li>
               <p>
                  <code>HTTP2Optional</code>
               </p>
            </li>
            <li>
               <p>
                  <code>HTTP2Preferred</code>
               </p>
            </li>
            <li>
               <p>
                  <code>None</code>
               </p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies\">ALPN
        policies</a> in the <i>Network Load Balancers Guide</i>.</p>")
    @as("AlpnPolicy")
    alpnPolicy: option<alpnPolicyName>,
    @ocaml.doc("<p>The actions for the default rule.</p>") @as("DefaultActions")
    defaultActions: actions,
    @ocaml.doc("<p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide
      exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set
        <code>IsDefault</code>.</p>")
    @as("Certificates")
    certificates: option<certificateList>,
    @ocaml.doc("<p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are
      supported.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies\">Security policies</a> in the <i>Application Load Balancers Guide</i> and
        <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies\">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>")
    @as("SslPolicy")
    sslPolicy: option<sslPolicyName>,
    @ocaml.doc("<p>The port on which the load balancer is listening. You cannot specify a port for a Gateway
      Load Balancer.</p>")
    @as("Port")
    port: option<port>,
    @ocaml.doc("<p>The protocol for connections from clients to the load balancer. For Application Load
      Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the
      supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t specify the UDP or TCP_UDP
      protocol if dual-stack mode is enabled. You cannot specify a protocol for a Gateway Load
      Balancer.</p>")
    @as("Protocol")
    protocol: option<protocolEnum>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>") @as("LoadBalancerArn")
    loadBalancerArn: loadBalancerArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the listener.</p>") @as("Listeners")
    listeners: option<listeners>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateListenerCommand"
  let make = (
    ~defaultActions,
    ~loadBalancerArn,
    ~tags=?,
    ~alpnPolicy=?,
    ~certificates=?,
    ~sslPolicy=?,
    ~port=?,
    ~protocol=?,
    (),
  ) =>
    new({
      tags,
      alpnPolicy,
      defaultActions,
      certificates,
      sslPolicy,
      port,
      protocol,
      loadBalancerArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
