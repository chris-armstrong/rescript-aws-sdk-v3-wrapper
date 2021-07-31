type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vPCRegion = [@as("eu-south-1") #eu_south_1 | @as("af-south-1") #af_south_1 | @as("cn-north-1") #cn_north_1 | @as("ca-central-1") #ca_central_1 | @as("sa-east-1") #sa_east_1 | @as("eu-north-1") #eu_north_1 | @as("ap-northeast-3") #ap_northeast_3 | @as("ap-northeast-2") #ap_northeast_2 | @as("ap-northeast-1") #ap_northeast_1 | @as("ap-south-1") #ap_south_1 | @as("ap-southeast-2") #ap_southeast_2 | @as("ap-southeast-1") #ap_southeast_1 | @as("us-isob-east-1") #us_isob_east_1 | @as("us-iso-east-1") #us_iso_east_1 | @as("us-gov-east-1") #us_gov_east_1 | @as("us-gov-west-1") #us_gov_west_1 | @as("me-south-1") #me_south_1 | @as("ap-east-1") #ap_east_1 | @as("eu-central-1") #eu_central_1 | @as("eu-west-3") #eu_west_3 | @as("eu-west-2") #eu_west_2 | @as("eu-west-1") #eu_west_1 | @as("us-west-2") #us_west_2 | @as("us-west-1") #us_west_1 | @as("us-east-2") #us_east_2 | @as("us-east-1") #us_east_1]
type vPCId = string
type usageCount = float;
type transportProtocol = string
type trafficPolicyVersionMarker = string
type trafficPolicyVersion = int;
type trafficPolicyName = string
type trafficPolicyInstanceState = string
type trafficPolicyInstanceId = string
type trafficPolicyInstanceCount = int;
type trafficPolicyId = string
type trafficPolicyDocument = string
type trafficPolicyComment = string
type timeStamp = Js.Date.t;
type threshold = float;
type tagValue = string
type tagResourceType = [@as("hostedzone") #hostedzone | @as("healthcheck") #healthcheck]
type tagResourceId = string
type tagKey = string
type tTL = float;
type subnetMask = string
type status = string
type statistic = [@as("Minimum") #Minimum | @as("Maximum") #Maximum | @as("SampleCount") #SampleCount | @as("Sum") #Sum | @as("Average") #Average]
type signingKeyTag = int;
type signingKeyString = string
type signingKeyStatusMessage = string
type signingKeyStatus = string
type signingKeyName = string
type signingKeyInteger = int;
type servicePrincipal = string
type serveSignature = string
type searchString = string
type reusableDelegationSetLimitType = [@as("MAX_ZONES_BY_REUSABLE_DELEGATION_SET") #MAX_ZONES_BY_REUSABLE_DELEGATION_SET]
type resourceURI = string
type resourceRecordSetWeight = float;
type resourceRecordSetRegion = [@as("eu-south-1") #eu_south_1 | @as("af-south-1") #af_south_1 | @as("ap-south-1") #ap_south_1 | @as("me-south-1") #me_south_1 | @as("ap-east-1") #ap_east_1 | @as("cn-northwest-1") #cn_northwest_1 | @as("cn-north-1") #cn_north_1 | @as("sa-east-1") #sa_east_1 | @as("eu-north-1") #eu_north_1 | @as("ap-northeast-3") #ap_northeast_3 | @as("ap-northeast-2") #ap_northeast_2 | @as("ap-northeast-1") #ap_northeast_1 | @as("ap-southeast-2") #ap_southeast_2 | @as("ap-southeast-1") #ap_southeast_1 | @as("eu-central-1") #eu_central_1 | @as("eu-west-3") #eu_west_3 | @as("eu-west-2") #eu_west_2 | @as("eu-west-1") #eu_west_1 | @as("ca-central-1") #ca_central_1 | @as("us-west-2") #us_west_2 | @as("us-west-1") #us_west_1 | @as("us-east-2") #us_east_2 | @as("us-east-1") #us_east_1]
type resourceRecordSetMultiValueAnswer = bool;
type resourceRecordSetIdentifier = string
type resourceRecordSetFailover = [@as("SECONDARY") #SECONDARY | @as("PRIMARY") #PRIMARY]
type resourcePath = string
type resourceId = string
type resourceDescription = string
type resettableElementName = [@as("ChildHealthChecks") #ChildHealthChecks | @as("ResourcePath") #ResourcePath | @as("Regions") #Regions | @as("FullyQualifiedDomainName") #FullyQualifiedDomainName]
type requestInterval = int;
type recordDataEntry = string
type rRType = [@as("DS") #DS | @as("CAA") #CAA | @as("AAAA") #AAAA | @as("SPF") #SPF | @as("SRV") #SRV | @as("PTR") #PTR | @as("NAPTR") #NAPTR | @as("MX") #MX | @as("CNAME") #CNAME | @as("NS") #NS | @as("TXT") #TXT | @as("A") #A | @as("SOA") #SOA]
type rData = string
type queryLoggingConfigId = string
type port = int;
type period = int;
type paginationToken = string
type pageTruncated = bool;
type pageMarker = string
type nonce = string
type namespace = string
type nameserver = string
type metricName = string
type message = string
type measureLatency = bool;
type limitValue = float;
type isPrivateZone = bool;
type inverted = bool;
type insufficientDataHealthStatus = [@as("LastKnownStatus") #LastKnownStatus | @as("Unhealthy") #Unhealthy | @as("Healthy") #Healthy]
type iPAddressCidr = string
type iPAddress = string
type hostedZoneRRSetCount = float;
type hostedZoneOwningService = string
type hostedZoneLimitType = [@as("MAX_VPCS_ASSOCIATED_BY_ZONE") #MAX_VPCS_ASSOCIATED_BY_ZONE | @as("MAX_RRSETS_BY_ZONE") #MAX_RRSETS_BY_ZONE]
type hostedZoneCount = float;
type healthThreshold = int;
type healthCheckVersion = float;
type healthCheckType = [@as("CLOUDWATCH_METRIC") #CLOUDWATCH_METRIC | @as("CALCULATED") #CALCULATED | @as("TCP") #TCP | @as("HTTPS_STR_MATCH") #HTTPS_STR_MATCH | @as("HTTP_STR_MATCH") #HTTP_STR_MATCH | @as("HTTPS") #HTTPS | @as("HTTP") #HTTP]
type healthCheckRegion = [@as("sa-east-1") #sa_east_1 | @as("ap-northeast-1") #ap_northeast_1 | @as("ap-southeast-2") #ap_southeast_2 | @as("ap-southeast-1") #ap_southeast_1 | @as("eu-west-1") #eu_west_1 | @as("us-west-2") #us_west_2 | @as("us-west-1") #us_west_1 | @as("us-east-1") #us_east_1]
type healthCheckNonce = string
type healthCheckId = string
type healthCheckCount = float;
type geoLocationSubdivisionName = string
type geoLocationSubdivisionCode = string
type geoLocationCountryName = string
type geoLocationCountryCode = string
type geoLocationContinentName = string
type geoLocationContinentCode = string
type fullyQualifiedDomainName = string
type failureThreshold = int;
type evaluationPeriods = int;
type errorMessage = string
type enableSNI = bool;
type disassociateVPCComment = string
type disabled = bool;
type dimensionField = string
type dNSRCode = string
type dNSName = string
type comparisonOperator = [@as("LessThanOrEqualToThreshold") #LessThanOrEqualToThreshold | @as("LessThanThreshold") #LessThanThreshold | @as("GreaterThanThreshold") #GreaterThanThreshold | @as("GreaterThanOrEqualToThreshold") #GreaterThanOrEqualToThreshold]
type cloudWatchRegion = [@as("us-isob-east-1") #us_isob_east_1 | @as("us-iso-east-1") #us_iso_east_1 | @as("us-gov-east-1") #us_gov_east_1 | @as("us-gov-west-1") #us_gov_west_1 | @as("eu-south-1") #eu_south_1 | @as("af-south-1") #af_south_1 | @as("cn-north-1") #cn_north_1 | @as("cn-northwest-1") #cn_northwest_1 | @as("sa-east-1") #sa_east_1 | @as("eu-north-1") #eu_north_1 | @as("ap-northeast-3") #ap_northeast_3 | @as("ap-northeast-2") #ap_northeast_2 | @as("ap-northeast-1") #ap_northeast_1 | @as("ap-southeast-2") #ap_southeast_2 | @as("ap-southeast-1") #ap_southeast_1 | @as("ap-south-1") #ap_south_1 | @as("me-south-1") #me_south_1 | @as("ap-east-1") #ap_east_1 | @as("eu-west-3") #eu_west_3 | @as("eu-west-2") #eu_west_2 | @as("eu-west-1") #eu_west_1 | @as("eu-central-1") #eu_central_1 | @as("ca-central-1") #ca_central_1 | @as("us-west-2") #us_west_2 | @as("us-west-1") #us_west_1 | @as("us-east-2") #us_east_2 | @as("us-east-1") #us_east_1]
type cloudWatchLogsLogGroupArn = string
type changeStatus = [@as("INSYNC") #INSYNC | @as("PENDING") #PENDING]
type changeAction = [@as("UPSERT") #UPSERT | @as("DELETE") #DELETE | @as("CREATE") #CREATE]
type associateVPCComment = string
type aliasHealthEnabled = bool;
type alarmName = string
type accountLimitType = [@as("MAX_TRAFFIC_POLICIES_BY_OWNER") #MAX_TRAFFIC_POLICIES_BY_OWNER | @as("MAX_REUSABLE_DELEGATION_SETS_BY_OWNER") #MAX_REUSABLE_DELEGATION_SETS_BY_OWNER | @as("MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER") #MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER | @as("MAX_HOSTED_ZONES_BY_OWNER") #MAX_HOSTED_ZONES_BY_OWNER | @as("MAX_HEALTH_CHECKS_BY_OWNER") #MAX_HEALTH_CHECKS_BY_OWNER]
type aWSAccountID = string
type vPC = {
@as("VPCId") vPCId: vPCId,
@as("VPCRegion") vPCRegion: vPCRegion
}
type trafficPolicySummary = {
@as("TrafficPolicyCount") trafficPolicyCount: option<trafficPolicyVersion>,
@as("LatestVersion") latestVersion: option<trafficPolicyVersion>,
@as("Type") type_: option<rRType>,
@as("Name") name: option<trafficPolicyName>,
@as("Id") id: option<trafficPolicyId>
}
type trafficPolicyInstance = {
@as("TrafficPolicyType") trafficPolicyType: option<rRType>,
@as("TrafficPolicyVersion") trafficPolicyVersion: option<trafficPolicyVersion>,
@as("TrafficPolicyId") trafficPolicyId: option<trafficPolicyId>,
@as("Message") message: option<message>,
@as("State") state: option<trafficPolicyInstanceState>,
@as("TTL") tTL: option<tTL>,
@as("Name") name: option<dNSName>,
@as("HostedZoneId") hostedZoneId: option<resourceId>,
@as("Id") id: option<trafficPolicyInstanceId>
}
type trafficPolicy = {
@as("Comment") comment: trafficPolicyComment,
@as("Document") document: option<trafficPolicyDocument>,
@as("Type") type_: option<rRType>,
@as("Name") name: option<trafficPolicyName>,
@as("Version") version: option<trafficPolicyVersion>,
@as("Id") id: option<trafficPolicyId>
}
type tagResourceIdList = array<tagResourceId>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type statusReport = {
@as("CheckedTime") checkedTime: timeStamp,
@as("Status") status: status
}
type reusableDelegationSetLimit = {
@as("Value") value: option<limitValue>,
@as("Type") type_: option<reusableDelegationSetLimitType>
}
type resourceRecord = {
@as("Value") value: option<rData>
}
type resettableElementNameList = array<resettableElementName>
type recordData = array<recordDataEntry>
type queryLoggingConfig = {
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: option<cloudWatchLogsLogGroupArn>,
@as("HostedZoneId") hostedZoneId: option<resourceId>,
@as("Id") id: option<queryLoggingConfigId>
}
type linkedService = {
@as("Description") description: resourceDescription,
@as("ServicePrincipal") servicePrincipal: servicePrincipal
}
type keySigningKey = {
@as("LastModifiedDate") lastModifiedDate: timeStamp,
@as("CreatedDate") createdDate: timeStamp,
@as("StatusMessage") statusMessage: signingKeyStatusMessage,
@as("Status") status: signingKeyStatus,
@as("DNSKEYRecord") dNSKEYRecord: signingKeyString,
@as("DSRecord") dSRecord: signingKeyString,
@as("PublicKey") publicKey: signingKeyString,
@as("DigestValue") digestValue: signingKeyString,
@as("KeyTag") keyTag: signingKeyTag,
@as("DigestAlgorithmType") digestAlgorithmType: signingKeyInteger,
@as("DigestAlgorithmMnemonic") digestAlgorithmMnemonic: signingKeyString,
@as("SigningAlgorithmType") signingAlgorithmType: signingKeyInteger,
@as("SigningAlgorithmMnemonic") signingAlgorithmMnemonic: signingKeyString,
@as("Flag") flag: signingKeyInteger,
@as("KmsArn") kmsArn: signingKeyString,
@as("Name") name: signingKeyName
}
type hostedZoneOwner = {
@as("OwningService") owningService: hostedZoneOwningService,
@as("OwningAccount") owningAccount: aWSAccountID
}
type hostedZoneLimit = {
@as("Value") value: option<limitValue>,
@as("Type") type_: option<hostedZoneLimitType>
}
type hostedZoneConfig = {
@as("PrivateZone") privateZone: isPrivateZone,
@as("Comment") comment: resourceDescription
}
type healthCheckRegionList = array<healthCheckRegion>
type geoLocationDetails = {
@as("SubdivisionName") subdivisionName: geoLocationSubdivisionName,
@as("SubdivisionCode") subdivisionCode: geoLocationSubdivisionCode,
@as("CountryName") countryName: geoLocationCountryName,
@as("CountryCode") countryCode: geoLocationCountryCode,
@as("ContinentName") continentName: geoLocationContinentName,
@as("ContinentCode") continentCode: geoLocationContinentCode
}
type geoLocation = {
@as("SubdivisionCode") subdivisionCode: geoLocationSubdivisionCode,
@as("CountryCode") countryCode: geoLocationCountryCode,
@as("ContinentCode") continentCode: geoLocationContinentCode
}
type errorMessages = array<errorMessage>
type dimension = {
@as("Value") value: option<dimensionField>,
@as("Name") name: option<dimensionField>
}
type delegationSetNameServers = array<dNSName>
type dNSSECStatus = {
@as("StatusMessage") statusMessage: signingKeyStatusMessage,
@as("ServeSignature") serveSignature: serveSignature
}
type childHealthCheckList = array<healthCheckId>
type checkerIpRanges = array<iPAddressCidr>
type changeInfo = {
@as("Comment") comment: resourceDescription,
@as("SubmittedAt") submittedAt: option<timeStamp>,
@as("Status") status: option<changeStatus>,
@as("Id") id: option<resourceId>
}
type aliasTarget = {
@as("EvaluateTargetHealth") evaluateTargetHealth: option<aliasHealthEnabled>,
@as("DNSName") dNSName: option<dNSName>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
type alarmIdentifier = {
@as("Name") name: option<alarmName>,
@as("Region") region: option<cloudWatchRegion>
}
type accountLimit = {
@as("Value") value: option<limitValue>,
@as("Type") type_: option<accountLimitType>
}
type vPCs = array<vPC>
type trafficPolicySummaries = array<trafficPolicySummary>
type trafficPolicyInstances = array<trafficPolicyInstance>
type trafficPolicies = array<trafficPolicy>
type tagList = array<tag>
type resourceRecords = array<resourceRecord>
type queryLoggingConfigs = array<queryLoggingConfig>
type keySigningKeys = array<keySigningKey>
type hostedZoneSummary = {
@as("Owner") owner: option<hostedZoneOwner>,
@as("Name") name: option<dNSName>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
type hostedZone = {
@as("LinkedService") linkedService: linkedService,
@as("ResourceRecordSetCount") resourceRecordSetCount: hostedZoneRRSetCount,
@as("Config") config: hostedZoneConfig,
@as("CallerReference") callerReference: option<nonce>,
@as("Name") name: option<dNSName>,
@as("Id") id: option<resourceId>
}
type healthCheckObservation = {
@as("StatusReport") statusReport: statusReport,
@as("IPAddress") iPAddress: iPAddress,
@as("Region") region: healthCheckRegion
}
type healthCheckConfig = {
@as("InsufficientDataHealthStatus") insufficientDataHealthStatus: insufficientDataHealthStatus,
@as("AlarmIdentifier") alarmIdentifier: alarmIdentifier,
@as("Regions") regions: healthCheckRegionList,
@as("EnableSNI") enableSNI: enableSNI,
@as("ChildHealthChecks") childHealthChecks: childHealthCheckList,
@as("HealthThreshold") healthThreshold: healthThreshold,
@as("Disabled") disabled: disabled,
@as("Inverted") inverted: inverted,
@as("MeasureLatency") measureLatency: measureLatency,
@as("FailureThreshold") failureThreshold: failureThreshold,
@as("RequestInterval") requestInterval: requestInterval,
@as("SearchString") searchString: searchString,
@as("FullyQualifiedDomainName") fullyQualifiedDomainName: fullyQualifiedDomainName,
@as("ResourcePath") resourcePath: resourcePath,
@as("Type") type_: option<healthCheckType>,
@as("Port") port: port,
@as("IPAddress") iPAddress: iPAddress
}
type geoLocationDetailsList = array<geoLocationDetails>
type dimensionList = array<dimension>
type delegationSet = {
@as("NameServers") nameServers: option<delegationSetNameServers>,
@as("CallerReference") callerReference: nonce,
@as("Id") id: resourceId
}
type resourceTagSet = {
@as("Tags") tags: tagList,
@as("ResourceId") resourceId: tagResourceId,
@as("ResourceType") resourceType: tagResourceType
}
type resourceRecordSet = {
@as("TrafficPolicyInstanceId") trafficPolicyInstanceId: trafficPolicyInstanceId,
@as("HealthCheckId") healthCheckId: healthCheckId,
@as("AliasTarget") aliasTarget: aliasTarget,
@as("ResourceRecords") resourceRecords: resourceRecords,
@as("TTL") tTL: tTL,
@as("MultiValueAnswer") multiValueAnswer: resourceRecordSetMultiValueAnswer,
@as("Failover") failover: resourceRecordSetFailover,
@as("GeoLocation") geoLocation: geoLocation,
@as("Region") region: resourceRecordSetRegion,
@as("Weight") weight: resourceRecordSetWeight,
@as("SetIdentifier") setIdentifier: resourceRecordSetIdentifier,
@as("Type") type_: option<rRType>,
@as("Name") name: option<dNSName>
}
type hostedZones = array<hostedZone>
type hostedZoneSummaries = array<hostedZoneSummary>
type healthCheckObservations = array<healthCheckObservation>
type delegationSets = array<delegationSet>
type cloudWatchAlarmConfiguration = {
@as("Dimensions") dimensions: dimensionList,
@as("Statistic") statistic: option<statistic>,
@as("Namespace") namespace: option<namespace>,
@as("MetricName") metricName: option<metricName>,
@as("Period") period: option<period>,
@as("ComparisonOperator") comparisonOperator: option<comparisonOperator>,
@as("Threshold") threshold: option<threshold>,
@as("EvaluationPeriods") evaluationPeriods: option<evaluationPeriods>
}
type resourceTagSetList = array<resourceTagSet>
type resourceRecordSets = array<resourceRecordSet>
type healthCheck = {
@as("CloudWatchAlarmConfiguration") cloudWatchAlarmConfiguration: cloudWatchAlarmConfiguration,
@as("HealthCheckVersion") healthCheckVersion: option<healthCheckVersion>,
@as("HealthCheckConfig") healthCheckConfig: option<healthCheckConfig>,
@as("LinkedService") linkedService: linkedService,
@as("CallerReference") callerReference: option<healthCheckNonce>,
@as("Id") id: option<healthCheckId>
}
type change = {
@as("ResourceRecordSet") resourceRecordSet: option<resourceRecordSet>,
@as("Action") action: option<changeAction>
}
type healthChecks = array<healthCheck>
type changes = array<change>
type changeBatch = {
@as("Changes") changes: option<changes>,
@as("Comment") comment: resourceDescription
}
type clientType;
@module("@aws-sdk/client-route53") @new external createClient: unit => clientType = "Route53Client";
module GetTrafficPolicyInstanceCount = {
  type t;
  type request = unit
  type response = {
@as("TrafficPolicyInstanceCount") trafficPolicyInstanceCount: option<trafficPolicyInstanceCount>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetTrafficPolicyInstanceCountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHostedZoneCount = {
  type t;
  type request = unit
  type response = {
@as("HostedZoneCount") hostedZoneCount: option<hostedZoneCount>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHostedZoneCountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHealthCheckCount = {
  type t;
  type request = unit
  type response = {
@as("HealthCheckCount") healthCheckCount: option<healthCheckCount>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHealthCheckCountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTrafficPolicyInstance = {
  type t;
  type request = {
@as("Id") id: option<trafficPolicyInstanceId>
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteTrafficPolicyInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTrafficPolicy = {
  type t;
  type request = {
@as("Version") version: option<trafficPolicyVersion>,
@as("Id") id: option<trafficPolicyId>
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteTrafficPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReusableDelegationSet = {
  type t;
  type request = {
@as("Id") id: option<resourceId>
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteReusableDelegationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteQueryLoggingConfig = {
  type t;
  type request = {
@as("Id") id: option<queryLoggingConfigId>
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteQueryLoggingConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteHealthCheck = {
  type t;
  type request = {
@as("HealthCheckId") healthCheckId: option<healthCheckId>
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteHealthCheckCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTrafficPolicyInstance = {
  type t;
  type request = {
@as("TrafficPolicyVersion") trafficPolicyVersion: option<trafficPolicyVersion>,
@as("TrafficPolicyId") trafficPolicyId: option<trafficPolicyId>,
@as("TTL") tTL: option<tTL>,
@as("Id") id: option<trafficPolicyInstanceId>
}
  type response = {
@as("TrafficPolicyInstance") trafficPolicyInstance: option<trafficPolicyInstance>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "UpdateTrafficPolicyInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTrafficPolicyComment = {
  type t;
  type request = {
@as("Comment") comment: option<trafficPolicyComment>,
@as("Version") version: option<trafficPolicyVersion>,
@as("Id") id: option<trafficPolicyId>
}
  type response = {
@as("TrafficPolicy") trafficPolicy: option<trafficPolicy>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "UpdateTrafficPolicyCommentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestDNSAnswer = {
  type t;
  type request = {
@as("EDNS0ClientSubnetMask") eDNS0ClientSubnetMask: subnetMask,
@as("EDNS0ClientSubnetIP") eDNS0ClientSubnetIP: iPAddress,
@as("ResolverIP") resolverIP: iPAddress,
@as("RecordType") recordType: option<rRType>,
@as("RecordName") recordName: option<dNSName>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("Protocol") protocol: option<transportProtocol>,
@as("ResponseCode") responseCode: option<dNSRCode>,
@as("RecordData") recordData: option<recordData>,
@as("RecordType") recordType: option<rRType>,
@as("RecordName") recordName: option<dNSName>,
@as("Nameserver") nameserver: option<nameserver>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "TestDNSAnswerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTrafficPolicyInstance = {
  type t;
  type request = {
@as("Id") id: option<trafficPolicyInstanceId>
}
  type response = {
@as("TrafficPolicyInstance") trafficPolicyInstance: option<trafficPolicyInstance>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetTrafficPolicyInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTrafficPolicy = {
  type t;
  type request = {
@as("Version") version: option<trafficPolicyVersion>,
@as("Id") id: option<trafficPolicyId>
}
  type response = {
@as("TrafficPolicy") trafficPolicy: option<trafficPolicy>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetTrafficPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetReusableDelegationSetLimit = {
  type t;
  type request = {
@as("DelegationSetId") delegationSetId: option<resourceId>,
@as("Type") type_: option<reusableDelegationSetLimitType>
}
  type response = {
@as("Count") count: option<usageCount>,
@as("Limit") limit: option<reusableDelegationSetLimit>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetReusableDelegationSetLimitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetQueryLoggingConfig = {
  type t;
  type request = {
@as("Id") id: option<queryLoggingConfigId>
}
  type response = {
@as("QueryLoggingConfig") queryLoggingConfig: option<queryLoggingConfig>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetQueryLoggingConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHostedZoneLimit = {
  type t;
  type request = {
@as("HostedZoneId") hostedZoneId: option<resourceId>,
@as("Type") type_: option<hostedZoneLimitType>
}
  type response = {
@as("Count") count: option<usageCount>,
@as("Limit") limit: option<hostedZoneLimit>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHostedZoneLimitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGeoLocation = {
  type t;
  type request = {
@as("SubdivisionCode") subdivisionCode: geoLocationSubdivisionCode,
@as("CountryCode") countryCode: geoLocationCountryCode,
@as("ContinentCode") continentCode: geoLocationContinentCode
}
  type response = {
@as("GeoLocationDetails") geoLocationDetails: option<geoLocationDetails>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetGeoLocationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCheckerIpRanges = {
  type t;
  type request = unit
  type response = {
@as("CheckerIpRanges") checkerIpRanges: option<checkerIpRanges>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetCheckerIpRangesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetChange = {
  type t;
  type request = {
@as("Id") id: option<resourceId>
}
  type response = {
@as("ChangeInfo") changeInfo: option<changeInfo>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetChangeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccountLimit = {
  type t;
  type request = {
@as("Type") type_: option<accountLimitType>
}
  type response = {
@as("Count") count: option<usageCount>,
@as("Limit") limit: option<accountLimit>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetAccountLimitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableHostedZoneDNSSEC = {
  type t;
  type request = {
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("ChangeInfo") changeInfo: option<changeInfo>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "EnableHostedZoneDNSSECCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateVPCFromHostedZone = {
  type t;
  type request = {
@as("Comment") comment: disassociateVPCComment,
@as("VPC") vPC: option<vPC>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("ChangeInfo") changeInfo: option<changeInfo>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DisassociateVPCFromHostedZoneCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableHostedZoneDNSSEC = {
  type t;
  type request = {
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("ChangeInfo") changeInfo: option<changeInfo>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DisableHostedZoneDNSSECCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVPCAssociationAuthorization = {
  type t;
  type request = {
@as("VPC") vPC: option<vPC>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteVPCAssociationAuthorizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteKeySigningKey = {
  type t;
  type request = {
@as("Name") name: option<signingKeyName>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("ChangeInfo") changeInfo: option<changeInfo>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteKeySigningKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteHostedZone = {
  type t;
  type request = {
@as("Id") id: option<resourceId>
}
  type response = {
@as("ChangeInfo") changeInfo: option<changeInfo>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeleteHostedZoneCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeactivateKeySigningKey = {
  type t;
  type request = {
@as("Name") name: option<signingKeyName>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("ChangeInfo") changeInfo: option<changeInfo>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "DeactivateKeySigningKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVPCAssociationAuthorization = {
  type t;
  type request = {
@as("VPC") vPC: option<vPC>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("VPC") vPC: option<vPC>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateVPCAssociationAuthorizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTrafficPolicyVersion = {
  type t;
  type request = {
@as("Comment") comment: trafficPolicyComment,
@as("Document") document: option<trafficPolicyDocument>,
@as("Id") id: option<trafficPolicyId>
}
  type response = {
@as("Location") location: option<resourceURI>,
@as("TrafficPolicy") trafficPolicy: option<trafficPolicy>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateTrafficPolicyVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTrafficPolicyInstance = {
  type t;
  type request = {
@as("TrafficPolicyVersion") trafficPolicyVersion: option<trafficPolicyVersion>,
@as("TrafficPolicyId") trafficPolicyId: option<trafficPolicyId>,
@as("TTL") tTL: option<tTL>,
@as("Name") name: option<dNSName>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("Location") location: option<resourceURI>,
@as("TrafficPolicyInstance") trafficPolicyInstance: option<trafficPolicyInstance>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateTrafficPolicyInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTrafficPolicy = {
  type t;
  type request = {
@as("Comment") comment: trafficPolicyComment,
@as("Document") document: option<trafficPolicyDocument>,
@as("Name") name: option<trafficPolicyName>
}
  type response = {
@as("Location") location: option<resourceURI>,
@as("TrafficPolicy") trafficPolicy: option<trafficPolicy>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateTrafficPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateQueryLoggingConfig = {
  type t;
  type request = {
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: option<cloudWatchLogsLogGroupArn>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("Location") location: option<resourceURI>,
@as("QueryLoggingConfig") queryLoggingConfig: option<queryLoggingConfig>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateQueryLoggingConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateKeySigningKey = {
  type t;
  type request = {
@as("Status") status: option<signingKeyStatus>,
@as("Name") name: option<signingKeyName>,
@as("KeyManagementServiceArn") keyManagementServiceArn: option<signingKeyString>,
@as("HostedZoneId") hostedZoneId: option<resourceId>,
@as("CallerReference") callerReference: option<nonce>
}
  type response = {
@as("Location") location: option<resourceURI>,
@as("KeySigningKey") keySigningKey: option<keySigningKey>,
@as("ChangeInfo") changeInfo: option<changeInfo>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateKeySigningKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateVPCWithHostedZone = {
  type t;
  type request = {
@as("Comment") comment: associateVPCComment,
@as("VPC") vPC: option<vPC>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("ChangeInfo") changeInfo: option<changeInfo>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "AssociateVPCWithHostedZoneCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ActivateKeySigningKey = {
  type t;
  type request = {
@as("Name") name: option<signingKeyName>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("ChangeInfo") changeInfo: option<changeInfo>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ActivateKeySigningKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateHostedZoneComment = {
  type t;
  type request = {
@as("Comment") comment: resourceDescription,
@as("Id") id: option<resourceId>
}
  type response = {
@as("HostedZone") hostedZone: option<hostedZone>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "UpdateHostedZoneCommentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVPCAssociationAuthorizations = {
  type t;
  type request = {
@as("MaxResults") maxResults: apiInteger,
@as("NextToken") nextToken: paginationToken,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("VPCs") vPCs: option<vPCs>,
@as("NextToken") nextToken: paginationToken,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListVPCAssociationAuthorizationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTrafficPolicyVersions = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("TrafficPolicyVersionMarker") trafficPolicyVersionMarker: trafficPolicyVersionMarker,
@as("Id") id: option<trafficPolicyId>
}
  type response = {
@as("MaxItems") maxItems: option<apiInteger>,
@as("TrafficPolicyVersionMarker") trafficPolicyVersionMarker: option<trafficPolicyVersionMarker>,
@as("IsTruncated") isTruncated: option<pageTruncated>,
@as("TrafficPolicies") trafficPolicies: option<trafficPolicies>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTrafficPolicyVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTrafficPolicyInstancesByPolicy = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: rRType,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: dNSName,
@as("HostedZoneIdMarker") hostedZoneIdMarker: resourceId,
@as("TrafficPolicyVersion") trafficPolicyVersion: option<trafficPolicyVersion>,
@as("TrafficPolicyId") trafficPolicyId: option<trafficPolicyId>
}
  type response = {
@as("MaxItems") maxItems: option<apiInteger>,
@as("IsTruncated") isTruncated: option<pageTruncated>,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: rRType,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: dNSName,
@as("HostedZoneIdMarker") hostedZoneIdMarker: resourceId,
@as("TrafficPolicyInstances") trafficPolicyInstances: option<trafficPolicyInstances>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTrafficPolicyInstancesByPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTrafficPolicyInstancesByHostedZone = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: rRType,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: dNSName,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("MaxItems") maxItems: option<apiInteger>,
@as("IsTruncated") isTruncated: option<pageTruncated>,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: rRType,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: dNSName,
@as("TrafficPolicyInstances") trafficPolicyInstances: option<trafficPolicyInstances>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTrafficPolicyInstancesByHostedZoneCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTrafficPolicyInstances = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: rRType,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: dNSName,
@as("HostedZoneIdMarker") hostedZoneIdMarker: resourceId
}
  type response = {
@as("MaxItems") maxItems: option<apiInteger>,
@as("IsTruncated") isTruncated: option<pageTruncated>,
@as("TrafficPolicyInstanceTypeMarker") trafficPolicyInstanceTypeMarker: rRType,
@as("TrafficPolicyInstanceNameMarker") trafficPolicyInstanceNameMarker: dNSName,
@as("HostedZoneIdMarker") hostedZoneIdMarker: resourceId,
@as("TrafficPolicyInstances") trafficPolicyInstances: option<trafficPolicyInstances>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTrafficPolicyInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTrafficPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("TrafficPolicyIdMarker") trafficPolicyIdMarker: trafficPolicyId
}
  type response = {
@as("MaxItems") maxItems: option<apiInteger>,
@as("TrafficPolicyIdMarker") trafficPolicyIdMarker: option<trafficPolicyId>,
@as("IsTruncated") isTruncated: option<pageTruncated>,
@as("TrafficPolicySummaries") trafficPolicySummaries: option<trafficPolicySummaries>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTrafficPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListQueryLoggingConfigs = {
  type t;
  type request = {
@as("MaxResults") maxResults: apiInteger,
@as("NextToken") nextToken: paginationToken,
@as("HostedZoneId") hostedZoneId: resourceId
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("QueryLoggingConfigs") queryLoggingConfigs: option<queryLoggingConfigs>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListQueryLoggingConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGeoLocations = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("StartSubdivisionCode") startSubdivisionCode: geoLocationSubdivisionCode,
@as("StartCountryCode") startCountryCode: geoLocationCountryCode,
@as("StartContinentCode") startContinentCode: geoLocationContinentCode
}
  type response = {
@as("MaxItems") maxItems: option<apiInteger>,
@as("NextSubdivisionCode") nextSubdivisionCode: geoLocationSubdivisionCode,
@as("NextCountryCode") nextCountryCode: geoLocationCountryCode,
@as("NextContinentCode") nextContinentCode: geoLocationContinentCode,
@as("IsTruncated") isTruncated: option<pageTruncated>,
@as("GeoLocationDetailsList") geoLocationDetailsList: option<geoLocationDetailsList>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListGeoLocationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetReusableDelegationSet = {
  type t;
  type request = {
@as("Id") id: option<resourceId>
}
  type response = {
@as("DelegationSet") delegationSet: option<delegationSet>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetReusableDelegationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHostedZone = {
  type t;
  type request = {
@as("Id") id: option<resourceId>
}
  type response = {
@as("VPCs") vPCs: vPCs,
@as("DelegationSet") delegationSet: delegationSet,
@as("HostedZone") hostedZone: option<hostedZone>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHostedZoneCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDNSSEC = {
  type t;
  type request = {
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("KeySigningKeys") keySigningKeys: option<keySigningKeys>,
@as("Status") status: option<dNSSECStatus>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetDNSSECCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReusableDelegationSet = {
  type t;
  type request = {
@as("HostedZoneId") hostedZoneId: resourceId,
@as("CallerReference") callerReference: option<nonce>
}
  type response = {
@as("Location") location: option<resourceURI>,
@as("DelegationSet") delegationSet: option<delegationSet>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateReusableDelegationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHostedZone = {
  type t;
  type request = {
@as("DelegationSetId") delegationSetId: resourceId,
@as("HostedZoneConfig") hostedZoneConfig: hostedZoneConfig,
@as("CallerReference") callerReference: option<nonce>,
@as("VPC") vPC: vPC,
@as("Name") name: option<dNSName>
}
  type response = {
@as("Location") location: option<resourceURI>,
@as("VPC") vPC: vPC,
@as("DelegationSet") delegationSet: option<delegationSet>,
@as("ChangeInfo") changeInfo: option<changeInfo>,
@as("HostedZone") hostedZone: option<hostedZone>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateHostedZoneCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ChangeTagsForResource = {
  type t;
  type request = {
@as("RemoveTagKeys") removeTagKeys: tagKeyList,
@as("AddTags") addTags: tagList,
@as("ResourceId") resourceId: option<tagResourceId>,
@as("ResourceType") resourceType: option<tagResourceType>
}
  type response = unit
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ChangeTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<tagResourceId>,
@as("ResourceType") resourceType: option<tagResourceType>
}
  type response = {
@as("ResourceTagSet") resourceTagSet: option<resourceTagSet>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReusableDelegationSets = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: pageMarker
}
  type response = {
@as("MaxItems") maxItems: option<apiInteger>,
@as("NextMarker") nextMarker: pageMarker,
@as("IsTruncated") isTruncated: option<pageTruncated>,
@as("Marker") marker: option<pageMarker>,
@as("DelegationSets") delegationSets: option<delegationSets>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListReusableDelegationSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHostedZonesByVPC = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxItems") maxItems: apiInteger,
@as("VPCRegion") vPCRegion: option<vPCRegion>,
@as("VPCId") vPCId: option<vPCId>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("MaxItems") maxItems: option<apiInteger>,
@as("HostedZoneSummaries") hostedZoneSummaries: option<hostedZoneSummaries>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListHostedZonesByVPCCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHostedZonesByName = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("HostedZoneId") hostedZoneId: resourceId,
@as("DNSName") dNSName: dNSName
}
  type response = {
@as("MaxItems") maxItems: option<apiInteger>,
@as("NextHostedZoneId") nextHostedZoneId: resourceId,
@as("NextDNSName") nextDNSName: dNSName,
@as("IsTruncated") isTruncated: option<pageTruncated>,
@as("HostedZoneId") hostedZoneId: resourceId,
@as("DNSName") dNSName: dNSName,
@as("HostedZones") hostedZones: option<hostedZones>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListHostedZonesByNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHostedZones = {
  type t;
  type request = {
@as("DelegationSetId") delegationSetId: resourceId,
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: pageMarker
}
  type response = {
@as("MaxItems") maxItems: option<apiInteger>,
@as("NextMarker") nextMarker: pageMarker,
@as("IsTruncated") isTruncated: option<pageTruncated>,
@as("Marker") marker: option<pageMarker>,
@as("HostedZones") hostedZones: option<hostedZones>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListHostedZonesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHealthCheckStatus = {
  type t;
  type request = {
@as("HealthCheckId") healthCheckId: option<healthCheckId>
}
  type response = {
@as("HealthCheckObservations") healthCheckObservations: option<healthCheckObservations>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHealthCheckStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHealthCheckLastFailureReason = {
  type t;
  type request = {
@as("HealthCheckId") healthCheckId: option<healthCheckId>
}
  type response = {
@as("HealthCheckObservations") healthCheckObservations: option<healthCheckObservations>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHealthCheckLastFailureReasonCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateHealthCheck = {
  type t;
  type request = {
@as("ResetElements") resetElements: resettableElementNameList,
@as("InsufficientDataHealthStatus") insufficientDataHealthStatus: insufficientDataHealthStatus,
@as("AlarmIdentifier") alarmIdentifier: alarmIdentifier,
@as("Regions") regions: healthCheckRegionList,
@as("EnableSNI") enableSNI: enableSNI,
@as("ChildHealthChecks") childHealthChecks: childHealthCheckList,
@as("HealthThreshold") healthThreshold: healthThreshold,
@as("Disabled") disabled: disabled,
@as("Inverted") inverted: inverted,
@as("FailureThreshold") failureThreshold: failureThreshold,
@as("SearchString") searchString: searchString,
@as("FullyQualifiedDomainName") fullyQualifiedDomainName: fullyQualifiedDomainName,
@as("ResourcePath") resourcePath: resourcePath,
@as("Port") port: port,
@as("IPAddress") iPAddress: iPAddress,
@as("HealthCheckVersion") healthCheckVersion: healthCheckVersion,
@as("HealthCheckId") healthCheckId: option<healthCheckId>
}
  type response = {
@as("HealthCheck") healthCheck: option<healthCheck>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "UpdateHealthCheckCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResources = {
  type t;
  type request = {
@as("ResourceIds") resourceIds: option<tagResourceIdList>,
@as("ResourceType") resourceType: option<tagResourceType>
}
  type response = {
@as("ResourceTagSets") resourceTagSets: option<resourceTagSetList>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListTagsForResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResourceRecordSets = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("StartRecordIdentifier") startRecordIdentifier: resourceRecordSetIdentifier,
@as("StartRecordType") startRecordType: rRType,
@as("StartRecordName") startRecordName: dNSName,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("MaxItems") maxItems: option<apiInteger>,
@as("NextRecordIdentifier") nextRecordIdentifier: resourceRecordSetIdentifier,
@as("NextRecordType") nextRecordType: rRType,
@as("NextRecordName") nextRecordName: dNSName,
@as("IsTruncated") isTruncated: option<pageTruncated>,
@as("ResourceRecordSets") resourceRecordSets: option<resourceRecordSets>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListResourceRecordSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHealthCheck = {
  type t;
  type request = {
@as("HealthCheckId") healthCheckId: option<healthCheckId>
}
  type response = {
@as("HealthCheck") healthCheck: option<healthCheck>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "GetHealthCheckCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHealthCheck = {
  type t;
  type request = {
@as("HealthCheckConfig") healthCheckConfig: option<healthCheckConfig>,
@as("CallerReference") callerReference: option<healthCheckNonce>
}
  type response = {
@as("Location") location: option<resourceURI>,
@as("HealthCheck") healthCheck: option<healthCheck>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "CreateHealthCheckCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHealthChecks = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: pageMarker
}
  type response = {
@as("MaxItems") maxItems: option<apiInteger>,
@as("NextMarker") nextMarker: pageMarker,
@as("IsTruncated") isTruncated: option<pageTruncated>,
@as("Marker") marker: option<pageMarker>,
@as("HealthChecks") healthChecks: option<healthChecks>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ListHealthChecksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ChangeResourceRecordSets = {
  type t;
  type request = {
@as("ChangeBatch") changeBatch: option<changeBatch>,
@as("HostedZoneId") hostedZoneId: option<resourceId>
}
  type response = {
@as("ChangeInfo") changeInfo: option<changeInfo>
}
  @module("@aws-sdk/client-route53") @new external new_: (request) => t = "ChangeResourceRecordSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
