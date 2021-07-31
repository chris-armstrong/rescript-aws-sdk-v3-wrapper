type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-network-firewall") @new
external createClient: unit => awsServiceClient = "NetworkFirewallClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcId = string
type variableDefinition = string
type updateToken = string
type targetType = [@as("HTTP_HOST") #HTTP_HOST | @as("TLS_SNI") #TLS_SNI]
type tagsPaginationMaxResults = int
type tagValue = string
type tagKey = string
type tcpflag = [
  | @as("CWR") #CWR
  | @as("ECE") #ECE
  | @as("URG") #URG
  | @as("ACK") #ACK
  | @as("PSH") #PSH
  | @as("RST") #RST
  | @as("SYN") #SYN
  | @as("FIN") #FIN
]
type statefulRuleProtocol = [
  | @as("DHCP") #DHCP
  | @as("NTP") #NTP
  | @as("TFTP") #TFTP
  | @as("IKEV2") #IKEV2
  | @as("KRB5") #KRB5
  | @as("MSN") #MSN
  | @as("IMAP") #IMAP
  | @as("SMTP") #SMTP
  | @as("SSH") #SSH
  | @as("DCERPC") #DCERPC
  | @as("DNS") #DNS
  | @as("SMB") #SMB
  | @as("TLS") #TLS
  | @as("FTP") #FTP
  | @as("HTTP") #HTTP
  | @as("ICMP") #ICMP
  | @as("UDP") #UDP
  | @as("TCP") #TCP
  | @as("IP") #IP
]
type statefulRuleDirection = [@as("ANY") #ANY | @as("FORWARD") #FORWARD]
type statefulAction = [@as("ALERT") #ALERT | @as("DROP") #DROP | @as("PASS") #PASS]
type source = string
type setting = string
type rulesString = string
type ruleVariableName = string
type ruleGroupType = [@as("STATEFUL") #STATEFUL | @as("STATELESS") #STATELESS]
type ruleCapacity = int
type resourceStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type resourceName = string
type resourceId = string
type resourceArn = string
type protocolNumber = int
type priority = int
type portRangeBound = int
type port = string
type policyString = string
type perObjectSyncStatus = [@as("IN_SYNC") #IN_SYNC | @as("PENDING") #PENDING]
type paginationToken = string
type paginationMaxResults = int
type logType = [@as("FLOW") #FLOW | @as("ALERT") #ALERT]
type logDestinationType = [
  | @as("KinesisDataFirehose") #KinesisDataFirehose
  | @as("CloudWatchLogs") #CloudWatchLogs
  | @as("S3") #S3
]
type keyword = string
type hashMapValue = string
type hashMapKey = string
type generatedRulesType = [@as("DENYLIST") #DENYLIST | @as("ALLOWLIST") #ALLOWLIST]
type firewallStatusValue = [
  | @as("READY") #READY
  | @as("DELETING") #DELETING
  | @as("PROVISIONING") #PROVISIONING
]
type errorMessage = string
type endpointId = string
type dimensionValue = string
type destination = string
type description = string
type configurationSyncState = [@as("IN_SYNC") #IN_SYNC | @as("PENDING") #PENDING]
type collectionMember_String = string
type boolean_ = bool
type azSubnet = string
type availabilityZone = string
type attachmentStatus = [
  | @as("READY") #READY
  | @as("SCALING") #SCALING
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
]
type addressDefinition = string
type actionName = string
type vpcIds = array<vpcId>
type variableDefinitionList = array<variableDefinition>
type targetTypes = array<targetType>
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type subnetMapping = {@as("SubnetId") subnetId: collectionMember_String}
type statelessRuleGroupReference = {
  @as("Priority") priority: priority,
  @as("ResourceArn") resourceArn: resourceArn,
}
type statelessActions = array<collectionMember_String>
type statefulRuleGroupReference = {@as("ResourceArn") resourceArn: resourceArn}
type settings = array<setting>
type ruleTargets = array<collectionMember_String>
type ruleGroupMetadata = {
  @as("Arn") arn: option<resourceArn>,
  @as("Name") name: option<resourceName>,
}
type protocolNumbers = array<protocolNumber>
type portRange = {
  @as("ToPort") toPort: portRangeBound,
  @as("FromPort") fromPort: portRangeBound,
}
type perObjectStatus = {
  @as("UpdateToken") updateToken: option<updateToken>,
  @as("SyncStatus") syncStatus: option<perObjectSyncStatus>,
}
type logDestinationMap = Js.Dict.t<hashMapValue>
type header = {
  @as("DestinationPort") destinationPort: port,
  @as("Destination") destination: destination,
  @as("Direction") direction: statefulRuleDirection,
  @as("SourcePort") sourcePort: port,
  @as("Source") source: source,
  @as("Protocol") protocol: statefulRuleProtocol,
}
type flags = array<tcpflag>
type firewallPolicyMetadata = {
  @as("Arn") arn: option<resourceArn>,
  @as("Name") name: option<resourceName>,
}
type firewallMetadata = {
  @as("FirewallArn") firewallArn: option<resourceArn>,
  @as("FirewallName") firewallName: option<resourceName>,
}
type dimension = {@as("Value") value: dimensionValue}
type azSubnets = array<azSubnet>
type attachment = {
  @as("Status") status: option<attachmentStatus>,
  @as("EndpointId") endpointId: option<endpointId>,
  @as("SubnetId") subnetId: option<azSubnet>,
}
type address = {@as("AddressDefinition") addressDefinition: addressDefinition}
type tagList_ = array<tag>
type tcpflagField = {
  @as("Masks") masks: option<flags>,
  @as("Flags") flags: flags,
}
type syncStateConfig = Js.Dict.t<perObjectStatus>
type subnetMappings = array<subnetMapping>
type statelessRuleGroupReferences = array<statelessRuleGroupReference>
type statefulRuleGroupReferences = array<statefulRuleGroupReference>
type rulesSourceList = {
  @as("GeneratedRulesType") generatedRulesType: generatedRulesType,
  @as("TargetTypes") targetTypes: targetTypes,
  @as("Targets") targets: ruleTargets,
}
type ruleOption = {
  @as("Settings") settings: option<settings>,
  @as("Keyword") keyword: keyword,
}
type ruleGroups = array<ruleGroupMetadata>
type portSet = {@as("Definition") definition: option<variableDefinitionList>}
type portRanges = array<portRange>
type logDestinationConfig = {
  @as("LogDestination") logDestination: logDestinationMap,
  @as("LogDestinationType") logDestinationType: logDestinationType,
  @as("LogType") logType: logType,
}
type ipset = {@as("Definition") definition: variableDefinitionList}
type firewalls = array<firewallMetadata>
type firewallPolicies = array<firewallPolicyMetadata>
type dimensions = array<dimension>
type addresses = array<address>
type tcpflags = array<tcpflagField>
type syncState = {
  @as("Config") config: option<syncStateConfig>,
  @as("Attachment") attachment: option<attachment>,
}
type ruleOptions = array<ruleOption>
type ruleGroupResponse = {
  @as("Tags") tags: option<tagList_>,
  @as("RuleGroupStatus") ruleGroupStatus: option<resourceStatus>,
  @as("Capacity") capacity: option<ruleCapacity>,
  @as("Type") type_: option<ruleGroupType>,
  @as("Description") description: option<description>,
  @as("RuleGroupId") ruleGroupId: resourceId,
  @as("RuleGroupName") ruleGroupName: resourceName,
  @as("RuleGroupArn") ruleGroupArn: resourceArn,
}
type publishMetricAction = {@as("Dimensions") dimensions: dimensions}
type portSets = Js.Dict.t<portSet>
type logDestinationConfigs = array<logDestinationConfig>
type ipsets = Js.Dict.t<ipset>
type firewallPolicyResponse = {
  @as("Tags") tags: option<tagList_>,
  @as("FirewallPolicyStatus") firewallPolicyStatus: option<resourceStatus>,
  @as("Description") description: option<description>,
  @as("FirewallPolicyId") firewallPolicyId: resourceId,
  @as("FirewallPolicyArn") firewallPolicyArn: resourceArn,
  @as("FirewallPolicyName") firewallPolicyName: resourceName,
}
type firewall = {
  @as("Tags") tags: option<tagList_>,
  @as("FirewallId") firewallId: resourceId,
  @as("Description") description: option<description>,
  @as("FirewallPolicyChangeProtection") firewallPolicyChangeProtection: option<boolean_>,
  @as("SubnetChangeProtection") subnetChangeProtection: option<boolean_>,
  @as("DeleteProtection") deleteProtection: option<boolean_>,
  @as("SubnetMappings") subnetMappings: subnetMappings,
  @as("VpcId") vpcId: vpcId,
  @as("FirewallPolicyArn") firewallPolicyArn: resourceArn,
  @as("FirewallArn") firewallArn: option<resourceArn>,
  @as("FirewallName") firewallName: option<resourceName>,
}
type syncStates = Js.Dict.t<syncState>
type statefulRule = {
  @as("RuleOptions") ruleOptions: ruleOptions,
  @as("Header") header: header,
  @as("Action") action: statefulAction,
}
type ruleVariables = {
  @as("PortSets") portSets: option<portSets>,
  @as("IPSets") ipsets: option<ipsets>,
}
type matchAttributes = {
  @as("TCPFlags") tcpflags: option<tcpflags>,
  @as("Protocols") protocols: option<protocolNumbers>,
  @as("DestinationPorts") destinationPorts: option<portRanges>,
  @as("SourcePorts") sourcePorts: option<portRanges>,
  @as("Destinations") destinations: option<addresses>,
  @as("Sources") sources: option<addresses>,
}
type loggingConfiguration = {
  @as("LogDestinationConfigs") logDestinationConfigs: logDestinationConfigs,
}
type actionDefinition = {
  @as("PublishMetricAction") publishMetricAction: option<publishMetricAction>,
}
type statefulRules = array<statefulRule>
type ruleDefinition = {
  @as("Actions") actions: statelessActions,
  @as("MatchAttributes") matchAttributes: matchAttributes,
}
type firewallStatus = {
  @as("SyncStates") syncStates: option<syncStates>,
  @as("ConfigurationSyncStateSummary") configurationSyncStateSummary: configurationSyncState,
  @as("Status") status: firewallStatusValue,
}
type customAction = {
  @as("ActionDefinition") actionDefinition: actionDefinition,
  @as("ActionName") actionName: actionName,
}
type statelessRule = {
  @as("Priority") priority: priority,
  @as("RuleDefinition") ruleDefinition: ruleDefinition,
}
type customActions = array<customAction>
type statelessRules = array<statelessRule>
type firewallPolicy = {
  @as("StatefulRuleGroupReferences")
  statefulRuleGroupReferences: option<statefulRuleGroupReferences>,
  @as("StatelessCustomActions") statelessCustomActions: option<customActions>,
  @as("StatelessFragmentDefaultActions") statelessFragmentDefaultActions: statelessActions,
  @as("StatelessDefaultActions") statelessDefaultActions: statelessActions,
  @as("StatelessRuleGroupReferences")
  statelessRuleGroupReferences: option<statelessRuleGroupReferences>,
}
type statelessRulesAndCustomActions = {
  @as("CustomActions") customActions: option<customActions>,
  @as("StatelessRules") statelessRules: statelessRules,
}
type rulesSource = {
  @as("StatelessRulesAndCustomActions")
  statelessRulesAndCustomActions: option<statelessRulesAndCustomActions>,
  @as("StatefulRules") statefulRules: option<statefulRules>,
  @as("RulesSourceList") rulesSourceList: option<rulesSourceList>,
  @as("RulesString") rulesString: option<rulesString>,
}
type ruleGroup = {
  @as("RulesSource") rulesSource: rulesSource,
  @as("RuleVariables") ruleVariables: option<ruleVariables>,
}

module UpdateSubnetChangeProtection = {
  type t
  type request = {
    @as("SubnetChangeProtection") subnetChangeProtection: boolean_,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
    @as("UpdateToken") updateToken: option<updateToken>,
  }
  type response = {
    @as("SubnetChangeProtection") subnetChangeProtection: option<boolean_>,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
    @as("UpdateToken") updateToken: option<updateToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "UpdateSubnetChangeProtectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFirewallPolicyChangeProtection = {
  type t
  type request = {
    @as("FirewallPolicyChangeProtection") firewallPolicyChangeProtection: boolean_,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
    @as("UpdateToken") updateToken: option<updateToken>,
  }
  type response = {
    @as("FirewallPolicyChangeProtection") firewallPolicyChangeProtection: option<boolean_>,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
    @as("UpdateToken") updateToken: option<updateToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "UpdateFirewallPolicyChangeProtectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFirewallDescription = {
  type t
  type request = {
    @as("Description") description: option<description>,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
    @as("UpdateToken") updateToken: option<updateToken>,
  }
  type response = {
    @as("UpdateToken") updateToken: option<updateToken>,
    @as("Description") description: option<description>,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "UpdateFirewallDescriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFirewallDeleteProtection = {
  type t
  type request = {
    @as("DeleteProtection") deleteProtection: boolean_,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
    @as("UpdateToken") updateToken: option<updateToken>,
  }
  type response = {
    @as("UpdateToken") updateToken: option<updateToken>,
    @as("DeleteProtection") deleteProtection: option<boolean_>,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "UpdateFirewallDeleteProtectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutResourcePolicy = {
  type t
  type request = {
    @as("Policy") policy: policyString,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "PutResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResourcePolicy = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceArn}
  type response = {@as("Policy") policy: option<policyString>}
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "DescribeResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceArn}
  type response = unit
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "DeleteResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateFirewallPolicy = {
  type t
  type request = {
    @as("FirewallPolicyArn") firewallPolicyArn: resourceArn,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
    @as("UpdateToken") updateToken: option<updateToken>,
  }
  type response = {
    @as("UpdateToken") updateToken: option<updateToken>,
    @as("FirewallPolicyArn") firewallPolicyArn: option<resourceArn>,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "AssociateFirewallPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @as("ResourceArn") resourceArn: resourceArn,
    @as("MaxResults") maxResults: option<tagsPaginationMaxResults>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRuleGroups = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<paginationMaxResults>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("RuleGroups") ruleGroups: option<ruleGroups>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "ListRuleGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFirewalls = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<paginationMaxResults>,
    @as("VpcIds") vpcIds: option<vpcIds>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("Firewalls") firewalls: option<firewalls>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "ListFirewallsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFirewallPolicies = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<paginationMaxResults>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("FirewallPolicies") firewallPolicies: option<firewallPolicies>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "ListFirewallPoliciesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateSubnets = {
  type t
  type request = {
    @as("SubnetIds") subnetIds: azSubnets,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
    @as("UpdateToken") updateToken: option<updateToken>,
  }
  type response = {
    @as("UpdateToken") updateToken: option<updateToken>,
    @as("SubnetMappings") subnetMappings: option<subnetMappings>,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "DisassociateSubnetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateSubnets = {
  type t
  type request = {
    @as("SubnetMappings") subnetMappings: subnetMappings,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
    @as("UpdateToken") updateToken: option<updateToken>,
  }
  type response = {
    @as("UpdateToken") updateToken: option<updateToken>,
    @as("SubnetMappings") subnetMappings: option<subnetMappings>,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "AssociateSubnetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRuleGroup = {
  type t
  type request = {
    @as("Type") type_: option<ruleGroupType>,
    @as("RuleGroupArn") ruleGroupArn: option<resourceArn>,
    @as("RuleGroupName") ruleGroupName: option<resourceName>,
  }
  type response = {@as("RuleGroupResponse") ruleGroupResponse: ruleGroupResponse}
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "DeleteRuleGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFirewallPolicy = {
  type t
  type request = {
    @as("FirewallPolicyArn") firewallPolicyArn: option<resourceArn>,
    @as("FirewallPolicyName") firewallPolicyName: option<resourceName>,
  }
  type response = {@as("FirewallPolicyResponse") firewallPolicyResponse: firewallPolicyResponse}
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "DeleteFirewallPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLoggingConfiguration = {
  type t
  type request = {
    @as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
  }
  type response = {
    @as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>,
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "UpdateLoggingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoggingConfiguration = {
  type t
  type request = {
    @as("FirewallName") firewallName: option<resourceName>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
  }
  type response = {
    @as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>,
    @as("FirewallArn") firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "DescribeLoggingConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFirewall = {
  type t
  type request = {
    @as("FirewallArn") firewallArn: option<resourceArn>,
    @as("FirewallName") firewallName: option<resourceName>,
  }
  type response = {
    @as("FirewallStatus") firewallStatus: option<firewallStatus>,
    @as("Firewall") firewall: option<firewall>,
    @as("UpdateToken") updateToken: option<updateToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "DescribeFirewallCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFirewall = {
  type t
  type request = {
    @as("FirewallArn") firewallArn: option<resourceArn>,
    @as("FirewallName") firewallName: option<resourceName>,
  }
  type response = {
    @as("FirewallStatus") firewallStatus: option<firewallStatus>,
    @as("Firewall") firewall: option<firewall>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "DeleteFirewallCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFirewall = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: option<description>,
    @as("FirewallPolicyChangeProtection") firewallPolicyChangeProtection: option<boolean_>,
    @as("SubnetChangeProtection") subnetChangeProtection: option<boolean_>,
    @as("DeleteProtection") deleteProtection: option<boolean_>,
    @as("SubnetMappings") subnetMappings: subnetMappings,
    @as("VpcId") vpcId: vpcId,
    @as("FirewallPolicyArn") firewallPolicyArn: resourceArn,
    @as("FirewallName") firewallName: resourceName,
  }
  type response = {
    @as("FirewallStatus") firewallStatus: option<firewallStatus>,
    @as("Firewall") firewall: option<firewall>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "CreateFirewallCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFirewallPolicy = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Description") description: option<description>,
    @as("FirewallPolicy") firewallPolicy: firewallPolicy,
    @as("FirewallPolicyName") firewallPolicyName: option<resourceName>,
    @as("FirewallPolicyArn") firewallPolicyArn: option<resourceArn>,
    @as("UpdateToken") updateToken: updateToken,
  }
  type response = {
    @as("FirewallPolicyResponse") firewallPolicyResponse: firewallPolicyResponse,
    @as("UpdateToken") updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "UpdateFirewallPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFirewallPolicy = {
  type t
  type request = {
    @as("FirewallPolicyArn") firewallPolicyArn: option<resourceArn>,
    @as("FirewallPolicyName") firewallPolicyName: option<resourceName>,
  }
  type response = {
    @as("FirewallPolicy") firewallPolicy: option<firewallPolicy>,
    @as("FirewallPolicyResponse") firewallPolicyResponse: firewallPolicyResponse,
    @as("UpdateToken") updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "DescribeFirewallPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFirewallPolicy = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: option<description>,
    @as("FirewallPolicy") firewallPolicy: firewallPolicy,
    @as("FirewallPolicyName") firewallPolicyName: resourceName,
  }
  type response = {
    @as("FirewallPolicyResponse") firewallPolicyResponse: firewallPolicyResponse,
    @as("UpdateToken") updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "CreateFirewallPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRuleGroup = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Description") description: option<description>,
    @as("Type") type_: option<ruleGroupType>,
    @as("Rules") rules: option<rulesString>,
    @as("RuleGroup") ruleGroup: option<ruleGroup>,
    @as("RuleGroupName") ruleGroupName: option<resourceName>,
    @as("RuleGroupArn") ruleGroupArn: option<resourceArn>,
    @as("UpdateToken") updateToken: updateToken,
  }
  type response = {
    @as("RuleGroupResponse") ruleGroupResponse: ruleGroupResponse,
    @as("UpdateToken") updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "UpdateRuleGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRuleGroup = {
  type t
  type request = {
    @as("Type") type_: option<ruleGroupType>,
    @as("RuleGroupArn") ruleGroupArn: option<resourceArn>,
    @as("RuleGroupName") ruleGroupName: option<resourceName>,
  }
  type response = {
    @as("RuleGroupResponse") ruleGroupResponse: ruleGroupResponse,
    @as("RuleGroup") ruleGroup: option<ruleGroup>,
    @as("UpdateToken") updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "DescribeRuleGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRuleGroup = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Tags") tags: option<tagList_>,
    @as("Capacity") capacity: ruleCapacity,
    @as("Description") description: option<description>,
    @as("Type") type_: ruleGroupType,
    @as("Rules") rules: option<rulesString>,
    @as("RuleGroup") ruleGroup: option<ruleGroup>,
    @as("RuleGroupName") ruleGroupName: resourceName,
  }
  type response = {
    @as("RuleGroupResponse") ruleGroupResponse: ruleGroupResponse,
    @as("UpdateToken") updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new_: request => t = "CreateRuleGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
