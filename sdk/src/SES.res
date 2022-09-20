type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ses") @new external createClient: unit => awsServiceClient = "SESClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type verificationToken = string
type verificationStatus = [
  | @as("NotStarted") #NotStarted
  | @as("TemporaryFailure") #TemporaryFailure
  | @as("Failed") #Failed
  | @as("Success") #Success
  | @as("Pending") #Pending
]
type tlsPolicy = [@as("Optional") #Optional | @as("Require") #Require]
type timestamp_ = Js.Date.t
type textPart = string
type templateName = string
type templateData = string
type templateContent = string
type successRedirectionURL = string
type subjectPart = string
type subject = string
type stopScope = [@as("RuleSet") #RuleSet]
type sentLast24Hours = float
type snsactionEncoding = [@as("Base64") #Base64 | @as("UTF-8") #UTF_8]
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
type notificationType = [
  | @as("Delivery") #Delivery
  | @as("Complaint") #Complaint
  | @as("Bounce") #Bounce
]
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
type lastFreshStart = Js.Date.t
type lastAttemptDate = Js.Date.t
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
type eventType = [
  | @as("renderingFailure") #RenderingFailure
  | @as("click") #Click
  | @as("open") #Open
  | @as("delivery") #Delivery
  | @as("complaint") #Complaint
  | @as("bounce") #Bounce
  | @as("reject") #Reject
  | @as("send") #Send
]
type eventDestinationName = string
type errorMessage = string
type error = string
type enabled = bool
type dsnStatus = string
type dsnAction = [
  | @as("expanded") #Expanded
  | @as("relayed") #Relayed
  | @as("delivered") #Delivered
  | @as("delayed") #Delayed
  | @as("failed") #Failed
]
type domain = string
type dimensionValueSource = [
  | @as("linkTag") #LinkTag
  | @as("emailHeader") #EmailHeader
  | @as("messageTag") #MessageTag
]
type dimensionName = string
type diagnosticCode = string
type defaultDimensionValue = string
type customRedirectDomain = string
type customMailFromStatus = [
  | @as("TemporaryFailure") #TemporaryFailure
  | @as("Failed") #Failed
  | @as("Success") #Success
  | @as("Pending") #Pending
]
type counter = float
type configurationSetName = string
type configurationSetAttribute = [
  | @as("reputationOptions") #ReputationOptions
  | @as("deliveryOptions") #DeliveryOptions
  | @as("trackingOptions") #TrackingOptions
  | @as("eventDestinations") #EventDestinations
]
type cidr = string
type charset = string
type bulkEmailStatus = [
  | @as("Failed") #Failed
  | @as("TransientFailure") #TransientFailure
  | @as("InvalidParameterValue") #InvalidParameterValue
  | @as("ConfigurationSetSendingPaused") #ConfigurationSetSendingPaused
  | @as("AccountSendingPaused") #AccountSendingPaused
  | @as("InvalidSendingPoolName") #InvalidSendingPoolName
  | @as("AccountDailyQuotaExceeded") #AccountDailyQuotaExceeded
  | @as("AccountThrottled") #AccountThrottled
  | @as("AccountSuspended") #AccountSuspended
  | @as("TemplateDoesNotExist") #TemplateDoesNotExist
  | @as("ConfigurationSetDoesNotExist") #ConfigurationSetDoesNotExist
  | @as("MailFromDomainNotVerified") #MailFromDomainNotVerified
  | @as("MessageRejected") #MessageRejected
  | @as("Success") #Success
]
type bounceType = [
  | @as("TemporaryFailure") #TemporaryFailure
  | @as("Undefined") #Undefined
  | @as("ContentRejected") #ContentRejected
  | @as("ExceededQuota") #ExceededQuota
  | @as("MessageTooLarge") #MessageTooLarge
  | @as("DoesNotExist") #DoesNotExist
]
type bounceStatusCode = string
type bounceSmtpReplyCode = string
type bounceMessage = string
type behaviorOnMXFailure = [
  | @as("RejectMessage") #RejectMessage
  | @as("UseDefaultValue") #UseDefaultValue
]
type arrivalDate = Js.Date.t
type amazonResourceName = string
type address = string
@ocaml.doc("<p>When included in a receipt rule, this action calls Amazon WorkMail and, optionally,
            publishes a notification to Amazon Simple Notification Service (Amazon SNS). You will typically not use this action
            directly because Amazon WorkMail adds the rule automatically during its setup
            procedure.</p>
        <p>For information using a receipt rule to call Amazon WorkMail, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html\">Amazon SES Developer
                Guide</a>.</p>")
type workmailAction = {
  @ocaml.doc("<p>The ARN of the Amazon WorkMail organization. An example of an Amazon WorkMail
            organization ARN is
                <code>arn:aws:workmail:us-west-2:123456789012:organization/m-68755160c4cb4e29a2b2f8fb58f359d7</code>.
            For information about Amazon WorkMail organizations, see the <a href=\"https://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html\">Amazon WorkMail
                Administrator Guide</a>.</p>")
  @as("OrganizationArn")
  organizationArn: amazonResourceName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the WorkMail action
            is called. An example of an Amazon SNS topic ARN is
                <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about
            Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>")
  @as("TopicArn")
  topicArn: option<amazonResourceName>,
}
type verificationTokenList = array<verificationToken>
@ocaml.doc("<p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This
            domain captures open and click events generated by Amazon SES emails.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html\">Configuring
                Custom Domains to Handle Open and Click Tracking</a> in the <i>Amazon SES
                Developer Guide</i>.</p>")
type trackingOptions = {
  @ocaml.doc("<p>The custom subdomain that will be used to redirect email recipients to the Amazon SES
            event tracking domain.</p>")
  @as("CustomRedirectDomain")
  customRedirectDomain: option<customRedirectDomain>,
}
@ocaml.doc("<p>Contains information about an email template.</p>")
type templateMetadata = {
  @ocaml.doc("<p>The time and date the template was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The name of the template.</p>") @as("Name") name: option<templateName>,
}
@ocaml.doc("<p>The content of the email, composed of a subject line, an HTML part, and a text-only
            part.</p>")
type template = {
  @ocaml.doc("<p>The HTML body of the email.</p>") @as("HtmlPart") htmlPart: option<htmlPart>,
  @ocaml.doc("<p>The email body that will be visible to recipients whose email clients do not display
            HTML.</p>")
  @as("TextPart")
  textPart: option<textPart>,
  @ocaml.doc("<p>The subject line of the email.</p>") @as("SubjectPart")
  subjectPart: option<subjectPart>,
  @ocaml.doc("<p>The name of the template. You will refer to this name when you send email using the
                <code>SendTemplatedEmail</code> or <code>SendBulkTemplatedEmail</code>
            operations.</p>")
  @as("TemplateName")
  templateName: templateName,
}
@ocaml.doc("<p>When included in a receipt rule, this action terminates the evaluation of the receipt
            rule set and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p>
        <p>For information about setting a stop action in a receipt rule, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html\">Amazon SES Developer
                Guide</a>.</p>")
type stopAction = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the stop action is
            taken. An example of an Amazon SNS topic ARN is
                <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about
            Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>")
  @as("TopicArn")
  topicArn: option<amazonResourceName>,
  @ocaml.doc(
    "<p>The scope of the StopAction. The only acceptable value is <code>RuleSet</code>.</p>"
  )
  @as("Scope")
  scope: stopScope,
}
@ocaml.doc("<p>Represents sending statistics data. Each <code>SendDataPoint</code> contains
            statistics for a 15-minute period of sending activity. </p>")
type sendDataPoint = {
  @ocaml.doc("<p>Number of emails rejected by Amazon SES.</p>") @as("Rejects")
  rejects: option<counter>,
  @ocaml.doc("<p>Number of unwanted emails that were rejected by recipients.</p>") @as("Complaints")
  complaints: option<counter>,
  @ocaml.doc("<p>Number of emails that have bounced.</p>") @as("Bounces") bounces: option<counter>,
  @ocaml.doc("<p>Number of emails that have been sent.</p>") @as("DeliveryAttempts")
  deliveryAttempts: option<counter>,
  @ocaml.doc("<p>Time of the data point.</p>") @as("Timestamp") timestamp_: option<timestamp_>,
}
@ocaml.doc("<p>Contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event destination.</p>
        <p>Event destinations, such as Amazon SNS, are associated with configuration sets, which
            enable you to publish email sending events. For information about using configuration
            sets, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
type snsdestination = {
  @ocaml.doc("<p>The ARN of the Amazon SNS topic that email sending events will be published to. An example
            of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For
            more information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>")
  @as("TopicARN")
  topicARN: amazonResourceName,
}
@ocaml.doc("<p>When included in a receipt rule, this action publishes a notification to Amazon Simple Notification Service
            (Amazon SNS). This action includes a complete copy of the email content in the Amazon SNS
            notifications. Amazon SNS notifications for all other actions simply provide information
            about the email. They do not include the email content itself.</p>
        <p>If you own the Amazon SNS topic, you don't need to do anything to give Amazon SES permission to
            publish emails to it. However, if you don't own the Amazon SNS topic, you need to attach a
            policy to the topic to give Amazon SES permissions to access it. For information about giving
            permissions, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html\">Amazon SES Developer
                Guide</a>.</p>
        <important>
            <p>You can only publish emails that are 150 KB or less (including the header) to
                Amazon SNS. Larger emails will bounce. If you anticipate emails larger than 150 KB, use
                the S3 action instead.</p>
        </important>
        <p>For information about using a receipt rule to publish an Amazon SNS notification, see the
                <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-sns.html\">Amazon SES Developer
                Guide</a>.</p>")
type snsaction = {
  @ocaml.doc("<p>The encoding to use for the email within the Amazon SNS notification. UTF-8 is easier to
            use, but may not preserve all special characters when a message was encoded with a
            different encoding format. Base64 preserves all special characters. The default value is
            UTF-8.</p>")
  @as("Encoding")
  encoding: option<snsactionEncoding>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify. An example of an Amazon SNS
            topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more
            information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>")
  @as("TopicArn")
  topicArn: amazonResourceName,
}
@ocaml.doc("<p>When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service
            (Amazon S3) bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p>
        <p>To enable Amazon SES to write emails to your Amazon S3 bucket, use an AWS KMS key to encrypt
            your emails, or publish to an Amazon SNS topic of another account, Amazon SES must have permission
            to access those resources. For information about giving permissions, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html\">Amazon SES Developer
                Guide</a>.</p>
        <note>
            <p>When you save your emails to an Amazon S3 bucket, the maximum email size (including
                headers) is 30 MB. Emails larger than that will bounce.</p>
        </note>
        <p>For information about specifying Amazon S3 actions in receipt rules, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html\">Amazon SES Developer Guide</a>.</p>")
type s3Action = {
  @ocaml.doc("<p>The customer master key that Amazon SES should use to encrypt your emails before saving
            them to the Amazon S3 bucket. You can use the default master key or a custom master key you
            created in AWS KMS as follows:</p>
        <ul>
            <li>
                <p>To use the default master key, provide an ARN in the form of
                        <code>arn:aws:kms:REGION:ACCOUNT-ID-WITHOUT-HYPHENS:alias/aws/ses</code>.
                    For example, if your AWS account ID is 123456789012 and you want to use the
                    default master key in the US West (Oregon) region, the ARN of the default master
                    key would be <code>arn:aws:kms:us-west-2:123456789012:alias/aws/ses</code>. If
                    you use the default master key, you don't need to perform any extra steps to
                    give Amazon SES permission to use the key.</p>
            </li>
            <li>
                <p>To use a custom master key you created in AWS KMS, provide the ARN of the
                    master key and ensure that you add a statement to your key's policy to give
                    Amazon SES permission to use it. For more information about giving permissions, see
                    the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html\">Amazon SES
                        Developer Guide</a>.</p>
            </li>
         </ul>
        <p>For more information about key policies, see the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html\">AWS KMS Developer Guide</a>. If
            you do not specify a master key, Amazon SES will not encrypt your emails.</p>
        <important>
            <p>Your mail is encrypted by Amazon SES using the Amazon S3 encryption client before the mail
                is submitted to Amazon S3 for storage. It is not encrypted using Amazon S3 server-side
                encryption. This means that you must use the Amazon S3 encryption client to decrypt the
                email after retrieving it from Amazon S3, as the service has no access to use your AWS
                KMS keys for decryption. This encryption client is currently available with the
                    <a href=\"http://aws.amazon.com/sdk-for-java/\">AWS SDK for Java</a> and <a href=\"http://aws.amazon.com/sdk-for-ruby/\">AWS SDK for Ruby</a> only. For more
                information about client-side encryption using AWS KMS master keys, see the <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html\">Amazon S3 Developer Guide</a>.</p>
        </important>")
  @as("KmsKeyArn")
  kmsKeyArn: option<amazonResourceName>,
  @ocaml.doc("<p>The key prefix of the Amazon S3 bucket. The key prefix is similar to a directory name that
            enables you to store similar data under the same directory in a bucket.</p>")
  @as("ObjectKeyPrefix")
  objectKeyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket that incoming email will be saved to.</p>")
  @as("BucketName")
  bucketName: s3BucketName,
  @ocaml.doc("<p>The ARN of the Amazon SNS topic to notify when the message is saved to the Amazon S3 bucket. An
            example of an Amazon SNS topic ARN is
            <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about
            Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>")
  @as("TopicArn")
  topicArn: option<amazonResourceName>,
}
@ocaml.doc("<p>Contains information about the reputation settings for a configuration set.</p>")
type reputationOptions = {
  @ocaml.doc("<p>The date and time at which the reputation metrics for the configuration set were last
            reset. Resetting these metrics is known as a <i>fresh start</i>.</p>
        <p>When you disable email sending for a configuration set using <a>UpdateConfigurationSetSendingEnabled</a> and later re-enable it, the
            reputation metrics for the configuration set (but not for the entire Amazon SES account) are
            reset.</p>
        <p>If email sending for the configuration set has never been disabled and later
            re-enabled, the value of this attribute is <code>null</code>.</p>")
  @as("LastFreshStart")
  lastFreshStart: option<lastFreshStart>,
  @ocaml.doc("<p>Describes whether or not Amazon SES publishes reputation metrics for the configuration set,
            such as bounce and complaint rates, to Amazon CloudWatch.</p>
        <p>If the value is <code>true</code>, reputation metrics are published. If the value is
                <code>false</code>, reputation metrics are not published. The default value is
                <code>false</code>.</p>")
  @as("ReputationMetricsEnabled")
  reputationMetricsEnabled: option<enabled>,
  @ocaml.doc("<p>Describes whether email sending is enabled or disabled for the configuration set. If
            the value is <code>true</code>, then Amazon SES will send emails that use the configuration
            set. If the value is <code>false</code>, Amazon SES will not send emails that use the
            configuration set. The default value is <code>true</code>. You can change this setting
            using <a>UpdateConfigurationSetSendingEnabled</a>.</p>")
  @as("SendingEnabled")
  sendingEnabled: option<enabled>,
}
type recipientsList = array<recipient>
@ocaml.doc("<p>Information about a receipt rule set.</p>
        <p>A receipt rule set is a collection of rules that specify what Amazon SES should do with
            mail it receives on behalf of your account's verified domains.</p>
        <p>For information about setting up receipt rule sets, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html\">Amazon SES
                Developer Guide</a>.</p>")
type receiptRuleSetMetadata = {
  @ocaml.doc("<p>The date and time the receipt rule set was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The name of the receipt rule set. The name must:</p>
        <ul>
            <li>
                <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
                    underscores (_), or dashes (-).</p>
            </li>
            <li>
                <p>Start and end with a letter or number.</p>
            </li>
            <li>
                <p>Contain less than 64 characters.</p>
            </li>
         </ul>")
  @as("Name")
  name: option<receiptRuleSetName>,
}
type receiptRuleNamesList = array<receiptRuleName>
@ocaml.doc("<p>A receipt IP address filter enables you to specify whether to accept or reject mail
            originating from an IP address or range of IP addresses.</p>
        <p>For information about setting up IP address filters, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html\">Amazon SES Developer Guide</a>.</p>")
type receiptIpFilter = {
  @ocaml.doc("<p>A single IP address or a range of IP addresses that you want to block or allow,
            specified in Classless Inter-Domain Routing (CIDR) notation. An example of a single
            email address is 10.0.0.1. An example of a range of IP addresses is 10.0.0.1/24. For
            more information about CIDR notation, see <a href=\"https://tools.ietf.org/html/rfc2317\">RFC 2317</a>.</p>")
  @as("Cidr")
  cidr: cidr,
  @ocaml.doc("<p>Indicates whether to block or allow incoming mail from the specified IP
            addresses.</p>")
  @as("Policy")
  policy: receiptFilterPolicy,
}
@ocaml.doc("<p>Represents the raw data of the message.</p>")
type rawMessage = {
  @ocaml.doc("<p>The raw data of the message. This data needs to base64-encoded if you are accessing
            Amazon SES directly through the HTTPS interface. If you are accessing Amazon SES using an AWS
            SDK, the SDK takes care of the base 64-encoding for you. In all cases, the client must
            ensure that the message format complies with Internet email standards regarding email
            header fields, MIME types, and MIME encoding.</p>
        <p>The To:, CC:, and BCC: headers in the raw message can contain a group list.</p>
        <p>If you are using <code>SendRawEmail</code> with sending authorization, you can include
            X-headers in the raw message to specify the \"Source,\" \"From,\" and \"Return-Path\"
            addresses. For more information, see the documentation for <code>SendRawEmail</code>. </p>
        <important>
            <p>Do not include these X-headers in the DKIM signature, because they are removed by
                Amazon SES before sending the email.</p>
        </important>
        <p>For more information, go to the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html\">Amazon SES Developer
            Guide</a>.</p>")
  @as("Data")
  data: rawMessageData,
}
type policyNameList = array<policyName>
type policyMap = Js.Dict.t<policy>
@ocaml.doc("<p>Contains the name and value of a tag that you can provide to <code>SendEmail</code> or
                <code>SendRawEmail</code> to apply to an email.</p>
        <p>Message tags, which you use with configuration sets, enable you to publish email
            sending events. For information about using configuration sets, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer Guide</a>.</p>")
type messageTag = {
  @ocaml.doc("<p>The value of the tag. The value must:</p>
        <ul>
            <li>
                <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
                    underscores (_), or dashes (-).</p>
            </li>
            <li>
                <p>Contain less than 256 characters.</p>
            </li>
         </ul>")
  @as("Value")
  value: messageTagValue,
  @ocaml.doc("<p>The name of the tag. The name must:</p>
        <ul>
            <li>
                <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
                    underscores (_), or dashes (-).</p>
            </li>
            <li>
                <p>Contain less than 256 characters.</p>
            </li>
         </ul>")
  @as("Name")
  name: messageTagName,
}
@ocaml.doc("<p>When included in a receipt rule, this action calls an AWS Lambda function and,
            optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p>
        <p>To enable Amazon SES to call your AWS Lambda function or to publish to an Amazon SNS topic of
            another account, Amazon SES must have permission to access those resources. For information
            about giving permissions, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html\">Amazon SES Developer
                Guide</a>.</p>
        <p>For information about using AWS Lambda actions in receipt rules, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html\">Amazon SES Developer
                Guide</a>.</p>")
type lambdaAction = {
  @ocaml.doc("<p>The invocation type of the AWS Lambda function. An invocation type of
                <code>RequestResponse</code> means that the execution of the function will
            immediately result in a response, and a value of <code>Event</code> means that the
            function will be invoked asynchronously. The default value is <code>Event</code>. For
            information about AWS Lambda invocation types, see the <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html\">AWS Lambda Developer Guide</a>.</p>
        <important>
            <p>There is a 30-second timeout on <code>RequestResponse</code> invocations. You
                should use <code>Event</code> invocation in most cases. Use
                    <code>RequestResponse</code> only when you want to make a mail flow decision,
                such as whether to stop the receipt rule or the receipt rule set.</p>
        </important>")
  @as("InvocationType")
  invocationType: option<invocationType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Lambda function. An example of an AWS Lambda
            function ARN is <code>arn:aws:lambda:us-west-2:account-id:function:MyFunction</code>.
            For more information about AWS Lambda, see the <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/welcome.html\">AWS Lambda Developer Guide</a>.</p>")
  @as("FunctionArn")
  functionArn: amazonResourceName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the Lambda action is
            taken. An example of an Amazon SNS topic ARN is
                <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about
            Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>")
  @as("TopicArn")
  topicArn: option<amazonResourceName>,
}
@ocaml.doc("<p>Contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event
            destination.</p>
        <p>Event destinations, such as Amazon Kinesis Firehose, are associated with configuration sets, which enable
            you to publish email sending events. For information about using configuration sets, see
            the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
type kinesisFirehoseDestination = {
  @ocaml.doc(
    "<p>The ARN of the Amazon Kinesis Firehose stream that email sending events should be published to.</p>"
  )
  @as("DeliveryStreamARN")
  deliveryStreamARN: amazonResourceName,
  @ocaml.doc("<p>The ARN of the IAM role under which Amazon SES publishes email sending events to the Amazon Kinesis Firehose
            stream.</p>")
  @as("IAMRoleARN")
  iamroleARN: amazonResourceName,
}
@ocaml.doc("<p>Represents the verification attributes of a single identity.</p>")
type identityVerificationAttributes = {
  @ocaml.doc("<p>The verification token for a domain identity. Null for email address
            identities.</p>")
  @as("VerificationToken")
  verificationToken: option<verificationToken>,
  @ocaml.doc("<p>The verification status of the identity: \"Pending\", \"Success\", \"Failed\", or
            \"TemporaryFailure\".</p>")
  @as("VerificationStatus")
  verificationStatus: verificationStatus,
}
@ocaml.doc("<p>Represents the notification attributes of an identity, including whether an identity
            has Amazon Simple Notification Service (Amazon SNS) topics set for bounce, complaint, and/or delivery notifications,
            and whether feedback forwarding is enabled for bounce and complaint
            notifications.</p>")
type identityNotificationAttributes = {
  @ocaml.doc("<p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of
            type <code>Delivery</code>. A value of <code>true</code> specifies that Amazon SES will
            include headers in delivery notifications, and a value of <code>false</code> specifies
            that Amazon SES will not include headers in delivery notifications.</p>")
  @as("HeadersInDeliveryNotificationsEnabled")
  headersInDeliveryNotificationsEnabled: option<enabled>,
  @ocaml.doc("<p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of
            type <code>Complaint</code>. A value of <code>true</code> specifies that Amazon SES will
            include headers in complaint notifications, and a value of <code>false</code> specifies
            that Amazon SES will not include headers in complaint notifications.</p>")
  @as("HeadersInComplaintNotificationsEnabled")
  headersInComplaintNotificationsEnabled: option<enabled>,
  @ocaml.doc("<p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of
            type <code>Bounce</code>. A value of <code>true</code> specifies that Amazon SES will include
            headers in bounce notifications, and a value of <code>false</code> specifies that Amazon SES
            will not include headers in bounce notifications.</p>")
  @as("HeadersInBounceNotificationsEnabled")
  headersInBounceNotificationsEnabled: option<enabled>,
  @ocaml.doc("<p>Describes whether Amazon SES will forward bounce and complaint notifications as email.
                <code>true</code> indicates that Amazon SES will forward bounce and complaint
            notifications as email, while <code>false</code> indicates that bounce and complaint
            notifications will be published only to the specified bounce and complaint Amazon SNS
            topics.</p>")
  @as("ForwardingEnabled")
  forwardingEnabled: enabled,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish delivery
            notifications.</p>")
  @as("DeliveryTopic")
  deliveryTopic: notificationTopic,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish complaint
            notifications.</p>")
  @as("ComplaintTopic")
  complaintTopic: notificationTopic,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish bounce
            notifications.</p>")
  @as("BounceTopic")
  bounceTopic: notificationTopic,
}
@ocaml.doc("<p>Represents the custom MAIL FROM domain attributes of a verified identity (email
            address or domain).</p>")
type identityMailFromDomainAttributes = {
  @ocaml.doc("<p>The action that Amazon SES takes if it cannot successfully read the required MX record when
            you send an email. A value of <code>UseDefaultValue</code> indicates that if Amazon SES
            cannot read the required MX record, it uses amazonses.com (or a subdomain of that) as
            the MAIL FROM domain. A value of <code>RejectMessage</code> indicates that if Amazon SES
            cannot read the required MX record, Amazon SES returns a
                <code>MailFromDomainNotVerified</code> error and does not send the email.</p>
        <p>The custom MAIL FROM setup states that result in this behavior are
                <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>.</p>")
  @as("BehaviorOnMXFailure")
  behaviorOnMXFailure: behaviorOnMXFailure,
  @ocaml.doc("<p>The state that indicates whether Amazon SES has successfully read the MX record required
            for custom MAIL FROM domain setup. If the state is <code>Success</code>, Amazon SES uses the
            specified custom MAIL FROM domain when the verified identity sends an email. All other
            states indicate that Amazon SES takes the action described by
                <code>BehaviorOnMXFailure</code>.</p>")
  @as("MailFromDomainStatus")
  mailFromDomainStatus: customMailFromStatus,
  @ocaml.doc("<p>The custom MAIL FROM domain that the identity is configured to use.</p>")
  @as("MailFromDomain")
  mailFromDomain: mailFromDomainName,
}
type identityList = array<identity>
@ocaml.doc("<p>Additional X-headers to include in the Delivery Status Notification (DSN) when an
            email that Amazon SES receives on your behalf bounces.</p>
        <p>For information about receiving email through Amazon SES, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html\">Amazon SES
                Developer Guide</a>.</p>")
type extensionField = {
  @ocaml.doc("<p>The value of the header to add. Must be less than 2048 characters, and must not
            contain newline characters (\"\\r\" or \"\\n\").</p>")
  @as("Value")
  value: extensionFieldValue,
  @ocaml.doc("<p>The name of the header to add. Must be between 1 and 50 characters, inclusive, and
            consist of alphanumeric (a-z, A-Z, 0-9) characters and dashes only.</p>")
  @as("Name")
  name: extensionFieldName,
}
type eventTypes = array<eventType>
@ocaml.doc("<p>Specifies whether messages that use the configuration set are required to use
            Transport Layer Security (TLS).</p>")
type deliveryOptions = {
  @ocaml.doc("<p>Specifies whether messages that use the configuration set are required to use
            Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only
            delivered if a TLS connection can be established. If the value is <code>Optional</code>,
            messages can be delivered in plain text if a TLS connection can't be established.</p>")
  @as("TlsPolicy")
  tlsPolicy: option<tlsPolicy>,
}
@ocaml.doc("<p>Contains information about a custom verification email template.</p>")
type customVerificationEmailTemplate = {
  @ocaml.doc("<p>The URL that the recipient of the verification email is sent to if his or her address
            is not successfully verified.</p>")
  @as("FailureRedirectionURL")
  failureRedirectionURL: option<failureRedirectionURL>,
  @ocaml.doc("<p>The URL that the recipient of the verification email is sent to if his or her address
            is successfully verified.</p>")
  @as("SuccessRedirectionURL")
  successRedirectionURL: option<successRedirectionURL>,
  @ocaml.doc("<p>The subject line of the custom verification email.</p>") @as("TemplateSubject")
  templateSubject: option<subject>,
  @ocaml.doc("<p>The email address that the custom verification email is sent from.</p>")
  @as("FromEmailAddress")
  fromEmailAddress: option<fromAddress>,
  @ocaml.doc("<p>The name of the custom verification email template.</p>") @as("TemplateName")
  templateName: option<templateName>,
}
@ocaml.doc("<p>Represents textual data, plus an optional character set specification.</p>
        <p>By default, the text must be 7-bit ASCII, due to the constraints of the SMTP protocol.
            If the text must contain any other characters, then you must also specify a character
            set. Examples include UTF-8, ISO-8859-1, and Shift_JIS.</p>")
type content = {
  @ocaml.doc("<p>The character set of the content.</p>") @as("Charset") charset: option<charset>,
  @ocaml.doc("<p>The textual data of the content.</p>") @as("Data") data: messageData,
}
type configurationSetAttributeList = array<configurationSetAttribute>
@ocaml.doc("<p>The name of the configuration set.</p>
        <p>Configuration sets let you create groups of rules that you can apply to the emails you
            send using Amazon SES. For more information about using configuration sets, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/using-configuration-sets.html\">Using Amazon SES Configuration Sets</a> in the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/\">Amazon SES Developer Guide</a>.</p>")
type configurationSet = {
  @ocaml.doc("<p>The name of the configuration set. The name must meet the following
            requirements:</p>
        <ul>
            <li>
                <p>Contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes
                    (-).</p>
            </li>
            <li>
                <p>Contain 64 characters or fewer.</p>
            </li>
         </ul>")
  @as("Name")
  name: configurationSetName,
}
@ocaml.doc("<p>Contains the dimension configuration to use when you publish email sending events to
            Amazon CloudWatch.</p>
        <p>For information about publishing email sending events to Amazon CloudWatch, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer Guide</a>.</p>")
type cloudWatchDimensionConfiguration = {
  @ocaml.doc("<p>The default value of the dimension that is published to Amazon CloudWatch if you do not provide
            the value of the dimension when you send an email. The default value must:</p>
        <ul>
            <li>
                <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
                    underscores (_), or dashes (-).</p>
            </li>
            <li>
                <p>Contain less than 256 characters.</p>
            </li>
         </ul>")
  @as("DefaultDimensionValue")
  defaultDimensionValue: defaultDimensionValue,
  @ocaml.doc("<p>The place where Amazon SES finds the value of a dimension to publish to Amazon CloudWatch. If you
            want Amazon SES to use the message tags that you specify using an
                <code>X-SES-MESSAGE-TAGS</code> header or a parameter to the
                <code>SendEmail</code>/<code>SendRawEmail</code> API, choose
            <code>messageTag</code>. If you want Amazon SES to use your own email headers, choose
                <code>emailHeader</code>.</p>")
  @as("DimensionValueSource")
  dimensionValueSource: dimensionValueSource,
  @ocaml.doc("<p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name
            must:</p>
        <ul>
            <li>
                <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
                    underscores (_), or dashes (-).</p>
            </li>
            <li>
                <p>Contain less than 256 characters.</p>
            </li>
         </ul>")
  @as("DimensionName")
  dimensionName: dimensionName,
}
@ocaml.doc("<p>An object that contains the response from the <code>SendBulkTemplatedEmail</code>
            operation.</p>")
type bulkEmailDestinationStatus = {
  @ocaml.doc("<p>The unique message identifier returned from the <code>SendBulkTemplatedEmail</code>
            operation.</p>")
  @as("MessageId")
  messageId: option<messageId>,
  @ocaml.doc("<p>A description of an error that prevented a message being sent using the
                <code>SendBulkTemplatedEmail</code> operation.</p>")
  @as("Error")
  error: option<error>,
  @ocaml.doc("<p>The status of a message sent using the <code>SendBulkTemplatedEmail</code>
            operation.</p>
        <p>Possible values for this parameter include:</p>
        <ul>
            <li>
                <p>
                  <code>Success</code>: Amazon SES accepted the message, and will attempt to deliver
                    it to the recipients.</p>
            </li>
            <li>
                <p>
                  <code>MessageRejected</code>: The message was rejected because it contained a
                    virus.</p>
            </li>
            <li>
                <p>
                  <code>MailFromDomainNotVerified</code>: The sender's email address or domain
                    was not verified.</p>
            </li>
            <li>
                <p>
                  <code>ConfigurationSetDoesNotExist</code>: The configuration set you specified
                    does not exist.</p>
            </li>
            <li>
                <p>
                  <code>TemplateDoesNotExist</code>: The template you specified does not
                    exist.</p>
            </li>
            <li>
                <p>
                  <code>AccountSuspended</code>: Your account has been shut down because of
                    issues related to your email sending practices.</p>
            </li>
            <li>
                <p>
                  <code>AccountThrottled</code>: The number of emails you can send has been
                    reduced because your account has exceeded its allocated sending limit.</p>
            </li>
            <li>
                <p>
                  <code>AccountDailyQuotaExceeded</code>: You have reached or exceeded the
                    maximum number of emails you can send from your account in a 24-hour
                    period.</p>
            </li>
            <li>
                <p>
                  <code>InvalidSendingPoolName</code>: The configuration set you specified
                    refers to an IP pool that does not exist.</p>
            </li>
            <li>
                <p>
                  <code>AccountSendingPaused</code>: Email sending for the Amazon SES account was
                    disabled using the <a>UpdateAccountSendingEnabled</a>
                    operation.</p>
            </li>
            <li>
                <p>
                  <code>ConfigurationSetSendingPaused</code>: Email sending for this
                    configuration set was disabled using the <a>UpdateConfigurationSetSendingEnabled</a> operation.</p>
            </li>
            <li>
                <p>
                  <code>InvalidParameterValue</code>: One or more of the parameters you
                    specified when calling this operation was invalid. See the error message for
                    additional information.</p>
            </li>
            <li>
                <p>
                  <code>TransientFailure</code>: Amazon SES was unable to process your request
                    because of a temporary issue.</p>
            </li>
            <li>
                <p>
                  <code>Failed</code>: Amazon SES was unable to process your request. See the error
                    message for additional information.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<bulkEmailStatus>,
}
@ocaml.doc("<p>When included in a receipt rule, this action rejects the received email by returning a
            bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service
            (Amazon SNS).</p>
        <p>For information about sending a bounce message in response to a received email, see
            the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-bounce.html\">Amazon SES Developer
                Guide</a>.</p>")
type bounceAction = {
  @ocaml.doc("<p>The email address of the sender of the bounced email. This is the address from which
            the bounce message will be sent.</p>")
  @as("Sender")
  sender: address,
  @ocaml.doc("<p>Human-readable text to include in the bounce message.</p>") @as("Message")
  message: bounceMessage,
  @ocaml.doc(
    "<p>The SMTP enhanced status code, as defined by <a href=\"https://tools.ietf.org/html/rfc3463\">RFC 3463</a>.</p>"
  )
  @as("StatusCode")
  statusCode: option<bounceStatusCode>,
  @ocaml.doc(
    "<p>The SMTP reply code, as defined by <a href=\"https://tools.ietf.org/html/rfc5321\">RFC 5321</a>.</p>"
  )
  @as("SmtpReplyCode")
  smtpReplyCode: bounceSmtpReplyCode,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the bounce action is
            taken. An example of an Amazon SNS topic ARN is
                <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about
            Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>")
  @as("TopicArn")
  topicArn: option<amazonResourceName>,
}
type addressList = array<address>
@ocaml.doc("<p>When included in a receipt rule, this action adds a header to the received
            email.</p>
        <p>For information about adding a header using a receipt rule, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html\">Amazon SES
                Developer Guide</a>.</p>")
type addHeaderAction = {
  @ocaml.doc("<p>Must be less than 2048 characters, and must not contain newline characters (\"\\r\" or
            \"\\n\").</p>")
  @as("HeaderValue")
  headerValue: headerValue,
  @ocaml.doc("<p>The name of the header to add. Must be between 1 and 50 characters, inclusive, and
            consist of alphanumeric (a-z, A-Z, 0-9) characters and dashes only.</p>")
  @as("HeaderName")
  headerName: headerName,
}
type verificationAttributes = Js.Dict.t<identityVerificationAttributes>
type templateMetadataList = array<templateMetadata>
type sendDataPointList = array<sendDataPoint>
type receiptRuleSetsLists = array<receiptRuleSetMetadata>
@ocaml.doc("<p>A receipt IP address filter enables you to specify whether to accept or reject mail
            originating from an IP address or range of IP addresses.</p>
        <p>For information about setting up IP address filters, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html\">Amazon SES Developer Guide</a>.</p>")
type receiptFilter = {
  @ocaml.doc("<p>A structure that provides the IP addresses to block or allow, and whether to block or
            allow incoming mail from them.</p>")
  @as("IpFilter")
  ipFilter: receiptIpFilter,
  @ocaml.doc("<p>The name of the IP address filter. The name must:</p>
        <ul>
            <li>
                <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
                    underscores (_), or dashes (-).</p>
            </li>
            <li>
                <p>Start and end with a letter or number.</p>
            </li>
            <li>
                <p>Contain less than 64 characters.</p>
            </li>
         </ul>")
  @as("Name")
  name: receiptFilterName,
}
@ocaml.doc("<p>An action that Amazon SES can take when it receives an email on behalf of one or more email
            addresses or domains that you own. An instance of this data type can represent only one
            action.</p>
        <p>For information about setting up receipt rules, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html\">Amazon SES Developer
                Guide</a>.</p>")
type receiptAction = {
  @ocaml.doc("<p>Publishes the email content within a notification to Amazon SNS.</p>")
  @as("SNSAction")
  snsaction: option<snsaction>,
  @ocaml.doc("<p>Adds a header to the received email.</p>") @as("AddHeaderAction")
  addHeaderAction: option<addHeaderAction>,
  @ocaml.doc("<p>Terminates the evaluation of the receipt rule set and optionally publishes a
            notification to Amazon SNS.</p>")
  @as("StopAction")
  stopAction: option<stopAction>,
  @ocaml.doc(
    "<p>Calls an AWS Lambda function, and optionally, publishes a notification to Amazon SNS.</p>"
  )
  @as("LambdaAction")
  lambdaAction: option<lambdaAction>,
  @ocaml.doc("<p>Calls Amazon WorkMail and, optionally, publishes a notification to Amazon
            Amazon SNS.</p>")
  @as("WorkmailAction")
  workmailAction: option<workmailAction>,
  @ocaml.doc("<p>Rejects the received email by returning a bounce response to the sender and,
            optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p>")
  @as("BounceAction")
  bounceAction: option<bounceAction>,
  @ocaml.doc("<p>Saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a
            notification to Amazon SNS.</p>")
  @as("S3Action")
  s3Action: option<s3Action>,
}
type notificationAttributes = Js.Dict.t<identityNotificationAttributes>
type messageTagList = array<messageTag>
type mailFromDomainAttributes = Js.Dict.t<identityMailFromDomainAttributes>
@ocaml.doc("<p>Represents the DKIM attributes of a verified email address or a domain.</p>")
type identityDkimAttributes = {
  @ocaml.doc("<p>A set of character strings that represent the domain's identity. Using these tokens,
            you need to create DNS CNAME records that point to DKIM public keys that are hosted by
            Amazon SES. Amazon Web Services eventually detects that you've updated your DNS records. This detection
            process might take up to 72 hours. After successful detection, Amazon SES is able to
            DKIM-sign email originating from that domain. (This only applies to domain identities,
            not email address identities.)</p>
        <p>For more information about creating DNS records using DKIM tokens, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Amazon SES Developer
                Guide</a>.</p>")
  @as("DkimTokens")
  dkimTokens: option<verificationTokenList>,
  @ocaml.doc("<p>Describes whether Amazon SES has successfully verified the DKIM DNS records (tokens)
            published in the domain name's DNS. (This only applies to domain identities, not email
            address identities.)</p>")
  @as("DkimVerificationStatus")
  dkimVerificationStatus: verificationStatus,
  @ocaml.doc("<p>Is true if DKIM signing is enabled for email sent from the identity. It's false
            otherwise. The default value is true.</p>")
  @as("DkimEnabled")
  dkimEnabled: enabled,
}
type extensionFieldList = array<extensionField>
@ocaml.doc("<p>Represents the destination of the message, consisting of To:, CC:, and BCC:
            fields.</p>
        <note>
            <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href=\"https://tools.ietf.org/html/rfc6531\">RFC6531</a>. For this reason, the
                    <i>local part</i> of a destination email address (the part of the
                email address that precedes the @ sign) may only contain <a href=\"https://en.wikipedia.org/wiki/Email_address#Local-part\">7-bit ASCII
                    characters</a>. If the <i>domain part</i> of an address (the
                part after the @ sign) contains non-ASCII characters, they must be encoded using
                Punycode, as described in <a href=\"https://tools.ietf.org/html/rfc3492.html\">RFC3492</a>.</p>
        </note>")
type destination = {
  @ocaml.doc("<p>The recipients to place on the BCC: line of the message.</p>") @as("BccAddresses")
  bccAddresses: option<addressList>,
  @ocaml.doc("<p>The recipients to place on the CC: line of the message.</p>") @as("CcAddresses")
  ccAddresses: option<addressList>,
  @ocaml.doc("<p>The recipients to place on the To: line of the message.</p>") @as("ToAddresses")
  toAddresses: option<addressList>,
}
type customVerificationEmailTemplates = array<customVerificationEmailTemplate>
type configurationSets = array<configurationSet>
type cloudWatchDimensionConfigurations = array<cloudWatchDimensionConfiguration>
type bulkEmailDestinationStatusList = array<bulkEmailDestinationStatus>
@ocaml.doc("<p>Represents the body of the message. You can specify text, HTML, or both. If you use
            both, then the message should display correctly in the widest variety of email
            clients.</p>")
type body = {
  @ocaml.doc("<p>The content of the message, in HTML format. Use this for email clients that can
            process HTML. You can include clickable links, formatted text, and much more in an HTML
            message.</p>")
  @as("Html")
  html: option<content>,
  @ocaml.doc("<p>The content of the message, in text format. Use this for text-based email clients, or
            clients on high-latency networks (such as mobile devices).</p>")
  @as("Text")
  text: option<content>,
}
@ocaml.doc("<p>Recipient-related information to include in the Delivery Status Notification (DSN)
            when an email that Amazon SES receives on your behalf bounces.</p>
        <p>For information about receiving email through Amazon SES, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html\">Amazon SES
                Developer Guide</a>.</p>")
type recipientDsnFields = {
  @ocaml.doc("<p>Additional X-headers to include in the DSN.</p>") @as("ExtensionFields")
  extensionFields: option<extensionFieldList>,
  @ocaml.doc(
    "<p>The time the final delivery attempt was made, in <a href=\"https://www.ietf.org/rfc/rfc0822.txt\">RFC 822</a> date-time format.</p>"
  )
  @as("LastAttemptDate")
  lastAttemptDate: option<lastAttemptDate>,
  @ocaml.doc("<p>An extended explanation of what went wrong; this is usually an SMTP response. See
                <a href=\"https://tools.ietf.org/html/rfc3463\">RFC 3463</a> for the correct
            formatting of this parameter.</p>")
  @as("DiagnosticCode")
  diagnosticCode: option<diagnosticCode>,
  @ocaml.doc(
    "<p>The status code that indicates what went wrong. This is required by <a href=\"https://tools.ietf.org/html/rfc3464\">RFC 3464</a>.</p>"
  )
  @as("Status")
  status: dsnStatus,
  @ocaml.doc("<p>The MTA to which the remote MTA attempted to deliver the message, formatted as
            specified in <a href=\"https://tools.ietf.org/html/rfc3464\">RFC 3464</a>
                (<code>mta-name-type; mta-name</code>). This parameter typically applies only to
            propagating synchronous bounces.</p>")
  @as("RemoteMta")
  remoteMta: option<remoteMta>,
  @ocaml.doc("<p>The action performed by the reporting mail transfer agent (MTA) as a result of its
            attempt to deliver the message to the recipient address. This is required by <a href=\"https://tools.ietf.org/html/rfc3464\">RFC 3464</a>.</p>")
  @as("Action")
  action: dsnAction,
  @ocaml.doc("<p>The email address that the message was ultimately delivered to. This corresponds to
            the <code>Final-Recipient</code> in the DSN. If not specified,
                <code>FinalRecipient</code> will be set to the <code>Recipient</code> specified in
            the <code>BouncedRecipientInfo</code> structure. Either <code>FinalRecipient</code> or
            the recipient in <code>BouncedRecipientInfo</code> must be a recipient of the original
            bounced message.</p>
        <note>
            <p>Do not prepend the <code>FinalRecipient</code> email address with <code>rfc
                    822;</code>, as described in <a href=\"https://tools.ietf.org/html/rfc3798\">RFC 3798</a>.</p>
        </note>")
  @as("FinalRecipient")
  finalRecipient: option<address>,
}
type receiptFilterList = array<receiptFilter>
type receiptActionsList = array<receiptAction>
@ocaml.doc("<p>Message-related information to include in the Delivery Status Notification (DSN) when
            an email that Amazon SES receives on your behalf bounces.</p>
        <p>For information about receiving email through Amazon SES, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html\">Amazon SES
                Developer Guide</a>.</p>")
type messageDsn = {
  @ocaml.doc("<p>Additional X-headers to include in the DSN.</p>") @as("ExtensionFields")
  extensionFields: option<extensionFieldList>,
  @ocaml.doc(
    "<p>When the message was received by the reporting mail transfer agent (MTA), in <a href=\"https://www.ietf.org/rfc/rfc0822.txt\">RFC 822</a> date-time format.</p>"
  )
  @as("ArrivalDate")
  arrivalDate: option<arrivalDate>,
  @ocaml.doc("<p>The reporting MTA that attempted to deliver the message, formatted as specified in
                <a href=\"https://tools.ietf.org/html/rfc3464\">RFC 3464</a>
                (<code>mta-name-type; mta-name</code>). The default value is <code>dns;
                inbound-smtp.[region].amazonaws.com</code>.</p>")
  @as("ReportingMta")
  reportingMta: reportingMta,
}
@ocaml.doc("<p>Represents the message to be sent, composed of a subject and a body.</p>")
type message = {
  @ocaml.doc("<p>The message body.</p>") @as("Body") body: body,
  @ocaml.doc("<p>The subject of the message: A short summary of the content, which will appear in the
            recipient's inbox.</p>")
  @as("Subject")
  subject: content,
}
type dkimAttributes = Js.Dict.t<identityDkimAttributes>
@ocaml.doc("<p>Contains information associated with an Amazon CloudWatch event destination to which email
            sending events are published.</p>
        <p>Event destinations, such as Amazon CloudWatch, are associated with configuration sets, which
            enable you to publish email sending events. For information about using configuration
            sets, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
type cloudWatchDestination = {
  @ocaml.doc("<p>A list of dimensions upon which to categorize your emails when you publish email
            sending events to Amazon CloudWatch.</p>")
  @as("DimensionConfigurations")
  dimensionConfigurations: cloudWatchDimensionConfigurations,
}
@ocaml.doc("<p>An array that contains one or more Destinations, as well as the tags and replacement
            data associated with each of those Destinations.</p>")
type bulkEmailDestination = {
  @ocaml.doc("<p>A list of replacement values to apply to the template. This parameter is a JSON
            object, typically consisting of key-value pairs in which the keys correspond to
            replacement tags in the email template.</p>")
  @as("ReplacementTemplateData")
  replacementTemplateData: option<templateData>,
  @ocaml.doc("<p>A list of tags, in the form of name/value pairs, to apply to an email that you send
            using <code>SendBulkTemplatedEmail</code>. Tags correspond to characteristics of the
            email that you define, so that you can publish email sending events.</p>")
  @as("ReplacementTags")
  replacementTags: option<messageTagList>,
  @as("Destination") destination: destination,
}
@ocaml.doc("<p>Receipt rules enable you to specify which actions Amazon SES should take when it receives
            mail on behalf of one or more email addresses or domains that you own.</p>
        <p>Each receipt rule defines a set of email addresses or domains that it applies to. If
            the email addresses or domains match at least one recipient address of the message,
            Amazon SES executes all of the receipt rule's actions on the message.</p>
        <p>For information about setting up receipt rules, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html\">Amazon SES Developer
                Guide</a>.</p>")
type receiptRule = {
  @ocaml.doc("<p>If <code>true</code>, then messages that this receipt rule applies to are scanned for
            spam and viruses. The default value is <code>false</code>.</p>")
  @as("ScanEnabled")
  scanEnabled: option<enabled>,
  @ocaml.doc("<p>An ordered list of actions to perform on messages that match at least one of the
            recipient email addresses or domains specified in the receipt rule.</p>")
  @as("Actions")
  actions: option<receiptActionsList>,
  @ocaml.doc("<p>The recipient domains and email addresses that the receipt rule applies to. If this
            field is not specified, this rule will match all recipients under all verified
            domains.</p>")
  @as("Recipients")
  recipients: option<recipientsList>,
  @ocaml.doc("<p>Specifies whether Amazon SES should require that incoming email is delivered over a
            connection encrypted with Transport Layer Security (TLS). If this parameter is set to
                <code>Require</code>, Amazon SES will bounce emails that are not received over TLS. The
            default is <code>Optional</code>.</p>")
  @as("TlsPolicy")
  tlsPolicy: option<tlsPolicy>,
  @ocaml.doc("<p>If <code>true</code>, the receipt rule is active. The default value is
                <code>false</code>.</p>")
  @as("Enabled")
  enabled: option<enabled>,
  @ocaml.doc("<p>The name of the receipt rule. The name must:</p>
        <ul>
            <li>
                <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
                    underscores (_), or dashes (-).</p>
            </li>
            <li>
                <p>Start and end with a letter or number.</p>
            </li>
            <li>
                <p>Contain less than 64 characters.</p>
            </li>
         </ul>")
  @as("Name")
  name: receiptRuleName,
}
@ocaml.doc("<p>Contains information about the event destination that the specified email sending
            events will be published to.</p>
        <note>
            <p>When you create or update an event destination, you must provide one, and only
                one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose or Amazon Simple Notification Service (Amazon SNS).</p>
        </note>
        <p>Event destinations are associated with configuration sets, which enable you to publish
            email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about
            using configuration sets, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
type eventDestination = {
  @ocaml.doc("<p>An object that contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event
            destination.</p>")
  @as("SNSDestination")
  snsdestination: option<snsdestination>,
  @ocaml.doc("<p>An object that contains the names, default values, and sources of the dimensions
            associated with an Amazon CloudWatch event destination.</p>")
  @as("CloudWatchDestination")
  cloudWatchDestination: option<cloudWatchDestination>,
  @ocaml.doc("<p>An object that contains the delivery stream ARN and the IAM role ARN associated with
            an Amazon Kinesis Firehose event destination.</p>")
  @as("KinesisFirehoseDestination")
  kinesisFirehoseDestination: option<kinesisFirehoseDestination>,
  @ocaml.doc("<p>The type of email sending events to publish to the event destination.</p>")
  @as("MatchingEventTypes")
  matchingEventTypes: eventTypes,
  @ocaml.doc("<p>Sets whether Amazon SES publishes events to this destination when you send an email with
            the associated configuration set. Set to <code>true</code> to enable publishing to this
            destination; set to <code>false</code> to prevent publishing to this destination. The
            default value is <code>false</code>.</p>")
  @as("Enabled")
  enabled: option<enabled>,
  @ocaml.doc("<p>The name of the event destination. The name must:</p>
        <ul>
            <li>
                <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
                    underscores (_), or dashes (-).</p>
            </li>
            <li>
                <p>Contain less than 64 characters.</p>
            </li>
         </ul>")
  @as("Name")
  name: eventDestinationName,
}
type bulkEmailDestinationList = array<bulkEmailDestination>
@ocaml.doc("<p>Recipient-related information to include in the Delivery Status Notification (DSN)
            when an email that Amazon SES receives on your behalf bounces.</p>
        <p>For information about receiving email through Amazon SES, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html\">Amazon SES
                Developer Guide</a>.</p>")
type bouncedRecipientInfo = {
  @ocaml.doc("<p>Recipient-related DSN fields, most of which would normally be filled in automatically
            when provided with a <code>BounceType</code>. You must provide either this parameter or
                <code>BounceType</code>.</p>")
  @as("RecipientDsnFields")
  recipientDsnFields: option<recipientDsnFields>,
  @ocaml.doc("<p>The reason for the bounce. You must provide either this parameter or
                <code>RecipientDsnFields</code>.</p>")
  @as("BounceType")
  bounceType: option<bounceType>,
  @ocaml.doc("<p>This parameter is used only for sending authorization. It is the ARN of the identity
            that is associated with the sending authorization policy that permits you to receive
            email for the recipient of the bounced email. For more information about sending
            authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer
                Guide</a>.</p>")
  @as("RecipientArn")
  recipientArn: option<amazonResourceName>,
  @ocaml.doc("<p>The email address of the recipient of the bounced email.</p>") @as("Recipient")
  recipient: address,
}
type receiptRulesList = array<receiptRule>
type eventDestinations = array<eventDestination>
type bouncedRecipientInfoList = array<bouncedRecipientInfo>
@ocaml.doc("<fullname>Amazon Simple Email Service</fullname>
        <p> This document contains reference information for the <a href=\"https://aws.amazon.com/ses/\">Amazon Simple Email Service</a> (Amazon SES) API, version
            2010-12-01. This document is best used in conjunction with the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html\">Amazon SES Developer
                Guide</a>. </p>
        <note>
            <p> For a list of Amazon SES endpoints to use in service requests, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html\">Regions and
                    Amazon SES</a> in the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html\">Amazon SES Developer
                Guide</a>.</p>
        </note>")
module VerifyEmailIdentity = {
  type t
  @ocaml.doc("<p>Represents a request to begin email address verification with Amazon SES. For information
            about email address verification, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The email address to be verified.</p>") @as("EmailAddress")
    emailAddress: address,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "VerifyEmailIdentityCommand"
  let make = (~emailAddress, ()) => new({emailAddress: emailAddress})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module VerifyEmailAddress = {
  type t
  @ocaml.doc("<p>Represents a request to begin email address verification with Amazon SES. For information
            about email address verification, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The email address to be verified.</p>") @as("EmailAddress")
    emailAddress: address,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "VerifyEmailAddressCommand"
  let make = (~emailAddress, ()) => new({emailAddress: emailAddress})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module VerifyDomainIdentity = {
  type t
  @ocaml.doc("<p>Represents a request to begin Amazon SES domain verification and to generate the TXT
            records that you must publish to the DNS server of your domain to complete the
            verification. For information about domain verification, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html\">Amazon SES
                Developer Guide</a>.</p>")
  type request = {@ocaml.doc("<p>The domain to be verified.</p>") @as("Domain") domain: domain}
  @ocaml.doc("<p>Returns a TXT record that you must publish to the DNS server of your domain to
            complete domain verification with Amazon SES.</p>")
  type response = {
    @ocaml.doc("<p>A TXT record that you must place in the DNS settings of the domain to complete domain
            verification with Amazon SES.</p>
        <p>As Amazon SES searches for the TXT record, the domain's verification status is \"Pending\".
            When Amazon SES detects the record, the domain's verification status changes to \"Success\". If
            Amazon SES is unable to detect the record within 72 hours, the domain's verification status
            changes to \"Failed.\" In that case, if you still want to verify the domain, you must
            restart the verification process from the beginning.</p>")
    @as("VerificationToken")
    verificationToken: verificationToken,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "VerifyDomainIdentityCommand"
  let make = (~domain, ()) => new({domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateCustomVerificationEmailTemplate = {
  type t
  @ocaml.doc(
    "<p>Represents a request to update an existing custom verification email template.</p>"
  )
  type request = {
    @ocaml.doc("<p>The URL that the recipient of the verification email is sent to if his or her address
            is not successfully verified.</p>")
    @as("FailureRedirectionURL")
    failureRedirectionURL: option<failureRedirectionURL>,
    @ocaml.doc("<p>The URL that the recipient of the verification email is sent to if his or her address
            is successfully verified.</p>")
    @as("SuccessRedirectionURL")
    successRedirectionURL: option<successRedirectionURL>,
    @ocaml.doc("<p>The content of the custom verification email. The total size of the email must be less
            than 10 MB. The message body may contain HTML, with some limitations. For more
            information, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html#custom-verification-emails-faq\">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
                Developer Guide</i>.</p>")
    @as("TemplateContent")
    templateContent: option<templateContent>,
    @ocaml.doc("<p>The subject line of the custom verification email.</p>") @as("TemplateSubject")
    templateSubject: option<subject>,
    @ocaml.doc("<p>The email address that the custom verification email is sent from.</p>")
    @as("FromEmailAddress")
    fromEmailAddress: option<fromAddress>,
    @ocaml.doc("<p>The name of the custom verification email template that you want to update.</p>")
    @as("TemplateName")
    templateName: templateName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "UpdateCustomVerificationEmailTemplateCommand"
  let make = (
    ~templateName,
    ~failureRedirectionURL=?,
    ~successRedirectionURL=?,
    ~templateContent=?,
    ~templateSubject=?,
    ~fromEmailAddress=?,
    (),
  ) =>
    new({
      failureRedirectionURL,
      successRedirectionURL,
      templateContent,
      templateSubject,
      fromEmailAddress,
      templateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateConfigurationSetSendingEnabled = {
  type t
  @ocaml.doc("<p>Represents a request to enable or disable the email sending capabilities for a
            specific configuration set.</p>")
  type request = {
    @ocaml.doc("<p>Describes whether email sending is enabled or disabled for the configuration set.
        </p>")
    @as("Enabled")
    enabled: enabled,
    @ocaml.doc("<p>The name of the configuration set that you want to update.</p>")
    @as("ConfigurationSetName")
    configurationSetName: configurationSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "UpdateConfigurationSetSendingEnabledCommand"
  let make = (~enabled, ~configurationSetName, ()) => new({enabled, configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateConfigurationSetReputationMetricsEnabled = {
  type t
  @ocaml.doc("<p>Represents a request to modify the reputation metric publishing settings for a
            configuration set.</p>")
  type request = {
    @ocaml.doc("<p>Describes whether or not Amazon SES will publish reputation metrics for the configuration
            set, such as bounce and complaint rates, to Amazon CloudWatch.</p>")
    @as("Enabled")
    enabled: enabled,
    @ocaml.doc("<p>The name of the configuration set that you want to update.</p>")
    @as("ConfigurationSetName")
    configurationSetName: configurationSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "UpdateConfigurationSetReputationMetricsEnabledCommand"
  let make = (~enabled, ~configurationSetName, ()) => new({enabled, configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateAccountSendingEnabled = {
  type t
  @ocaml.doc("<p>Represents a request to enable or disable the email sending capabilities for your
            entire Amazon SES account.</p>")
  type request = {
    @ocaml.doc("<p>Describes whether email sending is enabled or disabled for your Amazon SES account in the
            current AWS Region.</p>")
    @as("Enabled")
    enabled: option<enabled>,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "UpdateAccountSendingEnabledCommand"
  let make = (~enabled=?, ()) => new({enabled: enabled})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TestRenderTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>A list of replacement values to apply to the template. This parameter is a JSON
            object, typically consisting of key-value pairs in which the keys correspond to
            replacement tags in the email template.</p>")
    @as("TemplateData")
    templateData: templateData,
    @ocaml.doc("<p>The name of the template that you want to render.</p>") @as("TemplateName")
    templateName: templateName,
  }
  type response = {
    @ocaml.doc("<p>The complete MIME message rendered by applying the data in the TemplateData parameter
            to the template specified in the TemplateName parameter.</p>")
    @as("RenderedTemplate")
    renderedTemplate: option<renderedTemplate>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "TestRenderTemplateCommand"
  let make = (~templateData, ~templateName, ()) => new({templateData, templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SetReceiptRulePosition = {
  type t
  @ocaml.doc("<p>Represents a request to set the position of a receipt rule in a receipt rule set. You
            use receipt rule sets to receive email with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc(
      "<p>The name of the receipt rule after which to place the specified receipt rule.</p>"
    )
    @as("After")
    after: option<receiptRuleName>,
    @ocaml.doc("<p>The name of the receipt rule to reposition.</p>") @as("RuleName")
    ruleName: receiptRuleName,
    @ocaml.doc(
      "<p>The name of the receipt rule set that contains the receipt rule to reposition.</p>"
    )
    @as("RuleSetName")
    ruleSetName: receiptRuleSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "SetReceiptRulePositionCommand"
  let make = (~ruleName, ~ruleSetName, ~after=?, ()) => new({after, ruleName, ruleSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetIdentityNotificationTopic = {
  type t
  @ocaml.doc("<p>Represents a request to specify the Amazon SNS topic to which Amazon SES will publish bounce,
            complaint, or delivery notifications for emails sent with that identity as the Source.
            For information about Amazon SES notifications, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic. If the parameter is omitted from
            the request or a null value is passed, <code>SnsTopic</code> is cleared and publishing
            is disabled.</p>")
    @as("SnsTopic")
    snsTopic: option<notificationTopic>,
    @ocaml.doc(
      "<p>The type of notifications that will be published to the specified Amazon SNS topic.</p>"
    )
    @as("NotificationType")
    notificationType: notificationType,
    @ocaml.doc("<p>The identity (email address or domain) that you want to set the Amazon SNS topic
            for.</p>
        <important>
            <p>You can only specify a verified identity for this parameter.</p>
        </important>
        <p>You can specify an identity by using its name or by using its Amazon Resource Name
            (ARN). The following examples are all valid identities: <code>sender@example.com</code>,
                <code>example.com</code>,
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>")
    @as("Identity")
    identity: identity,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "SetIdentityNotificationTopicCommand"
  let make = (~notificationType, ~identity, ~snsTopic=?, ()) =>
    new({snsTopic, notificationType, identity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetIdentityMailFromDomain = {
  type t
  @ocaml.doc("<p>Represents a request to enable or disable the Amazon SES custom MAIL FROM domain setup for
            a verified identity. For information about using a custom MAIL FROM domain, see the
                <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html\">Amazon SES
                Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The action that you want Amazon SES to take if it cannot successfully read the required MX
            record when you send an email. If you choose <code>UseDefaultValue</code>, Amazon SES will
            use amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose
                <code>RejectMessage</code>, Amazon SES will return a
                <code>MailFromDomainNotVerified</code> error and not send the email.</p>
        <p>The action specified in <code>BehaviorOnMXFailure</code> is taken when the custom MAIL
            FROM domain setup is in the <code>Pending</code>, <code>Failed</code>, and
                <code>TemporaryFailure</code> states.</p>")
    @as("BehaviorOnMXFailure")
    behaviorOnMXFailure: option<behaviorOnMXFailure>,
    @ocaml.doc("<p>The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM
            domain must 1) be a subdomain of the verified identity, 2) not be used in a \"From\"
            address if the MAIL FROM domain is the destination of email feedback forwarding (for
            more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html\">Amazon SES Developer Guide</a>), and
            3) not be used to receive emails. A value of <code>null</code> disables the custom MAIL
            FROM setting for the identity.</p>")
    @as("MailFromDomain")
    mailFromDomain: option<mailFromDomainName>,
    @ocaml.doc("<p>The verified identity for which you want to enable or disable the specified custom
            MAIL FROM domain.</p>")
    @as("Identity")
    identity: identity,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "SetIdentityMailFromDomainCommand"
  let make = (~identity, ~behaviorOnMXFailure=?, ~mailFromDomain=?, ()) =>
    new({behaviorOnMXFailure, mailFromDomain, identity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetIdentityHeadersInNotificationsEnabled = {
  type t
  @ocaml.doc("<p>Represents a request to set whether Amazon SES includes the original email headers in the
            Amazon SNS notifications of a specified type. For information about notifications, see the
                <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>Sets whether Amazon SES includes the original email headers in Amazon SNS notifications of the
            specified notification type. A value of <code>true</code> specifies that Amazon SES will
            include headers in notifications, and a value of <code>false</code> specifies that Amazon SES
            will not include headers in notifications.</p>
        <p>This value can only be set when <code>NotificationType</code> is already set to use a
            particular Amazon SNS topic.</p>")
    @as("Enabled")
    enabled: enabled,
    @ocaml.doc(
      "<p>The notification type for which to enable or disable headers in notifications. </p>"
    )
    @as("NotificationType")
    notificationType: notificationType,
    @ocaml.doc("<p>The identity for which to enable or disable headers in notifications. Examples:
                <code>user@example.com</code>, <code>example.com</code>.</p>")
    @as("Identity")
    identity: identity,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "SetIdentityHeadersInNotificationsEnabledCommand"
  let make = (~enabled, ~notificationType, ~identity, ()) =>
    new({enabled, notificationType, identity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetIdentityFeedbackForwardingEnabled = {
  type t
  @ocaml.doc("<p>Represents a request to enable or disable whether Amazon SES forwards you bounce and
            complaint notifications through email. For information about email feedback forwarding,
            see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-email.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>Sets whether Amazon SES will forward bounce and complaint notifications as email.
                <code>true</code> specifies that Amazon SES will forward bounce and complaint
            notifications as email, in addition to any Amazon SNS topic publishing otherwise specified.
                <code>false</code> specifies that Amazon SES will publish bounce and complaint
            notifications only through Amazon SNS. This value can only be set to <code>false</code> when
            Amazon SNS topics are set for both <code>Bounce</code> and <code>Complaint</code>
            notification types.</p>")
    @as("ForwardingEnabled")
    forwardingEnabled: enabled,
    @ocaml.doc("<p>The identity for which to set bounce and complaint notification forwarding. Examples:
                <code>user@example.com</code>, <code>example.com</code>.</p>")
    @as("Identity")
    identity: identity,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "SetIdentityFeedbackForwardingEnabledCommand"
  let make = (~forwardingEnabled, ~identity, ()) => new({forwardingEnabled, identity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetIdentityDkimEnabled = {
  type t
  @ocaml.doc("<p>Represents a request to enable or disable Amazon SES Easy DKIM signing for an identity. For
            more information about setting up Easy DKIM, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Amazon SES Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>Sets whether DKIM signing is enabled for an identity. Set to <code>true</code> to
            enable DKIM signing for this identity; <code>false</code> to disable it. </p>")
    @as("DkimEnabled")
    dkimEnabled: enabled,
    @ocaml.doc("<p>The identity for which DKIM signing should be enabled or disabled.</p>")
    @as("Identity")
    identity: identity,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "SetIdentityDkimEnabledCommand"
  let make = (~dkimEnabled, ~identity, ()) => new({dkimEnabled, identity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetActiveReceiptRuleSet = {
  type t
  @ocaml.doc("<p>Represents a request to set a receipt rule set as the active receipt rule set. You use
            receipt rule sets to receive email with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the receipt rule set to make active. Setting this value to null disables
            all email receiving.</p>")
    @as("RuleSetName")
    ruleSetName: option<receiptRuleSetName>,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "SetActiveReceiptRuleSetCommand"
  let make = (~ruleSetName=?, ()) => new({ruleSetName: ruleSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SendCustomVerificationEmail = {
  type t
  @ocaml.doc("<p>Represents a request to send a custom verification email to a specified
            recipient.</p>")
  type request = {
    @ocaml.doc("<p>Name of a configuration set to use when sending the verification email.</p>")
    @as("ConfigurationSetName")
    configurationSetName: option<configurationSetName>,
    @ocaml.doc("<p>The name of the custom verification email template to use when sending the
            verification email.</p>")
    @as("TemplateName")
    templateName: templateName,
    @ocaml.doc("<p>The email address to verify.</p>") @as("EmailAddress") emailAddress: address,
  }
  @ocaml.doc("<p>The response received when attempting to send the custom verification email.</p>")
  type response = {
    @ocaml.doc("<p>The unique message identifier returned from the
                <code>SendCustomVerificationEmail</code> operation.</p>")
    @as("MessageId")
    messageId: option<messageId>,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "SendCustomVerificationEmailCommand"
  let make = (~templateName, ~emailAddress, ~configurationSetName=?, ()) =>
    new({configurationSetName, templateName, emailAddress})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutIdentityPolicy = {
  type t
  @ocaml.doc("<p>Represents a request to add or update a sending authorization policy for an identity.
            Sending authorization is an Amazon SES feature that enables you to authorize other senders to
            use your identities. For information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>
        <p>For information about the syntax of sending authorization policies, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html\">Amazon SES Developer
                Guide</a>. </p>")
    @as("Policy")
    policy: policy,
    @ocaml.doc("<p>The name of the policy.</p>
        <p>The policy name cannot exceed 64 characters and can only include alphanumeric
            characters, dashes, and underscores.</p>")
    @as("PolicyName")
    policyName: policyName,
    @ocaml.doc("<p>The identity that the policy will apply to. You can specify an identity by using its
            name or by using its Amazon Resource Name (ARN). Examples:
            <code>user@example.com</code>, <code>example.com</code>,
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
        <p>To successfully call this API, you must own the identity.</p>")
    @as("Identity")
    identity: identity,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "PutIdentityPolicyCommand"
  let make = (~policy, ~policyName, ~identity, ()) => new({policy, policyName, identity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetSendQuota = {
  type t
  type request = {.}
  @ocaml.doc("<p>Represents your Amazon SES daily sending quota, maximum send rate, and the number of emails
            you have sent in the last 24 hours.</p>")
  type response = {
    @ocaml.doc("<p>The number of emails sent during the previous 24 hours.</p>")
    @as("SentLast24Hours")
    sentLast24Hours: option<sentLast24Hours>,
    @ocaml.doc("<p>The maximum number of emails that Amazon SES can accept from the user's account per
            second.</p>
        <note>
            <p>The rate at which Amazon SES accepts the user's messages might be less than the maximum
                send rate.</p>
        </note>")
    @as("MaxSendRate")
    maxSendRate: option<maxSendRate>,
    @ocaml.doc("<p>The maximum number of emails the user is allowed to send in a 24-hour interval. A
            value of -1 signifies an unlimited quota.</p>")
    @as("Max24HourSend")
    max24HourSend: option<max24HourSend>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "GetSendQuotaCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCustomVerificationEmailTemplate = {
  type t
  @ocaml.doc("<p>Represents a request to retrieve an existing custom verification email
            template.</p>")
  type request = {
    @ocaml.doc(
      "<p>The name of the custom verification email template that you want to retrieve.</p>"
    )
    @as("TemplateName")
    templateName: templateName,
  }
  @ocaml.doc("<p>The content of the custom verification email template.</p>")
  type response = {
    @ocaml.doc("<p>The URL that the recipient of the verification email is sent to if his or her address
            is not successfully verified.</p>")
    @as("FailureRedirectionURL")
    failureRedirectionURL: option<failureRedirectionURL>,
    @ocaml.doc("<p>The URL that the recipient of the verification email is sent to if his or her address
            is successfully verified.</p>")
    @as("SuccessRedirectionURL")
    successRedirectionURL: option<successRedirectionURL>,
    @ocaml.doc("<p>The content of the custom verification email.</p>") @as("TemplateContent")
    templateContent: option<templateContent>,
    @ocaml.doc("<p>The subject line of the custom verification email.</p>") @as("TemplateSubject")
    templateSubject: option<subject>,
    @ocaml.doc("<p>The email address that the custom verification email is sent from.</p>")
    @as("FromEmailAddress")
    fromEmailAddress: option<fromAddress>,
    @ocaml.doc("<p>The name of the custom verification email template.</p>") @as("TemplateName")
    templateName: option<templateName>,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "GetCustomVerificationEmailTemplateCommand"
  let make = (~templateName, ()) => new({templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAccountSendingEnabled = {
  type t
  type request = {.}
  @ocaml.doc("<p>Represents a request to return the email sending status for your Amazon SES account in the
            current AWS Region.</p>")
  type response = {
    @ocaml.doc("<p>Describes whether email sending is enabled or disabled for your Amazon SES account in the
            current AWS Region.</p>")
    @as("Enabled")
    enabled: option<enabled>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "GetAccountSendingEnabledCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteVerifiedEmailAddress = {
  type t
  @ocaml.doc("<p>Represents a request to delete an email address from the list of email addresses you
            have attempted to verify under your AWS account.</p>")
  type request = {
    @ocaml.doc("<p>An email address to be removed from the list of verified addresses.</p>")
    @as("EmailAddress")
    emailAddress: address,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "DeleteVerifiedEmailAddressCommand"
  let make = (~emailAddress, ()) => new({emailAddress: emailAddress})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteTemplate = {
  type t
  @ocaml.doc("<p>Represents a request to delete an email template. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the template to be deleted.</p>") @as("TemplateName")
    templateName: templateName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "DeleteTemplateCommand"
  let make = (~templateName, ()) => new({templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteReceiptRuleSet = {
  type t
  @ocaml.doc("<p>Represents a request to delete a receipt rule set and all of the receipt rules it
            contains. You use receipt rule sets to receive email with Amazon SES. For more information,
            see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the receipt rule set to delete.</p>") @as("RuleSetName")
    ruleSetName: receiptRuleSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "DeleteReceiptRuleSetCommand"
  let make = (~ruleSetName, ()) => new({ruleSetName: ruleSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteReceiptRule = {
  type t
  @ocaml.doc("<p>Represents a request to delete a receipt rule. You use receipt rules to receive email
            with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the receipt rule to delete.</p>") @as("RuleName")
    ruleName: receiptRuleName,
    @ocaml.doc("<p>The name of the receipt rule set that contains the receipt rule to delete.</p>")
    @as("RuleSetName")
    ruleSetName: receiptRuleSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "DeleteReceiptRuleCommand"
  let make = (~ruleName, ~ruleSetName, ()) => new({ruleName, ruleSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteReceiptFilter = {
  type t
  @ocaml.doc("<p>Represents a request to delete an IP address filter. You use IP address filters when
            you receive email with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the IP address filter to delete.</p>") @as("FilterName")
    filterName: receiptFilterName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "DeleteReceiptFilterCommand"
  let make = (~filterName, ()) => new({filterName: filterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteIdentityPolicy = {
  type t
  @ocaml.doc("<p>Represents a request to delete a sending authorization policy for an identity. Sending
            authorization is an Amazon SES feature that enables you to authorize other senders to use
            your identities. For information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the policy to be deleted.</p>") @as("PolicyName")
    policyName: policyName,
    @ocaml.doc("<p>The identity that is associated with the policy that you want to delete. You can
            specify the identity by using its name or by using its Amazon Resource Name (ARN).
            Examples: <code>user@example.com</code>, <code>example.com</code>,
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
        <p>To successfully call this API, you must own the identity.</p>")
    @as("Identity")
    identity: identity,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "DeleteIdentityPolicyCommand"
  let make = (~policyName, ~identity, ()) => new({policyName, identity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteIdentity = {
  type t
  @ocaml.doc("<p>Represents a request to delete one of your Amazon SES identities (an email address or
            domain).</p>")
  type request = {
    @ocaml.doc("<p>The identity to be removed from the list of identities for the AWS Account.</p>")
    @as("Identity")
    identity: identity,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "DeleteIdentityCommand"
  let make = (~identity, ()) => new({identity: identity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteCustomVerificationEmailTemplate = {
  type t
  @ocaml.doc(
    "<p>Represents a request to delete an existing custom verification email template.</p>"
  )
  type request = {
    @ocaml.doc("<p>The name of the custom verification email template that you want to delete.</p>")
    @as("TemplateName")
    templateName: templateName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "DeleteCustomVerificationEmailTemplateCommand"
  let make = (~templateName, ()) => new({templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteConfigurationSetTrackingOptions = {
  type t
  @ocaml.doc("<p>Represents a request to delete open and click tracking options in a configuration set.
        </p>")
  type request = {
    @ocaml.doc("<p>The name of the configuration set from which you want to delete the tracking
            options.</p>")
    @as("ConfigurationSetName")
    configurationSetName: configurationSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "DeleteConfigurationSetTrackingOptionsCommand"
  let make = (~configurationSetName, ()) => new({configurationSetName: configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteConfigurationSetEventDestination = {
  type t
  @ocaml.doc("<p>Represents a request to delete a configuration set event destination. Configuration
            set event destinations are associated with configuration sets, which enable you to
            publish email sending events. For information about using configuration sets, see the
                <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the event destination to delete.</p>") @as("EventDestinationName")
    eventDestinationName: eventDestinationName,
    @ocaml.doc(
      "<p>The name of the configuration set from which to delete the event destination.</p>"
    )
    @as("ConfigurationSetName")
    configurationSetName: configurationSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "DeleteConfigurationSetEventDestinationCommand"
  let make = (~eventDestinationName, ~configurationSetName, ()) =>
    new({eventDestinationName, configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteConfigurationSet = {
  type t
  @ocaml.doc("<p>Represents a request to delete a configuration set. Configuration sets enable you to
            publish email sending events. For information about using configuration sets, see the
                <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the configuration set to delete.</p>") @as("ConfigurationSetName")
    configurationSetName: configurationSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "DeleteConfigurationSetCommand"
  let make = (~configurationSetName, ()) => new({configurationSetName: configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateReceiptRuleSet = {
  type t
  @ocaml.doc("<p>Represents a request to create an empty receipt rule set. You use receipt rule sets to
            receive email with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the rule set to create. The name must:</p>
        <ul>
            <li>
                <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
                    underscores (_), or dashes (-).</p>
            </li>
            <li>
                <p>Start and end with a letter or number.</p>
            </li>
            <li>
                <p>Contain less than 64 characters.</p>
            </li>
         </ul>")
    @as("RuleSetName")
    ruleSetName: receiptRuleSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "CreateReceiptRuleSetCommand"
  let make = (~ruleSetName, ()) => new({ruleSetName: ruleSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateCustomVerificationEmailTemplate = {
  type t
  @ocaml.doc("<p>Represents a request to create a custom verification email template.</p>")
  type request = {
    @ocaml.doc("<p>The URL that the recipient of the verification email is sent to if his or her address
            is not successfully verified.</p>")
    @as("FailureRedirectionURL")
    failureRedirectionURL: failureRedirectionURL,
    @ocaml.doc("<p>The URL that the recipient of the verification email is sent to if his or her address
            is successfully verified.</p>")
    @as("SuccessRedirectionURL")
    successRedirectionURL: successRedirectionURL,
    @ocaml.doc("<p>The content of the custom verification email. The total size of the email must be less
            than 10 MB. The message body may contain HTML, with some limitations. For more
            information, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html#custom-verification-emails-faq\">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES
                Developer Guide</i>.</p>")
    @as("TemplateContent")
    templateContent: templateContent,
    @ocaml.doc("<p>The subject line of the custom verification email.</p>") @as("TemplateSubject")
    templateSubject: subject,
    @ocaml.doc("<p>The email address that the custom verification email is sent from.</p>")
    @as("FromEmailAddress")
    fromEmailAddress: fromAddress,
    @ocaml.doc("<p>The name of the custom verification email template.</p>") @as("TemplateName")
    templateName: templateName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "CreateCustomVerificationEmailTemplateCommand"
  let make = (
    ~failureRedirectionURL,
    ~successRedirectionURL,
    ~templateContent,
    ~templateSubject,
    ~fromEmailAddress,
    ~templateName,
    (),
  ) =>
    new({
      failureRedirectionURL,
      successRedirectionURL,
      templateContent,
      templateSubject,
      fromEmailAddress,
      templateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CloneReceiptRuleSet = {
  type t
  @ocaml.doc("<p>Represents a request to create a receipt rule set by cloning an existing one. You use
            receipt rule sets to receive email with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the rule set to clone.</p>") @as("OriginalRuleSetName")
    originalRuleSetName: receiptRuleSetName,
    @ocaml.doc("<p>The name of the rule set to create. The name must:</p>
        <ul>
            <li>
                <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
                    underscores (_), or dashes (-).</p>
            </li>
            <li>
                <p>Start and end with a letter or number.</p>
            </li>
            <li>
                <p>Contain less than 64 characters.</p>
            </li>
         </ul>")
    @as("RuleSetName")
    ruleSetName: receiptRuleSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "CloneReceiptRuleSetCommand"
  let make = (~originalRuleSetName, ~ruleSetName, ()) => new({originalRuleSetName, ruleSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module VerifyDomainDkim = {
  type t
  @ocaml.doc("<p>Represents a request to generate the CNAME records needed to set up Easy DKIM with
            Amazon SES. For more information about setting up Easy DKIM, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the domain to be verified for Easy DKIM signing.</p>") @as("Domain")
    domain: domain,
  }
  @ocaml.doc("<p>Returns CNAME records that you must publish to the DNS server of your domain to set up
            Easy DKIM with Amazon SES.</p>")
  type response = {
    @ocaml.doc("<p>A set of character strings that represent the domain's identity. If the identity is an
            email address, the tokens represent the domain of that address.</p>
        <p>Using these tokens, you need to create DNS CNAME records that point to DKIM public
            keys that are hosted by Amazon SES. Amazon Web Services eventually detects that you've updated your DNS
            records. This detection process might take up to 72 hours. After successful detection,
            Amazon SES is able to DKIM-sign email originating from that domain. (This only applies to
            domain identities, not email address identities.)</p>
        <p>For more information about creating DNS records using DKIM tokens, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Amazon SES Developer
                Guide</a>.</p>")
    @as("DkimTokens")
    dkimTokens: verificationTokenList,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "VerifyDomainDkimCommand"
  let make = (~domain, ()) => new({domain: domain})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateTemplate = {
  type t
  type request = {@as("Template") template: template}
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "UpdateTemplateCommand"
  let make = (~template, ()) => new({template: template})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateConfigurationSetTrackingOptions = {
  type t
  @ocaml.doc("<p>Represents a request to update the tracking options for a configuration set. </p>")
  type request = {
    @as("TrackingOptions") trackingOptions: trackingOptions,
    @ocaml.doc("<p>The name of the configuration set for which you want to update the custom tracking
            domain.</p>")
    @as("ConfigurationSetName")
    configurationSetName: configurationSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "UpdateConfigurationSetTrackingOptionsCommand"
  let make = (~trackingOptions, ~configurationSetName, ()) =>
    new({trackingOptions, configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ReorderReceiptRuleSet = {
  type t
  @ocaml.doc("<p>Represents a request to reorder the receipt rules within a receipt rule set. You use
            receipt rule sets to receive email with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A list of the specified receipt rule set's receipt rules in the order that you want to
            put them.</p>")
    @as("RuleNames")
    ruleNames: receiptRuleNamesList,
    @ocaml.doc("<p>The name of the receipt rule set to reorder.</p>") @as("RuleSetName")
    ruleSetName: receiptRuleSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "ReorderReceiptRuleSetCommand"
  let make = (~ruleNames, ~ruleSetName, ()) => new({ruleNames, ruleSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutConfigurationSetDeliveryOptions = {
  type t
  @ocaml.doc("<p>A request to modify the delivery options for a configuration set.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether messages that use the configuration set are required to use
            Transport Layer Security (TLS).</p>")
    @as("DeliveryOptions")
    deliveryOptions: option<deliveryOptions>,
    @ocaml.doc("<p>The name of the configuration set that you want to specify the delivery options
            for.</p>")
    @as("ConfigurationSetName")
    configurationSetName: configurationSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "PutConfigurationSetDeliveryOptionsCommand"
  let make = (~configurationSetName, ~deliveryOptions=?, ()) =>
    new({deliveryOptions, configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListVerifiedEmailAddresses = {
  type t
  type request = {.}
  @ocaml.doc("<p>A list of email addresses that you have verified with Amazon SES under your AWS
            account.</p>")
  type response = {
    @ocaml.doc("<p>A list of email addresses that have been verified.</p>")
    @as("VerifiedEmailAddresses")
    verifiedEmailAddresses: option<addressList>,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "ListVerifiedEmailAddressesCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListIdentityPolicies = {
  type t
  @ocaml.doc("<p>Represents a request to return a list of sending authorization policies that are
            attached to an identity. Sending authorization is an Amazon SES feature that enables you to
            authorize other senders to use your identities. For information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The identity that is associated with the policy for which the policies will be listed.
            You can specify an identity by using its name or by using its Amazon Resource Name
            (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>,
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
        <p>To successfully call this API, you must own the identity.</p>")
    @as("Identity")
    identity: identity,
  }
  @ocaml.doc("<p>A list of names of sending authorization policies that apply to an identity.</p>")
  type response = {
    @ocaml.doc("<p>A list of names of policies that apply to the specified identity.</p>")
    @as("PolicyNames")
    policyNames: policyNameList,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "ListIdentityPoliciesCommand"
  let make = (~identity, ()) => new({identity: identity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListIdentities = {
  type t
  @ocaml.doc("<p>Represents a request to return a list of all identities (email addresses and domains)
            that you have attempted to verify under your AWS account, regardless of verification
            status.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of identities per page. Possible values are 1-1000
            inclusive.</p>")
    @as("MaxItems")
    maxItems: option<maxItems>,
    @ocaml.doc("<p>The token to use for pagination.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of the identities to list. Possible values are \"EmailAddress\" and \"Domain\".
            If this parameter is omitted, then all identities will be listed.</p>")
    @as("IdentityType")
    identityType: option<identityType>,
  }
  @ocaml.doc("<p>A list of all identities that you have attempted to verify under your AWS account,
            regardless of verification status.</p>")
  type response = {
    @ocaml.doc("<p>The token used for pagination.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of identities.</p>") @as("Identities") identities: identityList,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "ListIdentitiesCommand"
  let make = (~maxItems=?, ~nextToken=?, ~identityType=?, ()) =>
    new({maxItems, nextToken, identityType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the template you want to retrieve.</p>") @as("TemplateName")
    templateName: templateName,
  }
  type response = {@as("Template") template: option<template>}
  @module("@aws-sdk/client-ses") @new external new: request => t = "GetTemplateCommand"
  let make = (~templateName, ()) => new({templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetIdentityPolicies = {
  type t
  @ocaml.doc("<p>Represents a request to return the requested sending authorization policies for an
            identity. Sending authorization is an Amazon SES feature that enables you to authorize other
            senders to use your identities. For information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A list of the names of policies to be retrieved. You can retrieve a maximum of 20
            policies at a time. If you do not know the names of the policies that are attached to
            the identity, you can use <code>ListIdentityPolicies</code>.</p>")
    @as("PolicyNames")
    policyNames: policyNameList,
    @ocaml.doc("<p>The identity for which the policies will be retrieved. You can specify an identity by
            using its name or by using its Amazon Resource Name (ARN). Examples:
                <code>user@example.com</code>, <code>example.com</code>,
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
        <p>To successfully call this API, you must own the identity.</p>")
    @as("Identity")
    identity: identity,
  }
  @ocaml.doc("<p>Represents the requested sending authorization policies.</p>")
  type response = {
    @ocaml.doc("<p>A map of policy names to policies.</p>") @as("Policies") policies: policyMap,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "GetIdentityPoliciesCommand"
  let make = (~policyNames, ~identity, ()) => new({policyNames, identity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateTemplate = {
  type t
  @ocaml.doc("<p>Represents a request to create an email template. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The content of the email, composed of a subject line, an HTML part, and a text-only
            part.</p>")
    @as("Template")
    template: template,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "CreateTemplateCommand"
  let make = (~template, ()) => new({template: template})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateConfigurationSetTrackingOptions = {
  type t
  @ocaml.doc("<p>Represents a request to create an open and click tracking option object in a
            configuration set. </p>")
  type request = {
    @as("TrackingOptions") trackingOptions: trackingOptions,
    @ocaml.doc("<p>The name of the configuration set that the tracking options should be associated
            with.</p>")
    @as("ConfigurationSetName")
    configurationSetName: configurationSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "CreateConfigurationSetTrackingOptionsCommand"
  let make = (~trackingOptions, ~configurationSetName, ()) =>
    new({trackingOptions, configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateConfigurationSet = {
  type t
  @ocaml.doc("<p>Represents a request to create a configuration set. Configuration sets enable you to
            publish email sending events. For information about using configuration sets, see the
                <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A data structure that contains the name of the configuration set.</p>")
    @as("ConfigurationSet")
    configurationSet: configurationSet,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "CreateConfigurationSetCommand"
  let make = (~configurationSet, ()) => new({configurationSet: configurationSet})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SendTemplatedEmail = {
  type t
  @ocaml.doc("<p>Represents a request to send a templated email using Amazon SES. For more information, see
            the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A list of replacement values to apply to the template. This parameter is a JSON
            object, typically consisting of key-value pairs in which the keys correspond to
            replacement tags in the email template.</p>")
    @as("TemplateData")
    templateData: templateData,
    @ocaml.doc("<p>The ARN of the template to use when sending this email.</p>") @as("TemplateArn")
    templateArn: option<amazonResourceName>,
    @ocaml.doc("<p>The template to use when sending this email.</p>") @as("Template")
    template: templateName,
    @ocaml.doc("<p>The name of the configuration set to use when you send an email using
                <code>SendTemplatedEmail</code>.</p>")
    @as("ConfigurationSetName")
    configurationSetName: option<configurationSetName>,
    @ocaml.doc("<p>A list of tags, in the form of name/value pairs, to apply to an email that you send
            using <code>SendTemplatedEmail</code>. Tags correspond to characteristics of the email
            that you define, so that you can publish email sending events.</p>")
    @as("Tags")
    tags: option<messageTagList>,
    @ocaml.doc("<p>This parameter is used only for sending authorization. It is the ARN of the identity
            that is associated with the sending authorization policy that permits you to use the
            email address specified in the <code>ReturnPath</code> parameter.</p>
        <p>For example, if the owner of <code>example.com</code> (which has ARN
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
            policy to it that authorizes you to use <code>feedback@example.com</code>, then you
            would specify the <code>ReturnPathArn</code> to be
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
                <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
        <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer
                Guide</a>.</p>")
    @as("ReturnPathArn")
    returnPathArn: option<amazonResourceName>,
    @ocaml.doc("<p>This parameter is used only for sending authorization. It is the ARN of the identity
            that is associated with the sending authorization policy that permits you to send for
            the email address specified in the <code>Source</code> parameter.</p>
        <p>For example, if the owner of <code>example.com</code> (which has ARN
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
            policy to it that authorizes you to send from <code>user@example.com</code>, then you
            would specify the <code>SourceArn</code> to be
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
                <code>Source</code> to be <code>user@example.com</code>.</p>
        <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer
                Guide</a>.</p>")
    @as("SourceArn")
    sourceArn: option<amazonResourceName>,
    @ocaml.doc("<p>The email address that bounces and complaints will be forwarded to when feedback
            forwarding is enabled. If the message cannot be delivered to the recipient, then an
            error message will be returned from the recipient's ISP; this message will then be
            forwarded to the email address specified by the <code>ReturnPath</code> parameter. The
                <code>ReturnPath</code> parameter is never overwritten. This email address must be
            either individually verified with Amazon SES, or from a domain that has been verified with
            Amazon SES. </p>")
    @as("ReturnPath")
    returnPath: option<address>,
    @ocaml.doc("<p>The reply-to email address(es) for the message. If the recipient replies to the
            message, each reply-to address will receive the reply.</p>")
    @as("ReplyToAddresses")
    replyToAddresses: option<addressList>,
    @ocaml.doc("<p>The destination for this email, composed of To:, CC:, and BCC: fields. A Destination
            can include up to 50 recipients across these three fields.</p>")
    @as("Destination")
    destination: destination,
    @ocaml.doc("<p>The email address that is sending the email. This email address must be either
            individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
            For information about verifying identities, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html\">Amazon SES Developer
                Guide</a>.</p>
        <p>If you are sending on behalf of another user and have been permitted to do so by a
            sending authorization policy, then you must also specify the <code>SourceArn</code>
            parameter. For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>
        <note>
            <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href=\"https://tools.ietf.org/html/rfc6531\">RFC6531</a>. For this reason, the
                    <i>local part</i> of a source email address (the part of the email
                address that precedes the @ sign) may only contain <a href=\"https://en.wikipedia.org/wiki/Email_address#Local-part\">7-bit ASCII
                    characters</a>. If the <i>domain part</i> of an address (the
                part after the @ sign) contains non-ASCII characters, they must be encoded using
                Punycode, as described in <a href=\"https://tools.ietf.org/html/rfc3492.html\">RFC3492</a>. The sender name (also known as the <i>friendly
                    name</i>) may contain non-ASCII characters. These characters must be
                encoded using MIME encoded-word syntax, as described in<a href=\"https://tools.ietf.org/html/rfc2047\">RFC 2047</a>. MIME encoded-word
                syntax uses the following form:
                <code>=?charset?encoding?encoded-text?=</code>.</p>
        </note>")
    @as("Source")
    source: address,
  }
  type response = {
    @ocaml.doc("<p>The unique message identifier returned from the <code>SendTemplatedEmail</code>
            action. </p>")
    @as("MessageId")
    messageId: messageId,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "SendTemplatedEmailCommand"
  let make = (
    ~templateData,
    ~template,
    ~destination,
    ~source,
    ~templateArn=?,
    ~configurationSetName=?,
    ~tags=?,
    ~returnPathArn=?,
    ~sourceArn=?,
    ~returnPath=?,
    ~replyToAddresses=?,
    (),
  ) =>
    new({
      templateData,
      templateArn,
      template,
      configurationSetName,
      tags,
      returnPathArn,
      sourceArn,
      returnPath,
      replyToAddresses,
      destination,
      source,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SendRawEmail = {
  type t
  @ocaml.doc("<p>Represents a request to send a single raw email using Amazon SES. For more information, see
            the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html\">Amazon SES Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the configuration set to use when you send an email using
                <code>SendRawEmail</code>.</p>")
    @as("ConfigurationSetName")
    configurationSetName: option<configurationSetName>,
    @ocaml.doc("<p>A list of tags, in the form of name/value pairs, to apply to an email that you send
            using <code>SendRawEmail</code>. Tags correspond to characteristics of the email that
            you define, so that you can publish email sending events.</p>")
    @as("Tags")
    tags: option<messageTagList>,
    @ocaml.doc("<p>This parameter is used only for sending authorization. It is the ARN of the identity
            that is associated with the sending authorization policy that permits you to use the
            email address specified in the <code>ReturnPath</code> parameter.</p>
        <p>For example, if the owner of <code>example.com</code> (which has ARN
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
            policy to it that authorizes you to use <code>feedback@example.com</code>, then you
            would specify the <code>ReturnPathArn</code> to be
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
                <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
        <p>Instead of using this parameter, you can use the X-header
                <code>X-SES-RETURN-PATH-ARN</code> in the raw message of the email. If you use both
            the <code>ReturnPathArn</code> parameter and the corresponding X-header, Amazon SES uses the
            value of the <code>ReturnPathArn</code> parameter.</p>
        <note>
            <p>For information about when to use this parameter, see the description of
                    <code>SendRawEmail</code> in this guide, or see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html\">Amazon SES Developer Guide</a>.</p>
        </note>")
    @as("ReturnPathArn")
    returnPathArn: option<amazonResourceName>,
    @ocaml.doc("<p>This parameter is used only for sending authorization. It is the ARN of the identity
            that is associated with the sending authorization policy that permits you to send for
            the email address specified in the <code>Source</code> parameter.</p>
        <p>For example, if the owner of <code>example.com</code> (which has ARN
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
            policy to it that authorizes you to send from <code>user@example.com</code>, then you
            would specify the <code>SourceArn</code> to be
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
                <code>Source</code> to be <code>user@example.com</code>.</p>
        <p>Instead of using this parameter, you can use the X-header
                <code>X-SES-SOURCE-ARN</code> in the raw message of the email. If you use both the
                <code>SourceArn</code> parameter and the corresponding X-header, Amazon SES uses the
            value of the <code>SourceArn</code> parameter.</p>
        <note>
            <p>For information about when to use this parameter, see the description of
                    <code>SendRawEmail</code> in this guide, or see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html\">Amazon SES Developer Guide</a>.</p>
        </note>")
    @as("SourceArn")
    sourceArn: option<amazonResourceName>,
    @ocaml.doc("<p>This parameter is used only for sending authorization. It is the ARN of the identity
            that is associated with the sending authorization policy that permits you to specify a
            particular \"From\" address in the header of the raw email.</p>
        <p>Instead of using this parameter, you can use the X-header <code>X-SES-FROM-ARN</code>
            in the raw message of the email. If you use both the <code>FromArn</code> parameter and
            the corresponding X-header, Amazon SES uses the value of the <code>FromArn</code>
            parameter.</p>
        <note>
            <p>For information about when to use this parameter, see the description of
                    <code>SendRawEmail</code> in this guide, or see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html\">Amazon SES Developer Guide</a>.</p>
        </note>")
    @as("FromArn")
    fromArn: option<amazonResourceName>,
    @ocaml.doc("<p>The raw email message itself. The message has to meet the following criteria:</p>
        <ul>
            <li>
                <p>The message has to contain a header and a body, separated by a blank
                    line.</p>
            </li>
            <li>
                <p>All of the required header fields must be present in the message.</p>
            </li>
            <li>
                <p>Each part of a multipart MIME message must be formatted properly.</p>
            </li>
            <li>
                <p>Attachments must be of a content type that Amazon SES supports. For a list on
                    unsupported content types, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types.html\">Unsupported Attachment
                        Types</a> in the <i>Amazon SES Developer Guide</i>.</p>
            </li>
            <li>
                <p>The entire message must be base64-encoded.</p>
            </li>
            <li>
                <p>If any of the MIME parts in your message contain content that is outside of
                    the 7-bit ASCII character range, we highly recommend that you encode that
                    content. For more information, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html\">Sending Raw Email</a> in the <i>Amazon SES Developer
                    Guide</i>.</p>
            </li>
            <li>
                <p>Per <a href=\"https://tools.ietf.org/html/rfc5321#section-4.5.3.1.6\">RFC
                        5321</a>, the maximum length of each line of text, including the
                    <CRLF>, must not exceed 1,000 characters.</p>
            </li>
         </ul>")
    @as("RawMessage")
    rawMessage: rawMessage,
    @ocaml.doc("<p>A list of destinations for the message, consisting of To:, CC:, and BCC:
            addresses.</p>")
    @as("Destinations")
    destinations: option<addressList>,
    @ocaml.doc("<p>The identity's email address. If you do not provide a value for this parameter, you
            must specify a \"From\" address in the raw text of the message. (You can also specify
            both.)</p>
        <note>
            <p>Amazon SES does not support the SMTPUTF8 extension, as described in<a href=\"https://tools.ietf.org/html/rfc6531\">RFC6531</a>. For this reason, the
                    <i>local part</i> of a source email address (the part of the email
                address that precedes the @ sign) may only contain <a href=\"https://en.wikipedia.org/wiki/Email_address#Local-part\">7-bit ASCII
                    characters</a>. If the <i>domain part</i> of an address (the
                part after the @ sign) contains non-ASCII characters, they must be encoded using
                Punycode, as described in <a href=\"https://tools.ietf.org/html/rfc3492.html\">RFC3492</a>. The sender name (also known as the <i>friendly
                    name</i>) may contain non-ASCII characters. These characters must be
                encoded using MIME encoded-word syntax, as described in <a href=\"https://tools.ietf.org/html/rfc2047\">RFC 2047</a>. MIME encoded-word
                syntax uses the following form:
                <code>=?charset?encoding?encoded-text?=</code>.</p>
        </note>

        <p>If you specify the <code>Source</code> parameter and have feedback forwarding enabled,
            then bounces and complaints will be sent to this email address. This takes precedence
            over any Return-Path header that you might include in the raw text of the
            message.</p>")
    @as("Source")
    source: option<address>,
  }
  @ocaml.doc("<p>Represents a unique message ID.</p>")
  type response = {
    @ocaml.doc("<p>The unique message identifier returned from the <code>SendRawEmail</code> action.
        </p>")
    @as("MessageId")
    messageId: messageId,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "SendRawEmailCommand"
  let make = (
    ~rawMessage,
    ~configurationSetName=?,
    ~tags=?,
    ~returnPathArn=?,
    ~sourceArn=?,
    ~fromArn=?,
    ~destinations=?,
    ~source=?,
    (),
  ) =>
    new({
      configurationSetName,
      tags,
      returnPathArn,
      sourceArn,
      fromArn,
      rawMessage,
      destinations,
      source,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of templates to return. This value must be at least 1 and less than
            or equal to 10. If you do not specify a value, or if you specify a value less than 1 or
            greater than 10, the operation will return up to 10 results.</p>")
    @as("MaxItems")
    maxItems: option<maxItems>,
    @ocaml.doc("<p>A token returned from a previous call to <code>ListTemplates</code> to indicate the
            position in the list of email templates.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A token indicating that there are additional email templates available to be listed.
            Pass this token to a subsequent call to <code>ListTemplates</code> to retrieve the next
            50 email templates.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array the contains the name and creation time stamp for each template in your Amazon SES
            account.</p>")
    @as("TemplatesMetadata")
    templatesMetadata: option<templateMetadataList>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "ListTemplatesCommand"
  let make = (~maxItems=?, ~nextToken=?, ()) => new({maxItems, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListReceiptRuleSets = {
  type t
  @ocaml.doc("<p>Represents a request to list the receipt rule sets that exist under your AWS account.
            You use receipt rule sets to receive email with Amazon SES. For more information, see the
                <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A token returned from a previous call to <code>ListReceiptRuleSets</code> to indicate
            the position in the receipt rule set list.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>A list of receipt rule sets that exist under your AWS account.</p>")
  type response = {
    @ocaml.doc("<p>A token indicating that there are additional receipt rule sets available to be listed.
            Pass this token to successive calls of <code>ListReceiptRuleSets</code> to retrieve up
            to 100 receipt rule sets at a time.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The metadata for the currently active receipt rule set. The metadata consists of the
            rule set name and the timestamp of when the rule set was created.</p>")
    @as("RuleSets")
    ruleSets: option<receiptRuleSetsLists>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "ListReceiptRuleSetsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListCustomVerificationEmailTemplates = {
  type t
  @ocaml.doc("<p>Represents a request to list the existing custom verification email templates for your
            account.</p>
        <p>For more information about custom verification email templates, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html\">Using Custom
                Verification Email Templates</a> in the <i>Amazon SES Developer
                Guide</i>.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of custom verification email templates to return. This value must
            be at least 1 and less than or equal to 50. If you do not specify a value, or if you
            specify a value less than 1 or greater than 50, the operation will return up to 50
            results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An array the contains the name and creation time stamp for each template in your Amazon SES
            account.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>A paginated list of custom verification email templates.</p>")
  type response = {
    @ocaml.doc("<p>A token indicating that there are additional custom verification email templates
            available to be listed. Pass this token to a subsequent call to
                <code>ListTemplates</code> to retrieve the next 50 custom verification email
            templates.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of the custom verification email templates that exist in your account.</p>"
    )
    @as("CustomVerificationEmailTemplates")
    customVerificationEmailTemplates: option<customVerificationEmailTemplates>,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "ListCustomVerificationEmailTemplatesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListConfigurationSets = {
  type t
  @ocaml.doc("<p>Represents a request to list the configuration sets associated with your AWS account.
            Configuration sets enable you to publish email sending events. For information about
            using configuration sets, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The number of configuration sets to return.</p>") @as("MaxItems")
    maxItems: option<maxItems>,
    @ocaml.doc("<p>A token returned from a previous call to <code>ListConfigurationSets</code> to
            indicate the position of the configuration set in the configuration set list.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>A list of configuration sets associated with your AWS account. Configuration sets
            enable you to publish email sending events. For information about using configuration
            sets, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
  type response = {
    @ocaml.doc("<p>A token indicating that there are additional configuration sets available to be
            listed. Pass this token to successive calls of <code>ListConfigurationSets</code>.
        </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of configuration sets.</p>") @as("ConfigurationSets")
    configurationSets: option<configurationSets>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "ListConfigurationSetsCommand"
  let make = (~maxItems=?, ~nextToken=?, ()) => new({maxItems, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSendStatistics = {
  type t
  type request = {.}
  @ocaml.doc("<p>Represents a list of data points. This list contains aggregated data from the previous
            two weeks of your sending activity with Amazon SES.</p>")
  type response = {
    @ocaml.doc("<p>A list of data points, each of which represents 15 minutes of activity.</p>")
    @as("SendDataPoints")
    sendDataPoints: option<sendDataPointList>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "GetSendStatisticsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetIdentityVerificationAttributes = {
  type t
  @ocaml.doc("<p>Represents a request to return the Amazon SES verification status of a list of identities.
            For domain identities, this request also returns the verification token. For information
            about verifying identities with Amazon SES, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A list of identities.</p>") @as("Identities") identities: identityList,
  }
  @ocaml.doc("<p>The Amazon SES verification status of a list of identities. For domain identities, this
            response also contains the verification token.</p>")
  type response = {
    @ocaml.doc("<p>A map of Identities to IdentityVerificationAttributes objects.</p>")
    @as("VerificationAttributes")
    verificationAttributes: verificationAttributes,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "GetIdentityVerificationAttributesCommand"
  let make = (~identities, ()) => new({identities: identities})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetIdentityNotificationAttributes = {
  type t
  @ocaml.doc("<p>Represents a request to return the notification attributes for a list of identities
            you verified with Amazon SES. For information about Amazon SES notifications, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html\">Amazon SES
                Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A list of one or more identities. You can specify an identity by using its name or by
            using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>,
                <code>example.com</code>,
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>")
    @as("Identities")
    identities: identityList,
  }
  @ocaml.doc("<p>Represents the notification attributes for a list of identities.</p>")
  type response = {
    @ocaml.doc("<p>A map of Identity to IdentityNotificationAttributes.</p>")
    @as("NotificationAttributes")
    notificationAttributes: notificationAttributes,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "GetIdentityNotificationAttributesCommand"
  let make = (~identities, ()) => new({identities: identities})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetIdentityMailFromDomainAttributes = {
  type t
  @ocaml.doc("<p>Represents a request to return the Amazon SES custom MAIL FROM attributes for a list of
            identities. For information about using a custom MAIL FROM domain, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A list of one or more identities.</p>") @as("Identities")
    identities: identityList,
  }
  @ocaml.doc("<p>Represents the custom MAIL FROM attributes for a list of identities.</p>")
  type response = {
    @ocaml.doc("<p>A map of identities to custom MAIL FROM attributes.</p>")
    @as("MailFromDomainAttributes")
    mailFromDomainAttributes: mailFromDomainAttributes,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "GetIdentityMailFromDomainAttributesCommand"
  let make = (~identities, ()) => new({identities: identities})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateReceiptFilter = {
  type t
  @ocaml.doc("<p>Represents a request to create a new IP address filter. You use IP address filters
            when you receive email with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A data structure that describes the IP address filter to create, which consists of a
            name, an IP address range, and whether to allow or block mail from it.</p>")
    @as("Filter")
    filter: receiptFilter,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "CreateReceiptFilterCommand"
  let make = (~filter, ()) => new({filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SendEmail = {
  type t
  @ocaml.doc("<p>Represents a request to send a single formatted email using Amazon SES. For more
            information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-formatted.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the configuration set to use when you send an email using
                <code>SendEmail</code>.</p>")
    @as("ConfigurationSetName")
    configurationSetName: option<configurationSetName>,
    @ocaml.doc("<p>A list of tags, in the form of name/value pairs, to apply to an email that you send
            using <code>SendEmail</code>. Tags correspond to characteristics of the email that you
            define, so that you can publish email sending events.</p>")
    @as("Tags")
    tags: option<messageTagList>,
    @ocaml.doc("<p>This parameter is used only for sending authorization. It is the ARN of the identity
            that is associated with the sending authorization policy that permits you to use the
            email address specified in the <code>ReturnPath</code> parameter.</p>
        <p>For example, if the owner of <code>example.com</code> (which has ARN
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
            policy to it that authorizes you to use <code>feedback@example.com</code>, then you
            would specify the <code>ReturnPathArn</code> to be
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
                <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
        <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer
                Guide</a>.</p>")
    @as("ReturnPathArn")
    returnPathArn: option<amazonResourceName>,
    @ocaml.doc("<p>This parameter is used only for sending authorization. It is the ARN of the identity
            that is associated with the sending authorization policy that permits you to send for
            the email address specified in the <code>Source</code> parameter.</p>
        <p>For example, if the owner of <code>example.com</code> (which has ARN
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
            policy to it that authorizes you to send from <code>user@example.com</code>, then you
            would specify the <code>SourceArn</code> to be
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
                <code>Source</code> to be <code>user@example.com</code>.</p>
        <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer
                Guide</a>.</p>")
    @as("SourceArn")
    sourceArn: option<amazonResourceName>,
    @ocaml.doc("<p>The email address that bounces and complaints will be forwarded to when feedback
            forwarding is enabled. If the message cannot be delivered to the recipient, then an
            error message will be returned from the recipient's ISP; this message will then be
            forwarded to the email address specified by the <code>ReturnPath</code> parameter. The
                <code>ReturnPath</code> parameter is never overwritten. This email address must be
            either individually verified with Amazon SES, or from a domain that has been verified with
            Amazon SES. </p>")
    @as("ReturnPath")
    returnPath: option<address>,
    @ocaml.doc("<p>The reply-to email address(es) for the message. If the recipient replies to the
            message, each reply-to address will receive the reply.</p>")
    @as("ReplyToAddresses")
    replyToAddresses: option<addressList>,
    @ocaml.doc("<p>The message to be sent.</p>") @as("Message") message: message,
    @ocaml.doc("<p>The destination for this email, composed of To:, CC:, and BCC: fields.</p>")
    @as("Destination")
    destination: destination,
    @ocaml.doc("<p>The email address that is sending the email. This email address must be either
            individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
            For information about verifying identities, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html\">Amazon SES Developer
                Guide</a>.</p>
        <p>If you are sending on behalf of another user and have been permitted to do so by a
            sending authorization policy, then you must also specify the <code>SourceArn</code>
            parameter. For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>
        <note>
            <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href=\"https://tools.ietf.org/html/rfc6531\">RFC6531</a>. For this reason, the
                    <i>local part</i> of a source email address (the part of the email
                address that precedes the @ sign) may only contain <a href=\"https://en.wikipedia.org/wiki/Email_address#Local-part\">7-bit ASCII
                    characters</a>. If the <i>domain part</i> of an address (the
                part after the @ sign) contains non-ASCII characters, they must be encoded using
                Punycode, as described in <a href=\"https://tools.ietf.org/html/rfc3492.html\">RFC3492</a>. The sender name (also known as the <i>friendly
                    name</i>) may contain non-ASCII characters. These characters must be
                encoded using MIME encoded-word syntax, as described in <a href=\"https://tools.ietf.org/html/rfc2047\">RFC 2047</a>. MIME encoded-word
                syntax uses the following form:
                <code>=?charset?encoding?encoded-text?=</code>.</p>
        </note>")
    @as("Source")
    source: address,
  }
  @ocaml.doc("<p>Represents a unique message ID.</p>")
  type response = {
    @ocaml.doc(
      "<p>The unique message identifier returned from the <code>SendEmail</code> action. </p>"
    )
    @as("MessageId")
    messageId: messageId,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "SendEmailCommand"
  let make = (
    ~message,
    ~destination,
    ~source,
    ~configurationSetName=?,
    ~tags=?,
    ~returnPathArn=?,
    ~sourceArn=?,
    ~returnPath=?,
    ~replyToAddresses=?,
    (),
  ) =>
    new({
      configurationSetName,
      tags,
      returnPathArn,
      sourceArn,
      returnPath,
      replyToAddresses,
      message,
      destination,
      source,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListReceiptFilters = {
  type t
  type request = {.}
  @ocaml.doc("<p>A list of IP address filters that exist under your AWS account.</p>")
  type response = {
    @ocaml.doc("<p>A list of IP address filter data structures, which each consist of a name, an IP
            address range, and whether to allow or block mail from it.</p>")
    @as("Filters")
    filters: option<receiptFilterList>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "ListReceiptFiltersCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetIdentityDkimAttributes = {
  type t
  @ocaml.doc("<p>Represents a request for the status of Amazon SES Easy DKIM signing for an identity. For
            domain identities, this request also returns the DKIM tokens that are required for Easy
            DKIM signing, and whether Amazon SES successfully verified that these tokens were published.
            For more information about Easy DKIM, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Amazon SES Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc(
      "<p>A list of one or more verified identities - email addresses, domains, or both.</p>"
    )
    @as("Identities")
    identities: identityList,
  }
  @ocaml.doc("<p>Represents the status of Amazon SES Easy DKIM signing for an identity. For domain
            identities, this response also contains the DKIM tokens that are required for Easy DKIM
            signing, and whether Amazon SES successfully verified that these tokens were
            published.</p>")
  type response = {
    @ocaml.doc("<p>The DKIM attributes for an email address or a domain.</p>") @as("DkimAttributes")
    dkimAttributes: dkimAttributes,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "GetIdentityDkimAttributesCommand"
  let make = (~identities, ()) => new({identities: identities})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateReceiptRule = {
  type t
  @ocaml.doc("<p>Represents a request to update a receipt rule. You use receipt rules to receive email
            with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A data structure that contains the updated receipt rule information.</p>")
    @as("Rule")
    rule: receiptRule,
    @ocaml.doc("<p>The name of the receipt rule set that the receipt rule belongs to.</p>")
    @as("RuleSetName")
    ruleSetName: receiptRuleSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "UpdateReceiptRuleCommand"
  let make = (~rule, ~ruleSetName, ()) => new({rule, ruleSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateConfigurationSetEventDestination = {
  type t
  @ocaml.doc("<p>Represents a request to update the event destination of a configuration set.
            Configuration sets enable you to publish email sending events. For information about
            using configuration sets, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The event destination object that you want to apply to the specified configuration
            set.</p>")
    @as("EventDestination")
    eventDestination: eventDestination,
    @ocaml.doc("<p>The name of the configuration set that contains the event destination that you want to
            update.</p>")
    @as("ConfigurationSetName")
    configurationSetName: configurationSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "UpdateConfigurationSetEventDestinationCommand"
  let make = (~eventDestination, ~configurationSetName, ()) =>
    new({eventDestination, configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SendBulkTemplatedEmail = {
  type t
  @ocaml.doc("<p>Represents a request to send a templated email to multiple destinations using Amazon SES.
            For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>One or more <code>Destination</code> objects. All of the recipients in a
                <code>Destination</code> will receive the same version of the email. You can specify
            up to 50 <code>Destination</code> objects within a <code>Destinations</code>
            array.</p>")
    @as("Destinations")
    destinations: bulkEmailDestinationList,
    @ocaml.doc("<p>A list of replacement values to apply to the template when replacement data is not
            specified in a Destination object. These values act as a default or fallback option when
            no other data is available.</p>
        <p>The template data is a JSON object, typically consisting of key-value pairs in which
            the keys correspond to replacement tags in the email template.</p>")
    @as("DefaultTemplateData")
    defaultTemplateData: option<templateData>,
    @ocaml.doc("<p>The ARN of the template to use when sending this email.</p>") @as("TemplateArn")
    templateArn: option<amazonResourceName>,
    @ocaml.doc("<p>The template to use when sending this email.</p>") @as("Template")
    template: templateName,
    @ocaml.doc("<p>A list of tags, in the form of name/value pairs, to apply to an email that you send to
            a destination using <code>SendBulkTemplatedEmail</code>.</p>")
    @as("DefaultTags")
    defaultTags: option<messageTagList>,
    @ocaml.doc("<p>The name of the configuration set to use when you send an email using
                <code>SendBulkTemplatedEmail</code>.</p>")
    @as("ConfigurationSetName")
    configurationSetName: option<configurationSetName>,
    @ocaml.doc("<p>This parameter is used only for sending authorization. It is the ARN of the identity
            that is associated with the sending authorization policy that permits you to use the
            email address specified in the <code>ReturnPath</code> parameter.</p>
        <p>For example, if the owner of <code>example.com</code> (which has ARN
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
            policy to it that authorizes you to use <code>feedback@example.com</code>, then you
            would specify the <code>ReturnPathArn</code> to be
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
                <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p>
        <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer
                Guide</a>.</p>")
    @as("ReturnPathArn")
    returnPathArn: option<amazonResourceName>,
    @ocaml.doc("<p>The email address that bounces and complaints will be forwarded to when feedback
            forwarding is enabled. If the message cannot be delivered to the recipient, then an
            error message will be returned from the recipient's ISP; this message will then be
            forwarded to the email address specified by the <code>ReturnPath</code> parameter. The
                <code>ReturnPath</code> parameter is never overwritten. This email address must be
            either individually verified with Amazon SES, or from a domain that has been verified with
            Amazon SES. </p>")
    @as("ReturnPath")
    returnPath: option<address>,
    @ocaml.doc("<p>The reply-to email address(es) for the message. If the recipient replies to the
            message, each reply-to address will receive the reply.</p>")
    @as("ReplyToAddresses")
    replyToAddresses: option<addressList>,
    @ocaml.doc("<p>This parameter is used only for sending authorization. It is the ARN of the identity
            that is associated with the sending authorization policy that permits you to send for
            the email address specified in the <code>Source</code> parameter.</p>
        <p>For example, if the owner of <code>example.com</code> (which has ARN
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a
            policy to it that authorizes you to send from <code>user@example.com</code>, then you
            would specify the <code>SourceArn</code> to be
                <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the
                <code>Source</code> to be <code>user@example.com</code>.</p>
        <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer
                Guide</a>.</p>")
    @as("SourceArn")
    sourceArn: option<amazonResourceName>,
    @ocaml.doc("<p>The email address that is sending the email. This email address must be either
            individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.
            For information about verifying identities, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html\">Amazon SES Developer
                Guide</a>.</p>
        <p>If you are sending on behalf of another user and have been permitted to do so by a
            sending authorization policy, then you must also specify the <code>SourceArn</code>
            parameter. For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>
        <note>
            <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href=\"https://tools.ietf.org/html/rfc6531\">RFC6531</a>. For this reason, the
                    <i>local part</i> of a source email address (the part of the email
                address that precedes the @ sign) may only contain <a href=\"https://en.wikipedia.org/wiki/Email_address#Local-part\">7-bit ASCII
                    characters</a>. If the <i>domain part</i> of an address (the
                part after the @ sign) contains non-ASCII characters, they must be encoded using
                Punycode, as described in <a href=\"https://tools.ietf.org/html/rfc3492.html\">RFC3492</a>. The sender name (also known as the <i>friendly
                    name</i>) may contain non-ASCII characters. These characters must be
                encoded using MIME encoded-word syntax, as described in <a href=\"https://tools.ietf.org/html/rfc2047\">RFC 2047</a>. MIME encoded-word
                syntax uses the following form:
                <code>=?charset?encoding?encoded-text?=</code>.</p>
        </note>")
    @as("Source")
    source: address,
  }
  type response = {
    @ocaml.doc("<p>The unique message identifier returned from the <code>SendBulkTemplatedEmail</code>
            action.</p>")
    @as("Status")
    status: bulkEmailDestinationStatusList,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "SendBulkTemplatedEmailCommand"
  let make = (
    ~destinations,
    ~template,
    ~source,
    ~defaultTemplateData=?,
    ~templateArn=?,
    ~defaultTags=?,
    ~configurationSetName=?,
    ~returnPathArn=?,
    ~returnPath=?,
    ~replyToAddresses=?,
    ~sourceArn=?,
    (),
  ) =>
    new({
      destinations,
      defaultTemplateData,
      templateArn,
      template,
      defaultTags,
      configurationSetName,
      returnPathArn,
      returnPath,
      replyToAddresses,
      sourceArn,
      source,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeReceiptRule = {
  type t
  @ocaml.doc("<p>Represents a request to return the details of a receipt rule. You use receipt rules to
            receive email with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the receipt rule.</p>") @as("RuleName") ruleName: receiptRuleName,
    @ocaml.doc("<p>The name of the receipt rule set that the receipt rule belongs to.</p>")
    @as("RuleSetName")
    ruleSetName: receiptRuleSetName,
  }
  @ocaml.doc("<p>Represents the details of a receipt rule.</p>")
  type response = {
    @ocaml.doc("<p>A data structure that contains the specified receipt rule's name, actions, recipients,
            domains, enabled status, scan status, and Transport Layer Security (TLS) policy.</p>")
    @as("Rule")
    rule: option<receiptRule>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "DescribeReceiptRuleCommand"
  let make = (~ruleName, ~ruleSetName, ()) => new({ruleName, ruleSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateReceiptRule = {
  type t
  @ocaml.doc("<p>Represents a request to create a receipt rule. You use receipt rules to receive email
            with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A data structure that contains the specified rule's name, actions, recipients,
            domains, enabled status, scan status, and TLS policy.</p>")
    @as("Rule")
    rule: receiptRule,
    @ocaml.doc("<p>The name of an existing rule after which the new rule will be placed. If this
            parameter is null, the new rule will be inserted at the beginning of the rule
            list.</p>")
    @as("After")
    after: option<receiptRuleName>,
    @ocaml.doc("<p>The name of the rule set that the receipt rule will be added to.</p>")
    @as("RuleSetName")
    ruleSetName: receiptRuleSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new external new: request => t = "CreateReceiptRuleCommand"
  let make = (~rule, ~ruleSetName, ~after=?, ()) => new({rule, after, ruleSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateConfigurationSetEventDestination = {
  type t
  @ocaml.doc("<p>Represents a request to create a configuration set event destination. A configuration
            set event destination, which can be either Amazon CloudWatch or Amazon Kinesis Firehose, describes an AWS service
            in which Amazon SES publishes the email sending events associated with a configuration set.
            For information about using configuration sets, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>An object that describes the AWS service that email sending event information will
            be published to.</p>")
    @as("EventDestination")
    eventDestination: eventDestination,
    @ocaml.doc("<p>The name of the configuration set that the event destination should be associated
            with.</p>")
    @as("ConfigurationSetName")
    configurationSetName: configurationSetName,
  }
  type response = {.}
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "CreateConfigurationSetEventDestinationCommand"
  let make = (~eventDestination, ~configurationSetName, ()) =>
    new({eventDestination, configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SendBounce = {
  type t
  @ocaml.doc("<p>Represents a request to send a bounce message to the sender of an email you received
            through Amazon SES.</p>")
  type request = {
    @ocaml.doc("<p>This parameter is used only for sending authorization. It is the ARN of the identity
            that is associated with the sending authorization policy that permits you to use the
            address in the \"From\" header of the bounce. For more information about sending
            authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer
                Guide</a>.</p>")
    @as("BounceSenderArn")
    bounceSenderArn: option<amazonResourceName>,
    @ocaml.doc("<p>A list of recipients of the bounced message, including the information required to
            create the Delivery Status Notifications (DSNs) for the recipients. You must specify at
            least one <code>BouncedRecipientInfo</code> in the list.</p>")
    @as("BouncedRecipientInfoList")
    bouncedRecipientInfoList: bouncedRecipientInfoList,
    @ocaml.doc(
      "<p>Message-related DSN fields. If not specified, Amazon SES will choose the values.</p>"
    )
    @as("MessageDsn")
    messageDsn: option<messageDsn>,
    @ocaml.doc("<p>Human-readable text for the bounce message to explain the failure. If not specified,
            the text will be auto-generated based on the bounced recipient information.</p>")
    @as("Explanation")
    explanation: option<explanation>,
    @ocaml.doc("<p>The address to use in the \"From\" header of the bounce message. This must be an
            identity that you have verified with Amazon SES.</p>")
    @as("BounceSender")
    bounceSender: address,
    @ocaml.doc("<p>The message ID of the message to be bounced.</p>") @as("OriginalMessageId")
    originalMessageId: messageId,
  }
  @ocaml.doc("<p>Represents a unique message ID.</p>")
  type response = {
    @ocaml.doc("<p>The message ID of the bounce message.</p>") @as("MessageId")
    messageId: option<messageId>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "SendBounceCommand"
  let make = (
    ~bouncedRecipientInfoList,
    ~bounceSender,
    ~originalMessageId,
    ~bounceSenderArn=?,
    ~messageDsn=?,
    ~explanation=?,
    (),
  ) =>
    new({
      bounceSenderArn,
      bouncedRecipientInfoList,
      messageDsn,
      explanation,
      bounceSender,
      originalMessageId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeReceiptRuleSet = {
  type t
  @ocaml.doc("<p>Represents a request to return the details of a receipt rule set. You use receipt rule
            sets to receive email with Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html\">Amazon SES Developer Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>The name of the receipt rule set to describe.</p>") @as("RuleSetName")
    ruleSetName: receiptRuleSetName,
  }
  @ocaml.doc("<p>Represents the details of the specified receipt rule set.</p>")
  type response = {
    @ocaml.doc("<p>A list of the receipt rules that belong to the specified receipt rule set.</p>")
    @as("Rules")
    rules: option<receiptRulesList>,
    @ocaml.doc("<p>The metadata for the receipt rule set, which consists of the rule set name and the
            timestamp of when the rule set was created.</p>")
    @as("Metadata")
    metadata: option<receiptRuleSetMetadata>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "DescribeReceiptRuleSetCommand"
  let make = (~ruleSetName, ()) => new({ruleSetName: ruleSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeConfigurationSet = {
  type t
  @ocaml.doc("<p>Represents a request to return the details of a configuration set. Configuration sets
            enable you to publish email sending events. For information about using configuration
            sets, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
  type request = {
    @ocaml.doc("<p>A list of configuration set attributes to return.</p>")
    @as("ConfigurationSetAttributeNames")
    configurationSetAttributeNames: option<configurationSetAttributeList>,
    @ocaml.doc("<p>The name of the configuration set to describe.</p>") @as("ConfigurationSetName")
    configurationSetName: configurationSetName,
  }
  @ocaml.doc("<p>Represents the details of a configuration set. Configuration sets enable you to
            publish email sending events. For information about using configuration sets, see the
                <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html\">Amazon SES Developer
                Guide</a>.</p>")
  type response = {
    @ocaml.doc(
      "<p>An object that represents the reputation settings for the configuration set. </p>"
    )
    @as("ReputationOptions")
    reputationOptions: option<reputationOptions>,
    @as("DeliveryOptions") deliveryOptions: option<deliveryOptions>,
    @ocaml.doc("<p>The name of the custom open and click tracking domain associated with the
            configuration set.</p>")
    @as("TrackingOptions")
    trackingOptions: option<trackingOptions>,
    @ocaml.doc("<p>A list of event destinations associated with the configuration set. </p>")
    @as("EventDestinations")
    eventDestinations: option<eventDestinations>,
    @ocaml.doc(
      "<p>The configuration set object associated with the specified configuration set.</p>"
    )
    @as("ConfigurationSet")
    configurationSet: option<configurationSet>,
  }
  @module("@aws-sdk/client-ses") @new external new: request => t = "DescribeConfigurationSetCommand"
  let make = (~configurationSetName, ~configurationSetAttributeNames=?, ()) =>
    new({configurationSetAttributeNames, configurationSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeActiveReceiptRuleSet = {
  type t
  type request = {.}
  @ocaml.doc("<p>Represents the metadata and receipt rules for the receipt rule set that is currently
            active.</p>")
  type response = {
    @ocaml.doc("<p>The receipt rules that belong to the active rule set.</p>") @as("Rules")
    rules: option<receiptRulesList>,
    @ocaml.doc("<p>The metadata for the currently active receipt rule set. The metadata consists of the
            rule set name and a timestamp of when the rule set was created.</p>")
    @as("Metadata")
    metadata: option<receiptRuleSetMetadata>,
  }
  @module("@aws-sdk/client-ses") @new
  external new: request => t = "DescribeActiveReceiptRuleSetCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
