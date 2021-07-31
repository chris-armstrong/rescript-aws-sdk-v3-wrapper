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
type long = float
type verificationToken = string
type verificationStatus = [@as("NotStarted") #NotStarted | @as("TemporaryFailure") #TemporaryFailure | @as("Failed") #Failed | @as("Success") #Success | @as("Pending") #Pending]
type tlsPolicy = [@as("Optional") #Optional | @as("Require") #Require]
type timestamp_ = Js.Date.t;
type textPart = string
type templateName = string
type templateData = string
type templateContent = string
type successRedirectionURL = string
type subjectPart = string
type subject = string
type stopScope = [@as("RuleSet") #RuleSet]
type sentLast24Hours = float
type snsactionEncoding = [@as("Base64") #Base64 | @as("UTF-8") #UTF8]
type s3KeyPrefix = string
type s3BucketName = string
type ruleOrRuleSetName = string
type reportingMta = string
type renderedTemplate = string
type remoteMta = string
type recipient = string
type receiptRuleSetName = string
type receiptRuleName = string
type receiptFilterPolicy = [@as("Allow") #Allow | @as("Block") #Block]
type receiptFilterName = string
type rawMessageData = NodeJs.Buffer.t
type policyName = string
type policy = string
type notificationType = [@as("Delivery") #Delivery | @as("Complaint") #Complaint | @as("Bounce") #Bounce]
type notificationTopic = string
type nextToken = string
type messageTagValue = string
type messageTagName = string
type messageId = string
type messageData = string
type maxSendRate = float
type maxResults = int
type maxItems = int
type max24HourSend = float
type mailFromDomainName = string
type lastFreshStart = Js.Date.t;
type lastAttemptDate = Js.Date.t;
type invocationType = [@as("RequestResponse") #RequestResponse | @as("Event") #Event]
type identityType = [@as("Domain") #Domain | @as("EmailAddress") #EmailAddress]
type identity = string
type htmlPart = string
type headerValue = string
type headerName = string
type fromAddress = string
type failureRedirectionURL = string
type extensionFieldValue = string
type extensionFieldName = string
type explanation = string
type eventType = [@as("renderingFailure") #RenderingFailure | @as("click") #Click | @as("open") #Open | @as("delivery") #Delivery | @as("complaint") #Complaint | @as("bounce") #Bounce | @as("reject") #Reject | @as("send") #Send]
type eventDestinationName = string
type errorMessage = string
type error = string
type enabled = bool
type dsnStatus = string
type dsnAction = [@as("expanded") #Expanded | @as("relayed") #Relayed | @as("delivered") #Delivered | @as("delayed") #Delayed | @as("failed") #Failed]
type domain = string
type dimensionValueSource = [@as("linkTag") #LinkTag | @as("emailHeader") #EmailHeader | @as("messageTag") #MessageTag]
type dimensionName = string
type diagnosticCode = string
type defaultDimensionValue = string
type customRedirectDomain = string
type customMailFromStatus = [@as("TemporaryFailure") #TemporaryFailure | @as("Failed") #Failed | @as("Success") #Success | @as("Pending") #Pending]
type counter = float
type configurationSetName = string
type configurationSetAttribute = [@as("reputationOptions") #ReputationOptions | @as("deliveryOptions") #DeliveryOptions | @as("trackingOptions") #TrackingOptions | @as("eventDestinations") #EventDestinations]
type cidr = string
type charset = string
type bulkEmailStatus = [@as("Failed") #Failed | @as("TransientFailure") #TransientFailure | @as("InvalidParameterValue") #InvalidParameterValue | @as("ConfigurationSetSendingPaused") #ConfigurationSetSendingPaused | @as("AccountSendingPaused") #AccountSendingPaused | @as("InvalidSendingPoolName") #InvalidSendingPoolName | @as("AccountDailyQuotaExceeded") #AccountDailyQuotaExceeded | @as("AccountThrottled") #AccountThrottled | @as("AccountSuspended") #AccountSuspended | @as("TemplateDoesNotExist") #TemplateDoesNotExist | @as("ConfigurationSetDoesNotExist") #ConfigurationSetDoesNotExist | @as("MailFromDomainNotVerified") #MailFromDomainNotVerified | @as("MessageRejected") #MessageRejected | @as("Success") #Success]
type bounceType = [@as("TemporaryFailure") #TemporaryFailure | @as("Undefined") #Undefined | @as("ContentRejected") #ContentRejected | @as("ExceededQuota") #ExceededQuota | @as("MessageTooLarge") #MessageTooLarge | @as("DoesNotExist") #DoesNotExist]
type bounceStatusCode = string
type bounceSmtpReplyCode = string
type bounceMessage = string
type behaviorOnMXFailure = [@as("RejectMessage") #RejectMessage | @as("UseDefaultValue") #UseDefaultValue]
type arrivalDate = Js.Date.t;
type amazonResourceName = string
type address = string
type workmailAction = {
@as("OrganizationArn") organizationArn: amazonResourceName,
@as("TopicArn") topicArn: option<amazonResourceName>
}
type verificationTokenList = array<verificationToken>
type trackingOptions = {
@as("CustomRedirectDomain") customRedirectDomain: option<customRedirectDomain>
}
type templateMetadata = {
@as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
@as("Name") name: option<templateName>
}
type template = {
@as("HtmlPart") htmlPart: option<htmlPart>,
@as("TextPart") textPart: option<textPart>,
@as("SubjectPart") subjectPart: option<subjectPart>,
@as("TemplateName") templateName: templateName
}
type stopAction = {
@as("TopicArn") topicArn: option<amazonResourceName>,
@as("Scope") scope: stopScope
}
type sendDataPoint = {
@as("Rejects") rejects: option<counter>,
@as("Complaints") complaints: option<counter>,
@as("Bounces") bounces: option<counter>,
@as("DeliveryAttempts") deliveryAttempts: option<counter>,
@as("Timestamp") timestamp_: option<timestamp_>
}
type snsdestination = {
@as("TopicARN") topicARN: amazonResourceName
}
type snsaction = {
@as("Encoding") encoding: option<snsactionEncoding>,
@as("TopicArn") topicArn: amazonResourceName
}
type s3Action = {
@as("KmsKeyArn") kmsKeyArn: option<amazonResourceName>,
@as("ObjectKeyPrefix") objectKeyPrefix: option<s3KeyPrefix>,
@as("BucketName") bucketName: s3BucketName,
@as("TopicArn") topicArn: option<amazonResourceName>
}
type reputationOptions = {
@as("LastFreshStart") lastFreshStart: option<lastFreshStart>,
@as("ReputationMetricsEnabled") reputationMetricsEnabled: option<enabled>,
@as("SendingEnabled") sendingEnabled: option<enabled>
}
type recipientsList = array<recipient>
type receiptRuleSetMetadata = {
@as("CreatedTimestamp") createdTimestamp: option<timestamp_>,
@as("Name") name: option<receiptRuleSetName>
}
type receiptRuleNamesList = array<receiptRuleName>
type receiptIpFilter = {
@as("Cidr") cidr: cidr,
@as("Policy") policy: receiptFilterPolicy
}
type rawMessage = {
@as("Data") data: rawMessageData
}
type policyNameList = array<policyName>
type policyMap = Js.Dict.t< policy>
type messageTag = {
@as("Value") value: messageTagValue,
@as("Name") name: messageTagName
}
type lambdaAction = {
@as("InvocationType") invocationType: option<invocationType>,
@as("FunctionArn") functionArn: amazonResourceName,
@as("TopicArn") topicArn: option<amazonResourceName>
}
type kinesisFirehoseDestination = {
@as("DeliveryStreamARN") deliveryStreamARN: amazonResourceName,
@as("IAMRoleARN") iamroleARN: amazonResourceName
}
type identityVerificationAttributes = {
@as("VerificationToken") verificationToken: option<verificationToken>,
@as("VerificationStatus") verificationStatus: verificationStatus
}
type identityNotificationAttributes = {
@as("HeadersInDeliveryNotificationsEnabled") headersInDeliveryNotificationsEnabled: option<enabled>,
@as("HeadersInComplaintNotificationsEnabled") headersInComplaintNotificationsEnabled: option<enabled>,
@as("HeadersInBounceNotificationsEnabled") headersInBounceNotificationsEnabled: option<enabled>,
@as("ForwardingEnabled") forwardingEnabled: enabled,
@as("DeliveryTopic") deliveryTopic: notificationTopic,
@as("ComplaintTopic") complaintTopic: notificationTopic,
@as("BounceTopic") bounceTopic: notificationTopic
}
type identityMailFromDomainAttributes = {
@as("BehaviorOnMXFailure") behaviorOnMXFailure: behaviorOnMXFailure,
@as("MailFromDomainStatus") mailFromDomainStatus: customMailFromStatus,
@as("MailFromDomain") mailFromDomain: mailFromDomainName
}
type identityList = array<identity>
type extensionField = {
@as("Value") value: extensionFieldValue,
@as("Name") name: extensionFieldName
}
type eventTypes = array<eventType>
type deliveryOptions = {
@as("TlsPolicy") tlsPolicy: option<tlsPolicy>
}
type customVerificationEmailTemplate = {
@as("FailureRedirectionURL") failureRedirectionURL: option<failureRedirectionURL>,
@as("SuccessRedirectionURL") successRedirectionURL: option<successRedirectionURL>,
@as("TemplateSubject") templateSubject: option<subject>,
@as("FromEmailAddress") fromEmailAddress: option<fromAddress>,
@as("TemplateName") templateName: option<templateName>
}
type content = {
@as("Charset") charset: option<charset>,
@as("Data") data: messageData
}
type configurationSetAttributeList = array<configurationSetAttribute>
type configurationSet = {
@as("Name") name: configurationSetName
}
type cloudWatchDimensionConfiguration = {
@as("DefaultDimensionValue") defaultDimensionValue: defaultDimensionValue,
@as("DimensionValueSource") dimensionValueSource: dimensionValueSource,
@as("DimensionName") dimensionName: dimensionName
}
type bulkEmailDestinationStatus = {
@as("MessageId") messageId: option<messageId>,
@as("Error") error: option<error>,
@as("Status") status: option<bulkEmailStatus>
}
type bounceAction = {
@as("Sender") sender: address,
@as("Message") message: bounceMessage,
@as("StatusCode") statusCode: option<bounceStatusCode>,
@as("SmtpReplyCode") smtpReplyCode: bounceSmtpReplyCode,
@as("TopicArn") topicArn: option<amazonResourceName>
}
type addressList = array<address>
type addHeaderAction = {
@as("HeaderValue") headerValue: headerValue,
@as("HeaderName") headerName: headerName
}
type verificationAttributes = Js.Dict.t< identityVerificationAttributes>
type templateMetadataList = array<templateMetadata>
type sendDataPointList = array<sendDataPoint>
type receiptRuleSetsLists = array<receiptRuleSetMetadata>
type receiptFilter = {
@as("IpFilter") ipFilter: receiptIpFilter,
@as("Name") name: receiptFilterName
}
type receiptAction = {
@as("SNSAction") snsaction: option<snsaction>,
@as("AddHeaderAction") addHeaderAction: option<addHeaderAction>,
@as("StopAction") stopAction: option<stopAction>,
@as("LambdaAction") lambdaAction: option<lambdaAction>,
@as("WorkmailAction") workmailAction: option<workmailAction>,
@as("BounceAction") bounceAction: option<bounceAction>,
@as("S3Action") s3Action: option<s3Action>
}
type notificationAttributes = Js.Dict.t< identityNotificationAttributes>
type messageTagList = array<messageTag>
type mailFromDomainAttributes = Js.Dict.t< identityMailFromDomainAttributes>
type identityDkimAttributes = {
@as("DkimTokens") dkimTokens: option<verificationTokenList>,
@as("DkimVerificationStatus") dkimVerificationStatus: verificationStatus,
@as("DkimEnabled") dkimEnabled: enabled
}
type extensionFieldList = array<extensionField>
type destination = {
@as("BccAddresses") bccAddresses: option<addressList>,
@as("CcAddresses") ccAddresses: option<addressList>,
@as("ToAddresses") toAddresses: option<addressList>
}
type customVerificationEmailTemplates = array<customVerificationEmailTemplate>
type configurationSets = array<configurationSet>
type cloudWatchDimensionConfigurations = array<cloudWatchDimensionConfiguration>
type bulkEmailDestinationStatusList = array<bulkEmailDestinationStatus>
type body = {
@as("Html") html: option<content>,
@as("Text") text: option<content>
}
type recipientDsnFields = {
@as("ExtensionFields") extensionFields: option<extensionFieldList>,
@as("LastAttemptDate") lastAttemptDate: option<lastAttemptDate>,
@as("DiagnosticCode") diagnosticCode: option<diagnosticCode>,
@as("Status") status: dsnStatus,
@as("RemoteMta") remoteMta: option<remoteMta>,
@as("Action") action: dsnAction,
@as("FinalRecipient") finalRecipient: option<address>
}
type receiptFilterList = array<receiptFilter>
type receiptActionsList = array<receiptAction>
type messageDsn = {
@as("ExtensionFields") extensionFields: option<extensionFieldList>,
@as("ArrivalDate") arrivalDate: option<arrivalDate>,
@as("ReportingMta") reportingMta: reportingMta
}
type message = {
@as("Body") body: body,
@as("Subject") subject: content
}
type dkimAttributes = Js.Dict.t< identityDkimAttributes>
type cloudWatchDestination = {
@as("DimensionConfigurations") dimensionConfigurations: cloudWatchDimensionConfigurations
}
type bulkEmailDestination = {
@as("ReplacementTemplateData") replacementTemplateData: option<templateData>,
@as("ReplacementTags") replacementTags: option<messageTagList>,
@as("Destination") destination: destination
}
type receiptRule = {
@as("ScanEnabled") scanEnabled: option<enabled>,
@as("Actions") actions: option<receiptActionsList>,
@as("Recipients") recipients: option<recipientsList>,
@as("TlsPolicy") tlsPolicy: option<tlsPolicy>,
@as("Enabled") enabled: option<enabled>,
@as("Name") name: receiptRuleName
}
type eventDestination = {
@as("SNSDestination") snsdestination: option<snsdestination>,
@as("CloudWatchDestination") cloudWatchDestination: option<cloudWatchDestination>,
@as("KinesisFirehoseDestination") kinesisFirehoseDestination: option<kinesisFirehoseDestination>,
@as("MatchingEventTypes") matchingEventTypes: eventTypes,
@as("Enabled") enabled: option<enabled>,
@as("Name") name: eventDestinationName
}
type bulkEmailDestinationList = array<bulkEmailDestination>
type bouncedRecipientInfo = {
@as("RecipientDsnFields") recipientDsnFields: option<recipientDsnFields>,
@as("BounceType") bounceType: option<bounceType>,
@as("RecipientArn") recipientArn: option<amazonResourceName>,
@as("Recipient") recipient: address
}
type receiptRulesList = array<receiptRule>
type eventDestinations = array<eventDestination>
type bouncedRecipientInfoList = array<bouncedRecipientInfo>
type awsServiceClient;
@module("@aws-sdk/client-ses") @new external createClient: unit => awsServiceClient = "SESClient";
module VerifyEmailIdentity = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: address
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "VerifyEmailIdentityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module VerifyEmailAddress = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: address
}
  
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "VerifyEmailAddressCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module VerifyDomainIdentity = {
  type t;
  type request = {
@as("Domain") domain: domain
}
  type response = {
@as("VerificationToken") verificationToken: verificationToken
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "VerifyDomainIdentityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("FailureRedirectionURL") failureRedirectionURL: option<failureRedirectionURL>,
@as("SuccessRedirectionURL") successRedirectionURL: option<successRedirectionURL>,
@as("TemplateContent") templateContent: option<templateContent>,
@as("TemplateSubject") templateSubject: option<subject>,
@as("FromEmailAddress") fromEmailAddress: option<fromAddress>,
@as("TemplateName") templateName: templateName
}
  
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateCustomVerificationEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateConfigurationSetSendingEnabled = {
  type t;
  type request = {
@as("Enabled") enabled: enabled,
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateConfigurationSetSendingEnabledCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateConfigurationSetReputationMetricsEnabled = {
  type t;
  type request = {
@as("Enabled") enabled: enabled,
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateConfigurationSetReputationMetricsEnabledCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateAccountSendingEnabled = {
  type t;
  type request = {
@as("Enabled") enabled: option<enabled>
}
  
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateAccountSendingEnabledCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TestRenderTemplate = {
  type t;
  type request = {
@as("TemplateData") templateData: templateData,
@as("TemplateName") templateName: templateName
}
  type response = {
@as("RenderedTemplate") renderedTemplate: option<renderedTemplate>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "TestRenderTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetReceiptRulePosition = {
  type t;
  type request = {
@as("After") after: option<receiptRuleName>,
@as("RuleName") ruleName: receiptRuleName,
@as("RuleSetName") ruleSetName: receiptRuleSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SetReceiptRulePositionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetIdentityNotificationTopic = {
  type t;
  type request = {
@as("SnsTopic") snsTopic: option<notificationTopic>,
@as("NotificationType") notificationType: notificationType,
@as("Identity") identity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SetIdentityNotificationTopicCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetIdentityMailFromDomain = {
  type t;
  type request = {
@as("BehaviorOnMXFailure") behaviorOnMXFailure: option<behaviorOnMXFailure>,
@as("MailFromDomain") mailFromDomain: option<mailFromDomainName>,
@as("Identity") identity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SetIdentityMailFromDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetIdentityHeadersInNotificationsEnabled = {
  type t;
  type request = {
@as("Enabled") enabled: enabled,
@as("NotificationType") notificationType: notificationType,
@as("Identity") identity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SetIdentityHeadersInNotificationsEnabledCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetIdentityFeedbackForwardingEnabled = {
  type t;
  type request = {
@as("ForwardingEnabled") forwardingEnabled: enabled,
@as("Identity") identity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SetIdentityFeedbackForwardingEnabledCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetIdentityDkimEnabled = {
  type t;
  type request = {
@as("DkimEnabled") dkimEnabled: enabled,
@as("Identity") identity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SetIdentityDkimEnabledCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetActiveReceiptRuleSet = {
  type t;
  type request = {
@as("RuleSetName") ruleSetName: option<receiptRuleSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SetActiveReceiptRuleSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendCustomVerificationEmail = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
@as("TemplateName") templateName: templateName,
@as("EmailAddress") emailAddress: address
}
  type response = {
@as("MessageId") messageId: option<messageId>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendCustomVerificationEmailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutIdentityPolicy = {
  type t;
  type request = {
@as("Policy") policy: policy,
@as("PolicyName") policyName: policyName,
@as("Identity") identity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutIdentityPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSendQuota = {
  type t;
  
  type response = {
@as("SentLast24Hours") sentLast24Hours: option<sentLast24Hours>,
@as("MaxSendRate") maxSendRate: option<maxSendRate>,
@as("Max24HourSend") max24HourSend: option<max24HourSend>
}
  @module("@aws-sdk/client-ses") @new external new_: (unit) => t = "GetSendQuotaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: templateName
}
  type response = {
@as("FailureRedirectionURL") failureRedirectionURL: option<failureRedirectionURL>,
@as("SuccessRedirectionURL") successRedirectionURL: option<successRedirectionURL>,
@as("TemplateContent") templateContent: option<templateContent>,
@as("TemplateSubject") templateSubject: option<subject>,
@as("FromEmailAddress") fromEmailAddress: option<fromAddress>,
@as("TemplateName") templateName: option<templateName>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetCustomVerificationEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccountSendingEnabled = {
  type t;
  
  type response = {
@as("Enabled") enabled: option<enabled>
}
  @module("@aws-sdk/client-ses") @new external new_: (unit) => t = "GetAccountSendingEnabledCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteVerifiedEmailAddress = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: address
}
  
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteVerifiedEmailAddressCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: templateName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReceiptRuleSet = {
  type t;
  type request = {
@as("RuleSetName") ruleSetName: receiptRuleSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteReceiptRuleSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReceiptRule = {
  type t;
  type request = {
@as("RuleName") ruleName: receiptRuleName,
@as("RuleSetName") ruleSetName: receiptRuleSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteReceiptRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReceiptFilter = {
  type t;
  type request = {
@as("FilterName") filterName: receiptFilterName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteReceiptFilterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteIdentityPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: policyName,
@as("Identity") identity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteIdentityPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteIdentity = {
  type t;
  type request = {
@as("Identity") identity: identity
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteIdentityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: templateName
}
  
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteCustomVerificationEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteConfigurationSetTrackingOptions = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DeleteConfigurationSetTrackingOptionsCommand";
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

module CreateReceiptRuleSet = {
  type t;
  type request = {
@as("RuleSetName") ruleSetName: receiptRuleSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateReceiptRuleSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("FailureRedirectionURL") failureRedirectionURL: failureRedirectionURL,
@as("SuccessRedirectionURL") successRedirectionURL: successRedirectionURL,
@as("TemplateContent") templateContent: templateContent,
@as("TemplateSubject") templateSubject: subject,
@as("FromEmailAddress") fromEmailAddress: fromAddress,
@as("TemplateName") templateName: templateName
}
  
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateCustomVerificationEmailTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CloneReceiptRuleSet = {
  type t;
  type request = {
@as("OriginalRuleSetName") originalRuleSetName: receiptRuleSetName,
@as("RuleSetName") ruleSetName: receiptRuleSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CloneReceiptRuleSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module VerifyDomainDkim = {
  type t;
  type request = {
@as("Domain") domain: domain
}
  type response = {
@as("DkimTokens") dkimTokens: verificationTokenList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "VerifyDomainDkimCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTemplate = {
  type t;
  type request = {
@as("Template") template: template
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConfigurationSetTrackingOptions = {
  type t;
  type request = {
@as("TrackingOptions") trackingOptions: trackingOptions,
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateConfigurationSetTrackingOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ReorderReceiptRuleSet = {
  type t;
  type request = {
@as("RuleNames") ruleNames: receiptRuleNamesList,
@as("RuleSetName") ruleSetName: receiptRuleSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ReorderReceiptRuleSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetDeliveryOptions = {
  type t;
  type request = {
@as("DeliveryOptions") deliveryOptions: option<deliveryOptions>,
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "PutConfigurationSetDeliveryOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListVerifiedEmailAddresses = {
  type t;
  
  type response = {
@as("VerifiedEmailAddresses") verifiedEmailAddresses: option<addressList>
}
  @module("@aws-sdk/client-ses") @new external new_: (unit) => t = "ListVerifiedEmailAddressesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIdentityPolicies = {
  type t;
  type request = {
@as("Identity") identity: identity
}
  type response = {
@as("PolicyNames") policyNames: policyNameList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListIdentityPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIdentities = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItems>,
@as("NextToken") nextToken: option<nextToken>,
@as("IdentityType") identityType: option<identityType>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Identities") identities: identityList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListIdentitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: templateName
}
  type response = {
@as("Template") template: option<template>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIdentityPolicies = {
  type t;
  type request = {
@as("PolicyNames") policyNames: policyNameList,
@as("Identity") identity: identity
}
  type response = {
@as("Policies") policies: policyMap
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetIdentityPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTemplate = {
  type t;
  type request = {
@as("Template") template: template
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSetTrackingOptions = {
  type t;
  type request = {
@as("TrackingOptions") trackingOptions: trackingOptions,
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateConfigurationSetTrackingOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSet") configurationSet: configurationSet
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateConfigurationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendTemplatedEmail = {
  type t;
  type request = {
@as("TemplateData") templateData: templateData,
@as("TemplateArn") templateArn: option<amazonResourceName>,
@as("Template") template: templateName,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
@as("Tags") tags: option<messageTagList>,
@as("ReturnPathArn") returnPathArn: option<amazonResourceName>,
@as("SourceArn") sourceArn: option<amazonResourceName>,
@as("ReturnPath") returnPath: option<address>,
@as("ReplyToAddresses") replyToAddresses: option<addressList>,
@as("Destination") destination: destination,
@as("Source") source: address
}
  type response = {
@as("MessageId") messageId: messageId
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendTemplatedEmailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendRawEmail = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
@as("Tags") tags: option<messageTagList>,
@as("ReturnPathArn") returnPathArn: option<amazonResourceName>,
@as("SourceArn") sourceArn: option<amazonResourceName>,
@as("FromArn") fromArn: option<amazonResourceName>,
@as("RawMessage") rawMessage: rawMessage,
@as("Destinations") destinations: option<addressList>,
@as("Source") source: option<address>
}
  type response = {
@as("MessageId") messageId: messageId
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendRawEmailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTemplates = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItems>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("TemplatesMetadata") templatesMetadata: option<templateMetadataList>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListReceiptRuleSets = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("RuleSets") ruleSets: option<receiptRuleSetsLists>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListReceiptRuleSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCustomVerificationEmailTemplates = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("CustomVerificationEmailTemplates") customVerificationEmailTemplates: option<customVerificationEmailTemplates>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListCustomVerificationEmailTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationSets = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<maxItems>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ConfigurationSets") configurationSets: option<configurationSets>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListConfigurationSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSendStatistics = {
  type t;
  
  type response = {
@as("SendDataPoints") sendDataPoints: option<sendDataPointList>
}
  @module("@aws-sdk/client-ses") @new external new_: (unit) => t = "GetSendStatisticsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIdentityVerificationAttributes = {
  type t;
  type request = {
@as("Identities") identities: identityList
}
  type response = {
@as("VerificationAttributes") verificationAttributes: verificationAttributes
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetIdentityVerificationAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIdentityNotificationAttributes = {
  type t;
  type request = {
@as("Identities") identities: identityList
}
  type response = {
@as("NotificationAttributes") notificationAttributes: notificationAttributes
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetIdentityNotificationAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIdentityMailFromDomainAttributes = {
  type t;
  type request = {
@as("Identities") identities: identityList
}
  type response = {
@as("MailFromDomainAttributes") mailFromDomainAttributes: mailFromDomainAttributes
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetIdentityMailFromDomainAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateReceiptFilter = {
  type t;
  type request = {
@as("Filter") filter: receiptFilter
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateReceiptFilterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendEmail = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
@as("Tags") tags: option<messageTagList>,
@as("ReturnPathArn") returnPathArn: option<amazonResourceName>,
@as("SourceArn") sourceArn: option<amazonResourceName>,
@as("ReturnPath") returnPath: option<address>,
@as("ReplyToAddresses") replyToAddresses: option<addressList>,
@as("Message") message: message,
@as("Destination") destination: destination,
@as("Source") source: address
}
  type response = {
@as("MessageId") messageId: messageId
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendEmailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListReceiptFilters = {
  type t;
  type request = unit
  type response = {
@as("Filters") filters: option<receiptFilterList>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "ListReceiptFiltersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIdentityDkimAttributes = {
  type t;
  type request = {
@as("Identities") identities: identityList
}
  type response = {
@as("DkimAttributes") dkimAttributes: dkimAttributes
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "GetIdentityDkimAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateReceiptRule = {
  type t;
  type request = {
@as("Rule") rule: receiptRule,
@as("RuleSetName") ruleSetName: receiptRuleSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateReceiptRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestination") eventDestination: eventDestination,
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "UpdateConfigurationSetEventDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendBulkTemplatedEmail = {
  type t;
  type request = {
@as("Destinations") destinations: bulkEmailDestinationList,
@as("DefaultTemplateData") defaultTemplateData: option<templateData>,
@as("TemplateArn") templateArn: option<amazonResourceName>,
@as("Template") template: templateName,
@as("DefaultTags") defaultTags: option<messageTagList>,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>,
@as("ReturnPathArn") returnPathArn: option<amazonResourceName>,
@as("ReturnPath") returnPath: option<address>,
@as("ReplyToAddresses") replyToAddresses: option<addressList>,
@as("SourceArn") sourceArn: option<amazonResourceName>,
@as("Source") source: address
}
  type response = {
@as("Status") status: bulkEmailDestinationStatusList
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendBulkTemplatedEmailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReceiptRule = {
  type t;
  type request = {
@as("RuleName") ruleName: receiptRuleName,
@as("RuleSetName") ruleSetName: receiptRuleSetName
}
  type response = {
@as("Rule") rule: option<receiptRule>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DescribeReceiptRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateReceiptRule = {
  type t;
  type request = {
@as("Rule") rule: receiptRule,
@as("After") after: option<receiptRuleName>,
@as("RuleSetName") ruleSetName: receiptRuleSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateReceiptRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestination") eventDestination: eventDestination,
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "CreateConfigurationSetEventDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendBounce = {
  type t;
  type request = {
@as("BounceSenderArn") bounceSenderArn: option<amazonResourceName>,
@as("BouncedRecipientInfoList") bouncedRecipientInfoList: bouncedRecipientInfoList,
@as("MessageDsn") messageDsn: option<messageDsn>,
@as("Explanation") explanation: option<explanation>,
@as("BounceSender") bounceSender: address,
@as("OriginalMessageId") originalMessageId: messageId
}
  type response = {
@as("MessageId") messageId: option<messageId>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "SendBounceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReceiptRuleSet = {
  type t;
  type request = {
@as("RuleSetName") ruleSetName: receiptRuleSetName
}
  type response = {
@as("Rules") rules: option<receiptRulesList>,
@as("Metadata") metadata: option<receiptRuleSetMetadata>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DescribeReceiptRuleSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetAttributeNames") configurationSetAttributeNames: option<configurationSetAttributeList>,
@as("ConfigurationSetName") configurationSetName: configurationSetName
}
  type response = {
@as("ReputationOptions") reputationOptions: option<reputationOptions>,
@as("DeliveryOptions") deliveryOptions: option<deliveryOptions>,
@as("TrackingOptions") trackingOptions: option<trackingOptions>,
@as("EventDestinations") eventDestinations: option<eventDestinations>,
@as("ConfigurationSet") configurationSet: option<configurationSet>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DescribeConfigurationSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeActiveReceiptRuleSet = {
  type t;
  type request = unit
  type response = {
@as("Rules") rules: option<receiptRulesList>,
@as("Metadata") metadata: option<receiptRuleSetMetadata>
}
  @module("@aws-sdk/client-ses") @new external new_: (request) => t = "DescribeActiveReceiptRuleSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
