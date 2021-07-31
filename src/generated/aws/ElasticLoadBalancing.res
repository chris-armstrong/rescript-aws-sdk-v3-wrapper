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
type tagKeyOnly = {@as("Key") key: option<tagKey>}
type tag = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: tagKey,
}
type subnets = array<subnetId>
type sourceSecurityGroup = {
  @as("GroupName") groupName: option<securityGroupName>,
  @as("OwnerAlias") ownerAlias: option<securityGroupOwnerAlias>,
}
type securityGroups = array<securityGroupId>
type ports = array<accessPointPort>
type policyTypeNames = array<policyTypeName>
type policyNames = array<policyName>
type policyAttributeTypeDescription = {
  @as("Cardinality") cardinality: option<cardinality>,
  @as("DefaultValue") defaultValue: option<defaultValue>,
  @as("Description") description: option<description>,
  @as("AttributeType") attributeType: option<attributeType>,
  @as("AttributeName") attributeName: option<attributeName>,
}
type policyAttributeDescription = {
  @as("AttributeValue") attributeValue: option<attributeValue>,
  @as("AttributeName") attributeName: option<attributeName>,
}
type policyAttribute = {
  @as("AttributeValue") attributeValue: option<attributeValue>,
  @as("AttributeName") attributeName: option<attributeName>,
}
type loadBalancerNamesMax20 = array<accessPointName>
type loadBalancerNames = array<accessPointName>
type listener = {
  @as("SSLCertificateId") sslcertificateId: option<sslcertificateId>,
  @as("InstancePort") instancePort: instancePort,
  @as("InstanceProtocol") instanceProtocol: option<protocol>,
  @as("LoadBalancerPort") loadBalancerPort: accessPointPort,
  @as("Protocol") protocol: protocol,
}
type limit = {
  @as("Max") max: option<max>,
  @as("Name") name: option<name>,
}
type lbcookieStickinessPolicy = {
  @as("CookieExpirationPeriod") cookieExpirationPeriod: option<cookieExpirationPeriod>,
  @as("PolicyName") policyName: option<policyName>,
}
type instanceState = {
  @as("Description") description: option<description>,
  @as("ReasonCode") reasonCode: option<reasonCode>,
  @as("State") state: option<state>,
  @as("InstanceId") instanceId: option<instanceId>,
}
type instance = {@as("InstanceId") instanceId: option<instanceId>}
type healthCheck = {
  @as("HealthyThreshold") healthyThreshold: healthyThreshold,
  @as("UnhealthyThreshold") unhealthyThreshold: unhealthyThreshold,
  @as("Timeout") timeout: healthCheckTimeout,
  @as("Interval") interval: healthCheckInterval,
  @as("Target") target: healthCheckTarget,
}
type crossZoneLoadBalancing = {@as("Enabled") enabled: crossZoneLoadBalancingEnabled}
type connectionSettings = {@as("IdleTimeout") idleTimeout: idleTimeout}
type connectionDraining = {
  @as("Timeout") timeout: option<connectionDrainingTimeout>,
  @as("Enabled") enabled: connectionDrainingEnabled,
}
type availabilityZones = array<availabilityZone>
type appCookieStickinessPolicy = {
  @as("CookieName") cookieName: option<cookieName>,
  @as("PolicyName") policyName: option<policyName>,
}
type additionalAttribute = {
  @as("Value") value: option<additionalAttributeValue>,
  @as("Key") key: option<additionalAttributeKey>,
}
type accessLog = {
  @as("S3BucketPrefix") s3BucketPrefix: option<accessLogPrefix>,
  @as("EmitInterval") emitInterval: option<accessLogInterval>,
  @as("S3BucketName") s3BucketName: option<s3BucketName>,
  @as("Enabled") enabled: accessLogEnabled,
}
type tagList_ = array<tag>
type tagKeyList = array<tagKeyOnly>
type policyAttributes = array<policyAttribute>
type policyAttributeTypeDescriptions = array<policyAttributeTypeDescription>
type policyAttributeDescriptions = array<policyAttributeDescription>
type listeners = array<listener>
type listenerDescription = {
  @as("PolicyNames") policyNames: option<policyNames>,
  @as("Listener") listener: option<listener>,
}
type limits = array<limit>
type lbcookieStickinessPolicies = array<lbcookieStickinessPolicy>
type instances = array<instance>
type instanceStates = array<instanceState>
type backendServerDescription = {
  @as("PolicyNames") policyNames: option<policyNames>,
  @as("InstancePort") instancePort: option<instancePort>,
}
type appCookieStickinessPolicies = array<appCookieStickinessPolicy>
type additionalAttributes = array<additionalAttribute>
type tagDescription = {
  @as("Tags") tags: option<tagList_>,
  @as("LoadBalancerName") loadBalancerName: option<accessPointName>,
}
type policyTypeDescription = {
  @as("PolicyAttributeTypeDescriptions")
  policyAttributeTypeDescriptions: option<policyAttributeTypeDescriptions>,
  @as("Description") description: option<description>,
  @as("PolicyTypeName") policyTypeName: option<policyTypeName>,
}
type policyDescription = {
  @as("PolicyAttributeDescriptions")
  policyAttributeDescriptions: option<policyAttributeDescriptions>,
  @as("PolicyTypeName") policyTypeName: option<policyTypeName>,
  @as("PolicyName") policyName: option<policyName>,
}
type policies = {
  @as("OtherPolicies") otherPolicies: option<policyNames>,
  @as("LBCookieStickinessPolicies") lbcookieStickinessPolicies: option<lbcookieStickinessPolicies>,
  @as("AppCookieStickinessPolicies")
  appCookieStickinessPolicies: option<appCookieStickinessPolicies>,
}
type loadBalancerAttributes = {
  @as("AdditionalAttributes") additionalAttributes: option<additionalAttributes>,
  @as("ConnectionSettings") connectionSettings: option<connectionSettings>,
  @as("ConnectionDraining") connectionDraining: option<connectionDraining>,
  @as("AccessLog") accessLog: option<accessLog>,
  @as("CrossZoneLoadBalancing") crossZoneLoadBalancing: option<crossZoneLoadBalancing>,
}
type listenerDescriptions = array<listenerDescription>
type backendServerDescriptions = array<backendServerDescription>
type tagDescriptions = array<tagDescription>
type policyTypeDescriptions = array<policyTypeDescription>
type policyDescriptions = array<policyDescription>
type loadBalancerDescription = {
  @as("Scheme") scheme: option<loadBalancerScheme>,
  @as("CreatedTime") createdTime: option<createdTime>,
  @as("SecurityGroups") securityGroups: option<securityGroups>,
  @as("SourceSecurityGroup") sourceSecurityGroup: option<sourceSecurityGroup>,
  @as("HealthCheck") healthCheck: option<healthCheck>,
  @as("Instances") instances: option<instances>,
  @as("VPCId") vpcid: option<vpcid>,
  @as("Subnets") subnets: option<subnets>,
  @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
  @as("BackendServerDescriptions") backendServerDescriptions: option<backendServerDescriptions>,
  @as("Policies") policies: option<policies>,
  @as("ListenerDescriptions") listenerDescriptions: option<listenerDescriptions>,
  @as("CanonicalHostedZoneNameID") canonicalHostedZoneNameID: option<dnsname>,
  @as("CanonicalHostedZoneName") canonicalHostedZoneName: option<dnsname>,
  @as("DNSName") dnsname: option<dnsname>,
  @as("LoadBalancerName") loadBalancerName: option<accessPointName>,
}
type loadBalancerDescriptions = array<loadBalancerDescription>

module SetLoadBalancerListenerSSLCertificate = {
  type t
  type request = {
    @as("SSLCertificateId") sslcertificateId: sslcertificateId,
    @as("LoadBalancerPort") loadBalancerPort: accessPointPort,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "SetLoadBalancerListenerSSLCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLoadBalancerPolicy = {
  type t
  type request = {
    @as("PolicyName") policyName: policyName,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeleteLoadBalancerPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLoadBalancer = {
  type t
  type request = {@as("LoadBalancerName") loadBalancerName: accessPointName}
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeleteLoadBalancerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLBCookieStickinessPolicy = {
  type t
  type request = {
    @as("CookieExpirationPeriod") cookieExpirationPeriod: option<cookieExpirationPeriod>,
    @as("PolicyName") policyName: policyName,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateLBCookieStickinessPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAppCookieStickinessPolicy = {
  type t
  type request = {
    @as("CookieName") cookieName: cookieName,
    @as("PolicyName") policyName: policyName,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateAppCookieStickinessPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetLoadBalancerPoliciesOfListener = {
  type t
  type request = {
    @as("PolicyNames") policyNames: policyNames,
    @as("LoadBalancerPort") loadBalancerPort: accessPointPort,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "SetLoadBalancerPoliciesOfListenerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetLoadBalancerPoliciesForBackendServer = {
  type t
  type request = {
    @as("PolicyNames") policyNames: policyNames,
    @as("InstancePort") instancePort: endPointPort,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "SetLoadBalancerPoliciesForBackendServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableAvailabilityZonesForLoadBalancer = {
  type t
  type request = {
    @as("AvailabilityZones") availabilityZones: availabilityZones,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = {@as("AvailabilityZones") availabilityZones: option<availabilityZones>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "EnableAvailabilityZonesForLoadBalancerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableAvailabilityZonesForLoadBalancer = {
  type t
  type request = {
    @as("AvailabilityZones") availabilityZones: availabilityZones,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = {@as("AvailabilityZones") availabilityZones: option<availabilityZones>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DisableAvailabilityZonesForLoadBalancerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachLoadBalancerFromSubnets = {
  type t
  type request = {
    @as("Subnets") subnets: subnets,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = {@as("Subnets") subnets: option<subnets>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DetachLoadBalancerFromSubnetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLoadBalancerListeners = {
  type t
  type request = {
    @as("LoadBalancerPorts") loadBalancerPorts: ports,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeleteLoadBalancerListenersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ConfigureHealthCheck = {
  type t
  type request = {
    @as("HealthCheck") healthCheck: healthCheck,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = {@as("HealthCheck") healthCheck: option<healthCheck>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "ConfigureHealthCheckCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachLoadBalancerToSubnets = {
  type t
  type request = {
    @as("Subnets") subnets: subnets,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = {@as("Subnets") subnets: option<subnets>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "AttachLoadBalancerToSubnetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ApplySecurityGroupsToLoadBalancer = {
  type t
  type request = {
    @as("SecurityGroups") securityGroups: securityGroups,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = {@as("SecurityGroups") securityGroups: option<securityGroups>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "ApplySecurityGroupsToLoadBalancerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTags = {
  type t
  type request = {
    @as("Tags") tags: tagKeyList,
    @as("LoadBalancerNames") loadBalancerNames: loadBalancerNames,
  }
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "RemoveTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterInstancesWithLoadBalancer = {
  type t
  type request = {
    @as("Instances") instances: instances,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = {@as("Instances") instances: option<instances>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "RegisterInstancesWithLoadBalancerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceHealth = {
  type t
  type request = {
    @as("Instances") instances: option<instances>,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = {@as("InstanceStates") instanceStates: option<instanceStates>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeInstanceHealthCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountLimits = {
  type t
  type request = {
    @as("PageSize") pageSize: option<pageSize>,
    @as("Marker") marker: option<marker>,
  }
  type response = {
    @as("NextMarker") nextMarker: option<marker>,
    @as("Limits") limits: option<limits>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeAccountLimitsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterInstancesFromLoadBalancer = {
  type t
  type request = {
    @as("Instances") instances: instances,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = {@as("Instances") instances: option<instances>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DeregisterInstancesFromLoadBalancerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLoadBalancerPolicy = {
  type t
  type request = {
    @as("PolicyAttributes") policyAttributes: option<policyAttributes>,
    @as("PolicyTypeName") policyTypeName: policyTypeName,
    @as("PolicyName") policyName: policyName,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateLoadBalancerPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLoadBalancerListeners = {
  type t
  type request = {
    @as("Listeners") listeners: listeners,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateLoadBalancerListenersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLoadBalancer = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Scheme") scheme: option<loadBalancerScheme>,
    @as("SecurityGroups") securityGroups: option<securityGroups>,
    @as("Subnets") subnets: option<subnets>,
    @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
    @as("Listeners") listeners: listeners,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = {@as("DNSName") dnsname: option<dnsname>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "CreateLoadBalancerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTags = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("LoadBalancerNames") loadBalancerNames: loadBalancerNames,
  }
  type response = unit
  @module("@aws-sdk/client-elasticloadbalancing") @new external new: request => t = "AddTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyLoadBalancerAttributes = {
  type t
  type request = {
    @as("LoadBalancerAttributes") loadBalancerAttributes: loadBalancerAttributes,
    @as("LoadBalancerName") loadBalancerName: accessPointName,
  }
  type response = {
    @as("LoadBalancerAttributes") loadBalancerAttributes: option<loadBalancerAttributes>,
    @as("LoadBalancerName") loadBalancerName: option<accessPointName>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "ModifyLoadBalancerAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoadBalancerAttributes = {
  type t
  type request = {@as("LoadBalancerName") loadBalancerName: accessPointName}
  type response = {
    @as("LoadBalancerAttributes") loadBalancerAttributes: option<loadBalancerAttributes>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeLoadBalancerAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTags = {
  type t
  type request = {@as("LoadBalancerNames") loadBalancerNames: loadBalancerNamesMax20}
  type response = {@as("TagDescriptions") tagDescriptions: option<tagDescriptions>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoadBalancerPolicyTypes = {
  type t
  type request = {@as("PolicyTypeNames") policyTypeNames: option<policyTypeNames>}
  type response = {
    @as("PolicyTypeDescriptions") policyTypeDescriptions: option<policyTypeDescriptions>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeLoadBalancerPolicyTypesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoadBalancerPolicies = {
  type t
  type request = {
    @as("PolicyNames") policyNames: option<policyNames>,
    @as("LoadBalancerName") loadBalancerName: option<accessPointName>,
  }
  type response = {@as("PolicyDescriptions") policyDescriptions: option<policyDescriptions>}
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeLoadBalancerPoliciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoadBalancers = {
  type t
  type request = {
    @as("PageSize") pageSize: option<pageSize>,
    @as("Marker") marker: option<marker>,
    @as("LoadBalancerNames") loadBalancerNames: option<loadBalancerNames>,
  }
  type response = {
    @as("NextMarker") nextMarker: option<marker>,
    @as("LoadBalancerDescriptions") loadBalancerDescriptions: option<loadBalancerDescriptions>,
  }
  @module("@aws-sdk/client-elasticloadbalancing") @new
  external new: request => t = "DescribeLoadBalancersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
