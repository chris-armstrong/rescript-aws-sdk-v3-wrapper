type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ses") @new
external createClient: unit => awsServiceClient = "PinpointEmailClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type warmupStatus = [@as("DONE") #DONE | @as("IN_PROGRESS") #IN_PROGRESS]
type volume = float
type tlsPolicy = [@as("OPTIONAL") #OPTIONAL | @as("REQUIRE") #REQUIRE]
type timestamp_ = Js.Date.t
type templateData = string
type templateArn = string
type tagValue = string
type tagKey = string
type subject = string
type sentLast24Hours = float
type sendingPoolName = string
type reportName = string
type reportId = string
type rblName = string
type rawMessageData = NodeJs.Buffer.t
type poolName = string
type percentage100Wrapper = int
type percentage = float
type outboundMessageId = string
type nextToken = string
type messageTagValue = string
type messageTagName = string
type messageData = string
type messageContent = string
type maxSendRate = float
type maxItems = int
type max24HourSend = float
type mailFromDomainStatus = [
  | @as("TEMPORARY_FAILURE") #TEMPORARY_FAILURE
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("PENDING") #PENDING
]
type mailFromDomainName = string
type lastFreshStart = Js.Date.t
type ispName = string
type ip = string
type imageUrl = string
type identityType = [
  | @as("MANAGED_DOMAIN") #MANAGED_DOMAIN
  | @as("DOMAIN") #DOMAIN
  | @as("EMAIL_ADDRESS") #EMAIL_ADDRESS
]
type identity = string
type generalEnforcementStatus = string
type eventType = [
  | @as("RENDERING_FAILURE") #RENDERING_FAILURE
  | @as("CLICK") #CLICK
  | @as("OPEN") #OPEN
  | @as("DELIVERY") #DELIVERY
  | @as("COMPLAINT") #COMPLAINT
  | @as("BOUNCE") #BOUNCE
  | @as("REJECT") #REJECT
  | @as("SEND") #SEND
]
type eventDestinationName = string
type esp = string
type errorMessage = string
type enabled = bool
type emailAddress = string
type domain = string
type dnsToken = string
type dkimStatus = [
  | @as("NOT_STARTED") #NOT_STARTED
  | @as("TEMPORARY_FAILURE") #TEMPORARY_FAILURE
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("PENDING") #PENDING
]
type dimensionValueSource = [
  | @as("LINK_TAG") #LINK_TAG
  | @as("EMAIL_HEADER") #EMAIL_HEADER
  | @as("MESSAGE_TAG") #MESSAGE_TAG
]
type dimensionName = string
type deliverabilityTestSubject = string
type deliverabilityTestStatus = [@as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS]
type deliverabilityDashboardAccountStatus = [
  | @as("DISABLED") #DISABLED
  | @as("PENDING_EXPIRATION") #PENDING_EXPIRATION
  | @as("ACTIVE") #ACTIVE
]
type defaultDimensionValue = string
type customRedirectDomain = string
type configurationSetName = string
type charset = string
type campaignId = string
type blacklistingDescription = string
type blacklistItemName = string
type behaviorOnMxFailure = [
  | @as("REJECT_MESSAGE") #REJECT_MESSAGE
  | @as("USE_DEFAULT_VALUE") #USE_DEFAULT_VALUE
]
type amazonResourceName = string
type volumeStatistics = {
  @as("ProjectedSpam") projectedSpam: option<volume>,
  @as("ProjectedInbox") projectedInbox: option<volume>,
  @as("SpamRawCount") spamRawCount: option<volume>,
  @as("InboxRawCount") inboxRawCount: option<volume>,
}
type trackingOptions = {@as("CustomRedirectDomain") customRedirectDomain: customRedirectDomain}
type template = {
  @as("TemplateData") templateData: option<templateData>,
  @as("TemplateArn") templateArn: option<templateArn>,
}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type snsDestination = {@as("TopicArn") topicArn: amazonResourceName}
type sendingOptions = {@as("SendingEnabled") sendingEnabled: option<enabled>}
type sendQuota = {
  @as("SentLast24Hours") sentLast24Hours: option<sentLast24Hours>,
  @as("MaxSendRate") maxSendRate: option<maxSendRate>,
  @as("Max24HourSend") max24HourSend: option<max24HourSend>,
}
type reputationOptions = {
  @as("LastFreshStart") lastFreshStart: option<lastFreshStart>,
  @as("ReputationMetricsEnabled") reputationMetricsEnabled: option<enabled>,
}
type rawMessage = {@as("Data") data: rawMessageData}
type placementStatistics = {
  @as("DkimPercentage") dkimPercentage: option<percentage>,
  @as("SpfPercentage") spfPercentage: option<percentage>,
  @as("MissingPercentage") missingPercentage: option<percentage>,
  @as("SpamPercentage") spamPercentage: option<percentage>,
  @as("InboxPercentage") inboxPercentage: option<percentage>,
}
type pinpointDestination = {@as("ApplicationArn") applicationArn: option<amazonResourceName>}
type messageTag = {
  @as("Value") value: messageTagValue,
  @as("Name") name: messageTagName,
}
type mailFromAttributes = {
  @as("BehaviorOnMxFailure") behaviorOnMxFailure: behaviorOnMxFailure,
  @as("MailFromDomainStatus") mailFromDomainStatus: mailFromDomainStatus,
  @as("MailFromDomain") mailFromDomain: mailFromDomainName,
}
type listOfDedicatedIpPools = array<poolName>
type kinesisFirehoseDestination = {
  @as("DeliveryStreamArn") deliveryStreamArn: amazonResourceName,
  @as("IamRoleArn") iamRoleArn: amazonResourceName,
}
type ispNameList = array<ispName>
type ipList = array<ip>
type identityInfo = {
  @as("SendingEnabled") sendingEnabled: option<enabled>,
  @as("IdentityName") identityName: option<identity>,
  @as("IdentityType") identityType: option<identityType>,
}
type eventTypes = array<eventType>
type esps = array<esp>
type emailAddressList = array<emailAddress>
type domainIspPlacement = {
  @as("SpamPercentage") spamPercentage: option<percentage>,
  @as("InboxPercentage") inboxPercentage: option<percentage>,
  @as("SpamRawCount") spamRawCount: option<volume>,
  @as("InboxRawCount") inboxRawCount: option<volume>,
  @as("IspName") ispName: option<ispName>,
}
type dnsTokenList = array<dnsToken>
type deliveryOptions = {
  @as("SendingPoolName") sendingPoolName: option<poolName>,
  @as("TlsPolicy") tlsPolicy: option<tlsPolicy>,
}
type deliverabilityTestReport = {
  @as("DeliverabilityTestStatus") deliverabilityTestStatus: option<deliverabilityTestStatus>,
  @as("CreateDate") createDate: option<timestamp_>,
  @as("FromEmailAddress") fromEmailAddress: option<emailAddress>,
  @as("Subject") subject: option<deliverabilityTestSubject>,
  @as("ReportName") reportName: option<reportName>,
  @as("ReportId") reportId: option<reportId>,
}
type dedicatedIp = {
  @as("PoolName") poolName: option<poolName>,
  @as("WarmupPercentage") warmupPercentage: percentage100Wrapper,
  @as("WarmupStatus") warmupStatus: warmupStatus,
  @as("Ip") ip: ip,
}
type content = {
  @as("Charset") charset: option<charset>,
  @as("Data") data: messageData,
}
type configurationSetNameList = array<configurationSetName>
type cloudWatchDimensionConfiguration = {
  @as("DefaultDimensionValue") defaultDimensionValue: defaultDimensionValue,
  @as("DimensionValueSource") dimensionValueSource: dimensionValueSource,
  @as("DimensionName") dimensionName: dimensionName,
}
type blacklistItemNames = array<blacklistItemName>
type blacklistEntry = {
  @as("Description") description: option<blacklistingDescription>,
  @as("ListingTime") listingTime: option<timestamp_>,
  @as("RblName") rblName: option<rblName>,
}
type tagList_ = array<tag>
type messageTagList = array<messageTag>
type ispPlacement = {
  @as("PlacementStatistics") placementStatistics: option<placementStatistics>,
  @as("IspName") ispName: option<ispName>,
}
type inboxPlacementTrackingOption = {
  @as("TrackedIsps") trackedIsps: option<ispNameList>,
  @as("Global") global: option<enabled>,
}
type identityInfoList = array<identityInfo>
type domainIspPlacements = array<domainIspPlacement>
type domainDeliverabilityCampaign = {
  @as("Esps") esps: option<esps>,
  @as("ProjectedVolume") projectedVolume: option<volume>,
  @as("ReadDeleteRate") readDeleteRate: option<percentage>,
  @as("DeleteRate") deleteRate: option<percentage>,
  @as("ReadRate") readRate: option<percentage>,
  @as("SpamCount") spamCount: option<volume>,
  @as("InboxCount") inboxCount: option<volume>,
  @as("LastSeenDateTime") lastSeenDateTime: option<timestamp_>,
  @as("FirstSeenDateTime") firstSeenDateTime: option<timestamp_>,
  @as("SendingIps") sendingIps: option<ipList>,
  @as("FromAddress") fromAddress: option<identity>,
  @as("Subject") subject: option<subject>,
  @as("ImageUrl") imageUrl: option<imageUrl>,
  @as("CampaignId") campaignId: option<campaignId>,
}
type dkimAttributes = {
  @as("Tokens") tokens: option<dnsTokenList>,
  @as("Status") status: option<dkimStatus>,
  @as("SigningEnabled") signingEnabled: option<enabled>,
}
type destination = {
  @as("BccAddresses") bccAddresses: option<emailAddressList>,
  @as("CcAddresses") ccAddresses: option<emailAddressList>,
  @as("ToAddresses") toAddresses: option<emailAddressList>,
}
type deliverabilityTestReports = array<deliverabilityTestReport>
type dedicatedIpList = array<dedicatedIp>
type cloudWatchDimensionConfigurations = array<cloudWatchDimensionConfiguration>
type body = {
  @as("Html") html: option<content>,
  @as("Text") text: option<content>,
}
type blacklistEntries = array<blacklistEntry>
type overallVolume = {
  @as("DomainIspPlacements") domainIspPlacements: option<domainIspPlacements>,
  @as("ReadRatePercent") readRatePercent: option<percentage>,
  @as("VolumeStatistics") volumeStatistics: option<volumeStatistics>,
}
type message = {
  @as("Body") body: body,
  @as("Subject") subject: content,
}
type ispPlacements = array<ispPlacement>
type domainDeliverabilityTrackingOption = {
  @as("InboxPlacementTrackingOption")
  inboxPlacementTrackingOption: option<inboxPlacementTrackingOption>,
  @as("SubscriptionStartDate") subscriptionStartDate: option<timestamp_>,
  @as("Domain") domain: option<domain>,
}
type domainDeliverabilityCampaignList = array<domainDeliverabilityCampaign>
type dailyVolume = {
  @as("DomainIspPlacements") domainIspPlacements: option<domainIspPlacements>,
  @as("VolumeStatistics") volumeStatistics: option<volumeStatistics>,
  @as("StartDate") startDate: option<timestamp_>,
}
type cloudWatchDestination = {
  @as("DimensionConfigurations") dimensionConfigurations: cloudWatchDimensionConfigurations,
}
type blacklistReport = Js.Dict.t<blacklistEntries>
type eventDestinationDefinition = {
  @as("PinpointDestination") pinpointDestination: option<pinpointDestination>,
  @as("SnsDestination") snsDestination: option<snsDestination>,
  @as("CloudWatchDestination") cloudWatchDestination: option<cloudWatchDestination>,
  @as("KinesisFirehoseDestination") kinesisFirehoseDestination: option<kinesisFirehoseDestination>,
  @as("MatchingEventTypes") matchingEventTypes: option<eventTypes>,
  @as("Enabled") enabled: option<enabled>,
}
type eventDestination = {
  @as("PinpointDestination") pinpointDestination: option<pinpointDestination>,
  @as("SnsDestination") snsDestination: option<snsDestination>,
  @as("CloudWatchDestination") cloudWatchDestination: option<cloudWatchDestination>,
  @as("KinesisFirehoseDestination") kinesisFirehoseDestination: option<kinesisFirehoseDestination>,
  @as("MatchingEventTypes") matchingEventTypes: eventTypes,
  @as("Enabled") enabled: option<enabled>,
  @as("Name") name: eventDestinationName,
}
type emailContent = {
  @as("Template") template: option<template>,
  @as("Raw") raw: option<rawMessage>,
  @as("Simple") simple: option<message>,
}
type domainDeliverabilityTrackingOptions = array<domainDeliverabilityTrackingOption>
type dailyVolumes = array<dailyVolume>
type eventDestinations = array<eventDestination>

module PutEmailIdentityMailFromAttributes = {
  type t
  type request = {
    @as("BehaviorOnMxFailure") behaviorOnMxFailure: option<behaviorOnMxFailure>,
    @as("MailFromDomain") mailFromDomain: option<mailFromDomainName>,
    @as("EmailIdentity") emailIdentity: identity,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutEmailIdentityMailFromAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutEmailIdentityFeedbackAttributes = {
  type t
  type request = {
    @as("EmailForwardingEnabled") emailForwardingEnabled: option<enabled>,
    @as("EmailIdentity") emailIdentity: identity,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutEmailIdentityFeedbackAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutEmailIdentityDkimAttributes = {
  type t
  type request = {
    @as("SigningEnabled") signingEnabled: option<enabled>,
    @as("EmailIdentity") emailIdentity: identity,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutEmailIdentityDkimAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDedicatedIpWarmupAttributes = {
  type t
  type request = {
    @as("WarmupPercentage") warmupPercentage: percentage100Wrapper,
    @as("Ip") ip: ip,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutDedicatedIpWarmupAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDedicatedIpInPool = {
  type t
  type request = {
    @as("DestinationPoolName") destinationPoolName: poolName,
    @as("Ip") ip: ip,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new external new: request => t = "PutDedicatedIpInPoolCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutConfigurationSetTrackingOptions = {
  type t
  type request = {
    @as("CustomRedirectDomain") customRedirectDomain: option<customRedirectDomain>,
    @as("ConfigurationSetName") configurationSetName: configurationSetName,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutConfigurationSetTrackingOptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutConfigurationSetSendingOptions = {
  type t
  type request = {
    @as("SendingEnabled") sendingEnabled: option<enabled>,
    @as("ConfigurationSetName") configurationSetName: configurationSetName,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutConfigurationSetSendingOptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutConfigurationSetReputationOptions = {
  type t
  type request = {
    @as("ReputationMetricsEnabled") reputationMetricsEnabled: option<enabled>,
    @as("ConfigurationSetName") configurationSetName: configurationSetName,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutConfigurationSetReputationOptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutConfigurationSetDeliveryOptions = {
  type t
  type request = {
    @as("SendingPoolName") sendingPoolName: option<sendingPoolName>,
    @as("TlsPolicy") tlsPolicy: option<tlsPolicy>,
    @as("ConfigurationSetName") configurationSetName: configurationSetName,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutConfigurationSetDeliveryOptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAccountSendingAttributes = {
  type t
  type request = {@as("SendingEnabled") sendingEnabled: option<enabled>}
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutAccountSendingAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAccountDedicatedIpWarmupAttributes = {
  type t
  type request = {@as("AutoWarmupEnabled") autoWarmupEnabled: option<enabled>}
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutAccountDedicatedIpWarmupAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEmailIdentity = {
  type t
  type request = {@as("EmailIdentity") emailIdentity: identity}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new: request => t = "DeleteEmailIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDedicatedIpPool = {
  type t
  type request = {@as("PoolName") poolName: poolName}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new: request => t = "DeleteDedicatedIpPoolCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteConfigurationSetEventDestination = {
  type t
  type request = {
    @as("EventDestinationName") eventDestinationName: eventDestinationName,
    @as("ConfigurationSetName") configurationSetName: configurationSetName,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "DeleteConfigurationSetEventDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteConfigurationSet = {
  type t
  type request = {@as("ConfigurationSetName") configurationSetName: configurationSetName}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new: request => t = "DeleteConfigurationSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDedicatedIpPools = {
  type t
  type request = {
    @as("PageSize") pageSize: option<maxItems>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DedicatedIpPools") dedicatedIpPools: option<listOfDedicatedIpPools>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "ListDedicatedIpPoolsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConfigurationSets = {
  type t
  type request = {
    @as("PageSize") pageSize: option<maxItems>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ConfigurationSets") configurationSets: option<configurationSetNameList>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "ListConfigurationSetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDedicatedIp = {
  type t
  type request = {@as("Ip") ip: ip}
  type response = {@as("DedicatedIp") dedicatedIp: option<dedicatedIp>}
  @module("@aws-sdk/client-ses") @new external new: request => t = "GetDedicatedIpCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccount = {
  type t
  type request = unit
  type response = {
    @as("ProductionAccessEnabled") productionAccessEnabled: option<enabled>,
    @as("EnforcementStatus") enforcementStatus: option<generalEnforcementStatus>,
    @as("DedicatedIpAutoWarmupEnabled") dedicatedIpAutoWarmupEnabled: option<enabled>,
    @as("SendingEnabled") sendingEnabled: option<enabled>,
    @as("SendQuota") sendQuota: option<sendQuota>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "GetAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceArn") resourceArn: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: amazonResourceName}
  type response = {@as("Tags") tags: tagList_}
  @module("@aws-sdk/client-ses") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEmailIdentities = {
  type t
  type request = {
    @as("PageSize") pageSize: option<maxItems>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("EmailIdentities") emailIdentities: option<identityInfoList>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "ListEmailIdentitiesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeliverabilityTestReports = {
  type t
  type request = {
    @as("PageSize") pageSize: option<maxItems>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DeliverabilityTestReports") deliverabilityTestReports: deliverabilityTestReports,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "ListDeliverabilityTestReportsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEmailIdentity = {
  type t
  type request = {@as("EmailIdentity") emailIdentity: identity}
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("MailFromAttributes") mailFromAttributes: option<mailFromAttributes>,
    @as("DkimAttributes") dkimAttributes: option<dkimAttributes>,
    @as("VerifiedForSendingStatus") verifiedForSendingStatus: option<enabled>,
    @as("FeedbackForwardingStatus") feedbackForwardingStatus: option<enabled>,
    @as("IdentityType") identityType: option<identityType>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "GetEmailIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainDeliverabilityCampaign = {
  type t
  type request = {@as("CampaignId") campaignId: campaignId}
  type response = {
    @as("DomainDeliverabilityCampaign") domainDeliverabilityCampaign: domainDeliverabilityCampaign,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "GetDomainDeliverabilityCampaignCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDedicatedIps = {
  type t
  type request = {
    @as("PageSize") pageSize: option<maxItems>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("PoolName") poolName: option<poolName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DedicatedIps") dedicatedIps: option<dedicatedIpList>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "GetDedicatedIpsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConfigurationSet = {
  type t
  type request = {@as("ConfigurationSetName") configurationSetName: configurationSetName}
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("SendingOptions") sendingOptions: option<sendingOptions>,
    @as("ReputationOptions") reputationOptions: option<reputationOptions>,
    @as("DeliveryOptions") deliveryOptions: option<deliveryOptions>,
    @as("TrackingOptions") trackingOptions: option<trackingOptions>,
    @as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "GetConfigurationSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEmailIdentity = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("EmailIdentity") emailIdentity: identity,
  }
  type response = {
    @as("DkimAttributes") dkimAttributes: option<dkimAttributes>,
    @as("VerifiedForSendingStatus") verifiedForSendingStatus: option<enabled>,
    @as("IdentityType") identityType: option<identityType>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "CreateEmailIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDedicatedIpPool = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("PoolName") poolName: poolName,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new external new: request => t = "CreateDedicatedIpPoolCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConfigurationSet = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("SendingOptions") sendingOptions: option<sendingOptions>,
    @as("ReputationOptions") reputationOptions: option<reputationOptions>,
    @as("DeliveryOptions") deliveryOptions: option<deliveryOptions>,
    @as("TrackingOptions") trackingOptions: option<trackingOptions>,
    @as("ConfigurationSetName") configurationSetName: configurationSetName,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new external new: request => t = "CreateConfigurationSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomainDeliverabilityCampaigns = {
  type t
  type request = {
    @as("PageSize") pageSize: option<maxItems>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SubscribedDomain") subscribedDomain: domain,
    @as("EndDate") endDate: timestamp_,
    @as("StartDate") startDate: timestamp_,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DomainDeliverabilityCampaigns")
    domainDeliverabilityCampaigns: domainDeliverabilityCampaignList,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "ListDomainDeliverabilityCampaignsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeliverabilityTestReport = {
  type t
  type request = {@as("ReportId") reportId: reportId}
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("Message") message: option<messageContent>,
    @as("IspPlacements") ispPlacements: ispPlacements,
    @as("OverallPlacement") overallPlacement: placementStatistics,
    @as("DeliverabilityTestReport") deliverabilityTestReport: deliverabilityTestReport,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "GetDeliverabilityTestReportCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBlacklistReports = {
  type t
  type request = {@as("BlacklistItemNames") blacklistItemNames: blacklistItemNames}
  type response = {@as("BlacklistReport") blacklistReport: blacklistReport}
  @module("@aws-sdk/client-ses") @new external new: request => t = "GetBlacklistReportsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConfigurationSetEventDestination = {
  type t
  type request = {
    @as("EventDestination") eventDestination: eventDestinationDefinition,
    @as("EventDestinationName") eventDestinationName: eventDestinationName,
    @as("ConfigurationSetName") configurationSetName: configurationSetName,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "UpdateConfigurationSetEventDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendEmail = {
  type t
  type request = {
    @as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
    @as("EmailTags") emailTags: option<messageTagList>,
    @as("Content") content: emailContent,
    @as("FeedbackForwardingEmailAddress") feedbackForwardingEmailAddress: option<emailAddress>,
    @as("ReplyToAddresses") replyToAddresses: option<emailAddressList>,
    @as("Destination") destination: destination,
    @as("FromEmailAddress") fromEmailAddress: option<emailAddress>,
  }
  type response = {@as("MessageId") messageId: option<outboundMessageId>}
  @module("@aws-sdk/client-ses") @new external new: request => t = "SendEmailCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDeliverabilityDashboardOption = {
  type t
  type request = {
    @as("SubscribedDomains") subscribedDomains: option<domainDeliverabilityTrackingOptions>,
    @as("DashboardEnabled") dashboardEnabled: enabled,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutDeliverabilityDashboardOptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainStatisticsReport = {
  type t
  type request = {
    @as("EndDate") endDate: timestamp_,
    @as("StartDate") startDate: timestamp_,
    @as("Domain") domain: identity,
  }
  type response = {
    @as("DailyVolumes") dailyVolumes: dailyVolumes,
    @as("OverallVolume") overallVolume: overallVolume,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "GetDomainStatisticsReportCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeliverabilityDashboardOptions = {
  type t
  type request = unit
  type response = {
    @as("PendingExpirationSubscribedDomains")
    pendingExpirationSubscribedDomains: option<domainDeliverabilityTrackingOptions>,
    @as("ActiveSubscribedDomains")
    activeSubscribedDomains: option<domainDeliverabilityTrackingOptions>,
    @as("AccountStatus") accountStatus: option<deliverabilityDashboardAccountStatus>,
    @as("SubscriptionExpiryDate") subscriptionExpiryDate: option<timestamp_>,
    @as("DashboardEnabled") dashboardEnabled: enabled,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "GetDeliverabilityDashboardOptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeliverabilityTestReport = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Content") content: emailContent,
    @as("FromEmailAddress") fromEmailAddress: emailAddress,
    @as("ReportName") reportName: option<reportName>,
  }
  type response = {
    @as("DeliverabilityTestStatus") deliverabilityTestStatus: deliverabilityTestStatus,
    @as("ReportId") reportId: reportId,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "CreateDeliverabilityTestReportCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConfigurationSetEventDestination = {
  type t
  type request = {
    @as("EventDestination") eventDestination: eventDestinationDefinition,
    @as("EventDestinationName") eventDestinationName: eventDestinationName,
    @as("ConfigurationSetName") configurationSetName: configurationSetName,
  }
  type response = unit
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "CreateConfigurationSetEventDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConfigurationSetEventDestinations = {
  type t
  type request = {@as("ConfigurationSetName") configurationSetName: configurationSetName}
  type response = {@as("EventDestinations") eventDestinations: option<eventDestinations>}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "GetConfigurationSetEventDestinationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
