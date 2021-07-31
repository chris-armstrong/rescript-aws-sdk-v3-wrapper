type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-ses") @new external createClient: unit => awsServiceClient = "SESv2Client";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type websiteURL = string
type warmupStatus = [@as("DONE") #DONE | @as("IN_PROGRESS") #IN_PROGRESS]
type volume = float
type useDefaultIfPreferenceUnavailable = bool
type useCaseDescription = string
type unsubscribeAll = bool
type topicName = string
type tlsPolicy = [@as("OPTIONAL") #OPTIONAL | @as("REQUIRE") #REQUIRE]
type timestamp_ = Js.Date.t;
type templateContent = string
type tagValue = string
type tagKey = string
type suppressionListReason = [@as("COMPLAINT") #COMPLAINT | @as("BOUNCE") #BOUNCE]
type suppressionListImportAction = [@as("PUT") #PUT | @as("DELETE") #DELETE]
type successRedirectionURL = string
type subscriptionStatus = [@as("OPT_OUT") #OPT_OUT | @as("OPT_IN") #OPT_IN]
type subject = string
type sentLast24Hours = float
type sendingPoolName = string
type selector = string
type s3Url = string
type reviewStatus = [@as("DENIED") #DENIED | @as("GRANTED") #GRANTED | @as("FAILED") #FAILED | @as("PENDING") #PENDING]
type reportName = string
type reportId = string
type renderedEmailTemplate = string
type rblName = string
type rawMessageData = NodeJs.Buffer.t
type processedRecordsCount = int
type privateKey = string
type poolName = string
type policyName = string
type policy = string
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
type mailType = [@as("TRANSACTIONAL") #TRANSACTIONAL | @as("MARKETING") #MARKETING]
type mailFromDomainStatus = [@as("TEMPORARY_FAILURE") #TEMPORARY_FAILURE | @as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING") #PENDING]
type mailFromDomainName = string
type lastFreshStart = Js.Date.t;
type jobStatus = [@as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("PROCESSING") #PROCESSING | @as("CREATED") #CREATED]
type jobId = string
type ispName = string
type ip = string
type importDestinationType = [@as("CONTACT_LIST") #CONTACT_LIST | @as("SUPPRESSION_LIST") #SUPPRESSION_LIST]
type imageUrl = string
type identityType = [@as("MANAGED_DOMAIN") #MANAGED_DOMAIN | @as("DOMAIN") #DOMAIN | @as("EMAIL_ADDRESS") #EMAIL_ADDRESS]
type identity = string
type generalEnforcementStatus = string
type feedbackId = string
type failureRedirectionURL = string
type failedRecordsS3Url = string
type failedRecordsCount = int
type eventType = [@as("SUBSCRIPTION") #SUBSCRIPTION | @as("DELIVERY_DELAY") #DELIVERY_DELAY | @as("RENDERING_FAILURE") #RENDERING_FAILURE | @as("CLICK") #CLICK | @as("OPEN") #OPEN | @as("DELIVERY") #DELIVERY | @as("COMPLAINT") #COMPLAINT | @as("BOUNCE") #BOUNCE | @as("REJECT") #REJECT | @as("SEND") #SEND]
type eventDestinationName = string
type esp = string
type errorMessage = string
type enabledWrapper = bool
type enabled = bool
type emailTemplateText = string
type emailTemplateSubject = string
type emailTemplateName = string
type emailTemplateHtml = string
type emailTemplateData = string
type emailAddress = string
type domain = string
type dnsToken = string
type dkimStatus = [@as("NOT_STARTED") #NOT_STARTED | @as("TEMPORARY_FAILURE") #TEMPORARY_FAILURE | @as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING") #PENDING]
type dkimSigningAttributesOrigin = [@as("EXTERNAL") #EXTERNAL | @as("AWS_SES") #AWS_SES]
type displayName = string
type dimensionValueSource = [@as("LINK_TAG") #LINK_TAG | @as("EMAIL_HEADER") #EMAIL_HEADER | @as("MESSAGE_TAG") #MESSAGE_TAG]
type dimensionName = string
type description = string
type deliverabilityTestSubject = string
type deliverabilityTestStatus = [@as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS]
type deliverabilityDashboardAccountStatus = [@as("DISABLED") #DISABLED | @as("PENDING_EXPIRATION") #PENDING_EXPIRATION | @as("ACTIVE") #ACTIVE]
type defaultDimensionValue = string
type dataFormat = [@as("JSON") #JSON | @as("CSV") #CSV]
type customRedirectDomain = string
type contactListName = string
type contactListImportAction = [@as("PUT") #PUT | @as("DELETE") #DELETE]
type contactLanguage = [@as("JA") #JA | @as("EN") #EN]
type configurationSetName = string
type charset = string
type caseId = string
type campaignId = string
type bulkEmailStatus = [@as("FAILED") #FAILED | @as("TRANSIENT_FAILURE") #TRANSIENT_FAILURE | @as("INVALID_PARAMETER") #INVALID_PARAMETER | @as("CONFIGURATION_SET_SENDING_PAUSED") #CONFIGURATION_SET_SENDING_PAUSED | @as("ACCOUNT_SENDING_PAUSED") #ACCOUNT_SENDING_PAUSED | @as("INVALID_SENDING_POOL_NAME") #INVALID_SENDING_POOL_NAME | @as("ACCOUNT_DAILY_QUOTA_EXCEEDED") #ACCOUNT_DAILY_QUOTA_EXCEEDED | @as("ACCOUNT_THROTTLED") #ACCOUNT_THROTTLED | @as("ACCOUNT_SUSPENDED") #ACCOUNT_SUSPENDED | @as("TEMPLATE_NOT_FOUND") #TEMPLATE_NOT_FOUND | @as("CONFIGURATION_SET_NOT_FOUND") #CONFIGURATION_SET_NOT_FOUND | @as("MAIL_FROM_DOMAIN_NOT_VERIFIED") #MAIL_FROM_DOMAIN_NOT_VERIFIED | @as("MESSAGE_REJECTED") #MESSAGE_REJECTED | @as("SUCCESS") #SUCCESS]
type blacklistingDescription = string
type blacklistItemName = string
type behaviorOnMxFailure = [@as("REJECT_MESSAGE") #REJECT_MESSAGE | @as("USE_DEFAULT_VALUE") #USE_DEFAULT_VALUE]
type attributesData = string
type amazonResourceName = string
type additionalContactEmailAddress = string
type volumeStatistics = {
@as("ProjectedSpam") projectedSpam: option<volume>,
  @as("ProjectedInbox") projectedInbox: option<volume>,
  @as("SpamRawCount") spamRawCount: option<volume>,
  @as("InboxRawCount") inboxRawCount: option<volume>
}
type trackingOptions = {
@as("CustomRedirectDomain") customRedirectDomain: customRedirectDomain
}
type topicPreference = {
@as("SubscriptionStatus") subscriptionStatus: subscriptionStatus,
  @as("TopicName") topicName: topicName
}
type topicFilter = {
@as("UseDefaultIfPreferenceUnavailable") useDefaultIfPreferenceUnavailable: option<useDefaultIfPreferenceUnavailable>,
  @as("TopicName") topicName: option<topicName>
}
type topic = {
@as("DefaultSubscriptionStatus") defaultSubscriptionStatus: subscriptionStatus,
  @as("Description") description: option<description>,
  @as("DisplayName") displayName: displayName,
  @as("TopicName") topicName: topicName
}
type template = {
@as("TemplateData") templateData: option<emailTemplateData>,
  @as("TemplateArn") templateArn: option<amazonResourceName>,
  @as("TemplateName") templateName: option<emailTemplateName>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
  @as("Key") key: tagKey
}
type suppressionListReasons = array<suppressionListReason>
type suppressionListDestination = {
@as("SuppressionListImportAction") suppressionListImportAction: suppressionListImportAction
}
type suppressedDestinationSummary = {
@as("LastUpdateTime") lastUpdateTime: timestamp_,
  @as("Reason") reason: suppressionListReason,
  @as("EmailAddress") emailAddress: emailAddress
}
type suppressedDestinationAttributes = {
@as("FeedbackId") feedbackId: option<feedbackId>,
  @as("MessageId") messageId: option<outboundMessageId>
}
type snsDestination = {
@as("TopicArn") topicArn: amazonResourceName
}
type sendingOptions = {
@as("SendingEnabled") sendingEnabled: option<enabled>
}
type sendQuota = {
@as("SentLast24Hours") sentLast24Hours: option<sentLast24Hours>,
  @as("MaxSendRate") maxSendRate: option<maxSendRate>,
  @as("Max24HourSend") max24HourSend: option<max24HourSend>
}
type reviewDetails = {
@as("CaseId") caseId: option<caseId>,
  @as("Status") status: option<reviewStatus>
}
type reputationOptions = {
@as("LastFreshStart") lastFreshStart: option<lastFreshStart>,
  @as("ReputationMetricsEnabled") reputationMetricsEnabled: option<enabled>
}
type replacementTemplate = {
@as("ReplacementTemplateData") replacementTemplateData: option<emailTemplateData>
}
type rawMessage = {
@as("Data") data: rawMessageData
}
type policyMap = Js.Dict.t<policy>
type placementStatistics = {
@as("DkimPercentage") dkimPercentage: option<percentage>,
  @as("SpfPercentage") spfPercentage: option<percentage>,
  @as("MissingPercentage") missingPercentage: option<percentage>,
  @as("SpamPercentage") spamPercentage: option<percentage>,
  @as("InboxPercentage") inboxPercentage: option<percentage>
}
type pinpointDestination = {
@as("ApplicationArn") applicationArn: option<amazonResourceName>
}
type messageTag = {
@as("Value") value: messageTagValue,
  @as("Name") name: messageTagName
}
type mailFromAttributes = {
@as("BehaviorOnMxFailure") behaviorOnMxFailure: behaviorOnMxFailure,
  @as("MailFromDomainStatus") mailFromDomainStatus: mailFromDomainStatus,
  @as("MailFromDomain") mailFromDomain: mailFromDomainName
}
type listOfDedicatedIpPools = array<poolName>
type listManagementOptions = {
@as("TopicName") topicName: option<topicName>,
  @as("ContactListName") contactListName: contactListName
}
type kinesisFirehoseDestination = {
@as("DeliveryStreamArn") deliveryStreamArn: amazonResourceName,
  @as("IamRoleArn") iamRoleArn: amazonResourceName
}
type ispNameList = array<ispName>
type ipList = array<ip>
type importDataSource = {
@as("DataFormat") dataFormat: dataFormat,
  @as("S3Url") s3Url: s3Url
}
type identityInfo = {
@as("SendingEnabled") sendingEnabled: option<enabled>,
  @as("IdentityName") identityName: option<identity>,
  @as("IdentityType") identityType: option<identityType>
}
type failureInfo = {
@as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("FailedRecordsS3Url") failedRecordsS3Url: option<failedRecordsS3Url>
}
type eventTypes = array<eventType>
type esps = array<esp>
type emailTemplateMetadata = {
@as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("TemplateName") templateName: option<emailTemplateName>
}
type emailTemplateContent = {
@as("Html") html: option<emailTemplateHtml>,
  @as("Text") text: option<emailTemplateText>,
  @as("Subject") subject: option<emailTemplateSubject>
}
type emailAddressList = array<emailAddress>
type domainIspPlacement = {
@as("SpamPercentage") spamPercentage: option<percentage>,
  @as("InboxPercentage") inboxPercentage: option<percentage>,
  @as("SpamRawCount") spamRawCount: option<volume>,
  @as("InboxRawCount") inboxRawCount: option<volume>,
  @as("IspName") ispName: option<ispName>
}
type dnsTokenList = array<dnsToken>
type dkimSigningAttributes = {
@as("DomainSigningPrivateKey") domainSigningPrivateKey: privateKey,
  @as("DomainSigningSelector") domainSigningSelector: selector
}
type deliveryOptions = {
@as("SendingPoolName") sendingPoolName: option<poolName>,
  @as("TlsPolicy") tlsPolicy: option<tlsPolicy>
}
type deliverabilityTestReport = {
@as("DeliverabilityTestStatus") deliverabilityTestStatus: option<deliverabilityTestStatus>,
  @as("CreateDate") createDate: option<timestamp_>,
  @as("FromEmailAddress") fromEmailAddress: option<emailAddress>,
  @as("Subject") subject: option<deliverabilityTestSubject>,
  @as("ReportName") reportName: option<reportName>,
  @as("ReportId") reportId: option<reportId>
}
type dedicatedIp = {
@as("PoolName") poolName: option<poolName>,
  @as("WarmupPercentage") warmupPercentage: percentage100Wrapper,
  @as("WarmupStatus") warmupStatus: warmupStatus,
  @as("Ip") ip: ip
}
type customVerificationEmailTemplateMetadata = {
@as("FailureRedirectionURL") failureRedirectionURL: option<failureRedirectionURL>,
  @as("SuccessRedirectionURL") successRedirectionURL: option<successRedirectionURL>,
  @as("TemplateSubject") templateSubject: option<emailTemplateSubject>,
  @as("FromEmailAddress") fromEmailAddress: option<emailAddress>,
  @as("TemplateName") templateName: option<emailTemplateName>
}
type content = {
@as("Charset") charset: option<charset>,
  @as("Data") data: messageData
}
type contactListDestination = {
@as("ContactListImportAction") contactListImportAction: contactListImportAction,
  @as("ContactListName") contactListName: contactListName
}
type contactList = {
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<timestamp_>,
  @as("ContactListName") contactListName: option<contactListName>
}
type configurationSetNameList = array<configurationSetName>
type cloudWatchDimensionConfiguration = {
@as("DefaultDimensionValue") defaultDimensionValue: defaultDimensionValue,
  @as("DimensionValueSource") dimensionValueSource: dimensionValueSource,
  @as("DimensionName") dimensionName: dimensionName
}
type bulkEmailEntryResult = {
@as("MessageId") messageId: option<outboundMessageId>,
  @as("Error") error: option<errorMessage>,
  @as("Status") status: option<bulkEmailStatus>
}
type blacklistItemNames = array<blacklistItemName>
type blacklistEntry = {
@as("Description") description: option<blacklistingDescription>,
  @as("ListingTime") listingTime: option<timestamp_>,
  @as("RblName") rblName: option<rblName>
}
type additionalContactEmailAddresses = array<additionalContactEmailAddress>
type topics = array<topic>
type topicPreferenceList = array<topicPreference>
type tagList_ = array<tag>
type suppressionOptions = {
@as("SuppressedReasons") suppressedReasons: option<suppressionListReasons>
}
type suppressionAttributes = {
@as("SuppressedReasons") suppressedReasons: option<suppressionListReasons>
}
type suppressedDestinationSummaries = array<suppressedDestinationSummary>
type suppressedDestination = {
@as("Attributes") attributes: option<suppressedDestinationAttributes>,
  @as("LastUpdateTime") lastUpdateTime: timestamp_,
  @as("Reason") reason: suppressionListReason,
  @as("EmailAddress") emailAddress: emailAddress
}
type replacementEmailContent = {
@as("ReplacementTemplate") replacementTemplate: option<replacementTemplate>
}
type messageTagList = array<messageTag>
type listOfContactLists = array<contactList>
type listContactsFilter = {
@as("TopicFilter") topicFilter: option<topicFilter>,
  @as("FilteredStatus") filteredStatus: option<subscriptionStatus>
}
type ispPlacement = {
@as("PlacementStatistics") placementStatistics: option<placementStatistics>,
  @as("IspName") ispName: option<ispName>
}
type inboxPlacementTrackingOption = {
@as("TrackedIsps") trackedIsps: option<ispNameList>,
  @as("Global") global: option<enabled>
}
type importDestination = {
@as("ContactListDestination") contactListDestination: option<contactListDestination>,
  @as("SuppressionListDestination") suppressionListDestination: option<suppressionListDestination>
}
type identityInfoList = array<identityInfo>
type emailTemplateMetadataList = array<emailTemplateMetadata>
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
  @as("CampaignId") campaignId: option<campaignId>
}
type dkimAttributes = {
@as("SigningAttributesOrigin") signingAttributesOrigin: option<dkimSigningAttributesOrigin>,
  @as("Tokens") tokens: option<dnsTokenList>,
  @as("Status") status: option<dkimStatus>,
  @as("SigningEnabled") signingEnabled: option<enabled>
}
type destination = {
@as("BccAddresses") bccAddresses: option<emailAddressList>,
  @as("CcAddresses") ccAddresses: option<emailAddressList>,
  @as("ToAddresses") toAddresses: option<emailAddressList>
}
type deliverabilityTestReports = array<deliverabilityTestReport>
type dedicatedIpList = array<dedicatedIp>
type customVerificationEmailTemplatesList = array<customVerificationEmailTemplateMetadata>
type cloudWatchDimensionConfigurations = array<cloudWatchDimensionConfiguration>
type bulkEmailEntryResultList = array<bulkEmailEntryResult>
type bulkEmailContent = {
@as("Template") template: option<template>
}
type body = {
@as("Html") html: option<content>,
  @as("Text") text: option<content>
}
type blacklistEntries = array<blacklistEntry>
type accountDetails = {
@as("ReviewDetails") reviewDetails: option<reviewDetails>,
  @as("AdditionalContactEmailAddresses") additionalContactEmailAddresses: option<additionalContactEmailAddresses>,
  @as("UseCaseDescription") useCaseDescription: option<useCaseDescription>,
  @as("ContactLanguage") contactLanguage: option<contactLanguage>,
  @as("WebsiteURL") websiteURL: option<websiteURL>,
  @as("MailType") mailType: option<mailType>
}
type overallVolume = {
@as("DomainIspPlacements") domainIspPlacements: option<domainIspPlacements>,
  @as("ReadRatePercent") readRatePercent: option<percentage>,
  @as("VolumeStatistics") volumeStatistics: option<volumeStatistics>
}
type message = {
@as("Body") body: body,
  @as("Subject") subject: content
}
type ispPlacements = array<ispPlacement>
type importJobSummary = {
@as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("JobStatus") jobStatus: option<jobStatus>,
  @as("ImportDestination") importDestination: option<importDestination>,
  @as("JobId") jobId: option<jobId>
}
type domainDeliverabilityTrackingOption = {
@as("InboxPlacementTrackingOption") inboxPlacementTrackingOption: option<inboxPlacementTrackingOption>,
  @as("SubscriptionStartDate") subscriptionStartDate: option<timestamp_>,
  @as("Domain") domain: option<domain>
}
type domainDeliverabilityCampaignList = array<domainDeliverabilityCampaign>
type dailyVolume = {
@as("DomainIspPlacements") domainIspPlacements: option<domainIspPlacements>,
  @as("VolumeStatistics") volumeStatistics: option<volumeStatistics>,
  @as("StartDate") startDate: option<timestamp_>
}
type contact = {
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<timestamp_>,
  @as("UnsubscribeAll") unsubscribeAll: option<unsubscribeAll>,
  @as("TopicDefaultPreferences") topicDefaultPreferences: option<topicPreferenceList>,
  @as("TopicPreferences") topicPreferences: option<topicPreferenceList>,
  @as("EmailAddress") emailAddress: option<emailAddress>
}
type cloudWatchDestination = {
@as("DimensionConfigurations") dimensionConfigurations: cloudWatchDimensionConfigurations
}
type bulkEmailEntry = {
@as("ReplacementEmailContent") replacementEmailContent: option<replacementEmailContent>,
  @as("ReplacementTags") replacementTags: option<messageTagList>,
  @as("Destination") destination: destination
}
type blacklistReport = Js.Dict.t<blacklistEntries>
type listOfContacts = array<contact>
type importJobSummaryList = array<importJobSummary>
type eventDestinationDefinition = {
@as("PinpointDestination") pinpointDestination: option<pinpointDestination>,
  @as("SnsDestination") snsDestination: option<snsDestination>,
  @as("CloudWatchDestination") cloudWatchDestination: option<cloudWatchDestination>,
  @as("KinesisFirehoseDestination") kinesisFirehoseDestination: option<kinesisFirehoseDestination>,
  @as("MatchingEventTypes") matchingEventTypes: option<eventTypes>,
  @as("Enabled") enabled: option<enabled>
}
type eventDestination = {
@as("PinpointDestination") pinpointDestination: option<pinpointDestination>,
  @as("SnsDestination") snsDestination: option<snsDestination>,
  @as("CloudWatchDestination") cloudWatchDestination: option<cloudWatchDestination>,
  @as("KinesisFirehoseDestination") kinesisFirehoseDestination: option<kinesisFirehoseDestination>,
  @as("MatchingEventTypes") matchingEventTypes: eventTypes,
  @as("Enabled") enabled: option<enabled>,
  @as("Name") name: eventDestinationName
}
type emailContent = {
@as("Template") template: option<template>,
  @as("Raw") raw: option<rawMessage>,
  @as("Simple") simple: option<message>
}
type domainDeliverabilityTrackingOptions = array<domainDeliverabilityTrackingOption>
type dailyVolumes = array<dailyVolume>
type bulkEmailEntryList = array<bulkEmailEntry>
type eventDestinations = array<eventDestination>

module UpdateEmailIdentityPolicy = {
  type t;
  type request = {
@as("Policy") policy: policy,
  @as("PolicyName") policyName: policyName,
  @as("EmailIdentity") emailIdentity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateEmailIdentityPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("FailureRedirectionURL") failureRedirectionURL: failureRedirectionURL,
  @as("SuccessRedirectionURL") successRedirectionURL: successRedirectionURL,
  @as("TemplateContent") templateContent: templateContent,
  @as("TemplateSubject") templateSubject: emailTemplateSubject,
  @as("FromEmailAddress") fromEmailAddress: emailAddress,
  @as("TemplateName") templateName: emailTemplateName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateCustomVerificationEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TestRenderEmailTemplate = {
  type t;
  type request = {
@as("TemplateData") templateData: emailTemplateData,
  @as("TemplateName") templateName: emailTemplateName
}
  type response = {
@as("RenderedTemplate") renderedTemplate: renderedEmailTemplate
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "TestRenderEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendCustomVerificationEmail = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
  @as("TemplateName") templateName: emailTemplateName,
  @as("EmailAddress") emailAddress: emailAddress
}
  type response = {
@as("MessageId") messageId: option<outboundMessageId>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendCustomVerificationEmailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutSuppressedDestination = {
  type t;
  type request = {
@as("Reason") reason: suppressionListReason,
  @as("EmailAddress") emailAddress: emailAddress
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutSuppressedDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutEmailIdentityMailFromAttributes = {
  type t;
  type request = {
@as("BehaviorOnMxFailure") behaviorOnMxFailure: option<behaviorOnMxFailure>,
  @as("MailFromDomain") mailFromDomain: option<mailFromDomainName>,
  @as("EmailIdentity") emailIdentity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutEmailIdentityMailFromAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutEmailIdentityFeedbackAttributes = {
  type t;
  type request = {
@as("EmailForwardingEnabled") emailForwardingEnabled: option<enabled>,
  @as("EmailIdentity") emailIdentity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutEmailIdentityFeedbackAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutEmailIdentityDkimAttributes = {
  type t;
  type request = {
@as("SigningEnabled") signingEnabled: option<enabled>,
  @as("EmailIdentity") emailIdentity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutEmailIdentityDkimAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutEmailIdentityConfigurationSetAttributes = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
  @as("EmailIdentity") emailIdentity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutEmailIdentityConfigurationSetAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutDedicatedIpWarmupAttributes = {
  type t;
  type request = {
@as("WarmupPercentage") warmupPercentage: percentage100Wrapper,
  @as("Ip") ip: ip
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutDedicatedIpWarmupAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutDedicatedIpInPool = {
  type t;
  type request = {
@as("DestinationPoolName") destinationPoolName: poolName,
  @as("Ip") ip: ip
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutDedicatedIpInPoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetTrackingOptions = {
  type t;
  type request = {
@as("CustomRedirectDomain") customRedirectDomain: option<customRedirectDomain>,
  @as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutConfigurationSetTrackingOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetSendingOptions = {
  type t;
  type request = {
@as("SendingEnabled") sendingEnabled: option<enabled>,
  @as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutConfigurationSetSendingOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetReputationOptions = {
  type t;
  type request = {
@as("ReputationMetricsEnabled") reputationMetricsEnabled: option<enabled>,
  @as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutConfigurationSetReputationOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetDeliveryOptions = {
  type t;
  type request = {
@as("SendingPoolName") sendingPoolName: option<sendingPoolName>,
  @as("TlsPolicy") tlsPolicy: option<tlsPolicy>,
  @as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutConfigurationSetDeliveryOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAccountSendingAttributes = {
  type t;
  type request = {
@as("SendingEnabled") sendingEnabled: option<enabled>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutAccountSendingAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAccountDedicatedIpWarmupAttributes = {
  type t;
  type request = {
@as("AutoWarmupEnabled") autoWarmupEnabled: option<enabled>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutAccountDedicatedIpWarmupAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: emailTemplateName
}
  type response = {
@as("FailureRedirectionURL") failureRedirectionURL: option<failureRedirectionURL>,
  @as("SuccessRedirectionURL") successRedirectionURL: option<successRedirectionURL>,
  @as("TemplateContent") templateContent: option<templateContent>,
  @as("TemplateSubject") templateSubject: option<emailTemplateSubject>,
  @as("FromEmailAddress") fromEmailAddress: option<emailAddress>,
  @as("TemplateName") templateName: option<emailTemplateName>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetCustomVerificationEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSuppressedDestination = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: emailAddress
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteSuppressedDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: emailTemplateName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEmailIdentityPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: policyName,
  @as("EmailIdentity") emailIdentity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteEmailIdentityPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEmailIdentity = {
  type t;
  type request = {
@as("EmailIdentity") emailIdentity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteEmailIdentityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDedicatedIpPool = {
  type t;
  type request = {
@as("PoolName") poolName: poolName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteDedicatedIpPoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: emailTemplateName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteCustomVerificationEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteContactList = {
  type t;
  type request = {
@as("ContactListName") contactListName: contactListName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteContactListCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteContact = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: emailAddress,
  @as("ContactListName") contactListName: contactListName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestinationName") eventDestinationName: eventDestinationName,
  @as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteConfigurationSetEventDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteConfigurationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEmailIdentityPolicy = {
  type t;
  type request = {
@as("Policy") policy: policy,
  @as("PolicyName") policyName: policyName,
  @as("EmailIdentity") emailIdentity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateEmailIdentityPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("FailureRedirectionURL") failureRedirectionURL: failureRedirectionURL,
  @as("SuccessRedirectionURL") successRedirectionURL: successRedirectionURL,
  @as("TemplateContent") templateContent: templateContent,
  @as("TemplateSubject") templateSubject: emailTemplateSubject,
  @as("FromEmailAddress") fromEmailAddress: emailAddress,
  @as("TemplateName") templateName: emailTemplateName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateCustomVerificationEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateEmailTemplate = {
  type t;
  type request = {
@as("TemplateContent") templateContent: emailTemplateContent,
  @as("TemplateName") templateName: emailTemplateName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
  @as("ResourceArn") resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutEmailIdentityDkimSigningAttributes = {
  type t;
  type request = {
@as("SigningAttributes") signingAttributes: option<dkimSigningAttributes>,
  @as("SigningAttributesOrigin") signingAttributesOrigin: dkimSigningAttributesOrigin,
  @as("EmailIdentity") emailIdentity: identity
}
  type response = {
@as("DkimTokens") dkimTokens: option<dnsTokenList>,
  @as("DkimStatus") dkimStatus: option<dkimStatus>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutEmailIdentityDkimSigningAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetSuppressionOptions = {
  type t;
  type request = {
@as("SuppressedReasons") suppressedReasons: option<suppressionListReasons>,
  @as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutConfigurationSetSuppressionOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAccountSuppressionAttributes = {
  type t;
  type request = {
@as("SuppressedReasons") suppressedReasons: option<suppressionListReasons>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutAccountSuppressionAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAccountDetails = {
  type t;
  type request = {
@as("ProductionAccessEnabled") productionAccessEnabled: option<enabledWrapper>,
  @as("AdditionalContactEmailAddresses") additionalContactEmailAddresses: option<additionalContactEmailAddresses>,
  @as("UseCaseDescription") useCaseDescription: useCaseDescription,
  @as("ContactLanguage") contactLanguage: option<contactLanguage>,
  @as("WebsiteURL") websiteURL: websiteURL,
  @as("MailType") mailType: mailType
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutAccountDetailsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDedicatedIpPools = {
  type t;
  type request = {
@as("PageSize") pageSize: option<maxItems>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("DedicatedIpPools") dedicatedIpPools: option<listOfDedicatedIpPools>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListDedicatedIpPoolsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationSets = {
  type t;
  type request = {
@as("PageSize") pageSize: option<maxItems>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ConfigurationSets") configurationSets: option<configurationSetNameList>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListConfigurationSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: emailTemplateName
}
  type response = {
@as("TemplateContent") templateContent: emailTemplateContent,
  @as("TemplateName") templateName: emailTemplateName
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEmailIdentityPolicies = {
  type t;
  type request = {
@as("EmailIdentity") emailIdentity: identity
}
  type response = {
@as("Policies") policies: option<policyMap>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetEmailIdentityPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDedicatedIp = {
  type t;
  type request = {
@as("Ip") ip: ip
}
  type response = {
@as("DedicatedIp") dedicatedIp: option<dedicatedIp>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDedicatedIpCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEmailTemplate = {
  type t;
  type request = {
@as("TemplateContent") templateContent: emailTemplateContent,
  @as("TemplateName") templateName: emailTemplateName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateContactList = {
  type t;
  type request = {
@as("Description") description: option<description>,
  @as("Topics") topics: option<topics>,
  @as("ContactListName") contactListName: contactListName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateContactListCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateContact = {
  type t;
  type request = {
@as("AttributesData") attributesData: option<attributesData>,
  @as("UnsubscribeAll") unsubscribeAll: option<unsubscribeAll>,
  @as("TopicPreferences") topicPreferences: option<topicPreferenceList>,
  @as("EmailAddress") emailAddress: emailAddress,
  @as("ContactListName") contactListName: contactListName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
  @as("ResourceArn") resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: amazonResourceName
}
  type response = {
@as("Tags") tags: tagList_
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSuppressedDestinations = {
  type t;
  type request = {
@as("PageSize") pageSize: option<maxItems>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("EndDate") endDate: option<timestamp_>,
  @as("StartDate") startDate: option<timestamp_>,
  @as("Reasons") reasons: option<suppressionListReasons>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("SuppressedDestinationSummaries") suppressedDestinationSummaries: option<suppressedDestinationSummaries>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListSuppressedDestinationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEmailTemplates = {
  type t;
  type request = {
@as("PageSize") pageSize: option<maxItems>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("TemplatesMetadata") templatesMetadata: option<emailTemplateMetadataList>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListEmailTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEmailIdentities = {
  type t;
  type request = {
@as("PageSize") pageSize: option<maxItems>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("EmailIdentities") emailIdentities: option<identityInfoList>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListEmailIdentitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDeliverabilityTestReports = {
  type t;
  type request = {
@as("PageSize") pageSize: option<maxItems>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("DeliverabilityTestReports") deliverabilityTestReports: deliverabilityTestReports
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListDeliverabilityTestReportsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCustomVerificationEmailTemplates = {
  type t;
  type request = {
@as("PageSize") pageSize: option<maxItems>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("CustomVerificationEmailTemplates") customVerificationEmailTemplates: option<customVerificationEmailTemplatesList>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListCustomVerificationEmailTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListContactLists = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("PageSize") pageSize: option<maxItems>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ContactLists") contactLists: option<listOfContactLists>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListContactListsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSuppressedDestination = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: emailAddress
}
  type response = {
@as("SuppressedDestination") suppressedDestination: suppressedDestination
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetSuppressedDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetImportJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("FailedRecordsCount") failedRecordsCount: option<failedRecordsCount>,
  @as("ProcessedRecordsCount") processedRecordsCount: option<processedRecordsCount>,
  @as("CompletedTimestamp") completedTimestamp: option<timestamp_>,
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("JobStatus") jobStatus: option<jobStatus>,
  @as("FailureInfo") failureInfo: option<failureInfo>,
  @as("ImportDataSource") importDataSource: option<importDataSource>,
  @as("ImportDestination") importDestination: option<importDestination>,
  @as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetImportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEmailIdentity = {
  type t;
  type request = {
@as("EmailIdentity") emailIdentity: identity
}
  type response = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
  @as("Tags") tags: option<tagList_>,
  @as("Policies") policies: option<policyMap>,
  @as("MailFromAttributes") mailFromAttributes: option<mailFromAttributes>,
  @as("DkimAttributes") dkimAttributes: option<dkimAttributes>,
  @as("VerifiedForSendingStatus") verifiedForSendingStatus: option<enabled>,
  @as("FeedbackForwardingStatus") feedbackForwardingStatus: option<enabled>,
  @as("IdentityType") identityType: option<identityType>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetEmailIdentityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDomainDeliverabilityCampaign = {
  type t;
  type request = {
@as("CampaignId") campaignId: campaignId
}
  type response = {
@as("DomainDeliverabilityCampaign") domainDeliverabilityCampaign: domainDeliverabilityCampaign
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDomainDeliverabilityCampaignCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDedicatedIps = {
  type t;
  type request = {
@as("PageSize") pageSize: option<maxItems>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("PoolName") poolName: option<poolName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("DedicatedIps") dedicatedIps: option<dedicatedIpList>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDedicatedIpsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContactList = {
  type t;
  type request = {
@as("ContactListName") contactListName: contactListName
}
  type response = {
@as("Tags") tags: option<tagList_>,
  @as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<timestamp_>,
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("Description") description: option<description>,
  @as("Topics") topics: option<topics>,
  @as("ContactListName") contactListName: option<contactListName>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetContactListCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContact = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: emailAddress,
  @as("ContactListName") contactListName: contactListName
}
  type response = {
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: option<timestamp_>,
  @as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
  @as("AttributesData") attributesData: option<attributesData>,
  @as("UnsubscribeAll") unsubscribeAll: option<unsubscribeAll>,
  @as("TopicDefaultPreferences") topicDefaultPreferences: option<topicPreferenceList>,
  @as("TopicPreferences") topicPreferences: option<topicPreferenceList>,
  @as("EmailAddress") emailAddress: option<emailAddress>,
  @as("ContactListName") contactListName: option<contactListName>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = {
@as("SuppressionOptions") suppressionOptions: option<suppressionOptions>,
  @as("Tags") tags: option<tagList_>,
  @as("SendingOptions") sendingOptions: option<sendingOptions>,
  @as("ReputationOptions") reputationOptions: option<reputationOptions>,
  @as("DeliveryOptions") deliveryOptions: option<deliveryOptions>,
  @as("TrackingOptions") trackingOptions: option<trackingOptions>,
  @as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetConfigurationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccount = {
  type t;
  type request = unit
  type response = {
@as("Details") details: option<accountDetails>,
  @as("SuppressionAttributes") suppressionAttributes: option<suppressionAttributes>,
  @as("SendingEnabled") sendingEnabled: option<enabled>,
  @as("SendQuota") sendQuota: option<sendQuota>,
  @as("ProductionAccessEnabled") productionAccessEnabled: option<enabled>,
  @as("EnforcementStatus") enforcementStatus: option<generalEnforcementStatus>,
  @as("DedicatedIpAutoWarmupEnabled") dedicatedIpAutoWarmupEnabled: option<enabled>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateImportJob = {
  type t;
  type request = {
@as("ImportDataSource") importDataSource: importDataSource,
  @as("ImportDestination") importDestination: importDestination
}
  type response = {
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateImportJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEmailIdentity = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
  @as("DkimSigningAttributes") dkimSigningAttributes: option<dkimSigningAttributes>,
  @as("Tags") tags: option<tagList_>,
  @as("EmailIdentity") emailIdentity: identity
}
  type response = {
@as("DkimAttributes") dkimAttributes: option<dkimAttributes>,
  @as("VerifiedForSendingStatus") verifiedForSendingStatus: option<enabled>,
  @as("IdentityType") identityType: option<identityType>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateEmailIdentityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDedicatedIpPool = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("PoolName") poolName: poolName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateDedicatedIpPoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateContactList = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("Description") description: option<description>,
  @as("Topics") topics: option<topics>,
  @as("ContactListName") contactListName: contactListName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateContactListCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateContact = {
  type t;
  type request = {
@as("AttributesData") attributesData: option<attributesData>,
  @as("UnsubscribeAll") unsubscribeAll: option<unsubscribeAll>,
  @as("TopicPreferences") topicPreferences: option<topicPreferenceList>,
  @as("EmailAddress") emailAddress: emailAddress,
  @as("ContactListName") contactListName: contactListName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSet = {
  type t;
  type request = {
@as("SuppressionOptions") suppressionOptions: option<suppressionOptions>,
  @as("Tags") tags: option<tagList_>,
  @as("SendingOptions") sendingOptions: option<sendingOptions>,
  @as("ReputationOptions") reputationOptions: option<reputationOptions>,
  @as("DeliveryOptions") deliveryOptions: option<deliveryOptions>,
  @as("TrackingOptions") trackingOptions: option<trackingOptions>,
  @as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateConfigurationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDomainDeliverabilityCampaigns = {
  type t;
  type request = {
@as("PageSize") pageSize: option<maxItems>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("SubscribedDomain") subscribedDomain: domain,
  @as("EndDate") endDate: timestamp_,
  @as("StartDate") startDate: timestamp_
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("DomainDeliverabilityCampaigns") domainDeliverabilityCampaigns: domainDeliverabilityCampaignList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListDomainDeliverabilityCampaignsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDeliverabilityTestReport = {
  type t;
  type request = {
@as("ReportId") reportId: reportId
}
  type response = {
@as("Tags") tags: option<tagList_>,
  @as("Message") message: option<messageContent>,
  @as("IspPlacements") ispPlacements: ispPlacements,
  @as("OverallPlacement") overallPlacement: placementStatistics,
  @as("DeliverabilityTestReport") deliverabilityTestReport: deliverabilityTestReport
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDeliverabilityTestReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBlacklistReports = {
  type t;
  type request = {
@as("BlacklistItemNames") blacklistItemNames: blacklistItemNames
}
  type response = {
@as("BlacklistReport") blacklistReport: blacklistReport
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetBlacklistReportsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestination") eventDestination: eventDestinationDefinition,
  @as("EventDestinationName") eventDestinationName: eventDestinationName,
  @as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateConfigurationSetEventDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendEmail = {
  type t;
  type request = {
@as("ListManagementOptions") listManagementOptions: option<listManagementOptions>,
  @as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
  @as("EmailTags") emailTags: option<messageTagList>,
  @as("Content") content: emailContent,
  @as("FeedbackForwardingEmailAddressIdentityArn") feedbackForwardingEmailAddressIdentityArn: option<amazonResourceName>,
  @as("FeedbackForwardingEmailAddress") feedbackForwardingEmailAddress: option<emailAddress>,
  @as("ReplyToAddresses") replyToAddresses: option<emailAddressList>,
  @as("Destination") destination: option<destination>,
  @as("FromEmailAddressIdentityArn") fromEmailAddressIdentityArn: option<amazonResourceName>,
  @as("FromEmailAddress") fromEmailAddress: option<emailAddress>
}
  type response = {
@as("MessageId") messageId: option<outboundMessageId>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendEmailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendBulkEmail = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
  @as("BulkEmailEntries") bulkEmailEntries: bulkEmailEntryList,
  @as("DefaultContent") defaultContent: bulkEmailContent,
  @as("DefaultEmailTags") defaultEmailTags: option<messageTagList>,
  @as("FeedbackForwardingEmailAddressIdentityArn") feedbackForwardingEmailAddressIdentityArn: option<amazonResourceName>,
  @as("FeedbackForwardingEmailAddress") feedbackForwardingEmailAddress: option<emailAddress>,
  @as("ReplyToAddresses") replyToAddresses: option<emailAddressList>,
  @as("FromEmailAddressIdentityArn") fromEmailAddressIdentityArn: option<amazonResourceName>,
  @as("FromEmailAddress") fromEmailAddress: option<emailAddress>
}
  type response = {
@as("BulkEmailEntryResults") bulkEmailEntryResults: bulkEmailEntryResultList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendBulkEmailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutDeliverabilityDashboardOption = {
  type t;
  type request = {
@as("SubscribedDomains") subscribedDomains: option<domainDeliverabilityTrackingOptions>,
  @as("DashboardEnabled") dashboardEnabled: enabled
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutDeliverabilityDashboardOptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListImportJobs = {
  type t;
  type request = {
@as("PageSize") pageSize: option<maxItems>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ImportDestinationType") importDestinationType: option<importDestinationType>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ImportJobs") importJobs: option<importJobSummaryList>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListImportJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListContacts = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("PageSize") pageSize: option<maxItems>,
  @as("Filter") filter: option<listContactsFilter>,
  @as("ContactListName") contactListName: contactListName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Contacts") contacts: option<listOfContacts>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListContactsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDomainStatisticsReport = {
  type t;
  type request = {
@as("EndDate") endDate: timestamp_,
  @as("StartDate") startDate: timestamp_,
  @as("Domain") domain: identity
}
  type response = {
@as("DailyVolumes") dailyVolumes: dailyVolumes,
  @as("OverallVolume") overallVolume: overallVolume
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDomainStatisticsReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDeliverabilityDashboardOptions = {
  type t;
  type request = unit
  type response = {
@as("PendingExpirationSubscribedDomains") pendingExpirationSubscribedDomains: option<domainDeliverabilityTrackingOptions>,
  @as("ActiveSubscribedDomains") activeSubscribedDomains: option<domainDeliverabilityTrackingOptions>,
  @as("AccountStatus") accountStatus: option<deliverabilityDashboardAccountStatus>,
  @as("SubscriptionExpiryDate") subscriptionExpiryDate: option<timestamp_>,
  @as("DashboardEnabled") dashboardEnabled: enabled
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetDeliverabilityDashboardOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDeliverabilityTestReport = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("Content") content: emailContent,
  @as("FromEmailAddress") fromEmailAddress: emailAddress,
  @as("ReportName") reportName: option<reportName>
}
  type response = {
@as("DeliverabilityTestStatus") deliverabilityTestStatus: deliverabilityTestStatus,
  @as("ReportId") reportId: reportId
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateDeliverabilityTestReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestination") eventDestination: eventDestinationDefinition,
  @as("EventDestinationName") eventDestinationName: eventDestinationName,
  @as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateConfigurationSetEventDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetConfigurationSetEventDestinations = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = {
@as("EventDestinations") eventDestinations: option<eventDestinations>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetConfigurationSetEventDestinationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
