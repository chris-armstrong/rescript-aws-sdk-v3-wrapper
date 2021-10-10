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
@ocaml.doc("<p>A key:value pair associated with an AWS resource. The key:value pair can be anything you
         define. Typically, the tag key represents a category (such as \"environment\") and the tag
         value represents a specific value within that category (such as \"test,\" \"development,\" or
         \"production\"). You can add up to 50 tags to each AWS resource. </p>")
type tag = {
  @ocaml.doc("<p>The part of the key:value pair that defines a tag. You can use a tag value to describe a
         specific value within a category, such as \"companyA\" or \"companyB.\" Tag values are
         case-sensitive.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The part of the key:value pair that defines a tag. You can use a tag key to describe a
         category of information, such as \"customer.\" Tag keys are case-sensitive.</p>")
  @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>The ID for a subnet that you want to associate with the firewall. This is used with
            <a>CreateFirewall</a> and <a>AssociateSubnets</a>. AWS Network Firewall
         creates an instance of the associated firewall in each subnet that you specify, to filter
         traffic in the subnet's Availability Zone.</p>")
type subnetMapping = {
  @ocaml.doc("<p>The unique identifier for the subnet. </p>") @as("SubnetId")
  subnetId: collectionMember_String,
}
@ocaml.doc("<p>Identifier for a single stateless rule group, used in a firewall policy to refer to the
         rule group. </p>")
type statelessRuleGroupReference = {
  @ocaml.doc("<p>An integer setting that indicates the order in which to run the stateless rule groups in
         a single <a>FirewallPolicy</a>. Network Firewall applies each stateless rule group
         to a packet starting with the group that has the lowest priority setting. You must ensure
         that the priority settings are unique within each policy.</p>")
  @as("Priority")
  priority: priority,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stateless rule group.</p>")
  @as("ResourceArn")
  resourceArn: resourceArn,
}
type statelessActions = array<collectionMember_String>
@ocaml.doc("<p>Identifier for a single stateful rule group, used in a firewall policy to refer to a
         rule group. </p>")
type statefulRuleGroupReference = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the stateful rule group.</p>") @as("ResourceArn")
  resourceArn: resourceArn,
}
type settings = array<setting>
type ruleTargets = array<collectionMember_String>
@ocaml.doc("<p>High-level information about a rule group, returned by <a>ListRuleGroups</a>.
         You can use the information provided in the metadata to retrieve and manage a
         rule group.</p>")
type ruleGroupMetadata = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule group.</p>") @as("Arn")
  arn: option<resourceArn>,
  @ocaml.doc(
    "<p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>"
  )
  @as("Name")
  name: option<resourceName>,
}
type protocolNumbers = array<protocolNumber>
@ocaml.doc("<p>A single port range specification. This is used for source and destination port ranges
         in the stateless rule <a>MatchAttributes</a>, <code>SourcePorts</code>, and
            <code>DestinationPorts</code> settings. </p>")
type portRange = {
  @ocaml.doc("<p>The upper limit of the port range. This must be greater than or equal to the
            <code>FromPort</code> specification. </p>")
  @as("ToPort")
  toPort: portRangeBound,
  @ocaml.doc("<p>The lower limit of the port range. This must be less than or equal to the
            <code>ToPort</code> specification. </p>")
  @as("FromPort")
  fromPort: portRangeBound,
}
@ocaml.doc("<p>Provides configuration status for a single policy or rule group that is used for a firewall endpoint. Network Firewall
         provides each endpoint with the rules that are configured in the firewall policy. Each time
         you add a subnet or modify the associated firewall policy, Network Firewall synchronizes the
          rules in the endpoint, so it can properly filter network traffic. This is part of a <a>SyncState</a> for a firewall.</p>")
type perObjectStatus = {
  @ocaml.doc(
    "<p>The current version of the object that is either in sync or pending synchronization. </p>"
  )
  @as("UpdateToken")
  updateToken: option<updateToken>,
  @ocaml.doc(
    "<p>Indicates whether this object is in sync with the version indicated in the update token.</p>"
  )
  @as("SyncStatus")
  syncStatus: option<perObjectSyncStatus>,
}
type logDestinationMap = Js.Dict.t<hashMapValue>
@ocaml.doc("<p>The 5-tuple criteria for AWS Network Firewall to use to inspect packet headers in stateful
         traffic flow inspection. Traffic flows that match the criteria are a match for the
         corresponding <a>StatefulRule</a>. </p>")
type header = {
  @ocaml.doc("<p>The destination port to inspect for. You can specify an individual port, for 
           example <code>1994</code> and you can specify
         a port range, for example <code>1990-1994</code>.
          To match with any port, specify <code>ANY</code>. </p>")
  @as("DestinationPort")
  destinationPort: port,
  @ocaml.doc("<p>The destination IP address or address range to inspect for, in CIDR notation. 
          To match with any address, specify <code>ANY</code>. </p>
         <p>Specify an IP address or a block of IP addresses in Classless Inter-Domain Routing (CIDR) notation. Network Firewall supports all address ranges for IPv4. </p>
         <p>Examples: </p>
         <ul>
            <li>
               <p>To configure Network Firewall to inspect for the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
            </li>
            <li>
               <p>To configure Network Firewall to inspect for IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p>
            </li>
         </ul>
         <p>For more information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless
         Inter-Domain Routing</a>.</p>")
  @as("Destination")
  destination: destination,
  @ocaml.doc("<p>The direction of traffic flow to inspect. If set to <code>ANY</code>, the inspection
         matches bidirectional traffic, both from the source to the destination and from the
         destination to the source. If set to <code>FORWARD</code>, the inspection only matches
         traffic going from the source to the destination. </p>")
  @as("Direction")
  direction: statefulRuleDirection,
  @ocaml.doc("<p>The source port to inspect for. You can specify an individual port, for 
           example <code>1994</code> and you can specify a port
               range, for example <code>1990-1994</code>.
          To match with any port, specify <code>ANY</code>. </p>")
  @as("SourcePort")
  sourcePort: port,
  @ocaml.doc("<p>The source IP address or address range to inspect for, in CIDR notation. 
          To match with any address, specify <code>ANY</code>. </p>
         <p>Specify an IP address or a block of IP addresses in Classless Inter-Domain Routing (CIDR) notation. Network Firewall supports all address ranges for IPv4. </p>
         <p>Examples: </p>
         <ul>
            <li>
               <p>To configure Network Firewall to inspect for the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
            </li>
            <li>
               <p>To configure Network Firewall to inspect for IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p>
            </li>
         </ul>
         <p>For more information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless
         Inter-Domain Routing</a>.</p>")
  @as("Source")
  source: source,
  @ocaml.doc(
    "<p>The protocol to inspect for. To specify all, you can use <code>IP</code>, because all traffic on AWS and on the internet is IP.</p>"
  )
  @as("Protocol")
  protocol: statefulRuleProtocol,
}
type flags = array<tcpflag>
@ocaml.doc("<p>High-level information about a firewall policy, returned by operations like create and
         describe. You can use the information provided in the metadata to retrieve and manage a
         firewall policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>")
type firewallPolicyMetadata = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall policy.</p>") @as("Arn")
  arn: option<resourceArn>,
  @ocaml.doc(
    "<p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>"
  )
  @as("Name")
  name: option<resourceName>,
}
@ocaml.doc("<p>High-level information about a firewall, returned by operations like create and
         describe. You can use the information provided in the metadata to retrieve and manage a
         firewall.</p>")
type firewallMetadata = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p>") @as("FirewallArn")
  firewallArn: option<resourceArn>,
  @ocaml.doc(
    "<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>"
  )
  @as("FirewallName")
  firewallName: option<resourceName>,
}
@ocaml.doc("<p>The value to use in an Amazon CloudWatch custom metric dimension. This is used in the
            <code>PublishMetrics</code>
            <a>CustomAction</a>. A CloudWatch custom metric dimension is a name/value pair that's
         part of the identity of a metric. </p>
         <p>AWS Network Firewall sets the dimension name to <code>CustomAction</code> and you provide the
         dimension value. </p>
         <p>For more information about CloudWatch custom metric dimensions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html#usingDimensions\">Publishing Custom Metrics</a> in the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html\">Amazon CloudWatch User
            Guide</a>.</p>")
type dimension = {
  @ocaml.doc("<p>The value to use in the custom metric dimension.</p>") @as("Value")
  value: dimensionValue,
}
type azSubnets = array<azSubnet>
@ocaml.doc("<p>The configuration and status for a single subnet that you've specified for use by the
         AWS Network Firewall firewall. This is part of the <a>FirewallStatus</a>.</p>")
type attachment = {
  @ocaml.doc("<p>The current status of the firewall endpoint in the subnet. This value reflects both the
         instantiation of the endpoint in the VPC subnet and the sync states that are reported in
         the <code>Config</code> settings. When this value is <code>READY</code>, the endpoint is
         available and configured properly to handle network traffic. When the endpoint isn't
         available for traffic, this value will reflect its state, for example
         <code>CREATING</code>, <code>DELETING</code>, or <code>FAILED</code>.</p>")
  @as("Status")
  status: option<attachmentStatus>,
  @ocaml.doc("<p>The identifier of the firewall endpoint that Network Firewall has instantiated in the
         subnet. You use this to identify the firewall endpoint in the VPC route tables, when you
         redirect the VPC traffic through the endpoint. </p>")
  @as("EndpointId")
  endpointId: option<endpointId>,
  @ocaml.doc("<p>The unique identifier of the subnet that you've specified to be used for a firewall
         endpoint. </p>")
  @as("SubnetId")
  subnetId: option<azSubnet>,
}
@ocaml.doc("<p>A single IP address specification. This is used in the <a>MatchAttributes</a>
         source and destination specifications.</p>")
type address = {
  @ocaml.doc("<p>Specify an IP address or a block of IP addresses in Classless Inter-Domain Routing (CIDR) notation. Network Firewall supports all address ranges for IPv4. </p>
         <p>Examples: </p>
         <ul>
            <li>
               <p>To configure Network Firewall to inspect for the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
            </li>
            <li>
               <p>To configure Network Firewall to inspect for IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p>
            </li>
         </ul>
         <p>For more information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless
         Inter-Domain Routing</a>.</p>")
  @as("AddressDefinition")
  addressDefinition: addressDefinition,
}
type tagList_ = array<tag>
@ocaml.doc(
  "<p>TCP flags and masks to inspect packets for, used in stateless rules <a>MatchAttributes</a> settings.</p>"
)
type tcpflagField = {
  @ocaml.doc(
    "<p>The set of flags to consider in the inspection. To inspect all flags in the valid values list, leave this with no setting.</p>"
  )
  @as("Masks")
  masks: option<flags>,
  @ocaml.doc("<p>Used in conjunction with the <code>Masks</code> setting to define the flags that must be set and flags that must not be set in order for the packet to match. This setting can only specify values that are also specified in the <code>Masks</code> setting.</p>
         <p>For the flags that are specified in the masks setting, the following must be true for the packet to match: </p>
         <ul>
            <li>
               <p>The ones that are set in this flags setting must be set in the packet. </p>
           </li>
            <li>
               <p>The ones that are not set in this flags setting must also not be set in the packet. </p>
           </li>
         </ul>")
  @as("Flags")
  flags: flags,
}
type syncStateConfig = Js.Dict.t<perObjectStatus>
type subnetMappings = array<subnetMapping>
type statelessRuleGroupReferences = array<statelessRuleGroupReference>
type statefulRuleGroupReferences = array<statefulRuleGroupReference>
@ocaml.doc("<p>Stateful inspection criteria for a domain list rule group. </p>
         <p>For HTTPS traffic, domain filtering is SNI-based. It uses the server name indicator extension of the TLS handshake.</p>
         <p>By default, Network Firewall domain list inspection only includes traffic coming from the VPC where you deploy the firewall. To inspect traffic from IP addresses outside of the deployment VPC, you set the <code>HOME_NET</code> rule variable to include the CIDR range of the deployment VPC plus the other CIDR ranges. For more information, see <a>RuleVariables</a> in this guide and <a href=\"https://docs.aws.amazon.com/network-firewall/latest/developerguide/stateful-rule-groups-domain-names.html\">Stateful domain list rule groups in AWS Network Firewall</a> in the <i>Network Firewall Developer Guide</i>
         </p>")
type rulesSourceList = {
  @ocaml.doc("<p>Whether you want to allow or deny access to the domains in your target list.</p>")
  @as("GeneratedRulesType")
  generatedRulesType: generatedRulesType,
  @ocaml.doc(
    "<p>The protocols you want to inspect. Specify <code>TLS_SNI</code> for <code>HTTPS</code>. Specity <code>HTTP_HOST</code> for <code>HTTP</code>. You can specify either or both. </p>"
  )
  @as("TargetTypes")
  targetTypes: targetTypes,
  @ocaml.doc("<p>The domains that you want to inspect for in your traffic flows. To provide multiple
         domains, separate them with commas. Valid domain specifications are the following:</p>
         <ul>
            <li>
               <p>Explicit names. For example, <code>abc.example.com</code> matches only the domain <code>abc.example.com</code>.</p>
            </li>
            <li>
               <p>Names that use a domain wildcard, which you indicate with an initial '<code>.</code>'. For example,<code>.example.com</code> matches <code>example.com</code> and matches all subdomains of <code>example.com</code>, such as <code>abc.example.com</code> and <code>www.example.com</code>. </p>
	           </li>
         </ul>")
  @as("Targets")
  targets: ruleTargets,
}
@ocaml.doc(
  "<p>Additional settings for a stateful rule. This is part of the <a>StatefulRule</a> configuration.</p>"
)
type ruleOption = {
  @ocaml.doc("<p></p>") @as("Settings") settings: option<settings>,
  @ocaml.doc("<p></p>") @as("Keyword") keyword: keyword,
}
type ruleGroups = array<ruleGroupMetadata>
@ocaml.doc("<p>A set of port ranges for use in the rules in a rule group. </p>")
type portSet = {
  @ocaml.doc("<p>The set of port ranges. 
      </p>")
  @as("Definition")
  definition: option<variableDefinitionList>,
}
type portRanges = array<portRange>
@ocaml.doc("<p>Defines where AWS Network Firewall sends logs for the firewall for one log type. This is used
         in <a>LoggingConfiguration</a>. You can send each type of log to an Amazon S3 bucket, a CloudWatch log group, or a Kinesis Data Firehose delivery stream.</p>
         <p>Network Firewall generates logs for stateful rule groups. You can save alert and flow log
          types. The stateful rules engine records flow logs for all network traffic that it receives. 
          It records alert logs for traffic that matches stateful rules that have the rule
          action set to <code>DROP</code> or <code>ALERT</code>. </p>")
type logDestinationConfig = {
  @ocaml.doc("<p>The named location for the logs, provided in a key:value mapping that is specific to the
         chosen destination type. </p>
         <ul>
            <li>
               <p>For an Amazon S3 bucket, provide the name of the bucket, with key <code>bucketName</code>,
               and optionally provide a prefix, with key <code>prefix</code>. The following example
               specifies an Amazon S3 bucket named
               <code>DOC-EXAMPLE-BUCKET</code> and the prefix <code>alerts</code>: </p>
               <p>
                  <code>\"LogDestination\": { \"bucketName\": \"DOC-EXAMPLE-BUCKET\", \"prefix\": \"alerts\"
                  }</code>
               </p>
            </li>
            <li>
               <p>For a CloudWatch log group, provide the name of the CloudWatch log group, with key
                  <code>logGroup</code>. The following example specifies a log group named
                  <code>alert-log-group</code>: </p>
               <p>
                  <code>\"LogDestination\": { \"logGroup\": \"alert-log-group\" }</code>
               </p>
            </li>
            <li>
               <p>For a Kinesis Data Firehose delivery stream, provide the name of the delivery stream, with key
                  <code>deliveryStream</code>. The following example specifies a delivery stream
               named <code>alert-delivery-stream</code>: </p>
               <p>
                  <code>\"LogDestination\": { \"deliveryStream\": \"alert-delivery-stream\"
               }</code>
               </p>
            </li>
         </ul>")
  @as("LogDestination")
  logDestination: logDestinationMap,
  @ocaml.doc("<p>The type of storage destination to send these logs to. You can send logs to an Amazon S3 bucket,
         a CloudWatch log group, or a Kinesis Data Firehose delivery stream.</p>")
  @as("LogDestinationType")
  logDestinationType: logDestinationType,
  @ocaml.doc("<p>The type of log to send. Alert logs report traffic that matches a <a>StatefulRule</a> with an action setting that sends an alert log message. Flow logs are
         standard network traffic flow logs. </p>")
  @as("LogType")
  logType: logType,
}
@ocaml.doc(
  "<p>A list of IP addresses and address ranges, in CIDR notation. This is part of a <a>RuleVariables</a>. </p>"
)
type ipset = {
  @ocaml.doc("<p>The list of IP addresses and address ranges, in CIDR notation.
         
      </p>")
  @as("Definition")
  definition: variableDefinitionList,
}
type firewalls = array<firewallMetadata>
type firewallPolicies = array<firewallPolicyMetadata>
type dimensions = array<dimension>
type addresses = array<address>
type tcpflags = array<tcpflagField>
@ocaml.doc("<p>The status of the firewall endpoint and firewall policy configuration for a single VPC
         subnet. </p>
         <p>For each VPC subnet that you associate with a firewall, AWS Network Firewall does the
         following: </p>
         <ul>
            <li>
               <p>Instantiates a firewall endpoint in the subnet, ready to take traffic.</p>
            </li>
            <li>
               <p>Configures the endpoint with the current firewall policy settings, to provide the
               filtering behavior for the endpoint.</p>
            </li>
         </ul>
         <p>When you update a firewall, for example to add a subnet association or change a rule
         group in the firewall policy, the affected sync states reflect out-of-sync or not ready
         status until the changes are complete. </p>")
type syncState = {
  @ocaml.doc("<p>The configuration status of the firewall endpoint in a single VPC subnet. Network Firewall
         provides each endpoint with the rules that are configured in the firewall policy. Each time
         you add a subnet or modify the associated firewall policy, Network Firewall synchronizes the
         rules in the endpoint, so it can properly filter network traffic. This is part of the <a>FirewallStatus</a>.</p>")
  @as("Config")
  config: option<syncStateConfig>,
  @ocaml.doc("<p>The attachment status of the firewall's association with a single VPC subnet. For each
         configured subnet, Network Firewall creates the attachment by instantiating the firewall
         endpoint in the subnet so that it's ready to take traffic. This is part of the <a>FirewallStatus</a>.</p>")
  @as("Attachment")
  attachment: option<attachment>,
}
type ruleOptions = array<ruleOption>
@ocaml.doc(
  "<p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>"
)
type ruleGroupResponse = {
  @ocaml.doc("<p>The key:value pairs to associate with the resource.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>Detailed information about the current status of a rule group. </p>")
  @as("RuleGroupStatus")
  ruleGroupStatus: option<resourceStatus>,
  @ocaml.doc("<p>The maximum operating resources that this rule group can use. Rule group capacity is fixed at creation. 
      When you update a rule group, you are limited to this capacity. When you reference a rule group 
      from a firewall policy, Network Firewall reserves this capacity for the rule group. </p> 
         <p>You can retrieve the capacity that would be required for a rule group before you create the rule group by calling 
      <a>CreateRuleGroup</a> with <code>DryRun</code> set to <code>TRUE</code>. </p>")
  @as("Capacity")
  capacity: option<ruleCapacity>,
  @ocaml.doc("<p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains 
stateless rules. If it is stateful, it contains stateful rules. </p>")
  @as("Type")
  type_: option<ruleGroupType>,
  @ocaml.doc("<p>A description of the rule group. </p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The unique identifier for the rule group. </p>") @as("RuleGroupId")
  ruleGroupId: resourceId,
  @ocaml.doc(
    "<p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>"
  )
  @as("RuleGroupName")
  ruleGroupName: resourceName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule group.</p> 
         <note>
            <p>If this response is for a create request that had <code>DryRun</code> set to
               <code>TRUE</code>, then this ARN is a placeholder that isn't attached to a valid
            resource.</p>
         </note>")
  @as("RuleGroupArn")
  ruleGroupArn: resourceArn,
}
@ocaml.doc("<p>Stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the
         matching packet. This setting defines a CloudWatch dimension value to be published.</p>")
type publishMetricAction = {@ocaml.doc("<p></p>") @as("Dimensions") dimensions: dimensions}
type portSets = Js.Dict.t<portSet>
type logDestinationConfigs = array<logDestinationConfig>
type ipsets = Js.Dict.t<ipset>
@ocaml.doc(
  "<p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>"
)
type firewallPolicyResponse = {
  @ocaml.doc("<p>The key:value pairs to associate with the resource.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The current status of the firewall policy. You can retrieve this for a firewall policy
         by calling <a>DescribeFirewallPolicy</a> and providing the firewall policy's
         name or ARN.</p>")
  @as("FirewallPolicyStatus")
  firewallPolicyStatus: option<resourceStatus>,
  @ocaml.doc("<p>A description of the firewall policy.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The unique identifier for the firewall policy. </p>") @as("FirewallPolicyId")
  firewallPolicyId: resourceId,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall policy.</p> 
         <note>
            <p>If this response is for a create request that had <code>DryRun</code> set to
               <code>TRUE</code>, then this ARN is a placeholder that isn't attached to a valid
            resource.</p>
         </note>")
  @as("FirewallPolicyArn")
  firewallPolicyArn: resourceArn,
  @ocaml.doc(
    "<p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>"
  )
  @as("FirewallPolicyName")
  firewallPolicyName: resourceName,
}
@ocaml.doc("<p>The firewall defines the configuration settings for an AWS Network Firewall firewall. These settings include the firewall policy, the subnets in your VPC to use for the firewall endpoints, and any tags that are attached to the firewall AWS resource. </p> 
         <p>The status of the firewall, for example whether it's ready to filter network traffic,
         is provided in the corresponding <a>FirewallStatus</a>. You can retrieve both
         objects by calling <a>DescribeFirewall</a>.</p>")
type firewall = {
  @ocaml.doc("<p></p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The unique identifier for the firewall. </p>") @as("FirewallId")
  firewallId: resourceId,
  @ocaml.doc("<p>A description of the firewall.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>A setting indicating whether the firewall is protected against a change to the firewall policy association. 
         Use this setting to protect against
         accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>")
  @as("FirewallPolicyChangeProtection")
  firewallPolicyChangeProtection: option<boolean_>,
  @ocaml.doc("<p>A setting indicating whether the firewall is protected against changes to the subnet associations. 
         Use this setting to protect against
         accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>")
  @as("SubnetChangeProtection")
  subnetChangeProtection: option<boolean_>,
  @ocaml.doc("<p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
         that the firewall is protected against deletion. Use this setting to protect against
         accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>")
  @as("DeleteProtection")
  deleteProtection: option<boolean_>,
  @ocaml.doc("<p>The public subnets that Network Firewall is using for the firewall. Each subnet must belong
         to a different Availability Zone. </p>")
  @as("SubnetMappings")
  subnetMappings: subnetMappings,
  @ocaml.doc("<p>The unique identifier of the VPC where the firewall is in use. </p>") @as("VpcId")
  vpcId: vpcId,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall policy.</p> 
         <p>The relationship of firewall to firewall policy is many to one. Each firewall requires
         one firewall policy association, and you can use the same firewall policy for multiple
         firewalls. </p>")
  @as("FirewallPolicyArn")
  firewallPolicyArn: resourceArn,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p>") @as("FirewallArn")
  firewallArn: option<resourceArn>,
  @ocaml.doc(
    "<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>"
  )
  @as("FirewallName")
  firewallName: option<resourceName>,
}
type syncStates = Js.Dict.t<syncState>
@ocaml.doc("<p>A single 5-tuple stateful rule, for use in a stateful rule group.</p>")
type statefulRule = {
  @ocaml.doc("<p></p>") @as("RuleOptions") ruleOptions: ruleOptions,
  @ocaml.doc("<p>The stateful 5-tuple inspection criteria for this rule, used to inspect traffic flows.
      </p>")
  @as("Header")
  header: header,
  @ocaml.doc("<p>Defines what Network Firewall should do with the packets in a traffic flow when the flow
         matches the stateful rule criteria. For all actions, Network Firewall performs the specified
         action and discontinues stateful inspection of the traffic flow. </p>
         <p>The actions for a stateful rule are defined as follows: </p>
         <ul>
            <li>
               <p>
                  <b>PASS</b> - Permits the packets to go to the
               intended destination.</p>
            </li>
            <li>
               <p>
                  <b>DROP</b> - Blocks the packets from going to
               the intended destination and sends an alert log message, if alert logging is configured in the <a>Firewall</a> 
                  <a>LoggingConfiguration</a>. </p>
            </li>
            <li>
               <p>
                  <b>ALERT</b> - Permits the packets to go to the
               intended destination and sends an alert log message, if alert logging is configured in the <a>Firewall</a> 
                  <a>LoggingConfiguration</a>. </p>
               <p>You can use this action to test a rule that you intend to use to drop traffic. You
               can enable the rule with <code>ALERT</code> action, verify in the logs that the rule
               is filtering as you want, then change the action to <code>DROP</code>.</p>
            </li>
         </ul>")
  @as("Action")
  action: statefulAction,
}
@ocaml.doc("<p>Settings that are available for use in the rules in the <a>RuleGroup</a>
         where this is defined. </p>")
type ruleVariables = {
  @ocaml.doc("<p>A list of port ranges. </p>") @as("PortSets") portSets: option<portSets>,
  @ocaml.doc("<p>A list of IP addresses and address ranges, in CIDR notation. </p>") @as("IPSets")
  ipsets: option<ipsets>,
}
@ocaml.doc(
  "<p>Criteria for Network Firewall to use to inspect an individual packet in stateless rule inspection. Each match attributes set can include one or more items such as IP address, CIDR range, port number, protocol, and TCP flags. </p>"
)
type matchAttributes = {
  @ocaml.doc("<p>The TCP flags and masks to inspect for. If not specified, this matches with any
         settings. This setting is only used for protocol 6 (TCP).</p>")
  @as("TCPFlags")
  tcpflags: option<tcpflags>,
  @ocaml.doc("<p>The protocols to inspect for, specified using each protocol's assigned internet protocol
         number (IANA). If not specified, this matches with any protocol. </p>")
  @as("Protocols")
  protocols: option<protocolNumbers>,
  @ocaml.doc("<p>The destination ports to inspect for. If not specified, this matches with any
         destination port. This setting is only used for protocols 6 (TCP) and 17 (UDP). </p>
         <p>You can specify individual ports, for example <code>1994</code> and you can specify port
         ranges, for example <code>1990-1994</code>. </p>")
  @as("DestinationPorts")
  destinationPorts: option<portRanges>,
  @ocaml.doc("<p>The source ports to inspect for. If not specified, this matches with any source port.
         This setting is only used for protocols 6 (TCP) and 17 (UDP). </p>
         <p>You can specify individual ports, for example <code>1994</code> and you can specify port
         ranges, for example <code>1990-1994</code>. </p>")
  @as("SourcePorts")
  sourcePorts: option<portRanges>,
  @ocaml.doc("<p>The destination IP addresses and address ranges to inspect for, in CIDR notation. If not
         specified, this matches with any destination address. </p>")
  @as("Destinations")
  destinations: option<addresses>,
  @ocaml.doc("<p>The source IP addresses and address ranges to inspect for, in CIDR notation. If not
         specified, this matches with any source address. </p>")
  @as("Sources")
  sources: option<addresses>,
}
@ocaml.doc("<p>Defines how AWS Network Firewall performs logging for a <a>Firewall</a>. </p>")
type loggingConfiguration = {
  @ocaml.doc("<p>Defines the logging destinations for the logs for a firewall. Network Firewall generates
         logs for stateful rule groups. </p>")
  @as("LogDestinationConfigs")
  logDestinationConfigs: logDestinationConfigs,
}
@ocaml.doc(
  "<p>A custom action to use in stateless rule actions settings. This is used in <a>CustomAction</a>.</p>"
)
type actionDefinition = {
  @ocaml.doc("<p>Stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the
         matching packet. This setting defines a CloudWatch dimension value to be published.</p>
         <p>You can pair this custom action with any of the standard stateless rule actions. For
         example, you could pair this in a rule action with the standard action that forwards the
         packet for stateful inspection. Then, when a packet matches the rule, Network Firewall
         publishes metrics for the packet and forwards it. </p>")
  @as("PublishMetricAction")
  publishMetricAction: option<publishMetricAction>,
}
type statefulRules = array<statefulRule>
@ocaml.doc("<p>The inspection criteria and action for a single stateless rule. AWS Network Firewall inspects each packet for the specified matching
         criteria. When a packet matches the criteria, Network Firewall performs the rule's actions on
         the packet.</p>")
type ruleDefinition = {
  @ocaml.doc("<p>The actions to take on a packet that matches one of the stateless rule definition's
         match attributes. You must specify a standard action and you can add custom actions. </p>
         <note>
            <p>Network Firewall only forwards a packet for stateful rule inspection if you specify
               <code>aws:forward_to_sfe</code> for a rule that the packet matches, or if the packet
            doesn't match any stateless rule and you specify <code>aws:forward_to_sfe</code> for the
               <code>StatelessDefaultActions</code> setting for the <a>FirewallPolicy</a>.</p>
         </note>
         <p>For every rule, you must specify exactly one of the following standard actions. </p>
         <ul>
            <li>
               <p>
                  <b>aws:pass</b> - Discontinues all inspection of
               the packet and permits it to go to its intended destination.</p>
            </li>
            <li>
               <p>
                  <b>aws:drop</b> - Discontinues all inspection of
               the packet and blocks it from going to its intended destination.</p>
            </li>
            <li>
               <p>
                  <b>aws:forward_to_sfe</b> - Discontinues
               stateless inspection of the packet and forwards it to the stateful rule engine for
               inspection. </p>
            </li>
         </ul>
         <p>Additionally, you can specify a custom action.
         To
         do this, you define a custom action by name and type, then provide the name you've assigned
         to the action in this <code>Actions</code> setting. For information about the options, see
            <a>CustomAction</a>. </p>
         <p>To provide more than one action in this setting, separate the settings with a comma. For
         example, if you have a custom <code>PublishMetrics</code> action that you've named
            <code>MyMetricsAction</code>, then you could specify the standard action
            <code>aws:pass</code> and the custom action with <code>[“aws:pass”,
            “MyMetricsAction”]</code>. </p>")
  @as("Actions")
  actions: statelessActions,
  @ocaml.doc(
    "<p>Criteria for Network Firewall to use to inspect an individual packet in stateless rule inspection. Each match attributes set can include one or more items such as IP address, CIDR range, port number, protocol, and TCP flags. </p>"
  )
  @as("MatchAttributes")
  matchAttributes: matchAttributes,
}
@ocaml.doc(
  "<p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>"
)
type firewallStatus = {
  @ocaml.doc("<p>The subnets that you've configured for use by the Network Firewall firewall. This contains
         one array element per Availability Zone where you've configured a subnet. These objects
         provide details of the information that is summarized in the
            <code>ConfigurationSyncStateSummary</code> and <code>Status</code>, broken down by zone
         and configuration object. </p>")
  @as("SyncStates")
  syncStates: option<syncStates>,
  @ocaml.doc("<p>The configuration sync state for the firewall. This summarizes the sync states reported
         in the <code>Config</code> settings for all of the Availability Zones where you have
         configured the firewall. </p>
         <p>When you create a firewall or update its configuration, for example by adding a rule
         group to its firewall policy, Network Firewall distributes the configuration changes to all
         zones where the firewall is in use. This summary indicates whether the configuration
         changes have been applied everywhere. </p>
         <p>This status must be <code>IN_SYNC</code> for the firewall to be ready for use, but it
         doesn't indicate that the firewall is ready. The <code>Status</code> setting indicates
         firewall readiness.</p>")
  @as("ConfigurationSyncStateSummary")
  configurationSyncStateSummary: configurationSyncState,
  @ocaml.doc("<p>The readiness of the configured firewall to handle network traffic across all of the
         Availability Zones where you've configured it. This setting is <code>READY</code> only when
         the <code>ConfigurationSyncStateSummary</code> value is <code>IN_SYNC</code> and the
            <code>Attachment</code>
            <code>Status</code> values for all of the configured subnets are <code>READY</code>.
      </p>")
  @as("Status")
  status: firewallStatusValue,
}
@ocaml.doc("<p>An optional, non-standard action to use for stateless packet handling. You can define
         this in addition to the standard action that you must specify. </p>
         <p>You define and name the custom actions that you want to be able to use, and then you
         reference them by name in your actions settings. </p>
         <p>You can use custom actions in the following places: </p>
         <ul>
            <li>
               <p>In a rule group's <a>StatelessRulesAndCustomActions</a> specification.
               The custom actions are available for use by name inside the
                  <code>StatelessRulesAndCustomActions</code> where you define them. You can use
               them for your stateless rule actions to specify what to do with a packet that matches
               the rule's match attributes. </p>
            </li>
            <li>
               <p>In a <a>FirewallPolicy</a> specification, in
                  <code>StatelessCustomActions</code>. The custom actions are available for use
               inside the policy where you define them. You can use them for the policy's default
               stateless actions settings to specify what to do with packets that don't match any of
               the policy's stateless rules. </p>
            </li>
         </ul>")
type customAction = {
  @ocaml.doc("<p>The custom action associated with the action name.</p>") @as("ActionDefinition")
  actionDefinition: actionDefinition,
  @ocaml.doc(
    "<p>The descriptive name of the custom action. You can't change the name of a custom action after you create it.</p>"
  )
  @as("ActionName")
  actionName: actionName,
}
@ocaml.doc("<p>A single stateless rule. This is used in <a>StatelessRulesAndCustomActions</a>.</p>")
type statelessRule = {
  @ocaml.doc("<p>A setting that indicates the order in which to run this rule relative to all of the
         rules that are defined for a stateless rule group. Network Firewall evaluates the rules in a
         rule group starting with the lowest priority setting. You must ensure that the priority
         settings are unique for the rule group. </p>
         <p>Each stateless rule group uses exactly one <code>StatelessRulesAndCustomActions</code>
         object, and each <code>StatelessRulesAndCustomActions</code> contains exactly one
            <code>StatelessRules</code> object. To ensure unique priority settings for your rule
         groups, set unique priorities for the stateless rules that you define inside any single
            <code>StatelessRules</code> object.</p>
         <p>You can change the priority settings of your rules at any time. To make it easier to
         insert rules later, number them so there's a wide range in between, for example use 100,
         200, and so on. </p>")
  @as("Priority")
  priority: priority,
  @ocaml.doc("<p>Defines the stateless 5-tuple packet inspection criteria and the action to take on a
         packet that matches the criteria. </p>")
  @as("RuleDefinition")
  ruleDefinition: ruleDefinition,
}
type customActions = array<customAction>
type statelessRules = array<statelessRule>
@ocaml.doc("<p>The firewall policy defines the behavior of a firewall using a collection of stateless
         and stateful rule groups and other settings. You can use one firewall policy for multiple
         firewalls. </p>
         <p>This, along with <a>FirewallPolicyResponse</a>, define the policy.
         You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>.</p>")
type firewallPolicy = {
  @ocaml.doc("<p>References to the stateless rule groups that are used in the policy. These define the
         inspection criteria in stateful rules. </p>")
  @as("StatefulRuleGroupReferences")
  statefulRuleGroupReferences: option<statefulRuleGroupReferences>,
  @ocaml.doc("<p>The custom action definitions that are available for use in the firewall policy's
            <code>StatelessDefaultActions</code> setting. You name each custom action that you
         define, and then you can use it by name in your default actions specifications.</p>")
  @as("StatelessCustomActions")
  statelessCustomActions: option<customActions>,
  @ocaml.doc("<p>The actions to take on a fragmented UDP packet if it doesn't match any of the stateless
      rules in the policy. Network Firewall only manages UDP packet fragments and silently drops packet fragments for other protocols. 
      If you want non-matching fragmented UDP packets to be forwarded for
         stateful inspection, specify <code>aws:forward_to_sfe</code>. </p>
         <p>You must specify one of the standard actions: <code>aws:pass</code>,
            <code>aws:drop</code>, or <code>aws:forward_to_sfe</code>. In addition, you can specify
         custom actions that are compatible with your standard section choice.</p>
         <p>For example, you could specify <code>[\"aws:pass\"]</code> or you could specify
            <code>[\"aws:pass\", “customActionName”]</code>. For information about compatibility, see
         the custom action descriptions under <a>CustomAction</a>.</p>")
  @as("StatelessFragmentDefaultActions")
  statelessFragmentDefaultActions: statelessActions,
  @ocaml.doc("<p>The actions to take on a packet if it doesn't match any of the stateless rules in the
         policy. If you want non-matching packets to be forwarded for stateful inspection, specify
            <code>aws:forward_to_sfe</code>. </p>
         <p>You must specify one of the standard actions: <code>aws:pass</code>,
            <code>aws:drop</code>, or <code>aws:forward_to_sfe</code>. In addition, you can specify
         custom actions that are compatible with your standard section choice.</p>
         <p>For example, you could specify <code>[\"aws:pass\"]</code> or you could specify
            <code>[\"aws:pass\", “customActionName”]</code>. For information about compatibility, see
         the custom action descriptions under <a>CustomAction</a>.</p>")
  @as("StatelessDefaultActions")
  statelessDefaultActions: statelessActions,
  @ocaml.doc("<p>References to the stateless rule groups that are used in the policy. These define the
         matching criteria in stateless rules. </p>")
  @as("StatelessRuleGroupReferences")
  statelessRuleGroupReferences: option<statelessRuleGroupReferences>,
}
@ocaml.doc("<p>Stateless inspection criteria. Each stateless rule group uses exactly one of these data
         types to define its stateless rules. </p>")
type statelessRulesAndCustomActions = {
  @ocaml.doc("<p>Defines an array of individual custom action definitions that are available for use by
         the stateless rules in this <code>StatelessRulesAndCustomActions</code> specification. You
         name each custom action that you define, and then you can use it by name in your <a>StatelessRule</a>
            <a>RuleDefinition</a>
            <code>Actions</code> specification.</p>")
  @as("CustomActions")
  customActions: option<customActions>,
  @ocaml.doc("<p>Defines the set of stateless rules for use in a stateless rule group. </p>")
  @as("StatelessRules")
  statelessRules: statelessRules,
}
@ocaml.doc("<p>The stateless or stateful rules definitions for use in a single rule group. Each rule
         group requires a single <code>RulesSource</code>. You can use an instance of this for
         either stateless rules or stateful rules. </p>")
type rulesSource = {
  @ocaml.doc("<p>Stateless inspection criteria to be used in a stateless rule group. </p>")
  @as("StatelessRulesAndCustomActions")
  statelessRulesAndCustomActions: option<statelessRulesAndCustomActions>,
  @ocaml.doc("<p>The 5-tuple stateful inspection criteria. This contains an array of individual 5-tuple
         stateful rules to be used together in a stateful rule group. </p>")
  @as("StatefulRules")
  statefulRules: option<statefulRules>,
  @ocaml.doc("<p>Stateful inspection criteria for a domain list rule group. </p>")
  @as("RulesSourceList")
  rulesSourceList: option<rulesSourceList>,
  @ocaml.doc("<p>Stateful inspection criteria, provided in Suricata compatible intrusion prevention
         system (IPS) rules. Suricata is an open-source network IPS that includes a standard
         rule-based language for network traffic inspection.</p>
         <p>These rules contain the inspection criteria and the action to take for traffic that
         matches the criteria, so this type of rule group doesn't have a separate action
         setting.</p>")
  @as("RulesString")
  rulesString: option<rulesString>,
}
@ocaml.doc("<p>The object that defines the rules in a rule group. This, along with <a>RuleGroupResponse</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p> 
         <p>AWS Network Firewall uses a rule group to inspect and control network traffic. 
    You define stateless rule groups to inspect individual packets and you define stateful rule groups to inspect packets in the context of their
    traffic flow. </p>
         <p>To use a rule group, you include it by reference in an Network Firewall firewall policy, then you use the policy in a firewall. You can reference a rule group from 
    more than one firewall policy, and you can use a firewall policy in more than one firewall. </p>")
type ruleGroup = {
  @ocaml.doc("<p>The stateful rules or stateless rules for the rule group. </p>") @as("RulesSource")
  rulesSource: rulesSource,
  @ocaml.doc("<p>Settings that are available for use in the rules in the rule group. You can only use
         these for stateful rule groups. </p>")
  @as("RuleVariables")
  ruleVariables: option<ruleVariables>,
}
@ocaml.doc("<p>This is the API Reference for AWS Network Firewall. This guide is for developers who need
         detailed information about the Network Firewall API actions, data types, and errors. </p>
         <ul>
            <li>
               <p>The REST API requires you to handle connection details, such as calculating
               signatures, handling request retries, and error handling. For general information
               about using the AWS REST APIs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-apis.html\">AWS APIs</a>. </p>
               <p>To access Network Firewall using the REST API endpoint:
                  <code>https://network-firewall.<region>.amazonaws.com </code>
               </p>
            </li>
            <li>
               <p>Alternatively, you can use one of the AWS SDKs to access an API that's tailored to
               the programming language or platform that you're using. For more information, see
                  <a href=\"http://aws.amazon.com/tools/#SDKs\">AWS SDKs</a>.</p>
            </li>
            <li>
               <p>For descriptions of Network Firewall features, including and step-by-step
               instructions on how to use them through the Network Firewall console, see the <a href=\"https://docs.aws.amazon.com/network-firewall/latest/developerguide/\">Network Firewall Developer
                  Guide</a>.</p>
            </li>
         </ul>
         <p>Network Firewall is a stateful, managed, network firewall and intrusion detection and
         prevention service for Amazon Virtual Private Cloud (Amazon VPC). With Network Firewall, you can filter traffic at the
         perimeter of your VPC. This includes filtering traffic going to and coming from an internet
         gateway, NAT gateway, or over VPN or AWS Direct Connect. Network Firewall uses rules that are compatible
          with Suricata, a free, open source intrusion detection system (IDS) engine. For information about Suricata, 
          see the <a href=\"https://suricata-ids.org/\">Suricata website</a>.</p>
         <p>You can use Network Firewall to monitor and protect your VPC traffic in a number of ways.
         The following are just a few examples: </p>
         <ul>
            <li>
               <p>Allow domains or IP addresses for known AWS service endpoints, such as Amazon S3, and
               block all other forms of traffic.</p>
            </li>
            <li>
               <p>Use custom lists of known bad domains to limit the types of domain names that your
               applications can access.</p>
            </li>
            <li>
               <p>Perform deep packet inspection on traffic entering or leaving your VPC.</p>
            </li>
            <li>
               <p>Use stateful protocol detection to filter protocols like HTTPS, regardless of the
               port used.</p>
            </li>
         </ul>
         <p>To enable Network Firewall for your VPCs, you perform steps in both Amazon VPC and in
         Network Firewall. For information about using Amazon VPC, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/\">Amazon VPC User Guide</a>.</p>
         <p>To start using Network Firewall, do the following: </p>
         <ol>
            <li>
               <p>(Optional) If you don't already have a VPC that you want to protect, create it in
               Amazon VPC. </p>
            </li>
            <li>
               <p>In Amazon VPC, in each Availability Zone where you want to have a firewall endpoint, create a
               subnet for the sole use of Network Firewall. </p>
            </li>
            <li>
               <p>In Network Firewall, create stateless and stateful rule groups, 
                 to define the components of the network traffic filtering behavior that you want your firewall to have. </p>
            </li>
            <li>
               <p>In Network Firewall, create a firewall policy that uses your rule groups and
                 specifies additional default traffic filtering behavior. </p>
            </li>
            <li>
               <p>In Network Firewall, create a firewall and specify your new firewall policy and 
                 VPC subnets. Network Firewall creates a firewall endpoint in each subnet that you
               specify, with the behavior that's defined in the firewall policy.</p>
            </li>
            <li>
               <p>In Amazon VPC, use ingress routing enhancements to route traffic through the new firewall
               endpoints.</p>
            </li>
         </ol>")
module UpdateSubnetChangeProtection = {
  type t
  type request = {
    @ocaml.doc("<p>A setting indicating whether the firewall is protected against changes to the subnet associations. 
         Use this setting to protect against
         accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>")
    @as("SubnetChangeProtection")
    subnetChangeProtection: boolean_,
    @ocaml.doc("<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p> 
          <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallArn")
    firewallArn: option<resourceArn>,
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
  }
  type response = {
    @ocaml.doc("<p>A setting indicating whether the firewall is protected against changes to the subnet associations. 
         Use this setting to protect against
         accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>")
    @as("SubnetChangeProtection")
    subnetChangeProtection: option<boolean_>,
    @ocaml.doc(
      "<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>"
    )
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p>") @as("FirewallArn")
    firewallArn: option<resourceArn>,
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "UpdateSubnetChangeProtectionCommand"
  let make = (~subnetChangeProtection, ~firewallName=?, ~firewallArn=?, ~updateToken=?, ()) =>
    new({
      subnetChangeProtection: subnetChangeProtection,
      firewallName: firewallName,
      firewallArn: firewallArn,
      updateToken: updateToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFirewallPolicyChangeProtection = {
  type t
  type request = {
    @ocaml.doc("<p>A setting indicating whether the firewall is protected against a change to the firewall policy association. 
         Use this setting to protect against
         accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>")
    @as("FirewallPolicyChangeProtection")
    firewallPolicyChangeProtection: boolean_,
    @ocaml.doc("<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallArn")
    firewallArn: option<resourceArn>,
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
  }
  type response = {
    @ocaml.doc("<p>A setting indicating whether the firewall is protected against a change to the firewall policy association. 
         Use this setting to protect against
         accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>")
    @as("FirewallPolicyChangeProtection")
    firewallPolicyChangeProtection: option<boolean_>,
    @ocaml.doc(
      "<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>"
    )
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p>") @as("FirewallArn")
    firewallArn: option<resourceArn>,
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "UpdateFirewallPolicyChangeProtectionCommand"
  let make = (
    ~firewallPolicyChangeProtection,
    ~firewallName=?,
    ~firewallArn=?,
    ~updateToken=?,
    (),
  ) =>
    new({
      firewallPolicyChangeProtection: firewallPolicyChangeProtection,
      firewallName: firewallName,
      firewallArn: firewallArn,
      updateToken: updateToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFirewallDescription = {
  type t
  type request = {
    @ocaml.doc("<p>The new description for the firewall. If you omit this setting, Network Firewall removes
         the description for the firewall.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallArn")
    firewallArn: option<resourceArn>,
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
  }
  type response = {
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
    @ocaml.doc("<p>A description of the firewall.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc(
      "<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>"
    )
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p>") @as("FirewallArn")
    firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "UpdateFirewallDescriptionCommand"
  let make = (~description=?, ~firewallName=?, ~firewallArn=?, ~updateToken=?, ()) =>
    new({
      description: description,
      firewallName: firewallName,
      firewallArn: firewallArn,
      updateToken: updateToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFirewallDeleteProtection = {
  type t
  type request = {
    @ocaml.doc("<p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
         that the firewall is protected against deletion. Use this setting to protect against
         accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>")
    @as("DeleteProtection")
    deleteProtection: boolean_,
    @ocaml.doc("<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallArn")
    firewallArn: option<resourceArn>,
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
  }
  type response = {
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
    @ocaml.doc("<p></p>") @as("DeleteProtection") deleteProtection: option<boolean_>,
    @ocaml.doc(
      "<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>"
    )
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p>") @as("FirewallArn")
    firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "UpdateFirewallDeleteProtectionCommand"
  let make = (~deleteProtection, ~firewallName=?, ~firewallArn=?, ~updateToken=?, ()) =>
    new({
      deleteProtection: deleteProtection,
      firewallName: firewallName,
      firewallArn: firewallArn,
      updateToken: updateToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS Identity and Access Management policy statement that lists the accounts that you want to share your rule group or firewall policy with 
           and the operations that you want the accounts to be able to perform. </p>
         <p>For a rule group resource, you can specify the following operations in the Actions section of the statement:</p>
         <ul>
            <li>
               <p>network-firewall:CreateFirewallPolicy</p>
            </li>
            <li>
               <p>network-firewall:UpdateFirewallPolicy</p>
            </li>
            <li>
               <p>network-firewall:ListRuleGroups</p>
            </li>
         </ul>
         <p>For a firewall policy resource, you can specify the following operations in the Actions section of the statement:</p>
         <ul>
            <li>
               <p>network-firewall:CreateFirewall</p>
            </li>
            <li>
               <p>network-firewall:UpdateFirewall</p>
            </li>
            <li>
               <p>network-firewall:AssociateFirewallPolicy</p>
            </li>
            <li>
               <p>network-firewall:ListFirewallPolicies</p>
            </li>
         </ul>
         <p>In the Resource section of the statement, you specify the ARNs for the rule groups and firewall policies that you want to share with the account that you specified in <code>Arn</code>.</p>")
    @as("Policy")
    policy: policyString,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the account that you want to share rule groups and firewall policies with.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "PutResourcePolicyCommand"
  let make = (~policy, ~resourceArn, ()) => new({policy: policy, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeResourcePolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the rule group or firewall policy whose resource policy you want to retrieve. </p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The AWS Identity and Access Management policy for the resource. </p>")
    @as("Policy")
    policy: option<policyString>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "DescribeResourcePolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the rule group or firewall policy whose resource policy you want to delete. </p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "DeleteResourcePolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateFirewallPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall policy.</p>")
    @as("FirewallPolicyArn")
    firewallPolicyArn: resourceArn,
    @ocaml.doc("<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallArn")
    firewallArn: option<resourceArn>,
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
  }
  type response = {
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall policy.</p>")
    @as("FirewallPolicyArn")
    firewallPolicyArn: option<resourceArn>,
    @ocaml.doc(
      "<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>"
    )
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p>") @as("FirewallArn")
    firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "AssociateFirewallPolicyCommand"
  let make = (~firewallPolicyArn, ~firewallName=?, ~firewallArn=?, ~updateToken=?, ()) =>
    new({
      firewallPolicyArn: firewallPolicyArn,
      firewallName: firewallName,
      firewallArn: firewallArn,
      updateToken: updateToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-network-firewall") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
    @ocaml.doc("<p>The maximum number of objects that you want Network Firewall to return for this request. If more 
          objects are available, in the response, Network Firewall provides a 
         <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>")
    @as("MaxResults")
    maxResults: option<tagsPaginationMaxResults>,
    @ocaml.doc("<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
         for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code> 
         value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>The tags that are associated with the resource. </p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
         for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code> 
         value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({resourceArn: resourceArn, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRuleGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects that you want Network Firewall to return for this request. If more 
          objects are available, in the response, Network Firewall provides a 
         <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>")
    @as("MaxResults")
    maxResults: option<paginationMaxResults>,
    @ocaml.doc("<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
         for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code> 
         value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>The rule group metadata objects that you've defined. Depending on your setting for max
         results and the number of rule groups, this might not be the full list. </p>")
    @as("RuleGroups")
    ruleGroups: option<ruleGroups>,
    @ocaml.doc("<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
         for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code> 
         value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "ListRuleGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFirewalls = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects that you want Network Firewall to return for this request. If more 
          objects are available, in the response, Network Firewall provides a 
         <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>")
    @as("MaxResults")
    maxResults: option<paginationMaxResults>,
    @ocaml.doc("<p>The unique identifiers of the VPCs that you want Network Firewall to retrieve the firewalls
         for. Leave this blank to retrieve all firewalls that you have defined.</p>")
    @as("VpcIds")
    vpcIds: option<vpcIds>,
    @ocaml.doc("<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
         for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code> 
         value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>The firewall metadata objects for the VPCs that you specified. Depending on your setting
         for max results and the number of firewalls you have, a single call might not be the full
         list. </p>")
    @as("Firewalls")
    firewalls: option<firewalls>,
    @ocaml.doc("<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
         for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code> 
         value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "ListFirewallsCommand"
  let make = (~maxResults=?, ~vpcIds=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, vpcIds: vpcIds, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFirewallPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of objects that you want Network Firewall to return for this request. If more 
          objects are available, in the response, Network Firewall provides a 
         <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>")
    @as("MaxResults")
    maxResults: option<paginationMaxResults>,
    @ocaml.doc("<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
         for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code> 
         value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>The metadata for the firewall policies. Depending on your setting for max results and
         the number of firewall policies that you have, this might not be the full list. </p>")
    @as("FirewallPolicies")
    firewallPolicies: option<firewallPolicies>,
    @ocaml.doc("<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
         for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code> 
         value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "ListFirewallPoliciesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateSubnets = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifiers for the subnets that you want to disassociate. </p>")
    @as("SubnetIds")
    subnetIds: azSubnets,
    @ocaml.doc("<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallArn")
    firewallArn: option<resourceArn>,
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
  }
  type response = {
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
    @ocaml.doc("<p>The IDs of the subnets that are associated with the firewall. </p>")
    @as("SubnetMappings")
    subnetMappings: option<subnetMappings>,
    @ocaml.doc(
      "<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>"
    )
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p>") @as("FirewallArn")
    firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "DisassociateSubnetsCommand"
  let make = (~subnetIds, ~firewallName=?, ~firewallArn=?, ~updateToken=?, ()) =>
    new({
      subnetIds: subnetIds,
      firewallName: firewallName,
      firewallArn: firewallArn,
      updateToken: updateToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateSubnets = {
  type t
  type request = {
    @ocaml.doc("<p>The IDs of the subnets that you want to associate with the firewall. </p>")
    @as("SubnetMappings")
    subnetMappings: subnetMappings,
    @ocaml.doc("<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallArn")
    firewallArn: option<resourceArn>,
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
  }
  type response = {
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
    @ocaml.doc("<p>The IDs of the subnets that are associated with the firewall. </p>")
    @as("SubnetMappings")
    subnetMappings: option<subnetMappings>,
    @ocaml.doc(
      "<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>"
    )
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p>") @as("FirewallArn")
    firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "AssociateSubnetsCommand"
  let make = (~subnetMappings, ~firewallName=?, ~firewallArn=?, ~updateToken=?, ()) =>
    new({
      subnetMappings: subnetMappings,
      firewallName: firewallName,
      firewallArn: firewallArn,
      updateToken: updateToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains 
stateless rules. If it is stateful, it contains stateful rules. </p> 
         <note>
            <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
         </note>")
    @as("Type")
    type_: option<ruleGroupType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule group.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("RuleGroupArn")
    ruleGroupArn: option<resourceArn>,
    @ocaml.doc("<p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("RuleGroupName")
    ruleGroupName: option<resourceName>,
  }
  type response = {
    @ocaml.doc(
      "<p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>"
    )
    @as("RuleGroupResponse")
    ruleGroupResponse: ruleGroupResponse,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "DeleteRuleGroupCommand"
  let make = (~type_=?, ~ruleGroupArn=?, ~ruleGroupName=?, ()) =>
    new({type_: type_, ruleGroupArn: ruleGroupArn, ruleGroupName: ruleGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFirewallPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall policy.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallPolicyArn")
    firewallPolicyArn: option<resourceArn>,
    @ocaml.doc("<p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallPolicyName")
    firewallPolicyName: option<resourceName>,
  }
  type response = {
    @ocaml.doc("<p>The object containing the definition of the <a>FirewallPolicyResponse</a>
         that you asked to delete. </p>")
    @as("FirewallPolicyResponse")
    firewallPolicyResponse: firewallPolicyResponse,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "DeleteFirewallPolicyCommand"
  let make = (~firewallPolicyArn=?, ~firewallPolicyName=?, ()) =>
    new({firewallPolicyArn: firewallPolicyArn, firewallPolicyName: firewallPolicyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLoggingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Defines how Network Firewall performs logging for a firewall. If you omit this setting,
         Network Firewall disables logging for the firewall.</p>")
    @as("LoggingConfiguration")
    loggingConfiguration: option<loggingConfiguration>,
    @ocaml.doc("<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallArn")
    firewallArn: option<resourceArn>,
  }
  type response = {
    @as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>,
    @ocaml.doc(
      "<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>"
    )
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p>") @as("FirewallArn")
    firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "UpdateLoggingConfigurationCommand"
  let make = (~loggingConfiguration=?, ~firewallName=?, ~firewallArn=?, ()) =>
    new({
      loggingConfiguration: loggingConfiguration,
      firewallName: firewallName,
      firewallArn: firewallArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoggingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallName")
    firewallName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallArn")
    firewallArn: option<resourceArn>,
  }
  type response = {
    @as("LoggingConfiguration") loggingConfiguration: option<loggingConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p>") @as("FirewallArn")
    firewallArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "DescribeLoggingConfigurationCommand"
  let make = (~firewallName=?, ~firewallArn=?, ()) =>
    new({firewallName: firewallName, firewallArn: firewallArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFirewall = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallArn")
    firewallArn: option<resourceArn>,
    @ocaml.doc("<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallName")
    firewallName: option<resourceName>,
  }
  type response = {
    @ocaml.doc(
      "<p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>"
    )
    @as("FirewallStatus")
    firewallStatus: option<firewallStatus>,
    @ocaml.doc(
      "<p>The configuration settings for the firewall. These settings include the firewall policy and the subnets in your VPC to use for the firewall endpoints. </p>"
    )
    @as("Firewall")
    firewall: option<firewall>,
    @ocaml.doc("<p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
         <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
         <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: option<updateToken>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "DescribeFirewallCommand"
  let make = (~firewallArn=?, ~firewallName=?, ()) =>
    new({firewallArn: firewallArn, firewallName: firewallName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFirewall = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallArn")
    firewallArn: option<resourceArn>,
    @ocaml.doc("<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallName")
    firewallName: option<resourceName>,
  }
  type response = {
    @as("FirewallStatus") firewallStatus: option<firewallStatus>,
    @as("Firewall") firewall: option<firewall>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "DeleteFirewallCommand"
  let make = (~firewallArn=?, ~firewallName=?, ()) =>
    new({firewallArn: firewallArn, firewallName: firewallName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFirewall = {
  type t
  type request = {
    @ocaml.doc("<p>The key:value pairs to associate with the resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A description of the firewall.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A setting indicating whether the firewall is protected against a change to the firewall policy association. 
         Use this setting to protect against
         accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>")
    @as("FirewallPolicyChangeProtection")
    firewallPolicyChangeProtection: option<boolean_>,
    @ocaml.doc("<p>A setting indicating whether the firewall is protected against changes to the subnet associations. 
         Use this setting to protect against
         accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>")
    @as("SubnetChangeProtection")
    subnetChangeProtection: option<boolean_>,
    @ocaml.doc("<p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
         that the firewall is protected against deletion. Use this setting to protect against
         accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>")
    @as("DeleteProtection")
    deleteProtection: option<boolean_>,
    @ocaml.doc("<p>The public subnets to use for your Network Firewall firewalls. Each subnet must belong to a
         different Availability Zone in the VPC. Network Firewall creates a firewall endpoint in each
         subnet. </p>")
    @as("SubnetMappings")
    subnetMappings: subnetMappings,
    @ocaml.doc("<p>The unique identifier of the VPC where Network Firewall should create the firewall. </p>
         <p>You can't change this setting after you create the firewall. </p>")
    @as("VpcId")
    vpcId: vpcId,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the <a>FirewallPolicy</a> that you want to
         use for the firewall.</p>")
    @as("FirewallPolicyArn")
    firewallPolicyArn: resourceArn,
    @ocaml.doc(
      "<p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>"
    )
    @as("FirewallName")
    firewallName: resourceName,
  }
  type response = {
    @ocaml.doc(
      "<p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>"
    )
    @as("FirewallStatus")
    firewallStatus: option<firewallStatus>,
    @ocaml.doc(
      "<p>The configuration settings for the firewall. These settings include the firewall policy and the subnets in your VPC to use for the firewall endpoints. </p>"
    )
    @as("Firewall")
    firewall: option<firewall>,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "CreateFirewallCommand"
  let make = (
    ~subnetMappings,
    ~vpcId,
    ~firewallPolicyArn,
    ~firewallName,
    ~tags=?,
    ~description=?,
    ~firewallPolicyChangeProtection=?,
    ~subnetChangeProtection=?,
    ~deleteProtection=?,
    (),
  ) =>
    new({
      tags: tags,
      description: description,
      firewallPolicyChangeProtection: firewallPolicyChangeProtection,
      subnetChangeProtection: subnetChangeProtection,
      deleteProtection: deleteProtection,
      subnetMappings: subnetMappings,
      vpcId: vpcId,
      firewallPolicyArn: firewallPolicyArn,
      firewallName: firewallName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFirewallPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
         <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully, 
         but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with 
         dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have 
         the required permissions to run the request and that your request parameters are valid. </p>
         <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>")
    @as("DryRun")
    dryRun: option<boolean_>,
    @ocaml.doc("<p>A description of the firewall policy.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The updated firewall policy to use for the firewall. </p>") @as("FirewallPolicy")
    firewallPolicy: firewallPolicy,
    @ocaml.doc("<p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallPolicyName")
    firewallPolicyName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall policy.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallPolicyArn")
    firewallPolicyArn: option<resourceArn>,
    @ocaml.doc("<p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
         <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: updateToken,
  }
  type response = {
    @ocaml.doc(
      "<p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>"
    )
    @as("FirewallPolicyResponse")
    firewallPolicyResponse: firewallPolicyResponse,
    @ocaml.doc("<p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
         <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "UpdateFirewallPolicyCommand"
  let make = (
    ~firewallPolicy,
    ~updateToken,
    ~dryRun=?,
    ~description=?,
    ~firewallPolicyName=?,
    ~firewallPolicyArn=?,
    (),
  ) =>
    new({
      dryRun: dryRun,
      description: description,
      firewallPolicy: firewallPolicy,
      firewallPolicyName: firewallPolicyName,
      firewallPolicyArn: firewallPolicyArn,
      updateToken: updateToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFirewallPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the firewall policy.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallPolicyArn")
    firewallPolicyArn: option<resourceArn>,
    @ocaml.doc("<p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("FirewallPolicyName")
    firewallPolicyName: option<resourceName>,
  }
  type response = {
    @ocaml.doc("<p>The policy for the specified firewall policy. </p>") @as("FirewallPolicy")
    firewallPolicy: option<firewallPolicy>,
    @ocaml.doc(
      "<p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>"
    )
    @as("FirewallPolicyResponse")
    firewallPolicyResponse: firewallPolicyResponse,
    @ocaml.doc("<p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
         <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "DescribeFirewallPolicyCommand"
  let make = (~firewallPolicyArn=?, ~firewallPolicyName=?, ()) =>
    new({firewallPolicyArn: firewallPolicyArn, firewallPolicyName: firewallPolicyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFirewallPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
         <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully, 
         but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with 
         dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have 
         the required permissions to run the request and that your request parameters are valid. </p>
         <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>")
    @as("DryRun")
    dryRun: option<boolean_>,
    @ocaml.doc("<p>The key:value pairs to associate with the resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A description of the firewall policy.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The rule groups and policy actions to use in the firewall policy.</p>")
    @as("FirewallPolicy")
    firewallPolicy: firewallPolicy,
    @ocaml.doc(
      "<p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>"
    )
    @as("FirewallPolicyName")
    firewallPolicyName: resourceName,
  }
  type response = {
    @ocaml.doc(
      "<p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>"
    )
    @as("FirewallPolicyResponse")
    firewallPolicyResponse: firewallPolicyResponse,
    @ocaml.doc("<p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
         <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "CreateFirewallPolicyCommand"
  let make = (~firewallPolicy, ~firewallPolicyName, ~dryRun=?, ~tags=?, ~description=?, ()) =>
    new({
      dryRun: dryRun,
      tags: tags,
      description: description,
      firewallPolicy: firewallPolicy,
      firewallPolicyName: firewallPolicyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
         <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully, 
         but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with 
         dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have 
         the required permissions to run the request and that your request parameters are valid. </p>
         <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>")
    @as("DryRun")
    dryRun: option<boolean_>,
    @ocaml.doc("<p>A description of the rule group. </p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains 
stateless rules. If it is stateful, it contains stateful rules. </p> 
         <note>
            <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
         </note>")
    @as("Type")
    type_: option<ruleGroupType>,
    @ocaml.doc("<p>A string containing stateful rule group rules specifications in Suricata flat format, with one rule
per line. Use this to import your existing Suricata compatible rule groups. </p>
         <note>
            <p>You must provide either this rules setting or a populated <code>RuleGroup</code> setting, but not both. </p>
         </note>  
         <p>You can provide your rule group specification in Suricata flat format through this setting when you create or update your rule group. The call 
response returns a <a>RuleGroup</a> object that Network Firewall has populated from your string. </p>")
    @as("Rules")
    rules: option<rulesString>,
    @ocaml.doc("<p>An object that defines the rule group rules. </p>
         <note>
            <p>You must provide either this rule group setting or a <code>Rules</code> setting, but not both. </p>
         </note>")
    @as("RuleGroup")
    ruleGroup: option<ruleGroup>,
    @ocaml.doc("<p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("RuleGroupName")
    ruleGroupName: option<resourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule group.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("RuleGroupArn")
    ruleGroupArn: option<resourceArn>,
    @ocaml.doc("<p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
         <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: updateToken,
  }
  type response = {
    @ocaml.doc(
      "<p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>"
    )
    @as("RuleGroupResponse")
    ruleGroupResponse: ruleGroupResponse,
    @ocaml.doc("<p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
         <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "UpdateRuleGroupCommand"
  let make = (
    ~updateToken,
    ~dryRun=?,
    ~description=?,
    ~type_=?,
    ~rules=?,
    ~ruleGroup=?,
    ~ruleGroupName=?,
    ~ruleGroupArn=?,
    (),
  ) =>
    new({
      dryRun: dryRun,
      description: description,
      type_: type_,
      rules: rules,
      ruleGroup: ruleGroup,
      ruleGroupName: ruleGroupName,
      ruleGroupArn: ruleGroupArn,
      updateToken: updateToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains 
stateless rules. If it is stateful, it contains stateful rules. </p> 
         <note>
            <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
         </note>")
    @as("Type")
    type_: option<ruleGroupType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the rule group.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("RuleGroupArn")
    ruleGroupArn: option<resourceArn>,
    @ocaml.doc("<p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p> 
         <p>You must specify the ARN or the name, and you can specify both. </p>")
    @as("RuleGroupName")
    ruleGroupName: option<resourceName>,
  }
  type response = {
    @ocaml.doc(
      "<p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>"
    )
    @as("RuleGroupResponse")
    ruleGroupResponse: ruleGroupResponse,
    @ocaml.doc("<p>The object that defines the rules in a rule group. This, along with <a>RuleGroupResponse</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p> 
         <p>AWS Network Firewall uses a rule group to inspect and control network traffic. 
    You define stateless rule groups to inspect individual packets and you define stateful rule groups to inspect packets in the context of their
    traffic flow. </p>
         <p>To use a rule group, you include it by reference in an Network Firewall firewall policy, then you use the policy in a firewall. You can reference a rule group from 
    more than one firewall policy, and you can use a firewall policy in more than one firewall. </p>")
    @as("RuleGroup")
    ruleGroup: option<ruleGroup>,
    @ocaml.doc("<p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
         <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "DescribeRuleGroupCommand"
  let make = (~type_=?, ~ruleGroupArn=?, ~ruleGroupName=?, ()) =>
    new({type_: type_, ruleGroupArn: ruleGroupArn, ruleGroupName: ruleGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRuleGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
         <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully, 
         but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with 
         dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have 
         the required permissions to run the request and that your request parameters are valid. </p>
         <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>")
    @as("DryRun")
    dryRun: option<boolean_>,
    @ocaml.doc("<p>The key:value pairs to associate with the resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The maximum operating resources that this rule group can use. Rule group capacity is fixed at creation. 
      When you update a rule group, you are limited to this capacity. When you reference a rule group 
      from a firewall policy, Network Firewall reserves this capacity for the rule group. </p> 
         <p>You can retrieve the capacity that would be required for a rule group before you create the rule group by calling 
      <a>CreateRuleGroup</a> with <code>DryRun</code> set to <code>TRUE</code>. </p> 
         <note>
            <p>You can't change or exceed this capacity when you update the rule group, so leave
            room for your rule group to grow. </p>
         </note>
         <p>
            <b>Capacity for a stateless rule group</b>
         </p>
         <p>For a stateless rule group, the capacity required is the sum of the capacity
         requirements of the individual rules that you expect to have in the rule group. </p>
         <p>To calculate the capacity requirement of a single rule, multiply the capacity
         requirement values of each of the rule's match settings:</p>
         <ul>
            <li>
               <p>A match setting with no criteria specified has a value of 1. </p>
            </li>
            <li>
               <p>A match setting with <code>Any</code> specified has a value of 1. </p>
            </li>
            <li>
               <p>All other match settings have a value equal to the number of elements provided in
               the setting. For example, a protocol setting [\"UDP\"] and a source setting
               [\"10.0.0.0/24\"] each have a value of 1. A protocol setting [\"UDP\",\"TCP\"] has a value
               of 2. A source setting [\"10.0.0.0/24\",\"10.0.0.1/24\",\"10.0.0.2/24\"] has a value of 3.
            </p>
            </li>
         </ul>
         <p>A rule with no criteria specified in any of its match settings has a capacity
         requirement of 1. A rule with protocol setting [\"UDP\",\"TCP\"], source setting
         [\"10.0.0.0/24\",\"10.0.0.1/24\",\"10.0.0.2/24\"], and a single specification or no specification
         for each of the other match settings has a capacity requirement of 6. </p>
         <p>
            <b>Capacity for a stateful rule group</b>
         </p>
         <p>For
         a stateful rule group, the minimum capacity required is the number of individual rules that
         you expect to have in the rule group. </p>")
    @as("Capacity")
    capacity: ruleCapacity,
    @ocaml.doc("<p>A description of the rule group. </p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains 
stateless rules. If it is stateful, it contains stateful rules. </p>")
    @as("Type")
    type_: ruleGroupType,
    @ocaml.doc("<p>A string containing stateful rule group rules specifications in Suricata flat format, with one rule
per line. Use this to import your existing Suricata compatible rule groups. </p>
         <note>
            <p>You must provide either this rules setting or a populated <code>RuleGroup</code> setting, but not both. </p>
         </note>  
         <p>You can provide your rule group specification in Suricata flat format through this setting when you create or update your rule group. The call 
response returns a <a>RuleGroup</a> object that Network Firewall has populated from your string. </p>")
    @as("Rules")
    rules: option<rulesString>,
    @ocaml.doc("<p>An object that defines the rule group rules. </p>
         <note>
            <p>You must provide either this rule group setting or a <code>Rules</code> setting, but not both. </p>
         </note>")
    @as("RuleGroup")
    ruleGroup: option<ruleGroup>,
    @ocaml.doc(
      "<p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>"
    )
    @as("RuleGroupName")
    ruleGroupName: resourceName,
  }
  type response = {
    @ocaml.doc(
      "<p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>"
    )
    @as("RuleGroupResponse")
    ruleGroupResponse: ruleGroupResponse,
    @ocaml.doc("<p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
         <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>")
    @as("UpdateToken")
    updateToken: updateToken,
  }
  @module("@aws-sdk/client-network-firewall") @new
  external new: request => t = "CreateRuleGroupCommand"
  let make = (
    ~capacity,
    ~type_,
    ~ruleGroupName,
    ~dryRun=?,
    ~tags=?,
    ~description=?,
    ~rules=?,
    ~ruleGroup=?,
    (),
  ) =>
    new({
      dryRun: dryRun,
      tags: tags,
      capacity: capacity,
      description: description,
      type_: type_,
      rules: rules,
      ruleGroup: ruleGroup,
      ruleGroupName: ruleGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
