type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vpcId = string
type variableDefinition = string
type updateToken = string
type targetType = [@as("HTTP_HOST") #HTTP_HOST | @as("TLS_SNI") #TLS_SNI]
type tagsPaginationMaxResults = int;
type tagValue = string
type tagKey = string
type tCPFlag = [@as("CWR") #CWR | @as("ECE") #ECE | @as("URG") #URG | @as("ACK") #ACK | @as("PSH") #PSH | @as("RST") #RST | @as("SYN") #SYN | @as("FIN") #FIN]
type statefulRuleProtocol = [@as("DHCP") #DHCP | @as("NTP") #NTP | @as("TFTP") #TFTP | @as("IKEV2") #IKEV2 | @as("KRB5") #KRB5 | @as("MSN") #MSN | @as("IMAP") #IMAP | @as("SMTP") #SMTP | @as("SSH") #SSH | @as("DCERPC") #DCERPC | @as("DNS") #DNS | @as("SMB") #SMB | @as("TLS") #TLS | @as("FTP") #FTP | @as("HTTP") #HTTP | @as("ICMP") #ICMP | @as("UDP") #UDP | @as("TCP") #TCP | @as("IP") #IP]
type statefulRuleDirection = [@as("ANY") #ANY | @as("FORWARD") #FORWARD]
type statefulAction = [@as("ALERT") #ALERT | @as("DROP") #DROP | @as("PASS") #PASS]
type source = string
type setting = string
type rulesString = string
type ruleVariableName = string
type ruleGroupType = [@as("STATEFUL") #STATEFUL | @as("STATELESS") #STATELESS]
type ruleCapacity = int;
type resourceStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type resourceName = string
type resourceId = string
type resourceArn = string
type protocolNumber = int;
type priority = int;
type portRangeBound = int;
type port = string
type policyString = string
type perObjectSyncStatus = [@as("IN_SYNC") #IN_SYNC | @as("PENDING") #PENDING]
type paginationToken = string
type paginationMaxResults = int;
type logType = [@as("FLOW") #FLOW | @as("ALERT") #ALERT]
type logDestinationType = [@as("KinesisDataFirehose") #KinesisDataFirehose | @as("CloudWatchLogs") #CloudWatchLogs | @as("S3") #S3]
type keyword = string
type hashMapValue = string
type hashMapKey = string
type generatedRulesType = [@as("DENYLIST") #DENYLIST | @as("ALLOWLIST") #ALLOWLIST]
type firewallStatusValue = [@as("READY") #READY | @as("DELETING") #DELETING | @as("PROVISIONING") #PROVISIONING]
type errorMessage = string
type endpointId = string
type dimensionValue = string
type destination = string
type description = string
type configurationSyncState = [@as("IN_SYNC") #IN_SYNC | @as("PENDING") #PENDING]
type collectionMember_String = string
type amazonawsBoolean = bool;
type azSubnet = string
type availabilityZone = string
type attachmentStatus = [@as("READY") #READY | @as("SCALING") #SCALING | @as("DELETING") #DELETING | @as("CREATING") #CREATING]
type addressDefinition = string
type actionName = string
type vpcIds = array<vpcId>
type variableDefinitionList = array<variableDefinition>
type targetTypes = array<targetType>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type subnetMapping = {
@as("SubnetId") subnetId: option<collectionMember_String>
}
type statelessRuleGroupReference = {
@as("Priority") priority: option<priority>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
type statelessActions = array<collectionMember_String>
type statefulRuleGroupReference = {
@as("ResourceArn") resourceArn: option<resourceArn>
}
type settings = array<setting>
type ruleTargets = array<collectionMember_String>
type ruleGroupMetadata = {
@as("Arn") arn: resourceArn,
@as("Name") name: resourceName
}
type protocolNumbers = array<protocolNumber>
type portRange = {
@as("ToPort") toPort: option<portRangeBound>,
@as("FromPort") fromPort: option<portRangeBound>
}
type perObjectStatus = {
@as("UpdateToken") updateToken: updateToken,
@as("SyncStatus") syncStatus: perObjectSyncStatus
}
type logDestinationMap = Js.Dict.t< hashMapValue>
type header = {
@as("DestinationPort") destinationPort: option<port>,
@as("Destination") destination: option<destination>,
@as("Direction") direction: option<statefulRuleDirection>,
@as("SourcePort") sourcePort: option<port>,
@as("Source") source: option<source>,
@as("Protocol") protocol: option<statefulRuleProtocol>
}
type flags = array<tCPFlag>
type firewallPolicyMetadata = {
@as("Arn") arn: resourceArn,
@as("Name") name: resourceName
}
type firewallMetadata = {
@as("FirewallArn") firewallArn: resourceArn,
@as("FirewallName") firewallName: resourceName
}
type dimension = {
@as("Value") value: option<dimensionValue>
}
type azSubnets = array<azSubnet>
type attachment = {
@as("Status") status: attachmentStatus,
@as("EndpointId") endpointId: endpointId,
@as("SubnetId") subnetId: azSubnet
}
type address = {
@as("AddressDefinition") addressDefinition: option<addressDefinition>
}
type tagList = array<tag>
type tCPFlagField = {
@as("Masks") masks: flags,
@as("Flags") flags: option<flags>
}
type syncStateConfig = Js.Dict.t< perObjectStatus>
type subnetMappings = array<subnetMapping>
type statelessRuleGroupReferences = array<statelessRuleGroupReference>
type statefulRuleGroupReferences = array<statefulRuleGroupReference>
type rulesSourceList = {
@as("GeneratedRulesType") generatedRulesType: option<generatedRulesType>,
@as("TargetTypes") targetTypes: option<targetTypes>,
@as("Targets") targets: option<ruleTargets>
}
type ruleOption = {
@as("Settings") settings: settings,
@as("Keyword") keyword: option<keyword>
}
type ruleGroups = array<ruleGroupMetadata>
type portSet = {
@as("Definition") definition: variableDefinitionList
}
type portRanges = array<portRange>
type logDestinationConfig = {
@as("LogDestination") logDestination: option<logDestinationMap>,
@as("LogDestinationType") logDestinationType: option<logDestinationType>,
@as("LogType") logType: option<logType>
}
type iPSet = {
@as("Definition") definition: option<variableDefinitionList>
}
type firewalls = array<firewallMetadata>
type firewallPolicies = array<firewallPolicyMetadata>
type dimensions = array<dimension>
type addresses = array<address>
type tCPFlags = array<tCPFlagField>
type syncState = {
@as("Config") config: syncStateConfig,
@as("Attachment") attachment: attachment
}
type ruleOptions = array<ruleOption>
type ruleGroupResponse = {
@as("Tags") tags: tagList,
@as("RuleGroupStatus") ruleGroupStatus: resourceStatus,
@as("Capacity") capacity: ruleCapacity,
@as("Type") type_: ruleGroupType,
@as("Description") description: description,
@as("RuleGroupId") ruleGroupId: option<resourceId>,
@as("RuleGroupName") ruleGroupName: option<resourceName>,
@as("RuleGroupArn") ruleGroupArn: option<resourceArn>
}
type publishMetricAction = {
@as("Dimensions") dimensions: option<dimensions>
}
type portSets = Js.Dict.t< portSet>
type logDestinationConfigs = array<logDestinationConfig>
type iPSets = Js.Dict.t< iPSet>
type firewallPolicyResponse = {
@as("Tags") tags: tagList,
@as("FirewallPolicyStatus") firewallPolicyStatus: resourceStatus,
@as("Description") description: description,
@as("FirewallPolicyId") firewallPolicyId: option<resourceId>,
@as("FirewallPolicyArn") firewallPolicyArn: option<resourceArn>,
@as("FirewallPolicyName") firewallPolicyName: option<resourceName>
}
type firewall = {
@as("Tags") tags: tagList,
@as("FirewallId") firewallId: option<resourceId>,
@as("Description") description: description,
@as("FirewallPolicyChangeProtection") firewallPolicyChangeProtection: amazonawsBoolean,
@as("SubnetChangeProtection") subnetChangeProtection: amazonawsBoolean,
@as("DeleteProtection") deleteProtection: amazonawsBoolean,
@as("SubnetMappings") subnetMappings: option<subnetMappings>,
@as("VpcId") vpcId: option<vpcId>,
@as("FirewallPolicyArn") firewallPolicyArn: option<resourceArn>,
@as("FirewallArn") firewallArn: resourceArn,
@as("FirewallName") firewallName: resourceName
}
type syncStates = Js.Dict.t< syncState>
type statefulRule = {
@as("RuleOptions") ruleOptions: option<ruleOptions>,
@as("Header") header: option<header>,
@as("Action") action: option<statefulAction>
}
type ruleVariables = {
@as("PortSets") portSets: portSets,
@as("IPSets") iPSets: iPSets
}
type matchAttributes = {
@as("TCPFlags") tCPFlags: tCPFlags,
@as("Protocols") protocols: protocolNumbers,
@as("DestinationPorts") destinationPorts: portRanges,
@as("SourcePorts") sourcePorts: portRanges,
@as("Destinations") destinations: addresses,
@as("Sources") sources: addresses
}
type loggingConfiguration = {
@as("LogDestinationConfigs") logDestinationConfigs: option<logDestinationConfigs>
}
type actionDefinition = {
@as("PublishMetricAction") publishMetricAction: publishMetricAction
}
type statefulRules = array<statefulRule>
type ruleDefinition = {
@as("Actions") actions: option<statelessActions>,
@as("MatchAttributes") matchAttributes: option<matchAttributes>
}
type firewallStatus = {
@as("SyncStates") syncStates: syncStates,
@as("ConfigurationSyncStateSummary") configurationSyncStateSummary: option<configurationSyncState>,
@as("Status") status: option<firewallStatusValue>
}
type customAction = {
@as("ActionDefinition") actionDefinition: option<actionDefinition>,
@as("ActionName") actionName: option<actionName>
}
type statelessRule = {
@as("Priority") priority: option<priority>,
@as("RuleDefinition") ruleDefinition: option<ruleDefinition>
}
type customActions = array<customAction>
type statelessRules = array<statelessRule>
type firewallPolicy = {
@as("StatefulRuleGroupReferences") statefulRuleGroupReferences: statefulRuleGroupReferences,
@as("StatelessCustomActions") statelessCustomActions: customActions,
@as("StatelessFragmentDefaultActions") statelessFragmentDefaultActions: option<statelessActions>,
@as("StatelessDefaultActions") statelessDefaultActions: option<statelessActions>,
@as("StatelessRuleGroupReferences") statelessRuleGroupReferences: statelessRuleGroupReferences
}
type statelessRulesAndCustomActions = {
@as("CustomActions") customActions: customActions,
@as("StatelessRules") statelessRules: option<statelessRules>
}
type rulesSource = {
@as("StatelessRulesAndCustomActions") statelessRulesAndCustomActions: statelessRulesAndCustomActions,
@as("StatefulRules") statefulRules: statefulRules,
@as("RulesSourceList") rulesSourceList: rulesSourceList,
@as("RulesString") rulesString: rulesString
}
type ruleGroup = {
@as("RulesSource") rulesSource: option<rulesSource>,
@as("RuleVariables") ruleVariables: ruleVariables
}
type clientType;
@module("@aws-sdk/client-network-firewall") @new external createClient: unit => clientType = "NetworkFirewallClient";
module UpdateSubnetChangeProtection = {
  type t;
  type request = {
@as("SubnetChangeProtection") subnetChangeProtection: option<amazonawsBoolean>,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn,
@as("UpdateToken") updateToken: updateToken
}
  type response = {
@as("SubnetChangeProtection") subnetChangeProtection: amazonawsBoolean,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn,
@as("UpdateToken") updateToken: updateToken
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "UpdateSubnetChangeProtectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallPolicyChangeProtection = {
  type t;
  type request = {
@as("FirewallPolicyChangeProtection") firewallPolicyChangeProtection: option<amazonawsBoolean>,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn,
@as("UpdateToken") updateToken: updateToken
}
  type response = {
@as("FirewallPolicyChangeProtection") firewallPolicyChangeProtection: amazonawsBoolean,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn,
@as("UpdateToken") updateToken: updateToken
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "UpdateFirewallPolicyChangeProtectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallDescription = {
  type t;
  type request = {
@as("Description") description: description,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn,
@as("UpdateToken") updateToken: updateToken
}
  type response = {
@as("UpdateToken") updateToken: updateToken,
@as("Description") description: description,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "UpdateFirewallDescriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallDeleteProtection = {
  type t;
  type request = {
@as("DeleteProtection") deleteProtection: option<amazonawsBoolean>,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn,
@as("UpdateToken") updateToken: updateToken
}
  type response = {
@as("UpdateToken") updateToken: updateToken,
@as("DeleteProtection") deleteProtection: amazonawsBoolean,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "UpdateFirewallDeleteProtectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutResourcePolicy = {
  type t;
  type request = {
@as("Policy") policy: option<policyString>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "PutResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeResourcePolicy = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("Policy") policy: policyString
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "DescribeResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResourcePolicy = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "DeleteResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateFirewallPolicy = {
  type t;
  type request = {
@as("FirewallPolicyArn") firewallPolicyArn: option<resourceArn>,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn,
@as("UpdateToken") updateToken: updateToken
}
  type response = {
@as("UpdateToken") updateToken: updateToken,
@as("FirewallPolicyArn") firewallPolicyArn: resourceArn,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "AssociateFirewallPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceArn>,
@as("MaxResults") maxResults: tagsPaginationMaxResults,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("Tags") tags: tagList,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRuleGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: paginationMaxResults,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("RuleGroups") ruleGroups: ruleGroups,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "ListRuleGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFirewalls = {
  type t;
  type request = {
@as("MaxResults") maxResults: paginationMaxResults,
@as("VpcIds") vpcIds: vpcIds,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("Firewalls") firewalls: firewalls,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "ListFirewallsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFirewallPolicies = {
  type t;
  type request = {
@as("MaxResults") maxResults: paginationMaxResults,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("FirewallPolicies") firewallPolicies: firewallPolicies,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "ListFirewallPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateSubnets = {
  type t;
  type request = {
@as("SubnetIds") subnetIds: option<azSubnets>,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn,
@as("UpdateToken") updateToken: updateToken
}
  type response = {
@as("UpdateToken") updateToken: updateToken,
@as("SubnetMappings") subnetMappings: subnetMappings,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "DisassociateSubnetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateSubnets = {
  type t;
  type request = {
@as("SubnetMappings") subnetMappings: option<subnetMappings>,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn,
@as("UpdateToken") updateToken: updateToken
}
  type response = {
@as("UpdateToken") updateToken: updateToken,
@as("SubnetMappings") subnetMappings: subnetMappings,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "AssociateSubnetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRuleGroup = {
  type t;
  type request = {
@as("Type") type_: ruleGroupType,
@as("RuleGroupArn") ruleGroupArn: resourceArn,
@as("RuleGroupName") ruleGroupName: resourceName
}
  type response = {
@as("RuleGroupResponse") ruleGroupResponse: option<ruleGroupResponse>
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "DeleteRuleGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFirewallPolicy = {
  type t;
  type request = {
@as("FirewallPolicyArn") firewallPolicyArn: resourceArn,
@as("FirewallPolicyName") firewallPolicyName: resourceName
}
  type response = {
@as("FirewallPolicyResponse") firewallPolicyResponse: option<firewallPolicyResponse>
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "DeleteFirewallPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLoggingConfiguration = {
  type t;
  type request = {
@as("LoggingConfiguration") loggingConfiguration: loggingConfiguration,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn
}
  type response = {
@as("LoggingConfiguration") loggingConfiguration: loggingConfiguration,
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "UpdateLoggingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoggingConfiguration = {
  type t;
  type request = {
@as("FirewallName") firewallName: resourceName,
@as("FirewallArn") firewallArn: resourceArn
}
  type response = {
@as("LoggingConfiguration") loggingConfiguration: loggingConfiguration,
@as("FirewallArn") firewallArn: resourceArn
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoggingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFirewall = {
  type t;
  type request = {
@as("FirewallArn") firewallArn: resourceArn,
@as("FirewallName") firewallName: resourceName
}
  type response = {
@as("FirewallStatus") firewallStatus: firewallStatus,
@as("Firewall") firewall: firewall,
@as("UpdateToken") updateToken: updateToken
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "DescribeFirewallCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFirewall = {
  type t;
  type request = {
@as("FirewallArn") firewallArn: resourceArn,
@as("FirewallName") firewallName: resourceName
}
  type response = {
@as("FirewallStatus") firewallStatus: firewallStatus,
@as("Firewall") firewall: firewall
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "DeleteFirewallCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFirewall = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: description,
@as("FirewallPolicyChangeProtection") firewallPolicyChangeProtection: amazonawsBoolean,
@as("SubnetChangeProtection") subnetChangeProtection: amazonawsBoolean,
@as("DeleteProtection") deleteProtection: amazonawsBoolean,
@as("SubnetMappings") subnetMappings: option<subnetMappings>,
@as("VpcId") vpcId: option<vpcId>,
@as("FirewallPolicyArn") firewallPolicyArn: option<resourceArn>,
@as("FirewallName") firewallName: option<resourceName>
}
  type response = {
@as("FirewallStatus") firewallStatus: firewallStatus,
@as("Firewall") firewall: firewall
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "CreateFirewallCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFirewallPolicy = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Description") description: description,
@as("FirewallPolicy") firewallPolicy: option<firewallPolicy>,
@as("FirewallPolicyName") firewallPolicyName: resourceName,
@as("FirewallPolicyArn") firewallPolicyArn: resourceArn,
@as("UpdateToken") updateToken: option<updateToken>
}
  type response = {
@as("FirewallPolicyResponse") firewallPolicyResponse: option<firewallPolicyResponse>,
@as("UpdateToken") updateToken: option<updateToken>
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "UpdateFirewallPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFirewallPolicy = {
  type t;
  type request = {
@as("FirewallPolicyArn") firewallPolicyArn: resourceArn,
@as("FirewallPolicyName") firewallPolicyName: resourceName
}
  type response = {
@as("FirewallPolicy") firewallPolicy: firewallPolicy,
@as("FirewallPolicyResponse") firewallPolicyResponse: option<firewallPolicyResponse>,
@as("UpdateToken") updateToken: option<updateToken>
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "DescribeFirewallPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFirewallPolicy = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Tags") tags: tagList,
@as("Description") description: description,
@as("FirewallPolicy") firewallPolicy: option<firewallPolicy>,
@as("FirewallPolicyName") firewallPolicyName: option<resourceName>
}
  type response = {
@as("FirewallPolicyResponse") firewallPolicyResponse: option<firewallPolicyResponse>,
@as("UpdateToken") updateToken: option<updateToken>
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "CreateFirewallPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRuleGroup = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Description") description: description,
@as("Type") type_: ruleGroupType,
@as("Rules") rules: rulesString,
@as("RuleGroup") ruleGroup: ruleGroup,
@as("RuleGroupName") ruleGroupName: resourceName,
@as("RuleGroupArn") ruleGroupArn: resourceArn,
@as("UpdateToken") updateToken: option<updateToken>
}
  type response = {
@as("RuleGroupResponse") ruleGroupResponse: option<ruleGroupResponse>,
@as("UpdateToken") updateToken: option<updateToken>
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "UpdateRuleGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRuleGroup = {
  type t;
  type request = {
@as("Type") type_: ruleGroupType,
@as("RuleGroupArn") ruleGroupArn: resourceArn,
@as("RuleGroupName") ruleGroupName: resourceName
}
  type response = {
@as("RuleGroupResponse") ruleGroupResponse: option<ruleGroupResponse>,
@as("RuleGroup") ruleGroup: ruleGroup,
@as("UpdateToken") updateToken: option<updateToken>
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "DescribeRuleGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRuleGroup = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Tags") tags: tagList,
@as("Capacity") capacity: option<ruleCapacity>,
@as("Description") description: description,
@as("Type") type_: option<ruleGroupType>,
@as("Rules") rules: rulesString,
@as("RuleGroup") ruleGroup: ruleGroup,
@as("RuleGroupName") ruleGroupName: option<resourceName>
}
  type response = {
@as("RuleGroupResponse") ruleGroupResponse: option<ruleGroupResponse>,
@as("UpdateToken") updateToken: option<updateToken>
}
  @module("@aws-sdk/client-network-firewall") @new external new_: (Js.Promise.t<request>) => t = "CreateRuleGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
