type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type warmupStatus = [@as("DONE") #DONE | @as("IN_PROGRESS") #IN_PROGRESS]
type volume = float;
type tlsPolicy = [@as("OPTIONAL") #OPTIONAL | @as("REQUIRE") #REQUIRE]
type amazonawsTimestamp = Js.Date.t;
type templateData = string
type templateArn = string
type tagValue = string
type tagKey = string
type subject = string
type sentLast24Hours = float;
type sendingPoolName = string
type reportName = string
type reportId = string
type rblName = string
type rawMessageData = NodeJs.Buffer.t;
type poolName = string
type percentage100Wrapper = int;
type percentage = float;
type outboundMessageId = string
type nextToken = string
type messageTagValue = string
type messageTagName = string
type messageData = string
type messageContent = string
type maxSendRate = float;
type maxItems = int;
type max24HourSend = float;
type mailFromDomainStatus = [@as("TEMPORARY_FAILURE") #TEMPORARY_FAILURE | @as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING") #PENDING]
type mailFromDomainName = string
type lastFreshStart = Js.Date.t;
type ispName = string
type ip = string
type imageUrl = string
type identityType = [@as("MANAGED_DOMAIN") #MANAGED_DOMAIN | @as("DOMAIN") #DOMAIN | @as("EMAIL_ADDRESS") #EMAIL_ADDRESS]
type identity = string
type generalEnforcementStatus = string
type eventType = [@as("RENDERING_FAILURE") #RENDERING_FAILURE | @as("CLICK") #CLICK | @as("OPEN") #OPEN | @as("DELIVERY") #DELIVERY | @as("COMPLAINT") #COMPLAINT | @as("BOUNCE") #BOUNCE | @as("REJECT") #REJECT | @as("SEND") #SEND]
type eventDestinationName = string
type esp = string
type errorMessage = string
type enabled = bool;
type emailAddress = string
type domain = string
type dnsToken = string
type dkimStatus = [@as("NOT_STARTED") #NOT_STARTED | @as("TEMPORARY_FAILURE") #TEMPORARY_FAILURE | @as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING") #PENDING]
type dimensionValueSource = [@as("LINK_TAG") #LINK_TAG | @as("EMAIL_HEADER") #EMAIL_HEADER | @as("MESSAGE_TAG") #MESSAGE_TAG]
type dimensionName = string
type deliverabilityTestSubject = string
type deliverabilityTestStatus = [@as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS]
type deliverabilityDashboardAccountStatus = [@as("DISABLED") #DISABLED | @as("PENDING_EXPIRATION") #PENDING_EXPIRATION | @as("ACTIVE") #ACTIVE]
type defaultDimensionValue = string
type customRedirectDomain = string
type configurationSetName = string
type charset = string
type campaignId = string
type blacklistingDescription = string
type blacklistItemName = string
type behaviorOnMxFailure = [@as("REJECT_MESSAGE") #REJECT_MESSAGE | @as("USE_DEFAULT_VALUE") #USE_DEFAULT_VALUE]
type amazonResourceName = string
type volumeStatistics = {
@as("ProjectedSpam") projectedSpam: volume,
@as("ProjectedInbox") projectedInbox: volume,
@as("SpamRawCount") spamRawCount: volume,
@as("InboxRawCount") inboxRawCount: volume
}
type trackingOptions = {
@as("CustomRedirectDomain") customRedirectDomain: option<customRedirectDomain>
}
type template = {
@as("TemplateData") templateData: templateData,
@as("TemplateArn") templateArn: templateArn
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type snsDestination = {
@as("TopicArn") topicArn: option<amazonResourceName>
}
type sendingOptions = {
@as("SendingEnabled") sendingEnabled: enabled
}
type sendQuota = {
@as("SentLast24Hours") sentLast24Hours: sentLast24Hours,
@as("MaxSendRate") maxSendRate: maxSendRate,
@as("Max24HourSend") max24HourSend: max24HourSend
}
type reputationOptions = {
@as("LastFreshStart") lastFreshStart: lastFreshStart,
@as("ReputationMetricsEnabled") reputationMetricsEnabled: enabled
}
type rawMessage = {
@as("Data") data: option<rawMessageData>
}
type placementStatistics = {
@as("DkimPercentage") dkimPercentage: percentage,
@as("SpfPercentage") spfPercentage: percentage,
@as("MissingPercentage") missingPercentage: percentage,
@as("SpamPercentage") spamPercentage: percentage,
@as("InboxPercentage") inboxPercentage: percentage
}
type pinpointDestination = {
@as("ApplicationArn") applicationArn: amazonResourceName
}
type messageTag = {
@as("Value") value: option<messageTagValue>,
@as("Name") name: option<messageTagName>
}
type mailFromAttributes = {
@as("BehaviorOnMxFailure") behaviorOnMxFailure: option<behaviorOnMxFailure>,
@as("MailFromDomainStatus") mailFromDomainStatus: option<mailFromDomainStatus>,
@as("MailFromDomain") mailFromDomain: option<mailFromDomainName>
}
type listOfDedicatedIpPools = array<poolName>
type kinesisFirehoseDestination = {
@as("DeliveryStreamArn") deliveryStreamArn: option<amazonResourceName>,
@as("IamRoleArn") iamRoleArn: option<amazonResourceName>
}
type ispNameList = array<ispName>
type ipList = array<ip>
type identityInfo = {
@as("SendingEnabled") sendingEnabled: enabled,
@as("IdentityName") identityName: identity,
@as("IdentityType") identityType: identityType
}
type eventTypes = array<eventType>
type esps = array<esp>
type emailAddressList = array<emailAddress>
type domainIspPlacement = {
@as("SpamPercentage") spamPercentage: percentage,
@as("InboxPercentage") inboxPercentage: percentage,
@as("SpamRawCount") spamRawCount: volume,
@as("InboxRawCount") inboxRawCount: volume,
@as("IspName") ispName: ispName
}
type dnsTokenList = array<dnsToken>
type deliveryOptions = {
@as("SendingPoolName") sendingPoolName: poolName,
@as("TlsPolicy") tlsPolicy: tlsPolicy
}
type deliverabilityTestReport = {
@as("DeliverabilityTestStatus") deliverabilityTestStatus: deliverabilityTestStatus,
@as("CreateDate") createDate: amazonawsTimestamp,
@as("FromEmailAddress") fromEmailAddress: emailAddress,
@as("Subject") subject: deliverabilityTestSubject,
@as("ReportName") reportName: reportName,
@as("ReportId") reportId: reportId
}
type dedicatedIp = {
@as("PoolName") poolName: poolName,
@as("WarmupPercentage") warmupPercentage: option<percentage100Wrapper>,
@as("WarmupStatus") warmupStatus: option<warmupStatus>,
@as("Ip") ip: option<ip>
}
type content = {
@as("Charset") charset: charset,
@as("Data") data: option<messageData>
}
type configurationSetNameList = array<configurationSetName>
type cloudWatchDimensionConfiguration = {
@as("DefaultDimensionValue") defaultDimensionValue: option<defaultDimensionValue>,
@as("DimensionValueSource") dimensionValueSource: option<dimensionValueSource>,
@as("DimensionName") dimensionName: option<dimensionName>
}
type blacklistItemNames = array<blacklistItemName>
type blacklistEntry = {
@as("Description") description: blacklistingDescription,
@as("ListingTime") listingTime: amazonawsTimestamp,
@as("RblName") rblName: rblName
}
type tagList = array<tag>
type messageTagList = array<messageTag>
type ispPlacement = {
@as("PlacementStatistics") placementStatistics: placementStatistics,
@as("IspName") ispName: ispName
}
type inboxPlacementTrackingOption = {
@as("TrackedIsps") trackedIsps: ispNameList,
@as("Global") global: enabled
}
type identityInfoList = array<identityInfo>
type domainIspPlacements = array<domainIspPlacement>
type domainDeliverabilityCampaign = {
@as("Esps") esps: esps,
@as("ProjectedVolume") projectedVolume: volume,
@as("ReadDeleteRate") readDeleteRate: percentage,
@as("DeleteRate") deleteRate: percentage,
@as("ReadRate") readRate: percentage,
@as("SpamCount") spamCount: volume,
@as("InboxCount") inboxCount: volume,
@as("LastSeenDateTime") lastSeenDateTime: amazonawsTimestamp,
@as("FirstSeenDateTime") firstSeenDateTime: amazonawsTimestamp,
@as("SendingIps") sendingIps: ipList,
@as("FromAddress") fromAddress: identity,
@as("Subject") subject: subject,
@as("ImageUrl") imageUrl: imageUrl,
@as("CampaignId") campaignId: campaignId
}
type dkimAttributes = {
@as("Tokens") tokens: dnsTokenList,
@as("Status") status: dkimStatus,
@as("SigningEnabled") signingEnabled: enabled
}
type destination = {
@as("BccAddresses") bccAddresses: emailAddressList,
@as("CcAddresses") ccAddresses: emailAddressList,
@as("ToAddresses") toAddresses: emailAddressList
}
type deliverabilityTestReports = array<deliverabilityTestReport>
type dedicatedIpList = array<dedicatedIp>
type cloudWatchDimensionConfigurations = array<cloudWatchDimensionConfiguration>
type body = {
@as("Html") html: content,
@as("Text") text: content
}
type blacklistEntries = array<blacklistEntry>
type overallVolume = {
@as("DomainIspPlacements") domainIspPlacements: domainIspPlacements,
@as("ReadRatePercent") readRatePercent: percentage,
@as("VolumeStatistics") volumeStatistics: volumeStatistics
}
type message = {
@as("Body") body: option<body>,
@as("Subject") subject: option<content>
}
type ispPlacements = array<ispPlacement>
type domainDeliverabilityTrackingOption = {
@as("InboxPlacementTrackingOption") inboxPlacementTrackingOption: inboxPlacementTrackingOption,
@as("SubscriptionStartDate") subscriptionStartDate: amazonawsTimestamp,
@as("Domain") domain: domain
}
type domainDeliverabilityCampaignList = array<domainDeliverabilityCampaign>
type dailyVolume = {
@as("DomainIspPlacements") domainIspPlacements: domainIspPlacements,
@as("VolumeStatistics") volumeStatistics: volumeStatistics,
@as("StartDate") startDate: amazonawsTimestamp
}
type cloudWatchDestination = {
@as("DimensionConfigurations") dimensionConfigurations: option<cloudWatchDimensionConfigurations>
}
type blacklistReport = Js.Dict.t< blacklistEntries>
type eventDestinationDefinition = {
@as("PinpointDestination") pinpointDestination: pinpointDestination,
@as("SnsDestination") snsDestination: snsDestination,
@as("CloudWatchDestination") cloudWatchDestination: cloudWatchDestination,
@as("KinesisFirehoseDestination") kinesisFirehoseDestination: kinesisFirehoseDestination,
@as("MatchingEventTypes") matchingEventTypes: eventTypes,
@as("Enabled") enabled: enabled
}
type eventDestination = {
@as("PinpointDestination") pinpointDestination: pinpointDestination,
@as("SnsDestination") snsDestination: snsDestination,
@as("CloudWatchDestination") cloudWatchDestination: cloudWatchDestination,
@as("KinesisFirehoseDestination") kinesisFirehoseDestination: kinesisFirehoseDestination,
@as("MatchingEventTypes") matchingEventTypes: option<eventTypes>,
@as("Enabled") enabled: enabled,
@as("Name") name: option<eventDestinationName>
}
type emailContent = {
@as("Template") template: template,
@as("Raw") raw: rawMessage,
@as("Simple") simple: message
}
type domainDeliverabilityTrackingOptions = array<domainDeliverabilityTrackingOption>
type dailyVolumes = array<dailyVolume>
type eventDestinations = array<eventDestination>
type clientType;
@module("@aws-sdk/client-ses") @new external createClient: unit => clientType = "PinpointEmailClient";
module PutEmailIdentityMailFromAttributes = {
  type t;
  type request = {
@as("BehaviorOnMxFailure") behaviorOnMxFailure: behaviorOnMxFailure,
@as("MailFromDomain") mailFromDomain: mailFromDomainName,
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutEmailIdentityMailFromAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutEmailIdentityFeedbackAttributes = {
  type t;
  type request = {
@as("EmailForwardingEnabled") emailForwardingEnabled: enabled,
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutEmailIdentityFeedbackAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutEmailIdentityDkimAttributes = {
  type t;
  type request = {
@as("SigningEnabled") signingEnabled: enabled,
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutEmailIdentityDkimAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutDedicatedIpWarmupAttributes = {
  type t;
  type request = {
@as("WarmupPercentage") warmupPercentage: option<percentage100Wrapper>,
@as("Ip") ip: option<ip>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutDedicatedIpWarmupAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutDedicatedIpInPool = {
  type t;
  type request = {
@as("DestinationPoolName") destinationPoolName: option<poolName>,
@as("Ip") ip: option<ip>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutDedicatedIpInPoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetTrackingOptions = {
  type t;
  type request = {
@as("CustomRedirectDomain") customRedirectDomain: customRedirectDomain,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutConfigurationSetTrackingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetSendingOptions = {
  type t;
  type request = {
@as("SendingEnabled") sendingEnabled: enabled,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutConfigurationSetSendingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetReputationOptions = {
  type t;
  type request = {
@as("ReputationMetricsEnabled") reputationMetricsEnabled: enabled,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutConfigurationSetReputationOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetDeliveryOptions = {
  type t;
  type request = {
@as("SendingPoolName") sendingPoolName: sendingPoolName,
@as("TlsPolicy") tlsPolicy: tlsPolicy,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutConfigurationSetDeliveryOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAccountSendingAttributes = {
  type t;
  type request = {
@as("SendingEnabled") sendingEnabled: enabled
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutAccountSendingAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAccountDedicatedIpWarmupAttributes = {
  type t;
  type request = {
@as("AutoWarmupEnabled") autoWarmupEnabled: enabled
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutAccountDedicatedIpWarmupAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEmailIdentity = {
  type t;
  type request = {
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteEmailIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDedicatedIpPool = {
  type t;
  type request = {
@as("PoolName") poolName: option<poolName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteDedicatedIpPoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestinationName") eventDestinationName: option<eventDestinationName>,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteConfigurationSetEventDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteConfigurationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDedicatedIpPools = {
  type t;
  type request = {
@as("PageSize") pageSize: maxItems,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("DedicatedIpPools") dedicatedIpPools: listOfDedicatedIpPools
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListDedicatedIpPoolsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationSets = {
  type t;
  type request = {
@as("PageSize") pageSize: maxItems,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ConfigurationSets") configurationSets: configurationSetNameList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListConfigurationSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDedicatedIp = {
  type t;
  type request = {
@as("Ip") ip: option<ip>
}
  type response = {
@as("DedicatedIp") dedicatedIp: dedicatedIp
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDedicatedIpCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccount = {
  type t;
  type request = unit
  type response = {
@as("ProductionAccessEnabled") productionAccessEnabled: enabled,
@as("EnforcementStatus") enforcementStatus: generalEnforcementStatus,
@as("DedicatedIpAutoWarmupEnabled") dedicatedIpAutoWarmupEnabled: enabled,
@as("SendingEnabled") sendingEnabled: enabled,
@as("SendQuota") sendQuota: sendQuota
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: option<tagList>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEmailIdentities = {
  type t;
  type request = {
@as("PageSize") pageSize: maxItems,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("EmailIdentities") emailIdentities: identityInfoList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListEmailIdentitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeliverabilityTestReports = {
  type t;
  type request = {
@as("PageSize") pageSize: maxItems,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("DeliverabilityTestReports") deliverabilityTestReports: option<deliverabilityTestReports>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListDeliverabilityTestReportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEmailIdentity = {
  type t;
  type request = {
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = {
@as("Tags") tags: tagList,
@as("MailFromAttributes") mailFromAttributes: mailFromAttributes,
@as("DkimAttributes") dkimAttributes: dkimAttributes,
@as("VerifiedForSendingStatus") verifiedForSendingStatus: enabled,
@as("FeedbackForwardingStatus") feedbackForwardingStatus: enabled,
@as("IdentityType") identityType: identityType
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetEmailIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomainDeliverabilityCampaign = {
  type t;
  type request = {
@as("CampaignId") campaignId: option<campaignId>
}
  type response = {
@as("DomainDeliverabilityCampaign") domainDeliverabilityCampaign: option<domainDeliverabilityCampaign>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDomainDeliverabilityCampaignCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDedicatedIps = {
  type t;
  type request = {
@as("PageSize") pageSize: maxItems,
@as("NextToken") nextToken: nextToken,
@as("PoolName") poolName: poolName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("DedicatedIps") dedicatedIps: dedicatedIpList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDedicatedIpsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = {
@as("Tags") tags: tagList,
@as("SendingOptions") sendingOptions: sendingOptions,
@as("ReputationOptions") reputationOptions: reputationOptions,
@as("DeliveryOptions") deliveryOptions: deliveryOptions,
@as("TrackingOptions") trackingOptions: trackingOptions,
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetConfigurationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEmailIdentity = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = {
@as("DkimAttributes") dkimAttributes: dkimAttributes,
@as("VerifiedForSendingStatus") verifiedForSendingStatus: enabled,
@as("IdentityType") identityType: identityType
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateEmailIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDedicatedIpPool = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("PoolName") poolName: option<poolName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateDedicatedIpPoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSet = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("SendingOptions") sendingOptions: sendingOptions,
@as("ReputationOptions") reputationOptions: reputationOptions,
@as("DeliveryOptions") deliveryOptions: deliveryOptions,
@as("TrackingOptions") trackingOptions: trackingOptions,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateConfigurationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDomainDeliverabilityCampaigns = {
  type t;
  type request = {
@as("PageSize") pageSize: maxItems,
@as("NextToken") nextToken: nextToken,
@as("SubscribedDomain") subscribedDomain: option<domain>,
@as("EndDate") endDate: option<amazonawsTimestamp>,
@as("StartDate") startDate: option<amazonawsTimestamp>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("DomainDeliverabilityCampaigns") domainDeliverabilityCampaigns: option<domainDeliverabilityCampaignList>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListDomainDeliverabilityCampaignsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeliverabilityTestReport = {
  type t;
  type request = {
@as("ReportId") reportId: option<reportId>
}
  type response = {
@as("Tags") tags: tagList,
@as("Message") message: messageContent,
@as("IspPlacements") ispPlacements: option<ispPlacements>,
@as("OverallPlacement") overallPlacement: option<placementStatistics>,
@as("DeliverabilityTestReport") deliverabilityTestReport: option<deliverabilityTestReport>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDeliverabilityTestReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBlacklistReports = {
  type t;
  type request = {
@as("BlacklistItemNames") blacklistItemNames: option<blacklistItemNames>
}
  type response = {
@as("BlacklistReport") blacklistReport: option<blacklistReport>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetBlacklistReportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestination") eventDestination: option<eventDestinationDefinition>,
@as("EventDestinationName") eventDestinationName: option<eventDestinationName>,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateConfigurationSetEventDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendEmail = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("EmailTags") emailTags: messageTagList,
@as("Content") content: option<emailContent>,
@as("FeedbackForwardingEmailAddress") feedbackForwardingEmailAddress: emailAddress,
@as("ReplyToAddresses") replyToAddresses: emailAddressList,
@as("Destination") destination: option<destination>,
@as("FromEmailAddress") fromEmailAddress: emailAddress
}
  type response = {
@as("MessageId") messageId: outboundMessageId
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendEmailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutDeliverabilityDashboardOption = {
  type t;
  type request = {
@as("SubscribedDomains") subscribedDomains: domainDeliverabilityTrackingOptions,
@as("DashboardEnabled") dashboardEnabled: option<enabled>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutDeliverabilityDashboardOptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomainStatisticsReport = {
  type t;
  type request = {
@as("EndDate") endDate: option<amazonawsTimestamp>,
@as("StartDate") startDate: option<amazonawsTimestamp>,
@as("Domain") domain: option<identity>
}
  type response = {
@as("DailyVolumes") dailyVolumes: option<dailyVolumes>,
@as("OverallVolume") overallVolume: option<overallVolume>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDomainStatisticsReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeliverabilityDashboardOptions = {
  type t;
  type request = unit
  type response = {
@as("PendingExpirationSubscribedDomains") pendingExpirationSubscribedDomains: domainDeliverabilityTrackingOptions,
@as("ActiveSubscribedDomains") activeSubscribedDomains: domainDeliverabilityTrackingOptions,
@as("AccountStatus") accountStatus: deliverabilityDashboardAccountStatus,
@as("SubscriptionExpiryDate") subscriptionExpiryDate: amazonawsTimestamp,
@as("DashboardEnabled") dashboardEnabled: option<enabled>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDeliverabilityDashboardOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeliverabilityTestReport = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Content") content: option<emailContent>,
@as("FromEmailAddress") fromEmailAddress: option<emailAddress>,
@as("ReportName") reportName: reportName
}
  type response = {
@as("DeliverabilityTestStatus") deliverabilityTestStatus: option<deliverabilityTestStatus>,
@as("ReportId") reportId: option<reportId>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateDeliverabilityTestReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestination") eventDestination: option<eventDestinationDefinition>,
@as("EventDestinationName") eventDestinationName: option<eventDestinationName>,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateConfigurationSetEventDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConfigurationSetEventDestinations = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = {
@as("EventDestinations") eventDestinations: eventDestinations
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetConfigurationSetEventDestinationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
