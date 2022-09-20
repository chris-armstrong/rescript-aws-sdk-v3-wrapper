type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-shield") @new
external createClient: unit => awsServiceClient = "ShieldClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type validationExceptionReason = [
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
]
type unit_ = [
  | @as("REQUESTS") #REQUESTS
  | @as("PACKETS") #PACKETS
  | @as("BYTES") #BYTES
  | @as("BITS") #BITS
]
type token = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type subscriptionState = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type subResourceType = [@as("URL") #URL | @as("IP") #IP]
type string_ = string
type roleArn = string
type resourceArn = string
type protectionName = string
type protectionId = string
type protectionGroupPattern = [
  | @as("BY_RESOURCE_TYPE") #BY_RESOURCE_TYPE
  | @as("ARBITRARY") #ARBITRARY
  | @as("ALL") #ALL
]
type protectionGroupId = string
type protectionGroupAggregation = [@as("MAX") #MAX | @as("MEAN") #MEAN | @as("SUM") #SUM]
type protectedResourceType = [
  | @as("GLOBAL_ACCELERATOR") #GLOBAL_ACCELERATOR
  | @as("APPLICATION_LOAD_BALANCER") #APPLICATION_LOAD_BALANCER
  | @as("CLASSIC_LOAD_BALANCER") #CLASSIC_LOAD_BALANCER
  | @as("ELASTIC_IP_ALLOCATION") #ELASTIC_IP_ALLOCATION
  | @as("ROUTE_53_HOSTED_ZONE") #ROUTE_53_HOSTED_ZONE
  | @as("CLOUDFRONT_DISTRIBUTION") #CLOUDFRONT_DISTRIBUTION
]
type proactiveEngagementStatus = [
  | @as("PENDING") #PENDING
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
]
type phoneNumber = string
type maxResults = int
type long = float
type logBucket = string
type limitType = string
type limitNumber = float
type integer_ = int
type healthCheckId = string
type healthCheckArn = string
type emailAddress = string
type durationInSeconds = float
type double = float
@ocaml.doc("<p>Specifies that Shield Advanced should configure its WAF rules with the WAF <code>Count</code> action. </p>
            <p>This is only used in the context of the <code>ResponseAction</code> setting. </p> 
         <p>JSON specification: <code>\"Count\": {}</code>
         </p>")
type countAction = {.}
type contactNotes = string
@ocaml.doc("<p>Specifies that Shield Advanced should configure its WAF rules with the WAF <code>Block</code> action. </p>
            <p>This is only used in the context of the <code>ResponseAction</code> setting. </p> 
         <p>JSON specification: <code>\"Block\": {}</code>
         </p>")
type blockAction = {.}
type autoRenew = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type attackTimestamp = Js.Date.t
type attackPropertyIdentifier = [
  | @as("WORDPRESS_PINGBACK_SOURCE") #WORDPRESS_PINGBACK_SOURCE
  | @as("WORDPRESS_PINGBACK_REFLECTOR") #WORDPRESS_PINGBACK_REFLECTOR
  | @as("SOURCE_USER_AGENT") #SOURCE_USER_AGENT
  | @as("SOURCE_IP_ADDRESS") #SOURCE_IP_ADDRESS
  | @as("SOURCE_COUNTRY") #SOURCE_COUNTRY
  | @as("SOURCE_ASN") #SOURCE_ASN
  | @as("REFERRER") #REFERRER
  | @as("DESTINATION_URL") #DESTINATION_URL
]
type attackLayer = [@as("APPLICATION") #APPLICATION | @as("NETWORK") #NETWORK]
type attackId = string
type applicationLayerAutomaticResponseStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc(
  "<p>Provides information about a particular parameter passed inside a request that resulted in an exception.</p>"
)
type validationExceptionField = {
  @ocaml.doc("<p>The message describing why the parameter failed validation.</p>") message: string_,
  @ocaml.doc("<p>The name of the parameter that failed validation.</p>") name: string_,
}
@ocaml.doc("<p>The time range. </p>")
type timeRange = {
  @ocaml.doc("<p>The end time, in Unix time in seconds. </p>") @as("ToExclusive")
  toExclusive: option<timestamp_>,
  @ocaml.doc("<p>The start time, in Unix time in seconds. </p>") @as("FromInclusive")
  fromInclusive: option<timestamp_>,
}
type tagKeyList = array<tagKey>
@ocaml.doc(
  "<p>A tag associated with an Amazon Web Services resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing or other management. Typically, the tag key represents a category, such as \"environment\", and the tag value represents a specific value within that category, such as \"test,\" \"development,\" or \"production\". Or you might set the tag key to \"customer\" and the value to the customer name or ID. You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a resource.</p>"
)
type tag = {
  @ocaml.doc(
    "<p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as \"companyA\" or \"companyB.\" Tag values are case-sensitive.</p>"
  )
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc(
    "<p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as \"customer.\" Tag keys are case-sensitive.</p>"
  )
  @as("Key")
  key: option<tagKey>,
}
@ocaml.doc("<p>The counter that describes a DDoS attack.</p>")
type summarizedCounter = {
  @ocaml.doc("<p>The unit of the counters.</p>") @as("Unit") unit_: option<string_>,
  @ocaml.doc("<p>The number of counters for a specified time period.</p>") @as("N")
  n: option<integer_>,
  @ocaml.doc("<p>The total of counter values for a specified time period.</p>") @as("Sum")
  sum: option<double>,
  @ocaml.doc("<p>The average value of the counter for a specified time period.</p>") @as("Average")
  average: option<double>,
  @ocaml.doc("<p>The maximum value of the counter for a specified time period.</p>") @as("Max")
  max: option<double>,
  @ocaml.doc("<p>The counter name.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the 
   protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature, 
   when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>")
type responseAction = {
  @ocaml.doc("<p>Specifies that Shield Advanced should configure its WAF rules with the WAF <code>Count</code> action. </p>
         <p>You must specify exactly one action, either <code>Block</code> or <code>Count</code>.</p>")
  @as("Count")
  count: option<countAction>,
  @ocaml.doc("<p>Specifies that Shield Advanced should configure its WAF rules with the WAF <code>Block</code> action. </p>
         <p>You must specify exactly one action, either <code>Block</code> or <code>Count</code>.</p>")
  @as("Block")
  block: option<blockAction>,
}
type resourceArnList = array<resourceArn>
type resourceArnFilterList = array<resourceArn>
type protectionGroupMembers = array<resourceArn>
@ocaml.doc("<p>Limits settings on protection groups with arbitrary pattern type. </p>")
type protectionGroupArbitraryPatternLimits = {
  @ocaml.doc(
    "<p>The maximum number of resources you can specify for a single arbitrary pattern in a protection group.</p>"
  )
  @as("MaxMembers")
  maxMembers: long,
}
@ocaml.doc("<p>The mitigation applied to a DDoS attack.</p>")
type mitigation = {
  @ocaml.doc("<p>The name of the mitigation taken for this attack.</p>") @as("MitigationName")
  mitigationName: option<string_>,
}
type logBucketList = array<logBucket>
@ocaml.doc("<p>Specifies how many protections of a given type you can create.</p>")
type limit = {
  @ocaml.doc(
    "<p>The maximum number of protections that can be created for the specified <code>Type</code>.</p>"
  )
  @as("Max")
  max: option<long>,
  @ocaml.doc("<p>The type of protection.</p>") @as("Type") type_: option<string_>,
}
type healthCheckIds = array<healthCheckId>
@ocaml.doc(
  "<p>Contact information that the SRT can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>"
)
type emergencyContact = {
  @ocaml.doc("<p>Additional notes regarding the contact. </p>") @as("ContactNotes")
  contactNotes: option<contactNotes>,
  @ocaml.doc("<p>The phone number for the contact.</p>") @as("PhoneNumber")
  phoneNumber: option<phoneNumber>,
  @ocaml.doc("<p>The email address for the contact.</p>") @as("EmailAddress")
  emailAddress: emailAddress,
}
@ocaml.doc("<p>A contributor to the attack and their contribution. </p>")
type contributor = {
  @ocaml.doc(
    "<p>The contribution of this contributor expressed in <a>Protection</a> units. For example <code>10,000</code>.</p>"
  )
  @as("Value")
  value: option<long>,
  @ocaml.doc(
    "<p>The name of the contributor. The type of name that you'll find here depends on the <code>AttackPropertyIdentifier</code> setting in the <code>AttackProperty</code> where this contributor is defined. For example, if the <code>AttackPropertyIdentifier</code> is <code>SOURCE_COUNTRY</code>, the <code>Name</code> could be <code>United States</code>.</p>"
  )
  @as("Name")
  name: option<string_>,
}
@ocaml.doc("<p>Statistics objects for the various data types in <a>AttackVolume</a>. </p>")
type attackVolumeStatistics = {
  @ocaml.doc("<p>The maximum attack volume observed for the given unit.</p>") @as("Max")
  max: double,
}
@ocaml.doc("<p>Describes the attack.</p>")
type attackVectorDescription = {
  @ocaml.doc("<p>The attack type. Valid values:</p>
	        <ul>
            <li>
               <p>UDP_TRAFFIC</p>
            </li>
            <li>
               <p>UDP_FRAGMENT</p>
            </li>
            <li>
               <p>GENERIC_UDP_REFLECTION</p>
            </li>
            <li>
               <p>DNS_REFLECTION</p>
            </li>
            <li>
               <p>NTP_REFLECTION</p>
            </li>
            <li>
               <p>CHARGEN_REFLECTION</p>
            </li>
            <li>
               <p>SSDP_REFLECTION</p>
            </li>
            <li>
               <p>PORT_MAPPER</p>
            </li>
            <li>
               <p>RIP_REFLECTION</p>
            </li>
            <li>
               <p>SNMP_REFLECTION</p>
            </li>
            <li>
               <p>MSSQL_REFLECTION</p>
            </li>
            <li>
               <p>NET_BIOS_REFLECTION</p>
            </li>
            <li>
               <p>SYN_FLOOD</p>
            </li>
            <li>
               <p>ACK_FLOOD</p>
            </li>
            <li>
               <p>REQUEST_FLOOD</p> 
            </li>
            <li>
               <p>HTTP_REFLECTION</p>
            </li>
            <li>
               <p>UDS_REFLECTION</p>
            </li>
            <li>
               <p>MEMCACHED_REFLECTION</p>
            </li>
         </ul>")
  @as("VectorType")
  vectorType: string_,
}
type validationExceptionFieldList = array<validationExceptionField>
type topContributors = array<contributor>
type tagList_ = array<tag>
type summarizedCounterList = array<summarizedCounter>
@ocaml.doc(
  "<p>Limits settings by pattern type in the protection groups for your subscription. </p>"
)
type protectionGroupPatternTypeLimits = {
  @ocaml.doc("<p>Limits settings on protection groups with arbitrary pattern type. </p>")
  @as("ArbitraryPatternLimits")
  arbitraryPatternLimits: protectionGroupArbitraryPatternLimits,
}
@ocaml.doc(
  "<p>A grouping of protected resources that you and Shield Advanced can monitor as a collective. This resource grouping improves the accuracy of detection and reduces false positives. </p>"
)
type protectionGroup = {
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the protection group.</p>")
  @as("ProtectionGroupArn")
  protectionGroupArn: option<resourceArn>,
  @ocaml.doc(
    "<p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>"
  )
  @as("Members")
  members: protectionGroupMembers,
  @ocaml.doc("<p>The resource type to include in the protection group. All protected resources of this type are included in the protection group. 
           You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>")
  @as("ResourceType")
  resourceType: option<protectedResourceType>,
  @ocaml.doc(
    "<p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type.</p>"
  )
  @as("Pattern")
  pattern: protectionGroupPattern,
  @ocaml.doc("<p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>
         <ul>
            <li>
               <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>
            </li>
            <li>
               <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>
            </li>
            <li>
               <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront distributions and origin resources for CloudFront distributions.</p>
            </li>
         </ul>")
  @as("Aggregation")
  aggregation: protectionGroupAggregation,
  @ocaml.doc(
    "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>"
  )
  @as("ProtectionGroupId")
  protectionGroupId: protectionGroupId,
}
type mitigationList = array<mitigation>
type limits = array<limit>
type emergencyContactList = array<emergencyContact>
@ocaml.doc(
  "<p>Information about the volume of attacks during the time period, included in an <a>AttackStatisticsDataItem</a>. If the accompanying <code>AttackCount</code> in the statistics object is zero, this setting might be empty.</p>"
)
type attackVolume = {
  @ocaml.doc(
    "<p>A statistics object that uses requests per second as the unit. This is included for application level attacks, and is only available for accounts that are subscribed to Shield Advanced.</p>"
  )
  @as("RequestsPerSecond")
  requestsPerSecond: option<attackVolumeStatistics>,
  @ocaml.doc(
    "<p>A statistics object that uses packets per second as the unit. This is included for network level attacks. </p>"
  )
  @as("PacketsPerSecond")
  packetsPerSecond: option<attackVolumeStatistics>,
  @ocaml.doc(
    "<p>A statistics object that uses bits per second as the unit. This is included for network level attacks. </p>"
  )
  @as("BitsPerSecond")
  bitsPerSecond: option<attackVolumeStatistics>,
}
type attackVectorDescriptionList = array<attackVectorDescription>
@ocaml.doc("<p>The automatic application layer DDoS mitigation settings for a <a>Protection</a>. 
       This configuration determines whether Shield Advanced automatically 
       manages rules in the web ACL in order to respond to application layer events that Shield Advanced determines to be DDoS attacks. </p>")
type applicationLayerAutomaticResponseConfiguration = {
  @as("Action") action: responseAction,
  @ocaml.doc(
    "<p>Indicates whether automatic application layer DDoS mitigation is enabled for the protection. </p>"
  )
  @as("Status")
  status: applicationLayerAutomaticResponseStatus,
}
@ocaml.doc("<p>A summary of information about the attack.</p>")
type summarizedAttackVector = {
  @ocaml.doc("<p>The list of counters that describe the details of the attack.</p>")
  @as("VectorCounters")
  vectorCounters: option<summarizedCounterList>,
  @ocaml.doc("<p>The attack type, for example, SNMP reflection or SYN flood.</p>") @as("VectorType")
  vectorType: string_,
}
@ocaml.doc("<p>Limits settings on protections for your subscription. </p>")
type protectionLimits = {
  @ocaml.doc("<p>The maximum number of resource types that you can specify in a protection.</p>")
  @as("ProtectedResourceTypeLimits")
  protectedResourceTypeLimits: limits,
}
type protectionGroups = array<protectionGroup>
@ocaml.doc("<p>Limits settings on protection groups for your subscription. </p>")
type protectionGroupLimits = {
  @ocaml.doc(
    "<p>Limits settings by pattern type in the protection groups for your subscription. </p>"
  )
  @as("PatternTypeLimits")
  patternTypeLimits: protectionGroupPatternTypeLimits,
  @ocaml.doc("<p>The maximum number of protection groups that you can have at one time. </p>")
  @as("MaxProtectionGroups")
  maxProtectionGroups: long,
}
@ocaml.doc("<p>An object that represents a resource that is under DDoS protection.</p>")
type protection = {
  @ocaml.doc("<p>The automatic application layer DDoS mitigation settings for the protection. 
       This configuration determines whether Shield Advanced automatically 
       manages rules in the web ACL in order to respond to application layer events that Shield Advanced determines to be DDoS attacks. </p>")
  @as("ApplicationLayerAutomaticResponseConfiguration")
  applicationLayerAutomaticResponseConfiguration: option<
    applicationLayerAutomaticResponseConfiguration,
  >,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the protection.</p>") @as("ProtectionArn")
  protectionArn: option<resourceArn>,
  @ocaml.doc(
    "<p>The unique identifier (ID) for the Route 53 health check that's associated with the protection. </p>"
  )
  @as("HealthCheckIds")
  healthCheckIds: option<healthCheckIds>,
  @ocaml.doc(
    "<p>The ARN (Amazon Resource Name) of the Amazon Web Services resource that is protected.</p>"
  )
  @as("ResourceArn")
  resourceArn: option<resourceArn>,
  @ocaml.doc(
    "<p>The name of the protection. For example, <code>My CloudFront distributions</code>.</p>"
  )
  @as("Name")
  name: option<protectionName>,
  @ocaml.doc("<p>The unique identifier (ID) of the protection.</p>") @as("Id")
  id: option<protectionId>,
}
@ocaml.doc("<p>Summarizes all DDoS attacks for a specified time period.</p>")
type attackSummary = {
  @ocaml.doc("<p>The list of attacks for a specified time period.</p>") @as("AttackVectors")
  attackVectors: option<attackVectorDescriptionList>,
  @ocaml.doc("<p>The end time of the attack, in Unix time in seconds. </p>") @as("EndTime")
  endTime: option<attackTimestamp>,
  @ocaml.doc("<p>The start time of the attack, in Unix time in seconds. </p>") @as("StartTime")
  startTime: option<attackTimestamp>,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>")
  @as("ResourceArn")
  resourceArn: option<string_>,
  @ocaml.doc("<p>The unique identifier (ID) of the attack.</p>") @as("AttackId")
  attackId: option<string_>,
}
@ocaml.doc(
  "<p>A single attack statistics data record. This is returned by <a>DescribeAttackStatistics</a> along with a time range indicating the time period that the attack statistics apply to.  </p>"
)
type attackStatisticsDataItem = {
  @ocaml.doc(
    "<p>The number of attacks detected during the time period. This is always present, but might be zero. </p>"
  )
  @as("AttackCount")
  attackCount: long,
  @ocaml.doc(
    "<p>Information about the volume of attacks during the time period. If the accompanying <code>AttackCount</code> is zero, this setting might be empty.</p>"
  )
  @as("AttackVolume")
  attackVolume: option<attackVolume>,
}
@ocaml.doc("<p>Details of a Shield event. This is provided as part of an <a>AttackDetail</a>.</p>")
type attackProperty = {
  @ocaml.doc("<p>The total contributions made to this Shield event by all contributors.</p>")
  @as("Total")
  total: option<long>,
  @ocaml.doc("<p>The unit used for the <code>Contributor</code> 
            <code>Value</code> property. </p>")
  @as("Unit")
  unit_: option<unit_>,
  @ocaml.doc(
    "<p>Contributor objects for the top five contributors to a Shield event. A contributor is a source of traffic that Shield Advanced identifies as responsible for some or all of an event.</p>"
  )
  @as("TopContributors")
  topContributors: option<topContributors>,
  @ocaml.doc("<p>Defines the Shield event property information that is provided. The
            <code>WORDPRESS_PINGBACK_REFLECTOR</code> and <code>WORDPRESS_PINGBACK_SOURCE</code>
         values are valid only for WordPress reflective pingback events.</p>")
  @as("AttackPropertyIdentifier")
  attackPropertyIdentifier: option<attackPropertyIdentifier>,
  @ocaml.doc("<p>The type of Shield event that was observed. <code>NETWORK</code> indicates layer 3 and layer 4 events and <code>APPLICATION</code>
         indicates layer 7 events.</p>
         <p>For infrastructure  
  layer events (L3 and L4 events), you can view metrics for top contributors in Amazon CloudWatch metrics. 
           For more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#set-ddos-alarms\">Shield metrics and alarms</a> 
               in the <i>WAF Developer Guide</i>. </p>")
  @as("AttackLayer")
  attackLayer: option<attackLayer>,
}
type summarizedAttackVectorList = array<summarizedAttackVector>
@ocaml.doc("<p>Limits settings for your subscription. </p>")
type subscriptionLimits = {
  @ocaml.doc("<p>Limits settings on protection groups for your subscription. </p>")
  @as("ProtectionGroupLimits")
  protectionGroupLimits: protectionGroupLimits,
  @ocaml.doc("<p>Limits settings on protections for your subscription. </p>")
  @as("ProtectionLimits")
  protectionLimits: protectionLimits,
}
type protections = array<protection>
type attackSummaries = array<attackSummary>
type attackStatisticsDataList = array<attackStatisticsDataItem>
type attackProperties = array<attackProperty>
@ocaml.doc("<p>Information about the Shield Advanced subscription for an account.</p>")
type subscription = {
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the subscription.</p>") @as("SubscriptionArn")
  subscriptionArn: option<resourceArn>,
  @ocaml.doc("<p>Limits settings for your subscription. </p>") @as("SubscriptionLimits")
  subscriptionLimits: subscriptionLimits,
  @ocaml.doc("<p>If <code>ENABLED</code>, the Shield Response Team (SRT) will use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.</p>
         <p>If <code>PENDING</code>, you have requested proactive engagement and the request is pending. The status changes to <code>ENABLED</code> when your request is fully processed.</p>
         <p>If <code>DISABLED</code>, the SRT will not proactively notify contacts about escalations or to initiate proactive customer support. </p>")
  @as("ProactiveEngagementStatus")
  proactiveEngagementStatus: option<proactiveEngagementStatus>,
  @ocaml.doc("<p>Specifies how many protections of a given type you can create.</p>") @as("Limits")
  limits: option<limits>,
  @ocaml.doc("<p>If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period.</p>
         <p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>")
  @as("AutoRenew")
  autoRenew: option<autoRenew>,
  @ocaml.doc("<p>The length, in seconds, of the Shield Advanced subscription for the account.</p>")
  @as("TimeCommitmentInSeconds")
  timeCommitmentInSeconds: option<durationInSeconds>,
  @ocaml.doc("<p>The date and time your subscription will end.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The start time of the subscription, in Unix time in seconds. </p>")
  @as("StartTime")
  startTime: option<timestamp_>,
}
@ocaml.doc("<p>The attack information for the specified SubResource.</p>")
type subResourceSummary = {
  @ocaml.doc("<p>The counters that describe the details of the attack.</p>") @as("Counters")
  counters: option<summarizedCounterList>,
  @ocaml.doc("<p>The list of attack types and associated counters.</p>") @as("AttackVectors")
  attackVectors: option<summarizedAttackVectorList>,
  @ocaml.doc("<p>The unique identifier (ID) of the <code>SubResource</code>.</p>") @as("Id")
  id: option<string_>,
  @ocaml.doc("<p>The <code>SubResource</code> type.</p>") @as("Type")
  type_: option<subResourceType>,
}
type subResourceSummaryList = array<subResourceSummary>
@ocaml.doc("<p>The details of a DDoS attack.</p>")
type attackDetail = {
  @ocaml.doc("<p>List of mitigation actions taken for the attack.</p>") @as("Mitigations")
  mitigations: option<mitigationList>,
  @ocaml.doc("<p>The array of objects that provide details of the Shield event. </p>
         <p>For infrastructure  
  layer events (L3 and L4 events), you can view metrics for top contributors in Amazon CloudWatch metrics. 
           For more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#set-ddos-alarms\">Shield metrics and alarms</a> 
               in the <i>WAF Developer Guide</i>. </p>")
  @as("AttackProperties")
  attackProperties: option<attackProperties>,
  @ocaml.doc("<p>List of counters that describe the attack for the specified time period.</p>")
  @as("AttackCounters")
  attackCounters: option<summarizedCounterList>,
  @ocaml.doc("<p>The time the attack ended, in Unix time in seconds. </p>") @as("EndTime")
  endTime: option<attackTimestamp>,
  @ocaml.doc("<p>The time the attack started, in Unix time in seconds. </p>") @as("StartTime")
  startTime: option<attackTimestamp>,
  @ocaml.doc(
    "<p>If applicable, additional detail about the resource being attacked, for example, IP address or URL.</p>"
  )
  @as("SubResources")
  subResources: option<subResourceSummaryList>,
  @ocaml.doc("<p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>")
  @as("ResourceArn")
  resourceArn: option<resourceArn>,
  @ocaml.doc("<p>The unique identifier (ID) of the attack.</p>") @as("AttackId")
  attackId: option<attackId>,
}
@ocaml.doc("<fullname>Shield Advanced</fullname>
         <p>This is the <i>Shield Advanced API Reference</i>. This guide is for developers who need detailed information about the Shield Advanced API actions, 
         data types, and errors. For detailed information about WAF and Shield Advanced features and an overview of how to use the WAF and Shield Advanced APIs, see the 
         <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/\">WAF and Shield Developer Guide</a>.</p>")
module GetSubscriptionState = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The status of the subscription.</p>") @as("SubscriptionState")
    subscriptionState: subscriptionState,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "GetSubscriptionStateCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateDRTRole = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "DisassociateDRTRoleCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateDRTLogBucket = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon S3 bucket that contains the logs that you want to share.</p>")
    @as("LogBucket")
    logBucket: logBucket,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DisassociateDRTLogBucketCommand"
  let make = (~logBucket, ()) => new({logBucket: logBucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSubscription = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "DeleteSubscriptionCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProtectionGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>"
    )
    @as("ProtectionGroupId")
    protectionGroupId: protectionGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "DeleteProtectionGroupCommand"
  let make = (~protectionGroupId, ()) => new({protectionGroupId: protectionGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProtection = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) for the <a>Protection</a> object to be
         deleted.</p>")
    @as("ProtectionId")
    protectionId: protectionId,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "DeleteProtectionCommand"
  let make = (~protectionId, ()) => new({protectionId: protectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateSubscription = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "CreateSubscriptionCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListResourcesInProtectionGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
         than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value 
         in the response.</p> 
         <p>The default setting is 20.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects, 
           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and 
           providing the token that was returned by the prior call in your request. </p>
           <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p> 
           <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p> 
         <p>On your first call to a list operation, leave this setting empty.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>"
    )
    @as("ProtectionGroupId")
    protectionGroupId: protectionGroupId,
  }
  type response = {
    @ocaml.doc("<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects, 
           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and 
           providing the token that was returned by the prior call in your request. </p>
           <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p> 
           <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>The Amazon Resource Names (ARNs) of the resources that are included in the protection group.</p>"
    )
    @as("ResourceArns")
    resourceArns: resourceArnList,
  }
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "ListResourcesInProtectionGroupCommand"
  let make = (~protectionGroupId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, protectionGroupId: protectionGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDRTAccess = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The list of Amazon S3 buckets accessed by the SRT.</p>") @as("LogBucketList")
    logBucketList: option<logBucketList>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the role the SRT used to access your Amazon Web Services account.</p>"
    )
    @as("RoleArn")
    roleArn: option<roleArn>,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "DescribeDRTAccessCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSubscription = {
  type t
  type request = {
    @ocaml.doc(
      "<p>When you initally create a subscription, <code>AutoRenew</code> is set to <code>ENABLED</code>. If <code>ENABLED</code>, the subscription will be automatically renewed at the end of the existing subscription period. You can change this by submitting an <code>UpdateSubscription</code> request. If the <code>UpdateSubscription</code> request does not included a value for <code>AutoRenew</code>, the existing value for <code>AutoRenew</code> remains unchanged.</p>"
    )
    @as("AutoRenew")
    autoRenew: option<autoRenew>,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "UpdateSubscriptionCommand"
  let make = (~autoRenew=?, ()) => new({autoRenew: autoRenew})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateProtectionGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>"
    )
    @as("Members")
    members: option<protectionGroupMembers>,
    @ocaml.doc("<p>The resource type to include in the protection group. All protected resources of this type are included in the protection group. 
           You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>")
    @as("ResourceType")
    resourceType: option<protectedResourceType>,
    @ocaml.doc(
      "<p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type.</p>"
    )
    @as("Pattern")
    pattern: protectionGroupPattern,
    @ocaml.doc("<p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>
         <ul>
            <li>
               <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>
            </li>
            <li>
               <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>
            </li>
            <li>
               <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront distributions and origin resources for CloudFront distributions.</p>
            </li>
         </ul>")
    @as("Aggregation")
    aggregation: protectionGroupAggregation,
    @ocaml.doc(
      "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>"
    )
    @as("ProtectionGroupId")
    protectionGroupId: protectionGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "UpdateProtectionGroupCommand"
  let make = (~pattern, ~aggregation, ~protectionGroupId, ~members=?, ~resourceType=?, ()) =>
    new({
      members: members,
      resourceType: resourceType,
      pattern: pattern,
      aggregation: aggregation,
      protectionGroupId: protectionGroupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateEmergencyContactSettings = {
  type t
  type request = {
    @ocaml.doc("<p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>
         <p>If you have proactive engagement enabled, the contact list must include at least one phone number.</p>")
    @as("EmergencyContactList")
    emergencyContactList: option<emergencyContactList>,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "UpdateEmergencyContactSettingsCommand"
  let make = (~emergencyContactList=?, ()) => new({emergencyContactList: emergencyContactList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateApplicationLayerAutomaticResponse = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the 
   protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature, 
   when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>")
    @as("Action")
    action: responseAction,
    @ocaml.doc("<p>The ARN (Amazon Resource Name) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "UpdateApplicationLayerAutomaticResponseCommand"
  let make = (~action, ~resourceArn, ()) => new({action: action, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key for each tag that you want to remove from the resource.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>"
    )
    @as("ResourceARN")
    resourceARN: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags that you want to modify or add to the resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.</p>"
    )
    @as("ResourceARN")
    resourceARN: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>")
    @as("ResourceARN")
    resourceARN: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>A list of tag key and value pairs associated with the specified resource.</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableProactiveEngagement = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "EnableProactiveEngagementCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableApplicationLayerAutomaticResponse = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the action setting that Shield Advanced should use in the WAF rules that it creates on behalf of the 
   protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature, 
   when you enable or update automatic mitigation. Shield Advanced creates the WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource. </p>")
    @as("Action")
    action: responseAction,
    @ocaml.doc("<p>The ARN (Amazon Resource Name) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "EnableApplicationLayerAutomaticResponseCommand"
  let make = (~action, ~resourceArn, ()) => new({action: action, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateHealthCheck = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the health check that is associated with the protection.</p>"
    )
    @as("HealthCheckArn")
    healthCheckArn: healthCheckArn,
    @ocaml.doc(
      "<p>The unique identifier (ID) for the <a>Protection</a> object to remove the health check association from. </p>"
    )
    @as("ProtectionId")
    protectionId: protectionId,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DisassociateHealthCheckCommand"
  let make = (~healthCheckArn, ~protectionId, ()) =>
    new({healthCheckArn: healthCheckArn, protectionId: protectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableProactiveEngagement = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DisableProactiveEngagementCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableApplicationLayerAutomaticResponse = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN (Amazon Resource Name) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DisableApplicationLayerAutomaticResponseCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeProtectionGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>"
    )
    @as("ProtectionGroupId")
    protectionGroupId: protectionGroupId,
  }
  type response = {
    @ocaml.doc(
      "<p>A grouping of protected resources that you and Shield Advanced can monitor as a collective. This resource grouping improves the accuracy of detection and reduces false positives. </p>"
    )
    @as("ProtectionGroup")
    protectionGroup: protectionGroup,
  }
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DescribeProtectionGroupCommand"
  let make = (~protectionGroupId, ()) => new({protectionGroupId: protectionGroupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEmergencyContactSettings = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc(
      "<p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.</p>"
    )
    @as("EmergencyContactList")
    emergencyContactList: option<emergencyContactList>,
  }
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DescribeEmergencyContactSettingsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProtectionGroup = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tag key-value pairs for the protection group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set <code>Pattern</code> to <code>ARBITRARY</code> and you must not set it for any other <code>Pattern</code> setting. </p>"
    )
    @as("Members")
    members: option<protectionGroupMembers>,
    @ocaml.doc("<p>The resource type to include in the protection group. All protected resources of this type are included in the protection group. Newly protected resources of this type are automatically added to the group. 
           You must set this when you set <code>Pattern</code> to <code>BY_RESOURCE_TYPE</code> and you must not set it for any other <code>Pattern</code> setting. </p>")
    @as("ResourceType")
    resourceType: option<protectedResourceType>,
    @ocaml.doc(
      "<p>The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type. </p>"
    )
    @as("Pattern")
    pattern: protectionGroupPattern,
    @ocaml.doc("<p>Defines how Shield combines resource data for the group in order to detect, mitigate, and report events.</p>
         <ul>
            <li>
               <p>Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.</p>
            </li>
            <li>
               <p>Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.</p>
            </li>
            <li>
               <p>Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront and origin resources for CloudFront distributions.</p>
            </li>
         </ul>")
    @as("Aggregation")
    aggregation: protectionGroupAggregation,
    @ocaml.doc(
      "<p>The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it. </p>"
    )
    @as("ProtectionGroupId")
    protectionGroupId: protectionGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "CreateProtectionGroupCommand"
  let make = (
    ~pattern,
    ~aggregation,
    ~protectionGroupId,
    ~tags=?,
    ~members=?,
    ~resourceType=?,
    (),
  ) =>
    new({
      tags: tags,
      members: members,
      resourceType: resourceType,
      pattern: pattern,
      aggregation: aggregation,
      protectionGroupId: protectionGroupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateProtection = {
  type t
  type request = {
    @ocaml.doc(
      "<p>One or more tag key-value pairs for the <a>Protection</a> object that is created.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ARN (Amazon Resource Name) of the resource to be protected.</p>
         <p>The ARN should be in one of the following formats:</p>
         <ul>
            <li>
               <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For an Elastic Load Balancer (Classic Load Balancer): <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/<i>load-balancer-name</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For an Amazon CloudFront distribution: <code>arn:aws:cloudfront::<i>account-id</i>:distribution/<i>distribution-id</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For an Global Accelerator accelerator: <code>arn:aws:globalaccelerator::<i>account-id</i>:accelerator/<i>accelerator-id</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For Amazon Route 53: <code>arn:aws:route53:::hostedzone/<i>hosted-zone-id</i>
                  </code>
               </p>
            </li>
            <li>
               <p>For an Elastic IP address: <code>arn:aws:ec2:<i>region</i>:<i>account-id</i>:eip-allocation/<i>allocation-id</i>
                  </code>
               </p>
            </li>
         </ul>")
    @as("ResourceArn")
    resourceArn: resourceArn,
    @ocaml.doc("<p>Friendly name for the <code>Protection</code> you are creating.</p>") @as("Name")
    name: protectionName,
  }
  type response = {
    @ocaml.doc(
      "<p>The unique identifier (ID) for the <a>Protection</a> object that is created.</p>"
    )
    @as("ProtectionId")
    protectionId: option<protectionId>,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "CreateProtectionCommand"
  let make = (~resourceArn, ~name, ~tags=?, ()) =>
    new({tags: tags, resourceArn: resourceArn, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateProactiveEngagementDetails = {
  type t
  type request = {
    @ocaml.doc("<p>A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you for escalations to the SRT and to initiate proactive customer support. </p>
         <p>To enable proactive engagement, the contact list must include at least one phone number.</p>
         <note>
            <p>The contacts that you provide here replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using <code>DescribeEmergencyContactSettings</code> and then provide it here.  </p>
         </note>")
    @as("EmergencyContactList")
    emergencyContactList: emergencyContactList,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "AssociateProactiveEngagementDetailsCommand"
  let make = (~emergencyContactList, ()) => new({emergencyContactList: emergencyContactList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateHealthCheck = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the health check to associate with the protection.</p>"
    )
    @as("HealthCheckArn")
    healthCheckArn: healthCheckArn,
    @ocaml.doc(
      "<p>The unique identifier (ID) for the <a>Protection</a> object to add the health check association to. </p>"
    )
    @as("ProtectionId")
    protectionId: protectionId,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "AssociateHealthCheckCommand"
  let make = (~healthCheckArn, ~protectionId, ()) =>
    new({healthCheckArn: healthCheckArn, protectionId: protectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateDRTRole = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role the SRT will use to access your Amazon Web Services account.</p>
	        <p>Prior to making the <code>AssociateDRTRole</code> request, you must attach the <a href=\"https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy\">AWSShieldDRTAccessPolicy</a> managed policy to this role.  For more information see <a href=\" https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html\">Attaching and Detaching IAM Policies</a>.</p>")
    @as("RoleArn")
    roleArn: roleArn,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "AssociateDRTRoleCommand"
  let make = (~roleArn, ()) => new({roleArn: roleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateDRTLogBucket = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon S3 bucket that contains the logs that you want to share.</p>")
    @as("LogBucket")
    logBucket: logBucket,
  }
  type response = {.}
  @module("@aws-sdk/client-shield") @new external new: request => t = "AssociateDRTLogBucketCommand"
  let make = (~logBucket, ()) => new({logBucket: logBucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListProtectionGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
         than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value 
         in the response.</p> 
         <p>The default setting is 20.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects, 
           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and 
           providing the token that was returned by the prior call in your request. </p>
           <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p> 
           <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p> 
         <p>On your first call to a list operation, leave this setting empty.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects, 
           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and 
           providing the token that was returned by the prior call in your request. </p>
           <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p> 
           <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p></p>") @as("ProtectionGroups") protectionGroups: protectionGroups,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "ListProtectionGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProtection = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN (Amazon Resource Name) of the Amazon Web Services resource for the <a>Protection</a> object that is
         described. When submitting the <code>DescribeProtection</code> request you must provide either the <code>ResourceArn</code> or the <code>ProtectionID</code>, but not both.</p>")
    @as("ResourceArn")
    resourceArn: option<resourceArn>,
    @ocaml.doc("<p>The unique identifier (ID) for the <a>Protection</a> object that is
         described. When submitting the <code>DescribeProtection</code> request you must provide either the <code>ResourceArn</code> or the <code>ProtectionID</code>, but not both.</p>")
    @as("ProtectionId")
    protectionId: option<protectionId>,
  }
  type response = {
    @ocaml.doc("<p>The <a>Protection</a> object that is described.</p>") @as("Protection")
    protection: option<protection>,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "DescribeProtectionCommand"
  let make = (~resourceArn=?, ~protectionId=?, ()) =>
    new({resourceArn: resourceArn, protectionId: protectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProtections = {
  type t
  type request = {
    @ocaml.doc("<p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
         than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value 
         in the response.</p> 
         <p>The default setting is 20.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects, 
           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and 
           providing the token that was returned by the prior call in your request. </p>
           <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p> 
           <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p> 
         <p>On your first call to a list operation, leave this setting empty.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects, 
           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and 
           providing the token that was returned by the prior call in your request. </p>
           <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p> 
           <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The array of enabled <a>Protection</a> objects.</p>") @as("Protections")
    protections: option<protections>,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "ListProtectionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAttacks = {
  type t
  type request = {
    @ocaml.doc("<p>The greatest number of objects that you want Shield Advanced to return to the list request. Shield Advanced might return fewer objects
         than you indicate in this setting, even if more objects are available. If there are more objects remaining, Shield Advanced will always also return a <code>NextToken</code> value 
         in the response.</p> 
         <p>The default setting is 20.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects, 
           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and 
           providing the token that was returned by the prior call in your request. </p>
           <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p> 
           <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p> 
         <p>On your first call to a list operation, leave this setting empty.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The end of the time period for the attacks. This is a <code>timestamp</code> type. The request syntax listing for this call indicates a <code>number</code> type,
           but you can provide the time in any valid <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp\">timestamp format</a> setting.  </p>")
    @as("EndTime")
    endTime: option<timeRange>,
    @ocaml.doc("<p>The start of the time period for the attacks. This is a <code>timestamp</code> type. The request syntax listing for this call indicates a <code>number</code> type,
           but you can provide the time in any valid <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp\">timestamp format</a> setting.  </p>")
    @as("StartTime")
    startTime: option<timeRange>,
    @ocaml.doc("<p>The ARNs (Amazon Resource Names) of the resources that were attacked. If you leave this 
         blank, all applicable resources for this account will be included.</p>")
    @as("ResourceArns")
    resourceArns: option<resourceArnFilterList>,
  }
  type response = {
    @ocaml.doc("<p>When you request a list of objects from Shield Advanced, if the response does not include all of the remaining available objects, 
           Shield Advanced includes a <code>NextToken</code> value in the response. You can retrieve the next batch of objects by requesting the list again and 
           providing the token that was returned by the prior call in your request. </p>
           <p>You can indicate the maximum number of objects that you want Shield Advanced to return for a single call with the <code>MaxResults</code>
           setting. Shield Advanced will not return more than <code>MaxResults</code> objects, but may return fewer, even if more objects are still available.</p> 
           <p>Whenever more objects remain that Shield Advanced has not yet returned to you, the response will include a <code>NextToken</code> value.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The attack information for the specified time range.</p>") @as("AttackSummaries")
    attackSummaries: option<attackSummaries>,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "ListAttacksCommand"
  let make = (~maxResults=?, ~nextToken=?, ~endTime=?, ~startTime=?, ~resourceArns=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      endTime: endTime,
      startTime: startTime,
      resourceArns: resourceArns,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAttackStatistics = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The data that describes the attacks detected during the time period.</p>")
    @as("DataItems")
    dataItems: attackStatisticsDataList,
    @as("TimeRange") timeRange: timeRange,
  }
  @module("@aws-sdk/client-shield") @new
  external new: request => t = "DescribeAttackStatisticsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSubscription = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The Shield Advanced subscription details for an account.</p>")
    @as("Subscription")
    subscription: option<subscription>,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "DescribeSubscriptionCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAttack = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier (ID) for the attack.</p>") @as("AttackId")
    attackId: attackId,
  }
  type response = {
    @ocaml.doc("<p>The attack that is described.</p>") @as("Attack") attack: option<attackDetail>,
  }
  @module("@aws-sdk/client-shield") @new external new: request => t = "DescribeAttackCommand"
  let make = (~attackId, ()) => new({attackId: attackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
