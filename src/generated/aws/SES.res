type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type verificationToken = string
type verificationStatus = [@as("NotStarted") #NotStarted | @as("TemporaryFailure") #TemporaryFailure | @as("Failed") #Failed | @as("Success") #Success | @as("Pending") #Pending]
type tlsPolicy = [@as("Optional") #Optional | @as("Require") #Require]
type amazonawsTimestamp = Js.Date.t;
type textPart = string
type templateName = string
type templateData = string
type templateContent = string
type successRedirectionURL = string
type subjectPart = string
type subject = string
type stopScope = [@as("RuleSet") #RuleSet]
type sentLast24Hours = float;
type sNSActionEncoding = [@as("Base64") #Base64 | @as("UTF-8") #UTF_8]
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
type rawMessageData = NodeJs.Buffer.t;
type policyName = string
type policy = string
type notificationType = [@as("Delivery") #Delivery | @as("Complaint") #Complaint | @as("Bounce") #Bounce]
type notificationTopic = string
type nextToken = string
type messageTagValue = string
type messageTagName = string
type messageId = string
type messageData = string
type maxSendRate = float;
type maxResults = int;
type maxItems = int;
type max24HourSend = float;
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
type eventType = [@as("renderingFailure") #renderingFailure | @as("click") #click | @as("open") #open | @as("delivery") #delivery | @as("complaint") #complaint | @as("bounce") #bounce | @as("reject") #reject | @as("send") #send]
type eventDestinationName = string
type errorMessage = string
type error = string
type enabled = bool;
type dsnStatus = string
type dsnAction = [@as("expanded") #expanded | @as("relayed") #relayed | @as("delivered") #delivered | @as("delayed") #delayed | @as("failed") #failed]
type domain = string
type dimensionValueSource = [@as("linkTag") #linkTag | @as("emailHeader") #emailHeader | @as("messageTag") #messageTag]
type dimensionName = string
type diagnosticCode = string
type defaultDimensionValue = string
type customRedirectDomain = string
type customMailFromStatus = [@as("TemporaryFailure") #TemporaryFailure | @as("Failed") #Failed | @as("Success") #Success | @as("Pending") #Pending]
type counter = float;
type configurationSetName = string
type configurationSetAttribute = [@as("reputationOptions") #reputationOptions | @as("deliveryOptions") #deliveryOptions | @as("trackingOptions") #trackingOptions | @as("eventDestinations") #eventDestinations]
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
@as("OrganizationArn") organizationArn: option<amazonResourceName>,
@as("TopicArn") topicArn: amazonResourceName
}
type verificationTokenList = array<verificationToken>
type trackingOptions = {
@as("CustomRedirectDomain") customRedirectDomain: customRedirectDomain
}
type templateMetadata = {
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("Name") name: templateName
}
type template = {
@as("HtmlPart") htmlPart: htmlPart,
@as("TextPart") textPart: textPart,
@as("SubjectPart") subjectPart: subjectPart,
@as("TemplateName") templateName: option<templateName>
}
type stopAction = {
@as("TopicArn") topicArn: amazonResourceName,
@as("Scope") scope: option<stopScope>
}
type sendDataPoint = {
@as("Rejects") rejects: counter,
@as("Complaints") complaints: counter,
@as("Bounces") bounces: counter,
@as("DeliveryAttempts") deliveryAttempts: counter,
@as("Timestamp") timestamp: amazonawsTimestamp
}
type sNSDestination = {
@as("TopicARN") topicARN: option<amazonResourceName>
}
type sNSAction = {
@as("Encoding") encoding: sNSActionEncoding,
@as("TopicArn") topicArn: option<amazonResourceName>
}
type s3Action = {
@as("KmsKeyArn") kmsKeyArn: amazonResourceName,
@as("ObjectKeyPrefix") objectKeyPrefix: s3KeyPrefix,
@as("BucketName") bucketName: option<s3BucketName>,
@as("TopicArn") topicArn: amazonResourceName
}
type reputationOptions = {
@as("LastFreshStart") lastFreshStart: lastFreshStart,
@as("ReputationMetricsEnabled") reputationMetricsEnabled: enabled,
@as("SendingEnabled") sendingEnabled: enabled
}
type recipientsList = array<recipient>
type receiptRuleSetMetadata = {
@as("CreatedTimestamp") createdTimestamp: amazonawsTimestamp,
@as("Name") name: receiptRuleSetName
}
type receiptRuleNamesList = array<receiptRuleName>
type receiptIpFilter = {
@as("Cidr") cidr: option<cidr>,
@as("Policy") policy: option<receiptFilterPolicy>
}
type rawMessage = {
@as("Data") data: option<rawMessageData>
}
type policyNameList = array<policyName>
type policyMap = Js.Dict.t< policy>
type messageTag = {
@as("Value") value: option<messageTagValue>,
@as("Name") name: option<messageTagName>
}
type lambdaAction = {
@as("InvocationType") invocationType: invocationType,
@as("FunctionArn") functionArn: option<amazonResourceName>,
@as("TopicArn") topicArn: amazonResourceName
}
type kinesisFirehoseDestination = {
@as("DeliveryStreamARN") deliveryStreamARN: option<amazonResourceName>,
@as("IAMRoleARN") iAMRoleARN: option<amazonResourceName>
}
type identityVerificationAttributes = {
@as("VerificationToken") verificationToken: verificationToken,
@as("VerificationStatus") verificationStatus: option<verificationStatus>
}
type identityNotificationAttributes = {
@as("HeadersInDeliveryNotificationsEnabled") headersInDeliveryNotificationsEnabled: enabled,
@as("HeadersInComplaintNotificationsEnabled") headersInComplaintNotificationsEnabled: enabled,
@as("HeadersInBounceNotificationsEnabled") headersInBounceNotificationsEnabled: enabled,
@as("ForwardingEnabled") forwardingEnabled: option<enabled>,
@as("DeliveryTopic") deliveryTopic: option<notificationTopic>,
@as("ComplaintTopic") complaintTopic: option<notificationTopic>,
@as("BounceTopic") bounceTopic: option<notificationTopic>
}
type identityMailFromDomainAttributes = {
@as("BehaviorOnMXFailure") behaviorOnMXFailure: option<behaviorOnMXFailure>,
@as("MailFromDomainStatus") mailFromDomainStatus: option<customMailFromStatus>,
@as("MailFromDomain") mailFromDomain: option<mailFromDomainName>
}
type identityList = array<identity>
type extensionField = {
@as("Value") value: option<extensionFieldValue>,
@as("Name") name: option<extensionFieldName>
}
type eventTypes = array<eventType>
type deliveryOptions = {
@as("TlsPolicy") tlsPolicy: tlsPolicy
}
type customVerificationEmailTemplate = {
@as("FailureRedirectionURL") failureRedirectionURL: failureRedirectionURL,
@as("SuccessRedirectionURL") successRedirectionURL: successRedirectionURL,
@as("TemplateSubject") templateSubject: subject,
@as("FromEmailAddress") fromEmailAddress: fromAddress,
@as("TemplateName") templateName: templateName
}
type content = {
@as("Charset") charset: charset,
@as("Data") data: option<messageData>
}
type configurationSetAttributeList = array<configurationSetAttribute>
type configurationSet = {
@as("Name") name: option<configurationSetName>
}
type cloudWatchDimensionConfiguration = {
@as("DefaultDimensionValue") defaultDimensionValue: option<defaultDimensionValue>,
@as("DimensionValueSource") dimensionValueSource: option<dimensionValueSource>,
@as("DimensionName") dimensionName: option<dimensionName>
}
type bulkEmailDestinationStatus = {
@as("MessageId") messageId: messageId,
@as("Error") error: error,
@as("Status") status: bulkEmailStatus
}
type bounceAction = {
@as("Sender") sender: option<address>,
@as("Message") message: option<bounceMessage>,
@as("StatusCode") statusCode: bounceStatusCode,
@as("SmtpReplyCode") smtpReplyCode: option<bounceSmtpReplyCode>,
@as("TopicArn") topicArn: amazonResourceName
}
type addressList = array<address>
type addHeaderAction = {
@as("HeaderValue") headerValue: option<headerValue>,
@as("HeaderName") headerName: option<headerName>
}
type verificationAttributes = Js.Dict.t< identityVerificationAttributes>
type templateMetadataList = array<templateMetadata>
type sendDataPointList = array<sendDataPoint>
type receiptRuleSetsLists = array<receiptRuleSetMetadata>
type receiptFilter = {
@as("IpFilter") ipFilter: option<receiptIpFilter>,
@as("Name") name: option<receiptFilterName>
}
type receiptAction = {
@as("SNSAction") sNSAction: sNSAction,
@as("AddHeaderAction") addHeaderAction: addHeaderAction,
@as("StopAction") stopAction: stopAction,
@as("LambdaAction") lambdaAction: lambdaAction,
@as("WorkmailAction") workmailAction: workmailAction,
@as("BounceAction") bounceAction: bounceAction,
@as("S3Action") s3Action: s3Action
}
type notificationAttributes = Js.Dict.t< identityNotificationAttributes>
type messageTagList = array<messageTag>
type mailFromDomainAttributes = Js.Dict.t< identityMailFromDomainAttributes>
type identityDkimAttributes = {
@as("DkimTokens") dkimTokens: verificationTokenList,
@as("DkimVerificationStatus") dkimVerificationStatus: option<verificationStatus>,
@as("DkimEnabled") dkimEnabled: option<enabled>
}
type extensionFieldList = array<extensionField>
type destination = {
@as("BccAddresses") bccAddresses: addressList,
@as("CcAddresses") ccAddresses: addressList,
@as("ToAddresses") toAddresses: addressList
}
type customVerificationEmailTemplates = array<customVerificationEmailTemplate>
type configurationSets = array<configurationSet>
type cloudWatchDimensionConfigurations = array<cloudWatchDimensionConfiguration>
type bulkEmailDestinationStatusList = array<bulkEmailDestinationStatus>
type body = {
@as("Html") html: content,
@as("Text") text: content
}
type recipientDsnFields = {
@as("ExtensionFields") extensionFields: extensionFieldList,
@as("LastAttemptDate") lastAttemptDate: lastAttemptDate,
@as("DiagnosticCode") diagnosticCode: diagnosticCode,
@as("Status") status: option<dsnStatus>,
@as("RemoteMta") remoteMta: remoteMta,
@as("Action") action: option<dsnAction>,
@as("FinalRecipient") finalRecipient: address
}
type receiptFilterList = array<receiptFilter>
type receiptActionsList = array<receiptAction>
type messageDsn = {
@as("ExtensionFields") extensionFields: extensionFieldList,
@as("ArrivalDate") arrivalDate: arrivalDate,
@as("ReportingMta") reportingMta: option<reportingMta>
}
type message = {
@as("Body") body: option<body>,
@as("Subject") subject: option<content>
}
type dkimAttributes = Js.Dict.t< identityDkimAttributes>
type cloudWatchDestination = {
@as("DimensionConfigurations") dimensionConfigurations: option<cloudWatchDimensionConfigurations>
}
type bulkEmailDestination = {
@as("ReplacementTemplateData") replacementTemplateData: templateData,
@as("ReplacementTags") replacementTags: messageTagList,
@as("Destination") destination: option<destination>
}
type receiptRule = {
@as("ScanEnabled") scanEnabled: enabled,
@as("Actions") actions: receiptActionsList,
@as("Recipients") recipients: recipientsList,
@as("TlsPolicy") tlsPolicy: tlsPolicy,
@as("Enabled") enabled: enabled,
@as("Name") name: option<receiptRuleName>
}
type eventDestination = {
@as("SNSDestination") sNSDestination: sNSDestination,
@as("CloudWatchDestination") cloudWatchDestination: cloudWatchDestination,
@as("KinesisFirehoseDestination") kinesisFirehoseDestination: kinesisFirehoseDestination,
@as("MatchingEventTypes") matchingEventTypes: option<eventTypes>,
@as("Enabled") enabled: enabled,
@as("Name") name: option<eventDestinationName>
}
type bulkEmailDestinationList = array<bulkEmailDestination>
type bouncedRecipientInfo = {
@as("RecipientDsnFields") recipientDsnFields: recipientDsnFields,
@as("BounceType") bounceType: bounceType,
@as("RecipientArn") recipientArn: amazonResourceName,
@as("Recipient") recipient: option<address>
}
type receiptRulesList = array<receiptRule>
type eventDestinations = array<eventDestination>
type bouncedRecipientInfoList = array<bouncedRecipientInfo>
type clientType;
@module("@aws-sdk/client-ses") @new external createClient: unit => clientType = "SESClient";
module VerifyEmailIdentity = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: option<address>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "VerifyEmailIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module VerifyEmailAddress = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: option<address>
}
  
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "VerifyEmailAddressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module VerifyDomainIdentity = {
  type t;
  type request = {
@as("Domain") domain: option<domain>
}
  type response = {
@as("VerificationToken") verificationToken: option<verificationToken>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "VerifyDomainIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("FailureRedirectionURL") failureRedirectionURL: failureRedirectionURL,
@as("SuccessRedirectionURL") successRedirectionURL: successRedirectionURL,
@as("TemplateContent") templateContent: templateContent,
@as("TemplateSubject") templateSubject: subject,
@as("FromEmailAddress") fromEmailAddress: fromAddress,
@as("TemplateName") templateName: option<templateName>
}
  
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "UpdateCustomVerificationEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateConfigurationSetSendingEnabled = {
  type t;
  type request = {
@as("Enabled") enabled: option<enabled>,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "UpdateConfigurationSetSendingEnabledCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateConfigurationSetReputationMetricsEnabled = {
  type t;
  type request = {
@as("Enabled") enabled: option<enabled>,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "UpdateConfigurationSetReputationMetricsEnabledCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateAccountSendingEnabled = {
  type t;
  type request = {
@as("Enabled") enabled: enabled
}
  
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "UpdateAccountSendingEnabledCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TestRenderTemplate = {
  type t;
  type request = {
@as("TemplateData") templateData: option<templateData>,
@as("TemplateName") templateName: option<templateName>
}
  type response = {
@as("RenderedTemplate") renderedTemplate: renderedTemplate
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "TestRenderTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetReceiptRulePosition = {
  type t;
  type request = {
@as("After") after: receiptRuleName,
@as("RuleName") ruleName: option<receiptRuleName>,
@as("RuleSetName") ruleSetName: option<receiptRuleSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SetReceiptRulePositionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetIdentityNotificationTopic = {
  type t;
  type request = {
@as("SnsTopic") snsTopic: notificationTopic,
@as("NotificationType") notificationType: option<notificationType>,
@as("Identity") identity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SetIdentityNotificationTopicCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetIdentityMailFromDomain = {
  type t;
  type request = {
@as("BehaviorOnMXFailure") behaviorOnMXFailure: behaviorOnMXFailure,
@as("MailFromDomain") mailFromDomain: mailFromDomainName,
@as("Identity") identity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SetIdentityMailFromDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetIdentityHeadersInNotificationsEnabled = {
  type t;
  type request = {
@as("Enabled") enabled: option<enabled>,
@as("NotificationType") notificationType: option<notificationType>,
@as("Identity") identity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SetIdentityHeadersInNotificationsEnabledCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetIdentityFeedbackForwardingEnabled = {
  type t;
  type request = {
@as("ForwardingEnabled") forwardingEnabled: option<enabled>,
@as("Identity") identity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SetIdentityFeedbackForwardingEnabledCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetIdentityDkimEnabled = {
  type t;
  type request = {
@as("DkimEnabled") dkimEnabled: option<enabled>,
@as("Identity") identity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SetIdentityDkimEnabledCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetActiveReceiptRuleSet = {
  type t;
  type request = {
@as("RuleSetName") ruleSetName: receiptRuleSetName
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SetActiveReceiptRuleSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendCustomVerificationEmail = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("TemplateName") templateName: option<templateName>,
@as("EmailAddress") emailAddress: option<address>
}
  type response = {
@as("MessageId") messageId: messageId
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SendCustomVerificationEmailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutIdentityPolicy = {
  type t;
  type request = {
@as("Policy") policy: option<policy>,
@as("PolicyName") policyName: option<policyName>,
@as("Identity") identity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "PutIdentityPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSendQuota = {
  type t;
  
  type response = {
@as("SentLast24Hours") sentLast24Hours: sentLast24Hours,
@as("MaxSendRate") maxSendRate: maxSendRate,
@as("Max24HourSend") max24HourSend: max24HourSend
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<unit>) => t = "GetSendQuotaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<templateName>
}
  type response = {
@as("FailureRedirectionURL") failureRedirectionURL: failureRedirectionURL,
@as("SuccessRedirectionURL") successRedirectionURL: successRedirectionURL,
@as("TemplateContent") templateContent: templateContent,
@as("TemplateSubject") templateSubject: subject,
@as("FromEmailAddress") fromEmailAddress: fromAddress,
@as("TemplateName") templateName: templateName
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "GetCustomVerificationEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccountSendingEnabled = {
  type t;
  
  type response = {
@as("Enabled") enabled: enabled
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<unit>) => t = "GetAccountSendingEnabledCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVerifiedEmailAddress = {
  type t;
  type request = {
@as("EmailAddress") emailAddress: option<address>
}
  
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DeleteVerifiedEmailAddressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<templateName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DeleteTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReceiptRuleSet = {
  type t;
  type request = {
@as("RuleSetName") ruleSetName: option<receiptRuleSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DeleteReceiptRuleSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReceiptRule = {
  type t;
  type request = {
@as("RuleName") ruleName: option<receiptRuleName>,
@as("RuleSetName") ruleSetName: option<receiptRuleSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DeleteReceiptRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReceiptFilter = {
  type t;
  type request = {
@as("FilterName") filterName: option<receiptFilterName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DeleteReceiptFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteIdentityPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: option<policyName>,
@as("Identity") identity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DeleteIdentityPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteIdentity = {
  type t;
  type request = {
@as("Identity") identity: option<identity>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DeleteIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<templateName>
}
  
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DeleteCustomVerificationEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteConfigurationSetTrackingOptions = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DeleteConfigurationSetTrackingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestinationName") eventDestinationName: option<eventDestinationName>,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DeleteConfigurationSetEventDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DeleteConfigurationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReceiptRuleSet = {
  type t;
  type request = {
@as("RuleSetName") ruleSetName: option<receiptRuleSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "CreateReceiptRuleSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCustomVerificationEmailTemplate = {
  type t;
  type request = {
@as("FailureRedirectionURL") failureRedirectionURL: option<failureRedirectionURL>,
@as("SuccessRedirectionURL") successRedirectionURL: option<successRedirectionURL>,
@as("TemplateContent") templateContent: option<templateContent>,
@as("TemplateSubject") templateSubject: option<subject>,
@as("FromEmailAddress") fromEmailAddress: option<fromAddress>,
@as("TemplateName") templateName: option<templateName>
}
  
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "CreateCustomVerificationEmailTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CloneReceiptRuleSet = {
  type t;
  type request = {
@as("OriginalRuleSetName") originalRuleSetName: option<receiptRuleSetName>,
@as("RuleSetName") ruleSetName: option<receiptRuleSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "CloneReceiptRuleSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module VerifyDomainDkim = {
  type t;
  type request = {
@as("Domain") domain: option<domain>
}
  type response = {
@as("DkimTokens") dkimTokens: option<verificationTokenList>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "VerifyDomainDkimCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTemplate = {
  type t;
  type request = {
@as("Template") template: option<template>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "UpdateTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConfigurationSetTrackingOptions = {
  type t;
  type request = {
@as("TrackingOptions") trackingOptions: option<trackingOptions>,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "UpdateConfigurationSetTrackingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReorderReceiptRuleSet = {
  type t;
  type request = {
@as("RuleNames") ruleNames: option<receiptRuleNamesList>,
@as("RuleSetName") ruleSetName: option<receiptRuleSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "ReorderReceiptRuleSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationSetDeliveryOptions = {
  type t;
  type request = {
@as("DeliveryOptions") deliveryOptions: deliveryOptions,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "PutConfigurationSetDeliveryOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVerifiedEmailAddresses = {
  type t;
  
  type response = {
@as("VerifiedEmailAddresses") verifiedEmailAddresses: addressList
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<unit>) => t = "ListVerifiedEmailAddressesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIdentityPolicies = {
  type t;
  type request = {
@as("Identity") identity: option<identity>
}
  type response = {
@as("PolicyNames") policyNames: option<policyNameList>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "ListIdentityPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIdentities = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItems,
@as("NextToken") nextToken: nextToken,
@as("IdentityType") identityType: identityType
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Identities") identities: option<identityList>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "ListIdentitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<templateName>
}
  type response = {
@as("Template") template: template
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "GetTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIdentityPolicies = {
  type t;
  type request = {
@as("PolicyNames") policyNames: option<policyNameList>,
@as("Identity") identity: option<identity>
}
  type response = {
@as("Policies") policies: option<policyMap>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "GetIdentityPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTemplate = {
  type t;
  type request = {
@as("Template") template: option<template>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "CreateTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSetTrackingOptions = {
  type t;
  type request = {
@as("TrackingOptions") trackingOptions: option<trackingOptions>,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "CreateConfigurationSetTrackingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSet") configurationSet: option<configurationSet>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "CreateConfigurationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendTemplatedEmail = {
  type t;
  type request = {
@as("TemplateData") templateData: option<templateData>,
@as("TemplateArn") templateArn: amazonResourceName,
@as("Template") template: option<templateName>,
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("Tags") tags: messageTagList,
@as("ReturnPathArn") returnPathArn: amazonResourceName,
@as("SourceArn") sourceArn: amazonResourceName,
@as("ReturnPath") returnPath: address,
@as("ReplyToAddresses") replyToAddresses: addressList,
@as("Destination") destination: option<destination>,
@as("Source") source: option<address>
}
  type response = {
@as("MessageId") messageId: option<messageId>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SendTemplatedEmailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendRawEmail = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("Tags") tags: messageTagList,
@as("ReturnPathArn") returnPathArn: amazonResourceName,
@as("SourceArn") sourceArn: amazonResourceName,
@as("FromArn") fromArn: amazonResourceName,
@as("RawMessage") rawMessage: option<rawMessage>,
@as("Destinations") destinations: addressList,
@as("Source") source: address
}
  type response = {
@as("MessageId") messageId: option<messageId>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SendRawEmailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTemplates = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItems,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("TemplatesMetadata") templatesMetadata: templateMetadataList
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "ListTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReceiptRuleSets = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("RuleSets") ruleSets: receiptRuleSetsLists
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "ListReceiptRuleSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCustomVerificationEmailTemplates = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("CustomVerificationEmailTemplates") customVerificationEmailTemplates: customVerificationEmailTemplates
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "ListCustomVerificationEmailTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationSets = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxItems,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ConfigurationSets") configurationSets: configurationSets
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "ListConfigurationSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSendStatistics = {
  type t;
  
  type response = {
@as("SendDataPoints") sendDataPoints: sendDataPointList
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<unit>) => t = "GetSendStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIdentityVerificationAttributes = {
  type t;
  type request = {
@as("Identities") identities: option<identityList>
}
  type response = {
@as("VerificationAttributes") verificationAttributes: option<verificationAttributes>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "GetIdentityVerificationAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIdentityNotificationAttributes = {
  type t;
  type request = {
@as("Identities") identities: option<identityList>
}
  type response = {
@as("NotificationAttributes") notificationAttributes: option<notificationAttributes>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "GetIdentityNotificationAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIdentityMailFromDomainAttributes = {
  type t;
  type request = {
@as("Identities") identities: option<identityList>
}
  type response = {
@as("MailFromDomainAttributes") mailFromDomainAttributes: option<mailFromDomainAttributes>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "GetIdentityMailFromDomainAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReceiptFilter = {
  type t;
  type request = {
@as("Filter") filter: option<receiptFilter>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "CreateReceiptFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendEmail = {
  type t;
  type request = {
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("Tags") tags: messageTagList,
@as("ReturnPathArn") returnPathArn: amazonResourceName,
@as("SourceArn") sourceArn: amazonResourceName,
@as("ReturnPath") returnPath: address,
@as("ReplyToAddresses") replyToAddresses: addressList,
@as("Message") message: option<message>,
@as("Destination") destination: option<destination>,
@as("Source") source: option<address>
}
  type response = {
@as("MessageId") messageId: option<messageId>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SendEmailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReceiptFilters = {
  type t;
  type request = unit
  type response = {
@as("Filters") filters: receiptFilterList
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "ListReceiptFiltersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIdentityDkimAttributes = {
  type t;
  type request = {
@as("Identities") identities: option<identityList>
}
  type response = {
@as("DkimAttributes") dkimAttributes: option<dkimAttributes>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "GetIdentityDkimAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateReceiptRule = {
  type t;
  type request = {
@as("Rule") rule: option<receiptRule>,
@as("RuleSetName") ruleSetName: option<receiptRuleSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "UpdateReceiptRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestination") eventDestination: option<eventDestination>,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "UpdateConfigurationSetEventDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendBulkTemplatedEmail = {
  type t;
  type request = {
@as("Destinations") destinations: option<bulkEmailDestinationList>,
@as("DefaultTemplateData") defaultTemplateData: templateData,
@as("TemplateArn") templateArn: amazonResourceName,
@as("Template") template: option<templateName>,
@as("DefaultTags") defaultTags: messageTagList,
@as("ConfigurationSetName") configurationSetName: configurationSetName,
@as("ReturnPathArn") returnPathArn: amazonResourceName,
@as("ReturnPath") returnPath: address,
@as("ReplyToAddresses") replyToAddresses: addressList,
@as("SourceArn") sourceArn: amazonResourceName,
@as("Source") source: option<address>
}
  type response = {
@as("Status") status: option<bulkEmailDestinationStatusList>
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SendBulkTemplatedEmailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReceiptRule = {
  type t;
  type request = {
@as("RuleName") ruleName: option<receiptRuleName>,
@as("RuleSetName") ruleSetName: option<receiptRuleSetName>
}
  type response = {
@as("Rule") rule: receiptRule
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DescribeReceiptRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReceiptRule = {
  type t;
  type request = {
@as("Rule") rule: option<receiptRule>,
@as("After") after: receiptRuleName,
@as("RuleSetName") ruleSetName: option<receiptRuleSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "CreateReceiptRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationSetEventDestination = {
  type t;
  type request = {
@as("EventDestination") eventDestination: option<eventDestination>,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = unit
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "CreateConfigurationSetEventDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendBounce = {
  type t;
  type request = {
@as("BounceSenderArn") bounceSenderArn: amazonResourceName,
@as("BouncedRecipientInfoList") bouncedRecipientInfoList: option<bouncedRecipientInfoList>,
@as("MessageDsn") messageDsn: messageDsn,
@as("Explanation") explanation: explanation,
@as("BounceSender") bounceSender: option<address>,
@as("OriginalMessageId") originalMessageId: option<messageId>
}
  type response = {
@as("MessageId") messageId: messageId
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "SendBounceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReceiptRuleSet = {
  type t;
  type request = {
@as("RuleSetName") ruleSetName: option<receiptRuleSetName>
}
  type response = {
@as("Rules") rules: receiptRulesList,
@as("Metadata") metadata: receiptRuleSetMetadata
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DescribeReceiptRuleSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationSet = {
  type t;
  type request = {
@as("ConfigurationSetAttributeNames") configurationSetAttributeNames: configurationSetAttributeList,
@as("ConfigurationSetName") configurationSetName: option<configurationSetName>
}
  type response = {
@as("ReputationOptions") reputationOptions: reputationOptions,
@as("DeliveryOptions") deliveryOptions: deliveryOptions,
@as("TrackingOptions") trackingOptions: trackingOptions,
@as("EventDestinations") eventDestinations: eventDestinations,
@as("ConfigurationSet") configurationSet: configurationSet
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigurationSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeActiveReceiptRuleSet = {
  type t;
  type request = unit
  type response = {
@as("Rules") rules: receiptRulesList,
@as("Metadata") metadata: receiptRuleSetMetadata
}
  @module("@aws-sdk/client-ses") @new external new_: (Js.Promise.t<request>) => t = "DescribeActiveReceiptRuleSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
