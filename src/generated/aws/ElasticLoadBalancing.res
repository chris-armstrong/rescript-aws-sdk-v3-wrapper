type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vPCId = string
type unhealthyThreshold = int;
type tagValue = string
type tagKey = string
type subnetId = string
type state = string
type securityGroupOwnerAlias = string
type securityGroupName = string
type securityGroupId = string
type sSLCertificateId = string
type s3BucketName = string
type reasonCode = string
type protocol = string
type policyTypeName = string
type policyName = string
type pageSize = int;
type name = string
type max = string
type marker = string
type loadBalancerScheme = string
type instancePort = int;
type instanceId = string
type idleTimeout = int;
type healthyThreshold = int;
type healthCheckTimeout = int;
type healthCheckTarget = string
type healthCheckInterval = int;
type errorDescription = string
type endPointPort = int;
type description = string
type defaultValue = string
type dNSName = string
type crossZoneLoadBalancingEnabled = bool;
type createdTime = Js.Date.t;
type cookieName = string
type cookieExpirationPeriod = float;
type connectionDrainingTimeout = int;
type connectionDrainingEnabled = bool;
type cardinality = string
type availabilityZone = string
type attributeValue = string
type attributeType = string
type attributeName = string
type additionalAttributeValue = string
type additionalAttributeKey = string
type accessPointPort = int;
type accessPointName = string
type accessLogPrefix = string
type accessLogInterval = int;
type accessLogEnabled = bool;
type tagKeyOnly = {
@as("Key") key: tagKey
}
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type subnets = array<subnetId>
type sourceSecurityGroup = {
@as("GroupName") groupName: securityGroupName,
@as("OwnerAlias") ownerAlias: securityGroupOwnerAlias
}
type securityGroups = array<securityGroupId>
type ports = array<accessPointPort>
type policyTypeNames = array<policyTypeName>
type policyNames = array<policyName>
type policyAttributeTypeDescription = {
@as("Cardinality") cardinality: cardinality,
@as("DefaultValue") defaultValue: defaultValue,
@as("Description") description: description,
@as("AttributeType") attributeType: attributeType,
@as("AttributeName") attributeName: attributeName
}
type policyAttributeDescription = {
@as("AttributeValue") attributeValue: attributeValue,
@as("AttributeName") attributeName: attributeName
}
type policyAttribute = {
@as("AttributeValue") attributeValue: attributeValue,
@as("AttributeName") attributeName: attributeName
}
type loadBalancerNamesMax20 = array<accessPointName>
type loadBalancerNames = array<accessPointName>
type listener = {
@as("SSLCertificateId") sSLCertificateId: sSLCertificateId,
@as("InstancePort") instancePort: option<instancePort>,
@as("InstanceProtocol") instanceProtocol: protocol,
@as("LoadBalancerPort") loadBalancerPort: option<accessPointPort>,
@as("Protocol") protocol: option<protocol>
}
type limit = {
@as("Max") max: max,
@as("Name") name: name
}
type lBCookieStickinessPolicy = {
@as("CookieExpirationPeriod") cookieExpirationPeriod: cookieExpirationPeriod,
@as("PolicyName") policyName: policyName
}
type instanceState = {
@as("Description") description: description,
@as("ReasonCode") reasonCode: reasonCode,
@as("State") state: state,
@as("InstanceId") instanceId: instanceId
}
type instance = {
@as("InstanceId") instanceId: instanceId
}
type healthCheck = {
@as("HealthyThreshold") healthyThreshold: option<healthyThreshold>,
@as("UnhealthyThreshold") unhealthyThreshold: option<unhealthyThreshold>,
@as("Timeout") timeout: option<healthCheckTimeout>,
@as("Interval") interval: option<healthCheckInterval>,
@as("Target") target: option<healthCheckTarget>
}
type crossZoneLoadBalancing = {
@as("Enabled") enabled: option<crossZoneLoadBalancingEnabled>
}
type connectionSettings = {
@as("IdleTimeout") idleTimeout: option<idleTimeout>
}
type connectionDraining = {
@as("Timeout") timeout: connectionDrainingTimeout,
@as("Enabled") enabled: option<connectionDrainingEnabled>
}
type availabilityZones = array<availabilityZone>
type appCookieStickinessPolicy = {
@as("CookieName") cookieName: cookieName,
@as("PolicyName") policyName: policyName
}
type additionalAttribute = {
@as("Value") value: additionalAttributeValue,
@as("Key") key: additionalAttributeKey
}
type accessLog = {
@as("S3BucketPrefix") s3BucketPrefix: accessLogPrefix,
@as("EmitInterval") emitInterval: accessLogInterval,
@as("S3BucketName") s3BucketName: s3BucketName,
@as("Enabled") enabled: option<accessLogEnabled>
}
type tagList = array<tag>
type tagKeyList = array<tagKeyOnly>
type policyAttributes = array<policyAttribute>
type policyAttributeTypeDescriptions = array<policyAttributeTypeDescription>
type policyAttributeDescriptions = array<policyAttributeDescription>
type listeners = array<listener>
type listenerDescription = {
@as("PolicyNames") policyNames: policyNames,
@as("Listener") listener: listener
}
type limits = array<limit>
type lBCookieStickinessPolicies = array<lBCookieStickinessPolicy>
type instances = array<instance>
type instanceStates = array<instanceState>
type backendServerDescription = {
@as("PolicyNames") policyNames: policyNames,
@as("InstancePort") instancePort: instancePort
}
type appCookieStickinessPolicies = array<appCookieStickinessPolicy>
type additionalAttributes = array<additionalAttribute>
type tagDescription = {
@as("Tags") tags: tagList,
@as("LoadBalancerName") loadBalancerName: accessPointName
}
type policyTypeDescription = {
@as("PolicyAttributeTypeDescriptions") policyAttributeTypeDescriptions: policyAttributeTypeDescriptions,
@as("Description") description: description,
@as("PolicyTypeName") policyTypeName: policyTypeName
}
type policyDescription = {
@as("PolicyAttributeDescriptions") policyAttributeDescriptions: policyAttributeDescriptions,
@as("PolicyTypeName") policyTypeName: policyTypeName,
@as("PolicyName") policyName: policyName
}
type policies = {
@as("OtherPolicies") otherPolicies: policyNames,
@as("LBCookieStickinessPolicies") lBCookieStickinessPolicies: lBCookieStickinessPolicies,
@as("AppCookieStickinessPolicies") appCookieStickinessPolicies: appCookieStickinessPolicies
}
type loadBalancerAttributes = {
@as("AdditionalAttributes") additionalAttributes: additionalAttributes,
@as("ConnectionSettings") connectionSettings: connectionSettings,
@as("ConnectionDraining") connectionDraining: connectionDraining,
@as("AccessLog") accessLog: accessLog,
@as("CrossZoneLoadBalancing") crossZoneLoadBalancing: crossZoneLoadBalancing
}
type listenerDescriptions = array<listenerDescription>
type backendServerDescriptions = array<backendServerDescription>
type tagDescriptions = array<tagDescription>
type policyTypeDescriptions = array<policyTypeDescription>
type policyDescriptions = array<policyDescription>
type loadBalancerDescription = {
@as("Scheme") scheme: loadBalancerScheme,
@as("CreatedTime") createdTime: createdTime,
@as("SecurityGroups") securityGroups: securityGroups,
@as("SourceSecurityGroup") sourceSecurityGroup: sourceSecurityGroup,
@as("HealthCheck") healthCheck: healthCheck,
@as("Instances") instances: instances,
@as("VPCId") vPCId: vPCId,
@as("Subnets") subnets: subnets,
@as("AvailabilityZones") availabilityZones: availabilityZones,
@as("BackendServerDescriptions") backendServerDescriptions: backendServerDescriptions,
@as("Policies") policies: policies,
@as("ListenerDescriptions") listenerDescriptions: listenerDescriptions,
@as("CanonicalHostedZoneNameID") canonicalHostedZoneNameID: dNSName,
@as("CanonicalHostedZoneName") canonicalHostedZoneName: dNSName,
@as("DNSName") dNSName: dNSName,
@as("LoadBalancerName") loadBalancerName: accessPointName
}
type loadBalancerDescriptions = array<loadBalancerDescription>
type clientType;
@module("@aws-sdk/client-elasticloadbalancing") @new external createClient: unit => clientType = "ElasticLoadBalancingClient";
module SetLoadBalancerListenerSSLCertificate = {
  type t;
  type request = {
@as("SSLCertificateId") sSLCertificateId: option<sSLCertificateId>,
@as("LoadBalancerPort") loadBalancerPort: option<accessPointPort>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "SetLoadBalancerListenerSSLCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLoadBalancerPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: option<policyName>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DeleteLoadBalancerPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLoadBalancer = {
  type t;
  type request = {
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DeleteLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLBCookieStickinessPolicy = {
  type t;
  type request = {
@as("CookieExpirationPeriod") cookieExpirationPeriod: cookieExpirationPeriod,
@as("PolicyName") policyName: option<policyName>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "CreateLBCookieStickinessPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAppCookieStickinessPolicy = {
  type t;
  type request = {
@as("CookieName") cookieName: option<cookieName>,
@as("PolicyName") policyName: option<policyName>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "CreateAppCookieStickinessPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetLoadBalancerPoliciesOfListener = {
  type t;
  type request = {
@as("PolicyNames") policyNames: option<policyNames>,
@as("LoadBalancerPort") loadBalancerPort: option<accessPointPort>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "SetLoadBalancerPoliciesOfListenerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetLoadBalancerPoliciesForBackendServer = {
  type t;
  type request = {
@as("PolicyNames") policyNames: option<policyNames>,
@as("InstancePort") instancePort: option<endPointPort>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "SetLoadBalancerPoliciesForBackendServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableAvailabilityZonesForLoadBalancer = {
  type t;
  type request = {
@as("AvailabilityZones") availabilityZones: option<availabilityZones>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("AvailabilityZones") availabilityZones: availabilityZones
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "EnableAvailabilityZonesForLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableAvailabilityZonesForLoadBalancer = {
  type t;
  type request = {
@as("AvailabilityZones") availabilityZones: option<availabilityZones>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("AvailabilityZones") availabilityZones: availabilityZones
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DisableAvailabilityZonesForLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachLoadBalancerFromSubnets = {
  type t;
  type request = {
@as("Subnets") subnets: option<subnets>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("Subnets") subnets: subnets
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DetachLoadBalancerFromSubnetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLoadBalancerListeners = {
  type t;
  type request = {
@as("LoadBalancerPorts") loadBalancerPorts: option<ports>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DeleteLoadBalancerListenersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ConfigureHealthCheck = {
  type t;
  type request = {
@as("HealthCheck") healthCheck: option<healthCheck>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("HealthCheck") healthCheck: healthCheck
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "ConfigureHealthCheckCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachLoadBalancerToSubnets = {
  type t;
  type request = {
@as("Subnets") subnets: option<subnets>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("Subnets") subnets: subnets
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "AttachLoadBalancerToSubnetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ApplySecurityGroupsToLoadBalancer = {
  type t;
  type request = {
@as("SecurityGroups") securityGroups: option<securityGroups>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("SecurityGroups") securityGroups: securityGroups
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "ApplySecurityGroupsToLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTags = {
  type t;
  type request = {
@as("Tags") tags: option<tagKeyList>,
@as("LoadBalancerNames") loadBalancerNames: option<loadBalancerNames>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "RemoveTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterInstancesWithLoadBalancer = {
  type t;
  type request = {
@as("Instances") instances: option<instances>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("Instances") instances: instances
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "RegisterInstancesWithLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceHealth = {
  type t;
  type request = {
@as("Instances") instances: instances,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("InstanceStates") instanceStates: instanceStates
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstanceHealthCommand";
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

module DeregisterInstancesFromLoadBalancer = {
  type t;
  type request = {
@as("Instances") instances: option<instances>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("Instances") instances: instances
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DeregisterInstancesFromLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLoadBalancerPolicy = {
  type t;
  type request = {
@as("PolicyAttributes") policyAttributes: policyAttributes,
@as("PolicyTypeName") policyTypeName: option<policyTypeName>,
@as("PolicyName") policyName: option<policyName>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "CreateLoadBalancerPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLoadBalancerListeners = {
  type t;
  type request = {
@as("Listeners") listeners: option<listeners>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "CreateLoadBalancerListenersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLoadBalancer = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Scheme") scheme: loadBalancerScheme,
@as("SecurityGroups") securityGroups: securityGroups,
@as("Subnets") subnets: subnets,
@as("AvailabilityZones") availabilityZones: availabilityZones,
@as("Listeners") listeners: option<listeners>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("DNSName") dNSName: dNSName
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "CreateLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTags = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("LoadBalancerNames") loadBalancerNames: option<loadBalancerNames>
}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "AddTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyLoadBalancerAttributes = {
  type t;
  type request = {
@as("LoadBalancerAttributes") loadBalancerAttributes: option<loadBalancerAttributes>,
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("LoadBalancerAttributes") loadBalancerAttributes: loadBalancerAttributes,
@as("LoadBalancerName") loadBalancerName: accessPointName
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "ModifyLoadBalancerAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancerAttributes = {
  type t;
  type request = {
@as("LoadBalancerName") loadBalancerName: option<accessPointName>
}
  type response = {
@as("LoadBalancerAttributes") loadBalancerAttributes: loadBalancerAttributes
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoadBalancerAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("LoadBalancerNames") loadBalancerNames: option<loadBalancerNamesMax20>
}
  type response = {
@as("TagDescriptions") tagDescriptions: tagDescriptions
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancerPolicyTypes = {
  type t;
  type request = {
@as("PolicyTypeNames") policyTypeNames: policyTypeNames
}
  type response = {
@as("PolicyTypeDescriptions") policyTypeDescriptions: policyTypeDescriptions
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoadBalancerPolicyTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancerPolicies = {
  type t;
  type request = {
@as("PolicyNames") policyNames: policyNames,
@as("LoadBalancerName") loadBalancerName: accessPointName
}
  type response = {
@as("PolicyDescriptions") policyDescriptions: policyDescriptions
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoadBalancerPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBalancers = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("Marker") marker: marker,
@as("LoadBalancerNames") loadBalancerNames: loadBalancerNames
}
  type response = {
@as("NextMarker") nextMarker: marker,
@as("LoadBalancerDescriptions") loadBalancerDescriptions: loadBalancerDescriptions
}
  @module("@aws-sdk/client-elasticloadbalancing") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoadBalancersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
