type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type websiteURL = string
type warmupStatus = [@as("DONE") #DONE | @as("IN_PROGRESS") #IN_PROGRESS]
type volume = float;
type useDefaultIfPreferenceUnavailable = bool;
type useCaseDescription = string
type unsubscribeAll = bool;
type topicName = string
type tlsPolicy = [@as("OPTIONAL") #OPTIONAL | @as("REQUIRE") #REQUIRE]
type amazonawsTimestamp = Js.Date.t;
type templateContent = string
type tagValue = string
type tagKey = string
type suppressionListReason = [@as("COMPLAINT") #COMPLAINT | @as("BOUNCE") #BOUNCE]
type suppressionListImportAction = [@as("PUT") #PUT | @as("DELETE") #DELETE]
type successRedirectionURL = string
type subscriptionStatus = [@as("OPT_OUT") #OPT_OUT | @as("OPT_IN") #OPT_IN]
type subject = string
type sentLast24Hours = float;
type sendingPoolName = string
type selector = string
type s3Url = string
type reviewStatus = [@as("DENIED") #DENIED | @as("GRANTED") #GRANTED | @as("FAILED") #FAILED | @as("PENDING") #PENDING]
type reportName = string
type reportId = string
type renderedEmailTemplate = string
type rblName = string
type rawMessageData = NodeJs.Buffer.t;
type processedRecordsCount = int;
type privateKey = string
type poolName = string
type policyName = string
type policy = string
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
type failedRecordsCount = int;
type eventType = [@as("SUBSCRIPTION") #SUBSCRIPTION | @as("DELIVERY_DELAY") #DELIVERY_DELAY | @as("RENDERING_FAILURE") #RENDERING_FAILURE | @as("CLICK") #CLICK | @as("OPEN") #OPEN | @as("DELIVERY") #DELIVERY | @as("COMPLAINT") #COMPLAINT | @as("BOUNCE") #BOUNCE | @as("REJECT") #REJECT | @as("SEND") #SEND]
type eventDestinationName = string
type esp = string
type errorMessage = string
type enabledWrapper = bool;
type enabled = bool;
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
@as("ProjectedSpam") projectedSpam: volume,
@as("ProjectedInbox") projectedInbox: volume,
@as("SpamRawCount") spamRawCount: volume,
@as("InboxRawCount") inboxRawCount: volume
}
type trackingOptions = {
@as("CustomRedirectDomain") customRedirectDomain: option<customRedirectDomain>
}
type topicPreference = {
@as("SubscriptionStatus") subscriptionStatus: option<subscriptionStatus>,
@as("TopicName") topicName: option<topicName>
}
type topicFilter = {
@as("UseDefaultIfPreferenceUnavailable") useDefaultIfPreferenceUnavailable: useDefaultIfPreferenceUnavailable,
@as("TopicName") topicName: topicName
}
type topic = {
@as("DefaultSubscriptionStatus") defaultSubscriptionStatus: option<subscriptionStatus>,
@as("Description") description: description,
@as("DisplayName") displayName: option<displayName>,
@as("TopicName") topicName: option<topicName>
}
type template = {
@as("TemplateData") templateData: emailTemplateData,
@as("TemplateArn") templateArn: amazonResourceName,
@as("TemplateName") templateName: emailTemplateName
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type suppressionListReasons = array<suppressionListReason>
type suppressionListDestination = {
@as("SuppressionListImportAction") suppressionListImportAction: option<suppressionListImportAction>
}
type suppressedDestinationSummary = {
@as("LastUpdateTime") lastUpdateTime: option<amazonawsTimestamp>,
@as("Reason") reason: option<suppressionListReason>,
@as("EmailAddress") emailAddress: option<emailAddress>
}
type suppressedDestinationAttributes = {
@as("FeedbackId") feedbackId: feedbackId,
@as("MessageId") messageId: outboundMessageId
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
type reviewDetails = {
@as("CaseId") caseId: caseId,
@as("Status") status: reviewStatus
}
type reputationOptions = {
@as("LastFreshStart") lastFreshStart: lastFreshStart,
@as("ReputationMetricsEnabled") reputationMetricsEnabled: enabled
}
type replacementTemplate = {
@as("ReplacementTemplateData") replacementTemplateData: emailTemplateData
}
type rawMessage = {
@as("Data") data: option<rawMessageData>
}
type policyMap = Js.Dict.t< policy>
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
type listManagementOptions = {
@as("TopicName") topicName: topicName,
@as("ContactListName") contactListName: option<contactListName>
}
type kinesisFirehoseDestination = {
@as("DeliveryStreamArn") deliveryStreamArn: option<amazonResourceName>,
@as("IamRoleArn") iamRoleArn: option<amazonResourceName>
}
type ispNameList = array<ispName>
type ipList = array<ip>
type importDataSource = {
@as("DataFormat") dataFormat: option<dataFormat>,
@as("S3Url") s3Url: option<s3Url>
}
type identityInfo = {
@as("SendingEnabled") sendingEnabled: enabled,
@as("IdentityName") identityName: identity,
@as("IdentityType") identityType: identityType
}
type failureInfo = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("FailedRecordsS3Url") failedRecordsS3Url: failedRecordsS3Url
}
type eventTypes = array<eventType>
type esps = array<esp>
type emailTemplateMetadata = {
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("TemplateName") templateName: emailTemplateName
}
type emailTemplateContent = {
@as("Html") html: emailTemplateHtml,
@as("Text") text: emailTemplateText,
@as("Subject") subject: emailTemplateSubject
}
type emailAddressList = array<emailAddress>
type domainIspPlacement = {
@as("SpamPercentage") spamPercentage: percentage,
@as("InboxPercentage") inboxPercentage: percentage,
@as("SpamRawCount") spamRawCount: volume,
@as("InboxRawCount") inboxRawCount: volume,
@as("IspName") ispName: ispName
}
type dnsTokenList = array<dnsToken>
type dkimSigningAttributes = {
@as("DomainSigningPrivateKey") domainSigningPrivateKey: option<privateKey>,
@as("DomainSigningSelector") domainSigningSelector: option<selector>
}
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
type customVerificationEmailTemplateMetadata = {
@as("FailureRedirectionURL") failureRedirectionURL: failureRedirectionURL,
@as("SuccessRedirectionURL") successRedirectionURL: successRedirectionURL,
@as("TemplateSubject") templateSubject: emailTemplateSubject,
@as("FromEmailAddress") fromEmailAddress: emailAddress,
@as("TemplateName") templateName: emailTemplateName
}
type content = {
@as("Charset") charset: charset,
@as("Data") data: option<messageData>
}
type contactListDestination = {
@as("ContactListImportAction") contactListImportAction: option<contactListImportAction>,
@as("ContactListName") contactListName: option<contactListName>
}
type contactList = {
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: amazonawsTimestamp,
@as("ContactListName") contactListName: contactListName
}
type configurationSetNameList = array<configurationSetName>
type cloudWatchDimensionConfiguration = {
@as("DefaultDimensionValue") defaultDimensionValue: option<defaultDimensionValue>,
@as("DimensionValueSource") dimensionValueSource: option<dimensionValueSource>,
@as("DimensionName") dimensionName: option<dimensionName>
}
type bulkEmailEntryResult = {
@as("MessageId") messageId: outboundMessageId,
@as("Error") error: errorMessage,
@as("Status") status: bulkEmailStatus
}
type blacklistItemNames = array<blacklistItemName>
type blacklistEntry = {
@as("Description") description: blacklistingDescription,
@as("ListingTime") listingTime: amazonawsTimestamp,
@as("RblName") rblName: rblName
}
type additionalContactEmailAddresses = array<additionalContactEmailAddress>
type topics = array<topic>
type topicPreferenceList = array<topicPreference>
type tagList = array<tag>
type suppressionOptions = {
@as("SuppressedReasons") suppressedReasons: suppressionListReasons
}
type suppressionAttributes = {
@as("SuppressedReasons") suppressedReasons: suppressionListReasons
}
type suppressedDestinationSummaries = array<suppressedDestinationSummary>
type suppressedDestination = {
@as("Attributes") attributes: suppressedDestinationAttributes,
@as("LastUpdateTime") lastUpdateTime: option<amazonawsTimestamp>,
@as("Reason") reason: option<suppressionListReason>,
@as("EmailAddress") emailAddress: option<emailAddress>
}
type replacementEmailContent = {
@as("ReplacementTemplate") replacementTemplate: replacementTemplate
}
type messageTagList = array<messageTag>
type listOfContactLists = array<contactList>
type listContactsFilter = {
@as("TopicFilter") topicFilter: topicFilter,
@as("FilteredStatus") filteredStatus: subscriptionStatus
}
type ispPlacement = {
@as("PlacementStatistics") placementStatistics: placementStatistics,
@as("IspName") ispName: ispName
}
type inboxPlacementTrackingOption = {
@as("TrackedIsps") trackedIsps: ispNameList,
@as("Global") global: enabled
}
type importDestination = {
@as("ContactListDestination") contactListDestination: contactListDestination,
@as("SuppressionListDestination") suppressionListDestination: suppressionListDestination
}
type identityInfoList = array<identityInfo>
type emailTemplateMetadataList = array<emailTemplateMetadata>
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
@as("SigningAttributesOrigin") signingAttributesOrigin: dkimSigningAttributesOrigin,
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
type customVerificationEmailTemplatesList = array<customVerificationEmailTemplateMetadata>
type cloudWatchDimensionConfigurations = array<cloudWatchDimensionConfiguration>
type bulkEmailEntryResultList = array<bulkEmailEntryResult>
type bulkEmailContent = {
@as("Template") template: template
}
type body = {
@as("Html") html: content,
@as("Text") text: content
}
type blacklistEntries = array<blacklistEntry>
type accountDetails = {
@as("ReviewDetails") reviewDetails: reviewDetails,
@as("AdditionalContactEmailAddresses") additionalContactEmailAddresses: additionalContactEmailAddresses,
@as("UseCaseDescription") useCaseDescription: useCaseDescription,
@as("ContactLanguage") contactLanguage: contactLanguage,
@as("WebsiteURL") websiteURL: websiteURL,
@as("MailType") mailType: mailType
}
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
type importJobSummary = {
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("ImportDestination") importDestination: importDestination,
@as("JobId") jobId: jobId
}
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
type contact = {
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: amazonawsTimestamp,
@as("UnsubscribeAll") unsubscribeAll: unsubscribeAll,
@as("TopicDefaultPreferences") topicDefaultPreferences: topicPreferenceList,
@as("TopicPreferences") topicPreferences: topicPreferenceList,
@as("EmailAddress") emailAddress: emailAddress
}
type cloudWatchDestination = {
@as("DimensionConfigurations") dimensionConfigurations: option<cloudWatchDimensionConfigurations>
}
type bulkEmailEntry = {
@as("ReplacementEmailContent") replacementEmailContent: replacementEmailContent,
@as("ReplacementTags") replacementTags: messageTagList,
@as("Destination") destination: option<destination>
}
type blacklistReport = Js.Dict.t< blacklistEntries>
type listOfContacts = array<contact>
type importJobSummaryList = array<importJobSummary>
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
type bulkEmailEntryList = array<bulkEmailEntry>
type eventDestinations = array<eventDestination>
type clientType;
@module("@aws-sdk/client-ses") @new external createClient: unit => clientType = "SESv2Client";
module UpdateEmailIdentityPolicy = {
  type t;
  type request = {
@as("Policy") policy: option<policy>,
@as("PolicyName") policyName: option<policyName>,
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateEmailIdentityPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("FailureRedirectionURL") failureRedirectionURL: option<failureRedirectionURL>,
@as("SuccessRedirectionURL") successRedirectionURL: option<successRedirectionURL>,
@as("TemplateContent") templateContent: option<templateContent>,
@as("TemplateSubject") templateSubject: option<emailTemplateSubject>,
@as("FromEmailAddress") fromEmailAddress: option<emailAddress>,
@as("TemplateName") templateName: option<emailTemplateName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateCustomVerificationEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestRenderEmailTemplate = {
  type t;
  type request = {
@as("TemplateData") templateData: option<emailTemplateData>,
@as("TemplateName") templateName: option<emailTemplateName>
}
  type response = {
@as("RenderedTemplate") renderedTemplate: option<renderedEmailTemplate>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "TestRenderEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendCustomVerificationEmail = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("TemplateName") templateName: option<emailTemplateName>,
@as("EmailAddress") emailAddress: option<emailAddress>
}
  type response = {
@as("MessageId") messageId: outboundMessageId
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendCustomVerificationEmailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutSuppressedDestination = {
  type t;
  type request = {
@as("Reason") reason: option<suppressionListReason>,
@as("EmailAddress") emailAddress: option<emailAddress>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutSuppressedDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

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

module PutEmailIdentityConfigurationSetAttributes = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutEmailIdentityConfigurationSetAttributesCommand";
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

module GetCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<emailTemplateName>
}
  type response = {
@as("FailureRedirectionURL") failureRedirectionURL: failureRedirectionURL,
@as("SuccessRedirectionURL") successRedirectionURL: successRedirectionURL,
@as("TemplateContent") templateContent: templateContent,
@as("TemplateSubject") templateSubject: emailTemplateSubject,
@as("FromEmailAddress") fromEmailAddress: emailAddress,
@as("TemplateName") templateName: emailTemplateName
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetCustomVerificationEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSuppressedDestination = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: option<emailAddress>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteSuppressedDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<emailTemplateName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEmailIdentityPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: option<policyName>,
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteEmailIdentityPolicyCommand";
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

module DeleteCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<emailTemplateName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteCustomVerificationEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteContactList = {
  type t;
  type request = {
@as("ContactListName") contactListName: option<contactListName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteContactListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteContact = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: option<emailAddress>,
@as("ContactListName") contactListName: option<contactListName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteContactCommand";
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

module CreateEmailIdentityPolicy = {
  type t;
  type request = {
@as("Policy") policy: option<policy>,
@as("PolicyName") policyName: option<policyName>,
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateEmailIdentityPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("FailureRedirectionURL") failureRedirectionURL: option<failureRedirectionURL>,
@as("SuccessRedirectionURL") successRedirectionURL: option<successRedirectionURL>,
@as("TemplateContent") templateContent: option<templateContent>,
@as("TemplateSubject") templateSubject: option<emailTemplateSubject>,
@as("FromEmailAddress") fromEmailAddress: option<emailAddress>,
@as("TemplateName") templateName: option<emailTemplateName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateCustomVerificationEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEmailTemplate = {
  type t;
  type request = {
@as("TemplateContent") templateContent: option<emailTemplateContent>,
@as("TemplateName") templateName: option<emailTemplateName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateEmailTemplateCommand";
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

module PutEmailIdentityDkimSigningAttributes = {
  type t;
  type request = {
@as("SigningAttributes") signingAttributes: dkimSigningAttributes,
@as("SigningAttributesOrigin") signingAttributesOrigin: option<dkimSigningAttributesOrigin>,
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = {
@as("DkimTokens") dkimTokens: dnsTokenList,
@as("DkimStatus") dkimStatus: dkimStatus
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutEmailIdentityDkimSigningAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetSuppressionOptions = {
  type t;
  type request = {
@as("SuppressedReasons") suppressedReasons: suppressionListReasons,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutConfigurationSetSuppressionOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAccountSuppressionAttributes = {
  type t;
  type request = {
@as("SuppressedReasons") suppressedReasons: suppressionListReasons
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutAccountSuppressionAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAccountDetails = {
  type t;
  type request = {
@as("ProductionAccessEnabled") productionAccessEnabled: enabledWrapper,
@as("AdditionalContactEmailAddresses") additionalContactEmailAddresses: additionalContactEmailAddresses,
@as("UseCaseDescription") useCaseDescription: option<useCaseDescription>,
@as("ContactLanguage") contactLanguage: contactLanguage,
@as("WebsiteURL") websiteURL: option<websiteURL>,
@as("MailType") mailType: option<mailType>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutAccountDetailsCommand";
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

module GetEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<emailTemplateName>
}
  type response = {
@as("TemplateContent") templateContent: option<emailTemplateContent>,
@as("TemplateName") templateName: option<emailTemplateName>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEmailIdentityPolicies = {
  type t;
  type request = {
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = {
@as("Policies") policies: policyMap
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetEmailIdentityPoliciesCommand";
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

module CreateEmailTemplate = {
  type t;
  type request = {
@as("TemplateContent") templateContent: option<emailTemplateContent>,
@as("TemplateName") templateName: option<emailTemplateName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateContactList = {
  type t;
  type request = {
@as("Description") description: description,
@as("Topics") topics: topics,
@as("ContactListName") contactListName: option<contactListName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateContactListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateContact = {
  type t;
  type request = {
@as("AttributesData") attributesData: attributesData,
@as("UnsubscribeAll") unsubscribeAll: unsubscribeAll,
@as("TopicPreferences") topicPreferences: topicPreferenceList,
@as("EmailAddress") emailAddress: option<emailAddress>,
@as("ContactListName") contactListName: option<contactListName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateContactCommand";
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

module ListSuppressedDestinations = {
  type t;
  type request = {
@as("PageSize") pageSize: maxItems,
@as("NextToken") nextToken: nextToken,
@as("EndDate") endDate: amazonawsTimestamp,
@as("StartDate") startDate: amazonawsTimestamp,
@as("Reasons") reasons: suppressionListReasons
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("SuppressedDestinationSummaries") suppressedDestinationSummaries: suppressedDestinationSummaries
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListSuppressedDestinationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEmailTemplates = {
  type t;
  type request = {
@as("PageSize") pageSize: maxItems,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("TemplatesMetadata") templatesMetadata: emailTemplateMetadataList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListEmailTemplatesCommand";
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

module ListCustomVerificationEmailTemplates = {
  type t;
  type request = {
@as("PageSize") pageSize: maxItems,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("CustomVerificationEmailTemplates") customVerificationEmailTemplates: customVerificationEmailTemplatesList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListCustomVerificationEmailTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListContactLists = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("PageSize") pageSize: maxItems
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ContactLists") contactLists: listOfContactLists
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListContactListsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSuppressedDestination = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: option<emailAddress>
}
  type response = {
@as("SuppressedDestination") suppressedDestination: option<suppressedDestination>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetSuppressedDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetImportJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("FailedRecordsCount") failedRecordsCount: failedRecordsCount,
@as("ProcessedRecordsCount") processedRecordsCount: processedRecordsCount,
@as("CompletedTimestamp") completedTimestamp: amazonawsTimestamp,
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("JobStatus") jobStatus: jobStatus,
@as("FailureInfo") failureInfo: failureInfo,
@as("ImportDataSource") importDataSource: importDataSource,
@as("ImportDestination") importDestination: importDestination,
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEmailIdentity = {
  type t;
  type request = {
@as("EmailIdentity") emailIdentity: option<identity>
}
  type response = {
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("Tags") tags: tagList,
@as("Policies") policies: policyMap,
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

module GetContactList = {
  type t;
  type request = {
@as("ContactListName") contactListName: option<contactListName>
}
  type response = {
@as("Tags") tags: tagList,
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: amazonawsTimestamp,
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("Description") description: description,
@as("Topics") topics: topics,
@as("ContactListName") contactListName: contactListName
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetContactListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContact = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: option<emailAddress>,
@as("ContactListName") contactListName: option<contactListName>
}
  type response = {
@as("LastUpdatedTimestamp") lastUpdatedTimestamp: amazonawsTimestamp,
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("AttributesData") attributesData: attributesData,
@as("UnsubscribeAll") unsubscribeAll: unsubscribeAll,
@as("TopicDefaultPreferences") topicDefaultPreferences: topicPreferenceList,
@as("TopicPreferences") topicPreferences: topicPreferenceList,
@as("EmailAddress") emailAddress: emailAddress,
@as("ContactListName") contactListName: contactListName
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = {
@as("SuppressionOptions") suppressionOptions: suppressionOptions,
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

module GetAccount = {
  type t;
  type request = unit
  type response = {
@as("Details") details: accountDetails,
@as("SuppressionAttributes") suppressionAttributes: suppressionAttributes,
@as("SendingEnabled") sendingEnabled: enabled,
@as("SendQuota") sendQuota: sendQuota,
@as("ProductionAccessEnabled") productionAccessEnabled: enabled,
@as("EnforcementStatus") enforcementStatus: generalEnforcementStatus,
@as("DedicatedIpAutoWarmupEnabled") dedicatedIpAutoWarmupEnabled: enabled
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateImportJob = {
  type t;
  type request = {
@as("ImportDataSource") importDataSource: option<importDataSource>,
@as("ImportDestination") importDestination: option<importDestination>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateImportJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEmailIdentity = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("DkimSigningAttributes") dkimSigningAttributes: dkimSigningAttributes,
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

module CreateContactList = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: description,
@as("Topics") topics: topics,
@as("ContactListName") contactListName: option<contactListName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateContactListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateContact = {
  type t;
  type request = {
@as("AttributesData") attributesData: attributesData,
@as("UnsubscribeAll") unsubscribeAll: unsubscribeAll,
@as("TopicPreferences") topicPreferences: topicPreferenceList,
@as("EmailAddress") emailAddress: option<emailAddress>,
@as("ContactListName") contactListName: option<contactListName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSet = {
  type t;
  type request = {
@as("SuppressionOptions") suppressionOptions: suppressionOptions,
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
@as("ListManagementOptions") listManagementOptions: listManagementOptions,
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("EmailTags") emailTags: messageTagList,
@as("Content") content: option<emailContent>,
@as("FeedbackForwardingEmailAddressIdentityArn") feedbackForwardingEmailAddressIdentityArn: amazonResourceName,
@as("FeedbackForwardingEmailAddress") feedbackForwardingEmailAddress: emailAddress,
@as("ReplyToAddresses") replyToAddresses: emailAddressList,
@as("Destination") destination: destination,
@as("FromEmailAddressIdentityArn") fromEmailAddressIdentityArn: amazonResourceName,
@as("FromEmailAddress") fromEmailAddress: emailAddress
}
  type response = {
@as("MessageId") messageId: outboundMessageId
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendEmailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendBulkEmail = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("BulkEmailEntries") bulkEmailEntries: option<bulkEmailEntryList>,
@as("DefaultContent") defaultContent: option<bulkEmailContent>,
@as("DefaultEmailTags") defaultEmailTags: messageTagList,
@as("FeedbackForwardingEmailAddressIdentityArn") feedbackForwardingEmailAddressIdentityArn: amazonResourceName,
@as("FeedbackForwardingEmailAddress") feedbackForwardingEmailAddress: emailAddress,
@as("ReplyToAddresses") replyToAddresses: emailAddressList,
@as("FromEmailAddressIdentityArn") fromEmailAddressIdentityArn: amazonResourceName,
@as("FromEmailAddress") fromEmailAddress: emailAddress
}
  type response = {
@as("BulkEmailEntryResults") bulkEmailEntryResults: option<bulkEmailEntryResultList>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendBulkEmailCommand";
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

module ListImportJobs = {
  type t;
  type request = {
@as("PageSize") pageSize: maxItems,
@as("NextToken") nextToken: nextToken,
@as("ImportDestinationType") importDestinationType: importDestinationType
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ImportJobs") importJobs: importJobSummaryList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListImportJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListContacts = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("PageSize") pageSize: maxItems,
@as("Filter") filter: listContactsFilter,
@as("ContactListName") contactListName: option<contactListName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Contacts") contacts: listOfContacts
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListContactsCommand";
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
