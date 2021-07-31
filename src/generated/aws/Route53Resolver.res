type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type validation = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type unsigned = int
type tagValue = string
type tagKey = string
type subnetId = string
type string_ = string
type statusMessage = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sortByKey = string
type shareStatus = [@as("SHARED_BY_ME") #SHAREDBYME | @as("SHARED_WITH_ME") #SHAREDWITHME | @as("NOT_SHARED") #NOTSHARED]
type servicePrinciple = string
type ruleTypeOption = [@as("RECURSIVE") #RECURSIVE | @as("SYSTEM") #SYSTEM | @as("FORWARD") #FORWARD]
type rfc3339TimeString = string
type resourceId = string
type resolverRuleStatus = [@as("FAILED") #FAILED | @as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("COMPLETE") #COMPLETE]
type resolverRulePolicy = string
type resolverRuleAssociationStatus = [@as("OVERRIDDEN") #OVERRIDDEN | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("COMPLETE") #COMPLETE | @as("CREATING") #CREATING]
type resolverQueryLogConfigStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("CREATED") #CREATED | @as("CREATING") #CREATING]
type resolverQueryLogConfigPolicy = string
type resolverQueryLogConfigName = string
type resolverQueryLogConfigAssociationStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("ACTION_NEEDED") #ACTIONNEEDED | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type resolverQueryLogConfigAssociationErrorMessage = string
type resolverQueryLogConfigAssociationError = [@as("INTERNAL_SERVICE_ERROR") #INTERNALSERVICEERROR | @as("ACCESS_DENIED") #ACCESSDENIED | @as("DESTINATION_NOT_FOUND") #DESTINATIONNOTFOUND | @as("NONE") #NONE]
type resolverEndpointStatus = [@as("DELETING") #DELETING | @as("ACTION_NEEDED") #ACTIONNEEDED | @as("AUTO_RECOVERING") #AUTORECOVERING | @as("UPDATING") #UPDATING | @as("OPERATIONAL") #OPERATIONAL | @as("CREATING") #CREATING]
type resolverEndpointDirection = [@as("OUTBOUND") #OUTBOUND | @as("INBOUND") #INBOUND]
type resolverDNSSECValidationStatus = [@as("DISABLED") #DISABLED | @as("DISABLING") #DISABLING | @as("ENABLED") #ENABLED | @as("ENABLING") #ENABLING]
type priority = int
type port = int
type nextToken = string
type name = string
type mutationProtectionStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type maxResults = int
type listFirewallConfigsMaxResult = int
type listDomainMaxResults = int
type ipAddressStatus = [@as("DELETE_FAILED_FAS_EXPIRED") #DELETEFAILEDFASEXPIRED | @as("DELETING") #DELETING | @as("FAILED_RESOURCE_GONE") #FAILEDRESOURCEGONE | @as("DETACHING") #DETACHING | @as("REMAP_ATTACHING") #REMAPATTACHING | @as("REMAP_DETACHING") #REMAPDETACHING | @as("ATTACHED") #ATTACHED | @as("ATTACHING") #ATTACHING | @as("FAILED_CREATION") #FAILEDCREATION | @as("CREATING") #CREATING]
type ipAddressCount = int
type ip = string
type firewallRuleGroupStatus = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("COMPLETE") #COMPLETE]
type firewallRuleGroupPolicy = string
type firewallRuleGroupAssociationStatus = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("COMPLETE") #COMPLETE]
type firewallFailOpenStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type firewallDomainUpdateOperation = [@as("REPLACE") #REPLACE | @as("REMOVE") #REMOVE | @as("ADD") #ADD]
type firewallDomainName = string
type firewallDomainListStatus = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("IMPORTING") #IMPORTING | @as("COMPLETE_IMPORT_FAILED") #COMPLETEIMPORTFAILED | @as("COMPLETE") #COMPLETE]
type firewallDomainImportOperation = [@as("REPLACE") #REPLACE]
type filterValue = string
type filterName = string
type exceptionMessage = string
type domainName = string
type domainListFileUrl = string
type destinationArn = string
type creatorRequestId = string
type count = int
type boolean_ = bool
type blockResponse = [@as("OVERRIDE") #OVERRIDE | @as("NXDOMAIN") #NXDOMAIN | @as("NODATA") #NODATA]
type blockOverrideTtl = int
type blockOverrideDomain = string
type blockOverrideDnsType = [@as("CNAME") #CNAME]
type arn = string
type action = [@as("ALERT") #ALERT | @as("BLOCK") #BLOCK | @as("ALLOW") #ALLOW]
type accountId = string
type targetAddress = {
@as("Port") port: option<port>,
@as("Ip") ip: ip
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type securityGroupIds = array<resourceId>
type resolverRuleAssociation = {
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("Status") status: option<resolverRuleAssociationStatus>,
@as("VPCId") vpcid: option<resourceId>,
@as("Name") name: option<name>,
@as("ResolverRuleId") resolverRuleId: option<resourceId>,
@as("Id") id: option<resourceId>
}
type resolverQueryLogConfigAssociation = {
@as("CreationTime") creationTime: option<rfc3339TimeString>,
@as("ErrorMessage") errorMessage: option<resolverQueryLogConfigAssociationErrorMessage>,
@as("Error") error: option<resolverQueryLogConfigAssociationError>,
@as("Status") status: option<resolverQueryLogConfigAssociationStatus>,
@as("ResourceId") resourceId: option<resourceId>,
@as("ResolverQueryLogConfigId") resolverQueryLogConfigId: option<resourceId>,
@as("Id") id: option<resourceId>
}
type resolverQueryLogConfig = {
@as("CreationTime") creationTime: option<rfc3339TimeString>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>,
@as("DestinationArn") destinationArn: option<destinationArn>,
@as("Name") name: option<resolverQueryLogConfigName>,
@as("Arn") arn: option<arn>,
@as("AssociationCount") associationCount: option<count>,
@as("ShareStatus") shareStatus: option<shareStatus>,
@as("Status") status: option<resolverQueryLogConfigStatus>,
@as("OwnerId") ownerId: option<accountId>,
@as("Id") id: option<resourceId>
}
type resolverDnssecConfig = {
@as("ValidationStatus") validationStatus: option<resolverDNSSECValidationStatus>,
@as("ResourceId") resourceId: option<resourceId>,
@as("OwnerId") ownerId: option<accountId>,
@as("Id") id: option<resourceId>
}
type ipAddressUpdate = {
@as("Ip") ip: option<ip>,
@as("SubnetId") subnetId: option<subnetId>,
@as("IpId") ipId: option<resourceId>
}
type ipAddressResponse = {
@as("ModificationTime") modificationTime: option<rfc3339TimeString>,
@as("CreationTime") creationTime: option<rfc3339TimeString>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("Status") status: option<ipAddressStatus>,
@as("Ip") ip: option<ip>,
@as("SubnetId") subnetId: option<subnetId>,
@as("IpId") ipId: option<resourceId>
}
type ipAddressRequest = {
@as("Ip") ip: option<ip>,
@as("SubnetId") subnetId: subnetId
}
type firewallRuleGroupMetadata = {
@as("ShareStatus") shareStatus: option<shareStatus>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>,
@as("OwnerId") ownerId: option<accountId>,
@as("Name") name: option<name>,
@as("Arn") arn: option<arn>,
@as("Id") id: option<resourceId>
}
type firewallRuleGroupAssociation = {
@as("ModificationTime") modificationTime: option<rfc3339TimeString>,
@as("CreationTime") creationTime: option<rfc3339TimeString>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("Status") status: option<firewallRuleGroupAssociationStatus>,
@as("ManagedOwnerName") managedOwnerName: option<servicePrinciple>,
@as("MutationProtection") mutationProtection: option<mutationProtectionStatus>,
@as("Priority") priority: option<priority>,
@as("Name") name: option<name>,
@as("VpcId") vpcId: option<resourceId>,
@as("FirewallRuleGroupId") firewallRuleGroupId: option<resourceId>,
@as("Arn") arn: option<arn>,
@as("Id") id: option<resourceId>
}
type firewallRuleGroup = {
@as("ModificationTime") modificationTime: option<rfc3339TimeString>,
@as("CreationTime") creationTime: option<rfc3339TimeString>,
@as("ShareStatus") shareStatus: option<shareStatus>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>,
@as("OwnerId") ownerId: option<accountId>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("Status") status: option<firewallRuleGroupStatus>,
@as("RuleCount") ruleCount: option<unsigned>,
@as("Name") name: option<name>,
@as("Arn") arn: option<arn>,
@as("Id") id: option<resourceId>
}
type firewallRule = {
@as("ModificationTime") modificationTime: option<rfc3339TimeString>,
@as("CreationTime") creationTime: option<rfc3339TimeString>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>,
@as("BlockOverrideTtl") blockOverrideTtl: option<unsigned>,
@as("BlockOverrideDnsType") blockOverrideDnsType: option<blockOverrideDnsType>,
@as("BlockOverrideDomain") blockOverrideDomain: option<blockOverrideDomain>,
@as("BlockResponse") blockResponse: option<blockResponse>,
@as("Action") action: option<action>,
@as("Priority") priority: option<priority>,
@as("Name") name: option<name>,
@as("FirewallDomainListId") firewallDomainListId: option<resourceId>,
@as("FirewallRuleGroupId") firewallRuleGroupId: option<resourceId>
}
type firewallDomains = array<firewallDomainName>
type firewallDomainListMetadata = {
@as("ManagedOwnerName") managedOwnerName: option<servicePrinciple>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>,
@as("Name") name: option<name>,
@as("Arn") arn: option<arn>,
@as("Id") id: option<resourceId>
}
type firewallDomainList = {
@as("ModificationTime") modificationTime: option<rfc3339TimeString>,
@as("CreationTime") creationTime: option<rfc3339TimeString>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>,
@as("ManagedOwnerName") managedOwnerName: option<servicePrinciple>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("Status") status: option<firewallDomainListStatus>,
@as("DomainCount") domainCount: option<unsigned>,
@as("Name") name: option<name>,
@as("Arn") arn: option<arn>,
@as("Id") id: option<resourceId>
}
type firewallConfig = {
@as("FirewallFailOpen") firewallFailOpen: option<firewallFailOpenStatus>,
@as("OwnerId") ownerId: option<accountId>,
@as("ResourceId") resourceId: option<resourceId>,
@as("Id") id: option<resourceId>
}
type filterValues = array<filterValue>
type targetList = array<targetAddress>
type tagList_ = array<tag>
type resolverRuleAssociations = array<resolverRuleAssociation>
type resolverQueryLogConfigList = array<resolverQueryLogConfig>
type resolverQueryLogConfigAssociationList = array<resolverQueryLogConfigAssociation>
type resolverEndpoint = {
@as("ModificationTime") modificationTime: option<rfc3339TimeString>,
@as("CreationTime") creationTime: option<rfc3339TimeString>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("Status") status: option<resolverEndpointStatus>,
@as("HostVPCId") hostVPCId: option<resourceId>,
@as("IpAddressCount") ipAddressCount: option<ipAddressCount>,
@as("Direction") direction: option<resolverEndpointDirection>,
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
@as("Name") name: option<name>,
@as("Arn") arn: option<arn>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>,
@as("Id") id: option<resourceId>
}
type resolverDnssecConfigList = array<resolverDnssecConfig>
type ipAddressesResponse = array<ipAddressResponse>
type ipAddressesRequest = array<ipAddressRequest>
type firewallRules = array<firewallRule>
type firewallRuleGroupMetadataList = array<firewallRuleGroupMetadata>
type firewallRuleGroupAssociations = array<firewallRuleGroupAssociation>
type firewallDomainListMetadataList = array<firewallDomainListMetadata>
type firewallConfigList = array<firewallConfig>
type filter = {
@as("Values") values: option<filterValues>,
@as("Name") name: option<filterName>
}
type resolverRuleConfig = {
@as("ResolverEndpointId") resolverEndpointId: option<resourceId>,
@as("TargetIps") targetIps: option<targetList>,
@as("Name") name: option<name>
}
type resolverRule = {
@as("ModificationTime") modificationTime: option<rfc3339TimeString>,
@as("CreationTime") creationTime: option<rfc3339TimeString>,
@as("ShareStatus") shareStatus: option<shareStatus>,
@as("OwnerId") ownerId: option<accountId>,
@as("ResolverEndpointId") resolverEndpointId: option<resourceId>,
@as("TargetIps") targetIps: option<targetList>,
@as("Name") name: option<name>,
@as("RuleType") ruleType: option<ruleTypeOption>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("Status") status: option<resolverRuleStatus>,
@as("DomainName") domainName: option<domainName>,
@as("Arn") arn: option<arn>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>,
@as("Id") id: option<resourceId>
}
type resolverEndpoints = array<resolverEndpoint>
type filters = array<filter>
type resolverRules = array<resolverRule>
type awsServiceClient;
@module("@aws-sdk/client-route53resolver") @new external createClient: unit => awsServiceClient = "Route53ResolverClient";
module PutResolverRulePolicy = {
  type t;
  type request = {
@as("ResolverRulePolicy") resolverRulePolicy: resolverRulePolicy,
@as("Arn") arn: arn
}
  type response = {
@as("ReturnValue") returnValue: option<boolean_>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "PutResolverRulePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutResolverQueryLogConfigPolicy = {
  type t;
  type request = {
@as("ResolverQueryLogConfigPolicy") resolverQueryLogConfigPolicy: resolverQueryLogConfigPolicy,
@as("Arn") arn: arn
}
  type response = {
@as("ReturnValue") returnValue: option<boolean_>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "PutResolverQueryLogConfigPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutFirewallRuleGroupPolicy = {
  type t;
  type request = {
@as("FirewallRuleGroupPolicy") firewallRuleGroupPolicy: firewallRuleGroupPolicy,
@as("Arn") arn: arn
}
  type response = {
@as("ReturnValue") returnValue: option<boolean_>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "PutFirewallRuleGroupPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportFirewallDomains = {
  type t;
  type request = {
@as("DomainFileUrl") domainFileUrl: domainListFileUrl,
@as("Operation") operation: firewallDomainImportOperation,
@as("FirewallDomainListId") firewallDomainListId: resourceId
}
  type response = {
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("Status") status: option<firewallDomainListStatus>,
@as("Name") name: option<name>,
@as("Id") id: option<resourceId>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ImportFirewallDomainsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResolverRulePolicy = {
  type t;
  type request = {
@as("Arn") arn: arn
}
  type response = {
@as("ResolverRulePolicy") resolverRulePolicy: option<resolverRulePolicy>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetResolverRulePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResolverQueryLogConfigPolicy = {
  type t;
  type request = {
@as("Arn") arn: arn
}
  type response = {
@as("ResolverQueryLogConfigPolicy") resolverQueryLogConfigPolicy: option<resolverQueryLogConfigPolicy>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetResolverQueryLogConfigPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFirewallRuleGroupPolicy = {
  type t;
  type request = {
@as("Arn") arn: arn
}
  type response = {
@as("FirewallRuleGroupPolicy") firewallRuleGroupPolicy: option<firewallRuleGroupPolicy>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetFirewallRuleGroupPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateResolverDnssecConfig = {
  type t;
  type request = {
@as("Validation") validation: validation,
@as("ResourceId") resourceId: resourceId
}
  type response = {
@as("ResolverDNSSECConfig") resolverDNSSECConfig: option<resolverDnssecConfig>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "UpdateResolverDnssecConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallRuleGroupAssociation = {
  type t;
  type request = {
@as("Name") name: option<name>,
@as("MutationProtection") mutationProtection: option<mutationProtectionStatus>,
@as("Priority") priority: option<priority>,
@as("FirewallRuleGroupAssociationId") firewallRuleGroupAssociationId: resourceId
}
  type response = {
@as("FirewallRuleGroupAssociation") firewallRuleGroupAssociation: option<firewallRuleGroupAssociation>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "UpdateFirewallRuleGroupAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallRule = {
  type t;
  type request = {
@as("Name") name: option<name>,
@as("BlockOverrideTtl") blockOverrideTtl: option<blockOverrideTtl>,
@as("BlockOverrideDnsType") blockOverrideDnsType: option<blockOverrideDnsType>,
@as("BlockOverrideDomain") blockOverrideDomain: option<blockOverrideDomain>,
@as("BlockResponse") blockResponse: option<blockResponse>,
@as("Action") action: option<action>,
@as("Priority") priority: option<priority>,
@as("FirewallDomainListId") firewallDomainListId: resourceId,
@as("FirewallRuleGroupId") firewallRuleGroupId: resourceId
}
  type response = {
@as("FirewallRule") firewallRule: option<firewallRule>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "UpdateFirewallRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallDomains = {
  type t;
  type request = {
@as("Domains") domains: firewallDomains,
@as("Operation") operation: firewallDomainUpdateOperation,
@as("FirewallDomainListId") firewallDomainListId: resourceId
}
  type response = {
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("Status") status: option<firewallDomainListStatus>,
@as("Name") name: option<name>,
@as("Id") id: option<resourceId>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "UpdateFirewallDomainsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallConfig = {
  type t;
  type request = {
@as("FirewallFailOpen") firewallFailOpen: firewallFailOpenStatus,
@as("ResourceId") resourceId: resourceId
}
  type response = {
@as("FirewallConfig") firewallConfig: option<firewallConfig>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "UpdateFirewallConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFirewallDomains = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<listDomainMaxResults>,
@as("FirewallDomainListId") firewallDomainListId: resourceId
}
  type response = {
@as("Domains") domains: option<firewallDomains>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListFirewallDomainsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResolverRuleAssociation = {
  type t;
  type request = {
@as("ResolverRuleAssociationId") resolverRuleAssociationId: resourceId
}
  type response = {
@as("ResolverRuleAssociation") resolverRuleAssociation: option<resolverRuleAssociation>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetResolverRuleAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResolverQueryLogConfigAssociation = {
  type t;
  type request = {
@as("ResolverQueryLogConfigAssociationId") resolverQueryLogConfigAssociationId: resourceId
}
  type response = {
@as("ResolverQueryLogConfigAssociation") resolverQueryLogConfigAssociation: option<resolverQueryLogConfigAssociation>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetResolverQueryLogConfigAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResolverQueryLogConfig = {
  type t;
  type request = {
@as("ResolverQueryLogConfigId") resolverQueryLogConfigId: resourceId
}
  type response = {
@as("ResolverQueryLogConfig") resolverQueryLogConfig: option<resolverQueryLogConfig>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetResolverQueryLogConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResolverDnssecConfig = {
  type t;
  type request = {
@as("ResourceId") resourceId: resourceId
}
  type response = {
@as("ResolverDNSSECConfig") resolverDNSSECConfig: option<resolverDnssecConfig>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetResolverDnssecConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFirewallRuleGroupAssociation = {
  type t;
  type request = {
@as("FirewallRuleGroupAssociationId") firewallRuleGroupAssociationId: resourceId
}
  type response = {
@as("FirewallRuleGroupAssociation") firewallRuleGroupAssociation: option<firewallRuleGroupAssociation>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetFirewallRuleGroupAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFirewallRuleGroup = {
  type t;
  type request = {
@as("FirewallRuleGroupId") firewallRuleGroupId: resourceId
}
  type response = {
@as("FirewallRuleGroup") firewallRuleGroup: option<firewallRuleGroup>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetFirewallRuleGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFirewallDomainList = {
  type t;
  type request = {
@as("FirewallDomainListId") firewallDomainListId: resourceId
}
  type response = {
@as("FirewallDomainList") firewallDomainList: option<firewallDomainList>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetFirewallDomainListCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFirewallConfig = {
  type t;
  type request = {
@as("ResourceId") resourceId: resourceId
}
  type response = {
@as("FirewallConfig") firewallConfig: option<firewallConfig>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetFirewallConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateResolverRule = {
  type t;
  type request = {
@as("ResolverRuleId") resolverRuleId: resourceId,
@as("VPCId") vpcid: resourceId
}
  type response = {
@as("ResolverRuleAssociation") resolverRuleAssociation: option<resolverRuleAssociation>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "DisassociateResolverRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateResolverQueryLogConfig = {
  type t;
  type request = {
@as("ResourceId") resourceId: resourceId,
@as("ResolverQueryLogConfigId") resolverQueryLogConfigId: resourceId
}
  type response = {
@as("ResolverQueryLogConfigAssociation") resolverQueryLogConfigAssociation: option<resolverQueryLogConfigAssociation>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "DisassociateResolverQueryLogConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateFirewallRuleGroup = {
  type t;
  type request = {
@as("FirewallRuleGroupAssociationId") firewallRuleGroupAssociationId: resourceId
}
  type response = {
@as("FirewallRuleGroupAssociation") firewallRuleGroupAssociation: option<firewallRuleGroupAssociation>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "DisassociateFirewallRuleGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteResolverQueryLogConfig = {
  type t;
  type request = {
@as("ResolverQueryLogConfigId") resolverQueryLogConfigId: resourceId
}
  type response = {
@as("ResolverQueryLogConfig") resolverQueryLogConfig: option<resolverQueryLogConfig>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "DeleteResolverQueryLogConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFirewallRuleGroup = {
  type t;
  type request = {
@as("FirewallRuleGroupId") firewallRuleGroupId: resourceId
}
  type response = {
@as("FirewallRuleGroup") firewallRuleGroup: option<firewallRuleGroup>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "DeleteFirewallRuleGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFirewallRule = {
  type t;
  type request = {
@as("FirewallDomainListId") firewallDomainListId: resourceId,
@as("FirewallRuleGroupId") firewallRuleGroupId: resourceId
}
  type response = {
@as("FirewallRule") firewallRule: option<firewallRule>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "DeleteFirewallRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFirewallDomainList = {
  type t;
  type request = {
@as("FirewallDomainListId") firewallDomainListId: resourceId
}
  type response = {
@as("FirewallDomainList") firewallDomainList: option<firewallDomainList>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "DeleteFirewallDomainListCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateFirewallRule = {
  type t;
  type request = {
@as("Name") name: name,
@as("BlockOverrideTtl") blockOverrideTtl: option<blockOverrideTtl>,
@as("BlockOverrideDnsType") blockOverrideDnsType: option<blockOverrideDnsType>,
@as("BlockOverrideDomain") blockOverrideDomain: option<blockOverrideDomain>,
@as("BlockResponse") blockResponse: option<blockResponse>,
@as("Action") action: action,
@as("Priority") priority: priority,
@as("FirewallDomainListId") firewallDomainListId: resourceId,
@as("FirewallRuleGroupId") firewallRuleGroupId: resourceId,
@as("CreatorRequestId") creatorRequestId: creatorRequestId
}
  type response = {
@as("FirewallRule") firewallRule: option<firewallRule>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "CreateFirewallRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateResolverRule = {
  type t;
  type request = {
@as("VPCId") vpcid: resourceId,
@as("Name") name: option<name>,
@as("ResolverRuleId") resolverRuleId: resourceId
}
  type response = {
@as("ResolverRuleAssociation") resolverRuleAssociation: option<resolverRuleAssociation>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "AssociateResolverRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateResolverQueryLogConfig = {
  type t;
  type request = {
@as("ResourceId") resourceId: resourceId,
@as("ResolverQueryLogConfigId") resolverQueryLogConfigId: resourceId
}
  type response = {
@as("ResolverQueryLogConfigAssociation") resolverQueryLogConfigAssociation: option<resolverQueryLogConfigAssociation>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "AssociateResolverQueryLogConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateResolverEndpoint = {
  type t;
  type request = {
@as("Name") name: option<name>,
@as("ResolverEndpointId") resolverEndpointId: resourceId
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: option<resolverEndpoint>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "UpdateResolverEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceArn") resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ResourceArn") resourceArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResolverEndpointIpAddresses = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ResolverEndpointId") resolverEndpointId: resourceId
}
  type response = {
@as("IpAddresses") ipAddresses: option<ipAddressesResponse>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListResolverEndpointIpAddressesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFirewallRules = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("Action") action: option<action>,
@as("Priority") priority: option<priority>,
@as("FirewallRuleGroupId") firewallRuleGroupId: resourceId
}
  type response = {
@as("FirewallRules") firewallRules: option<firewallRules>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListFirewallRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFirewallRuleGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("FirewallRuleGroups") firewallRuleGroups: option<firewallRuleGroupMetadataList>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListFirewallRuleGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFirewallRuleGroupAssociations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("Status") status: option<firewallRuleGroupAssociationStatus>,
@as("Priority") priority: option<priority>,
@as("VpcId") vpcId: option<resourceId>,
@as("FirewallRuleGroupId") firewallRuleGroupId: option<resourceId>
}
  type response = {
@as("FirewallRuleGroupAssociations") firewallRuleGroupAssociations: option<firewallRuleGroupAssociations>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListFirewallRuleGroupAssociationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFirewallDomainLists = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("FirewallDomainLists") firewallDomainLists: option<firewallDomainListMetadataList>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListFirewallDomainListsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFirewallConfigs = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<listFirewallConfigsMaxResult>
}
  type response = {
@as("FirewallConfigs") firewallConfigs: option<firewallConfigList>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListFirewallConfigsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResolverEndpoint = {
  type t;
  type request = {
@as("ResolverEndpointId") resolverEndpointId: resourceId
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: option<resolverEndpoint>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetResolverEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateResolverEndpointIpAddress = {
  type t;
  type request = {
@as("IpAddress") ipAddress: ipAddressUpdate,
@as("ResolverEndpointId") resolverEndpointId: resourceId
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: option<resolverEndpoint>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "DisassociateResolverEndpointIpAddressCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteResolverEndpoint = {
  type t;
  type request = {
@as("ResolverEndpointId") resolverEndpointId: resourceId
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: option<resolverEndpoint>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "DeleteResolverEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateResolverQueryLogConfig = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("CreatorRequestId") creatorRequestId: creatorRequestId,
@as("DestinationArn") destinationArn: destinationArn,
@as("Name") name: resolverQueryLogConfigName
}
  type response = {
@as("ResolverQueryLogConfig") resolverQueryLogConfig: option<resolverQueryLogConfig>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "CreateResolverQueryLogConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateResolverEndpoint = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("IpAddresses") ipAddresses: ipAddressesRequest,
@as("Direction") direction: resolverEndpointDirection,
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
@as("Name") name: option<name>,
@as("CreatorRequestId") creatorRequestId: creatorRequestId
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: option<resolverEndpoint>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "CreateResolverEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateFirewallRuleGroup = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("Name") name: name,
@as("CreatorRequestId") creatorRequestId: creatorRequestId
}
  type response = {
@as("FirewallRuleGroup") firewallRuleGroup: option<firewallRuleGroup>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "CreateFirewallRuleGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateFirewallDomainList = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("Name") name: name,
@as("CreatorRequestId") creatorRequestId: creatorRequestId
}
  type response = {
@as("FirewallDomainList") firewallDomainList: option<firewallDomainList>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "CreateFirewallDomainListCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateResolverEndpointIpAddress = {
  type t;
  type request = {
@as("IpAddress") ipAddress: ipAddressUpdate,
@as("ResolverEndpointId") resolverEndpointId: resourceId
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: option<resolverEndpoint>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "AssociateResolverEndpointIpAddressCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateFirewallRuleGroup = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("MutationProtection") mutationProtection: option<mutationProtectionStatus>,
@as("Name") name: name,
@as("Priority") priority: priority,
@as("VpcId") vpcId: resourceId,
@as("FirewallRuleGroupId") firewallRuleGroupId: resourceId,
@as("CreatorRequestId") creatorRequestId: creatorRequestId
}
  type response = {
@as("FirewallRuleGroupAssociation") firewallRuleGroupAssociation: option<firewallRuleGroupAssociation>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "AssociateFirewallRuleGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateResolverRule = {
  type t;
  type request = {
@as("Config") config: resolverRuleConfig,
@as("ResolverRuleId") resolverRuleId: resourceId
}
  type response = {
@as("ResolverRule") resolverRule: option<resolverRule>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "UpdateResolverRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResolverRuleAssociations = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("ResolverRuleAssociations") resolverRuleAssociations: option<resolverRuleAssociations>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListResolverRuleAssociationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResolverQueryLogConfigs = {
  type t;
  type request = {
@as("SortOrder") sortOrder: option<sortOrder>,
@as("SortBy") sortBy: option<sortByKey>,
@as("Filters") filters: option<filters>,
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("ResolverQueryLogConfigs") resolverQueryLogConfigs: option<resolverQueryLogConfigList>,
@as("TotalFilteredCount") totalFilteredCount: option<count>,
@as("TotalCount") totalCount: option<count>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListResolverQueryLogConfigsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResolverQueryLogConfigAssociations = {
  type t;
  type request = {
@as("SortOrder") sortOrder: option<sortOrder>,
@as("SortBy") sortBy: option<sortByKey>,
@as("Filters") filters: option<filters>,
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("ResolverQueryLogConfigAssociations") resolverQueryLogConfigAssociations: option<resolverQueryLogConfigAssociationList>,
@as("TotalFilteredCount") totalFilteredCount: option<count>,
@as("TotalCount") totalCount: option<count>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListResolverQueryLogConfigAssociationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResolverEndpoints = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("ResolverEndpoints") resolverEndpoints: option<resolverEndpoints>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListResolverEndpointsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResolverDnssecConfigs = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("ResolverDnssecConfigs") resolverDnssecConfigs: option<resolverDnssecConfigList>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListResolverDnssecConfigsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResolverRule = {
  type t;
  type request = {
@as("ResolverRuleId") resolverRuleId: resourceId
}
  type response = {
@as("ResolverRule") resolverRule: option<resolverRule>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "GetResolverRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteResolverRule = {
  type t;
  type request = {
@as("ResolverRuleId") resolverRuleId: resourceId
}
  type response = {
@as("ResolverRule") resolverRule: option<resolverRule>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "DeleteResolverRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateResolverRule = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("ResolverEndpointId") resolverEndpointId: option<resourceId>,
@as("TargetIps") targetIps: option<targetList>,
@as("DomainName") domainName: domainName,
@as("RuleType") ruleType: ruleTypeOption,
@as("Name") name: option<name>,
@as("CreatorRequestId") creatorRequestId: creatorRequestId
}
  type response = {
@as("ResolverRule") resolverRule: option<resolverRule>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "CreateResolverRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResolverRules = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("ResolverRules") resolverRules: option<resolverRules>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (request) => t = "ListResolverRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
