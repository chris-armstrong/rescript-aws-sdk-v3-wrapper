type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type zoneName = string
type vpcId = string
type targetTypeEnum = [@as("lambda") #lambda | @as("ip") #ip | @as("instance") #instance]
type targetId = string
type targetHealthStateEnum = [@as("unavailable") #unavailable | @as("draining") #draining | @as("unused") #unused | @as("unhealthy") #unhealthy | @as("healthy") #healthy | @as("initial") #initial]
type targetHealthReasonEnum = [@as("Elb.InternalError") #Elb_InternalError | @as("Target.HealthCheckDisabled") #Target_HealthCheckDisabled | @as("Target.IpUnusable") #Target_IpUnusable | @as("Target.InvalidState") #Target_InvalidState | @as("Target.DeregistrationInProgress") #Target_DeregistrationInProgress | @as("Target.NotInUse") #Target_NotInUse | @as("Target.NotRegistered") #Target_NotRegistered | @as("Target.FailedHealthChecks") #Target_FailedHealthChecks | @as("Target.Timeout") #Target_Timeout | @as("Target.ResponseCodeMismatch") #Target_ResponseCodeMismatch | @as("Elb.InitialHealthChecking") #Elb_InitialHealthChecking | @as("Elb.RegistrationInProgress") #Elb_RegistrationInProgress]
type targetGroupWeight = int;
type targetGroupStickinessEnabled = bool;
type targetGroupStickinessDurationSeconds = int;
type targetGroupName = string
type targetGroupAttributeValue = string
type targetGroupAttributeKey = string
type targetGroupArn = string
type tagValue = string
type tagKey = string
type subnetId = string
type stringValue = string
type amazonawsString = string
type stateReason = string
type sslProtocol = string
type sslPolicyName = string
type securityGroupId = string
type rulePriority = int;
type ruleArn = string
type resourceArn = string
type redirectActionStatusCodeEnum = [@as("HTTP_302") #HTTP_302 | @as("HTTP_301") #HTTP_301]
type redirectActionQuery = string
type redirectActionProtocol = string
type redirectActionPort = string
type redirectActionPath = string
type redirectActionHost = string
type protocolVersion = string
type protocolEnum = [@as("GENEVE") #GENEVE | @as("TCP_UDP") #TCP_UDP | @as("UDP") #UDP | @as("TLS") #TLS | @as("TCP") #TCP | @as("HTTPS") #HTTPS | @as("HTTP") #HTTP]
type privateIPv4Address = string
type port = int;
type path = string
type pageSize = int;
type outpostId = string
type name = string
type max = string
type marker = string
type loadBalancerTypeEnum = [@as("gateway") #gateway | @as("network") #network | @as("application") #application]
type loadBalancerStateEnum = [@as("failed") #failed | @as("active_impaired") #active_impaired | @as("provisioning") #provisioning | @as("active") #active]
type loadBalancerSchemeEnum = [@as("internal") #internal | @as("internet-facing") #internet_facing]
type loadBalancerName = string
type loadBalancerAttributeValue = string
type loadBalancerAttributeKey = string
type loadBalancerArn = string
type listenerArn = string
type isDefault = bool;
type ipAddressType = [@as("dualstack") #dualstack | @as("ipv4") #ipv4]
type ipAddress = string
type iPv6Address = string
type httpHeaderConditionName = string
type httpCode = string
type healthCheckTimeoutSeconds = int;
type healthCheckThresholdCount = int;
type healthCheckPort = string
type healthCheckIntervalSeconds = int;
type healthCheckEnabled = bool;
type grpcCode = string
type fixedResponseActionStatusCode = string
type fixedResponseActionMessage = string
type fixedResponseActionContentType = string
type errorDescription = string
type description = string
type default = bool;
type dNSName = string
type customerOwnedIpv4Pool = string
type createdTime = Js.Date.t;
type conditionFieldName = string
type cipherPriority = int;
type cipherName = string
type certificateArn = string
type canonicalHostedZoneId = string
type authenticateOidcActionUserInfoEndpoint = string
type authenticateOidcActionUseExistingClientSecret = bool;
type authenticateOidcActionTokenEndpoint = string
type authenticateOidcActionSessionTimeout = float;
type authenticateOidcActionSessionCookieName = string
type authenticateOidcActionScope = string
type authenticateOidcActionIssuer = string
type authenticateOidcActionConditionalBehaviorEnum = [@as("authenticate") #authenticate | @as("allow") #allow | @as("deny") #deny]
type authenticateOidcActionClientSecret = string
type authenticateOidcActionClientId = string
type authenticateOidcActionAuthorizationEndpoint = string
type authenticateOidcActionAuthenticationRequestParamValue = string
type authenticateOidcActionAuthenticationRequestParamName = string
type authenticateCognitoActionUserPoolDomain = string
type authenticateCognitoActionUserPoolClientId = string
type authenticateCognitoActionUserPoolArn = string
type authenticateCognitoActionSessionTimeout = float;
type authenticateCognitoActionSessionCookieName = string
type authenticateCognitoActionScope = string
type authenticateCognitoActionConditionalBehaviorEnum = [@as("authenticate") #authenticate | @as("allow") #allow | @as("deny") #deny]
type authenticateCognitoActionAuthenticationRequestParamValue = string
type authenticateCognitoActionAuthenticationRequestParamName = string
type alpnPolicyValue = string
type allocationId = string
type actionTypeEnum = [@as("fixed-response") #fixed_response | @as("redirect") #redirect | @as("authenticate-cognito") #authenticate_cognito | @as("authenticate-oidc") #authenticate_oidc | @as("forward") #forward]
type actionOrder = int;
type targetHealth = {
@as("Description") description: description,
@as("Reason") reason: targetHealthReasonEnum,
@as("State") state: targetHealthStateEnum
}
type targetGroupTuple = {
@as("Weight") weight: targetGroupWeight,
@as("TargetGroupArn") targetGroupArn: targetGroupArn
}
type targetGroupStickinessConfig = {
@as("DurationSeconds") durationSeconds: targetGroupStickinessDurationSeconds,
@as("Enabled") enabled: targetGroupStickinessEnabled
}
type targetGroupNames = array<targetGroupName>
type targetGroupAttribute = {
@as("Value") value: targetGroupAttributeValue,
@as("Key") key: targetGroupAttributeKey
}
type targetGroupArns = array<targetGroupArn>
type targetDescription = {
@as("AvailabilityZone") availabilityZone: zoneName,
@as("Port") port: port,
@as("Id") id: option<targetId>
}
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type subnets = array<subnetId>
type subnetMapping = {
@as("IPv6Address") iPv6Address: iPv6Address,
@as("PrivateIPv4Address") privateIPv4Address: privateIPv4Address,
@as("AllocationId") allocationId: allocationId,
@as("SubnetId") subnetId: subnetId
}
type sslProtocols = array<sslProtocol>
type sslPolicyNames = array<sslPolicyName>
type securityGroups = array<securityGroupId>
type rulePriorityPair = {
@as("Priority") priority: rulePriority,
@as("RuleArn") ruleArn: ruleArn
}
type ruleArns = array<ruleArn>
type resourceArns = array<resourceArn>
type redirectActionConfig = {
@as("StatusCode") statusCode: option<redirectActionStatusCodeEnum>,
@as("Query") query: redirectActionQuery,
@as("Path") path: redirectActionPath,
@as("Host") host: redirectActionHost,
@as("Port") port: redirectActionPort,
@as("Protocol") protocol: redirectActionProtocol
}
type queryStringKeyValuePair = {
@as("Value") value: stringValue,
@as("Key") key: stringValue
}
type matcher = {
@as("GrpcCode") grpcCode: grpcCode,
@as("HttpCode") httpCode: httpCode
}
type loadBalancerState = {
@as("Reason") reason: stateReason,
@as("Code") code: loadBalancerStateEnum
}
type loadBalancerNames = array<loadBalancerName>
type loadBalancerAttribute = {
@as("Value") value: loadBalancerAttributeValue,
@as("Key") key: loadBalancerAttributeKey
}
type loadBalancerArns = array<loadBalancerArn>
type loadBalancerAddress = {
@as("IPv6Address") iPv6Address: iPv6Address,
@as("PrivateIPv4Address") privateIPv4Address: privateIPv4Address,
@as("AllocationId") allocationId: allocationId,
@as("IpAddress") ipAddress: ipAddress
}
type listenerArns = array<listenerArn>
type listOfString = array<stringValue>
type limit = {
@as("Max") max: max,
@as("Name") name: name
}
type fixedResponseActionConfig = {
@as("ContentType") contentType: fixedResponseActionContentType,
@as("StatusCode") statusCode: option<fixedResponseActionStatusCode>,
@as("MessageBody") messageBody: fixedResponseActionMessage
}
type cipher = {
@as("Priority") priority: cipherPriority,
@as("Name") name: cipherName
}
type certificate = {
@as("IsDefault") isDefault: default,
@as("CertificateArn") certificateArn: certificateArn
}
type authenticateOidcActionAuthenticationRequestExtraParams = Js.Dict.t< authenticateOidcActionAuthenticationRequestParamValue>
type authenticateCognitoActionAuthenticationRequestExtraParams = Js.Dict.t< authenticateCognitoActionAuthenticationRequestParamValue>
type alpnPolicyName = array<alpnPolicyValue>
type targetHealthDescription = {
@as("TargetHealth") targetHealth: targetHealth,
@as("HealthCheckPort") healthCheckPort: healthCheckPort,
@as("Target") target: targetDescription
}
type targetGroupList = array<targetGroupTuple>
type targetGroupAttributes = array<targetGroupAttribute>
type targetGroup = {
@as("ProtocolVersion") protocolVersion: protocolVersion,
@as("TargetType") targetType: targetTypeEnum,
@as("LoadBalancerArns") loadBalancerArns: loadBalancerArns,
@as("Matcher") matcher: matcher,
@as("HealthCheckPath") healthCheckPath: path,
@as("UnhealthyThresholdCount") unhealthyThresholdCount: healthCheckThresholdCount,
@as("HealthyThresholdCount") healthyThresholdCount: healthCheckThresholdCount,
@as("HealthCheckTimeoutSeconds") healthCheckTimeoutSeconds: healthCheckTimeoutSeconds,
@as("HealthCheckIntervalSeconds") healthCheckIntervalSeconds: healthCheckIntervalSeconds,
@as("HealthCheckEnabled") healthCheckEnabled: healthCheckEnabled,
@as("HealthCheckPort") healthCheckPort: healthCheckPort,
@as("HealthCheckProtocol") healthCheckProtocol: protocolEnum,
@as("VpcId") vpcId: vpcId,
@as("Port") port: port,
@as("Protocol") protocol: protocolEnum,
@as("TargetGroupName") targetGroupName: targetGroupName,
@as("TargetGroupArn") targetGroupArn: targetGroupArn
}
type targetDescriptions = array<targetDescription>
type tagList = array<tag>
type subnetMappings = array<subnetMapping>
type sourceIpConditionConfig = {
@as("Values") values: listOfString
}
type rulePriorityList = array<rulePriorityPair>
type queryStringKeyValuePairList = array<queryStringKeyValuePair>
type pathPatternConditionConfig = {
@as("Values") values: listOfString
}
type loadBalancerAttributes = array<loadBalancerAttribute>
type loadBalancerAddresses = array<loadBalancerAddress>
type limits = array<limit>
type httpRequestMethodConditionConfig = {
@as("Values") values: listOfString
}
type httpHeaderConditionConfig = {
@as("Values") values: listOfString,
@as("HttpHeaderName") httpHeaderName: httpHeaderConditionName
}
type hostHeaderConditionConfig = {
@as("Values") values: listOfString
}
type ciphers = array<cipher>
type certificateList = array<certificate>
type authenticateOidcActionConfig = {
@as("UseExistingClientSecret") useExistingClientSecret: authenticateOidcActionUseExistingClientSecret,
@as("OnUnauthenticatedRequest") onUnauthenticatedRequest: authenticateOidcActionConditionalBehaviorEnum,
@as("AuthenticationRequestExtraParams") authenticationRequestExtraParams: authenticateOidcActionAuthenticationRequestExtraParams,
@as("SessionTimeout") sessionTimeout: authenticateOidcActionSessionTimeout,
@as("Scope") scope: authenticateOidcActionScope,
@as("SessionCookieName") sessionCookieName: authenticateOidcActionSessionCookieName,
@as("ClientSecret") clientSecret: authenticateOidcActionClientSecret,
@as("ClientId") clientId: option<authenticateOidcActionClientId>,
@as("UserInfoEndpoint") userInfoEndpoint: option<authenticateOidcActionUserInfoEndpoint>,
@as("TokenEndpoint") tokenEndpoint: option<authenticateOidcActionTokenEndpoint>,
@as("AuthorizationEndpoint") authorizationEndpoint: option<authenticateOidcActionAuthorizationEndpoint>,
@as("Issuer") issuer: option<authenticateOidcActionIssuer>
}
type authenticateCognitoActionConfig = {
@as("OnUnauthenticatedRequest") onUnauthenticatedRequest: authenticateCognitoActionConditionalBehaviorEnum,
@as("AuthenticationRequestExtraParams") authenticationRequestExtraParams: authenticateCognitoActionAuthenticationRequestExtraParams,
@as("SessionTimeout") sessionTimeout: authenticateCognitoActionSessionTimeout,
@as("Scope") scope: authenticateCognitoActionScope,
@as("SessionCookieName") sessionCookieName: authenticateCognitoActionSessionCookieName,
@as("UserPoolDomain") userPoolDomain: option<authenticateCognitoActionUserPoolDomain>,
@as("UserPoolClientId") userPoolClientId: option<authenticateCognitoActionUserPoolClientId>,
@as("UserPoolArn") userPoolArn: option<authenticateCognitoActionUserPoolArn>
}
type targetHealthDescriptions = array<targetHealthDescription>
type targetGroups = array<targetGroup>
type tagDescription = {
@as("Tags") tags: tagList,
@as("ResourceArn") resourceArn: resourceArn
}
type sslPolicy = {
@as("Name") name: sslPolicyName,
@as("Ciphers") ciphers: ciphers,
@as("SslProtocols") sslProtocols: sslProtocols
}
type queryStringConditionConfig = {
@as("Values") values: queryStringKeyValuePairList
}
type forwardActionConfig = {
@as("TargetGroupStickinessConfig") targetGroupStickinessConfig: targetGroupStickinessConfig,
@as("TargetGroups") targetGroups: targetGroupList
}
type availabilityZone = {
@as("LoadBalancerAddresses") loadBalancerAddresses: loadBalancerAddresses,
@as("OutpostId") outpostId: outpostId,
@as("SubnetId") subnetId: subnetId,
@as("ZoneName") zoneName: zoneName
}
type tagDescriptions = array<tagDescription>
type sslPolicies = array<sslPolicy>
type ruleCondition = {
@as("SourceIpConfig") sourceIpConfig: sourceIpConditionConfig,
@as("HttpRequestMethodConfig") httpRequestMethodConfig: httpRequestMethodConditionConfig,
@as("QueryStringConfig") queryStringConfig: queryStringConditionConfig,
@as("HttpHeaderConfig") httpHeaderConfig: httpHeaderConditionConfig,
@as("PathPatternConfig") pathPatternConfig: pathPatternConditionConfig,
@as("HostHeaderConfig") hostHeaderConfig: hostHeaderConditionConfig,
@as("Values") values: listOfString,
@as("Field") field: conditionFieldName
}
type availabilityZones = array<availabilityZone>
type action = {
@as("ForwardConfig") forwardConfig: forwardActionConfig,
@as("FixedResponseConfig") fixedResponseConfig: fixedResponseActionConfig,
@as("RedirectConfig") redirectConfig: redirectActionConfig,
@as("Order") order: actionOrder,
@as("AuthenticateCognitoConfig") authenticateCognitoConfig: authenticateCognitoActionConfig,
@as("AuthenticateOidcConfig") authenticateOidcConfig: authenticateOidcActionConfig,
@as("TargetGroupArn") targetGroupArn: targetGroupArn,
@as("Type") type_: option<actionTypeEnum>
}
type ruleConditionList = array<ruleCondition>
type loadBalancer = {
@as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: customerOwnedIpv4Pool,
@as("IpAddressType") ipAddressType: ipAddressType,
@as("SecurityGroups") securityGroups: securityGroups,
@as("AvailabilityZones") availabilityZones: availabilityZones,
@as("Type") type_: loadBalancerTypeEnum,
@as("State") state: loadBalancerState,
@as("VpcId") vpcId: vpcId,
@as("Scheme") scheme: loadBalancerSchemeEnum,
@as("LoadBalancerName") loadBalancerName: loadBalancerName,
@as("CreatedTime") createdTime: createdTime,
@as("CanonicalHostedZoneId") canonicalHostedZoneId: canonicalHostedZoneId,
@as("DNSName") dNSName: dNSName,
@as("LoadBalancerArn") loadBalancerArn: loadBalancerArn
}
type actions = array<action>
type rule = {
@as("IsDefault") isDefault: isDefault,
@as("Actions") actions: actions,
@as("Conditions") conditions: ruleConditionList,
@as("Priority") priority: amazonawsString,
@as("RuleArn") ruleArn: ruleArn
}
type loadBalancers = array<loadBalancer>
type listener = {
@as("AlpnPolicy") alpnPolicy: alpnPolicyName,
@as("DefaultActions") defaultActions: actions,
@as("SslPolicy") sslPolicy: sslPolicyName,
@as("Certificates") certificates: certificateList,
@as("Protocol") protocol: protocolEnum,
@as("Port") port: port,
@as("LoadBalancerArn") loadBalancerArn: loadBalancerArn,
@as("ListenerArn") listenerArn: listenerArn
}
type rules = array<rule>
type listeners = array<listener>
type clientType;
@module("@aws-sdk/client-elasticloadbalancing") @new external createClient: unit => clientType = "ElasticLoadBalancingV2Client";
module SetIpAddressType = {
  type t;
  type request = {
@as("IpAddressType") ipAddressType: option<ipAddressType>,
@as("LoadBalancerArn") loadBalancerArn: option<loadBalancerArn>
}
  type response = {
@as("IpAddressType") ipAddressType: ipAddressType
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "SetIpAddressTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTargetGroup = {
  type t;
  type request = {
@as("TargetGroupArn") targetGroupArn: option<targetGroupArn>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DeleteTargetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRule = {
  type t;
  type request = {
@as("RuleArn") ruleArn: option<ruleArn>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DeleteRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLoadBalancer = {
  type t;
  type request = {
@as("LoadBalancerArn") loadBalancerArn: option<loadBalancerArn>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DeleteLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteListener = {
  type t;
  type request = {
@as("ListenerArn") listenerArn: option<listenerArn>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DeleteListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetSecurityGroups = {
  type t;
  type request = {
@as("SecurityGroups") securityGroups: option<securityGroups>,
@as("LoadBalancerArn") loadBalancerArn: option<loadBalancerArn>
}
  type response = {
@as("SecurityGroupIds") securityGroupIds: securityGroups
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "SetSecurityGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTags = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("ResourceArns") resourceArns: option<resourceArns>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "RemoveTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveListenerCertificates = {
  type t;
  type request = {
@as("Certificates") certificates: option<certificateList>,
@as("ListenerArn") listenerArn: option<listenerArn>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "RemoveListenerCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterTargets = {
  type t;
  type request = {
@as("Targets") targets: option<targetDescriptions>,
@as("TargetGroupArn") targetGroupArn: option<targetGroupArn>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "RegisterTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyTargetGroupAttributes = {
  type t;
  type request = {
@as("Attributes") attributes: option<targetGroupAttributes>,
@as("TargetGroupArn") targetGroupArn: option<targetGroupArn>
}
  type response = {
@as("Attributes") attributes: targetGroupAttributes
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "ModifyTargetGroupAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyLoadBalancerAttributes = {
  type t;
  type request = {
@as("Attributes") attributes: option<loadBalancerAttributes>,
@as("LoadBalancerArn") loadBalancerArn: option<loadBalancerArn>
}
  type response = {
@as("Attributes") attributes: loadBalancerAttributes
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "ModifyLoadBalancerAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTargetGroupAttributes = {
  type t;
  type request = {
@as("TargetGroupArn") targetGroupArn: option<targetGroupArn>
}
  type response = {
@as("Attributes") attributes: targetGroupAttributes
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeTargetGroupAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancerAttributes = {
  type t;
  type request = {
@as("LoadBalancerArn") loadBalancerArn: option<loadBalancerArn>
}
  type response = {
@as("Attributes") attributes: loadBalancerAttributes
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoadBalancerAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeListenerCertificates = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("Marker") marker: marker,
@as("ListenerArn") listenerArn: option<listenerArn>
}
  type response = {
@as("NextMarker") nextMarker: marker,
@as("Certificates") certificates: certificateList
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeListenerCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountLimits = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("Marker") marker: marker
}
  type response = {
@as("NextMarker") nextMarker: marker,
@as("Limits") limits: limits
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccountLimitsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterTargets = {
  type t;
  type request = {
@as("Targets") targets: option<targetDescriptions>,
@as("TargetGroupArn") targetGroupArn: option<targetGroupArn>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DeregisterTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTags = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArns") resourceArns: option<resourceArns>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "AddTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddListenerCertificates = {
  type t;
  type request = {
@as("Certificates") certificates: option<certificateList>,
@as("ListenerArn") listenerArn: option<listenerArn>
}
  type response = {
@as("Certificates") certificates: certificateList
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "AddListenerCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyTargetGroup = {
  type t;
  type request = {
@as("Matcher") matcher: matcher,
@as("UnhealthyThresholdCount") unhealthyThresholdCount: healthCheckThresholdCount,
@as("HealthyThresholdCount") healthyThresholdCount: healthCheckThresholdCount,
@as("HealthCheckTimeoutSeconds") healthCheckTimeoutSeconds: healthCheckTimeoutSeconds,
@as("HealthCheckIntervalSeconds") healthCheckIntervalSeconds: healthCheckIntervalSeconds,
@as("HealthCheckEnabled") healthCheckEnabled: healthCheckEnabled,
@as("HealthCheckPath") healthCheckPath: path,
@as("HealthCheckPort") healthCheckPort: healthCheckPort,
@as("HealthCheckProtocol") healthCheckProtocol: protocolEnum,
@as("TargetGroupArn") targetGroupArn: option<targetGroupArn>
}
  type response = {
@as("TargetGroups") targetGroups: targetGroups
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "ModifyTargetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTargetHealth = {
  type t;
  type request = {
@as("Targets") targets: targetDescriptions,
@as("TargetGroupArn") targetGroupArn: option<targetGroupArn>
}
  type response = {
@as("TargetHealthDescriptions") targetHealthDescriptions: targetHealthDescriptions
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeTargetHealthCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTargetGroups = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("Marker") marker: marker,
@as("Names") names: targetGroupNames,
@as("TargetGroupArns") targetGroupArns: targetGroupArns,
@as("LoadBalancerArn") loadBalancerArn: loadBalancerArn
}
  type response = {
@as("NextMarker") nextMarker: marker,
@as("TargetGroups") targetGroups: targetGroups
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeTargetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTargetGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("TargetType") targetType: targetTypeEnum,
@as("Matcher") matcher: matcher,
@as("UnhealthyThresholdCount") unhealthyThresholdCount: healthCheckThresholdCount,
@as("HealthyThresholdCount") healthyThresholdCount: healthCheckThresholdCount,
@as("HealthCheckTimeoutSeconds") healthCheckTimeoutSeconds: healthCheckTimeoutSeconds,
@as("HealthCheckIntervalSeconds") healthCheckIntervalSeconds: healthCheckIntervalSeconds,
@as("HealthCheckPath") healthCheckPath: path,
@as("HealthCheckEnabled") healthCheckEnabled: healthCheckEnabled,
@as("HealthCheckPort") healthCheckPort: healthCheckPort,
@as("HealthCheckProtocol") healthCheckProtocol: protocolEnum,
@as("VpcId") vpcId: vpcId,
@as("Port") port: port,
@as("ProtocolVersion") protocolVersion: protocolVersion,
@as("Protocol") protocol: protocolEnum,
@as("Name") name: option<targetGroupName>
}
  type response = {
@as("TargetGroups") targetGroups: targetGroups
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "CreateTargetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetSubnets = {
  type t;
  type request = {
@as("IpAddressType") ipAddressType: ipAddressType,
@as("SubnetMappings") subnetMappings: subnetMappings,
@as("Subnets") subnets: subnets,
@as("LoadBalancerArn") loadBalancerArn: option<loadBalancerArn>
}
  type response = {
@as("IpAddressType") ipAddressType: ipAddressType,
@as("AvailabilityZones") availabilityZones: availabilityZones
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "SetSubnetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("ResourceArns") resourceArns: option<resourceArns>
}
  type response = {
@as("TagDescriptions") tagDescriptions: tagDescriptions
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSSLPolicies = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("Marker") marker: marker,
@as("Names") names: sslPolicyNames
}
  type response = {
@as("NextMarker") nextMarker: marker,
@as("SslPolicies") sslPolicies: sslPolicies
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeSSLPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancers = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("Marker") marker: marker,
@as("Names") names: loadBalancerNames,
@as("LoadBalancerArns") loadBalancerArns: loadBalancerArns
}
  type response = {
@as("NextMarker") nextMarker: marker,
@as("LoadBalancers") loadBalancers: loadBalancers
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoadBalancersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLoadBalancer = {
  type t;
  type request = {
@as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: customerOwnedIpv4Pool,
@as("IpAddressType") ipAddressType: ipAddressType,
@as("Type") type_: loadBalancerTypeEnum,
@as("Tags") tags: tagList,
@as("Scheme") scheme: loadBalancerSchemeEnum,
@as("SecurityGroups") securityGroups: securityGroups,
@as("SubnetMappings") subnetMappings: subnetMappings,
@as("Subnets") subnets: subnets,
@as("Name") name: option<loadBalancerName>
}
  type response = {
@as("LoadBalancers") loadBalancers: loadBalancers
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "CreateLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetRulePriorities = {
  type t;
  type request = {
@as("RulePriorities") rulePriorities: option<rulePriorityList>
}
  type response = {
@as("Rules") rules: rules
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "SetRulePrioritiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyRule = {
  type t;
  type request = {
@as("Actions") actions: actions,
@as("Conditions") conditions: ruleConditionList,
@as("RuleArn") ruleArn: option<ruleArn>
}
  type response = {
@as("Rules") rules: rules
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "ModifyRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyListener = {
  type t;
  type request = {
@as("AlpnPolicy") alpnPolicy: alpnPolicyName,
@as("DefaultActions") defaultActions: actions,
@as("Certificates") certificates: certificateList,
@as("SslPolicy") sslPolicy: sslPolicyName,
@as("Protocol") protocol: protocolEnum,
@as("Port") port: port,
@as("ListenerArn") listenerArn: option<listenerArn>
}
  type response = {
@as("Listeners") listeners: listeners
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "ModifyListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRules = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("Marker") marker: marker,
@as("RuleArns") ruleArns: ruleArns,
@as("ListenerArn") listenerArn: listenerArn
}
  type response = {
@as("NextMarker") nextMarker: marker,
@as("Rules") rules: rules
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeListeners = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("Marker") marker: marker,
@as("ListenerArns") listenerArns: listenerArns,
@as("LoadBalancerArn") loadBalancerArn: loadBalancerArn
}
  type response = {
@as("NextMarker") nextMarker: marker,
@as("Listeners") listeners: listeners
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeListenersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRule = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Actions") actions: option<actions>,
@as("Priority") priority: option<rulePriority>,
@as("Conditions") conditions: option<ruleConditionList>,
@as("ListenerArn") listenerArn: option<listenerArn>
}
  type response = {
@as("Rules") rules: rules
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "CreateRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateListener = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("AlpnPolicy") alpnPolicy: alpnPolicyName,
@as("DefaultActions") defaultActions: option<actions>,
@as("Certificates") certificates: certificateList,
@as("SslPolicy") sslPolicy: sslPolicyName,
@as("Port") port: port,
@as("Protocol") protocol: protocolEnum,
@as("LoadBalancerArn") loadBalancerArn: option<loadBalancerArn>
}
  type response = {
@as("Listeners") listeners: listeners
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "CreateListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
