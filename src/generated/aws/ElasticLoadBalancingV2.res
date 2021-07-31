type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type zoneName = string
type vpcId = string
type targetTypeEnum = [@as("lambda") #Lambda | @as("ip") #Ip | @as("instance") #Instance]
type targetId = string
type targetHealthStateEnum = [@as("unavailable") #Unavailable | @as("draining") #Draining | @as("unused") #Unused | @as("unhealthy") #Unhealthy | @as("healthy") #Healthy | @as("initial") #Initial]
type targetHealthReasonEnum = [@as("Elb.InternalError") #ElbInternalError | @as("Target.HealthCheckDisabled") #TargetHealthCheckDisabled | @as("Target.IpUnusable") #TargetIpUnusable | @as("Target.InvalidState") #TargetInvalidState | @as("Target.DeregistrationInProgress") #TargetDeregistrationInProgress | @as("Target.NotInUse") #TargetNotInUse | @as("Target.NotRegistered") #TargetNotRegistered | @as("Target.FailedHealthChecks") #TargetFailedHealthChecks | @as("Target.Timeout") #TargetTimeout | @as("Target.ResponseCodeMismatch") #TargetResponseCodeMismatch | @as("Elb.InitialHealthChecking") #ElbInitialHealthChecking | @as("Elb.RegistrationInProgress") #ElbRegistrationInProgress]
type targetGroupWeight = int
type targetGroupStickinessEnabled = bool
type targetGroupStickinessDurationSeconds = int
type targetGroupName = string
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
type redirectActionStatusCodeEnum = [@as("HTTP_302") #HTTP302 | @as("HTTP_301") #HTTP301]
type redirectActionQuery = string
type redirectActionProtocol = string
type redirectActionPort = string
type redirectActionPath = string
type redirectActionHost = string
type protocolVersion = string
type protocolEnum = [@as("GENEVE") #GENEVE | @as("TCP_UDP") #TCPUDP | @as("UDP") #UDP | @as("TLS") #TLS | @as("TCP") #TCP | @as("HTTPS") #HTTPS | @as("HTTP") #HTTP]
type privateIPv4Address = string
type port = int
type path = string
type pageSize = int
type outpostId = string
type name = string
type max = string
type marker = string
type loadBalancerTypeEnum = [@as("gateway") #Gateway | @as("network") #Network | @as("application") #Application]
type loadBalancerStateEnum = [@as("failed") #Failed | @as("active_impaired") #ActiveImpaired | @as("provisioning") #Provisioning | @as("active") #Active]
type loadBalancerSchemeEnum = [@as("internal") #Internal | @as("internet-facing") #InternetFacing]
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
type createdTime = Js.Date.t;
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
type authenticateOidcActionConditionalBehaviorEnum = [@as("authenticate") #Authenticate | @as("allow") #Allow | @as("deny") #Deny]
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
type authenticateCognitoActionConditionalBehaviorEnum = [@as("authenticate") #Authenticate | @as("allow") #Allow | @as("deny") #Deny]
type authenticateCognitoActionAuthenticationRequestParamValue = string
type authenticateCognitoActionAuthenticationRequestParamName = string
type alpnPolicyValue = string
type allocationId = string
type actionTypeEnum = [@as("fixed-response") #FixedResponse | @as("redirect") #Redirect | @as("authenticate-cognito") #AuthenticateCognito | @as("authenticate-oidc") #AuthenticateOidc | @as("forward") #Forward]
type actionOrder = int
type targetHealth = {
@as("Description") description: option<description>,
@as("Reason") reason: option<targetHealthReasonEnum>,
@as("State") state: option<targetHealthStateEnum>
}
type targetGroupTuple = {
@as("Weight") weight: option<targetGroupWeight>,
@as("TargetGroupArn") targetGroupArn: option<targetGroupArn>
}
type targetGroupStickinessConfig = {
@as("DurationSeconds") durationSeconds: option<targetGroupStickinessDurationSeconds>,
@as("Enabled") enabled: option<targetGroupStickinessEnabled>
}
type targetGroupNames = array<targetGroupName>
type targetGroupAttribute = {
@as("Value") value: option<targetGroupAttributeValue>,
@as("Key") key: option<targetGroupAttributeKey>
}
type targetGroupArns = array<targetGroupArn>
type targetDescription = {
@as("AvailabilityZone") availabilityZone: option<zoneName>,
@as("Port") port: option<port>,
@as("Id") id: targetId
}
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: tagKey
}
type subnets = array<subnetId>
type subnetMapping = {
@as("IPv6Address") ipv6Address: option<ipv6Address>,
@as("PrivateIPv4Address") privateIPv4Address: option<privateIPv4Address>,
@as("AllocationId") allocationId: option<allocationId>,
@as("SubnetId") subnetId: option<subnetId>
}
type sslProtocols = array<sslProtocol>
type sslPolicyNames = array<sslPolicyName>
type securityGroups = array<securityGroupId>
type rulePriorityPair = {
@as("Priority") priority: option<rulePriority>,
@as("RuleArn") ruleArn: option<ruleArn>
}
type ruleArns = array<ruleArn>
type resourceArns = array<resourceArn>
type redirectActionConfig = {
@as("StatusCode") statusCode: redirectActionStatusCodeEnum,
@as("Query") query: option<redirectActionQuery>,
@as("Path") path: option<redirectActionPath>,
@as("Host") host: option<redirectActionHost>,
@as("Port") port: option<redirectActionPort>,
@as("Protocol") protocol: option<redirectActionProtocol>
}
type queryStringKeyValuePair = {
@as("Value") value: option<stringValue>,
@as("Key") key: option<stringValue>
}
type matcher = {
@as("GrpcCode") grpcCode: option<grpcCode>,
@as("HttpCode") httpCode: option<httpCode>
}
type loadBalancerState = {
@as("Reason") reason: option<stateReason>,
@as("Code") code: option<loadBalancerStateEnum>
}
type loadBalancerNames = array<loadBalancerName>
type loadBalancerAttribute = {
@as("Value") value: option<loadBalancerAttributeValue>,
@as("Key") key: option<loadBalancerAttributeKey>
}
type loadBalancerArns = array<loadBalancerArn>
type loadBalancerAddress = {
@as("IPv6Address") ipv6Address: option<ipv6Address>,
@as("PrivateIPv4Address") privateIPv4Address: option<privateIPv4Address>,
@as("AllocationId") allocationId: option<allocationId>,
@as("IpAddress") ipAddress: option<ipAddress>
}
type listenerArns = array<listenerArn>
type listOfString = array<stringValue>
type limit = {
@as("Max") max: option<max>,
@as("Name") name: option<name>
}
type fixedResponseActionConfig = {
@as("ContentType") contentType: option<fixedResponseActionContentType>,
@as("StatusCode") statusCode: fixedResponseActionStatusCode,
@as("MessageBody") messageBody: option<fixedResponseActionMessage>
}
type cipher = {
@as("Priority") priority: option<cipherPriority>,
@as("Name") name: option<cipherName>
}
type certificate = {
@as("IsDefault") isDefault: option<default>,
@as("CertificateArn") certificateArn: option<certificateArn>
}
type authenticateOidcActionAuthenticationRequestExtraParams = Js.Dict.t< authenticateOidcActionAuthenticationRequestParamValue>
type authenticateCognitoActionAuthenticationRequestExtraParams = Js.Dict.t< authenticateCognitoActionAuthenticationRequestParamValue>
type alpnPolicyName = array<alpnPolicyValue>
type targetHealthDescription = {
@as("TargetHealth") targetHealth: option<targetHealth>,
@as("HealthCheckPort") healthCheckPort: option<healthCheckPort>,
@as("Target") target: option<targetDescription>
}
type targetGroupList = array<targetGroupTuple>
type targetGroupAttributes = array<targetGroupAttribute>
type targetGroup = {
@as("ProtocolVersion") protocolVersion: option<protocolVersion>,
@as("TargetType") targetType: option<targetTypeEnum>,
@as("LoadBalancerArns") loadBalancerArns: option<loadBalancerArns>,
@as("Matcher") matcher: option<matcher>,
@as("HealthCheckPath") healthCheckPath: option<path>,
@as("UnhealthyThresholdCount") unhealthyThresholdCount: option<healthCheckThresholdCount>,
@as("HealthyThresholdCount") healthyThresholdCount: option<healthCheckThresholdCount>,
@as("HealthCheckTimeoutSeconds") healthCheckTimeoutSeconds: option<healthCheckTimeoutSeconds>,
@as("HealthCheckIntervalSeconds") healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
@as("HealthCheckEnabled") healthCheckEnabled: option<healthCheckEnabled>,
@as("HealthCheckPort") healthCheckPort: option<healthCheckPort>,
@as("HealthCheckProtocol") healthCheckProtocol: option<protocolEnum>,
@as("VpcId") vpcId: option<vpcId>,
@as("Port") port: option<port>,
@as("Protocol") protocol: option<protocolEnum>,
@as("TargetGroupName") targetGroupName: option<targetGroupName>,
@as("TargetGroupArn") targetGroupArn: option<targetGroupArn>
}
type targetDescriptions = array<targetDescription>
type tagList_ = array<tag>
type subnetMappings = array<subnetMapping>
type sourceIpConditionConfig = {
@as("Values") values: option<listOfString>
}
type rulePriorityList = array<rulePriorityPair>
type queryStringKeyValuePairList = array<queryStringKeyValuePair>
type pathPatternConditionConfig = {
@as("Values") values: option<listOfString>
}
type loadBalancerAttributes = array<loadBalancerAttribute>
type loadBalancerAddresses = array<loadBalancerAddress>
type limits = array<limit>
type httpRequestMethodConditionConfig = {
@as("Values") values: option<listOfString>
}
type httpHeaderConditionConfig = {
@as("Values") values: option<listOfString>,
@as("HttpHeaderName") httpHeaderName: option<httpHeaderConditionName>
}
type hostHeaderConditionConfig = {
@as("Values") values: option<listOfString>
}
type ciphers = array<cipher>
type certificateList = array<certificate>
type authenticateOidcActionConfig = {
@as("UseExistingClientSecret") useExistingClientSecret: option<authenticateOidcActionUseExistingClientSecret>,
@as("OnUnauthenticatedRequest") onUnauthenticatedRequest: option<authenticateOidcActionConditionalBehaviorEnum>,
@as("AuthenticationRequestExtraParams") authenticationRequestExtraParams: option<authenticateOidcActionAuthenticationRequestExtraParams>,
@as("SessionTimeout") sessionTimeout: option<authenticateOidcActionSessionTimeout>,
@as("Scope") scope: option<authenticateOidcActionScope>,
@as("SessionCookieName") sessionCookieName: option<authenticateOidcActionSessionCookieName>,
@as("ClientSecret") clientSecret: option<authenticateOidcActionClientSecret>,
@as("ClientId") clientId: authenticateOidcActionClientId,
@as("UserInfoEndpoint") userInfoEndpoint: authenticateOidcActionUserInfoEndpoint,
@as("TokenEndpoint") tokenEndpoint: authenticateOidcActionTokenEndpoint,
@as("AuthorizationEndpoint") authorizationEndpoint: authenticateOidcActionAuthorizationEndpoint,
@as("Issuer") issuer: authenticateOidcActionIssuer
}
type authenticateCognitoActionConfig = {
@as("OnUnauthenticatedRequest") onUnauthenticatedRequest: option<authenticateCognitoActionConditionalBehaviorEnum>,
@as("AuthenticationRequestExtraParams") authenticationRequestExtraParams: option<authenticateCognitoActionAuthenticationRequestExtraParams>,
@as("SessionTimeout") sessionTimeout: option<authenticateCognitoActionSessionTimeout>,
@as("Scope") scope: option<authenticateCognitoActionScope>,
@as("SessionCookieName") sessionCookieName: option<authenticateCognitoActionSessionCookieName>,
@as("UserPoolDomain") userPoolDomain: authenticateCognitoActionUserPoolDomain,
@as("UserPoolClientId") userPoolClientId: authenticateCognitoActionUserPoolClientId,
@as("UserPoolArn") userPoolArn: authenticateCognitoActionUserPoolArn
}
type targetHealthDescriptions = array<targetHealthDescription>
type targetGroups = array<targetGroup>
type tagDescription = {
@as("Tags") tags: option<tagList_>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
type sslPolicy = {
@as("Name") name: option<sslPolicyName>,
@as("Ciphers") ciphers: option<ciphers>,
@as("SslProtocols") sslProtocols: option<sslProtocols>
}
type queryStringConditionConfig = {
@as("Values") values: option<queryStringKeyValuePairList>
}
type forwardActionConfig = {
@as("TargetGroupStickinessConfig") targetGroupStickinessConfig: option<targetGroupStickinessConfig>,
@as("TargetGroups") targetGroups: option<targetGroupList>
}
type availabilityZone = {
@as("LoadBalancerAddresses") loadBalancerAddresses: option<loadBalancerAddresses>,
@as("OutpostId") outpostId: option<outpostId>,
@as("SubnetId") subnetId: option<subnetId>,
@as("ZoneName") zoneName: option<zoneName>
}
type tagDescriptions = array<tagDescription>
type sslPolicies = array<sslPolicy>
type ruleCondition = {
@as("SourceIpConfig") sourceIpConfig: option<sourceIpConditionConfig>,
@as("HttpRequestMethodConfig") httpRequestMethodConfig: option<httpRequestMethodConditionConfig>,
@as("QueryStringConfig") queryStringConfig: option<queryStringConditionConfig>,
@as("HttpHeaderConfig") httpHeaderConfig: option<httpHeaderConditionConfig>,
@as("PathPatternConfig") pathPatternConfig: option<pathPatternConditionConfig>,
@as("HostHeaderConfig") hostHeaderConfig: option<hostHeaderConditionConfig>,
@as("Values") values: option<listOfString>,
@as("Field") field: option<conditionFieldName>
}
type availabilityZones = array<availabilityZone>
type action = {
@as("ForwardConfig") forwardConfig: option<forwardActionConfig>,
@as("FixedResponseConfig") fixedResponseConfig: option<fixedResponseActionConfig>,
@as("RedirectConfig") redirectConfig: option<redirectActionConfig>,
@as("Order") order: option<actionOrder>,
@as("AuthenticateCognitoConfig") authenticateCognitoConfig: option<authenticateCognitoActionConfig>,
@as("AuthenticateOidcConfig") authenticateOidcConfig: option<authenticateOidcActionConfig>,
@as("TargetGroupArn") targetGroupArn: option<targetGroupArn>,
@as("Type") type_: actionTypeEnum
}
type ruleConditionList = array<ruleCondition>
type loadBalancer = {
@as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: option<customerOwnedIpv4Pool>,
@as("IpAddressType") ipAddressType: option<ipAddressType>,
@as("SecurityGroups") securityGroups: option<securityGroups>,
@as("AvailabilityZones") availabilityZones: option<availabilityZones>,
@as("Type") type_: option<loadBalancerTypeEnum>,
@as("State") state: option<loadBalancerState>,
@as("VpcId") vpcId: option<vpcId>,
@as("Scheme") scheme: option<loadBalancerSchemeEnum>,
@as("LoadBalancerName") loadBalancerName: option<loadBalancerName>,
@as("CreatedTime") createdTime: option<createdTime>,
@as("CanonicalHostedZoneId") canonicalHostedZoneId: option<canonicalHostedZoneId>,
@as("DNSName") dnsname: option<dnsname>,
@as("LoadBalancerArn") loadBalancerArn: option<loadBalancerArn>
}
type actions = array<action>
type rule = {
@as("IsDefault") isDefault: option<isDefault>,
@as("Actions") actions: option<actions>,
@as("Conditions") conditions: option<ruleConditionList>,
@as("Priority") priority: option<string_>,
@as("RuleArn") ruleArn: option<ruleArn>
}
type loadBalancers = array<loadBalancer>
type listener = {
@as("AlpnPolicy") alpnPolicy: option<alpnPolicyName>,
@as("DefaultActions") defaultActions: option<actions>,
@as("SslPolicy") sslPolicy: option<sslPolicyName>,
@as("Certificates") certificates: option<certificateList>,
@as("Protocol") protocol: option<protocolEnum>,
@as("Port") port: option<port>,
@as("LoadBalancerArn") loadBalancerArn: option<loadBalancerArn>,
@as("ListenerArn") listenerArn: option<listenerArn>
}
type rules = array<rule>
type listeners = array<listener>
type awsServiceClient;
@module("@aws-sdk/client-elasticloadbalancing") @new external createClient: unit => awsServiceClient = "ElasticLoadBalancingV2Client";
module SetIpAddressType = {
  type t;
  type request = {
@as("IpAddressType") ipAddressType: ipAddressType,
@as("LoadBalancerArn") loadBalancerArn: loadBalancerArn
}
  type response = {
@as("IpAddressType") ipAddressType: option<ipAddressType>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "SetIpAddressTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTargetGroup = {
  type t;
  type request = {
@as("TargetGroupArn") targetGroupArn: targetGroupArn
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DeleteTargetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRule = {
  type t;
  type request = {
@as("RuleArn") ruleArn: ruleArn
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DeleteRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLoadBalancer = {
  type t;
  type request = {
@as("LoadBalancerArn") loadBalancerArn: loadBalancerArn
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DeleteLoadBalancerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteListener = {
  type t;
  type request = {
@as("ListenerArn") listenerArn: listenerArn
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DeleteListenerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetSecurityGroups = {
  type t;
  type request = {
@as("SecurityGroups") securityGroups: securityGroups,
@as("LoadBalancerArn") loadBalancerArn: loadBalancerArn
}
  type response = {
@as("SecurityGroupIds") securityGroupIds: option<securityGroups>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "SetSecurityGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveTags = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeys,
@as("ResourceArns") resourceArns: resourceArns
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "RemoveTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveListenerCertificates = {
  type t;
  type request = {
@as("Certificates") certificates: certificateList,
@as("ListenerArn") listenerArn: listenerArn
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "RemoveListenerCertificatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterTargets = {
  type t;
  type request = {
@as("Targets") targets: targetDescriptions,
@as("TargetGroupArn") targetGroupArn: targetGroupArn
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "RegisterTargetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyTargetGroupAttributes = {
  type t;
  type request = {
@as("Attributes") attributes: targetGroupAttributes,
@as("TargetGroupArn") targetGroupArn: targetGroupArn
}
  type response = {
@as("Attributes") attributes: option<targetGroupAttributes>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "ModifyTargetGroupAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyLoadBalancerAttributes = {
  type t;
  type request = {
@as("Attributes") attributes: loadBalancerAttributes,
@as("LoadBalancerArn") loadBalancerArn: loadBalancerArn
}
  type response = {
@as("Attributes") attributes: option<loadBalancerAttributes>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "ModifyLoadBalancerAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTargetGroupAttributes = {
  type t;
  type request = {
@as("TargetGroupArn") targetGroupArn: targetGroupArn
}
  type response = {
@as("Attributes") attributes: option<targetGroupAttributes>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DescribeTargetGroupAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancerAttributes = {
  type t;
  type request = {
@as("LoadBalancerArn") loadBalancerArn: loadBalancerArn
}
  type response = {
@as("Attributes") attributes: option<loadBalancerAttributes>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DescribeLoadBalancerAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeListenerCertificates = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("Marker") marker: option<marker>,
@as("ListenerArn") listenerArn: listenerArn
}
  type response = {
@as("NextMarker") nextMarker: option<marker>,
@as("Certificates") certificates: option<certificateList>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DescribeListenerCertificatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountLimits = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("Marker") marker: option<marker>
}
  type response = {
@as("NextMarker") nextMarker: option<marker>,
@as("Limits") limits: option<limits>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DescribeAccountLimitsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterTargets = {
  type t;
  type request = {
@as("Targets") targets: targetDescriptions,
@as("TargetGroupArn") targetGroupArn: targetGroupArn
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DeregisterTargetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddTags = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceArns") resourceArns: resourceArns
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "AddTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddListenerCertificates = {
  type t;
  type request = {
@as("Certificates") certificates: certificateList,
@as("ListenerArn") listenerArn: listenerArn
}
  type response = {
@as("Certificates") certificates: option<certificateList>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "AddListenerCertificatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyTargetGroup = {
  type t;
  type request = {
@as("Matcher") matcher: option<matcher>,
@as("UnhealthyThresholdCount") unhealthyThresholdCount: option<healthCheckThresholdCount>,
@as("HealthyThresholdCount") healthyThresholdCount: option<healthCheckThresholdCount>,
@as("HealthCheckTimeoutSeconds") healthCheckTimeoutSeconds: option<healthCheckTimeoutSeconds>,
@as("HealthCheckIntervalSeconds") healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
@as("HealthCheckEnabled") healthCheckEnabled: option<healthCheckEnabled>,
@as("HealthCheckPath") healthCheckPath: option<path>,
@as("HealthCheckPort") healthCheckPort: option<healthCheckPort>,
@as("HealthCheckProtocol") healthCheckProtocol: option<protocolEnum>,
@as("TargetGroupArn") targetGroupArn: targetGroupArn
}
  type response = {
@as("TargetGroups") targetGroups: option<targetGroups>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "ModifyTargetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTargetHealth = {
  type t;
  type request = {
@as("Targets") targets: option<targetDescriptions>,
@as("TargetGroupArn") targetGroupArn: targetGroupArn
}
  type response = {
@as("TargetHealthDescriptions") targetHealthDescriptions: option<targetHealthDescriptions>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DescribeTargetHealthCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTargetGroups = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("Marker") marker: option<marker>,
@as("Names") names: option<targetGroupNames>,
@as("TargetGroupArns") targetGroupArns: option<targetGroupArns>,
@as("LoadBalancerArn") loadBalancerArn: option<loadBalancerArn>
}
  type response = {
@as("NextMarker") nextMarker: option<marker>,
@as("TargetGroups") targetGroups: option<targetGroups>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DescribeTargetGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTargetGroup = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("TargetType") targetType: option<targetTypeEnum>,
@as("Matcher") matcher: option<matcher>,
@as("UnhealthyThresholdCount") unhealthyThresholdCount: option<healthCheckThresholdCount>,
@as("HealthyThresholdCount") healthyThresholdCount: option<healthCheckThresholdCount>,
@as("HealthCheckTimeoutSeconds") healthCheckTimeoutSeconds: option<healthCheckTimeoutSeconds>,
@as("HealthCheckIntervalSeconds") healthCheckIntervalSeconds: option<healthCheckIntervalSeconds>,
@as("HealthCheckPath") healthCheckPath: option<path>,
@as("HealthCheckEnabled") healthCheckEnabled: option<healthCheckEnabled>,
@as("HealthCheckPort") healthCheckPort: option<healthCheckPort>,
@as("HealthCheckProtocol") healthCheckProtocol: option<protocolEnum>,
@as("VpcId") vpcId: option<vpcId>,
@as("Port") port: option<port>,
@as("ProtocolVersion") protocolVersion: option<protocolVersion>,
@as("Protocol") protocol: option<protocolEnum>,
@as("Name") name: targetGroupName
}
  type response = {
@as("TargetGroups") targetGroups: option<targetGroups>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "CreateTargetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetSubnets = {
  type t;
  type request = {
@as("IpAddressType") ipAddressType: option<ipAddressType>,
@as("SubnetMappings") subnetMappings: option<subnetMappings>,
@as("Subnets") subnets: option<subnets>,
@as("LoadBalancerArn") loadBalancerArn: loadBalancerArn
}
  type response = {
@as("IpAddressType") ipAddressType: option<ipAddressType>,
@as("AvailabilityZones") availabilityZones: option<availabilityZones>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "SetSubnetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("ResourceArns") resourceArns: resourceArns
}
  type response = {
@as("TagDescriptions") tagDescriptions: option<tagDescriptions>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DescribeTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSSLPolicies = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("Marker") marker: option<marker>,
@as("Names") names: option<sslPolicyNames>
}
  type response = {
@as("NextMarker") nextMarker: option<marker>,
@as("SslPolicies") sslPolicies: option<sslPolicies>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DescribeSSLPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancers = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("Marker") marker: option<marker>,
@as("Names") names: option<loadBalancerNames>,
@as("LoadBalancerArns") loadBalancerArns: option<loadBalancerArns>
}
  type response = {
@as("NextMarker") nextMarker: option<marker>,
@as("LoadBalancers") loadBalancers: option<loadBalancers>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DescribeLoadBalancersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLoadBalancer = {
  type t;
  type request = {
@as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: option<customerOwnedIpv4Pool>,
@as("IpAddressType") ipAddressType: option<ipAddressType>,
@as("Type") type_: option<loadBalancerTypeEnum>,
@as("Tags") tags: option<tagList_>,
@as("Scheme") scheme: option<loadBalancerSchemeEnum>,
@as("SecurityGroups") securityGroups: option<securityGroups>,
@as("SubnetMappings") subnetMappings: option<subnetMappings>,
@as("Subnets") subnets: option<subnets>,
@as("Name") name: loadBalancerName
}
  type response = {
@as("LoadBalancers") loadBalancers: option<loadBalancers>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "CreateLoadBalancerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetRulePriorities = {
  type t;
  type request = {
@as("RulePriorities") rulePriorities: rulePriorityList
}
  type response = {
@as("Rules") rules: option<rules>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "SetRulePrioritiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyRule = {
  type t;
  type request = {
@as("Actions") actions: option<actions>,
@as("Conditions") conditions: option<ruleConditionList>,
@as("RuleArn") ruleArn: ruleArn
}
  type response = {
@as("Rules") rules: option<rules>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "ModifyRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyListener = {
  type t;
  type request = {
@as("AlpnPolicy") alpnPolicy: option<alpnPolicyName>,
@as("DefaultActions") defaultActions: option<actions>,
@as("Certificates") certificates: option<certificateList>,
@as("SslPolicy") sslPolicy: option<sslPolicyName>,
@as("Protocol") protocol: option<protocolEnum>,
@as("Port") port: option<port>,
@as("ListenerArn") listenerArn: listenerArn
}
  type response = {
@as("Listeners") listeners: option<listeners>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "ModifyListenerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRules = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("Marker") marker: option<marker>,
@as("RuleArns") ruleArns: option<ruleArns>,
@as("ListenerArn") listenerArn: option<listenerArn>
}
  type response = {
@as("NextMarker") nextMarker: option<marker>,
@as("Rules") rules: option<rules>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DescribeRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeListeners = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("Marker") marker: option<marker>,
@as("ListenerArns") listenerArns: option<listenerArns>,
@as("LoadBalancerArn") loadBalancerArn: option<loadBalancerArn>
}
  type response = {
@as("NextMarker") nextMarker: option<marker>,
@as("Listeners") listeners: option<listeners>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "DescribeListenersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRule = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("Actions") actions: actions,
@as("Priority") priority: rulePriority,
@as("Conditions") conditions: ruleConditionList,
@as("ListenerArn") listenerArn: listenerArn
}
  type response = {
@as("Rules") rules: option<rules>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "CreateRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateListener = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("AlpnPolicy") alpnPolicy: option<alpnPolicyName>,
@as("DefaultActions") defaultActions: actions,
@as("Certificates") certificates: option<certificateList>,
@as("SslPolicy") sslPolicy: option<sslPolicyName>,
@as("Port") port: option<port>,
@as("Protocol") protocol: option<protocolEnum>,
@as("LoadBalancerArn") loadBalancerArn: loadBalancerArn
}
  type response = {
@as("Listeners") listeners: option<listeners>
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (request) => t = "CreateListenerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
