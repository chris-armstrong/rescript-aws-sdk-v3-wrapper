type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-fms") @new external createClient: unit => awsServiceClient = "FMSClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type violationTarget = string
type violationReason = [
  | @as("RESOURCE_MISSING_DNS_FIREWALL") #RESOURCE_MISSING_DNS_FIREWALL
  | @as("NETWORK_FIREWALL_POLICY_MODIFIED") #NETWORK_FIREWALL_POLICY_MODIFIED
  | @as("MISSING_EXPECTED_ROUTE_TABLE") #MISSING_EXPECTED_ROUTE_TABLE
  | @as("MISSING_FIREWALL_SUBNET_IN_AZ") #MISSING_FIREWALL_SUBNET_IN_AZ
  | @as("MISSING_FIREWALL") #MISSING_FIREWALL
  | @as("FMS_CREATED_SECURITY_GROUP_EDITED") #FMS_CREATED_SECURITY_GROUP_EDITED
  | @as("SECURITY_GROUP_REDUNDANT") #SECURITY_GROUP_REDUNDANT
  | @as("SECURITY_GROUP_UNUSED") #SECURITY_GROUP_UNUSED
  | @as("RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP") #RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP
  | @as("RESOURCE_MISSING_SECURITY_GROUP") #RESOURCE_MISSING_SECURITY_GROUP
  | @as("RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION")
  #RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION
  | @as("RESOURCE_MISSING_SHIELD_PROTECTION") #RESOURCE_MISSING_SHIELD_PROTECTION
  | @as("RESOURCE_INCORRECT_WEB_ACL") #RESOURCE_INCORRECT_WEB_ACL
  | @as("RESOURCE_MISSING_WEB_ACL") #RESOURCE_MISSING_WEB_ACL
  | @as("WEB_ACL_MISSING_RULE_GROUP") #WEB_ACL_MISSING_RULE_GROUP
]
type updateToken = string
type timeStamp = Js.Date.t
type targetViolationReason = string
type tagValue = string
type tagKey = string
type statelessRuleGroupPriority = int
type securityServiceType = [
  | @as("DNS_FIREWALL") #DNS_FIREWALL
  | @as("NETWORK_FIREWALL") #NETWORK_FIREWALL
  | @as("SECURITY_GROUPS_USAGE_AUDIT") #SECURITY_GROUPS_USAGE_AUDIT
  | @as("SECURITY_GROUPS_CONTENT_AUDIT") #SECURITY_GROUPS_CONTENT_AUDIT
  | @as("SECURITY_GROUPS_COMMON") #SECURITY_GROUPS_COMMON
  | @as("SHIELD_ADVANCED") #SHIELD_ADVANCED
  | @as("WAFV2") #WAFV2
  | @as("WAF") #WAF
]
type resourceType = string
type resourceTagValue = string
type resourceTagKey = string
type resourceName = string
type resourceId = string
type resourceCount = float
type resourceArn = string
type remediationActionType = [@as("MODIFY") #MODIFY | @as("REMOVE") #REMOVE]
type remediationActionDescription = string
type referenceRule = string
type protocol = string
type protectionData = string
type previousListVersion = string
type policyUpdateToken = string
type policyId = string
type policyComplianceStatusType = [
  | @as("NON_COMPLIANT") #NON_COMPLIANT
  | @as("COMPLIANT") #COMPLIANT
]
type paginationToken = string
type paginationMaxResults = int
type networkFirewallResourceName = string
type networkFirewallAction = string
type managedServiceData = string
type listId = string
type lengthBoundedString = string
type ipportNumber = float
type errorMessage = string
type dnsRuleGroupPriority = int
type detailedInfo = string
type dependentServiceName = [
  | @as("AWSVPC") #AWSVPC
  | @as("AWSSHIELD_ADVANCED") #AWSSHIELD_ADVANCED
  | @as("AWSWAF") #AWSWAF
  | @as("AWSCONFIG") #AWSCONFIG
]
type customerPolicyScopeIdType = [@as("ORG_UNIT") #ORG_UNIT | @as("ACCOUNT") #ACCOUNT]
type customerPolicyScopeId = string
type cidr = string
type boolean_ = bool
type basicInteger = int
type accountRoleStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("PENDING_DELETION") #PENDING_DELETION
  | @as("CREATING") #CREATING
  | @as("READY") #READY
]
type awsaccountId = string
type targetViolationReasons = array<targetViolationReason>
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type statelessRuleGroup = {
  @as("Priority") priority: option<statelessRuleGroupPriority>,
  @as("ResourceId") resourceId: option<resourceId>,
  @as("RuleGroupName") ruleGroupName: option<networkFirewallResourceName>,
}
type statefulRuleGroup = {
  @as("ResourceId") resourceId: option<resourceId>,
  @as("RuleGroupName") ruleGroupName: option<networkFirewallResourceName>,
}
type securityServicePolicyData = {
  @as("ManagedServiceData") managedServiceData: option<managedServiceData>,
  @as("Type") type_: securityServiceType,
}
type securityGroupRuleDescription = {
  @as("ToPort") toPort: option<ipportNumber>,
  @as("FromPort") fromPort: option<ipportNumber>,
  @as("Protocol") protocol: option<lengthBoundedString>,
  @as("PrefixListId") prefixListId: option<resourceId>,
  @as("IPV6Range") ipv6Range: option<cidr>,
  @as("IPV4Range") ipv4Range: option<cidr>,
}
type resourceTypeList = array<resourceType>
type resourceTag = {
  @as("Value") value: option<resourceTagValue>,
  @as("Key") key: resourceTagKey,
}
type resourceIdList = array<resourceId>
type protocolsList = array<protocol>
type policySummary = {
  @as("RemediationEnabled") remediationEnabled: option<boolean_>,
  @as("SecurityServiceType") securityServiceType: option<securityServiceType>,
  @as("ResourceType") resourceType: option<resourceType>,
  @as("PolicyName") policyName: option<resourceName>,
  @as("PolicyId") policyId: option<policyId>,
  @as("PolicyArn") policyArn: option<resourceArn>,
}
type networkFirewallMissingSubnetViolation = {
  @as("TargetViolationReason") targetViolationReason: option<targetViolationReason>,
  @as("AvailabilityZone") availabilityZone: option<lengthBoundedString>,
  @as("VPC") vpc: option<resourceId>,
  @as("ViolationTarget") violationTarget: option<violationTarget>,
}
type networkFirewallMissingFirewallViolation = {
  @as("TargetViolationReason") targetViolationReason: option<targetViolationReason>,
  @as("AvailabilityZone") availabilityZone: option<lengthBoundedString>,
  @as("VPC") vpc: option<resourceId>,
  @as("ViolationTarget") violationTarget: option<violationTarget>,
}
type networkFirewallMissingExpectedRTViolation = {
  @as("ExpectedRouteTable") expectedRouteTable: option<resourceId>,
  @as("CurrentRouteTable") currentRouteTable: option<resourceId>,
  @as("AvailabilityZone") availabilityZone: option<lengthBoundedString>,
  @as("VPC") vpc: option<resourceId>,
  @as("ViolationTarget") violationTarget: option<violationTarget>,
}
type networkFirewallActionList = array<networkFirewallAction>
type memberAccounts = array<awsaccountId>
type issueInfoMap = Js.Dict.t<detailedInfo>
type evaluationResult = {
  @as("EvaluationLimitExceeded") evaluationLimitExceeded: option<boolean_>,
  @as("ViolatorCount") violatorCount: option<resourceCount>,
  @as("ComplianceStatus") complianceStatus: option<policyComplianceStatusType>,
}
type dnsRuleGroupPriorities = array<dnsRuleGroupPriority>
type dnsRuleGroupLimitExceededViolation = {
  @as("NumberOfRuleGroupsAlreadyAssociated")
  numberOfRuleGroupsAlreadyAssociated: option<basicInteger>,
  @as("ViolationTargetDescription") violationTargetDescription: option<lengthBoundedString>,
  @as("ViolationTarget") violationTarget: option<violationTarget>,
}
type dnsDuplicateRuleGroupViolation = {
  @as("ViolationTargetDescription") violationTargetDescription: option<lengthBoundedString>,
  @as("ViolationTarget") violationTarget: option<violationTarget>,
}
type customerPolicyScopeIdList = array<customerPolicyScopeId>
type complianceViolator = {
  @as("ResourceType") resourceType: option<resourceType>,
  @as("ViolationReason") violationReason: option<violationReason>,
  @as("ResourceId") resourceId: option<resourceId>,
}
type app = {
  @as("Port") port: ipportNumber,
  @as("Protocol") protocol: protocol,
  @as("AppName") appName: resourceName,
}
type tagList_ = array<tag>
type statelessRuleGroupList = array<statelessRuleGroup>
type statefulRuleGroupList = array<statefulRuleGroup>
type securityGroupRemediationAction = {
  @as("IsDefaultAction") isDefaultAction: option<boolean_>,
  @as("RemediationResult") remediationResult: option<securityGroupRuleDescription>,
  @as("Description") description: option<remediationActionDescription>,
  @as("RemediationActionType") remediationActionType: option<remediationActionType>,
}
type resourceTags = array<resourceTag>
type protocolsListDataSummary = {
  @as("ProtocolsList") protocolsList: option<protocolsList>,
  @as("ListName") listName: option<resourceName>,
  @as("ListId") listId: option<listId>,
  @as("ListArn") listArn: option<resourceArn>,
}
type previousProtocolsList = Js.Dict.t<protocolsList>
type policySummaryList = array<policySummary>
type partialMatch = {
  @as("TargetViolationReasons") targetViolationReasons: option<targetViolationReasons>,
  @as("Reference") reference: option<referenceRule>,
}
type evaluationResults = array<evaluationResult>
type dnsRuleGroupPriorityConflictViolation = {
  @as("UnavailablePriorities") unavailablePriorities: option<dnsRuleGroupPriorities>,
  @as("ConflictingPolicyId") conflictingPolicyId: option<policyId>,
  @as("ConflictingPriority") conflictingPriority: option<dnsRuleGroupPriority>,
  @as("ViolationTargetDescription") violationTargetDescription: option<lengthBoundedString>,
  @as("ViolationTarget") violationTarget: option<violationTarget>,
}
type customerPolicyScopeMap = Js.Dict.t<customerPolicyScopeIdList>
type complianceViolators = array<complianceViolator>
type awsEc2NetworkInterfaceViolation = {
  @as("ViolatingSecurityGroups") violatingSecurityGroups: option<resourceIdList>,
  @as("ViolationTarget") violationTarget: option<violationTarget>,
}
type appsList = array<app>
type securityGroupRemediationActions = array<securityGroupRemediationAction>
type protocolsListsData = array<protocolsListDataSummary>
type protocolsListData = {
  @as("PreviousProtocolsList") previousProtocolsList: option<previousProtocolsList>,
  @as("ProtocolsList") protocolsList: protocolsList,
  @as("LastUpdateTime") lastUpdateTime: option<timeStamp>,
  @as("CreateTime") createTime: option<timeStamp>,
  @as("ListUpdateToken") listUpdateToken: option<updateToken>,
  @as("ListName") listName: resourceName,
  @as("ListId") listId: option<listId>,
}
type previousAppsList = Js.Dict.t<appsList>
type policyComplianceStatus = {
  @as("IssueInfoMap") issueInfoMap: option<issueInfoMap>,
  @as("LastUpdated") lastUpdated: option<timeStamp>,
  @as("EvaluationResults") evaluationResults: option<evaluationResults>,
  @as("MemberAccount") memberAccount: option<awsaccountId>,
  @as("PolicyName") policyName: option<resourceName>,
  @as("PolicyId") policyId: option<policyId>,
  @as("PolicyOwner") policyOwner: option<awsaccountId>,
}
type policyComplianceDetail = {
  @as("IssueInfoMap") issueInfoMap: option<issueInfoMap>,
  @as("ExpiredAt") expiredAt: option<timeStamp>,
  @as("EvaluationLimitExceeded") evaluationLimitExceeded: option<boolean_>,
  @as("Violators") violators: option<complianceViolators>,
  @as("MemberAccount") memberAccount: option<awsaccountId>,
  @as("PolicyId") policyId: option<policyId>,
  @as("PolicyOwner") policyOwner: option<awsaccountId>,
}
type policy = {
  @as("ExcludeMap") excludeMap: option<customerPolicyScopeMap>,
  @as("IncludeMap") includeMap: option<customerPolicyScopeMap>,
  @as("RemediationEnabled") remediationEnabled: boolean_,
  @as("ExcludeResourceTags") excludeResourceTags: boolean_,
  @as("ResourceTags") resourceTags: option<resourceTags>,
  @as("ResourceTypeList") resourceTypeList: option<resourceTypeList>,
  @as("ResourceType") resourceType: resourceType,
  @as("SecurityServicePolicyData") securityServicePolicyData: securityServicePolicyData,
  @as("PolicyUpdateToken") policyUpdateToken: option<policyUpdateToken>,
  @as("PolicyName") policyName: resourceName,
  @as("PolicyId") policyId: option<policyId>,
}
type partialMatches = array<partialMatch>
type networkFirewallPolicyDescription = {
  @as("StatefulRuleGroups") statefulRuleGroups: option<statefulRuleGroupList>,
  @as("StatelessCustomActions") statelessCustomActions: option<networkFirewallActionList>,
  @as("StatelessFragmentDefaultActions")
  statelessFragmentDefaultActions: option<networkFirewallActionList>,
  @as("StatelessDefaultActions") statelessDefaultActions: option<networkFirewallActionList>,
  @as("StatelessRuleGroups") statelessRuleGroups: option<statelessRuleGroupList>,
}
type awsEc2NetworkInterfaceViolations = array<awsEc2NetworkInterfaceViolation>
type appsListDataSummary = {
  @as("AppsList") appsList: option<appsList>,
  @as("ListName") listName: option<resourceName>,
  @as("ListId") listId: option<listId>,
  @as("ListArn") listArn: option<resourceArn>,
}
type policyComplianceStatusList = array<policyComplianceStatus>
type networkFirewallPolicyModifiedViolation = {
  @as("ExpectedPolicyDescription")
  expectedPolicyDescription: option<networkFirewallPolicyDescription>,
  @as("CurrentPolicyDescription")
  currentPolicyDescription: option<networkFirewallPolicyDescription>,
  @as("ViolationTarget") violationTarget: option<violationTarget>,
}
type awsVPCSecurityGroupViolation = {
  @as("PossibleSecurityGroupRemediationActions")
  possibleSecurityGroupRemediationActions: option<securityGroupRemediationActions>,
  @as("PartialMatches") partialMatches: option<partialMatches>,
  @as("ViolationTargetDescription") violationTargetDescription: option<lengthBoundedString>,
  @as("ViolationTarget") violationTarget: option<violationTarget>,
}
type awsEc2InstanceViolation = {
  @as("AwsEc2NetworkInterfaceViolations")
  awsEc2NetworkInterfaceViolations: option<awsEc2NetworkInterfaceViolations>,
  @as("ViolationTarget") violationTarget: option<violationTarget>,
}
type appsListsData = array<appsListDataSummary>
type appsListData = {
  @as("PreviousAppsList") previousAppsList: option<previousAppsList>,
  @as("AppsList") appsList: appsList,
  @as("LastUpdateTime") lastUpdateTime: option<timeStamp>,
  @as("CreateTime") createTime: option<timeStamp>,
  @as("ListUpdateToken") listUpdateToken: option<updateToken>,
  @as("ListName") listName: resourceName,
  @as("ListId") listId: option<listId>,
}
type resourceViolation = {
  @as("DnsRuleGroupLimitExceededViolation")
  dnsRuleGroupLimitExceededViolation: option<dnsRuleGroupLimitExceededViolation>,
  @as("DnsDuplicateRuleGroupViolation")
  dnsDuplicateRuleGroupViolation: option<dnsDuplicateRuleGroupViolation>,
  @as("DnsRuleGroupPriorityConflictViolation")
  dnsRuleGroupPriorityConflictViolation: option<dnsRuleGroupPriorityConflictViolation>,
  @as("NetworkFirewallPolicyModifiedViolation")
  networkFirewallPolicyModifiedViolation: option<networkFirewallPolicyModifiedViolation>,
  @as("NetworkFirewallMissingExpectedRTViolation")
  networkFirewallMissingExpectedRTViolation: option<networkFirewallMissingExpectedRTViolation>,
  @as("NetworkFirewallMissingSubnetViolation")
  networkFirewallMissingSubnetViolation: option<networkFirewallMissingSubnetViolation>,
  @as("NetworkFirewallMissingFirewallViolation")
  networkFirewallMissingFirewallViolation: option<networkFirewallMissingFirewallViolation>,
  @as("AwsEc2InstanceViolation") awsEc2InstanceViolation: option<awsEc2InstanceViolation>,
  @as("AwsEc2NetworkInterfaceViolation")
  awsEc2NetworkInterfaceViolation: option<awsEc2NetworkInterfaceViolation>,
  @as("AwsVPCSecurityGroupViolation")
  awsVPCSecurityGroupViolation: option<awsVPCSecurityGroupViolation>,
}
type resourceViolations = array<resourceViolation>
type violationDetail = {
  @as("ResourceDescription") resourceDescription: option<lengthBoundedString>,
  @as("ResourceTags") resourceTags: option<tagList_>,
  @as("ResourceViolations") resourceViolations: resourceViolations,
  @as("ResourceType") resourceType: resourceType,
  @as("ResourceId") resourceId: resourceId,
  @as("MemberAccount") memberAccount: awsaccountId,
  @as("PolicyId") policyId: policyId,
}

module PutNotificationChannel = {
  type t
  type request = {
    @as("SnsRoleName") snsRoleName: resourceArn,
    @as("SnsTopicArn") snsTopicArn: resourceArn,
  }

  @module("@aws-sdk/client-fms") @new external new_: request => t = "PutNotificationChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetProtectionStatus = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<paginationMaxResults>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("EndTime") endTime: option<timeStamp>,
    @as("StartTime") startTime: option<timeStamp>,
    @as("MemberAccountId") memberAccountId: option<awsaccountId>,
    @as("PolicyId") policyId: policyId,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Data") data: option<protectionData>,
    @as("ServiceType") serviceType: option<securityServiceType>,
    @as("AdminAccountId") adminAccountId: option<awsaccountId>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "GetProtectionStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetNotificationChannel = {
  type t
  type request = unit
  type response = {
    @as("SnsRoleName") snsRoleName: option<resourceArn>,
    @as("SnsTopicArn") snsTopicArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "GetNotificationChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAdminAccount = {
  type t
  type request = unit
  type response = {
    @as("RoleStatus") roleStatus: option<accountRoleStatus>,
    @as("AdminAccount") adminAccount: option<awsaccountId>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "GetAdminAccountCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateAdminAccount = {
  type t
  type request = unit

  @module("@aws-sdk/client-fms") @new
  external new_: request => t = "DisassociateAdminAccountCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProtocolsList = {
  type t
  type request = {@as("ListId") listId: listId}

  @module("@aws-sdk/client-fms") @new external new_: request => t = "DeleteProtocolsListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePolicy = {
  type t
  type request = {
    @as("DeleteAllPolicyResources") deleteAllPolicyResources: option<boolean_>,
    @as("PolicyId") policyId: policyId,
  }

  @module("@aws-sdk/client-fms") @new external new_: request => t = "DeletePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNotificationChannel = {
  type t
  type request = unit

  @module("@aws-sdk/client-fms") @new
  external new_: request => t = "DeleteNotificationChannelCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAppsList = {
  type t
  type request = {@as("ListId") listId: listId}

  @module("@aws-sdk/client-fms") @new external new_: request => t = "DeleteAppsListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateAdminAccount = {
  type t
  type request = {@as("AdminAccount") adminAccount: awsaccountId}

  @module("@aws-sdk/client-fms") @new external new_: request => t = "AssociateAdminAccountCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-fms") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMemberAccounts = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<paginationMaxResults>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MemberAccounts") memberAccounts: option<memberAccounts>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "ListMemberAccountsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("TagList") tagList_: tagList_,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-fms") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceArn}
  type response = {@as("TagList") tagList_: option<tagList_>}
  @module("@aws-sdk/client-fms") @new external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPolicies = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<paginationMaxResults>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("PolicyList") policyList: option<policySummaryList>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "ListPoliciesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutProtocolsList = {
  type t
  type request = {
    @as("TagList") tagList_: option<tagList_>,
    @as("ProtocolsList") protocolsList: protocolsListData,
  }
  type response = {
    @as("ProtocolsListArn") protocolsListArn: option<resourceArn>,
    @as("ProtocolsList") protocolsList: option<protocolsListData>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "PutProtocolsListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutPolicy = {
  type t
  type request = {
    @as("TagList") tagList_: option<tagList_>,
    @as("Policy") policy: policy,
  }
  type response = {
    @as("PolicyArn") policyArn: option<resourceArn>,
    @as("Policy") policy: option<policy>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "PutPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProtocolsLists = {
  type t
  type request = {
    @as("MaxResults") maxResults: paginationMaxResults,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("DefaultLists") defaultLists: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("ProtocolsLists") protocolsLists: option<protocolsListsData>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "ListProtocolsListsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProtocolsList = {
  type t
  type request = {
    @as("DefaultList") defaultList: option<boolean_>,
    @as("ListId") listId: listId,
  }
  type response = {
    @as("ProtocolsListArn") protocolsListArn: option<resourceArn>,
    @as("ProtocolsList") protocolsList: option<protocolsListData>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "GetProtocolsListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPolicy = {
  type t
  type request = {@as("PolicyId") policyId: policyId}
  type response = {
    @as("PolicyArn") policyArn: option<resourceArn>,
    @as("Policy") policy: option<policy>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "GetPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComplianceDetail = {
  type t
  type request = {
    @as("MemberAccount") memberAccount: awsaccountId,
    @as("PolicyId") policyId: policyId,
  }
  type response = {
    @as("PolicyComplianceDetail") policyComplianceDetail: option<policyComplianceDetail>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "GetComplianceDetailCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAppsList = {
  type t
  type request = {
    @as("TagList") tagList_: option<tagList_>,
    @as("AppsList") appsList: appsListData,
  }
  type response = {
    @as("AppsListArn") appsListArn: option<resourceArn>,
    @as("AppsList") appsList: option<appsListData>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "PutAppsListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListComplianceStatus = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<paginationMaxResults>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("PolicyId") policyId: policyId,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("PolicyComplianceStatusList")
    policyComplianceStatusList: option<policyComplianceStatusList>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "ListComplianceStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAppsLists = {
  type t
  type request = {
    @as("MaxResults") maxResults: paginationMaxResults,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("DefaultLists") defaultLists: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("AppsLists") appsLists: option<appsListsData>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "ListAppsListsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAppsList = {
  type t
  type request = {
    @as("DefaultList") defaultList: option<boolean_>,
    @as("ListId") listId: listId,
  }
  type response = {
    @as("AppsListArn") appsListArn: option<resourceArn>,
    @as("AppsList") appsList: option<appsListData>,
  }
  @module("@aws-sdk/client-fms") @new external new_: request => t = "GetAppsListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetViolationDetails = {
  type t
  type request = {
    @as("ResourceType") resourceType: resourceType,
    @as("ResourceId") resourceId: resourceId,
    @as("MemberAccount") memberAccount: awsaccountId,
    @as("PolicyId") policyId: policyId,
  }
  type response = {@as("ViolationDetail") violationDetail: option<violationDetail>}
  @module("@aws-sdk/client-fms") @new external new_: request => t = "GetViolationDetailsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
