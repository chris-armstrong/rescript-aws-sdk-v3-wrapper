type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type vpcregion = [@as("eu-south-1") #EuSouth1 | @as("af-south-1") #AfSouth1 | @as("cn-north-1") #CnNorth1 | @as("ca-central-1") #CaCentral1 | @as("sa-east-1") #SaEast1 | @as("eu-north-1") #EuNorth1 | @as("ap-northeast-3") #ApNortheast3 | @as("ap-northeast-2") #ApNortheast2 | @as("ap-northeast-1") #ApNortheast1 | @as("ap-south-1") #ApSouth1 | @as("ap-southeast-2") #ApSoutheast2 | @as("ap-southeast-1") #ApSoutheast1 | @as("us-isob-east-1") #UsIsobEast1 | @as("us-iso-east-1") #UsIsoEast1 | @as("us-gov-east-1") #UsGovEast1 | @as("us-gov-west-1") #UsGovWest1 | @as("me-south-1") #MeSouth1 | @as("ap-east-1") #ApEast1 | @as("eu-central-1") #EuCentral1 | @as("eu-west-3") #EuWest3 | @as("eu-west-2") #EuWest2 | @as("eu-west-1") #EuWest1 | @as("us-west-2") #UsWest2 | @as("us-west-1") #UsWest1 | @as("us-east-2") #UsEast2 | @as("us-east-1") #UsEast1]
type vpcid = string
type usageCount = float
type transportProtocol = string
type trafficPolicyVersionMarker = string
type trafficPolicyVersion = int
type trafficPolicyName = string
type trafficPolicyInstanceState = string
type trafficPolicyInstanceId = string
type trafficPolicyInstanceCount = int
type trafficPolicyId = string
type trafficPolicyDocument = string
type trafficPolicyComment = string
type timeStamp = Js.Date.t;
type threshold = float
type tagValue = string
type tagResourceType = [@as("hostedzone") #Hostedzone | @as("healthcheck") #Healthcheck]
type tagResourceId = string
type tagKey = string
type ttl = float
type subnetMask = string
type status = string
type statistic = [@as("Minimum") #Minimum | @as("Maximum") #Maximum | @as("SampleCount") #SampleCount | @as("Sum") #Sum | @as("Average") #Average]
type signingKeyTag = int
type signingKeyString = string
type signingKeyStatusMessage = string
type signingKeyStatus = string
type signingKeyName = string
type signingKeyInteger = int
type servicePrincipal = string
type serveSignature = string
type searchString = string
type reusableDelegationSetLimitType = [@as("MAX_ZONES_BY_REUSABLE_DELEGATION_SET") #MAXZONESBYREUSABLEDELEGATIONSET]
type resourceURI = string
type resourceRecordSetWeight = float
type resourceRecordSetRegion = [@as("eu-south-1") #EuSouth1 | @as("af-south-1") #AfSouth1 | @as("ap-south-1") #ApSouth1 | @as("me-south-1") #MeSouth1 | @as("ap-east-1") #ApEast1 | @as("cn-northwest-1") #CnNorthwest1 | @as("cn-north-1") #CnNorth1 | @as("sa-east-1") #SaEast1 | @as("eu-north-1") #EuNorth1 | @as("ap-northeast-3") #ApNortheast3 | @as("ap-northeast-2") #ApNortheast2 | @as("ap-northeast-1") #ApNortheast1 | @as("ap-southeast-2") #ApSoutheast2 | @as("ap-southeast-1") #ApSoutheast1 | @as("eu-central-1") #EuCentral1 | @as("eu-west-3") #EuWest3 | @as("eu-west-2") #EuWest2 | @as("eu-west-1") #EuWest1 | @as("ca-central-1") #CaCentral1 | @as("us-west-2") #UsWest2 | @as("us-west-1") #UsWest1 | @as("us-east-2") #UsEast2 | @as("us-east-1") #UsEast1]
type resourceRecordSetMultiValueAnswer = bool
type resourceRecordSetIdentifier = string
type resourceRecordSetFailover = [@as("SECONDARY") #SECONDARY | @as("PRIMARY") #PRIMARY]
type resourcePath = string
type resourceId = string
type resourceDescription = string
type resettableElementName = [@as("ChildHealthChecks") #ChildHealthChecks | @as("ResourcePath") #ResourcePath | @as("Regions") #Regions | @as("FullyQualifiedDomainName") #FullyQualifiedDomainName]
type requestInterval = int
type recordDataEntry = string
type rrtype = [@as("DS") #DS | @as("CAA") #CAA | @as("AAAA") #AAAA | @as("SPF") #SPF | @as("SRV") #SRV | @as("PTR") #PTR | @as("NAPTR") #NAPTR | @as("MX") #MX | @as("CNAME") #CNAME | @as("NS") #NS | @as("TXT") #TXT | @as("A") #A | @as("SOA") #SOA]
type rdata = string
type queryLoggingConfigId = string
type port = int
type period = int
type paginationToken = string
type pageTruncated = bool
type pageMarker = string
type nonce = string
type namespace = string
type nameserver = string
type metricName = string
type message = string
type measureLatency = bool
type limitValue = float
type isPrivateZone = bool
type inverted = bool
type insufficientDataHealthStatus = [@as("LastKnownStatus") #LastKnownStatus | @as("Unhealthy") #Unhealthy | @as("Healthy") #Healthy]
type ipaddressCidr = string
type ipaddress = string
type hostedZoneRRSetCount = float
type hostedZoneOwningService = string
type hostedZoneLimitType = [@as("MAX_VPCS_ASSOCIATED_BY_ZONE") #MAXVPCSASSOCIATEDBYZONE | @as("MAX_RRSETS_BY_ZONE") #MAXRRSETSBYZONE]
type hostedZoneCount = float
type healthThreshold = int
type healthCheckVersion = float
type healthCheckType = [@as("CLOUDWATCH_METRIC") #CLOUDWATCHMETRIC | @as("CALCULATED") #CALCULATED | @as("TCP") #TCP | @as("HTTPS_STR_MATCH") #HTTPSSTRMATCH | @as("HTTP_STR_MATCH") #HTTPSTRMATCH | @as("HTTPS") #HTTPS | @as("HTTP") #HTTP]
type healthCheckRegion = [@as("sa-east-1") #SaEast1 | @as("ap-northeast-1") #ApNortheast1 | @as("ap-southeast-2") #ApSoutheast2 | @as("ap-southeast-1") #ApSoutheast1 | @as("eu-west-1") #EuWest1 | @as("us-west-2") #UsWest2 | @as("us-west-1") #UsWest1 | @as("us-east-1") #UsEast1]
type healthCheckNonce = string
type healthCheckId = string
type healthCheckCount = float
type geoLocationSubdivisionName = string
type geoLocationSubdivisionCode = string
type geoLocationCountryName = string
type geoLocationCountryCode = string
type geoLocationContinentName = string
type geoLocationContinentCode = string
type fullyQualifiedDomainName = string
type failureThreshold = int
type evaluationPeriods = int
type errorMessage = string
type enableSNI = bool
type disassociateVPCComment = string
type disabled = bool
type dimensionField = string
type dnsrcode = string
type dnsname = string
type comparisonOperator = [@as("LessThanOrEqualToThreshold") #LessThanOrEqualToThreshold | @as("LessThanThreshold") #LessThanThreshold | @as("GreaterThanThreshold") #GreaterThanThreshold | @as("GreaterThanOrEqualToThreshold") #GreaterThanOrEqualToThreshold]
type cloudWatchRegion = [@as("us-isob-east-1") #UsIsobEast1 | @as("us-iso-east-1") #UsIsoEast1 | @as("us-gov-east-1") #UsGovEast1 | @as("us-gov-west-1") #UsGovWest1 | @as("eu-south-1") #EuSouth1 | @as("af-south-1") #AfSouth1 | @as("cn-north-1") #CnNorth1 | @as("cn-northwest-1") #CnNorthwest1 | @as("sa-east-1") #SaEast1 | @as("eu-north-1") #EuNorth1 | @as("ap-northeast-3") #ApNortheast3 | @as("ap-northeast-2") #ApNortheast2 | @as("ap-northeast-1") #ApNortheast1 | @as("ap-southeast-2") #ApSoutheast2 | @as("ap-southeast-1") #ApSoutheast1 | @as("ap-south-1") #ApSouth1 | @as("me-south-1") #MeSouth1 | @as("ap-east-1") #ApEast1 | @as("eu-west-3") #EuWest3 | @as("eu-west-2") #EuWest2 | @as("eu-west-1") #EuWest1 | @as("eu-central-1") #EuCentral1 | @as("ca-central-1") #CaCentral1 | @as("us-west-2") #UsWest2 | @as("us-west-1") #UsWest1 | @as("us-east-2") #UsEast2 | @as("us-east-1") #UsEast1]
type cloudWatchLogsLogGroupArn = string
type changeStatus = [@as("INSYNC") #INSYNC | @as("PENDING") #PENDING]
type changeAction = [@as("UPSERT") #UPSERT | @as("DELETE") #DELETE | @as("CREATE") #CREATE]
type associateVPCComment = string
type aliasHealthEnabled = bool
type alarmName = string
type accountLimitType = [@as("MAX_TRAFFIC_POLICIES_BY_OWNER") #MAXTRAFFICPOLICIESBYOWNER | @as("MAX_REUSABLE_DELEGATION_SETS_BY_OWNER") #MAXREUSABLEDELEGATIONSETSBYOWNER | @as("MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER") #MAXTRAFFICPOLICYINSTANCESBYOWNER | @as("MAX_HOSTED_ZONES_BY_OWNER") #MAXHOSTEDZONESBYOWNER | @as("MAX_HEALTH_CHECKS_BY_OWNER") #MAXHEALTHCHECKSBYOWNER]
type awsaccountID = string
type vpc = {
@as("VPCId") vpcid: option<vpcid>,
@as("VPCRegion") vpcregion: option<vpcregion>
}
type trafficPolicySummary = {
@as("TrafficPolicyCount") trafficPolicyCount: trafficPolicyVersion,
@as("LatestVersion") latestVersion: trafficPolicyVersion,
@as("Type") type_: rrtype,
@as("Name") name: trafficPolicyName,
@as("Id") id: trafficPolicyId
}
type trafficPolicyInstance = {
@as("TrafficPolicyType") trafficPolicyType: rrtype,
@as("TrafficPolicyVersion") trafficPolicyVersion: trafficPolicyVersion,
@as("TrafficPolicyId") trafficPolicyId: trafficPolicyId,
@as("Message") message: message,
@as("State") state: trafficPolicyInstanceState,
@as("TTL") ttl: ttl,
@as("Name") name: dnsname,
@as("HostedZoneId") hostedZoneId: resourceId,
@as("Id") id: trafficPolicyInstanceId
}
type trafficPolicy = {
@as("Comment") comment: option<trafficPolicyComment>,
@as("Document") document: trafficPolicyDocument,
@as("Type") type_: rrtype,
@as("Name") name: trafficPolicyName,
@as("Version") version: trafficPolicyVersion,
@as("Id") id: trafficPolicyId
}
type tagResourceIdList = array<tagResourceId>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type statusReport = {
@as("CheckedTime") checkedTime: option<timeStamp>,
@as("Status") status: option<status>
}
type reusableDelegationSetLimit = {
@as("Value") value: limitValue,
@as("Type") type_: reusableDelegationSetLimitType
}
type resourceRecord = {
@as("Value") value: rdata
}
type resettableElementNameList = array<resettableElementName>
type recordData = array<recordDataEntry>
type queryLoggingConfig = {
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: cloudWatchLogsLogGroupArn,
@as("HostedZoneId") hostedZoneId: resourceId,
@as("Id") id: queryLoggingConfigId
}
type linkedService = {
@as("Description") description: option<resourceDescription>,
@as("ServicePrincipal") servicePrincipal: option<servicePrincipal>
}
type keySigningKey = {
@as("LastModifiedDate") lastModifiedDate: option<timeStamp>,
@as("CreatedDate") createdDate: option<timeStamp>,
@as("StatusMessage") statusMessage: option<signingKeyStatusMessage>,
@as("Status") status: option<signingKeyStatus>,
@as("DNSKEYRecord") dnskeyrecord: option<signingKeyString>,
@as("DSRecord") dsrecord: option<signingKeyString>,
@as("PublicKey") publicKey: option<signingKeyString>,
@as("DigestValue") digestValue: option<signingKeyString>,
@as("KeyTag") keyTag: option<signingKeyTag>,
@as("DigestAlgorithmType") digestAlgorithmType: option<signingKeyInteger>,
@as("DigestAlgorithmMnemonic") digestAlgorithmMnemonic: option<signingKeyString>,
@as("SigningAlgorithmType") signingAlgorithmType: option<signingKeyInteger>,
@as("SigningAlgorithmMnemonic") signingAlgorithmMnemonic: option<signingKeyString>,
@as("Flag") flag: option<signingKeyInteger>,
@as("KmsArn") kmsArn: option<signingKeyString>,
@as("Name") name: option<signingKeyName>
}
type hostedZoneOwner = {
@as("OwningService") owningService: option<hostedZoneOwningService>,
@as("OwningAccount") owningAccount: option<awsaccountID>
}
type hostedZoneLimit = {
@as("Value") value: limitValue,
@as("Type") type_: hostedZoneLimitType
}
type hostedZoneConfig = {
@as("PrivateZone") privateZone: option<isPrivateZone>,
@as("Comment") comment: option<resourceDescription>
}
type healthCheckRegionList = array<healthCheckRegion>
type geoLocationDetails = {
@as("SubdivisionName") subdivisionName: option<geoLocationSubdivisionName>,
@as("SubdivisionCode") subdivisionCode: option<geoLocationSubdivisionCode>,
@as("CountryName") countryName: option<geoLocationCountryName>,
@as("CountryCode") countryCode: option<geoLocationCountryCode>,
@as("ContinentName") continentName: option<geoLocationContinentName>,
@as("ContinentCode") continentCode: option<geoLocationContinentCode>
}
type geoLocation = {
@as("SubdivisionCode") subdivisionCode: option<geoLocationSubdivisionCode>,
@as("CountryCode") countryCode: option<geoLocationCountryCode>,
@as("ContinentCode") continentCode: option<geoLocationContinentCode>
}
type errorMessages = array<errorMessage>
type dimension = {
@as("Value") value: dimensionField,
@as("Name") name: dimensionField
}
type delegationSetNameServers = array<dnsname>
type dnssecstatus = {
@as("StatusMessage") statusMessage: option<signingKeyStatusMessage>,
@as("ServeSignature") serveSignature: option<serveSignature>
}
type childHealthCheckList = array<healthCheckId>
type checkerIpRanges = array<ipaddressCidr>
type changeInfo = {
@as("Comment") comment: option<resourceDescription>,
@as("SubmittedAt") submittedAt: timeStamp,
@as("Status") status: changeStatus,
@as("Id") id: resourceId
}
type aliasTarget = {
@as("EvaluateTargetHealth") evaluateTargetHealth: aliasHealthEnabled,
@as("DNSName") dnsname: dnsname,
@as("HostedZoneId") hostedZoneId: resourceId
}
type alarmIdentifier = {
@as("Name") name: alarmName,
@as("Region") region: cloudWatchRegion
}
type accountLimit = {
@as("Value") value: limitValue,
@as("Type") type_: accountLimitType
}
type vpcs = array<vpc>
type trafficPolicySummaries = array<trafficPolicySummary>
type trafficPolicyInstances = array<trafficPolicyInstance>
type trafficPolicies = array<trafficPolicy>
type tagList_ = array<tag>
type resourceRecords = array<resourceRecord>
type queryLoggingConfigs = array<queryLoggingConfig>
type keySigningKeys = array<keySigningKey>
type hostedZoneSummary = {
@as("Owner") owner: hostedZoneOwner,
@as("Name") name: dnsname,
@as("HostedZoneId") hostedZoneId: resourceId
}
type hostedZone = {
@as("LinkedService") linkedService: option<linkedService>,
@as("ResourceRecordSetCount") resourceRecordSetCount: option<hostedZoneRRSetCount>,
@as("Config") config: option<hostedZoneConfig>,
@as("CallerReference") callerReference: nonce,
@as("Name") name: dnsname,
@as("Id") id: resourceId
}
type healthCheckObservation = {
@as("StatusReport") statusReport: option<statusReport>,
@as("IPAddress") ipaddress: option<ipaddress>,
@as("Region") region: option<healthCheckRegion>
}
type healthCheckConfig = {
@as("InsufficientDataHealthStatus") insufficientDataHealthStatus: option<insufficientDataHealthStatus>,
@as("AlarmIdentifier") alarmIdentifier: option<alarmIdentifier>,
@as("Regions") regions: option<healthCheckRegionList>,
@as("EnableSNI") enableSNI: option<enableSNI>,
@as("ChildHealthChecks") childHealthChecks: option<childHealthCheckList>,
@as("HealthThreshold") healthThreshold: option<healthThreshold>,
@as("Disabled") disabled: option<disabled>,
@as("Inverted") inverted: option<inverted>,
@as("MeasureLatency") measureLatency: option<measureLatency>,
@as("FailureThreshold") failureThreshold: option<failureThreshold>,
@as("RequestInterval") requestInterval: option<requestInterval>,
@as("SearchString") searchString: option<searchString>,
@as("FullyQualifiedDomainName") fullyQualifiedDomainName: option<fullyQualifiedDomainName>,
@as("ResourcePath") resourcePath: option<resourcePath>,
@as("Type") type_: healthCheckType,
@as("Port") port: option<port>,
@as("IPAddress") ipaddress: option<ipaddress>
}
type geoLocationDetailsList = array<geoLocationDetails>
type dimensionList = array<dimension>
type delegationSet = {
@as("NameServers") nameServers: delegationSetNameServers,
@as("CallerReference") callerReference: option<nonce>,
@as("Id") id: option<resourceId>
}
type resourceTagSet = {
@as("Tags") tags: option<tagList_>,
@as("ResourceId") resourceId: option<tagResourceId>,
@as("ResourceType") resourceType: option<tagResourceType>
}
type resourceRecordSet = {
@as("TrafficPolicyInstanceId") trafficPolicyInstanceId: option<trafficPolicyInstanceId>,
@as("HealthCheckId") healthCheckId: option<healthCheckId>,
@as("AliasTarget") aliasTarget: option<aliasTarget>,
@as("ResourceRecords") resourceRecords: option<resourceRecords>,
@as("TTL") ttl: option<ttl>,
@as("MultiValueAnswer") multiValueAnswer: option<resourceRecordSetMultiValueAnswer>,
@as("Failover") failover: option<resourceRecordSetFailover>,
@as("GeoLocation") geoLocation: option<geoLocation>,
@as("Region") region: option<resourceRecordSetRegion>,
@as("Weight") weight: option<resourceRecordSetWeight>,
@as("SetIdentifier") setIdentifier: option<resourceRecordSetIdentifier>,
@as("Type") type_: rrtype,
@as("Name") name: dnsname
}
type hostedZones = array<hostedZone>
type hostedZoneSummaries = array<hostedZoneSummary>
type healthCheckObservations = array<healthCheckObservation>
type delegationSets = array<delegationSet>
type cloudWatchAlarmConfiguration = {
@as("Dimensions") dimensions: option<dimensionList>,
@as("Statistic") statistic: statistic,
@as("Namespace") namespace: namespace,
@as("MetricName") metricName: metricName,
@as("Period") period: period,
@as("ComparisonOperator") comparisonOperator: comparisonOperator,
@as("Threshold") threshold: threshold,
@as("EvaluationPeriods") evaluationPeriods: evaluationPeriods
}
type resourceTagSetList = array<resourceTagSet>
type resourceRecordSets = array<resourceRecordSet>
type healthCheck = {
@as("CloudWatchAlarmConfiguration") cloudWatchAlarmConfiguration: option<cloudWatchAlarmConfiguration>,
@as("HealthCheckVersion") healthCheckVersion: healthCheckVersion,
@as("HealthCheckConfig") healthCheckConfig: healthCheckConfig,
@as("LinkedService") linkedService: option<linkedService>,
@as("CallerReference") callerReference: healthCheckNonce,
@as("Id") id: healthCheckId
}
type change = {
@as("ResourceRecordSet") resourceRecordSet: resourceRecordSet,
@as("Action") action: changeAction
}
type healthChecks = array<healthCheck>
type changes = array<change>
type changeBatch = {
@as("Changes") changes: changes,
@as("Comment") comment: option<resourceDescription>
}
type awsServiceClient;
@module("@aws-sdk/client-route53") @new external createClient: unit => awsServiceClient = "Route53Client";
module GetTrafficPolicyInstanceCount = {
  type t;
  type request = unit
  type response = {
@as("TrafficPolicyInstanceCount") trafficPolicyInstanceCount: trafficPolicyInstanceCount
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetTrafficPolicyInstanceCountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetHostedZoneCount = {
  type t;
  type request = unit
  type response = {
@as("HostedZoneCount") hostedZoneCount: hostedZoneCount
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHostedZoneCountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetHealthCheckCount = {
  type t;
  type request = unit
  type response = {
@as("HealthCheckCount") healthCheckCount: healthCheckCount
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHealthCheckCountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTrafficPolicyInstance = {
  type t;
  type request = {
@as("Id") id: trafficPolicyInstanceId
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteTrafficPolicyInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTrafficPolicy = {
  type t;
  type request = {
@as("Version") version: trafficPolicyVersion,
@as("Id") id: trafficPolicyId
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteTrafficPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReusableDelegationSet = {
  type t;
  type request = {
@as("Id") id: resourceId
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteReusableDelegationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteQueryLoggingConfig = {
  type t;
  type request = {
@as("Id") id: queryLoggingConfigId
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteQueryLoggingConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteHealthCheck = {
  type t;
  type request = {
@as("HealthCheckId") healthCheckId: healthCheckId
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteHealthCheckCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTrafficPolicyInstance = {
  type t;
  type request = {
@as("TrafficPolicyVersion") trafficPolicyVersion: trafficPolicyVersion,
@as("TrafficPolicyId") trafficPolicyId: trafficPolicyId,
@as("TTL") ttl: ttl,
@as("Id") id: trafficPolicyInstanceId
}
  type response = {
@as("TrafficPolicyInstance") trafficPolicyInstance: trafficPolicyInstance
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "UpdateTrafficPolicyInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTrafficPolicyComment = {
  type t;
  type request = {
@as("Comment") comment: trafficPolicyComment,
@as("Version") version: trafficPolicyVersion,
@as("Id") id: trafficPolicyId
}
  type response = {
@as("TrafficPolicy") trafficPolicy: trafficPolicy
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "UpdateTrafficPolicyCommentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TestDNSAnswer = {
  type t;
  type request = {
@as("EDNS0ClientSubnetMask") edns0ClientSubnetMask: option<subnetMask>,
@as("EDNS0ClientSubnetIP") edns0ClientSubnetIP: option<ipaddress>,
@as("ResolverIP") resolverIP: option<ipaddress>,
@as("RecordType") recordType: rrtype,
@as("RecordName") recordName: dnsname,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("Protocol") protocol: transportProtocol,
@as("ResponseCode") responseCode: dnsrcode,
@as("RecordData") recordData: recordData,
@as("RecordType") recordType: rrtype,
@as("RecordName") recordName: dnsname,
@as("Nameserver") nameserver: nameserver
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "TestDNSAnswerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTrafficPolicyInstance = {
  type t;
  type request = {
@as("Id") id: trafficPolicyInstanceId
}
  type response = {
@as("TrafficPolicyInstance") trafficPolicyInstance: trafficPolicyInstance
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetTrafficPolicyInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTrafficPolicy = {
  type t;
  type request = {
@as("Version") version: trafficPolicyVersion,
@as("Id") id: trafficPolicyId
}
  type response = {
@as("TrafficPolicy") trafficPolicy: trafficPolicy
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetTrafficPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetReusableDelegationSetLimit = {
  type t;
  type request = {
@as("DelegationSetId") delegationSetId: resourceId,
@as("Type") type_: reusableDelegationSetLimitType
}
  type response = {
@as("Count") count: usageCount,
@as("Limit") limit: reusableDelegationSetLimit
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetReusableDelegationSetLimitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetQueryLoggingConfig = {
  type t;
  type request = {
@as("Id") id: queryLoggingConfigId
}
  type response = {
@as("QueryLoggingConfig") queryLoggingConfig: queryLoggingConfig
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetQueryLoggingConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetHostedZoneLimit = {
  type t;
  type request = {
@as("HostedZoneId") hostedZoneId: resourceId,
@as("Type") type_: hostedZoneLimitType
}
  type response = {
@as("Count") count: usageCount,
@as("Limit") limit: hostedZoneLimit
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHostedZoneLimitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetGeoLocation = {
  type t;
  type request = {
@as("SubdivisionCode") subdivisionCode: option<geoLocationSubdivisionCode>,
@as("CountryCode") countryCode: option<geoLocationCountryCode>,
@as("ContinentCode") continentCode: option<geoLocationContinentCode>
}
  type response = {
@as("GeoLocationDetails") geoLocationDetails: geoLocationDetails
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetGeoLocationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCheckerIpRanges = {
  type t;
  type request = unit
  type response = {
@as("CheckerIpRanges") checkerIpRanges: checkerIpRanges
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetCheckerIpRangesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetChange = {
  type t;
  type request = {
@as("Id") id: resourceId
}
  type response = {
@as("ChangeInfo") changeInfo: changeInfo
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetChangeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccountLimit = {
  type t;
  type request = {
@as("Type") type_: accountLimitType
}
  type response = {
@as("Count") count: usageCount,
@as("Limit") limit: accountLimit
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetAccountLimitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableHostedZoneDNSSEC = {
  type t;
  type request = {
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("ChangeInfo") changeInfo: changeInfo
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "EnableHostedZoneDNSSECCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateVPCFromHostedZone = {
  type t;
  type request = {
@as("Comment") comment: option<disassociateVPCComment>,
@as("VPC") vpc: vpc,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("ChangeInfo") changeInfo: changeInfo
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DisassociateVPCFromHostedZoneCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableHostedZoneDNSSEC = {
  type t;
  type request = {
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("ChangeInfo") changeInfo: changeInfo
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DisableHostedZoneDNSSECCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteVPCAssociationAuthorization = {
  type t;
  type request = {
@as("VPC") vpc: vpc,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteVPCAssociationAuthorizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteKeySigningKey = {
  type t;
  type request = {
@as("Name") name: signingKeyName,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("ChangeInfo") changeInfo: changeInfo
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteKeySigningKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteHostedZone = {
  type t;
  type request = {
@as("Id") id: resourceId
}
  type response = {
@as("ChangeInfo") changeInfo: changeInfo
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteHostedZoneCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeactivateKeySigningKey = {
  type t;
  type request = {
@as("Name") name: signingKeyName,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("ChangeInfo") changeInfo: changeInfo
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeactivateKeySigningKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateVPCAssociationAuthorization = {
  type t;
  type request = {
@as("VPC") vpc: vpc,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("VPC") vpc: vpc,
@as("HostedZoneId") hostedZoneId: resourceId
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateVPCAssociationAuthorizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTrafficPolicyVersion = {
  type t;
  type request = {
@as("Comment") comment: option<trafficPolicyComment>,
@as("Document") document: trafficPolicyDocument,
@as("Id") id: trafficPolicyId
}
  type response = {
@as("Location") location: resourceURI,
@as("TrafficPolicy") trafficPolicy: trafficPolicy
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateTrafficPolicyVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTrafficPolicyInstance = {
  type t;
  type request = {
@as("TrafficPolicyVersion") trafficPolicyVersion: trafficPolicyVersion,
@as("TrafficPolicyId") trafficPolicyId: trafficPolicyId,
@as("TTL") ttl: ttl,
@as("Name") name: dnsname,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("Location") location: resourceURI,
@as("TrafficPolicyInstance") trafficPolicyInstance: trafficPolicyInstance
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateTrafficPolicyInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTrafficPolicy = {
  type t;
  type request = {
@as("Comment") comment: option<trafficPolicyComment>,
@as("Document") document: trafficPolicyDocument,
@as("Name") name: trafficPolicyName
}
  type response = {
@as("Location") location: resourceURI,
@as("TrafficPolicy") trafficPolicy: trafficPolicy
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateTrafficPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateQueryLoggingConfig = {
  type t;
  type request = {
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: cloudWatchLogsLogGroupArn,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("Location") location: resourceURI,
@as("QueryLoggingConfig") queryLoggingConfig: queryLoggingConfig
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateQueryLoggingConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateKeySigningKey = {
  type t;
  type request = {
@as("Status") status: signingKeyStatus,
@as("Name") name: signingKeyName,
@as("KeyManagementServiceArn") keyManagementServiceArn: signingKeyString,
@as("HostedZoneId") hostedZoneId: resourceId,
@as("CallerReference") callerReference: nonce
}
  type response = {
@as("Location") location: resourceURI,
@as("KeySigningKey") keySigningKey: keySigningKey,
@as("ChangeInfo") changeInfo: changeInfo
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateKeySigningKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateVPCWithHostedZone = {
  type t;
  type request = {
@as("Comment") comment: option<associateVPCComment>,
@as("VPC") vpc: vpc,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("ChangeInfo") changeInfo: changeInfo
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "AssociateVPCWithHostedZoneCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ActivateKeySigningKey = {
  type t;
  type request = {
@as("Name") name: signingKeyName,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("ChangeInfo") changeInfo: changeInfo
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ActivateKeySigningKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateHostedZoneComment = {
  type t;
  type request = {
@as("Comment") comment: option<resourceDescription>,
@as("Id") id: resourceId
}
  type response = {
@as("HostedZone") hostedZone: hostedZone
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "UpdateHostedZoneCommentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListVPCAssociationAuthorizations = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<integer_>,
@as("NextToken") nextToken: option<paginationToken>,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("VPCs") vpcs: vpcs,
@as("NextToken") nextToken: option<paginationToken>,
@as("HostedZoneId") hostedZoneId: resourceId
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListVPCAssociationAuthorizationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTrafficPolicyVersions = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<integer_>,
@as("TrafficPolicyVersionMarker") trafficPolicyVersionMarker: option<trafficPolicyVersionMarker>,
@as("Id") id: trafficPolicyId
}
  type response = {
@as("MaxItems") maxItems: integer_,
@as("TrafficPolicyVersionMarker") trafficPolicyVersionMarker: trafficPolicyVersionMarker,
@as("IsTruncated") isTruncated: pageTruncated,
@as("TrafficPolicies") trafficPolicies: trafficPolicies
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTrafficPolicyVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTrafficPolicyInstancesByPolicy = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<integer_>,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: option<rrtype>,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: option<dnsname>,
@as("HostedZoneIdMarker") hostedZoneIdMarker: option<resourceId>,
@as("TrafficPolicyVersion") trafficPolicyVersion: trafficPolicyVersion,
@as("TrafficPolicyId") trafficPolicyId: trafficPolicyId
}
  type response = {
@as("MaxItems") maxItems: integer_,
@as("IsTruncated") isTruncated: pageTruncated,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: option<rrtype>,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: option<dnsname>,
@as("HostedZoneIdMarker") hostedZoneIdMarker: option<resourceId>,
@as("TrafficPolicyInstances") trafficPolicyInstances: trafficPolicyInstances
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTrafficPolicyInstancesByPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTrafficPolicyInstancesByHostedZone = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<integer_>,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: option<rrtype>,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: option<dnsname>,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("MaxItems") maxItems: integer_,
@as("IsTruncated") isTruncated: pageTruncated,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: option<rrtype>,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: option<dnsname>,
@as("TrafficPolicyInstances") trafficPolicyInstances: trafficPolicyInstances
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTrafficPolicyInstancesByHostedZoneCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTrafficPolicyInstances = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<integer_>,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: option<rrtype>,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: option<dnsname>,
@as("HostedZoneIdMarker") hostedZoneIdMarker: option<resourceId>
}
  type response = {
@as("MaxItems") maxItems: integer_,
@as("IsTruncated") isTruncated: pageTruncated,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: option<rrtype>,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: option<dnsname>,
@as("HostedZoneIdMarker") hostedZoneIdMarker: option<resourceId>,
@as("TrafficPolicyInstances") trafficPolicyInstances: trafficPolicyInstances
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTrafficPolicyInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTrafficPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<integer_>,
@as("TrafficPolicyIdMarker") trafficPolicyIdMarker: option<trafficPolicyId>
}
  type response = {
@as("MaxItems") maxItems: integer_,
@as("TrafficPolicyIdMarker") trafficPolicyIdMarker: trafficPolicyId,
@as("IsTruncated") isTruncated: pageTruncated,
@as("TrafficPolicySummaries") trafficPolicySummaries: trafficPolicySummaries
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTrafficPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListQueryLoggingConfigs = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<integer_>,
@as("NextToken") nextToken: option<paginationToken>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
@as("QueryLoggingConfigs") queryLoggingConfigs: queryLoggingConfigs
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListQueryLoggingConfigsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGeoLocations = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<integer_>,
@as("StartSubdivisionCode") startSubdivisionCode: option<geoLocationSubdivisionCode>,
@as("StartCountryCode") startCountryCode: option<geoLocationCountryCode>,
@as("StartContinentCode") startContinentCode: option<geoLocationContinentCode>
}
  type response = {
@as("MaxItems") maxItems: integer_,
@as("NextSubdivisionCode") nextSubdivisionCode: option<geoLocationSubdivisionCode>,
@as("NextCountryCode") nextCountryCode: option<geoLocationCountryCode>,
@as("NextContinentCode") nextContinentCode: option<geoLocationContinentCode>,
@as("IsTruncated") isTruncated: pageTruncated,
@as("GeoLocationDetailsList") geoLocationDetailsList: geoLocationDetailsList
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListGeoLocationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetReusableDelegationSet = {
  type t;
  type request = {
@as("Id") id: resourceId
}
  type response = {
@as("DelegationSet") delegationSet: delegationSet
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetReusableDelegationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetHostedZone = {
  type t;
  type request = {
@as("Id") id: resourceId
}
  type response = {
@as("VPCs") vpcs: option<vpcs>,
@as("DelegationSet") delegationSet: option<delegationSet>,
@as("HostedZone") hostedZone: hostedZone
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHostedZoneCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDNSSEC = {
  type t;
  type request = {
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("KeySigningKeys") keySigningKeys: keySigningKeys,
@as("Status") status: dnssecstatus
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetDNSSECCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateReusableDelegationSet = {
  type t;
  type request = {
@as("HostedZoneId") hostedZoneId: option<resourceId>,
@as("CallerReference") callerReference: nonce
}
  type response = {
@as("Location") location: resourceURI,
@as("DelegationSet") delegationSet: delegationSet
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateReusableDelegationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateHostedZone = {
  type t;
  type request = {
@as("DelegationSetId") delegationSetId: option<resourceId>,
@as("HostedZoneConfig") hostedZoneConfig: option<hostedZoneConfig>,
@as("CallerReference") callerReference: nonce,
@as("VPC") vpc: option<vpc>,
@as("Name") name: dnsname
}
  type response = {
@as("Location") location: resourceURI,
@as("VPC") vpc: option<vpc>,
@as("DelegationSet") delegationSet: delegationSet,
@as("ChangeInfo") changeInfo: changeInfo,
@as("HostedZone") hostedZone: hostedZone
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateHostedZoneCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ChangeTagsForResource = {
  type t;
  type request = {
@as("RemoveTagKeys") removeTagKeys: option<tagKeyList>,
@as("AddTags") addTags: option<tagList_>,
@as("ResourceId") resourceId: tagResourceId,
@as("ResourceType") resourceType: tagResourceType
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ChangeTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceId") resourceId: tagResourceId,
@as("ResourceType") resourceType: tagResourceType
}
  type response = {
@as("ResourceTagSet") resourceTagSet: resourceTagSet
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListReusableDelegationSets = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<integer_>,
@as("Marker") marker: option<pageMarker>
}
  type response = {
@as("MaxItems") maxItems: integer_,
@as("NextMarker") nextMarker: option<pageMarker>,
@as("IsTruncated") isTruncated: pageTruncated,
@as("Marker") marker: pageMarker,
@as("DelegationSets") delegationSets: delegationSets
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListReusableDelegationSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHostedZonesByVPC = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
@as("MaxItems") maxItems: option<integer_>,
@as("VPCRegion") vpcregion: vpcregion,
@as("VPCId") vpcid: vpcid
}
  type response = {
@as("NextToken") nextToken: option<paginationToken>,
@as("MaxItems") maxItems: integer_,
@as("HostedZoneSummaries") hostedZoneSummaries: hostedZoneSummaries
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListHostedZonesByVPCCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHostedZonesByName = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<integer_>,
@as("HostedZoneId") hostedZoneId: option<resourceId>,
@as("DNSName") dnsname: option<dnsname>
}
  type response = {
@as("MaxItems") maxItems: integer_,
@as("NextHostedZoneId") nextHostedZoneId: option<resourceId>,
@as("NextDNSName") nextDNSName: option<dnsname>,
@as("IsTruncated") isTruncated: pageTruncated,
@as("HostedZoneId") hostedZoneId: option<resourceId>,
@as("DNSName") dnsname: option<dnsname>,
@as("HostedZones") hostedZones: hostedZones
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListHostedZonesByNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHostedZones = {
  type t;
  type request = {
@as("DelegationSetId") delegationSetId: option<resourceId>,
@as("MaxItems") maxItems: option<integer_>,
@as("Marker") marker: option<pageMarker>
}
  type response = {
@as("MaxItems") maxItems: integer_,
@as("NextMarker") nextMarker: option<pageMarker>,
@as("IsTruncated") isTruncated: pageTruncated,
@as("Marker") marker: pageMarker,
@as("HostedZones") hostedZones: hostedZones
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListHostedZonesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetHealthCheckStatus = {
  type t;
  type request = {
@as("HealthCheckId") healthCheckId: healthCheckId
}
  type response = {
@as("HealthCheckObservations") healthCheckObservations: healthCheckObservations
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHealthCheckStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetHealthCheckLastFailureReason = {
  type t;
  type request = {
@as("HealthCheckId") healthCheckId: healthCheckId
}
  type response = {
@as("HealthCheckObservations") healthCheckObservations: healthCheckObservations
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHealthCheckLastFailureReasonCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateHealthCheck = {
  type t;
  type request = {
@as("ResetElements") resetElements: option<resettableElementNameList>,
@as("InsufficientDataHealthStatus") insufficientDataHealthStatus: option<insufficientDataHealthStatus>,
@as("AlarmIdentifier") alarmIdentifier: option<alarmIdentifier>,
@as("Regions") regions: option<healthCheckRegionList>,
@as("EnableSNI") enableSNI: option<enableSNI>,
@as("ChildHealthChecks") childHealthChecks: option<childHealthCheckList>,
@as("HealthThreshold") healthThreshold: option<healthThreshold>,
@as("Disabled") disabled: option<disabled>,
@as("Inverted") inverted: option<inverted>,
@as("FailureThreshold") failureThreshold: option<failureThreshold>,
@as("SearchString") searchString: option<searchString>,
@as("FullyQualifiedDomainName") fullyQualifiedDomainName: option<fullyQualifiedDomainName>,
@as("ResourcePath") resourcePath: option<resourcePath>,
@as("Port") port: option<port>,
@as("IPAddress") ipaddress: option<ipaddress>,
@as("HealthCheckVersion") healthCheckVersion: option<healthCheckVersion>,
@as("HealthCheckId") healthCheckId: healthCheckId
}
  type response = {
@as("HealthCheck") healthCheck: healthCheck
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "UpdateHealthCheckCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResources = {
  type t;
  type request = {
@as("ResourceIds") resourceIds: tagResourceIdList,
@as("ResourceType") resourceType: tagResourceType
}
  type response = {
@as("ResourceTagSets") resourceTagSets: resourceTagSetList
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTagsForResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResourceRecordSets = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<integer_>,
@as("StartRecordIdentifier") startRecordIdentifier: option<resourceRecordSetIdentifier>,
@as("StartRecordType") startRecordType: option<rrtype>,
@as("StartRecordName") startRecordName: option<dnsname>,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("MaxItems") maxItems: integer_,
@as("NextRecordIdentifier") nextRecordIdentifier: option<resourceRecordSetIdentifier>,
@as("NextRecordType") nextRecordType: option<rrtype>,
@as("NextRecordName") nextRecordName: option<dnsname>,
@as("IsTruncated") isTruncated: pageTruncated,
@as("ResourceRecordSets") resourceRecordSets: resourceRecordSets
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListResourceRecordSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetHealthCheck = {
  type t;
  type request = {
@as("HealthCheckId") healthCheckId: healthCheckId
}
  type response = {
@as("HealthCheck") healthCheck: healthCheck
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHealthCheckCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateHealthCheck = {
  type t;
  type request = {
@as("HealthCheckConfig") healthCheckConfig: healthCheckConfig,
@as("CallerReference") callerReference: healthCheckNonce
}
  type response = {
@as("Location") location: resourceURI,
@as("HealthCheck") healthCheck: healthCheck
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateHealthCheckCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHealthChecks = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<integer_>,
@as("Marker") marker: option<pageMarker>
}
  type response = {
@as("MaxItems") maxItems: integer_,
@as("NextMarker") nextMarker: option<pageMarker>,
@as("IsTruncated") isTruncated: pageTruncated,
@as("Marker") marker: pageMarker,
@as("HealthChecks") healthChecks: healthChecks
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListHealthChecksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ChangeResourceRecordSets = {
  type t;
  type request = {
@as("ChangeBatch") changeBatch: changeBatch,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("ChangeInfo") changeInfo: changeInfo
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ChangeResourceRecordSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
