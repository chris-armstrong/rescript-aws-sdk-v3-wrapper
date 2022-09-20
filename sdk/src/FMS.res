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
  | @as("FIREWALL_SUBNET_MISSING_VPCE_ENDPOINT") #FIREWALL_SUBNET_MISSING_VPCE_ENDPOINT
  | @as("ROUTE_HAS_OUT_OF_SCOPE_ENDPOINT") #ROUTE_HAS_OUT_OF_SCOPE_ENDPOINT
  | @as("RESOURCE_MISSING_DNS_FIREWALL") #RESOURCE_MISSING_DNS_FIREWALL
  | @as("BLACK_HOLE_ROUTE_DETECTED_IN_FIREWALL_SUBNET")
  #BLACK_HOLE_ROUTE_DETECTED_IN_FIREWALL_SUBNET
  | @as("BLACK_HOLE_ROUTE_DETECTED") #BLACK_HOLE_ROUTE_DETECTED
  | @as("INTERNET_TRAFFIC_NOT_INSPECTED") #INTERNET_TRAFFIC_NOT_INSPECTED
  | @as("MISSING_TARGET_GATEWAY") #MISSING_TARGET_GATEWAY
  | @as("INVALID_ROUTE_CONFIGURATION") #INVALID_ROUTE_CONFIGURATION
  | @as("TRAFFIC_INSPECTION_CROSSES_AZ_BOUNDARY") #TRAFFIC_INSPECTION_CROSSES_AZ_BOUNDARY
  | @as("UNEXPECTED_TARGET_GATEWAY_ROUTES") #UNEXPECTED_TARGET_GATEWAY_ROUTES
  | @as("UNEXPECTED_FIREWALL_ROUTES") #UNEXPECTED_FIREWALL_ROUTES
  | @as("FIREWALL_SUBNET_MISSING_EXPECTED_ROUTE") #FIREWALL_SUBNET_MISSING_EXPECTED_ROUTE
  | @as("INTERNET_GATEWAY_MISSING_EXPECTED_ROUTE") #INTERNET_GATEWAY_MISSING_EXPECTED_ROUTE
  | @as("FIREWALL_SUBNET_IS_OUT_OF_SCOPE") #FIREWALL_SUBNET_IS_OUT_OF_SCOPE
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
type thirdPartyFirewallAssociationStatus = [
  | @as("NOT_EXIST") #NOT_EXIST
  | @as("OFFBOARD_COMPLETE") #OFFBOARD_COMPLETE
  | @as("OFFBOARDING") #OFFBOARDING
  | @as("ONBOARD_COMPLETE") #ONBOARD_COMPLETE
  | @as("ONBOARDING") #ONBOARDING
]
type thirdPartyFirewall = [@as("PALO_ALTO_NETWORKS_CLOUD_NGFW") #PALO_ALTO_NETWORKS_CLOUD_NGFW]
type targetViolationReason = string
type targetType = [
  | @as("TRANSIT_GATEWAY") #TRANSIT_GATEWAY
  | @as("EGRESS_ONLY_INTERNET_GATEWAY") #EGRESS_ONLY_INTERNET_GATEWAY
  | @as("VPC_PEERING_CONNECTION") #VPC_PEERING_CONNECTION
  | @as("VPC_ENDPOINT") #VPC_ENDPOINT
  | @as("NETWORK_INTERFACE") #NETWORK_INTERFACE
  | @as("NAT_GATEWAY") #NAT_GATEWAY
  | @as("LOCAL_GATEWAY") #LOCAL_GATEWAY
  | @as("INSTANCE") #INSTANCE
  | @as("CARRIER_GATEWAY") #CARRIER_GATEWAY
  | @as("GATEWAY") #GATEWAY
]
type tagValue = string
type tagKey = string
type statelessRuleGroupPriority = int
type securityServiceType = [
  | @as("THIRD_PARTY_FIREWALL") #THIRD_PARTY_FIREWALL
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
type marketplaceSubscriptionOnboardingStatus = [
  | @as("COMPLETE") #COMPLETE
  | @as("NOT_COMPLETE") #NOT_COMPLETE
  | @as("NO_SUBSCRIPTION") #NO_SUBSCRIPTION
]
type managedServiceData = string
type listId = string
type lengthBoundedString = string
type ipportNumber = float
type firewallPolicyName = string
type firewallPolicyId = string
type firewallDeploymentModel = [@as("DISTRIBUTED") #DISTRIBUTED | @as("CENTRALIZED") #CENTRALIZED]
type errorMessage = string
type dnsRuleGroupPriority = int
type detailedInfo = string
type destinationType = [@as("PREFIX_LIST") #PREFIX_LIST | @as("IPV6") #IPV6 | @as("IPV4") #IPV4]
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
@ocaml.doc("<p>Configures the policy for the third-party firewall.</p>")
type thirdPartyFirewallPolicy = {
  @ocaml.doc("<p>Defines the deployment model to use for the third-party firewall.</p>")
  @as("FirewallDeploymentModel")
  firewallDeploymentModel: option<firewallDeploymentModel>,
}
@ocaml.doc(
  "<p>The violation details for a third-party firewall for an Availability Zone that's missing the Firewall Manager managed subnet.</p>"
)
type thirdPartyFirewallMissingSubnetViolation = {
  @ocaml.doc("<p>The reason the resource is causing the violation, if a reason is available.</p>")
  @as("TargetViolationReason")
  targetViolationReason: option<targetViolationReason>,
  @ocaml.doc("<p>The Availability Zone of a subnet that's causing the violation.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<lengthBoundedString>,
  @ocaml.doc(
    "<p>The resource ID of the VPC associated with a subnet that's causing the violation.</p>"
  )
  @as("VPC")
  vpc: option<resourceId>,
  @ocaml.doc(
    "<p>The ID of the third-party firewall or VPC resource that's causing the violation.</p>"
  )
  @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
@ocaml.doc(
  "<p>The violation details about a third-party firewall's subnet that doesn't have a Firewall Manager managed firewall in its VPC.</p>"
)
type thirdPartyFirewallMissingFirewallViolation = {
  @ocaml.doc("<p>The reason the resource is causing this violation, if a reason is available.</p>")
  @as("TargetViolationReason")
  targetViolationReason: option<targetViolationReason>,
  @ocaml.doc(
    "<p>The Availability Zone of the third-party firewall that's causing the violation.</p>"
  )
  @as("AvailabilityZone")
  availabilityZone: option<lengthBoundedString>,
  @ocaml.doc("<p>The resource ID of the VPC associated with a third-party firewall.</p>") @as("VPC")
  vpc: option<resourceId>,
  @ocaml.doc("<p>The ID of the third-party firewall that's causing the violation.</p>")
  @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
@ocaml.doc(
  "<p>The violation details for a third-party firewall that's not associated with an Firewall Manager managed route table.</p>"
)
type thirdPartyFirewallMissingExpectedRouteTableViolation = {
  @ocaml.doc("<p>The resource ID of the route table that should be associated with the subnet.</p>")
  @as("ExpectedRouteTable")
  expectedRouteTable: option<resourceId>,
  @ocaml.doc(
    "<p>The resource ID of the current route table that's associated with the subnet, if one is available.</p>"
  )
  @as("CurrentRouteTable")
  currentRouteTable: option<resourceId>,
  @ocaml.doc("<p>The Availability Zone of the firewall subnet that's causing the violation.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<lengthBoundedString>,
  @ocaml.doc(
    "<p>The resource ID of the VPC associated with a fireawll subnet that's causing the violation.</p>"
  )
  @as("VPC")
  vpc: option<resourceId>,
  @ocaml.doc(
    "<p>The ID of the third-party firewall or VPC resource that's causing the violation.</p>"
  )
  @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
@ocaml.doc(
  "<p>Configures the firewall policy deployment model for a third-party firewall. The deployment model can either be distributed or centralized.</p>"
)
type thirdPartyFirewallFirewallPolicy = {
  @ocaml.doc("<p>The name of the specified firewall policy.</p>") @as("FirewallPolicyName")
  firewallPolicyName: option<firewallPolicyName>,
  @ocaml.doc("<p>The ID of the specified firewall policy.</p>") @as("FirewallPolicyId")
  firewallPolicyId: option<firewallPolicyId>,
}
type targetViolationReasons = array<targetViolationReason>
type tagKeyList = array<tagKey>
@ocaml.doc(
  "<p>A collection of key:value pairs associated with an Amazon Web Services resource. The key:value pair can be anything you define. Typically, the tag key represents a category (such as \"environment\") and the tag value represents a specific value within that category (such as \"test,\" \"development,\" or \"production\"). You can add up to 50 tags to each Amazon Web Services resource.  </p>"
)
type tag = {
  @ocaml.doc(
    "<p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as \"companyA\" or \"companyB.\" Tag values are case-sensitive.  </p>"
  )
  @as("Value")
  value: tagValue,
  @ocaml.doc(
    "<p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as \"customer.\" Tag keys are case-sensitive.</p>"
  )
  @as("Key")
  key: tagKey,
}
@ocaml.doc(
  "<p>Network Firewall stateless rule group, used in a <a>NetworkFirewallPolicyDescription</a>. </p>"
)
type statelessRuleGroup = {
  @ocaml.doc(
    "<p>The priority of the rule group. Network Firewall evaluates the stateless rule groups in a firewall policy starting from the lowest priority setting. </p>"
  )
  @as("Priority")
  priority: option<statelessRuleGroupPriority>,
  @ocaml.doc("<p>The resource ID of the rule group.</p>") @as("ResourceId")
  resourceId: option<resourceId>,
  @ocaml.doc("<p>The name of the rule group.</p>") @as("RuleGroupName")
  ruleGroupName: option<networkFirewallResourceName>,
}
@ocaml.doc(
  "<p>Network Firewall stateful rule group, used in a <a>NetworkFirewallPolicyDescription</a>. </p>"
)
type statefulRuleGroup = {
  @ocaml.doc("<p>The resource ID of the rule group.</p>") @as("ResourceId")
  resourceId: option<resourceId>,
  @ocaml.doc("<p>The name of the rule group.</p>") @as("RuleGroupName")
  ruleGroupName: option<networkFirewallResourceName>,
}
@ocaml.doc("<p>Describes a set of permissions for a security group rule.</p>")
type securityGroupRuleDescription = {
  @ocaml.doc(
    "<p>The end of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code. A value of <code>-1</code> indicates all ICMP/ICMPv6 codes.</p>"
  )
  @as("ToPort")
  toPort: option<ipportNumber>,
  @ocaml.doc(
    "<p>The start of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type number. A value of <code>-1</code> indicates all ICMP/ICMPv6 types.</p>"
  )
  @as("FromPort")
  fromPort: option<ipportNumber>,
  @ocaml.doc(
    "<p>The IP protocol name (<code>tcp</code>, <code>udp</code>, <code>icmp</code>, <code>icmpv6</code>) or number.</p>"
  )
  @as("Protocol")
  protocol: option<lengthBoundedString>,
  @ocaml.doc("<p>The ID of the prefix list for the security group rule.</p>") @as("PrefixListId")
  prefixListId: option<resourceId>,
  @ocaml.doc("<p>The IPv6 ranges for the security group rule.</p>") @as("IPV6Range")
  ipv6Range: option<cidr>,
  @ocaml.doc("<p>The IPv4 ranges for the security group rule.</p>") @as("IPV4Range")
  ipv4Range: option<cidr>,
}
@ocaml.doc("<p>Describes a route in a route table.</p>")
type route = {
  @ocaml.doc("<p>The route's target.</p>") @as("Target") target: option<lengthBoundedString>,
  @ocaml.doc("<p>The destination of the route.</p>") @as("Destination")
  destination: option<lengthBoundedString>,
  @ocaml.doc("<p>The type of target for the route.</p>") @as("TargetType")
  targetType: option<targetType>,
  @ocaml.doc("<p>The type of destination for the route.</p>") @as("DestinationType")
  destinationType: option<destinationType>,
}
type resourceTypeList = array<resourceType>
@ocaml.doc("<p>The resource tags that Firewall Manager uses to determine if a particular resource
      should be included or excluded from the Firewall Manager policy. Tags enable you to
      categorize your Amazon Web Services resources in different ways, for example, by purpose, owner, or
      environment. Each tag consists of a key and an optional value. Firewall Manager combines the
      tags with \"AND\" so that, if you add more than one tag to a policy scope, a resource must have
        all the specified tags to be included or excluded. For more information, see
    <a href=\"https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html\">Working with Tag Editor</a>.</p>")
type resourceTag = {
  @ocaml.doc("<p>The resource tag value.</p>") @as("Value") value: option<resourceTagValue>,
  @ocaml.doc("<p>The resource tag key.</p>") @as("Key") key: resourceTagKey,
}
type resourceIdList = array<resourceId>
type protocolsList = array<protocol>
@ocaml.doc("<p>Details of the Firewall Manager policy. </p>")
type policySummary = {
  @ocaml.doc("<p>Indicates whether Firewall Manager should automatically remove protections from resources that leave the policy scope and clean up resources
       that Firewall Manager is managing for accounts when those accounts leave policy scope. For example, Firewall Manager will disassociate a Firewall Manager managed web ACL
       from a protected customer resource when the customer resource leaves policy scope. </p>
         <p>By default, Firewall Manager doesn't remove protections or delete Firewall Manager managed resources. </p>
         <p>This option is not available for Shield Advanced or WAF Classic policies.</p>")
  @as("DeleteUnusedFMManagedResources")
  deleteUnusedFMManagedResources: option<boolean_>,
  @ocaml.doc("<p>Indicates if the policy should be automatically applied to new resources.</p>")
  @as("RemediationEnabled")
  remediationEnabled: option<boolean_>,
  @ocaml.doc("<p>The service that the policy is using to protect the resources. This specifies the type of
      policy that is created, either an WAF policy, a Shield Advanced policy, or a security
      group policy.</p>")
  @as("SecurityServiceType")
  securityServiceType: option<securityServiceType>,
  @ocaml.doc("<p>The type of resource protected by or in scope of the policy. This is in the format shown
        in the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">Amazon Web Services Resource Types Reference</a>.
            For WAF and Shield Advanced, examples include
        <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> and
        <code>AWS::CloudFront::Distribution</code>. For a security group common policy, valid values
      are <code>AWS::EC2::NetworkInterface</code> and <code>AWS::EC2::Instance</code>. For a
      security group content audit policy, valid values are <code>AWS::EC2::SecurityGroup</code>,
        <code>AWS::EC2::NetworkInterface</code>, and <code>AWS::EC2::Instance</code>. For a security
      group usage audit policy, the value is <code>AWS::EC2::SecurityGroup</code>. For an Network Firewall policy or DNS Firewall policy,
          the value is <code>AWS::EC2::VPC</code>.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The name of the specified policy.</p>") @as("PolicyName")
  policyName: option<resourceName>,
  @ocaml.doc("<p>The ID of the specified policy.</p>") @as("PolicyId") policyId: option<policyId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the specified policy.</p>") @as("PolicyArn")
  policyArn: option<resourceArn>,
}
@ocaml.doc("<p>Configures the firewall policy deployment model of Network Firewall. For information about
         Network Firewall deployment models, see <a href=\"https://docs.aws.amazon.com/network-firewall/latest/developerguide/architectures.html\">Network Firewall example
            architectures with routing</a> in the <i>Network Firewall Developer
         Guide</i>.</p>")
type networkFirewallPolicy = {
  @ocaml.doc("<p>Defines the deployment model to use for the firewall policy. To use a distributed model,
         set <a href=\"https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_PolicyOption.html\">PolicyOption</a> to <code>NULL</code>.</p>")
  @as("FirewallDeploymentModel")
  firewallDeploymentModel: option<firewallDeploymentModel>,
}
@ocaml.doc("<p>Violation detail for Network Firewall for an Availability Zone that's
       missing the expected Firewall Manager managed subnet.</p>")
type networkFirewallMissingSubnetViolation = {
  @ocaml.doc("<p>The reason the resource has this violation, if one is available. </p>")
  @as("TargetViolationReason")
  targetViolationReason: option<targetViolationReason>,
  @ocaml.doc("<p>The Availability Zone of a violating subnet. </p>") @as("AvailabilityZone")
  availabilityZone: option<lengthBoundedString>,
  @ocaml.doc("<p>The resource ID of the VPC associated with a violating subnet.</p>") @as("VPC")
  vpc: option<resourceId>,
  @ocaml.doc("<p>The ID of the Network Firewall or VPC resource that's in violation.</p>")
  @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
@ocaml.doc("<p>Violation detail for Network Firewall for a subnet that doesn't have a
       Firewall Manager managed firewall in its VPC. </p>")
type networkFirewallMissingFirewallViolation = {
  @ocaml.doc("<p>The reason the resource has this violation, if one is available. </p>")
  @as("TargetViolationReason")
  targetViolationReason: option<targetViolationReason>,
  @ocaml.doc("<p>The Availability Zone of a violating subnet. </p>") @as("AvailabilityZone")
  availabilityZone: option<lengthBoundedString>,
  @ocaml.doc("<p>The resource ID of the VPC associated with a violating subnet.</p>") @as("VPC")
  vpc: option<resourceId>,
  @ocaml.doc("<p>The ID of the Network Firewall or VPC resource that's in violation.</p>")
  @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
@ocaml.doc("<p>Violation detail for Network Firewall for a subnet that's not associated to the expected
       Firewall Manager managed route table.</p>")
type networkFirewallMissingExpectedRTViolation = {
  @ocaml.doc("<p>The resource ID of the route table that should be associated with the subnet.</p>")
  @as("ExpectedRouteTable")
  expectedRouteTable: option<resourceId>,
  @ocaml.doc(
    "<p>The resource ID of the current route table that's associated with the subnet, if one is available.</p>"
  )
  @as("CurrentRouteTable")
  currentRouteTable: option<resourceId>,
  @ocaml.doc("<p>The Availability Zone of a violating subnet. </p>") @as("AvailabilityZone")
  availabilityZone: option<lengthBoundedString>,
  @ocaml.doc("<p>The resource ID of the VPC associated with a violating subnet.</p>") @as("VPC")
  vpc: option<resourceId>,
  @ocaml.doc("<p>The ID of the Network Firewall or VPC resource that's in violation.</p>")
  @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
type networkFirewallActionList = array<networkFirewallAction>
type memberAccounts = array<awsaccountId>
type lengthBoundedStringList = array<lengthBoundedString>
type issueInfoMap = Js.Dict.t<detailedInfo>
@ocaml.doc(
  "<p>The violation details for a firewall subnet's VPC endpoint that's deleted or missing.</p>"
)
type firewallSubnetMissingVPCEndpointViolation = {
  @ocaml.doc("<p>The ID of the Availability Zone of the deleted VPC subnet.</p>")
  @as("SubnetAvailabilityZoneId")
  subnetAvailabilityZoneId: option<lengthBoundedString>,
  @ocaml.doc("<p>The name of the Availability Zone of the deleted VPC subnet.</p>")
  @as("SubnetAvailabilityZone")
  subnetAvailabilityZone: option<lengthBoundedString>,
  @ocaml.doc("<p>The resource ID of the VPC associated with the deleted VPC subnet.</p>")
  @as("VpcId")
  vpcId: option<resourceId>,
  @ocaml.doc("<p>The ID of the firewall that this VPC endpoint is associated with.</p>")
  @as("FirewallSubnetId")
  firewallSubnetId: option<resourceId>,
}
@ocaml.doc("<p>Contains details about the firewall subnet that violates the policy scope.</p>")
type firewallSubnetIsOutOfScopeViolation = {
  @ocaml.doc("<p>The VPC endpoint ID of the firewall subnet that violates the policy scope.</p>")
  @as("VpcEndpointId")
  vpcEndpointId: option<resourceId>,
  @ocaml.doc(
    "<p>The Availability Zone ID of the firewall subnet that violates the policy scope.</p>"
  )
  @as("SubnetAvailabilityZoneId")
  subnetAvailabilityZoneId: option<lengthBoundedString>,
  @ocaml.doc("<p>The Availability Zone of the firewall subnet that violates the policy scope.</p>")
  @as("SubnetAvailabilityZone")
  subnetAvailabilityZone: option<lengthBoundedString>,
  @ocaml.doc("<p>The VPC ID of the firewall subnet that violates the policy scope.</p>")
  @as("VpcId")
  vpcId: option<resourceId>,
  @ocaml.doc("<p>The ID of the firewall subnet that violates the policy scope.</p>")
  @as("FirewallSubnetId")
  firewallSubnetId: option<resourceId>,
}
@ocaml.doc("<p>Contains information about the actions that you can take to remediate scope violations
         caused by your policy's <code>FirewallCreationConfig</code>.
            <code>FirewallCreationConfig</code> is an optional configuration that you can use to
         choose which Availability Zones Firewall Manager creates Network Firewall endpoints in.</p>")
type fmspolicyUpdateFirewallCreationConfigAction = {
  @ocaml.doc("<p>A <code>FirewallCreationConfig</code> that you can copy into your current policy's
            <a href=\"https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_SecurityServicePolicyData.html\">SecurityServiceData</a> in order to remedy scope violations.</p>")
  @as("FirewallCreationConfig")
  firewallCreationConfig: option<managedServiceData>,
  @ocaml.doc("<p>Describes the remedial action.</p>") @as("Description")
  description: option<lengthBoundedString>,
}
@ocaml.doc("<p>Describes the compliance status for the account. An account is considered noncompliant if
      it includes resources that are not protected by the specified policy or that don't comply with
      the policy.</p>")
type evaluationResult = {
  @ocaml.doc("<p>Indicates that over 100 resources are noncompliant with the Firewall Manager
      policy.</p>")
  @as("EvaluationLimitExceeded")
  evaluationLimitExceeded: option<boolean_>,
  @ocaml.doc("<p>The number of resources that are noncompliant with the specified policy. For WAF and
      Shield Advanced policies, a resource is considered noncompliant if it is not associated with
      the policy. For security group policies, a resource is considered noncompliant if it doesn't
      comply with the rules of the policy and remediation is disabled or not possible.</p>")
  @as("ViolatorCount")
  violatorCount: option<resourceCount>,
  @ocaml.doc(
    "<p>Describes an Amazon Web Services account's compliance with the Firewall Manager policy.</p>"
  )
  @as("ComplianceStatus")
  complianceStatus: option<policyComplianceStatusType>,
}
type dnsRuleGroupPriorities = array<dnsRuleGroupPriority>
@ocaml.doc(
  "<p>The VPC that Firewall Manager was applying a DNS Fireall policy to reached the limit for associated DNS Firewall rule groups. Firewall Manager tried to associate another rule group with the VPC and failed due to the limit. </p>"
)
type dnsRuleGroupLimitExceededViolation = {
  @ocaml.doc("<p>The number of rule groups currently associated with the VPC.  </p>")
  @as("NumberOfRuleGroupsAlreadyAssociated")
  numberOfRuleGroupsAlreadyAssociated: option<basicInteger>,
  @ocaml.doc("<p>A description of the violation that specifies the rule group and VPC.</p>")
  @as("ViolationTargetDescription")
  violationTargetDescription: option<lengthBoundedString>,
  @ocaml.doc("<p>Information about the VPC ID. </p>") @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
@ocaml.doc("<p>A DNS Firewall rule group that Firewall Manager
       tried to associate with a VPC is already associated with the VPC and can't be associated again. </p>")
type dnsDuplicateRuleGroupViolation = {
  @ocaml.doc("<p>A description of the violation that specifies the rule group and VPC.</p>")
  @as("ViolationTargetDescription")
  violationTargetDescription: option<lengthBoundedString>,
  @ocaml.doc("<p>Information about the VPC ID. </p>") @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
type customerPolicyScopeIdList = array<customerPolicyScopeId>
type complianceViolatorMetadata = Js.Dict.t<lengthBoundedString>
@ocaml.doc("<p>An individual Firewall Manager application.</p>")
type app = {
  @ocaml.doc("<p>The application's port number, for example <code>80</code>.</p>") @as("Port")
  port: ipportNumber,
  @ocaml.doc(
    "<p>The IP protocol name or number. The name can be one of <code>tcp</code>, <code>udp</code>, or <code>icmp</code>. For information on possible numbers, see <a href=\"https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml\">Protocol Numbers</a>.</p>"
  )
  @as("Protocol")
  protocol: protocol,
  @ocaml.doc("<p>The application's name.</p>") @as("AppName") appName: resourceName,
}
@ocaml.doc("<p>Describes a remediation action target.</p>")
type actionTarget = {
  @ocaml.doc("<p>A description of the remediation action target.</p>") @as("Description")
  description: option<lengthBoundedString>,
  @ocaml.doc("<p>The ID of the remediation target.</p>") @as("ResourceId")
  resourceId: option<resourceId>,
}
type thirdPartyFirewallFirewallPolicies = array<thirdPartyFirewallFirewallPolicy>
type tagList_ = array<tag>
type statelessRuleGroupList = array<statelessRuleGroup>
type statefulRuleGroupList = array<statefulRuleGroup>
@ocaml.doc("<p>Remediation option for the rule specified in the <code>ViolationTarget</code>.</p>")
type securityGroupRemediationAction = {
  @ocaml.doc("<p>Indicates if the current action is the default action.</p>") @as("IsDefaultAction")
  isDefaultAction: option<boolean_>,
  @ocaml.doc(
    "<p>The final state of the rule specified in the <code>ViolationTarget</code> after it is remediated.</p>"
  )
  @as("RemediationResult")
  remediationResult: option<securityGroupRuleDescription>,
  @ocaml.doc("<p>Brief description of the action that will be performed.</p>") @as("Description")
  description: option<remediationActionDescription>,
  @ocaml.doc("<p>The remediation action that will be performed.</p>") @as("RemediationActionType")
  remediationActionType: option<remediationActionType>,
}
type routes = array<route>
type resourceTags = array<resourceTag>
@ocaml.doc("<p>Details of the Firewall Manager protocols list.</p>")
type protocolsListDataSummary = {
  @ocaml.doc("<p>An array of protocols in the Firewall Manager protocols list.</p>")
  @as("ProtocolsList")
  protocolsList: option<protocolsList>,
  @ocaml.doc("<p>The name of the specified protocols list.</p>") @as("ListName")
  listName: option<resourceName>,
  @ocaml.doc("<p>The ID of the specified protocols list.</p>") @as("ListId") listId: option<listId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the specified protocols list.</p>")
  @as("ListArn")
  listArn: option<resourceArn>,
}
type previousProtocolsList = Js.Dict.t<protocolsList>
type policySummaryList = array<policySummary>
@ocaml.doc("<p>Contains the Network Firewall firewall policy options to configure a centralized deployment
         model.</p>")
type policyOption = {
  @ocaml.doc("<p>Defines the policy options for a third-party firewall policy.</p>")
  @as("ThirdPartyFirewallPolicy")
  thirdPartyFirewallPolicy: option<thirdPartyFirewallPolicy>,
  @ocaml.doc("<p>Defines the deployment model to use for the firewall policy.</p>")
  @as("NetworkFirewallPolicy")
  networkFirewallPolicy: option<networkFirewallPolicy>,
}
@ocaml.doc(
  "<p>The reference rule that partially matches the <code>ViolationTarget</code> rule and violation reason.</p>"
)
type partialMatch = {
  @ocaml.doc("<p>The violation reason.</p>") @as("TargetViolationReasons")
  targetViolationReasons: option<targetViolationReasons>,
  @ocaml.doc(
    "<p>The reference rule from the primary security group of the Firewall Manager policy.</p>"
  )
  @as("Reference")
  reference: option<referenceRule>,
}
@ocaml.doc("<p>Information about the expected route in the route table.</p>")
type expectedRoute = {
  @ocaml.doc("<p>Information about the route table ID.</p>") @as("RouteTableId")
  routeTableId: option<resourceId>,
  @ocaml.doc("<p>Information about the allowed targets.</p>") @as("AllowedTargets")
  allowedTargets: option<lengthBoundedStringList>,
  @ocaml.doc("<p>Information about the contributing subnets.</p>") @as("ContributingSubnets")
  contributingSubnets: option<resourceIdList>,
  @ocaml.doc("<p>Information about the IPv6 CIDR block.</p>") @as("IpV6Cidr")
  ipV6Cidr: option<cidr>,
  @ocaml.doc("<p>Information about the ID of the prefix list for the route.</p>")
  @as("PrefixListId")
  prefixListId: option<cidr>,
  @ocaml.doc("<p>Information about the IPv4 CIDR block.</p>") @as("IpV4Cidr")
  ipV4Cidr: option<cidr>,
}
type evaluationResults = array<evaluationResult>
@ocaml.doc("<p>Information about the ReplaceRouteTableAssociation action in Amazon EC2.</p>")
type ec2ReplaceRouteTableAssociationAction = {
  @ocaml.doc("<p>Information about the ID of the new route table to associate with the subnet.</p>")
  @as("RouteTableId")
  routeTableId: actionTarget,
  @ocaml.doc("<p>Information about the association ID.</p>") @as("AssociationId")
  associationId: actionTarget,
  @ocaml.doc("<p>A description of the ReplaceRouteTableAssociation action in Amazon EC2.</p>")
  @as("Description")
  description: option<lengthBoundedString>,
}
@ocaml.doc("<p>Information about the ReplaceRoute action in Amazon EC2.</p>")
type ec2ReplaceRouteAction = {
  @ocaml.doc("<p>Information about the ID of the route table.</p>") @as("RouteTableId")
  routeTableId: actionTarget,
  @ocaml.doc("<p>Information about the ID of an internet gateway or virtual private gateway.</p>")
  @as("GatewayId")
  gatewayId: option<actionTarget>,
  @ocaml.doc(
    "<p>Information about the IPv6 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.</p>"
  )
  @as("DestinationIpv6CidrBlock")
  destinationIpv6CidrBlock: option<cidr>,
  @ocaml.doc("<p>Information about the ID of the prefix list for the route.</p>")
  @as("DestinationPrefixListId")
  destinationPrefixListId: option<resourceId>,
  @ocaml.doc(
    "<p>Information about the IPv4 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.</p>"
  )
  @as("DestinationCidrBlock")
  destinationCidrBlock: option<cidr>,
  @ocaml.doc("<p>A description of the ReplaceRoute action in Amazon EC2.</p>") @as("Description")
  description: option<lengthBoundedString>,
}
@ocaml.doc("<p>Information about the DeleteRoute action in Amazon EC2.</p>")
type ec2DeleteRouteAction = {
  @ocaml.doc("<p>Information about the ID of the route table.</p>") @as("RouteTableId")
  routeTableId: actionTarget,
  @ocaml.doc(
    "<p>Information about the IPv6 CIDR range for the route. The value you specify must match the CIDR for the route exactly.</p>"
  )
  @as("DestinationIpv6CidrBlock")
  destinationIpv6CidrBlock: option<cidr>,
  @ocaml.doc("<p>Information about the ID of the prefix list for the route.</p>")
  @as("DestinationPrefixListId")
  destinationPrefixListId: option<resourceId>,
  @ocaml.doc(
    "<p>Information about the IPv4 CIDR range for the route. The value you specify must match the CIDR for the route exactly.</p>"
  )
  @as("DestinationCidrBlock")
  destinationCidrBlock: option<cidr>,
  @ocaml.doc("<p>A description of the DeleteRoute action.</p>") @as("Description")
  description: option<lengthBoundedString>,
}
@ocaml.doc("<p>Information about the CreateRouteTable action in Amazon EC2.</p>")
type ec2CreateRouteTableAction = {
  @ocaml.doc("<p>Information about the ID of a VPC.</p>") @as("VpcId") vpcId: actionTarget,
  @ocaml.doc("<p>A description of the CreateRouteTable action.</p>") @as("Description")
  description: option<lengthBoundedString>,
}
@ocaml.doc("<p>Information about the CreateRoute action in Amazon EC2.</p>")
type ec2CreateRouteAction = {
  @ocaml.doc("<p>Information about the ID of the route table for the route.</p>")
  @as("RouteTableId")
  routeTableId: actionTarget,
  @ocaml.doc(
    "<p>Information about the ID of an internet gateway or virtual private gateway attached to your VPC.</p>"
  )
  @as("GatewayId")
  gatewayId: option<actionTarget>,
  @ocaml.doc(
    "<p>Information about the ID of a VPC endpoint. Supported for Gateway Load Balancer endpoints only.</p>"
  )
  @as("VpcEndpointId")
  vpcEndpointId: option<actionTarget>,
  @ocaml.doc("<p>Information about the IPv6 CIDR block destination.</p>")
  @as("DestinationIpv6CidrBlock")
  destinationIpv6CidrBlock: option<cidr>,
  @ocaml.doc("<p>Information about the ID of a prefix list used for the destination match.</p>")
  @as("DestinationPrefixListId")
  destinationPrefixListId: option<resourceId>,
  @ocaml.doc("<p>Information about the IPv4 CIDR address block used for the destination match.</p>")
  @as("DestinationCidrBlock")
  destinationCidrBlock: option<cidr>,
  @ocaml.doc("<p>A description of CreateRoute action in Amazon EC2.</p>") @as("Description")
  description: option<lengthBoundedString>,
}
@ocaml.doc("<p>An action that copies the EC2 route table for use in remediation.</p>")
type ec2CopyRouteTableAction = {
  @ocaml.doc(
    "<p>The ID of the copied EC2 route table that is associated with the remediation action.</p>"
  )
  @as("RouteTableId")
  routeTableId: actionTarget,
  @ocaml.doc(
    "<p>The VPC ID of the copied EC2 route table that is associated with the remediation action.</p>"
  )
  @as("VpcId")
  vpcId: actionTarget,
  @ocaml.doc(
    "<p>A description of the copied EC2 route table that is associated with the remediation action.</p>"
  )
  @as("Description")
  description: option<lengthBoundedString>,
}
@ocaml.doc(
  "<p>The action of associating an EC2 resource, such as a subnet or internet gateway, with a route table.</p>"
)
type ec2AssociateRouteTableAction = {
  @ocaml.doc(
    "<p>The ID of the gateway to be used with the EC2 route table that is associated with the remediation action.</p>"
  )
  @as("GatewayId")
  gatewayId: option<actionTarget>,
  @ocaml.doc(
    "<p>The ID of the subnet for the EC2 route table that is associated with the remediation action.</p>"
  )
  @as("SubnetId")
  subnetId: option<actionTarget>,
  @ocaml.doc("<p>The ID of the EC2 route table that is associated with the remediation action.</p>")
  @as("RouteTableId")
  routeTableId: actionTarget,
  @ocaml.doc(
    "<p>A description of the EC2 route table that is associated with the remediation action.</p>"
  )
  @as("Description")
  description: option<lengthBoundedString>,
}
@ocaml.doc("<p>A rule group that Firewall Manager
       tried to associate with a VPC has the same priority as a rule group that's already associated. </p>")
type dnsRuleGroupPriorityConflictViolation = {
  @ocaml.doc("<p>The priorities of rule groups that are already associated with the VPC. To retry your operation,
       choose priority settings that aren't in this list for the rule groups in your new DNS Firewall policy. </p>")
  @as("UnavailablePriorities")
  unavailablePriorities: option<dnsRuleGroupPriorities>,
  @ocaml.doc("<p>The ID of the Firewall Manager DNS Firewall policy that was already applied to the VPC.
       This policy contains the rule group that's already associated with the VPC. </p>")
  @as("ConflictingPolicyId")
  conflictingPolicyId: option<policyId>,
  @ocaml.doc("<p>The priority setting of the two conflicting rule groups.</p>")
  @as("ConflictingPriority")
  conflictingPriority: option<dnsRuleGroupPriority>,
  @ocaml.doc(
    "<p>A description of the violation that specifies the VPC and the rule group that's already associated with it.</p>"
  )
  @as("ViolationTargetDescription")
  violationTargetDescription: option<lengthBoundedString>,
  @ocaml.doc("<p>Information about the VPC ID. </p>") @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
type customerPolicyScopeMap = Js.Dict.t<customerPolicyScopeIdList>
@ocaml.doc("<p>Details of the resource that is not protected by the policy.</p>")
type complianceViolator = {
  @ocaml.doc("<p>Metadata about the resource that doesn't comply with the policy scope.</p>")
  @as("Metadata")
  metadata: option<complianceViolatorMetadata>,
  @ocaml.doc("<p>The resource type. This is in the format shown in the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">Amazon Web Services Resource Types Reference</a>. For example:
        <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code>,
        <code>AWS::CloudFront::Distribution</code>, or
        <code>AWS::NetworkFirewall::FirewallPolicy</code>.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The reason that the resource is not protected by the policy.</p>")
  @as("ViolationReason")
  violationReason: option<violationReason>,
  @ocaml.doc("<p>The resource ID.</p>") @as("ResourceId") resourceId: option<resourceId>,
}
@ocaml.doc("<p>Violation detail for network interfaces associated with an EC2 instance.</p>")
type awsEc2NetworkInterfaceViolation = {
  @ocaml.doc(
    "<p>List of security groups that violate the rules specified in the primary security group of the Firewall Manager policy.</p>"
  )
  @as("ViolatingSecurityGroups")
  violatingSecurityGroups: option<resourceIdList>,
  @ocaml.doc("<p>The resource ID of the network interface.</p>") @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
type appsList = array<app>
@ocaml.doc("<p>Details about the security service that is being used to protect the resources.</p>")
type securityServicePolicyData = {
  @ocaml.doc("<p>Contains the Network Firewall firewall policy options to configure a centralized deployment
         model.</p>")
  @as("PolicyOption")
  policyOption: option<policyOption>,
  @ocaml.doc("<p>Details about the service that are specific to the service type, in JSON format. </p>
         <ul>
            <li>
               <p>Example: <code>DNS_FIREWALL</code>
               </p>
               <p>
                  <code>\"{\\\"type\\\":\\\"DNS_FIREWALL\\\",\\\"preProcessRuleGroups\\\":[{\\\"ruleGroupId\\\":\\\"rslvr-frg-1\\\",\\\"priority\\\":10}],\\\"postProcessRuleGroups\\\":[{\\\"ruleGroupId\\\":\\\"rslvr-frg-2\\\",\\\"priority\\\":9911}]}\"</code>
               </p>
               <note>
                  <p>Valid values for <code>preProcessRuleGroups</code> are between 1 and 99. Valid
                values for <code>postProcessRuleGroups</code> are between 9901 and 10000.</p>
               </note>
            </li>
            <li>
               <p>Example: <code>DNS_FIREWALL</code>
               </p>
               <p>
                  <code>\"{\\\"type\\\":\\\"DNS_FIREWALL\\\",\\\"preProcessRuleGroups\\\":[{\\\"ruleGroupId\\\":\\\"rslvr-frg-1\\\",\\\"priority\\\":10}],\\\"postProcessRuleGroups\\\":[{\\\"ruleGroupId\\\":\\\"rslvr-frg-2\\\",\\\"priority\\\":9911}]}\"</code>
               </p>
               <note>
                  <p>Valid values for <code>preProcessRuleGroups</code> are between 1 and 99. Valid
                 values for <code>postProcessRuleGroups</code> are between 9901 and 10000.</p>
               </note>
            </li>
            <li>
               <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
              automatic Availability Zone configuration. With automatic Availbility Zone
              configuration, Firewall Manager chooses which Availability Zones to create the endpoints in. </p>
               <p>
                  <code>\"{ \\\"type\\\": \\\"NETWORK_FIREWALL\\\",
                 \\\"networkFirewallStatelessRuleGroupReferences\\\": [ { \\\"resourceARN\\\":
                 \\\"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\\\",
                 \\\"priority\\\": 1 } ], \\\"networkFirewallStatelessDefaultActions\\\": [
                 \\\"aws:forward_to_sfe\\\", \\\"customActionName\\\" ],
                 \\\"networkFirewallStatelessFragmentDefaultActions\\\": [ \\\"aws:forward_to_sfe\\\",
                 \\\"customActionName\\\" ], \\\"networkFirewallStatelessCustomActions\\\": [ {
                 \\\"actionName\\\": \\\"customActionName\\\", \\\"actionDefinition\\\": {
                 \\\"publishMetricAction\\\": { \\\"dimensions\\\": [ { \\\"value\\\": \\\"metricdimensionvalue\\\"
                 } ] } } } ], \\\"networkFirewallStatefulRuleGroupReferences\\\": [ { \\\"resourceARN\\\":
                 \\\"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\\\" } ],
                 \\\"networkFirewallOrchestrationConfig\\\": { \\\"singleFirewallEndpointPerVPC\\\": false,
                 \\\"allowedIPV4CidrList\\\": [ \\\"10.0.0.0/28\\\", \\\"192.168.0.0/28\\\" ],
                 \\\"routeManagementAction\\\": \\\"OFF\\\" }, \\\"networkFirewallLoggingConfiguration\\\": {
                 \\\"logDestinationConfigs\\\": [ { \\\"logDestinationType\\\": \\\"S3\\\", \\\"logType\\\":
                 \\\"ALERT\\\", \\\"logDestination\\\": { \\\"bucketName\\\": \\\"s3-bucket-name\\\" } }, {
                 \\\"logDestinationType\\\": \\\"S3\\\", \\\"logType\\\": \\\"FLOW\\\", \\\"logDestination\\\": {
                 \\\"bucketName\\\": \\\"s3-bucket-name\\\" } } ], \\\"overrideExistingConfig\\\": true }
                 }\"</code>
               </p>
               <p> To use the distributed deployment model, you must set <a href=\"https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_PolicyOption.html\">PolicyOption</a> to
                 <code>NULL</code>. </p>
            </li>
            <li>
               <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
              automatic Availability Zone configuration, and route management. </p>
               <p>
                  <code>\"{ \\\"type\\\": \\\"NETWORK_FIREWALL\\\",
                 \\\"networkFirewallStatelessRuleGroupReferences\\\": [ { \\\"resourceARN\\\":
                 \\\"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\\\",
                 \\\"priority\\\": 1 } ], \\\"networkFirewallStatelessDefaultActions\\\": [
                 \\\"aws:forward_to_sfe\\\", \\\"customActionName\\\" ],
                 \\\"networkFirewallStatelessFragmentDefaultActions\\\": [ \\\"aws:forward_to_sfe\\\",
                 \\\"customActionName\\\" ], \\\"networkFirewallStatelessCustomActions\\\": [ {
                 \\\"actionName\\\": \\\"customActionName\\\", \\\"actionDefinition\\\": {
                 \\\"publishMetricAction\\\": { \\\"dimensions\\\": [ { \\\"value\\\": \\\"metricdimensionvalue\\\"
                 } ] } } } ], \\\"networkFirewallStatefulRuleGroupReferences\\\": [ { \\\"resourceARN\\\":
                 \\\"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\\\" } ],
                 \\\"networkFirewallOrchestrationConfig\\\": { \\\"singleFirewallEndpointPerVPC\\\": false,
                 \\\"allowedIPV4CidrList\\\": [ \\\"10.0.0.0/28\\\", \\\"192.168.0.0/28\\\" ],
                 \\\"routeManagementAction\\\": \\\"MONITOR\\\", \\\"routeManagementTargetTypes\\\": [
                 \\\"InternetGateway\\\" ] }, \\\"networkFirewallLoggingConfiguration\\\": {
                 \\\"logDestinationConfigs\\\": [ { \\\"logDestinationType\\\": \\\"S3\\\", \\\"logType\\\":
                 \\\"ALERT\\\", \\\"logDestination\\\": { \\\"bucketName\\\": \\\"s3-bucket-name\\\" } }, {
                 \\\"logDestinationType\\\": \\\"S3\\\", \\\"logType\\\": \\\"FLOW\\\", \\\"logDestination\\\": {
                 \\\"bucketName\\\": \\\"s3-bucket-name\\\" } } ], \\\"overrideExistingConfig\\\": true }
                 }\"</code>
               </p>
            </li>
            <li>
               <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
              custom Availability Zone configuration. With custom Availability Zone configuration,
              you define which specific Availability Zones to create endpoints in by configuring
                 <code>firewallCreationConfig</code>. </p>
               <p>
                  <code>\"{
                 \\\"type\\\":\\\"NETWORK_FIREWALL\\\",\\\"networkFirewallStatelessRuleGroupReferences\\\":[{\\\"resourceARN\\\":\\\"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\\\",\\\"priority\\\":1}],
                 \\\"networkFirewallStatelessDefaultActions\\\":[ \\\"aws:forward_to_sfe\\\",
                 \\\"customActionName\\\" ], \\\"networkFirewallStatelessFragmentDefaultActions\\\":[
                 \\\"aws:forward_to_sfe\\\", \\\"fragmentcustomactionname\\\" ],
                 \\\"networkFirewallStatelessCustomActions\\\":[ { \\\"actionName\\\":\\\"customActionName\\\",
                 \\\"actionDefinition\\\":{ \\\"publishMetricAction\\\":{ \\\"dimensions\\\":[ {
                 \\\"value\\\":\\\"metricdimensionvalue\\\" } ] } } }, {
                 \\\"actionName\\\":\\\"fragmentcustomactionname\\\", \\\"actionDefinition\\\":{
                 \\\"publishMetricAction\\\":{ \\\"dimensions\\\":[ {
                 \\\"value\\\":\\\"fragmentmetricdimensionvalue\\\" } ] } } } ],
                 \\\"networkFirewallStatefulRuleGroupReferences\\\":[ {
                 \\\"resourceARN\\\":\\\"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\\\"
                 } ], \\\"networkFirewallOrchestrationConfig\\\":{ \\\"firewallCreationConfig\\\":{
                 \\\"endpointLocation\\\":{ \\\"availabilityZoneConfigList\\\":[ {
                 \\\"availabilityZoneId\\\":null, \\\"availabilityZoneName\\\":\\\"us-east-1a\\\",
                 \\\"allowedIPV4CidrList\\\":[ \\\"10.0.0.0/28\\\" ] }, { ¯\\\"availabilityZoneId\\\":null,
                 \\\"availabilityZoneName\\\":\\\"us-east-1b\\\", \\\"allowedIPV4CidrList\\\":[ \\\"10.0.0.0/28\\\"
                 ] } ] } }, \\\"singleFirewallEndpointPerVPC\\\":false, \\\"allowedIPV4CidrList\\\":null,
                 \\\"routeManagementAction\\\":\\\"OFF\\\", \\\"networkFirewallLoggingConfiguration\\\":{
                 \\\"logDestinationConfigs\\\":[ { \\\"logDestinationType\\\":\\\"S3\\\",
                 \\\"logType\\\":\\\"ALERT\\\", \\\"logDestination\\\":{ \\\"bucketName\\\":\\\"s3-bucket-name\\\" } },
                 { \\\"logDestinationType\\\":\\\"S3\\\", \\\"logType\\\":\\\"FLOW\\\", \\\"logDestination\\\":{
                 \\\"bucketName\\\":\\\"s3-bucket-name\\\" } } ], \\\"overrideExistingConfig\\\":boolean }
                 }\"</code>
               </p>
            </li>
            <li>
               <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
              custom Availability Zone configuration, and route management. </p>
               <p>
                  <code>\"{
                 \\\"type\\\":\\\"NETWORK_FIREWALL\\\",\\\"networkFirewallStatelessRuleGroupReferences\\\":[{\\\"resourceARN\\\":\\\"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\\\",\\\"priority\\\":1}],
                 \\\"networkFirewallStatelessDefaultActions\\\":[ \\\"aws:forward_to_sfe\\\",
                 \\\"customActionName\\\" ], \\\"networkFirewallStatelessFragmentDefaultActions\\\":[
                 \\\"aws:forward_to_sfe\\\", \\\"fragmentcustomactionname\\\" ],
                 \\\"networkFirewallStatelessCustomActions\\\":[ { \\\"actionName\\\":\\\"customActionName\\\",
                 \\\"actionDefinition\\\":{ \\\"publishMetricAction\\\":{ \\\"dimensions\\\":[ {
                 \\\"value\\\":\\\"metricdimensionvalue\\\" } ] } } }, {
                 \\\"actionName\\\":\\\"fragmentcustomactionname\\\", \\\"actionDefinition\\\":{
                 \\\"publishMetricAction\\\":{ \\\"dimensions\\\":[ {
                 \\\"value\\\":\\\"fragmentmetricdimensionvalue\\\" } ] } } } ],
                 \\\"networkFirewallStatefulRuleGroupReferences\\\":[ {
                 \\\"resourceARN\\\":\\\"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\\\"
                 } ], \\\"networkFirewallOrchestrationConfig\\\":{ \\\"firewallCreationConfig\\\":{
                 \\\"endpointLocation\\\":{ \\\"availabilityZoneConfigList\\\":[ {
                 \\\"availabilityZoneId\\\":null, \\\"availabilityZoneName\\\":\\\"us-east-1a\\\",
                 \\\"allowedIPV4CidrList\\\":[ \\\"10.0.0.0/28\\\" ] }, { ¯\\\"availabilityZoneId\\\":null,
                 \\\"availabilityZoneName\\\":\\\"us-east-1b\\\", \\\"allowedIPV4CidrList\\\":[ \\\"10.0.0.0/28\\\"
                 ] } ] } }, \\\"singleFirewallEndpointPerVPC\\\":false, \\\"allowedIPV4CidrList\\\":null,
                 \\\"routeManagementAction\\\":\\\"MONITOR\\\", \\\"routeManagementTargetTypes\\\":[
                 \\\"InternetGateway\\\" ], \\\"routeManagementConfig\\\":{
                 \\\"allowCrossAZTrafficIfNoEndpoint\\\":true } },
                 \\\"networkFirewallLoggingConfiguration\\\":{ \\\"logDestinationConfigs\\\":[ {
                 \\\"logDestinationType\\\":\\\"S3\\\", \\\"logType\\\":\\\"ALERT\\\", \\\"logDestination\\\":{
                 \\\"bucketName\\\":\\\"s3-bucket-name\\\" } }, { \\\"logDestinationType\\\":\\\"S3\\\",
                 \\\"logType\\\":\\\"FLOW\\\", \\\"logDestination\\\":{ \\\"bucketName\\\":\\\"s3-bucket-name\\\" } }
                 ], \\\"overrideExistingConfig\\\":boolean } }\"</code>
               </p>
            </li>
            <li>
               <p>Example: <code>PARTNER_FIREWALL</code> for Firewall Manager</p>
               <p>
                  <code>\"{\\\"type\\\":\\\"THIRD_PARTY_FIREWALL\\\",\\\"thirdPartyrFirewall\\\":\\\"PALO_ALTO_NETWORKS_CLOUD_NGFW\\\",\\\"thirdPartyFirewallConfig\\\":{\\\"thirdPartyFirewallPolicyList\\\":[\\\"global-123456789012-1\\\"],\\\"networkFirewallLoggingConfiguration\\\":null},\\\"firewallDeploymentModel\\\":{\\\"distributedFirewallDeploymentModel\\\":{\\\"distributedFirewallOrchestrationConfig\\\":{\\\"firewallCreationConfig\\\":{\\\"endpointLocation\\\":{\\\"availabilityZoneConfigList\\\":[{\\\"availabilityZoneId\\\":null,\\\"availabilityZoneName\\\":\\\"us-east-1a\\\",\\\"allowedIPV4CidrList\\\":[\\\"10.0.1.0/28\\\"]}]}},\\\"allowedIPV4CidrList\\\":null},\\\"distributedRouteManagementConfig\\\":null},\\\"centralizedFirewallDeploymentModel\\\":null}}\"\"</code>
               </p>
            </li>
            <li>
               <p>Specification for <code>SHIELD_ADVANCED</code> for Amazon CloudFront distributions </p>
               <p>
                  <code>\"{\\\"type\\\":\\\"SHIELD_ADVANCED\\\",\\\"automaticResponseConfiguration\\\":
                 {\\\"automaticResponseStatus\\\":\\\"ENABLED|IGNORED|DISABLED\\\",
                 \\\"automaticResponseAction\\\":\\\"BLOCK|COUNT\\\"},
                 \\\"overrideCustomerWebaclClassic\\\":true|false}\"</code>
               </p>
               <p>For example:
                 <code>\"{\\\"type\\\":\\\"SHIELD_ADVANCED\\\",\\\"automaticResponseConfiguration\\\":
                 {\\\"automaticResponseStatus\\\":\\\"ENABLED\\\",
                 \\\"automaticResponseAction\\\":\\\"COUNT\\\"}}\"</code>
               </p>
               <p>The default value for <code>automaticResponseStatus</code> is
                 <code>IGNORED</code>. The value for <code>automaticResponseAction</code> is only
              required when <code>automaticResponseStatus</code> is set to <code>ENABLED</code>.
              The default value for <code>overrideCustomerWebaclClassic</code> is
                 <code>false</code>.</p>
               <p>For other resource types that you can protect with a Shield Advanced policy, this
                 <code>ManagedServiceData</code> configuration is an empty string.</p>
            </li>
            <li>
               <p>Example: <code>WAFV2</code>
               </p>
               <p>
                  <code>\"{\\\"type\\\":\\\"WAFV2\\\",\\\"preProcessRuleGroups\\\":[{\\\"ruleGroupArn\\\":null,\\\"overrideAction\\\":{\\\"type\\\":\\\"NONE\\\"},\\\"managedRuleGroupIdentifier\\\":{\\\"version\\\":null,\\\"vendorName\\\":\\\"AWS\\\",\\\"managedRuleGroupName\\\":\\\"AWSManagedRulesAmazonIpReputationList\\\"},\\\"ruleGroupType\\\":\\\"ManagedRuleGroup\\\",\\\"excludeRules\\\":[{\\\"name\\\":\\\"NoUserAgent_HEADER\\\"}]}],\\\"postProcessRuleGroups\\\":[],\\\"defaultAction\\\":{\\\"type\\\":\\\"ALLOW\\\"},\\\"overrideCustomerWebACLAssociation\\\":false,\\\"loggingConfiguration\\\":{\\\"logDestinationConfigs\\\":[\\\"arn:aws:firehose:us-west-2:12345678912:deliverystream/aws-waf-logs-fms-admin-destination\\\"],\\\"redactedFields\\\":[{\\\"redactedFieldType\\\":\\\"SingleHeader\\\",\\\"redactedFieldValue\\\":\\\"Cookies\\\"},{\\\"redactedFieldType\\\":\\\"Method\\\"}]}}\"</code>
               </p>
               <p>In the <code>loggingConfiguration</code>, you can specify one
                 <code>logDestinationConfigs</code>, you can optionally provide up to 20
                 <code>redactedFields</code>, and the <code>RedactedFieldType</code> must be one of
                 <code>URI</code>, <code>QUERY_STRING</code>, <code>HEADER</code>, or
                 <code>METHOD</code>.</p>
            </li>
            <li>
               <p>Example: <code>WAF Classic</code>
               </p>
               <p>
                  <code>\"{\\\"type\\\": \\\"WAF\\\", \\\"ruleGroups\\\":
                 [{\\\"id\\\":\\\"12345678-1bcd-9012-efga-0987654321ab\\\", \\\"overrideAction\\\" : {\\\"type\\\":
                 \\\"COUNT\\\"}}], \\\"defaultAction\\\": {\\\"type\\\": \\\"BLOCK\\\"}}\"</code>
               </p>
            </li>
            <li>
               <p>Example: <code>WAFV2</code> -  Firewall Manager support for WAF managed rule group versioning
          </p>
               <p>
                  <code>\"{\\\"type\\\":\\\"WAFV2\\\",\\\"preProcessRuleGroups\\\":[{\\\"ruleGroupArn\\\":null,\\\"overrideAction\\\":{\\\"type\\\":\\\"NONE\\\"},\\\"managedRuleGroupIdentifier\\\":{\\\"versionEnabled\\\":true,\\\"version\\\":\\\"Version_2.0\\\",\\\"vendorName\\\":\\\"AWS\\\",\\\"managedRuleGroupName\\\":\\\"AWSManagedRulesCommonRuleSet\\\"},\\\"ruleGroupType\\\":\\\"ManagedRuleGroup\\\",\\\"excludeRules\\\":[{\\\"name\\\":\\\"NoUserAgent_HEADER\\\"}]}],\\\"postProcessRuleGroups\\\":[],\\\"defaultAction\\\":{\\\"type\\\":\\\"ALLOW\\\"},\\\"overrideCustomerWebACLAssociation\\\":false,\\\"loggingConfiguration\\\":{\\\"logDestinationConfigs\\\":[\\\"arn:aws:firehose:us-west-2:12345678912:deliverystream/aws-waf-logs-fms-admin-destination\\\"],\\\"redactedFields\\\":[{\\\"redactedFieldType\\\":\\\"SingleHeader\\\",\\\"redactedFieldValue\\\":\\\"Cookies\\\"},{\\\"redactedFieldType\\\":\\\"Method\\\"}]}}\"</code>
               </p>
               <p>
            To use a specific version of a WAF managed rule group in your Firewall Manager policy, you must set <code>versionEnabled</code> to <code>true</code>, and set <code>version</code> to the version you'd like to use. If you don't set <code>versionEnabled</code> to <code>true</code>, or if you omit <code>versionEnabled</code>, then Firewall Manager uses the default version of the WAF managed rule group.
          </p>
            </li>
            <li>
               <p>Example: <code>SECURITY_GROUPS_COMMON</code>
               </p>
               <p>
                  <code>\"{\\\"type\\\":\\\"SECURITY_GROUPS_COMMON\\\",\\\"revertManualSecurityGroupChanges\\\":false,\\\"exclusiveResourceSecurityGroupManagement\\\":false,
                 \\\"applyToAllEC2InstanceENIs\\\":false,\\\"securityGroups\\\":[{\\\"id\\\":\\\"
                 sg-000e55995d61a06bd\\\"}]}\"</code>
               </p>
            </li>
            <li>
               <p>Example: Shared VPCs. Apply the preceding policy to resources in shared VPCs as
              well as to those in VPCs that the account owns </p>
               <p>
                  <code>\"{\\\"type\\\":\\\"SECURITY_GROUPS_COMMON\\\",\\\"revertManualSecurityGroupChanges\\\":false,\\\"exclusiveResourceSecurityGroupManagement\\\":false,
                 \\\"applyToAllEC2InstanceENIs\\\":false,\\\"includeSharedVPC\\\":true,\\\"securityGroups\\\":[{\\\"id\\\":\\\"
                 sg-000e55995d61a06bd\\\"}]}\"</code>
               </p>
            </li>
            <li>
               <p>Example: <code>SECURITY_GROUPS_CONTENT_AUDIT</code>
               </p>
               <p>
                  <code>\"{\\\"type\\\":\\\"SECURITY_GROUPS_CONTENT_AUDIT\\\",\\\"securityGroups\\\":[{\\\"id\\\":\\\"sg-000e55995d61a06bd\\\"}],\\\"securityGroupAction\\\":{\\\"type\\\":\\\"ALLOW\\\"}}\"</code>
               </p>
               <p>The security group action for content audit can be <code>ALLOW</code> or
                 <code>DENY</code>. For <code>ALLOW</code>, all in-scope security group rules must
              be within the allowed range of the policy's security group rules. For
                 <code>DENY</code>, all in-scope security group rules must not contain a value or a
              range that matches a rule value or range in the policy security group.</p>
            </li>
            <li>
               <p>Example: <code>SECURITY_GROUPS_USAGE_AUDIT</code>
               </p>
               <p>
                  <code>\"{\\\"type\\\":\\\"SECURITY_GROUPS_USAGE_AUDIT\\\",\\\"deleteUnusedSecurityGroups\\\":true,\\\"coalesceRedundantSecurityGroups\\\":true}\"</code>
               </p>
            </li>
         </ul>")
  @as("ManagedServiceData")
  managedServiceData: option<managedServiceData>,
  @ocaml.doc("<p>The service that the policy is using to protect the resources. This specifies the type of
      policy that is created, either an WAF policy, a Shield Advanced policy, or a security
      group policy. For security group policies, Firewall Manager supports one security group for
      each common policy and for each content audit policy. This is an adjustable limit that you can
      increase by contacting Amazon Web Services Support.</p>")
  @as("Type")
  type_: securityServiceType,
}
type securityGroupRemediationActions = array<securityGroupRemediationAction>
@ocaml.doc("<p>Contains details about the route endpoint that violates the policy scope.</p>")
type routeHasOutOfScopeEndpointViolation = {
  @ocaml.doc("<p>The routes in the route table associated with the Internet Gateway.</p>")
  @as("InternetGatewayRoutes")
  internetGatewayRoutes: option<routes>,
  @ocaml.doc("<p>The current route table associated with the Internet Gateway.</p>")
  @as("CurrentInternetGatewayRouteTable")
  currentInternetGatewayRouteTable: option<resourceId>,
  @ocaml.doc("<p>The ID of the Internet Gateway.</p>") @as("InternetGatewayId")
  internetGatewayId: option<resourceId>,
  @ocaml.doc("<p>The list of firewall subnet routes.</p>") @as("FirewallSubnetRoutes")
  firewallSubnetRoutes: option<routes>,
  @ocaml.doc("<p>The ID of the firewall subnet.</p>") @as("FirewallSubnetId")
  firewallSubnetId: option<resourceId>,
  @ocaml.doc("<p>The route table associated with the current firewall subnet.</p>")
  @as("CurrentFirewallSubnetRouteTable")
  currentFirewallSubnetRouteTable: option<resourceId>,
  @ocaml.doc("<p>The ID of the subnet's Availability Zone.</p>") @as("SubnetAvailabilityZoneId")
  subnetAvailabilityZoneId: option<lengthBoundedString>,
  @ocaml.doc("<p>The subnet's Availability Zone.</p>") @as("SubnetAvailabilityZone")
  subnetAvailabilityZone: option<lengthBoundedString>,
  @ocaml.doc("<p>The list of routes that violate the route table.</p>") @as("ViolatingRoutes")
  violatingRoutes: option<routes>,
  @ocaml.doc("<p>The ID of the route table.</p>") @as("RouteTableId")
  routeTableId: option<resourceId>,
  @ocaml.doc("<p>The VPC ID of the route that violates the policy scope.</p>") @as("VpcId")
  vpcId: option<resourceId>,
  @ocaml.doc(
    "<p>The ID of the subnet associated with the route that violates the policy scope.</p>"
  )
  @as("SubnetId")
  subnetId: option<resourceId>,
}
@ocaml.doc("<p>Information about an individual action you can take to remediate a violation.</p>")
type remediationAction = {
  @ocaml.doc("<p>The remedial action to take when updating a firewall configuration.</p>")
  @as("FMSPolicyUpdateFirewallCreationConfigAction")
  fmspolicyUpdateFirewallCreationConfigAction: option<fmspolicyUpdateFirewallCreationConfigAction>,
  @ocaml.doc("<p>Information about the CreateRouteTable action in the Amazon EC2 API.</p>")
  @as("EC2CreateRouteTableAction")
  ec2CreateRouteTableAction: option<ec2CreateRouteTableAction>,
  @ocaml.doc("<p>Information about the AssociateRouteTable action in the Amazon EC2 API.</p>")
  @as("EC2AssociateRouteTableAction")
  ec2AssociateRouteTableAction: option<ec2AssociateRouteTableAction>,
  @ocaml.doc(
    "<p>Information about the ReplaceRouteTableAssociation action in the Amazon EC2 API.</p>"
  )
  @as("EC2ReplaceRouteTableAssociationAction")
  ec2ReplaceRouteTableAssociationAction: option<ec2ReplaceRouteTableAssociationAction>,
  @ocaml.doc("<p>Information about the CopyRouteTable action in the Amazon EC2 API.</p>")
  @as("EC2CopyRouteTableAction")
  ec2CopyRouteTableAction: option<ec2CopyRouteTableAction>,
  @ocaml.doc("<p>Information about the DeleteRoute action in the Amazon EC2 API.</p>")
  @as("EC2DeleteRouteAction")
  ec2DeleteRouteAction: option<ec2DeleteRouteAction>,
  @ocaml.doc("<p>Information about the ReplaceRoute action in the Amazon EC2 API.</p>")
  @as("EC2ReplaceRouteAction")
  ec2ReplaceRouteAction: option<ec2ReplaceRouteAction>,
  @ocaml.doc("<p>Information about the CreateRoute action in the Amazon EC2 API.</p>")
  @as("EC2CreateRouteAction")
  ec2CreateRouteAction: option<ec2CreateRouteAction>,
  @ocaml.doc("<p>A description of a remediation action.</p>") @as("Description")
  description: option<lengthBoundedString>,
}
type protocolsListsData = array<protocolsListDataSummary>
@ocaml.doc("<p>An Firewall Manager protocols list.</p>")
type protocolsListData = {
  @ocaml.doc("<p>A map of previous version numbers to their corresponding protocol arrays.</p>")
  @as("PreviousProtocolsList")
  previousProtocolsList: option<previousProtocolsList>,
  @ocaml.doc("<p>An array of protocols in the Firewall Manager protocols list.</p>")
  @as("ProtocolsList")
  protocolsList: protocolsList,
  @ocaml.doc("<p>The time that the Firewall Manager protocols list was last updated.</p>")
  @as("LastUpdateTime")
  lastUpdateTime: option<timeStamp>,
  @ocaml.doc("<p>The time that the Firewall Manager protocols list was created.</p>")
  @as("CreateTime")
  createTime: option<timeStamp>,
  @ocaml.doc("<p>A unique identifier for each update to the list. When you update
        the list, the update token must match the token of the current version of the application list.
        You can retrieve the update token by getting the list. </p>")
  @as("ListUpdateToken")
  listUpdateToken: option<updateToken>,
  @ocaml.doc("<p>The name of the Firewall Manager protocols list.</p>") @as("ListName")
  listName: resourceName,
  @ocaml.doc("<p>The ID of the Firewall Manager protocols list.</p>") @as("ListId")
  listId: option<listId>,
}
type previousAppsList = Js.Dict.t<appsList>
@ocaml.doc("<p>Indicates whether the account is compliant with the specified policy. An account is
      considered noncompliant if it includes resources that are not protected by the policy, for
      WAF and Shield Advanced policies, or that are noncompliant with the policy, for security group
      policies.</p>")
type policyComplianceStatus = {
  @ocaml.doc("<p>Details about problems with dependent services, such as WAF or Config,
      and the error message received that indicates the problem with the service.</p>")
  @as("IssueInfoMap")
  issueInfoMap: option<issueInfoMap>,
  @ocaml.doc("<p>Timestamp of the last update to the <code>EvaluationResult</code> objects.</p>")
  @as("LastUpdated")
  lastUpdated: option<timeStamp>,
  @ocaml.doc("<p>An array of <code>EvaluationResult</code> objects.</p>") @as("EvaluationResults")
  evaluationResults: option<evaluationResults>,
  @ocaml.doc("<p>The member account ID.</p>") @as("MemberAccount")
  memberAccount: option<awsaccountId>,
  @ocaml.doc("<p>The name of the Firewall Manager policy.</p>") @as("PolicyName")
  policyName: option<resourceName>,
  @ocaml.doc("<p>The ID of the Firewall Manager policy.</p>") @as("PolicyId")
  policyId: option<policyId>,
  @ocaml.doc("<p>The Amazon Web Services account that created the Firewall Manager policy.</p>")
  @as("PolicyOwner")
  policyOwner: option<awsaccountId>,
}
type partialMatches = array<partialMatch>
@ocaml.doc(
  "<p>Violation detail for an unexpected gateway route that’s present in a route table.</p>"
)
type networkFirewallUnexpectedGatewayRoutesViolation = {
  @ocaml.doc("<p>Information about the VPC ID.</p>") @as("VpcId") vpcId: option<resourceId>,
  @ocaml.doc("<p>Information about the  route table.</p>") @as("RouteTableId")
  routeTableId: option<resourceId>,
  @ocaml.doc("<p>The routes that are in violation.</p>") @as("ViolatingRoutes")
  violatingRoutes: option<routes>,
  @ocaml.doc("<p>Information about the gateway ID.</p>") @as("GatewayId")
  gatewayId: option<resourceId>,
}
@ocaml.doc("<p>Violation detail for an unexpected route that's present in a route table.</p>")
type networkFirewallUnexpectedFirewallRoutesViolation = {
  @ocaml.doc("<p>Information about the VPC ID.</p>") @as("VpcId") vpcId: option<resourceId>,
  @ocaml.doc("<p>The endpoint of the firewall.</p>") @as("FirewallEndpoint")
  firewallEndpoint: option<resourceId>,
  @ocaml.doc("<p>The ID of the route table.</p>") @as("RouteTableId")
  routeTableId: option<resourceId>,
  @ocaml.doc("<p>The routes that are in violation.</p>") @as("ViolatingRoutes")
  violatingRoutes: option<routes>,
  @ocaml.doc("<p>The subnet ID for the firewall.</p>") @as("FirewallSubnetId")
  firewallSubnetId: option<resourceId>,
}
@ocaml.doc("<p>The definition of the Network Firewall firewall policy.</p>")
type networkFirewallPolicyDescription = {
  @ocaml.doc(
    "<p>The stateful rule groups that are used in the Network Firewall firewall policy. </p>"
  )
  @as("StatefulRuleGroups")
  statefulRuleGroups: option<statefulRuleGroupList>,
  @ocaml.doc(
    "<p>Names of custom actions that are available for use in the stateless default actions settings.</p>"
  )
  @as("StatelessCustomActions")
  statelessCustomActions: option<networkFirewallActionList>,
  @ocaml.doc(
    "<p>The actions to take on packet fragments that don't match any of the stateless rule groups. </p>"
  )
  @as("StatelessFragmentDefaultActions")
  statelessFragmentDefaultActions: option<networkFirewallActionList>,
  @ocaml.doc(
    "<p>The actions to take on packets that don't match any of the stateless rule groups. </p>"
  )
  @as("StatelessDefaultActions")
  statelessDefaultActions: option<networkFirewallActionList>,
  @ocaml.doc(
    "<p>The stateless rule groups that are used in the Network Firewall firewall policy. </p>"
  )
  @as("StatelessRuleGroups")
  statelessRuleGroups: option<statelessRuleGroupList>,
}
@ocaml.doc(
  "<p>Violation detail for an internet gateway route with an inactive state in the customer subnet route table or Network Firewall subnet route table.</p>"
)
type networkFirewallBlackHoleRouteDetectedViolation = {
  @ocaml.doc("<p>Information about the route or routes that are in violation.</p>")
  @as("ViolatingRoutes")
  violatingRoutes: option<routes>,
  @ocaml.doc("<p>Information about the VPC ID.</p>") @as("VpcId") vpcId: option<resourceId>,
  @ocaml.doc("<p>Information about the route table ID.</p>") @as("RouteTableId")
  routeTableId: option<resourceId>,
  @ocaml.doc("<p>The subnet that has an inactive state.</p>") @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
type expectedRoutes = array<expectedRoute>
type complianceViolators = array<complianceViolator>
type awsEc2NetworkInterfaceViolations = array<awsEc2NetworkInterfaceViolation>
@ocaml.doc("<p>Details of the Firewall Manager applications list.</p>")
type appsListDataSummary = {
  @ocaml.doc(
    "<p>An array of <code>App</code> objects in the Firewall Manager applications list.</p>"
  )
  @as("AppsList")
  appsList: option<appsList>,
  @ocaml.doc("<p>The name of the applications list.</p>") @as("ListName")
  listName: option<resourceName>,
  @ocaml.doc("<p>The ID of the applications list.</p>") @as("ListId") listId: option<listId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the applications list.</p>") @as("ListArn")
  listArn: option<resourceArn>,
}
@ocaml.doc("<p>An ordered list of actions you can take to remediate a violation.</p>")
type remediationActionWithOrder = {
  @ocaml.doc("<p>The order of the remediation actions in the list.</p>") @as("Order")
  order: option<basicInteger>,
  @ocaml.doc("<p>Information about an action you can take to remediate a violation.</p>")
  @as("RemediationAction")
  remediationAction: option<remediationAction>,
}
type policyComplianceStatusList = array<policyComplianceStatus>
@ocaml.doc("<p>Describes
      the noncompliant resources in a member account for a specific Firewall Manager policy. A maximum of 100 entries are displayed. If more than 100 resources are
      noncompliant, <code>EvaluationLimitExceeded</code> is set to <code>True</code>.</p>")
type policyComplianceDetail = {
  @ocaml.doc("<p>Details about problems with dependent services, such as WAF or Config,
      and the error message received that indicates the problem with the service.</p>")
  @as("IssueInfoMap")
  issueInfoMap: option<issueInfoMap>,
  @ocaml.doc("<p>A timestamp that indicates when the returned information should be considered out of
      date.</p>")
  @as("ExpiredAt")
  expiredAt: option<timeStamp>,
  @ocaml.doc("<p>Indicates if over 100 resources are noncompliant with the Firewall Manager
      policy.</p>")
  @as("EvaluationLimitExceeded")
  evaluationLimitExceeded: option<boolean_>,
  @ocaml.doc("<p>An array of resources that aren't protected by the WAF or Shield Advanced policy or
      that aren't in compliance with the security group policy.</p>")
  @as("Violators")
  violators: option<complianceViolators>,
  @ocaml.doc("<p>The Amazon Web Services account ID.</p>") @as("MemberAccount")
  memberAccount: option<awsaccountId>,
  @ocaml.doc("<p>The ID of the Firewall Manager policy.</p>") @as("PolicyId")
  policyId: option<policyId>,
  @ocaml.doc("<p>The Amazon Web Services account that created the Firewall Manager policy.</p>")
  @as("PolicyOwner")
  policyOwner: option<awsaccountId>,
}
@ocaml.doc("<p>An Firewall Manager policy.</p>")
type policy = {
  @ocaml.doc("<p>Specifies the Amazon Web Services account IDs and Organizations organizational units (OUs) to exclude from the policy.
          Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.</p>
              <p>You can specify inclusions or exclusions, but not both. If you specify an <code>IncludeMap</code>, Firewall Manager
          applies the policy to all accounts specified by the <code>IncludeMap</code>, and
          does not evaluate any <code>ExcludeMap</code> specifications. If you do not specify an <code>IncludeMap</code>, then Firewall Manager
            applies the policy to all accounts except for those specified by the <code>ExcludeMap</code>.</p>
         <p>You can specify account IDs, OUs, or a combination: </p>
         <ul>
            <li>
               <p>Specify account IDs by setting the key to <code>ACCOUNT</code>. For example, the following is a valid map:
      <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p>
            </li>
            <li>
               <p>Specify OUs by setting the key to <code>ORG_UNIT</code>. For example, the following is a valid map:
  <code>{“ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
            </li>
            <li>
               <p>Specify accounts and OUs together in a single map, separated with a comma. For example, the following is a valid map:
      <code>{“ACCOUNT” : [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
            </li>
         </ul>")
  @as("ExcludeMap")
  excludeMap: option<customerPolicyScopeMap>,
  @ocaml.doc("<p>Specifies the Amazon Web Services account IDs and Organizations organizational units (OUs) to include in the policy.
          Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.</p>
              <p>You can specify inclusions or exclusions, but not both. If you specify an <code>IncludeMap</code>, Firewall Manager
          applies the policy to all accounts specified by the <code>IncludeMap</code>, and
          does not evaluate any <code>ExcludeMap</code> specifications. If you do not specify an <code>IncludeMap</code>, then Firewall Manager
            applies the policy to all accounts except for those specified by the <code>ExcludeMap</code>.</p>
         <p>You can specify account IDs, OUs, or a combination: </p>
         <ul>
            <li>
               <p>Specify account IDs by setting the key to <code>ACCOUNT</code>. For example, the following is a valid map:
      <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p>
            </li>
            <li>
               <p>Specify OUs by setting the key to <code>ORG_UNIT</code>. For example, the following is a valid map:
  <code>{“ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
            </li>
            <li>
               <p>Specify accounts and OUs together in a single map, separated with a comma. For example, the following is a valid map:
      <code>{“ACCOUNT” : [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
            </li>
         </ul>")
  @as("IncludeMap")
  includeMap: option<customerPolicyScopeMap>,
  @ocaml.doc("<p>Indicates whether Firewall Manager should automatically remove protections from resources that leave the policy scope and clean up resources
       that Firewall Manager is managing for accounts when those accounts leave policy scope. For example, Firewall Manager will disassociate a Firewall Manager managed web ACL
       from a protected customer resource when the customer resource leaves policy scope. </p>
         <p>By default, Firewall Manager doesn't remove protections or delete Firewall Manager managed resources. </p>
         <p>This option is not available for Shield Advanced or WAF Classic policies.</p>")
  @as("DeleteUnusedFMManagedResources")
  deleteUnusedFMManagedResources: option<boolean_>,
  @ocaml.doc("<p>Indicates if the policy should be automatically applied to new resources.</p>")
  @as("RemediationEnabled")
  remediationEnabled: boolean_,
  @ocaml.doc("<p>If set to <code>True</code>, resources with the tags that are specified in the
        <code>ResourceTag</code> array are not in scope of the policy. If set to <code>False</code>,
      and the <code>ResourceTag</code> array is not null, only resources with the specified tags are
      in scope of the policy.</p>")
  @as("ExcludeResourceTags")
  excludeResourceTags: boolean_,
  @ocaml.doc("<p>An array of <code>ResourceTag</code> objects.</p>") @as("ResourceTags")
  resourceTags: option<resourceTags>,
  @ocaml.doc(
    "<p>An array of <code>ResourceType</code> objects. Use this only to specify multiple resource types. To specify a single resource type, use <code>ResourceType</code>.</p>"
  )
  @as("ResourceTypeList")
  resourceTypeList: option<resourceTypeList>,
  @ocaml.doc("<p>The type of resource protected by or in scope of the policy. This is in the format shown
        in the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">Amazon Web Services Resource Types Reference</a>.
                    To apply this policy to multiple resource types, specify a resource type of <code>ResourceTypeList</code> and then specify the resource types in a <code>ResourceTypeList</code>.</p>
                <p>For WAF and Shield Advanced, resource types include
                <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code>, <code>AWS::ElasticLoadBalancing::LoadBalancer</code>, <code>AWS::EC2::EIP</code>, and
        <code>AWS::CloudFront::Distribution</code>. For a security group common policy, valid values
      are <code>AWS::EC2::NetworkInterface</code> and <code>AWS::EC2::Instance</code>. For a
      security group content audit policy, valid values are <code>AWS::EC2::SecurityGroup</code>,
        <code>AWS::EC2::NetworkInterface</code>, and <code>AWS::EC2::Instance</code>. For a security
            group usage audit policy, the value is <code>AWS::EC2::SecurityGroup</code>. For an Network Firewall policy or DNS Firewall policy,
                the value is <code>AWS::EC2::VPC</code>.</p>")
  @as("ResourceType")
  resourceType: resourceType,
  @ocaml.doc(
    "<p>Details about the security service that is being used to protect the resources.</p>"
  )
  @as("SecurityServicePolicyData")
  securityServicePolicyData: securityServicePolicyData,
  @ocaml.doc("<p>A unique identifier for each update to the policy. When issuing a <code>PutPolicy</code>
      request, the <code>PolicyUpdateToken</code> in the request must match the
        <code>PolicyUpdateToken</code> of the current policy version. To get the
        <code>PolicyUpdateToken</code> of the current policy version, use a <code>GetPolicy</code>
      request.</p>")
  @as("PolicyUpdateToken")
  policyUpdateToken: option<policyUpdateToken>,
  @ocaml.doc("<p>The name of the Firewall Manager policy.</p>") @as("PolicyName")
  policyName: resourceName,
  @ocaml.doc("<p>The ID of the Firewall Manager policy.</p>") @as("PolicyId")
  policyId: option<policyId>,
}
@ocaml.doc("<p>Violation detail for Network Firewall for a firewall policy that has a different
       <a>NetworkFirewallPolicyDescription</a> than is required by the Firewall Manager policy. </p>")
type networkFirewallPolicyModifiedViolation = {
  @ocaml.doc(
    "<p>The policy that should be in use in the individual account in order to be compliant. </p>"
  )
  @as("ExpectedPolicyDescription")
  expectedPolicyDescription: option<networkFirewallPolicyDescription>,
  @ocaml.doc("<p>The policy that's currently in use in the individual account. </p>")
  @as("CurrentPolicyDescription")
  currentPolicyDescription: option<networkFirewallPolicyDescription>,
  @ocaml.doc("<p>The ID of the Network Firewall or VPC resource that's in violation.</p>")
  @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
@ocaml.doc("<p>Violation detail for an expected route missing in Network Firewall.</p>")
type networkFirewallMissingExpectedRoutesViolation = {
  @ocaml.doc("<p>Information about the VPC ID.</p>") @as("VpcId") vpcId: option<resourceId>,
  @ocaml.doc("<p>The expected routes.</p>") @as("ExpectedRoutes")
  expectedRoutes: option<expectedRoutes>,
  @ocaml.doc("<p>The target of the violation.</p>") @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
@ocaml.doc("<p>Violation detail for the improperly configured subnet route. It's possible there is a missing route table route,
      or a configuration that causes traffic to cross an Availability Zone boundary.</p>")
type networkFirewallInvalidRouteConfigurationViolation = {
  @ocaml.doc("<p>Information about the VPC ID.</p>") @as("VpcId") vpcId: option<resourceId>,
  @ocaml.doc("<p>The actual internet gateway routes.</p>") @as("ActualInternetGatewayRoutes")
  actualInternetGatewayRoutes: option<routes>,
  @ocaml.doc("<p>The expected routes for the internet gateway.</p>")
  @as("ExpectedInternetGatewayRoutes")
  expectedInternetGatewayRoutes: option<expectedRoutes>,
  @ocaml.doc("<p>The route table for the current internet gateway.</p>")
  @as("CurrentInternetGatewayRouteTable")
  currentInternetGatewayRouteTable: option<resourceId>,
  @ocaml.doc("<p>The internet gateway ID.</p>") @as("InternetGatewayId")
  internetGatewayId: option<resourceId>,
  @ocaml.doc("<p>The actual firewall subnet routes that are expected.</p>")
  @as("ActualFirewallSubnetRoutes")
  actualFirewallSubnetRoutes: option<routes>,
  @ocaml.doc("<p>The firewall subnet routes that are expected.</p>")
  @as("ExpectedFirewallSubnetRoutes")
  expectedFirewallSubnetRoutes: option<expectedRoutes>,
  @ocaml.doc("<p>The actual subnet ID for the firewall.</p>") @as("ActualFirewallSubnetId")
  actualFirewallSubnetId: option<resourceId>,
  @ocaml.doc("<p>The expected subnet ID for the firewall.</p>") @as("ExpectedFirewallSubnetId")
  expectedFirewallSubnetId: option<resourceId>,
  @ocaml.doc("<p>The actual firewall endpoint.</p>") @as("ActualFirewallEndpoint")
  actualFirewallEndpoint: option<resourceId>,
  @ocaml.doc("<p>The firewall endpoint that's expected.</p>") @as("ExpectedFirewallEndpoint")
  expectedFirewallEndpoint: option<resourceId>,
  @ocaml.doc("<p>The subnet route table for the current firewall.</p>")
  @as("CurrentFirewallSubnetRouteTable")
  currentFirewallSubnetRouteTable: option<resourceId>,
  @ocaml.doc("<p>The route that's in violation.</p>") @as("ViolatingRoute")
  violatingRoute: option<route>,
  @ocaml.doc(
    "<p>Information about whether the route table is used in another Availability Zone.</p>"
  )
  @as("IsRouteTableUsedInDifferentAZ")
  isRouteTableUsedInDifferentAZ: option<boolean_>,
  @ocaml.doc("<p>The route table ID.</p>") @as("RouteTableId") routeTableId: option<resourceId>,
  @ocaml.doc("<p>The subnets that are affected.</p>") @as("AffectedSubnets")
  affectedSubnets: option<resourceIdList>,
}
@ocaml.doc(
  "<p>Violation detail for the subnet for which internet traffic that hasn't been inspected.</p>"
)
type networkFirewallInternetTrafficNotInspectedViolation = {
  @ocaml.doc("<p>Information about the VPC ID.</p>") @as("VpcId") vpcId: option<resourceId>,
  @ocaml.doc("<p>The actual internet gateway routes.</p>") @as("ActualInternetGatewayRoutes")
  actualInternetGatewayRoutes: option<routes>,
  @ocaml.doc("<p>The internet gateway routes that are expected.</p>")
  @as("ExpectedInternetGatewayRoutes")
  expectedInternetGatewayRoutes: option<expectedRoutes>,
  @ocaml.doc("<p>The current route table for the internet gateway.</p>")
  @as("CurrentInternetGatewayRouteTable")
  currentInternetGatewayRouteTable: option<resourceId>,
  @ocaml.doc("<p>The internet gateway ID.</p>") @as("InternetGatewayId")
  internetGatewayId: option<resourceId>,
  @ocaml.doc("<p>The actual firewall subnet routes.</p>") @as("ActualFirewallSubnetRoutes")
  actualFirewallSubnetRoutes: option<routes>,
  @ocaml.doc("<p>The firewall subnet routes that are expected.</p>")
  @as("ExpectedFirewallSubnetRoutes")
  expectedFirewallSubnetRoutes: option<expectedRoutes>,
  @ocaml.doc("<p>The firewall subnet ID.</p>") @as("FirewallSubnetId")
  firewallSubnetId: option<resourceId>,
  @ocaml.doc("<p>The expected endpoint for the current firewall.</p>")
  @as("ExpectedFirewallEndpoint")
  expectedFirewallEndpoint: option<resourceId>,
  @ocaml.doc("<p>Information about the subnet route table for the current firewall.</p>")
  @as("CurrentFirewallSubnetRouteTable")
  currentFirewallSubnetRouteTable: option<resourceId>,
  @ocaml.doc(
    "<p>Information about whether the route table is used in another Availability Zone.</p>"
  )
  @as("IsRouteTableUsedInDifferentAZ")
  isRouteTableUsedInDifferentAZ: option<boolean_>,
  @ocaml.doc("<p>The route or routes that are in violation.</p>") @as("ViolatingRoutes")
  violatingRoutes: option<routes>,
  @ocaml.doc("<p>Information about the route table ID.</p>") @as("RouteTableId")
  routeTableId: option<resourceId>,
  @ocaml.doc("<p>The subnet Availability Zone.</p>") @as("SubnetAvailabilityZone")
  subnetAvailabilityZone: option<lengthBoundedString>,
  @ocaml.doc("<p>The subnet ID.</p>") @as("SubnetId") subnetId: option<resourceId>,
}
@ocaml.doc(
  "<p>Violation detail for the rule violation in a security group when compared to the primary security group of the Firewall Manager policy.</p>"
)
type awsVPCSecurityGroupViolation = {
  @ocaml.doc(
    "<p>Remediation options for the rule specified in the <code>ViolationTarget</code>.</p>"
  )
  @as("PossibleSecurityGroupRemediationActions")
  possibleSecurityGroupRemediationActions: option<securityGroupRemediationActions>,
  @ocaml.doc(
    "<p>List of rules specified in the security group of the Firewall Manager policy that partially match the <code>ViolationTarget</code> rule.</p>"
  )
  @as("PartialMatches")
  partialMatches: option<partialMatches>,
  @ocaml.doc("<p>A description of the security group that violates the policy.</p>")
  @as("ViolationTargetDescription")
  violationTargetDescription: option<lengthBoundedString>,
  @ocaml.doc("<p>The security group rule that is being evaluated.</p>") @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
@ocaml.doc("<p>Violation detail for an EC2 instance resource.</p>")
type awsEc2InstanceViolation = {
  @ocaml.doc("<p>Violation detail for network interfaces associated with the EC2 instance.</p>")
  @as("AwsEc2NetworkInterfaceViolations")
  awsEc2NetworkInterfaceViolations: option<awsEc2NetworkInterfaceViolations>,
  @ocaml.doc("<p>The resource ID of the EC2 instance.</p>") @as("ViolationTarget")
  violationTarget: option<violationTarget>,
}
type appsListsData = array<appsListDataSummary>
@ocaml.doc("<p>An Firewall Manager applications list.</p>")
type appsListData = {
  @ocaml.doc(
    "<p>A map of previous version numbers to their corresponding <code>App</code> object arrays.</p>"
  )
  @as("PreviousAppsList")
  previousAppsList: option<previousAppsList>,
  @ocaml.doc("<p>An array of applications in the Firewall Manager applications list.</p>")
  @as("AppsList")
  appsList: appsList,
  @ocaml.doc("<p>The time that the Firewall Manager applications list was last updated.</p>")
  @as("LastUpdateTime")
  lastUpdateTime: option<timeStamp>,
  @ocaml.doc("<p>The time that the Firewall Manager applications list was created.</p>")
  @as("CreateTime")
  createTime: option<timeStamp>,
  @ocaml.doc("<p>A unique identifier for each update to the list. When you update
        the list, the update token must match the token of the current version of the application list.
        You can retrieve the update token by getting the list. </p>")
  @as("ListUpdateToken")
  listUpdateToken: option<updateToken>,
  @ocaml.doc("<p>The name of the Firewall Manager applications list.</p>") @as("ListName")
  listName: resourceName,
  @ocaml.doc("<p>The ID of the Firewall Manager applications list.</p>") @as("ListId")
  listId: option<listId>,
}
type orderedRemediationActions = array<remediationActionWithOrder>
@ocaml.doc("<p>A list of remediation actions.</p>")
type possibleRemediationAction = {
  @ocaml.doc("<p>Information about whether an action is taken by default.</p>")
  @as("IsDefaultAction")
  isDefaultAction: option<boolean_>,
  @ocaml.doc("<p>The ordered list of remediation actions.</p>") @as("OrderedRemediationActions")
  orderedRemediationActions: orderedRemediationActions,
  @ocaml.doc("<p>A description of the list of remediation actions.</p>") @as("Description")
  description: option<lengthBoundedString>,
}
type possibleRemediationActionList = array<possibleRemediationAction>
@ocaml.doc(
  "<p>A list of possible remediation action lists. Each individual possible remediation action is a list of individual remediation actions.</p>"
)
type possibleRemediationActions = {
  @ocaml.doc("<p>Information about the actions.</p>") @as("Actions")
  actions: option<possibleRemediationActionList>,
  @ocaml.doc("<p>A description of the possible remediation actions list.</p>") @as("Description")
  description: option<lengthBoundedString>,
}
@ocaml.doc("<p>Violation detail based on resource type.</p>")
type resourceViolation = {
  @ocaml.doc(
    "<p>The violation details for a third-party firewall's VPC endpoint subnet that was deleted.</p>"
  )
  @as("FirewallSubnetMissingVPCEndpointViolation")
  firewallSubnetMissingVPCEndpointViolation: option<firewallSubnetMissingVPCEndpointViolation>,
  @ocaml.doc(
    "<p>The violation details for a third-party firewall that has the Firewall Manager managed route table that was associated with the third-party firewall has been deleted.</p>"
  )
  @as("ThirdPartyFirewallMissingExpectedRouteTableViolation")
  thirdPartyFirewallMissingExpectedRouteTableViolation: option<
    thirdPartyFirewallMissingExpectedRouteTableViolation,
  >,
  @ocaml.doc(
    "<p>The violation details for a third-party firewall's subnet that's been deleted.</p>"
  )
  @as("ThirdPartyFirewallMissingSubnetViolation")
  thirdPartyFirewallMissingSubnetViolation: option<thirdPartyFirewallMissingSubnetViolation>,
  @ocaml.doc("<p>The violation details for a third-party firewall that's been deleted.</p>")
  @as("ThirdPartyFirewallMissingFirewallViolation")
  thirdPartyFirewallMissingFirewallViolation: option<thirdPartyFirewallMissingFirewallViolation>,
  @ocaml.doc("<p>Contains details about the route endpoint that violates the policy scope.</p>")
  @as("RouteHasOutOfScopeEndpointViolation")
  routeHasOutOfScopeEndpointViolation: option<routeHasOutOfScopeEndpointViolation>,
  @ocaml.doc("<p>Contains details about the firewall subnet that violates the policy scope.</p>")
  @as("FirewallSubnetIsOutOfScopeViolation")
  firewallSubnetIsOutOfScopeViolation: option<firewallSubnetIsOutOfScopeViolation>,
  @ocaml.doc(
    "<p>A list of possible remediation action lists. Each individual possible remediation action is a list of individual remediation actions.</p>"
  )
  @as("PossibleRemediationActions")
  possibleRemediationActions: option<possibleRemediationActions>,
  @ocaml.doc(
    "<p>Violation detail for a DNS Firewall policy that indicates that the VPC reached the limit for associated DNS Firewall rule groups. Firewall Manager tried to associate another rule group with the VPC and failed. </p>"
  )
  @as("DnsRuleGroupLimitExceededViolation")
  dnsRuleGroupLimitExceededViolation: option<dnsRuleGroupLimitExceededViolation>,
  @ocaml.doc("<p>Violation detail for a DNS Firewall policy that indicates that a rule group that Firewall Manager
       tried to associate with a VPC is already associated with the VPC and can't be associated again. </p>")
  @as("DnsDuplicateRuleGroupViolation")
  dnsDuplicateRuleGroupViolation: option<dnsDuplicateRuleGroupViolation>,
  @ocaml.doc("<p>Violation detail for a DNS Firewall policy that indicates that a rule group that Firewall Manager
       tried to associate with a VPC has the same priority as a rule group that's already associated. </p>")
  @as("DnsRuleGroupPriorityConflictViolation")
  dnsRuleGroupPriorityConflictViolation: option<dnsRuleGroupPriorityConflictViolation>,
  @ocaml.doc("<p>Expected routes are missing from Network Firewall.</p>")
  @as("NetworkFirewallMissingExpectedRoutesViolation")
  networkFirewallMissingExpectedRoutesViolation: option<
    networkFirewallMissingExpectedRoutesViolation,
  >,
  @ocaml.doc("<p>There's an unexpected gateway route.</p>")
  @as("NetworkFirewallUnexpectedGatewayRoutesViolation")
  networkFirewallUnexpectedGatewayRoutesViolation: option<
    networkFirewallUnexpectedGatewayRoutesViolation,
  >,
  @ocaml.doc("<p>There's an unexpected firewall route.</p>")
  @as("NetworkFirewallUnexpectedFirewallRoutesViolation")
  networkFirewallUnexpectedFirewallRoutesViolation: option<
    networkFirewallUnexpectedFirewallRoutesViolation,
  >,
  @as("NetworkFirewallBlackHoleRouteDetectedViolation")
  networkFirewallBlackHoleRouteDetectedViolation: option<
    networkFirewallBlackHoleRouteDetectedViolation,
  >,
  @ocaml.doc("<p>The route configuration is invalid.</p>")
  @as("NetworkFirewallInvalidRouteConfigurationViolation")
  networkFirewallInvalidRouteConfigurationViolation: option<
    networkFirewallInvalidRouteConfigurationViolation,
  >,
  @ocaml.doc(
    "<p>Violation detail for the subnet for which internet traffic hasn't been inspected.</p>"
  )
  @as("NetworkFirewallInternetTrafficNotInspectedViolation")
  networkFirewallInternetTrafficNotInspectedViolation: option<
    networkFirewallInternetTrafficNotInspectedViolation,
  >,
  @ocaml.doc("<p>Violation detail for an Network Firewall policy that indicates that a firewall policy
       in an individual account has been modified in a way that makes it noncompliant.
       For example, the individual account owner might have deleted a rule group,
       changed the priority of a stateless rule group, or changed a policy default action.</p>")
  @as("NetworkFirewallPolicyModifiedViolation")
  networkFirewallPolicyModifiedViolation: option<networkFirewallPolicyModifiedViolation>,
  @ocaml.doc("<p>Violation detail for an Network Firewall policy that indicates that a subnet
      is not associated with the expected Firewall Manager managed route table. </p>")
  @as("NetworkFirewallMissingExpectedRTViolation")
  networkFirewallMissingExpectedRTViolation: option<networkFirewallMissingExpectedRTViolation>,
  @ocaml.doc("<p>Violation detail for an Network Firewall policy that indicates that an Availability Zone is
       missing the expected Firewall Manager managed subnet.</p>")
  @as("NetworkFirewallMissingSubnetViolation")
  networkFirewallMissingSubnetViolation: option<networkFirewallMissingSubnetViolation>,
  @ocaml.doc("<p>Violation detail for an Network Firewall policy that indicates that a subnet has no Firewall Manager
        managed firewall in its VPC. </p>")
  @as("NetworkFirewallMissingFirewallViolation")
  networkFirewallMissingFirewallViolation: option<networkFirewallMissingFirewallViolation>,
  @ocaml.doc("<p>Violation detail for an EC2 instance.</p>") @as("AwsEc2InstanceViolation")
  awsEc2InstanceViolation: option<awsEc2InstanceViolation>,
  @ocaml.doc("<p>Violation detail for a network interface.</p>")
  @as("AwsEc2NetworkInterfaceViolation")
  awsEc2NetworkInterfaceViolation: option<awsEc2NetworkInterfaceViolation>,
  @ocaml.doc("<p>Violation detail for security groups.</p>") @as("AwsVPCSecurityGroupViolation")
  awsVPCSecurityGroupViolation: option<awsVPCSecurityGroupViolation>,
}
type resourceViolations = array<resourceViolation>
@ocaml.doc(
  "<p>Violations for a resource based on the specified Firewall Manager policy and Amazon Web Services account.</p>"
)
type violationDetail = {
  @ocaml.doc("<p>Brief description for the requested resource.</p>") @as("ResourceDescription")
  resourceDescription: option<lengthBoundedString>,
  @ocaml.doc("<p>The <code>ResourceTag</code> objects associated with the resource.</p>")
  @as("ResourceTags")
  resourceTags: option<tagList_>,
  @ocaml.doc("<p>List of violations for the requested resource.</p>") @as("ResourceViolations")
  resourceViolations: resourceViolations,
  @ocaml.doc("<p>The resource type that the violation details were requested for.</p>")
  @as("ResourceType")
  resourceType: resourceType,
  @ocaml.doc("<p>The resource ID that the violation details were requested for.</p>")
  @as("ResourceId")
  resourceId: resourceId,
  @ocaml.doc(
    "<p>The Amazon Web Services account that the violation details were requested for.</p>"
  )
  @as("MemberAccount")
  memberAccount: awsaccountId,
  @ocaml.doc(
    "<p>The ID of the Firewall Manager policy that the violation details were requested for.</p>"
  )
  @as("PolicyId")
  policyId: policyId,
}
@ocaml.doc("<p>This is the <i>Firewall Manager API Reference</i>. This guide is for
      developers who need detailed information about the Firewall Manager API actions, data
      types, and errors. For detailed information about Firewall Manager features, see the
        <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html\">Firewall Manager Developer Guide</a>.</p>
         <p>Some API actions require explicit resource permissions. For information, see the developer guide topic
        <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html\">Firewall Manager required permissions for API actions</a>.
</p>")
module PutNotificationChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to record
      Firewall Manager activity. </p>")
    @as("SnsRoleName")
    snsRoleName: resourceArn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SNS topic that collects notifications from
      Firewall Manager.</p>")
    @as("SnsTopicArn")
    snsTopicArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-fms") @new external new: request => t = "PutNotificationChannelCommand"
  let make = (~snsRoleName, ~snsTopicArn, ()) => new({snsRoleName, snsTopicArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetThirdPartyFirewallAssociationStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the third-party firewall vendor.</p>") @as("ThirdPartyFirewall")
    thirdPartyFirewall: thirdPartyFirewall,
  }
  type response = {
    @ocaml.doc("<p>The status for subscribing to the third-party firewall vendor in the AWS Marketplace.</p>
        <ul>
            <li>
              <p>
                  <code>NO_SUBSCRIPTION</code> - The Firewall Manager policy administrator isn't subscribed to the third-party firewall service in the AWS Marketplace.</p>
           </li>
            <li>
              <p>
                  <code>NOT_COMPLETE</code> - The Firewall Manager policy administrator is in the process of subscribing to the third-party firewall service in the Amazon Web Services Marketplace, but doesn't yet have an active subscription.</p>
           </li>
            <li>
              <p>
                  <code>COMPLETE</code> - The Firewall Manager policy administrator has an active subscription to the third-party firewall service in the Amazon Web Services Marketplace.</p>
           </li>
         </ul>")
    @as("MarketplaceOnboardingStatus")
    marketplaceOnboardingStatus: option<marketplaceSubscriptionOnboardingStatus>,
    @ocaml.doc("<p>The current status for setting a Firewall Manager policy administrators account as an administrator of the third-party firewall tenant.</p>
         <ul>
            <li>
               <p>
                  <code>ONBOARDING</code> - The Firewall Manager policy administrator is being designated as a tenant administrator.</p>
            </li>
            <li>
               <p>
                  <code>ONBOARD_COMPLETE</code> - The Firewall Manager policy administrator is designated as a tenant administrator.</p>
            </li>
            <li>
               <p>
                  <code>OFFBOARDING</code> - The Firewall Manager policy administrator is being removed as a tenant administrator.</p>
            </li>
            <li>
               <p>
                  <code>OFFBOARD_COMPLETE</code> - The Firewall Manager policy administrator has been removed as a tenant administrator.</p>
            </li>
            <li>
               <p>
                  <code>NOT_EXIST</code> - The Firewall Manager policy administrator doesn't exist as a tenant administrator.</p>
            </li>
         </ul>")
    @as("ThirdPartyFirewallStatus")
    thirdPartyFirewallStatus: option<thirdPartyFirewallAssociationStatus>,
  }
  @module("@aws-sdk/client-fms") @new
  external new: request => t = "GetThirdPartyFirewallAssociationStatusCommand"
  let make = (~thirdPartyFirewall, ()) => new({thirdPartyFirewall: thirdPartyFirewall})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetProtectionStatus = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of objects that you want Firewall Manager to return for this request. If you have more
        objects than the number that you specify for <code>MaxResults</code>, the response includes a
         <code>NextToken</code> value that you can use to get another batch of objects.</p>")
    @as("MaxResults")
    maxResults: option<paginationMaxResults>,
    @ocaml.doc("<p>If you specify a value for <code>MaxResults</code> and you have more objects than the number that you specify
         for <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the response, which you can use to retrieve another group of
         objects. For the second and subsequent <code>GetProtectionStatus</code> requests, specify the value of <code>NextToken</code>
         from the previous response to get information about another batch of objects.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The end of the time period to query for the attacks. This is a <code>timestamp</code> type. The
         request syntax listing indicates a <code>number</code> type because the default used by Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is
         allowed.</p>")
    @as("EndTime")
    endTime: option<timeStamp>,
    @ocaml.doc("<p>The start of the time period to query for the attacks. This is a <code>timestamp</code> type. The
          request syntax listing indicates a <code>number</code> type because the default used by Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is
         allowed.</p>")
    @as("StartTime")
    startTime: option<timeStamp>,
    @ocaml.doc("<p>The Amazon Web Services account that is in scope of the policy that you want to get the details
         for.</p>")
    @as("MemberAccountId")
    memberAccountId: option<awsaccountId>,
    @ocaml.doc("<p>The ID of the policy for which you want to get the attack information.</p>")
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {
    @ocaml.doc("<p>If you have more objects than the number that you specified for <code>MaxResults</code> in the request,
         the response includes a <code>NextToken</code> value. To list more objects, submit another
         <code>GetProtectionStatus</code> request, and specify the <code>NextToken</code> value from the response in the
         <code>NextToken</code> value in the next request.</p>
         <p>Amazon Web Services SDKs provide auto-pagination that identify <code>NextToken</code> in a response and
         make subsequent request calls automatically on your behalf. However, this feature is not
         supported by <code>GetProtectionStatus</code>. You must submit subsequent requests with
            <code>NextToken</code> using your own processes. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Details about the attack, including the following:</p>
         <ul>
            <li>
               <p>Attack type</p>
            </li>
            <li>
               <p>Account ID</p>
            </li>
            <li>
               <p>ARN of the resource attacked</p>
            </li>
            <li>
               <p>Start time of the attack</p>
            </li>
            <li>
               <p>End time of the attack (ongoing attacks will not have an end time)</p>
            </li>
         </ul>
         <p>The details are in JSON format. </p>")
    @as("Data")
    data: option<protectionData>,
    @ocaml.doc("<p>The service type that is protected by the policy. Currently, this is always
            <code>SHIELD_ADVANCED</code>.</p>")
    @as("ServiceType")
    serviceType: option<securityServiceType>,
    @ocaml.doc("<p>The ID of the Firewall Manager administrator account for this policy.</p>")
    @as("AdminAccountId")
    adminAccountId: option<awsaccountId>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "GetProtectionStatusCommand"
  let make = (
    ~policyId,
    ~maxResults=?,
    ~nextToken=?,
    ~endTime=?,
    ~startTime=?,
    ~memberAccountId=?,
    (),
  ) => new({maxResults, nextToken, endTime, startTime, memberAccountId, policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetNotificationChannel = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The IAM role that is used by Firewall Manager to record activity to SNS.</p>")
    @as("SnsRoleName")
    snsRoleName: option<resourceArn>,
    @ocaml.doc("<p>The SNS topic that records Firewall Manager activity. </p>") @as("SnsTopicArn")
    snsTopicArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "GetNotificationChannelCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAdminAccount = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The status of the Amazon Web Services account that you set as the Firewall Manager
      administrator.</p>")
    @as("RoleStatus")
    roleStatus: option<accountRoleStatus>,
    @ocaml.doc(
      "<p>The Amazon Web Services account that is set as the Firewall Manager administrator.</p>"
    )
    @as("AdminAccount")
    adminAccount: option<awsaccountId>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "GetAdminAccountCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateThirdPartyFirewall = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the third-party firewall vendor.</p>") @as("ThirdPartyFirewall")
    thirdPartyFirewall: thirdPartyFirewall,
  }
  type response = {
    @ocaml.doc(
      "<p>The current status for the disassociation of a Firewall Manager administrators account with a third-party firewall.</p>"
    )
    @as("ThirdPartyFirewallStatus")
    thirdPartyFirewallStatus: option<thirdPartyFirewallAssociationStatus>,
  }
  @module("@aws-sdk/client-fms") @new
  external new: request => t = "DisassociateThirdPartyFirewallCommand"
  let make = (~thirdPartyFirewall, ()) => new({thirdPartyFirewall: thirdPartyFirewall})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateAdminAccount = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-fms") @new external new: request => t = "DisassociateAdminAccountCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteProtocolsList = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the protocols list that you want to delete. You can retrieve this ID from
      <code>PutProtocolsList</code>, <code>ListProtocolsLists</code>, and <code>GetProtocolsLost</code>.</p>")
    @as("ListId")
    listId: listId,
  }
  type response = {.}
  @module("@aws-sdk/client-fms") @new external new: request => t = "DeleteProtocolsListCommand"
  let make = (~listId, ()) => new({listId: listId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeletePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>True</code>, the request performs cleanup according to the policy type. </p>
         <p>For WAF and Shield Advanced policies, the cleanup does the following:</p>
         <ul>
            <li>
               <p>Deletes rule groups created by Firewall Manager</p>
            </li>
            <li>
               <p>Removes web ACLs from in-scope resources</p>
            </li>
            <li>
               <p>Deletes web ACLs that contain no rules or rule groups</p>
            </li>
         </ul>
         <p>For security group policies, the cleanup does the following for each security group in
      the policy:</p>
         <ul>
            <li>
               <p>Disassociates the security group from in-scope resources </p>
            </li>
            <li>
               <p>Deletes the security group if it was created through Firewall Manager and if it's
          no longer associated with any resources through another policy</p>
            </li>
         </ul>
         <p>After the cleanup, in-scope resources are no longer protected by web ACLs in this policy.
      Protection of out-of-scope resources remains unchanged. Scope is determined by tags that you
      create and accounts that you associate with the policy. When creating the policy, if you
      specify that only resources in specific accounts or with specific tags are in scope of the
      policy, those accounts and resources are handled by the policy. All others are out of scope.
      If you don't specify tags or accounts, all resources are in scope. </p>")
    @as("DeleteAllPolicyResources")
    deleteAllPolicyResources: option<boolean_>,
    @ocaml.doc("<p>The ID of the policy that you want to delete. You can retrieve this ID from
        <code>PutPolicy</code> and <code>ListPolicies</code>.</p>")
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {.}
  @module("@aws-sdk/client-fms") @new external new: request => t = "DeletePolicyCommand"
  let make = (~policyId, ~deleteAllPolicyResources=?, ()) =>
    new({deleteAllPolicyResources, policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteNotificationChannel = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-fms") @new
  external new: request => t = "DeleteNotificationChannelCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAppsList = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the applications list that you want to delete. You can retrieve this ID from
      <code>PutAppsList</code>, <code>ListAppsLists</code>, and <code>GetAppsList</code>.</p>")
    @as("ListId")
    listId: listId,
  }
  type response = {.}
  @module("@aws-sdk/client-fms") @new external new: request => t = "DeleteAppsListCommand"
  let make = (~listId, ()) => new({listId: listId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AssociateThirdPartyFirewall = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the third-party firewall vendor.</p>") @as("ThirdPartyFirewall")
    thirdPartyFirewall: thirdPartyFirewall,
  }
  type response = {
    @ocaml.doc("<p>The current status for setting a Firewall Manager policy administrator's account as an administrator of the third-party firewall tenant.</p>
        <ul>
            <li>
              <p>
                  <code>ONBOARDING</code> - The Firewall Manager policy administrator is being designated as a tenant administrator.</p>
           </li>
            <li>
              <p>
                  <code>ONBOARD_COMPLETE</code> - The Firewall Manager policy administrator is designated as a tenant administrator.</p>
           </li>
            <li>
              <p>
                  <code>OFFBOARDING</code> - The Firewall Manager policy administrator is being removed as a tenant administrator.</p>
           </li>
            <li>
              <p>
                  <code>OFFBOARD_COMPLETE</code> - The Firewall Manager policy administrator has been removed as a tenant administrator.</p>
           </li>
            <li>
              <p>
                  <code>NOT_EXIST</code> - The Firewall Manager policy administrator doesn't exist as a tenant administrator.</p>
           </li>
         </ul>")
    @as("ThirdPartyFirewallStatus")
    thirdPartyFirewallStatus: option<thirdPartyFirewallAssociationStatus>,
  }
  @module("@aws-sdk/client-fms") @new
  external new: request => t = "AssociateThirdPartyFirewallCommand"
  let make = (~thirdPartyFirewall, ()) => new({thirdPartyFirewall: thirdPartyFirewall})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateAdminAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Web Services account ID to associate with Firewall Manager as the Firewall Manager
      administrator account. This must be an Organizations member account.
        For more information about Organizations, see
        <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html\">Managing the Amazon Web Services Accounts in Your Organization</a>.  </p>")
    @as("AdminAccount")
    adminAccount: awsaccountId,
  }
  type response = {.}
  @module("@aws-sdk/client-fms") @new external new: request => t = "AssociateAdminAccountCommand"
  let make = (~adminAccount, ()) => new({adminAccount: adminAccount})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to remove from the resource. </p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-fms") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListMemberAccounts = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of member account IDs that you want Firewall Manager to return
      for this request. If you have more IDs than the number that you specify for
        <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can
      use to get another batch of member account IDs.</p>")
    @as("MaxResults")
    maxResults: option<paginationMaxResults>,
    @ocaml.doc("<p>If you specify a value for <code>MaxResults</code> and you have more account IDs than the
      number that you specify for <code>MaxResults</code>, Firewall Manager returns a
        <code>NextToken</code> value in the response that allows you to list another group of IDs.
      For the second and subsequent <code>ListMemberAccountsRequest</code> requests, specify the
      value of <code>NextToken</code> from the previous response to get information about another
      batch of member account IDs.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If you have more member account IDs than the number that you specified for
        <code>MaxResults</code> in the request, the response includes a <code>NextToken</code>
      value. To list more IDs, submit another <code>ListMemberAccounts</code> request, and specify
      the <code>NextToken</code> value from the response in the <code>NextToken</code> value in the
      next request.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of account IDs.</p>") @as("MemberAccounts")
    memberAccounts: option<memberAccounts>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "ListMemberAccountsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to the resource.</p>") @as("TagList") tagList_: tagList_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-fms") @new external new: request => t = "TagResourceCommand"
  let make = (~tagList_, ~resourceArn, ()) => new({tagList_, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListThirdPartyFirewallFirewallPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of third-party firewall policies that you want Firewall Manager to return. If
the specified third-party firewall vendor is associated with more than <code>MaxResults</code> firewall policies, the response includes a
<code>NextToken</code> element. <code>NextToken</code> contains an encrypted token that identifies the first third-party firewall policies
that Firewall Manager will return if you submit another request.</p>")
    @as("MaxResults")
    maxResults: paginationMaxResults,
    @ocaml.doc("<p>If the previous response included a <code>NextToken</code> element, the specified third-party firewall vendor is associated with more
third-party firewall policies. To get more third-party firewall policies, submit another <code>ListThirdPartyFirewallFirewallPoliciesRequest</code> request.</p>
         <p>
  For the value of <code>NextToken</code>, specify the value of <code>NextToken</code> from the previous response.
  If the previous response didn't include a <code>NextToken</code> element, there are no more third-party firewall policies to
  get.
</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The name of the third-party firewall vendor.</p>") @as("ThirdPartyFirewall")
    thirdPartyFirewall: thirdPartyFirewall,
  }
  type response = {
    @ocaml.doc(
      "<p>The value that you will use for <code>NextToken</code> in the next <code>ListThirdPartyFirewallFirewallPolicies</code> request.</p>"
    )
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list that contains one <code>ThirdPartyFirewallFirewallPolicies</code> element for each third-party firewall policies that the specified
third-party firewall vendor is associated with. Each <code>ThirdPartyFirewallFirewallPolicies</code> element contains the firewall policy name and ID.</p>")
    @as("ThirdPartyFirewallFirewallPolicies")
    thirdPartyFirewallFirewallPolicies: option<thirdPartyFirewallFirewallPolicies>,
  }
  @module("@aws-sdk/client-fms") @new
  external new: request => t = "ListThirdPartyFirewallFirewallPoliciesCommand"
  let make = (~maxResults, ~thirdPartyFirewall, ~nextToken=?, ()) =>
    new({maxResults, nextToken, thirdPartyFirewall})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the resource.</p>") @as("TagList")
    tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>PolicySummary</code> objects that you want Firewall Manager to return for this request. If you have more <code>PolicySummary</code> objects than
      the number that you specify for <code>MaxResults</code>, the response includes a
        <code>NextToken</code> value that you can use to get another batch of
        <code>PolicySummary</code> objects.</p>")
    @as("MaxResults")
    maxResults: option<paginationMaxResults>,
    @ocaml.doc("<p>If you specify a value for <code>MaxResults</code> and you have more
        <code>PolicySummary</code> objects than the number that you specify for
        <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the
      response that allows you to list another group of <code>PolicySummary</code> objects. For the
      second and subsequent <code>ListPolicies</code> requests, specify the value of
        <code>NextToken</code> from the previous response to get information about another batch of
        <code>PolicySummary</code> objects.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If you have more <code>PolicySummary</code> objects than the number that you specified for
        <code>MaxResults</code> in the request, the response includes a <code>NextToken</code>
      value. To list more <code>PolicySummary</code> objects, submit another
        <code>ListPolicies</code> request, and specify the <code>NextToken</code> value from the
      response in the <code>NextToken</code> value in the next request.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of <code>PolicySummary</code> objects.</p>") @as("PolicyList")
    policyList: option<policySummaryList>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "ListPoliciesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutProtocolsList = {
  type t
  type request = {
    @ocaml.doc("<p>The tags associated with the resource.</p>") @as("TagList")
    tagList_: option<tagList_>,
    @ocaml.doc("<p>The details of the Firewall Manager protocols list to be created.</p>")
    @as("ProtocolsList")
    protocolsList: protocolsListData,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the protocols list.</p>")
    @as("ProtocolsListArn")
    protocolsListArn: option<resourceArn>,
    @ocaml.doc("<p>The details of the Firewall Manager protocols list.</p>") @as("ProtocolsList")
    protocolsList: option<protocolsListData>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "PutProtocolsListCommand"
  let make = (~protocolsList, ~tagList_=?, ()) => new({tagList_, protocolsList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListProtocolsLists = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects that you want Firewall Manager to return for this request. If more
            objects are available, in the response, Firewall Manager provides a
           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
         <p>If you don't specify this, Firewall Manager returns all available objects.</p>")
    @as("MaxResults")
    maxResults: paginationMaxResults,
    @ocaml.doc("<p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
        Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request
        in the request parameters, to retrieve the next batch of objects.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>Specifies whether the lists to retrieve are default lists owned by Firewall Manager.</p>"
    )
    @as("DefaultLists")
    defaultLists: option<boolean_>,
  }
  type response = {
    @ocaml.doc("<p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
        Firewall Manager returns this token in the response. You can use this token in subsequent requests to retrieve the next batch of objects.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of <code>ProtocolsListDataSummary</code> objects.</p>")
    @as("ProtocolsLists")
    protocolsLists: option<protocolsListsData>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "ListProtocolsListsCommand"
  let make = (~maxResults, ~nextToken=?, ~defaultLists=?, ()) =>
    new({maxResults, nextToken, defaultLists})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetProtocolsList = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether the list to retrieve is a default list owned by Firewall Manager.</p>"
    )
    @as("DefaultList")
    defaultList: option<boolean_>,
    @ocaml.doc(
      "<p>The ID of the Firewall Manager protocols list that you want the details for.</p>"
    )
    @as("ListId")
    listId: listId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the specified protocols list.</p>")
    @as("ProtocolsListArn")
    protocolsListArn: option<resourceArn>,
    @ocaml.doc("<p>Information about the specified Firewall Manager protocols list.</p>")
    @as("ProtocolsList")
    protocolsList: option<protocolsListData>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "GetProtocolsListCommand"
  let make = (~listId, ~defaultList=?, ()) => new({defaultList, listId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to the Amazon Web Services resource.</p>") @as("TagList")
    tagList_: option<tagList_>,
    @ocaml.doc("<p>The details of the Firewall Manager policy to be created.</p>") @as("Policy")
    policy: policy,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the policy.</p>") @as("PolicyArn")
    policyArn: option<resourceArn>,
    @ocaml.doc("<p>The details of the Firewall Manager policy.</p>") @as("Policy")
    policy: option<policy>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "PutPolicyCommand"
  let make = (~policy, ~tagList_=?, ()) => new({tagList_, policy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutAppsList = {
  type t
  type request = {
    @ocaml.doc("<p>The tags associated with the resource.</p>") @as("TagList")
    tagList_: option<tagList_>,
    @ocaml.doc("<p>The details of the Firewall Manager applications list to be created.</p>")
    @as("AppsList")
    appsList: appsListData,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the applications list.</p>") @as("AppsListArn")
    appsListArn: option<resourceArn>,
    @ocaml.doc("<p>The details of the Firewall Manager applications list.</p>") @as("AppsList")
    appsList: option<appsListData>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "PutAppsListCommand"
  let make = (~appsList, ~tagList_=?, ()) => new({tagList_, appsList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListComplianceStatus = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the number of <code>PolicyComplianceStatus</code> objects that you want
      Firewall Manager to return for this request. If you have more
        <code>PolicyComplianceStatus</code> objects than the number that you specify for
        <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can
      use to get another batch of <code>PolicyComplianceStatus</code> objects.</p>")
    @as("MaxResults")
    maxResults: option<paginationMaxResults>,
    @ocaml.doc("<p>If you specify a value for <code>MaxResults</code> and you have more
        <code>PolicyComplianceStatus</code> objects than the number that you specify for
        <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the
      response that allows you to list another group of <code>PolicyComplianceStatus</code> objects.
      For the second and subsequent <code>ListComplianceStatus</code> requests, specify the value of
        <code>NextToken</code> from the previous response to get information about another batch of
        <code>PolicyComplianceStatus</code> objects.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ID of the Firewall Manager policy that you want the details for.</p>")
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {
    @ocaml.doc("<p>If you have more <code>PolicyComplianceStatus</code> objects than the number that you
      specified for <code>MaxResults</code> in the request, the response includes a
        <code>NextToken</code> value. To list more <code>PolicyComplianceStatus</code> objects,
      submit another <code>ListComplianceStatus</code> request, and specify the
        <code>NextToken</code> value from the response in the <code>NextToken</code> value in the
      next request.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of <code>PolicyComplianceStatus</code> objects.</p>")
    @as("PolicyComplianceStatusList")
    policyComplianceStatusList: option<policyComplianceStatusList>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "ListComplianceStatusCommand"
  let make = (~policyId, ~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken, policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppsLists = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects that you want Firewall Manager to return for this request. If more
            objects are available, in the response, Firewall Manager provides a
           <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
         <p>If you don't specify this, Firewall Manager returns all available objects.</p>")
    @as("MaxResults")
    maxResults: paginationMaxResults,
    @ocaml.doc("<p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
        Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request
        in the request parameters, to retrieve the next batch of objects.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>Specifies whether the lists to retrieve are default lists owned by Firewall Manager.</p>"
    )
    @as("DefaultLists")
    defaultLists: option<boolean_>,
  }
  type response = {
    @ocaml.doc("<p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
        Firewall Manager returns this token in the response. You can use this token in subsequent requests to retrieve the next batch of objects.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of <code>AppsListDataSummary</code> objects.</p>") @as("AppsLists")
    appsLists: option<appsListsData>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "ListAppsListsCommand"
  let make = (~maxResults, ~nextToken=?, ~defaultLists=?, ()) =>
    new({maxResults, nextToken, defaultLists})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Firewall Manager policy that you want the details for.</p>")
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the specified policy.</p>") @as("PolicyArn")
    policyArn: option<resourceArn>,
    @ocaml.doc("<p>Information about the specified Firewall Manager policy.</p>") @as("Policy")
    policy: option<policy>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "GetPolicyCommand"
  let make = (~policyId, ()) => new({policyId: policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetComplianceDetail = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Web Services account that owns the resources that you want to get the details for.</p>"
    )
    @as("MemberAccount")
    memberAccount: awsaccountId,
    @ocaml.doc("<p>The ID of the policy that you want to get the details for. <code>PolicyId</code> is
      returned by <code>PutPolicy</code> and by <code>ListPolicies</code>.</p>")
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {
    @ocaml.doc("<p>Information about the resources and the policy that you specified in the
        <code>GetComplianceDetail</code> request.</p>")
    @as("PolicyComplianceDetail")
    policyComplianceDetail: option<policyComplianceDetail>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "GetComplianceDetailCommand"
  let make = (~memberAccount, ~policyId, ()) => new({memberAccount, policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAppsList = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether the list to retrieve is a default list owned by Firewall Manager.</p>"
    )
    @as("DefaultList")
    defaultList: option<boolean_>,
    @ocaml.doc(
      "<p>The ID of the Firewall Manager applications list that you want the details for.</p>"
    )
    @as("ListId")
    listId: listId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the applications list.</p>") @as("AppsListArn")
    appsListArn: option<resourceArn>,
    @ocaml.doc("<p>Information about the specified Firewall Manager applications list.</p>")
    @as("AppsList")
    appsList: option<appsListData>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "GetAppsListCommand"
  let make = (~listId, ~defaultList=?, ()) => new({defaultList, listId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetViolationDetails = {
  type t
  type request = {
    @ocaml.doc("<p>The resource type. This is in the format shown in the <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">Amazon Web Services Resource Types Reference</a>.
      Supported resource types are:
      <code>AWS::EC2::Instance</code>,
      <code>AWS::EC2::NetworkInterface</code>,
      <code>AWS::EC2::SecurityGroup</code>,
      <code>AWS::NetworkFirewall::FirewallPolicy</code>, and
      <code>AWS::EC2::Subnet</code>.
   </p>")
    @as("ResourceType")
    resourceType: resourceType,
    @ocaml.doc("<p>The ID of the resource that has violations.</p>") @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc("<p>The Amazon Web Services account ID that you want the details for.</p>")
    @as("MemberAccount")
    memberAccount: awsaccountId,
    @ocaml.doc(
      "<p>The ID of the Firewall Manager policy that you want the details for. This currently only supports security group content audit policies.</p>"
    )
    @as("PolicyId")
    policyId: policyId,
  }
  type response = {
    @ocaml.doc("<p>Violation detail for a resource.</p>") @as("ViolationDetail")
    violationDetail: option<violationDetail>,
  }
  @module("@aws-sdk/client-fms") @new external new: request => t = "GetViolationDetailsCommand"
  let make = (~resourceType, ~resourceId, ~memberAccount, ~policyId, ()) =>
    new({resourceType, resourceId, memberAccount, policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
