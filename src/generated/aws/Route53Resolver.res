type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validation = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type unsigned = int;
type tagValue = string
type tagKey = string
type subnetId = string
type amazonawsString = string
type statusMessage = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sortByKey = string
type shareStatus = [@as("SHARED_BY_ME") #SHARED_BY_ME | @as("SHARED_WITH_ME") #SHARED_WITH_ME | @as("NOT_SHARED") #NOT_SHARED]
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
type resolverQueryLogConfigAssociationStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("ACTION_NEEDED") #ACTION_NEEDED | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type resolverQueryLogConfigAssociationErrorMessage = string
type resolverQueryLogConfigAssociationError = [@as("INTERNAL_SERVICE_ERROR") #INTERNAL_SERVICE_ERROR | @as("ACCESS_DENIED") #ACCESS_DENIED | @as("DESTINATION_NOT_FOUND") #DESTINATION_NOT_FOUND | @as("NONE") #NONE]
type resolverEndpointStatus = [@as("DELETING") #DELETING | @as("ACTION_NEEDED") #ACTION_NEEDED | @as("AUTO_RECOVERING") #AUTO_RECOVERING | @as("UPDATING") #UPDATING | @as("OPERATIONAL") #OPERATIONAL | @as("CREATING") #CREATING]
type resolverEndpointDirection = [@as("OUTBOUND") #OUTBOUND | @as("INBOUND") #INBOUND]
type resolverDNSSECValidationStatus = [@as("DISABLED") #DISABLED | @as("DISABLING") #DISABLING | @as("ENABLED") #ENABLED | @as("ENABLING") #ENABLING]
type priority = int;
type port = int;
type nextToken = string
type name = string
type mutationProtectionStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type maxResults = int;
type listFirewallConfigsMaxResult = int;
type listDomainMaxResults = int;
type ipAddressStatus = [@as("DELETE_FAILED_FAS_EXPIRED") #DELETE_FAILED_FAS_EXPIRED | @as("DELETING") #DELETING | @as("FAILED_RESOURCE_GONE") #FAILED_RESOURCE_GONE | @as("DETACHING") #DETACHING | @as("REMAP_ATTACHING") #REMAP_ATTACHING | @as("REMAP_DETACHING") #REMAP_DETACHING | @as("ATTACHED") #ATTACHED | @as("ATTACHING") #ATTACHING | @as("FAILED_CREATION") #FAILED_CREATION | @as("CREATING") #CREATING]
type ipAddressCount = int;
type ip = string
type firewallRuleGroupStatus = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("COMPLETE") #COMPLETE]
type firewallRuleGroupPolicy = string
type firewallRuleGroupAssociationStatus = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("COMPLETE") #COMPLETE]
type firewallFailOpenStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type firewallDomainUpdateOperation = [@as("REPLACE") #REPLACE | @as("REMOVE") #REMOVE | @as("ADD") #ADD]
type firewallDomainName = string
type firewallDomainListStatus = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("IMPORTING") #IMPORTING | @as("COMPLETE_IMPORT_FAILED") #COMPLETE_IMPORT_FAILED | @as("COMPLETE") #COMPLETE]
type firewallDomainImportOperation = [@as("REPLACE") #REPLACE]
type filterValue = string
type filterName = string
type exceptionMessage = string
type domainName = string
type domainListFileUrl = string
type destinationArn = string
type creatorRequestId = string
type count = int;
type amazonawsBoolean = bool;
type blockResponse = [@as("OVERRIDE") #OVERRIDE | @as("NXDOMAIN") #NXDOMAIN | @as("NODATA") #NODATA]
type blockOverrideTtl = int;
type blockOverrideDomain = string
type blockOverrideDnsType = [@as("CNAME") #CNAME]
type arn = string
type action = [@as("ALERT") #ALERT | @as("BLOCK") #BLOCK | @as("ALLOW") #ALLOW]
type accountId = string
type targetAddress = {
@as("Port") port: port,
@as("Ip") ip: option<ip>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type securityGroupIds = array<resourceId>
type resolverRuleAssociation = {
@as("StatusMessage") statusMessage: statusMessage,
@as("Status") status: resolverRuleAssociationStatus,
@as("VPCId") vPCId: resourceId,
@as("Name") name: name,
@as("ResolverRuleId") resolverRuleId: resourceId,
@as("Id") id: resourceId
}
type resolverQueryLogConfigAssociation = {
@as("CreationTime") creationTime: rfc3339TimeString,
@as("ErrorMessage") errorMessage: resolverQueryLogConfigAssociationErrorMessage,
@as("Error") error: resolverQueryLogConfigAssociationError,
@as("Status") status: resolverQueryLogConfigAssociationStatus,
@as("ResourceId") resourceId: resourceId,
@as("ResolverQueryLogConfigId") resolverQueryLogConfigId: resourceId,
@as("Id") id: resourceId
}
type resolverQueryLogConfig = {
@as("CreationTime") creationTime: rfc3339TimeString,
@as("CreatorRequestId") creatorRequestId: creatorRequestId,
@as("DestinationArn") destinationArn: destinationArn,
@as("Name") name: resolverQueryLogConfigName,
@as("Arn") arn: arn,
@as("AssociationCount") associationCount: count,
@as("ShareStatus") shareStatus: shareStatus,
@as("Status") status: resolverQueryLogConfigStatus,
@as("OwnerId") ownerId: accountId,
@as("Id") id: resourceId
}
type resolverDnssecConfig = {
@as("ValidationStatus") validationStatus: resolverDNSSECValidationStatus,
@as("ResourceId") resourceId: resourceId,
@as("OwnerId") ownerId: accountId,
@as("Id") id: resourceId
}
type ipAddressUpdate = {
@as("Ip") ip: ip,
@as("SubnetId") subnetId: subnetId,
@as("IpId") ipId: resourceId
}
type ipAddressResponse = {
@as("ModificationTime") modificationTime: rfc3339TimeString,
@as("CreationTime") creationTime: rfc3339TimeString,
@as("StatusMessage") statusMessage: statusMessage,
@as("Status") status: ipAddressStatus,
@as("Ip") ip: ip,
@as("SubnetId") subnetId: subnetId,
@as("IpId") ipId: resourceId
}
type ipAddressRequest = {
@as("Ip") ip: ip,
@as("SubnetId") subnetId: option<subnetId>
}
type firewallRuleGroupMetadata = {
@as("ShareStatus") shareStatus: shareStatus,
@as("CreatorRequestId") creatorRequestId: creatorRequestId,
@as("OwnerId") ownerId: accountId,
@as("Name") name: name,
@as("Arn") arn: arn,
@as("Id") id: resourceId
}
type firewallRuleGroupAssociation = {
@as("ModificationTime") modificationTime: rfc3339TimeString,
@as("CreationTime") creationTime: rfc3339TimeString,
@as("CreatorRequestId") creatorRequestId: creatorRequestId,
@as("StatusMessage") statusMessage: statusMessage,
@as("Status") status: firewallRuleGroupAssociationStatus,
@as("ManagedOwnerName") managedOwnerName: servicePrinciple,
@as("MutationProtection") mutationProtection: mutationProtectionStatus,
@as("Priority") priority: priority,
@as("Name") name: name,
@as("VpcId") vpcId: resourceId,
@as("FirewallRuleGroupId") firewallRuleGroupId: resourceId,
@as("Arn") arn: arn,
@as("Id") id: resourceId
}
type firewallRuleGroup = {
@as("ModificationTime") modificationTime: rfc3339TimeString,
@as("CreationTime") creationTime: rfc3339TimeString,
@as("ShareStatus") shareStatus: shareStatus,
@as("CreatorRequestId") creatorRequestId: creatorRequestId,
@as("OwnerId") ownerId: accountId,
@as("StatusMessage") statusMessage: statusMessage,
@as("Status") status: firewallRuleGroupStatus,
@as("RuleCount") ruleCount: unsigned,
@as("Name") name: name,
@as("Arn") arn: arn,
@as("Id") id: resourceId
}
type firewallRule = {
@as("ModificationTime") modificationTime: rfc3339TimeString,
@as("CreationTime") creationTime: rfc3339TimeString,
@as("CreatorRequestId") creatorRequestId: creatorRequestId,
@as("BlockOverrideTtl") blockOverrideTtl: unsigned,
@as("BlockOverrideDnsType") blockOverrideDnsType: blockOverrideDnsType,
@as("BlockOverrideDomain") blockOverrideDomain: blockOverrideDomain,
@as("BlockResponse") blockResponse: blockResponse,
@as("Action") action: action,
@as("Priority") priority: priority,
@as("Name") name: name,
@as("FirewallDomainListId") firewallDomainListId: resourceId,
@as("FirewallRuleGroupId") firewallRuleGroupId: resourceId
}
type firewallDomains = array<firewallDomainName>
type firewallDomainListMetadata = {
@as("ManagedOwnerName") managedOwnerName: servicePrinciple,
@as("CreatorRequestId") creatorRequestId: creatorRequestId,
@as("Name") name: name,
@as("Arn") arn: arn,
@as("Id") id: resourceId
}
type firewallDomainList = {
@as("ModificationTime") modificationTime: rfc3339TimeString,
@as("CreationTime") creationTime: rfc3339TimeString,
@as("CreatorRequestId") creatorRequestId: creatorRequestId,
@as("ManagedOwnerName") managedOwnerName: servicePrinciple,
@as("StatusMessage") statusMessage: statusMessage,
@as("Status") status: firewallDomainListStatus,
@as("DomainCount") domainCount: unsigned,
@as("Name") name: name,
@as("Arn") arn: arn,
@as("Id") id: resourceId
}
type firewallConfig = {
@as("FirewallFailOpen") firewallFailOpen: firewallFailOpenStatus,
@as("OwnerId") ownerId: accountId,
@as("ResourceId") resourceId: resourceId,
@as("Id") id: resourceId
}
type filterValues = array<filterValue>
type targetList = array<targetAddress>
type tagList = array<tag>
type resolverRuleAssociations = array<resolverRuleAssociation>
type resolverQueryLogConfigList = array<resolverQueryLogConfig>
type resolverQueryLogConfigAssociationList = array<resolverQueryLogConfigAssociation>
type resolverEndpoint = {
@as("ModificationTime") modificationTime: rfc3339TimeString,
@as("CreationTime") creationTime: rfc3339TimeString,
@as("StatusMessage") statusMessage: statusMessage,
@as("Status") status: resolverEndpointStatus,
@as("HostVPCId") hostVPCId: resourceId,
@as("IpAddressCount") ipAddressCount: ipAddressCount,
@as("Direction") direction: resolverEndpointDirection,
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
@as("Name") name: name,
@as("Arn") arn: arn,
@as("CreatorRequestId") creatorRequestId: creatorRequestId,
@as("Id") id: resourceId
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
@as("Values") values: filterValues,
@as("Name") name: filterName
}
type resolverRuleConfig = {
@as("ResolverEndpointId") resolverEndpointId: resourceId,
@as("TargetIps") targetIps: targetList,
@as("Name") name: name
}
type resolverRule = {
@as("ModificationTime") modificationTime: rfc3339TimeString,
@as("CreationTime") creationTime: rfc3339TimeString,
@as("ShareStatus") shareStatus: shareStatus,
@as("OwnerId") ownerId: accountId,
@as("ResolverEndpointId") resolverEndpointId: resourceId,
@as("TargetIps") targetIps: targetList,
@as("Name") name: name,
@as("RuleType") ruleType: ruleTypeOption,
@as("StatusMessage") statusMessage: statusMessage,
@as("Status") status: resolverRuleStatus,
@as("DomainName") domainName: domainName,
@as("Arn") arn: arn,
@as("CreatorRequestId") creatorRequestId: creatorRequestId,
@as("Id") id: resourceId
}
type resolverEndpoints = array<resolverEndpoint>
type filters = array<filter>
type resolverRules = array<resolverRule>
type clientType;
@module("@aws-sdk/client-route53resolver") @new external createClient: unit => clientType = "Route53ResolverClient";
module PutResolverRulePolicy = {
  type t;
  type request = {
@as("ResolverRulePolicy") resolverRulePolicy: option<resolverRulePolicy>,
@as("Arn") arn: option<arn>
}
  type response = {
@as("ReturnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "PutResolverRulePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutResolverQueryLogConfigPolicy = {
  type t;
  type request = {
@as("ResolverQueryLogConfigPolicy") resolverQueryLogConfigPolicy: option<resolverQueryLogConfigPolicy>,
@as("Arn") arn: option<arn>
}
  type response = {
@as("ReturnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "PutResolverQueryLogConfigPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutFirewallRuleGroupPolicy = {
  type t;
  type request = {
@as("FirewallRuleGroupPolicy") firewallRuleGroupPolicy: option<firewallRuleGroupPolicy>,
@as("Arn") arn: option<arn>
}
  type response = {
@as("ReturnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "PutFirewallRuleGroupPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportFirewallDomains = {
  type t;
  type request = {
@as("DomainFileUrl") domainFileUrl: option<domainListFileUrl>,
@as("Operation") operation: option<firewallDomainImportOperation>,
@as("FirewallDomainListId") firewallDomainListId: option<resourceId>
}
  type response = {
@as("StatusMessage") statusMessage: statusMessage,
@as("Status") status: firewallDomainListStatus,
@as("Name") name: name,
@as("Id") id: resourceId
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ImportFirewallDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResolverRulePolicy = {
  type t;
  type request = {
@as("Arn") arn: option<arn>
}
  type response = {
@as("ResolverRulePolicy") resolverRulePolicy: resolverRulePolicy
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetResolverRulePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResolverQueryLogConfigPolicy = {
  type t;
  type request = {
@as("Arn") arn: option<arn>
}
  type response = {
@as("ResolverQueryLogConfigPolicy") resolverQueryLogConfigPolicy: resolverQueryLogConfigPolicy
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetResolverQueryLogConfigPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFirewallRuleGroupPolicy = {
  type t;
  type request = {
@as("Arn") arn: option<arn>
}
  type response = {
@as("FirewallRuleGroupPolicy") firewallRuleGroupPolicy: firewallRuleGroupPolicy
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetFirewallRuleGroupPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateResolverDnssecConfig = {
  type t;
  type request = {
@as("Validation") validation: option<validation>,
@as("ResourceId") resourceId: option<resourceId>
}
  type response = {
@as("ResolverDNSSECConfig") resolverDNSSECConfig: resolverDnssecConfig
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "UpdateResolverDnssecConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallRuleGroupAssociation = {
  type t;
  type request = {
@as("Name") name: name,
@as("MutationProtection") mutationProtection: mutationProtectionStatus,
@as("Priority") priority: priority,
@as("FirewallRuleGroupAssociationId") firewallRuleGroupAssociationId: option<resourceId>
}
  type response = {
@as("FirewallRuleGroupAssociation") firewallRuleGroupAssociation: firewallRuleGroupAssociation
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "UpdateFirewallRuleGroupAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallRule = {
  type t;
  type request = {
@as("Name") name: name,
@as("BlockOverrideTtl") blockOverrideTtl: blockOverrideTtl,
@as("BlockOverrideDnsType") blockOverrideDnsType: blockOverrideDnsType,
@as("BlockOverrideDomain") blockOverrideDomain: blockOverrideDomain,
@as("BlockResponse") blockResponse: blockResponse,
@as("Action") action: action,
@as("Priority") priority: priority,
@as("FirewallDomainListId") firewallDomainListId: option<resourceId>,
@as("FirewallRuleGroupId") firewallRuleGroupId: option<resourceId>
}
  type response = {
@as("FirewallRule") firewallRule: firewallRule
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "UpdateFirewallRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallDomains = {
  type t;
  type request = {
@as("Domains") domains: option<firewallDomains>,
@as("Operation") operation: option<firewallDomainUpdateOperation>,
@as("FirewallDomainListId") firewallDomainListId: option<resourceId>
}
  type response = {
@as("StatusMessage") statusMessage: statusMessage,
@as("Status") status: firewallDomainListStatus,
@as("Name") name: name,
@as("Id") id: resourceId
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "UpdateFirewallDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallConfig = {
  type t;
  type request = {
@as("FirewallFailOpen") firewallFailOpen: option<firewallFailOpenStatus>,
@as("ResourceId") resourceId: option<resourceId>
}
  type response = {
@as("FirewallConfig") firewallConfig: firewallConfig
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "UpdateFirewallConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFirewallDomains = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: listDomainMaxResults,
@as("FirewallDomainListId") firewallDomainListId: option<resourceId>
}
  type response = {
@as("Domains") domains: firewallDomains,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListFirewallDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResolverRuleAssociation = {
  type t;
  type request = {
@as("ResolverRuleAssociationId") resolverRuleAssociationId: option<resourceId>
}
  type response = {
@as("ResolverRuleAssociation") resolverRuleAssociation: resolverRuleAssociation
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetResolverRuleAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResolverQueryLogConfigAssociation = {
  type t;
  type request = {
@as("ResolverQueryLogConfigAssociationId") resolverQueryLogConfigAssociationId: option<resourceId>
}
  type response = {
@as("ResolverQueryLogConfigAssociation") resolverQueryLogConfigAssociation: resolverQueryLogConfigAssociation
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetResolverQueryLogConfigAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResolverQueryLogConfig = {
  type t;
  type request = {
@as("ResolverQueryLogConfigId") resolverQueryLogConfigId: option<resourceId>
}
  type response = {
@as("ResolverQueryLogConfig") resolverQueryLogConfig: resolverQueryLogConfig
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetResolverQueryLogConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResolverDnssecConfig = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<resourceId>
}
  type response = {
@as("ResolverDNSSECConfig") resolverDNSSECConfig: resolverDnssecConfig
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetResolverDnssecConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFirewallRuleGroupAssociation = {
  type t;
  type request = {
@as("FirewallRuleGroupAssociationId") firewallRuleGroupAssociationId: option<resourceId>
}
  type response = {
@as("FirewallRuleGroupAssociation") firewallRuleGroupAssociation: firewallRuleGroupAssociation
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetFirewallRuleGroupAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFirewallRuleGroup = {
  type t;
  type request = {
@as("FirewallRuleGroupId") firewallRuleGroupId: option<resourceId>
}
  type response = {
@as("FirewallRuleGroup") firewallRuleGroup: firewallRuleGroup
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetFirewallRuleGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFirewallDomainList = {
  type t;
  type request = {
@as("FirewallDomainListId") firewallDomainListId: option<resourceId>
}
  type response = {
@as("FirewallDomainList") firewallDomainList: firewallDomainList
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetFirewallDomainListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFirewallConfig = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<resourceId>
}
  type response = {
@as("FirewallConfig") firewallConfig: firewallConfig
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetFirewallConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateResolverRule = {
  type t;
  type request = {
@as("ResolverRuleId") resolverRuleId: option<resourceId>,
@as("VPCId") vPCId: option<resourceId>
}
  type response = {
@as("ResolverRuleAssociation") resolverRuleAssociation: resolverRuleAssociation
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "DisassociateResolverRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateResolverQueryLogConfig = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<resourceId>,
@as("ResolverQueryLogConfigId") resolverQueryLogConfigId: option<resourceId>
}
  type response = {
@as("ResolverQueryLogConfigAssociation") resolverQueryLogConfigAssociation: resolverQueryLogConfigAssociation
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "DisassociateResolverQueryLogConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateFirewallRuleGroup = {
  type t;
  type request = {
@as("FirewallRuleGroupAssociationId") firewallRuleGroupAssociationId: option<resourceId>
}
  type response = {
@as("FirewallRuleGroupAssociation") firewallRuleGroupAssociation: firewallRuleGroupAssociation
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "DisassociateFirewallRuleGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResolverQueryLogConfig = {
  type t;
  type request = {
@as("ResolverQueryLogConfigId") resolverQueryLogConfigId: option<resourceId>
}
  type response = {
@as("ResolverQueryLogConfig") resolverQueryLogConfig: resolverQueryLogConfig
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "DeleteResolverQueryLogConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFirewallRuleGroup = {
  type t;
  type request = {
@as("FirewallRuleGroupId") firewallRuleGroupId: option<resourceId>
}
  type response = {
@as("FirewallRuleGroup") firewallRuleGroup: firewallRuleGroup
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "DeleteFirewallRuleGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFirewallRule = {
  type t;
  type request = {
@as("FirewallDomainListId") firewallDomainListId: option<resourceId>,
@as("FirewallRuleGroupId") firewallRuleGroupId: option<resourceId>
}
  type response = {
@as("FirewallRule") firewallRule: firewallRule
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "DeleteFirewallRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFirewallDomainList = {
  type t;
  type request = {
@as("FirewallDomainListId") firewallDomainListId: option<resourceId>
}
  type response = {
@as("FirewallDomainList") firewallDomainList: firewallDomainList
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "DeleteFirewallDomainListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFirewallRule = {
  type t;
  type request = {
@as("Name") name: option<name>,
@as("BlockOverrideTtl") blockOverrideTtl: blockOverrideTtl,
@as("BlockOverrideDnsType") blockOverrideDnsType: blockOverrideDnsType,
@as("BlockOverrideDomain") blockOverrideDomain: blockOverrideDomain,
@as("BlockResponse") blockResponse: blockResponse,
@as("Action") action: option<action>,
@as("Priority") priority: option<priority>,
@as("FirewallDomainListId") firewallDomainListId: option<resourceId>,
@as("FirewallRuleGroupId") firewallRuleGroupId: option<resourceId>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>
}
  type response = {
@as("FirewallRule") firewallRule: firewallRule
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "CreateFirewallRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateResolverRule = {
  type t;
  type request = {
@as("VPCId") vPCId: option<resourceId>,
@as("Name") name: name,
@as("ResolverRuleId") resolverRuleId: option<resourceId>
}
  type response = {
@as("ResolverRuleAssociation") resolverRuleAssociation: resolverRuleAssociation
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "AssociateResolverRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateResolverQueryLogConfig = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<resourceId>,
@as("ResolverQueryLogConfigId") resolverQueryLogConfigId: option<resourceId>
}
  type response = {
@as("ResolverQueryLogConfigAssociation") resolverQueryLogConfigAssociation: resolverQueryLogConfigAssociation
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "AssociateResolverQueryLogConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateResolverEndpoint = {
  type t;
  type request = {
@as("Name") name: name,
@as("ResolverEndpointId") resolverEndpointId: option<resourceId>
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: resolverEndpoint
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "UpdateResolverEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResolverEndpointIpAddresses = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ResolverEndpointId") resolverEndpointId: option<resourceId>
}
  type response = {
@as("IpAddresses") ipAddresses: ipAddressesResponse,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListResolverEndpointIpAddressesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFirewallRules = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Action") action: action,
@as("Priority") priority: priority,
@as("FirewallRuleGroupId") firewallRuleGroupId: option<resourceId>
}
  type response = {
@as("FirewallRules") firewallRules: firewallRules,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListFirewallRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFirewallRuleGroups = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("FirewallRuleGroups") firewallRuleGroups: firewallRuleGroupMetadataList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListFirewallRuleGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFirewallRuleGroupAssociations = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Status") status: firewallRuleGroupAssociationStatus,
@as("Priority") priority: priority,
@as("VpcId") vpcId: resourceId,
@as("FirewallRuleGroupId") firewallRuleGroupId: resourceId
}
  type response = {
@as("FirewallRuleGroupAssociations") firewallRuleGroupAssociations: firewallRuleGroupAssociations,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListFirewallRuleGroupAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFirewallDomainLists = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("FirewallDomainLists") firewallDomainLists: firewallDomainListMetadataList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListFirewallDomainListsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFirewallConfigs = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: listFirewallConfigsMaxResult
}
  type response = {
@as("FirewallConfigs") firewallConfigs: firewallConfigList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListFirewallConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResolverEndpoint = {
  type t;
  type request = {
@as("ResolverEndpointId") resolverEndpointId: option<resourceId>
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: resolverEndpoint
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetResolverEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateResolverEndpointIpAddress = {
  type t;
  type request = {
@as("IpAddress") ipAddress: option<ipAddressUpdate>,
@as("ResolverEndpointId") resolverEndpointId: option<resourceId>
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: resolverEndpoint
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "DisassociateResolverEndpointIpAddressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResolverEndpoint = {
  type t;
  type request = {
@as("ResolverEndpointId") resolverEndpointId: option<resourceId>
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: resolverEndpoint
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "DeleteResolverEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResolverQueryLogConfig = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>,
@as("DestinationArn") destinationArn: option<destinationArn>,
@as("Name") name: option<resolverQueryLogConfigName>
}
  type response = {
@as("ResolverQueryLogConfig") resolverQueryLogConfig: resolverQueryLogConfig
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "CreateResolverQueryLogConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResolverEndpoint = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("IpAddresses") ipAddresses: option<ipAddressesRequest>,
@as("Direction") direction: option<resolverEndpointDirection>,
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
@as("Name") name: name,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: resolverEndpoint
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "CreateResolverEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFirewallRuleGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Name") name: option<name>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>
}
  type response = {
@as("FirewallRuleGroup") firewallRuleGroup: firewallRuleGroup
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "CreateFirewallRuleGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFirewallDomainList = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Name") name: option<name>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>
}
  type response = {
@as("FirewallDomainList") firewallDomainList: firewallDomainList
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "CreateFirewallDomainListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateResolverEndpointIpAddress = {
  type t;
  type request = {
@as("IpAddress") ipAddress: option<ipAddressUpdate>,
@as("ResolverEndpointId") resolverEndpointId: option<resourceId>
}
  type response = {
@as("ResolverEndpoint") resolverEndpoint: resolverEndpoint
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "AssociateResolverEndpointIpAddressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateFirewallRuleGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("MutationProtection") mutationProtection: mutationProtectionStatus,
@as("Name") name: option<name>,
@as("Priority") priority: option<priority>,
@as("VpcId") vpcId: option<resourceId>,
@as("FirewallRuleGroupId") firewallRuleGroupId: option<resourceId>,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>
}
  type response = {
@as("FirewallRuleGroupAssociation") firewallRuleGroupAssociation: firewallRuleGroupAssociation
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "AssociateFirewallRuleGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateResolverRule = {
  type t;
  type request = {
@as("Config") config: option<resolverRuleConfig>,
@as("ResolverRuleId") resolverRuleId: option<resourceId>
}
  type response = {
@as("ResolverRule") resolverRule: resolverRule
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "UpdateResolverRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResolverRuleAssociations = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("ResolverRuleAssociations") resolverRuleAssociations: resolverRuleAssociations,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListResolverRuleAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResolverQueryLogConfigs = {
  type t;
  type request = {
@as("SortOrder") sortOrder: sortOrder,
@as("SortBy") sortBy: sortByKey,
@as("Filters") filters: filters,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("ResolverQueryLogConfigs") resolverQueryLogConfigs: resolverQueryLogConfigList,
@as("TotalFilteredCount") totalFilteredCount: count,
@as("TotalCount") totalCount: count,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListResolverQueryLogConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResolverQueryLogConfigAssociations = {
  type t;
  type request = {
@as("SortOrder") sortOrder: sortOrder,
@as("SortBy") sortBy: sortByKey,
@as("Filters") filters: filters,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("ResolverQueryLogConfigAssociations") resolverQueryLogConfigAssociations: resolverQueryLogConfigAssociationList,
@as("TotalFilteredCount") totalFilteredCount: count,
@as("TotalCount") totalCount: count,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListResolverQueryLogConfigAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResolverEndpoints = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("ResolverEndpoints") resolverEndpoints: resolverEndpoints,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListResolverEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResolverDnssecConfigs = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("ResolverDnssecConfigs") resolverDnssecConfigs: resolverDnssecConfigList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListResolverDnssecConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResolverRule = {
  type t;
  type request = {
@as("ResolverRuleId") resolverRuleId: option<resourceId>
}
  type response = {
@as("ResolverRule") resolverRule: resolverRule
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "GetResolverRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResolverRule = {
  type t;
  type request = {
@as("ResolverRuleId") resolverRuleId: option<resourceId>
}
  type response = {
@as("ResolverRule") resolverRule: resolverRule
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "DeleteResolverRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResolverRule = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ResolverEndpointId") resolverEndpointId: resourceId,
@as("TargetIps") targetIps: targetList,
@as("DomainName") domainName: option<domainName>,
@as("RuleType") ruleType: option<ruleTypeOption>,
@as("Name") name: name,
@as("CreatorRequestId") creatorRequestId: option<creatorRequestId>
}
  type response = {
@as("ResolverRule") resolverRule: resolverRule
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "CreateResolverRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResolverRules = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("ResolverRules") resolverRules: resolverRules,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-route53resolver") @new external new_: (Js.Promise.t<request>) => t = "ListResolverRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
