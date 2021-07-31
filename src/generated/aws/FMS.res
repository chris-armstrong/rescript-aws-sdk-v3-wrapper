type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type violationTarget = string
type violationReason = [@as("RESOURCE_MISSING_DNS_FIREWALL") #RESOURCE_MISSING_DNS_FIREWALL | @as("NETWORK_FIREWALL_POLICY_MODIFIED") #NETWORK_FIREWALL_POLICY_MODIFIED | @as("MISSING_EXPECTED_ROUTE_TABLE") #MISSING_EXPECTED_ROUTE_TABLE | @as("MISSING_FIREWALL_SUBNET_IN_AZ") #MISSING_FIREWALL_SUBNET_IN_AZ | @as("MISSING_FIREWALL") #MISSING_FIREWALL | @as("FMS_CREATED_SECURITY_GROUP_EDITED") #FMS_CREATED_SECURITY_GROUP_EDITED | @as("SECURITY_GROUP_REDUNDANT") #SECURITY_GROUP_REDUNDANT | @as("SECURITY_GROUP_UNUSED") #SECURITY_GROUP_UNUSED | @as("RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP") #RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP | @as("RESOURCE_MISSING_SECURITY_GROUP") #RESOURCE_MISSING_SECURITY_GROUP | @as("RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION") #RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION | @as("RESOURCE_MISSING_SHIELD_PROTECTION") #RESOURCE_MISSING_SHIELD_PROTECTION | @as("RESOURCE_INCORRECT_WEB_ACL") #RESOURCE_INCORRECT_WEB_ACL | @as("RESOURCE_MISSING_WEB_ACL") #RESOURCE_MISSING_WEB_ACL | @as("WEB_ACL_MISSING_RULE_GROUP") #WEB_ACL_MISSING_RULE_GROUP]
type updateToken = string
type timeStamp = Js.Date.t;
type targetViolationReason = string
type tagValue = string
type tagKey = string
type statelessRuleGroupPriority = int;
type securityServiceType = [@as("DNS_FIREWALL") #DNS_FIREWALL | @as("NETWORK_FIREWALL") #NETWORK_FIREWALL | @as("SECURITY_GROUPS_USAGE_AUDIT") #SECURITY_GROUPS_USAGE_AUDIT | @as("SECURITY_GROUPS_CONTENT_AUDIT") #SECURITY_GROUPS_CONTENT_AUDIT | @as("SECURITY_GROUPS_COMMON") #SECURITY_GROUPS_COMMON | @as("SHIELD_ADVANCED") #SHIELD_ADVANCED | @as("WAFV2") #WAFV2 | @as("WAF") #WAF]
type resourceType = string
type resourceTagValue = string
type resourceTagKey = string
type resourceName = string
type resourceId = string
type resourceCount = float;
type resourceArn = string
type remediationActionType = [@as("MODIFY") #MODIFY | @as("REMOVE") #REMOVE]
type remediationActionDescription = string
type referenceRule = string
type protocol = string
type protectionData = string
type previousListVersion = string
type policyUpdateToken = string
type policyId = string
type policyComplianceStatusType = [@as("NON_COMPLIANT") #NON_COMPLIANT | @as("COMPLIANT") #COMPLIANT]
type paginationToken = string
type paginationMaxResults = int;
type networkFirewallResourceName = string
type networkFirewallAction = string
type managedServiceData = string
type listId = string
type lengthBoundedString = string
type iPPortNumber = float;
type errorMessage = string
type dnsRuleGroupPriority = int;
type detailedInfo = string
type dependentServiceName = [@as("AWSVPC") #AWSVPC | @as("AWSSHIELD_ADVANCED") #AWSSHIELD_ADVANCED | @as("AWSWAF") #AWSWAF | @as("AWSCONFIG") #AWSCONFIG]
type customerPolicyScopeIdType = [@as("ORG_UNIT") #ORG_UNIT | @as("ACCOUNT") #ACCOUNT]
type customerPolicyScopeId = string
type cIDR = string
type amazonawsBoolean = bool;
type basicInteger = int;
type accountRoleStatus = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("PENDING_DELETION") #PENDING_DELETION | @as("CREATING") #CREATING | @as("READY") #READY]
type aWSAccountId = string
type targetViolationReasons = array<targetViolationReason>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type statelessRuleGroup = {
@as("Priority") priority: statelessRuleGroupPriority,
@as("ResourceId") resourceId: resourceId,
@as("RuleGroupName") ruleGroupName: networkFirewallResourceName
}
type statefulRuleGroup = {
@as("ResourceId") resourceId: resourceId,
@as("RuleGroupName") ruleGroupName: networkFirewallResourceName
}
type securityServicePolicyData = {
@as("ManagedServiceData") managedServiceData: managedServiceData,
@as("Type") type_: option<securityServiceType>
}
type securityGroupRuleDescription = {
@as("ToPort") toPort: iPPortNumber,
@as("FromPort") fromPort: iPPortNumber,
@as("Protocol") protocol: lengthBoundedString,
@as("PrefixListId") prefixListId: resourceId,
@as("IPV6Range") iPV6Range: cIDR,
@as("IPV4Range") iPV4Range: cIDR
}
type resourceTypeList = array<resourceType>
type resourceTag = {
@as("Value") value: resourceTagValue,
@as("Key") key: option<resourceTagKey>
}
type resourceIdList = array<resourceId>
type protocolsList = array<protocol>
type policySummary = {
@as("RemediationEnabled") remediationEnabled: amazonawsBoolean,
@as("SecurityServiceType") securityServiceType: securityServiceType,
@as("ResourceType") resourceType: resourceType,
@as("PolicyName") policyName: resourceName,
@as("PolicyId") policyId: policyId,
@as("PolicyArn") policyArn: resourceArn
}
type networkFirewallMissingSubnetViolation = {
@as("TargetViolationReason") targetViolationReason: targetViolationReason,
@as("AvailabilityZone") availabilityZone: lengthBoundedString,
@as("VPC") vPC: resourceId,
@as("ViolationTarget") violationTarget: violationTarget
}
type networkFirewallMissingFirewallViolation = {
@as("TargetViolationReason") targetViolationReason: targetViolationReason,
@as("AvailabilityZone") availabilityZone: lengthBoundedString,
@as("VPC") vPC: resourceId,
@as("ViolationTarget") violationTarget: violationTarget
}
type networkFirewallMissingExpectedRTViolation = {
@as("ExpectedRouteTable") expectedRouteTable: resourceId,
@as("CurrentRouteTable") currentRouteTable: resourceId,
@as("AvailabilityZone") availabilityZone: lengthBoundedString,
@as("VPC") vPC: resourceId,
@as("ViolationTarget") violationTarget: violationTarget
}
type networkFirewallActionList = array<networkFirewallAction>
type memberAccounts = array<aWSAccountId>
type issueInfoMap = Js.Dict.t< detailedInfo>
type evaluationResult = {
@as("EvaluationLimitExceeded") evaluationLimitExceeded: amazonawsBoolean,
@as("ViolatorCount") violatorCount: resourceCount,
@as("ComplianceStatus") complianceStatus: policyComplianceStatusType
}
type dnsRuleGroupPriorities = array<dnsRuleGroupPriority>
type dnsRuleGroupLimitExceededViolation = {
@as("NumberOfRuleGroupsAlreadyAssociated") numberOfRuleGroupsAlreadyAssociated: basicInteger,
@as("ViolationTargetDescription") violationTargetDescription: lengthBoundedString,
@as("ViolationTarget") violationTarget: violationTarget
}
type dnsDuplicateRuleGroupViolation = {
@as("ViolationTargetDescription") violationTargetDescription: lengthBoundedString,
@as("ViolationTarget") violationTarget: violationTarget
}
type customerPolicyScopeIdList = array<customerPolicyScopeId>
type complianceViolator = {
@as("ResourceType") resourceType: resourceType,
@as("ViolationReason") violationReason: violationReason,
@as("ResourceId") resourceId: resourceId
}
type app = {
@as("Port") port: option<iPPortNumber>,
@as("Protocol") protocol: option<protocol>,
@as("AppName") appName: option<resourceName>
}
type tagList = array<tag>
type statelessRuleGroupList = array<statelessRuleGroup>
type statefulRuleGroupList = array<statefulRuleGroup>
type securityGroupRemediationAction = {
@as("IsDefaultAction") isDefaultAction: amazonawsBoolean,
@as("RemediationResult") remediationResult: securityGroupRuleDescription,
@as("Description") description: remediationActionDescription,
@as("RemediationActionType") remediationActionType: remediationActionType
}
type resourceTags = array<resourceTag>
type protocolsListDataSummary = {
@as("ProtocolsList") protocolsList: protocolsList,
@as("ListName") listName: resourceName,
@as("ListId") listId: listId,
@as("ListArn") listArn: resourceArn
}
type previousProtocolsList = Js.Dict.t< protocolsList>
type policySummaryList = array<policySummary>
type partialMatch = {
@as("TargetViolationReasons") targetViolationReasons: targetViolationReasons,
@as("Reference") reference: referenceRule
}
type evaluationResults = array<evaluationResult>
type dnsRuleGroupPriorityConflictViolation = {
@as("UnavailablePriorities") unavailablePriorities: dnsRuleGroupPriorities,
@as("ConflictingPolicyId") conflictingPolicyId: policyId,
@as("ConflictingPriority") conflictingPriority: dnsRuleGroupPriority,
@as("ViolationTargetDescription") violationTargetDescription: lengthBoundedString,
@as("ViolationTarget") violationTarget: violationTarget
}
type customerPolicyScopeMap = Js.Dict.t< customerPolicyScopeIdList>
type complianceViolators = array<complianceViolator>
type awsEc2NetworkInterfaceViolation = {
@as("ViolatingSecurityGroups") violatingSecurityGroups: resourceIdList,
@as("ViolationTarget") violationTarget: violationTarget
}
type appsList = array<app>
type securityGroupRemediationActions = array<securityGroupRemediationAction>
type protocolsListsData = array<protocolsListDataSummary>
type protocolsListData = {
@as("PreviousProtocolsList") previousProtocolsList: previousProtocolsList,
@as("ProtocolsList") protocolsList: option<protocolsList>,
@as("LastUpdateTime") lastUpdateTime: timeStamp,
@as("CreateTime") createTime: timeStamp,
@as("ListUpdateToken") listUpdateToken: updateToken,
@as("ListName") listName: option<resourceName>,
@as("ListId") listId: listId
}
type previousAppsList = Js.Dict.t< appsList>
type policyComplianceStatus = {
@as("IssueInfoMap") issueInfoMap: issueInfoMap,
@as("LastUpdated") lastUpdated: timeStamp,
@as("EvaluationResults") evaluationResults: evaluationResults,
@as("MemberAccount") memberAccount: aWSAccountId,
@as("PolicyName") policyName: resourceName,
@as("PolicyId") policyId: policyId,
@as("PolicyOwner") policyOwner: aWSAccountId
}
type policyComplianceDetail = {
@as("IssueInfoMap") issueInfoMap: issueInfoMap,
@as("ExpiredAt") expiredAt: timeStamp,
@as("EvaluationLimitExceeded") evaluationLimitExceeded: amazonawsBoolean,
@as("Violators") violators: complianceViolators,
@as("MemberAccount") memberAccount: aWSAccountId,
@as("PolicyId") policyId: policyId,
@as("PolicyOwner") policyOwner: aWSAccountId
}
type policy = {
@as("ExcludeMap") excludeMap: customerPolicyScopeMap,
@as("IncludeMap") includeMap: customerPolicyScopeMap,
@as("RemediationEnabled") remediationEnabled: option<amazonawsBoolean>,
@as("ExcludeResourceTags") excludeResourceTags: option<amazonawsBoolean>,
@as("ResourceTags") resourceTags: resourceTags,
@as("ResourceTypeList") resourceTypeList: resourceTypeList,
@as("ResourceType") resourceType: option<resourceType>,
@as("SecurityServicePolicyData") securityServicePolicyData: option<securityServicePolicyData>,
@as("PolicyUpdateToken") policyUpdateToken: policyUpdateToken,
@as("PolicyName") policyName: option<resourceName>,
@as("PolicyId") policyId: policyId
}
type partialMatches = array<partialMatch>
type networkFirewallPolicyDescription = {
@as("StatefulRuleGroups") statefulRuleGroups: statefulRuleGroupList,
@as("StatelessCustomActions") statelessCustomActions: networkFirewallActionList,
@as("StatelessFragmentDefaultActions") statelessFragmentDefaultActions: networkFirewallActionList,
@as("StatelessDefaultActions") statelessDefaultActions: networkFirewallActionList,
@as("StatelessRuleGroups") statelessRuleGroups: statelessRuleGroupList
}
type awsEc2NetworkInterfaceViolations = array<awsEc2NetworkInterfaceViolation>
type appsListDataSummary = {
@as("AppsList") appsList: appsList,
@as("ListName") listName: resourceName,
@as("ListId") listId: listId,
@as("ListArn") listArn: resourceArn
}
type policyComplianceStatusList = array<policyComplianceStatus>
type networkFirewallPolicyModifiedViolation = {
@as("ExpectedPolicyDescription") expectedPolicyDescription: networkFirewallPolicyDescription,
@as("CurrentPolicyDescription") currentPolicyDescription: networkFirewallPolicyDescription,
@as("ViolationTarget") violationTarget: violationTarget
}
type awsVPCSecurityGroupViolation = {
@as("PossibleSecurityGroupRemediationActions") possibleSecurityGroupRemediationActions: securityGroupRemediationActions,
@as("PartialMatches") partialMatches: partialMatches,
@as("ViolationTargetDescription") violationTargetDescription: lengthBoundedString,
@as("ViolationTarget") violationTarget: violationTarget
}
type awsEc2InstanceViolation = {
@as("AwsEc2NetworkInterfaceViolations") awsEc2NetworkInterfaceViolations: awsEc2NetworkInterfaceViolations,
@as("ViolationTarget") violationTarget: violationTarget
}
type appsListsData = array<appsListDataSummary>
type appsListData = {
@as("PreviousAppsList") previousAppsList: previousAppsList,
@as("AppsList") appsList: option<appsList>,
@as("LastUpdateTime") lastUpdateTime: timeStamp,
@as("CreateTime") createTime: timeStamp,
@as("ListUpdateToken") listUpdateToken: updateToken,
@as("ListName") listName: option<resourceName>,
@as("ListId") listId: listId
}
type resourceViolation = {
@as("DnsRuleGroupLimitExceededViolation") dnsRuleGroupLimitExceededViolation: dnsRuleGroupLimitExceededViolation,
@as("DnsDuplicateRuleGroupViolation") dnsDuplicateRuleGroupViolation: dnsDuplicateRuleGroupViolation,
@as("DnsRuleGroupPriorityConflictViolation") dnsRuleGroupPriorityConflictViolation: dnsRuleGroupPriorityConflictViolation,
@as("NetworkFirewallPolicyModifiedViolation") networkFirewallPolicyModifiedViolation: networkFirewallPolicyModifiedViolation,
@as("NetworkFirewallMissingExpectedRTViolation") networkFirewallMissingExpectedRTViolation: networkFirewallMissingExpectedRTViolation,
@as("NetworkFirewallMissingSubnetViolation") networkFirewallMissingSubnetViolation: networkFirewallMissingSubnetViolation,
@as("NetworkFirewallMissingFirewallViolation") networkFirewallMissingFirewallViolation: networkFirewallMissingFirewallViolation,
@as("AwsEc2InstanceViolation") awsEc2InstanceViolation: awsEc2InstanceViolation,
@as("AwsEc2NetworkInterfaceViolation") awsEc2NetworkInterfaceViolation: awsEc2NetworkInterfaceViolation,
@as("AwsVPCSecurityGroupViolation") awsVPCSecurityGroupViolation: awsVPCSecurityGroupViolation
}
type resourceViolations = array<resourceViolation>
type violationDetail = {
@as("ResourceDescription") resourceDescription: lengthBoundedString,
@as("ResourceTags") resourceTags: tagList,
@as("ResourceViolations") resourceViolations: option<resourceViolations>,
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceId") resourceId: option<resourceId>,
@as("MemberAccount") memberAccount: option<aWSAccountId>,
@as("PolicyId") policyId: option<policyId>
}
type clientType;
@module("@aws-sdk/client-fms") @new external createClient: unit => clientType = "FMSClient";
module PutNotificationChannel = {
  type t;
  type request = {
@as("SnsRoleName") snsRoleName: option<resourceArn>,
@as("SnsTopicArn") snsTopicArn: option<resourceArn>
}
  
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "PutNotificationChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetProtectionStatus = {
  type t;
  type request = {
@as("MaxResults") maxResults: paginationMaxResults,
@as("NextToken") nextToken: paginationToken,
@as("EndTime") endTime: timeStamp,
@as("StartTime") startTime: timeStamp,
@as("MemberAccountId") memberAccountId: aWSAccountId,
@as("PolicyId") policyId: option<policyId>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Data") data: protectionData,
@as("ServiceType") serviceType: securityServiceType,
@as("AdminAccountId") adminAccountId: aWSAccountId
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "GetProtectionStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetNotificationChannel = {
  type t;
  type request = unit
  type response = {
@as("SnsRoleName") snsRoleName: resourceArn,
@as("SnsTopicArn") snsTopicArn: resourceArn
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "GetNotificationChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAdminAccount = {
  type t;
  type request = unit
  type response = {
@as("RoleStatus") roleStatus: accountRoleStatus,
@as("AdminAccount") adminAccount: aWSAccountId
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "GetAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateAdminAccount = {
  type t;
  type request = unit
  
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "DisassociateAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteProtocolsList = {
  type t;
  type request = {
@as("ListId") listId: option<listId>
}
  
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "DeleteProtocolsListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePolicy = {
  type t;
  type request = {
@as("DeleteAllPolicyResources") deleteAllPolicyResources: amazonawsBoolean,
@as("PolicyId") policyId: option<policyId>
}
  
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "DeletePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteNotificationChannel = {
  type t;
  type request = unit
  
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "DeleteNotificationChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAppsList = {
  type t;
  type request = {
@as("ListId") listId: option<listId>
}
  
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "DeleteAppsListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssociateAdminAccount = {
  type t;
  type request = {
@as("AdminAccount") adminAccount: option<aWSAccountId>
}
  
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "AssociateAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMemberAccounts = {
  type t;
  type request = {
@as("MaxResults") maxResults: paginationMaxResults,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("MemberAccounts") memberAccounts: memberAccounts
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "ListMemberAccountsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("TagList") tagList: option<tagList>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("TagList") tagList: tagList
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPolicies = {
  type t;
  type request = {
@as("MaxResults") maxResults: paginationMaxResults,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("PolicyList") policyList: policySummaryList
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "ListPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutProtocolsList = {
  type t;
  type request = {
@as("TagList") tagList: tagList,
@as("ProtocolsList") protocolsList: option<protocolsListData>
}
  type response = {
@as("ProtocolsListArn") protocolsListArn: resourceArn,
@as("ProtocolsList") protocolsList: protocolsListData
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "PutProtocolsListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutPolicy = {
  type t;
  type request = {
@as("TagList") tagList: tagList,
@as("Policy") policy: option<policy>
}
  type response = {
@as("PolicyArn") policyArn: resourceArn,
@as("Policy") policy: policy
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "PutPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProtocolsLists = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<paginationMaxResults>,
@as("NextToken") nextToken: paginationToken,
@as("DefaultLists") defaultLists: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("ProtocolsLists") protocolsLists: protocolsListsData
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "ListProtocolsListsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetProtocolsList = {
  type t;
  type request = {
@as("DefaultList") defaultList: amazonawsBoolean,
@as("ListId") listId: option<listId>
}
  type response = {
@as("ProtocolsListArn") protocolsListArn: resourceArn,
@as("ProtocolsList") protocolsList: protocolsListData
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "GetProtocolsListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPolicy = {
  type t;
  type request = {
@as("PolicyId") policyId: option<policyId>
}
  type response = {
@as("PolicyArn") policyArn: resourceArn,
@as("Policy") policy: policy
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "GetPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetComplianceDetail = {
  type t;
  type request = {
@as("MemberAccount") memberAccount: option<aWSAccountId>,
@as("PolicyId") policyId: option<policyId>
}
  type response = {
@as("PolicyComplianceDetail") policyComplianceDetail: policyComplianceDetail
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "GetComplianceDetailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAppsList = {
  type t;
  type request = {
@as("TagList") tagList: tagList,
@as("AppsList") appsList: option<appsListData>
}
  type response = {
@as("AppsListArn") appsListArn: resourceArn,
@as("AppsList") appsList: appsListData
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "PutAppsListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListComplianceStatus = {
  type t;
  type request = {
@as("MaxResults") maxResults: paginationMaxResults,
@as("NextToken") nextToken: paginationToken,
@as("PolicyId") policyId: option<policyId>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("PolicyComplianceStatusList") policyComplianceStatusList: policyComplianceStatusList
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "ListComplianceStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAppsLists = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<paginationMaxResults>,
@as("NextToken") nextToken: paginationToken,
@as("DefaultLists") defaultLists: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("AppsLists") appsLists: appsListsData
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "ListAppsListsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAppsList = {
  type t;
  type request = {
@as("DefaultList") defaultList: amazonawsBoolean,
@as("ListId") listId: option<listId>
}
  type response = {
@as("AppsListArn") appsListArn: resourceArn,
@as("AppsList") appsList: appsListData
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "GetAppsListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetViolationDetails = {
  type t;
  type request = {
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceId") resourceId: option<resourceId>,
@as("MemberAccount") memberAccount: option<aWSAccountId>,
@as("PolicyId") policyId: option<policyId>
}
  type response = {
@as("ViolationDetail") violationDetail: violationDetail
}
  @module("@aws-sdk/client-fms") @new external new_: (Js.Promise.t<request>) => t = "GetViolationDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
